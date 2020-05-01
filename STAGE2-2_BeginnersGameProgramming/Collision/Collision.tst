//skipped groundPlane_transform
//skipped Manipulator1
//skipped UniversalManip
/////////////////////////////////////////////
// object_pCylinder1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	5.68846, 0.284659, -4.7565, 1
#endif

DX3DMATERIAL_START( material_matStageObj )
DX3DMATERIAL_DIFF( 1, 0.433, 0.5, 0.498883 )
DX3DMATERIAL_SPEC( 1, 0, 0, 0 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_pCylinder1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_pCylinder1___matStageObj_0 == PT_TRILIST ) || ((PT_pCylinder1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP))  || (PT_pCylinder1___matStageObj_0 == PT_INDEXSTRIP)


#if ( !BINARY_Collision_tst__ )
DX3DVERT_START( VN, vertexbuff_pCylinder1___matStageObj_0 )
DX3DVERT( 2.4696, -0.284659, 0.802422 ) DX3DVNORM( 0.951057, 0, 0.309016 )  //0
DX3DVERT( 2.10077, -0.284659, 1.5263 ) DX3DVNORM( 0.809017, 0, 0.587785 )  //1
DX3DVERT( 2.10077, 0.284659, 1.5263 ) DX3DVNORM( 0.809017, 0, 0.587785 )  //2
DX3DVERT( 2.4696, 0.284659, 0.802422 ) DX3DVNORM( 0.951057, 0, 0.309016 )  //3
DX3DVERT( 1.5263, -0.284659, 2.10077 ) DX3DVNORM( 0.587785, 0, 0.809017 )  //4
DX3DVERT( 1.5263, 0.284659, 2.10077 ) DX3DVNORM( 0.587785, 0, 0.809017 )  //5
DX3DVERT( 0.802422, -0.284659, 2.4696 ) DX3DVNORM( 0.309017, 0, 0.951056 )  //6
DX3DVERT( 0.802422, 0.284659, 2.4696 ) DX3DVNORM( 0.309017, 0, 0.951056 )  //7
DX3DVERT( 1.83408e-008, -0.284659, 2.59669 ) DX3DVNORM( -1.43326e-007, 0, 1 )  //8
DX3DVERT( 1.83408e-008, 0.284659, 2.59669 ) DX3DVNORM( -1.43326e-007, 0, 1 )  //9
DX3DVERT( -0.802422, -0.284659, 2.4696 ) DX3DVNORM( -0.309017, 0, 0.951056 )  //10
DX3DVERT( -0.802422, 0.284659, 2.4696 ) DX3DVNORM( -0.309017, 0, 0.951056 )  //11
DX3DVERT( -1.5263, -0.284659, 2.10077 ) DX3DVNORM( -0.587785, 0, 0.809017 )  //12
DX3DVERT( -1.5263, 0.284659, 2.10077 ) DX3DVNORM( -0.587785, 0, 0.809017 )  //13
DX3DVERT( -2.10077, -0.284659, 1.5263 ) DX3DVNORM( -0.809017, 0, 0.587785 )  //14
DX3DVERT( -2.10077, 0.284659, 1.5263 ) DX3DVNORM( -0.809017, 0, 0.587785 )  //15
DX3DVERT( -2.4696, -0.284659, 0.802422 ) DX3DVNORM( -0.951056, 0, 0.309017 )  //16
DX3DVERT( -2.4696, 0.284659, 0.802422 ) DX3DVNORM( -0.951056, 0, 0.309017 )  //17
DX3DVERT( -2.59669, -0.284659, 4.41126e-008 ) DX3DVNORM( -1, 0, -0 )  //18
DX3DVERT( -2.59669, 0.284659, 4.41126e-008 ) DX3DVNORM( -1, 0, -0 )  //19
DX3DVERT( -2.4696, -0.284659, -0.802422 ) DX3DVNORM( -0.951056, 0, -0.309017 )  //20
DX3DVERT( -2.4696, 0.284659, -0.802422 ) DX3DVNORM( -0.951056, 0, -0.309017 )  //21
DX3DVERT( -2.10077, -0.284659, -1.5263 ) DX3DVNORM( -0.809017, 0, -0.587785 )  //22
DX3DVERT( -2.10077, 0.284659, -1.5263 ) DX3DVNORM( -0.809017, 0, -0.587785 )  //23
DX3DVERT( -1.5263, -0.284659, -2.10077 ) DX3DVNORM( -0.587785, 0, -0.809017 )  //24
DX3DVERT( -1.5263, 0.284659, -2.10077 ) DX3DVNORM( -0.587785, 0, -0.809017 )  //25
DX3DVERT( -0.802422, -0.284659, -2.4696 ) DX3DVNORM( -0.309017, 0, -0.951057 )  //26
DX3DVERT( -0.802422, 0.284659, -2.4696 ) DX3DVNORM( -0.309017, 0, -0.951057 )  //27
DX3DVERT( 2.57717e-008, -0.284659, -2.59669 ) DX3DVNORM( 1.20695e-007, 0, -1 )  //28
DX3DVERT( 2.57717e-008, 0.284659, -2.59669 ) DX3DVNORM( 1.20695e-007, 0, -1 )  //29
DX3DVERT( 0.802422, -0.284659, -2.4696 ) DX3DVNORM( 0.309017, 0, -0.951057 )  //30
DX3DVERT( 0.802422, 0.284659, -2.4696 ) DX3DVNORM( 0.309017, 0, -0.951057 )  //31
DX3DVERT( 1.5263, -0.284659, -2.10077 ) DX3DVNORM( 0.587785, 0, -0.809017 )  //32
DX3DVERT( 1.5263, 0.284659, -2.10077 ) DX3DVNORM( 0.587785, 0, -0.809017 )  //33
DX3DVERT( 2.10077, -0.284659, -1.5263 ) DX3DVNORM( 0.809017, 0, -0.587785 )  //34
DX3DVERT( 2.10077, 0.284659, -1.5263 ) DX3DVNORM( 0.809017, 0, -0.587785 )  //35
DX3DVERT( 2.4696, -0.284659, -0.802421 ) DX3DVNORM( 0.951057, 0, -0.309017 )  //36
DX3DVERT( 2.4696, 0.284659, -0.802421 ) DX3DVNORM( 0.951057, 0, -0.309017 )  //37
DX3DVERT( 2.59669, -0.284659, -0 ) DX3DVNORM( 1, 0, -6.26106e-007 )  //38
DX3DVERT( 2.59669, 0.284659, -0 ) DX3DVNORM( 1, 0, -6.26106e-007 )  //39
DX3DVERT( 2.10077, -0.284659, 1.5263 ) DX3DVNORM( 0, -1, -0 )  //40
DX3DVERT( 2.4696, -0.284659, 0.802422 ) DX3DVNORM( 0, -1, 2.8606e-008 )  //41
DX3DVERT( 0, -0.284659, -0 ) DX3DVNORM( 0, -1, -3.46325e-009 )  //42
DX3DVERT( 1.5263, -0.284659, 2.10077 ) DX3DVNORM( 0, -1, -7.1515e-009 )  //43
DX3DVERT( 0.802422, -0.284659, 2.4696 ) DX3DVNORM( 0, -1, -9.65716e-009 )  //44
DX3DVERT( 1.83408e-008, -0.284659, 2.59669 ) DX3DVNORM( 0, -1, -2.50566e-009 )  //45
DX3DVERT( -0.802422, -0.284659, 2.4696 ) DX3DVNORM( 0, -1, -1.4303e-008 )  //46
DX3DVERT( -1.5263, -0.284659, 2.10077 ) DX3DVNORM( 0, -1, -1.4303e-008 )  //47
DX3DVERT( -2.10077, -0.284659, 1.5263 ) DX3DVNORM( 0, -1, -0 )  //48
DX3DVERT( -2.4696, -0.284659, 0.802422 ) DX3DVNORM( 0, -1, -0 )  //49
DX3DVERT( -2.59669, -0.284659, 4.41126e-008 ) DX3DVNORM( 0, -1, -0 )  //50
DX3DVERT( -2.4696, -0.284659, -0.802422 ) DX3DVNORM( 0, -1, -0 )  //51
DX3DVERT( -2.10077, -0.284659, -1.5263 ) DX3DVNORM( 0, -1, -1.4303e-008 )  //52
DX3DVERT( -1.5263, -0.284659, -2.10077 ) DX3DVNORM( 0, -1, -7.1515e-009 )  //53
DX3DVERT( -0.802422, -0.284659, -2.4696 ) DX3DVNORM( 0, -1, 3.63066e-009 )  //54
DX3DVERT( 2.57717e-008, -0.284659, -2.59669 ) DX3DVNORM( 0, -1, -3.52084e-009 )  //55
DX3DVERT( 0.802422, -0.284659, -2.4696 ) DX3DVNORM( 0, -1, -0 )  //56
DX3DVERT( 1.5263, -0.284659, -2.10077 ) DX3DVNORM( 0, -1, -2.8606e-008 )  //57
DX3DVERT( 2.10077, -0.284659, -1.5263 ) DX3DVNORM( 0, -1, -2.8606e-008 )  //58
DX3DVERT( 2.4696, -0.284659, -0.802421 ) DX3DVNORM( 0, -1, -0 )  //59
DX3DVERT( 2.59669, -0.284659, -0 ) DX3DVNORM( 0, -1, 2.8606e-008 )  //60
DX3DVERT( 2.4696, 0.284659, 0.802422 ) DX3DVNORM( 0, 1, 2.8606e-008 )  //61
DX3DVERT( 2.10077, 0.284659, 1.5263 ) DX3DVNORM( 0, 1, -0 )  //62
DX3DVERT( 0, 0.284659, -0 ) DX3DVNORM( 0, 1, 2.7481e-009 )  //63
DX3DVERT( 1.5263, 0.284659, 2.10077 ) DX3DVNORM( 0, 1, -0 )  //64
DX3DVERT( 0.802422, 0.284659, 2.4696 ) DX3DVNORM( 0, 1, -0 )  //65
DX3DVERT( 1.83408e-008, 0.284659, 2.59669 ) DX3DVNORM( 0, 1, 2.50566e-009 )  //66
DX3DVERT( -0.802422, 0.284659, 2.4696 ) DX3DVNORM( 0, 1, -4.64584e-009 )  //67
DX3DVERT( -1.5263, 0.284659, 2.10077 ) DX3DVNORM( 0, 1, 7.1515e-009 )  //68
DX3DVERT( -2.10077, 0.284659, 1.5263 ) DX3DVNORM( 0, 1, 1.4303e-008 )  //69
DX3DVERT( -2.4696, 0.284659, 0.802422 ) DX3DVNORM( 0, 1, -0 )  //70
DX3DVERT( -2.59669, 0.284659, 4.41126e-008 ) DX3DVNORM( 0, 1, -0 )  //71
DX3DVERT( -2.4696, 0.284659, -0.802422 ) DX3DVNORM( 0, 1, -0 )  //72
DX3DVERT( -2.10077, 0.284659, -1.5263 ) DX3DVNORM( 0, 1, -0 )  //73
DX3DVERT( -1.5263, 0.284659, -2.10077 ) DX3DVNORM( 0, 1, -0 )  //74
DX3DVERT( -0.802422, 0.284659, -2.4696 ) DX3DVNORM( 0, 1, -0 )  //75
DX3DVERT( 2.57717e-008, 0.284659, -2.59669 ) DX3DVNORM( 0, 1, 3.52084e-009 )  //76
DX3DVERT( 0.802422, 0.284659, -2.4696 ) DX3DVNORM( 0, 1, 3.52084e-009 )  //77
DX3DVERT( 1.5263, 0.284659, -2.10077 ) DX3DVNORM( 0, 1, -1.4303e-008 )  //78
DX3DVERT( 2.10077, 0.284659, -1.5263 ) DX3DVNORM( 0, 1, -1.4303e-008 )  //79
DX3DVERT( 2.4696, 0.284659, -0.802421 ) DX3DVNORM( 0, 1, -0 )  //80
DX3DVERT( 2.59669, 0.284659, -0 ) DX3DVNORM( 0, 1, 2.8606e-008 )  //81
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_pCylinder1___matStageObj_0 )
#if ( !BINARY_Collision_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_pCylinder1___matStageObj_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 82 )
DX3DVERTEX_END


