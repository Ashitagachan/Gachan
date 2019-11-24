//skipped groundPlane_transform
//skipped Manipulator1
//skipped UniversalManip
//skipped CubeCompass
/////////////////////////////////////////////
// object_BlockA__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif

DX3DMATERIAL_START( material_mBlock )
DX3DMATERIAL_DIFF( 1, 0.4, 0.4, 0.4 )
DX3DMATERIAL_SPEC( 1, 0.25, 0.25, 0.25 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_BlockA___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockA___mBlock_0 == PT_TRILIST ) || ((PT_BlockA___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BlockA___mBlock_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BlockA___mBlock_0 )
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //12
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //13
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //14
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //15
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //16
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //17
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //18
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //19
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //20
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //21
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //22
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BlockA___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BlockA___mBlock_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_BlockA___mBlock_0	NULL
#define vertexbuff_BlockA___mBlock_0	NULL
#endif




#if ((PT_BlockA___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockA___mBlock_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BlockA___mBlock_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	4, 5, 7, // 2 8
	5, 6, 7, // 3 11
	8, 9, 11, // 4 14
	9, 10, 11, // 5 17
	12, 13, 15, // 6 20
	13, 14, 15, // 7 23
	16, 17, 19, // 8 26
	17, 18, 19, // 9 29
	20, 21, 23, // 10 32
	21, 22, 23, // 11 35
DX3DINDEX_END
#endif

#else
#define index_BlockA___mBlock_0	NULL
#endif




#if ((PT_BlockA___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BlockA___mBlock_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BlockA___mBlock_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BlockA___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BlockA___mBlock_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BlockA___mBlock_0_VERTEXSTRIP 	NULL
#define vertexbuff_BlockA___mBlock_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BlockA__ )
DX3DMODEL_START( model_BlockA___mBlock_0 )
DX3DMODEL_VERTEX( vertex_BlockA___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BlockA___mBlock_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 36 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBlock )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BlockA__, 57126069 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BlockA__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_BlockB__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_BlockB___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockB___mBlock_0 == PT_TRILIST ) || ((PT_BlockB___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BlockB___mBlock_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BlockB___mBlock_0 )
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //8
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //9
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //10
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //11
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //16
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //17
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //18
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //19
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //20
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //21
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //22
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //23
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //24
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //25
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //26
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //27
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //28
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //29
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //30
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //31
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //32
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //33
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //34
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //35
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //36
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //37
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //38
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //39
DX3DVERT( -1.5, -0.5, -0.515 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( -0.5, -0.5, -0.515 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( -0.5, 0.5, -0.515 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( -1.5, 0.5, -0.515 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 0.5, -0.5, -0.515 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 0.5, 0.5, -0.515 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 1.5, -0.5, -0.515 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.5, 0.5, -0.515 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( -1.5, 0.5, -0.515 ) DX3DVNORM( 0, 1, -0 )  //48
DX3DVERT( -0.5, 0.5, -0.515 ) DX3DVNORM( 0, 1, -0 )  //49
DX3DVERT( -0.5, 0.5, 0.485 ) DX3DVNORM( 0, 1, -0 )  //50
DX3DVERT( -1.5, 0.5, 0.485 ) DX3DVNORM( 0, 1, -0 )  //51
DX3DVERT( 0.5, 0.5, -0.515 ) DX3DVNORM( 0, 1, -0 )  //52
DX3DVERT( 0.5, 0.5, 0.485 ) DX3DVNORM( 0, 1, -0 )  //53
DX3DVERT( 1.5, 0.5, -0.515 ) DX3DVNORM( 0, 1, -0 )  //54
DX3DVERT( 1.5, 0.5, 0.485 ) DX3DVNORM( 0, 1, -0 )  //55
DX3DVERT( -1.5, 0.5, 0.485 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( -0.5, 0.5, 0.485 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( -0.5, -0.5, 0.485 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( -1.5, -0.5, 0.485 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.5, 0.5, 0.485 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 0.5, -0.5, 0.485 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.5, 0.5, 0.485 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.5, -0.5, 0.485 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( -1.5, -0.5, 0.485 ) DX3DVNORM( 0, -1, -0 )  //64
DX3DVERT( -0.5, -0.5, 0.485 ) DX3DVNORM( 0, -1, -0 )  //65
DX3DVERT( -0.5, -0.5, -0.515 ) DX3DVNORM( 0, -1, -0 )  //66
DX3DVERT( -1.5, -0.5, -0.515 ) DX3DVNORM( 0, -1, -0 )  //67
DX3DVERT( 0.5, -0.5, 0.485 ) DX3DVNORM( 0, -1, -0 )  //68
DX3DVERT( 0.5, -0.5, -0.515 ) DX3DVNORM( 0, -1, -0 )  //69
DX3DVERT( 1.5, -0.5, 0.485 ) DX3DVNORM( 0, -1, -0 )  //70
DX3DVERT( 1.5, -0.5, -0.515 ) DX3DVNORM( 0, -1, -0 )  //71
DX3DVERT( 1.5, -0.5, -0.515 ) DX3DVNORM( 1, 0, -0 )  //72
DX3DVERT( 1.5, -0.5, 0.485 ) DX3DVNORM( 1, 0, -0 )  //73
DX3DVERT( 1.5, 0.5, 0.485 ) DX3DVNORM( 1, 0, -0 )  //74
DX3DVERT( 1.5, 0.5, -0.515 ) DX3DVNORM( 1, 0, -0 )  //75
DX3DVERT( -1.5, -0.5, 0.485 ) DX3DVNORM( -1, 0, -0 )  //76
DX3DVERT( -1.5, -0.5, -0.515 ) DX3DVNORM( -1, 0, -0 )  //77
DX3DVERT( -1.5, 0.5, -0.515 ) DX3DVNORM( -1, 0, -0 )  //78
DX3DVERT( -1.5, 0.5, 0.485 ) DX3DVNORM( -1, 0, -0 )  //79
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BlockB___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BlockB___mBlock_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 80 )
DX3DVERTEX_END


#else
#define vertex_BlockB___mBlock_0	NULL
#define vertexbuff_BlockB___mBlock_0	NULL
#endif




#if ((PT_BlockB___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockB___mBlock_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BlockB___mBlock_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	4, 5, 7, // 2 8
	5, 6, 7, // 3 11
	7, 6, 9, // 4 14
	6, 8, 9, // 5 17
	9, 8, 11, // 6 20
	8, 10, 11, // 7 23
	12, 13, 15, // 8 26
	13, 14, 15, // 9 29
	16, 17, 19, // 10 32
	17, 18, 19, // 11 35
	19, 18, 21, // 12 38
	18, 20, 21, // 13 41
	21, 20, 23, // 14 44
	20, 22, 23, // 15 47
	24, 25, 27, // 16 50
	25, 26, 27, // 17 53
	28, 24, 29, // 18 56
	24, 27, 29, // 19 59
	30, 28, 31, // 20 62
	28, 29, 31, // 21 65
	32, 33, 35, // 22 68
	33, 34, 35, // 23 71
	33, 36, 34, // 24 74
	36, 37, 34, // 25 77
	36, 38, 37, // 26 80
	38, 39, 37, // 27 83
	40, 41, 43, // 28 86
	41, 42, 43, // 29 89
	41, 44, 42, // 30 92
	44, 45, 42, // 31 95
	44, 46, 45, // 32 98
	46, 47, 45, // 33 101
	48, 49, 51, // 34 104
	49, 50, 51, // 35 107
	49, 52, 50, // 36 110
	52, 53, 50, // 37 113
	52, 54, 53, // 38 116
	54, 55, 53, // 39 119
	56, 57, 59, // 40 122
	57, 58, 59, // 41 125
	57, 60, 58, // 42 128
	60, 61, 58, // 43 131
	60, 62, 61, // 44 134
	62, 63, 61, // 45 137
	64, 65, 67, // 46 140
	65, 66, 67, // 47 143
	65, 68, 66, // 48 146
	68, 69, 66, // 49 149
	68, 70, 69, // 50 152
	70, 71, 69, // 51 155
	72, 73, 75, // 52 158
	73, 74, 75, // 53 161
	76, 77, 79, // 54 164
	77, 78, 79, // 55 167
DX3DINDEX_END
#endif

#else
#define index_BlockB___mBlock_0	NULL
#endif




#if ((PT_BlockB___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BlockB___mBlock_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BlockB___mBlock_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BlockB___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BlockB___mBlock_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BlockB___mBlock_0_VERTEXSTRIP 	NULL
#define vertexbuff_BlockB___mBlock_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BlockB__ )
DX3DMODEL_START( model_BlockB___mBlock_0 )
DX3DMODEL_VERTEX( vertex_BlockB___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BlockB___mBlock_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 168 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBlock )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BlockB__, 57127513 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BlockB__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_BlockC__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_BlockC___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockC___mBlock_0 == PT_TRILIST ) || ((PT_BlockC___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BlockC___mBlock_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BlockC___mBlock_0 )
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //8
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //9
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //10
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //11
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //16
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //17
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //18
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //19
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //20
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //21
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //22
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //23
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //24
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //25
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //26
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //27
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //28
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //29
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //30
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //31
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //32
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //33
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //34
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //35
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //36
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //37
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //38
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //39
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 1.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 1.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //44
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //45
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //50
DX3DVERT( 1.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //51
DX3DVERT( 1.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //52
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //53
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //54
DX3DVERT( 1.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //55
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //56
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //57
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //58
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //59
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BlockC___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BlockC___mBlock_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 60 )
DX3DVERTEX_END


#else
#define vertex_BlockC___mBlock_0	NULL
#define vertexbuff_BlockC___mBlock_0	NULL
#endif




#if ((PT_BlockC___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockC___mBlock_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BlockC___mBlock_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	4, 5, 7, // 2 8
	5, 6, 7, // 3 11
	7, 6, 9, // 4 14
	6, 8, 9, // 5 17
	9, 8, 11, // 6 20
	8, 10, 11, // 7 23
	12, 13, 15, // 8 26
	13, 14, 15, // 9 29
	16, 17, 19, // 10 32
	17, 18, 19, // 11 35
	19, 18, 21, // 12 38
	18, 20, 21, // 13 41
	21, 20, 23, // 14 44
	20, 22, 23, // 15 47
	24, 25, 27, // 16 50
	25, 26, 27, // 17 53
	28, 24, 29, // 18 56
	24, 27, 29, // 19 59
	30, 28, 31, // 20 62
	28, 29, 31, // 21 65
	32, 33, 35, // 22 68
	33, 34, 35, // 23 71
	33, 36, 34, // 24 74
	36, 37, 34, // 25 77
	36, 38, 37, // 26 80
	38, 39, 37, // 27 83
	40, 41, 43, // 28 86
	41, 42, 43, // 29 89
	6, 44, 8, // 30 92
	44, 45, 8, // 31 95
	46, 47, 49, // 32 98
	47, 48, 49, // 33 101
	18, 50, 20, // 34 104
	50, 51, 20, // 35 107
	52, 53, 55, // 36 110
	53, 54, 55, // 37 113
	56, 57, 59, // 38 116
	57, 58, 59, // 39 119
DX3DINDEX_END
#endif

#else
#define index_BlockC___mBlock_0	NULL
#endif




#if ((PT_BlockC___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BlockC___mBlock_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BlockC___mBlock_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BlockC___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BlockC___mBlock_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BlockC___mBlock_0_VERTEXSTRIP 	NULL
#define vertexbuff_BlockC___mBlock_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BlockC__ )
DX3DMODEL_START( model_BlockC___mBlock_0 )
DX3DMODEL_VERTEX( vertex_BlockC___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BlockC___mBlock_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 120 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBlock )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BlockC__, 57128957 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BlockC__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_BlockD__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_BlockD___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockD___mBlock_0 == PT_TRILIST ) || ((PT_BlockD___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BlockD___mBlock_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BlockD___mBlock_0 )
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 1.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //12
DX3DVERT( 1.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //13
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //14
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //15
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //16
DX3DVERT( 1.5, -0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //17
DX3DVERT( 1.5, 0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //18
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //19
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //20
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //21
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //22
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //23
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //28
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //29
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //30
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //31
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //32
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //33
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //36
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //37
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //38
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //39
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //40
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //41
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //42
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //43
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //44
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //45
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //46
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //47
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //48
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //49
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //50
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //51
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //52
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //53
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //54
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //55
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //56
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //57
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BlockD___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BlockD___mBlock_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 58 )
DX3DVERTEX_END


#else
#define vertex_BlockD___mBlock_0	NULL
#define vertexbuff_BlockD___mBlock_0	NULL
#endif




#if ((PT_BlockD___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockD___mBlock_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BlockD___mBlock_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	4, 5, 7, // 2 8
	5, 6, 7, // 3 11
	8, 9, 11, // 4 14
	9, 10, 11, // 5 17
	12, 13, 15, // 6 20
	13, 14, 15, // 7 23
	16, 17, 19, // 8 26
	17, 18, 19, // 9 29
	20, 21, 23, // 10 32
	21, 22, 23, // 11 35
	24, 25, 27, // 12 38
	25, 26, 27, // 13 41
	28, 29, 31, // 14 44
	29, 30, 31, // 15 47
	31, 30, 32, // 16 50
	30, 4, 32, // 17 53
	32, 4, 33, // 18 56
	4, 7, 33, // 19 59
	34, 8, 35, // 20 62
	8, 11, 35, // 21 65
	36, 12, 37, // 22 68
	12, 15, 37, // 23 71
	37, 15, 39, // 24 74
	15, 38, 39, // 25 77
	39, 38, 41, // 26 80
	38, 40, 41, // 27 83
	42, 43, 45, // 28 86
	43, 44, 45, // 29 89
	46, 42, 47, // 30 92
	42, 45, 47, // 31 95
	48, 46, 49, // 32 98
	46, 47, 49, // 33 101
	50, 51, 53, // 34 104
	51, 52, 53, // 35 107
	51, 54, 52, // 36 110
	54, 55, 52, // 37 113
	54, 56, 55, // 38 116
	56, 57, 55, // 39 119
DX3DINDEX_END
#endif

#else
#define index_BlockD___mBlock_0	NULL
#endif




#if ((PT_BlockD___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BlockD___mBlock_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BlockD___mBlock_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BlockD___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BlockD___mBlock_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BlockD___mBlock_0_VERTEXSTRIP 	NULL
#define vertexbuff_BlockD___mBlock_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BlockD__ )
DX3DMODEL_START( model_BlockD___mBlock_0 )
DX3DMODEL_VERTEX( vertex_BlockD___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BlockD___mBlock_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 120 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBlock )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BlockD__, 57130401 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BlockD__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_BlockE__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_BlockE___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockE___mBlock_0 == PT_TRILIST ) || ((PT_BlockE___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BlockE___mBlock_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BlockE___mBlock_0 )
DX3DVERT( -1.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -1.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -1.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -1.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( -1.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( -1.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( -1.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //12
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //13
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //14
DX3DVERT( -1.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //15
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //16
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //17
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //18
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //19
DX3DVERT( -1.5, -0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //20
DX3DVERT( -1.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //21
DX3DVERT( -1.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //22
DX3DVERT( -1.5, 0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //23
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //28
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //29
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //30
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //31
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //32
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 0, 1, -0 )  //33
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 0, -1, -0 )  //36
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //37
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //38
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //39
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //40
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //41
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //42
DX3DVERT( 0.5, -0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //43
DX3DVERT( 0.5, 0.5, 1.5 ) DX3DVNORM( 1, 0, -0 )  //44
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //45
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //46
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //47
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //48
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //49
DX3DVERT( -0.5, -0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //50
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //51
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //52
DX3DVERT( -0.5, 0.5, 1.5 ) DX3DVNORM( -1, 0, -0 )  //53
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //54
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //55
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //56
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //57
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BlockE___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BlockE___mBlock_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 58 )
DX3DVERTEX_END


#else
#define vertex_BlockE___mBlock_0	NULL
#define vertexbuff_BlockE___mBlock_0	NULL
#endif




#if ((PT_BlockE___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockE___mBlock_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BlockE___mBlock_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	4, 5, 7, // 2 8
	5, 6, 7, // 3 11
	8, 9, 11, // 4 14
	9, 10, 11, // 5 17
	12, 13, 15, // 6 20
	13, 14, 15, // 7 23
	16, 17, 19, // 8 26
	17, 18, 19, // 9 29
	20, 21, 23, // 10 32
	21, 22, 23, // 11 35
	24, 25, 27, // 12 38
	25, 26, 27, // 13 41
	28, 29, 31, // 14 44
	29, 30, 31, // 15 47
	31, 30, 5, // 16 50
	30, 32, 5, // 17 53
	5, 32, 6, // 18 56
	32, 33, 6, // 19 59
	9, 34, 10, // 20 62
	34, 35, 10, // 21 65
	13, 36, 14, // 22 68
	36, 37, 14, // 23 71
	14, 37, 39, // 24 74
	37, 38, 39, // 25 77
	39, 38, 41, // 26 80
	38, 40, 41, // 27 83
	42, 43, 45, // 28 86
	43, 44, 45, // 29 89
	46, 42, 47, // 30 92
	42, 45, 47, // 31 95
	48, 46, 49, // 32 98
	46, 47, 49, // 33 101
	50, 51, 53, // 34 104
	51, 52, 53, // 35 107
	51, 54, 52, // 36 110
	54, 55, 52, // 37 113
	54, 56, 55, // 38 116
	56, 57, 55, // 39 119
DX3DINDEX_END
#endif

#else
#define index_BlockE___mBlock_0	NULL
#endif




#if ((PT_BlockE___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BlockE___mBlock_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BlockE___mBlock_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BlockE___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BlockE___mBlock_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BlockE___mBlock_0_VERTEXSTRIP 	NULL
#define vertexbuff_BlockE___mBlock_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BlockE__ )
DX3DMODEL_START( model_BlockE___mBlock_0 )
DX3DMODEL_VERTEX( vertex_BlockE___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BlockE___mBlock_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 120 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBlock )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BlockE__, 57131845 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BlockE__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_BlockF__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_BlockF___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockF___mBlock_0 == PT_TRILIST ) || ((PT_BlockF___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BlockF___mBlock_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BlockF___mBlock_0 )
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //12
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //13
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //14
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( 0, -1, -0 )  //15
DX3DVERT( 0.5, -0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //16
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //17
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //18
DX3DVERT( 0.5, 0.5, -1.5 ) DX3DVNORM( 1, 0, -0 )  //19
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //20
DX3DVERT( -0.5, -0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //21
DX3DVERT( -0.5, 0.5, -1.5 ) DX3DVNORM( -1, 0, -0 )  //22
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //23
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //28
DX3DVERT( 1.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //29
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //30
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //33
DX3DVERT( 1.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //34
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //35
DX3DVERT( 1.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //36
DX3DVERT( 1.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //37
DX3DVERT( 1.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //38
DX3DVERT( 1.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //39
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //40
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //41
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //42
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //43
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BlockF___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BlockF___mBlock_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 44 )
DX3DVERTEX_END


#else
#define vertex_BlockF___mBlock_0	NULL
#define vertexbuff_BlockF___mBlock_0	NULL
#endif




#if ((PT_BlockF___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockF___mBlock_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BlockF___mBlock_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	4, 5, 7, // 2 8
	5, 6, 7, // 3 11
	8, 9, 11, // 4 14
	9, 10, 11, // 5 17
	12, 13, 15, // 6 20
	13, 14, 15, // 7 23
	16, 17, 19, // 8 26
	17, 18, 19, // 9 29
	20, 21, 23, // 10 32
	21, 22, 23, // 11 35
	24, 25, 27, // 12 38
	25, 26, 27, // 13 41
	28, 29, 6, // 14 44
	29, 30, 6, // 15 47
	9, 31, 10, // 16 50
	31, 32, 10, // 17 53
	13, 33, 35, // 18 56
	33, 34, 35, // 19 59
	36, 37, 39, // 20 62
	37, 38, 39, // 21 65
	40, 41, 43, // 22 68
	41, 42, 43, // 23 71
DX3DINDEX_END
#endif

#else
#define index_BlockF___mBlock_0	NULL
#endif




#if ((PT_BlockF___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BlockF___mBlock_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BlockF___mBlock_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BlockF___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BlockF___mBlock_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BlockF___mBlock_0_VERTEXSTRIP 	NULL
#define vertexbuff_BlockF___mBlock_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BlockF__ )
DX3DMODEL_START( model_BlockF___mBlock_0 )
DX3DMODEL_VERTEX( vertex_BlockF___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BlockF___mBlock_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 72 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBlock )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BlockF__, 57133289 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BlockF__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_BlockG__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_BlockG___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockG___mBlock_0 == PT_TRILIST ) || ((PT_BlockG___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BlockG___mBlock_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BlockG___mBlock_0 )
DX3DVERT( -0.5, -0.5, -5.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.5, -0.5, -5.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.5, 0.5, -5.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -0.5, 0.5, -5.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.5, 0.5, -5.5 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 0.5, 0.5, -5.5 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 0.5, 0.5, 5.5 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -0.5, 0.5, 5.5 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( -0.5, 0.5, 5.5 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.5, 0.5, 5.5 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.5, -0.5, 5.5 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( -0.5, -0.5, 5.5 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( -0.5, -0.5, 5.5 ) DX3DVNORM( 0, -1, -0 )  //12
DX3DVERT( 0.5, -0.5, 5.5 ) DX3DVNORM( 0, -1, -0 )  //13
DX3DVERT( 0.5, -0.5, -5.5 ) DX3DVNORM( 0, -1, -0 )  //14
DX3DVERT( -0.5, -0.5, -5.5 ) DX3DVNORM( 0, -1, -0 )  //15
DX3DVERT( 0.5, -0.5, -5.5 ) DX3DVNORM( 1, 0, -0 )  //16
DX3DVERT( 0.5, -0.5, 5.5 ) DX3DVNORM( 1, 0, -0 )  //17
DX3DVERT( 0.5, 0.5, 5.5 ) DX3DVNORM( 1, 0, -0 )  //18
DX3DVERT( 0.5, 0.5, -5.5 ) DX3DVNORM( 1, 0, -0 )  //19
DX3DVERT( -0.5, -0.5, 5.5 ) DX3DVNORM( -1, 0, -0 )  //20
DX3DVERT( -0.5, -0.5, -5.5 ) DX3DVNORM( -1, 0, -0 )  //21
DX3DVERT( -0.5, 0.5, -5.5 ) DX3DVNORM( -1, 0, -0 )  //22
DX3DVERT( -0.5, 0.5, 5.5 ) DX3DVNORM( -1, 0, -0 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BlockG___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BlockG___mBlock_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_BlockG___mBlock_0	NULL
#define vertexbuff_BlockG___mBlock_0	NULL
#endif




#if ((PT_BlockG___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockG___mBlock_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BlockG___mBlock_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	4, 5, 7, // 2 8
	5, 6, 7, // 3 11
	8, 9, 11, // 4 14
	9, 10, 11, // 5 17
	12, 13, 15, // 6 20
	13, 14, 15, // 7 23
	16, 17, 19, // 8 26
	17, 18, 19, // 9 29
	20, 21, 23, // 10 32
	21, 22, 23, // 11 35
DX3DINDEX_END
#endif

#else
#define index_BlockG___mBlock_0	NULL
#endif




#if ((PT_BlockG___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BlockG___mBlock_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BlockG___mBlock_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BlockG___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BlockG___mBlock_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BlockG___mBlock_0_VERTEXSTRIP 	NULL
#define vertexbuff_BlockG___mBlock_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BlockG__ )
DX3DMODEL_START( model_BlockG___mBlock_0 )
DX3DMODEL_VERTEX( vertex_BlockG___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BlockG___mBlock_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 36 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBlock )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BlockG__, 57134733 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BlockG__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_BlockH__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_BlockH___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockH___mBlock_0 == PT_TRILIST ) || ((PT_BlockH___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BlockH___mBlock_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BlockH___mBlock_0 )
DX3DVERT( -5.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 5.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 5.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -5.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -5.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 5.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 5.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -5.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( -5.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 5.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 5.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( -5.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( -5.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //12
DX3DVERT( 5.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //13
DX3DVERT( 5.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //14
DX3DVERT( -5.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //15
DX3DVERT( 5.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //16
DX3DVERT( 5.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //17
DX3DVERT( 5.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //18
DX3DVERT( 5.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //19
DX3DVERT( -5.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //20
DX3DVERT( -5.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //21
DX3DVERT( -5.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //22
DX3DVERT( -5.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BlockH___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BlockH___mBlock_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_BlockH___mBlock_0	NULL
#define vertexbuff_BlockH___mBlock_0	NULL
#endif




#if ((PT_BlockH___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BlockH___mBlock_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BlockH___mBlock_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	4, 5, 7, // 2 8
	5, 6, 7, // 3 11
	8, 9, 11, // 4 14
	9, 10, 11, // 5 17
	12, 13, 15, // 6 20
	13, 14, 15, // 7 23
	16, 17, 19, // 8 26
	17, 18, 19, // 9 29
	20, 21, 23, // 10 32
	21, 22, 23, // 11 35
DX3DINDEX_END
#endif

#else
#define index_BlockH___mBlock_0	NULL
#endif




#if ((PT_BlockH___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BlockH___mBlock_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BlockH___mBlock_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BlockH___mBlock_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BlockH___mBlock_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BlockH___mBlock_0_VERTEXSTRIP 	NULL
#define vertexbuff_BlockH___mBlock_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BlockH__ )
DX3DMODEL_START( model_BlockH___mBlock_0 )
DX3DMODEL_VERTEX( vertex_BlockH___mBlock_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BlockH___mBlock_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 36 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBlock )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BlockH__, 57136177 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BlockH__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_BrickA__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif

DX3DMATERIAL_START( material_mBrick )
DX3DMATERIAL_DIFF( 1, 0.5, 0.5, 0.5 )
DX3DMATERIAL_SPEC( 1, 0, 0, 0 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END


DX3DMATERIAL_START( material_mWhite )
DX3DMATERIAL_DIFF( 1, 1, 1, 1 )
DX3DMATERIAL_SPEC( 1, 0, 0, 0 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_BrickA___mBrick_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BrickA___mBrick_0 == PT_TRILIST ) || ((PT_BrickA___mBrick_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BrickA___mBrick_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BrickA___mBrick_0 )
DX3DVERT( -0.46138, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( -0.168743, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( -0.168743, -0.0405055, -0.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -0.46138, -0.0405055, -0.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.102056, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( -0.102056, -0.0405055, -0.5 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.457871, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.457871, -0.0405055, -0.5 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.338526, 0.0467681, -0.5 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( -0.46138, 0.0467681, -0.5 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 0.405212, 0.0467681, -0.5 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 0.457871, 0.0467681, -0.5 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 0.338526, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( -0.46138, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 0.405212, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 0.457871, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( -0.46138, 0.5, -0.466418 ) DX3DVNORM( 0, 1, -0 )  //16
DX3DVERT( -0.310495, 0.5, -0.466418 ) DX3DVNORM( 0, 1, -1.66346e-006 )  //17
DX3DVERT( -0.310495, 0.5, -0.057901 ) DX3DVNORM( 0, 1, -0 )  //18
DX3DVERT( -0.46138, 0.5, -0.057901 ) DX3DVNORM( 0, 1, -0 )  //19
DX3DVERT( -0.243809, 0.5, -0.466418 ) DX3DVNORM( 0, 1, -1.2719e-006 )  //20
DX3DVERT( -0.243809, 0.5, -0.057901 ) DX3DVNORM( 0, 1, -1.95576e-007 )  //21
DX3DVERT( 0.457871, 0.5, -0.466418 ) DX3DVNORM( 0, 1, 3.91555e-007 )  //22
DX3DVERT( 0.457871, 0.5, -0.057901 ) DX3DVNORM( 0, 1, -1.95576e-007 )  //23
DX3DVERT( 0.257842, 0.5, 0.0333432 ) DX3DVNORM( 0, 1, -0 )  //24
DX3DVERT( -0.46138, 0.5, 0.0333432 ) DX3DVNORM( 0, 1, -0 )  //25
DX3DVERT( 0.324528, 0.5, 0.0333432 ) DX3DVNORM( 0, 1, -1.95576e-007 )  //26
DX3DVERT( 0.457871, 0.5, 0.0333432 ) DX3DVNORM( 0, 1, -1.95576e-007 )  //27
DX3DVERT( 0.257842, 0.5, 0.468788 ) DX3DVNORM( 0, 1, 1.78977e-006 )  //28
DX3DVERT( -0.46138, 0.5, 0.468788 ) DX3DVNORM( 0, 1, -0 )  //29
DX3DVERT( 0.324528, 0.5, 0.468788 ) DX3DVNORM( 0, 1, 1.3672e-006 )  //30
DX3DVERT( 0.457871, 0.5, 0.468788 ) DX3DVNORM( 0, 1, -4.22574e-007 )  //31
DX3DVERT( -0.46138, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.338526, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.338526, 0.0467681, 0.5 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( -0.46138, 0.0467681, 0.5 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.405212, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.405212, 0.0467681, 0.5 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.457871, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.457871, 0.0467681, 0.5 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( -0.168743, -0.0405055, 0.5 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( -0.46138, -0.0405055, 0.5 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( -0.102056, -0.0405055, 0.5 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.457871, -0.0405055, 0.5 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( -0.168743, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( -0.46138, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( -0.102056, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.457871, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( -0.46138, -0.5, 0.468788 ) DX3DVNORM( 0, -1, -0 )  //48
DX3DVERT( 0.257842, -0.5, 0.468788 ) DX3DVNORM( 0, -1, 1.78977e-006 )  //49
DX3DVERT( 0.257842, -0.5, 0.0333432 ) DX3DVNORM( 0, -1, -0 )  //50
DX3DVERT( -0.46138, -0.5, 0.0333432 ) DX3DVNORM( 0, -1, -0 )  //51
DX3DVERT( 0.324528, -0.5, 0.468788 ) DX3DVNORM( 0, -1, 1.3672e-006 )  //52
DX3DVERT( 0.324528, -0.5, 0.0333432 ) DX3DVNORM( 0, -1, -1.95576e-007 )  //53
DX3DVERT( 0.457871, -0.5, 0.468788 ) DX3DVNORM( 0, -1, -4.22574e-007 )  //54
DX3DVERT( 0.457871, -0.5, 0.0333432 ) DX3DVNORM( 0, -1, -1.95576e-007 )  //55
DX3DVERT( -0.310495, -0.5, -0.057901 ) DX3DVNORM( 0, -1, -0 )  //56
DX3DVERT( -0.46138, -0.5, -0.057901 ) DX3DVNORM( 0, -1, -0 )  //57
DX3DVERT( -0.243809, -0.5, -0.057901 ) DX3DVNORM( 0, -1, -1.95576e-007 )  //58
DX3DVERT( 0.457871, -0.5, -0.057901 ) DX3DVNORM( 0, -1, -1.95576e-007 )  //59
DX3DVERT( -0.310495, -0.5, -0.466418 ) DX3DVNORM( 0, -1, -1.66346e-006 )  //60
DX3DVERT( -0.46138, -0.5, -0.466418 ) DX3DVNORM( 0, -1, -0 )  //61
DX3DVERT( -0.243809, -0.5, -0.466418 ) DX3DVNORM( 0, -1, -1.2719e-006 )  //62
DX3DVERT( 0.457871, -0.5, -0.466418 ) DX3DVNORM( 0, -1, 3.91555e-007 )  //63
DX3DVERT( 0.5, -0.465531, -0.0563776 ) DX3DVNORM( 1, 1.12507e-007, -0 )  //64
DX3DVERT( 0.5, -0.465531, 0.468788 ) DX3DVNORM( 1, 1.12507e-007, -0 )  //65
DX3DVERT( 0.5, -0.0405055, 0.468788 ) DX3DVNORM( 1, -1.29887e-007, -0 )  //66
DX3DVERT( 0.5, -0.0405055, -0.0563776 ) DX3DVNORM( 1, -1.29887e-007, -0 )  //67
DX3DVERT( 0.5, -0.465531, -0.147622 ) DX3DVNORM( 1, 0, -0 )  //68
DX3DVERT( 0.5, -0.0405055, -0.147622 ) DX3DVNORM( 1, 0, -0 )  //69
DX3DVERT( 0.5, -0.465531, -0.466418 ) DX3DVNORM( 1, 0, -0 )  //70
DX3DVERT( 0.5, -0.0405055, -0.466418 ) DX3DVNORM( 1, 0, -0 )  //71
DX3DVERT( 0.5, 0.0467681, 0.468788 ) DX3DVNORM( 1, -1.29887e-007, -0 )  //72
DX3DVERT( 0.5, 0.0467681, 0.336685 ) DX3DVNORM( 1, -1.29887e-007, -0 )  //73
DX3DVERT( 0.5, 0.0467681, 0.245441 ) DX3DVNORM( 1, 0, -0 )  //74
DX3DVERT( 0.5, 0.0467681, -0.466418 ) DX3DVNORM( 1, 0, -0 )  //75
DX3DVERT( 0.5, 0.47174, 0.468788 ) DX3DVNORM( 1, 0, -0 )  //76
DX3DVERT( 0.5, 0.47174, 0.336685 ) DX3DVNORM( 1, 0, -0 )  //77
DX3DVERT( 0.5, 0.47174, 0.245441 ) DX3DVNORM( 1, 2.35315e-007, -0 )  //78
DX3DVERT( 0.5, 0.47174, -0.466418 ) DX3DVNORM( 1, 2.35315e-007, -0 )  //79
DX3DVERT( -0.5, -0.465531, 0.468788 ) DX3DVNORM( -1, 0, -0 )  //80
DX3DVERT( -0.5, -0.465531, -0.0563776 ) DX3DVNORM( -1, 0, -0 )  //81
DX3DVERT( -0.5, -0.0405055, -0.0563776 ) DX3DVNORM( -1, -1.29887e-007, -0 )  //82
DX3DVERT( -0.5, -0.0405055, 0.468788 ) DX3DVNORM( -1, -1.29887e-007, -0 )  //83
DX3DVERT( -0.5, -0.465531, -0.147622 ) DX3DVNORM( -1, -1.48595e-007, -0 )  //84
DX3DVERT( -0.5, -0.0405055, -0.147622 ) DX3DVNORM( -1, -8.28312e-008, -0 )  //85
DX3DVERT( -0.5, -0.465531, -0.466418 ) DX3DVNORM( -1, -1.48595e-007, -0 )  //86
DX3DVERT( -0.5, -0.0405055, -0.466418 ) DX3DVNORM( -1, -8.28312e-008, -0 )  //87
DX3DVERT( -0.5, 0.0467681, 0.336685 ) DX3DVNORM( -1, -1.29887e-007, -0 )  //88
DX3DVERT( -0.5, 0.0467681, 0.468788 ) DX3DVNORM( -1, -1.29887e-007, -0 )  //89
DX3DVERT( -0.5, 0.0467681, 0.245441 ) DX3DVNORM( -1, -8.28312e-008, -0 )  //90
DX3DVERT( -0.5, 0.0467681, -0.466418 ) DX3DVNORM( -1, -8.28312e-008, -0 )  //91
DX3DVERT( -0.5, 0.47174, 0.336685 ) DX3DVNORM( -1, 0, -0 )  //92
DX3DVERT( -0.5, 0.47174, 0.468788 ) DX3DVNORM( -1, 0, -0 )  //93
DX3DVERT( -0.5, 0.47174, 0.245441 ) DX3DVNORM( -1, 2.35315e-007, -0 )  //94
DX3DVERT( -0.5, 0.47174, -0.466418 ) DX3DVNORM( -1, 2.35315e-007, -0 )  //95
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BrickA___mBrick_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BrickA___mBrick_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 96 )
DX3DVERTEX_END


#else
#define vertex_BrickA___mBrick_0	NULL
#define vertexbuff_BrickA___mBrick_0	NULL
#endif




#if ((PT_BrickA___mBrick_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BrickA___mBrick_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BrickA___mBrick_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	1, 4, 2, // 2 8
	4, 5, 2, // 3 11
	4, 6, 5, // 4 14
	6, 7, 5, // 5 17
	3, 2, 9, // 6 20
	2, 8, 9, // 7 23
	2, 5, 8, // 8 26
	5, 10, 8, // 9 29
	5, 7, 10, // 10 32
	7, 11, 10, // 11 35
	9, 8, 13, // 12 38
	8, 12, 13, // 13 41
	8, 10, 12, // 14 44
	10, 14, 12, // 15 47
	10, 11, 14, // 16 50
	11, 15, 14, // 17 53
	16, 17, 19, // 18 56
	17, 18, 19, // 19 59
	17, 20, 18, // 20 62
	20, 21, 18, // 21 65
	20, 22, 21, // 22 68
	22, 23, 21, // 23 71
	19, 18, 25, // 24 74
	18, 24, 25, // 25 77
	18, 21, 24, // 26 80
	21, 26, 24, // 27 83
	21, 23, 26, // 28 86
	23, 27, 26, // 29 89
	25, 24, 29, // 30 92
	24, 28, 29, // 31 95
	24, 26, 28, // 32 98
	26, 30, 28, // 33 101
	26, 27, 30, // 34 104
	27, 31, 30, // 35 107
	32, 33, 35, // 36 110
	33, 34, 35, // 37 113
	33, 36, 34, // 38 116
	36, 37, 34, // 39 119
	36, 38, 37, // 40 122
	38, 39, 37, // 41 125
	35, 34, 41, // 42 128
	34, 40, 41, // 43 131
	34, 37, 40, // 44 134
	37, 42, 40, // 45 137
	37, 39, 42, // 46 140
	39, 43, 42, // 47 143
	41, 40, 45, // 48 146
	40, 44, 45, // 49 149
	40, 42, 44, // 50 152
	42, 46, 44, // 51 155
	42, 43, 46, // 52 158
	43, 47, 46, // 53 161
	48, 49, 51, // 54 164
	49, 50, 51, // 55 167
	49, 52, 50, // 56 170
	52, 53, 50, // 57 173
	52, 54, 53, // 58 176
	54, 55, 53, // 59 179
	51, 50, 57, // 60 182
	50, 56, 57, // 61 185
	50, 53, 56, // 62 188
	53, 58, 56, // 63 191
	53, 55, 58, // 64 194
	55, 59, 58, // 65 197
	57, 56, 61, // 66 200
	56, 60, 61, // 67 203
	56, 58, 60, // 68 206
	58, 62, 60, // 69 209
	58, 59, 62, // 70 212
	59, 63, 62, // 71 215
	64, 65, 67, // 72 218
	65, 66, 67, // 73 221
	68, 64, 69, // 74 224
	64, 67, 69, // 75 227
	70, 68, 71, // 76 230
	68, 69, 71, // 77 233
	67, 66, 73, // 78 236
	66, 72, 73, // 79 239
	69, 67, 74, // 80 242
	67, 73, 74, // 81 245
	71, 69, 75, // 82 248
	69, 74, 75, // 83 251
	73, 72, 77, // 84 254
	72, 76, 77, // 85 257
	74, 73, 78, // 86 260
	73, 77, 78, // 87 263
	75, 74, 79, // 88 266
	74, 78, 79, // 89 269
	80, 81, 83, // 90 272
	81, 82, 83, // 91 275
	81, 84, 82, // 92 278
	84, 85, 82, // 93 281
	84, 86, 85, // 94 284
	86, 87, 85, // 95 287
	83, 82, 89, // 96 290
	82, 88, 89, // 97 293
	82, 85, 88, // 98 296
	85, 90, 88, // 99 299
	85, 87, 90, // 100 302
	87, 91, 90, // 101 305
	89, 88, 93, // 102 308
	88, 92, 93, // 103 311
	88, 90, 92, // 104 314
	90, 94, 92, // 105 317
	90, 91, 94, // 106 320
	91, 95, 94, // 107 323
DX3DINDEX_END
#endif

#else
#define index_BrickA___mBrick_0	NULL
#endif




#if ((PT_BrickA___mBrick_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BrickA___mBrick_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BrickA___mBrick_0_INDEXSTRIP 	NULL
#endif




#if ((PT_BrickA___mBrick_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BrickA___mBrick_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BrickA___mBrick_0_VERTEXSTRIP 	NULL
#define vertexbuff_BrickA___mBrick_0_VERTEXSTRIP 	NULL
#endif






#if ((PT_BrickA___mWhite_1 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BrickA___mWhite_1 == PT_TRILIST ) || ((PT_BrickA___mWhite_1 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP))  || (PT_BrickA___mWhite_1 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERT_START( VN, vertexbuff_BrickA___mWhite_1 )
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( -0.46138, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( -0.46138, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -0.5, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.0403597, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( -0.168743, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.0263267, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( -0.102056, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.457871, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 0.457871, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 0.5, -0.465531, -0.5 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( -0.46138, -0.0405055, -0.5 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( -0.5, -0.0405055, -0.5 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 0.5, -0.0405055, -0.5 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 0.457871, -0.0405055, -0.5 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( -0.46138, 0.0467681, -0.5 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( -0.5, 0.0467681, -0.5 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 0.5, 0.0467681, -0.5 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 0.457871, 0.0467681, -0.5 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( -0.46138, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( -0.5, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.5, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 0.457871, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( -0.46138, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.338526, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( -0.0403597, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.405212, 0.47174, -0.5 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.0263267, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.457871, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //32
DX3DVERT( -0.46138, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //33
DX3DVERT( -0.46138, 0.5, -0.466418 ) DX3DVNORM( 0, 1, -0 )  //34
DX3DVERT( -0.5, 0.5, -0.466418 ) DX3DVNORM( 0, 1, -0 )  //35
DX3DVERT( -0.0403597, 0.5, -0.5 ) DX3DVNORM( 0, 1, -3.32692e-006 )  //36
DX3DVERT( -0.310495, 0.5, -0.466418 ) DX3DVNORM( 0, 1, -1.66346e-006 )  //37
DX3DVERT( 0.0263267, 0.5, -0.5 ) DX3DVNORM( 0, 1, -2.54381e-006 )  //38
DX3DVERT( -0.243809, 0.5, -0.466418 ) DX3DVNORM( 0, 1, -1.2719e-006 )  //39
DX3DVERT( 0.457871, 0.5, -0.5 ) DX3DVNORM( 0, 1, 7.83111e-007 )  //40
DX3DVERT( 0.457871, 0.5, -0.466418 ) DX3DVNORM( 0, 1, 3.91555e-007 )  //41
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 0, 1, -0 )  //42
DX3DVERT( 0.5, 0.5, -0.466418 ) DX3DVNORM( 0, 1, -0 )  //43
DX3DVERT( -0.46138, 0.5, -0.057901 ) DX3DVNORM( 0, 1, -0 )  //44
DX3DVERT( -0.5, 0.5, -0.057901 ) DX3DVNORM( 0, 1, -0 )  //45
DX3DVERT( 0.5, 0.5, -0.057901 ) DX3DVNORM( 0, 1, -0 )  //46
DX3DVERT( 0.457871, 0.5, -0.057901 ) DX3DVNORM( 0, 1, -1.95576e-007 )  //47
DX3DVERT( -0.46138, 0.5, 0.0333432 ) DX3DVNORM( 0, 1, -0 )  //48
DX3DVERT( -0.5, 0.5, 0.0333432 ) DX3DVNORM( 0, 1, -0 )  //49
DX3DVERT( 0.5, 0.5, 0.0333432 ) DX3DVNORM( 0, 1, -0 )  //50
DX3DVERT( 0.457871, 0.5, 0.0333432 ) DX3DVNORM( 0, 1, -1.95576e-007 )  //51
DX3DVERT( -0.46138, 0.5, 0.468788 ) DX3DVNORM( 0, 1, -0 )  //52
DX3DVERT( -0.5, 0.5, 0.468788 ) DX3DVNORM( 0, 1, -0 )  //53
DX3DVERT( 0.5, 0.5, 0.468788 ) DX3DVNORM( 0, 1, -0 )  //54
DX3DVERT( 0.457871, 0.5, 0.468788 ) DX3DVNORM( 0, 1, -4.22574e-007 )  //55
DX3DVERT( -0.46138, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //56
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //57
DX3DVERT( 0.257842, 0.5, 0.468788 ) DX3DVNORM( 0, 1, 1.78977e-006 )  //58
DX3DVERT( -0.0403597, 0.5, 0.5 ) DX3DVNORM( 0, 1, 3.57955e-006 )  //59
DX3DVERT( 0.324528, 0.5, 0.468788 ) DX3DVNORM( 0, 1, 1.3672e-006 )  //60
DX3DVERT( 0.0263267, 0.5, 0.5 ) DX3DVNORM( 0, 1, 2.7344e-006 )  //61
DX3DVERT( 0.457871, 0.5, 0.5 ) DX3DVNORM( 0, 1, -8.45149e-007 )  //62
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 1, -0 )  //63
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( -0.46138, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( -0.46138, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( -0.5, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( -0.0403597, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 0.338526, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.0263267, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.405212, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 0.457871, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 0.457871, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 0.5, 0.47174, 0.5 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( -0.46138, 0.0467681, 0.5 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( -0.5, 0.0467681, 0.5 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 0.5, 0.0467681, 0.5 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 0.457871, 0.0467681, 0.5 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( -0.46138, -0.0405055, 0.5 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( -0.5, -0.0405055, 0.5 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT( 0.5, -0.0405055, 0.5 ) DX3DVNORM( 0, 0, 1 )  //82
DX3DVERT( 0.457871, -0.0405055, 0.5 ) DX3DVNORM( 0, 0, 1 )  //83
DX3DVERT( -0.46138, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //84
DX3DVERT( -0.5, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //85
DX3DVERT( 0.5, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //86
DX3DVERT( 0.457871, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //87
DX3DVERT( -0.46138, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //88
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //89
DX3DVERT( -0.168743, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //90
DX3DVERT( -0.0403597, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //91
DX3DVERT( -0.102056, -0.465531, 0.5 ) DX3DVNORM( 0, 0, 1 )  //92
DX3DVERT( 0.0263267, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //93
DX3DVERT( 0.457871, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //94
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, 0, 1 )  //95
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //96
DX3DVERT( -0.46138, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //97
DX3DVERT( -0.46138, -0.5, 0.468788 ) DX3DVNORM( 0, -1, -0 )  //98
DX3DVERT( -0.5, -0.5, 0.468788 ) DX3DVNORM( 0, -1, -0 )  //99
DX3DVERT( -0.0403597, -0.5, 0.5 ) DX3DVNORM( 0, -1, 3.57955e-006 )  //100
DX3DVERT( 0.257842, -0.5, 0.468788 ) DX3DVNORM( 0, -1, 1.78977e-006 )  //101
DX3DVERT( 0.0263267, -0.5, 0.5 ) DX3DVNORM( 0, -1, 2.7344e-006 )  //102
DX3DVERT( 0.324528, -0.5, 0.468788 ) DX3DVNORM( 0, -1, 1.3672e-006 )  //103
DX3DVERT( 0.457871, -0.5, 0.5 ) DX3DVNORM( 0, -1, -8.45149e-007 )  //104
DX3DVERT( 0.457871, -0.5, 0.468788 ) DX3DVNORM( 0, -1, -4.22574e-007 )  //105
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 0, -1, -0 )  //106
DX3DVERT( 0.5, -0.5, 0.468788 ) DX3DVNORM( 0, -1, -0 )  //107
DX3DVERT( -0.46138, -0.5, 0.0333432 ) DX3DVNORM( 0, -1, -0 )  //108
DX3DVERT( -0.5, -0.5, 0.0333432 ) DX3DVNORM( 0, -1, -0 )  //109
DX3DVERT( 0.5, -0.5, 0.0333432 ) DX3DVNORM( 0, -1, -0 )  //110
DX3DVERT( 0.457871, -0.5, 0.0333432 ) DX3DVNORM( 0, -1, -1.95576e-007 )  //111
DX3DVERT( -0.46138, -0.5, -0.057901 ) DX3DVNORM( 0, -1, -0 )  //112
DX3DVERT( -0.5, -0.5, -0.057901 ) DX3DVNORM( 0, -1, -0 )  //113
DX3DVERT( 0.5, -0.5, -0.057901 ) DX3DVNORM( 0, -1, -0 )  //114
DX3DVERT( 0.457871, -0.5, -0.057901 ) DX3DVNORM( 0, -1, -1.95576e-007 )  //115
DX3DVERT( -0.46138, -0.5, -0.466418 ) DX3DVNORM( 0, -1, -0 )  //116
DX3DVERT( -0.5, -0.5, -0.466418 ) DX3DVNORM( 0, -1, -0 )  //117
DX3DVERT( 0.5, -0.5, -0.466418 ) DX3DVNORM( 0, -1, -0 )  //118
DX3DVERT( 0.457871, -0.5, -0.466418 ) DX3DVNORM( 0, -1, 3.91555e-007 )  //119
DX3DVERT( -0.46138, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //120
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //121
DX3DVERT( -0.310495, -0.5, -0.466418 ) DX3DVNORM( 0, -1, -1.66346e-006 )  //122
DX3DVERT( -0.0403597, -0.5, -0.5 ) DX3DVNORM( 0, -1, -3.32692e-006 )  //123
DX3DVERT( -0.243809, -0.5, -0.466418 ) DX3DVNORM( 0, -1, -1.2719e-006 )  //124
DX3DVERT( 0.0263267, -0.5, -0.5 ) DX3DVNORM( 0, -1, -2.54381e-006 )  //125
DX3DVERT( 0.457871, -0.5, -0.5 ) DX3DVNORM( 0, -1, 7.83111e-007 )  //126
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 0, -1, -0 )  //127
DX3DVERT( 0.5, -0.5, 0.468788 ) DX3DVNORM( 1, 2.25013e-007, -0 )  //128
DX3DVERT( 0.5, -0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //129
DX3DVERT( 0.5, -0.465531, 0.5 ) DX3DVNORM( 1, 0, -0 )  //130
DX3DVERT( 0.5, -0.465531, 0.468788 ) DX3DVNORM( 1, 1.12507e-007, -0 )  //131
DX3DVERT( 0.5, -0.5, 0.0333432 ) DX3DVNORM( 1, 2.25013e-007, -0 )  //132
DX3DVERT( 0.5, -0.465531, -0.0563776 ) DX3DVNORM( 1, 1.12507e-007, -0 )  //133
DX3DVERT( 0.5, -0.5, -0.057901 ) DX3DVNORM( 1, 0, -0 )  //134
DX3DVERT( 0.5, -0.465531, -0.147622 ) DX3DVNORM( 1, 0, -0 )  //135
DX3DVERT( 0.5, -0.5, -0.466418 ) DX3DVNORM( 1, 0, -0 )  //136
DX3DVERT( 0.5, -0.465531, -0.466418 ) DX3DVNORM( 1, 0, -0 )  //137
DX3DVERT( 0.5, -0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //138
DX3DVERT( 0.5, -0.465531, -0.5 ) DX3DVNORM( 1, 0, -0 )  //139
DX3DVERT( 0.5, -0.0405055, 0.5 ) DX3DVNORM( 1, 0, -0 )  //140
DX3DVERT( 0.5, -0.0405055, 0.468788 ) DX3DVNORM( 1, -1.29887e-007, -0 )  //141
DX3DVERT( 0.5, -0.0405055, -0.466418 ) DX3DVNORM( 1, 0, -0 )  //142
DX3DVERT( 0.5, -0.0405055, -0.5 ) DX3DVNORM( 1, 0, -0 )  //143
DX3DVERT( 0.5, 0.0467681, 0.5 ) DX3DVNORM( 1, 0, -0 )  //144
DX3DVERT( 0.5, 0.0467681, 0.468788 ) DX3DVNORM( 1, -1.29887e-007, -0 )  //145
DX3DVERT( 0.5, 0.0467681, -0.466418 ) DX3DVNORM( 1, 0, -0 )  //146
DX3DVERT( 0.5, 0.0467681, -0.5 ) DX3DVNORM( 1, 0, -0 )  //147
DX3DVERT( 0.5, 0.47174, 0.5 ) DX3DVNORM( 1, 0, -0 )  //148
DX3DVERT( 0.5, 0.47174, 0.468788 ) DX3DVNORM( 1, 0, -0 )  //149
DX3DVERT( 0.5, 0.47174, -0.466418 ) DX3DVNORM( 1, 2.35315e-007, -0 )  //150
DX3DVERT( 0.5, 0.47174, -0.5 ) DX3DVNORM( 1, 0, -0 )  //151
DX3DVERT( 0.5, 0.5, 0.5 ) DX3DVNORM( 1, 0, -0 )  //152
DX3DVERT( 0.5, 0.5, 0.468788 ) DX3DVNORM( 1, 0, -0 )  //153
DX3DVERT( 0.5, 0.47174, 0.336685 ) DX3DVNORM( 1, 0, -0 )  //154
DX3DVERT( 0.5, 0.5, 0.0333432 ) DX3DVNORM( 1, 0, -0 )  //155
DX3DVERT( 0.5, 0.47174, 0.245441 ) DX3DVNORM( 1, 2.35315e-007, -0 )  //156
DX3DVERT( 0.5, 0.5, -0.057901 ) DX3DVNORM( 1, 4.70629e-007, -0 )  //157
DX3DVERT( 0.5, 0.5, -0.466418 ) DX3DVNORM( 1, 4.70629e-007, -0 )  //158
DX3DVERT( 0.5, 0.5, -0.5 ) DX3DVNORM( 1, 0, -0 )  //159
DX3DVERT( -0.5, -0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //160
DX3DVERT( -0.5, -0.5, 0.468788 ) DX3DVNORM( -1, 0, -0 )  //161
DX3DVERT( -0.5, -0.465531, 0.468788 ) DX3DVNORM( -1, 0, -0 )  //162
DX3DVERT( -0.5, -0.465531, 0.5 ) DX3DVNORM( -1, 0, -0 )  //163
DX3DVERT( -0.5, -0.5, 0.0333432 ) DX3DVNORM( -1, 0, -0 )  //164
DX3DVERT( -0.5, -0.465531, -0.0563776 ) DX3DVNORM( -1, 0, -0 )  //165
DX3DVERT( -0.5, -0.5, -0.057901 ) DX3DVNORM( -1, -2.9719e-007, -0 )  //166
DX3DVERT( -0.5, -0.465531, -0.147622 ) DX3DVNORM( -1, -1.48595e-007, -0 )  //167
DX3DVERT( -0.5, -0.5, -0.466418 ) DX3DVNORM( -1, -2.9719e-007, -0 )  //168
DX3DVERT( -0.5, -0.465531, -0.466418 ) DX3DVNORM( -1, -1.48595e-007, -0 )  //169
DX3DVERT( -0.5, -0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //170
DX3DVERT( -0.5, -0.465531, -0.5 ) DX3DVNORM( -1, 0, -0 )  //171
DX3DVERT( -0.5, -0.0405055, 0.468788 ) DX3DVNORM( -1, -1.29887e-007, -0 )  //172
DX3DVERT( -0.5, -0.0405055, 0.5 ) DX3DVNORM( -1, 0, -0 )  //173
DX3DVERT( -0.5, -0.0405055, -0.5 ) DX3DVNORM( -1, 0, -0 )  //174
DX3DVERT( -0.5, -0.0405055, -0.466418 ) DX3DVNORM( -1, -8.28312e-008, -0 )  //175
DX3DVERT( -0.5, 0.0467681, 0.468788 ) DX3DVNORM( -1, -1.29887e-007, -0 )  //176
DX3DVERT( -0.5, 0.0467681, 0.5 ) DX3DVNORM( -1, 0, -0 )  //177
DX3DVERT( -0.5, 0.0467681, -0.5 ) DX3DVNORM( -1, 0, -0 )  //178
DX3DVERT( -0.5, 0.0467681, -0.466418 ) DX3DVNORM( -1, -8.28312e-008, -0 )  //179
DX3DVERT( -0.5, 0.47174, 0.468788 ) DX3DVNORM( -1, 0, -0 )  //180
DX3DVERT( -0.5, 0.47174, 0.5 ) DX3DVNORM( -1, 0, -0 )  //181
DX3DVERT( -0.5, 0.47174, -0.5 ) DX3DVNORM( -1, 0, -0 )  //182
DX3DVERT( -0.5, 0.47174, -0.466418 ) DX3DVNORM( -1, 2.35315e-007, -0 )  //183
DX3DVERT( -0.5, 0.5, 0.468788 ) DX3DVNORM( -1, 0, -0 )  //184
DX3DVERT( -0.5, 0.5, 0.5 ) DX3DVNORM( -1, 0, -0 )  //185
DX3DVERT( -0.5, 0.47174, 0.336685 ) DX3DVNORM( -1, 0, -0 )  //186
DX3DVERT( -0.5, 0.5, 0.0333432 ) DX3DVNORM( -1, 0, -0 )  //187
DX3DVERT( -0.5, 0.47174, 0.245441 ) DX3DVNORM( -1, 2.35315e-007, -0 )  //188
DX3DVERT( -0.5, 0.5, -0.057901 ) DX3DVNORM( -1, 4.70629e-007, -0 )  //189
DX3DVERT( -0.5, 0.5, -0.466418 ) DX3DVNORM( -1, 4.70629e-007, -0 )  //190
DX3DVERT( -0.5, 0.5, -0.5 ) DX3DVNORM( -1, 0, -0 )  //191
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_BrickA___mWhite_1 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_BrickA___mWhite_1 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 192 )
DX3DVERTEX_END


#else
#define vertex_BrickA___mWhite_1	NULL
#define vertexbuff_BrickA___mWhite_1	NULL
#endif




#if ((PT_BrickA___mWhite_1 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_TRILIST) ) || (PT_BrickA___mWhite_1 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DINDEX_START( index_BrickA___mWhite_1 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
	1, 4, 2, // 2 8
	4, 5, 2, // 3 11
	4, 6, 5, // 4 14
	6, 7, 5, // 5 17
	6, 8, 7, // 6 20
	8, 9, 7, // 7 23
	8, 10, 9, // 8 26
	10, 11, 9, // 9 29
	3, 2, 13, // 10 32
	2, 12, 13, // 11 35
	9, 11, 15, // 12 38
	11, 14, 15, // 13 41
	13, 12, 17, // 14 44
	12, 16, 17, // 15 47
	15, 14, 19, // 16 50
	14, 18, 19, // 17 53
	17, 16, 21, // 18 56
	16, 20, 21, // 19 59
	19, 18, 23, // 20 62
	18, 22, 23, // 21 65
	21, 20, 25, // 22 68
	20, 24, 25, // 23 71
	20, 26, 24, // 24 74
	26, 27, 24, // 25 77
	26, 28, 27, // 26 80
	28, 29, 27, // 27 83
	28, 23, 29, // 28 86
	23, 30, 29, // 29 89
	23, 22, 30, // 30 92
	22, 31, 30, // 31 95
	32, 33, 35, // 32 98
	33, 34, 35, // 33 101
	33, 36, 34, // 34 104
	36, 37, 34, // 35 107
	36, 38, 37, // 36 110
	38, 39, 37, // 37 113
	38, 40, 39, // 38 116
	40, 41, 39, // 39 119
	40, 42, 41, // 40 122
	42, 43, 41, // 41 125
	35, 34, 45, // 42 128
	34, 44, 45, // 43 131
	41, 43, 47, // 44 134
	43, 46, 47, // 45 137
	45, 44, 49, // 46 140
	44, 48, 49, // 47 143
	47, 46, 51, // 48 146
	46, 50, 51, // 49 149
	49, 48, 53, // 50 152
	48, 52, 53, // 51 155
	51, 50, 55, // 52 158
	50, 54, 55, // 53 161
	53, 52, 57, // 54 164
	52, 56, 57, // 55 167
	52, 58, 56, // 56 170
	58, 59, 56, // 57 173
	58, 60, 59, // 58 176
	60, 61, 59, // 59 179
	60, 55, 61, // 60 182
	55, 62, 61, // 61 185
	55, 54, 62, // 62 188
	54, 63, 62, // 63 191
	64, 65, 67, // 64 194
	65, 66, 67, // 65 197
	65, 68, 66, // 66 200
	68, 69, 66, // 67 203
	68, 70, 69, // 68 206
	70, 71, 69, // 69 209
	70, 72, 71, // 70 212
	72, 73, 71, // 71 215
	72, 74, 73, // 72 218
	74, 75, 73, // 73 221
	67, 66, 77, // 74 224
	66, 76, 77, // 75 227
	73, 75, 79, // 76 230
	75, 78, 79, // 77 233
	77, 76, 81, // 78 236
	76, 80, 81, // 79 239
	79, 78, 83, // 80 242
	78, 82, 83, // 81 245
	81, 80, 85, // 82 248
	80, 84, 85, // 83 251
	83, 82, 87, // 84 254
	82, 86, 87, // 85 257
	85, 84, 89, // 86 260
	84, 88, 89, // 87 263
	84, 90, 88, // 88 266
	90, 91, 88, // 89 269
	90, 92, 91, // 90 272
	92, 93, 91, // 91 275
	92, 87, 93, // 92 278
	87, 94, 93, // 93 281
	87, 86, 94, // 94 284
	86, 95, 94, // 95 287
	96, 97, 99, // 96 290
	97, 98, 99, // 97 293
	97, 100, 98, // 98 296
	100, 101, 98, // 99 299
	100, 102, 101, // 100 302
	102, 103, 101, // 101 305
	102, 104, 103, // 102 308
	104, 105, 103, // 103 311
	104, 106, 105, // 104 314
	106, 107, 105, // 105 317
	99, 98, 109, // 106 320
	98, 108, 109, // 107 323
	105, 107, 111, // 108 326
	107, 110, 111, // 109 329
	109, 108, 113, // 110 332
	108, 112, 113, // 111 335
	111, 110, 115, // 112 338
	110, 114, 115, // 113 341
	113, 112, 117, // 114 344
	112, 116, 117, // 115 347
	115, 114, 119, // 116 350
	114, 118, 119, // 117 353
	117, 116, 121, // 118 356
	116, 120, 121, // 119 359
	116, 122, 120, // 120 362
	122, 123, 120, // 121 365
	122, 124, 123, // 122 368
	124, 125, 123, // 123 371
	124, 119, 125, // 124 374
	119, 126, 125, // 125 377
	119, 118, 126, // 126 380
	118, 127, 126, // 127 383
	128, 129, 131, // 128 386
	129, 130, 131, // 129 389
	132, 128, 133, // 130 392
	128, 131, 133, // 131 395
	134, 132, 135, // 132 398
	132, 133, 135, // 133 401
	136, 134, 137, // 134 404
	134, 135, 137, // 135 407
	138, 136, 139, // 136 410
	136, 137, 139, // 137 413
	131, 130, 141, // 138 416
	130, 140, 141, // 139 419
	139, 137, 143, // 140 422
	137, 142, 143, // 141 425
	141, 140, 145, // 142 428
	140, 144, 145, // 143 431
	143, 142, 147, // 144 434
	142, 146, 147, // 145 437
	145, 144, 149, // 146 440
	144, 148, 149, // 147 443
	147, 146, 151, // 148 446
	146, 150, 151, // 149 449
	149, 148, 153, // 150 452
	148, 152, 153, // 151 455
	154, 149, 155, // 152 458
	149, 153, 155, // 153 461
	156, 154, 157, // 154 464
	154, 155, 157, // 155 467
	150, 156, 158, // 156 470
	156, 157, 158, // 157 473
	151, 150, 159, // 158 476
	150, 158, 159, // 159 479
	160, 161, 163, // 160 482
	161, 162, 163, // 161 485
	161, 164, 162, // 162 488
	164, 165, 162, // 163 491
	164, 166, 165, // 164 494
	166, 167, 165, // 165 497
	166, 168, 167, // 166 500
	168, 169, 167, // 167 503
	168, 170, 169, // 168 506
	170, 171, 169, // 169 509
	163, 162, 173, // 170 512
	162, 172, 173, // 171 515
	169, 171, 175, // 172 518
	171, 174, 175, // 173 521
	173, 172, 177, // 174 524
	172, 176, 177, // 175 527
	175, 174, 179, // 176 530
	174, 178, 179, // 177 533
	177, 176, 181, // 178 536
	176, 180, 181, // 179 539
	179, 178, 183, // 180 542
	178, 182, 183, // 181 545
	181, 180, 185, // 182 548
	180, 184, 185, // 183 551
	180, 186, 184, // 184 554
	186, 187, 184, // 185 557
	186, 188, 187, // 186 560
	188, 189, 187, // 187 563
	188, 183, 189, // 188 566
	183, 190, 189, // 189 569
	183, 182, 190, // 190 572
	182, 191, 190, // 191 575
DX3DINDEX_END
#endif

#else
#define index_BrickA___mWhite_1	NULL
#endif




#if ((PT_BrickA___mWhite_1 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_INDEXSTRIP) ) || (PT_BrickA___mWhite_1 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_BrickA___mWhite_1_INDEXSTRIP 	NULL
#endif




#if ((PT_BrickA___mWhite_1 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectBlock00_tst__ == PT_VERTEXSTRIP) ) || (PT_BrickA___mWhite_1 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_BrickA___mWhite_1_VERTEXSTRIP 	NULL
#define vertexbuff_BrickA___mWhite_1_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_BrickA__ )
DX3DMODEL_START( model_BrickA___mBrick_0 )
DX3DMODEL_VERTEX( vertex_BrickA___mBrick_0 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BrickA___mBrick_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 324 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mBrick )
DX3DMODEL_END
DX3DMODEL_START( model_BrickA___mWhite_1 )
DX3DMODEL_VERTEX( vertex_BrickA___mWhite_1 )
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DMODEL_INDEX( index_BrickA___mWhite_1 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 576 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_mWhite )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_BrickA__, 467464181 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_BrickA__ )
DX3DOBJECT_MATRIXBIND( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXBIND_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSBIND_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_MATRIXPOSE( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_MATRIXPOSE_ABS( 
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
)
DX3DOBJECT_TRSPOSE_ROTORDER( RO_XYZ,
	0, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END




//////////// export info ///////////////
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectBlock00_tst___0, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectBlock00_tst___1, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectBlock00_tst___2, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectBlock00_tst___3, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectBlock00_tst___4, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectBlock00_tst___5, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectBlock00_tst___6, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectBlock00_tst___7, 0 )




/////////////////////////////////////////////
#if ( !BINARY_GachanGameObjectBlock00_tst__ )
DX3DBINARYFILE( binaryfile_GachanGameObjectBlock00_tst__, NULL )
#else
DX3DBINARYFILE( binaryfile_GachanGameObjectBlock00_tst__, "Z:/toshi2gachan/_GachanWorkspace/object/" )
#endif


DX3DBINARYSIZE( binarysize_GachanGameObjectBlock00_tst__, 0 )


