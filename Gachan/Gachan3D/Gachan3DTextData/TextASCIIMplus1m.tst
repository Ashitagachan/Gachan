//skipped groundPlane_transform
//skipped Manipulator1
//skipped UniversalManip
//skipped CubeCompass
/////////////////////////////////////////////
// object_Trim_Char_x_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif

DX3DMATERIAL_START( material_initialShadingGroup )
DX3DMATERIAL_DIFF( 1, 0.4, 0.4, 0.4 )
DX3DMATERIAL_SPEC( 1, 1, 1, 1 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_1_1___initialShadingGroup_0 )
DX3DVERT( 1.18906, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.18906, 0.50625, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.975001, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.18906, 1.36349e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.975001, 5.55112e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.760938, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.760938, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.975001, 0.50625, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.760938, 0.50625, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.16339, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.17031, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.975001, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.1357, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.14262, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.975001, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.13125, 0.839063, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.975001, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.81875, 0.839063, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.975001, 0.839063, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.807381, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.814305, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.14954, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.15647, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.975001, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.975001, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.800458, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.793535, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.975001, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.786612, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.779689, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 30 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 0, 4, // 1 5
	5, 4, 2, // 2 8
	6, 2, 7, // 3 11
	1, 7, 2, // 4 14
	0, 2, 4, // 5 17
	2, 6, 5, // 6 20
	7, 8, 6, // 7 23
	9, 10, 11, // 8 26
	12, 13, 14, // 9 29
	15, 12, 16, // 10 32
	17, 18, 16, // 11 35
	14, 19, 20, // 12 38
	21, 22, 23, // 13 41
	13, 21, 24, // 14 44
	24, 25, 19, // 15 47
	23, 26, 25, // 16 50
	22, 9, 27, // 17 53
	27, 28, 26, // 18 56
	11, 29, 28, // 19 59
	11, 27, 9, // 20 62
	14, 16, 12, // 21 65
	16, 18, 15, // 22 68
	16, 20, 17, // 23 71
	20, 16, 14, // 24 74
	23, 24, 21, // 25 77
	24, 14, 13, // 26 80
	19, 14, 24, // 27 83
	25, 24, 23, // 28 86
	27, 23, 22, // 29 89
	26, 23, 27, // 30 92
	28, 27, 11, // 31 95
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_1_1__ )
DX3DMODEL_START( model_Trim_Char_x_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_1_1__, 670326197 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_2_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_2_1___initialShadingGroup_0 )
DX3DVERT( 0.865105, 2.86016, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.878126, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.82922, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.82922, 2.35849, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.839063, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.82922, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.682501, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.8, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.813021, 2.13203, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.682501, 2.13203, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.565626, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.682501, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.826042, 2.31406, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.682501, 2.31406, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.539584, 2.31406, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.552605, 2.13203, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.526564, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.682501, 2.86016, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.82922, 2.86016, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.82922, 2.67813, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.682501, 2.67813, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.513543, 2.67813, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.682501, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.487501, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.500522, 2.86016, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.852084, 2.67813, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.44948, 2.86016, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.4625, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.2675, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.41042, 2.31406, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.42344, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.2675, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.38438, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.3974, 2.13203, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.2675, 2.13203, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.15, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.2675, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.12078, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.11094, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.12078, 2.35848, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.2675, 2.31406, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.12396, 2.31406, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.13698, 2.13203, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.43646, 2.67813, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.2675, 2.67813, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.12078, 2.67813, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.09792, 2.67813, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.12078, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.07188, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.0849, 2.86016, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.12078, 2.86016, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.2675, 2.86016, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_2_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_2_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 52 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_2_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_2_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_2_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	3, 5, 6, // 2 8
	7, 8, 9, // 3 11
	10, 11, 9, // 4 14
	8, 12, 13, // 5 17
	13, 14, 15, // 6 20
	6, 16, 14, // 7 23
	17, 18, 2, // 8 26
	6, 5, 19, // 9 29
	16, 6, 20, // 10 32
	20, 19, 18, // 11 35
	21, 20, 17, // 12 38
	22, 23, 24, // 13 41
	4, 25, 19, // 14 44
	25, 0, 18, // 15 47
	2, 18, 0, // 16 50
	13, 12, 3, // 17 53
	3, 6, 13, // 18 56
	9, 11, 7, // 19 59
	9, 15, 10, // 20 62
	13, 9, 8, // 21 65
	15, 9, 13, // 22 68
	14, 13, 6, // 23 71
	2, 22, 17, // 24 74
	19, 20, 6, // 25 77
	20, 21, 16, // 26 80
	18, 17, 20, // 27 83
	17, 24, 21, // 28 86
	24, 17, 22, // 29 89
	19, 5, 4, // 30 92
	18, 19, 25, // 31 95
	26, 27, 28, // 32 98
	29, 30, 31, // 33 101
	32, 33, 34, // 34 104
	35, 36, 34, // 35 107
	37, 38, 39, // 36 110
	33, 29, 40, // 37 113
	40, 41, 42, // 38 116
	31, 37, 39, // 39 119
	30, 43, 44, // 40 122
	45, 46, 38, // 41 125
	37, 31, 44, // 42 128
	47, 48, 49, // 43 131
	46, 45, 50, // 44 134
	43, 26, 51, // 45 137
	45, 44, 51, // 46 140
	50, 51, 28, // 47 143
	28, 51, 26, // 48 146
	31, 40, 29, // 49 149
	34, 36, 32, // 50 152
	34, 42, 35, // 51 155
	40, 34, 33, // 52 158
	42, 34, 40, // 53 161
	39, 41, 40, // 54 164
	40, 31, 39, // 55 167
	44, 31, 30, // 56 170
	38, 37, 45, // 57 173
	44, 45, 37, // 58 176
	49, 50, 47, // 59 179
	50, 49, 46, // 60 182
	51, 44, 43, // 61 185
	51, 50, 45, // 62 188
	28, 47, 50, // 63 191
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_2_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_2_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_2_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_2_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_2_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_2_1__ )
DX3DMODEL_START( model_Trim_Char_x_2_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_2_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_2_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 192 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_2_1__, 672411333 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_2_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_3_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_3_1___initialShadingGroup_0 )
DX3DVERT( 1.572, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.62188, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.30312, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.39219, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.24792, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.24792, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.24792, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.24792, -1.34241e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.26719, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.381546, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.331251, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.651563, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.997866, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.948438, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.702085, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.702085, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.456251, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.700991, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.702085, 0.415692, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.35781, 0.732813, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.65781, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.0375, 0.732813, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.07188, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.50469, 1.90313, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.54063, 2.18438, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.24792, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.702085, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.292189, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.568751, 1.90313, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.533783, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.482321, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.41826, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.46972, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.24792, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.702085, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.802634, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.889064, 1.90313, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.685939, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.63606, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.702085, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.604688, 2.18438, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.292189, 2.18438, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.25229, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.24792, 2.40522, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.925, 2.18438, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.956372, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.00625, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.702085, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.15049, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.09831, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.65781, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.31748, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.156251, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.156251, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.421875, 0.732813, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.156251, 0.732813, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.740626, 0.732813, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.65781, 0.732813, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.776564, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.79375, 1.90313, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.79375, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 0.292189, 1.90313, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.854096, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.18594, 1.90313, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.79375, 2.18438, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.22031, 2.18438, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_3_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_3_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 66 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_3_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_3_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_3_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 7, // 4 14
	14, 15, 16, // 5 17
	9, 17, 18, // 6 20
	19, 20, 5, // 7 23
	21, 22, 14, // 8 26
	5, 4, 22, // 9 29
	23, 24, 25, // 10 32
	26, 27, 28, // 11 35
	29, 30, 15, // 12 38
	31, 32, 33, // 13 41
	34, 15, 35, // 14 44
	26, 34, 36, // 15 47
	37, 38, 39, // 16 50
	40, 41, 27, // 17 53
	0, 42, 43, // 18 56
	44, 26, 25, // 19 59
	45, 46, 47, // 20 62
	48, 49, 4, // 21 65
	2, 42, 0, // 22 68
	3, 31, 4, // 23 71
	20, 50, 3, // 24 74
	3, 5, 20, // 25 77
	8, 51, 6, // 26 80
	11, 17, 9, // 27 83
	7, 6, 12, // 28 86
	15, 30, 16, // 29 89
	16, 52, 53, // 30 92
	16, 54, 14, // 31 95
	53, 55, 54, // 32 98
	54, 56, 14, // 33 101
	18, 54, 9, // 34 104
	54, 16, 53, // 35 107
	19, 57, 20, // 36 110
	5, 6, 51, // 37 113
	51, 19, 5, // 38 116
	21, 12, 6, // 39 119
	56, 54, 18, // 40 122
	56, 21, 14, // 41 125
	6, 5, 21, // 42 128
	58, 35, 15, // 43 131
	4, 49, 22, // 44 134
	22, 58, 14, // 45 137
	22, 21, 5, // 46 140
	15, 14, 58, // 47 143
	23, 59, 60, // 48 146
	25, 33, 32, // 49 149
	32, 23, 25, // 50 152
	27, 61, 28, // 51 155
	28, 29, 34, // 52 158
	34, 26, 28, // 53 161
	15, 34, 29, // 54 164
	33, 4, 31, // 55 167
	35, 62, 34, // 56 170
	63, 48, 33, // 57 173
	34, 62, 36, // 58 176
	63, 25, 26, // 59 179
	36, 63, 26, // 60 182
	33, 25, 63, // 61 185
	39, 47, 37, // 62 188
	39, 38, 40, // 63 191
	26, 39, 40, // 64 194
	27, 26, 40, // 65 197
	60, 64, 24, // 66 200
	24, 65, 25, // 67 203
	43, 24, 0, // 68 206
	24, 23, 60, // 69 209
	44, 45, 39, // 70 212
	65, 24, 43, // 71 215
	25, 65, 44, // 72 218
	39, 26, 44, // 73 221
	47, 39, 45, // 74 224
	4, 33, 48, // 75 227
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_3_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_3_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_3_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_3_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_3_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_3_1__ )
DX3DMODEL_START( model_Trim_Char_x_3_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_3_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_3_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 228 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_3_1__, 674496469 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_3_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_2_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_4_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_4_1___initialShadingGroup_0 )
DX3DVERT( 0.846876, 2.78125, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.846876, 3.17813, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.994689, 3.17813, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.846876, 1.33438, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.994689, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.994689, 1.2041, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.3125, 0.253126, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.3125, 0.546095, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.408768, 0.546095, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 0.846876, 0.062501, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 0.846876, 0.354688, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 0.994689, 0.107423, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.14219, 0.0734386, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.14219, -0.331249, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 0.994689, -0.331249, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 0.994689, 0.436427, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 0.994689, 0.546095, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.14219, 0.436427, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.28062, 0.107469, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 0.994689, 0.326759, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.57732, 0.326638, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.3459, 0.133403, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.34594, 0.326759, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.67056, 0.545949, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.14219, 0.378126, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.17031, 0.326759, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.17031, 0.389794, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.32316, 0.546044, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 1.34594, 0.546095, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 1.34594, 0.436427, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.3125, 0.623438, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.36881, 0.8, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.14219, 1.2125, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.14219, 1.2041, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.33798, 0.984767, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.15576, 1.2041, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.34594, 1.2041, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.60673, 1.20419, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.6822, 0.984875, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.34594, 0.984767, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.40252, 1.4239, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 0.994689, 1.86211, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 0.846876, 1.86211, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 0.846876, 2.30078, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 0.408417, 1.64277, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 0.315367, 1.86212, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 0.643439, 1.86211, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.14219, 1.55938, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 1.34594, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 0.643438, 1.43254, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 0.643439, 1.64277, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 0.846876, 1.67344, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 0.994689, 1.64277, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 1.14219, 1.86211, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 0.994689, 2.30078, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 0.405022, 2.52017, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 0.643445, 2.72442, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 0.643439, 2.52012, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 1.6375, 2.63281, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.6375, 2.30078, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 1.60999, 2.30078, 0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 0.314913, 2.30079, 0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 0.725875, 2.41041, 0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( 0.643439, 2.41045, 0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( 0.654351, 2.30087, 0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( 0.846876, 2.41045, 0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( 0.846876, 2.47969, 0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( 0.819064, 2.52012, 0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( 0.994689, 2.52012, 0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( 0.679325, 2.73944, 0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( 0.994689, 2.73945, 0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT( 1.14219, 2.78125, 0 ) DX3DVNORM( 0, 0, -1 )  //71
DX3DVERT( 1.14219, 2.48438, 0 ) DX3DVNORM( 0, 0, -1 )  //72
DX3DVERT( 0.846876, 0.546095, 0 ) DX3DVNORM( 0, 0, -1 )  //73
DX3DVERT( 0.846876, 0.984767, 0 ) DX3DVNORM( 0, 0, -1 )  //74
DX3DVERT( 1.14219, 0.546095, 0 ) DX3DVNORM( 0, 0, -1 )  //75
DX3DVERT( 0.994689, 0.984767, 0 ) DX3DVNORM( 0, 0, -1 )  //76
DX3DVERT( 1.14219, 0.984767, 0 ) DX3DVNORM( 0, 0, -1 )  //77
DX3DVERT( 0.292034, 2.08594, 0 ) DX3DVNORM( 0, 0, -1 )  //78
DX3DVERT( 0.620234, 2.08594, 0 ) DX3DVNORM( 0, 0, -1 )  //79
DX3DVERT( 1.6375, 2.28125, 0 ) DX3DVNORM( 0, 0, -1 )  //80
DX3DVERT( 0.659044, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //81
DX3DVERT( 0.61971, 0.107423, 0 ) DX3DVNORM( 0, 0, -1 )  //82
DX3DVERT( 0.846876, -0.331249, 0 ) DX3DVNORM( 0, 0, -1 )  //83
DX3DVERT( 1.24256, 0.436484, 0 ) DX3DVNORM( 0, 0, -1 )  //84
DX3DVERT( 1.69726, 0.792102, 0 ) DX3DVNORM( 0, 0, -1 )  //85
DX3DVERT( 0.665941, 1.86211, 0 ) DX3DVNORM( 0, 0, -1 )  //86
DX3DVERT( 1.14219, 2.30078, 0 ) DX3DVNORM( 0, 0, -1 )  //87
DX3DVERT( 1.36272, 2.73945, 0 ) DX3DVNORM( 0, 0, -1 )  //88
DX3DVERT( 0.994689, 2.41045, 0 ) DX3DVNORM( 0, 0, -1 )  //89
DX3DVERT( 0.643439, 2.30078, 0 ) DX3DVNORM( 0, 0, -1 )  //90
DX3DVERT( 0.819067, 2.46995, 0 ) DX3DVNORM( 0, 0, -1 )  //91
DX3DVERT( 1.14219, 3.17813, 0 ) DX3DVNORM( 0, 0, -1 )  //92
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_4_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_4_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 93 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_4_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_4_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_4_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 16, 17, // 5 17
	18, 11, 19, // 6 20
	20, 21, 22, // 7 23
	23, 20, 22, // 8 26
	15, 17, 24, // 9 29
	22, 25, 26, // 10 32
	27, 28, 29, // 11 35
	7, 30, 8, // 12 38
	23, 28, 31, // 13 41
	32, 33, 5, // 14 44
	34, 35, 36, // 15 47
	37, 38, 39, // 16 50
	40, 37, 36, // 17 53
	41, 42, 43, // 18 56
	44, 45, 46, // 19 59
	47, 40, 48, // 20 62
	49, 44, 50, // 21 65
	49, 51, 52, // 22 68
	51, 49, 50, // 23 71
	53, 41, 54, // 24 74
	55, 56, 57, // 25 77
	58, 59, 60, // 26 80
	61, 55, 57, // 27 83
	62, 63, 57, // 28 86
	63, 62, 64, // 29 89
	54, 43, 65, // 30 92
	66, 67, 68, // 31 95
	69, 70, 68, // 32 98
	71, 72, 70, // 33 101
	73, 74, 16, // 34 104
	75, 16, 76, // 35 107
	77, 76, 5, // 36 110
	78, 61, 79, // 37 113
	60, 59, 80, // 38 116
	70, 69, 0, // 39 119
	2, 70, 0, // 40 122
	3, 81, 4, // 41 125
	5, 76, 74, // 42 128
	74, 3, 5, // 43 131
	10, 73, 16, // 44 134
	10, 19, 11, // 45 137
	8, 10, 82, // 46 140
	8, 82, 6, // 47 143
	10, 9, 82, // 48 146
	15, 19, 10, // 49 149
	10, 16, 15, // 50 152
	14, 83, 9, // 51 155
	9, 11, 14, // 52 158
	11, 18, 12, // 53 161
	14, 11, 12, // 54 164
	16, 75, 17, // 55 167
	22, 21, 18, // 56 170
	25, 22, 18, // 57 173
	18, 19, 25, // 58 176
	29, 28, 23, // 59 179
	23, 22, 29, // 60 182
	24, 26, 25, // 61 185
	24, 19, 15, // 62 188
	25, 19, 24, // 63 191
	84, 29, 22, // 64 194
	26, 84, 22, // 65 197
	29, 84, 27, // 66 200
	31, 34, 39, // 67 203
	28, 27, 31, // 68 206
	31, 38, 85, // 69 209
	85, 23, 31, // 70 212
	39, 38, 31, // 71 215
	48, 36, 35, // 72 218
	5, 4, 32, // 73 221
	32, 4, 48, // 74 224
	48, 35, 32, // 75 227
	36, 39, 34, // 76 230
	39, 36, 37, // 77 233
	36, 48, 40, // 78 236
	43, 54, 41, // 79 239
	46, 50, 44, // 80 242
	52, 41, 53, // 81 245
	4, 52, 47, // 82 248
	47, 48, 4, // 83 251
	53, 47, 52, // 84 254
	52, 4, 81, // 85 257
	52, 81, 49, // 86 260
	51, 42, 41, // 87 263
	50, 46, 86, // 88 266
	86, 51, 50, // 89 269
	41, 52, 51, // 90 272
	54, 87, 53, // 91 275
	72, 87, 54, // 92 278
	72, 68, 70, // 93 281
	60, 72, 88, // 94 284
	60, 88, 58, // 95 287
	72, 71, 88, // 96 290
	89, 68, 72, // 97 293
	72, 54, 89, // 98 296
	63, 90, 61, // 99 299
	61, 57, 63, // 100 302
	57, 67, 91, // 101 305
	91, 62, 57, // 102 308
	64, 90, 63, // 103 311
	65, 89, 54, // 104 314
	66, 91, 67, // 105 317
	89, 65, 66, // 106 320
	66, 68, 89, // 107 323
	57, 56, 69, // 108 326
	67, 57, 69, // 109 329
	69, 68, 67, // 110 332
	2, 92, 71, // 111 335
	71, 70, 2, // 112 338
	74, 76, 16, // 113 341
	76, 77, 75, // 114 344
	5, 33, 77, // 115 347
	90, 64, 79, // 116 350
	79, 86, 46, // 117 353
	79, 46, 45, // 118 356
	45, 78, 79, // 119 359
	79, 61, 90, // 120 362
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_4_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_4_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_4_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_4_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_4_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_4_1__ )
DX3DMODEL_START( model_Trim_Char_x_4_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_4_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_4_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 363 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_4_1__, 676581605 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_4_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_3_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_5_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_5_1___initialShadingGroup_0 )
DX3DVERT( 1.73093, 1.00558, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.61844, 1.12413, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.61836, 1.00558, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.837944, 0.796653, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.975, 0.796653, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.975, 1.00558, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.836899, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.974854, 0.0966503, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.975, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.818731, 0.585158, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.975, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.81467, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.61836, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.61836, 0.274331, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.20481, 0.274308, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.18944, 0.29211, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.18945, 0.274331, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.32578, -0.0390974, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.40392, -0.0345225, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.40391, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.18947, -0.0239799, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.18945, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.14751, 0.378793, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.40392, 0.243368, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.32578, 0.226563, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.61834, 0.046325, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.73426, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.61836, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.51113, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.51113, 0.274331, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.50396, 0.378793, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.44665, 0.274309, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.83283, 0.585158, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.81363, 0.796652, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.61836, 0.796653, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.12344, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.1493, 0.796654, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.18944, 1.19433, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.18945, 1.00558, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.29668, 1.00558, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.32578, 0.943751, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.40392, 0.926947, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.40391, 1.00558, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.18944, 0.877919, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.21031, 0.901142, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.18945, 0.901117, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.29668, 0.941741, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.975004, 1.07286, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.61836, 0.901117, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.51113, 0.901117, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.51113, 0.796653, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.50237, 0.796654, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.51113, 1.00558, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.4039, 1.20472, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.953126, 1.04844, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.29668, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.29668, 0.228563, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.51113, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.52813, 0.585157, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.32578, 1.20941, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.44136, 0.901143, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.1131, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.975146, 2.75023, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 0.975, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.11207, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 0.975, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.975, 1.8413, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 0.800803, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 0.447536, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 0.438868, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.438868, 1.94576, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.546097, 1.64215, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 0.546094, 1.8413, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 0.438868, 1.8413, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 0.219075, 1.8413, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 0.331557, 1.72275, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 0.331641, 1.8413, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 0.331641, 1.94576, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 0.546081, 1.91989, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 0.974998, 1.77335, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 0.760548, 1.8413, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( 0.76056, 1.65247, 0 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT( 0.65332, 1.8413, 0 ) DX3DVNORM( 0, 0, 1 )  //82
DX3DVERT( 0.760566, 1.96881, 0 ) DX3DVNORM( 0, 0, 1 )  //83
DX3DVERT( 0.739796, 1.94574, 0 ) DX3DVNORM( 0, 0, 1 )  //84
DX3DVERT( 0.760548, 1.94576, 0 ) DX3DVNORM( 0, 0, 1 )  //85
DX3DVERT( 0.653321, 1.90513, 0 ) DX3DVNORM( 0, 0, 1 )  //86
DX3DVERT( 0.624219, 1.90313, 0 ) DX3DVNORM( 0, 0, 1 )  //87
DX3DVERT( 0.760532, 2.87086, 0 ) DX3DVNORM( 0, 0, 1 )  //88
DX3DVERT( 0.760548, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //89
DX3DVERT( 0.826563, 2.26172, 0 ) DX3DVNORM( 0, 0, 1 )  //90
DX3DVERT( 0.117168, 2.26172, 0 ) DX3DVNORM( 0, 0, 1 )  //91
DX3DVERT( 0.136373, 2.05023, 0 ) DX3DVNORM( 0, 0, 1 )  //92
DX3DVERT( 0.331641, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //93
DX3DVERT( 0.438868, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //94
DX3DVERT( 0.546094, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //95
DX3DVERT( 0.546083, 2.88137, 0 ) DX3DVNORM( 0, 0, 1 )  //96
DX3DVERT( 0.546081, 2.60347, 0 ) DX3DVNORM( 0, 0, 1 )  //97
DX3DVERT( 0.135345, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //98
DX3DVERT( 0.331641, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //99
DX3DVERT( 0.331641, 2.57255, 0 ) DX3DVNORM( 0, 0, 1 )  //100
DX3DVERT( 0.446138, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //101
DX3DVERT( 0.503456, 2.57257, 0 ) DX3DVNORM( 0, 0, 1 )  //102
DX3DVERT( 0.438868, 2.57255, 0 ) DX3DVNORM( 0, 0, 1 )  //103
DX3DVERT( 0.438868, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //104
DX3DVERT( 0.251563, 2.725, 0 ) DX3DVNORM( 0, 0, 1 )  //105
DX3DVERT( 0.216106, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //106
DX3DVERT( 0.331641, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //107
DX3DVERT( 0.802397, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //108
DX3DVERT( 0.975, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //109
DX3DVERT( 0.745085, 2.57257, 0 ) DX3DVNORM( 0, 0, 1 )  //110
DX3DVERT( 0.760548, 2.57255, 0 ) DX3DVNORM( 0, 0, 1 )  //111
DX3DVERT( 0.760566, 2.55462, 0 ) DX3DVNORM( 0, 0, 1 )  //112
DX3DVERT( 0.624219, 2.62031, 0 ) DX3DVNORM( 0, 0, 1 )  //113
DX3DVERT( 0.62422, 2.88597, 0 ) DX3DVNORM( 0, 0, 1 )  //114
DX3DVERT( 1.13127, 2.26172, 0 ) DX3DVNORM( 0, 0, 1 )  //115
DX3DVERT( 0.508542, 1.94573, 0 ) DX3DVNORM( 0, 0, 1 )  //116
DX3DVERT( 0.62422, 1.63746, 0 ) DX3DVNORM( 0, 0, 1 )  //117
DX3DVERT( 0.421875, 2.26094, 0 ) DX3DVNORM( 0, 0, 1 )  //118
DX3DVERT( 0.33166, 2.80013, 0 ) DX3DVNORM( 0, 0, 1 )  //119
DX3DVERT( 0.65332, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //120
DX3DVERT( 0.653321, 2.61831, 0 ) DX3DVNORM( 0, 0, 1 )  //121
DX3DVERT( 1.71562, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //122
DX3DVERT( 1.71562, 2.14531, 0 ) DX3DVNORM( 0, 0, 1 )  //123
DX3DVERT( 1.59112, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //124
DX3DVERT( 0.546094, 0.939626, 0 ) DX3DVNORM( 0, 0, 1 )  //125
DX3DVERT( 0.906025, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //126
DX3DVERT( 0.546094, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //127
DX3DVERT( 0.234376, 0.701563, 0 ) DX3DVNORM( 0, 0, 1 )  //128
DX3DVERT( 0.358886, 0.796653, 0 ) DX3DVNORM( 0, 0, 1 )  //129
DX3DVERT( 0.234376, 0.796653, 0 ) DX3DVNORM( 0, 0, 1 )  //130
DX3DVERT( 0.49684, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //131
DX3DVERT( 1.71562, 1.83281, 0 ) DX3DVNORM( 0, 0, 1 )  //132
DX3DVERT( 1.40391, 1.90725, 0 ) DX3DVNORM( 0, 0, 1 )  //133
DX3DVERT( 0.975, 1.26719, 0 ) DX3DVNORM( 0, 0, 1 )  //134
DX3DVERT( 0.975, 1.57969, 0 ) DX3DVNORM( 0, 0, 1 )  //135
DX3DVERT( 0.546094, 1.25213, 0 ) DX3DVNORM( 0, 0, 1 )  //136
DX3DVERT( 1.40391, 1.59475, 0 ) DX3DVNORM( 0, 0, 1 )  //137
DX3DVERT( 1.45316, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //138
DX3DVERT( 1.40391, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //139
DX3DVERT( 1.04398, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //140
DX3DVERT( 0.234376, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //141
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_5_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_5_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 142 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_5_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_5_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_5_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 6, 10, // 3 11
	11, 12, 13, // 4 14
	14, 15, 16, // 5 17
	17, 18, 19, // 6 20
	7, 20, 21, // 7 23
	22, 10, 8, // 8 26
	19, 23, 24, // 9 29
	14, 16, 21, // 10 32
	25, 26, 27, // 11 35
	25, 27, 28, // 12 38
	29, 13, 12, // 13 41
	28, 27, 13, // 14 44
	23, 19, 28, // 15 47
	30, 31, 29, // 16 50
	32, 33, 34, // 17 53
	35, 36, 4, // 18 56
	37, 38, 39, // 19 59
	40, 41, 42, // 20 62
	5, 4, 36, // 21 65
	43, 44, 45, // 22 68
	46, 39, 38, // 23 71
	47, 5, 38, // 24 74
	0, 2, 48, // 25 77
	49, 48, 2, // 26 80
	50, 34, 48, // 27 83
	51, 50, 49, // 28 86
	52, 42, 41, // 29 89
	53, 42, 52, // 30 92
	5, 47, 54, // 31 95
	54, 3, 5, // 32 98
	8, 10, 6, // 33 101
	4, 3, 9, // 34 104
	10, 4, 9, // 35 107
	13, 27, 26, // 36 110
	26, 11, 13, // 37 113
	55, 21, 20, // 38 116
	19, 20, 17, // 39 119
	20, 19, 55, // 40 122
	21, 8, 7, // 41 125
	16, 15, 22, // 42 128
	8, 21, 16, // 43 131
	16, 22, 8, // 44 134
	24, 56, 55, // 45 137
	55, 19, 24, // 46 140
	21, 55, 56, // 47 143
	21, 56, 14, // 48 146
	28, 19, 18, // 49 149
	28, 18, 25, // 50 152
	12, 57, 29, // 51 155
	13, 29, 28, // 52 158
	28, 29, 31, // 53 161
	31, 23, 28, // 54 164
	29, 57, 30, // 55 167
	58, 30, 57, // 56 170
	50, 51, 58, // 57 173
	58, 11, 32, // 58 176
	34, 58, 32, // 59 179
	58, 34, 50, // 60 182
	12, 11, 58, // 61 185
	58, 57, 12, // 62 188
	10, 22, 35, // 63 191
	35, 4, 10, // 64 194
	42, 53, 59, // 65 197
	39, 42, 37, // 66 200
	59, 37, 42, // 67 203
	39, 46, 40, // 68 206
	40, 42, 39, // 69 209
	36, 43, 45, // 70 212
	45, 38, 5, // 71 215
	5, 36, 45, // 72 218
	38, 45, 44, // 73 221
	44, 46, 38, // 74 224
	38, 37, 47, // 75 227
	48, 34, 33, // 76 230
	48, 33, 0, // 77 233
	2, 52, 49, // 78 236
	48, 49, 50, // 79 239
	49, 60, 51, // 80 242
	60, 49, 52, // 81 245
	52, 41, 60, // 82 248
	52, 2, 1, // 83 251
	1, 53, 52, // 84 254
	61, 62, 63, // 85 257
	64, 65, 66, // 86 260
	66, 65, 67, // 87 263
	68, 69, 70, // 88 266
	71, 72, 73, // 89 269
	74, 75, 76, // 90 272
	74, 76, 77, // 91 275
	73, 72, 78, // 92 278
	76, 73, 70, // 93 281
	77, 70, 69, // 94 284
	79, 66, 80, // 95 287
	81, 80, 82, // 96 290
	83, 84, 85, // 97 293
	86, 82, 80, // 98 296
	87, 78, 72, // 99 299
	62, 88, 89, // 100 302
	90, 67, 65, // 101 305
	91, 92, 93, // 102 308
	94, 95, 96, // 103 311
	97, 95, 94, // 104 314
	98, 99, 100, // 105 317
	101, 102, 103, // 106 320
	99, 104, 103, // 107 323
	100, 103, 94, // 108 326
	105, 106, 107, // 109 329
	108, 109, 63, // 110 332
	110, 111, 89, // 111 335
	110, 112, 111, // 112 338
	95, 97, 113, // 113 341
	114, 96, 95, // 114 344
	115, 61, 109, // 115 347
	63, 109, 61, // 116 350
	66, 79, 64, // 117 353
	67, 83, 85, // 118 356
	85, 80, 66, // 119 359
	66, 67, 85, // 120 362
	70, 116, 68, // 121 365
	73, 76, 75, // 122 368
	75, 71, 73, // 123 371
	77, 93, 92, // 124 374
	77, 92, 74, // 125 377
	116, 70, 73, // 126 380
	73, 78, 116, // 127 383
	70, 77, 76, // 128 386
	69, 93, 77, // 129 389
	80, 81, 79, // 130 392
	72, 71, 117, // 131 395
	82, 72, 81, // 132 398
	117, 81, 72, // 133 401
	80, 85, 84, // 134 404
	84, 86, 80, // 135 407
	82, 86, 87, // 136 410
	87, 72, 82, // 137 413
	89, 63, 62, // 138 416
	109, 108, 90, // 139 419
	90, 65, 109, // 140 422
	118, 101, 104, // 141 425
	69, 68, 118, // 142 428
	118, 98, 91, // 143 431
	93, 118, 91, // 144 434
	118, 93, 69, // 145 437
	99, 98, 118, // 146 440
	118, 104, 99, // 147 443
	119, 107, 94, // 148 446
	94, 96, 119, // 149 449
	94, 103, 102, // 150 452
	102, 97, 94, // 151 455
	100, 107, 106, // 152 458
	106, 98, 100, // 153 461
	103, 104, 101, // 154 464
	103, 100, 99, // 155 467
	94, 107, 100, // 156 470
	107, 119, 105, // 157 473
	111, 112, 108, // 158 476
	63, 89, 111, // 159 479
	111, 108, 63, // 160 482
	89, 120, 121, // 161 485
	89, 121, 110, // 162 488
	113, 121, 120, // 163 491
	120, 95, 113, // 164 494
	120, 89, 88, // 165 497
	95, 88, 114, // 166 500
	88, 95, 120, // 167 503
	65, 64, 115, // 168 506
	109, 65, 115, // 169 509
	122, 123, 124, // 170 512
	125, 126, 127, // 171 515
	128, 129, 130, // 172 518
	125, 127, 131, // 173 521
	132, 124, 133, // 174 524
	126, 134, 135, // 175 527
	136, 131, 127, // 176 530
	137, 138, 139, // 177 533
	137, 139, 140, // 178 536
	133, 140, 139, // 179 539
	141, 130, 129, // 180 542
	141, 129, 125, // 181 545
	131, 141, 125, // 182 548
	132, 122, 124, // 183 551
	133, 139, 138, // 184 554
	138, 132, 133, // 185 557
	136, 127, 126, // 186 560
	126, 135, 136, // 187 563
	140, 135, 134, // 188 566
	140, 134, 137, // 189 569
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_5_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_5_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_5_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_5_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_5_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_5_1__ )
DX3DMODEL_START( model_Trim_Char_x_5_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_5_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_5_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 570 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_5_1__, 678666741 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_5_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_4_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_6_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_6_1___initialShadingGroup_0 )
DX3DVERT( 0.373828, 2.67724, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.5555, 2.81775, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.55547, 2.67702, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.316437, 1.21453, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.55547, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.555444, 1.02082, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 1.40993, 0.796655, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 1.05893, 0.796655, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 1.01406, 0.864091, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.4625, 0.190626, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.01406, -0.0186392, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.01406, 0.275918, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.68396, 0.378797, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.93125, 5.67255e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.59063, 5.74193e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.45156, 0.732813, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 1.45156, 0.796655, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.47266, 0.796655, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.7625, 0.796655, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.7625, 0.592189, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.47266, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 0.250826, 0.169453, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.134486, 0.378797, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 0.326173, 0.378797, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 0.55547, 0.169868, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.555216, 0.339865, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.839064, 0.252934, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.325577, 0.0980208, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.326173, 0.169868, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.516122, 0.378654, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.0970097, 0.64375, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 0.42964, 0.654689, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 0.780903, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.01406, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 0.503645, 1.63242, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 0.284506, 2.05031, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 0.55547, 2.05023, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.14503, 2.05023, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.47266, 2.05023, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.47269, 2.03073, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.19259, 1.63236, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1.01406, 1.47033, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 1.01406, 1.63237, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 1.7625, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 1.47266, 1.57969, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 1.47961, 2.05021, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 0.555472, 1.47412, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 0.718032, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 0.55547, 1.63237, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 0.622981, 2.05031, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 1.2434, 2.79493, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 1.24336, 2.67702, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 1.01406, 2.67702, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 1.20942, 2.29828, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 1.49882, 2.46809, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 1.52035, 2.30047, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 1.47266, 2.46809, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 1.47269, 2.54154, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 1.01399, 2.57553, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.24336, 2.46809, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 1.3855, 2.67702, 0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 0.326173, 2.46809, 0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 0.565519, 2.29747, 0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( 0.784745, 2.88155, 0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( 0.784767, 2.67702, 0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( 0.612824, 2.46803, 0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( 0.55547, 2.46809, 0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( 0.891525, 2.59472, 0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( 1.01406, 2.87562, 0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( 0.26329, 2.46806, 0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( 0.326161, 2.61235, 0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT( 1.45156, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //71
DX3DVERT( 1.01406, 1.40374, 0 ) DX3DVNORM( 0, 0, -1 )  //72
DX3DVERT( 1.13746, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //73
DX3DVERT( 0.555509, 1.55365, 0 ) DX3DVNORM( 0, 0, -1 )  //74
DX3DVERT( 1.45156, 1.57969, 0 ) DX3DVNORM( 0, 0, -1 )  //75
DX3DVERT( 0.449724, 0.796477, 0 ) DX3DVNORM( 0, 0, -1 )  //76
DX3DVERT( 0.112937, 0.796664, 0 ) DX3DVNORM( 0, 0, -1 )  //77
DX3DVERT( 1.47266, 0.378797, 0 ) DX3DVNORM( 0, 0, -1 )  //78
DX3DVERT( 1.47266, 0.175516, 0 ) DX3DVNORM( 0, 0, -1 )  //79
DX3DVERT( 1.21591, 0.378796, 0 ) DX3DVNORM( 0, 0, -1 )  //80
DX3DVERT( 1.29063, 0.448438, 0 ) DX3DVNORM( 0, 0, -1 )  //81
DX3DVERT( 1.66094, 0.414063, 0 ) DX3DVNORM( 0, 0, -1 )  //82
DX3DVERT( 0.779689, -0.0390143, 0 ) DX3DVNORM( 0, 0, -1 )  //83
DX3DVERT( 0.555593, -0.0123464, 0 ) DX3DVNORM( 0, 0, -1 )  //84
DX3DVERT( 1.01412, 1.87988, 0 ) DX3DVNORM( 0, 0, -1 )  //85
DX3DVERT( 1.7625, 1.57969, 0 ) DX3DVNORM( 0, 0, -1 )  //86
DX3DVERT( 0.823438, 1.7, 0 ) DX3DVNORM( 0, 0, -1 )  //87
DX3DVERT( 0.756251, 1.25156, 0 ) DX3DVNORM( 0, 0, -1 )  //88
DX3DVERT( 0.589064, 1.50469, 0 ) DX3DVNORM( 0, 0, -1 )  //89
DX3DVERT( 0.985939, 1.44688, 0 ) DX3DVNORM( 0, 0, -1 )  //90
DX3DVERT( 1.16059, 2.46812, 0 ) DX3DVNORM( 0, 0, -1 )  //91
DX3DVERT( 1.12344, 2.51094, 0 ) DX3DVNORM( 0, 0, -1 )  //92
DX3DVERT( 0.241924, 2.302, 0 ) DX3DVNORM( 0, 0, -1 )  //93
DX3DVERT( 0.784767, 2.58208, 0 ) DX3DVNORM( 0, 0, -1 )  //94
DX3DVERT( 0.877984, 2.88618, 0 ) DX3DVNORM( 0, 0, -1 )  //95
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_6_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_6_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 96 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_6_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_6_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_6_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 16, 17, // 5 17
	17, 18, 19, // 6 20
	18, 17, 20, // 7 23
	21, 22, 23, // 8 26
	24, 25, 26, // 9 29
	27, 21, 28, // 10 32
	27, 28, 24, // 11 35
	23, 29, 25, // 12 38
	22, 30, 31, // 13 41
	32, 33, 8, // 14 44
	34, 35, 36, // 15 47
	37, 38, 39, // 16 50
	40, 41, 42, // 17 53
	43, 20, 44, // 18 56
	38, 45, 39, // 19 59
	3, 46, 4, // 20 62
	47, 4, 46, // 21 65
	48, 36, 49, // 22 68
	50, 51, 52, // 23 71
	38, 37, 53, // 24 74
	54, 55, 56, // 25 77
	57, 54, 56, // 26 80
	58, 52, 51, // 27 83
	57, 56, 59, // 28 86
	50, 60, 51, // 29 89
	61, 62, 36, // 30 92
	62, 49, 36, // 31 95
	1, 63, 64, // 32 98
	65, 66, 2, // 33 101
	52, 58, 67, // 34 104
	68, 52, 64, // 35 107
	69, 70, 61, // 36 110
	0, 2, 66, // 37 113
	16, 71, 17, // 38 116
	4, 47, 5, // 39 119
	72, 73, 33, // 40 122
	48, 74, 34, // 41 125
	71, 75, 20, // 42 128
	76, 77, 3, // 43 131
	5, 76, 3, // 44 134
	8, 33, 73, // 45 137
	8, 73, 6, // 46 140
	78, 79, 9, // 47 143
	80, 78, 9, // 48 146
	9, 11, 80, // 49 149
	79, 78, 12, // 50 152
	12, 14, 79, // 51 155
	81, 7, 6, // 52 158
	15, 81, 6, // 53 161
	15, 82, 78, // 54 164
	78, 80, 81, // 55 167
	81, 15, 78, // 56 170
	82, 12, 78, // 57 173
	82, 15, 17, // 58 176
	19, 82, 17, // 59 179
	20, 43, 18, // 60 182
	23, 28, 21, // 61 185
	26, 11, 10, // 62 188
	26, 83, 84, // 63 191
	26, 84, 24, // 64 194
	10, 83, 26, // 65 197
	24, 84, 27, // 66 200
	24, 28, 23, // 67 203
	25, 24, 23, // 68 206
	77, 76, 31, // 69 209
	31, 29, 23, // 70 212
	23, 22, 31, // 71 215
	31, 30, 77, // 72 218
	36, 48, 34, // 73 221
	40, 42, 85, // 74 224
	40, 85, 37, // 75 227
	39, 40, 37, // 76 230
	44, 86, 43, // 77 233
	41, 87, 42, // 78 236
	33, 32, 88, // 79 239
	46, 88, 47, // 80 242
	88, 46, 89, // 81 245
	88, 89, 33, // 82 248
	72, 33, 89, // 83 251
	90, 72, 48, // 84 254
	41, 90, 48, // 85 257
	74, 48, 89, // 86 260
	72, 89, 48, // 87 263
	87, 85, 42, // 88 266
	87, 41, 48, // 89 269
	49, 87, 48, // 90 272
	52, 68, 50, // 91 275
	53, 91, 59, // 92 278
	53, 59, 56, // 93 281
	56, 38, 53, // 94 284
	45, 38, 56, // 95 287
	56, 55, 45, // 96 290
	59, 91, 92, // 97 293
	51, 59, 92, // 98 296
	51, 92, 58, // 99 299
	59, 51, 60, // 100 302
	59, 60, 57, // 101 305
	93, 69, 61, // 102 308
	36, 35, 93, // 103 311
	93, 61, 36, // 104 314
	66, 65, 62, // 105 317
	62, 61, 66, // 106 320
	64, 2, 1, // 107 323
	2, 64, 94, // 108 326
	2, 94, 65, // 109 329
	67, 94, 64, // 110 332
	64, 52, 67, // 111 335
	64, 63, 95, // 112 338
	95, 68, 64, // 113 341
	66, 61, 70, // 114 344
	70, 0, 66, // 115 347
	71, 20, 17, // 116 350
	75, 44, 20, // 117 353
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_6_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_6_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_6_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_6_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_6_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_6_1__ )
DX3DMODEL_START( model_Trim_Char_x_6_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_6_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_6_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 354 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_6_1__, 680751877 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_6_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_5_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_7_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_7_1___initialShadingGroup_0 )
DX3DVERT( 1.17695, 2.90566, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.18906, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.975001, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.12852, 2.35957, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.14063, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.975001, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.1043, 2.08652, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.11641, 2.22305, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.975001, 2.22305, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.09219, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.975001, 2.08652, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.857814, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.975001, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.833594, 2.22305, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.845704, 2.08652, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.975001, 2.35957, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.821486, 2.35957, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.809376, 2.49609, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.15274, 2.63262, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.16485, 2.76914, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.975001, 2.76914, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.975001, 2.63262, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.797267, 2.63262, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.785157, 2.76914, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.975001, 2.90566, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.773047, 2.90566, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.760939, 3.04219, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_7_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_7_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 27 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_7_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_7_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_7_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 6, 10, // 3 11
	11, 12, 10, // 4 14
	8, 13, 14, // 5 17
	7, 3, 15, // 6 20
	15, 16, 13, // 7 23
	5, 17, 16, // 8 26
	18, 19, 20, // 9 29
	4, 18, 21, // 10 32
	21, 22, 17, // 11 35
	20, 23, 22, // 12 38
	19, 0, 24, // 13 41
	24, 25, 23, // 14 44
	2, 26, 25, // 15 47
	2, 24, 0, // 16 50
	5, 15, 3, // 17 53
	8, 10, 6, // 18 56
	10, 12, 9, // 19 59
	10, 14, 11, // 20 62
	14, 10, 8, // 21 65
	15, 8, 7, // 22 68
	13, 8, 15, // 23 71
	16, 15, 5, // 24 74
	20, 21, 18, // 25 77
	21, 5, 4, // 26 80
	17, 5, 21, // 27 83
	22, 21, 20, // 28 86
	24, 20, 19, // 29 89
	23, 20, 24, // 30 92
	25, 24, 2, // 31 95
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_7_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_7_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_7_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_7_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_7_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_7_1__ )
DX3DMODEL_START( model_Trim_Char_x_7_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_7_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_7_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_7_1__, 682837013 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_7_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_6_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_8_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_8_1___initialShadingGroup_0 )
DX3DVERT( 1.16239, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.54063, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.24375, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.776564, 1.22891, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.489558, 1.3398, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.487501, 1.22891, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.16239, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.01406, 0.155891, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.01406, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.01406, -0.302837, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.865116, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.933041, 0.341798, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.639451, 0.341798, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.812678, 0.785352, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.522365, 0.785352, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.812678, 1.67246, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.933041, 2.11602, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.639451, 2.11602, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.778702, 1.3398, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.522365, 1.67246, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.01406, 2.30192, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.01406, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.865116, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.01406, 2.76065, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.24375, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.54063, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_8_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_8_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 26 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_8_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_8_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_8_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	6, 8, 9, // 3 11
	8, 10, 9, // 4 14
	7, 11, 12, // 5 17
	13, 14, 12, // 6 20
	15, 16, 17, // 7 23
	18, 15, 19, // 8 26
	20, 0, 21, // 9 29
	20, 21, 22, // 10 32
	23, 22, 21, // 11 35
	23, 21, 0, // 12 38
	0, 2, 23, // 13 41
	3, 18, 4, // 14 44
	14, 13, 3, // 15 47
	5, 14, 3, // 16 50
	24, 25, 6, // 17 53
	9, 24, 6, // 18 56
	10, 8, 7, // 19 59
	7, 12, 10, // 20 62
	12, 11, 13, // 21 65
	17, 19, 15, // 22 68
	19, 4, 18, // 23 71
	17, 16, 20, // 24 74
	22, 17, 20, // 25 77
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_8_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_8_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_8_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_8_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_8_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_8_1__ )
DX3DMODEL_START( model_Trim_Char_x_8_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_8_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_8_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 78 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_8_1__, 684922149 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_8_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_7_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_9_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_9_1___initialShadingGroup_0 )
DX3DVERT( 0.935938, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.08488, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.935938, 2.76065, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.17344, 1.22891, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.13732, 0.785352, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.42764, 0.785352, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.935938, 0.155891, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.935938, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.08488, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.935938, -0.302837, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.787613, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.409374, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.706249, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.01696, 0.341798, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.31055, 0.341798, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.13732, 1.67246, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.42764, 1.67246, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.31055, 2.11602, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.1713, 1.3398, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.46044, 1.3398, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.935938, 2.30192, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.01696, 2.11602, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.787613, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.4625, 1.22891, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.706249, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.409374, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_9_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_9_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 26 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_9_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_9_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_9_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 8, 7, // 3 11
	10, 11, 12, // 4 14
	6, 10, 7, // 5 17
	4, 13, 14, // 6 20
	15, 16, 17, // 7 23
	18, 19, 16, // 8 26
	20, 21, 17, // 9 29
	22, 20, 0, // 10 32
	22, 0, 2, // 11 35
	19, 18, 3, // 12 38
	23, 19, 3, // 13 41
	3, 5, 23, // 14 44
	14, 13, 6, // 15 47
	8, 14, 6, // 16 50
	9, 7, 10, // 17 53
	10, 12, 9, // 18 56
	14, 5, 4, // 19 59
	17, 21, 15, // 20 62
	16, 15, 18, // 21 65
	1, 0, 20, // 22 68
	20, 17, 1, // 23 71
	24, 25, 22, // 24 74
	2, 24, 22, // 25 77
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_9_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_9_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_9_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_9_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_9_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_9_1__ )
DX3DMODEL_START( model_Trim_Char_x_9_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_9_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_9_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 78 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_9_1__, 687007285 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_9_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_8_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_10_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_10_1___initialShadingGroup_0 )
DX3DVERT( 1.78619, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.72344, 2.47969, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.52995, 2.41325, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.901823, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.834375, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.838156, 2.60594, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.691668, 1.92768, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.691668, 1.64875, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.816919, 1.64875, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.412239, 1.554, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.367189, 1.49375, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.412239, 1.4609, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.691668, 1.47092, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.59219, 1.32969, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.483093, 1.64875, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.780302, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.691668, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.691668, 2.04185, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.156, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.132813, 2.21563, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.412239, 2.12874, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.412239, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.412239, 2.41325, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.21875, 2.47969, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.691668, 2.31731, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.4591, 1.64875, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.25052, 1.92768, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.25052, 1.64875, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.1262, 1.64875, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.25052, 1.47151, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.52995, 1.4609, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.575, 1.49375, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.52995, 1.554, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.35, 1.32969, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.52995, 2.12874, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.80938, 2.21563, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.1, 2.26563, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.901823, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.901823, 1.96781, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.52995, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.25052, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.10564, 2.60594, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.11094, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.25052, 2.31731, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.16189, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.901823, 2.60594, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.841936, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.10035, 2.28688, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.72168, 1.96781, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.901823, 1.76929, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.760939, 2.02031, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.842188, 2.26563, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.971876, 1.86875, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.22051, 1.96781, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.25052, 2.04185, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.18125, 2.02031, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_10_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_10_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 56 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_10_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_10_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_10_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 8, 7, // 4 14
	11, 13, 12, // 5 17
	6, 14, 7, // 6 20
	15, 16, 17, // 7 23
	18, 19, 20, // 8 26
	16, 21, 20, // 9 29
	22, 23, 18, // 10 32
	15, 24, 16, // 11 35
	24, 22, 21, // 12 38
	25, 26, 27, // 13 41
	28, 27, 26, // 14 44
	28, 29, 27, // 15 47
	30, 31, 32, // 16 50
	29, 33, 30, // 17 53
	34, 35, 0, // 18 56
	36, 37, 38, // 19 59
	34, 39, 40, // 20 62
	41, 42, 3, // 21 65
	43, 44, 40, // 22 68
	43, 40, 39, // 23 71
	45, 5, 46, // 24 74
	47, 41, 45, // 25 77
	2, 39, 0, // 26 80
	5, 45, 3, // 27 83
	38, 48, 6, // 28 86
	49, 38, 6, // 29 89
	8, 49, 6, // 30 92
	14, 9, 11, // 31 95
	12, 7, 14, // 32 98
	14, 11, 12, // 33 101
	50, 48, 38, // 34 104
	50, 51, 15, // 35 107
	15, 17, 50, // 36 110
	37, 46, 51, // 37 113
	38, 37, 51, // 38 116
	51, 50, 38, // 39 119
	20, 21, 18, // 40 122
	20, 17, 16, // 41 125
	18, 21, 22, // 42 128
	21, 16, 24, // 43 131
	38, 49, 52, // 44 134
	26, 53, 52, // 45 137
	52, 28, 26, // 46 140
	52, 53, 38, // 47 143
	30, 32, 25, // 48 146
	25, 27, 29, // 49 149
	29, 30, 25, // 50 152
	0, 39, 34, // 51 155
	54, 40, 44, // 52 158
	36, 47, 37, // 53 161
	38, 53, 55, // 54 164
	38, 55, 36, // 55 167
	44, 36, 55, // 56 170
	55, 54, 44, // 57 173
	40, 54, 34, // 58 176
	3, 45, 41, // 59 179
	39, 2, 43, // 60 182
	46, 37, 45, // 61 185
	45, 37, 47, // 62 188
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_10_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_10_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_10_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_10_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_10_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_10_1__ )
DX3DMODEL_START( model_Trim_Char_x_10_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_10_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_10_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 189 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_10_1__, 3902015397 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_10_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_9_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_11_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_11_1___initialShadingGroup_0 )
DX3DVERT( 1.13437, 1.83906, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.13437, 2.16406, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.12313, 1.83906, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.41937, 1.04844, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.71563, 1.04844, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.71563, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.815626, 1.04844, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.12313, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.826876, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.815626, 0.214063, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.826876, 0.214063, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.826876, 0.539063, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.815626, 0.539063, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.826876, 0.864063, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.234375, 1.04844, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.530626, 1.04844, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.530626, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.12313, 0.214063, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.13437, 0.214063, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.13437, 0.539063, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.12313, 0.539063, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.13437, 1.04844, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.12313, 0.864063, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.13437, 0.864063, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.41937, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.815626, 1.83906, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.826876, 1.83906, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.826876, 2.16406, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.815626, 1.32969, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.530626, 1.32969, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.234375, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.815626, 1.51406, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.826876, 1.51406, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.71563, 1.32969, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.13437, 1.32969, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.12313, 1.51406, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.41937, 1.32969, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.12313, 2.16406, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.13437, 1.51406, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.815626, 0.864063, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.815626, 2.16406, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.234375, 1.32969, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_11_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_11_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 42 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_11_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_11_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_11_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 11, 13, // 4 14
	14, 15, 16, // 5 17
	17, 18, 19, // 6 20
	10, 17, 20, // 7 23
	13, 21, 7, // 8 26
	11, 20, 22, // 9 29
	19, 23, 20, // 10 32
	21, 3, 24, // 11 35
	25, 26, 27, // 12 38
	28, 29, 16, // 13 41
	30, 16, 29, // 14 44
	31, 32, 26, // 15 47
	24, 5, 33, // 16 50
	8, 34, 35, // 17 53
	24, 36, 34, // 18 56
	26, 2, 37, // 19 59
	32, 35, 2, // 20 62
	38, 0, 35, // 21 65
	1, 37, 2, // 22 68
	5, 24, 3, // 23 71
	6, 39, 13, // 24 74
	16, 15, 6, // 25 77
	6, 8, 16, // 26 80
	11, 12, 9, // 27 83
	13, 39, 12, // 28 86
	16, 30, 14, // 29 89
	19, 20, 17, // 30 92
	20, 11, 10, // 31 95
	7, 6, 13, // 32 98
	22, 13, 11, // 33 101
	23, 22, 20, // 34 104
	22, 23, 21, // 35 107
	21, 13, 22, // 36 110
	24, 7, 21, // 37 113
	27, 40, 25, // 38 116
	32, 31, 28, // 39 119
	28, 35, 32, // 40 122
	16, 8, 28, // 41 125
	29, 41, 30, // 42 128
	26, 25, 31, // 43 131
	33, 36, 24, // 44 134
	35, 28, 8, // 45 137
	34, 38, 35, // 46 140
	34, 8, 7, // 47 143
	34, 7, 24, // 48 146
	37, 27, 26, // 49 149
	2, 26, 32, // 50 152
	0, 2, 35, // 51 155
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_11_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_11_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_11_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_11_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_11_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_11_1__ )
DX3DMODEL_START( model_Trim_Char_x_11_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_11_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_11_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 156 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_11_1__, 3904100533 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_11_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_10_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_12_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_12_1___initialShadingGroup_0 )
DX3DVERT( 1.22612, 0.428573, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.2875, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.11172, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.980581, -0.194641, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.04197, -0.0388379, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.935938, -0.0388379, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.935938, -0.194641, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.760157, -0.194641, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.857813, -0.506249, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.919197, -0.350445, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.760157, -0.350445, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.760157, -0.506249, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.617859, -0.350445, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.935938, -0.307952, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.65134, -0.194641, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.684822, -0.0388379, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.11172, 0.138212, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.16473, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.11172, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.760157, 0.116966, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.935938, 0.116966, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.935938, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.760157, -0.0388379, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.718304, 0.116966, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.751787, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.10335, 0.116966, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.81875, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.785269, 0.428573, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.935938, 0.428573, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.760157, 0.311724, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.760157, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.11172, 0.428573, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.584375, -0.506249, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.935938, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_12_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_12_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 34 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_12_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_12_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_12_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 5, 7, // 2 8
	8, 9, 10, // 3 11
	11, 10, 12, // 4 14
	13, 6, 7, // 5 17
	14, 12, 10, // 6 20
	15, 14, 7, // 7 23
	13, 3, 6, // 8 26
	16, 17, 18, // 9 29
	19, 20, 21, // 10 32
	22, 5, 20, // 11 35
	23, 15, 22, // 12 38
	24, 23, 19, // 13 41
	4, 25, 20, // 14 44
	16, 18, 21, // 15 47
	26, 27, 28, // 16 50
	29, 30, 21, // 17 53
	29, 24, 30, // 18 56
	17, 0, 31, // 19 59
	21, 18, 31, // 20 62
	28, 31, 2, // 21 65
	2, 31, 0, // 22 68
	5, 6, 3, // 23 71
	5, 22, 7, // 24 74
	10, 11, 8, // 25 77
	12, 32, 11, // 26 80
	7, 10, 9, // 27 83
	9, 13, 7, // 28 86
	10, 7, 14, // 29 89
	7, 22, 15, // 30 92
	21, 30, 19, // 31 95
	20, 19, 22, // 32 98
	22, 19, 23, // 33 101
	19, 30, 24, // 34 104
	20, 5, 4, // 35 107
	21, 20, 25, // 36 110
	25, 16, 21, // 37 113
	28, 33, 26, // 38 116
	21, 28, 27, // 39 119
	21, 27, 29, // 40 122
	31, 18, 17, // 41 125
	31, 28, 21, // 42 128
	2, 33, 28, // 43 131
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_12_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_12_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_12_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_12_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_12_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_12_1__ )
DX3DMODEL_START( model_Trim_Char_x_12_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_12_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_12_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 132 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_12_1__, 3906185669 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_12_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_11_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_13_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_13_1___initialShadingGroup_0 )
DX3DVERT( 1.54063, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.54063, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.39922, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.833593, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.975, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.975, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.550781, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.692188, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.692188, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.550781, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.692188, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.409374, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.409374, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.550781, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.833593, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.975, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.833593, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.11641, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.25781, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.25781, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.11641, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.25781, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.11641, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.54063, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.39922, 1.00156, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.39922, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.409374, 1.28281, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_13_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_13_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 27 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_13_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_13_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_13_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 7, // 3 11
	11, 9, 6, // 4 14
	12, 6, 13, // 5 17
	14, 15, 4, // 6 20
	10, 14, 3, // 7 23
	7, 3, 16, // 8 26
	17, 18, 19, // 9 29
	20, 21, 18, // 10 32
	15, 20, 17, // 11 35
	4, 17, 22, // 12 38
	23, 0, 24, // 13 41
	21, 24, 2, // 14 44
	18, 2, 25, // 15 47
	1, 25, 2, // 16 50
	5, 16, 3, // 17 53
	8, 13, 6, // 18 56
	7, 6, 9, // 19 59
	6, 12, 11, // 20 62
	13, 26, 12, // 21 65
	4, 3, 14, // 22 68
	3, 7, 10, // 23 71
	16, 8, 7, // 24 74
	19, 22, 17, // 25 77
	18, 17, 20, // 26 80
	17, 4, 15, // 27 83
	22, 5, 4, // 28 86
	0, 2, 24, // 29 89
	2, 18, 21, // 30 92
	25, 19, 18, // 31 95
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_13_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_13_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_13_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_13_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_13_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_13_1__ )
DX3DMODEL_START( model_Trim_Char_x_13_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_13_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_13_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_13_1__, 3908270805 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_13_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_12_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_14_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_14_1___initialShadingGroup_0 )
DX3DVERT( 1.22812, 0.48698, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.22812, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.12687, 0.48698, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.22812, 0.194792, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.22812, 0.292188, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.12687, 0.194792, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.823126, 0.194792, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.924376, 0.194792, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.924376, 0.292188, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.823126, -5.55112e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.924376, -5.55112e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.924376, 0.097396, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.721876, -5.55112e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.823126, 0.097396, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.721876, 0.097396, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.721876, 0.194792, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.823126, 0.292188, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.22812, -5.55112e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.22812, 0.097396, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.12687, -5.55112e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.02563, -5.55112e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.02563, 0.097396, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.12687, 0.097396, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.02563, 0.194792, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.02563, 0.292188, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.12687, 0.292188, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.823126, 0.48698, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.924376, 0.48698, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.924376, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.924376, 0.389584, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.721876, 0.292188, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.823126, 0.389584, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.721876, 0.389584, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.721876, 0.48698, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.823126, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.22812, 0.389584, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.02563, 0.389584, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.12687, 0.389584, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.02563, 0.48698, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.02563, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.12687, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.721876, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_14_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_14_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 42 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_14_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_14_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_14_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 9, 13, // 4 14
	13, 11, 7, // 5 17
	14, 13, 6, // 6 20
	15, 6, 16, // 7 23
	17, 18, 19, // 8 26
	10, 20, 21, // 9 29
	20, 19, 22, // 10 32
	7, 23, 24, // 11 35
	11, 21, 23, // 12 38
	18, 3, 22, // 13 41
	21, 22, 5, // 14 44
	23, 5, 25, // 15 47
	26, 27, 28, // 16 50
	16, 8, 29, // 17 53
	30, 16, 31, // 18 56
	31, 29, 27, // 19 59
	32, 31, 26, // 20 62
	33, 26, 34, // 21 65
	4, 35, 25, // 22 68
	8, 24, 36, // 23 71
	24, 25, 37, // 24 74
	27, 38, 39, // 25 77
	29, 36, 38, // 26 80
	35, 0, 37, // 27 83
	36, 37, 2, // 28 86
	38, 2, 40, // 29 89
	1, 40, 2, // 30 92
	4, 25, 5, // 31 95
	8, 16, 6, // 32 98
	11, 13, 9, // 33 101
	13, 14, 12, // 34 104
	7, 6, 13, // 35 107
	6, 15, 14, // 36 110
	16, 30, 15, // 37 113
	18, 22, 19, // 38 116
	21, 11, 10, // 39 119
	22, 21, 20, // 40 122
	24, 8, 7, // 41 125
	23, 7, 11, // 42 128
	3, 5, 22, // 43 131
	5, 23, 21, // 44 134
	25, 24, 23, // 45 137
	28, 34, 26, // 46 140
	29, 31, 16, // 47 143
	31, 32, 30, // 48 146
	27, 26, 31, // 49 149
	26, 33, 32, // 50 152
	34, 41, 33, // 51 155
	35, 37, 25, // 52 158
	36, 29, 8, // 53 161
	37, 36, 24, // 54 164
	39, 28, 27, // 55 167
	38, 27, 29, // 56 170
	0, 2, 37, // 57 173
	2, 38, 36, // 58 176
	40, 39, 38, // 59 179
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_14_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_14_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_14_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_14_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_14_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_14_1__ )
DX3DMODEL_START( model_Trim_Char_x_14_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_14_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_14_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 180 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_14_1__, 3910355941 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_14_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_13_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_15_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_15_1___initialShadingGroup_0 )
DX3DVERT( 1.48125, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.29576, 2.41786, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.57768, 2.41786, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.709375, 1.06162, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.709375, 0.701786, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.838394, 0.701786, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.368305, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.182814, -0.156249, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.468752, -0.156249, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.553797, 0.701786, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.653572, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.709375, 0.402303, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.23594, 1.62459, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.39286, 1.98884, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.23594, 1.98884, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.924778, 1.55982, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.739286, 1.1308, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.02322, 1.1308, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.20804, 1.55982, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.23594, 2.2795, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.11027, 1.98884, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.7625, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_15_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_15_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 22 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_15_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_15_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_15_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	3, 9, 4, // 3 11
	6, 10, 11, // 4 14
	4, 11, 5, // 5 17
	12, 13, 14, // 6 20
	15, 16, 17, // 7 23
	15, 18, 12, // 8 26
	19, 14, 13, // 9 29
	19, 20, 14, // 10 32
	2, 21, 0, // 11 35
	17, 16, 3, // 12 38
	3, 5, 17, // 13 41
	8, 10, 6, // 14 44
	11, 4, 9, // 15 47
	11, 9, 6, // 16 50
	17, 18, 15, // 17 53
	12, 14, 20, // 18 56
	12, 20, 15, // 19 59
	2, 1, 19, // 20 62
	19, 13, 2, // 21 65
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_15_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_15_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_15_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_15_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_15_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_15_1__ )
DX3DMODEL_START( model_Trim_Char_x_15_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_15_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_15_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 66 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_15_1__, 3912441077 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_15_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_14_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_16_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_16_1___initialShadingGroup_0 )
DX3DVERT( 1.45945, 2.67705, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.22188, 2.84722, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.22188, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.68061, 0.79665, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.71265, 1.21449, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.40921, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.4688, 0.182027, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.58048, 0.3788, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.46875, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.490833, 0.169826, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.728125, 0.274331, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.711765, 0.378794, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.728113, -0.00035439, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.728125, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.370298, 0.379118, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.481224, 0.182042, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.481251, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.22188, 0.274331, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.22188, 0.351078, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.13394, 0.274331, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.975, -0.039021, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.22191, -0.000416099, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.22188, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.975, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.851563, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.821112, 0.274437, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.728125, 0.356734, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.972687, 0.233405, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.851627, 0.258799, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.975002, 0.233406, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.09844, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.45913, 0.169861, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.24195, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.728125, 0.799233, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.728125, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.693659, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.26894, 0.796592, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.37375, 0.796674, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.968267, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.22188, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.22188, 1.65307, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.38906, 1.94219, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.269318, 2.05023, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.237368, 1.63238, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.540743, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.234089, 1.4233, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.237747, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.537361, 1.41725, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.71592, 1.4233, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.71225, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.41298, 1.44684, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.2099, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.935678, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.1777, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.654688, 2.81563, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.490589, 2.67702, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.728125, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.57604, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.707426, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.481251, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.481205, 2.66525, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 0.369051, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.68116, 2.05029, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.58011, 2.46774, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.31875, 2.29375, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.22188, 2.12649, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.975002, 2.8859, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 0.975, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.09844, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 1.12882, 2.57247, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 1.22188, 2.57255, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.975, 2.6133, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 0.851563, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 0.728125, 2.57255, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 0.728123, 2.49662, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 0.815502, 2.57254, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 1.22188, 2.48977, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 0.976444, 2.61329, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 1.09835, 2.5879, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 0.728092, 2.84729, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 1.46878, 2.66524, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( 1.46875, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT( 1.23782, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //82
DX3DVERT( 0.728125, 1.27402, 0 ) DX3DVNORM( 0, 0, 1 )  //83
DX3DVERT( 1.09844, 0.257184, 0 ) DX3DVNORM( 0, 0, 1 )  //84
DX3DVERT( 0.553125, 0.971876, 0 ) DX3DVNORM( 0, 0, 1 )  //85
DX3DVERT( 0.540083, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //86
DX3DVERT( 0.726633, 0.796653, 0 ) DX3DVNORM( 0, 0, 1 )  //87
DX3DVERT( 0.615625, 0.604688, 0 ) DX3DVNORM( 0, 0, 1 )  //88
DX3DVERT( 1.40959, 1.63234, 0 ) DX3DVNORM( 0, 0, 1 )  //89
DX3DVERT( 0.851563, 2.58987, 0 ) DX3DVNORM( 0, 0, 1 )  //90
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_16_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_16_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 91 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_16_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_16_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_16_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	9, 12, 13, // 4 14
	14, 15, 16, // 5 17
	17, 18, 19, // 6 20
	20, 21, 22, // 7 23
	20, 23, 24, // 8 26
	25, 26, 10, // 9 29
	27, 28, 24, // 10 32
	25, 10, 13, // 11 35
	22, 17, 19, // 12 38
	29, 23, 30, // 13 41
	21, 31, 22, // 14 44
	6, 8, 32, // 15 47
	33, 34, 35, // 16 50
	36, 14, 16, // 17 53
	37, 32, 8, // 18 56
	34, 33, 38, // 19 59
	39, 40, 41, // 20 62
	42, 43, 44, // 21 65
	45, 46, 47, // 22 68
	48, 49, 50, // 23 71
	38, 51, 52, // 24 74
	40, 39, 53, // 25 77
	54, 55, 56, // 26 80
	57, 58, 59, // 27 83
	60, 59, 58, // 28 86
	60, 61, 59, // 29 89
	62, 63, 64, // 30 92
	65, 53, 39, // 31 95
	66, 67, 68, // 32 98
	69, 70, 2, // 33 101
	71, 67, 72, // 34 104
	73, 74, 75, // 35 107
	56, 73, 75, // 36 110
	69, 76, 70, // 37 113
	77, 78, 68, // 38 116
	66, 79, 56, // 39 119
	63, 80, 81, // 40 122
	0, 70, 82, // 41 125
	83, 35, 34, // 42 128
	5, 37, 3, // 43 131
	10, 26, 11, // 44 134
	11, 16, 15, // 45 137
	11, 15, 9, // 46 140
	10, 9, 13, // 47 143
	30, 23, 20, // 48 146
	20, 22, 30, // 49 149
	13, 12, 20, // 50 152
	24, 13, 20, // 51 155
	23, 29, 27, // 52 158
	27, 24, 23, // 53 161
	13, 24, 28, // 54 164
	28, 25, 13, // 55 167
	84, 30, 22, // 56 170
	22, 19, 84, // 57 173
	30, 84, 29, // 58 176
	32, 18, 17, // 59 179
	31, 17, 22, // 60 182
	31, 6, 32, // 61 185
	17, 31, 32, // 62 188
	85, 86, 46, // 63 191
	85, 87, 33, // 64 194
	35, 85, 33, // 65 197
	36, 87, 85, // 66 200
	46, 36, 85, // 67 203
	16, 11, 88, // 68 206
	88, 87, 36, // 69 209
	16, 88, 36, // 70 212
	7, 3, 37, // 71 215
	37, 8, 7, // 72 218
	41, 89, 49, // 73 221
	41, 62, 39, // 74 224
	49, 62, 41, // 75 227
	44, 57, 42, // 76 230
	46, 86, 47, // 77 233
	47, 44, 43, // 78 236
	43, 45, 47, // 79 239
	49, 89, 50, // 80 242
	5, 4, 48, // 81 245
	48, 50, 5, // 82 248
	83, 34, 38, // 83 251
	38, 52, 83, // 84 254
	52, 51, 40, // 85 257
	40, 53, 52, // 86 260
	56, 79, 54, // 87 263
	61, 42, 57, // 88 266
	57, 59, 61, // 89 269
	58, 74, 73, // 90 272
	55, 73, 56, // 91 275
	55, 60, 58, // 92 278
	73, 55, 58, // 93 281
	81, 82, 64, // 94 284
	65, 39, 62, // 95 287
	62, 64, 65, // 96 290
	64, 63, 81, // 97 293
	66, 66, 67, // 98 296
	2, 1, 66, // 99 299
	68, 2, 66, // 100 302
	2, 68, 78, // 101 305
	78, 69, 2, // 102 308
	72, 90, 71, // 103 311
	90, 72, 56, // 104 314
	56, 75, 90, // 105 317
	67, 71, 77, // 106 320
	77, 68, 67, // 107 323
	72, 67, 66, // 108 326
	66, 56, 72, // 109 329
	70, 76, 82, // 110 332
	82, 81, 80, // 111 335
	82, 80, 0, // 112 338
	70, 0, 2, // 113 341
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_16_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_16_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_16_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_16_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_16_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_16_1__ )
DX3DMODEL_START( model_Trim_Char_x_16_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_16_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_16_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 342 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_16_1__, 3914526213 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_16_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_15_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_17_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_17_1___initialShadingGroup_0 )
DX3DVERT( 1.00156, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.821095, 2.73843, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.821095, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.32188, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.32188, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.00156, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.32188, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.32188, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.00156, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.32188, 2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.00156, 2.93057e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.00156, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.32188, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.32188, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.00156, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.00156, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.337685, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.320313, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.320313, 2.125, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.32188, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.00156, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.40937, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.320313, 2.4375, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.946316, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.821095, 2.4178, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.00156, 2.51563, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.00156, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.993752, 2.51875, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.32188, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_17_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_17_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 29 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_17_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_17_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_17_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 6, 10, // 3 11
	7, 3, 11, // 4 14
	12, 13, 14, // 5 17
	4, 12, 15, // 6 20
	16, 17, 18, // 7 23
	13, 19, 20, // 8 26
	21, 22, 16, // 9 29
	1, 21, 2, // 10 32
	23, 2, 24, // 11 35
	25, 26, 19, // 12 38
	23, 27, 0, // 13 41
	0, 2, 23, // 14 44
	0, 27, 25, // 15 47
	19, 28, 25, // 16 50
	25, 28, 0, // 17 53
	4, 15, 5, // 18 56
	7, 11, 8, // 19 59
	6, 8, 10, // 20 62
	3, 5, 11, // 21 65
	13, 20, 14, // 22 68
	12, 14, 15, // 23 71
	19, 26, 20, // 24 74
	22, 17, 16, // 25 77
	24, 2, 21, // 26 80
	21, 16, 24, // 27 83
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_17_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_17_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_17_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_17_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_17_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_17_1__ )
DX3DMODEL_START( model_Trim_Char_x_17_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_17_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_17_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 84 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_17_1__, 3916611349 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_17_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_16_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_18_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_18_1___initialShadingGroup_0 )
DX3DVERT( 1.45958, 2.70581, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.41667, 2.74898, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.41667, 2.7058, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.26676, 1.08232, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.45851, 1.44314, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.19584, 1.44309, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.754166, 0.721547, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.754162, 0.375959, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.02215, 0.721537, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.669827, 0.721684, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.380966, 0.360788, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.741795, 0.360777, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.754166, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.754166, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.682816, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.19584, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.6375, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.6375, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.19584, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.754032, 0.837413, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.1959, 0.971074, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.19584, 1.08232, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.916775, 1.08219, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.11288, 1.44292, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.29064, 2.14531, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.24462, 1.80387, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.57932, 1.80385, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.19588, 1.64547, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.3125, 2.63281, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.3125, 2.52541, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.665562, 2.52566, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.3125, 2.29375, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.19586, 2.48914, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.29046, 2.16464, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.61896, 2.16464, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.1592, 2.52541, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.19584, 2.52541, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.928127, 2.59672, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.19584, 2.7058, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.977661, 2.88619, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.41667, 2.52541, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.56242, 2.52541, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.19584, 2.86093, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.682816, 0.289064, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.3125, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.3125, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.61901, 2.15257, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.75415, 2.56217, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.754166, 2.86185, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_18_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_18_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 49 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_18_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_18_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_18_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 16, 17, // 5 17
	12, 15, 18, // 6 20
	19, 9, 6, // 7 23
	20, 3, 21, // 8 26
	22, 19, 8, // 9 29
	23, 22, 21, // 10 32
	24, 25, 26, // 11 35
	5, 4, 26, // 12 38
	27, 23, 5, // 13 41
	28, 29, 30, // 14 44
	29, 31, 30, // 15 47
	32, 33, 34, // 16 50
	35, 32, 36, // 17 53
	37, 38, 39, // 18 56
	40, 41, 0, // 19 59
	36, 40, 2, // 20 62
	1, 42, 38, // 21 65
	5, 21, 3, // 22 68
	7, 6, 9, // 23 71
	11, 7, 9, // 24 74
	43, 11, 10, // 25 77
	14, 43, 44, // 26 80
	14, 44, 12, // 27 83
	45, 44, 43, // 28 86
	43, 10, 45, // 29 89
	17, 18, 15, // 30 92
	18, 13, 12, // 31 95
	19, 6, 8, // 32 98
	20, 21, 22, // 33 101
	22, 8, 20, // 34 104
	21, 5, 23, // 35 107
	46, 34, 33, // 36 110
	46, 33, 24, // 37 113
	24, 26, 46, // 38 116
	26, 25, 27, // 39 119
	27, 5, 26, // 40 122
	30, 47, 48, // 41 125
	48, 28, 30, // 42 128
	40, 36, 32, // 43 131
	34, 41, 40, // 44 134
	40, 32, 34, // 45 137
	35, 36, 38, // 46 140
	38, 42, 39, // 47 143
	48, 47, 37, // 48 146
	37, 39, 48, // 49 149
	38, 37, 35, // 50 152
	0, 2, 40, // 51 155
	2, 38, 36, // 52 158
	38, 2, 1, // 53 161
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_18_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_18_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_18_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_18_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_18_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_18_1__ )
DX3DMODEL_START( model_Trim_Char_x_18_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_18_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_18_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 162 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_18_1__, 3918696485 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_18_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_17_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_19_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_19_1___initialShadingGroup_0 )
DX3DVERT( 1.22187, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.22187, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.2875, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.66441, 1.04312, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.55704, 1.40396, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.44921, 1.40391, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.34278, 0.68242, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.22184, 0.376747, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.44921, 0.321677, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.54689, 0.321269, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.351563, 0.417188, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.351563, 0.321677, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.351563, 0.0781262, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.45399, 0.141306, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.58261, 0.321677, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.15469, 0.321827, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.868889, 0.250272, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.916565, -0.0400191, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.44921, 0.136778, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.44921, 0.141306, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.22187, 0.141306, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.22187, 0.321677, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.584377, 1.40391, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.584377, 1.38438, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.767185, 1.38508, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.3505, 0.829524, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.67078, 0.682454, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.67673, 0.821715, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.994522, 1.37745, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.22184, 1.30308, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.22187, 1.40391, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.776604, 1.38509, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.994526, 1.40391, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.22187, 2.01123, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.31164, 2.12539, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.22187, 2.12539, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.767185, 1.76465, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.767185, 1.89759, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.662415, 1.76465, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.584377, 1.66563, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.767185, 1.40391, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.37213, 1.58468, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.22176, 1.64032, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.22187, 1.58428, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.956249, 1.66563, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.44975, 1.53191, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.946712, 2.12539, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.3125, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.767185, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.767185, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.59531, 2.48613, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.23101, 2.48613, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.22187, 2.47453, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.2875, 2.55781, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.65781, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.65781, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.33685, 1.04317, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.767185, -0.0309517, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.767288, 0.258244, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.22187, 0.00477332, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.956249, 1.67344, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.02797, 1.76465, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.3125, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_19_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_19_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 63 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_19_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_19_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_19_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	9, 11, 12, // 4 14
	13, 14, 8, // 5 17
	15, 16, 17, // 6 20
	18, 13, 19, // 7 23
	18, 19, 20, // 8 26
	20, 19, 8, // 9 29
	7, 15, 21, // 10 32
	22, 23, 24, // 11 35
	25, 26, 27, // 12 38
	28, 29, 30, // 13 41
	31, 28, 32, // 14 44
	33, 34, 35, // 15 47
	36, 37, 38, // 16 50
	39, 22, 40, // 17 53
	41, 42, 43, // 18 56
	40, 32, 44, // 19 59
	5, 4, 45, // 20 62
	30, 5, 45, // 21 65
	33, 35, 46, // 22 68
	47, 48, 49, // 23 71
	34, 50, 51, // 24 74
	52, 46, 35, // 25 77
	48, 1, 0, // 26 80
	53, 51, 50, // 27 83
	2, 53, 54, // 28 86
	2, 54, 0, // 29 89
	55, 54, 53, // 30 92
	53, 50, 55, // 31 95
	5, 30, 29, // 32 98
	5, 29, 56, // 33 101
	5, 56, 3, // 34 104
	7, 21, 8, // 35 107
	8, 14, 26, // 36 110
	26, 6, 8, // 37 113
	12, 57, 58, // 38 116
	12, 58, 9, // 39 119
	8, 19, 13, // 40 122
	16, 58, 57, // 41 125
	20, 21, 15, // 42 128
	17, 59, 20, // 43 131
	20, 15, 17, // 44 134
	57, 17, 16, // 45 137
	20, 59, 18, // 46 140
	8, 21, 20, // 47 143
	24, 40, 22, // 48 146
	25, 6, 26, // 49 149
	3, 56, 25, // 50 152
	27, 3, 25, // 51 155
	30, 32, 28, // 52 158
	40, 24, 31, // 53 161
	31, 32, 40, // 54 164
	40, 36, 38, // 55 167
	38, 39, 40, // 56 170
	43, 42, 44, // 57 173
	60, 61, 36, // 58 176
	44, 36, 40, // 59 179
	36, 44, 60, // 60 182
	44, 32, 30, // 61 185
	44, 30, 43, // 62 188
	41, 43, 30, // 63 191
	45, 41, 30, // 64 194
	37, 36, 61, // 65 197
	46, 37, 61, // 66 200
	46, 61, 33, // 67 203
	49, 62, 47, // 68 206
	52, 35, 34, // 69 209
	51, 52, 34, // 70 212
	0, 49, 48, // 71 215
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_19_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_19_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_19_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_19_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_19_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_19_1__ )
DX3DMODEL_START( model_Trim_Char_x_19_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_19_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_19_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 216 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_19_1__, 3920781621 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_19_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_18_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_20_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_20_1___initialShadingGroup_0 )
DX3DVERT( 1.10313, 2.84688, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 1.24792, 2.84688, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 1.24792, 2.44018, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.268383, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.580296, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.453125, 0.971876, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 1.24792, -2.97503e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 1.14219, -8.88178e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 1.14219, 0.406697, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.4625, -1.4138e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.24792, 0.406697, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.24792, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.24792, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.4625, 0.964063, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.79375, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.79375, 0.682814, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 1.4625, 0.682814, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 0.702084, 0.682814, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 0.15625, 0.682814, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 0.15625, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.14219, 0.682814, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 0.702084, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.702084, 0.964063, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.14219, 0.964063, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 0.685753, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.702084, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.702084, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.4625, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 1.24792, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 1.24792, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 1.4625, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 0.47707, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 0.702084, 1.4578, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.14219, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.14219, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.14219, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.4625, 2.44018, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.4625, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 0.702084, 2.06531, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 0.89444, 2.44018, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.13438, 2.30156, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 0.997028, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 0.788662, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 0.453125, 0.964063, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 0.15625, 1.00156, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 1.4625, 0.406697, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 1.79375, 0.964063, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.4625, 2.84688, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 1.14219, 2.30156, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_20_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_20_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 49 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_20_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_20_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_20_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 6, 10, // 3 11
	11, 12, 13, // 4 14
	14, 15, 16, // 5 17
	17, 18, 19, // 6 20
	20, 17, 21, // 7 23
	21, 22, 23, // 8 26
	24, 25, 26, // 9 29
	27, 28, 29, // 10 32
	30, 12, 28, // 11 35
	31, 26, 32, // 12 38
	12, 33, 34, // 13 41
	28, 34, 35, // 14 44
	36, 2, 1, // 15 47
	37, 29, 2, // 16 50
	24, 38, 25, // 17 53
	39, 40, 41, // 18 56
	26, 42, 32, // 19 59
	25, 41, 42, // 20 62
	2, 39, 0, // 21 65
	43, 22, 21, // 22 68
	5, 43, 44, // 23 71
	5, 44, 3, // 24 74
	19, 44, 43, // 25 77
	21, 19, 43, // 26 80
	8, 10, 6, // 27 83
	10, 45, 9, // 28 86
	12, 30, 13, // 29 89
	13, 46, 14, // 30 92
	13, 16, 11, // 31 95
	16, 45, 10, // 32 98
	16, 10, 11, // 33 101
	16, 13, 14, // 34 104
	19, 21, 17, // 35 107
	10, 8, 20, // 36 110
	11, 10, 20, // 37 113
	20, 23, 11, // 38 116
	23, 33, 12, // 39 119
	23, 12, 11, // 40 122
	23, 20, 21, // 41 125
	26, 31, 24, // 42 128
	29, 37, 27, // 43 131
	28, 27, 30, // 44 134
	4, 3, 31, // 45 137
	32, 4, 31, // 46 140
	34, 28, 12, // 47 143
	35, 29, 28, // 48 146
	1, 47, 36, // 49 149
	2, 36, 37, // 50 152
	29, 35, 48, // 51 155
	39, 2, 40, // 52 158
	41, 25, 38, // 53 161
	38, 39, 41, // 54 164
	48, 40, 2, // 55 167
	48, 2, 29, // 56 170
	42, 26, 25, // 57 173
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_20_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_20_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_20_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_20_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_20_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_20_1__ )
DX3DMODEL_START( model_Trim_Char_x_20_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_20_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_20_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 174 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_20_1__, 3981250565 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_20_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_19_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_21_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_21_1___initialShadingGroup_0 )
DX3DVERT( 1.23523, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.59844, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.59844, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.45615, 1.40353, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.23524, 1.38372, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.34407, 1.04269, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.33503, 0.681855, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.23522, 0.409321, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.45615, 0.32102, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.549797, 0.32102, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.351563, 0.417188, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.351563, 0.32102, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.351563, 0.0781262, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.45631, 0.155346, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.5712, 0.320976, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.14744, 0.321036, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.896877, 0.249971, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.911583, -0.0402255, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.23523, 0.0128782, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.44127, 0.140447, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.23523, 0.140601, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.23523, 0.32102, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.371826, 1.40353, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.370312, 1.34531, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.662502, 1.34531, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.35057, 0.896875, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.66587, 0.681856, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.23523, 1.40353, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.21879, 1.40355, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.25853, 1.76441, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.23524, 1.77129, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.23523, 1.76437, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.390602, 2.1252, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.381214, 1.76437, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.704342, 1.76437, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.701561, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.793396, 1.58395, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.709373, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.51036, 1.58395, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.45614, 1.64636, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.45615, 1.58395, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.23523, 1.58395, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.01431, 1.58395, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.975002, 1.50468, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.01431, 1.50292, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.793476, 1.73545, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.60372, 1.40326, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.05606, 1.79422, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.859943, 1.76422, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.01431, 1.76437, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.729687, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.793396, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.793396, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.39999, 2.48604, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.715755, 2.1252, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.23523, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.67257, 1.04272, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.793396, -0.0342411, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.793392, 0.256649, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.718403, 1.40354, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.6773, 0.899548, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 0.793392, 1.45759, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.727169, 2.48604, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 0.409374, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_21_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_21_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 64 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_21_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_21_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_21_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	9, 11, 12, // 4 14
	13, 14, 8, // 5 17
	15, 16, 17, // 6 20
	18, 19, 20, // 7 23
	13, 8, 21, // 8 26
	7, 15, 21, // 9 29
	22, 23, 24, // 10 32
	25, 6, 26, // 11 35
	27, 28, 4, // 12 38
	29, 30, 31, // 13 41
	32, 33, 34, // 14 44
	35, 36, 37, // 15 47
	38, 39, 40, // 16 50
	41, 31, 42, // 17 53
	28, 27, 41, // 18 56
	43, 44, 42, // 19 59
	45, 36, 42, // 20 62
	3, 46, 38, // 21 65
	27, 3, 40, // 22 68
	29, 31, 41, // 23 71
	47, 48, 49, // 24 74
	50, 51, 52, // 25 77
	53, 32, 54, // 26 80
	51, 0, 55, // 27 83
	2, 55, 0, // 28 86
	3, 27, 4, // 29 89
	56, 46, 3, // 30 92
	3, 5, 56, // 31 95
	7, 21, 8, // 32 98
	8, 14, 26, // 33 101
	26, 6, 8, // 34 104
	12, 57, 58, // 35 107
	12, 58, 9, // 36 110
	16, 58, 57, // 37 113
	20, 21, 15, // 38 116
	17, 18, 20, // 39 119
	20, 15, 17, // 40 122
	57, 17, 16, // 41 125
	21, 20, 19, // 42 128
	21, 19, 13, // 43 131
	24, 59, 22, // 44 134
	56, 5, 25, // 45 137
	60, 56, 25, // 46 140
	25, 26, 60, // 47 143
	34, 54, 32, // 48 146
	59, 61, 36, // 49 149
	35, 34, 33, // 50 152
	33, 22, 35, // 51 155
	36, 45, 37, // 52 158
	36, 35, 22, // 53 161
	36, 22, 59, // 54 164
	31, 49, 42, // 55 167
	41, 42, 44, // 56 170
	41, 44, 28, // 57 173
	36, 61, 43, // 58 176
	42, 36, 43, // 59 179
	42, 49, 48, // 60 182
	42, 48, 45, // 61 185
	38, 40, 3, // 62 188
	40, 41, 27, // 63 191
	41, 40, 39, // 64 194
	41, 39, 29, // 65 197
	49, 31, 30, // 66 200
	30, 47, 49, // 67 203
	53, 62, 50, // 68 206
	52, 63, 50, // 69 209
	50, 63, 53, // 70 212
	54, 62, 53, // 71 215
	55, 52, 51, // 72 218
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_21_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_21_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_21_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_21_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_21_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_21_1__ )
DX3DMODEL_START( model_Trim_Char_x_21_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_21_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_21_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 219 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_21_1__, 3983335701 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_21_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_20_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_22_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_22_1___initialShadingGroup_0 )
DX3DVERT( 1.55938, 2.80781, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.23486, 2.88052, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.23486, 2.67696, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.47538, 1.21415, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.38212, 1.21414, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.39699, 0.952731, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.51152, 0.169573, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.6321, 0.378409, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.47538, 0.378252, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.513329, 0.169278, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.753841, 0.169278, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.753841, 0.273765, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.51363, 0.142745, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.753765, -0.00811229, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.492138, 0.169613, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.513329, 0.378252, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.23486, 0.169278, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.23497, 0.317988, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.99435, 0.242188, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.23486, -0.0068863, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.99435, 0.169278, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.989822, -0.0397014, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.874096, 0.169278, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.840328, 0.273864, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.753712, 0.335027, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.874134, 0.26039, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.47525, 0.130943, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.47538, 0.169278, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.294926, 0.796201, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.606144, 0.79618, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.599239, 0.982641, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.71756, 0.37813, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.71132, 0.796178, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.39278, 0.796196, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.33936, 1.84086, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.23493, 1.87416, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.23486, 1.84107, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.604687, 1.69688, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.641361, 2.05005, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.332409, 2.05003, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.284435, 1.6321, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.272812, 1.25112, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.615791, 1.21415, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.5815, 1.63207, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.47538, 1.6321, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.47538, 1.42312, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.99435, 1.6321, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.994347, 1.61866, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.01243, 1.61893, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.753841, 1.6321, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.753868, 1.52344, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.66645, 1.42313, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.32911, 1.42302, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.23486, 1.6321, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.23507, 1.55054, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.47537, 1.75811, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.753841, 2.67696, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.753788, 2.80953, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.584808, 2.67631, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.754009, 2.41004, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.513329, 2.46799, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 0.753841, 2.46799, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.513599, 2.57956, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 0.455025, 2.468, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 0.796516, 2.46799, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.11094, 2.88594, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.994331, 2.87961, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 0.99435, 2.67696, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.15252, 2.60487, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 1.23493, 2.60149, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.994274, 2.58632, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 1.55938, 2.50781, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 1.7159, 0.957214, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 1.70295, 1.21415, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 0.384064, 0.378084, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 0.99435, -0.0396971, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 1.29047, 0.378189, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 0.272987, 1.21415, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 0.753803, 1.80886, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 0.612499, 1.69688, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 1.06524, 1.89266, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_22_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_22_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 81 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_22_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_22_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_22_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 10, // 4 14
	14, 12, 9, // 5 17
	14, 9, 15, // 6 20
	16, 17, 18, // 7 23
	19, 16, 20, // 8 26
	21, 20, 22, // 9 29
	23, 24, 11, // 10 32
	18, 25, 22, // 11 35
	23, 11, 10, // 12 38
	26, 6, 27, // 13 41
	26, 27, 16, // 14 44
	17, 16, 27, // 15 47
	28, 29, 30, // 16 50
	15, 31, 29, // 17 53
	7, 32, 33, // 18 56
	34, 35, 36, // 19 59
	37, 38, 39, // 20 62
	40, 41, 42, // 21 65
	43, 44, 45, // 22 68
	46, 47, 48, // 23 71
	49, 50, 47, // 24 74
	51, 45, 3, // 25 77
	45, 52, 4, // 26 80
	44, 53, 54, // 27 83
	46, 53, 36, // 28 86
	43, 55, 44, // 29 89
	34, 36, 53, // 30 92
	56, 57, 58, // 31 95
	38, 59, 60, // 32 98
	61, 56, 58, // 33 101
	62, 63, 60, // 34 104
	59, 64, 61, // 35 107
	65, 66, 67, // 36 110
	68, 69, 2, // 37 113
	70, 67, 56, // 38 116
	57, 56, 67, // 39 119
	2, 69, 71, // 40 122
	71, 0, 2, // 41 125
	5, 33, 32, // 42 128
	5, 72, 73, // 43 131
	5, 73, 3, // 44 134
	32, 72, 5, // 45 137
	8, 27, 6, // 46 140
	11, 24, 31, // 47 143
	31, 15, 9, // 48 146
	11, 31, 9, // 49 149
	10, 9, 12, // 50 152
	15, 74, 14, // 51 155
	18, 20, 16, // 52 158
	20, 75, 19, // 53 161
	21, 75, 20, // 54 164
	10, 13, 21, // 55 167
	22, 10, 21, // 56 170
	20, 18, 18, // 57 173
	18, 22, 20, // 58 176
	10, 22, 25, // 59 179
	25, 23, 10, // 60 182
	16, 19, 26, // 61 185
	27, 8, 76, // 62 188
	27, 76, 17, // 63 191
	30, 42, 77, // 64 194
	30, 77, 28, // 65 197
	29, 28, 74, // 66 200
	29, 74, 15, // 67 203
	33, 76, 8, // 68 206
	8, 7, 33, // 69 209
	49, 78, 79, // 70 212
	37, 50, 49, // 71 215
	39, 40, 37, // 72 218
	79, 37, 49, // 73 221
	41, 77, 42, // 74 224
	50, 37, 40, // 75 227
	40, 42, 50, // 76 230
	45, 51, 43, // 77 233
	48, 54, 53, // 78 236
	48, 53, 46, // 79 239
	47, 46, 49, // 80 242
	3, 73, 51, // 81 245
	4, 3, 45, // 82 248
	52, 45, 44, // 83 251
	54, 52, 44, // 84 254
	78, 49, 46, // 85 257
	36, 35, 80, // 86 260
	80, 46, 36, // 87 263
	46, 80, 78, // 88 266
	53, 44, 55, // 89 269
	53, 55, 34, // 90 272
	59, 61, 60, // 91 275
	60, 63, 39, // 92 278
	39, 38, 60, // 93 281
	62, 60, 61, // 94 284
	61, 58, 62, // 95 287
	67, 2, 1, // 96 290
	67, 1, 65, // 97 293
	67, 70, 68, // 98 296
	2, 67, 68, // 99 299
	56, 61, 64, // 100 302
	64, 70, 56, // 101 305
	67, 66, 57, // 102 308
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_22_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_22_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_22_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_22_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_22_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_22_1__ )
DX3DMODEL_START( model_Trim_Char_x_22_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_22_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_22_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 309 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_22_1__, 3985420837 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_22_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_21_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_23_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_23_1___initialShadingGroup_0 )
DX3DVERT( 1.20261, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.20261, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.34531, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.20261, 1.34632, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.22745, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.20261, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.923244, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.01558, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.747398, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.747398, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.681622, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.747398, -6.06922e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.584221, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.839062, -6.66134e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.747398, 0.935321, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.11674, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.788033, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.904015, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.34854, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.48095, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.20261, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.20261, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.0302, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.16728, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.292191, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.747398, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.747398, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.62577, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.31602, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.20261, 2.22232, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.34531, 2.55781, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.65781, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.65781, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.495316, -3.15373e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.292191, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_23_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_23_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 35 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_23_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_23_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_23_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 8, 10, // 3 11
	11, 9, 12, // 4 14
	13, 6, 9, // 5 17
	14, 10, 8, // 6 20
	15, 16, 14, // 7 23
	3, 5, 17, // 8 26
	18, 19, 20, // 9 29
	4, 18, 21, // 10 32
	22, 17, 5, // 11 35
	23, 22, 21, // 12 38
	24, 25, 26, // 13 41
	19, 27, 28, // 14 44
	29, 23, 20, // 15 47
	25, 1, 0, // 16 50
	30, 28, 27, // 17 53
	2, 30, 31, // 18 56
	2, 31, 0, // 19 59
	32, 31, 30, // 20 62
	30, 27, 32, // 21 65
	8, 9, 6, // 22 68
	10, 12, 9, // 23 71
	12, 33, 11, // 24 74
	9, 11, 13, // 25 77
	8, 7, 15, // 26 80
	14, 8, 15, // 27 83
	17, 16, 15, // 28 86
	17, 15, 3, // 29 89
	20, 21, 18, // 30 92
	21, 5, 4, // 31 95
	5, 21, 22, // 32 98
	21, 20, 23, // 33 101
	26, 34, 24, // 34 104
	29, 20, 19, // 35 107
	19, 28, 29, // 36 110
	0, 26, 25, // 37 113
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_23_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_23_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_23_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_23_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_23_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_23_1__ )
DX3DMODEL_START( model_Trim_Char_x_23_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_23_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_23_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 114 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_23_1__, 3987505973 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_23_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_22_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_24_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_24_1___initialShadingGroup_0 )
DX3DVERT( 0.417, 2.67714, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.45507, 2.71464, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.455173, 2.677, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.32962, 1.21458, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.455173, 1.21445, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.455173, 1.00551, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.387955, 0.169701, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.256214, 0.378945, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.455173, 0.378702, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.23532, -0.0105069, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.2353, 0.294265, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.33519, 0.378702, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 0.715206, 0.169766, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 0.71508, 0.300224, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 0.993752, 0.234376, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 0.455093, 0.110072, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 0.455173, 0.169766, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.49531, 1.21445, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.49531, 1.00551, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.40193, 1.00563, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.49531, 0.587639, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.42997, 0.587619, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.44416, 0.745404, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.49531, 0.378702, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.69434, 0.378703, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.7458, 0.587622, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.49531, 0.796575, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.44257, 0.796575, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 1.72154, 1.00549, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 1.7538, 0.796572, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 1.63264, 1.21441, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 0.195053, 0.735024, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 0.196888, 0.796569, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 0.455173, 0.796575, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 0.204536, 0.587657, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 0.455173, 0.587639, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 0.50655, 0.587643, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 0.615032, 0.37861, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 0.490372, 0.740625, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 0.232105, 1.00551, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 0.528267, 1.00549, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 0.491829, 0.796582, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 0.659538, 1.2145, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 0.346294, 1.84126, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 0.269741, 2.05017, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 0.455173, 2.05019, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 1.38426, 2.05019, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.49531, 2.05019, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 1.49531, 1.84126, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 1.26719, 1.525, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 1.26719, 1.51719, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 1.23528, 1.42338, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 1.49536, 1.37918, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 1.26294, 1.2145, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 1.43371, 1.63232, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 1.23528, 1.63232, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 1.29131, 1.84124, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 1.60305, 1.84126, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 1.49531, 1.6917, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.68085, 2.05018, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 0.682816, 1.50469, 0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 0.501987, 1.63231, 0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 0.715206, 1.63232, 0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( 1.2353, 1.23789, 0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( 0.956249, 1.36563, 0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( 0.45525, 1.35814, 0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( 0.54097, 1.42328, 0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( 0.715206, 1.42338, 0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( 0.975002, 1.6375, 0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( 1.23527, 1.77791, 0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( 0.455177, 1.68172, 0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT( 0.455173, 1.84126, 0 ) DX3DVNORM( 0, 0, -1 )  //71
DX3DVERT( 0.67548, 1.84115, 0 ) DX3DVNORM( 0, 0, -1 )  //72
DX3DVERT( 0.582954, 2.05039, 0 ) DX3DVNORM( 0, 0, -1 )  //73
DX3DVERT( 1.4954, 2.71197, 0 ) DX3DVNORM( 0, 0, -1 )  //74
DX3DVERT( 1.49531, 2.677, 0 ) DX3DVNORM( 0, 0, -1 )  //75
DX3DVERT( 1.23528, 2.677, 0 ) DX3DVNORM( 0, 0, -1 )  //76
DX3DVERT( 1.69711, 2.20312, 0 ) DX3DVNORM( 0, 0, -1 )  //77
DX3DVERT( 1.39991, 2.20312, 0 ) DX3DVNORM( 0, 0, -1 )  //78
DX3DVERT( 1.23534, 2.54461, 0 ) DX3DVNORM( 0, 0, -1 )  //79
DX3DVERT( 1.53057, 2.67716, 0 ) DX3DVNORM( 0, 0, -1 )  //80
DX3DVERT( 1.65553, 2.46804, 0 ) DX3DVNORM( 0, 0, -1 )  //81
DX3DVERT( 1.49531, 2.46807, 0 ) DX3DVNORM( 0, 0, -1 )  //82
DX3DVERT( 0.252857, 2.20312, 0 ) DX3DVNORM( 0, 0, -1 )  //83
DX3DVERT( 0.293446, 2.46805, 0 ) DX3DVNORM( 0, 0, -1 )  //84
DX3DVERT( 0.455173, 2.46807, 0 ) DX3DVNORM( 0, 0, -1 )  //85
DX3DVERT( 0.715206, 2.85391, 0 ) DX3DVNORM( 0, 0, -1 )  //86
DX3DVERT( 0.975002, 2.88594, 0 ) DX3DVNORM( 0, 0, -1 )  //87
DX3DVERT( 0.993752, 2.6125, 0 ) DX3DVNORM( 0, 0, -1 )  //88
DX3DVERT( 0.715206, 2.677, 0 ) DX3DVNORM( 0, 0, -1 )  //89
DX3DVERT( 0.715214, 2.53719, 0 ) DX3DVNORM( 0, 0, -1 )  //90
DX3DVERT( 1.55156, 0.159376, 0 ) DX3DVNORM( 0, 0, -1 )  //91
DX3DVERT( 0.974365, -0.0395741, 0 ) DX3DVNORM( 0, 0, -1 )  //92
DX3DVERT( 0.715244, -0.0101284, 0 ) DX3DVNORM( 0, 0, -1 )  //93
DX3DVERT( 1.75532, 0.738418, 0 ) DX3DVNORM( 0, 0, -1 )  //94
DX3DVERT( 1.4403, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //95
DX3DVERT( 0.682816, 1.49688, 0 ) DX3DVNORM( 0, 0, -1 )  //96
DX3DVERT( 0.715149, 1.25969, 0 ) DX3DVNORM( 0, 0, -1 )  //97
DX3DVERT( 0.715004, 1.79157, 0 ) DX3DVNORM( 0, 0, -1 )  //98
DX3DVERT( 1.23528, 2.85335, 0 ) DX3DVNORM( 0, 0, -1 )  //99
DX3DVERT( 1.31705, 2.46808, 0 ) DX3DVNORM( 0, 0, -1 )  //100
DX3DVERT( 0.565609, 2.20313, 0 ) DX3DVNORM( 0, 0, -1 )  //101
DX3DVERT( 0.643158, 2.46809, 0 ) DX3DVNORM( 0, 0, -1 )  //102
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_24_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_24_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 103 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_24_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_24_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_24_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 6, 16, // 5 17
	15, 16, 12, // 6 20
	13, 12, 16, // 7 23
	17, 18, 19, // 8 26
	20, 21, 22, // 9 29
	23, 11, 21, // 10 32
	24, 23, 20, // 11 35
	25, 20, 26, // 12 38
	27, 19, 18, // 13 41
	28, 29, 26, // 14 44
	30, 28, 18, // 15 47
	31, 32, 33, // 16 50
	7, 34, 35, // 17 53
	36, 37, 8, // 18 56
	38, 36, 35, // 19 59
	39, 5, 33, // 20 62
	5, 40, 41, // 21 65
	4, 42, 40, // 22 68
	43, 44, 45, // 23 71
	46, 47, 48, // 24 74
	49, 50, 51, // 25 77
	52, 17, 53, // 26 80
	52, 30, 17, // 27 83
	54, 55, 56, // 28 86
	57, 58, 48, // 29 89
	47, 59, 57, // 30 92
	60, 61, 62, // 31 95
	51, 63, 64, // 32 98
	3, 65, 4, // 33 101
	66, 67, 42, // 34 104
	68, 69, 55, // 35 107
	70, 43, 71, // 36 110
	70, 71, 72, // 37 113
	73, 72, 71, // 38 116
	74, 75, 76, // 39 119
	77, 59, 78, // 40 122
	79, 76, 75, // 41 125
	80, 81, 82, // 42 128
	74, 80, 75, // 43 131
	83, 84, 85, // 44 134
	86, 87, 88, // 45 137
	0, 2, 85, // 46 140
	2, 89, 90, // 47 143
	1, 86, 89, // 48 146
	5, 39, 3, // 49 149
	8, 16, 6, // 50 152
	23, 24, 91, // 51 155
	23, 91, 9, // 52 158
	11, 23, 9, // 53 161
	14, 10, 9, // 54 164
	14, 92, 93, // 55 167
	14, 93, 12, // 56 170
	9, 92, 14, // 57 173
	12, 93, 15, // 58 176
	16, 8, 37, // 59 179
	16, 37, 13, // 60 182
	19, 53, 17, // 61 185
	22, 27, 26, // 62 188
	26, 20, 22, // 63 191
	21, 20, 23, // 64 194
	20, 25, 24, // 65 197
	26, 29, 94, // 66 200
	94, 25, 26, // 67 203
	18, 26, 27, // 68 206
	26, 18, 28, // 69 209
	18, 17, 30, // 70 212
	33, 35, 34, // 71 215
	33, 34, 31, // 72 218
	35, 8, 7, // 73 221
	8, 35, 36, // 74 224
	33, 41, 38, // 75 227
	38, 35, 33, // 76 230
	33, 32, 39, // 77 233
	41, 33, 5, // 78 236
	40, 5, 4, // 79 239
	45, 71, 43, // 80 242
	48, 56, 46, // 81 245
	50, 95, 51, // 82 248
	55, 54, 49, // 83 251
	51, 55, 49, // 84 254
	53, 63, 51, // 85 257
	53, 51, 95, // 86 260
	53, 95, 52, // 87 263
	55, 69, 56, // 88 266
	56, 48, 58, // 89 269
	58, 54, 56, // 90 272
	57, 48, 47, // 91 275
	67, 66, 96, // 92 278
	67, 96, 60, // 93 281
	60, 62, 67, // 94 284
	64, 97, 67, // 95 287
	64, 68, 55, // 96 290
	64, 55, 51, // 97 293
	67, 62, 64, // 98 296
	67, 97, 42, // 99 299
	42, 4, 65, // 100 302
	65, 66, 42, // 101 305
	62, 98, 68, // 102 308
	68, 64, 62, // 103 311
	72, 98, 62, // 104 314
	72, 62, 61, // 105 317
	61, 70, 72, // 106 320
	71, 45, 73, // 107 323
	76, 99, 74, // 108 326
	47, 46, 78, // 109 329
	78, 100, 82, // 110 332
	82, 81, 77, // 111 335
	77, 78, 82, // 112 338
	78, 59, 47, // 113 341
	75, 82, 100, // 114 344
	75, 100, 79, // 115 347
	82, 75, 80, // 116 350
	101, 73, 45, // 117 353
	85, 102, 101, // 118 356
	101, 44, 83, // 119 359
	85, 101, 83, // 120 362
	45, 44, 101, // 121 365
	76, 79, 88, // 122 368
	87, 99, 88, // 123 371
	88, 90, 89, // 124 374
	89, 86, 88, // 125 377
	88, 99, 76, // 126 380
	85, 84, 0, // 127 383
	102, 85, 2, // 128 386
	90, 102, 2, // 129 389
	89, 2, 1, // 130 392
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_24_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_24_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_24_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_24_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_24_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_24_1__ )
DX3DMODEL_START( model_Trim_Char_x_24_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_24_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_24_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 393 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_24_1__, 3989591109 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_24_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_23_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_25_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_25_1___initialShadingGroup_0 )
DX3DVERT( 1.47112, 2.67718, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.43632, 2.71944, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.43663, 2.67761, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.34531, 1.15, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.30855, 0.796835, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.6176, 0.796847, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.43665, 0.267061, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.49498, 0.378878, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.43663, 0.378888, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.390625, 0.0390631, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.714954, -0.0336231, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.714954, 0.169913, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.955536, 0.268161, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.955513, 0.169913, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.19607, 0.169913, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.19607, 0.0373971, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.839062, -0.0390616, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.955513, -0.0325853, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.799286, 0.249872, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.714947, 0.254219, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.36595, 0.169906, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.19607, 0.378888, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.714954, 1.21479, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.474396, 1.21479, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.474396, 1.10359, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.626896, 1.00598, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.71489, 0.976527, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.714954, 1.00581, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.381966, 1.2148, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.1959, 0.440571, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.14888, 0.378888, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.955513, 1.21479, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.65726, 2.05069, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.34544, 2.05068, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.34998, 1.89219, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.251186, 1.63274, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.572895, 1.63272, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.553127, 1.93047, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.714859, 1.30957, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.66556, 1.21479, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.67719, 1.60001, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.32952, 1.63272, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.19607, 1.21479, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.19637, 1.33718, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.955513, 1.22857, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.93594, 1.22813, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.474514, 2.72127, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.474396, 2.67761, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.714954, 2.67761, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.313286, 2.46852, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.236721, 2.0507, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.555698, 2.05068, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.714958, 2.53309, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.432865, 2.67735, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.474396, 2.46864, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.43663, 2.46864, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.23561, 2.46873, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.961491, 2.88659, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.955513, 2.67761, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.07579, 2.67761, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.1119, 2.57307, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.19607, 2.57312, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.19607, 2.67761, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 0.955513, 2.60469, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.19617, 2.51496, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.07577, 2.58715, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.714958, 2.85498, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 1.19616, 2.85793, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.1961, 1.03887, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 1.3375, 1.15, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.390625, 0.351563, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.887836, 0.955891, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 1.67706, 1.63274, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 0.233837, 1.92766, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 0.654713, 2.46855, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 1.5758, 2.46884, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 0.955513, 2.88658, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_25_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_25_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 77 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_25_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_25_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_25_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 14, 13, // 5 17
	16, 17, 13, // 6 20
	18, 19, 11, // 7 23
	15, 20, 14, // 8 26
	6, 8, 21, // 9 29
	22, 23, 24, // 10 32
	25, 26, 27, // 11 35
	23, 28, 24, // 12 38
	4, 29, 8, // 13 41
	29, 30, 21, // 14 44
	31, 22, 27, // 15 47
	32, 33, 34, // 16 50
	35, 36, 37, // 17 53
	23, 38, 36, // 18 56
	39, 40, 41, // 19 59
	42, 43, 44, // 20 62
	31, 44, 45, // 21 65
	46, 47, 48, // 22 68
	49, 50, 51, // 23 71
	52, 48, 47, // 24 74
	53, 49, 54, // 25 77
	46, 53, 47, // 26 80
	55, 56, 33, // 27 83
	57, 58, 59, // 28 86
	60, 61, 62, // 29 89
	48, 52, 63, // 30 92
	60, 64, 61, // 31 95
	63, 65, 59, // 32 98
	66, 48, 58, // 33 101
	0, 2, 55, // 34 104
	2, 62, 61, // 35 107
	1, 67, 62, // 36 110
	42, 68, 69, // 37 113
	3, 43, 42, // 38 116
	5, 39, 3, // 39 119
	69, 3, 42, // 40 122
	11, 19, 70, // 41 125
	70, 9, 11, // 42 128
	14, 21, 30, // 43 131
	30, 12, 14, // 44 134
	13, 17, 15, // 45 137
	13, 11, 10, // 46 140
	13, 10, 16, // 47 143
	13, 12, 18, // 48 146
	11, 13, 18, // 49 149
	21, 14, 20, // 50 152
	21, 20, 6, // 51 155
	25, 27, 22, // 52 158
	22, 24, 25, // 53 161
	29, 21, 8, // 54 164
	8, 7, 5, // 55 167
	5, 4, 8, // 56 170
	68, 42, 31, // 57 173
	27, 26, 71, // 58 176
	71, 31, 27, // 59 179
	31, 71, 68, // 60 182
	34, 41, 72, // 61 185
	34, 72, 32, // 62 188
	37, 51, 50, // 63 191
	37, 50, 73, // 64 194
	73, 35, 37, // 65 197
	23, 22, 38, // 66 200
	36, 35, 28, // 67 203
	28, 23, 36, // 68 206
	40, 72, 41, // 69 209
	43, 3, 39, // 70 212
	39, 41, 43, // 71 215
	44, 31, 42, // 72 218
	45, 38, 22, // 73 221
	45, 22, 31, // 74 224
	48, 66, 46, // 75 227
	51, 74, 54, // 76 230
	54, 49, 51, // 77 233
	47, 54, 74, // 78 236
	47, 74, 52, // 79 239
	54, 47, 53, // 80 242
	33, 32, 75, // 81 245
	33, 75, 55, // 82 248
	57, 76, 58, // 83 251
	62, 67, 57, // 84 254
	59, 62, 57, // 85 257
	62, 59, 65, // 86 260
	65, 60, 62, // 87 263
	63, 58, 48, // 88 266
	58, 63, 63, // 89 269
	63, 59, 58, // 90 272
	58, 76, 66, // 91 275
	55, 75, 0, // 92 278
	61, 64, 56, // 93 281
	56, 55, 2, // 94 284
	61, 56, 2, // 95 287
	62, 2, 1, // 96 290
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_25_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_25_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_25_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_25_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_25_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_25_1__ )
DX3DMODEL_START( model_Trim_Char_x_25_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_25_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_25_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 291 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_25_1__, 3991676245 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_25_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_24_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_26_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_26_1___initialShadingGroup_0 )
DX3DVERT( 1.20937, 0.526563, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.20937, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.975002, 0.526563, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.20937, 0.263281, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.975002, 0.263281, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.20937, 3.04698e-031, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.975002, 1.11022e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.740627, 1.11022e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.740627, 0.263281, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.740627, 0.526563, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.975002, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.740627, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.20937, 1.84297, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.20937, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.975002, 1.84297, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.20937, 1.52031, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.20937, 1.57969, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.975002, 1.52031, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.740627, 1.52031, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.975002, 1.57969, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.740627, 1.57969, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.740627, 1.84297, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.975002, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.740627, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_26_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_26_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_26_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_26_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_26_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 0, 4, // 1 5
	5, 3, 6, // 2 8
	7, 6, 4, // 3 11
	8, 4, 2, // 4 14
	9, 2, 10, // 5 17
	1, 10, 2, // 6 20
	0, 2, 4, // 7 23
	3, 4, 6, // 8 26
	4, 8, 7, // 9 29
	2, 9, 8, // 10 32
	10, 11, 9, // 11 35
	12, 13, 14, // 12 38
	15, 16, 17, // 13 41
	18, 17, 19, // 14 44
	16, 12, 19, // 15 47
	20, 19, 14, // 16 50
	21, 14, 22, // 17 53
	13, 22, 14, // 18 56
	16, 19, 17, // 19 59
	19, 20, 18, // 20 62
	12, 14, 19, // 21 65
	14, 21, 20, // 22 68
	22, 23, 21, // 23 71
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_26_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_26_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_26_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_26_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_26_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_26_1__ )
DX3DMODEL_START( model_Trim_Char_x_26_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_26_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_26_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 72 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_26_1__, 3993761381 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_26_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_25_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_27_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_27_1___initialShadingGroup_0 )
DX3DVERT( 1.24844, 1.77969, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.24844, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.896877, 1.77969, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.24844, 1.52031, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.896877, 1.52031, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.77969, 1.52031, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.77969, 1.77969, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.896877, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.77969, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.20473, 0.473438, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.24844, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.896877, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.947411, -0.179686, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.07607, 0.146876, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.896877, 0.146876, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.896877, -0.307952, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.896877, -0.179686, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.61549, -0.179686, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.685669, 0.146876, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.896877, 0.473438, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.755848, 0.473438, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.77969, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.545315, -0.506249, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.818748, -0.506249, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_27_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_27_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_27_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_27_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_27_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 0, 4, // 1 5
	5, 4, 2, // 2 8
	6, 2, 7, // 3 11
	1, 7, 2, // 4 14
	0, 2, 4, // 5 17
	2, 6, 5, // 6 20
	7, 8, 6, // 7 23
	9, 10, 11, // 8 26
	12, 13, 14, // 9 29
	15, 12, 16, // 10 32
	15, 16, 17, // 11 35
	18, 17, 16, // 12 38
	13, 9, 19, // 13 41
	20, 18, 14, // 14 44
	21, 20, 19, // 15 47
	11, 19, 9, // 16 50
	14, 16, 12, // 17 53
	17, 22, 23, // 18 56
	17, 23, 15, // 19 59
	16, 14, 18, // 20 62
	19, 14, 13, // 21 65
	14, 19, 20, // 22 68
	19, 11, 21, // 23 71
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_27_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_27_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_27_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_27_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_27_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_27_1__ )
DX3DMODEL_START( model_Trim_Char_x_27_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_27_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_27_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 72 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_27_1__, 3995846517 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_27_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_26_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_28_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_28_1___initialShadingGroup_0 )
DX3DVERT( 1.32617, 2.0625, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.32617, 1.98393, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.68856, 1.98393, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.17436, 0.713394, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.955471, 0.848607, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.955471, 0.713394, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.710182, 0.713394, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.955471, 0.55547, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.338093, 0.952958, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.584766, 0.794141, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.584766, 0.952958, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.69688, 0.0781262, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.69688, 0.390626, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.68856, 0.39576, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.20353, 0.39576, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.32617, 0.316798, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.32617, 0.39576, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.32617, 0.619616, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.955471, 1.53108, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.17436, 1.6663, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.955471, 1.6663, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.711796, 1.6663, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.584766, 1.58438, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.784637, 1.42556, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.786537, 0.952958, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.584766, 1.0776, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.214062, 1.03281, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.409374, 1.18594, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.338497, 1.42556, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.584766, 1.42556, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.955471, 1.82344, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.32617, 1.76007, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.20433, 1.98393, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.584766, 1.30209, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.69688, 1.98906, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.69688, 2.30156, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.409374, 1.19375, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.214062, 1.34531, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_28_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_28_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 38 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_28_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_28_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_28_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 5, 4, // 2 8
	6, 7, 5, // 3 11
	8, 9, 10, // 4 14
	11, 12, 13, // 5 17
	14, 15, 16, // 6 20
	16, 13, 17, // 7 23
	14, 17, 3, // 8 26
	18, 19, 20, // 9 29
	21, 22, 23, // 10 32
	10, 24, 25, // 11 35
	26, 8, 27, // 12 38
	22, 28, 29, // 13 41
	30, 21, 20, // 14 44
	31, 2, 1, // 15 47
	30, 20, 19, // 16 50
	0, 32, 1, // 17 53
	29, 33, 23, // 18 56
	2, 34, 35, // 19 59
	35, 0, 2, // 20 62
	24, 10, 9, // 21 65
	24, 9, 6, // 22 68
	4, 24, 6, // 23 71
	13, 16, 15, // 24 74
	13, 15, 11, // 25 77
	14, 16, 17, // 26 80
	3, 5, 7, // 27 83
	7, 14, 3, // 28 86
	22, 29, 23, // 29 89
	18, 20, 21, // 30 92
	21, 23, 18, // 31 95
	33, 29, 28, // 32 98
	8, 10, 25, // 33 101
	27, 36, 37, // 34 104
	37, 26, 27, // 35 107
	25, 27, 8, // 36 110
	28, 37, 36, // 37 113
	28, 36, 33, // 38 116
	31, 1, 32, // 39 119
	19, 31, 32, // 40 122
	19, 32, 30, // 41 125
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_28_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_28_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_28_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_28_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_28_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_28_1__ )
DX3DMODEL_START( model_Trim_Char_x_28_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_28_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_28_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 126 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_28_1__, 3997931653 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_28_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_27_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_29_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_29_1___initialShadingGroup_0 )
DX3DVERT( 1.71563, 0.916798, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.71563, 0.925, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.50402, 0.916798, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.657589, 0.916798, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.869198, 0.916798, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.869198, 0.925, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.234375, 0.916798, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.445984, 0.916798, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.445984, 0.925, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.234375, 0.643751, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.445984, 0.643751, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.657589, 0.643751, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.869198, 0.643751, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.657589, 0.925, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.0808, 0.916798, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.29241, 0.916798, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.29241, 0.925, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.0808, 0.643751, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.29241, 0.643751, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.0808, 0.925, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.71563, 0.643751, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.50402, 0.643751, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.50402, 0.925, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.234375, 0.925, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.71563, 1.46289, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.71563, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.50402, 1.46289, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.657589, 1.46289, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.869198, 1.46289, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.869198, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.234375, 1.46289, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.445984, 1.46289, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.445984, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.234375, 1.45469, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.445984, 1.45469, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.657589, 1.45469, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.869198, 1.45469, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.657589, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.0808, 1.46289, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.29241, 1.46289, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.29241, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.0808, 1.45469, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.29241, 1.45469, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.0808, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.71563, 1.45469, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.50402, 1.45469, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.50402, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.234375, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_29_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_29_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 48 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_29_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_29_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_29_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 7, // 3 11
	11, 12, 4, // 4 14
	10, 11, 3, // 5 17
	7, 3, 13, // 6 20
	14, 15, 16, // 7 23
	17, 18, 15, // 8 26
	12, 17, 14, // 9 29
	4, 14, 19, // 10 32
	20, 0, 21, // 11 35
	18, 21, 2, // 12 38
	15, 2, 22, // 13 41
	1, 22, 2, // 14 44
	5, 13, 3, // 15 47
	8, 23, 6, // 16 50
	7, 6, 9, // 17 53
	4, 3, 11, // 18 56
	3, 7, 10, // 19 59
	13, 8, 7, // 20 62
	16, 19, 14, // 21 65
	15, 14, 17, // 22 68
	14, 4, 12, // 23 71
	19, 5, 4, // 24 74
	0, 2, 21, // 25 77
	2, 15, 18, // 26 80
	22, 16, 15, // 27 83
	24, 25, 26, // 28 86
	27, 28, 29, // 29 89
	30, 31, 32, // 30 92
	33, 34, 31, // 31 95
	35, 36, 28, // 32 98
	34, 35, 27, // 33 101
	31, 27, 37, // 34 104
	38, 39, 40, // 35 107
	41, 42, 39, // 36 110
	36, 41, 38, // 37 113
	28, 38, 43, // 38 116
	44, 24, 45, // 39 119
	42, 45, 26, // 40 122
	39, 26, 46, // 41 125
	25, 46, 26, // 42 128
	29, 37, 27, // 43 131
	32, 47, 30, // 44 134
	31, 30, 33, // 45 137
	28, 27, 35, // 46 140
	27, 31, 34, // 47 143
	37, 32, 31, // 48 146
	40, 43, 38, // 49 149
	39, 38, 41, // 50 152
	38, 28, 36, // 51 155
	43, 29, 28, // 52 158
	24, 26, 45, // 53 161
	26, 39, 42, // 54 164
	46, 40, 39, // 55 167
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_29_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_29_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_29_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_29_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_29_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_29_1__ )
DX3DMODEL_START( model_Trim_Char_x_29_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_29_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_29_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 168 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_29_1__, 4000016789 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_29_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_28_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_30_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_30_1___initialShadingGroup_0 )
DX3DVERT( 1.2382, 1.6663, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.994534, 1.82344, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.994534, 1.6663, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.36523, 0.794141, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.61191, 0.952958, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.36523, 0.952958, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.994534, 0.848607, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.775642, 0.713394, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.994534, 0.713394, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.623829, 0.316798, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.746471, 0.39576, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.623829, 0.39576, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.261436, 0.39576, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.253124, 0.390626, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.253124, 0.0781262, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.623829, 0.619617, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.994534, 0.55547, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.23982, 0.713394, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.6115, 1.42556, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.36523, 1.58438, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.36523, 1.42556, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.775642, 1.6663, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.994534, 1.53108, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.54063, 1.18594, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.73594, 1.03281, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.36523, 1.0776, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.16346, 0.952958, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.745667, 1.98393, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.623829, 2.0625, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.623829, 1.98393, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.623829, 1.76007, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.26144, 1.98393, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.253124, 2.30156, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.253124, 1.98906, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.16536, 1.42556, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.36523, 1.30209, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.73594, 1.34531, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.54063, 1.19375, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_30_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_30_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 38 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_30_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_30_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_30_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	7, 15, 10, // 5 17
	15, 12, 11, // 6 20
	8, 16, 17, // 7 23
	6, 8, 17, // 8 26
	18, 19, 20, // 9 29
	2, 21, 22, // 10 32
	23, 4, 24, // 11 35
	25, 26, 5, // 12 38
	0, 2, 22, // 13 41
	27, 28, 29, // 14 44
	27, 30, 21, // 15 47
	29, 31, 30, // 16 50
	32, 33, 31, // 17 53
	20, 34, 35, // 18 56
	9, 11, 12, // 19 59
	14, 9, 12, // 20 62
	15, 11, 10, // 21 65
	16, 8, 7, // 22 68
	7, 10, 16, // 23 71
	3, 5, 26, // 24 74
	17, 3, 26, // 25 77
	17, 26, 6, // 26 80
	18, 20, 35, // 27 83
	25, 5, 4, // 28 86
	36, 37, 23, // 29 89
	23, 24, 36, // 30 92
	4, 23, 25, // 31 95
	37, 36, 18, // 32 98
	35, 37, 18, // 33 101
	34, 20, 19, // 34 104
	34, 19, 0, // 35 107
	22, 34, 0, // 36 110
	27, 29, 30, // 37 113
	21, 2, 1, // 38 116
	1, 27, 21, // 39 119
	31, 29, 28, // 40 122
	31, 28, 32, // 41 125
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_30_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_30_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_30_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_30_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_30_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_30_1__ )
DX3DMODEL_START( model_Trim_Char_x_30_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_30_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_30_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 126 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_30_1__, 4060485733 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_30_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_29_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_31_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_31_1___initialShadingGroup_0 )
DX3DVERT( 1.13125, 0.412334, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.13125, 0.50625, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.747398, 0.412334, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.13125, -6.66134e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.747398, -7.10553e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.701561, -3.02362e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.701561, 0.412334, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.747398, 0.50625, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.701561, 0.50625, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.58738, 2.68016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.48871, 2.76285, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.4888, 2.68017, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.826149, 1.23699, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.760937, 0.839063, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.07188, 0.839063, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.24167, 1.84308, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.24167, 1.64933, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.4871, 1.64925, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.24173, 1.36175, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.07316, 1.64908, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.16622, 1.23701, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.253124, 2.71094, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.253124, 2.474, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.456882, 2.474, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.253124, 2.35938, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.4084, 2.26016, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.73594, 2.2625, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.70589, 2.47405, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.958096, 2.59688, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.24161, 2.54185, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.24167, 2.68017, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.4888, 2.474, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.33207, 2.474, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.24166, 2.86211, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.71169, 2.06167, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.36992, 2.0617, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.747398, 2.5747, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.747398, 2.86711, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.994335, 2.88632, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_31_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_31_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 39 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_31_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_31_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_31_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 0, 4, // 1 5
	5, 4, 2, // 2 8
	6, 2, 7, // 3 11
	1, 7, 2, // 4 14
	0, 2, 4, // 5 17
	2, 6, 5, // 6 20
	7, 8, 6, // 7 23
	9, 10, 11, // 8 26
	12, 13, 14, // 9 29
	15, 16, 17, // 10 32
	18, 17, 16, // 11 35
	19, 12, 20, // 12 38
	15, 19, 16, // 13 41
	21, 22, 23, // 14 44
	22, 24, 23, // 15 47
	25, 26, 27, // 16 50
	28, 29, 30, // 17 53
	31, 27, 9, // 18 56
	32, 31, 11, // 19 59
	10, 33, 30, // 20 62
	14, 20, 12, // 21 65
	17, 34, 35, // 22 68
	17, 35, 15, // 23 71
	18, 16, 19, // 24 74
	20, 18, 19, // 25 77
	36, 37, 21, // 26 80
	23, 36, 21, // 27 83
	25, 35, 34, // 28 86
	31, 32, 25, // 29 89
	25, 27, 31, // 30 92
	34, 26, 25, // 31 95
	37, 36, 28, // 32 98
	33, 38, 28, // 33 101
	30, 33, 28, // 34 104
	28, 38, 37, // 35 107
	9, 11, 31, // 36 110
	11, 30, 29, // 37 113
	29, 32, 11, // 38 116
	30, 11, 10, // 39 119
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_31_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_31_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_31_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_31_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_31_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_31_1__ )
DX3DMODEL_START( model_Trim_Char_x_31_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_31_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_31_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 120 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_31_1__, 4062570869 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_31_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_30_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_32_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_32_1___initialShadingGroup_0 )
DX3DVERT( 0.489895, 2.26829, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.682125, 2.39793, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.68222, 2.26832, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.452385, 0.805436, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.50156, 0.38746, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.183594, 0.387467, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.408859, -0.170396, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.316719, -0.0304126, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.408943, -0.0304836, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.57969, -0.331249, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.3648, -0.411633, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.36503, -0.239466, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.02362, -0.164386, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.02362, -0.239466, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 0.68222, -0.239466, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 0.682186, -0.375668, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 1.07243, -0.449172, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.02359, -0.448331, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.08983, -0.167319, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.36503, -0.120472, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 0.473415, -0.239682, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 0.68222, -0.0304836, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.775, 0.429688, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.73063, 0.387481, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.4625, 0.596877, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.55991, -0.0304848, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.57969, -0.0187488, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.57969, -0.0304836, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.682224, -0.00496954, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.773697, 0.387518, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 1.02362, 0.387481, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.02363, 0.203291, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 0.707886, -0.0304492, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.22189, 0.174998, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.19433, 0.387481, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.29431, 0.178739, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.36503, 0.387481, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.36499, 0.189591, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 0.68222, 0.611292, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 0.68222, 0.805446, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 0.958145, 0.805541, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 0.685905, 0.596463, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 1.00221, 0.596545, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 1.02362, 0.491973, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 1.02377, 0.554666, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 1.08055, 0.491896, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 1.19433, 0.45013, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.22826, 0.44833, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 0.653137, 1.22342, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 0.682156, 1.40286, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 0.68222, 1.22341, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 1.57018, 1.64138, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 1.57018, 1.43239, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 1.43297, 1.43227, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 1.775, 0.805446, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 1.4625, 0.805446, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 1.46293, 1.0751, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 1.46221, 1.2234, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 1.775, 1.22341, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.57018, 1.22341, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 1.77571, 1.64138, 0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 1.77578, 1.62528, 0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 0.643749, 1.01406, 0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( 0.948303, 1.01973, 0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( 0.778385, 1.64138, 0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( 1.02362, 1.64138, 0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( 1.02362, 1.53688, 0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( 0.995949, 1.43227, 0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( 0.956177, 1.22341, 0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( 1.19433, 1.64138, 0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( 1.19429, 1.57894, 0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT( 1.07241, 1.53699, 0 ) DX3DVNORM( 0, 0, -1 )  //71
DX3DVERT( 1.02407, 1.48633, 0 ) DX3DVNORM( 0, 0, -1 )  //72
DX3DVERT( 1.36503, 1.53688, 0 ) DX3DVNORM( 0, 0, -1 )  //73
DX3DVERT( 1.36517, 1.5322, 0 ) DX3DVNORM( 0, 0, -1 )  //74
DX3DVERT( 1.35929, 1.53705, 0 ) DX3DVNORM( 0, 0, -1 )  //75
DX3DVERT( 1.36503, 1.64138, 0 ) DX3DVNORM( 0, 0, -1 )  //76
DX3DVERT( 1.36503, 2.26832, 0 ) DX3DVNORM( 0, 0, -1 )  //77
DX3DVERT( 1.36503, 2.43045, 0 ) DX3DVNORM( 0, 0, -1 )  //78
DX3DVERT( 1.57018, 2.3055, 0 ) DX3DVNORM( 0, 0, -1 )  //79
DX3DVERT( 1.48125, 1.75469, 0 ) DX3DVNORM( 0, 0, -1 )  //80
DX3DVERT( 1.39404, 2.0594, 0 ) DX3DVNORM( 0, 0, -1 )  //81
DX3DVERT( 1.57018, 2.05934, 0 ) DX3DVNORM( 0, 0, -1 )  //82
DX3DVERT( 1.57018, 2.26832, 0 ) DX3DVNORM( 0, 0, -1 )  //83
DX3DVERT( 1.60551, 2.26833, 0 ) DX3DVNORM( 0, 0, -1 )  //84
DX3DVERT( 1.72259, 2.05933, 0 ) DX3DVNORM( 0, 0, -1 )  //85
DX3DVERT( 0.408943, 2.05934, 0 ) DX3DVNORM( 0, 0, -1 )  //86
DX3DVERT( 0.682114, 2.02285, 0 ) DX3DVNORM( 0, 0, -1 )  //87
DX3DVERT( 0.505581, 1.64138, 0 ) DX3DVNORM( 0, 0, -1 )  //88
DX3DVERT( 0.68222, 2.05934, 0 ) DX3DVNORM( 0, 0, -1 )  //89
DX3DVERT( 0.718037, 2.05938, 0 ) DX3DVNORM( 0, 0, -1 )  //90
DX3DVERT( 1.02362, 1.83015, 0 ) DX3DVNORM( 0, 0, -1 )  //91
DX3DVERT( 1.18907, 1.85349, 0 ) DX3DVNORM( 0, 0, -1 )  //92
DX3DVERT( 1.23854, 1.85039, 0 ) DX3DVNORM( 0, 0, -1 )  //93
DX3DVERT( 1.1283, 1.85065, 0 ) DX3DVNORM( 0, 0, -1 )  //94
DX3DVERT( 1.02362, 2.26832, 0 ) DX3DVNORM( 0, 0, -1 )  //95
DX3DVERT( 1.08795, 2.19578, 0 ) DX3DVNORM( 0, 0, -1 )  //96
DX3DVERT( 1.02363, 2.19225, 0 ) DX3DVNORM( 0, 0, -1 )  //97
DX3DVERT( 1.36503, 2.16383, 0 ) DX3DVNORM( 0, 0, -1 )  //98
DX3DVERT( 1.36504, 2.09163, 0 ) DX3DVNORM( 0, 0, -1 )  //99
DX3DVERT( 1.25764, 2.16383, 0 ) DX3DVNORM( 0, 0, -1 )  //100
DX3DVERT( 1.19433, 2.26832, 0 ) DX3DVNORM( 0, 0, -1 )  //101
DX3DVERT( 1.06364, 2.47723, 0 ) DX3DVNORM( 0, 0, -1 )  //102
DX3DVERT( 0.328838, 2.05931, 0 ) DX3DVNORM( 0, 0, -1 )  //103
DX3DVERT( 0.408955, 2.18029, 0 ) DX3DVNORM( 0, 0, -1 )  //104
DX3DVERT( 0.65181, 0.805446, 0 ) DX3DVNORM( 0, 0, -1 )  //105
DX3DVERT( 0.187351, 1.6414, 0 ) DX3DVNORM( 0, 0, -1 )  //106
DX3DVERT( 0.45295, 1.22342, 0 ) DX3DVNORM( 0, 0, -1 )  //107
DX3DVERT( 0.44767, 1.01065, 0 ) DX3DVNORM( 0, 0, -1 )  //108
DX3DVERT( 0.139931, 0.805447, 0 ) DX3DVNORM( 0, 0, -1 )  //109
DX3DVERT( 0.135674, 1.00304, 0 ) DX3DVNORM( 0, 0, -1 )  //110
DX3DVERT( 1.36502, 0.480945, 0 ) DX3DVNORM( 0, 0, -1 )  //111
DX3DVERT( 1.1492, 0.178455, 0 ) DX3DVNORM( 0, 0, -1 )  //112
DX3DVERT( 1.46256, 1.19685, 0 ) DX3DVNORM( 0, 0, -1 )  //113
DX3DVERT( 1.77547, 1.43239, 0 ) DX3DVNORM( 0, 0, -1 )  //114
DX3DVERT( 0.689602, 1.43241, 0 ) DX3DVNORM( 0, 0, -1 )  //115
DX3DVERT( 1.2264, 1.58027, 0 ) DX3DVNORM( 0, 0, -1 )  //116
DX3DVERT( 1.36506, 1.8168, 0 ) DX3DVNORM( 0, 0, -1 )  //117
DX3DVERT( 1.47344, 1.75469, 0 ) DX3DVNORM( 0, 0, -1 )  //118
DX3DVERT( 1.02363, 2.47646, 0 ) DX3DVNORM( 0, 0, -1 )  //119
DX3DVERT( 1.19432, 2.18437, 0 ) DX3DVNORM( 0, 0, -1 )  //120
DX3DVERT( 0.140686, 1.22341, 0 ) DX3DVNORM( 0, 0, -1 )  //121
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_32_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_32_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 122 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_32_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_32_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_32_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 14, 13, // 5 17
	16, 17, 13, // 6 20
	18, 19, 11, // 7 23
	15, 20, 14, // 8 26
	6, 8, 21, // 9 29
	22, 23, 24, // 10 32
	25, 26, 27, // 11 35
	4, 28, 8, // 12 38
	29, 30, 31, // 13 41
	28, 32, 21, // 14 44
	33, 34, 35, // 15 47
	36, 37, 35, // 16 50
	38, 39, 40, // 17 53
	29, 41, 42, // 18 56
	43, 44, 45, // 19 59
	30, 43, 45, // 20 62
	34, 46, 47, // 21 65
	48, 49, 50, // 22 68
	51, 52, 53, // 23 71
	54, 55, 56, // 24 74
	57, 53, 52, // 25 77
	58, 59, 52, // 26 80
	51, 60, 61, // 27 83
	62, 48, 50, // 28 86
	63, 40, 39, // 29 89
	64, 65, 66, // 30 92
	67, 68, 50, // 31 95
	65, 69, 70, // 32 98
	66, 71, 72, // 33 101
	73, 74, 75, // 34 104
	76, 73, 75, // 35 107
	77, 78, 79, // 36 110
	80, 81, 82, // 37 113
	83, 82, 81, // 38 116
	84, 85, 82, // 39 119
	79, 84, 83, // 40 122
	86, 87, 88, // 41 125
	89, 90, 87, // 42 128
	64, 91, 65, // 43 131
	69, 92, 93, // 44 134
	94, 92, 69, // 45 137
	95, 2, 1, // 46 140
	90, 89, 2, // 47 143
	96, 97, 95, // 48 146
	98, 99, 100, // 49 149
	77, 98, 100, // 50 152
	101, 95, 102, // 51 155
	86, 103, 104, // 52 158
	89, 86, 104, // 53 161
	39, 38, 105, // 54 164
	36, 23, 37, // 55 167
	106, 88, 107, // 56 170
	108, 109, 110, // 57 173
	5, 109, 3, // 58 176
	19, 25, 27, // 59 179
	11, 19, 27, // 60 182
	27, 9, 11, // 61 185
	14, 21, 32, // 62 188
	32, 12, 14, // 63 191
	13, 17, 15, // 64 194
	13, 11, 10, // 65 197
	13, 10, 16, // 66 200
	13, 12, 18, // 67 203
	18, 11, 13, // 68 206
	21, 14, 20, // 69 209
	21, 20, 6, // 70 212
	23, 36, 111, // 71 215
	24, 55, 54, // 72 218
	24, 54, 22, // 73 221
	111, 24, 23, // 74 224
	28, 21, 8, // 75 227
	7, 5, 4, // 76 230
	4, 8, 7, // 77 233
	31, 30, 34, // 78 236
	34, 33, 112, // 79 239
	35, 34, 36, // 80 242
	34, 112, 31, // 81 245
	42, 41, 38, // 82 248
	38, 40, 42, // 83 251
	42, 44, 43, // 84 254
	43, 30, 29, // 85 257
	29, 42, 43, // 86 260
	46, 34, 30, // 87 263
	45, 46, 30, // 88 266
	47, 111, 36, // 89 269
	47, 36, 34, // 90 272
	73, 76, 51, // 91 275
	53, 74, 51, // 92 278
	51, 74, 73, // 93 281
	113, 57, 59, // 94 284
	59, 58, 54, // 95 287
	54, 56, 59, // 96 290
	59, 56, 113, // 97 293
	52, 59, 57, // 98 296
	52, 114, 58, // 99 299
	114, 52, 51, // 100 302
	61, 114, 51, // 101 305
	39, 105, 62, // 102 308
	62, 63, 39, // 103 311
	50, 68, 63, // 104 314
	63, 62, 50, // 105 317
	66, 72, 67, // 106 320
	67, 115, 64, // 107 323
	66, 67, 64, // 108 326
	49, 115, 67, // 109 329
	67, 50, 49, // 110 332
	71, 66, 65, // 111 335
	65, 70, 71, // 112 338
	116, 70, 69, // 113 341
	116, 69, 76, // 114 344
	75, 116, 76, // 115 347
	79, 83, 77, // 116 350
	76, 117, 118, // 117 353
	60, 51, 80, // 118 356
	85, 60, 80, // 119 359
	82, 85, 80, // 120 362
	118, 80, 51, // 121 365
	51, 76, 118, // 122 368
	81, 99, 98, // 123 371
	98, 77, 83, // 124 374
	83, 81, 98, // 125 377
	82, 83, 84, // 126 380
	86, 89, 87, // 127 383
	88, 106, 103, // 128 386
	103, 86, 88, // 129 389
	117, 76, 69, // 130 392
	69, 65, 91, // 131 395
	69, 91, 94, // 132 398
	69, 93, 117, // 133 401
	1, 119, 95, // 134 404
	2, 95, 97, // 135 407
	2, 97, 90, // 136 410
	101, 120, 96, // 137 413
	95, 101, 96, // 138 416
	120, 101, 77, // 139 419
	77, 100, 120, // 140 422
	95, 119, 102, // 141 425
	78, 77, 101, // 142 428
	101, 102, 78, // 143 431
	0, 2, 89, // 144 434
	104, 0, 89, // 145 437
	107, 121, 106, // 146 440
	108, 3, 109, // 147 443
	121, 107, 108, // 148 446
	108, 110, 121, // 149 449
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_32_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_32_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_32_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_32_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_32_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_32_1__ )
DX3DMODEL_START( model_Trim_Char_x_32_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_32_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_32_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 450 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_32_1__, 4064656005 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_32_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_31_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_A_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_A_1_1___initialShadingGroup_0 )
DX3DVERT( 1.08477, 2.44018, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 1.00098, 2.44018, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.971878, 2.57344, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.526566, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.278572, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.378799, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 1.29531, 1.09219, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 1.26739, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 1.42344, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.77165, 0.406697, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.87188, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.53593, 1.64365e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.42344, 0.517104, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.35898, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.42344, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.44746, 0.406697, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 1.57121, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.67143, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 0.398438, 1.64365e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 0.078125, 1.64365e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 0.178352, 0.406697, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 0.575401, 0.813393, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.526566, 0.588925, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 0.526566, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 0.66713, 1.22009, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.639061, 1.09219, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.479019, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.526566, 1.81972, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.526566, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 1.42344, 1.81972, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 1.42344, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.17858, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.47099, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 0.756355, 1.62679, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 0.579239, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 0.845589, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.17031, 2.84688, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.27054, 2.44018, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.37076, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.08978, 2.03348, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.08477, 2.05643, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 0.679466, 2.44018, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 0.934822, 2.44018, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 0.964066, 2.57344, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 0.779686, 2.84688, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 1.08477, 2.84688, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 1.08477, 0.81875, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.08477, 1.09219, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 1.35781, 0.81875, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 0.486916, 0.406697, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 0.576561, 0.81875, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_A_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_A_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 51 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_A_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_A_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_A_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	9, 15, 12, // 5 17
	16, 17, 14, // 6 20
	18, 19, 20, // 7 23
	20, 4, 3, // 8 26
	21, 22, 3, // 9 29
	23, 24, 25, // 10 32
	26, 27, 28, // 11 35
	29, 30, 31, // 12 38
	7, 31, 30, // 13 41
	32, 16, 8, // 14 44
	29, 32, 30, // 15 47
	26, 28, 23, // 16 50
	28, 33, 24, // 17 53
	34, 35, 33, // 18 56
	36, 37, 0, // 19 59
	38, 39, 40, // 20 62
	41, 42, 35, // 21 65
	1, 0, 40, // 22 68
	43, 42, 41, // 23 71
	2, 44, 45, // 24 74
	2, 45, 0, // 25 77
	44, 2, 43, // 26 80
	41, 44, 43, // 27 83
	5, 23, 3, // 28 86
	46, 47, 6, // 29 89
	14, 13, 48, // 30 92
	8, 14, 48, // 31 95
	48, 6, 8, // 32 98
	6, 48, 46, // 33 101
	11, 15, 9, // 34 104
	12, 14, 17, // 35 107
	12, 17, 9, // 36 110
	14, 8, 16, // 37 113
	20, 49, 18, // 38 116
	22, 49, 20, // 39 119
	20, 3, 22, // 40 122
	25, 47, 46, // 41 125
	50, 21, 3, // 42 128
	50, 3, 23, // 43 131
	23, 25, 50, // 44 134
	46, 50, 25, // 45 137
	31, 39, 38, // 46 140
	31, 38, 29, // 47 143
	30, 8, 7, // 48 146
	8, 30, 32, // 49 149
	23, 5, 26, // 50 152
	24, 23, 28, // 51 155
	33, 28, 27, // 52 158
	27, 34, 33, // 53 161
	0, 45, 36, // 54 164
	40, 0, 37, // 55 167
	40, 37, 38, // 56 170
	35, 34, 41, // 57 173
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_A_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_A_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_A_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_A_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_A_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_A_1_1__ )
DX3DMODEL_START( model_Trim_Char_A_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_A_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_A_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 174 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_A_1_1__, 2572549621 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_A_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_32_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_B_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_B_1_1___initialShadingGroup_0 )
DX3DVERT( 0.292191, 2.46808, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.292191, 2.82813, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.612503, 2.58125, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.292191, 0.796653, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.292191, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.612503, 0.796653, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.292191, 0.378796, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.612503, 0.378796, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.612503, 0.265626, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.28068, 0.336464, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.32259, 0.378875, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.52786, 0.378796, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.528, 0.149863, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.28077, 0.0143326, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.28073, 0.169867, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.54993, 0.169675, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 1.52786, 0.169867, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 0.896873, -0.0390091, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 0.950958, 0.234342, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.45466, 0.85145, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.3493, 1.21479, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.52786, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.52786, 0.587724, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.425, 0.587724, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.45369, 0.796653, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.69538, 0.378574, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.75677, 0.587676, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.52786, 0.796653, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.292191, 2.05022, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.612503, 2.05022, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.612503, 1.67656, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.37857, 2.05014, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.52786, 2.05022, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.52786, 1.8413, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.41404, 1.6324, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.28073, 1.57327, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.28073, 1.63237, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.28082, 1.28215, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.28073, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.51812, 1.42349, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.52792, 1.41474, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1.68188, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 1.29156, 1.84144, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 1.61516, 1.84126, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 1.52787, 1.72254, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 1.68604, 2.05022, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 0.786461, 1.63237, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 0.786461, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 0.612503, 1.40469, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 1.03359, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 0.786461, 1.40594, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 1.03354, 1.38644, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 1.24844, 1.55625, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 1.28073, 1.54903, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 1.03359, 1.63237, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 0.786461, 1.67591, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 1.03366, 1.69954, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 1.52786, 2.68111, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 1.52786, 2.67701, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.28073, 2.67701, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 1.38466, 2.14352, 0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 1.2809, 2.45358, 0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 1.52786, 2.46808, 0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( 1.28073, 2.46808, 0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( 1.5318, 2.67701, 0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( 1.6552, 2.46808, 0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( 1.26729, 2.46826, 0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( 1.0336, 2.88035, 0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( 1.03359, 2.67701, 0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( 0.786461, 2.67701, 0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( 0.846939, 2.61304, 0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT( 0.78643, 2.61162, 0 ) DX3DVNORM( 0, 0, -1 )  //71
DX3DVERT( 1.28082, 2.83173, 0 ) DX3DVNORM( 0, 0, -1 )  //72
DX3DVERT( 0.786438, 2.8847, 0 ) DX3DVNORM( 0, 0, -1 )  //73
DX3DVERT( 0.612503, 2.46808, 0 ) DX3DVNORM( 0, 0, -1 )  //74
DX3DVERT( 0.612503, 1.21451, 0 ) DX3DVNORM( 0, 0, -1 )  //75
DX3DVERT( 0.786461, 0.240938, 0 ) DX3DVNORM( 0, 0, -1 )  //76
DX3DVERT( 0.786461, -0.0372366, 0 ) DX3DVNORM( 0, 0, -1 )  //77
DX3DVERT( 0.292191, 0.0187503, 0 ) DX3DVNORM( 0, 0, -1 )  //78
DX3DVERT( 1.775, 0.81875, 0 ) DX3DVNORM( 0, 0, -1 )  //79
DX3DVERT( 1.77486, 0.796653, 0 ) DX3DVNORM( 0, 0, -1 )  //80
DX3DVERT( 0.752121, 1.67571, 0 ) DX3DVNORM( 0, 0, -1 )  //81
DX3DVERT( 0.292191, 1.63237, 0 ) DX3DVNORM( 0, 0, -1 )  //82
DX3DVERT( 1.28054, 1.82878, 0 ) DX3DVNORM( 0, 0, -1 )  //83
DX3DVERT( 0.755966, 1.40595, 0 ) DX3DVNORM( 0, 0, -1 )  //84
DX3DVERT( 1.24844, 1.56406, 0 ) DX3DVNORM( 0, 0, -1 )  //85
DX3DVERT( 1.69701, 2.18438, 0 ) DX3DVNORM( 0, 0, -1 )  //86
DX3DVERT( 0.896881, 2.88631, 0 ) DX3DVNORM( 0, 0, -1 )  //87
DX3DVERT( 1.03347, 2.59221, 0 ) DX3DVNORM( 0, 0, -1 )  //88
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_B_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_B_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 89 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_B_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_B_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_B_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 12, 16, // 5 17
	15, 16, 11, // 6 20
	13, 17, 18, // 7 23
	19, 20, 21, // 8 26
	22, 23, 24, // 9 29
	11, 10, 23, // 10 32
	25, 11, 22, // 11 35
	26, 22, 27, // 12 38
	6, 3, 7, // 13 41
	28, 29, 30, // 14 44
	31, 32, 33, // 15 47
	34, 35, 36, // 16 50
	37, 38, 39, // 17 53
	40, 41, 21, // 18 56
	34, 36, 42, // 19 59
	43, 44, 33, // 20 62
	32, 45, 43, // 21 65
	46, 47, 48, // 22 68
	49, 47, 46, // 23 71
	50, 47, 49, // 24 74
	38, 37, 51, // 25 77
	52, 53, 38, // 26 80
	54, 46, 55, // 27 83
	36, 54, 56, // 28 86
	57, 58, 59, // 29 89
	60, 61, 62, // 30 92
	62, 63, 59, // 31 95
	64, 65, 62, // 32 98
	57, 64, 58, // 33 101
	28, 0, 29, // 34 104
	66, 63, 61, // 35 107
	67, 68, 69, // 36 110
	70, 71, 69, // 37 113
	59, 63, 66, // 38 116
	72, 59, 68, // 39 119
	53, 39, 38, // 40 122
	1, 73, 69, // 41 125
	2, 74, 0, // 42 128
	71, 2, 69, // 43 131
	1, 69, 2, // 44 134
	4, 75, 5, // 45 137
	8, 76, 77, // 46 140
	8, 78, 6, // 47 143
	77, 78, 8, // 48 146
	11, 16, 14, // 49 149
	11, 14, 9, // 50 152
	14, 16, 12, // 51 155
	11, 25, 15, // 52 158
	17, 77, 76, // 53 161
	18, 9, 14, // 54 164
	14, 13, 18, // 55 167
	76, 18, 17, // 56 170
	79, 80, 27, // 57 173
	19, 27, 24, // 58 176
	41, 79, 19, // 59 179
	21, 41, 19, // 60 182
	27, 19, 79, // 61 185
	24, 27, 22, // 62 188
	23, 22, 11, // 63 191
	22, 26, 25, // 64 194
	27, 80, 26, // 65 197
	3, 5, 7, // 66 200
	81, 55, 46, // 67 203
	30, 48, 82, // 68 206
	30, 82, 28, // 69 209
	46, 30, 81, // 70 212
	33, 42, 31, // 71 215
	39, 40, 21, // 72 218
	39, 21, 20, // 73 221
	39, 20, 37, // 74 224
	36, 83, 42, // 75 227
	42, 33, 44, // 76 230
	44, 34, 42, // 77 233
	43, 33, 32, // 78 236
	47, 50, 84, // 79 239
	48, 75, 4, // 80 242
	48, 30, 46, // 81 245
	4, 82, 48, // 82 248
	84, 48, 47, // 83 251
	46, 54, 49, // 84 254
	49, 51, 50, // 85 257
	51, 49, 38, // 86 260
	36, 35, 85, // 87 263
	49, 85, 52, // 88 266
	38, 49, 52, // 89 269
	85, 49, 54, // 90 272
	85, 54, 36, // 91 275
	55, 56, 54, // 92 278
	56, 83, 36, // 93 281
	59, 72, 57, // 94 284
	86, 45, 32, // 95 287
	61, 63, 62, // 96 290
	62, 65, 86, // 97 293
	86, 60, 62, // 98 296
	32, 31, 60, // 99 299
	60, 86, 32, // 100 302
	59, 58, 62, // 101 305
	62, 58, 64, // 102 308
	0, 74, 29, // 103 311
	69, 73, 87, // 104 314
	87, 67, 69, // 105 317
	68, 88, 70, // 106 320
	69, 68, 70, // 107 323
	88, 68, 59, // 108 326
	66, 88, 59, // 109 329
	68, 67, 72, // 110 332
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_B_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_B_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_B_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_B_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_B_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_B_1_1__ )
DX3DMODEL_START( model_Trim_Char_B_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_B_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_B_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 333 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_B_1_1__, 1288518709 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_B_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_A_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_C_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_C_1_1___initialShadingGroup_0 )
DX3DVERT( 1.6375, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.29444, 2.87666, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.29441, 2.67744, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.65781, 0.37847, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.65781, 0.390626, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.63726, 0.37847, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.65781, 0.0781262, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.39537, 0.378529, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.69529, 0.0656377, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.695313, 0.169473, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.17328, 0.24139, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.99482, 0.266345, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.994865, 0.169473, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.14612, -0.0397753, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.29445, -0.0310771, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.29441, 0.169473, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.994858, -0.0296584, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.798958, 0.378495, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.695313, 0.37847, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.531311, 1.21445, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.218353, 1.21446, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.261856, 0.796464, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.583588, 0.796442, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.695328, 0.505719, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.531593, 1.63248, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.590355, 2.0504, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.265663, 2.05045, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.526093, 1.42221, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.218559, 1.63246, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.695313, 2.67744, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.695305, 2.77341, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.407478, 2.4682, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.695313, 2.32351, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.695313, 2.46844, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.80748, 2.46814, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.14429, 2.88671, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.17154, 2.60554, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.29453, 2.59613, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.995148, 2.57841, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.994865, 2.67744, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.6375, 2.47656, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.29441, 0.251494, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.214066, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.994858, 2.87585, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_C_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_C_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 44 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_C_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_C_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_C_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 3, 5, // 2 8
	7, 8, 9, // 3 11
	10, 11, 12, // 4 14
	13, 14, 15, // 5 17
	8, 16, 12, // 6 20
	17, 18, 9, // 7 23
	19, 20, 21, // 8 26
	22, 21, 7, // 9 29
	17, 23, 18, // 10 32
	24, 25, 26, // 11 35
	27, 24, 28, // 12 38
	29, 30, 31, // 13 41
	32, 33, 31, // 14 44
	32, 34, 33, // 15 47
	2, 1, 35, // 16 50
	36, 37, 2, // 17 53
	38, 39, 29, // 18 56
	30, 29, 39, // 19 59
	37, 40, 0, // 20 62
	0, 2, 37, // 21 65
	15, 14, 6, // 22 68
	5, 41, 6, // 23 71
	6, 41, 15, // 24 74
	9, 18, 7, // 25 77
	15, 41, 10, // 26 80
	10, 12, 15, // 27 83
	15, 12, 16, // 28 86
	15, 16, 13, // 29 89
	12, 9, 8, // 30 92
	9, 12, 11, // 31 95
	11, 17, 9, // 32 98
	21, 22, 19, // 33 101
	7, 18, 23, // 34 104
	23, 22, 7, // 35 107
	26, 28, 24, // 36 110
	20, 19, 27, // 37 113
	42, 20, 27, // 38 116
	28, 42, 27, // 39 119
	31, 33, 29, // 40 122
	31, 26, 25, // 41 125
	31, 25, 32, // 42 128
	43, 39, 2, // 43 131
	35, 43, 2, // 44 134
	39, 38, 36, // 45 137
	2, 39, 36, // 46 140
	29, 33, 34, // 47 143
	29, 34, 38, // 48 146
	39, 43, 30, // 49 149
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_C_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_C_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_C_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_C_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_C_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_C_1_1__ )
DX3DMODEL_START( model_Trim_Char_C_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_C_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_C_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 150 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_C_1_1__, 4487797 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_C_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_B_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_D_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_D_1_1___initialShadingGroup_0 )
DX3DVERT( 0.253128, 2.46822, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.253128, 2.82813, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.573441, 2.57344, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.253128, 0.79657, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.253128, 1.21448, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.573441, 0.79657, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.253128, 0.378656, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.573441, 0.378656, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.573441, 0.273439, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.45535, 0.169704, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.29375, 0.1697, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.29375, 0.378656, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.29375, 0.0636428, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.62464, 0.378679, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.55388, 0.272663, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.55391, 0.378656, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 0.787498, 0.242232, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.03359, 0.270611, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.03359, 0.1697, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 0.783463, -0.0394372, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 0.773438, -0.0394392, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 0.773438, 0.1697, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.03356, -0.0192103, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.2401, 0.378641, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.7645, 0.796568, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.43996, 0.796686, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.48951, 1.21448, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.29398, 0.43849, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.253128, 1.6324, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.253128, 2.05031, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.573441, 1.6324, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.7634, 2.05031, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.80951, 1.6324, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.48904, 1.6324, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.80962, 1.21448, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.49375, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 0.573441, 1.21448, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.29375, 2.78228, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.45275, 2.67717, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.29375, 2.67718, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.43684, 2.05027, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1.29374, 2.38459, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 1.55391, 2.46822, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 1.55387, 2.57048, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 1.29375, 2.46822, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 1.62174, 2.46821, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 0.573441, 2.05031, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.21404, 2.46824, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 1.03356, 2.86594, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 1.03359, 2.67718, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 0.773438, 2.67718, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 0.795097, 2.60514, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 0.773438, 2.60508, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 0.773438, 2.88632, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 0.573441, 2.46822, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 0.253128, 0.0187503, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 0.773438, 0.242415, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 1.81406, 1.42344, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 0.783371, 2.88632, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.0336, 2.56848, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_D_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_D_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 60 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_D_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_D_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_D_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	9, 12, 10, // 4 14
	13, 14, 15, // 5 17
	16, 17, 18, // 6 20
	19, 20, 21, // 7 23
	12, 22, 18, // 8 26
	23, 11, 10, // 9 29
	24, 25, 26, // 10 32
	15, 27, 25, // 11 35
	6, 3, 7, // 12 38
	11, 23, 27, // 13 41
	28, 29, 30, // 14 44
	31, 32, 33, // 15 47
	34, 26, 35, // 16 50
	4, 28, 36, // 17 53
	37, 38, 39, // 18 56
	40, 41, 42, // 19 59
	43, 42, 44, // 20 62
	43, 45, 42, // 21 65
	29, 0, 46, // 22 68
	47, 44, 41, // 23 71
	48, 49, 50, // 24 74
	51, 52, 50, // 25 77
	39, 44, 47, // 26 80
	37, 39, 49, // 27 83
	1, 53, 50, // 28 86
	2, 54, 0, // 29 89
	52, 2, 50, // 30 92
	1, 50, 2, // 31 95
	4, 36, 5, // 32 98
	21, 20, 55, // 33 101
	8, 55, 6, // 34 104
	55, 8, 21, // 35 107
	56, 21, 8, // 36 110
	11, 15, 14, // 37 113
	14, 9, 11, // 38 116
	21, 56, 16, // 39 119
	16, 18, 21, // 40 122
	21, 18, 22, // 41 125
	21, 22, 19, // 42 128
	18, 10, 12, // 43 131
	10, 18, 17, // 44 134
	10, 17, 23, // 45 137
	26, 34, 24, // 46 140
	15, 11, 27, // 47 143
	25, 24, 13, // 48 146
	13, 15, 25, // 49 149
	3, 5, 7, // 50 152
	29, 46, 30, // 51 155
	33, 40, 31, // 52 158
	35, 33, 32, // 53 161
	35, 32, 57, // 54 164
	35, 57, 34, // 55 167
	28, 30, 36, // 56 170
	41, 44, 42, // 57 173
	45, 31, 40, // 58 176
	40, 42, 45, // 59 179
	44, 39, 38, // 60 182
	44, 38, 43, // 61 185
	0, 54, 46, // 62 188
	50, 53, 58, // 63 191
	58, 48, 50, // 64 194
	49, 59, 51, // 65 197
	50, 49, 51, // 66 200
	59, 49, 39, // 67 203
	47, 59, 39, // 68 206
	49, 48, 37, // 69 209
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_D_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_D_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_D_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_D_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_D_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_D_1_1__ )
DX3DMODEL_START( model_Trim_Char_D_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_D_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_D_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 210 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_D_1_1__, 3015424181 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_D_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_C_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_E_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_E_1_1___initialShadingGroup_0 )
DX3DVERT( 1.6375, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.6375, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.19583, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.19583, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.59844, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.59844, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.19583, 2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.6375, 2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.6375, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.3125, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.631248, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.631248, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.754166, 2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.754166, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.631248, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.19583, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.3125, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.631248, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.631248, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.3125, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.754166, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.19583, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.59844, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.3125, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.631248, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.631248, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.754166, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.754166, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.631248, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.19583, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.3125, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.631248, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.631248, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.3125, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.754166, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.19583, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.3125, 2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.3125, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.754166, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.3125, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_E_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_E_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 40 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_E_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_E_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_E_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	12, 6, 15, // 5 17
	16, 17, 18, // 6 20
	19, 11, 17, // 7 23
	20, 3, 21, // 8 26
	21, 5, 22, // 9 29
	23, 24, 25, // 10 32
	26, 27, 28, // 11 35
	26, 21, 29, // 12 38
	30, 31, 32, // 13 41
	33, 25, 31, // 14 44
	34, 2, 35, // 15 47
	1, 35, 2, // 16 50
	5, 21, 3, // 17 53
	8, 15, 6, // 18 56
	11, 19, 9, // 19 59
	14, 10, 9, // 20 62
	14, 36, 12, // 21 65
	9, 36, 14, // 22 68
	15, 13, 12, // 23 71
	18, 20, 26, // 24 74
	18, 28, 37, // 25 77
	18, 37, 16, // 26 80
	17, 16, 19, // 27 83
	21, 26, 20, // 28 86
	22, 29, 21, // 29 89
	25, 33, 23, // 30 92
	28, 24, 23, // 31 95
	28, 18, 26, // 32 98
	23, 37, 28, // 33 101
	29, 27, 26, // 34 104
	32, 34, 38, // 35 107
	32, 39, 30, // 36 110
	38, 39, 32, // 37 113
	31, 30, 33, // 38 116
	35, 38, 34, // 39 119
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_E_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_E_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_E_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_E_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_E_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_E_1_1__ )
DX3DMODEL_START( model_Trim_Char_E_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_E_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_E_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 120 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_E_1_1__, 1731393269 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_E_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_D_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_F_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_F_1_1___initialShadingGroup_0 )
DX3DVERT( 1.20885, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.6375, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.6375, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.59844, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.59844, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.20885, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.351563, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.670311, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.670311, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.351563, -4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.670311, -4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.351563, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.670311, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.670311, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.351563, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.780212, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.20885, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.59844, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.670311, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.670311, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.351563, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.670311, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.780212, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.20885, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.670311, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.780212, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.780212, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.670311, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.351563, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.20885, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.351563, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.780212, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.351563, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.351563, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_F_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_F_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 34 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_F_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_F_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_F_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 7, // 3 11
	11, 12, 13, // 4 14
	14, 8, 12, // 5 17
	15, 5, 16, // 6 20
	4, 17, 16, // 7 23
	18, 19, 20, // 8 26
	21, 18, 20, // 9 29
	22, 16, 23, // 10 32
	24, 25, 26, // 11 35
	19, 27, 28, // 12 38
	25, 0, 29, // 13 41
	2, 29, 0, // 14 44
	4, 16, 5, // 15 47
	8, 14, 6, // 16 50
	7, 6, 9, // 17 53
	13, 15, 22, // 18 56
	13, 21, 30, // 19 59
	13, 30, 11, // 20 62
	12, 11, 14, // 21 65
	16, 22, 15, // 22 68
	17, 23, 16, // 23 71
	19, 28, 20, // 24 74
	22, 31, 21, // 25 77
	20, 30, 21, // 26 80
	21, 13, 22, // 27 83
	23, 31, 22, // 28 86
	32, 27, 24, // 29 89
	26, 33, 24, // 30 92
	24, 33, 32, // 31 95
	27, 32, 28, // 32 98
	29, 26, 25, // 33 101
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_F_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_F_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_F_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_F_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_F_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_F_1_1__ )
DX3DMODEL_START( model_Trim_Char_F_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_F_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_F_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 102 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_F_1_1__, 447362357 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_F_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_E_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_G_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_G_1_1___initialShadingGroup_0 )
DX3DVERT( 1.65781, 2.78906, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.22189, 2.88382, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.22188, 2.67742, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.75469, 0.796554, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.75469, 1.21452, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.44375, 0.796554, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.75469, 0.378583, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.44375, 0.378583, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.44375, 0.33125, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.511368, 0.169594, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.689064, 0.169597, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.689064, 0.378583, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.689049, 0.046667, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.35041, 0.378562, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.422577, 0.267811, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.422661, 0.378583, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.10944, 0.241554, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.955467, 0.261254, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.955467, 0.169597, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.09711, -0.0393885, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.22189, -0.0338561, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.22188, 0.169597, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.955467, -0.0308287, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.744156, 0.37859, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.20816, 0.796551, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.525627, 0.796683, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.466019, 1.2145, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.689102, 0.438275, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.75469, 1.6325, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.75469, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.22188, 1.6325, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.211067, 2.05046, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.161003, 1.63251, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.466354, 1.6325, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.156212, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.160965, 1.21453, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.460373, 1.42139, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.22188, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.44375, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.839066, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.839066, 1.6325, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.22188, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.689049, 2.78632, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.529312, 2.67739, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.689064, 2.67742, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.525032, 2.05046, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.689026, 2.39839, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.422661, 2.46844, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.422691, 2.56211, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.689064, 2.46844, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.360695, 2.46823, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.757042, 2.46845, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.955467, 2.87189, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.955467, 2.67742, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.15717, 2.60534, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.22188, 2.60302, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.65781, 2.4875, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.44375, 1.21452, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.75469, 0.117188, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.22186, 0.251373, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.839066, 1.67656, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.1394, 2.88652, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.955467, 2.57773, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_G_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_G_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 63 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_G_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_G_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_G_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	9, 12, 10, // 4 14
	13, 14, 15, // 5 17
	16, 17, 18, // 6 20
	19, 20, 21, // 7 23
	12, 22, 18, // 8 26
	23, 11, 10, // 9 29
	24, 25, 26, // 10 32
	15, 27, 25, // 11 35
	6, 3, 7, // 12 38
	11, 23, 27, // 13 41
	28, 29, 30, // 14 44
	31, 32, 33, // 15 47
	34, 35, 36, // 16 50
	30, 37, 38, // 17 53
	39, 37, 30, // 18 56
	40, 30, 41, // 19 59
	42, 43, 44, // 20 62
	45, 46, 47, // 21 65
	48, 47, 49, // 22 68
	48, 50, 47, // 23 71
	49, 46, 51, // 24 74
	52, 53, 2, // 25 77
	54, 55, 2, // 26 80
	44, 49, 51, // 27 83
	42, 44, 53, // 28 86
	55, 56, 0, // 29 89
	0, 2, 55, // 30 92
	4, 57, 5, // 31 95
	21, 20, 58, // 32 98
	8, 58, 6, // 33 101
	58, 8, 59, // 34 104
	59, 21, 58, // 35 107
	11, 15, 14, // 36 110
	14, 9, 11, // 37 113
	21, 59, 16, // 38 116
	16, 18, 21, // 39 119
	21, 18, 22, // 40 122
	21, 22, 19, // 41 125
	18, 10, 12, // 42 128
	10, 18, 17, // 43 131
	10, 17, 23, // 44 134
	26, 35, 24, // 45 137
	15, 11, 27, // 46 140
	25, 24, 13, // 47 143
	13, 15, 25, // 48 146
	3, 5, 7, // 49 149
	29, 41, 30, // 50 152
	33, 45, 31, // 51 155
	35, 26, 36, // 52 158
	36, 33, 32, // 53 161
	32, 34, 36, // 54 164
	38, 57, 4, // 55 167
	38, 28, 30, // 56 170
	4, 28, 38, // 57 173
	30, 40, 39, // 58 176
	41, 60, 40, // 59 179
	46, 49, 47, // 60 182
	50, 31, 45, // 61 185
	45, 47, 50, // 62 188
	49, 44, 43, // 63 191
	49, 43, 48, // 64 194
	2, 1, 61, // 65 197
	61, 52, 2, // 66 200
	53, 62, 54, // 67 203
	2, 53, 54, // 68 206
	62, 53, 44, // 69 209
	51, 62, 44, // 70 212
	53, 52, 42, // 71 215
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_G_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_G_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_G_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_G_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_G_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_G_1_1__ )
DX3DMODEL_START( model_Trim_Char_G_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_G_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_G_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 216 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_G_1_1__, 3458298741 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_G_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_F_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_H_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_H_1_1___initialShadingGroup_0 )
DX3DVERT( 1.71562, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.71562, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.38906, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.38906, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.71562, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.71562, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.38906, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.71562, 1.38344e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.71562, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.234375, 1.38344e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.545311, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.545311, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.234375, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.545311, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.545311, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.234375, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.38906, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.71562, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.38906, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.38906, 1.68438, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.545311, 1.68438, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.545311, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.728127, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.234375, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.38906, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.38906, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.728127, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.22188, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.22188, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.22188, 1.68438, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.234375, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.545311, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.545311, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.234375, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.545311, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.38906, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.71562, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.728127, 1.68438, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.234375, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.234375, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_H_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_H_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 40 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_H_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_H_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_H_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 11, 13, // 5 17
	16, 8, 4, // 6 20
	17, 18, 19, // 7 23
	20, 21, 22, // 8 26
	23, 14, 21, // 9 29
	24, 25, 5, // 10 32
	26, 27, 28, // 11 35
	22, 28, 29, // 12 38
	30, 31, 32, // 13 41
	33, 34, 31, // 14 44
	17, 0, 18, // 15 47
	1, 35, 2, // 16 50
	5, 25, 3, // 17 53
	8, 16, 6, // 18 56
	11, 15, 9, // 19 59
	14, 23, 12, // 20 62
	13, 12, 15, // 21 65
	4, 3, 16, // 22 68
	19, 29, 28, // 23 71
	19, 24, 36, // 24 74
	19, 36, 17, // 25 77
	22, 37, 20, // 26 80
	20, 34, 33, // 27 83
	33, 38, 20, // 28 86
	21, 26, 22, // 29 89
	21, 38, 23, // 30 92
	21, 20, 38, // 31 95
	28, 27, 24, // 32 98
	5, 36, 24, // 33 101
	24, 19, 28, // 34 104
	28, 22, 26, // 35 107
	29, 37, 22, // 36 110
	32, 39, 30, // 37 113
	31, 30, 33, // 38 116
	0, 2, 18, // 39 119
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_H_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_H_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_H_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_H_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_H_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_H_1_1__ )
DX3DMODEL_START( model_Trim_Char_H_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_H_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_H_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 120 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_H_1_1__, 2174267829 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_H_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_G_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_I_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_I_1_1___initialShadingGroup_0 )
DX3DVERT( 1.18282, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.59844, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.59844, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.13906, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.13906, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.810936, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.13906, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.13906, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.810936, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.351563, 1.18829e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.767189, -7.40149e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.767189, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.18282, -1.4803e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.59844, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.59844, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.810936, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.810936, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.13906, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.13906, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.810936, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.810936, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.351563, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.767189, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.767189, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.13906, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.810936, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.18282, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.810936, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.351563, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.18282, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.13906, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.351563, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.810936, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.13906, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_I_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_I_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 34 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_I_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_I_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_I_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 10, 12, // 5 17
	7, 3, 16, // 6 20
	17, 18, 19, // 7 23
	4, 17, 20, // 8 26
	21, 22, 23, // 9 29
	18, 24, 25, // 10 32
	26, 23, 27, // 11 35
	2, 26, 0, // 12 38
	4, 20, 5, // 13 41
	7, 16, 8, // 14 44
	11, 28, 9, // 15 47
	14, 29, 12, // 16 50
	30, 6, 15, // 17 53
	15, 11, 10, // 18 56
	12, 29, 30, // 19 59
	30, 15, 12, // 20 62
	6, 8, 15, // 21 65
	3, 5, 16, // 22 68
	18, 25, 19, // 23 71
	17, 19, 20, // 24 74
	23, 31, 21, // 25 77
	24, 32, 25, // 26 80
	32, 24, 33, // 27 83
	23, 22, 27, // 28 86
	33, 0, 26, // 29 89
	26, 27, 33, // 30 92
	33, 27, 32, // 31 95
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_I_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_I_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_I_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_I_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_I_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_I_1_1__ )
DX3DMODEL_START( model_Trim_Char_I_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_I_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_I_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_I_1_1__, 890236917 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_I_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_H_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_J_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_J_1_1___initialShadingGroup_0 )
DX3DVERT( 1.22813, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.22813, 2.4861, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.55936, 2.4861, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.22813, 1.04298, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.55964, 1.04298, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.55946, 1.40376, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.22648, 0.682196, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.11821, 0.351425, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.33907, 0.321418, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.450089, 0.321401, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.234375, 0.417188, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.234375, 0.321418, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.234375, 0.0781262, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.39344, 0.141018, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.49968, 0.321413, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.82843, 0.242501, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.820366, -0.0394184, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.11816, -0.00776524, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.33907, 0.0915587, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.33907, 0.141028, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.11813, 0.141028, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.08599, 0.321283, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.11813, 0.321418, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.22808, 0.753126, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.55855, 0.6822, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.56001, 0.785333, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.22813, 1.76454, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.55938, 1.76454, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.55935, 2.12532, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.22813, 1.40376, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.584373, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.676254, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.676254, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.22813, 2.12532, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.11813, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.11813, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.55938, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.676254, -0.0330616, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.676285, 0.258971, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.584373, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_J_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_J_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 40 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_J_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_J_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_J_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	9, 11, 12, // 4 14
	13, 14, 8, // 5 17
	15, 16, 17, // 6 20
	18, 13, 19, // 7 23
	18, 19, 20, // 8 26
	20, 19, 8, // 9 29
	7, 21, 22, // 10 32
	23, 24, 25, // 11 35
	26, 27, 28, // 12 38
	29, 5, 27, // 13 41
	30, 31, 32, // 14 44
	33, 28, 2, // 15 47
	31, 34, 35, // 16 50
	35, 34, 0, // 17 53
	2, 36, 0, // 18 56
	0, 36, 35, // 19 59
	5, 29, 3, // 20 62
	7, 22, 8, // 21 65
	14, 24, 6, // 22 68
	8, 14, 6, // 23 71
	12, 37, 38, // 24 74
	12, 38, 9, // 25 77
	8, 19, 13, // 26 80
	15, 38, 37, // 27 83
	20, 22, 21, // 28 86
	20, 21, 15, // 29 89
	15, 17, 20, // 30 92
	37, 16, 15, // 31 95
	20, 17, 18, // 32 98
	8, 22, 20, // 33 101
	23, 6, 24, // 34 104
	4, 3, 23, // 35 107
	25, 4, 23, // 36 110
	28, 33, 26, // 37 113
	27, 26, 29, // 38 116
	32, 39, 30, // 39 119
	2, 1, 33, // 40 122
	35, 32, 31, // 41 125
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_J_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_J_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_J_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_J_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_J_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_J_1_1__ )
DX3DMODEL_START( model_Trim_Char_J_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_J_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_J_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 126 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_J_1_1__, 3901173301 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_J_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_I_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_K_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_K_1_1___initialShadingGroup_0 )
DX3DVERT( 1.5327, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.79375, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.42344, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.30677, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.32156, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.30677, 0.837827, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.56782, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.30677, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.30677, 0.23367, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.292191, 1.41727e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.612503, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.612503, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.20535, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.292191, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.612503, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.612503, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.292191, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.966934, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.0106, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.27165, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.916054, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.292191, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.612503, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.612503, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.728523, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.799477, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.799477, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.07532, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.917191, 1.48125, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.292191, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.612503, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.612503, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.292191, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.30677, 2.0882, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.30677, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.16975, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.30677, 2.65985, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.799477, 1.09905, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.799477, 1.8466, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.662361, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.44375, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.81406, 1.41727e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.292191, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.612503, 1.55938, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.612503, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.620316, 1.40469, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.620316, 1.55938, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.292191, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_K_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_K_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 48 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_K_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_K_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_K_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	7, 12, 8, // 4 14
	13, 14, 15, // 5 17
	16, 11, 14, // 6 20
	7, 6, 4, // 7 23
	12, 7, 3, // 8 26
	17, 3, 5, // 9 29
	18, 19, 20, // 10 32
	21, 22, 23, // 11 35
	24, 25, 26, // 12 38
	25, 27, 28, // 13 41
	29, 30, 31, // 14 44
	32, 23, 30, // 15 47
	33, 0, 34, // 16 50
	33, 34, 35, // 17 53
	36, 35, 34, // 18 56
	25, 24, 37, // 19 59
	26, 38, 39, // 20 62
	36, 34, 0, // 21 65
	0, 2, 36, // 22 68
	40, 41, 6, // 23 71
	8, 40, 6, // 24 74
	11, 16, 9, // 25 77
	15, 42, 13, // 26 80
	14, 13, 16, // 27 83
	4, 3, 7, // 28 86
	3, 17, 12, // 29 89
	27, 25, 37, // 30 92
	27, 37, 17, // 31 95
	5, 27, 17, // 32 98
	38, 26, 18, // 33 101
	18, 20, 38, // 34 104
	23, 32, 21, // 35 107
	43, 22, 21, // 36 110
	44, 45, 46, // 37 113
	26, 39, 46, // 38 116
	26, 46, 45, // 39 119
	26, 45, 24, // 40 122
	46, 43, 44, // 41 125
	42, 15, 44, // 42 128
	21, 42, 43, // 43 131
	44, 43, 42, // 44 134
	28, 18, 26, // 45 137
	26, 25, 28, // 46 140
	31, 47, 29, // 47 143
	30, 29, 32, // 48 146
	20, 19, 33, // 49 149
	33, 35, 20, // 50 152
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_K_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_K_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_K_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_K_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_K_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_K_1_1__ )
DX3DMODEL_START( model_Trim_Char_K_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_K_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_K_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 153 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_K_1_1__, 2617142389 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_K_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_J_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_L_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_L_1_1___initialShadingGroup_0 )
DX3DVERT( 0.390625, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.709373, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.709373, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.390625, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.709373, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.709373, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.22188, 1.4803e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.6375, 3.40873e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.6375, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.390625, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.709373, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.709373, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.806252, 7.40149e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.806252, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.709373, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.22188, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.390625, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.390625, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.709373, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.709373, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.390625, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.390625, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.390625, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.390625, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_L_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_L_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_L_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_L_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_L_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	12, 6, 15, // 5 17
	16, 11, 4, // 6 20
	17, 18, 19, // 7 23
	20, 5, 18, // 8 26
	21, 19, 1, // 9 29
	2, 22, 0, // 10 32
	5, 20, 3, // 11 35
	8, 15, 6, // 12 38
	11, 16, 9, // 13 41
	14, 10, 9, // 14 44
	14, 23, 12, // 15 47
	9, 23, 14, // 16 50
	15, 13, 12, // 17 53
	4, 3, 16, // 18 56
	19, 21, 17, // 19 59
	18, 17, 20, // 20 62
	1, 0, 21, // 21 65
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_L_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_L_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_L_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_L_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_L_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_L_1_1__ )
DX3DMODEL_START( model_Trim_Char_L_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_L_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_L_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 66 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_L_1_1__, 1333111477 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_L_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_K_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_M_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_M_1_1___initialShadingGroup_0 )
DX3DVERT( 1.79375, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.79375, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.45156, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.79375, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.79375, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.47344, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.47344, 2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.79375, 5.95444e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.79375, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.15625, 2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.460938, 5.95444e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.460938, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.15625, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.460938, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.460938, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.15625, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.47344, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.802246, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.810936, 0.779689, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.12344, 0.779689, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.944298, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.702087, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.702087, 1.20168, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.79375, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.79375, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.47344, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.15625, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.460938, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.460938, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.15625, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.47344, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.01988, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.23704, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.24792, 1.26226, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.23572, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.1278, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.24792, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.514061, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.15625, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.15625, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.702087, 2.13594, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.62162, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.46875, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.24792, 2.07945, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.24792, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.44685, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.697334, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.34195, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.702087, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.487518, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.59243, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.702087, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.836739, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.729179, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.34364, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.13213, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.985939, 1.09219, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.978127, 1.09219, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.47344, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.15625, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.460938, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.47344, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.46563, 2.10625, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_M_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_M_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 63 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_M_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_M_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_M_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 11, 13, // 5 17
	8, 3, 16, // 6 20
	17, 18, 19, // 7 23
	20, 21, 22, // 8 26
	23, 24, 25, // 9 29
	26, 27, 28, // 10 32
	29, 14, 27, // 11 35
	4, 23, 30, // 12 38
	31, 32, 33, // 13 41
	34, 35, 36, // 14 44
	37, 38, 39, // 15 47
	40, 41, 42, // 16 50
	43, 44, 45, // 17 53
	43, 34, 44, // 18 56
	21, 46, 22, // 19 59
	44, 36, 47, // 20 62
	48, 49, 50, // 21 65
	51, 50, 46, // 22 68
	47, 36, 33, // 23 71
	52, 51, 21, // 24 74
	53, 48, 51, // 25 77
	53, 40, 48, // 26 80
	2, 54, 0, // 27 83
	4, 30, 5, // 28 86
	8, 16, 6, // 29 89
	11, 15, 9, // 30 92
	14, 29, 12, // 31 95
	13, 12, 15, // 32 98
	3, 5, 16, // 33 101
	19, 55, 17, // 34 104
	32, 31, 56, // 35 107
	22, 17, 57, // 36 110
	22, 57, 20, // 37 113
	57, 17, 55, // 38 116
	56, 55, 32, // 39 119
	55, 56, 57, // 40 122
	24, 58, 25, // 41 125
	28, 59, 26, // 42 128
	27, 26, 29, // 43 131
	23, 25, 30, // 44 134
	33, 36, 35, // 45 137
	33, 35, 31, // 46 140
	36, 44, 34, // 47 143
	39, 41, 37, // 48 146
	59, 28, 60, // 49 149
	49, 48, 40, // 50 152
	40, 42, 49, // 51 155
	60, 42, 41, // 52 158
	60, 39, 59, // 53 161
	41, 39, 60, // 54 164
	61, 58, 24, // 55 167
	62, 54, 43, // 56 170
	45, 62, 43, // 57 173
	54, 62, 61, // 58 176
	24, 0, 61, // 59 179
	61, 0, 54, // 60 182
	47, 45, 44, // 61 185
	50, 51, 48, // 62 188
	46, 21, 51, // 63 191
	21, 20, 52, // 64 194
	51, 52, 53, // 65 197
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_M_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_M_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_M_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_M_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_M_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_M_1_1__ )
DX3DMODEL_START( model_Trim_Char_M_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_M_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_M_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 198 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_M_1_1__, 49080565 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_M_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_L_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_N_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_N_1_1___initialShadingGroup_0 )
DX3DVERT( 1.69688, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.69688, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.38438, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.69688, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.69688, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.38438, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.38438, -6.66134e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.69688, -3.08867e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.69688, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.253128, 4.8399e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.581253, -6.66134e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.581253, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.253128, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.581253, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.581253, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.253128, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.38438, 0.701563, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.21563, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.08283, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.21563, 0.455194, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.21563, 1.13568, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.18433, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.93206, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.69688, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.69688, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.38438, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.253128, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.581253, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.581253, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.253128, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.38438, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.03356, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.781296, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.88279, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.734375, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.734375, 1.75334, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.581253, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.253128, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.253128, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.253128, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.581253, 2.14531, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.38438, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.734375, 2.43383, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.33511, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.630524, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.38438, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.2336, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.37656, 0.701563, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.732025, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.589066, 2.14531, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_N_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_N_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 50 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_N_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_N_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_N_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 11, 13, // 5 17
	3, 5, 16, // 6 20
	17, 18, 19, // 7 23
	20, 21, 22, // 8 26
	23, 24, 25, // 9 29
	26, 27, 28, // 10 32
	29, 14, 27, // 11 35
	4, 23, 30, // 12 38
	31, 32, 22, // 13 41
	33, 34, 35, // 14 44
	36, 37, 38, // 15 47
	39, 28, 40, // 16 50
	24, 0, 41, // 17 53
	33, 42, 34, // 18 56
	43, 20, 17, // 19 59
	34, 44, 35, // 20 62
	1, 45, 2, // 21 65
	4, 30, 5, // 22 68
	8, 46, 6, // 23 71
	11, 15, 9, // 24 74
	14, 29, 12, // 25 77
	13, 12, 15, // 26 80
	19, 46, 8, // 27 83
	16, 47, 8, // 28 86
	16, 8, 3, // 29 89
	47, 43, 17, // 30 92
	47, 17, 19, // 31 95
	8, 47, 19, // 32 98
	18, 17, 20, // 33 101
	22, 18, 20, // 34 104
	24, 41, 25, // 35 107
	28, 39, 26, // 36 110
	27, 26, 29, // 37 113
	23, 25, 30, // 38 116
	22, 21, 31, // 39 119
	35, 32, 31, // 40 122
	31, 33, 35, // 41 125
	38, 48, 36, // 42 128
	42, 48, 38, // 43 131
	40, 49, 38, // 44 134
	40, 38, 39, // 45 137
	49, 44, 34, // 46 140
	49, 34, 42, // 47 143
	38, 49, 42, // 48 146
	0, 2, 41, // 49 149
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_N_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_N_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_N_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_N_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_N_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_N_1_1__ )
DX3DMODEL_START( model_Trim_Char_N_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_N_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_N_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 150 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_N_1_1__, 3060016949 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_N_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_M_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_O_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_O_1_1___initialShadingGroup_0 )
DX3DVERT( 1.5023, 2.67721, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.24796, 2.84314, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.24792, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.75317, 0.796651, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.79025, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.47759, 1.21451, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.52085, 0.190797, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.63926, 0.378907, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.52084, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.495445, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.834641, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.834633, 0.262439, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.495163, 0.123479, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.834633, -0.0288324, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.447701, 0.169669, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.495445, 0.378796, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.24792, 0.169867, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.24777, 0.337657, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.975754, 0.241139, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.24792, 0.00385644, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.50211, 0.16985, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.28564, 0.379023, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.196877, 0.796656, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.512344, 0.796694, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.471939, 1.2145, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.662712, 0.378781, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.43795, 0.796655, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.75313, 2.05022, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.43784, 2.05018, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.47775, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.196678, 2.05023, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.159737, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.472336, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.15596, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.159584, 1.2145, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.468178, 1.41976, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.79404, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.79042, 1.63237, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.48154, 1.42875, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.834641, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.834663, 2.87551, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.495422, 2.72344, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.31015, 2.46797, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.511841, 2.05023, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.834618, 2.58495, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.495445, 2.67701, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.356255, 2.55625, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.495445, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.447403, 2.67703, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.52084, 2.46808, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.28558, 2.46751, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.974998, 2.88617, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.974121, 2.60577, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.63888, 2.46779, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.52098, 2.65619, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.24775, 2.50937, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.696877, 0.340626, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.311127, 0.379084, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.974998, -0.0392877, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.664268, 2.46791, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_O_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_O_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 60 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_O_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_O_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_O_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 10, // 4 14
	14, 12, 9, // 5 17
	14, 9, 15, // 6 20
	16, 17, 18, // 7 23
	19, 20, 16, // 8 26
	8, 21, 17, // 9 29
	22, 23, 24, // 10 32
	15, 25, 23, // 11 35
	26, 21, 8, // 12 38
	27, 28, 29, // 13 41
	30, 31, 32, // 14 44
	33, 34, 35, // 15 47
	36, 37, 38, // 16 50
	39, 40, 41, // 17 53
	42, 30, 43, // 18 56
	44, 39, 45, // 19 59
	46, 42, 47, // 20 62
	41, 48, 45, // 21 65
	49, 50, 28, // 22 68
	1, 51, 52, // 23 71
	53, 54, 49, // 24 74
	55, 50, 49, // 25 77
	5, 26, 3, // 26 80
	56, 25, 15, // 27 83
	56, 15, 9, // 28 86
	11, 56, 9, // 29 89
	10, 9, 12, // 30 92
	15, 57, 14, // 31 95
	18, 11, 10, // 32 98
	18, 13, 58, // 33 101
	18, 58, 19, // 34 104
	18, 19, 16, // 35 107
	10, 13, 18, // 36 110
	20, 6, 8, // 37 113
	16, 20, 8, // 38 116
	17, 16, 8, // 39 119
	24, 34, 22, // 40 122
	23, 22, 57, // 41 125
	23, 57, 15, // 42 128
	7, 3, 26, // 43 131
	26, 8, 7, // 44 134
	29, 37, 27, // 45 137
	32, 43, 30, // 46 140
	34, 24, 35, // 47 143
	35, 32, 31, // 48 146
	31, 33, 35, // 49 149
	37, 29, 38, // 50 152
	38, 5, 4, // 51 155
	4, 36, 38, // 52 158
	41, 45, 39, // 53 161
	43, 59, 47, // 54 164
	47, 42, 43, // 55 167
	45, 47, 59, // 56 170
	45, 59, 44, // 57 173
	47, 45, 48, // 58 176
	48, 46, 47, // 59 179
	28, 27, 53, // 60 182
	53, 49, 28, // 61 185
	39, 44, 52, // 62 188
	51, 40, 52, // 63 191
	52, 55, 2, // 64 194
	2, 1, 52, // 65 197
	52, 40, 39, // 66 200
	49, 54, 0, // 67 203
	49, 0, 2, // 68 206
	49, 2, 55, // 69 209
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_O_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_O_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_O_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_O_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_O_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_O_1_1__ )
DX3DMODEL_START( model_Trim_Char_O_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_O_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_O_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 210 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_O_1_1__, 1775986037 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_O_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_N_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_P_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_P_1_1___initialShadingGroup_0 )
DX3DVERT( 0.786461, 2.88354, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.786461, 2.60923, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.612503, 2.58125, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.612503, 1.17031, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.612503, 0.824613, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.292191, 0.824613, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.612503, -6.66134e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.292191, -3.02362e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.292191, 0.412307, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.39929, 1.23685, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.28084, 1.19297, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.28073, 1.23692, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 0.612503, 0.412307, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 0.931419, 1.14959, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 0.786446, 1.15428, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 0.786461, 1.23692, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 0.292191, 1.64923, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 0.292191, 2.06153, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 0.612503, 1.64923, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.52786, 1.64923, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.38785, 1.64946, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.4625, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.52786, 1.44307, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.28073, 1.44307, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.28052, 1.52478, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.64076, 1.44346, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.52766, 1.31675, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.612503, 1.44375, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.881996, 1.42329, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 1.52724, 2.71641, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 1.52786, 2.67999, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.28073, 2.67999, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.43596, 2.2677, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.32186, 2.47381, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.52786, 2.47384, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.46214, 2.06153, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.52786, 2.26769, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.75826, 2.26772, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.77473, 2.06153, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.52786, 2.06153, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.70286, 2.47396, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1.28073, 2.50904, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 1.56911, 2.67999, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 0.292191, 2.47384, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 0.612503, 2.06153, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 0.886429, 2.61278, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 0.612503, 2.47384, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 0.292191, 2.82813, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 0.292191, 1.23692, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 1.775, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 1.73135, 1.6492, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 0.786453, 1.42561, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 1.28073, 2.8411, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 0.906494, 2.88615, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_P_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_P_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 54 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_P_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_P_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_P_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 8, 5, // 4 14
	13, 14, 15, // 5 17
	16, 17, 18, // 6 20
	19, 20, 21, // 7 23
	22, 23, 24, // 8 26
	9, 11, 23, // 9 29
	25, 26, 22, // 10 32
	25, 22, 19, // 11 35
	16, 18, 27, // 12 38
	11, 15, 28, // 13 41
	29, 30, 31, // 14 44
	32, 33, 34, // 15 47
	35, 32, 36, // 16 50
	37, 38, 39, // 17 53
	40, 37, 36, // 18 56
	41, 31, 30, // 19 59
	42, 40, 34, // 20 62
	29, 42, 30, // 21 65
	17, 43, 44, // 22 68
	31, 41, 45, // 23 71
	2, 46, 43, // 24 74
	2, 47, 0, // 25 77
	43, 47, 2, // 26 80
	15, 14, 3, // 27 83
	3, 27, 15, // 28 86
	5, 48, 3, // 29 89
	8, 12, 6, // 30 92
	5, 4, 12, // 31 95
	15, 11, 10, // 32 98
	10, 13, 15, // 33 101
	17, 44, 18, // 34 104
	21, 35, 39, // 35 107
	21, 38, 49, // 36 110
	21, 49, 50, // 37 113
	21, 50, 19, // 38 116
	39, 38, 21, // 39 119
	20, 19, 22, // 40 122
	24, 20, 22, // 41 125
	23, 22, 26, // 42 128
	23, 26, 9, // 43 131
	19, 50, 25, // 44 134
	27, 51, 15, // 45 137
	27, 3, 48, // 46 140
	27, 48, 16, // 47 143
	15, 51, 28, // 48 146
	28, 24, 23, // 49 149
	23, 11, 28, // 50 152
	31, 52, 29, // 51 155
	34, 36, 32, // 52 158
	36, 39, 35, // 53 161
	39, 36, 37, // 54 164
	36, 34, 40, // 55 167
	30, 34, 33, // 56 170
	30, 33, 41, // 57 173
	34, 30, 42, // 58 176
	43, 46, 44, // 59 179
	45, 1, 0, // 60 182
	45, 53, 52, // 61 185
	45, 52, 31, // 62 188
	0, 53, 45, // 63 191
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_P_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_P_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_P_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_P_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_P_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_P_1_1__ )
DX3DMODEL_START( model_Trim_Char_P_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_P_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_P_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 192 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_P_1_1__, 491955125 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_P_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_O_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_Q_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_Q_1_1___initialShadingGroup_0 )
DX3DVERT( 1.5362, 2.63839, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.29997, 2.82249, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.29988, 2.63806, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.645, 0.407143, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.76575, 0.902902, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.45377, 0.902932, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.52812, -0.584375, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.87188, -0.584375, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.61354, -0.0886141, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.29988, -0.0886157, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.21404, -0.0886168, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.29989, -0.144053, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.49659, 0.902946, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.182358, 0.902907, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.298721, 0.407304, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.457863, 0.159154, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.72789, 0.159264, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.642632, 0.407074, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.727852, -0.00475894, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.441864, 0.176286, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.441895, 0.407143, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.30599, 0.407235, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.29988, 0.283204, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.29967, 0.397944, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.16872, 0.283021, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.29988, 0.159264, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.01386, -0.0406712, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.01389, 0.159264, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.01389, 0.242614, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.975754, 0.241139, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.15688, 0.159264, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.15697, 0.277486, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.77238, 1.89437, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.45961, 1.89442, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.48154, 1.42875, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.15583, 1.42403, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.155869, 1.39866, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.468178, 1.41976, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.468193, 1.39866, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.79411, 1.39866, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.48148, 1.39866, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.441879, 2.67105, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.441895, 2.63806, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.72789, 2.63806, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.278374, 2.38997, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.176964, 1.89445, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.490273, 1.8944, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.727852, 2.53093, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.356255, 2.55625, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.441895, 2.39018, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.41362, 2.63807, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.58588, 2.39018, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.33432, 2.38976, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.01389, 2.88522, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.01389, 2.63806, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.15688, 2.63806, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.24266, 2.514, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.29988, 2.51412, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.974121, 2.60577, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.29988, 2.4497, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.01389, 2.60414, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.15689, 2.56833, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.727898, 2.85152, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.67083, 2.39001, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.58586, 2.56767, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 0.72789, 0.315277, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.696877, 0.340626, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 1.40469, 0.0734386, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.40469, 0.0812512, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 1.79414, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.615143, 2.39018, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.974998, 2.88598, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_Q_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_Q_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 72 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_Q_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_Q_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_Q_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 16, 17, // 5 17
	15, 18, 16, // 6 20
	14, 19, 20, // 7 23
	3, 21, 22, // 8 26
	22, 23, 24, // 9 29
	10, 9, 25, // 10 32
	18, 26, 27, // 11 35
	27, 28, 29, // 12 38
	25, 22, 24, // 13 41
	30, 31, 28, // 14 44
	32, 33, 34, // 15 47
	35, 36, 37, // 16 50
	13, 12, 38, // 17 53
	4, 39, 40, // 18 56
	41, 42, 43, // 19 59
	44, 45, 46, // 20 62
	47, 43, 42, // 21 65
	48, 44, 49, // 22 68
	41, 50, 42, // 23 71
	51, 52, 33, // 24 74
	53, 54, 55, // 25 77
	56, 57, 2, // 26 80
	43, 47, 58, // 27 83
	56, 59, 57, // 28 86
	60, 61, 55, // 29 89
	62, 43, 54, // 30 92
	63, 64, 51, // 31 95
	0, 57, 52, // 32 98
	5, 21, 3, // 33 101
	8, 9, 11, // 34 104
	11, 6, 8, // 35 107
	20, 17, 12, // 36 110
	12, 14, 20, // 37 113
	16, 65, 66, // 38 116
	17, 20, 19, // 39 119
	17, 19, 15, // 40 122
	66, 17, 16, // 41 125
	9, 8, 67, // 42 128
	21, 23, 22, // 43 131
	25, 68, 3, // 44 134
	22, 25, 3, // 45 137
	67, 68, 25, // 46 140
	25, 9, 67, // 47 143
	30, 27, 26, // 48 146
	30, 26, 10, // 49 149
	25, 30, 10, // 50 152
	27, 16, 18, // 51 155
	29, 65, 16, // 52 158
	29, 16, 27, // 53 161
	31, 30, 25, // 54 164
	25, 24, 31, // 55 167
	28, 27, 30, // 56 170
	40, 39, 69, // 57 173
	34, 40, 69, // 58 176
	69, 32, 34, // 59 179
	36, 38, 37, // 60 182
	37, 46, 45, // 61 185
	37, 45, 35, // 62 188
	38, 36, 13, // 63 191
	40, 5, 4, // 64 194
	43, 62, 41, // 65 197
	46, 70, 49, // 66 200
	49, 44, 46, // 67 203
	42, 49, 70, // 68 206
	42, 70, 47, // 69 209
	49, 42, 50, // 70 212
	50, 48, 49, // 71 215
	32, 63, 51, // 72 218
	51, 33, 32, // 73 221
	2, 1, 53, // 74 224
	55, 2, 53, // 75 227
	2, 55, 61, // 76 230
	2, 61, 56, // 77 233
	58, 60, 54, // 78 236
	54, 43, 58, // 79 239
	55, 54, 60, // 80 242
	54, 53, 71, // 81 245
	71, 62, 54, // 82 248
	57, 59, 52, // 83 251
	52, 51, 64, // 84 254
	52, 64, 0, // 85 257
	57, 0, 2, // 86 260
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_Q_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_Q_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_Q_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_Q_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_Q_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_Q_1_1__ )
DX3DMODEL_START( model_Trim_Char_Q_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_Q_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_Q_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 261 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_Q_1_1__, 3502891509 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_Q_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_P_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_R_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_R_1_1___initialShadingGroup_0 )
DX3DVERT( 0.273438, 2.47366, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.273438, 2.82813, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.592186, 2.58125, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.592186, 0.824554, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.273438, 0.824554, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.273438, 1.23683, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.592186, 0, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.273438, 0, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.273438, 0.412277, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.71203, 0.412267, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.83281, 0, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.49688, 0, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.59077, 0.824692, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.31302, 0.824554, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.31302, 1.03069, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.38485, 0.412389, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 0.592186, 0.412277, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.27281, 0.824589, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.3137, 0.674317, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 0.942581, 1.23683, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.05312, 1.23683, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.05312, 1.20447, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.31302, 1.23683, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.20381, 1.03069, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 0.273438, 1.64911, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.273438, 2.06138, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.592186, 1.64911, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.44308, 2.06138, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 1.57291, 2.06138, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 1.57291, 1.85525, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 1.48246, 1.44294, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.31302, 1.44297, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.31302, 1.64911, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.32969, 1.34531, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.42906, 1.23673, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.65638, 1.64909, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.57296, 1.52787, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.57291, 1.64911, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.313, 1.65985, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.75451, 2.06137, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.73006, 1.85525, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 0.592186, 1.24844, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 0.592186, 1.23683, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 1.05312, 1.44297, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 0.793228, 1.44297, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 0.793228, 1.5199, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 0.793228, 1.24826, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.05312, 1.53882, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 1.30193, 1.64915, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 1.31308, 2.82648, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 1.5583, 2.6797, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 1.31302, 2.6798, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 1.31316, 2.4734, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 1.57291, 2.47366, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 1.44375, 2.10625, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 1.42635, 2.26757, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 1.57291, 2.26752, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 1.75523, 2.10625, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 1.69329, 2.47352, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.74458, 2.26746, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 1.57285, 2.66495, 0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 0.592186, 2.06138, 0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 1.05312, 2.87922, 0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( 1.05312, 2.6798, 0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( 0.793228, 2.6798, 0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( 0.865623, 2.61262, 0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( 0.793228, 2.61093, 0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( 0.793213, 2.88499, 0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( 0.592186, 2.47366, 0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( 1.41596, 1.85525, 0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( 1.32969, 1.35313, 0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT( 0.592186, 1.52031, 0 ) DX3DVNORM( 0, 0, -1 )  //71
DX3DVERT( 0.757393, 1.5198, 0 ) DX3DVNORM( 0, 0, -1 )  //72
DX3DVERT( 0.896881, 2.88634, 0 ) DX3DVNORM( 0, 0, -1 )  //73
DX3DVERT( 1.05314, 2.59652, 0 ) DX3DVNORM( 0, 0, -1 )  //74
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_R_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_R_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 75 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_R_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_R_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_R_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	12, 9, 15, // 5 17
	16, 8, 4, // 6 20
	17, 13, 18, // 7 23
	19, 20, 21, // 8 26
	14, 13, 17, // 9 29
	22, 14, 23, // 10 32
	24, 25, 26, // 11 35
	27, 28, 29, // 12 38
	30, 31, 32, // 13 41
	33, 34, 22, // 14 44
	35, 36, 37, // 15 47
	37, 32, 38, // 16 50
	35, 37, 29, // 17 53
	28, 39, 40, // 18 56
	41, 42, 5, // 19 59
	43, 44, 45, // 20 62
	46, 44, 43, // 21 65
	22, 20, 43, // 22 68
	31, 43, 47, // 23 71
	38, 32, 48, // 24 74
	49, 50, 51, // 25 77
	52, 52, 53, // 26 80
	54, 55, 56, // 27 83
	57, 39, 28, // 28 86
	58, 59, 56, // 29 89
	60, 53, 52, // 30 92
	60, 58, 53, // 31 95
	25, 0, 61, // 32 98
	52, 52, 52, // 33 101
	62, 63, 64, // 34 104
	65, 66, 64, // 35 107
	51, 52, 52, // 36 110
	49, 51, 63, // 37 113
	1, 67, 64, // 38 116
	2, 68, 0, // 39 119
	66, 2, 64, // 40 122
	1, 64, 2, // 41 125
	5, 42, 3, // 42 128
	8, 16, 6, // 43 131
	11, 15, 9, // 44 134
	14, 22, 34, // 45 137
	34, 12, 14, // 46 140
	18, 13, 12, // 47 143
	12, 15, 18, // 48 146
	4, 3, 16, // 49 149
	17, 23, 14, // 50 152
	21, 20, 22, // 51 155
	22, 23, 21, // 52 158
	25, 61, 26, // 53 161
	29, 69, 27, // 54 164
	32, 37, 36, // 55 167
	36, 30, 32, // 56 170
	31, 30, 70, // 57 173
	31, 70, 33, // 58 176
	33, 43, 31, // 59 179
	69, 29, 37, // 60 182
	38, 69, 37, // 61 185
	29, 40, 35, // 62 188
	40, 29, 28, // 63 191
	44, 46, 41, // 64 194
	24, 26, 71, // 65 197
	5, 24, 41, // 66 200
	71, 41, 24, // 67 203
	72, 45, 44, // 68 206
	41, 71, 72, // 69 209
	72, 44, 41, // 70 212
	45, 47, 43, // 71 215
	43, 20, 19, // 72 218
	19, 46, 43, // 73 221
	43, 33, 22, // 74 224
	48, 32, 31, // 75 227
	31, 47, 48, // 76 230
	53, 56, 55, // 77 233
	55, 52, 53, // 78 236
	28, 27, 54, // 79 239
	54, 56, 28, // 80 242
	28, 56, 59, // 81 245
	28, 59, 57, // 82 248
	56, 53, 58, // 83 251
	52, 51, 50, // 84 254
	52, 50, 60, // 85 257
	0, 68, 61, // 86 260
	64, 67, 73, // 87 263
	73, 62, 64, // 88 266
	63, 74, 65, // 89 269
	64, 63, 65, // 90 272
	74, 63, 51, // 91 275
	51, 52, 74, // 92 278
	63, 62, 49, // 93 281
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_R_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_R_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_R_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_R_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_R_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_R_1_1__ )
DX3DMODEL_START( model_Trim_Char_R_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_R_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_R_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 282 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_R_1_1__, 2218860597 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_R_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_Q_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_S_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_S_1_1___initialShadingGroup_0 )
DX3DVERT( 1.6375, 2.72969, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.23555, 2.87251, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.23552, 2.57769, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.39207, 0.796652, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.71332, 0.796696, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.57558, 1.21443, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.53709, 0.169703, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.66434, 0.378801, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.47604, 0.378811, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.501656, 0.378759, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.292191, 0.378811, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.292191, 0.175001, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.959442, 0.241805, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.941132, -0.0391774, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.23544, -0.00222312, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.47616, 0.114551, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.47604, 0.169892, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.23552, 0.169892, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.23551, 0.313787, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.292191, 0.545313, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.39761, 0.704785, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.30591, 0.378782, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.12403, 1.21466, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.23552, 1.12607, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.23552, 1.21449, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.983658, 1.63233, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.754463, 1.77226, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.754471, 1.63233, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.513947, 1.84125, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.691666, 1.84124, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.603676, 2.05016, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.754471, 1.40888, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.513947, 1.63233, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.469795, 1.63254, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.337608, 1.84117, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.513947, 2.05016, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.23552, 1.50424, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.513756, 2.72924, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.513947, 2.67692, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.754471, 2.67692, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.272987, 2.18215, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.28215, 2.05016, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.59201, 2.17988, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.754501, 2.52329, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.457985, 2.67692, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.32399, 2.46809, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.513947, 2.468, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.6375, 2.37969, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.6375, 2.468, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.50407, 2.468, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.01406, 2.60469, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.754471, -0.0241501, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.754494, 0.268223, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.71692, 0.702233, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.754562, 2.85433, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.69397, 2.4686, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.0068, 2.8858, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_S_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_S_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 57 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_S_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_S_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_S_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 6, 16, // 5 17
	17, 14, 15, // 6 20
	18, 17, 16, // 7 23
	9, 19, 10, // 8 26
	20, 21, 8, // 9 29
	22, 23, 24, // 10 32
	25, 26, 27, // 11 35
	28, 29, 30, // 12 38
	31, 27, 32, // 13 41
	32, 27, 26, // 14 44
	33, 32, 28, // 15 47
	34, 28, 35, // 16 50
	24, 5, 36, // 17 53
	22, 36, 25, // 18 56
	37, 38, 39, // 19 59
	40, 41, 42, // 20 62
	43, 39, 38, // 21 65
	44, 45, 46, // 22 68
	37, 44, 38, // 23 71
	47, 48, 49, // 24 74
	39, 43, 50, // 25 77
	49, 48, 0, // 26 80
	0, 2, 49, // 27 83
	5, 24, 23, // 28 86
	23, 3, 5, // 29 89
	8, 16, 6, // 30 92
	11, 51, 52, // 31 95
	11, 52, 9, // 32 98
	12, 52, 51, // 33 101
	17, 18, 12, // 34 104
	12, 14, 17, // 35 107
	51, 13, 12, // 36 110
	15, 16, 17, // 37 113
	16, 8, 21, // 38 116
	16, 21, 18, // 39 119
	4, 3, 20, // 40 122
	7, 53, 20, // 41 125
	8, 7, 20, // 42 128
	20, 53, 4, // 43 131
	30, 35, 28, // 44 134
	32, 33, 31, // 45 137
	29, 28, 32, // 46 140
	26, 29, 32, // 47 143
	28, 34, 33, // 48 146
	35, 41, 34, // 49 149
	22, 24, 36, // 50 152
	25, 27, 31, // 51 155
	31, 22, 25, // 52 158
	39, 54, 37, // 53 161
	35, 30, 42, // 54 164
	42, 55, 46, // 55 167
	46, 45, 40, // 56 170
	42, 46, 40, // 57 173
	42, 41, 35, // 58 176
	38, 46, 55, // 59 179
	38, 55, 43, // 60 182
	46, 38, 44, // 61 185
	50, 2, 1, // 62 188
	50, 56, 54, // 63 191
	50, 54, 39, // 64 194
	1, 56, 50, // 65 197
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_S_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_S_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_S_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_S_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_S_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_S_1_1__ )
DX3DMODEL_START( model_Trim_Char_S_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_S_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_S_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 198 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_S_1_1__, 934829685 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_S_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_R_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_T_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_T_1_1___initialShadingGroup_0 )
DX3DVERT( 1.22865, 2.55469, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.73594, 2.55469, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.73594, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.13438, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.13438, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.815628, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.13438, 4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.13438, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.815628, 4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.815628, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.13438, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.13438, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.815628, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.815628, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.214066, 2.55469, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.721352, 2.55469, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.721352, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.13438, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.815628, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.815628, 2.55469, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.22865, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.214066, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.815628, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.13438, 2.55469, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_T_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_T_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_T_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_T_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_T_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	7, 3, 9, // 3 11
	10, 11, 12, // 4 14
	4, 10, 13, // 5 17
	14, 15, 16, // 6 20
	11, 17, 18, // 7 23
	16, 15, 19, // 8 26
	2, 20, 0, // 9 29
	4, 13, 5, // 10 32
	7, 9, 8, // 11 35
	3, 5, 9, // 12 38
	11, 18, 12, // 13 41
	10, 12, 13, // 14 44
	16, 21, 14, // 15 47
	17, 22, 18, // 16 50
	22, 17, 23, // 17 53
	23, 0, 20, // 18 56
	23, 20, 16, // 19 59
	19, 23, 16, // 20 62
	23, 19, 22, // 21 65
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_T_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_T_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_T_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_T_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_T_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_T_1_1__ )
DX3DMODEL_START( model_Trim_Char_T_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_T_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_T_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 66 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_T_1_1__, 3945766069 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_T_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_S_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_U_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_U_1_1___initialShadingGroup_0 )
DX3DVERT( 1.40469, 2.43459, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.71562, 2.43459, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.71562, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.40469, 1.19773, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.40498, 0.887118, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.46905, 0.887118, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.22195, -0.0134915, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.52969, 0.150001, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.46905, 0.373157, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.663971, 0.373057, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.480736, 0.373157, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.480736, 0.167014, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.480728, 0.0962712, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.727768, -0.0137305, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.727814, 0.167014, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.403992, 0.167001, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.286926, 0.373156, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.982811, 0.242188, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.727608, 0.311254, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.560936, 1.19773, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.235184, 1.19773, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.234207, 0.887119, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.560646, 0.887118, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.480736, 0.887118, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.480736, 0.630138, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.571754, 0.630139, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.238266, 0.630139, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.233673, 0.787958, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.71618, 0.783581, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.71578, 0.887119, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.66384, 0.372915, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.71127, 0.630172, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.46905, 0.630138, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.39387, 0.630139, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.30166, 0.373057, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.40469, 1.61002, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.71562, 1.61002, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.71562, 2.0223, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.560936, 1.61002, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.560936, 2.0223, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.23465, 1.61002, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.71562, 1.19773, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.560936, 2.43459, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.560936, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.234375, 2.43459, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.234375, 2.0223, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.40469, 2.0223, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.40469, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.22216, 0.300558, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.974289, -0.0393785, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.234375, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_U_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_U_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 51 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_U_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_U_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_U_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 12, 11, // 5 17
	10, 16, 15, // 6 20
	17, 18, 14, // 7 23
	19, 20, 21, // 8 26
	22, 23, 24, // 9 29
	25, 24, 10, // 10 32
	24, 26, 16, // 11 35
	23, 21, 27, // 12 38
	28, 29, 5, // 13 41
	30, 31, 32, // 14 44
	33, 34, 8, // 15 47
	4, 33, 32, // 16 50
	35, 36, 37, // 17 53
	38, 39, 40, // 18 56
	19, 38, 20, // 19 59
	3, 41, 36, // 20 62
	42, 43, 44, // 21 65
	39, 42, 45, // 22 68
	46, 37, 1, // 23 71
	2, 47, 0, // 24 74
	29, 41, 3, // 25 77
	5, 29, 3, // 26 80
	7, 30, 8, // 27 83
	34, 48, 6, // 28 86
	6, 8, 34, // 29 89
	11, 14, 18, // 30 92
	18, 9, 11, // 31 95
	14, 11, 12, // 32 98
	15, 11, 10, // 33 101
	6, 48, 17, // 34 104
	13, 49, 17, // 35 107
	14, 13, 17, // 36 110
	17, 49, 6, // 37 113
	23, 22, 19, // 38 116
	19, 21, 23, // 39 119
	24, 25, 22, // 40 122
	10, 9, 25, // 41 125
	16, 10, 24, // 42 128
	26, 24, 23, // 43 131
	27, 26, 23, // 44 134
	5, 32, 31, // 45 137
	5, 31, 28, // 46 140
	32, 8, 30, // 47 143
	8, 32, 33, // 48 146
	32, 5, 4, // 49 149
	37, 46, 35, // 50 152
	39, 45, 40, // 51 155
	38, 40, 20, // 52 158
	36, 35, 3, // 53 161
	43, 50, 44, // 54 164
	42, 44, 45, // 55 167
	1, 0, 46, // 56 170
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_U_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_U_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_U_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_U_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_U_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_U_1_1__ )
DX3DMODEL_START( model_Trim_Char_U_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_U_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_U_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 171 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_U_1_1__, 2661735157 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_U_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_T_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_V_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_V_1_1___initialShadingGroup_0 )
DX3DVERT( 1.73817, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.83281, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.5125, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.40391, 1.00379, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.45424, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.40391, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.867973, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.785004, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.546097, 1.00379, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.779686, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.870117, 1.70641e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.870117, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.870117, 0.80287, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.590401, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.546097, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.495758, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.978127, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.950943, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.17963, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.54888, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.64352, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.40391, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.619064, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.546097, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.546097, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.702034, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.401115, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.306473, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.40391, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.26286, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.34607, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.453125, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.117188, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.21183, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.546097, 2.39117, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.536095, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.42928, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.40391, 2.31615, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.26495, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.3596, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.09642, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.685043, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.01321, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.985939, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.17031, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_V_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_V_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 45 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_V_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_V_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_V_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 6, 13, // 4 14
	14, 15, 8, // 5 17
	16, 17, 11, // 6 20
	17, 12, 11, // 7 23
	5, 18, 3, // 8 26
	19, 20, 21, // 9 29
	22, 23, 24, // 10 32
	25, 24, 14, // 11 35
	24, 26, 15, // 12 38
	23, 27, 26, // 13 41
	4, 19, 28, // 14 44
	29, 18, 5, // 15 47
	30, 29, 28, // 16 50
	31, 32, 33, // 17 53
	22, 34, 23, // 18 56
	34, 35, 33, // 19 59
	0, 36, 37, // 20 62
	37, 30, 21, // 21 65
	38, 39, 40, // 22 68
	2, 36, 0, // 23 71
	8, 13, 6, // 24 74
	8, 7, 14, // 25 77
	11, 41, 9, // 26 80
	41, 11, 12, // 27 83
	13, 41, 12, // 28 86
	38, 42, 43, // 29 89
	10, 44, 16, // 30 92
	11, 10, 16, // 31 95
	43, 16, 44, // 32 98
	43, 44, 38, // 33 101
	40, 39, 3, // 34 104
	3, 18, 40, // 35 107
	21, 28, 19, // 36 110
	24, 25, 22, // 37 113
	14, 7, 25, // 38 116
	15, 14, 24, // 39 119
	26, 24, 23, // 40 122
	28, 5, 4, // 41 125
	5, 28, 29, // 42 128
	28, 21, 30, // 43 131
	33, 35, 31, // 44 134
	27, 23, 34, // 45 137
	33, 27, 34, // 46 140
	21, 20, 0, // 47 143
	37, 21, 0, // 48 146
	40, 42, 38, // 49 149
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_V_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_V_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_V_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_V_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_V_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_V_1_1__ )
DX3DMODEL_START( model_Trim_Char_V_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_V_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_V_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 150 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_V_1_1__, 1377704245 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_V_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_U_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_W_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_W_1_1___initialShadingGroup_0 )
DX3DVERT( 1.81964, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.85313, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.55938, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.68571, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.7192, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.43967, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.535942, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.571518, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.541588, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.756248, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.799492, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.535942, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.331253, 1.61243e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.535942, 8.16272e-018, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.842728, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.641266, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.604691, 0.468751, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.297768, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.26429, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.535942, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.61875, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.65223, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.41406, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.19375, 1.61243e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.41406, -8.16355e-018, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.41406, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.15051, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.37656, 0.468751, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.867577, 1.04713, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.885971, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.867577, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.75268, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.78616, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.49952, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.77076, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.727592, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.867577, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.535942, 1.29684, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.230804, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.197319, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.511658, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.481728, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.46959, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.929207, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.0208, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.25366, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.21049, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.815628, 2.45625, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.813919, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.867577, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.867577, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.163841, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.451805, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.421875, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.0968781, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.130356, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.52945, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.16734, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.16563, 2.45625, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.867577, 2.45625, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.684425, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.29682, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.06403, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.10728, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.41406, 0.87218, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.40974, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.596878, 0.468751, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 1.38438, 0.468751, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.33999, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 0.978127, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.971878, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_W_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_W_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 71 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_W_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_W_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_W_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 11, // 4 14
	14, 15, 16, // 5 17
	17, 11, 6, // 6 20
	18, 6, 19, // 7 23
	20, 21, 22, // 8 26
	23, 24, 22, // 9 29
	21, 3, 25, // 10 32
	26, 22, 27, // 11 35
	28, 29, 30, // 12 38
	31, 32, 33, // 13 41
	34, 35, 36, // 14 44
	19, 8, 37, // 15 47
	38, 19, 37, // 16 50
	39, 40, 41, // 17 53
	4, 31, 42, // 18 56
	29, 43, 36, // 19 59
	44, 45, 46, // 20 62
	47, 48, 49, // 21 65
	48, 34, 50, // 22 68
	51, 41, 52, // 23 71
	53, 54, 55, // 24 74
	32, 0, 56, // 25 77
	57, 49, 50, // 26 80
	58, 59, 49, // 27 83
	28, 30, 60, // 28 86
	61, 62, 63, // 29 89
	35, 60, 30, // 30 92
	45, 44, 62, // 31 95
	64, 65, 25, // 32 98
	2, 56, 0, // 33 101
	64, 25, 3, // 34 104
	3, 5, 64, // 35 107
	8, 19, 6, // 36 110
	11, 13, 9, // 37 113
	11, 17, 12, // 38 116
	7, 6, 11, // 39 119
	16, 11, 10, // 40 122
	16, 10, 14, // 41 125
	11, 16, 66, // 42 128
	11, 66, 7, // 43 131
	6, 18, 17, // 44 134
	19, 38, 18, // 45 137
	22, 24, 20, // 46 140
	22, 26, 23, // 47 143
	25, 22, 21, // 48 146
	22, 25, 65, // 49 149
	22, 67, 27, // 50 152
	27, 68, 63, // 51 155
	63, 26, 27, // 52 158
	65, 67, 22, // 53 161
	33, 42, 31, // 54 164
	36, 50, 34, // 55 167
	40, 39, 38, // 56 170
	37, 40, 38, // 57 173
	41, 51, 39, // 58 176
	42, 5, 4, // 59 179
	36, 30, 29, // 60 182
	50, 36, 43, // 61 185
	69, 57, 70, // 62 188
	46, 69, 44, // 63 191
	70, 57, 50, // 64 194
	43, 70, 50, // 65 197
	49, 59, 47, // 66 200
	50, 49, 48, // 67 203
	52, 55, 51, // 68 206
	55, 52, 53, // 69 209
	56, 33, 32, // 70 212
	57, 69, 46, // 71 215
	49, 57, 58, // 72 218
	15, 14, 28, // 73 221
	60, 15, 28, // 74 224
	63, 68, 61, // 75 227
	30, 36, 35, // 76 230
	62, 61, 45, // 77 233
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_W_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_W_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_W_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_W_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_W_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_W_1_1__ )
DX3DMODEL_START( model_Trim_Char_W_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_W_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_W_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 234 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_W_1_1__, 93673333 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_W_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_V_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_X_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_X_1_1___initialShadingGroup_0 )
DX3DVERT( 1.57749, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.74687, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.42344, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.23489, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.42968, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.26717, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.59219, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.25665, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.40469, 3.66894e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.357819, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.195313, 3.66894e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.526566, 3.66894e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.682831, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.520325, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.715103, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.676201, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.715103, 0.512432, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.23489, 0.466466, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.825844, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.10862, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.23489, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.23873, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.40811, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.23489, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.711266, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.715103, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.715103, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.715103, 1.61757, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.23489, 1.30087, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.971878, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.856514, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.545311, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.203125, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.372505, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.541885, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.715103, 2.40309, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.26615, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.23489, 2.35936, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.715103, 1.30087, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.715103, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.23489, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.23489, 1.61757, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.10886, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.75469, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.964066, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.779686, 1.4625, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.17031, 1.4625, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.985939, 1.71563, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.978127, 1.71563, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.700912, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_X_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_X_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 50 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_X_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_X_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_X_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	9, 15, 16, // 5 17
	4, 3, 17, // 6 20
	16, 18, 14, // 7 23
	19, 3, 20, // 8 26
	21, 22, 23, // 9 29
	24, 25, 26, // 10 32
	24, 27, 25, // 11 35
	20, 5, 28, // 12 38
	28, 29, 20, // 13 41
	30, 26, 25, // 14 44
	31, 32, 33, // 15 47
	34, 26, 35, // 16 50
	0, 36, 37, // 17 53
	26, 30, 35, // 18 56
	3, 19, 17, // 19 59
	38, 12, 39, // 20 62
	40, 41, 21, // 21 65
	37, 42, 23, // 22 68
	2, 36, 0, // 23 71
	5, 20, 3, // 24 74
	8, 43, 6, // 25 77
	11, 15, 9, // 26 80
	14, 39, 12, // 27 83
	16, 14, 13, // 28 86
	16, 13, 9, // 29 89
	17, 7, 6, // 30 92
	6, 4, 17, // 31 95
	39, 14, 18, // 32 98
	39, 44, 28, // 33 101
	29, 28, 44, // 34 104
	20, 29, 19, // 35 107
	18, 44, 39, // 36 110
	23, 40, 21, // 37 113
	26, 34, 24, // 38 116
	41, 40, 25, // 39 119
	45, 38, 39, // 40 122
	46, 45, 39, // 41 125
	28, 46, 39, // 42 128
	25, 27, 45, // 43 131
	25, 45, 46, // 44 134
	25, 46, 41, // 45 137
	40, 23, 42, // 46 140
	25, 47, 48, // 47 143
	25, 48, 30, // 48 146
	47, 25, 40, // 49 149
	42, 47, 40, // 50 152
	33, 49, 31, // 51 155
	35, 49, 33, // 52 158
	33, 34, 35, // 53 161
	37, 23, 22, // 54 164
	37, 22, 0, // 55 167
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_X_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_X_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_X_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_X_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_X_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_X_1_1__ )
DX3DMODEL_START( model_Trim_Char_X_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_X_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_X_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 168 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_X_1_1__, 3104609717 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_X_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_W_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_Y_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_Y_1_1___initialShadingGroup_0 )
DX3DVERT( 1.66724, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.83281, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.50156, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.13438, 1.13125, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.17054, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.870117, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.815628, 1.13125, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.815628, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.870117, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.815628, 4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.870117, 4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.870117, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.815628, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.13438, 4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.13438, 0.406697, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.13438, 0.813393, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.40391, 1.79332, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.50168, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.40391, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.613892, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.870117, 1.75604, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.768036, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.779457, 1.22009, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.870117, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.448326, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.546097, 1.79332, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.546097, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.33611, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.04713, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.985939, 1.4625, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.19861, 2.03348, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.546097, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.618393, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.546097, 2.63667, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.46875, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.117188, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.282753, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.40391, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.35008, 2.44018, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.40391, 2.58468, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.917679, 1.62679, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.978127, 1.4625, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_Y_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_Y_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 42 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_Y_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_Y_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_Y_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 11, 8, // 4 14
	10, 13, 14, // 5 17
	14, 15, 11, // 6 20
	16, 17, 18, // 7 23
	19, 20, 21, // 8 26
	22, 5, 23, // 9 29
	24, 25, 26, // 10 32
	27, 28, 29, // 11 35
	16, 18, 30, // 12 38
	31, 32, 33, // 13 41
	26, 21, 32, // 14 44
	24, 26, 31, // 15 47
	34, 35, 36, // 16 50
	17, 0, 37, // 17 53
	38, 30, 18, // 18 56
	39, 38, 37, // 19 59
	40, 20, 23, // 20 62
	39, 37, 0, // 21 65
	0, 2, 39, // 22 68
	8, 15, 3, // 23 71
	3, 5, 8, // 24 74
	5, 22, 6, // 25 77
	8, 5, 6, // 26 80
	11, 12, 9, // 27 83
	8, 7, 12, // 28 86
	14, 11, 10, // 29 89
	15, 8, 11, // 30 92
	19, 23, 20, // 31 95
	21, 26, 25, // 32 98
	25, 19, 21, // 33 101
	23, 19, 22, // 34 104
	40, 23, 5, // 35 107
	29, 41, 4, // 36 110
	29, 4, 27, // 37 113
	5, 4, 41, // 38 116
	5, 41, 40, // 39 119
	28, 27, 16, // 40 122
	16, 30, 28, // 41 125
	32, 31, 26, // 42 128
	31, 36, 24, // 43 131
	36, 31, 33, // 44 134
	33, 34, 36, // 45 137
	37, 18, 17, // 46 140
	18, 37, 38, // 47 143
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_Y_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_Y_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_Y_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_Y_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_Y_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_Y_1_1__ )
DX3DMODEL_START( model_Trim_Char_Y_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_Y_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_Y_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 144 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_Y_1_1__, 1820578805 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_Y_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_X_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_Z_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_Z_1_1___initialShadingGroup_0 )
DX3DVERT( 1.20261, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.20261, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.30625, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.991623, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.14906, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.800949, 1.42344, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.747398, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.747398, 0.515534, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.83419, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.486084, 0.711719, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.747398, -9.54029e-030, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.747398, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.643753, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.20261, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.65781, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.65781, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.20261, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.747398, 1.30239, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.643517, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.747398, 1.06758, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.30649, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.46392, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.20261, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.20261, 1.54449, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.20261, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.958382, 1.7793, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.11581, 2.13516, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.292191, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.747398, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.747398, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.62135, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.27324, 2.49102, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.20261, 2.33135, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.30625, 2.56563, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.65781, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.65781, 2.57344, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.328651, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.676758, 0.355859, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.643753, 0.281251, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.292191, 2.57433e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.292191, 0.273439, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.292191, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_Z_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_Z_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 42 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_Z_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_Z_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_Z_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	7, 6, 9, // 3 11
	10, 11, 12, // 4 14
	13, 14, 15, // 5 17
	10, 13, 16, // 6 20
	17, 18, 19, // 7 23
	18, 9, 6, // 8 26
	8, 3, 19, // 9 29
	20, 21, 22, // 10 32
	23, 20, 24, // 11 35
	23, 24, 25, // 12 38
	26, 25, 24, // 13 41
	27, 28, 29, // 14 44
	21, 30, 31, // 15 47
	32, 26, 22, // 16 50
	28, 1, 0, // 17 53
	33, 31, 30, // 18 56
	2, 33, 34, // 19 59
	2, 34, 0, // 20 62
	35, 34, 33, // 21 65
	33, 30, 35, // 22 68
	17, 19, 3, // 23 71
	5, 17, 3, // 24 74
	9, 36, 37, // 25 77
	9, 37, 7, // 26 80
	38, 37, 36, // 27 83
	12, 38, 39, // 28 86
	12, 39, 10, // 29 89
	40, 39, 38, // 30 92
	38, 36, 40, // 31 95
	15, 16, 13, // 32 98
	16, 11, 10, // 33 101
	6, 19, 18, // 34 104
	19, 6, 8, // 35 107
	22, 24, 20, // 36 110
	25, 5, 4, // 37 113
	4, 23, 25, // 38 116
	24, 22, 26, // 39 119
	29, 41, 27, // 40 122
	32, 22, 21, // 41 125
	21, 31, 32, // 42 128
	0, 29, 28, // 43 131
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_Z_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_Z_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_Z_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_Z_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_Z_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_Z_1_1__ )
DX3DMODEL_START( model_Trim_Char_Z_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_Z_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_Z_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 132 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_Z_1_1__, 536547893 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_Z_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_Y_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_33_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_33_1___initialShadingGroup_0 )
DX3DVERT( 1.03281, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.52031, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.52031, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.545311, 0.785352, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.826561, 0.785352, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.826561, 1.22891, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.545311, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.826561, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.826561, 0.341798, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.03281, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.52031, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.52031, -0.312499, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.03281, -0.312499, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.826561, -0.312499, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.545311, 0.341798, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.545311, 1.67246, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.826561, 1.67246, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.826561, 2.11602, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.545311, 1.22891, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.545311, 2.11602, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.826561, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.545311, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.826561, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.03281, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.545311, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.545311, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_33_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_33_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 26 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_33_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_33_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_33_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	9, 12, 13, // 4 14
	14, 8, 4, // 5 17
	15, 16, 17, // 6 20
	18, 5, 16, // 7 23
	19, 17, 20, // 8 26
	21, 20, 22, // 9 29
	2, 23, 0, // 10 32
	5, 18, 3, // 11 35
	8, 14, 6, // 12 38
	11, 12, 9, // 13 41
	13, 7, 6, // 14 44
	13, 24, 9, // 15 47
	6, 24, 13, // 16 50
	4, 3, 14, // 17 53
	17, 19, 15, // 18 56
	16, 15, 18, // 19 59
	20, 21, 19, // 20 62
	22, 0, 23, // 21 65
	22, 25, 21, // 22 68
	23, 25, 22, // 23 71
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_33_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_33_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_33_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_33_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_33_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_33_1__ )
DX3DMODEL_START( model_Trim_Char_x_33_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_33_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_33_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 72 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_33_1__, 4066741141 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_33_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_Z_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_34_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_34_1___initialShadingGroup_0 )
DX3DVERT( 0.838394, 1.98884, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.709373, 2.28832, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.709373, 1.98884, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.39286, 0.701786, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.23594, 1.06604, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.23594, 0.701786, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.48125, -0.156249, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.7625, -0.156249, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.57768, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.23594, 0.411129, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.11027, 0.701786, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.20804, 1.1308, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.924782, 1.1308, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.709373, 1.629, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.553795, 1.98884, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.02322, 1.55982, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.739288, 1.55982, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.46875, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.182816, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.368301, 2.41786, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.653572, 2.41786, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.29576, 0.272769, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_34_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_34_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 22 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_34_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_34_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_34_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	3, 5, 9, // 3 11
	5, 10, 9, // 4 14
	4, 11, 12, // 5 17
	0, 2, 13, // 6 20
	2, 14, 13, // 7 23
	15, 16, 12, // 8 26
	17, 18, 19, // 9 29
	1, 20, 19, // 10 32
	8, 21, 6, // 11 35
	9, 21, 8, // 12 38
	8, 3, 9, // 13 41
	10, 5, 4, // 14 44
	12, 10, 4, // 15 47
	13, 16, 15, // 16 50
	15, 0, 13, // 17 53
	12, 11, 15, // 18 56
	19, 20, 17, // 19 59
	14, 2, 1, // 20 62
	19, 14, 1, // 21 65
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_34_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_34_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_34_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_34_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_34_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_34_1__ )
DX3DMODEL_START( model_Trim_Char_x_34_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_34_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_34_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 66 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_34_1__, 4068826277 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_34_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_33_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_35_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_35_1___initialShadingGroup_0 )
DX3DVERT( 1.12344, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.12344, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.40469, 2.55957, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.12344, 0.785352, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.40469, 0.785352, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.40469, 1.22891, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.12344, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.40469, -0.101757, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.40469, 0.341798, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.12344, -0.312499, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.917191, -0.312499, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.917191, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.429688, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.12344, 0.341798, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.12344, 1.67246, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.40469, 1.67246, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.40469, 2.11602, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.12344, 1.22891, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.12344, 2.11602, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.429688, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.917191, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.917191, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.40469, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.40469, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.429688, -0.312499, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.429688, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_35_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_35_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 26 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_35_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_35_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_35_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 11, 10, // 4 14
	13, 8, 4, // 5 17
	14, 15, 16, // 6 20
	17, 5, 15, // 7 23
	18, 16, 2, // 8 26
	19, 20, 21, // 9 29
	21, 20, 0, // 10 32
	2, 22, 0, // 11 35
	0, 22, 21, // 12 38
	5, 17, 3, // 13 41
	8, 13, 6, // 14 44
	7, 6, 9, // 15 47
	11, 23, 9, // 16 50
	9, 23, 7, // 17 53
	10, 24, 12, // 18 56
	4, 3, 13, // 19 59
	16, 18, 14, // 20 62
	15, 14, 17, // 21 65
	2, 1, 18, // 22 68
	21, 25, 19, // 23 71
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_35_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_35_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_35_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_35_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_35_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_35_1__ )
DX3DMODEL_START( model_Trim_Char_x_35_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_35_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_35_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 72 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_35_1__, 4070911413 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_35_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_34_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_36_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_36_1___initialShadingGroup_0 )
DX3DVERT( 1.17031, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.14656, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.14656, 2.55443, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.50156, 1.96953, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.48969, 1.96953, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.48969, 1.67708, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.460312, 1.96953, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.460312, 1.67708, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.613525, 1.67708, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.460312, 1.26045, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.505981, 1.38464, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.460312, 1.38464, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.227608, 1.38464, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.117188, 1.09219, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.398438, 1.09219, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.33802, 1.67708, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.448441, 1.96953, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.55157, 1.09219, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.83281, 1.09219, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.7224, 1.38464, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.48969, 1.38464, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.44402, 1.38464, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.48969, 1.26045, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.61198, 1.67708, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.33648, 1.67708, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.22894, 1.96953, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.779686, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.669273, 2.55443, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.803436, 2.55443, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.460312, 2.00098, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.721069, 1.96953, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.558853, 2.26198, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.803436, 2.26198, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.48969, 2.00099, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.828613, 2.26198, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.803436, 2.19352, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.39114, 2.26198, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.14656, 2.19353, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.803436, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.936157, 2.55443, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.28073, 2.55443, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.14656, 2.26198, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.12139, 2.26198, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.01385, 2.55443, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.971878, 2.65156, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.978127, 2.65156, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_36_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_36_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 46 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_36_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_36_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_36_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	10, 8, 7, // 5 17
	15, 12, 11, // 6 20
	16, 15, 7, // 7 23
	17, 18, 19, // 8 26
	20, 21, 22, // 9 29
	23, 5, 20, // 10 32
	5, 24, 21, // 11 35
	4, 25, 24, // 12 38
	26, 27, 28, // 13 41
	29, 6, 30, // 14 44
	29, 16, 6, // 15 47
	27, 31, 32, // 16 50
	3, 33, 4, // 17 53
	34, 32, 35, // 18 56
	36, 37, 25, // 19 59
	38, 28, 39, // 20 62
	28, 32, 34, // 21 65
	40, 2, 41, // 22 68
	41, 42, 37, // 23 71
	2, 43, 42, // 24 74
	2, 40, 0, // 25 77
	5, 23, 3, // 26 80
	8, 30, 6, // 27 83
	9, 11, 12, // 28 86
	12, 14, 9, // 29 89
	7, 11, 10, // 30 92
	11, 7, 15, // 31 95
	7, 6, 16, // 32 98
	19, 20, 22, // 33 101
	22, 17, 19, // 34 104
	20, 19, 23, // 35 107
	21, 20, 5, // 36 110
	24, 5, 4, // 37 113
	28, 38, 26, // 38 116
	35, 32, 31, // 39 119
	30, 35, 31, // 40 122
	30, 31, 29, // 41 125
	32, 28, 27, // 42 128
	36, 41, 37, // 43 131
	25, 4, 33, // 44 134
	33, 36, 25, // 45 137
	43, 2, 1, // 46 140
	44, 45, 38, // 47 143
	39, 44, 38, // 48 146
	1, 38, 45, // 49 149
	1, 45, 43, // 50 152
	34, 39, 28, // 51 155
	41, 36, 40, // 52 158
	42, 41, 2, // 53 161
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_36_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_36_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_36_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_36_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_36_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_36_1__ )
DX3DMODEL_START( model_Trim_Char_x_36_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_36_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_36_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 162 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_36_1__, 4072996549 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_36_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_35_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_37_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_37_1___initialShadingGroup_0 )
DX3DVERT( 1.75469, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.75469, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.55977, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.780083, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.974998, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.974998, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.390236, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.585159, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.585159, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.390236, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.585159, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.195313, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.195313, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.390236, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.780083, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.974998, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.780083, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.16992, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.36485, -0.436718, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.36485, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.16992, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.36485, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.16992, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.75469, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.55977, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.55977, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.195313, -0.328124, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_37_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_37_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 27 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_37_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_37_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_37_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 7, // 3 11
	11, 9, 6, // 4 14
	12, 6, 13, // 5 17
	14, 15, 4, // 6 20
	10, 14, 3, // 7 23
	7, 3, 16, // 8 26
	17, 18, 19, // 9 29
	20, 21, 18, // 10 32
	15, 20, 17, // 11 35
	4, 17, 22, // 12 38
	23, 0, 24, // 13 41
	21, 24, 2, // 14 44
	18, 2, 25, // 15 47
	1, 25, 2, // 16 50
	5, 16, 3, // 17 53
	8, 13, 6, // 18 56
	7, 6, 9, // 19 59
	6, 12, 11, // 20 62
	13, 26, 12, // 21 65
	4, 3, 14, // 22 68
	3, 7, 10, // 23 71
	16, 8, 7, // 24 74
	19, 22, 17, // 25 77
	18, 17, 20, // 26 80
	17, 4, 15, // 27 83
	22, 5, 4, // 28 86
	0, 2, 24, // 29 89
	2, 18, 21, // 30 92
	25, 19, 18, // 31 95
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_37_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_37_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_37_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_37_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_37_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_37_1__ )
DX3DMODEL_START( model_Trim_Char_x_37_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_37_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_37_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_37_1__, 4075081685 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_37_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_36_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_38_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_38_1___initialShadingGroup_0 )
DX3DVERT( 1.04011, 2.97734, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.02187, 3.02831, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.02187, 2.97734, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.23542, 2.43125, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.19375, 2.54775, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.19375, 2.43125, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.849998, 2.61328, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.799217, 2.61328, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.849998, 2.51863, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.19375, 2.06719, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.36562, 2.06719, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.30052, 2.24922, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.02187, 2.24922, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.99453, 2.24922, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.02187, 2.19825, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.09219, 2.06719, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.19375, 2.24922, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.02187, 2.61328, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.02187, 2.43125, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.17031, 2.61328, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.678123, 2.97734, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.849998, 2.97734, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.849998, 3.15938, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.849998, 2.79531, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.701561, 2.79531, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.603905, 2.97734, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.678123, 2.839, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.678123, 3.15938, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.506248, 3.15938, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.10521, 2.79531, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.02187, 2.79531, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.974998, 3.15938, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.896873, 2.43125, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_38_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_38_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 33 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_38_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_38_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_38_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 9, 16, // 5 17
	17, 6, 8, // 6 20
	13, 12, 18, // 7 23
	3, 5, 16, // 8 26
	12, 16, 5, // 9 29
	19, 17, 18, // 10 32
	20, 21, 22, // 11 35
	7, 6, 23, // 12 38
	24, 23, 21, // 13 41
	25, 26, 20, // 14 44
	27, 28, 25, // 15 47
	29, 30, 17, // 16 50
	6, 17, 30, // 17 53
	31, 22, 21, // 18 56
	23, 30, 2, // 19 59
	0, 2, 30, // 20 62
	11, 16, 9, // 21 65
	16, 12, 14, // 22 68
	14, 15, 16, // 23 71
	32, 18, 17, // 24 74
	8, 32, 17, // 25 77
	18, 32, 13, // 26 80
	16, 11, 3, // 27 83
	5, 18, 12, // 28 86
	18, 5, 4, // 29 89
	18, 4, 19, // 30 92
	22, 27, 20, // 31 95
	23, 24, 7, // 32 98
	21, 20, 26, // 33 101
	21, 26, 24, // 34 104
	25, 20, 27, // 35 107
	17, 19, 29, // 36 110
	30, 23, 6, // 37 113
	21, 2, 1, // 38 116
	1, 31, 21, // 39 119
	2, 21, 23, // 40 122
	30, 29, 0, // 41 125
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_38_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_38_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_38_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_38_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_38_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_38_1__ )
DX3DMODEL_START( model_Trim_Char_x_38_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_38_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_38_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 126 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_38_1__, 4077166821 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_38_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_37_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_a_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_a_1_1___initialShadingGroup_0 )
DX3DVERT( 1.52452, 1.91672, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.49622, 1.94262, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.49622, 1.91674, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.67656, 0.489572, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.67656, 0.86362, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.37387, 0.863642, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.594528, 0.846903, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.605957, 0.86362, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.594528, 0.86362, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.800919, -0.0393637, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.857178, 0.221544, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.685867, 0.261635, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.414185, 0.11139, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.594528, 0.11139, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.594528, 0.261836, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.414154, 0.0988296, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.594543, -0.00736914, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.400955, 0.111364, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.414185, 0.261836, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.594528, 0.341069, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.534103, 0.489553, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.52597, 0.590514, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.414185, 0.86362, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.31589, 0.193469, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.36348, 0.261836, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.31589, 0.261836, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.13554, 0.261836, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.13554, 0.039153, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.23845, 0.111389, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.13554, 0.11139, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.9552, 0.11139, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.9552, 0.231041, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.38907, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.38988, 0.261836, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.67656, 0.261836, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.28403, 0.489352, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.20422, 0.375648, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.31589, 0.375704, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.13559, 0.312082, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.05171, 0.261873, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.31671, 0.559848, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.31589, 0.489572, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.37656, 1.30625, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.31589, 1.30638, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.31589, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.594513, 1.19068, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.594528, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.774857, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.9552, 1.05401, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.9552, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.41394, 1.05882, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.414185, 1.01407, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.594528, 1.01407, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.374908, 1.01419, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.287476, 0.863622, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.774719, 0.999232, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.809662, 1.01434, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.774857, 1.01407, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.547516, 1.16457, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.31589, 1.07229, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.37656, 1.07188, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.2292, 1.07291, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.955185, 1.29312, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 0.955246, 1.80425, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 0.9552, 2.06641, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 0.594528, 2.01313, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.594467, 1.74143, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 0.696167, 1.76633, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 0.594528, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 0.331253, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.331253, 1.65, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.331253, 1.93125, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 1.3157, 1.68425, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 1.37479, 1.4654, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 1.67192, 1.46539, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 1.22104, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 1.31589, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 1.31589, 1.91674, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 1.31589, 2.03025, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 0.993744, 2.06719, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 1.49622, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( 1.6167, 1.76632, 0 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT( 1.39688, 2.15106e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //82
DX3DVERT( 0.955154, -0.0246388, 0 ) DX3DVNORM( 0, 0, 1 )  //83
DX3DVERT( 0.29483, 0.261816, 0 ) DX3DVNORM( 0, 0, 1 )  //84
DX3DVERT( 0.237, 0.489566, 0 ) DX3DVNORM( 0, 0, 1 )  //85
DX3DVERT( 0.23381, 0.565484, 0 ) DX3DVNORM( 0, 0, 1 )  //86
DX3DVERT( 1.38126, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //87
DX3DVERT( 1.37688, 1.38105, 0 ) DX3DVNORM( 0, 0, 1 )  //88
DX3DVERT( 1.67657, 1.24746, 0 ) DX3DVNORM( 0, 0, 1 )  //89
DX3DVERT( 1.67657, 1.25536, 0 ) DX3DVNORM( 0, 0, 1 )  //90
DX3DVERT( 1.67656, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //91
DX3DVERT( 1.3766, 0.991248, 0 ) DX3DVNORM( 0, 0, 1 )  //92
DX3DVERT( 1.24728, 1.30649, 0 ) DX3DVNORM( 0, 0, 1 )  //93
DX3DVERT( 0.999603, 1.80574, 0 ) DX3DVNORM( 0, 0, 1 )  //94
DX3DVERT( 1.67656, 2.13371e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //95
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_a_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_a_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 96 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_a_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_a_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_a_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 16, 13, // 5 17
	17, 15, 12, // 6 20
	17, 12, 18, // 7 23
	14, 11, 19, // 8 26
	18, 19, 20, // 9 29
	21, 6, 22, // 10 32
	23, 24, 25, // 11 35
	23, 25, 26, // 12 38
	27, 28, 29, // 13 41
	27, 29, 30, // 14 44
	31, 30, 29, // 15 47
	32, 33, 34, // 16 50
	35, 36, 37, // 17 53
	38, 26, 25, // 18 56
	38, 39, 26, // 19 59
	40, 35, 41, // 20 62
	42, 43, 44, // 21 65
	45, 46, 47, // 22 68
	48, 49, 47, // 23 71
	50, 51, 52, // 24 74
	22, 8, 52, // 25 77
	53, 54, 22, // 26 80
	50, 53, 51, // 27 83
	55, 56, 57, // 28 86
	55, 57, 52, // 29 89
	52, 57, 47, // 30 92
	45, 58, 46, // 31 95
	44, 59, 60, // 32 98
	49, 48, 61, // 33 101
	62, 49, 44, // 34 104
	63, 64, 65, // 35 107
	66, 67, 68, // 36 110
	69, 70, 66, // 37 113
	71, 69, 68, // 38 116
	72, 73, 74, // 39 119
	75, 72, 76, // 40 122
	77, 78, 79, // 41 125
	80, 81, 0, // 42 128
	76, 80, 2, // 43 131
	1, 78, 77, // 44 134
	34, 33, 82, // 45 137
	40, 41, 3, // 46 140
	3, 5, 40, // 47 143
	9, 83, 30, // 48 146
	11, 14, 13, // 49 149
	13, 16, 9, // 50 152
	9, 11, 13, // 51 155
	30, 31, 10, // 52 158
	10, 9, 30, // 53 161
	14, 18, 12, // 54 164
	13, 12, 15, // 55 167
	18, 84, 17, // 56 170
	18, 14, 19, // 57 173
	85, 84, 18, // 58 176
	18, 20, 85, // 59 179
	86, 85, 20, // 60 182
	6, 8, 22, // 61 185
	22, 54, 86, // 62 188
	86, 21, 22, // 63 191
	20, 21, 86, // 64 194
	26, 29, 28, // 65 197
	26, 28, 23, // 66 200
	30, 83, 27, // 67 203
	29, 26, 39, // 68 206
	39, 31, 29, // 69 209
	3, 41, 37, // 70 212
	32, 37, 87, // 71 215
	34, 3, 32, // 72 218
	25, 24, 87, // 73 221
	37, 25, 87, // 74 224
	37, 32, 3, // 75 227
	37, 41, 35, // 76 230
	25, 37, 36, // 77 233
	25, 36, 38, // 78 236
	74, 73, 88, // 79 239
	89, 90, 42, // 80 242
	44, 91, 42, // 81 245
	42, 91, 89, // 82 248
	42, 90, 74, // 83 251
	88, 42, 74, // 84 254
	47, 49, 62, // 85 257
	47, 62, 45, // 86 260
	47, 57, 56, // 87 263
	56, 48, 47, // 88 266
	52, 46, 58, // 89 269
	52, 58, 50, // 90 272
	52, 51, 22, // 91 275
	22, 51, 53, // 92 278
	52, 8, 7, // 93 281
	7, 55, 52, // 94 284
	47, 46, 52, // 95 287
	92, 5, 4, // 96 290
	60, 91, 44, // 97 293
	4, 91, 60, // 98 296
	4, 60, 92, // 99 299
	61, 59, 44, // 100 302
	44, 49, 61, // 101 305
	44, 43, 93, // 102 308
	93, 62, 44, // 103 311
	65, 68, 67, // 104 314
	67, 63, 65, // 105 317
	66, 68, 69, // 106 320
	68, 65, 71, // 107 323
	80, 76, 72, // 108 326
	74, 81, 80, // 109 329
	80, 72, 74, // 110 332
	64, 63, 94, // 111 335
	75, 76, 77, // 112 338
	79, 94, 75, // 113 341
	79, 75, 77, // 114 344
	94, 79, 64, // 115 347
	0, 2, 80, // 116 350
	2, 77, 76, // 117 353
	77, 2, 1, // 118 356
	82, 95, 34, // 119 359
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_a_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_a_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_a_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_a_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_a_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_a_1_1__ )
DX3DMODEL_START( model_Trim_Char_a_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_a_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_a_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 360 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_a_1_1__, 138266101 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_a_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_38_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_b_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_b_1_1___initialShadingGroup_0 )
DX3DVERT( 0.253128, 2.50153, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.253128, 2.925, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.560944, 2.50153, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.506851, 1.23113, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.572189, 1.23115, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.560211, 1.01599, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.557816, 0.292189, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.506851, 0.384196, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.734604, 0.384091, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.52179, 0.172462, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.26805, 0.172462, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.26808, 0.351164, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.52182, 0.142426, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.2681, -0.0149448, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.54854, 0.172365, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.52179, 0.384196, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 1.01489, 0.252587, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.77557, 1.01896, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.76758, 0.807614, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.46562, 1.01406, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.52179, 0.595929, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.41353, 0.595929, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.45593, 0.807663, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.30002, 0.384168, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.67403, 0.384117, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.73766, 0.595906, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.52179, 0.807663, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.253128, 0.595929, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.253128, 0.807663, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.506851, 0.595929, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.253128, 0.384196, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 0.616425, 0.595918, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 0.570847, 0.807604, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 0.568756, 1.73594, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 0.760574, 1.96871, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 0.76033, 1.67086, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.52173, 1.90614, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.52179, 1.86633, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.26805, 1.86633, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.41402, 1.44286, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.30193, 1.65461, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1.52179, 1.6546, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 1.45555, 1.23113, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 1.52179, 1.44286, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 1.73929, 1.44291, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 1.76743, 1.23117, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 1.52179, 1.23113, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 1.67953, 1.65459, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 1.26807, 1.68785, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 1.5583, 1.86626, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 0.253128, 1.44286, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 0.253128, 1.6546, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 0.506851, 1.44286, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 0.253128, 1.23113, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 0.619919, 1.44288, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 0.506851, 1.6546, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 0.744553, 1.65493, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 1.01642, 1.77591, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 0.253128, 2.07807, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 0.560944, 2.07807, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 0.560944, 2.925, 0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 0.506851, 0.807663, 0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 0.550003, 0.292189, 0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( 0.542191, -1.31839e-016, 0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( 0.253128, -9.02056e-017, 0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( 0.760452, 0.357191, 0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( 0.76059, 0.0663941, 0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( 1.09488, -0.0396668, 0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( 0.560944, 1.73594, 0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( 1.26796, 2.04658, 0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( 1.0961, 2.0678, 0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_b_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_b_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 71 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_b_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_b_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_b_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 10, // 4 14
	14, 12, 9, // 5 17
	14, 9, 15, // 6 20
	16, 11, 10, // 7 23
	17, 18, 19, // 8 26
	20, 21, 22, // 9 29
	15, 23, 21, // 10 32
	24, 15, 20, // 11 35
	25, 20, 26, // 12 38
	27, 28, 29, // 13 41
	30, 27, 7, // 14 44
	31, 8, 7, // 15 47
	32, 31, 29, // 16 50
	33, 34, 35, // 17 53
	36, 37, 38, // 18 56
	39, 40, 41, // 19 59
	42, 39, 43, // 20 62
	44, 45, 46, // 21 65
	47, 44, 43, // 22 68
	48, 38, 37, // 23 71
	49, 47, 41, // 24 74
	36, 49, 37, // 25 77
	50, 51, 52, // 26 80
	53, 50, 3, // 27 83
	52, 54, 4, // 28 86
	55, 56, 54, // 29 89
	38, 48, 57, // 30 92
	58, 0, 59, // 31 95
	1, 60, 2, // 32 98
	5, 32, 61, // 33 101
	5, 28, 53, // 34 104
	5, 53, 3, // 35 107
	61, 28, 5, // 36 110
	62, 63, 64, // 37 113
	6, 62, 7, // 38 116
	65, 66, 6, // 39 119
	6, 8, 65, // 40 122
	64, 30, 7, // 41 125
	7, 62, 64, // 42 128
	23, 15, 9, // 43 131
	11, 23, 9, // 44 134
	10, 9, 12, // 45 137
	15, 24, 14, // 46 140
	66, 65, 16, // 47 143
	13, 67, 16, // 48 146
	16, 10, 13, // 49 149
	16, 67, 66, // 50 152
	26, 22, 19, // 51 155
	19, 42, 46, // 52 158
	46, 45, 17, // 53 161
	17, 19, 46, // 54 164
	19, 18, 26, // 55 167
	22, 26, 20, // 56 170
	21, 20, 15, // 57 173
	20, 25, 24, // 58 176
	26, 18, 25, // 59 179
	28, 61, 29, // 60 182
	27, 29, 7, // 61 185
	7, 29, 31, // 62 188
	29, 61, 32, // 63 191
	58, 59, 68, // 64 194
	55, 68, 33, // 65 197
	56, 55, 33, // 66 200
	35, 56, 33, // 67 203
	55, 51, 58, // 68 206
	58, 68, 55, // 69 209
	38, 69, 36, // 70 212
	41, 43, 39, // 71 215
	43, 46, 42, // 72 218
	46, 43, 44, // 73 221
	43, 41, 47, // 74 224
	37, 41, 40, // 75 227
	37, 40, 48, // 76 230
	41, 37, 49, // 77 233
	51, 55, 52, // 78 236
	50, 52, 3, // 79 239
	4, 3, 52, // 80 242
	54, 52, 55, // 81 245
	57, 35, 34, // 82 248
	57, 70, 69, // 83 251
	69, 38, 57, // 84 254
	34, 70, 57, // 85 257
	0, 2, 59, // 86 260
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_b_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_b_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_b_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_b_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_b_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_b_1_1__ )
DX3DMODEL_START( model_Trim_Char_b_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_b_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_b_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 261 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_b_1_1__, 3149202485 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_b_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_a_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_c_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_c_1_1___initialShadingGroup_0 )
DX3DVERT( 1.33286, 1.76642, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.61874, 1.76644, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.61874, 1.96875, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.6375, 0.26167, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.6375, 0.370314, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.38847, 0.261575, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.700989, 0.56261, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.643829, 0.79674, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.643753, 0.562625, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.974991, -0.0250405, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.975006, 0.26167, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.809372, 0.26167, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.503693, 0.261649, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.643738, 0.116868, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.643753, 0.26167, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.643753, 0.412147, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.974976, 0.265647, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.809143, 0.38348, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.317184, 0.863582, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.364685, 0.562632, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.6375, 0.0578134, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.985123, 0.261602, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.643921, 1.23099, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.701096, 1.46554, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.643753, 1.46549, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.631256, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.636993, 1.16452, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.317169, 1.16453, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.364014, 1.46547, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.643753, 1.91707, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.643753, 1.76644, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.809372, 1.76644, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.974991, 1.7563, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.975006, 1.76644, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.643753, 1.61597, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.785889, 1.61619, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.499954, 1.76653, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.61874, 1.65781, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.00558, 1.76645, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.15427, 1.78621, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.12933, 2.06743, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.974991, 2.0557, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.30617, 2.05356, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.30624, 1.77168, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.785263, 0.411945, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.636902, 0.863584, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.30627, 0.241792, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.30618, -0.0283531, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.17273, 0.228659, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.14769, -0.0393082, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.3125, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.809158, 1.64348, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_c_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_c_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 52 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_c_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_c_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_c_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	6, 8, 15, // 5 17
	12, 14, 15, // 6 20
	16, 17, 11, // 7 23
	15, 14, 11, // 8 26
	18, 19, 8, // 9 29
	20, 3, 5, // 10 32
	21, 10, 9, // 11 35
	21, 16, 10, // 12 38
	22, 23, 24, // 13 41
	25, 26, 27, // 14 44
	24, 28, 27, // 15 47
	29, 30, 31, // 16 50
	32, 33, 31, // 17 53
	28, 24, 34, // 18 56
	23, 35, 34, // 19 59
	31, 30, 34, // 20 62
	29, 36, 30, // 21 65
	1, 0, 37, // 22 68
	32, 38, 33, // 23 71
	39, 40, 41, // 24 74
	42, 43, 0, // 25 77
	0, 2, 42, // 26 80
	11, 14, 13, // 27 83
	13, 9, 11, // 28 86
	15, 44, 6, // 29 89
	15, 8, 19, // 30 92
	15, 19, 12, // 31 95
	11, 10, 16, // 32 98
	17, 44, 15, // 33 101
	15, 11, 17, // 34 104
	7, 45, 18, // 35 107
	18, 8, 7, // 36 110
	5, 46, 47, // 37 113
	47, 20, 5, // 38 116
	47, 46, 48, // 39 119
	49, 48, 21, // 40 122
	9, 49, 21, // 41 125
	48, 49, 47, // 42 128
	50, 18, 45, // 43 131
	27, 45, 25, // 44 134
	45, 27, 50, // 45 137
	27, 26, 22, // 46 140
	22, 24, 27, // 47 143
	31, 33, 41, // 48 146
	31, 41, 29, // 49 149
	31, 51, 32, // 50 152
	34, 30, 36, // 51 155
	36, 28, 34, // 52 158
	34, 24, 23, // 53 161
	34, 35, 51, // 54 164
	51, 31, 34, // 55 167
	39, 43, 42, // 56 170
	41, 33, 38, // 57 173
	38, 39, 41, // 58 176
	42, 40, 39, // 59 179
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_c_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_c_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_c_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_c_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_c_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_c_1_1__ )
DX3DMODEL_START( model_Trim_Char_c_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_c_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_c_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 180 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_c_1_1__, 1865171573 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_c_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_b_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_d_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_d_1_1___initialShadingGroup_0 )
DX3DVERT( 1.69687, 2.50153, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.69687, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.38907, 2.50153, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.44315, 1.23113, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.37781, 1.23115, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.3898, 1.01599, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.39218, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.44315, 0.384196, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.21541, 0.384091, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.428207, 0.172462, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.681946, 0.172462, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.681931, 0.351163, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.428177, 0.142425, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.6819, -0.014945, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.401474, 0.172365, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.428207, 0.384196, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.935104, 0.252587, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.174438, 1.01896, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.182419, 0.807614, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.484375, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.428207, 0.595929, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.536469, 0.595929, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.49408, 0.807663, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.649994, 0.384168, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.27597, 0.384117, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.212341, 0.595906, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.428207, 0.807663, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.69687, 0.595929, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.69687, 0.807663, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.44315, 0.595929, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.69687, 0.384196, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.33359, 0.595918, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.37915, 0.807604, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.38126, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.18942, 1.96871, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.18968, 1.67086, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.428268, 1.90614, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.428207, 1.86633, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.681946, 1.86633, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.53598, 1.44286, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.648071, 1.65461, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.428207, 1.6546, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.494446, 1.23113, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.428207, 1.44286, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.210709, 1.44291, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.182571, 1.23117, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.428207, 1.23113, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.270462, 1.65459, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.681946, 1.68785, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.391693, 1.86626, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.69687, 1.44286, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.69687, 1.6546, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.44315, 1.44286, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.69687, 1.23113, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.33009, 1.44288, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.44315, 1.6546, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.20544, 1.65493, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.933578, 1.77591, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.69687, 2.07807, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.38907, 2.07807, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.38907, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.44315, 0.807663, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.39999, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.40781, 7.45931e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.69687, -2.94903e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.18954, 0.357192, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 1.18941, 0.0663941, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 0.855118, -0.0396668, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.38907, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 0.682053, 2.04658, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.853912, 2.0678, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_d_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_d_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 71 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_d_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_d_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_d_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 10, // 4 14
	14, 12, 9, // 5 17
	14, 9, 15, // 6 20
	16, 11, 10, // 7 23
	17, 18, 19, // 8 26
	20, 21, 22, // 9 29
	15, 23, 21, // 10 32
	24, 15, 20, // 11 35
	25, 20, 26, // 12 38
	27, 28, 29, // 13 41
	30, 27, 7, // 14 44
	31, 8, 7, // 15 47
	32, 31, 29, // 16 50
	33, 34, 35, // 17 53
	36, 37, 38, // 18 56
	39, 40, 41, // 19 59
	42, 39, 43, // 20 62
	44, 45, 46, // 21 65
	47, 44, 43, // 22 68
	48, 38, 37, // 23 71
	49, 47, 41, // 24 74
	36, 49, 37, // 25 77
	50, 51, 52, // 26 80
	53, 50, 3, // 27 83
	52, 54, 4, // 28 86
	55, 56, 54, // 29 89
	38, 48, 57, // 30 92
	58, 0, 59, // 31 95
	1, 60, 2, // 32 98
	5, 32, 61, // 33 101
	5, 28, 53, // 34 104
	5, 53, 3, // 35 107
	61, 28, 5, // 36 110
	62, 63, 64, // 37 113
	6, 62, 7, // 38 116
	65, 66, 6, // 39 119
	6, 8, 65, // 40 122
	64, 30, 7, // 41 125
	7, 62, 64, // 42 128
	23, 15, 9, // 43 131
	11, 23, 9, // 44 134
	10, 9, 12, // 45 137
	15, 24, 14, // 46 140
	66, 65, 16, // 47 143
	13, 67, 16, // 48 146
	16, 10, 13, // 49 149
	16, 67, 66, // 50 152
	26, 22, 19, // 51 155
	19, 42, 46, // 52 158
	46, 45, 17, // 53 161
	17, 19, 46, // 54 164
	19, 18, 26, // 55 167
	22, 26, 20, // 56 170
	21, 20, 15, // 57 173
	20, 25, 24, // 58 176
	26, 18, 25, // 59 179
	28, 61, 29, // 60 182
	27, 29, 7, // 61 185
	7, 29, 31, // 62 188
	29, 61, 32, // 63 191
	58, 59, 68, // 64 194
	55, 68, 33, // 65 197
	56, 55, 33, // 66 200
	35, 56, 33, // 67 203
	55, 51, 58, // 68 206
	58, 68, 55, // 69 209
	38, 69, 36, // 70 212
	41, 43, 39, // 71 215
	43, 46, 42, // 72 218
	46, 43, 44, // 73 221
	43, 41, 47, // 74 224
	37, 41, 40, // 75 227
	37, 40, 48, // 76 230
	41, 37, 49, // 77 233
	51, 55, 52, // 78 236
	50, 52, 3, // 79 239
	4, 3, 52, // 80 242
	54, 52, 55, // 81 245
	57, 35, 34, // 82 248
	57, 70, 69, // 83 251
	69, 38, 57, // 84 254
	34, 70, 57, // 85 257
	0, 2, 59, // 86 260
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_d_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_d_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_d_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_d_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_d_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_d_1_1__ )
DX3DMODEL_START( model_Trim_Char_d_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_d_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_d_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 261 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_d_1_1__, 581140661 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_d_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_c_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_e_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_e_1_1___initialShadingGroup_0 )
DX3DVERT( 0.375061, 1.76632, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.584747, 1.97006, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.584793, 1.76634, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.584534, 0.591137, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.584793, 0.562706, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.263931, 0.562676, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 1.31151, 0.262122, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 1.32631, 0.266061, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 1.3264, 0.261797, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.3264, -0.0133968, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.59843, 0.261797, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.59843, 0.0578134, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.59843, 0.370314, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 0.584778, 0.078301, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 0.395142, 0.261688, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 0.584793, 0.261797, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 0.770187, 0.261797, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 0.584793, 0.412251, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 0.593735, 0.562645, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 0.669403, 0.412665, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 0.770325, 0.31256, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 0.869324, 0.261789, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.257065, 1.46547, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 0.575912, 1.46546, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 0.537506, 1.17031, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.3264, 1.16452, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.955597, 1.16452, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.955597, 1.17031, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 1.3264, 0.9125, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.955597, 0.9125, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 1.68906, 0.9125, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.38907, 1.17031, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.69679, 1.06599, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 0.213959, 1.01918, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 0.584793, 1.16452, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 0.584793, 0.9125, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 0.584793, 1.17031, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 0.991302, 2.06726, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.32646, 1.99608, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.3264, 1.76634, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1.30281, 1.61589, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1.15063, 1.76628, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 1.66141, 1.46543, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 1.35825, 1.46545, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 1.3264, 1.61589, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 1.32643, 1.56548, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 1.56012, 1.76628, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 0.770187, 1.76634, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 0.770172, 1.74905, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 0.634689, 1.61588, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 0.584656, 1.49666, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 0.584793, 1.61589, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 0.807434, 1.76634, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 0.955597, 2.06662, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 0.218887, 0.863629, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 0.5401, 0.863612, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 1.05176, -0.0391934, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 0.955597, -0.0354717, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 0.955521, 0.238767, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.07167, 0.228788, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 0.217926, 1.16453, 0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 1.3264, 1.17031, 0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 1.69513, 1.16453, 0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( 0.537506, 0.9125, 0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( 0.992447, 1.79854, 0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( 0.955597, 1.79739, 0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_e_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_e_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 66 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_e_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_e_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_e_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	6, 8, 9, // 3 11
	8, 10, 11, // 4 14
	7, 12, 10, // 5 17
	13, 14, 15, // 6 20
	13, 15, 16, // 7 23
	5, 4, 17, // 8 26
	18, 19, 17, // 9 29
	20, 16, 15, // 10 32
	20, 21, 16, // 11 35
	3, 18, 4, // 12 38
	22, 23, 24, // 13 41
	25, 26, 27, // 14 44
	28, 29, 26, // 15 47
	30, 28, 25, // 16 50
	31, 32, 25, // 17 53
	33, 24, 34, // 18 56
	29, 35, 34, // 19 59
	26, 34, 36, // 20 62
	37, 38, 39, // 21 65
	40, 41, 39, // 22 68
	42, 43, 44, // 23 71
	45, 40, 44, // 24 74
	38, 46, 39, // 25 77
	22, 0, 2, // 26 80
	2, 47, 48, // 27 83
	49, 50, 51, // 28 86
	47, 52, 48, // 29 89
	53, 52, 47, // 30 92
	5, 54, 55, // 31 95
	5, 55, 3, // 32 98
	56, 57, 58, // 33 101
	9, 56, 59, // 34 104
	9, 59, 6, // 35 107
	58, 59, 56, // 36 110
	11, 9, 8, // 37 113
	10, 8, 7, // 38 116
	16, 21, 57, // 39 119
	57, 21, 58, // 40 122
	16, 57, 13, // 41 125
	17, 15, 14, // 42 128
	14, 5, 17, // 43 131
	17, 4, 18, // 44 134
	15, 17, 19, // 45 137
	15, 19, 20, // 46 140
	24, 36, 34, // 47 143
	24, 33, 60, // 48 146
	24, 60, 22, // 49 149
	27, 61, 25, // 50 152
	26, 25, 28, // 51 155
	32, 31, 62, // 52 158
	32, 30, 25, // 53 161
	25, 61, 31, // 54 164
	31, 43, 42, // 55 167
	42, 62, 31, // 56 170
	63, 55, 54, // 57 173
	34, 54, 33, // 58 176
	34, 35, 63, // 59 179
	63, 54, 34, // 60 182
	34, 26, 29, // 61 185
	36, 27, 26, // 62 188
	64, 65, 53, // 63 191
	41, 64, 37, // 64 194
	37, 39, 41, // 65 197
	53, 37, 64, // 66 200
	39, 44, 40, // 67 203
	43, 45, 44, // 68 206
	39, 46, 42, // 69 209
	44, 39, 42, // 70 212
	51, 50, 23, // 71 215
	51, 23, 22, // 72 218
	22, 2, 51, // 73 221
	49, 51, 2, // 74 224
	48, 49, 2, // 75 227
	65, 52, 53, // 76 230
	2, 1, 47, // 77 233
	47, 1, 53, // 78 236
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_e_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_e_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_e_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_e_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_e_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_e_1_1__ )
DX3DMODEL_START( model_Trim_Char_e_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_e_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_e_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 237 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_e_1_1__, 3592077045 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_e_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_d_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_f_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_f_1_1___initialShadingGroup_0 )
DX3DVERT( 1.36205, 2.61735, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.30551, 2.88652, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.20253, 2.88083, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.760941, 1.08225, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.06876, 1.08225, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.06876, 1.443, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.760941, 0.360751, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.06876, 0.360751, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.06876, 0.721502, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.760941, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.06876, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.760941, 0.721502, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.65781, 1.80376, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.65781, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.20261, 1.80376, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.292191, 1.80376, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.747391, 1.80376, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.747391, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.292191, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.747391, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.20261, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.65781, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.06876, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.06897, 2.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.759308, 2.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.759201, 2.1288, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.12479, 2.52515, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.975006, 2.52526, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.20261, 2.70563, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.975052, 2.80393, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.20244, 2.59036, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.975006, 2.70563, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.873978, 2.70562, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.796494, 2.52529, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.65781, 2.54688, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.65781, 2.82813, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.760941, 1.443, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.20261, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.292191, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.760941, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.06876, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.760941, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.06815, 2.07326, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_f_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_f_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 43 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_f_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_f_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_f_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 7, // 3 11
	11, 8, 4, // 4 14
	12, 13, 14, // 5 17
	15, 16, 17, // 6 20
	18, 19, 16, // 7 23
	20, 21, 12, // 8 26
	22, 20, 14, // 9 29
	23, 24, 25, // 10 32
	23, 26, 27, // 11 35
	28, 2, 29, // 12 38
	30, 28, 31, // 13 41
	32, 33, 27, // 14 44
	29, 32, 31, // 15 47
	0, 34, 35, // 16 50
	28, 30, 0, // 17 53
	2, 28, 0, // 18 56
	35, 1, 0, // 19 59
	5, 36, 3, // 20 62
	8, 11, 6, // 21 65
	7, 6, 9, // 22 68
	4, 3, 11, // 23 71
	13, 37, 14, // 24 74
	17, 38, 15, // 25 77
	16, 15, 18, // 26 80
	12, 14, 20, // 27 83
	36, 5, 22, // 28 86
	16, 19, 39, // 29 89
	16, 39, 22, // 30 92
	22, 40, 16, // 31 95
	22, 39, 36, // 32 98
	14, 37, 40, // 33 101
	41, 17, 16, // 34 104
	41, 16, 23, // 35 107
	25, 41, 23, // 36 110
	42, 23, 16, // 37 113
	40, 22, 14, // 38 116
	16, 40, 42, // 39 119
	33, 24, 23, // 40 122
	27, 33, 23, // 41 125
	29, 31, 28, // 42 128
	31, 27, 26, // 43 131
	31, 26, 30, // 44 134
	27, 31, 32, // 45 137
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_f_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_f_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_f_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_f_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_f_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_f_1_1__ )
DX3DMODEL_START( model_Trim_Char_f_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_f_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_f_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 138 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_f_1_1__, 2308046133 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_f_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_e_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_g_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_g_1_1___initialShadingGroup_0 )
DX3DVERT( 1.23502, 1.64375, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.46227, 1.64365, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.41251, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.46227, -0.0505257, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.71399, -0.0505236, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.7157, 0.0917512, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.51523, -0.685786, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.64253, -0.474155, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.46227, -0.474069, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.702072, -0.606199, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.370316, -0.4875, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.370316, -0.8, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.909363, -0.628994, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.913696, -0.898023, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.20901, -0.862964, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.46222, -0.736329, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.46227, -0.68584, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.20888, -0.68584, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.20888, -0.54285, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.702087, 0.373017, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.4487, 0.373017, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.448334, 0.174892, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.46257, 0.160947, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.702179, 0.0236233, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.702087, 0.161246, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.311874, 0.372871, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.69597, -0.262273, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.46227, -0.262297, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.37776, -0.262323, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.27927, -0.474061, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.40536, -0.0505021, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.878479, -0.000764786, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.71562, 0.79656, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.71562, 1.2201, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.40787, 1.01328, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.4487, 0.79656, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.516403, 0.796562, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.503128, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.4487, 0.584789, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.568253, 0.584788, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.701965, 0.385157, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.238998, 0.58482, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.71562, 0.584789, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.46227, 0.584789, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.716614, 0.372932, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.71574, 0.373017, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.46227, 0.373017, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.20908, 0.385612, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.20888, 0.373017, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.39594, 0.796575, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.34416, 0.584769, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.4487, 1.90658, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.4487, 1.85542, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.702087, 1.85542, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.28595, 1.64366, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.202194, 1.22011, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.511948, 1.2201, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.4487, 1.64365, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.652588, 1.64367, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.702087, 1.69247, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.402664, 1.85541, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.71562, 1.43187, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.71562, 1.64365, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.46227, 1.43187, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.46227, 1.2201, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.35344, 1.43187, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 1.39815, 1.2201, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 0.955475, 2.06224, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 0.95549, 1.85542, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 1.08218, 1.85542, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 1.09096, 1.74933, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 1.20888, 1.74953, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 1.20888, 1.85542, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 0.954819, 1.77527, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 1.20886, 1.67112, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 1.08211, 1.7528, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 0.702103, 2.04694, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 1.19374, 0.37286, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 1.71562, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 1.42813, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 1.42032, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( 1.20888, 1.9608, 0 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT( 1.20888, 0.0982013, 0 ) DX3DVNORM( 0, 0, 1 )  //82
DX3DVERT( 1.39999, 0.33125, 0 ) DX3DVNORM( 0, 0, 1 )  //83
DX3DVERT( 1.40729, 0.0421944, 0 ) DX3DVNORM( 0, 0, 1 )  //84
DX3DVERT( 1.40781, 0.33125, 0 ) DX3DVNORM( 0, 0, 1 )  //85
DX3DVERT( 0.702179, -0.881776, 0 ) DX3DVNORM( 0, 0, 1 )  //86
DX3DVERT( 0.956055, 0.292191, 0 ) DX3DVNORM( 0, 0, 1 )  //87
DX3DVERT( 1.46227, 0.79656, 0 ) DX3DVNORM( 0, 0, 1 )  //88
DX3DVERT( 0.195313, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //89
DX3DVERT( 0.204987, 0.796577, 0 ) DX3DVNORM( 0, 0, 1 )  //90
DX3DVERT( 0.878128, 2.06719, 0 ) DX3DVNORM( 0, 0, 1 )  //91
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_g_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_g_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 92 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_g_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_g_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_g_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 6, 16, // 5 17
	17, 14, 15, // 6 20
	18, 17, 16, // 7 23
	19, 20, 21, // 8 26
	22, 23, 24, // 9 29
	20, 25, 21, // 10 32
	26, 4, 3, // 11 35
	7, 26, 27, // 12 38
	28, 29, 8, // 13 41
	30, 28, 27, // 14 44
	24, 23, 31, // 15 47
	32, 33, 34, // 16 50
	35, 36, 37, // 17 53
	38, 39, 36, // 18 56
	20, 19, 40, // 19 59
	25, 20, 38, // 20 62
	41, 38, 35, // 21 65
	42, 32, 43, // 22 68
	40, 19, 44, // 23 71
	45, 42, 46, // 24 74
	47, 48, 46, // 25 77
	49, 50, 43, // 26 80
	51, 52, 53, // 27 83
	54, 55, 56, // 28 86
	57, 58, 59, // 29 89
	60, 54, 57, // 30 92
	51, 60, 52, // 31 95
	61, 62, 63, // 32 98
	33, 61, 64, // 33 101
	63, 65, 66, // 34 104
	1, 0, 65, // 35 107
	67, 68, 69, // 36 110
	70, 71, 72, // 37 113
	53, 59, 73, // 38 116
	70, 74, 71, // 39 119
	73, 75, 69, // 40 122
	76, 53, 68, // 41 125
	47, 77, 48, // 42 128
	78, 79, 80, // 43 131
	2, 81, 72, // 44 134
	2, 71, 74, // 45 137
	74, 0, 2, // 46 140
	72, 71, 2, // 47 143
	80, 2, 1, // 48 146
	1, 62, 78, // 49 149
	78, 80, 1, // 50 152
	48, 82, 83, // 51 155
	84, 30, 3, // 52 158
	5, 45, 84, // 53 161
	84, 3, 5, // 54 164
	84, 45, 46, // 55 167
	83, 85, 46, // 56 170
	46, 48, 83, // 57 173
	46, 85, 84, // 58 176
	8, 16, 6, // 59 179
	11, 86, 9, // 60 182
	12, 9, 86, // 61 185
	17, 18, 12, // 62 188
	12, 14, 17, // 63 191
	86, 13, 12, // 64 194
	15, 16, 17, // 65 197
	16, 8, 29, // 66 200
	16, 29, 18, // 67 203
	22, 24, 19, // 68 206
	21, 22, 19, // 69 209
	3, 27, 26, // 70 212
	27, 8, 7, // 71 215
	8, 27, 28, // 72 218
	27, 3, 30, // 73 221
	82, 48, 77, // 74 224
	44, 19, 24, // 75 227
	87, 44, 24, // 76 230
	31, 87, 24, // 77 233
	87, 31, 82, // 78 236
	77, 87, 82, // 79 239
	64, 66, 34, // 80 242
	34, 49, 88, // 81 245
	88, 32, 34, // 82 248
	34, 33, 64, // 83 251
	37, 56, 55, // 84 254
	37, 89, 90, // 85 257
	37, 90, 35, // 86 260
	55, 89, 37, // 87 263
	36, 35, 38, // 88 266
	39, 38, 20, // 89 269
	40, 39, 20, // 90 272
	38, 41, 25, // 91 275
	35, 90, 41, // 92 278
	32, 88, 43, // 93 281
	42, 43, 46, // 94 284
	46, 43, 50, // 95 287
	46, 50, 47, // 96 290
	43, 88, 49, // 97 293
	53, 76, 51, // 98 296
	56, 58, 57, // 99 299
	57, 54, 56, // 100 302
	53, 52, 57, // 101 305
	59, 53, 57, // 102 308
	57, 52, 60, // 103 311
	62, 1, 63, // 104 314
	61, 63, 64, // 105 317
	66, 64, 63, // 106 320
	65, 63, 1, // 107 323
	69, 72, 81, // 108 326
	81, 67, 69, // 109 329
	69, 75, 70, // 110 332
	70, 72, 69, // 111 335
	73, 73, 68, // 112 338
	68, 53, 73, // 113 341
	69, 68, 73, // 114 344
	68, 67, 91, // 115 347
	91, 76, 68, // 116 350
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_g_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_g_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_g_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_g_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_g_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_g_1_1__ )
DX3DMODEL_START( model_Trim_Char_g_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_g_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_g_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 351 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_g_1_1__, 1024015221 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_g_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_f_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_h_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_h_1_1___initialShadingGroup_0 )
DX3DVERT( 0.581253, 2.50714, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.581253, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.273438, 2.50714, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.71562, 1.25357, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.41502, 1.25357, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.41562, 0.835714, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.41562, 5.85686e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.71562, 5.85686e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.71562, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.273438, 2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.581253, 5.85686e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.581253, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.273438, 0.835714, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.580872, 0.835713, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.580566, 0.925609, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.273438, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.41562, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.71562, 0.835714, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.58429, 1.88019, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.47533, 1.9832, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.47527, 1.88036, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.581253, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.581253, 2.08929, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.273438, 2.08929, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.273438, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.273438, 1.25357, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.603073, 1.25358, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.47527, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.33975, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.754166, 1.62278, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.795578, 1.67156, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.754166, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.23489, 1.88036, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.23499, 2.06251, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.13124, 2.06774, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.06169, 1.79035, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.23489, 1.75911, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.994537, 1.78502, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.994537, 1.88036, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.754166, 1.88036, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.753571, 1.94003, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.67613, 1.67145, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.273438, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.589066, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.71562, 1.2875, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.994659, 2.05148, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_h_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_h_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 46 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_h_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_h_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_h_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 11, 13, // 5 17
	16, 8, 17, // 6 20
	18, 19, 20, // 7 23
	21, 22, 23, // 8 26
	24, 25, 26, // 9 29
	27, 28, 4, // 10 32
	29, 30, 31, // 11 35
	32, 33, 34, // 12 38
	35, 36, 32, // 13 41
	37, 38, 39, // 14 44
	40, 39, 38, // 15 47
	27, 41, 18, // 16 50
	28, 27, 20, // 17 53
	19, 33, 32, // 18 56
	22, 0, 23, // 19 59
	1, 42, 2, // 20 62
	5, 17, 3, // 21 65
	8, 16, 6, // 22 68
	11, 15, 9, // 23 71
	14, 26, 25, // 24 74
	14, 25, 12, // 25 77
	13, 12, 15, // 26 80
	17, 5, 16, // 27 83
	39, 40, 43, // 28 86
	31, 43, 21, // 29 89
	21, 29, 31, // 30 92
	23, 24, 21, // 31 95
	43, 31, 39, // 32 98
	29, 21, 24, // 33 101
	24, 26, 29, // 34 104
	4, 3, 44, // 35 107
	4, 44, 41, // 36 110
	4, 41, 27, // 37 113
	45, 38, 32, // 38 116
	34, 45, 32, // 39 119
	38, 37, 35, // 40 122
	35, 32, 38, // 41 125
	39, 31, 30, // 42 128
	30, 37, 39, // 43 131
	38, 45, 40, // 44 134
	18, 20, 27, // 45 137
	20, 32, 36, // 46 140
	36, 28, 20, // 47 143
	32, 20, 19, // 48 146
	0, 2, 23, // 49 149
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_h_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_h_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_h_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_h_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_h_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_h_1_1__ )
DX3DMODEL_START( model_Trim_Char_h_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_h_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_h_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 150 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_h_1_1__, 4034951605 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_h_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_g_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_i_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_i_1_1___initialShadingGroup_0 )
DX3DVERT( 1.01407, 1.85254, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.487503, 1.85254, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.487503, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 1.01407, 1.11152, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.912506, 1.11152, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.912506, 1.48203, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 1.01407, 0.370508, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.912506, 0.370508, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.912506, 0.741016, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 0.370316, 0, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 0.370316, 0.265626, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 0.912506, 0.265626, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.65781, 0.265626, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.65781, 0, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.01407, 0, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.23282, 0.370508, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 1.01407, 0.741016, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.23282, 0.741016, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.23282, 1.11152, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.01407, 1.48203, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 0.912506, 1.7625, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 0.487503, 1.7625, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 1.23282, 1.48203, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.23282, 1.85254, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.01407, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.23282, 0.265626, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.23282, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.834381, 2.59356, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.834381, 2.96406, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 1.01407, 2.59356, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.834381, 2.49531, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.01407, 2.49531, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.23282, 2.49531, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.23282, 2.59356, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.01407, 2.96406, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.23282, 2.96406, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_i_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_i_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 36 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_i_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_i_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_i_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 6, 16, // 5 17
	16, 8, 4, // 6 20
	17, 16, 3, // 7 23
	18, 3, 19, // 8 26
	20, 21, 1, // 9 29
	22, 19, 0, // 10 32
	23, 0, 24, // 11 35
	2, 24, 0, // 12 38
	5, 19, 3, // 13 41
	8, 16, 6, // 14 44
	11, 7, 6, // 15 47
	11, 6, 14, // 16 50
	11, 14, 9, // 17 53
	6, 15, 25, // 18 56
	14, 6, 25, // 19 59
	25, 12, 14, // 20 62
	16, 17, 15, // 21 65
	4, 3, 16, // 22 68
	3, 18, 17, // 23 71
	19, 22, 18, // 24 74
	19, 5, 20, // 25 77
	0, 19, 20, // 26 80
	1, 0, 20, // 27 83
	0, 23, 22, // 28 86
	24, 26, 23, // 29 89
	27, 28, 29, // 30 92
	30, 27, 31, // 31 95
	32, 31, 29, // 32 98
	33, 29, 34, // 33 101
	28, 34, 29, // 34 104
	27, 29, 31, // 35 107
	29, 33, 32, // 36 110
	34, 35, 33, // 37 113
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_i_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_i_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_i_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_i_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_i_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_i_1_1__ )
DX3DMODEL_START( model_Trim_Char_i_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_i_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_i_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 114 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_i_1_1__, 2750920693 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_i_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_h_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_j_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_j_1_1___initialShadingGroup_0 )
DX3DVERT( 0.503128, 1.99883, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.503128, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.819763, 1.99883, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.967194, 0.550977, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.967194, 1.03359, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 1.28751, 0.550977, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 1.05386, -0.414258, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.950134, -0.41428, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.967194, -0.128124, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 0.819748, -0.87116, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 0.351563, -0.896875, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 0.351563, -0.631249, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 0.893967, -0.534882, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 0.936829, -0.457475, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 0.936813, -0.534912, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 0.819763, -0.655566, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 0.936813, -0.655566, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.1974, -0.655531, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 1.054, -0.792892, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.05386, -0.655566, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.27388, -0.414352, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.05386, -0.534912, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.819824, -0.583651, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 1.28757, 0.104298, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 0.819763, 1.7625, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.503128, 1.7625, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.967194, 1.51621, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.28751, 1.03359, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.967194, 1.7625, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 1.28751, 1.99883, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.819763, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 0.967194, 0.0683597, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.2877, 0.0683603, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.28802, -0.0690723, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.28751, 1.51621, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.28751, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 0.889069, 2.49531, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 0.889069, 2.96406, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.28751, 2.49531, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.28751, 2.96406, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_j_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_j_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 40 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_j_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_j_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_j_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	9, 15, 16, // 5 17
	17, 18, 19, // 6 20
	20, 17, 21, // 7 23
	16, 15, 22, // 8 26
	19, 16, 14, // 9 29
	7, 6, 21, // 10 32
	3, 5, 23, // 11 35
	24, 25, 0, // 12 38
	4, 26, 27, // 13 41
	28, 2, 29, // 14 44
	29, 2, 30, // 15 47
	1, 30, 2, // 16 50
	4, 27, 5, // 17 53
	31, 32, 33, // 18 56
	8, 33, 20, // 19 59
	8, 20, 6, // 20 62
	33, 8, 31, // 21 65
	11, 22, 15, // 22 68
	15, 9, 11, // 23 71
	16, 19, 18, // 24 74
	18, 9, 16, // 25 77
	21, 6, 20, // 26 80
	21, 17, 19, // 27 83
	12, 14, 16, // 28 86
	16, 22, 12, // 29 89
	14, 21, 19, // 30 92
	21, 14, 13, // 31 95
	21, 13, 7, // 32 98
	23, 32, 31, // 33 101
	31, 3, 23, // 34 104
	0, 2, 24, // 35 107
	26, 34, 27, // 36 110
	28, 24, 2, // 37 113
	34, 26, 28, // 38 116
	28, 29, 34, // 39 119
	30, 35, 29, // 40 122
	36, 37, 38, // 41 125
	37, 39, 38, // 42 128
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_j_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_j_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_j_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_j_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_j_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_j_1_1__ )
DX3DMODEL_START( model_Trim_Char_j_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_j_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_j_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 129 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_j_1_1__, 1466889781 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_j_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_i_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_k_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_k_1_1___initialShadingGroup_0 )
DX3DVERT( 0.620316, 2.50714, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.620316, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.3125, 2.50714, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.896881, 1.05313, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.08127, 1.25357, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.806244, 1.25357, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.4379, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.3, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.3, 0.151535, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.3125, -7.71951e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.620316, -4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.620316, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.08305, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.620316, 1.11563, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.620316, 1.25357, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.3125, 1.25357, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.3125, 0.417857, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.620316, 0.835714, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.3, 0.57977, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.08203, 0.835714, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.3, 1.8834, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.3, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.46564, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.620316, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.620316, 2.08929, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.3125, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.806244, 1.32566, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.742432, 1.25357, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.3, 1.49137, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.11235, 1.67143, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.3125, 2.08929, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.806244, 0.835714, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.742676, 0.835714, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.806244, 0.757676, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.3125, 2.925, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.42343, -7.71951e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.79375, -7.71951e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.3125, 0.835714, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.620316, 0.985939, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.79375, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.42813, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_k_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_k_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 41 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_k_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_k_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_k_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	7, 12, 8, // 4 14
	13, 14, 15, // 5 17
	16, 11, 17, // 6 20
	7, 6, 18, // 7 23
	12, 18, 19, // 8 26
	20, 21, 22, // 9 29
	23, 24, 25, // 10 32
	26, 27, 5, // 11 35
	28, 22, 21, // 12 38
	26, 5, 4, // 13 41
	20, 29, 21, // 14 44
	24, 0, 30, // 15 47
	31, 32, 33, // 16 50
	14, 23, 15, // 17 53
	1, 34, 2, // 18 56
	31, 19, 3, // 19 59
	5, 31, 3, // 20 62
	35, 36, 6, // 21 65
	8, 35, 6, // 22 68
	11, 16, 9, // 23 71
	32, 31, 5, // 24 74
	37, 17, 38, // 25 77
	15, 37, 13, // 26 80
	38, 13, 37, // 27 83
	5, 27, 13, // 28 86
	5, 13, 38, // 29 89
	5, 38, 32, // 30 92
	17, 37, 16, // 31 95
	12, 7, 18, // 32 98
	19, 31, 33, // 33 101
	33, 12, 19, // 34 104
	22, 39, 40, // 35 107
	22, 40, 20, // 36 110
	24, 30, 25, // 37 113
	28, 21, 29, // 38 116
	4, 28, 29, // 39 119
	4, 29, 26, // 40 122
	0, 2, 30, // 41 125
	23, 25, 15, // 42 128
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_k_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_k_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_k_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_k_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_k_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_k_1_1__ )
DX3DMODEL_START( model_Trim_Char_k_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_k_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_k_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 129 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_k_1_1__, 182858869 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_k_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_j_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_l_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_l_1_1___initialShadingGroup_0 )
DX3DVERT( 0.74115, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.74115, 2.58125, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.776566, 2.58125, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.776154, 0.785157, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.09531, 0.785156, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.09531, 1.1975, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.20885, -0.0342798, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.34857, -0.039533, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.3773, 0.226242, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.10645, 0.372811, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.09193, 0.372812, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.09193, 0.269726, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.20886, 0.16664, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.09193, 0.16664, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.894135, 0.0637178, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.975006, 0.0635537, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.975006, 0.16664, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.97493, 0.0134167, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.826996, 0.166624, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.858124, 0.105781, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.858078, 0.16664, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.783783, 0.372825, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.20886, 0.241536, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.975006, 0.269726, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.775986, 0.568536, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.975006, 0.372812, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.09531, 0.584376, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.776566, 1.60984, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.09531, 1.60984, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.09531, 2.02219, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.776566, 1.1975, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.273438, 2.58125, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.776566, 2.02219, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.09531, 2.43453, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.776566, 2.43453, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.09531, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.67656, -0.0187488, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.67656, 0.250001, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.14493, 0.26988, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.273438, 2.84688, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_l_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_l_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 40 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_l_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_l_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_l_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	6, 12, 13, // 4 14
	14, 15, 16, // 5 17
	14, 17, 15, // 6 20
	18, 19, 20, // 7 23
	21, 18, 20, // 8 26
	13, 12, 22, // 9 29
	16, 13, 11, // 10 32
	23, 11, 10, // 11 35
	24, 25, 26, // 12 38
	27, 28, 29, // 13 41
	30, 5, 28, // 14 44
	31, 1, 0, // 15 47
	32, 29, 33, // 16 50
	2, 34, 33, // 17 53
	2, 35, 0, // 18 56
	33, 35, 2, // 19 59
	5, 30, 3, // 20 62
	36, 37, 8, // 21 65
	8, 22, 12, // 22 68
	12, 6, 8, // 23 71
	8, 7, 36, // 24 74
	11, 38, 9, // 25 77
	15, 17, 6, // 26 80
	13, 15, 6, // 27 83
	15, 13, 16, // 28 86
	16, 20, 19, // 29 89
	19, 14, 16, // 30 92
	23, 25, 21, // 31 95
	20, 23, 21, // 32 98
	23, 20, 16, // 33 101
	38, 11, 13, // 34 104
	13, 22, 38, // 35 107
	11, 23, 16, // 36 110
	10, 25, 23, // 37 113
	10, 9, 26, // 38 116
	24, 21, 25, // 39 119
	26, 4, 3, // 40 122
	3, 24, 26, // 41 125
	26, 25, 10, // 42 128
	29, 32, 27, // 43 131
	28, 27, 30, // 44 134
	0, 39, 31, // 45 137
	33, 34, 32, // 46 140
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_l_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_l_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_l_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_l_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_l_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_l_1_1__ )
DX3DMODEL_START( model_Trim_Char_l_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_l_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_l_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 141 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_l_1_1__, 3193795253 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_l_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_k_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_m_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_m_1_1___initialShadingGroup_0 )
DX3DVERT( 1.80722, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.69254, 2.01957, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.69254, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.87187, 0.604164, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.8725, 1.03359, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.57187, 0.604164, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.078125, 0.604164, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.38559, 0.604164, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.385498, 0.690708, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.078125, -1.22602e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.385941, -1.22602e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.385941, 0.344531, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.078125, 0.344531, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.57187, -1.22602e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.87187, -4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.87187, 0.344531, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.826569, -1.22602e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.13126, -4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.13126, 0.344531, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.826569, 0.604164, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.13123, 0.604164, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.13112, 0.802344, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.826569, 0.344531, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.57187, 0.344531, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.705948, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.795639, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.795639, 1.98106, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.078125, 1.37813, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.078125, 1.03359, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.392014, 1.03357, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.436218, 1.43012, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.546341, 1.72264, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.43689, 1.72266, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.42688, 1.37824, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.359375, 1.75469, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.351563, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.078125, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.795639, 1.80879, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.705948, 1.80879, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.436874, 1.8798, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.777954, 1.72264, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.795639, 1.72266, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.662628, 1.78313, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.705978, 1.77685, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.616257, 1.80879, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.616257, 2.03999, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.447693, 1.89493, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.616257, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.87257, 1.37813, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.57124, 1.37812, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.57156, 1.33463, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.825974, 1.37812, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.826599, 1.03359, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.13092, 1.03359, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.01176, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.975021, 1.9536, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.975021, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.15117, 1.37813, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.15434, 1.4011, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.975021, 1.72266, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.952316, 1.98106, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 0.885208, 2.03361, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.88533, 1.98106, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 0.88533, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 0.795685, 2.06351, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.69254, 1.72266, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 1.51782, 1.72265, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 1.26904, 1.72281, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.1544, 1.72266, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 1.48982, 2.06707, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 1.33371, 2.03688, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 1.42346, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 1.51315, 1.80879, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 1.51315, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 1.42346, 1.80879, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 1.15442, 1.88682, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 1.42352, 1.77963, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 1.51308, 1.72886, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 1.38582, 1.78318, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 1.33377, 1.80879, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 1.16043, 1.89491, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( 1.33377, 1.89492, 0 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT( 1.51315, 2.06647, 0 ) DX3DVNORM( 0, 0, 1 )  //82
DX3DVERT( 0.795258, 1.68499, 0 ) DX3DVNORM( 0, 0, 1 )  //83
DX3DVERT( 1.57193, 1.03359, 0 ) DX3DVNORM( 0, 0, 1 )  //84
DX3DVERT( 1.13074, 0.977498, 0 ) DX3DVNORM( 0, 0, 1 )  //85
DX3DVERT( 0.740616, 2.06745, 0 ) DX3DVNORM( 0, 0, 1 )  //86
DX3DVERT( 0.078125, 1.72266, 0 ) DX3DVNORM( 0, 0, 1 )  //87
DX3DVERT( 0.367188, 1.75469, 0 ) DX3DVNORM( 0, 0, 1 )  //88
DX3DVERT( 0.616272, 1.77514, 0 ) DX3DVNORM( 0, 0, 1 )  //89
DX3DVERT( 1.07657, 1.75469, 0 ) DX3DVNORM( 0, 0, 1 )  //90
DX3DVERT( 1.06876, 1.75469, 0 ) DX3DVNORM( 0, 0, 1 )  //91
DX3DVERT( 1.87215, 1.44863, 0 ) DX3DVNORM( 0, 0, 1 )  //92
DX3DVERT( 1.85626, 1.72265, 0 ) DX3DVNORM( 0, 0, 1 )  //93
DX3DVERT( 1.33379, 1.7734, 0 ) DX3DVNORM( 0, 0, 1 )  //94
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_m_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_m_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 95 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_m_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_m_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_m_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 11, 7, // 4 14
	13, 14, 15, // 5 17
	16, 17, 18, // 6 20
	19, 20, 21, // 7 23
	22, 18, 20, // 8 26
	15, 3, 23, // 9 29
	24, 25, 26, // 10 32
	27, 28, 29, // 11 35
	30, 31, 32, // 12 38
	27, 33, 30, // 13 41
	34, 35, 36, // 14 44
	37, 25, 38, // 15 47
	39, 32, 31, // 16 50
	40, 41, 37, // 17 53
	42, 43, 38, // 18 56
	44, 38, 24, // 19 59
	45, 46, 47, // 20 62
	48, 49, 50, // 21 65
	51, 52, 53, // 22 68
	54, 55, 56, // 23 71
	51, 57, 58, // 24 74
	54, 56, 59, // 25 77
	37, 41, 59, // 26 80
	60, 61, 62, // 27 83
	60, 62, 63, // 28 86
	25, 63, 62, // 29 89
	61, 64, 26, // 30 92
	65, 66, 49, // 31 95
	67, 68, 58, // 32 98
	69, 70, 71, // 33 101
	72, 73, 74, // 34 104
	75, 68, 67, // 35 107
	76, 77, 72, // 36 110
	78, 76, 74, // 37 113
	79, 74, 71, // 38 116
	70, 80, 81, // 39 119
	0, 2, 65, // 40 122
	2, 73, 72, // 41 125
	1, 82, 73, // 42 128
	41, 40, 83, // 43 131
	4, 84, 5, // 44 134
	8, 29, 28, // 45 137
	8, 28, 6, // 46 140
	11, 12, 9, // 47 143
	7, 6, 12, // 48 146
	15, 23, 13, // 49 149
	18, 22, 16, // 50 152
	85, 53, 52, // 51 155
	21, 85, 19, // 52 158
	52, 19, 85, // 53 161
	20, 19, 22, // 54 164
	3, 5, 23, // 55 167
	45, 47, 24, // 56 170
	26, 64, 86, // 57 173
	86, 24, 26, // 58 176
	24, 86, 45, // 59 179
	29, 33, 27, // 60 182
	30, 34, 87, // 61 185
	30, 87, 27, // 62 188
	32, 39, 88, // 63 191
	34, 30, 32, // 64 194
	36, 87, 34, // 65 197
	88, 34, 32, // 66 200
	25, 24, 38, // 67 203
	31, 89, 44, // 68 206
	31, 47, 46, // 69 209
	46, 39, 31, // 70 212
	44, 47, 31, // 71 215
	37, 38, 43, // 72 218
	37, 43, 40, // 73 221
	44, 89, 42, // 74 224
	38, 44, 42, // 75 227
	24, 47, 44, // 76 230
	84, 4, 48, // 77 233
	50, 84, 48, // 78 236
	53, 57, 51, // 79 239
	59, 41, 83, // 80 242
	51, 59, 83, // 81 245
	58, 68, 51, // 82 248
	59, 51, 68, // 83 251
	68, 75, 90, // 84 254
	59, 68, 91, // 85 257
	59, 91, 54, // 86 260
	90, 91, 68, // 87 263
	63, 25, 37, // 88 266
	59, 56, 63, // 89 269
	59, 63, 37, // 90 272
	63, 56, 55, // 91 275
	55, 60, 63, // 92 278
	62, 26, 25, // 93 281
	26, 62, 61, // 94 284
	49, 48, 92, // 95 287
	49, 92, 93, // 96 290
	49, 93, 65, // 97 293
	70, 81, 71, // 98 296
	73, 82, 69, // 99 299
	69, 71, 73, // 100 302
	73, 71, 74, // 101 305
	67, 94, 79, // 102 308
	67, 81, 80, // 103 311
	80, 75, 67, // 104 314
	79, 81, 67, // 105 317
	72, 74, 76, // 106 320
	79, 94, 78, // 107 323
	74, 79, 78, // 108 326
	71, 81, 79, // 109 329
	65, 93, 0, // 110 332
	72, 77, 66, // 111 335
	66, 65, 2, // 112 338
	72, 66, 2, // 113 341
	73, 2, 1, // 114 344
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_m_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_m_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_m_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_m_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_m_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_m_1_1__ )
DX3DMODEL_START( model_Trim_Char_m_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_m_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_m_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 345 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_m_1_1__, 1909764341 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_m_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_l_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_n_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_n_1_1___initialShadingGroup_0 )
DX3DVERT( 1.5518, 1.91946, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.53534, 1.93606, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.53535, 1.91953, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.41562, 0.590625, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.71562, 0.590625, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.71562, 0.885938, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.273438, 0.590625, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.581177, 0.590625, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.581085, 0.885937, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.273438, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.581253, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.581253, 0.295313, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.273438, 0.295313, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.41562, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.71562, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.71562, 0.295313, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.41562, 0.295313, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.70782, 1.47656, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.4005, 1.47656, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.41591, 1.18125, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.633911, 1.38233, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.668869, 1.47666, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.633987, 1.47656, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.273438, 0.885938, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.581284, 0.925605, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.273438, 1.47656, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.273438, 1.18125, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.592636, 1.18124, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.41562, 0.885938, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.994537, 1.91953, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.994614, 2.0515, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.814255, 1.98185, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.814148, 1.68998, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.943405, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.814255, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.568756, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.567795, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.273438, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.755264, 1.62423, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.633987, 1.62422, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.633987, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.560944, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.273438, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.994583, 1.78474, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.633987, 1.82655, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.724228, 1.91953, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.814255, 1.91953, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.35515, 1.64478, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.31952, 1.69793, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.35507, 1.69805, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.35507, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.1998, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.26486, 1.74354, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.26494, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.35507, 1.91953, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.35509, 2.03781, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.13124, 2.06759, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.53535, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.64375, 1.77187, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.596451, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.71562, 1.18125, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.71562, 1.2875, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.576569, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.06169, 1.79039, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_n_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_n_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 64 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_n_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_n_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_n_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 11, 7, // 4 14
	13, 14, 15, // 5 17
	16, 15, 4, // 6 20
	17, 18, 19, // 7 23
	20, 21, 22, // 8 26
	23, 8, 24, // 9 29
	25, 26, 27, // 10 32
	19, 28, 5, // 11 35
	29, 30, 31, // 12 38
	32, 33, 34, // 13 41
	35, 36, 37, // 14 44
	21, 38, 39, // 15 47
	32, 34, 40, // 16 50
	41, 42, 37, // 17 53
	33, 43, 29, // 18 56
	44, 40, 34, // 19 59
	31, 45, 46, // 20 62
	47, 18, 17, // 21 65
	48, 49, 50, // 22 68
	48, 47, 49, // 23 71
	51, 52, 53, // 24 74
	54, 55, 56, // 25 77
	57, 58, 0, // 26 80
	50, 57, 2, // 27 83
	1, 55, 54, // 28 86
	44, 59, 40, // 29 89
	5, 28, 3, // 30 92
	8, 23, 6, // 31 95
	11, 12, 9, // 32 98
	7, 6, 12, // 33 101
	15, 16, 13, // 34 104
	4, 3, 16, // 35 107
	19, 60, 61, // 36 110
	61, 17, 19, // 37 113
	24, 27, 26, // 38 116
	24, 26, 23, // 39 119
	20, 22, 25, // 40 122
	25, 27, 20, // 41 125
	5, 60, 19, // 42 128
	31, 46, 29, // 43 131
	39, 40, 62, // 44 134
	35, 39, 62, // 45 137
	37, 25, 35, // 46 140
	40, 59, 62, // 47 143
	25, 22, 39, // 48 146
	39, 35, 25, // 49 149
	39, 22, 21, // 50 152
	40, 39, 38, // 51 155
	40, 38, 32, // 52 158
	37, 36, 41, // 53 161
	46, 34, 33, // 54 164
	29, 46, 33, // 55 167
	34, 46, 45, // 56 170
	34, 45, 44, // 57 173
	57, 50, 49, // 58 176
	17, 58, 57, // 59 179
	57, 47, 17, // 60 182
	49, 47, 57, // 61 185
	50, 53, 52, // 62 188
	52, 48, 50, // 63 191
	56, 30, 29, // 64 194
	53, 50, 54, // 65 197
	56, 63, 51, // 66 200
	56, 51, 54, // 67 203
	54, 51, 53, // 68 206
	29, 43, 63, // 69 209
	63, 56, 29, // 70 212
	0, 2, 57, // 71 215
	2, 54, 50, // 72 218
	54, 2, 1, // 73 221
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_n_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_n_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_n_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_n_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_n_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_n_1_1__ )
DX3DMODEL_START( model_Trim_Char_n_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_n_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_n_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 222 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_n_1_1__, 625733429 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_n_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_m_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_o_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_o_1_1___initialShadingGroup_0 )
DX3DVERT( 1.58603, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.36505, 1.97721, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.36484, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.70866, 0.562687, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.75053, 0.863612, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.43228, 0.863615, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.241333, 0.562687, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.56073, 0.562783, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.517746, 0.863617, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.975006, -0.0390616, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.975006, 0.228935, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.795044, 0.261968, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.363968, 0.261826, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.584961, 0.0509156, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.585159, 0.261831, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.625, 0.40625, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.585388, 0.486927, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.36505, 0.0509156, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.58603, 0.261826, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.36484, 0.261831, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.07246, -0.0347295, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.38907, 0.562725, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.36484, 0.412278, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.36465, 0.488693, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.32721, 0.412431, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.21877, 0.29595, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.21866, 0.261831, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.15457, 0.261718, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.70866, 1.46544, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.38884, 1.46534, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.43224, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.241333, 1.46544, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.199463, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.517731, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.199463, 0.863612, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.513931, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.75053, 1.16451, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.43608, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.975006, 2.06719, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.584961, 1.97721, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.795425, 1.76641, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.622787, 1.6157, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.585159, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.560944, 1.4654, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.585159, 1.61585, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.585342, 1.53944, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.363968, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.21866, 1.7663, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.2184, 1.73163, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.32747, 1.61585, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.36461, 1.53942, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.36484, 1.61585, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.15446, 1.76616, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.07246, 2.06286, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.07259, 1.79068, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.07246, 0.238072, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.195313, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.75468, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.974991, 1.79919, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_o_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_o_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 59 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_o_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_o_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_o_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	14, 11, 15, // 5 17
	12, 14, 16, // 6 20
	17, 18, 19, // 7 23
	20, 17, 19, // 8 26
	3, 21, 22, // 9 29
	23, 24, 22, // 10 32
	25, 26, 19, // 11 35
	25, 27, 26, // 12 38
	28, 29, 30, // 13 41
	31, 32, 33, // 14 44
	34, 8, 35, // 15 47
	36, 30, 37, // 16 50
	38, 39, 40, // 17 53
	41, 40, 42, // 18 56
	31, 43, 44, // 19 59
	45, 41, 44, // 20 62
	39, 46, 42, // 21 65
	28, 0, 2, // 22 68
	2, 47, 48, // 23 71
	49, 50, 51, // 24 74
	47, 52, 48, // 25 77
	53, 54, 47, // 26 80
	5, 21, 3, // 27 83
	8, 34, 6, // 28 86
	20, 55, 10, // 29 89
	14, 13, 11, // 30 92
	11, 13, 9, // 31 95
	10, 9, 20, // 32 98
	15, 16, 14, // 33 101
	16, 7, 6, // 34 104
	6, 12, 16, // 35 107
	26, 27, 55, // 36 110
	26, 55, 20, // 37 113
	20, 19, 26, // 38 116
	21, 23, 22, // 39 119
	19, 18, 3, // 40 122
	22, 19, 3, // 41 125
	19, 22, 24, // 42 128
	19, 24, 25, // 43 131
	30, 36, 28, // 44 134
	33, 43, 31, // 45 137
	32, 56, 33, // 46 140
	33, 56, 34, // 47 143
	35, 33, 34, // 48 146
	4, 57, 5, // 49 149
	5, 57, 36, // 50 152
	37, 5, 36, // 51 155
	58, 54, 53, // 52 158
	40, 58, 38, // 53 161
	40, 39, 42, // 54 164
	53, 38, 58, // 55 167
	42, 44, 41, // 56 170
	43, 45, 44, // 57 173
	42, 46, 31, // 58 176
	44, 42, 31, // 59 179
	51, 50, 29, // 60 182
	51, 29, 28, // 61 185
	28, 2, 51, // 62 188
	49, 51, 2, // 63 191
	48, 49, 2, // 64 194
	54, 52, 47, // 65 197
	2, 1, 53, // 66 200
	47, 2, 53, // 67 203
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_o_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_o_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_o_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_o_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_o_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_o_1_1__ )
DX3DMODEL_START( model_Trim_Char_o_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_o_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_o_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 204 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_o_1_1__, 3636669813 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_o_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_n_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_p_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_p_1_1___initialShadingGroup_0 )
DX3DVERT( 0.537506, 1.73594, 0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 0.741302, 1.96086, 0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 0.741058, 1.67146, 0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( 0.542191, 0.292189, 0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( 0.542191, -0.0220353, 0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( 0.234375, -0.0220353, 0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( 0.542191, -0.857812, 0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( 0.234375, -0.857812, 0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( 0.234375, -0.439924, 0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( 1.50174, 0.395853, 0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( 1.50174, 0.186909, 0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( 1.24826, 0.186909, 0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( 1.50175, 0.141718, 0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( 1.24834, -0.0150857, 0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( 1.54083, 0.186799, 0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( 1.65884, 0.395803, 0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( 0.542191, -0.439924, 0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( 1.07187, -0.0396493, 0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( 0.994766, 0.252574, 0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( 1.22137, -0.0223661, 0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 0.921677, -0.0220003, 0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 0.234375, 0.813741, 0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.234375, 1.23163, 0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 0.487854, 1.23163, 0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 1.75525, 1.01886, 0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 1.74779, 0.813694, 0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 1.44687, 1.01406, 0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 1.29102, 0.39583, 0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 1.43781, 0.813741, 0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.234375, 0.395853, 0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.551346, 0.813684, 0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 1.50168, 1.90589, 0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 1.50174, 1.85846, 0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 1.24826, 1.85846, 0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 1.66118, 1.64951, 0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 1.74707, 1.23167, 0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 1.43672, 1.23163, 0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 1.24826, 1.68816, 0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 1.54446, 1.85839, 0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 1.50174, 1.64952, 0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 0.234375, 1.44057, 0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 0.234375, 1.64952, 0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( 0.487854, 1.44057, 0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( 0.599991, 1.44058, 0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( 0.553436, 1.23165, 0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( 0.487854, 1.64952, 0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( 0.720032, 1.64985, 0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( 0.996185, 1.77592, 0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( 0.234375, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( 0.521881, 2.02813, 0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( 0.529694, 1.73594, 0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( 0.74118, 0.356596, 0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 0.741333, 0.0590332, 0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 0.550003, 0.292189, 0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 0.704834, 0.395769, 0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 1.24828, 0.350332, 0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 0.541458, 1.01598, 0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 1.24818, 2.04649, 0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 1.28711, 1.64953, 0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 1.07837, 2.06766, 0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_p_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_p_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 60 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_p_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_p_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_p_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 11, // 4 14
	14, 12, 10, // 5 17
	9, 15, 14, // 6 20
	16, 8, 5, // 7 23
	17, 18, 19, // 8 26
	18, 17, 20, // 9 29
	21, 22, 23, // 10 32
	24, 25, 26, // 11 35
	9, 27, 28, // 12 38
	29, 21, 30, // 13 41
	31, 32, 33, // 14 44
	34, 35, 36, // 15 47
	37, 33, 32, // 16 50
	38, 34, 39, // 17 53
	31, 38, 32, // 18 56
	40, 41, 42, // 19 59
	22, 40, 23, // 20 62
	42, 43, 44, // 21 65
	45, 46, 43, // 22 68
	33, 37, 47, // 23 71
	48, 49, 50, // 24 74
	45, 50, 0, // 25 77
	46, 45, 0, // 26 80
	2, 46, 0, // 27 83
	45, 41, 48, // 28 86
	48, 50, 45, // 29 89
	51, 52, 53, // 30 92
	54, 53, 3, // 31 95
	29, 54, 3, // 32 98
	5, 29, 3, // 33 101
	53, 54, 51, // 34 104
	8, 16, 6, // 35 107
	55, 27, 9, // 36 110
	9, 11, 55, // 37 113
	11, 10, 12, // 38 116
	14, 10, 9, // 39 119
	5, 4, 16, // 40 122
	52, 51, 18, // 41 125
	11, 13, 19, // 42 128
	18, 55, 11, // 43 131
	11, 19, 18, // 44 134
	18, 20, 52, // 45 137
	23, 44, 56, // 46 140
	56, 30, 21, // 47 143
	21, 23, 56, // 48 146
	25, 28, 26, // 49 149
	26, 36, 35, // 50 152
	35, 24, 26, // 51 155
	28, 25, 15, // 52 158
	28, 15, 9, // 53 161
	30, 54, 29, // 54 164
	33, 57, 31, // 55 167
	36, 58, 39, // 56 170
	39, 34, 36, // 57 173
	32, 39, 58, // 58 176
	32, 58, 37, // 59 179
	39, 32, 38, // 60 182
	41, 45, 42, // 61 185
	40, 42, 23, // 62 188
	44, 23, 42, // 63 191
	43, 42, 45, // 64 194
	47, 2, 1, // 65 197
	47, 59, 57, // 66 200
	57, 33, 47, // 67 203
	1, 59, 47, // 68 206
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_p_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_p_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_p_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_p_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_p_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_p_1_1__ )
DX3DMODEL_START( model_Trim_Char_p_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_p_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_p_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 207 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_p_1_1__, 2352638901 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_p_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_o_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_q_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_q_1_1___initialShadingGroup_0 )
DX3DVERT( 1.41251, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.20869, 1.96086, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.20894, 1.67146, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.40781, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.40781, -0.0220353, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.71562, -0.0220353, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.40781, -0.857812, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.71562, -0.857812, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.71562, -0.439924, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.448273, 0.395853, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.448273, 0.186909, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.701736, 0.186909, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.448242, 0.141719, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.701675, -0.0150856, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.409164, 0.186799, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.291153, 0.395803, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.40781, -0.439924, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.878128, -0.0396493, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.955246, 0.252574, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.728622, -0.0223661, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.02832, -0.0220003, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.71562, 0.813741, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.71562, 1.23163, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.46216, 1.23163, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.194748, 1.01886, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.202209, 0.813694, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.503128, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.658981, 0.39583, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.512192, 0.813741, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.71562, 0.395853, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.39865, 0.813684, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.448318, 1.90589, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.448273, 1.85846, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.701736, 1.85846, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.288818, 1.64951, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.202927, 1.23167, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.51329, 1.23163, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.701736, 1.68816, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.405548, 1.85839, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.448273, 1.64952, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.71562, 1.44057, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.71562, 1.64952, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.46216, 1.44057, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.35001, 1.44058, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.39658, 1.23165, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.46216, 1.64952, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.22997, 1.64985, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.953812, 1.77592, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.71562, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.42813, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.42032, 1.73594, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.20883, 0.356596, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.20868, 0.0590333, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.39999, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.24516, 0.395769, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.701721, 0.350331, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.40854, 1.01598, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.701828, 2.04649, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.662888, 1.64953, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.871643, 2.06766, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_q_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_q_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 60 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_q_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_q_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_q_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 11, // 4 14
	14, 12, 10, // 5 17
	9, 15, 14, // 6 20
	16, 8, 5, // 7 23
	17, 18, 19, // 8 26
	18, 17, 20, // 9 29
	21, 22, 23, // 10 32
	24, 25, 26, // 11 35
	9, 27, 28, // 12 38
	29, 21, 30, // 13 41
	31, 32, 33, // 14 44
	34, 35, 36, // 15 47
	37, 33, 32, // 16 50
	38, 34, 39, // 17 53
	31, 38, 32, // 18 56
	40, 41, 42, // 19 59
	22, 40, 23, // 20 62
	42, 43, 44, // 21 65
	45, 46, 43, // 22 68
	33, 37, 47, // 23 71
	48, 49, 50, // 24 74
	45, 50, 0, // 25 77
	46, 45, 0, // 26 80
	2, 46, 0, // 27 83
	45, 41, 48, // 28 86
	48, 50, 45, // 29 89
	51, 52, 53, // 30 92
	54, 53, 3, // 31 95
	29, 54, 3, // 32 98
	5, 29, 3, // 33 101
	53, 54, 51, // 34 104
	8, 16, 6, // 35 107
	55, 27, 9, // 36 110
	9, 11, 55, // 37 113
	11, 10, 12, // 38 116
	14, 10, 9, // 39 119
	5, 4, 16, // 40 122
	52, 51, 18, // 41 125
	11, 13, 19, // 42 128
	18, 55, 11, // 43 131
	11, 19, 18, // 44 134
	18, 20, 52, // 45 137
	23, 44, 56, // 46 140
	56, 30, 21, // 47 143
	21, 23, 56, // 48 146
	25, 28, 26, // 49 149
	26, 36, 35, // 50 152
	35, 24, 26, // 51 155
	28, 25, 15, // 52 158
	28, 15, 9, // 53 161
	30, 54, 29, // 54 164
	33, 57, 31, // 55 167
	36, 58, 39, // 56 170
	39, 34, 36, // 57 173
	32, 39, 58, // 58 176
	32, 58, 37, // 59 179
	39, 32, 38, // 60 182
	41, 45, 42, // 61 185
	40, 42, 23, // 62 188
	44, 23, 42, // 63 191
	43, 42, 45, // 64 194
	47, 2, 1, // 65 197
	47, 59, 57, // 66 200
	57, 33, 47, // 67 203
	1, 59, 47, // 68 206
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_q_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_q_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_q_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_q_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_q_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_q_1_1__ )
DX3DMODEL_START( model_Trim_Char_q_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_q_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_q_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 207 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_q_1_1__, 1068607989 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_q_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_p_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_r_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_r_1_1___initialShadingGroup_0 )
DX3DVERT( 1.61656, 1.77198, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.67656, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.67656, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.429688, 0.590625, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.737503, 0.590625, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.736954, 0.8798, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.429688, 4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.737503, 4.44089e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.737503, 0.295313, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.429688, 0.295313, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.759354, 1.18126, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.869934, 1.47651, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.741409, 1.47656, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.741486, 1.04377, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.741409, 1.18125, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.429688, 1.18125, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.429688, 0.885938, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.736969, 0.885938, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.05313, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.05312, 1.97871, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.821045, 1.77189, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.05307, 1.68334, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.429688, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.429688, 1.47656, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.725006, 1.6375, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.725006, 1.77188, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.725006, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.67656, 1.75469, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.22453, 1.77156, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.36484, 2.0663, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.36484, 1.79733, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.40544, 1.79887, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.40468, 2.06756, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.741409, 1.65251, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.732819, 1.6375, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.429688, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_r_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_r_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 36 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_r_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_r_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_r_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 8, 4, // 3 11
	10, 11, 12, // 4 14
	13, 10, 14, // 5 17
	15, 16, 17, // 6 20
	15, 14, 12, // 7 23
	18, 19, 20, // 8 26
	21, 18, 20, // 9 29
	22, 23, 24, // 10 32
	22, 25, 26, // 11 35
	1, 0, 27, // 12 38
	21, 28, 18, // 13 41
	29, 19, 18, // 14 44
	29, 30, 31, // 15 47
	2, 32, 31, // 16 50
	2, 31, 0, // 17 53
	31, 32, 29, // 18 56
	5, 17, 16, // 19 59
	16, 3, 5, // 20 62
	8, 9, 6, // 21 65
	4, 3, 9, // 22 68
	12, 14, 10, // 23 71
	13, 14, 15, // 24 74
	15, 17, 13, // 25 77
	12, 23, 15, // 26 80
	33, 12, 11, // 27 83
	33, 11, 21, // 28 86
	20, 33, 21, // 29 89
	12, 33, 34, // 30 92
	24, 25, 22, // 31 95
	24, 23, 12, // 32 98
	12, 34, 24, // 33 101
	26, 35, 22, // 34 104
	28, 30, 29, // 35 107
	29, 18, 28, // 36 110
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_r_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_r_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_r_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_r_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_r_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_r_1_1__ )
DX3DMODEL_START( model_Trim_Char_r_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_r_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_r_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 111 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_r_1_1__, 4079544373 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_r_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_q_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_s_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_s_1_1___initialShadingGroup_0 )
DX3DVERT( 1.59843, 1.93125, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.33536, 2.02365, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.33536, 1.7665, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.36755, 0.562809, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.67683, 0.562821, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.59233, 0.863464, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.06206, 0.863647, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.07915, 0.857672, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.07915, 0.86372, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.671768, 0.261866, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.652924, 0.261866, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.652924, -0.00164093, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.331253, 0.261866, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.331253, 0.117188, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.652924, 0.267716, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.331253, 0.429688, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.50601, 0.11953, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.61856, 0.261866, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.50595, 0.261866, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.19405, 0.262268, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.07919, 0.23164, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.07915, -0.0353248, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.3353, 0.01872, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.49628, 0.111339, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.33536, 0.111402, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.33536, 0.261866, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.67717, 0.526555, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.36922, 0.528058, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.33514, 0.380905, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.31627, 0.713258, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.33536, 0.713256, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.33536, 0.86372, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.33537, 0.682649, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.20726, 0.801962, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.20724, 0.86372, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.33551, 1.05276, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.695984, 1.31518, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.652817, 1.37489, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.652924, 1.31511, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.01399, 1.16467, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.866043, 1.16465, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.652817, 1.00713, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.652924, 1.16465, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.482315, 1.16465, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.482315, 1.31511, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.43071, 1.16479, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.344254, 1.31512, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.482315, 1.46557, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.865982, 1.21206, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.07915, 1.14562, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.980942, 2.06755, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.652985, 2.01934, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.652924, 1.91696, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.652924, 1.66435, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.766983, 1.76656, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.652924, 1.7665, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.482315, 1.7665, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.482315, 1.92335, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.482315, 1.91696, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.474976, 1.91697, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.362747, 1.76653, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.59843, 1.7665, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.33536, 1.75161, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.28473, 1.7665, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.07915, 2.06408, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.07915, 1.80279, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.975006, -0.0390579, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 0.941849, 0.221882, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 0.62413, 1.46557, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 0.313797, 1.46557, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.993744, 1.80625, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.311722, 1.51885, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 0.619919, 1.52031, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 1.59843, 1.6375, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_s_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_s_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 74 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_s_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_s_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_s_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	10, 12, 13, // 4 14
	9, 14, 10, // 5 17
	14, 15, 12, // 6 20
	16, 17, 18, // 7 23
	19, 20, 21, // 8 26
	22, 23, 24, // 9 29
	16, 18, 25, // 10 32
	18, 26, 27, // 11 35
	28, 19, 25, // 12 38
	29, 30, 31, // 13 41
	29, 32, 30, // 14 44
	7, 33, 34, // 15 47
	31, 5, 35, // 16 50
	36, 37, 38, // 17 53
	6, 39, 40, // 18 56
	41, 42, 43, // 19 59
	44, 38, 37, // 20 62
	43, 42, 38, // 21 65
	45, 43, 44, // 22 68
	46, 44, 47, // 23 71
	40, 39, 48, // 24 74
	42, 40, 48, // 25 77
	31, 35, 49, // 26 80
	50, 51, 52, // 27 83
	53, 54, 55, // 28 86
	53, 55, 56, // 29 89
	57, 58, 52, // 30 92
	56, 55, 52, // 31 95
	59, 60, 56, // 32 98
	57, 59, 58, // 33 101
	61, 2, 62, // 34 104
	2, 63, 62, // 35 107
	1, 64, 65, // 36 110
	2, 61, 0, // 37 113
	30, 32, 3, // 38 116
	5, 31, 30, // 39 119
	30, 3, 5, // 40 122
	66, 21, 20, // 41 125
	11, 66, 67, // 42 128
	11, 67, 9, // 43 131
	20, 67, 66, // 44 134
	13, 11, 10, // 45 137
	12, 10, 14, // 46 140
	24, 25, 19, // 47 143
	21, 22, 24, // 48 146
	24, 19, 21, // 49 149
	25, 24, 23, // 50 152
	25, 23, 16, // 51 155
	28, 25, 18, // 52 158
	17, 26, 18, // 53 161
	4, 3, 27, // 54 164
	27, 26, 4, // 55 167
	18, 27, 28, // 56 170
	31, 34, 33, // 57 173
	31, 33, 29, // 58 176
	34, 8, 7, // 59 179
	6, 8, 49, // 60 182
	42, 41, 40, // 61 185
	40, 41, 6, // 62 188
	49, 39, 6, // 63 191
	43, 45, 41, // 64 194
	68, 47, 44, // 65 197
	37, 68, 44, // 66 200
	38, 44, 43, // 67 203
	44, 46, 45, // 68 206
	47, 69, 46, // 69 209
	36, 38, 42, // 70 212
	42, 48, 36, // 71 215
	49, 8, 34, // 72 218
	34, 31, 49, // 73 221
	70, 65, 64, // 74 224
	52, 55, 54, // 75 227
	54, 70, 50, // 76 230
	52, 54, 50, // 77 233
	64, 50, 70, // 78 236
	71, 69, 47, // 79 239
	47, 68, 72, // 80 242
	56, 47, 72, // 81 245
	56, 72, 53, // 82 248
	47, 56, 60, // 83 251
	47, 60, 71, // 84 254
	52, 51, 57, // 85 257
	52, 58, 56, // 86 260
	56, 58, 59, // 87 263
	62, 73, 61, // 88 266
	63, 2, 1, // 89 269
	1, 65, 63, // 90 272
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_s_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_s_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_s_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_s_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_s_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_s_1_1__ )
DX3DMODEL_START( model_Trim_Char_s_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_s_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_s_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 273 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_s_1_1__, 2795513461 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_s_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_r_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_t_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_t_1_1___initialShadingGroup_0 )
DX3DVERT( 0.721359, 2.30067, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.951569, 2.30067, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.951569, 2.69063, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.951569, 0.740857, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.951569, 1.13081, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.721359, 0.740857, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.26837, 0.221836, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.18961, 0.225548, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.18959, 0.155926, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.657471, 0.350905, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.721359, 0.154373, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.721359, 0.155926, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 1.07361, 0.253376, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 1.07251, 0.253872, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.18956, -0.0393932, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.07253, 0.155926, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.838409, 0.0584371, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.955475, 0.0584371, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.955475, 0.155926, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.83844, 0.0382293, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.955444, -0.00875848, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.80722, 0.0586125, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.838409, 0.155926, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.721359, 0.350903, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.955475, 0.253414, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.982559, 0.350784, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.955475, 0.350903, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.955475, 0.302158, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.01401, 0.296438, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.01399, 0.253414, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.643753, 0.740857, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.721359, 1.13081, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.643677, 0.58533, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.951385, 0.605138, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.18959, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.65781, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.65781, 1.91072, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.643753, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.721359, 1.52076, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.721359, 1.91072, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.643753, 1.13081, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.951569, 1.52076, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.951569, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.18959, 1.91072, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.643753, 2.30067, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.721359, 2.69063, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.643753, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.253128, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.253128, 1.91072, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.65781, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.951569, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.61874, 0.0187503, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.61874, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.22633, -0.0397055, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.00934, 0.302125, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.643753, 1.52076, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.253128, 1.68125, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.643753, 2.69063, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.18959, 1.95, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_t_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_t_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 59 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_t_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_t_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_t_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 13, // 4 14
	14, 8, 15, // 5 17
	16, 17, 18, // 6 20
	19, 20, 17, // 7 23
	21, 19, 16, // 8 26
	21, 16, 22, // 9 29
	23, 11, 22, // 10 32
	12, 13, 15, // 11 35
	24, 18, 15, // 12 38
	25, 26, 27, // 13 41
	13, 28, 29, // 14 44
	27, 24, 29, // 15 47
	30, 5, 31, // 16 50
	32, 9, 23, // 17 53
	23, 26, 33, // 18 56
	34, 35, 36, // 19 59
	37, 38, 39, // 20 62
	40, 31, 38, // 21 65
	31, 4, 41, // 22 68
	42, 34, 43, // 23 71
	44, 0, 45, // 24 74
	46, 47, 48, // 25 77
	43, 36, 49, // 26 80
	50, 42, 43, // 27 83
	2, 45, 0, // 28 86
	4, 31, 5, // 29 89
	51, 52, 6, // 30 92
	8, 14, 53, // 31 95
	53, 6, 8, // 32 98
	6, 53, 51, // 33 101
	11, 23, 9, // 34 104
	15, 18, 17, // 35 107
	17, 20, 14, // 36 110
	14, 15, 17, // 37 113
	18, 22, 16, // 38 116
	17, 16, 19, // 39 119
	22, 11, 10, // 40 122
	10, 21, 22, // 41 125
	22, 18, 24, // 42 128
	27, 26, 23, // 43 131
	23, 22, 27, // 44 134
	24, 27, 22, // 45 137
	15, 8, 7, // 46 140
	7, 12, 15, // 47 143
	15, 13, 29, // 48 146
	29, 24, 15, // 49 149
	27, 54, 25, // 50 152
	29, 13, 13, // 51 155
	28, 54, 27, // 52 158
	27, 29, 28, // 53 161
	31, 40, 30, // 54 164
	5, 30, 32, // 55 167
	23, 5, 32, // 56 170
	26, 25, 33, // 57 173
	33, 3, 5, // 58 176
	5, 23, 33, // 59 179
	36, 43, 34, // 60 182
	37, 55, 38, // 61 185
	48, 56, 37, // 62 188
	37, 46, 48, // 63 191
	38, 55, 40, // 64 194
	41, 38, 31, // 65 197
	38, 41, 42, // 66 200
	39, 38, 42, // 67 203
	42, 50, 39, // 68 206
	45, 57, 44, // 69 209
	0, 44, 46, // 70 212
	39, 0, 46, // 71 215
	46, 37, 39, // 72 218
	49, 58, 43, // 73 221
	43, 58, 50, // 74 224
	50, 1, 0, // 75 227
	0, 39, 50, // 76 230
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_t_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_t_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_t_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_t_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_t_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_t_1_1__ )
DX3DMODEL_START( model_Trim_Char_t_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_t_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_t_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 231 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_t_1_1__, 1511482549 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_t_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_s_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_u_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_u_1_1___initialShadingGroup_0 )
DX3DVERT( 1.65781, 1.73281, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.65781, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.35001, 1.73281, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.65781, 0.551563, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.65781, 0.846876, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.33974, 0.846877, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.552521, 0.810356, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.55249, 0.846877, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.253128, 0.846876, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.604294, 0.108595, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.604294, -0.0123191, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.818756, -0.0393651, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.428711, 0.108595, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.604294, 0.256251, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.428757, 0.0829805, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.40329, 0.108728, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.428711, 0.256251, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.316071, 0.25625, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.635422, 0.330054, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.60437, 0.382366, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.604294, 0.330079, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.564545, 0.551595, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.258179, 0.551566, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.751205, 0.256261, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.691986, 0.28166, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.692093, 0.256251, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.36874, 3.29597e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.65781, -2.87964e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.65781, 0.256251, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.13106, 0.256251, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.13106, 0.108595, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.21692, 0.10794, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.13133, 0.045474, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.955475, 0.108595, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.955322, -0.0233649, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.00473, 0.256304, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.95546, 0.24326, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.36093, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.36189, 0.256251, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.26863, 0.551611, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.18695, 0.403961, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.30664, 0.403907, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.13132, 0.338863, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.30664, 0.256251, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.30672, 0.664565, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.30664, 0.551563, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.65781, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.65781, 1.4375, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.35014, 1.4375, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.553131, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.553131, 1.4375, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.253128, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.35052, 1.14219, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.35054, 1.10091, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.553131, 1.73281, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.553131, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.253128, 1.73281, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.253128, 1.4375, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.33476, 0.256214, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.30692, 0.210821, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.35001, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 0.253128, 0.701563, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.888489, 0.237654, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.35312, 0.292189, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.35043, 1.24824, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 0.253128, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_u_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_u_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 66 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_u_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_u_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_u_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 9, 13, // 4 14
	14, 10, 9, // 5 17
	15, 14, 12, // 6 20
	16, 17, 15, // 7 23
	18, 19, 20, // 8 26
	19, 21, 22, // 9 29
	23, 24, 25, // 10 32
	18, 20, 13, // 11 35
	26, 27, 28, // 12 38
	29, 30, 31, // 13 41
	32, 31, 30, // 14 44
	33, 34, 32, // 15 47
	35, 36, 33, // 16 50
	37, 38, 28, // 17 53
	39, 40, 41, // 18 56
	42, 29, 43, // 19 59
	42, 35, 29, // 20 62
	44, 39, 45, // 21 65
	46, 47, 48, // 22 68
	49, 50, 51, // 23 71
	7, 49, 51, // 24 74
	46, 52, 53, // 25 77
	54, 55, 56, // 26 80
	50, 54, 57, // 27 83
	47, 0, 48, // 28 86
	58, 43, 59, // 29 89
	1, 60, 2, // 30 92
	44, 45, 3, // 31 95
	3, 5, 44, // 32 98
	8, 61, 6, // 33 101
	22, 21, 6, // 34 104
	6, 61, 22, // 35 107
	11, 34, 33, // 36 110
	25, 13, 9, // 37 113
	11, 62, 23, // 38 116
	11, 23, 9, // 39 119
	9, 23, 25, // 40 122
	33, 36, 62, // 41 125
	62, 11, 33, // 42 128
	13, 16, 12, // 43 131
	9, 12, 14, // 44 134
	15, 12, 16, // 45 137
	16, 13, 20, // 46 140
	22, 17, 16, // 47 143
	16, 19, 22, // 48 146
	20, 19, 16, // 49 149
	13, 25, 24, // 50 152
	24, 18, 13, // 51 155
	28, 38, 26, // 52 158
	59, 43, 29, // 53 161
	29, 31, 59, // 54 164
	32, 30, 33, // 55 167
	30, 29, 35, // 56 170
	33, 30, 35, // 57 173
	3, 45, 41, // 58 176
	37, 41, 63, // 59 179
	28, 3, 37, // 60 182
	43, 58, 63, // 61 185
	41, 43, 63, // 62 188
	41, 37, 3, // 63 191
	41, 45, 39, // 64 194
	43, 41, 40, // 65 197
	43, 40, 42, // 66 200
	64, 52, 46, // 67 203
	46, 48, 64, // 68 206
	50, 57, 51, // 69 209
	51, 8, 7, // 70 212
	53, 5, 4, // 71 215
	53, 4, 46, // 72 218
	55, 65, 56, // 73 221
	54, 56, 57, // 74 224
	0, 2, 48, // 75 227
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_u_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_u_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_u_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_u_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_u_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_u_1_1__ )
DX3DMODEL_START( model_Trim_Char_u_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_u_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_u_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 228 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_u_1_1__, 227451637 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_u_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_t_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_v_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_v_1_1___initialShadingGroup_0 )
DX3DVERT( 1.66042, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.75468, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.44281, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.44281, 0.909855, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.47188, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.44281, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.572403, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.819061, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.819061, 0.870624, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.760941, 3.75394e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.819061, 1.61752e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.819061, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.666672, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.478119, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.507187, 0.909855, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.507187, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.18906, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.28334, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.13094, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.01195, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.985931, 0.234376, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.13094, 0.812362, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.09674, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.13094, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.37761, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.18153, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.529694, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.507187, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.507187, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.783203, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.6987, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.507187, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.614197, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.38385, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.195313, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.289581, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.56615, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.44281, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.26634, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.44281, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.35114, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.43594, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.867706, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.13094, -1.61752e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.978119, 0.234376, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.952209, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_v_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_v_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 46 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_v_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_v_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_v_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 11, 7, // 4 14
	13, 14, 15, // 5 17
	16, 17, 18, // 6 20
	18, 19, 20, // 7 23
	21, 22, 23, // 8 26
	22, 19, 18, // 9 29
	17, 24, 23, // 10 32
	3, 25, 21, // 11 35
	26, 27, 28, // 12 38
	15, 29, 30, // 13 41
	13, 15, 31, // 14 44
	31, 30, 32, // 15 47
	33, 31, 28, // 16 50
	27, 34, 35, // 17 53
	4, 36, 37, // 18 56
	38, 25, 5, // 19 59
	36, 0, 39, // 20 62
	40, 38, 37, // 21 65
	41, 40, 39, // 22 68
	42, 8, 7, // 23 71
	42, 7, 11, // 24 74
	2, 39, 0, // 25 77
	29, 15, 14, // 26 80
	29, 14, 6, // 27 83
	8, 29, 6, // 28 86
	11, 12, 9, // 29 89
	7, 6, 12, // 30 92
	18, 43, 16, // 31 95
	44, 45, 11, // 32 98
	20, 10, 43, // 33 101
	20, 43, 18, // 34 104
	10, 20, 44, // 35 107
	11, 10, 44, // 36 110
	18, 23, 22, // 37 113
	23, 18, 17, // 38 116
	3, 5, 25, // 39 119
	21, 23, 24, // 40 122
	24, 3, 21, // 41 125
	28, 32, 26, // 42 128
	30, 31, 15, // 43 131
	31, 33, 13, // 44 134
	32, 28, 31, // 45 137
	28, 35, 33, // 46 140
	35, 28, 27, // 47 143
	37, 5, 4, // 48 146
	5, 37, 38, // 49 149
	39, 37, 36, // 50 152
	37, 39, 40, // 51 155
	39, 2, 41, // 52 158
	11, 45, 42, // 53 161
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_v_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_v_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_v_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_v_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_v_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_v_1_1__ )
DX3DMODEL_START( model_Trim_Char_v_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_v_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_v_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 162 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_v_1_1__, 3238388021 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_v_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_u_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_w_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_w_1_1___initialShadingGroup_0 )
DX3DVERT( 1.81979, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.87187, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.56718, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.66354, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.71562, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.51312, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.674835, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.637268, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.795624, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.596878, 0.3125, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.764069, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.795624, 0.281755, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.436874, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.338547, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.390625, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.599716, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.795624, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.436874, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.286453, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.436874, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.234375, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.55937, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.61147, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.51312, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.801926, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.15437, 0.156198, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.17343, 3.18235e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.36874, 0.3125, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.839798, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.877655, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.795624, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.51312, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.15437, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.36592, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.32835, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.2908, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.15437, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.15437, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.787506, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.749939, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.795624, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.712387, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.436874, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.182297, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.795624, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.436874, 1.68219, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.435989, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.130203, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.398438, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.078125, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.76772, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.51312, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.25323, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 1.15437, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.953384, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.956253, 1.71563, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.915527, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 1.52963, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 1.51312, 1.54156, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 1.21568, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 1.17813, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.15437, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.15437, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 0.511108, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 0.548676, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.13219, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 1.04968, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 1.09093, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.41696, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 1.37939, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 1.45451, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.473557, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 1.00842, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 1.49207, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 0.967178, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 0.589066, 0.3125, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 0.586227, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 0.436874, 1.94545e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 1.51312, -1.68826e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 1.37656, 0.3125, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 0.795624, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( 0.964066, 1.71563, 0 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_w_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_w_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 82 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_w_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_w_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_w_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	7, 15, 16, // 5 17
	17, 18, 13, // 6 20
	19, 20, 18, // 7 23
	21, 22, 23, // 8 26
	11, 24, 16, // 9 29
	25, 26, 27, // 10 32
	28, 29, 30, // 11 35
	24, 28, 8, // 12 38
	22, 3, 31, // 13 41
	32, 33, 34, // 14 44
	35, 36, 37, // 15 47
	38, 39, 40, // 16 50
	41, 6, 30, // 17 53
	42, 43, 20, // 18 56
	39, 41, 44, // 19 59
	45, 46, 47, // 20 62
	48, 49, 47, // 21 65
	4, 50, 51, // 22 68
	44, 30, 29, // 23 71
	52, 53, 36, // 24 74
	40, 54, 55, // 25 77
	40, 44, 56, // 26 80
	0, 57, 58, // 27 83
	53, 52, 59, // 28 86
	60, 61, 62, // 29 89
	63, 19, 17, // 30 92
	64, 17, 12, // 31 95
	32, 65, 25, // 32 98
	36, 66, 67, // 33 101
	37, 67, 65, // 34 104
	68, 69, 23, // 35 107
	70, 68, 31, // 36 110
	71, 42, 19, // 37 113
	71, 45, 42, // 38 116
	53, 72, 66, // 39 119
	73, 70, 5, // 40 122
	62, 74, 72, // 41 125
	58, 73, 51, // 42 128
	2, 57, 0, // 43 131
	5, 31, 3, // 44 134
	8, 30, 6, // 45 137
	75, 76, 12, // 46 140
	11, 16, 15, // 47 143
	15, 9, 11, // 48 146
	77, 10, 9, // 49 149
	12, 77, 75, // 50 152
	9, 75, 77, // 51 155
	14, 77, 12, // 52 158
	16, 8, 7, // 53 161
	13, 12, 17, // 54 164
	18, 17, 19, // 55 167
	23, 78, 21, // 56 170
	23, 69, 79, // 57 173
	27, 33, 32, // 58 176
	32, 25, 27, // 59 179
	27, 26, 78, // 60 182
	79, 78, 23, // 61 185
	78, 79, 27, // 62 188
	30, 8, 28, // 63 191
	8, 16, 24, // 64 194
	31, 23, 22, // 65 197
	34, 37, 32, // 66 200
	37, 34, 35, // 67 203
	40, 80, 38, // 68 206
	30, 44, 41, // 69 209
	20, 19, 42, // 70 212
	44, 40, 39, // 71 215
	43, 42, 45, // 72 218
	47, 43, 45, // 73 221
	47, 46, 48, // 74 224
	51, 5, 4, // 75 227
	29, 56, 44, // 76 230
	36, 35, 52, // 77 233
	81, 74, 62, // 78 236
	55, 61, 80, // 79 239
	55, 80, 40, // 80 242
	61, 55, 81, // 81 245
	62, 61, 81, // 82 248
	56, 54, 40, // 83 251
	51, 50, 0, // 84 254
	58, 51, 0, // 85 257
	59, 62, 53, // 86 260
	62, 59, 60, // 87 263
	17, 64, 63, // 88 266
	12, 76, 64, // 89 269
	67, 37, 36, // 90 272
	65, 32, 37, // 91 275
	23, 31, 68, // 92 278
	31, 5, 70, // 93 281
	19, 63, 71, // 94 284
	66, 36, 53, // 95 287
	5, 51, 73, // 96 290
	72, 53, 62, // 97 293
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_w_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_w_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_w_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_w_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_w_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_w_1_1__ )
DX3DMODEL_START( model_Trim_Char_w_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_w_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_w_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 294 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_w_1_1__, 1954357109 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_w_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_v_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_39_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_39_1___initialShadingGroup_0 )
DX3DVERT( 1.54739, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.73593, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.43156, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.17032, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.21745, 1.09857, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.12718, 1.09857, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.779694, 1.01406, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.591141, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.822815, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.565628, 2.95597e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.726135, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.518433, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.402603, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.214066, 2.95597e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.518433, 2.98037e-017, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.518433, 0.545688, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.43156, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.73593, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.54739, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.36874, 2.95597e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.43156, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.04898, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.12718, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.822815, 0.541606, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.886658, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.43156, 0.54569, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.20886, 0.338021, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.573441, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.518433, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.518433, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.732559, 1.09857, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.822815, 1.09857, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.822815, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.518433, 1.48244, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.591141, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.822815, 1.51108, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.402603, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 0.214066, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.35886, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.12718, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.06487, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.12718, 1.4808, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.43156, 1.48244, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.43156, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.22853, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.39218, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.12718, 0.510707, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.899506, 1.35208, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.35886, 0.676042, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.971878, 0.839063, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.964066, 0.839063, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.736465, 1.6901, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.985931, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.978119, 1.18906, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_39_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_39_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 54 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_39_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_39_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_39_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 11, 10, // 5 17
	15, 12, 11, // 6 20
	16, 17, 18, // 7 23
	19, 16, 20, // 8 26
	21, 22, 5, // 9 29
	23, 24, 8, // 10 32
	20, 18, 25, // 11 35
	26, 20, 25, // 12 38
	27, 28, 29, // 13 41
	30, 31, 32, // 14 44
	33, 34, 35, // 15 47
	36, 33, 29, // 16 50
	28, 37, 36, // 17 53
	4, 38, 39, // 18 56
	5, 39, 40, // 19 59
	41, 40, 39, // 20 62
	42, 0, 43, // 21 65
	42, 43, 44, // 22 68
	45, 44, 43, // 23 71
	22, 21, 46, // 24 74
	47, 35, 32, // 25 77
	2, 43, 0, // 26 80
	22, 48, 3, // 27 83
	5, 22, 3, // 28 86
	31, 30, 6, // 29 89
	6, 8, 31, // 30 92
	11, 14, 9, // 31 95
	14, 11, 12, // 32 98
	23, 8, 7, // 33 101
	10, 23, 7, // 34 104
	10, 7, 15, // 35 107
	18, 20, 16, // 36 110
	20, 26, 19, // 37 113
	31, 8, 24, // 38 116
	5, 31, 49, // 39 119
	5, 49, 21, // 40 122
	50, 49, 31, // 41 125
	24, 50, 31, // 42 128
	48, 22, 46, // 43 131
	25, 48, 46, // 44 134
	46, 26, 25, // 45 137
	29, 51, 27, // 46 140
	32, 34, 30, // 47 143
	34, 32, 35, // 48 146
	51, 29, 33, // 49 149
	35, 51, 33, // 50 152
	36, 29, 28, // 51 155
	39, 5, 4, // 52 158
	47, 32, 31, // 53 161
	52, 31, 5, // 54 164
	40, 52, 5, // 55 167
	31, 52, 53, // 56 170
	31, 53, 47, // 57 173
	41, 39, 38, // 58 176
	44, 41, 38, // 59 179
	44, 38, 42, // 60 182
	43, 2, 45, // 61 185
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_39_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_39_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_39_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_39_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_39_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_39_1__ )
DX3DMODEL_START( model_Trim_Char_x_39_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_39_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_39_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 186 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_39_1__, 4079251957 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_39_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_w_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_y_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_y_1_1___initialShadingGroup_0 )
DX3DVERT( 1.68036, 1.61585, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.81406, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.47343, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.26772, 0.343457, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.27924, 0.379018, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.26772, 0.379018, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.878128, -0.857812, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.01183, -0.445535, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.721359, -0.445535, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.693192, -0.445535, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.553131, -0.857812, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.721359, -0.857812, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.721359, -0.362614, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.857819, 0.0390631, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 1.14554, -0.0332583, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.41295, 0.791295, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.54665, 1.20357, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.26772, 1.20357, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.599579, 0.791295, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.721359, 0.791295, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.721359, 1.20357, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.721359, 0.436572, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.26772, 0.791295, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.741119, 0.379018, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.00937, 0.468751, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.23219, 1.20357, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.11156, 0.791295, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.518753, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.175003, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.316528, 1.61585, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.458054, 1.20357, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.721359, 1.38418, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.35281, 1.61585, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.778183, 1.20357, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.26772, 1.32498, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.833237, -0.0332583, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.907898, 0.791295, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.01718, 0.468751, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0.648468, 1.61585, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_y_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_y_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 39 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_y_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_y_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_y_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 9, 8, // 4 14
	12, 8, 7, // 5 17
	13, 14, 3, // 6 20
	15, 16, 17, // 7 23
	18, 19, 20, // 8 26
	18, 21, 19, // 9 29
	4, 15, 22, // 10 32
	21, 23, 24, // 11 35
	25, 26, 22, // 12 38
	27, 28, 29, // 13 41
	30, 20, 31, // 14 44
	16, 0, 32, // 15 47
	20, 33, 31, // 16 50
	33, 20, 19, // 17 53
	34, 25, 17, // 18 56
	2, 32, 0, // 19 59
	8, 11, 6, // 20 62
	11, 8, 9, // 21 65
	7, 14, 35, // 22 68
	7, 35, 12, // 23 71
	13, 35, 14, // 24 74
	3, 5, 23, // 25 77
	23, 13, 3, // 26 80
	17, 22, 15, // 27 83
	20, 30, 18, // 28 86
	22, 5, 4, // 29 89
	5, 22, 26, // 30 92
	23, 5, 24, // 31 95
	36, 19, 21, // 32 98
	24, 36, 21, // 33 101
	37, 24, 5, // 34 104
	26, 37, 5, // 35 107
	22, 17, 25, // 36 110
	29, 38, 27, // 37 113
	38, 29, 30, // 38 116
	31, 38, 30, // 39 119
	34, 17, 16, // 40 122
	16, 32, 34, // 41 125
	19, 36, 33, // 42 128
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_y_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_y_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_y_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_y_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_y_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_y_1_1__ )
DX3DMODEL_START( model_Trim_Char_y_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_y_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_y_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 129 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_y_1_1__, 3681262581 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_y_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_39_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_z_1_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_z_1_1___initialShadingGroup_0 )
DX3DVERT( 1.6375, 1.75938, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.6375, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.30624, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.975006, 0.869197, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.975006, 0.743685, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.05687, 0.869197, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.704147, 0.869197, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.975006, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.975006, 0.268751, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.670319, 0.268751, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.3125, 0.268751, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.3125, -2.22045e-016, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.643753, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.678909, 0.289732, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.867889, 0.579464, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.643753, 0.579464, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.515167, 0.579464, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.326187, 0.289732, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.643753, 0.289732, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.643753, 0.776596, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.30624, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.6375, 0, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 1.6375, 0.268751, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.30624, 0.268751, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.30624, 1.25153, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.43483, 1.44866, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 1.30624, 1.44866, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.975006, 1.28444, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.893127, 1.15893, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.975006, 1.15893, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.24585, 1.15893, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.643753, 1.75938, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.975006, 1.75938, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.975006, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.3125, 1.75938, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.643753, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.62381, 1.73839, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.30624, 1.73839, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.2711, 1.73839, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.08212, 1.44866, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.27969, 1.75938, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.670319, 0.276564, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.3125, 2.02813, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.27969, 1.75156, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_z_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_z_1_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 44 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_z_1_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_z_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_z_1_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	4, 3, 6, // 2 8
	7, 8, 9, // 3 11
	10, 11, 12, // 4 14
	13, 14, 15, // 5 17
	16, 17, 18, // 6 20
	19, 16, 15, // 7 23
	20, 21, 22, // 8 26
	7, 20, 23, // 9 29
	24, 25, 26, // 10 32
	27, 28, 29, // 11 35
	28, 6, 3, // 12 38
	29, 3, 5, // 13 41
	27, 29, 30, // 14 44
	31, 32, 33, // 15 47
	34, 31, 35, // 16 50
	25, 36, 37, // 17 53
	38, 39, 26, // 18 56
	40, 37, 2, // 19 59
	2, 37, 36, // 20 62
	36, 0, 2, // 21 65
	6, 19, 15, // 22 68
	6, 15, 14, // 23 71
	6, 14, 4, // 24 74
	41, 13, 18, // 25 77
	9, 18, 12, // 26 80
	9, 12, 7, // 27 83
	18, 9, 41, // 28 86
	12, 18, 17, // 29 89
	17, 10, 12, // 30 92
	15, 18, 13, // 31 95
	18, 15, 16, // 32 98
	22, 23, 20, // 33 101
	23, 8, 7, // 34 104
	3, 29, 28, // 35 107
	5, 30, 29, // 36 110
	30, 24, 26, // 37 113
	30, 26, 39, // 38 116
	30, 39, 27, // 39 119
	33, 35, 31, // 40 122
	35, 42, 34, // 41 125
	37, 26, 25, // 42 128
	26, 37, 38, // 43 131
	43, 38, 37, // 44 134
	33, 32, 40, // 45 137
	40, 2, 33, // 46 140
	37, 40, 43, // 47 143
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_z_1_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_z_1_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_z_1_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_z_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_z_1_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_z_1_1__ )
DX3DMODEL_START( model_Trim_Char_z_1_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_z_1_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_z_1_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 144 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_z_1_1__, 2397231669 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_z_1_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_y_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_40_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_40_1___initialShadingGroup_0 )
DX3DVERT( 1.43993, 3.00403, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.28711, 3.00031, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.28711, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.08289, 0.785131, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.95549, 1.09171, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.955475, 0.953011, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.955475, -0.102427, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.10684, -0.102337, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 1.091, 0.145857, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.49088, -0.313415, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 1.28711, -0.298893, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 1.28711, -0.324316, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.819229, -0.10241, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.95549, -0.417055, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.955475, -0.324316, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 1.61874, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 1.28711, -0.542501, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.20419, -0.324316, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.13945, -0.213374, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 1.12137, -0.168177, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 1.12129, -0.213371, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 1.12129, -0.268843, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.955475, -0.213371, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 1.12129, -0.324316, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 1.20419, -0.273148, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 1.19577, -0.268869, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.809906, 0.113133, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 1.09268, 0.606131, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.955475, 0.785129, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 0.810883, 0.341351, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 0.955475, 0.341351, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.753403, 0.95304, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.928741, 1.12111, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.800888, 0.785128, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.292191, 1.11094, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.623825, 1.0809, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 0.623825, 1.12089, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.09219, 1.85493, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.09219, 2.11646, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.955475, 2.11646, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.08441, 1.67267, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.955475, 1.67269, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 0.955475, 1.53474, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 0.789673, 1.60832, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 0.789642, 1.53474, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.760941, 1.23281, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.292191, 1.34531, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.292191, 1.12089, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.789642, 1.39679, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 0.955475, 1.39679, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 0.767456, 1.5347, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 0.662094, 1.39677, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 0.810883, 2.11646, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.801102, 1.67269, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 1.09109, 2.29344, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 1.10686, 2.56018, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 0.955475, 2.56024, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.809906, 2.34433, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.810806, 2.16406, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.819229, 2.56022, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.955475, 2.67119, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 1.28711, 2.75506, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 1.50002, 2.76934, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 1.20419, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 1.20415, 2.72996, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 1.12144, 2.62693, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 1.14005, 2.67118, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 1.12129, 2.67119, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 1.12129, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 0.955475, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 1.12129, 2.72666, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 1.1978, 2.72678, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 0.95549, 2.87487, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 1.61874, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 1.61874, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 1.09157, 0.273622, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 1.09219, 0.341351, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 1.61874, -0.324316, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 1.61874, -0.312499, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 1.43994, -0.546211, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 0.810806, 0.29297, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( 1.09219, 0.504882, 0 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT( 0.955521, 1.36524, 0 ) DX3DVNORM( 0, 0, 1 )  //82
DX3DVERT( 0.623825, 1.37535, 0 ) DX3DVNORM( 0, 0, 1 )  //83
DX3DVERT( 1.09196, 2.15547, 0 ) DX3DVNORM( 0, 0, 1 )  //84
DX3DVERT( 1.61874, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //85
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_40_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_40_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 86 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_40_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_40_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_40_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 9, 11, // 5 17
	16, 11, 17, // 6 20
	18, 19, 20, // 7 23
	18, 20, 21, // 8 26
	22, 14, 23, // 9 29
	10, 24, 17, // 10 32
	25, 21, 23, // 11 35
	7, 6, 22, // 12 38
	26, 12, 6, // 13 41
	27, 3, 28, // 14 44
	29, 30, 28, // 15 47
	31, 5, 32, // 16 50
	33, 28, 5, // 17 53
	34, 35, 36, // 18 56
	37, 38, 39, // 19 59
	40, 41, 42, // 20 62
	43, 44, 42, // 21 65
	36, 32, 45, // 22 68
	46, 47, 36, // 23 71
	48, 49, 42, // 24 74
	50, 51, 48, // 25 77
	43, 50, 44, // 26 80
	52, 53, 41, // 27 83
	54, 55, 56, // 28 86
	57, 58, 39, // 29 89
	59, 56, 60, // 30 92
	2, 61, 62, // 31 95
	63, 64, 61, // 32 98
	65, 66, 67, // 33 101
	60, 56, 55, // 34 104
	68, 69, 60, // 35 107
	70, 67, 66, // 36 110
	68, 70, 71, // 37 113
	72, 69, 68, // 38 116
	73, 62, 74, // 39 119
	2, 73, 0, // 40 122
	5, 28, 3, // 41 125
	75, 76, 30, // 42 128
	8, 75, 30, // 43 131
	30, 6, 8, // 44 134
	77, 78, 9, // 45 137
	9, 15, 77, // 46 140
	22, 6, 12, // 47 143
	12, 14, 22, // 48 146
	11, 16, 79, // 49 149
	79, 15, 11, // 50 152
	23, 14, 13, // 51 155
	17, 23, 16, // 52 158
	13, 16, 23, // 53 161
	21, 25, 18, // 54 164
	21, 20, 22, // 55 167
	22, 23, 21, // 56 170
	17, 11, 10, // 57 173
	23, 17, 24, // 58 176
	24, 25, 23, // 59 179
	22, 20, 19, // 60 182
	19, 7, 22, // 61 185
	30, 29, 80, // 62 188
	30, 80, 26, // 63 191
	26, 6, 30, // 64 194
	30, 76, 81, // 65 197
	30, 81, 27, // 66 200
	27, 28, 30, // 67 203
	28, 33, 29, // 68 206
	5, 4, 32, // 69 209
	32, 36, 35, // 70 212
	35, 31, 32, // 71 215
	5, 31, 33, // 72 218
	36, 47, 34, // 73 221
	41, 40, 37, // 74 224
	37, 39, 41, // 75 227
	49, 82, 40, // 76 230
	40, 42, 49, // 77 233
	42, 41, 53, // 78 236
	42, 53, 43, // 79 239
	82, 49, 48, // 80 242
	48, 51, 83, // 81 245
	45, 48, 83, // 82 248
	83, 36, 45, // 83 251
	48, 45, 82, // 84 254
	36, 83, 46, // 85 257
	42, 44, 48, // 86 260
	48, 44, 50, // 87 263
	41, 39, 52, // 88 266
	39, 38, 84, // 89 269
	39, 84, 54, // 90 272
	54, 56, 39, // 91 275
	58, 52, 39, // 92 278
	56, 59, 57, // 93 281
	39, 56, 57, // 94 284
	69, 72, 59, // 95 287
	60, 69, 59, // 96 290
	62, 85, 74, // 97 293
	62, 73, 2, // 98 296
	61, 2, 63, // 99 299
	65, 67, 60, // 100 302
	60, 55, 65, // 101 305
	60, 67, 70, // 102 308
	70, 68, 60, // 103 311
	66, 71, 70, // 104 314
	64, 63, 68, // 105 317
	68, 71, 64, // 106 320
	63, 2, 1, // 107 323
	68, 1, 72, // 108 326
	1, 68, 63, // 109 329
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_40_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_40_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_40_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_40_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_40_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_40_1__ )
DX3DMODEL_START( model_Trim_Char_x_40_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_40_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_40_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 330 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_40_1__, 4139720901 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_40_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_z_1_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_41_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_41_1___initialShadingGroup_0 )
DX3DVERT( 1.11874, 2.65723, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.11874, 3.15938, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.972656, 2.65723, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.11874, 0.648634, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.11874, 1.15078, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.972656, 0.648634, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.11874, -0.355663, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.11874, 0.146485, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.972656, -0.355663, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.11874, -0.857812, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.972656, -0.857812, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.826569, -0.857812, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.826569, -0.355663, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.972656, 0.146485, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.826569, 0.146485, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.826569, 0.648634, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.972656, 1.15078, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 1.11874, 1.65293, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 1.11874, 2.15508, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.972656, 1.65293, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.826569, 1.15078, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.826569, 1.65293, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.972656, 2.15508, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.826569, 2.15508, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.826569, 2.65723, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.972656, 3.15938, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.826569, 3.15938, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_41_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_41_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 27 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_41_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_41_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_41_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 6, 10, // 3 11
	11, 10, 8, // 4 14
	12, 8, 13, // 5 17
	7, 3, 13, // 6 20
	14, 13, 5, // 7 23
	15, 5, 16, // 8 26
	17, 18, 19, // 9 29
	4, 17, 16, // 10 32
	20, 16, 19, // 11 35
	21, 19, 22, // 12 38
	18, 0, 22, // 13 41
	23, 22, 2, // 14 44
	24, 2, 25, // 15 47
	1, 25, 2, // 16 50
	4, 16, 5, // 17 53
	7, 13, 8, // 18 56
	6, 8, 10, // 19 59
	8, 12, 11, // 20 62
	13, 14, 12, // 21 65
	3, 5, 13, // 22 68
	5, 15, 14, // 23 71
	16, 20, 15, // 24 74
	18, 22, 19, // 25 77
	17, 19, 16, // 26 80
	19, 21, 20, // 27 83
	22, 23, 21, // 28 86
	0, 2, 22, // 29 89
	2, 24, 23, // 30 92
	25, 26, 24, // 31 95
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_41_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_41_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_41_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_41_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_41_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_41_1__ )
DX3DMODEL_START( model_Trim_Char_x_41_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_41_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_41_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_41_1__, 4141806037 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_41_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_40_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_42_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_42_1___initialShadingGroup_0 )
DX3DVERT( 1.13077, 2.56022, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 0.994507, 2.87487, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 0.994537, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 1.65781, 1.11094, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 1.65781, 1.12089, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 1.32617, 1.12089, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 1.14009, 0.113132, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 1.13921, 0.292969, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.994537, 0.341351, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 1.13077, -0.10241, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.994537, -0.102427, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.994537, -0.213371, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.843002, -0.10231, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.994507, -0.417055, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.994537, -0.324315, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.828705, -0.324315, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.510056, -0.546211, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.662888, -0.542501, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.662888, -0.324315, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.662888, -0.298887, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.459137, -0.313415, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.828705, -0.268843, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.828705, -0.213371, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.810516, -0.213353, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.754288, -0.268992, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.745804, -0.324315, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.74585, -0.273242, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.82843, -0.168121, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 0.858994, 0.145858, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.13911, 0.341351, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.14911, 0.785128, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 0.994537, 0.785129, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 0.857346, 0.606131, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 0.857819, 0.341351, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 0.867065, 0.785138, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 0.994537, 0.953011, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.19659, 0.95304, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.32617, 1.0809, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.02132, 1.12105, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.13911, 2.11646, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.994537, 2.11646, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.994537, 1.67269, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.18254, 1.5347, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.16034, 1.60832, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.16035, 1.53474, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 0.865601, 1.67267, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 0.994476, 1.36524, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 0.994537, 1.39679, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 1.65781, 1.34531, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT( 1.32617, 1.37535, 0 ) DX3DVNORM( 0, 0, 1 )  //49
DX3DVERT( 1.18906, 1.23281, 0 ) DX3DVNORM( 0, 0, 1 )  //50
DX3DVERT( 1.16035, 1.39679, 0 ) DX3DVNORM( 0, 0, 1 )  //51
DX3DVERT( 1.14891, 1.67269, 0 ) DX3DVNORM( 0, 0, 1 )  //52
DX3DVERT( 0.994537, 1.53474, 0 ) DX3DVNORM( 0, 0, 1 )  //53
DX3DVERT( 0.857819, 2.11646, 0 ) DX3DVNORM( 0, 0, 1 )  //54
DX3DVERT( 0.857819, 1.86279, 0 ) DX3DVNORM( 0, 0, 1 )  //55
DX3DVERT( 1.14009, 2.34433, 0 ) DX3DVNORM( 0, 0, 1 )  //56
DX3DVERT( 0.994537, 2.56024, 0 ) DX3DVNORM( 0, 0, 1 )  //57
DX3DVERT( 0.84314, 2.56018, 0 ) DX3DVNORM( 0, 0, 1 )  //58
DX3DVERT( 0.858917, 2.29344, 0 ) DX3DVNORM( 0, 0, 1 )  //59
DX3DVERT( 0.662888, 3.00031, 0 ) DX3DVNORM( 0, 0, 1 )  //60
DX3DVERT( 0.662888, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //61
DX3DVERT( 0.745804, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //62
DX3DVERT( 0.828705, 2.67119, 0 ) DX3DVNORM( 0, 0, 1 )  //63
DX3DVERT( 0.994537, 2.67119, 0 ) DX3DVNORM( 0, 0, 1 )  //64
DX3DVERT( 0.449982, 2.76934, 0 ) DX3DVNORM( 0, 0, 1 )  //65
DX3DVERT( 0.662903, 2.75506, 0 ) DX3DVNORM( 0, 0, 1 )  //66
DX3DVERT( 0.809952, 2.67118, 0 ) DX3DVNORM( 0, 0, 1 )  //67
DX3DVERT( 0.828552, 2.62693, 0 ) DX3DVNORM( 0, 0, 1 )  //68
DX3DVERT( 0.752197, 2.72678, 0 ) DX3DVNORM( 0, 0, 1 )  //69
DX3DVERT( 0.828705, 2.72666, 0 ) DX3DVNORM( 0, 0, 1 )  //70
DX3DVERT( 0.828705, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //71
DX3DVERT( 0.74585, 2.72996, 0 ) DX3DVNORM( 0, 0, 1 )  //72
DX3DVERT( 0.331253, 3.00312, 0 ) DX3DVNORM( 0, 0, 1 )  //73
DX3DVERT( 0.331253, -0.545312, 0 ) DX3DVNORM( 0, 0, 1 )  //74
DX3DVERT( 0.331253, -0.324315, 0 ) DX3DVNORM( 0, 0, 1 )  //75
DX3DVERT( 0.331253, -0.312499, 0 ) DX3DVNORM( 0, 0, 1 )  //76
DX3DVERT( 0.858185, 0.273618, 0 ) DX3DVNORM( 0, 0, 1 )  //77
DX3DVERT( 0.994537, 1.09169, 0 ) DX3DVNORM( 0, 0, 1 )  //78
DX3DVERT( 1.2879, 1.39677, 0 ) DX3DVNORM( 0, 0, 1 )  //79
DX3DVERT( 0.857819, 1.85493, 0 ) DX3DVNORM( 0, 0, 1 )  //80
DX3DVERT( 1.13919, 2.16406, 0 ) DX3DVNORM( 0, 0, 1 )  //81
DX3DVERT( 0.858032, 2.15547, 0 ) DX3DVNORM( 0, 0, 1 )  //82
DX3DVERT( 0.331253, 2.78213, 0 ) DX3DVNORM( 0, 0, 1 )  //83
DX3DVERT( 0.331253, 2.76875, 0 ) DX3DVNORM( 0, 0, 1 )  //84
DX3DVERT( 0.510071, 3.00403, 0 ) DX3DVNORM( 0, 0, 1 )  //85
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_42_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_42_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 86 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_42_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_42_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_42_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	11, 10, 12, // 4 14
	13, 14, 15, // 5 17
	16, 17, 18, // 6 20
	18, 19, 20, // 7 23
	15, 14, 11, // 8 26
	21, 22, 23, // 9 29
	15, 21, 24, // 10 32
	25, 26, 19, // 11 35
	27, 23, 22, // 12 38
	28, 12, 10, // 13 41
	29, 30, 31, // 14 44
	32, 33, 8, // 15 47
	34, 31, 35, // 16 50
	30, 36, 35, // 17 53
	37, 5, 38, // 18 56
	39, 40, 41, // 19 59
	42, 43, 44, // 20 62
	45, 46, 47, // 21 65
	48, 49, 5, // 22 68
	50, 38, 5, // 23 71
	42, 44, 51, // 24 74
	47, 51, 44, // 25 77
	52, 41, 53, // 26 80
	40, 54, 55, // 27 83
	56, 0, 57, // 28 86
	57, 58, 59, // 29 89
	60, 61, 62, // 30 92
	63, 64, 2, // 31 95
	65, 66, 61, // 32 98
	58, 57, 64, // 33 101
	67, 68, 63, // 34 104
	69, 70, 71, // 35 107
	67, 63, 70, // 36 110
	66, 72, 62, // 37 113
	73, 65, 61, // 38 116
	64, 57, 0, // 39 119
	0, 2, 64, // 40 122
	5, 37, 3, // 41 125
	7, 29, 8, // 42 128
	10, 9, 6, // 43 131
	8, 10, 6, // 44 134
	14, 13, 9, // 45 137
	11, 14, 9, // 46 140
	27, 22, 11, // 47 143
	11, 12, 27, // 48 146
	25, 18, 17, // 49 149
	15, 17, 13, // 50 152
	17, 15, 25, // 51 155
	74, 20, 75, // 52 158
	18, 74, 16, // 53 161
	20, 76, 75, // 54 164
	20, 74, 18, // 55 167
	11, 22, 21, // 56 170
	21, 15, 11, // 57 173
	23, 24, 21, // 58 176
	26, 25, 15, // 59 179
	15, 24, 26, // 60 182
	19, 18, 25, // 61 185
	8, 33, 77, // 62 188
	8, 77, 28, // 63 191
	28, 10, 8, // 64 194
	31, 8, 29, // 65 197
	31, 34, 32, // 66 200
	32, 8, 31, // 67 203
	35, 78, 34, // 68 206
	35, 31, 30, // 69 209
	38, 78, 35, // 70 212
	38, 35, 36, // 71 215
	38, 36, 37, // 72 218
	41, 52, 39, // 73 221
	53, 41, 45, // 74 224
	47, 53, 45, // 75 227
	5, 4, 48, // 76 230
	51, 47, 46, // 77 233
	49, 79, 51, // 78 236
	49, 51, 50, // 79 239
	50, 5, 49, // 80 242
	46, 50, 51, // 81 245
	51, 79, 42, // 82 248
	44, 53, 47, // 83 251
	53, 44, 43, // 84 254
	43, 52, 53, // 85 257
	55, 80, 41, // 86 260
	41, 80, 45, // 87 263
	41, 40, 55, // 88 266
	40, 39, 81, // 89 269
	40, 81, 56, // 90 272
	56, 57, 40, // 91 275
	82, 54, 40, // 92 278
	59, 82, 40, // 93 281
	40, 57, 59, // 94 284
	71, 2, 1, // 95 287
	62, 71, 60, // 96 290
	1, 60, 71, // 97 293
	2, 71, 70, // 98 296
	70, 63, 2, // 99 299
	83, 84, 65, // 100 302
	65, 73, 83, // 101 305
	64, 63, 68, // 102 308
	68, 58, 64, // 103 311
	71, 62, 72, // 104 314
	72, 69, 71, // 105 317
	70, 69, 67, // 106 320
	62, 61, 66, // 107 323
	61, 60, 85, // 108 326
	85, 73, 61, // 109 329
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_42_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_42_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_42_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_42_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_42_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_42_1__ )
DX3DMODEL_START( model_Trim_Char_x_42_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_42_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_42_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 330 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_42_1__, 4143891173 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_42_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_41_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Trim_Char_x_43_1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_TRILIST ) || ((PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP))  || (PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_INDEXSTRIP)


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERT_START( VN, vertexbuff_Trim_Char_x_43_1___initialShadingGroup_0 )
DX3DVERT( 1.75468, 1.36563, 0 ) DX3DVNORM( 0, 0, 1 )  //0
DX3DVERT( 1.55977, 1.36563, 0 ) DX3DVNORM( 0, 0, 1 )  //1
DX3DVERT( 1.55977, 1.29141, 0 ) DX3DVNORM( 0, 0, 1 )  //2
DX3DVERT( 0.780075, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //3
DX3DVERT( 0.975006, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //4
DX3DVERT( 0.975006, 1.2981, 0 ) DX3DVNORM( 0, 0, 1 )  //5
DX3DVERT( 0.582062, 1.17797, 0 ) DX3DVNORM( 0, 0, 1 )  //6
DX3DVERT( 0.585159, 1.17794, 0 ) DX3DVNORM( 0, 0, 1 )  //7
DX3DVERT( 0.585159, 1.41216, 0 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 0.487701, 1.14941, 0 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 0.51825, 1.17038, 0 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( 0.487701, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( 0.195313, 0.975001, 0 ) DX3DVNORM( 0, 0, 1 )  //12
DX3DVERT( 0.390228, 0.975001, 0 ) DX3DVNORM( 0, 0, 1 )  //13
DX3DVERT( 0.390228, 1.04921, 0 ) DX3DVNORM( 0, 0, 1 )  //14
DX3DVERT( 0.429688, 0.975001, 0 ) DX3DVNORM( 0, 0, 1 )  //15
DX3DVERT( 0.435974, 1.04921, 0 ) DX3DVNORM( 0, 0, 1 )  //16
DX3DVERT( 0.390228, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //17
DX3DVERT( 0.390152, 1.36748, 0 ) DX3DVNORM( 0, 0, 1 )  //18
DX3DVERT( 0.2966, 1.29144, 0 ) DX3DVNORM( 0, 0, 1 )  //19
DX3DVERT( 0.390228, 1.29141, 0 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( 0.29274, 1.28684, 0 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0.29277, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.227448, 1.17032, 0 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.780075, 1.13003, 0 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.975006, 1.04043, 0 ) DX3DVNORM( 0, 0, 1 )  //25
DX3DVERT( 0.653122, 1.17025, 0 ) DX3DVNORM( 0, 0, 1 )  //26
DX3DVERT( 0.78009, 1.37723, 0 ) DX3DVNORM( 0, 0, 1 )  //27
DX3DVERT( 1.29701, 1.17036, 0 ) DX3DVNORM( 0, 0, 1 )  //28
DX3DVERT( 1.16992, 1.20997, 0 ) DX3DVNORM( 0, 0, 1 )  //29
DX3DVERT( 1.16992, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //30
DX3DVERT( 1.36485, 0.928405, 0 ) DX3DVNORM( 0, 0, 1 )  //31
DX3DVERT( 1.36485, 1.16276, 0 ) DX3DVNORM( 0, 0, 1 )  //32
DX3DVERT( 1.16992, 0.963014, 0 ) DX3DVNORM( 0, 0, 1 )  //33
DX3DVERT( 1.65727, 1.05378, 0 ) DX3DVNORM( 0, 0, 1 )  //34
DX3DVERT( 1.72255, 1.1703, 0 ) DX3DVNORM( 0, 0, 1 )  //35
DX3DVERT( 1.65723, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( 1.36818, 0.928366, 0 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 1.55984, 0.973152, 0 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 1.36958, 1.1627, 0 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 1.6534, 1.04918, 0 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 1.55977, 1.04921, 0 ) DX3DVNORM( 0, 0, 1 )  //41
DX3DVERT( 1.55977, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //42
DX3DVERT( 1.52031, 1.36563, 0 ) DX3DVNORM( 0, 0, 1 )  //43
DX3DVERT( 1.51404, 1.29141, 0 ) DX3DVNORM( 0, 0, 1 )  //44
DX3DVERT( 1.46231, 1.19002, 0 ) DX3DVNORM( 0, 0, 1 )  //45
DX3DVERT( 1.46231, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //46
DX3DVERT( 1.43431, 1.17031, 0 ) DX3DVNORM( 0, 0, 1 )  //47
DX3DVERT( 0.58165, 1.4122, 0 ) DX3DVNORM( 0, 0, 1 )  //48
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Trim_Char_x_43_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Trim_Char_x_43_1___initialShadingGroup_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 49 )
DX3DVERTEX_END


#else
#define vertex_Trim_Char_x_43_1___initialShadingGroup_0	NULL
#define vertexbuff_Trim_Char_x_43_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_TRILIST) ) || (PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_TRILIST )


#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DINDEX_START( index_Trim_Char_x_43_1___initialShadingGroup_0 )
	0, 1, 2, // 0 2
	3, 4, 5, // 1 5
	6, 7, 8, // 2 8
	9, 10, 11, // 3 11
	12, 13, 14, // 4 14
	15, 16, 14, // 5 17
	9, 11, 17, // 6 20
	18, 19, 20, // 7 23
	21, 22, 17, // 8 26
	21, 23, 22, // 9 29
	24, 25, 4, // 10 32
	26, 24, 3, // 11 35
	3, 27, 8, // 12 38
	28, 29, 30, // 13 41
	31, 32, 28, // 14 44
	25, 33, 30, // 15 47
	29, 5, 4, // 16 50
	34, 35, 36, // 17 53
	37, 38, 39, // 18 56
	38, 40, 41, // 19 59
	34, 36, 42, // 20 62
	43, 44, 2, // 21 65
	45, 46, 42, // 22 68
	45, 47, 46, // 23 71
	2, 42, 36, // 24 74
	36, 35, 0, // 25 77
	0, 2, 36, // 26 80
	5, 27, 3, // 27 83
	20, 17, 11, // 28 86
	48, 18, 6, // 29 89
	8, 48, 6, // 30 92
	11, 10, 20, // 31 95
	6, 18, 20, // 32 98
	20, 10, 6, // 33 101
	14, 17, 22, // 34 104
	22, 23, 12, // 35 107
	12, 14, 22, // 36 110
	14, 13, 15, // 37 113
	17, 14, 16, // 38 116
	17, 16, 9, // 39 119
	17, 20, 19, // 40 122
	19, 21, 17, // 41 125
	4, 3, 24, // 42 128
	8, 7, 26, // 43 131
	26, 3, 8, // 44 134
	30, 33, 31, // 45 137
	28, 30, 31, // 46 140
	30, 4, 25, // 47 143
	4, 30, 29, // 48 146
	41, 42, 46, // 49 149
	39, 32, 31, // 50 152
	39, 31, 37, // 51 155
	46, 47, 41, // 52 158
	39, 38, 41, // 53 161
	41, 47, 39, // 54 164
	42, 41, 40, // 55 167
	40, 34, 42, // 56 170
	2, 1, 43, // 57 173
	42, 2, 44, // 58 176
	42, 44, 45, // 59 179
DX3DINDEX_END
#endif

#else
#define index_Trim_Char_x_43_1___initialShadingGroup_0	NULL
#endif




#if ((PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_INDEXSTRIP) ) || (PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Trim_Char_x_43_1___initialShadingGroup_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_FOLLOWALL) && (PT_ALL_TextASCIIMplus1m_tst__ == PT_VERTEXSTRIP) ) || (PT_Trim_Char_x_43_1___initialShadingGroup_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Trim_Char_x_43_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#define vertexbuff_Trim_Char_x_43_1___initialShadingGroup_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Trim_Char_x_43_1__ )
DX3DMODEL_START( model_Trim_Char_x_43_1___initialShadingGroup_0 )
DX3DMODEL_VERTEX( vertex_Trim_Char_x_43_1___initialShadingGroup_0 )
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DMODEL_INDEX( index_Trim_Char_x_43_1___initialShadingGroup_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 180 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_initialShadingGroup )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Trim_Char_x_43_1__, 4145976309 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Trim_Char_x_43_1__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_Trim_Char_x_42_1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_root__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



DX3DOBJECT_START_HASH( object_root__, 680586657 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_NULL__ )
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
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
	0, 0, 0, 
	0, 0, 0,                // 0, 0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_Trim_Char_x_43_1__ )
DX3DOBJECT_END




//////////// export info ///////////////
DX3DOBJECT_JOINTCOUNT( jointcnt_TextASCIIMplus1m_tst___0, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_TextASCIIMplus1m_tst___1, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_TextASCIIMplus1m_tst___2, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_TextASCIIMplus1m_tst___3, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_TextASCIIMplus1m_tst___4, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_TextASCIIMplus1m_tst___5, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_TextASCIIMplus1m_tst___6, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_TextASCIIMplus1m_tst___7, 0 )




/////////////////////////////////////////////
#if ( !BINARY_TextASCIIMplus1m_tst__ )
DX3DBINARYFILE( binaryfile_TextASCIIMplus1m_tst__, NULL )
#else
DX3DBINARYFILE( binaryfile_TextASCIIMplus1m_tst__, "Z:/toshi2/lib/dx/dx3dtext/maya/" )
#endif


DX3DBINARYSIZE( binarysize_TextASCIIMplus1m_tst__, 0 )