#else
#define vertex_pCylinder1___matStageObj_0	NULL
#define vertexbuff_pCylinder1___matStageObj_0	NULL
#endif




#if ((PT_pCylinder1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_pCylinder1___matStageObj_0 == PT_TRILIST )


#if ( !BINARY_Collision_tst__ )
DX3DINDEX_START( index_pCylinder1___matStageObj_0 )
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
	10, 12, 11, // 10 32
	12, 13, 11, // 11 35
	12, 14, 13, // 12 38
	14, 15, 13, // 13 41
	14, 16, 15, // 14 44
	16, 17, 15, // 15 47
	16, 18, 17, // 16 50
	18, 19, 17, // 17 53
	18, 20, 19, // 18 56
	20, 21, 19, // 19 59
	20, 22, 21, // 20 62
	22, 23, 21, // 21 65
	22, 24, 23, // 22 68
	24, 25, 23, // 23 71
	24, 26, 25, // 24 74
	26, 27, 25, // 25 77
	26, 28, 27, // 26 80
	28, 29, 27, // 27 83
	28, 30, 29, // 28 86
	30, 31, 29, // 29 89
	30, 32, 31, // 30 92
	32, 33, 31, // 31 95
	32, 34, 33, // 32 98
	34, 35, 33, // 33 101
	34, 36, 35, // 34 104
	36, 37, 35, // 35 107
	36, 38, 37, // 36 110
	38, 39, 37, // 37 113
	38, 0, 39, // 38 116
	0, 3, 39, // 39 119
	40, 41, 42, // 40 122
	43, 40, 42, // 41 125
	44, 43, 42, // 42 128
	45, 44, 42, // 43 131
	46, 45, 42, // 44 134
	47, 46, 42, // 45 137
	48, 47, 42, // 46 140
	49, 48, 42, // 47 143
	50, 49, 42, // 48 146
	51, 50, 42, // 49 149
	52, 51, 42, // 50 152
	53, 52, 42, // 51 155
	54, 53, 42, // 52 158
	55, 54, 42, // 53 161
	56, 55, 42, // 54 164
	57, 56, 42, // 55 167
	58, 57, 42, // 56 170
	59, 58, 42, // 57 173
	60, 59, 42, // 58 176
	41, 60, 42, // 59 179
	61, 62, 63, // 60 182
	62, 64, 63, // 61 185
	64, 65, 63, // 62 188
	65, 66, 63, // 63 191
	66, 67, 63, // 64 194
	67, 68, 63, // 65 197
	68, 69, 63, // 66 200
	69, 70, 63, // 67 203
	70, 71, 63, // 68 206
	71, 72, 63, // 69 209
	72, 73, 63, // 70 212
	73, 74, 63, // 71 215
	74, 75, 63, // 72 218
	75, 76, 63, // 73 221
	76, 77, 63, // 74 224
	77, 78, 63, // 75 227
	78, 79, 63, // 76 230
	79, 80, 63, // 77 233
	80, 81, 63, // 78 236
	81, 61, 63, // 79 239
