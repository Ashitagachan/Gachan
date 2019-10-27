//
// GachanWIN10.cpp
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//

#include "stdafx.h"
#include "GachanWIN10.h"
#include "GachanD3D12Base.h"
#include "GachanGameKeyboard.h"
#include "GachanNameSpace.h"

#ifdef __GACHAND3D12BASE_H__

void GachanGameCreate();
void GachanGameRelease();
void GachanGameUpdate();


namespace NAMESPACE
{
	void Initialize();
	void Create();
	void Update();
	void Render();
	void Release();
	void Finalize();
}

static void render()
{
	GachanGameUpdate();

	NAMESPACE::Update();

	GachanGameKeyboard::ResetSystemKey();

	NAMESPACE::Render();
}

static void keydown(WPARAM wParam)
{
	switch (wParam)
	{
	case VK_UP:
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::UP);
		break;
	case VK_DOWN:
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::DOWN);
		break;
	case VK_LEFT:
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::LEFT);
		break;
	case VK_RIGHT:
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::RIGHT);
		break;
	case VK_SPACE:
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::SPACE);
		break;
	case VK_RETURN:
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::ENTER);
		break;
	case '0':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM0);
		break;
	case '1':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM1);
		break;
	case '2':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM2);
		break;
	case '3':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM3);
		break;
	case '4':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM4);
		break;
	case '5':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM5);
		break;
	case '6':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM6);
		break;
	case '7':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM7);
		break;
	case '8':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM8);
		break;
	case '9':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::NUM9);
		break;
	case 'A':
	case 'a':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::A);
		break;
	case 'S':
	case 's':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::S);
		break;
	case 'D':
	case 'd':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::D);
		break;
	case 'W':
	case 'w':
		GachanGameKeyboard::SetSystemKey(GachanGameKeyboard::KEY::W);
		break;
	}
}

#endif


#define MAX_LOADSTRING 100

// グローバル変数:
HINSTANCE hInst;                                // 現在のインターフェイス
WCHAR szTitle[MAX_LOADSTRING];                  // タイトル バーのテキスト
WCHAR szWindowClass[MAX_LOADSTRING];            // メイン ウィンドウ クラス名

// このコード モジュールに含まれる関数の宣言を転送します:
ATOM                MyRegisterClass(HINSTANCE hInstance);
BOOL                InitInstance(HINSTANCE, int);
LRESULT CALLBACK    WndProc(HWND, UINT, WPARAM, LPARAM);
INT_PTR CALLBACK    About(HWND, UINT, WPARAM, LPARAM);

int APIENTRY wWinMain(_In_ HINSTANCE hInstance,
                     _In_opt_ HINSTANCE hPrevInstance,
                     _In_ LPWSTR    lpCmdLine,
                     _In_ int       nCmdShow)
{
    UNREFERENCED_PARAMETER(hPrevInstance);
    UNREFERENCED_PARAMETER(lpCmdLine);

    // TODO: ここにコードを挿入してください。

    // グローバル文字列を初期化する
    LoadStringW(hInstance, IDS_APP_TITLE, szTitle, MAX_LOADSTRING);
    LoadStringW(hInstance, IDC_GACHANWIN10, szWindowClass, MAX_LOADSTRING);
    MyRegisterClass(hInstance);

    // アプリケーション初期化の実行:
    if (!InitInstance (hInstance, nCmdShow))
    {
        return FALSE;
    }

    HACCEL hAccelTable = LoadAccelerators(hInstance, MAKEINTRESOURCE(IDC_GACHANWIN10));

    MSG msg;

    // メイン メッセージ ループ:
    while (GetMessage(&msg, nullptr, 0, 0))
    {
        if (!TranslateAccelerator(msg.hwnd, hAccelTable, &msg))
        {
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }
    }
#ifdef __GACHAND3D12BASE_H__
	NAMESPACE::Release();
	NAMESPACE::Finalize();

	GachanGameRelease();

	GachanD3D12Base::release();
#endif

    return (int) msg.wParam;
}



