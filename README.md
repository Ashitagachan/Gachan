# Gachan



「がちゃん (Gachan)」はゲーム開発環境であり、ゲーム開発学習環境です。  
ゲームエンジン等や外部ライブラリを使わず、直接OSが提供しているAPI

    Windows10 (32bit/64bit)
    	最新のグラフィックスAPI: DirectX12
    	ゲームコントローラーAPI: XInput, DirectInput
    	オーディオ/3DサウンドAPI: XAudio2, X3DAudio

    macOS/iOS
    	最新のグラフィックスAPI: Metal
    	ゲームコントローラーAPI: GameController.framework(macOS/iOS), macOS HID(macOS)
    	オーディオ/3DサウンドAPI: AVAudioEngine

を使っています。解りやすさ重視のために生ソースコード付帯になっていて、ユーザーコードはこれらの「がちゃん (Gachan)」のソースコードと一緒にビルドする全ビルド型になっています。全ビルド型なので、何かを変更・追加して試すことも簡単にできます。そしてこれは「実際のゲーム開発環境の原型」、「ゲームエンジンの原型」であるといえるでしょう。自分のC++言語のコードを書き、ビルドして、エラーの修正、バグの修正、といった一連の内容と作業は、ガチのゲーム開発で行うものとなんら変わりません。それにも関わらず、「がちゃん (Gachan)」が用意したインターフェイスを使うことによって、ユーザーコードで簡単に制御ができますので、学習に向いています。ぜひサンプルソースコード(Sample***.cpp)を見てみてください。また、以下の環境で同じC++のユーザーコードが動くようになっています。

    1. Windows10 (32bit/64bit) VisualStudio2019
    2. macOS Xcode
    3. iOS (iPhone/iPad等) Xcode

関連するゲーム開発解説動画コンテンツはこちらになります。一動作環境として「がちゃん (Gachan)」が使われています。

https://m.youtube.com/channel/UCYnWUmMlicaSMeK-jynAwMw

ゲーム開発解説動画コンテンツは、
今のところ以下のように項目別にアップしていく予定です。  
スーパーマリオの STAGE 1-1 という感じで。

    Gachanに関して 
        1. いろいろ説明
        2. サンプル説明 
        3. 開発環境


    プログラミング
        STAGE 1 キッズ・超初学者向け  
            1. ゲームの原理        (STAGE 1-1)
            2. ゲームプログラミング  (STAGE 1-2)

        STAGE 2 初学者向け 
            1. プログラミング       (STAGE 2-1)
            2. ゲームプログラミング  (STAGE 2-2 という感じで..)
            3. 3Dプログラミング     
            4. シェーダープログラミング               

        STAGE 3 チップス トピックス
            1. プログラミング       
            2. ゲームプログラミング  
            3. 3Dプログラミング     
            4. シェーダープログラミング               
            5. 数学               
            6. ロボット工学  
            7. 物理学・物理シミュレーション       
            いろいろ... 

        STAGE 4 SDK

        STAGE 5 他のエンジン

        STAGE 6 具体的な機能・表現をつくる！ 

        STAGE 7 ゲームをつくる！ 

        STAGE 8 ゲームをリリースする！
 


    アート
        WORLD 1 キッズ・超初学者向け  

        WORLD 2 初学者向け 
            1. ローポリゴンモデリング (WORLD 2-1)