DX3DINDEX_END
#endif

#else
#define index_pCylinder1___matStageObj_0	NULL
#endif




#if ((PT_pCylinder1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP) ) || (PT_pCylinder1___matStageObj_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_pCylinder1___matStageObj_0_INDEXSTRIP 	NULL
#endif




#if ((PT_pCylinder1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_VERTEXSTRIP) ) || (PT_pCylinder1___matStageObj_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_pCylinder1___matStageObj_0_VERTEXSTRIP 	NULL
#define vertexbuff_pCylinder1___matStageObj_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_pCylinder1__ )
DX3DMODEL_START( model_pCylinder1___matStageObj_0 )
DX3DMODEL_VERTEX( vertex_pCylinder1___matStageObj_0 )
#if ( !BINARY_Collision_tst__ )
DX3DMODEL_INDEX( index_pCylinder1___matStageObj_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 240 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_matStageObj )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_pCylinder1__, 3143425501 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_pCylinder1__ )
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
	5.68846, 0.284659, 4.7565, 
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
	5.68846, 0.284659, 4.7565, 
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
// object_pCone1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	-5.15084, 1.03574, 4.57576, 1
#endif



#if ((PT_pCone1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_pCone1___matStageObj_0 == PT_TRILIST ) || ((PT_pCone1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP))  || (PT_pCone1___matStageObj_0 == PT_INDEXSTRIP)


