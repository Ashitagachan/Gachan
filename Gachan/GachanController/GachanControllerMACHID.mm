//
// GachanControllerMACHID.mm  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#import <Foundation/Foundation.h>
#import <IOKit/hid/IOHIDLib.h>
#include "GachanController.h"
#include "GachanControllerMap.h"
#include <stdio.h>
#include <string.h>

#define PRINT_ELEMENT (0)




static const int numOfDetection = 8;
static const NSDictionary* criteria = @{@kIOHIDDeviceUsagePageKey: @(kHIDPage_GenericDesktop),
                                        @kIOHIDDeviceUsageKey: @(kHIDUsage_GD_Joystick),
                                        //@kIOHIDVendorIDKey: @(7119),
                                        //@kIOHIDProductIDKey: @(7),
                                        };

static void CFSetApplier(const void *value,void *context)
{
    CFArrayAppendValue((CFMutableArrayRef)context,value);
}

IOHIDManagerRef manager;

IOHIDDeviceRef shoudlManage[numOfDetection];
IOHIDDeviceRef releaseDevice[numOfDetection];
int releaseDeviceNum = 0;

IOHIDDeviceRef* devices;
int deviceNum = 0;

void ReleaseHIDGamePad();

static void AppendMatchingArray(CFMutableArrayRef array, uint32_t page, uint32_t use)
{
    CFMutableDictionaryRef dictionary = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    
    CFNumberRef pageNumber = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &page);
    CFDictionarySetValue(dictionary, CFSTR(kIOHIDDeviceUsagePageKey), pageNumber);
    CFRelease(pageNumber);
    
    CFNumberRef useNumber = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &use);
    CFDictionarySetValue(dictionary, CFSTR(kIOHIDDeviceUsageKey), useNumber);
    CFRelease(useNumber);
    
    CFArrayAppendValue(array, dictionary);
    CFRelease(dictionary);
}

#define USE_CALLBACK (1)
#if USE_CALLBACK
static void DeviceMatched(void* context, IOReturn result, void* sender, IOHIDDeviceRef device)
{
}
static void DeviceRemoved(void* context, IOReturn result, void* sender, IOHIDDeviceRef device)
{
    for (int i = 0; i < deviceNum; i++) {
        if (devices[i] == device) {
            devices[i] = NULL;
        }
    }
    //スケジューラとUpdateとのタイミングがたまにうまくいかない？
}
#endif

static void GachanControllerMap_DEFAULTINTERNAL(GachanControllerDevice* cd)//デフォルト
{
    GachanControllerMACHIDMap_DEFAULT(cd);
}

extern GachanControllerMap_PRESET GachanControllerMACHIDMap_Preset[];

static void GachanControllerMap_SetPreset(GachanControllerDevice* cd)
{
    if (cd->mapfuncMACHID == GachanControllerMap_DEFAULTINTERNAL) {
        GachanControllerMap_PRESET* preset = GachanControllerMACHIDMap_Preset;
        while (preset->vendorID) {
            if (preset->vendorID == cd->vendorID) {
                if (preset->productID == cd->productID) {
                    cd->mapfuncMACHID = preset->mapfunc;
                    return;
                }
                else if (preset->productID == 0){
                    cd->mapfuncMACHID = preset->mapfunc;
                    return;
                }
            }
            preset++;
        }
    }
}