Gachanの環境は随時更新されていきます。現状はまだまだ未完成な状態です。  
今後の具体的な予定リストになります。（あくまで予定、時期も未定ですが。。）

    * ひたすらGachanの説明
    * ひたすらGachanの整備・機能追加
    * ひたすら各テーマごとに話題・説明追加
    * ひたすらサンプルの追加
    * ひたすら高速化
        * 3D描画の高速化  
            * よく話題になる、いわゆる以前のグラフィックスAPIに対応していたものをそのままDirectX12やMetalに持ってくると最初ものすごく遅い、、っていうやつの対処の説明
        * sin/cos のテーブル化（対応済）
    * ひたすらゲームオブジェクトの追加
        * xyz座標系矢印
        * コイン
        * ハート
        * うさぎ 等動物
        * フルーツ
        * おクスリ カプセル
        * 魔法陣
        * その他いろいろ
    * ひたすらサウンド、音楽の追加
    * フレーム間時間の取得
    * 行列スタック（対応済）
    * タスクシステム（対応済）
    * メモリアロケータ（対応済）
    * 3Dオブジェクトの階層構造
    * ユーザーゲームオブジェクト
    * テクスチャ
    * ゲームパッド（対応済）
    * テキストの表示（対応済）
    * Frame Per Secondの表示
    * ポーズ機構
    * コリジョン
    * SE（対応済）
    * BGM（対応済）
    * アニメーション
    * ボーンアニメーションとスキニング
    * ゲームキーボード
    * ゲームマウス
    * 標準関数を独自関数に置き換える

使う、使わないは使用者の判断なので、使って問題のあるものは使わないでください。  
ご自身の責任において使用してください。  
ライセンスはLICENSE.txtを参照ください。  

  
ーーー
  


Gachan is a Game Development Environment and Game Development Learning Environment.  
Gachan uses the API provided by the OS directly without using game engines or external libraries.  
Gachan uses

    Windows10
    	Latest Graphics API: DirectX12
    	Game Controller API: XInput, DirectInput
    	Audio/3DSound API: XAudio2, X3DAudio

    macOS/iOS
    	Latest Graphics API: Metal
    	Game Controller API: GameController.framework(macOS/iOS), macOS HID(macOS)
    	Audio/3DSound API: AVAudioEngine

User code can be built with these raw code for understandability. This is all build type. Because this is all built type, you can easily change and add something and try it out. It can be said that this is "a prototype of actual game development environment" or "a prototype of game engine". Writing and building your own C ++ code, fixing errors, fixing bugs, etc. A series of essences and tasks are the same as a part of ACTUAL game development. Nevertheless, the interface provided by Gachan makes it easy to control with user code, This is good for learning. Please take a look at the sample source code (Sample***.cpp). You can run same C++ user source code under these platforms.

    1. Windows10 (32bit/64bit) VisualStudio2019
    2. macOS Xcode
    3. iOS (iPhone/iPad etc) Xcode

Related game development commentary video content is here. "Gachan" is used as one operating environment.

https://m.youtube.com/channel/UCYnWUmMlicaSMeK-jynAwMw

About game development commentary video content,
For now, we are planning to upload each item as follows.  
Like Super Mario STAGE 1-1.

    ABOUT Gachan
        1. Various Explanation
        2. Sample Explanation
        3. Development Environment



    PROGRAMMING
        STAGE 1 For Kids and Super Beginners
            1. Game Principle       (STAGE 1-1)
            2. Game Programming     (STAGE 1-2)

        STAGE 2 For Beginners
            1. Programming          (STAGE 2-1)
            2. Game Programming     (STAGE 2-2 and so on..)
            3. 3D Programming
            4. Shader Programming

        STAGE 3 Tips and Topics
            1. Programming
            2. Game Programming
            3. 3D Programming
            4. Shader Programming
            5. Mathematics
            6. Robotics
            7. Physics, Physics Simulation
            Etc...

        STAGE 4 SDK

        STAGE 5 Other Engines

        STAGE 6 Create Specific Functions and Expressions!

        STAGE 7 Create Games!

        STAGE 8 Release Games!


    ART
        WORLD 1 For Kids and Super Beginners

        WORLD 2 For Beginners
            1. LOW POLYGON MODELING  (WORLD 2-1)