#if ( !BINARY_Collision_tst__ )
DX3DVERT_START( VN, vertexbuff_pCone1___matStageObj_0 )
DX3DVERT( 3.4424, -1.03574, 1.1185 ) DX3DVNORM( 0.4724, 0.867916, 0.153492 )  //0
DX3DVERT( 2.92828, -1.03574, 2.12752 ) DX3DVNORM( 0.401847, 0.867916, 0.291959 )  //1
DX3DVERT( 0, 1.03574, -0 ) DX3DVNORM( 2.23885e-008, 1, -8.61097e-008 )  //2
DX3DVERT( 2.12752, -1.03574, 2.92828 ) DX3DVNORM( 0.291959, 0.867916, 0.401847 )  //3
DX3DVERT( 1.1185, -1.03574, 3.4424 ) DX3DVNORM( 0.153492, 0.867916, 0.4724 )  //4
DX3DVERT( 2.55655e-008, -1.03574, 3.61955 ) DX3DVNORM( -5.6052e-008, 0.867916, 0.496711 )  //5
DX3DVERT( -1.1185, -1.03574, 3.4424 ) DX3DVNORM( -0.153492, 0.867916, 0.4724 )  //6
DX3DVERT( -2.12752, -1.03574, 2.92828 ) DX3DVNORM( -0.291959, 0.867916, 0.401847 )  //7
DX3DVERT( -2.92828, -1.03574, 2.12752 ) DX3DVNORM( -0.401847, 0.867916, 0.291959 )  //8
DX3DVERT( -3.4424, -1.03574, 1.1185 ) DX3DVNORM( -0.4724, 0.867916, 0.153492 )  //9
DX3DVERT( -3.61955, -1.03574, 6.1489e-008 ) DX3DVNORM( -0.496711, 0.867916, 1.8684e-008 )  //10
DX3DVERT( -3.4424, -1.03574, -1.1185 ) DX3DVNORM( -0.4724, 0.867916, -0.153492 )  //11
DX3DVERT( -2.92828, -1.03574, -2.12752 ) DX3DVNORM( -0.401847, 0.867916, -0.291959 )  //12
DX3DVERT( -2.12752, -1.03574, -2.92828 ) DX3DVNORM( -0.291959, 0.867916, -0.401848 )  //13
DX3DVERT( -1.1185, -1.03574, -3.4424 ) DX3DVNORM( -0.153492, 0.867916, -0.4724 )  //14
DX3DVERT( 3.59235e-008, -1.03574, -3.61955 ) DX3DVNORM( 4.85784e-008, 0.867916, -0.496711 )  //15
DX3DVERT( 1.1185, -1.03574, -3.4424 ) DX3DVNORM( 0.153492, 0.867916, -0.4724 )  //16
DX3DVERT( 2.12752, -1.03574, -2.92828 ) DX3DVNORM( 0.291959, 0.867916, -0.401847 )  //17
DX3DVERT( 2.92828, -1.03574, -2.12752 ) DX3DVNORM( 0.401848, 0.867916, -0.291959 )  //18
DX3DVERT( 3.4424, -1.03574, -1.1185 ) DX3DVNORM( 0.4724, 0.867916, -0.153492 )  //19
DX3DVERT( 3.61955, -1.03574, -0 ) DX3DVNORM( 0.496711, 0.867916, -3.28838e-007 )  //20
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_pCone1___matStageObj_0 )
#if ( !BINARY_Collision_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_pCone1___matStageObj_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 21 )
DX3DVERTEX_END


