//skipped groundPlane_transform
//skipped Manipulator1
//skipped UniversalManip
//skipped CubeCompass
/////////////////////////////////////////////
// object_LineA__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif

DX3DMATERIAL_START( material_MateLine )
DX3DMATERIAL_DIFF( 1, 1, 1, 1 )
DX3DMATERIAL_SPEC( 1, 0, 0, 0 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_LineA___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_TRILIST) ) || (PT_LineA___MateLine_0 == PT_TRILIST ) || ((PT_LineA___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_INDEXSTRIP))  || (PT_LineA___MateLine_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DVERT_START( VN, vertexbuff_LineA___MateLine_0 )
DX3DVERT( 0.0707107, 0.0707107, 0.5 ) DX3DVNORM( 0.707107, 0.707107, 1.97563e-008 )  //0
DX3DVERT( 0, 0.1, 0.5 ) DX3DVNORM( 0, 1, 3.29272e-008 )  //1
DX3DVERT( 0, 0.1, -0.5 ) DX3DVNORM( 0, 1, 3.29272e-008 )  //2
DX3DVERT( 0.0707107, 0.0707107, -0.5 ) DX3DVNORM( 0.707107, 0.707107, 1.97563e-008 )  //3
DX3DVERT( -0.0707107, 0.0707107, 0.5 ) DX3DVNORM( -0.707107, 0.707107, 1.97563e-008 )  //4
DX3DVERT( -0.0707107, 0.0707107, -0.5 ) DX3DVNORM( -0.707107, 0.707107, 1.97563e-008 )  //5
DX3DVERT( -0.1, 0, 0.5 ) DX3DVNORM( -1, 0, -0 )  //6
DX3DVERT( -0.1, 0, -0.5 ) DX3DVNORM( -1, 0, -0 )  //7
DX3DVERT( -0.0707107, -0.0707107, 0.5 ) DX3DVNORM( -0.707107, -0.707107, -1.97563e-008 )  //8
DX3DVERT( -0.0707107, -0.0707107, -0.5 ) DX3DVNORM( -0.707107, -0.707107, -1.97563e-008 )  //9
DX3DVERT( 0, -0.1, 0.5 ) DX3DVNORM( -1.61289e-008, -1, -2.96345e-008 )  //10
DX3DVERT( 0, -0.1, -0.5 ) DX3DVNORM( -1.61289e-008, -1, -2.96345e-008 )  //11
DX3DVERT( 0.0707107, -0.0707107, 0.5 ) DX3DVNORM( 0.707107, -0.707107, -1.56404e-008 )  //12
DX3DVERT( 0.0707107, -0.0707107, -0.5 ) DX3DVNORM( 0.707107, -0.707107, -1.56404e-008 )  //13
DX3DVERT( 0.1, 0, 0.5 ) DX3DVNORM( 1, 3.22578e-008, 8.23181e-010 )  //14
DX3DVERT( 0.1, 0, -0.5 ) DX3DVNORM( 1, 3.22578e-008, 8.23181e-010 )  //15
DX3DVERT( 0, 0.1, 0.5 ) DX3DVNORM( 0, 2.98023e-007, 1 )  //16
DX3DVERT( 0.0707107, 0.0707107, 0.5 ) DX3DVNORM( 0, 1.49012e-007, 1 )  //17
DX3DVERT( 0, 0, 0.5 ) DX3DVNORM( 0, 2.18223e-008, 1 )  //18
DX3DVERT( -0.0707107, 0.0707107, 0.5 ) DX3DVNORM( 0, 1.49012e-007, 1 )  //19
DX3DVERT( -0.1, 0, 0.5 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( -0.0707107, -0.0707107, 0.5 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0, -0.1, 0.5 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.0707107, -0.0707107, 0.5 ) DX3DVNORM( 0, -2.10734e-007, 1 )  //23
DX3DVERT( 0.1, 0, 0.5 ) DX3DVNORM( 0, -2.10734e-007, 1 )  //24
DX3DVERT( 0.0707107, 0.0707107, -0.5 ) DX3DVNORM( 0, 1.49012e-007, -1 )  //25
DX3DVERT( 0, 0.1, -0.5 ) DX3DVNORM( 0, 2.98023e-007, -1 )  //26
DX3DVERT( 0, 0, -0.5 ) DX3DVNORM( 0, -2.13163e-014, -1 )  //27
DX3DVERT( -0.0707107, 0.0707107, -0.5 ) DX3DVNORM( 0, 1.49012e-007, -1 )  //28
DX3DVERT( -0.1, 0, -0.5 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( -0.0707107, -0.0707107, -0.5 ) DX3DVNORM( 0, -1.49012e-007, -1 )  //30
DX3DVERT( 0, -0.1, -0.5 ) DX3DVNORM( 0, -2.98023e-007, -1 )  //31
DX3DVERT( 0.0707107, -0.0707107, -0.5 ) DX3DVNORM( 0, -1.49012e-007, -1 )  //32
DX3DVERT( 0.1, 0, -0.5 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_LineA___MateLine_0 )
#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_LineA___MateLine_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 34 )
DX3DVERTEX_END


#else
#define vertex_LineA___MateLine_0	NULL
#define vertexbuff_LineA___MateLine_0	NULL
#endif




#if ((PT_LineA___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_TRILIST) ) || (PT_LineA___MateLine_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DINDEX_START( index_LineA___MateLine_0 )
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
	14, 0, 15, // 14 44
	0, 3, 15, // 15 47
	16, 17, 18, // 16 50
	19, 16, 18, // 17 53
	20, 19, 18, // 18 56
	21, 20, 18, // 19 59
	22, 21, 18, // 20 62
	23, 22, 18, // 21 65
	24, 23, 18, // 22 68
	17, 24, 18, // 23 71
	25, 26, 27, // 24 74
	26, 28, 27, // 25 77
	28, 29, 27, // 26 80
	29, 30, 27, // 27 83
	30, 31, 27, // 28 86
	31, 32, 27, // 29 89
	32, 33, 27, // 30 92
	33, 25, 27, // 31 95
DX3DINDEX_END
#endif

#else
#define index_LineA___MateLine_0	NULL
#endif




#if ((PT_LineA___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_INDEXSTRIP) ) || (PT_LineA___MateLine_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_LineA___MateLine_0_INDEXSTRIP 	NULL
#endif




#if ((PT_LineA___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_VERTEXSTRIP) ) || (PT_LineA___MateLine_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_LineA___MateLine_0_VERTEXSTRIP 	NULL
#define vertexbuff_LineA___MateLine_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_LineA__ )
DX3DMODEL_START( model_LineA___MateLine_0 )
DX3DMODEL_VERTEX( vertex_LineA___MateLine_0 )
#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DMODEL_INDEX( index_LineA___MateLine_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_MateLine )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_LineA__, 1162661141 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_LineA__ )
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
// object_LineB__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_LineB___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_TRILIST) ) || (PT_LineB___MateLine_0 == PT_TRILIST ) || ((PT_LineB___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_INDEXSTRIP))  || (PT_LineB___MateLine_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DVERT_START( VN, vertexbuff_LineB___MateLine_0 )
DX3DVERT( 0.0707107, 0.0707107, 1 ) DX3DVNORM( 0.707107, 0.707107, 1.97563e-008 )  //0
DX3DVERT( 0, 0.1, 1 ) DX3DVNORM( 0, 1, 3.29272e-008 )  //1
DX3DVERT( 0, 0.1, 2.23517e-008 ) DX3DVNORM( 0, 1, 3.29272e-008 )  //2
DX3DVERT( 0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( 0.707107, 0.707107, 1.97563e-008 )  //3
DX3DVERT( -0.0707107, 0.0707107, 1 ) DX3DVNORM( -0.707107, 0.707107, 1.97563e-008 )  //4
DX3DVERT( -0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( -0.707107, 0.707107, 1.97563e-008 )  //5
DX3DVERT( -0.1, 0, 1 ) DX3DVNORM( -1, 0, -0 )  //6
DX3DVERT( -0.1, 0, -0 ) DX3DVNORM( -1, 0, -0 )  //7
DX3DVERT( -0.0707107, -0.0707107, 1 ) DX3DVNORM( -0.707107, -0.707107, -1.97563e-008 )  //8
DX3DVERT( -0.0707107, -0.0707107, -1.49012e-008 ) DX3DVNORM( -0.707107, -0.707107, -1.97563e-008 )  //9
DX3DVERT( 0, -0.1, 1 ) DX3DVNORM( -1.61289e-008, -1, -2.96345e-008 )  //10
DX3DVERT( 0, -0.1, 2.98023e-008 ) DX3DVNORM( -1.61289e-008, -1, -2.96345e-008 )  //11
DX3DVERT( 0.0707107, -0.0707107, 1 ) DX3DVNORM( 0.707107, -0.707107, -1.56404e-008 )  //12
DX3DVERT( 0.0707107, -0.0707107, 7.45058e-009 ) DX3DVNORM( 0.707107, -0.707107, -1.56404e-008 )  //13
DX3DVERT( 0.1, 0, 1 ) DX3DVNORM( 1, 3.22578e-008, 8.23181e-010 )  //14
DX3DVERT( 0.1, 0, -0 ) DX3DVNORM( 1, 3.22578e-008, 8.23181e-010 )  //15
DX3DVERT( 0, 0.1, 1 ) DX3DVNORM( 0, 5.96047e-007, 1 )  //16
DX3DVERT( 0.0707107, 0.0707107, 1 ) DX3DVNORM( 0, 2.98023e-007, 1 )  //17
DX3DVERT( 0, 0, 1 ) DX3DVNORM( 0, 1.49012e-007, 1 )  //18
DX3DVERT( -0.0707107, 0.0707107, 1 ) DX3DVNORM( 0, 2.98023e-007, 1 )  //19
DX3DVERT( -0.1, 0, 1 ) DX3DVNORM( 0, 0, 1 )  //20
DX3DVERT( -0.0707107, -0.0707107, 1 ) DX3DVNORM( 0, 0, 1 )  //21
DX3DVERT( 0, -0.1, 1 ) DX3DVNORM( 0, 0, 1 )  //22
DX3DVERT( 0.0707107, -0.0707107, 1 ) DX3DVNORM( 0, 0, 1 )  //23
DX3DVERT( 0.1, 0, 1 ) DX3DVNORM( 0, 0, 1 )  //24
DX3DVERT( 0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( -6.39161e-009, 2.17126e-007, -1 )  //25
DX3DVERT( 0, 0.1, 2.23517e-008 ) DX3DVNORM( 0, 2.23517e-007, -1 )  //26
DX3DVERT( 0, 0, -0 ) DX3DVNORM( 3.95127e-008, 4.7228e-008, -1 )  //27
DX3DVERT( -0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( 6.39161e-009, 2.17126e-007, -1 )  //28
DX3DVERT( -0.1, 0, -0 ) DX3DVNORM( 0, 2.10734e-007, -1 )  //29
DX3DVERT( -0.0707107, -0.0707107, -1.49012e-008 ) DX3DVNORM( 2.54379e-007, -4.36445e-008, -1 )  //30
DX3DVERT( 0, -0.1, 2.98023e-008 ) DX3DVNORM( 1.58051e-007, -2.98023e-007, -1 )  //31
DX3DVERT( 0.0707107, -0.0707107, 7.45058e-009 ) DX3DVNORM( -9.63281e-008, -2.01695e-007, -1 )  //32
DX3DVERT( 0.1, 0, -0 ) DX3DVNORM( 0, 5.26835e-008, -1 )  //33
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_LineB___MateLine_0 )
#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_LineB___MateLine_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 34 )
DX3DVERTEX_END


#else
#define vertex_LineB___MateLine_0	NULL
#define vertexbuff_LineB___MateLine_0	NULL
#endif




#if ((PT_LineB___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_TRILIST) ) || (PT_LineB___MateLine_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DINDEX_START( index_LineB___MateLine_0 )
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
	14, 0, 15, // 14 44
	0, 3, 15, // 15 47
	16, 17, 18, // 16 50
	19, 16, 18, // 17 53
	20, 19, 18, // 18 56
	21, 20, 18, // 19 59
	22, 21, 18, // 20 62
	23, 22, 18, // 21 65
	24, 23, 18, // 22 68
	17, 24, 18, // 23 71
	25, 26, 27, // 24 74
	26, 28, 27, // 25 77
	28, 29, 27, // 26 80
	29, 30, 27, // 27 83
	30, 31, 27, // 28 86
	31, 32, 27, // 29 89
	32, 33, 27, // 30 92
	33, 25, 27, // 31 95
DX3DINDEX_END
#endif

#else
#define index_LineB___MateLine_0	NULL
#endif




#if ((PT_LineB___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_INDEXSTRIP) ) || (PT_LineB___MateLine_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_LineB___MateLine_0_INDEXSTRIP 	NULL
#endif




#if ((PT_LineB___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_VERTEXSTRIP) ) || (PT_LineB___MateLine_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_LineB___MateLine_0_VERTEXSTRIP 	NULL
#define vertexbuff_LineB___MateLine_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_LineB__ )
DX3DMODEL_START( model_LineB___MateLine_0 )
DX3DMODEL_VERTEX( vertex_LineB___MateLine_0 )
#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DMODEL_INDEX( index_LineB___MateLine_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_MateLine )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_LineB__, 1162662585 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_LineB__ )
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
// object_LineArrowCap__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



#if ((PT_LineArrowCap___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_TRILIST) ) || (PT_LineArrowCap___MateLine_0 == PT_TRILIST ) || ((PT_LineArrowCap___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_INDEXSTRIP))  || (PT_LineArrowCap___MateLine_0 == PT_INDEXSTRIP)


#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DVERT_START( VN, vertexbuff_LineArrowCap___MateLine_0 )
DX3DVERT( 8.27842e-010, 0, -0 ) DX3DVNORM( -2.49966e-008, -1.24983e-008, 1 )  //0
DX3DVERT( -4.14167e-009, 0.168992, -0.5 ) DX3DVNORM( 0, 0.947353, 0.32019 )  //1
DX3DVERT( 0.119495, 0.119495, -0.5 ) DX3DVNORM( 0.66988, 0.66988, 0.32019 )  //2
DX3DVERT( -0.119495, 0.119495, -0.5 ) DX3DVNORM( -0.66988, 0.66988, 0.32019 )  //3
DX3DVERT( -0.168992, -1.02806e-008, -0.5 ) DX3DVNORM( -0.947353, -4.80221e-008, 0.32019 )  //4
DX3DVERT( -0.119495, -0.119495, -0.5 ) DX3DVNORM( -0.66988, -0.66988, 0.32019 )  //5
DX3DVERT( -4.14167e-009, -0.168992, -0.5 ) DX3DVNORM( 0, -0.947353, 0.32019 )  //6
DX3DVERT( 0.119495, -0.119495, -0.5 ) DX3DVNORM( 0.66988, -0.66988, 0.32019 )  //7
DX3DVERT( 0.168992, -1.02806e-008, -0.5 ) DX3DVNORM( 0.947353, -1.60074e-008, 0.32019 )  //8
DX3DVERT( 0.119495, 0.119495, -0.5 ) DX3DVNORM( 1.84477e-007, 8.81767e-008, -1 )  //9
DX3DVERT( -4.14167e-009, 0.168992, -0.5 ) DX3DVNORM( -1.84477e-007, 1.76353e-007, -1 )  //10
DX3DVERT( -4.14167e-009, -1.02806e-008, -0.5 ) DX3DVNORM( 2.84217e-014, -4.40884e-008, -1 )  //11
DX3DVERT( -0.119495, 0.119495, -0.5 ) DX3DVNORM( -3.68955e-007, 8.81767e-008, -1 )  //12
DX3DVERT( -0.168992, -1.02806e-008, -0.5 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( -0.119495, -0.119495, -0.5 ) DX3DVNORM( 5.53432e-007, -1.76353e-007, -1 )  //14
DX3DVERT( -4.14167e-009, -0.168992, -0.5 ) DX3DVNORM( 1.84477e-007, -3.52707e-007, -1 )  //15
DX3DVERT( 0.119495, -0.119495, -0.5 ) DX3DVNORM( -3.68955e-007, -1.76353e-007, -1 )  //16
DX3DVERT( 0.168992, -1.02806e-008, -0.5 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_LineArrowCap___MateLine_0 )
#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_LineArrowCap___MateLine_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 18 )
DX3DVERTEX_END


#else
#define vertex_LineArrowCap___MateLine_0	NULL
#define vertexbuff_LineArrowCap___MateLine_0	NULL
#endif




#if ((PT_LineArrowCap___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_TRILIST) ) || (PT_LineArrowCap___MateLine_0 == PT_TRILIST )


#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DINDEX_START( index_LineArrowCap___MateLine_0 )
	0, 1, 2, // 0 2
	0, 3, 1, // 1 5
	0, 4, 3, // 2 8
	0, 5, 4, // 3 11
	0, 6, 5, // 4 14
	0, 7, 6, // 5 17
	0, 8, 7, // 6 20
	0, 2, 8, // 7 23
	9, 10, 11, // 8 26
	10, 12, 11, // 9 29
	12, 13, 11, // 10 32
	13, 14, 11, // 11 35
	14, 15, 11, // 12 38
	15, 16, 11, // 13 41
	16, 17, 11, // 14 44
	17, 9, 11, // 15 47
DX3DINDEX_END
#endif

#else
#define index_LineArrowCap___MateLine_0	NULL
#endif




#if ((PT_LineArrowCap___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_INDEXSTRIP) ) || (PT_LineArrowCap___MateLine_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_LineArrowCap___MateLine_0_INDEXSTRIP 	NULL
#endif




#if ((PT_LineArrowCap___MateLine_0 == PT_FOLLOWALL) && (PT_ALL_GachanGameObjectSystem00_tst__ == PT_VERTEXSTRIP) ) || (PT_LineArrowCap___MateLine_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_LineArrowCap___MateLine_0_VERTEXSTRIP 	NULL
#define vertexbuff_LineArrowCap___MateLine_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_LineArrowCap__ )
DX3DMODEL_START( model_LineArrowCap___MateLine_0 )
DX3DMODEL_VERTEX( vertex_LineArrowCap___MateLine_0 )
#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DMODEL_INDEX( index_LineArrowCap___MateLine_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 48 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_MateLine )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_LineArrowCap__, 2569201185 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_LineArrowCap__ )
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
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectSystem00_tst___0, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectSystem00_tst___1, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectSystem00_tst___2, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectSystem00_tst___3, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectSystem00_tst___4, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectSystem00_tst___5, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectSystem00_tst___6, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_GachanGameObjectSystem00_tst___7, 0 )




/////////////////////////////////////////////
#if ( !BINARY_GachanGameObjectSystem00_tst__ )
DX3DBINARYFILE( binaryfile_GachanGameObjectSystem00_tst__, NULL )
#else
DX3DBINARYFILE( binaryfile_GachanGameObjectSystem00_tst__, "Z:/toshi2gachan/_GachanWorkspace/object/" )
#endif


DX3DBINARYSIZE( binarysize_GachanGameObjectSystem00_tst__, 0 )


