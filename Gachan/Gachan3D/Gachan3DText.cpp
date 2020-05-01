//
// Gachan3DText.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "Gachan3D.h"
#include "Gachan3DObject.h"
#include "Gachan3DShader.h"
#include "Gachan3DMatrixStack.h"
#include "Gachan3DText.h"

namespace TextPercent {
    extern char code[];
}
namespace TextHankakuSpace {
    extern char code[];
}
namespace TextZenkakuSpace {
    extern char code[];
}


namespace TextUNKNOWN {
    extern char code[];
}

namespace TextASCII {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextHankakuKana {
    extern Gachan3DObject object_root__[];
    extern char code[];
}

namespace TextHiragana {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKatakana {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextEISUU {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKIGOU1 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKIGOU2 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji1st1 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji1st2 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji1st3 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji1st4 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji1st5 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji1st6 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}

namespace TextKanji2nd1 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji2nd2 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji2nd3 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji2nd4 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}
namespace TextKanji2nd5 {
    extern Gachan3DObject object_root__[];
    extern char code[];
}

UInt64 Gachan3DText::Flag = 0;


//漢字だけで第一第二で6000文字＋ASCIIひらカナ英数記号等。将来追加する分を見て、10240文字分確保する
//ポインタが8bytesなので、10240x8/1024 = 80kbytes
static Gachan3DObject* TextObject[10240] = {0,};//下記INDEXで直接指定される
static unsigned short TextObjectINDEX = 0;
static unsigned short TextObjectINDEXZenkaku = 0;

static unsigned short UTF8_1BYTE_INDEX[0x7F];   //(ASCII)     0x00<->0x7f
static unsigned short UTF8_2BYTE_INDEX[0x1FFF]; //15Kbytes  0xc080<->0xdfbf
static unsigned short UTF8_3BYTE_INDEX[0xFFFFF];//2Mbytes 0xe08080<->0xefbfbf

static Val OriginalSize  = 3.9f;//文字モデルの大きさ。行間も、語間も同じ。
static Val OriginalScale = 1.0f/3.9f;//デフォルトのサイズをスケールする。1にしたけりゃ 1.0f/3.9f (特にGachanで)

static Val WordSize     = 1.0f;
static Val WordInterval = 1.0f;
static Vec4  WordColor    = { 1.0f, 1.0f, 1.0f, 1.0f };
static Val LineInterval = 1.0f;


static unsigned char* CreateIndexOne(Gachan3DObject* obj, unsigned char* head)
{
    unsigned int utf8code = 0;
    
    switch ((*head) & 0xF0) {
        case 0xf0:
            //error 4byteコードは使わない
            GACHAN3DSTOP;
            break;
        case 0xe0:
            utf8code = *(head) << 16 | *(head + 1) << 8 | *(head + 2);
            utf8code -= 0xe00000;
            if (utf8code < 0xFFFFF) {
                UTF8_3BYTE_INDEX[utf8code] = TextObjectINDEX;
                TextObject[TextObjectINDEX] = obj;
                TextObjectINDEX++;
            }
            else {
                GACHAN3DSTOP;
            }
            head += 3;
            break;
        case 0xd0:
        case 0xc0:
            utf8code = *(head) << 8 | *(head + 1);
            utf8code -= 0xc000;
            if (utf8code < 0x1FFF) {
                UTF8_2BYTE_INDEX[utf8code] = TextObjectINDEX;
                TextObject[TextObjectINDEX] = obj;
                TextObjectINDEX++;
            }
            else {
                GACHAN3DSTOP;
            }
            head += 2;
            break;
        default:
            //ASCII
            utf8code = *head;
            if (utf8code < 0x7F) {
                UTF8_1BYTE_INDEX[utf8code] = TextObjectINDEX;
                TextObject[TextObjectINDEX] = obj;
                TextObjectINDEX++;
            }
            else {
                GACHAN3DSTOP;
            }
            head += 1;
            break;
    }
    return head;
}

static void CreateIndex(Gachan3DObject* root, char* code)
{
    Gachan3DObject* obj = root->child;
    
    //順番を入れ替える
    Gachan3DObject* prev = NULL;
    while (obj) {
        Gachan3DObject* next = obj->sibling;
        obj->sibling = prev;
        prev = obj;
        obj = next;
    }
    root->child = prev;
    
    //INDEXを作っていく
    unsigned char* head = (unsigned char*)code;
    obj = root->child;
    while (obj) {
        
        obj->model->material->flag |= GachanMaterial::FLG_DOUBLESIDE;
        obj->model->material->shader = Gachan3DShader::SHADER_DEFAULTNL;
        obj->model->material->diffuse.Set(1.0f, 1.0f, 1.0f, 1.0f);
        
        head = CreateIndexOne(obj, head);
        
        obj = obj->sibling;
    }
}




void Gachan3DText::Create()
{
    TextASCII      ::object_root__->Create();
    TextHankakuKana::object_root__->Create();

    if (IsFlag(FLG_JP_HIRAKANA)) {
        TextHiragana   ::object_root__->Create();
        TextKatakana   ::object_root__->Create();
        TextEISUU      ::object_root__->Create();
        TextKIGOU1     ::object_root__->Create();
        TextKIGOU2     ::object_root__->Create();
    }
    if (IsFlag(FLG_JP_KANJI1ST)) {
        TextKanji1st1  ::object_root__->Create();
        TextKanji1st2  ::object_root__->Create();
        TextKanji1st3  ::object_root__->Create();
        TextKanji1st4  ::object_root__->Create();
        TextKanji1st5  ::object_root__->Create();
        TextKanji1st6  ::object_root__->Create();
    }
    if (IsFlag(FLG_JP_KANJI2ND)) {
        TextKanji2nd1  ::object_root__->Create();
        TextKanji2nd2  ::object_root__->Create();
        TextKanji2nd3  ::object_root__->Create();
        TextKanji2nd4  ::object_root__->Create();
        TextKanji2nd5  ::object_root__->Create();
    }
    //テーブルは一度作ったら二度と作らない。なぜならリストの順番を入れ替えてるから。
    if (TextObjectINDEX) {
        return;
    }
    
    CreateIndex(TextASCII      ::object_root__, TextASCII      ::code);
    CreateIndex(TextHankakuKana::object_root__, TextHankakuKana::code);
    CreateIndexOne(NULL, (unsigned char*)TextHankakuSpace::code);
    
    TextObjectINDEXZenkaku = TextObjectINDEX;
    
    if (IsFlag(FLG_JP_HIRAKANA)) {
        CreateIndex(TextHiragana   ::object_root__, TextHiragana   ::code);
        CreateIndex(TextKatakana   ::object_root__, TextKatakana   ::code);
        CreateIndex(TextEISUU      ::object_root__, TextEISUU      ::code);
        CreateIndex(TextKIGOU1     ::object_root__, TextKIGOU1     ::code);
        CreateIndex(TextKIGOU2     ::object_root__, TextKIGOU2     ::code);
    }
    if (IsFlag(FLG_JP_KANJI1ST)) {
        CreateIndex(TextKanji1st1  ::object_root__, TextKanji1st1  ::code);
        CreateIndex(TextKanji1st2  ::object_root__, TextKanji1st2  ::code);
        CreateIndex(TextKanji1st3  ::object_root__, TextKanji1st3  ::code);
        CreateIndex(TextKanji1st4  ::object_root__, TextKanji1st4  ::code);
        CreateIndex(TextKanji1st5  ::object_root__, TextKanji1st5  ::code);
        CreateIndex(TextKanji1st6  ::object_root__, TextKanji1st6  ::code);
    }
    if (IsFlag(FLG_JP_KANJI2ND)) {
        CreateIndex(TextKanji2nd1  ::object_root__, TextKanji2nd1  ::code);
        CreateIndex(TextKanji2nd2  ::object_root__, TextKanji2nd2  ::code);
        CreateIndex(TextKanji2nd3  ::object_root__, TextKanji2nd3  ::code);
        CreateIndex(TextKanji2nd4  ::object_root__, TextKanji2nd4  ::code);
        CreateIndex(TextKanji2nd5  ::object_root__, TextKanji2nd5  ::code);
    }
    CreateIndexOne(NULL, (unsigned char*)TextZenkakuSpace::code);
    
    //printf("dx3dtext textcount %d\n", TextObjectINDEX);
}

void Gachan3DText::Release()
{
    TextASCII      ::object_root__->Release();
    TextHiragana   ::object_root__->Release();
    TextKatakana   ::object_root__->Release();
    TextEISUU      ::object_root__->Release();
    TextKIGOU1     ::object_root__->Release();
    TextKIGOU2     ::object_root__->Release();
    TextHankakuKana::object_root__->Release();
    TextKanji1st1  ::object_root__->Release();
    TextKanji1st2  ::object_root__->Release();
    TextKanji1st3  ::object_root__->Release();
    TextKanji1st4  ::object_root__->Release();
    TextKanji1st5  ::object_root__->Release();
    TextKanji1st6  ::object_root__->Release();
    TextKanji2nd1  ::object_root__->Release();
    TextKanji2nd2  ::object_root__->Release();
    TextKanji2nd3  ::object_root__->Release();
    TextKanji2nd4  ::object_root__->Release();
    TextKanji2nd5  ::object_root__->Release();
    
}


void Gachan3DText::SetParameter(Val textsize, Val textinterval, Val textlineinterval)
{
    WordSize     = textsize;
    WordInterval = textinterval;
    LineInterval = textinterval;
}

void Gachan3DText::SetColor(Val r, Val g, Val b, Val a)
{
    WordColor.r = r;
    WordColor.g = g;
    WordColor.b = b;
    WordColor.a = a;
}


void Gachan3DText::Draw(const char* utf8char)
{
    Mat44 world, trs;
    world = Mat44::GetScale(WordSize * OriginalScale);

    
    Val slideall = 0.0f;
    
    unsigned int utf8code = 0;
    unsigned char* head = (unsigned char*)utf8char;
    while (*head) {
        
        //改行処理
        if((*head) == 0x0A) {
            trs = Mat44::GetTranslate(-slideall, -OriginalSize * LineInterval, 0.0f);
            world = trs * world;
            slideall = 0.0f;
            head += 1;
        }
        
        MatStack::Push();
        MatStack::Mul(world);
        
        unsigned short index = 0;
        
        switch((*head) & 0xF0) {
            case 0xf0:
            {
                //UNKNOWN表示 4byteコードは使わない
                //ASCII限定 only ASCII
                unsigned char* temphead = (unsigned char*)TextUNKNOWN::code;
                utf8code = *temphead;
                if (utf8code < 0x7F) {
                    index = UTF8_1BYTE_INDEX[utf8code];
                    if (TextObject[index]) {
                        TextObject[index]->model->material->diffuse = WordColor;
                        TextObject[index]->Draw();
                    }
                }
                head += 4;
                break;
            }
            case 0xe0:
            {
                utf8code = *(head) << 16 | *(head+1) << 8 | *(head+2);
                utf8code -= 0xe00000;
                if (utf8code < 0xFFFFF) {
                    index = UTF8_3BYTE_INDEX[utf8code];
                    if (TextObject[index]) {
                        TextObject[index]->model->material->diffuse = WordColor;
                        TextObject[index]->Draw();
                    }
                }
                head += 3;
                break;
            }
            case 0xd0:
            case 0xc0:
            {
                utf8code = *(head) << 8 | *(head+1);
                utf8code -= 0xc000;
                if (utf8code < 0x1FFF) {
                    index = UTF8_2BYTE_INDEX[utf8code];
                    if (TextObject[index]) {
                        TextObject[index]->model->material->diffuse = WordColor;
                        TextObject[index]->Draw();
                    }
                }
                head += 2;
                break;
            }
            default:
            {
                //ASCII
                utf8code = *head;
                if (utf8code < 0x7F) {
                    index = UTF8_1BYTE_INDEX[utf8code];
                    if (TextObject[index]) {
                        TextObject[index]->model->material->diffuse = WordColor;
                        TextObject[index]->Draw();
                    }
                }
                head += 1;
                break;
            }
        }
        
        
        MatStack::Pop();
        
        //半角と全角の位置移動
        Val slide = (index < TextObjectINDEXZenkaku)?
        0.5f * OriginalSize * WordInterval :  //半角
        OriginalSize * WordInterval;   //全角
        
        slideall += slide;
        trs = Mat44::GetTranslate(slide, 0.0f, 0.0f);
        
        world = trs * world;
    }
}


static void DrawTestSub(char* code, Val y)
{
    Mat44 world;
    world = Mat44::GetTranslate(0.0f, y, 0.0f);
    
    MatStack::Push();
    MatStack::Mul(world);
    Gachan3DText::Draw(code);
    MatStack::Pop();
}
void Gachan3DText::DrawTest()
{
    Val y = 0.0f;
    DrawTestSub(TextASCII::code,       y -= 3.9f);
    DrawTestSub(TextHankakuKana::code, y -= 3.9f);
    DrawTestSub(TextHiragana::code,    y -= 3.9f);
    DrawTestSub(TextKatakana::code,    y -= 3.9f);
    DrawTestSub(TextEISUU::code,       y -= 3.9f);
    DrawTestSub(TextKIGOU1::code,      y -= 3.9f);
    DrawTestSub(TextKIGOU2::code,      y -= 3.9f);
    DrawTestSub(TextKanji1st1::code,   y -= 3.9f);
    DrawTestSub(TextKanji1st2::code,   y -= 3.9f);
    DrawTestSub(TextKanji1st3::code,   y -= 3.9f);
    DrawTestSub(TextKanji1st4::code,   y -= 3.9f);
    DrawTestSub(TextKanji1st5::code,   y -= 3.9f);
    DrawTestSub(TextKanji1st6::code,   y -= 3.9f);
    DrawTestSub(TextKanji2nd1::code,   y -= 3.9f);
    DrawTestSub(TextKanji2nd2::code,   y -= 3.9f);
    DrawTestSub(TextKanji2nd3::code,   y -= 3.9f);
    DrawTestSub(TextKanji2nd4::code,   y -= 3.9f);
    DrawTestSub(TextKanji2nd5::code,   y -= 3.9f);
}