#else
#define vertex_pCone1___matStageObj_0	NULL
#define vertexbuff_pCone1___matStageObj_0	NULL
#endif




#if ((PT_pCone1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_pCone1___matStageObj_0 == PT_TRILIST )


#if ( !BINARY_Collision_tst__ )
DX3DINDEX_START( index_pCone1___matStageObj_0 )
	0, 1, 2, // 0 2
	1, 3, 2, // 1 5
	3, 4, 2, // 2 8
	4, 5, 2, // 3 11
	5, 6, 2, // 4 14
	6, 7, 2, // 5 17
	7, 8, 2, // 6 20
	8, 9, 2, // 7 23
	9, 10, 2, // 8 26
	10, 11, 2, // 9 29
	11, 12, 2, // 10 32
	12, 13, 2, // 11 35
	13, 14, 2, // 12 38
	14, 15, 2, // 13 41
	15, 16, 2, // 14 44
	16, 17, 2, // 15 47
	17, 18, 2, // 16 50
	18, 19, 2, // 17 53
	19, 20, 2, // 18 56
	20, 0, 2, // 19 59
DX3DINDEX_END
#endif

#else
#define index_pCone1___matStageObj_0	NULL
#endif




#if ((PT_pCone1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP) ) || (PT_pCone1___matStageObj_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_pCone1___matStageObj_0_INDEXSTRIP 	NULL
#endif