Gachan's environment will be updated from time to time. The present condition is still in an incomplete state.  
Future specific plan list (Just a plan, Schedule is undecided) is here.

    * Repeat explanation of Gachan
    * Repeat maintenance and function addition of Gachan
    * Repeat addition of topic / description for each theme
    * Repeat addition of sample
    * Increase speed
        * Speed up of 3D drawing
            * Explanation of the solution for that it is very slow at first when bringing it to DirectX12 or Metal from the previous graphics API.
        * Tabulation of sin / cos (Done)
    * Repeat addition of Game Object
        * XYZ coordinate arrow
        * Coin
        * Heart
        * Rabbit and Animals
        * Fruits
        * Medicine, Capsule
        * Magic circle
        * Others
    * Repeat addition of Sound and Music
    * Getting inter frame time
    * Matrix Stack (Done)
    * Task System (Done)
    * Memory Allocator (Done)
    * Hierarchical structure of 3D objects
    * User Game Object
    * Texture
    * Game pad (Done)
    * Displaying Text (Done)
    * Displaying  Frame Per Second
    * Pause Mechanism
    * Collision
    * SE (Done)
    * BGM (Done)
    * Animation
    * Bone Animation and Skinning
    * Game Keyboard
    * Game Mouse
    * Replace standard function with my own function


Use or not use is at the decision of the user, so do not use anything that have problem.  
Use at your own risk.  
See LICENSE.txt for licensing information.  
  
ーーー関連するゲーム開発解説動画コンテンツ Related game development commentary video content.  
  