void CreateHIDGamePad()
{
    //デフォルトのMap関数
    for (int i = 0; i < GachanController::DEVICE_NUM; i++) {
        GachanController::device[i].mapfuncMACHID = GachanControllerMap_DEFAULTINTERNAL;
    }
    
    deviceNum = 0;
    releaseDeviceNum = 0;

    manager = IOHIDManagerCreate(kCFAllocatorDefault, kIOHIDOptionsTypeNone);
#if 0
    IOHIDManagerSetDeviceMatching(manager, (__bridge CFDictionaryRef)criteria);
#else
    CFMutableArrayRef array;
    array = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    AppendMatchingArray(array, kHIDPage_GenericDesktop, kHIDUsage_GD_Joystick);
    AppendMatchingArray(array, kHIDPage_GenericDesktop, kHIDUsage_GD_GamePad);
    IOHIDManagerSetDeviceMatchingMultiple(manager, array);
    CFRelease(array);
#endif
#if USE_CALLBACK
    //デバイスのコールバックを呼ぶ場合
    //起動中にデバイスを切断すると、DeviceRemovedが呼ばれるが、適切な処理をしてないので落ちます。。
    IOHIDManagerRegisterDeviceMatchingCallback(manager, DeviceMatched, NULL);
    IOHIDManagerRegisterDeviceRemovalCallback(manager, DeviceRemoved, NULL);
    IOHIDManagerScheduleWithRunLoop(manager, CFRunLoopGetMain(), kCFRunLoopCommonModes);
#endif
    IOHIDManagerOpen(manager, kIOHIDOptionsTypeNone);
    
    CFSetRef copyOfDevices = IOHIDManagerCopyDevices(manager);
    
    if (copyOfDevices == NULL) {
        //ReleaseHIDGamePad();//2重解放になっちゃう
        return;
    }
    
    CFMutableArrayRef hidDevices = CFArrayCreateMutable(kCFAllocatorDefault, 0 ,&kCFTypeArrayCallBacks);
    
    CFSetApplyFunction(copyOfDevices, CFSetApplier, (void*)hidDevices);
    
    CFRelease(copyOfDevices);
    
    int deviceCount = (int)CFArrayGetCount(hidDevices);
    
    printf("CreateHIDGamePad(): found %d devices \n", deviceCount);
    
    for (int i=0; i<deviceCount && i < numOfDetection; i++) {
        IOHIDDeviceRef hidDevice = (IOHIDDeviceRef)CFArrayGetValueAtIndex(hidDevices, i);
        if (hidDevice == NULL) {
            continue;
        }
#define SKIP_GCFRAMEWORK_DEVICE (1)
#if SKIP_GCFRAMEWORK_DEVICE
        int vid = 0;
        int pid = 0;
        auto vendor = static_cast<CFNumberRef>(IOHIDDeviceGetProperty(hidDevice, CFSTR(kIOHIDVendorIDKey)));
        if (vendor) {
            CFNumberGetValue(vendor, kCFNumberSInt32Type, &vid);
        }
        auto product = static_cast<CFNumberRef>(IOHIDDeviceGetProperty(hidDevice, CFSTR(kIOHIDProductIDKey)));
        if (product) {
            CFNumberGetValue(product, kCFNumberSInt32Type, &pid);
        }
        if ((vid == 0x54C  && pid == 0x9CC)  ||  //PS4 CONTROLLER
            (vid == 0x1038 && pid == 0x1420) ||  //SteelSeries Nimbus
            (vid == 0x0F0D && pid == 0x0090)) {  //HoriPad Ultimate
            printf("CreateHIDGamePad(): SKIPPED vid %x pid %x\n", vid, pid);
            continue;
        }
        else {
            shoudlManage[deviceNum++] = hidDevice;
        }
        releaseDevice[releaseDeviceNum++] = hidDevice;
#else
        shoudlManage[deviceNum++] = hidDevice;
        releaseDevice[releasedeviceNum++] = hidDevice;
#endif
        
    }
    
    devices = shoudlManage;
    
    CFRelease(hidDevices);
}

void ReleaseHIDGamePad()
{
#if SKIP_GCFRAMEWORK_DEVICE
    for (int i=0; i<releaseDeviceNum; i++) {
        if (releaseDevice[i]) {
            IOHIDDeviceClose(releaseDevice[i], kIOHIDOptionsTypeNone);
        }
    }
#else
    for (int i=0; i<deviceNum; i++) {
        if (devices[i]) {
            IOHIDDeviceClose(devices[i], kIOHIDOptionsTypeNone);
        }
    }
#endif
    IOHIDManagerUnscheduleFromRunLoop(manager, CFRunLoopGetCurrent(), kCFRunLoopCommonModes);
    IOHIDManagerClose(manager, kIOHIDOptionsTypeNone);
    CFRelease(manager);
}

