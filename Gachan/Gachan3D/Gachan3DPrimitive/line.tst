//skipped groundPlane_transform
//skipped Manipulator1
//skipped UniversalManip
//skipped CubeCompass
/////////////////////////////////////////////
// object_line__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif

DX3DMATERIAL_START( material_linecolor )
DX3DMATERIAL_DIFF( 1, 0.5, 0.5, 0.5 )
DX3DMATERIAL_SPEC( 1, 0, 0, 0 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_line___linecolor_0 == PT_FOLLOWALL) && (PT_ALL_line_tst__ == PT_TRILIST) ) || (PT_line___linecolor_0 == PT_TRILIST ) || ((PT_line___linecolor_0 == PT_FOLLOWALL) && (PT_ALL_line_tst__ == PT_INDEXSTRIP))  || (PT_line___linecolor_0 == PT_INDEXSTRIP)


#if ( !BINARY_line_tst__ )
DX3DVERT_START( VN, vertexbuff_line___linecolor_0 )
DX3DVERT( 0.0707107, 0.0707107, 1 ) DX3DVNORM( 0.382683, 0.92388, 3.04208e-008 )  //0
DX3DVERT( 0, 0.1, 1 ) DX3DVNORM( 0.382683, 0.92388, 3.04208e-008 )  //1
DX3DVERT( 0, 0.1, 8.19564e-008 ) DX3DVNORM( 0.382683, 0.92388, 3.04208e-008 )  //2
DX3DVERT( 0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( 0.382683, 0.92388, 3.04208e-008 )  //3
DX3DVERT( 0, 0.1, 1 ) DX3DVNORM( -0.382683, 0.92388, 3.04208e-008 )  //4
DX3DVERT( -0.0707107, 0.0707107, 1 ) DX3DVNORM( -0.382683, 0.92388, 3.04208e-008 )  //5
DX3DVERT( -0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( -0.382683, 0.92388, 3.04208e-008 )  //6
DX3DVERT( 0, 0.1, 8.19564e-008 ) DX3DVNORM( -0.382683, 0.92388, 3.04208e-008 )  //7
DX3DVERT( -0.0707107, 0.0707107, 1 ) DX3DVNORM( -0.92388, 0.382683, 6.08416e-009 )  //8
DX3DVERT( -0.1, 0, 1 ) DX3DVNORM( -0.92388, 0.382683, 6.08416e-009 )  //9
DX3DVERT( -0.1, 0, -0 ) DX3DVNORM( -0.92388, 0.382683, 6.08416e-009 )  //10
DX3DVERT( -0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( -0.92388, 0.382683, 6.08416e-009 )  //11
DX3DVERT( -0.1, 0, 1 ) DX3DVNORM( -0.92388, -0.382683, -6.08416e-009 )  //12
DX3DVERT( -0.0707107, -0.0707107, 1 ) DX3DVNORM( -0.92388, -0.382683, -6.08416e-009 )  //13
DX3DVERT( -0.0707107, -0.0707107, -1.49012e-008 ) DX3DVNORM( -0.92388, -0.382683, -6.08416e-009 )  //14
DX3DVERT( -0.1, 0, -0 ) DX3DVNORM( -0.92388, -0.382683, -6.08416e-009 )  //15
DX3DVERT( -0.0707107, -0.0707107, 1 ) DX3DVNORM( -0.382683, -0.92388, -3.04208e-008 )  //16
DX3DVERT( 0, -0.1, 1 ) DX3DVNORM( -0.382683, -0.92388, -3.04208e-008 )  //17
DX3DVERT( 0, -0.1, 2.98023e-008 ) DX3DVNORM( -0.382683, -0.92388, -3.04208e-008 )  //18
DX3DVERT( -0.0707107, -0.0707107, -1.49012e-008 ) DX3DVNORM( -0.382683, -0.92388, -3.04208e-008 )  //19
DX3DVERT( 0, -0.1, 1 ) DX3DVNORM( 0.382683, -0.92388, -2.43366e-008 )  //20
DX3DVERT( 0.0707107, -0.0707107, 1 ) DX3DVNORM( 0.382683, -0.92388, -2.43366e-008 )  //21
DX3DVERT( 0.0707107, -0.0707107, -2.23517e-008 ) DX3DVNORM( 0.382683, -0.92388, -2.43366e-008 )  //22
DX3DVERT( 0, -0.1, 2.98023e-008 ) DX3DVNORM( 0.382683, -0.92388, -2.43366e-008 )  //23
DX3DVERT( 0.0707107, -0.0707107, 1 ) DX3DVNORM( 0.923879, -0.382683, -4.56312e-009 )  //24
DX3DVERT( 0.1, 0, 1 ) DX3DVNORM( 0.923879, -0.382683, -4.56312e-009 )  //25
DX3DVERT( 0.1, 0, -0 ) DX3DVNORM( 0.923879, -0.382683, -4.56312e-009 )  //26
DX3DVERT( 0.0707107, -0.0707107, -2.23517e-008 ) DX3DVNORM( 0.923879, -0.382683, -4.56312e-009 )  //27
DX3DVERT( 0.1, 0, 1 ) DX3DVNORM( 0.923879, 0.382683, 6.08416e-009 )  //28
DX3DVERT( 0.0707107, 0.0707107, 1 ) DX3DVNORM( 0.923879, 0.382683, 6.08416e-009 )  //29
DX3DVERT( 0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( 0.923879, 0.382683, 6.08416e-009 )  //30
DX3DVERT( 0.1, 0, -0 ) DX3DVNORM( 0.923879, 0.382683, 6.08416e-009 )  //31
DX3DVERT( 0, 0.1, 1 ) DX3DVNORM( 0, 5.96047e-007, 1 )  //32
DX3DVERT( 0.0707107, 0.0707107, 1 ) DX3DVNORM( 0, 2.98023e-007, 1 )  //33
DX3DVERT( 0, 0, 1 ) DX3DVNORM( 0, 1.49012e-007, 1 )  //34
DX3DVERT( -0.0707107, 0.0707107, 1 ) DX3DVNORM( 0, 2.98023e-007, 1 )  //35
DX3DVERT( -0.1, 0, 1 ) DX3DVNORM( 0, 0, 1 )  //36
DX3DVERT( -0.0707107, -0.0707107, 1 ) DX3DVNORM( 0, 0, 1 )  //37
DX3DVERT( 0, -0.1, 1 ) DX3DVNORM( 0, 0, 1 )  //38
DX3DVERT( 0.0707107, -0.0707107, 1 ) DX3DVNORM( 0, 0, 1 )  //39
DX3DVERT( 0.1, 0, 1 ) DX3DVNORM( 0, 0, 1 )  //40
DX3DVERT( 0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( -3.04415e-007, 5.15149e-007, -1 )  //41
DX3DVERT( 0, 0.1, 8.19564e-008 ) DX3DVNORM( 0, 8.19564e-007, -1 )  //42
DX3DVERT( 0, 0, -0 ) DX3DVNORM( -1.31709e-008, 2.48923e-007, -1 )  //43
DX3DVERT( -0.0707107, 0.0707107, 1.49012e-008 ) DX3DVNORM( 3.04415e-007, 5.15149e-007, -1 )  //44
DX3DVERT( -0.1, 0, -0 ) DX3DVNORM( 0, 2.10734e-007, -1 )  //45
DX3DVERT( -0.0707107, -0.0707107, -1.49012e-008 ) DX3DVNORM( 2.54379e-007, -4.36445e-008, -1 )  //46
DX3DVERT( 0, -0.1, 2.98023e-008 ) DX3DVNORM( -5.26835e-008, -2.98023e-007, -1 )  //47
DX3DVERT( 0.0707107, -0.0707107, -2.23517e-008 ) DX3DVNORM( -3.07062e-007, 9.03905e-009, -1 )  //48
DX3DVERT( 0.1, 0, -0 ) DX3DVNORM( 0, 2.63418e-007, -1 )  //49
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_line___linecolor_0 )
#if ( !BINARY_line_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_line___linecolor_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 50 )
DX3DVERTEX_END


#else
#define vertex_line___linecolor_0	NULL
#define vertexbuff_line___linecolor_0	NULL
#endif




#if ((PT_line___linecolor_0 == PT_FOLLOWALL) && (PT_ALL_line_tst__ == PT_TRILIST) ) || (PT_line___linecolor_0 == PT_TRILIST )


#if ( !BINARY_line_tst__ )
DX3DINDEX_START( index_line___linecolor_0 )
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
	32, 33, 34, // 16 50
	35, 32, 34, // 17 53
	36, 35, 34, // 18 56
	37, 36, 34, // 19 59
	38, 37, 34, // 20 62
	39, 38, 34, // 21 65
	40, 39, 34, // 22 68
	33, 40, 34, // 23 71
	41, 42, 43, // 24 74
	42, 44, 43, // 25 77
	44, 45, 43, // 26 80
	45, 46, 43, // 27 83
	46, 47, 43, // 28 86
	47, 48, 43, // 29 89
	48, 49, 43, // 30 92
	49, 41, 43, // 31 95
DX3DINDEX_END
#endif

#else
#define index_line___linecolor_0	NULL
#endif




#if ((PT_line___linecolor_0 == PT_FOLLOWALL) && (PT_ALL_line_tst__ == PT_INDEXSTRIP) ) || (PT_line___linecolor_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_line___linecolor_0_INDEXSTRIP 	NULL
#endif




#if ((PT_line___linecolor_0 == PT_FOLLOWALL) && (PT_ALL_line_tst__ == PT_VERTEXSTRIP) ) || (PT_line___linecolor_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_line___linecolor_0_VERTEXSTRIP 	NULL
#define vertexbuff_line___linecolor_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_line__ )
DX3DMODEL_START( model_line___linecolor_0 )
DX3DMODEL_VERTEX( vertex_line___linecolor_0 )
#if ( !BINARY_line_tst__ )
DX3DMODEL_INDEX( index_line___linecolor_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 96 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_linecolor )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_line__, 192588301 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_line__ )
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
DX3DOBJECT_JOINTCOUNT( jointcnt_line_tst___0, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_line_tst___1, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_line_tst___2, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_line_tst___3, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_line_tst___4, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_line_tst___5, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_line_tst___6, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_line_tst___7, 0 )




/////////////////////////////////////////////
#if ( !BINARY_line_tst__ )
DX3DBINARYFILE( binaryfile_line_tst__, NULL )
#else
DX3DBINARYFILE( binaryfile_line_tst__, "Z:/toshi2/mayaprims/" )
#endif


DX3DBINARYSIZE( binarysize_line_tst__, 0 )