ゲームメモリ Game Memory https://youtu.be/n2awZYqSZyA  
ゲームタスク Game Task   https://youtu.be/TzLAb17v9Zw  
![MemoryAndTask](https://user-images.githubusercontent.com/48670081/72143467-1a93c380-33da-11ea-9530-3310eeaad9ca.png)



逆運動学2D2自由度 Inverse Kinematics 2D2DOF https://youtu.be/ekmjw9ni0_I  
逆運動学3D3自由度 Inverse Kinematics 3D3DOF https://youtu.be/Ndhk7VYiQ9I  
![IK](https://user-images.githubusercontent.com/48670081/71062383-afc1e480-21ad-11ea-853c-6c5b2eb11b49.png)



変換で関節の階層構造をつくる Creating a hierarchical structure of joints by transformation  
https://youtu.be/9rziCENfXWo  
![hiera](https://user-images.githubusercontent.com/48670081/71062787-b69d2700-21ae-11ea-8379-5cccb890599c.png)


2D変換 Transform 2D https://youtu.be/_crIwRmchKs  
3D変換 Transform 3D https://youtu.be/yTgVhLlgPvs  
![Transform2Dand3D](https://user-images.githubusercontent.com/48670081/71062298-8012dc80-21ad-11ea-8959-cf19f241ac38.png)


超かんたんスムーズ移動        Super Simple Smooth Movement             https://youtu.be/ncpIfvq3I98  
超かんたんスムーズ移動 カメラ編 Super Simple Smooth Movement For Camera  https://youtu.be/b6mkaiKVkec  
![SSSM](https://user-images.githubusercontent.com/48670081/71062226-578ae280-21ad-11ea-8e08-fea553225c59.png)




Gachanをうごかす Run Gachan at macOS Metal Xcode https://youtu.be/Yg3pA2_P6iA  
Gachanをうごかす Run Gachan at iOS Metal Xcode https://youtu.be/q5Kyy4ym01s  
![MACIOS](https://user-images.githubusercontent.com/48670081/71064477-82c40080-21b2-11ea-8974-d358819d12ef.png)


Gachanをうごかす Run Gachan at Windows10 DirectX12 VisualStudio2019 https://youtu.be/5yPz4O7p3uA  
![WIN10](https://user-images.githubusercontent.com/48670081/71064426-6c1da980-21b2-11ea-922b-de14a3792c36.png)


ごあいさつ Welcome note https://youtu.be/dnNmlCMUlpY  
サンプル紹介000-003 Introduction to Sample000-003 https://youtu.be/TByp95BtHJA  
![aisatu](https://user-images.githubusercontent.com/48670081/72128112-2325d300-33b5-11ea-85ea-15445aea9956.png)
  
  
ーーーサンプル Samples
  
  

ゲームコントローラサンプル GAME CONTROLLER SAMPLE  
[SampleController.cpp](/Sample/SampleController.cpp)  
SampleController.cppをビルドするには[GachanNameSpace.h](/GachanNameSpace.h)のNAMESPACE定義をSampleControllerに置き換えてください。  
To build SampleController.cpp, Replace NAMESPACE definition at [GachanNameSpace.h](/GachanNameSpace.h) with SampleController.  
![Sample006](https://user-images.githubusercontent.com/48670081/60752027-e68ab080-9ffa-11e9-80a5-5d4d49518ea5.png)

3Dサウンド、BGM再生サンプル 3DSOUND AND BGM SAMPLE  
[SampleAudio.cpp](/Sample/SampleAudio.cpp)  
SampleAudio.cpp.cppをビルドするには[GachanNameSpace.h](/GachanNameSpace.h)のNAMESPACE定義をSampleAudioに置き換えてください。  
To build SampleAudio.cpp, Replace NAMESPACE definition at [GachanNameSpace.h](/GachanNameSpace.h) with SampleAudio.  
![Sample005](https://user-images.githubusercontent.com/48670081/60706666-ec25bf00-9f44-11e9-95ea-f2fa2e9f3c82.png)

テキスト表示サンプル DISPLAY TEXT SAMPLE  
[SampleText.cpp](/Sample/SampleText.cpp)  
SampleText.cppをビルドするには[GachanNameSpace.h](/GachanNameSpace.h)のNAMESPACE定義をSampleTextに置き換えてください。  
To build SampleText.cpp, Replace NAMESPACE definition at [GachanNameSpace.h](/GachanNameSpace.h) with SampleText.  
![SAMPLE004](https://user-images.githubusercontent.com/48670081/59586684-733dff00-911e-11e9-9f5a-68823417852f.png)

アクションゲーム風サンプル ACTION GAME STYLE SAMPLE  
[Sample003.cpp](/Sample/Sample003.cpp)  
Sample003.cppをビルドするには[GachanNameSpace.h](/GachanNameSpace.h)のNAMESPACE定義をSample003に置き換えてください。  
To build Sample003.cpp, Replace NAMESPACE definition at [GachanNameSpace.h](/GachanNameSpace.h) with Sample003.  
![SAMPLE003](https://user-images.githubusercontent.com/48670081/55272153-8ac5d280-52fb-11e9-8bef-196b45f84dc9.png)

シューティングゲーム風サンプル SHOOTING GAME STYLE SAMPLE  
[Sample002.cpp](/Sample/Sample002.cpp)  
Sample002.cppをビルドするには[GachanNameSpace.h](/GachanNameSpace.h)のNAMESPACE定義をSample002に置き換えてください。  
To build Sample002.cpp, Replace NAMESPACE definition at [GachanNameSpace.h](/GachanNameSpace.h) with Sample002.  
![SAMPLE002](https://user-images.githubusercontent.com/48670081/55272158-9618fe00-52fb-11e9-88bb-c66cc4aa3c42.png)

風船割りゲームサンプル BALOON SPLIT GAME SAMPLE  
[Sample001.cpp](/Sample/Sample001.cpp)  
Sample001.cppをビルドするには[GachanNameSpace.h](/GachanNameSpace.h)のNAMESPACE定義をSample001に置き換えてください。  
To build Sample001.cpp, Replace NAMESPACE definition at [GachanNameSpace.h](/GachanNameSpace.h) with Sample001.  
![SAMPLE001](https://user-images.githubusercontent.com/48670081/64404857-3f88ca80-d0b8-11e9-96b6-18414a43e93b.png)

オブジェクト表示サンプル DISPLAY OBJECT SAMPLE  
[Sample000.cpp](/Sample/Sample000.cpp)  
Sample000.cppをビルドするには[GachanNameSpace.h](/GachanNameSpace.h)のNAMESPACE定義をSample000に置き換えてください。  
To build Sample000.cpp, Replace NAMESPACE definition at [GachanNameSpace.h](/GachanNameSpace.h) with Sample000.  
![Sample000](https://user-images.githubusercontent.com/48670081/66362994-a0f5cf00-e9bf-11e9-84da-40ff3c7b39ec.png)  