#if ((PT_pCone1___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_VERTEXSTRIP) ) || (PT_pCone1___matStageObj_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_pCone1___matStageObj_0_VERTEXSTRIP 	NULL
#define vertexbuff_pCone1___matStageObj_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_pCone1__ )
DX3DMODEL_START( model_pCone1___matStageObj_0 )
DX3DMODEL_VERTEX( vertex_pCone1___matStageObj_0 )
#if ( !BINARY_Collision_tst__ )
DX3DMODEL_INDEX( index_pCone1___matStageObj_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 60 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_matStageObj )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_pCone1__, 2967231701 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_pCone1__ )
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
	-5.15084, 1.03574, -4.57576, 
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
	-5.15084, 1.03574, -4.57576, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_pCylinder1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_pCube2__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	-4.46379, 2.98455, -4.52921, 1
#endif



#if ((PT_pCube2___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_pCube2___matStageObj_0 == PT_TRILIST ) || ((PT_pCube2___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP))  || (PT_pCube2___matStageObj_0 == PT_INDEXSTRIP)


#if ( !BINARY_Collision_tst__ )
DX3DVERT_START( VN, vertexbuff_pCube2___matStageObj_0 )
DX3DVERT( -3.40558, -0.2, -2 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 3.40558, -0.2, -2 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 3.40558, 0.2, -2 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -3.40558, 0.2, -2 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -3.40558, 0.2, -2 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 3.40558, 0.2, -2 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 3.40558, 0.2, 2 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -3.40558, 0.2, 2 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( -3.40558, 0.2, 2 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 3.40558, 0.2, 2 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 3.40558, -0.2, 2 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( -3.40558, -0.2, 2 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( -3.40558, -0.2, 2 ) DX3DVNORM( 0, -1, -0 )  //12
DX3DVERT( 3.40558, -0.2, 2 ) DX3DVNORM( 0, -1, -0 )  //13
DX3DVERT( 3.40558, -0.2, -2 ) DX3DVNORM( 0, -1, -0 )  //14
DX3DVERT( -3.40558, -0.2, -2 ) DX3DVNORM( 0, -1, -0 )  //15
DX3DVERT( 3.40558, -0.2, -2 ) DX3DVNORM( 1, 0, -0 )  //16
DX3DVERT( 3.40558, -0.2, 2 ) DX3DVNORM( 1, 0, -0 )  //17
DX3DVERT( 3.40558, 0.2, 2 ) DX3DVNORM( 1, 0, -0 )  //18
DX3DVERT( 3.40558, 0.2, -2 ) DX3DVNORM( 1, 0, -0 )  //19
DX3DVERT( -3.40558, -0.2, 2 ) DX3DVNORM( -1, 0, -0 )  //20
DX3DVERT( -3.40558, -0.2, -2 ) DX3DVNORM( -1, 0, -0 )  //21
DX3DVERT( -3.40558, 0.2, -2 ) DX3DVNORM( -1, 0, -0 )  //22
DX3DVERT( -3.40558, 0.2, 2 ) DX3DVNORM( -1, 0, -0 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_pCube2___matStageObj_0 )
#if ( !BINARY_Collision_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_pCube2___matStageObj_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_pCube2___matStageObj_0	NULL
#define vertexbuff_pCube2___matStageObj_0	NULL
#endif




#if ((PT_pCube2___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_pCube2___matStageObj_0 == PT_TRILIST )


#if ( !BINARY_Collision_tst__ )
DX3DINDEX_START( index_pCube2___matStageObj_0 )
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
#define index_pCube2___matStageObj_0	NULL
#endif




#if ((PT_pCube2___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP) ) || (PT_pCube2___matStageObj_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_pCube2___matStageObj_0_INDEXSTRIP 	NULL
#endif




#if ((PT_pCube2___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_VERTEXSTRIP) ) || (PT_pCube2___matStageObj_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_pCube2___matStageObj_0_VERTEXSTRIP 	NULL
#define vertexbuff_pCube2___matStageObj_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_pCube2__ )
DX3DMODEL_START( model_pCube2___matStageObj_0 )
DX3DMODEL_VERTEX( vertex_pCube2___matStageObj_0 )
#if ( !BINARY_Collision_tst__ )
DX3DMODEL_INDEX( index_pCube2___matStageObj_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 36 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_matStageObj )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_pCube2__, 3417622521 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_pCube2__ )
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
	-4.46379, 2.98455, 4.52921, 
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
	-4.46379, 2.98455, 4.52921, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_pCone1__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Stage__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif

DX3DMATERIAL_START( material_matGround )
DX3DMATERIAL_DIFF( 1, 0.713, 0.663803, 0.664828 )
DX3DMATERIAL_SPEC( 1, 0, 0, 0 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_Stage___matGround_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_Stage___matGround_0 == PT_TRILIST ) || ((PT_Stage___matGround_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP))  || (PT_Stage___matGround_0 == PT_INDEXSTRIP)


#if ( !BINARY_Collision_tst__ )
DX3DVERT_START( VN, vertexbuff_Stage___matGround_0 )
DX3DVERT( -10, -2.22045e-015, -10 ) DX3DVNORM( 0, 1, -2.22045e-016 )  //0
DX3DVERT( 10, -2.22045e-015, -10 ) DX3DVNORM( 0, 1, -2.22045e-016 )  //1
DX3DVERT( 10, 2.22045e-015, 10 ) DX3DVNORM( 0, 1, -2.22045e-016 )  //2
DX3DVERT( -10, 2.22045e-015, 10 ) DX3DVNORM( 0, 1, -2.22045e-016 )  //3
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_Stage___matGround_0 )
#if ( !BINARY_Collision_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_Stage___matGround_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 4 )
DX3DVERTEX_END


#else
#define vertex_Stage___matGround_0	NULL
#define vertexbuff_Stage___matGround_0	NULL
#endif




#if ((PT_Stage___matGround_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_Stage___matGround_0 == PT_TRILIST )


#if ( !BINARY_Collision_tst__ )
DX3DINDEX_START( index_Stage___matGround_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
DX3DINDEX_END
#endif

#else
#define index_Stage___matGround_0	NULL
#endif




#if ((PT_Stage___matGround_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP) ) || (PT_Stage___matGround_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_Stage___matGround_0_INDEXSTRIP 	NULL
#endif




#if ((PT_Stage___matGround_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_VERTEXSTRIP) ) || (PT_Stage___matGround_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_Stage___matGround_0_VERTEXSTRIP 	NULL
#define vertexbuff_Stage___matGround_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_Stage__ )
DX3DMODEL_START( model_Stage___matGround_0 )
DX3DMODEL_VERTEX( vertex_Stage___matGround_0 )
#if ( !BINARY_Collision_tst__ )
DX3DMODEL_INDEX( index_Stage___matGround_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 6 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_matGround )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_Stage__, 1609021157 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_Stage__ )
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
DX3DOBJECT_CHILD( object_pCube2__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_pCube3__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	5.35874, 0.546527, 4.53897, 1
#endif



#if ((PT_pCube3___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_pCube3___matStageObj_0 == PT_TRILIST ) || ((PT_pCube3___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP))  || (PT_pCube3___matStageObj_0 == PT_INDEXSTRIP)


#if ( !BINARY_Collision_tst__ )
DX3DVERT_START( VN, vertexbuff_pCube3___matStageObj_0 )
DX3DVERT( -2.94279, -0.546527, -2.37075 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 2.94279, -0.546527, -2.37075 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 2.94279, 0.546527, -2.37075 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -2.94279, 0.546527, -2.37075 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -2.94279, 0.546527, -2.37075 ) DX3DVNORM( 0, 1, -0 )  //4
DX3DVERT( 2.94279, 0.546527, -2.37075 ) DX3DVNORM( 0, 1, -0 )  //5
DX3DVERT( 2.94279, 0.546527, 2.37075 ) DX3DVNORM( 0, 1, -0 )  //6
DX3DVERT( -2.94279, 0.546527, 2.37075 ) DX3DVNORM( 0, 1, -0 )  //7
DX3DVERT( -2.94279, 0.546527, 2.37075 ) DX3DVNORM( 0, 0, 1 )  //8
DX3DVERT( 2.94279, 0.546527, 2.37075 ) DX3DVNORM( 0, 0, 1 )  //9
DX3DVERT( 2.94279, -0.546527, 2.37075 ) DX3DVNORM( 0, 0, 1 )  //10
DX3DVERT( -2.94279, -0.546527, 2.37075 ) DX3DVNORM( 0, 0, 1 )  //11
DX3DVERT( -2.94279, -0.546527, 2.37075 ) DX3DVNORM( 0, -1, -0 )  //12
DX3DVERT( 2.94279, -0.546527, 2.37075 ) DX3DVNORM( 0, -1, -0 )  //13
DX3DVERT( 2.94279, -0.546527, -2.37075 ) DX3DVNORM( 0, -1, -0 )  //14
DX3DVERT( -2.94279, -0.546527, -2.37075 ) DX3DVNORM( 0, -1, -0 )  //15
DX3DVERT( 2.94279, -0.546527, -2.37075 ) DX3DVNORM( 1, 0, -0 )  //16
DX3DVERT( 2.94279, -0.546527, 2.37075 ) DX3DVNORM( 1, 0, -0 )  //17
DX3DVERT( 2.94279, 0.546527, 2.37075 ) DX3DVNORM( 1, 0, -0 )  //18
DX3DVERT( 2.94279, 0.546527, -2.37075 ) DX3DVNORM( 1, 0, -0 )  //19
DX3DVERT( -2.94279, -0.546527, 2.37075 ) DX3DVNORM( -1, 0, -0 )  //20
DX3DVERT( -2.94279, -0.546527, -2.37075 ) DX3DVNORM( -1, 0, -0 )  //21
DX3DVERT( -2.94279, 0.546527, -2.37075 ) DX3DVNORM( -1, 0, -0 )  //22
DX3DVERT( -2.94279, 0.546527, 2.37075 ) DX3DVNORM( -1, 0, -0 )  //23
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_pCube3___matStageObj_0 )
#if ( !BINARY_Collision_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_pCube3___matStageObj_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 24 )
DX3DVERTEX_END


#else
#define vertex_pCube3___matStageObj_0	NULL
#define vertexbuff_pCube3___matStageObj_0	NULL
#endif




#if ((PT_pCube3___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_TRILIST) ) || (PT_pCube3___matStageObj_0 == PT_TRILIST )


#if ( !BINARY_Collision_tst__ )
DX3DINDEX_START( index_pCube3___matStageObj_0 )
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
#define index_pCube3___matStageObj_0	NULL
#endif




#if ((PT_pCube3___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_INDEXSTRIP) ) || (PT_pCube3___matStageObj_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_pCube3___matStageObj_0_INDEXSTRIP 	NULL
#endif




#if ((PT_pCube3___matStageObj_0 == PT_FOLLOWALL) && (PT_ALL_Collision_tst__ == PT_VERTEXSTRIP) ) || (PT_pCube3___matStageObj_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_pCube3___matStageObj_0_VERTEXSTRIP 	NULL
#define vertexbuff_pCube3___matStageObj_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_pCube3__ )
DX3DMODEL_START( model_pCube3___matStageObj_0 )
DX3DMODEL_VERTEX( vertex_pCube3___matStageObj_0 )
#if ( !BINARY_Collision_tst__ )
DX3DMODEL_INDEX( index_pCube3___matStageObj_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 36 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_matStageObj )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_pCube3__, 3417623965 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_pCube3__ )
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
	5.35874, 0.546527, -4.53897, 
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
	5.35874, 0.546527, -4.53897, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_NULL__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



//skipped CubeCompass

//////////// export info ///////////////
DX3DOBJECT_JOINTCOUNT( jointcnt_Collision_tst___0, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_Collision_tst___1, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_Collision_tst___2, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_Collision_tst___3, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_Collision_tst___4, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_Collision_tst___5, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_Collision_tst___6, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_Collision_tst___7, 0 )




/////////////////////////////////////////////
#if ( !BINARY_Collision_tst__ )
DX3DBINARYFILE( binaryfile_Collision_tst__, NULL )
#else
DX3DBINARYFILE( binaryfile_Collision_tst__, "Z:/toshi2gachan/Ashitagachan/Gachan/STAGE2-2_BeginnersGameProgramming/Collision/" )
#endif


DX3DBINARYSIZE( binarysize_Collision_tst__, 0 )