int UpdateHIDGamePad(int deviceNoStart)
{
    int i;
    for (i = 0; i < deviceNum && deviceNoStart + i < GachanController::DEVICE_NUM; i++) {
        
            int deviceNo = deviceNoStart + i;
        
#if USE_CALLBACK
            if (devices[i] == NULL) {
                GachanController::device[deviceNo].available = false;
                continue;
            }
#endif

            if (GachanController::device[deviceNo].name[0] == 0) {
                auto productName = static_cast<CFStringRef>(IOHIDDeviceGetProperty(devices[i], CFSTR(kIOHIDProductKey)));
                if (productName)
                {
                    if (const char* name = CFStringGetCStringPtr(productName, kCFStringEncodingUTF8)) {
                        strncpy(GachanController::device[deviceNo].name, name, GachanControllerDevice::NAMELEN-1);
                    }
                }
            }
            if (GachanController::device[deviceNo].vendorID == 0) {
                auto vendor = static_cast<CFNumberRef>(IOHIDDeviceGetProperty(devices[i], CFSTR(kIOHIDVendorIDKey)));
                if (vendor) {
                    CFNumberGetValue(vendor, kCFNumberSInt32Type, &GachanController::device[deviceNo].vendorID);
                }
                auto product = static_cast<CFNumberRef>(IOHIDDeviceGetProperty(devices[i], CFSTR(kIOHIDProductIDKey)));
                if (product) {
                    CFNumberGetValue(product, kCFNumberSInt32Type, &GachanController::device[deviceNo].productID);
                }
                GachanControllerMap_SetPreset(&GachanController::device[deviceNo]);
            }
            int axisNum        = 0;
            int buttonNum      = 0;
            int dpadNum        = 0;
            int startSelectNum = 0;
            
            
            CFArrayRef elements = IOHIDDeviceCopyMatchingElements(devices[i], NULL, 0);
            int elementCount = (int)CFArrayGetCount(elements);
            
            for (int j=0; j<elementCount; j++) {
                IOHIDElementRef element = (IOHIDElementRef)CFArrayGetValueAtIndex(elements, j);
                IOHIDElementType elementType = IOHIDElementGetType(element);
                unsigned int usage = IOHIDElementGetUsage(element);
                unsigned int usagePage = IOHIDElementGetUsagePage(element);
                
                if (usagePage == kHIDPage_VendorDefinedStart) {
                    continue;
                }
                
                switch(elementType) {
                    case kIOHIDElementTypeInput_Button://2
                    {
                        if (usagePage == kHIDPage_Button) {
                            IOHIDValueRef valueRef;
                            IOHIDDeviceGetValue(devices[i], element, &valueRef);
                            int value = (int)IOHIDValueGetIntegerValue(valueRef);
                        
                            if (usage < GachanControllerDevice::BUTTON_NUM) {
                                //ボタンはusageそのまま入れてみる
                                GachanController::device[deviceNo].srcvalue[GachanControllerDevice::BUTTON_START + usage] = (Val)value;
                                buttonNum++;
                            }
#if PRINT_ELEMENT
                            printf("Device %d element %d: BUTTON Type:%d usagePage: %d usage: %d value: %d\n",i, j, elementType, usagePage, usage, value);
#endif
                        }
                        break;
                    }
                    case kIOHIDElementTypeInput_ScanCodes://4
                    case kIOHIDElementTypeInput_Misc://1
                    case kIOHIDElementTypeInput_Axis://3
                    {
                        switch (usage) {
                            case kHIDUsage_GD_X://48
                            case kHIDUsage_GD_Y://49
                            case kHIDUsage_GD_Z://50
                            case kHIDUsage_GD_Rx://51
                            case kHIDUsage_GD_Ry://52
                            case kHIDUsage_GD_Rz://53
                            {
                                IOHIDValueRef valueRef;
                                IOHIDDeviceGetValue(devices[i], element, &valueRef);
                                int value = (int)IOHIDValueGetIntegerValue(valueRef);
                                
                                Val valuef = ((Val)(value - 128)) / 127.0f;
                                valuef = (valuef > 1.0f)?   1.0f : valuef;
                                valuef = (valuef < -1.0f)? -1.0f : valuef;
                                
                                //axisは0スタートでusageそのまま入れてみる
                                int axis = usage - kHIDUsage_GD_X;
                                if (axis < GachanControllerDevice::AXIS_NUM) {
                                    GachanController::device[deviceNo].srcvalue[GachanControllerDevice::AXIS_X + axis] = valuef;
                                    axisNum++;
                                }
#if PRINT_ELEMENT
                                printf("Device %d element %d: XYZRxRyRz Type:%d usagePage: %d usage: %d value: %d\n ", i, j, elementType, usagePage, usage, value);
#endif
                                break;
                            }
                            case kHIDUsage_GD_DPadUp://144
                            case kHIDUsage_GD_DPadDown://145
                            case kHIDUsage_GD_DPadRight://146
                            case kHIDUsage_GD_DPadLeft://147
                            {
                                IOHIDValueRef valueRef;
                                IOHIDDeviceGetValue(devices[i], element, &valueRef);
                                int value = (int)IOHIDValueGetIntegerValue(valueRef);
                                
                                int dpad = usage - kHIDUsage_GD_DPadUp;
                                if (dpad < GachanControllerDevice::DPAD_NUM) {
                                    GachanController::device[deviceNo].srcvalue[GachanControllerDevice::DPAD_UP + dpad] = (Val)value;
                                    dpadNum++;
                                }
#if PRINT_ELEMENT
                                printf("Device %d element %d: DPAD Type:%d usagePage: %d usage: %d value: %d\n ", i, j, elementType, usagePage, usage, value);
#endif
                                break;
                            }
                            case kHIDUsage_GD_Start://61
                            case kHIDUsage_GD_Select://62
                            {
                                IOHIDValueRef valueRef;
                                IOHIDDeviceGetValue(devices[i], element, &valueRef);
                                int value = (int)IOHIDValueGetIntegerValue(valueRef);
                                
                                int stasele = value - kHIDUsage_GD_Start;
                                if (stasele < GachanControllerDevice::STARTSELECT_NUM) {
                                    GachanController::device[deviceNo].srcvalue[GachanControllerDevice::STARTSELECT_START + stasele] = (Val)value;
                                    startSelectNum++;
                                }
#if PRINT_ELEMENT
                                printf("Device %d element %d: START SELECT Type:%d usagePage: %d usage: %d value: %d\n ", i, j, elementType, usagePage, usage, value);
#endif
                                break;
                            }
                        }
                        break;
                    }
                    default:
                    {
                        if (0) {
#if PRINT_ELEMENT
                            printf("Device %d element %d: UNKNOWN Type:%d usagePage: %d usage: %d\n", i, j, elementType, usagePage, usage);
#endif
                        }
                        break;
                    }
                }
            }
            
            CFRelease(elements);
            
            
            //----------------
            //HID MAPPING
            //----------------
        
            GachanController::device[deviceNo].kind = GachanControllerDevice::KIND_MACOS_HID;
            GachanController::device[deviceNo].available = true;

            //コントローラ(メーカ？)によって、
            //スティックはほぼ同じだが、、
            //ボタン配置はちがう。。ので、
            //PS3コントローラをデフォルトにする。
            //DirectInputのデバイスもこんな感じ。
        
            //ユーザMap関数を関数ポインタで、GachanController::device[deviceNo].mapfuncMACHID な感じに登録できるようにする予定
            if (GachanController::device[deviceNo].mapfuncMACHID) {
                GachanController::device[deviceNo].mapfuncMACHID(&GachanController::device[deviceNo]);
            }
        
            GachanController::device[deviceNo].Update();
    }
    
    return deviceNoStart + i;
}
