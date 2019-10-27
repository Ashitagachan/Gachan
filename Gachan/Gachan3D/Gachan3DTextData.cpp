//
// Gachan3DText.cpp  source file/ソースファイル
// UTF-8 CRLF format/形式
//
// Copyright (c) 2019 Ashitagachan
// See LICENSE.txt for licensing information.
//
#include "Gachan3DObject.h"
#include "Gachan3DObjectDefine.h"


//u8 VisualStudioでは、ファイルがUTF-8であっても文字列リテラルをSJISに変換してしまうのでこれか必要。Xcodeでは不要。



namespace TextPercent {
    char code[] = u8"%";
}

namespace TextHankakuSpace {
    char code[] = u8" ";
}

namespace TextZenkakuSpace {
    char code[] = u8"　";
}

//4バイトコードで無い文字の表示
//ちなみに1,2,3バイトコードで無い文字は、TextASCIIの最初の文字"!"になる
namespace TextUNKNOWN {
    char code[] = u8"?";// ASCII限定 only ASCII
}

namespace TextASCII {
#include "TextASCIIMplus1m.tst"
    char code[] =
    u8"!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
}

namespace TextHiragana {
#include "TextHiraganaMplus2p.tst"
    char code[] =
    u8"ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ";
}

namespace TextKatakana {
#include "TextKatakanaMplus2p.tst"
    char code[] =
    u8"ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ";
}

namespace TextEISUU {
#include "TextEISUUMplus1p.tst"
    char code[] =
    u8"ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ０１２３４５６７８９";
}

namespace TextKIGOU1 {
#include "TextKIGOU1Mplus1p.tst"
    char code[] =
    u8"、。，．・：；？！゛゜｀¨＾ヽヾゝゞ〃仝々〆／＼‘’“”＋－≠＜＞≦≧≒±×÷";
}

namespace TextKIGOU2 {
#include "TextKIGOU2Mplus1p.tst"
    char code[] =
    u8"￣＿〇ー―‐～∥｜…‥（）〔〕［］｛｝〈〉《》「」『』【】＝";
}

namespace TextHankakuKana {
#include "TextHankakuKanaMplus1p.tst"
    char code[] =
    u8"｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝﾞﾟ";
}