//
//  関数: MyRegisterClass()
//
//  目的: ウィンドウ クラスを登録します。
//
ATOM MyRegisterClass(HINSTANCE hInstance)
{
    WNDCLASSEXW wcex;

    wcex.cbSize = sizeof(WNDCLASSEX);

    wcex.style          = CS_HREDRAW | CS_VREDRAW;
    wcex.lpfnWndProc    = WndProc;
    wcex.cbClsExtra     = 0;
    wcex.cbWndExtra     = 0;
    wcex.hInstance      = hInstance;
    wcex.hIcon          = LoadIcon(hInstance, MAKEINTRESOURCE(IDI_GACHANWIN10));
    wcex.hCursor        = LoadCursor(nullptr, IDC_ARROW);
    wcex.hbrBackground  = (HBRUSH)(COLOR_WINDOW+1);
	wcex.lpszMenuName   = NULL;// MAKEINTRESOURCEW(IDC_GACHANWIN10);
    wcex.lpszClassName  = szWindowClass;
    wcex.hIconSm        = LoadIcon(wcex.hInstance, MAKEINTRESOURCE(IDI_SMALL));

    return RegisterClassExW(&wcex);
}

//
//   関数: InitInstance(HINSTANCE, int)
//
//   目的: インスタンス ハンドルを保存して、メイン ウィンドウを作成します
//
//   コメント:
//
//        この関数で、グローバル変数でインスタンス ハンドルを保存し、
//        メイン プログラム ウィンドウを作成および表示します。
//
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow)
{
   hInst = hInstance; // グローバル変数にインスタンス ハンドルを格納する

#ifdef __GACHAND3D12BASE_H__
   int Width = 1024;
   int Height = 576;

   NAMESPACE::Initialize();

   // ウィンドウの矩形を調整.
   RECT rect = { 0, 0, Width, Height };
   DWORD style = WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU;
   AdjustWindowRect(&rect, style, FALSE);

   //テンプレのWidth/Heightの引数の場所間違ってますよね。。
   HWND hWnd = CreateWindowW(szWindowClass, szTitle, WS_OVERLAPPEDWINDOW,
	                         CW_USEDEFAULT, CW_USEDEFAULT, 
	                         (rect.right - rect.left), (rect.bottom - rect.top), 
	                         nullptr, nullptr, hInstance, nullptr);
   if (!hWnd) 
   { 
		return FALSE; 
   }
   GachanD3D12Base::d3d12withHWND(hWnd, Width, Height, render);

   GachanGameCreate();

   NAMESPACE::Create();
#else
   HWND hWnd = CreateWindowW(szWindowClass, szTitle, WS_OVERLAPPEDWINDOW,
      CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, nullptr, nullptr, hInstance, nullptr);

   if (!hWnd)
   {
      return FALSE;
   }
#endif
   ShowWindow(hWnd, nCmdShow);
   UpdateWindow(hWnd);

   return TRUE;
}

//
//  関数: WndProc(HWND, UINT, WPARAM, LPARAM)
//
//  目的: メイン ウィンドウのメッセージを処理します。
//
//  WM_COMMAND  - アプリケーション メニューの処理
//  WM_PAINT    - メイン ウィンドウを描画する
//  WM_DESTROY  - 中止メッセージを表示して戻る
//
//
LRESULT CALLBACK WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    switch (message)
    {
    case WM_COMMAND:
        {
            int wmId = LOWORD(wParam);
            // 選択されたメニューの解析:
            switch (wmId)
            {
            case IDM_ABOUT:
                DialogBox(hInst, MAKEINTRESOURCE(IDD_ABOUTBOX), hWnd, About);
                break;
            case IDM_EXIT:
                DestroyWindow(hWnd);
                break;
            default:
                return DefWindowProc(hWnd, message, wParam, lParam);
            }
        }
        break;

	case WM_KEYDOWN:
#ifdef __GACHAND3D12BASE_H__
		keydown(wParam);
#endif
		return 0;

	case WM_KEYUP:
		return 0;

    case WM_PAINT:
#ifdef __GACHAND3D12BASE_H__
		GachanD3D12Base::render();
#else
        {
            PAINTSTRUCT ps;
            HDC hdc = BeginPaint(hWnd, &ps);
            // TODO: HDC を使用する描画コードをここに追加してください...
            EndPaint(hWnd, &ps);
        }
#endif
        break;
    case WM_DESTROY:
        PostQuitMessage(0);
        break;
    default:
        return DefWindowProc(hWnd, message, wParam, lParam);
    }
    return 0;
}

// バージョン情報ボックスのメッセージ ハンドラーです。
INT_PTR CALLBACK About(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
    UNREFERENCED_PARAMETER(lParam);
    switch (message)
    {
    case WM_INITDIALOG:
        return (INT_PTR)TRUE;

    case WM_COMMAND:
        if (LOWORD(wParam) == IDOK || LOWORD(wParam) == IDCANCEL)
        {
            EndDialog(hDlg, LOWORD(wParam));
            return (INT_PTR)TRUE;
        }
        break;
    }
    return (INT_PTR)FALSE;
}
