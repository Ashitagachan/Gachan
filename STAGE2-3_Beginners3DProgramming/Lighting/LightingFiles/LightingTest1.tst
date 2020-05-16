//skipped groundPlane_transform
//skipped Manipulator1
//skipped UniversalManip
//skipped CubeCompass
/////////////////////////////////////////////
// object_TARGET__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif

DX3DTEXTURE_START( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_checkrgba_DDS__ )
DX3DTEXTURE_NAME( "Z:/toshi2/ATEST/ATEST/ATESTNameSpace/STAGE2-3_Beginners3DProgramming/Lighting/LightingFiles/checkrgba.DDS" )
DX3DTEXTURE_END


DX3DTEXTURE_START( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_specular_dds__ )
DX3DTEXTURE_NAME( "Z:/toshi2/ATEST/ATEST/ATESTNameSpace/STAGE2-3_Beginners3DProgramming/Lighting/LightingFiles/specular.dds" )
DX3DTEXTURE_END


DX3DTEXTURE_START( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_normal_dds__ )
DX3DTEXTURE_NAME( "Z:/toshi2/ATEST/ATEST/ATESTNameSpace/STAGE2-3_Beginners3DProgramming/Lighting/LightingFiles/normal.dds" )
DX3DTEXTURE_END


DX3DMATERIALTEX_START( materialtex_texsn_target )
DX3DMATERIALTEX_NAME( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_checkrgba_DDS__ )
DX3DMATERIALTEX_NAME( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_specular_dds__ )
DX3DMATERIALTEX_NAME( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_normal_dds__ )
DX3DMATERIALTEX_END


DX3DMATERIAL_START( material_texsn_target )
DX3DMATERIAL_DIFF( 1, 0.8, 0.8, 0.8 )
DX3DMATERIAL_SPEC( 0, 1, 1, 1 )
DX3DMATERIAL_TEX( materialtex_texsn_target )
DX3DMATERIAL_SHADER( TEXSN )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_TARGET___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_TARGET___texsn_target_0 == PT_TRILIST ) || ((PT_TARGET___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_TARGET___texsn_target_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VNBTUV, vertexbuff_TARGET___texsn_target_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, 0 ) DX3DVUV( 0.00199203, 0.998008 )  //0
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.998008, 0.998008 )  //1
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.998008, 0.00199199 )  //2
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.00199203, 0.00199199 )  //3
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_TARGET___texsn_target_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_TARGET___texsn_target_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VNBTUV, 4 )
DX3DVERTEX_END


#else
#define vertex_TARGET___texsn_target_0	NULL
#define vertexbuff_TARGET___texsn_target_0	NULL
#endif




#if ((PT_TARGET___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_TARGET___texsn_target_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_TARGET___texsn_target_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
DX3DINDEX_END
#endif

#else
#define index_TARGET___texsn_target_0	NULL
#endif




#if ((PT_TARGET___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_TARGET___texsn_target_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_TARGET___texsn_target_0_INDEXSTRIP 	NULL
#endif




#if ((PT_TARGET___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_TARGET___texsn_target_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_TARGET___texsn_target_0_VERTEXSTRIP 	NULL
#define vertexbuff_TARGET___texsn_target_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_TARGET__ )
DX3DMODEL_START( model_TARGET___texsn_target_0 )
DX3DMODEL_VERTEX( vertex_TARGET___texsn_target_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_TARGET___texsn_target_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 6 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_texsn_target )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_TARGET__, 3563738225 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_TARGET__ )
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
// object_SOURCE__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	-2.1, 0, 0, 1
#endif

DX3DMATERIALTEX_START( materialtex_texa_source )
DX3DMATERIALTEX_NAME( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_checkrgba_DDS__ )
DX3DMATERIALTEX_END


DX3DMATERIAL_START( material_texa_source )
DX3DMATERIAL_DIFF( 1, 0.8, 0.8, 0.8 )
DX3DMATERIAL_SPEC( 0, 1, 1, 1 )
DX3DMATERIAL_TEX( materialtex_texa_source )
DX3DMATERIAL_SHADER( TEXA )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_SOURCE___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_SOURCE___texa_source_0 == PT_TRILIST ) || ((PT_SOURCE___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_SOURCE___texa_source_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VNUV, vertexbuff_SOURCE___texa_source_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.00199203, 0.998008 )  //0
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.998008, 0.998008 )  //1
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.998008, 0.00199199 )  //2
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.00199203, 0.00199199 )  //3
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_SOURCE___texa_source_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_SOURCE___texa_source_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VNUV, 4 )
DX3DVERTEX_END


#else
#define vertex_SOURCE___texa_source_0	NULL
#define vertexbuff_SOURCE___texa_source_0	NULL
#endif




#if ((PT_SOURCE___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_SOURCE___texa_source_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_SOURCE___texa_source_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
DX3DINDEX_END
#endif

#else
#define index_SOURCE___texa_source_0	NULL
#endif




#if ((PT_SOURCE___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_SOURCE___texa_source_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_SOURCE___texa_source_0_INDEXSTRIP 	NULL
#endif




#if ((PT_SOURCE___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_SOURCE___texa_source_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_SOURCE___texa_source_0_VERTEXSTRIP 	NULL
#define vertexbuff_SOURCE___texa_source_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_SOURCE__ )
DX3DMODEL_START( model_SOURCE___texa_source_0 )
DX3DMODEL_VERTEX( vertex_SOURCE___texa_source_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_SOURCE___texa_source_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 6 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_texa_source )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_SOURCE__, 281252341 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_SOURCE__ )
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
	-2.1, 0, -0, 
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
	-2.1, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_TARGET__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_MESH__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	2.1, 0, 0, 1
#endif



#if ((PT_MESH___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_MESH___texa_source_0 == PT_TRILIST ) || ((PT_MESH___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_MESH___texa_source_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VNUV, vertexbuff_MESH___texa_source_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 1 )  //0
DX3DVERT( -0.9, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 1 )  //1
DX3DVERT( -0.9, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.95 )  //2
DX3DVERT( -1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.95 )  //3
DX3DVERT( -0.8, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 1 )  //4
DX3DVERT( -0.8, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.95 )  //5
DX3DVERT( -0.7, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 1 )  //6
DX3DVERT( -0.7, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.95 )  //7
DX3DVERT( -0.6, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 1 )  //8
DX3DVERT( -0.6, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.95 )  //9
DX3DVERT( -0.5, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 1 )  //10
DX3DVERT( -0.5, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.95 )  //11
DX3DVERT( -0.4, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 1 )  //12
DX3DVERT( -0.4, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.95 )  //13
DX3DVERT( -0.3, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 1 )  //14
DX3DVERT( -0.3, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.95 )  //15
DX3DVERT( -0.2, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 1 )  //16
DX3DVERT( -0.2, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.95 )  //17
DX3DVERT( -0.1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 1 )  //18
DX3DVERT( -0.1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.95 )  //19
DX3DVERT( 1.49012e-008, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 1 )  //20
DX3DVERT( 1.49012e-008, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.95 )  //21
DX3DVERT( 0.1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 1 )  //22
DX3DVERT( 0.1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.95 )  //23
DX3DVERT( 0.2, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 1 )  //24
DX3DVERT( 0.2, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.95 )  //25
DX3DVERT( 0.3, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 1 )  //26
DX3DVERT( 0.3, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.95 )  //27
DX3DVERT( 0.4, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 1 )  //28
DX3DVERT( 0.4, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.95 )  //29
DX3DVERT( 0.5, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 1 )  //30
DX3DVERT( 0.5, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.95 )  //31
DX3DVERT( 0.6, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 1 )  //32
DX3DVERT( 0.6, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.95 )  //33
DX3DVERT( 0.7, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 1 )  //34
DX3DVERT( 0.7, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.95 )  //35
DX3DVERT( 0.8, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 1 )  //36
DX3DVERT( 0.8, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.95 )  //37
DX3DVERT( 0.9, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 1 )  //38
DX3DVERT( 0.9, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.95 )  //39
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 1 )  //40
DX3DVERT( 1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.95 )  //41
DX3DVERT( -0.9, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.9 )  //42
DX3DVERT( -1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.9 )  //43
DX3DVERT( -0.8, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.9 )  //44
DX3DVERT( -0.7, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.9 )  //45
DX3DVERT( -0.6, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.9 )  //46
DX3DVERT( -0.5, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.9 )  //47
DX3DVERT( -0.4, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.9 )  //48
DX3DVERT( -0.3, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.9 )  //49
DX3DVERT( -0.2, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.9 )  //50
DX3DVERT( -0.1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.9 )  //51
DX3DVERT( 1.49012e-008, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.9 )  //52
DX3DVERT( 0.1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.9 )  //53
DX3DVERT( 0.2, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.9 )  //54
DX3DVERT( 0.3, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.9 )  //55
DX3DVERT( 0.4, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.9 )  //56
DX3DVERT( 0.5, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.9 )  //57
DX3DVERT( 0.6, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.9 )  //58
DX3DVERT( 0.7, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.9 )  //59
DX3DVERT( 0.8, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.9 )  //60
DX3DVERT( 0.9, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.9 )  //61
DX3DVERT( 1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.9 )  //62
DX3DVERT( -0.9, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.85 )  //63
DX3DVERT( -1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.85 )  //64
DX3DVERT( -0.8, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.85 )  //65
DX3DVERT( -0.7, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.85 )  //66
DX3DVERT( -0.6, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.85 )  //67
DX3DVERT( -0.5, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.85 )  //68
DX3DVERT( -0.4, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.85 )  //69
DX3DVERT( -0.3, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.85 )  //70
DX3DVERT( -0.2, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.85 )  //71
DX3DVERT( -0.1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.85 )  //72
DX3DVERT( 1.49012e-008, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.85 )  //73
DX3DVERT( 0.1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.85 )  //74
DX3DVERT( 0.2, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.85 )  //75
DX3DVERT( 0.3, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.85 )  //76
DX3DVERT( 0.4, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.85 )  //77
DX3DVERT( 0.5, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.85 )  //78
DX3DVERT( 0.6, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.85 )  //79
DX3DVERT( 0.7, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.85 )  //80
DX3DVERT( 0.8, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.85 )  //81
DX3DVERT( 0.9, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.85 )  //82
DX3DVERT( 1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.85 )  //83
DX3DVERT( -0.9, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.8 )  //84
DX3DVERT( -1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.8 )  //85
DX3DVERT( -0.8, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.8 )  //86
DX3DVERT( -0.7, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.8 )  //87
DX3DVERT( -0.6, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.8 )  //88
DX3DVERT( -0.5, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.8 )  //89
DX3DVERT( -0.4, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.8 )  //90
DX3DVERT( -0.3, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.8 )  //91
DX3DVERT( -0.2, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.8 )  //92
DX3DVERT( -0.1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.8 )  //93
DX3DVERT( 1.49012e-008, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.8 )  //94
DX3DVERT( 0.1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.8 )  //95
DX3DVERT( 0.2, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.8 )  //96
DX3DVERT( 0.3, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.8 )  //97
DX3DVERT( 0.4, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.8 )  //98
DX3DVERT( 0.5, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.8 )  //99
DX3DVERT( 0.6, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.8 )  //100
DX3DVERT( 0.7, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.8 )  //101
DX3DVERT( 0.8, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.8 )  //102
DX3DVERT( 0.9, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.8 )  //103
DX3DVERT( 1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.8 )  //104
DX3DVERT( -0.9, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.75 )  //105
DX3DVERT( -1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.75 )  //106
DX3DVERT( -0.8, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.75 )  //107
DX3DVERT( -0.7, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.75 )  //108
DX3DVERT( -0.6, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.75 )  //109
DX3DVERT( -0.5, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.75 )  //110
DX3DVERT( -0.4, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.75 )  //111
DX3DVERT( -0.3, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.75 )  //112
DX3DVERT( -0.2, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.75 )  //113
DX3DVERT( -0.1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.75 )  //114
DX3DVERT( 1.49012e-008, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.75 )  //115
DX3DVERT( 0.1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.75 )  //116
DX3DVERT( 0.2, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.75 )  //117
DX3DVERT( 0.3, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.75 )  //118
DX3DVERT( 0.4, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.75 )  //119
DX3DVERT( 0.5, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.75 )  //120
DX3DVERT( 0.6, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.75 )  //121
DX3DVERT( 0.7, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.75 )  //122
DX3DVERT( 0.8, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.75 )  //123
DX3DVERT( 0.9, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.75 )  //124
DX3DVERT( 1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.75 )  //125
DX3DVERT( -0.9, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.7 )  //126
DX3DVERT( -1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.7 )  //127
DX3DVERT( -0.8, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.7 )  //128
DX3DVERT( -0.7, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.7 )  //129
DX3DVERT( -0.6, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.7 )  //130
DX3DVERT( -0.5, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.7 )  //131
DX3DVERT( -0.4, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.7 )  //132
DX3DVERT( -0.3, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.7 )  //133
DX3DVERT( -0.2, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.7 )  //134
DX3DVERT( -0.1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.7 )  //135
DX3DVERT( 1.49012e-008, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.7 )  //136
DX3DVERT( 0.1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.7 )  //137
DX3DVERT( 0.2, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.7 )  //138
DX3DVERT( 0.3, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.7 )  //139
DX3DVERT( 0.4, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.7 )  //140
DX3DVERT( 0.5, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.7 )  //141
DX3DVERT( 0.6, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.7 )  //142
DX3DVERT( 0.7, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.7 )  //143
DX3DVERT( 0.8, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.7 )  //144
DX3DVERT( 0.9, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.7 )  //145
DX3DVERT( 1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.7 )  //146
DX3DVERT( -0.9, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.65 )  //147
DX3DVERT( -1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.65 )  //148
DX3DVERT( -0.8, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.65 )  //149
DX3DVERT( -0.7, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.65 )  //150
DX3DVERT( -0.6, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.65 )  //151
DX3DVERT( -0.5, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.65 )  //152
DX3DVERT( -0.4, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.65 )  //153
DX3DVERT( -0.3, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.65 )  //154
DX3DVERT( -0.2, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.65 )  //155
DX3DVERT( -0.1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.65 )  //156
DX3DVERT( 1.49012e-008, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.65 )  //157
DX3DVERT( 0.1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.65 )  //158
DX3DVERT( 0.2, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.65 )  //159
DX3DVERT( 0.3, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.65 )  //160
DX3DVERT( 0.4, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.65 )  //161
DX3DVERT( 0.5, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.65 )  //162
DX3DVERT( 0.6, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.65 )  //163
DX3DVERT( 0.7, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.65 )  //164
DX3DVERT( 0.8, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.65 )  //165
DX3DVERT( 0.9, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.65 )  //166
DX3DVERT( 1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.65 )  //167
DX3DVERT( -0.9, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.6 )  //168
DX3DVERT( -1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.6 )  //169
DX3DVERT( -0.8, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.6 )  //170
DX3DVERT( -0.7, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.6 )  //171
DX3DVERT( -0.6, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.6 )  //172
DX3DVERT( -0.5, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.6 )  //173
DX3DVERT( -0.4, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.6 )  //174
DX3DVERT( -0.3, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.6 )  //175
DX3DVERT( -0.2, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.6 )  //176
DX3DVERT( -0.1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.6 )  //177
DX3DVERT( 1.49012e-008, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.6 )  //178
DX3DVERT( 0.1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.6 )  //179
DX3DVERT( 0.2, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.6 )  //180
DX3DVERT( 0.3, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.6 )  //181
DX3DVERT( 0.4, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.6 )  //182
DX3DVERT( 0.5, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.6 )  //183
DX3DVERT( 0.6, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.6 )  //184
DX3DVERT( 0.7, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.6 )  //185
DX3DVERT( 0.8, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.6 )  //186
DX3DVERT( 0.9, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.6 )  //187
DX3DVERT( 1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.6 )  //188
DX3DVERT( -0.9, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.55 )  //189
DX3DVERT( -1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.55 )  //190
DX3DVERT( -0.8, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.55 )  //191
DX3DVERT( -0.7, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.55 )  //192
DX3DVERT( -0.6, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.55 )  //193
DX3DVERT( -0.5, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.55 )  //194
DX3DVERT( -0.4, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.55 )  //195
DX3DVERT( -0.3, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.55 )  //196
DX3DVERT( -0.2, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.55 )  //197
DX3DVERT( -0.1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.55 )  //198
DX3DVERT( 1.49012e-008, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.55 )  //199
DX3DVERT( 0.1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.55 )  //200
DX3DVERT( 0.2, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.55 )  //201
DX3DVERT( 0.3, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.55 )  //202
DX3DVERT( 0.4, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.55 )  //203
DX3DVERT( 0.5, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.55 )  //204
DX3DVERT( 0.6, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.55 )  //205
DX3DVERT( 0.7, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.55 )  //206
DX3DVERT( 0.8, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.55 )  //207
DX3DVERT( 0.9, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.55 )  //208
DX3DVERT( 1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.55 )  //209
DX3DVERT( -0.9, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.5 )  //210
DX3DVERT( -1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.5 )  //211
DX3DVERT( -0.8, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.5 )  //212
DX3DVERT( -0.7, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.5 )  //213
DX3DVERT( -0.6, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.5 )  //214
DX3DVERT( -0.5, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.5 )  //215
DX3DVERT( -0.4, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.5 )  //216
DX3DVERT( -0.3, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.5 )  //217
DX3DVERT( -0.2, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.5 )  //218
DX3DVERT( -0.1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.5 )  //219
DX3DVERT( 1.49012e-008, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.5 )  //220
DX3DVERT( 0.1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.5 )  //221
DX3DVERT( 0.2, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.5 )  //222
DX3DVERT( 0.3, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.5 )  //223
DX3DVERT( 0.4, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.5 )  //224
DX3DVERT( 0.5, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.5 )  //225
DX3DVERT( 0.6, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.5 )  //226
DX3DVERT( 0.7, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.5 )  //227
DX3DVERT( 0.8, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.5 )  //228
DX3DVERT( 0.9, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.5 )  //229
DX3DVERT( 1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.5 )  //230
DX3DVERT( -0.9, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.45 )  //231
DX3DVERT( -1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.45 )  //232
DX3DVERT( -0.8, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.45 )  //233
DX3DVERT( -0.7, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.45 )  //234
DX3DVERT( -0.6, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.45 )  //235
DX3DVERT( -0.5, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.45 )  //236
DX3DVERT( -0.4, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.45 )  //237
DX3DVERT( -0.3, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.45 )  //238
DX3DVERT( -0.2, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.45 )  //239
DX3DVERT( -0.1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.45 )  //240
DX3DVERT( 1.49012e-008, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.45 )  //241
DX3DVERT( 0.1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.45 )  //242
DX3DVERT( 0.2, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.45 )  //243
DX3DVERT( 0.3, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.45 )  //244
DX3DVERT( 0.4, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.45 )  //245
DX3DVERT( 0.5, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.45 )  //246
DX3DVERT( 0.6, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.45 )  //247
DX3DVERT( 0.7, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.45 )  //248
DX3DVERT( 0.8, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.45 )  //249
DX3DVERT( 0.9, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.45 )  //250
DX3DVERT( 1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.45 )  //251
DX3DVERT( -0.9, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.4 )  //252
DX3DVERT( -1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.4 )  //253
DX3DVERT( -0.8, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.4 )  //254
DX3DVERT( -0.7, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.4 )  //255
DX3DVERT( -0.6, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.4 )  //256
DX3DVERT( -0.5, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.4 )  //257
DX3DVERT( -0.4, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.4 )  //258
DX3DVERT( -0.3, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.4 )  //259
DX3DVERT( -0.2, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.4 )  //260
DX3DVERT( -0.1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.4 )  //261
DX3DVERT( 1.49012e-008, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.4 )  //262
DX3DVERT( 0.1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.4 )  //263
DX3DVERT( 0.2, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.4 )  //264
DX3DVERT( 0.3, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.4 )  //265
DX3DVERT( 0.4, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.4 )  //266
DX3DVERT( 0.5, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.4 )  //267
DX3DVERT( 0.6, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.4 )  //268
DX3DVERT( 0.7, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.4 )  //269
DX3DVERT( 0.8, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.4 )  //270
DX3DVERT( 0.9, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.4 )  //271
DX3DVERT( 1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.4 )  //272
DX3DVERT( -0.9, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.35 )  //273
DX3DVERT( -1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.35 )  //274
DX3DVERT( -0.8, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.35 )  //275
DX3DVERT( -0.7, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.35 )  //276
DX3DVERT( -0.6, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.35 )  //277
DX3DVERT( -0.5, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.35 )  //278
DX3DVERT( -0.4, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.35 )  //279
DX3DVERT( -0.3, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.35 )  //280
DX3DVERT( -0.2, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.35 )  //281
DX3DVERT( -0.1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.35 )  //282
DX3DVERT( 1.49012e-008, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.35 )  //283
DX3DVERT( 0.1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.35 )  //284
DX3DVERT( 0.2, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.35 )  //285
DX3DVERT( 0.3, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.35 )  //286
DX3DVERT( 0.4, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.35 )  //287
DX3DVERT( 0.5, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.35 )  //288
DX3DVERT( 0.6, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.35 )  //289
DX3DVERT( 0.7, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.35 )  //290
DX3DVERT( 0.8, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.35 )  //291
DX3DVERT( 0.9, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.35 )  //292
DX3DVERT( 1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.35 )  //293
DX3DVERT( -0.9, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.3 )  //294
DX3DVERT( -1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.3 )  //295
DX3DVERT( -0.8, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.3 )  //296
DX3DVERT( -0.7, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.3 )  //297
DX3DVERT( -0.6, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.3 )  //298
DX3DVERT( -0.5, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.3 )  //299
DX3DVERT( -0.4, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.3 )  //300
DX3DVERT( -0.3, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.3 )  //301
DX3DVERT( -0.2, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.3 )  //302
DX3DVERT( -0.1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.3 )  //303
DX3DVERT( 1.49012e-008, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.3 )  //304
DX3DVERT( 0.1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.3 )  //305
DX3DVERT( 0.2, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.3 )  //306
DX3DVERT( 0.3, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.3 )  //307
DX3DVERT( 0.4, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.3 )  //308
DX3DVERT( 0.5, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.3 )  //309
DX3DVERT( 0.6, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.3 )  //310
DX3DVERT( 0.7, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.3 )  //311
DX3DVERT( 0.8, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.3 )  //312
DX3DVERT( 0.9, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.3 )  //313
DX3DVERT( 1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.3 )  //314
DX3DVERT( -0.9, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.25 )  //315
DX3DVERT( -1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.25 )  //316
DX3DVERT( -0.8, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.25 )  //317
DX3DVERT( -0.7, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.25 )  //318
DX3DVERT( -0.6, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.25 )  //319
DX3DVERT( -0.5, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.25 )  //320
DX3DVERT( -0.4, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.25 )  //321
DX3DVERT( -0.3, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.25 )  //322
DX3DVERT( -0.2, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.25 )  //323
DX3DVERT( -0.1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.25 )  //324
DX3DVERT( 1.49012e-008, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.25 )  //325
DX3DVERT( 0.1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.25 )  //326
DX3DVERT( 0.2, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.25 )  //327
DX3DVERT( 0.3, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.25 )  //328
DX3DVERT( 0.4, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.25 )  //329
DX3DVERT( 0.5, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.25 )  //330
DX3DVERT( 0.6, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.25 )  //331
DX3DVERT( 0.7, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.25 )  //332
DX3DVERT( 0.8, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.25 )  //333
DX3DVERT( 0.9, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.25 )  //334
DX3DVERT( 1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.25 )  //335
DX3DVERT( -0.9, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.2 )  //336
DX3DVERT( -1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.2 )  //337
DX3DVERT( -0.8, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.2 )  //338
DX3DVERT( -0.7, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.2 )  //339
DX3DVERT( -0.6, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.2 )  //340
DX3DVERT( -0.5, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.2 )  //341
DX3DVERT( -0.4, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.2 )  //342
DX3DVERT( -0.3, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.2 )  //343
DX3DVERT( -0.2, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.2 )  //344
DX3DVERT( -0.1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.2 )  //345
DX3DVERT( 1.49012e-008, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.2 )  //346
DX3DVERT( 0.1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.2 )  //347
DX3DVERT( 0.2, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.2 )  //348
DX3DVERT( 0.3, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.2 )  //349
DX3DVERT( 0.4, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.2 )  //350
DX3DVERT( 0.5, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.2 )  //351
DX3DVERT( 0.6, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.2 )  //352
DX3DVERT( 0.7, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.2 )  //353
DX3DVERT( 0.8, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.2 )  //354
DX3DVERT( 0.9, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.2 )  //355
DX3DVERT( 1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.2 )  //356
DX3DVERT( -0.9, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.15 )  //357
DX3DVERT( -1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.15 )  //358
DX3DVERT( -0.8, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.15 )  //359
DX3DVERT( -0.7, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.15 )  //360
DX3DVERT( -0.6, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.15 )  //361
DX3DVERT( -0.5, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.15 )  //362
DX3DVERT( -0.4, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.15 )  //363
DX3DVERT( -0.3, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.15 )  //364
DX3DVERT( -0.2, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.15 )  //365
DX3DVERT( -0.1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.15 )  //366
DX3DVERT( 1.49012e-008, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.15 )  //367
DX3DVERT( 0.1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.15 )  //368
DX3DVERT( 0.2, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.15 )  //369
DX3DVERT( 0.3, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.15 )  //370
DX3DVERT( 0.4, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.15 )  //371
DX3DVERT( 0.5, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.15 )  //372
DX3DVERT( 0.6, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.15 )  //373
DX3DVERT( 0.7, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.15 )  //374
DX3DVERT( 0.8, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.15 )  //375
DX3DVERT( 0.9, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.15 )  //376
DX3DVERT( 1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.15 )  //377
DX3DVERT( -0.9, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.1 )  //378
DX3DVERT( -1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.1 )  //379
DX3DVERT( -0.8, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.1 )  //380
DX3DVERT( -0.7, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.1 )  //381
DX3DVERT( -0.6, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.1 )  //382
DX3DVERT( -0.5, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.1 )  //383
DX3DVERT( -0.4, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.1 )  //384
DX3DVERT( -0.3, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.1 )  //385
DX3DVERT( -0.2, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.1 )  //386
DX3DVERT( -0.1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.1 )  //387
DX3DVERT( 1.49012e-008, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.1 )  //388
DX3DVERT( 0.1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.1 )  //389
DX3DVERT( 0.2, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.1 )  //390
DX3DVERT( 0.3, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.1 )  //391
DX3DVERT( 0.4, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.1 )  //392
DX3DVERT( 0.5, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.1 )  //393
DX3DVERT( 0.6, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.1 )  //394
DX3DVERT( 0.7, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.1 )  //395
DX3DVERT( 0.8, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.1 )  //396
DX3DVERT( 0.9, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.1 )  //397
DX3DVERT( 1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.1 )  //398
DX3DVERT( -0.9, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0.05 )  //399
DX3DVERT( -1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0.05 )  //400
DX3DVERT( -0.8, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0.05 )  //401
DX3DVERT( -0.7, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0.05 )  //402
DX3DVERT( -0.6, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0.05 )  //403
DX3DVERT( -0.5, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0.05 )  //404
DX3DVERT( -0.4, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0.05 )  //405
DX3DVERT( -0.3, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0.05 )  //406
DX3DVERT( -0.2, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0.05 )  //407
DX3DVERT( -0.1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0.05 )  //408
DX3DVERT( 1.49012e-008, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0.05 )  //409
DX3DVERT( 0.1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0.05 )  //410
DX3DVERT( 0.2, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0.05 )  //411
DX3DVERT( 0.3, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0.05 )  //412
DX3DVERT( 0.4, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0.05 )  //413
DX3DVERT( 0.5, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0.05 )  //414
DX3DVERT( 0.6, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0.05 )  //415
DX3DVERT( 0.7, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0.05 )  //416
DX3DVERT( 0.8, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0.05 )  //417
DX3DVERT( 0.9, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0.05 )  //418
DX3DVERT( 1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0.05 )  //419
DX3DVERT( -0.9, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.05, 0 )  //420
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0, 0 )  //421
DX3DVERT( -0.8, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.1, 0 )  //422
DX3DVERT( -0.7, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.15, 0 )  //423
DX3DVERT( -0.6, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.2, 0 )  //424
DX3DVERT( -0.5, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.25, 0 )  //425
DX3DVERT( -0.4, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.3, 0 )  //426
DX3DVERT( -0.3, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.35, 0 )  //427
DX3DVERT( -0.2, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.4, 0 )  //428
DX3DVERT( -0.1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.45, 0 )  //429
DX3DVERT( 1.49012e-008, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.5, 0 )  //430
DX3DVERT( 0.1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.55, 0 )  //431
DX3DVERT( 0.2, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.6, 0 )  //432
DX3DVERT( 0.3, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.65, 0 )  //433
DX3DVERT( 0.4, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.7, 0 )  //434
DX3DVERT( 0.5, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.75, 0 )  //435
DX3DVERT( 0.6, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.8, 0 )  //436
DX3DVERT( 0.7, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.85, 0 )  //437
DX3DVERT( 0.8, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.9, 0 )  //438
DX3DVERT( 0.9, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 0.95, 0 )  //439
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVUV( 1, 0 )  //440
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_MESH___texa_source_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_MESH___texa_source_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VNUV, 441 )
DX3DVERTEX_END


#else
#define vertex_MESH___texa_source_0	NULL
#define vertexbuff_MESH___texa_source_0	NULL
#endif




#if ((PT_MESH___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_MESH___texa_source_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_MESH___texa_source_0 )
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
	38, 40, 39, // 38 116
	40, 41, 39, // 39 119
	3, 2, 43, // 40 122
	2, 42, 43, // 41 125
	2, 5, 42, // 42 128
	5, 44, 42, // 43 131
	5, 7, 44, // 44 134
	7, 45, 44, // 45 137
	7, 9, 45, // 46 140
	9, 46, 45, // 47 143
	9, 11, 46, // 48 146
	11, 47, 46, // 49 149
	11, 13, 47, // 50 152
	13, 48, 47, // 51 155
	13, 15, 48, // 52 158
	15, 49, 48, // 53 161
	15, 17, 49, // 54 164
	17, 50, 49, // 55 167
	17, 19, 50, // 56 170
	19, 51, 50, // 57 173
	19, 21, 51, // 58 176
	21, 52, 51, // 59 179
	21, 23, 52, // 60 182
	23, 53, 52, // 61 185
	23, 25, 53, // 62 188
	25, 54, 53, // 63 191
	25, 27, 54, // 64 194
	27, 55, 54, // 65 197
	27, 29, 55, // 66 200
	29, 56, 55, // 67 203
	29, 31, 56, // 68 206
	31, 57, 56, // 69 209
	31, 33, 57, // 70 212
	33, 58, 57, // 71 215
	33, 35, 58, // 72 218
	35, 59, 58, // 73 221
	35, 37, 59, // 74 224
	37, 60, 59, // 75 227
	37, 39, 60, // 76 230
	39, 61, 60, // 77 233
	39, 41, 61, // 78 236
	41, 62, 61, // 79 239
	43, 42, 64, // 80 242
	42, 63, 64, // 81 245
	42, 44, 63, // 82 248
	44, 65, 63, // 83 251
	44, 45, 65, // 84 254
	45, 66, 65, // 85 257
	45, 46, 66, // 86 260
	46, 67, 66, // 87 263
	46, 47, 67, // 88 266
	47, 68, 67, // 89 269
	47, 48, 68, // 90 272
	48, 69, 68, // 91 275
	48, 49, 69, // 92 278
	49, 70, 69, // 93 281
	49, 50, 70, // 94 284
	50, 71, 70, // 95 287
	50, 51, 71, // 96 290
	51, 72, 71, // 97 293
	51, 52, 72, // 98 296
	52, 73, 72, // 99 299
	52, 53, 73, // 100 302
	53, 74, 73, // 101 305
	53, 54, 74, // 102 308
	54, 75, 74, // 103 311
	54, 55, 75, // 104 314
	55, 76, 75, // 105 317
	55, 56, 76, // 106 320
	56, 77, 76, // 107 323
	56, 57, 77, // 108 326
	57, 78, 77, // 109 329
	57, 58, 78, // 110 332
	58, 79, 78, // 111 335
	58, 59, 79, // 112 338
	59, 80, 79, // 113 341
	59, 60, 80, // 114 344
	60, 81, 80, // 115 347
	60, 61, 81, // 116 350
	61, 82, 81, // 117 353
	61, 62, 82, // 118 356
	62, 83, 82, // 119 359
	64, 63, 85, // 120 362
	63, 84, 85, // 121 365
	63, 65, 84, // 122 368
	65, 86, 84, // 123 371
	65, 66, 86, // 124 374
	66, 87, 86, // 125 377
	66, 67, 87, // 126 380
	67, 88, 87, // 127 383
	67, 68, 88, // 128 386
	68, 89, 88, // 129 389
	68, 69, 89, // 130 392
	69, 90, 89, // 131 395
	69, 70, 90, // 132 398
	70, 91, 90, // 133 401
	70, 71, 91, // 134 404
	71, 92, 91, // 135 407
	71, 72, 92, // 136 410
	72, 93, 92, // 137 413
	72, 73, 93, // 138 416
	73, 94, 93, // 139 419
	73, 74, 94, // 140 422
	74, 95, 94, // 141 425
	74, 75, 95, // 142 428
	75, 96, 95, // 143 431
	75, 76, 96, // 144 434
	76, 97, 96, // 145 437
	76, 77, 97, // 146 440
	77, 98, 97, // 147 443
	77, 78, 98, // 148 446
	78, 99, 98, // 149 449
	78, 79, 99, // 150 452
	79, 100, 99, // 151 455
	79, 80, 100, // 152 458
	80, 101, 100, // 153 461
	80, 81, 101, // 154 464
	81, 102, 101, // 155 467
	81, 82, 102, // 156 470
	82, 103, 102, // 157 473
	82, 83, 103, // 158 476
	83, 104, 103, // 159 479
	85, 84, 106, // 160 482
	84, 105, 106, // 161 485
	84, 86, 105, // 162 488
	86, 107, 105, // 163 491
	86, 87, 107, // 164 494
	87, 108, 107, // 165 497
	87, 88, 108, // 166 500
	88, 109, 108, // 167 503
	88, 89, 109, // 168 506
	89, 110, 109, // 169 509
	89, 90, 110, // 170 512
	90, 111, 110, // 171 515
	90, 91, 111, // 172 518
	91, 112, 111, // 173 521
	91, 92, 112, // 174 524
	92, 113, 112, // 175 527
	92, 93, 113, // 176 530
	93, 114, 113, // 177 533
	93, 94, 114, // 178 536
	94, 115, 114, // 179 539
	94, 95, 115, // 180 542
	95, 116, 115, // 181 545
	95, 96, 116, // 182 548
	96, 117, 116, // 183 551
	96, 97, 117, // 184 554
	97, 118, 117, // 185 557
	97, 98, 118, // 186 560
	98, 119, 118, // 187 563
	98, 99, 119, // 188 566
	99, 120, 119, // 189 569
	99, 100, 120, // 190 572
	100, 121, 120, // 191 575
	100, 101, 121, // 192 578
	101, 122, 121, // 193 581
	101, 102, 122, // 194 584
	102, 123, 122, // 195 587
	102, 103, 123, // 196 590
	103, 124, 123, // 197 593
	103, 104, 124, // 198 596
	104, 125, 124, // 199 599
	106, 105, 127, // 200 602
	105, 126, 127, // 201 605
	105, 107, 126, // 202 608
	107, 128, 126, // 203 611
	107, 108, 128, // 204 614
	108, 129, 128, // 205 617
	108, 109, 129, // 206 620
	109, 130, 129, // 207 623
	109, 110, 130, // 208 626
	110, 131, 130, // 209 629
	110, 111, 131, // 210 632
	111, 132, 131, // 211 635
	111, 112, 132, // 212 638
	112, 133, 132, // 213 641
	112, 113, 133, // 214 644
	113, 134, 133, // 215 647
	113, 114, 134, // 216 650
	114, 135, 134, // 217 653
	114, 115, 135, // 218 656
	115, 136, 135, // 219 659
	115, 116, 136, // 220 662
	116, 137, 136, // 221 665
	116, 117, 137, // 222 668
	117, 138, 137, // 223 671
	117, 118, 138, // 224 674
	118, 139, 138, // 225 677
	118, 119, 139, // 226 680
	119, 140, 139, // 227 683
	119, 120, 140, // 228 686
	120, 141, 140, // 229 689
	120, 121, 141, // 230 692
	121, 142, 141, // 231 695
	121, 122, 142, // 232 698
	122, 143, 142, // 233 701
	122, 123, 143, // 234 704
	123, 144, 143, // 235 707
	123, 124, 144, // 236 710
	124, 145, 144, // 237 713
	124, 125, 145, // 238 716
	125, 146, 145, // 239 719
	127, 126, 148, // 240 722
	126, 147, 148, // 241 725
	126, 128, 147, // 242 728
	128, 149, 147, // 243 731
	128, 129, 149, // 244 734
	129, 150, 149, // 245 737
	129, 130, 150, // 246 740
	130, 151, 150, // 247 743
	130, 131, 151, // 248 746
	131, 152, 151, // 249 749
	131, 132, 152, // 250 752
	132, 153, 152, // 251 755
	132, 133, 153, // 252 758
	133, 154, 153, // 253 761
	133, 134, 154, // 254 764
	134, 155, 154, // 255 767
	134, 135, 155, // 256 770
	135, 156, 155, // 257 773
	135, 136, 156, // 258 776
	136, 157, 156, // 259 779
	136, 137, 157, // 260 782
	137, 158, 157, // 261 785
	137, 138, 158, // 262 788
	138, 159, 158, // 263 791
	138, 139, 159, // 264 794
	139, 160, 159, // 265 797
	139, 140, 160, // 266 800
	140, 161, 160, // 267 803
	140, 141, 161, // 268 806
	141, 162, 161, // 269 809
	141, 142, 162, // 270 812
	142, 163, 162, // 271 815
	142, 143, 163, // 272 818
	143, 164, 163, // 273 821
	143, 144, 164, // 274 824
	144, 165, 164, // 275 827
	144, 145, 165, // 276 830
	145, 166, 165, // 277 833
	145, 146, 166, // 278 836
	146, 167, 166, // 279 839
	148, 147, 169, // 280 842
	147, 168, 169, // 281 845
	147, 149, 168, // 282 848
	149, 170, 168, // 283 851
	149, 150, 170, // 284 854
	150, 171, 170, // 285 857
	150, 151, 171, // 286 860
	151, 172, 171, // 287 863
	151, 152, 172, // 288 866
	152, 173, 172, // 289 869
	152, 153, 173, // 290 872
	153, 174, 173, // 291 875
	153, 154, 174, // 292 878
	154, 175, 174, // 293 881
	154, 155, 175, // 294 884
	155, 176, 175, // 295 887
	155, 156, 176, // 296 890
	156, 177, 176, // 297 893
	156, 157, 177, // 298 896
	157, 178, 177, // 299 899
	157, 158, 178, // 300 902
	158, 179, 178, // 301 905
	158, 159, 179, // 302 908
	159, 180, 179, // 303 911
	159, 160, 180, // 304 914
	160, 181, 180, // 305 917
	160, 161, 181, // 306 920
	161, 182, 181, // 307 923
	161, 162, 182, // 308 926
	162, 183, 182, // 309 929
	162, 163, 183, // 310 932
	163, 184, 183, // 311 935
	163, 164, 184, // 312 938
	164, 185, 184, // 313 941
	164, 165, 185, // 314 944
	165, 186, 185, // 315 947
	165, 166, 186, // 316 950
	166, 187, 186, // 317 953
	166, 167, 187, // 318 956
	167, 188, 187, // 319 959
	169, 168, 190, // 320 962
	168, 189, 190, // 321 965
	168, 170, 189, // 322 968
	170, 191, 189, // 323 971
	170, 171, 191, // 324 974
	171, 192, 191, // 325 977
	171, 172, 192, // 326 980
	172, 193, 192, // 327 983
	172, 173, 193, // 328 986
	173, 194, 193, // 329 989
	173, 174, 194, // 330 992
	174, 195, 194, // 331 995
	174, 175, 195, // 332 998
	175, 196, 195, // 333 1001
	175, 176, 196, // 334 1004
	176, 197, 196, // 335 1007
	176, 177, 197, // 336 1010
	177, 198, 197, // 337 1013
	177, 178, 198, // 338 1016
	178, 199, 198, // 339 1019
	178, 179, 199, // 340 1022
	179, 200, 199, // 341 1025
	179, 180, 200, // 342 1028
	180, 201, 200, // 343 1031
	180, 181, 201, // 344 1034
	181, 202, 201, // 345 1037
	181, 182, 202, // 346 1040
	182, 203, 202, // 347 1043
	182, 183, 203, // 348 1046
	183, 204, 203, // 349 1049
	183, 184, 204, // 350 1052
	184, 205, 204, // 351 1055
	184, 185, 205, // 352 1058
	185, 206, 205, // 353 1061
	185, 186, 206, // 354 1064
	186, 207, 206, // 355 1067
	186, 187, 207, // 356 1070
	187, 208, 207, // 357 1073
	187, 188, 208, // 358 1076
	188, 209, 208, // 359 1079
	190, 189, 211, // 360 1082
	189, 210, 211, // 361 1085
	189, 191, 210, // 362 1088
	191, 212, 210, // 363 1091
	191, 192, 212, // 364 1094
	192, 213, 212, // 365 1097
	192, 193, 213, // 366 1100
	193, 214, 213, // 367 1103
	193, 194, 214, // 368 1106
	194, 215, 214, // 369 1109
	194, 195, 215, // 370 1112
	195, 216, 215, // 371 1115
	195, 196, 216, // 372 1118
	196, 217, 216, // 373 1121
	196, 197, 217, // 374 1124
	197, 218, 217, // 375 1127
	197, 198, 218, // 376 1130
	198, 219, 218, // 377 1133
	198, 199, 219, // 378 1136
	199, 220, 219, // 379 1139
	199, 200, 220, // 380 1142
	200, 221, 220, // 381 1145
	200, 201, 221, // 382 1148
	201, 222, 221, // 383 1151
	201, 202, 222, // 384 1154
	202, 223, 222, // 385 1157
	202, 203, 223, // 386 1160
	203, 224, 223, // 387 1163
	203, 204, 224, // 388 1166
	204, 225, 224, // 389 1169
	204, 205, 225, // 390 1172
	205, 226, 225, // 391 1175
	205, 206, 226, // 392 1178
	206, 227, 226, // 393 1181
	206, 207, 227, // 394 1184
	207, 228, 227, // 395 1187
	207, 208, 228, // 396 1190
	208, 229, 228, // 397 1193
	208, 209, 229, // 398 1196
	209, 230, 229, // 399 1199
	211, 210, 232, // 400 1202
	210, 231, 232, // 401 1205
	210, 212, 231, // 402 1208
	212, 233, 231, // 403 1211
	212, 213, 233, // 404 1214
	213, 234, 233, // 405 1217
	213, 214, 234, // 406 1220
	214, 235, 234, // 407 1223
	214, 215, 235, // 408 1226
	215, 236, 235, // 409 1229
	215, 216, 236, // 410 1232
	216, 237, 236, // 411 1235
	216, 217, 237, // 412 1238
	217, 238, 237, // 413 1241
	217, 218, 238, // 414 1244
	218, 239, 238, // 415 1247
	218, 219, 239, // 416 1250
	219, 240, 239, // 417 1253
	219, 220, 240, // 418 1256
	220, 241, 240, // 419 1259
	220, 221, 241, // 420 1262
	221, 242, 241, // 421 1265
	221, 222, 242, // 422 1268
	222, 243, 242, // 423 1271
	222, 223, 243, // 424 1274
	223, 244, 243, // 425 1277
	223, 224, 244, // 426 1280
	224, 245, 244, // 427 1283
	224, 225, 245, // 428 1286
	225, 246, 245, // 429 1289
	225, 226, 246, // 430 1292
	226, 247, 246, // 431 1295
	226, 227, 247, // 432 1298
	227, 248, 247, // 433 1301
	227, 228, 248, // 434 1304
	228, 249, 248, // 435 1307
	228, 229, 249, // 436 1310
	229, 250, 249, // 437 1313
	229, 230, 250, // 438 1316
	230, 251, 250, // 439 1319
	232, 231, 253, // 440 1322
	231, 252, 253, // 441 1325
	231, 233, 252, // 442 1328
	233, 254, 252, // 443 1331
	233, 234, 254, // 444 1334
	234, 255, 254, // 445 1337
	234, 235, 255, // 446 1340
	235, 256, 255, // 447 1343
	235, 236, 256, // 448 1346
	236, 257, 256, // 449 1349
	236, 237, 257, // 450 1352
	237, 258, 257, // 451 1355
	237, 238, 258, // 452 1358
	238, 259, 258, // 453 1361
	238, 239, 259, // 454 1364
	239, 260, 259, // 455 1367
	239, 240, 260, // 456 1370
	240, 261, 260, // 457 1373
	240, 241, 261, // 458 1376
	241, 262, 261, // 459 1379
	241, 242, 262, // 460 1382
	242, 263, 262, // 461 1385
	242, 243, 263, // 462 1388
	243, 264, 263, // 463 1391
	243, 244, 264, // 464 1394
	244, 265, 264, // 465 1397
	244, 245, 265, // 466 1400
	245, 266, 265, // 467 1403
	245, 246, 266, // 468 1406
	246, 267, 266, // 469 1409
	246, 247, 267, // 470 1412
	247, 268, 267, // 471 1415
	247, 248, 268, // 472 1418
	248, 269, 268, // 473 1421
	248, 249, 269, // 474 1424
	249, 270, 269, // 475 1427
	249, 250, 270, // 476 1430
	250, 271, 270, // 477 1433
	250, 251, 271, // 478 1436
	251, 272, 271, // 479 1439
	253, 252, 274, // 480 1442
	252, 273, 274, // 481 1445
	252, 254, 273, // 482 1448
	254, 275, 273, // 483 1451
	254, 255, 275, // 484 1454
	255, 276, 275, // 485 1457
	255, 256, 276, // 486 1460
	256, 277, 276, // 487 1463
	256, 257, 277, // 488 1466
	257, 278, 277, // 489 1469
	257, 258, 278, // 490 1472
	258, 279, 278, // 491 1475
	258, 259, 279, // 492 1478
	259, 280, 279, // 493 1481
	259, 260, 280, // 494 1484
	260, 281, 280, // 495 1487
	260, 261, 281, // 496 1490
	261, 282, 281, // 497 1493
	261, 262, 282, // 498 1496
	262, 283, 282, // 499 1499
	262, 263, 283, // 500 1502
	263, 284, 283, // 501 1505
	263, 264, 284, // 502 1508
	264, 285, 284, // 503 1511
	264, 265, 285, // 504 1514
	265, 286, 285, // 505 1517
	265, 266, 286, // 506 1520
	266, 287, 286, // 507 1523
	266, 267, 287, // 508 1526
	267, 288, 287, // 509 1529
	267, 268, 288, // 510 1532
	268, 289, 288, // 511 1535
	268, 269, 289, // 512 1538
	269, 290, 289, // 513 1541
	269, 270, 290, // 514 1544
	270, 291, 290, // 515 1547
	270, 271, 291, // 516 1550
	271, 292, 291, // 517 1553
	271, 272, 292, // 518 1556
	272, 293, 292, // 519 1559
	274, 273, 295, // 520 1562
	273, 294, 295, // 521 1565
	273, 275, 294, // 522 1568
	275, 296, 294, // 523 1571
	275, 276, 296, // 524 1574
	276, 297, 296, // 525 1577
	276, 277, 297, // 526 1580
	277, 298, 297, // 527 1583
	277, 278, 298, // 528 1586
	278, 299, 298, // 529 1589
	278, 279, 299, // 530 1592
	279, 300, 299, // 531 1595
	279, 280, 300, // 532 1598
	280, 301, 300, // 533 1601
	280, 281, 301, // 534 1604
	281, 302, 301, // 535 1607
	281, 282, 302, // 536 1610
	282, 303, 302, // 537 1613
	282, 283, 303, // 538 1616
	283, 304, 303, // 539 1619
	283, 284, 304, // 540 1622
	284, 305, 304, // 541 1625
	284, 285, 305, // 542 1628
	285, 306, 305, // 543 1631
	285, 286, 306, // 544 1634
	286, 307, 306, // 545 1637
	286, 287, 307, // 546 1640
	287, 308, 307, // 547 1643
	287, 288, 308, // 548 1646
	288, 309, 308, // 549 1649
	288, 289, 309, // 550 1652
	289, 310, 309, // 551 1655
	289, 290, 310, // 552 1658
	290, 311, 310, // 553 1661
	290, 291, 311, // 554 1664
	291, 312, 311, // 555 1667
	291, 292, 312, // 556 1670
	292, 313, 312, // 557 1673
	292, 293, 313, // 558 1676
	293, 314, 313, // 559 1679
	295, 294, 316, // 560 1682
	294, 315, 316, // 561 1685
	294, 296, 315, // 562 1688
	296, 317, 315, // 563 1691
	296, 297, 317, // 564 1694
	297, 318, 317, // 565 1697
	297, 298, 318, // 566 1700
	298, 319, 318, // 567 1703
	298, 299, 319, // 568 1706
	299, 320, 319, // 569 1709
	299, 300, 320, // 570 1712
	300, 321, 320, // 571 1715
	300, 301, 321, // 572 1718
	301, 322, 321, // 573 1721
	301, 302, 322, // 574 1724
	302, 323, 322, // 575 1727
	302, 303, 323, // 576 1730
	303, 324, 323, // 577 1733
	303, 304, 324, // 578 1736
	304, 325, 324, // 579 1739
	304, 305, 325, // 580 1742
	305, 326, 325, // 581 1745
	305, 306, 326, // 582 1748
	306, 327, 326, // 583 1751
	306, 307, 327, // 584 1754
	307, 328, 327, // 585 1757
	307, 308, 328, // 586 1760
	308, 329, 328, // 587 1763
	308, 309, 329, // 588 1766
	309, 330, 329, // 589 1769
	309, 310, 330, // 590 1772
	310, 331, 330, // 591 1775
	310, 311, 331, // 592 1778
	311, 332, 331, // 593 1781
	311, 312, 332, // 594 1784
	312, 333, 332, // 595 1787
	312, 313, 333, // 596 1790
	313, 334, 333, // 597 1793
	313, 314, 334, // 598 1796
	314, 335, 334, // 599 1799
	316, 315, 337, // 600 1802
	315, 336, 337, // 601 1805
	315, 317, 336, // 602 1808
	317, 338, 336, // 603 1811
	317, 318, 338, // 604 1814
	318, 339, 338, // 605 1817
	318, 319, 339, // 606 1820
	319, 340, 339, // 607 1823
	319, 320, 340, // 608 1826
	320, 341, 340, // 609 1829
	320, 321, 341, // 610 1832
	321, 342, 341, // 611 1835
	321, 322, 342, // 612 1838
	322, 343, 342, // 613 1841
	322, 323, 343, // 614 1844
	323, 344, 343, // 615 1847
	323, 324, 344, // 616 1850
	324, 345, 344, // 617 1853
	324, 325, 345, // 618 1856
	325, 346, 345, // 619 1859
	325, 326, 346, // 620 1862
	326, 347, 346, // 621 1865
	326, 327, 347, // 622 1868
	327, 348, 347, // 623 1871
	327, 328, 348, // 624 1874
	328, 349, 348, // 625 1877
	328, 329, 349, // 626 1880
	329, 350, 349, // 627 1883
	329, 330, 350, // 628 1886
	330, 351, 350, // 629 1889
	330, 331, 351, // 630 1892
	331, 352, 351, // 631 1895
	331, 332, 352, // 632 1898
	332, 353, 352, // 633 1901
	332, 333, 353, // 634 1904
	333, 354, 353, // 635 1907
	333, 334, 354, // 636 1910
	334, 355, 354, // 637 1913
	334, 335, 355, // 638 1916
	335, 356, 355, // 639 1919
	337, 336, 358, // 640 1922
	336, 357, 358, // 641 1925
	336, 338, 357, // 642 1928
	338, 359, 357, // 643 1931
	338, 339, 359, // 644 1934
	339, 360, 359, // 645 1937
	339, 340, 360, // 646 1940
	340, 361, 360, // 647 1943
	340, 341, 361, // 648 1946
	341, 362, 361, // 649 1949
	341, 342, 362, // 650 1952
	342, 363, 362, // 651 1955
	342, 343, 363, // 652 1958
	343, 364, 363, // 653 1961
	343, 344, 364, // 654 1964
	344, 365, 364, // 655 1967
	344, 345, 365, // 656 1970
	345, 366, 365, // 657 1973
	345, 346, 366, // 658 1976
	346, 367, 366, // 659 1979
	346, 347, 367, // 660 1982
	347, 368, 367, // 661 1985
	347, 348, 368, // 662 1988
	348, 369, 368, // 663 1991
	348, 349, 369, // 664 1994
	349, 370, 369, // 665 1997
	349, 350, 370, // 666 2000
	350, 371, 370, // 667 2003
	350, 351, 371, // 668 2006
	351, 372, 371, // 669 2009
	351, 352, 372, // 670 2012
	352, 373, 372, // 671 2015
	352, 353, 373, // 672 2018
	353, 374, 373, // 673 2021
	353, 354, 374, // 674 2024
	354, 375, 374, // 675 2027
	354, 355, 375, // 676 2030
	355, 376, 375, // 677 2033
	355, 356, 376, // 678 2036
	356, 377, 376, // 679 2039
	358, 357, 379, // 680 2042
	357, 378, 379, // 681 2045
	357, 359, 378, // 682 2048
	359, 380, 378, // 683 2051
	359, 360, 380, // 684 2054
	360, 381, 380, // 685 2057
	360, 361, 381, // 686 2060
	361, 382, 381, // 687 2063
	361, 362, 382, // 688 2066
	362, 383, 382, // 689 2069
	362, 363, 383, // 690 2072
	363, 384, 383, // 691 2075
	363, 364, 384, // 692 2078
	364, 385, 384, // 693 2081
	364, 365, 385, // 694 2084
	365, 386, 385, // 695 2087
	365, 366, 386, // 696 2090
	366, 387, 386, // 697 2093
	366, 367, 387, // 698 2096
	367, 388, 387, // 699 2099
	367, 368, 388, // 700 2102
	368, 389, 388, // 701 2105
	368, 369, 389, // 702 2108
	369, 390, 389, // 703 2111
	369, 370, 390, // 704 2114
	370, 391, 390, // 705 2117
	370, 371, 391, // 706 2120
	371, 392, 391, // 707 2123
	371, 372, 392, // 708 2126
	372, 393, 392, // 709 2129
	372, 373, 393, // 710 2132
	373, 394, 393, // 711 2135
	373, 374, 394, // 712 2138
	374, 395, 394, // 713 2141
	374, 375, 395, // 714 2144
	375, 396, 395, // 715 2147
	375, 376, 396, // 716 2150
	376, 397, 396, // 717 2153
	376, 377, 397, // 718 2156
	377, 398, 397, // 719 2159
	379, 378, 400, // 720 2162
	378, 399, 400, // 721 2165
	378, 380, 399, // 722 2168
	380, 401, 399, // 723 2171
	380, 381, 401, // 724 2174
	381, 402, 401, // 725 2177
	381, 382, 402, // 726 2180
	382, 403, 402, // 727 2183
	382, 383, 403, // 728 2186
	383, 404, 403, // 729 2189
	383, 384, 404, // 730 2192
	384, 405, 404, // 731 2195
	384, 385, 405, // 732 2198
	385, 406, 405, // 733 2201
	385, 386, 406, // 734 2204
	386, 407, 406, // 735 2207
	386, 387, 407, // 736 2210
	387, 408, 407, // 737 2213
	387, 388, 408, // 738 2216
	388, 409, 408, // 739 2219
	388, 389, 409, // 740 2222
	389, 410, 409, // 741 2225
	389, 390, 410, // 742 2228
	390, 411, 410, // 743 2231
	390, 391, 411, // 744 2234
	391, 412, 411, // 745 2237
	391, 392, 412, // 746 2240
	392, 413, 412, // 747 2243
	392, 393, 413, // 748 2246
	393, 414, 413, // 749 2249
	393, 394, 414, // 750 2252
	394, 415, 414, // 751 2255
	394, 395, 415, // 752 2258
	395, 416, 415, // 753 2261
	395, 396, 416, // 754 2264
	396, 417, 416, // 755 2267
	396, 397, 417, // 756 2270
	397, 418, 417, // 757 2273
	397, 398, 418, // 758 2276
	398, 419, 418, // 759 2279
	400, 399, 421, // 760 2282
	399, 420, 421, // 761 2285
	399, 401, 420, // 762 2288
	401, 422, 420, // 763 2291
	401, 402, 422, // 764 2294
	402, 423, 422, // 765 2297
	402, 403, 423, // 766 2300
	403, 424, 423, // 767 2303
	403, 404, 424, // 768 2306
	404, 425, 424, // 769 2309
	404, 405, 425, // 770 2312
	405, 426, 425, // 771 2315
	405, 406, 426, // 772 2318
	406, 427, 426, // 773 2321
	406, 407, 427, // 774 2324
	407, 428, 427, // 775 2327
	407, 408, 428, // 776 2330
	408, 429, 428, // 777 2333
	408, 409, 429, // 778 2336
	409, 430, 429, // 779 2339
	409, 410, 430, // 780 2342
	410, 431, 430, // 781 2345
	410, 411, 431, // 782 2348
	411, 432, 431, // 783 2351
	411, 412, 432, // 784 2354
	412, 433, 432, // 785 2357
	412, 413, 433, // 786 2360
	413, 434, 433, // 787 2363
	413, 414, 434, // 788 2366
	414, 435, 434, // 789 2369
	414, 415, 435, // 790 2372
	415, 436, 435, // 791 2375
	415, 416, 436, // 792 2378
	416, 437, 436, // 793 2381
	416, 417, 437, // 794 2384
	417, 438, 437, // 795 2387
	417, 418, 438, // 796 2390
	418, 439, 438, // 797 2393
	418, 419, 439, // 798 2396
	419, 440, 439, // 799 2399
DX3DINDEX_END
#endif

#else
#define index_MESH___texa_source_0	NULL
#endif




#if ((PT_MESH___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_MESH___texa_source_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_MESH___texa_source_0_INDEXSTRIP 	NULL
#endif




#if ((PT_MESH___texa_source_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_MESH___texa_source_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_MESH___texa_source_0_VERTEXSTRIP 	NULL
#define vertexbuff_MESH___texa_source_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_MESH__ )
DX3DMODEL_START( model_MESH___texa_source_0 )
DX3DMODEL_VERTEX( vertex_MESH___texa_source_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_MESH___texa_source_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 2400 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_texa_source )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_MESH__, 1954677073 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_MESH__ )
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
	2.1, 0, -0, 
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
	2.1, 0, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_SOURCE__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_DEFAULT__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	-2.1, 2.1, 0, 1
#endif

DX3DMATERIAL_START( material_default_mate )
DX3DMATERIAL_DIFF( 1, 0.4, 0.4, 0.4 )
DX3DMATERIAL_SPEC( 0, 1, 1, 1 )
DX3DMATERIAL_TEX( NULL )
DX3DMATERIAL_SHADER( DEFAULT )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_DEFAULT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_DEFAULT___default_mate_0 == PT_TRILIST ) || ((PT_DEFAULT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_DEFAULT___default_mate_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VN, vertexbuff_DEFAULT___default_mate_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_DEFAULT___default_mate_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_DEFAULT___default_mate_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 4 )
DX3DVERTEX_END


#else
#define vertex_DEFAULT___default_mate_0	NULL
#define vertexbuff_DEFAULT___default_mate_0	NULL
#endif




#if ((PT_DEFAULT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_DEFAULT___default_mate_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_DEFAULT___default_mate_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
DX3DINDEX_END
#endif

#else
#define index_DEFAULT___default_mate_0	NULL
#endif




#if ((PT_DEFAULT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_DEFAULT___default_mate_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_DEFAULT___default_mate_0_INDEXSTRIP 	NULL
#endif




#if ((PT_DEFAULT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_DEFAULT___default_mate_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_DEFAULT___default_mate_0_VERTEXSTRIP 	NULL
#define vertexbuff_DEFAULT___default_mate_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_DEFAULT__ )
DX3DMODEL_START( model_DEFAULT___default_mate_0 )
DX3DMODEL_VERTEX( vertex_DEFAULT___default_mate_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_DEFAULT___default_mate_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 6 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_default_mate )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_DEFAULT__, 3370938905 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_DEFAULT__ )
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
	-2.1, 2.1, -0, 
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
	-2.1, 2.1, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_MESH__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_DEFAULT_MESH__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	2.1, 2.1, 0, 1
#endif



#if ((PT_DEFAULT_MESH___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_DEFAULT_MESH___default_mate_0 == PT_TRILIST ) || ((PT_DEFAULT_MESH___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_DEFAULT_MESH___default_mate_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VN, vertexbuff_DEFAULT_MESH___default_mate_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( -0.9, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( -0.9, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.8, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( -0.8, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( -0.7, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( -0.7, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( -0.6, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( -0.6, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( -0.5, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( -0.5, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( -0.4, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( -0.4, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( -0.3, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( -0.3, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( -0.2, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( -0.2, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( -0.1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( -0.1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.49012e-008, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.49012e-008, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 0.1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 0.2, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.2, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.3, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.3, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.4, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.4, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.5, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 0.5, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 0.6, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 0.6, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 0.7, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 0.7, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 0.8, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 0.8, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 0.9, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 0.9, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( -0.9, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( -1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( -0.8, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( -0.7, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( -0.6, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( -0.5, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( -0.4, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( -0.3, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( -0.2, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( -0.1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 1.49012e-008, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 0.1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 0.2, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 0.3, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 0.4, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 0.5, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 0.6, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 0.7, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 0.8, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 0.9, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( -0.9, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( -1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( -0.8, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( -0.7, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( -0.6, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( -0.5, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( -0.4, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( -0.3, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT( -0.2, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //71
DX3DVERT( -0.1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //72
DX3DVERT( 1.49012e-008, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //73
DX3DVERT( 0.1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //74
DX3DVERT( 0.2, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //75
DX3DVERT( 0.3, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //76
DX3DVERT( 0.4, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //77
DX3DVERT( 0.5, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //78
DX3DVERT( 0.6, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //79
DX3DVERT( 0.7, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //80
DX3DVERT( 0.8, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //81
DX3DVERT( 0.9, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //82
DX3DVERT( 1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //83
DX3DVERT( -0.9, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //84
DX3DVERT( -1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //85
DX3DVERT( -0.8, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //86
DX3DVERT( -0.7, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //87
DX3DVERT( -0.6, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //88
DX3DVERT( -0.5, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //89
DX3DVERT( -0.4, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //90
DX3DVERT( -0.3, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //91
DX3DVERT( -0.2, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //92
DX3DVERT( -0.1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //93
DX3DVERT( 1.49012e-008, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //94
DX3DVERT( 0.1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //95
DX3DVERT( 0.2, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //96
DX3DVERT( 0.3, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //97
DX3DVERT( 0.4, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //98
DX3DVERT( 0.5, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //99
DX3DVERT( 0.6, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //100
DX3DVERT( 0.7, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //101
DX3DVERT( 0.8, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //102
DX3DVERT( 0.9, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //103
DX3DVERT( 1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //104
DX3DVERT( -0.9, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //105
DX3DVERT( -1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //106
DX3DVERT( -0.8, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //107
DX3DVERT( -0.7, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //108
DX3DVERT( -0.6, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //109
DX3DVERT( -0.5, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //110
DX3DVERT( -0.4, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //111
DX3DVERT( -0.3, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //112
DX3DVERT( -0.2, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //113
DX3DVERT( -0.1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //114
DX3DVERT( 1.49012e-008, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //115
DX3DVERT( 0.1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //116
DX3DVERT( 0.2, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //117
DX3DVERT( 0.3, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //118
DX3DVERT( 0.4, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //119
DX3DVERT( 0.5, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //120
DX3DVERT( 0.6, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //121
DX3DVERT( 0.7, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //122
DX3DVERT( 0.8, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //123
DX3DVERT( 0.9, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //124
DX3DVERT( 1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //125
DX3DVERT( -0.9, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //126
DX3DVERT( -1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //127
DX3DVERT( -0.8, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //128
DX3DVERT( -0.7, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //129
DX3DVERT( -0.6, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //130
DX3DVERT( -0.5, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //131
DX3DVERT( -0.4, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //132
DX3DVERT( -0.3, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //133
DX3DVERT( -0.2, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //134
DX3DVERT( -0.1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //135
DX3DVERT( 1.49012e-008, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //136
DX3DVERT( 0.1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //137
DX3DVERT( 0.2, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //138
DX3DVERT( 0.3, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //139
DX3DVERT( 0.4, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //140
DX3DVERT( 0.5, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //141
DX3DVERT( 0.6, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //142
DX3DVERT( 0.7, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //143
DX3DVERT( 0.8, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //144
DX3DVERT( 0.9, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //145
DX3DVERT( 1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //146
DX3DVERT( -0.9, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //147
DX3DVERT( -1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //148
DX3DVERT( -0.8, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //149
DX3DVERT( -0.7, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //150
DX3DVERT( -0.6, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //151
DX3DVERT( -0.5, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //152
DX3DVERT( -0.4, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //153
DX3DVERT( -0.3, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //154
DX3DVERT( -0.2, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //155
DX3DVERT( -0.1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //156
DX3DVERT( 1.49012e-008, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //157
DX3DVERT( 0.1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //158
DX3DVERT( 0.2, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //159
DX3DVERT( 0.3, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //160
DX3DVERT( 0.4, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //161
DX3DVERT( 0.5, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //162
DX3DVERT( 0.6, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //163
DX3DVERT( 0.7, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //164
DX3DVERT( 0.8, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //165
DX3DVERT( 0.9, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //166
DX3DVERT( 1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //167
DX3DVERT( -0.9, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //168
DX3DVERT( -1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //169
DX3DVERT( -0.8, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //170
DX3DVERT( -0.7, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //171
DX3DVERT( -0.6, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //172
DX3DVERT( -0.5, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //173
DX3DVERT( -0.4, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //174
DX3DVERT( -0.3, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //175
DX3DVERT( -0.2, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //176
DX3DVERT( -0.1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //177
DX3DVERT( 1.49012e-008, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //178
DX3DVERT( 0.1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //179
DX3DVERT( 0.2, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //180
DX3DVERT( 0.3, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //181
DX3DVERT( 0.4, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //182
DX3DVERT( 0.5, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //183
DX3DVERT( 0.6, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //184
DX3DVERT( 0.7, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //185
DX3DVERT( 0.8, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //186
DX3DVERT( 0.9, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //187
DX3DVERT( 1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //188
DX3DVERT( -0.9, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //189
DX3DVERT( -1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //190
DX3DVERT( -0.8, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //191
DX3DVERT( -0.7, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //192
DX3DVERT( -0.6, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //193
DX3DVERT( -0.5, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //194
DX3DVERT( -0.4, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //195
DX3DVERT( -0.3, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //196
DX3DVERT( -0.2, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //197
DX3DVERT( -0.1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //198
DX3DVERT( 1.49012e-008, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //199
DX3DVERT( 0.1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //200
DX3DVERT( 0.2, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //201
DX3DVERT( 0.3, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //202
DX3DVERT( 0.4, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //203
DX3DVERT( 0.5, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //204
DX3DVERT( 0.6, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //205
DX3DVERT( 0.7, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //206
DX3DVERT( 0.8, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //207
DX3DVERT( 0.9, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //208
DX3DVERT( 1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //209
DX3DVERT( -0.9, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //210
DX3DVERT( -1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //211
DX3DVERT( -0.8, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //212
DX3DVERT( -0.7, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //213
DX3DVERT( -0.6, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //214
DX3DVERT( -0.5, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //215
DX3DVERT( -0.4, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //216
DX3DVERT( -0.3, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //217
DX3DVERT( -0.2, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //218
DX3DVERT( -0.1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //219
DX3DVERT( 1.49012e-008, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //220
DX3DVERT( 0.1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //221
DX3DVERT( 0.2, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //222
DX3DVERT( 0.3, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //223
DX3DVERT( 0.4, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //224
DX3DVERT( 0.5, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //225
DX3DVERT( 0.6, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //226
DX3DVERT( 0.7, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //227
DX3DVERT( 0.8, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //228
DX3DVERT( 0.9, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //229
DX3DVERT( 1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //230
DX3DVERT( -0.9, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //231
DX3DVERT( -1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //232
DX3DVERT( -0.8, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //233
DX3DVERT( -0.7, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //234
DX3DVERT( -0.6, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //235
DX3DVERT( -0.5, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //236
DX3DVERT( -0.4, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //237
DX3DVERT( -0.3, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //238
DX3DVERT( -0.2, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //239
DX3DVERT( -0.1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //240
DX3DVERT( 1.49012e-008, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //241
DX3DVERT( 0.1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //242
DX3DVERT( 0.2, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //243
DX3DVERT( 0.3, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //244
DX3DVERT( 0.4, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //245
DX3DVERT( 0.5, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //246
DX3DVERT( 0.6, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //247
DX3DVERT( 0.7, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //248
DX3DVERT( 0.8, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //249
DX3DVERT( 0.9, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //250
DX3DVERT( 1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //251
DX3DVERT( -0.9, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //252
DX3DVERT( -1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //253
DX3DVERT( -0.8, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //254
DX3DVERT( -0.7, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //255
DX3DVERT( -0.6, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //256
DX3DVERT( -0.5, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //257
DX3DVERT( -0.4, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //258
DX3DVERT( -0.3, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //259
DX3DVERT( -0.2, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //260
DX3DVERT( -0.1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //261
DX3DVERT( 1.49012e-008, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //262
DX3DVERT( 0.1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //263
DX3DVERT( 0.2, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //264
DX3DVERT( 0.3, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //265
DX3DVERT( 0.4, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //266
DX3DVERT( 0.5, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //267
DX3DVERT( 0.6, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //268
DX3DVERT( 0.7, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //269
DX3DVERT( 0.8, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //270
DX3DVERT( 0.9, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //271
DX3DVERT( 1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //272
DX3DVERT( -0.9, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //273
DX3DVERT( -1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //274
DX3DVERT( -0.8, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //275
DX3DVERT( -0.7, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //276
DX3DVERT( -0.6, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //277
DX3DVERT( -0.5, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //278
DX3DVERT( -0.4, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //279
DX3DVERT( -0.3, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //280
DX3DVERT( -0.2, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //281
DX3DVERT( -0.1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //282
DX3DVERT( 1.49012e-008, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //283
DX3DVERT( 0.1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //284
DX3DVERT( 0.2, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //285
DX3DVERT( 0.3, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //286
DX3DVERT( 0.4, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //287
DX3DVERT( 0.5, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //288
DX3DVERT( 0.6, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //289
DX3DVERT( 0.7, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //290
DX3DVERT( 0.8, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //291
DX3DVERT( 0.9, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //292
DX3DVERT( 1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //293
DX3DVERT( -0.9, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //294
DX3DVERT( -1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //295
DX3DVERT( -0.8, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //296
DX3DVERT( -0.7, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //297
DX3DVERT( -0.6, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //298
DX3DVERT( -0.5, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //299
DX3DVERT( -0.4, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //300
DX3DVERT( -0.3, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //301
DX3DVERT( -0.2, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //302
DX3DVERT( -0.1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //303
DX3DVERT( 1.49012e-008, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //304
DX3DVERT( 0.1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //305
DX3DVERT( 0.2, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //306
DX3DVERT( 0.3, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //307
DX3DVERT( 0.4, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //308
DX3DVERT( 0.5, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //309
DX3DVERT( 0.6, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //310
DX3DVERT( 0.7, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //311
DX3DVERT( 0.8, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //312
DX3DVERT( 0.9, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //313
DX3DVERT( 1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //314
DX3DVERT( -0.9, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //315
DX3DVERT( -1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //316
DX3DVERT( -0.8, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //317
DX3DVERT( -0.7, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //318
DX3DVERT( -0.6, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //319
DX3DVERT( -0.5, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //320
DX3DVERT( -0.4, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //321
DX3DVERT( -0.3, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //322
DX3DVERT( -0.2, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //323
DX3DVERT( -0.1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //324
DX3DVERT( 1.49012e-008, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //325
DX3DVERT( 0.1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //326
DX3DVERT( 0.2, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //327
DX3DVERT( 0.3, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //328
DX3DVERT( 0.4, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //329
DX3DVERT( 0.5, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //330
DX3DVERT( 0.6, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //331
DX3DVERT( 0.7, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //332
DX3DVERT( 0.8, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //333
DX3DVERT( 0.9, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //334
DX3DVERT( 1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //335
DX3DVERT( -0.9, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //336
DX3DVERT( -1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //337
DX3DVERT( -0.8, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //338
DX3DVERT( -0.7, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //339
DX3DVERT( -0.6, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //340
DX3DVERT( -0.5, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //341
DX3DVERT( -0.4, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //342
DX3DVERT( -0.3, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //343
DX3DVERT( -0.2, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //344
DX3DVERT( -0.1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //345
DX3DVERT( 1.49012e-008, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //346
DX3DVERT( 0.1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //347
DX3DVERT( 0.2, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //348
DX3DVERT( 0.3, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //349
DX3DVERT( 0.4, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //350
DX3DVERT( 0.5, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //351
DX3DVERT( 0.6, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //352
DX3DVERT( 0.7, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //353
DX3DVERT( 0.8, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //354
DX3DVERT( 0.9, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //355
DX3DVERT( 1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //356
DX3DVERT( -0.9, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //357
DX3DVERT( -1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //358
DX3DVERT( -0.8, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //359
DX3DVERT( -0.7, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //360
DX3DVERT( -0.6, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //361
DX3DVERT( -0.5, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //362
DX3DVERT( -0.4, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //363
DX3DVERT( -0.3, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //364
DX3DVERT( -0.2, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //365
DX3DVERT( -0.1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //366
DX3DVERT( 1.49012e-008, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //367
DX3DVERT( 0.1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //368
DX3DVERT( 0.2, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //369
DX3DVERT( 0.3, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //370
DX3DVERT( 0.4, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //371
DX3DVERT( 0.5, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //372
DX3DVERT( 0.6, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //373
DX3DVERT( 0.7, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //374
DX3DVERT( 0.8, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //375
DX3DVERT( 0.9, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //376
DX3DVERT( 1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //377
DX3DVERT( -0.9, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //378
DX3DVERT( -1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //379
DX3DVERT( -0.8, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //380
DX3DVERT( -0.7, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //381
DX3DVERT( -0.6, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //382
DX3DVERT( -0.5, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //383
DX3DVERT( -0.4, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //384
DX3DVERT( -0.3, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //385
DX3DVERT( -0.2, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //386
DX3DVERT( -0.1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //387
DX3DVERT( 1.49012e-008, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //388
DX3DVERT( 0.1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //389
DX3DVERT( 0.2, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //390
DX3DVERT( 0.3, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //391
DX3DVERT( 0.4, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //392
DX3DVERT( 0.5, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //393
DX3DVERT( 0.6, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //394
DX3DVERT( 0.7, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //395
DX3DVERT( 0.8, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //396
DX3DVERT( 0.9, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //397
DX3DVERT( 1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //398
DX3DVERT( -0.9, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //399
DX3DVERT( -1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //400
DX3DVERT( -0.8, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //401
DX3DVERT( -0.7, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //402
DX3DVERT( -0.6, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //403
DX3DVERT( -0.5, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //404
DX3DVERT( -0.4, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //405
DX3DVERT( -0.3, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //406
DX3DVERT( -0.2, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //407
DX3DVERT( -0.1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //408
DX3DVERT( 1.49012e-008, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //409
DX3DVERT( 0.1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //410
DX3DVERT( 0.2, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //411
DX3DVERT( 0.3, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //412
DX3DVERT( 0.4, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //413
DX3DVERT( 0.5, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //414
DX3DVERT( 0.6, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //415
DX3DVERT( 0.7, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //416
DX3DVERT( 0.8, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //417
DX3DVERT( 0.9, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //418
DX3DVERT( 1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //419
DX3DVERT( -0.9, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //420
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //421
DX3DVERT( -0.8, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //422
DX3DVERT( -0.7, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //423
DX3DVERT( -0.6, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //424
DX3DVERT( -0.5, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //425
DX3DVERT( -0.4, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //426
DX3DVERT( -0.3, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //427
DX3DVERT( -0.2, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //428
DX3DVERT( -0.1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //429
DX3DVERT( 1.49012e-008, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //430
DX3DVERT( 0.1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //431
DX3DVERT( 0.2, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //432
DX3DVERT( 0.3, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //433
DX3DVERT( 0.4, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //434
DX3DVERT( 0.5, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //435
DX3DVERT( 0.6, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //436
DX3DVERT( 0.7, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //437
DX3DVERT( 0.8, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //438
DX3DVERT( 0.9, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //439
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //440
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_DEFAULT_MESH___default_mate_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_DEFAULT_MESH___default_mate_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 441 )
DX3DVERTEX_END


#else
#define vertex_DEFAULT_MESH___default_mate_0	NULL
#define vertexbuff_DEFAULT_MESH___default_mate_0	NULL
#endif




#if ((PT_DEFAULT_MESH___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_DEFAULT_MESH___default_mate_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_DEFAULT_MESH___default_mate_0 )
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
	38, 40, 39, // 38 116
	40, 41, 39, // 39 119
	3, 2, 43, // 40 122
	2, 42, 43, // 41 125
	2, 5, 42, // 42 128
	5, 44, 42, // 43 131
	5, 7, 44, // 44 134
	7, 45, 44, // 45 137
	7, 9, 45, // 46 140
	9, 46, 45, // 47 143
	9, 11, 46, // 48 146
	11, 47, 46, // 49 149
	11, 13, 47, // 50 152
	13, 48, 47, // 51 155
	13, 15, 48, // 52 158
	15, 49, 48, // 53 161
	15, 17, 49, // 54 164
	17, 50, 49, // 55 167
	17, 19, 50, // 56 170
	19, 51, 50, // 57 173
	19, 21, 51, // 58 176
	21, 52, 51, // 59 179
	21, 23, 52, // 60 182
	23, 53, 52, // 61 185
	23, 25, 53, // 62 188
	25, 54, 53, // 63 191
	25, 27, 54, // 64 194
	27, 55, 54, // 65 197
	27, 29, 55, // 66 200
	29, 56, 55, // 67 203
	29, 31, 56, // 68 206
	31, 57, 56, // 69 209
	31, 33, 57, // 70 212
	33, 58, 57, // 71 215
	33, 35, 58, // 72 218
	35, 59, 58, // 73 221
	35, 37, 59, // 74 224
	37, 60, 59, // 75 227
	37, 39, 60, // 76 230
	39, 61, 60, // 77 233
	39, 41, 61, // 78 236
	41, 62, 61, // 79 239
	43, 42, 64, // 80 242
	42, 63, 64, // 81 245
	42, 44, 63, // 82 248
	44, 65, 63, // 83 251
	44, 45, 65, // 84 254
	45, 66, 65, // 85 257
	45, 46, 66, // 86 260
	46, 67, 66, // 87 263
	46, 47, 67, // 88 266
	47, 68, 67, // 89 269
	47, 48, 68, // 90 272
	48, 69, 68, // 91 275
	48, 49, 69, // 92 278
	49, 70, 69, // 93 281
	49, 50, 70, // 94 284
	50, 71, 70, // 95 287
	50, 51, 71, // 96 290
	51, 72, 71, // 97 293
	51, 52, 72, // 98 296
	52, 73, 72, // 99 299
	52, 53, 73, // 100 302
	53, 74, 73, // 101 305
	53, 54, 74, // 102 308
	54, 75, 74, // 103 311
	54, 55, 75, // 104 314
	55, 76, 75, // 105 317
	55, 56, 76, // 106 320
	56, 77, 76, // 107 323
	56, 57, 77, // 108 326
	57, 78, 77, // 109 329
	57, 58, 78, // 110 332
	58, 79, 78, // 111 335
	58, 59, 79, // 112 338
	59, 80, 79, // 113 341
	59, 60, 80, // 114 344
	60, 81, 80, // 115 347
	60, 61, 81, // 116 350
	61, 82, 81, // 117 353
	61, 62, 82, // 118 356
	62, 83, 82, // 119 359
	64, 63, 85, // 120 362
	63, 84, 85, // 121 365
	63, 65, 84, // 122 368
	65, 86, 84, // 123 371
	65, 66, 86, // 124 374
	66, 87, 86, // 125 377
	66, 67, 87, // 126 380
	67, 88, 87, // 127 383
	67, 68, 88, // 128 386
	68, 89, 88, // 129 389
	68, 69, 89, // 130 392
	69, 90, 89, // 131 395
	69, 70, 90, // 132 398
	70, 91, 90, // 133 401
	70, 71, 91, // 134 404
	71, 92, 91, // 135 407
	71, 72, 92, // 136 410
	72, 93, 92, // 137 413
	72, 73, 93, // 138 416
	73, 94, 93, // 139 419
	73, 74, 94, // 140 422
	74, 95, 94, // 141 425
	74, 75, 95, // 142 428
	75, 96, 95, // 143 431
	75, 76, 96, // 144 434
	76, 97, 96, // 145 437
	76, 77, 97, // 146 440
	77, 98, 97, // 147 443
	77, 78, 98, // 148 446
	78, 99, 98, // 149 449
	78, 79, 99, // 150 452
	79, 100, 99, // 151 455
	79, 80, 100, // 152 458
	80, 101, 100, // 153 461
	80, 81, 101, // 154 464
	81, 102, 101, // 155 467
	81, 82, 102, // 156 470
	82, 103, 102, // 157 473
	82, 83, 103, // 158 476
	83, 104, 103, // 159 479
	85, 84, 106, // 160 482
	84, 105, 106, // 161 485
	84, 86, 105, // 162 488
	86, 107, 105, // 163 491
	86, 87, 107, // 164 494
	87, 108, 107, // 165 497
	87, 88, 108, // 166 500
	88, 109, 108, // 167 503
	88, 89, 109, // 168 506
	89, 110, 109, // 169 509
	89, 90, 110, // 170 512
	90, 111, 110, // 171 515
	90, 91, 111, // 172 518
	91, 112, 111, // 173 521
	91, 92, 112, // 174 524
	92, 113, 112, // 175 527
	92, 93, 113, // 176 530
	93, 114, 113, // 177 533
	93, 94, 114, // 178 536
	94, 115, 114, // 179 539
	94, 95, 115, // 180 542
	95, 116, 115, // 181 545
	95, 96, 116, // 182 548
	96, 117, 116, // 183 551
	96, 97, 117, // 184 554
	97, 118, 117, // 185 557
	97, 98, 118, // 186 560
	98, 119, 118, // 187 563
	98, 99, 119, // 188 566
	99, 120, 119, // 189 569
	99, 100, 120, // 190 572
	100, 121, 120, // 191 575
	100, 101, 121, // 192 578
	101, 122, 121, // 193 581
	101, 102, 122, // 194 584
	102, 123, 122, // 195 587
	102, 103, 123, // 196 590
	103, 124, 123, // 197 593
	103, 104, 124, // 198 596
	104, 125, 124, // 199 599
	106, 105, 127, // 200 602
	105, 126, 127, // 201 605
	105, 107, 126, // 202 608
	107, 128, 126, // 203 611
	107, 108, 128, // 204 614
	108, 129, 128, // 205 617
	108, 109, 129, // 206 620
	109, 130, 129, // 207 623
	109, 110, 130, // 208 626
	110, 131, 130, // 209 629
	110, 111, 131, // 210 632
	111, 132, 131, // 211 635
	111, 112, 132, // 212 638
	112, 133, 132, // 213 641
	112, 113, 133, // 214 644
	113, 134, 133, // 215 647
	113, 114, 134, // 216 650
	114, 135, 134, // 217 653
	114, 115, 135, // 218 656
	115, 136, 135, // 219 659
	115, 116, 136, // 220 662
	116, 137, 136, // 221 665
	116, 117, 137, // 222 668
	117, 138, 137, // 223 671
	117, 118, 138, // 224 674
	118, 139, 138, // 225 677
	118, 119, 139, // 226 680
	119, 140, 139, // 227 683
	119, 120, 140, // 228 686
	120, 141, 140, // 229 689
	120, 121, 141, // 230 692
	121, 142, 141, // 231 695
	121, 122, 142, // 232 698
	122, 143, 142, // 233 701
	122, 123, 143, // 234 704
	123, 144, 143, // 235 707
	123, 124, 144, // 236 710
	124, 145, 144, // 237 713
	124, 125, 145, // 238 716
	125, 146, 145, // 239 719
	127, 126, 148, // 240 722
	126, 147, 148, // 241 725
	126, 128, 147, // 242 728
	128, 149, 147, // 243 731
	128, 129, 149, // 244 734
	129, 150, 149, // 245 737
	129, 130, 150, // 246 740
	130, 151, 150, // 247 743
	130, 131, 151, // 248 746
	131, 152, 151, // 249 749
	131, 132, 152, // 250 752
	132, 153, 152, // 251 755
	132, 133, 153, // 252 758
	133, 154, 153, // 253 761
	133, 134, 154, // 254 764
	134, 155, 154, // 255 767
	134, 135, 155, // 256 770
	135, 156, 155, // 257 773
	135, 136, 156, // 258 776
	136, 157, 156, // 259 779
	136, 137, 157, // 260 782
	137, 158, 157, // 261 785
	137, 138, 158, // 262 788
	138, 159, 158, // 263 791
	138, 139, 159, // 264 794
	139, 160, 159, // 265 797
	139, 140, 160, // 266 800
	140, 161, 160, // 267 803
	140, 141, 161, // 268 806
	141, 162, 161, // 269 809
	141, 142, 162, // 270 812
	142, 163, 162, // 271 815
	142, 143, 163, // 272 818
	143, 164, 163, // 273 821
	143, 144, 164, // 274 824
	144, 165, 164, // 275 827
	144, 145, 165, // 276 830
	145, 166, 165, // 277 833
	145, 146, 166, // 278 836
	146, 167, 166, // 279 839
	148, 147, 169, // 280 842
	147, 168, 169, // 281 845
	147, 149, 168, // 282 848
	149, 170, 168, // 283 851
	149, 150, 170, // 284 854
	150, 171, 170, // 285 857
	150, 151, 171, // 286 860
	151, 172, 171, // 287 863
	151, 152, 172, // 288 866
	152, 173, 172, // 289 869
	152, 153, 173, // 290 872
	153, 174, 173, // 291 875
	153, 154, 174, // 292 878
	154, 175, 174, // 293 881
	154, 155, 175, // 294 884
	155, 176, 175, // 295 887
	155, 156, 176, // 296 890
	156, 177, 176, // 297 893
	156, 157, 177, // 298 896
	157, 178, 177, // 299 899
	157, 158, 178, // 300 902
	158, 179, 178, // 301 905
	158, 159, 179, // 302 908
	159, 180, 179, // 303 911
	159, 160, 180, // 304 914
	160, 181, 180, // 305 917
	160, 161, 181, // 306 920
	161, 182, 181, // 307 923
	161, 162, 182, // 308 926
	162, 183, 182, // 309 929
	162, 163, 183, // 310 932
	163, 184, 183, // 311 935
	163, 164, 184, // 312 938
	164, 185, 184, // 313 941
	164, 165, 185, // 314 944
	165, 186, 185, // 315 947
	165, 166, 186, // 316 950
	166, 187, 186, // 317 953
	166, 167, 187, // 318 956
	167, 188, 187, // 319 959
	169, 168, 190, // 320 962
	168, 189, 190, // 321 965
	168, 170, 189, // 322 968
	170, 191, 189, // 323 971
	170, 171, 191, // 324 974
	171, 192, 191, // 325 977
	171, 172, 192, // 326 980
	172, 193, 192, // 327 983
	172, 173, 193, // 328 986
	173, 194, 193, // 329 989
	173, 174, 194, // 330 992
	174, 195, 194, // 331 995
	174, 175, 195, // 332 998
	175, 196, 195, // 333 1001
	175, 176, 196, // 334 1004
	176, 197, 196, // 335 1007
	176, 177, 197, // 336 1010
	177, 198, 197, // 337 1013
	177, 178, 198, // 338 1016
	178, 199, 198, // 339 1019
	178, 179, 199, // 340 1022
	179, 200, 199, // 341 1025
	179, 180, 200, // 342 1028
	180, 201, 200, // 343 1031
	180, 181, 201, // 344 1034
	181, 202, 201, // 345 1037
	181, 182, 202, // 346 1040
	182, 203, 202, // 347 1043
	182, 183, 203, // 348 1046
	183, 204, 203, // 349 1049
	183, 184, 204, // 350 1052
	184, 205, 204, // 351 1055
	184, 185, 205, // 352 1058
	185, 206, 205, // 353 1061
	185, 186, 206, // 354 1064
	186, 207, 206, // 355 1067
	186, 187, 207, // 356 1070
	187, 208, 207, // 357 1073
	187, 188, 208, // 358 1076
	188, 209, 208, // 359 1079
	190, 189, 211, // 360 1082
	189, 210, 211, // 361 1085
	189, 191, 210, // 362 1088
	191, 212, 210, // 363 1091
	191, 192, 212, // 364 1094
	192, 213, 212, // 365 1097
	192, 193, 213, // 366 1100
	193, 214, 213, // 367 1103
	193, 194, 214, // 368 1106
	194, 215, 214, // 369 1109
	194, 195, 215, // 370 1112
	195, 216, 215, // 371 1115
	195, 196, 216, // 372 1118
	196, 217, 216, // 373 1121
	196, 197, 217, // 374 1124
	197, 218, 217, // 375 1127
	197, 198, 218, // 376 1130
	198, 219, 218, // 377 1133
	198, 199, 219, // 378 1136
	199, 220, 219, // 379 1139
	199, 200, 220, // 380 1142
	200, 221, 220, // 381 1145
	200, 201, 221, // 382 1148
	201, 222, 221, // 383 1151
	201, 202, 222, // 384 1154
	202, 223, 222, // 385 1157
	202, 203, 223, // 386 1160
	203, 224, 223, // 387 1163
	203, 204, 224, // 388 1166
	204, 225, 224, // 389 1169
	204, 205, 225, // 390 1172
	205, 226, 225, // 391 1175
	205, 206, 226, // 392 1178
	206, 227, 226, // 393 1181
	206, 207, 227, // 394 1184
	207, 228, 227, // 395 1187
	207, 208, 228, // 396 1190
	208, 229, 228, // 397 1193
	208, 209, 229, // 398 1196
	209, 230, 229, // 399 1199
	211, 210, 232, // 400 1202
	210, 231, 232, // 401 1205
	210, 212, 231, // 402 1208
	212, 233, 231, // 403 1211
	212, 213, 233, // 404 1214
	213, 234, 233, // 405 1217
	213, 214, 234, // 406 1220
	214, 235, 234, // 407 1223
	214, 215, 235, // 408 1226
	215, 236, 235, // 409 1229
	215, 216, 236, // 410 1232
	216, 237, 236, // 411 1235
	216, 217, 237, // 412 1238
	217, 238, 237, // 413 1241
	217, 218, 238, // 414 1244
	218, 239, 238, // 415 1247
	218, 219, 239, // 416 1250
	219, 240, 239, // 417 1253
	219, 220, 240, // 418 1256
	220, 241, 240, // 419 1259
	220, 221, 241, // 420 1262
	221, 242, 241, // 421 1265
	221, 222, 242, // 422 1268
	222, 243, 242, // 423 1271
	222, 223, 243, // 424 1274
	223, 244, 243, // 425 1277
	223, 224, 244, // 426 1280
	224, 245, 244, // 427 1283
	224, 225, 245, // 428 1286
	225, 246, 245, // 429 1289
	225, 226, 246, // 430 1292
	226, 247, 246, // 431 1295
	226, 227, 247, // 432 1298
	227, 248, 247, // 433 1301
	227, 228, 248, // 434 1304
	228, 249, 248, // 435 1307
	228, 229, 249, // 436 1310
	229, 250, 249, // 437 1313
	229, 230, 250, // 438 1316
	230, 251, 250, // 439 1319
	232, 231, 253, // 440 1322
	231, 252, 253, // 441 1325
	231, 233, 252, // 442 1328
	233, 254, 252, // 443 1331
	233, 234, 254, // 444 1334
	234, 255, 254, // 445 1337
	234, 235, 255, // 446 1340
	235, 256, 255, // 447 1343
	235, 236, 256, // 448 1346
	236, 257, 256, // 449 1349
	236, 237, 257, // 450 1352
	237, 258, 257, // 451 1355
	237, 238, 258, // 452 1358
	238, 259, 258, // 453 1361
	238, 239, 259, // 454 1364
	239, 260, 259, // 455 1367
	239, 240, 260, // 456 1370
	240, 261, 260, // 457 1373
	240, 241, 261, // 458 1376
	241, 262, 261, // 459 1379
	241, 242, 262, // 460 1382
	242, 263, 262, // 461 1385
	242, 243, 263, // 462 1388
	243, 264, 263, // 463 1391
	243, 244, 264, // 464 1394
	244, 265, 264, // 465 1397
	244, 245, 265, // 466 1400
	245, 266, 265, // 467 1403
	245, 246, 266, // 468 1406
	246, 267, 266, // 469 1409
	246, 247, 267, // 470 1412
	247, 268, 267, // 471 1415
	247, 248, 268, // 472 1418
	248, 269, 268, // 473 1421
	248, 249, 269, // 474 1424
	249, 270, 269, // 475 1427
	249, 250, 270, // 476 1430
	250, 271, 270, // 477 1433
	250, 251, 271, // 478 1436
	251, 272, 271, // 479 1439
	253, 252, 274, // 480 1442
	252, 273, 274, // 481 1445
	252, 254, 273, // 482 1448
	254, 275, 273, // 483 1451
	254, 255, 275, // 484 1454
	255, 276, 275, // 485 1457
	255, 256, 276, // 486 1460
	256, 277, 276, // 487 1463
	256, 257, 277, // 488 1466
	257, 278, 277, // 489 1469
	257, 258, 278, // 490 1472
	258, 279, 278, // 491 1475
	258, 259, 279, // 492 1478
	259, 280, 279, // 493 1481
	259, 260, 280, // 494 1484
	260, 281, 280, // 495 1487
	260, 261, 281, // 496 1490
	261, 282, 281, // 497 1493
	261, 262, 282, // 498 1496
	262, 283, 282, // 499 1499
	262, 263, 283, // 500 1502
	263, 284, 283, // 501 1505
	263, 264, 284, // 502 1508
	264, 285, 284, // 503 1511
	264, 265, 285, // 504 1514
	265, 286, 285, // 505 1517
	265, 266, 286, // 506 1520
	266, 287, 286, // 507 1523
	266, 267, 287, // 508 1526
	267, 288, 287, // 509 1529
	267, 268, 288, // 510 1532
	268, 289, 288, // 511 1535
	268, 269, 289, // 512 1538
	269, 290, 289, // 513 1541
	269, 270, 290, // 514 1544
	270, 291, 290, // 515 1547
	270, 271, 291, // 516 1550
	271, 292, 291, // 517 1553
	271, 272, 292, // 518 1556
	272, 293, 292, // 519 1559
	274, 273, 295, // 520 1562
	273, 294, 295, // 521 1565
	273, 275, 294, // 522 1568
	275, 296, 294, // 523 1571
	275, 276, 296, // 524 1574
	276, 297, 296, // 525 1577
	276, 277, 297, // 526 1580
	277, 298, 297, // 527 1583
	277, 278, 298, // 528 1586
	278, 299, 298, // 529 1589
	278, 279, 299, // 530 1592
	279, 300, 299, // 531 1595
	279, 280, 300, // 532 1598
	280, 301, 300, // 533 1601
	280, 281, 301, // 534 1604
	281, 302, 301, // 535 1607
	281, 282, 302, // 536 1610
	282, 303, 302, // 537 1613
	282, 283, 303, // 538 1616
	283, 304, 303, // 539 1619
	283, 284, 304, // 540 1622
	284, 305, 304, // 541 1625
	284, 285, 305, // 542 1628
	285, 306, 305, // 543 1631
	285, 286, 306, // 544 1634
	286, 307, 306, // 545 1637
	286, 287, 307, // 546 1640
	287, 308, 307, // 547 1643
	287, 288, 308, // 548 1646
	288, 309, 308, // 549 1649
	288, 289, 309, // 550 1652
	289, 310, 309, // 551 1655
	289, 290, 310, // 552 1658
	290, 311, 310, // 553 1661
	290, 291, 311, // 554 1664
	291, 312, 311, // 555 1667
	291, 292, 312, // 556 1670
	292, 313, 312, // 557 1673
	292, 293, 313, // 558 1676
	293, 314, 313, // 559 1679
	295, 294, 316, // 560 1682
	294, 315, 316, // 561 1685
	294, 296, 315, // 562 1688
	296, 317, 315, // 563 1691
	296, 297, 317, // 564 1694
	297, 318, 317, // 565 1697
	297, 298, 318, // 566 1700
	298, 319, 318, // 567 1703
	298, 299, 319, // 568 1706
	299, 320, 319, // 569 1709
	299, 300, 320, // 570 1712
	300, 321, 320, // 571 1715
	300, 301, 321, // 572 1718
	301, 322, 321, // 573 1721
	301, 302, 322, // 574 1724
	302, 323, 322, // 575 1727
	302, 303, 323, // 576 1730
	303, 324, 323, // 577 1733
	303, 304, 324, // 578 1736
	304, 325, 324, // 579 1739
	304, 305, 325, // 580 1742
	305, 326, 325, // 581 1745
	305, 306, 326, // 582 1748
	306, 327, 326, // 583 1751
	306, 307, 327, // 584 1754
	307, 328, 327, // 585 1757
	307, 308, 328, // 586 1760
	308, 329, 328, // 587 1763
	308, 309, 329, // 588 1766
	309, 330, 329, // 589 1769
	309, 310, 330, // 590 1772
	310, 331, 330, // 591 1775
	310, 311, 331, // 592 1778
	311, 332, 331, // 593 1781
	311, 312, 332, // 594 1784
	312, 333, 332, // 595 1787
	312, 313, 333, // 596 1790
	313, 334, 333, // 597 1793
	313, 314, 334, // 598 1796
	314, 335, 334, // 599 1799
	316, 315, 337, // 600 1802
	315, 336, 337, // 601 1805
	315, 317, 336, // 602 1808
	317, 338, 336, // 603 1811
	317, 318, 338, // 604 1814
	318, 339, 338, // 605 1817
	318, 319, 339, // 606 1820
	319, 340, 339, // 607 1823
	319, 320, 340, // 608 1826
	320, 341, 340, // 609 1829
	320, 321, 341, // 610 1832
	321, 342, 341, // 611 1835
	321, 322, 342, // 612 1838
	322, 343, 342, // 613 1841
	322, 323, 343, // 614 1844
	323, 344, 343, // 615 1847
	323, 324, 344, // 616 1850
	324, 345, 344, // 617 1853
	324, 325, 345, // 618 1856
	325, 346, 345, // 619 1859
	325, 326, 346, // 620 1862
	326, 347, 346, // 621 1865
	326, 327, 347, // 622 1868
	327, 348, 347, // 623 1871
	327, 328, 348, // 624 1874
	328, 349, 348, // 625 1877
	328, 329, 349, // 626 1880
	329, 350, 349, // 627 1883
	329, 330, 350, // 628 1886
	330, 351, 350, // 629 1889
	330, 331, 351, // 630 1892
	331, 352, 351, // 631 1895
	331, 332, 352, // 632 1898
	332, 353, 352, // 633 1901
	332, 333, 353, // 634 1904
	333, 354, 353, // 635 1907
	333, 334, 354, // 636 1910
	334, 355, 354, // 637 1913
	334, 335, 355, // 638 1916
	335, 356, 355, // 639 1919
	337, 336, 358, // 640 1922
	336, 357, 358, // 641 1925
	336, 338, 357, // 642 1928
	338, 359, 357, // 643 1931
	338, 339, 359, // 644 1934
	339, 360, 359, // 645 1937
	339, 340, 360, // 646 1940
	340, 361, 360, // 647 1943
	340, 341, 361, // 648 1946
	341, 362, 361, // 649 1949
	341, 342, 362, // 650 1952
	342, 363, 362, // 651 1955
	342, 343, 363, // 652 1958
	343, 364, 363, // 653 1961
	343, 344, 364, // 654 1964
	344, 365, 364, // 655 1967
	344, 345, 365, // 656 1970
	345, 366, 365, // 657 1973
	345, 346, 366, // 658 1976
	346, 367, 366, // 659 1979
	346, 347, 367, // 660 1982
	347, 368, 367, // 661 1985
	347, 348, 368, // 662 1988
	348, 369, 368, // 663 1991
	348, 349, 369, // 664 1994
	349, 370, 369, // 665 1997
	349, 350, 370, // 666 2000
	350, 371, 370, // 667 2003
	350, 351, 371, // 668 2006
	351, 372, 371, // 669 2009
	351, 352, 372, // 670 2012
	352, 373, 372, // 671 2015
	352, 353, 373, // 672 2018
	353, 374, 373, // 673 2021
	353, 354, 374, // 674 2024
	354, 375, 374, // 675 2027
	354, 355, 375, // 676 2030
	355, 376, 375, // 677 2033
	355, 356, 376, // 678 2036
	356, 377, 376, // 679 2039
	358, 357, 379, // 680 2042
	357, 378, 379, // 681 2045
	357, 359, 378, // 682 2048
	359, 380, 378, // 683 2051
	359, 360, 380, // 684 2054
	360, 381, 380, // 685 2057
	360, 361, 381, // 686 2060
	361, 382, 381, // 687 2063
	361, 362, 382, // 688 2066
	362, 383, 382, // 689 2069
	362, 363, 383, // 690 2072
	363, 384, 383, // 691 2075
	363, 364, 384, // 692 2078
	364, 385, 384, // 693 2081
	364, 365, 385, // 694 2084
	365, 386, 385, // 695 2087
	365, 366, 386, // 696 2090
	366, 387, 386, // 697 2093
	366, 367, 387, // 698 2096
	367, 388, 387, // 699 2099
	367, 368, 388, // 700 2102
	368, 389, 388, // 701 2105
	368, 369, 389, // 702 2108
	369, 390, 389, // 703 2111
	369, 370, 390, // 704 2114
	370, 391, 390, // 705 2117
	370, 371, 391, // 706 2120
	371, 392, 391, // 707 2123
	371, 372, 392, // 708 2126
	372, 393, 392, // 709 2129
	372, 373, 393, // 710 2132
	373, 394, 393, // 711 2135
	373, 374, 394, // 712 2138
	374, 395, 394, // 713 2141
	374, 375, 395, // 714 2144
	375, 396, 395, // 715 2147
	375, 376, 396, // 716 2150
	376, 397, 396, // 717 2153
	376, 377, 397, // 718 2156
	377, 398, 397, // 719 2159
	379, 378, 400, // 720 2162
	378, 399, 400, // 721 2165
	378, 380, 399, // 722 2168
	380, 401, 399, // 723 2171
	380, 381, 401, // 724 2174
	381, 402, 401, // 725 2177
	381, 382, 402, // 726 2180
	382, 403, 402, // 727 2183
	382, 383, 403, // 728 2186
	383, 404, 403, // 729 2189
	383, 384, 404, // 730 2192
	384, 405, 404, // 731 2195
	384, 385, 405, // 732 2198
	385, 406, 405, // 733 2201
	385, 386, 406, // 734 2204
	386, 407, 406, // 735 2207
	386, 387, 407, // 736 2210
	387, 408, 407, // 737 2213
	387, 388, 408, // 738 2216
	388, 409, 408, // 739 2219
	388, 389, 409, // 740 2222
	389, 410, 409, // 741 2225
	389, 390, 410, // 742 2228
	390, 411, 410, // 743 2231
	390, 391, 411, // 744 2234
	391, 412, 411, // 745 2237
	391, 392, 412, // 746 2240
	392, 413, 412, // 747 2243
	392, 393, 413, // 748 2246
	393, 414, 413, // 749 2249
	393, 394, 414, // 750 2252
	394, 415, 414, // 751 2255
	394, 395, 415, // 752 2258
	395, 416, 415, // 753 2261
	395, 396, 416, // 754 2264
	396, 417, 416, // 755 2267
	396, 397, 417, // 756 2270
	397, 418, 417, // 757 2273
	397, 398, 418, // 758 2276
	398, 419, 418, // 759 2279
	400, 399, 421, // 760 2282
	399, 420, 421, // 761 2285
	399, 401, 420, // 762 2288
	401, 422, 420, // 763 2291
	401, 402, 422, // 764 2294
	402, 423, 422, // 765 2297
	402, 403, 423, // 766 2300
	403, 424, 423, // 767 2303
	403, 404, 424, // 768 2306
	404, 425, 424, // 769 2309
	404, 405, 425, // 770 2312
	405, 426, 425, // 771 2315
	405, 406, 426, // 772 2318
	406, 427, 426, // 773 2321
	406, 407, 427, // 774 2324
	407, 428, 427, // 775 2327
	407, 408, 428, // 776 2330
	408, 429, 428, // 777 2333
	408, 409, 429, // 778 2336
	409, 430, 429, // 779 2339
	409, 410, 430, // 780 2342
	410, 431, 430, // 781 2345
	410, 411, 431, // 782 2348
	411, 432, 431, // 783 2351
	411, 412, 432, // 784 2354
	412, 433, 432, // 785 2357
	412, 413, 433, // 786 2360
	413, 434, 433, // 787 2363
	413, 414, 434, // 788 2366
	414, 435, 434, // 789 2369
	414, 415, 435, // 790 2372
	415, 436, 435, // 791 2375
	415, 416, 436, // 792 2378
	416, 437, 436, // 793 2381
	416, 417, 437, // 794 2384
	417, 438, 437, // 795 2387
	417, 418, 438, // 796 2390
	418, 439, 438, // 797 2393
	418, 419, 439, // 798 2396
	419, 440, 439, // 799 2399
DX3DINDEX_END
#endif

#else
#define index_DEFAULT_MESH___default_mate_0	NULL
#endif




#if ((PT_DEFAULT_MESH___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_DEFAULT_MESH___default_mate_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_DEFAULT_MESH___default_mate_0_INDEXSTRIP 	NULL
#endif




#if ((PT_DEFAULT_MESH___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_DEFAULT_MESH___default_mate_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_DEFAULT_MESH___default_mate_0_VERTEXSTRIP 	NULL
#define vertexbuff_DEFAULT_MESH___default_mate_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_DEFAULT_MESH__ )
DX3DMODEL_START( model_DEFAULT_MESH___default_mate_0 )
DX3DMODEL_VERTEX( vertex_DEFAULT_MESH___default_mate_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_DEFAULT_MESH___default_mate_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 2400 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_default_mate )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_DEFAULT_MESH__, 1210349329 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_DEFAULT_MESH__ )
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
	2.1, 2.1, -0, 
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
	2.1, 2.1, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_DEFAULT__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_TARGET_UPPER__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 2.1, 0, 1
#endif

DX3DMATERIALTEX_START( materialtex_texn_target )
DX3DMATERIALTEX_NAME( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_checkrgba_DDS__ )
DX3DMATERIALTEX_NAME( texture_Z__toshi2_ATEST_ATEST_ATESTNameSpace_STAGE2_3_Beginners3DProgramming_Lighting_LightingFiles_normal_dds__ )
DX3DMATERIALTEX_END


DX3DMATERIAL_START( material_texn_target )
DX3DMATERIAL_DIFF( 1, 0.8, 0.8, 0.8 )
DX3DMATERIAL_SPEC( 0, 1, 1, 1 )
DX3DMATERIAL_TEX( materialtex_texn_target )
DX3DMATERIAL_SHADER( TEXN )
DX3DMATERIAL_FLG( 0 )
DX3DMATERIAL_CALLBACK( -1 )
DX3DMATERIAL_END




#if ((PT_TARGET_UPPER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_TARGET_UPPER___texn_target_0 == PT_TRILIST ) || ((PT_TARGET_UPPER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_TARGET_UPPER___texn_target_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VNBTUV, vertexbuff_TARGET_UPPER___texn_target_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, 0 ) DX3DVUV( 0.00199203, 0.998008 )  //0
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.998008, 0.998008 )  //1
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.998008, 0.00199199 )  //2
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.00199203, 0.00199199 )  //3
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_TARGET_UPPER___texn_target_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_TARGET_UPPER___texn_target_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VNBTUV, 4 )
DX3DVERTEX_END


#else
#define vertex_TARGET_UPPER___texn_target_0	NULL
#define vertexbuff_TARGET_UPPER___texn_target_0	NULL
#endif




#if ((PT_TARGET_UPPER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_TARGET_UPPER___texn_target_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_TARGET_UPPER___texn_target_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
DX3DINDEX_END
#endif

#else
#define index_TARGET_UPPER___texn_target_0	NULL
#endif




#if ((PT_TARGET_UPPER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_TARGET_UPPER___texn_target_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_TARGET_UPPER___texn_target_0_INDEXSTRIP 	NULL
#endif




#if ((PT_TARGET_UPPER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_TARGET_UPPER___texn_target_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_TARGET_UPPER___texn_target_0_VERTEXSTRIP 	NULL
#define vertexbuff_TARGET_UPPER___texn_target_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_TARGET_UPPER__ )
DX3DMODEL_START( model_TARGET_UPPER___texn_target_0 )
DX3DMODEL_VERTEX( vertex_TARGET_UPPER___texn_target_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_TARGET_UPPER___texn_target_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 6 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_texn_target )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_TARGET_UPPER__, 2682691961 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_TARGET_UPPER__ )
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
	0, 2.1, -0, 
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
	0, 2.1, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_DEFAULT_MESH__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_DEFAULT_MESH_UNDERRIGHT__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	2.1, -2.1, 0, 1
#endif



#if ((PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_TRILIST ) || ((PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VN, vertexbuff_DEFAULT_MESH_UNDERRIGHT___default_mate_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( -0.9, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( -0.9, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT( -0.8, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //4
DX3DVERT( -0.8, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //5
DX3DVERT( -0.7, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //6
DX3DVERT( -0.7, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //7
DX3DVERT( -0.6, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //8
DX3DVERT( -0.6, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //9
DX3DVERT( -0.5, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //10
DX3DVERT( -0.5, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //11
DX3DVERT( -0.4, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //12
DX3DVERT( -0.4, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //13
DX3DVERT( -0.3, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //14
DX3DVERT( -0.3, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //15
DX3DVERT( -0.2, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //16
DX3DVERT( -0.2, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //17
DX3DVERT( -0.1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //18
DX3DVERT( -0.1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //19
DX3DVERT( 1.49012e-008, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //20
DX3DVERT( 1.49012e-008, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //21
DX3DVERT( 0.1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //22
DX3DVERT( 0.1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //23
DX3DVERT( 0.2, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //24
DX3DVERT( 0.2, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //25
DX3DVERT( 0.3, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //26
DX3DVERT( 0.3, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //27
DX3DVERT( 0.4, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //28
DX3DVERT( 0.4, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //29
DX3DVERT( 0.5, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //30
DX3DVERT( 0.5, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //31
DX3DVERT( 0.6, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //32
DX3DVERT( 0.6, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //33
DX3DVERT( 0.7, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //34
DX3DVERT( 0.7, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //35
DX3DVERT( 0.8, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //36
DX3DVERT( 0.8, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //37
DX3DVERT( 0.9, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //38
DX3DVERT( 0.9, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //39
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //40
DX3DVERT( 1, -0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //41
DX3DVERT( -0.9, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //42
DX3DVERT( -1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //43
DX3DVERT( -0.8, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //44
DX3DVERT( -0.7, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //45
DX3DVERT( -0.6, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //46
DX3DVERT( -0.5, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //47
DX3DVERT( -0.4, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //48
DX3DVERT( -0.3, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //49
DX3DVERT( -0.2, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //50
DX3DVERT( -0.1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //51
DX3DVERT( 1.49012e-008, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //52
DX3DVERT( 0.1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //53
DX3DVERT( 0.2, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //54
DX3DVERT( 0.3, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //55
DX3DVERT( 0.4, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //56
DX3DVERT( 0.5, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //57
DX3DVERT( 0.6, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //58
DX3DVERT( 0.7, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //59
DX3DVERT( 0.8, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //60
DX3DVERT( 0.9, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //61
DX3DVERT( 1, -0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //62
DX3DVERT( -0.9, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //63
DX3DVERT( -1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //64
DX3DVERT( -0.8, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //65
DX3DVERT( -0.7, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //66
DX3DVERT( -0.6, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //67
DX3DVERT( -0.5, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //68
DX3DVERT( -0.4, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //69
DX3DVERT( -0.3, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //70
DX3DVERT( -0.2, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //71
DX3DVERT( -0.1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //72
DX3DVERT( 1.49012e-008, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //73
DX3DVERT( 0.1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //74
DX3DVERT( 0.2, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //75
DX3DVERT( 0.3, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //76
DX3DVERT( 0.4, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //77
DX3DVERT( 0.5, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //78
DX3DVERT( 0.6, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //79
DX3DVERT( 0.7, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //80
DX3DVERT( 0.8, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //81
DX3DVERT( 0.9, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //82
DX3DVERT( 1, -0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //83
DX3DVERT( -0.9, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //84
DX3DVERT( -1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //85
DX3DVERT( -0.8, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //86
DX3DVERT( -0.7, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //87
DX3DVERT( -0.6, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //88
DX3DVERT( -0.5, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //89
DX3DVERT( -0.4, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //90
DX3DVERT( -0.3, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //91
DX3DVERT( -0.2, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //92
DX3DVERT( -0.1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //93
DX3DVERT( 1.49012e-008, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //94
DX3DVERT( 0.1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //95
DX3DVERT( 0.2, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //96
DX3DVERT( 0.3, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //97
DX3DVERT( 0.4, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //98
DX3DVERT( 0.5, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //99
DX3DVERT( 0.6, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //100
DX3DVERT( 0.7, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //101
DX3DVERT( 0.8, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //102
DX3DVERT( 0.9, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //103
DX3DVERT( 1, -0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //104
DX3DVERT( -0.9, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //105
DX3DVERT( -1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //106
DX3DVERT( -0.8, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //107
DX3DVERT( -0.7, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //108
DX3DVERT( -0.6, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //109
DX3DVERT( -0.5, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //110
DX3DVERT( -0.4, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //111
DX3DVERT( -0.3, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //112
DX3DVERT( -0.2, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //113
DX3DVERT( -0.1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //114
DX3DVERT( 1.49012e-008, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //115
DX3DVERT( 0.1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //116
DX3DVERT( 0.2, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //117
DX3DVERT( 0.3, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //118
DX3DVERT( 0.4, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //119
DX3DVERT( 0.5, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //120
DX3DVERT( 0.6, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //121
DX3DVERT( 0.7, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //122
DX3DVERT( 0.8, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //123
DX3DVERT( 0.9, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //124
DX3DVERT( 1, -0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //125
DX3DVERT( -0.9, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //126
DX3DVERT( -1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //127
DX3DVERT( -0.8, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //128
DX3DVERT( -0.7, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //129
DX3DVERT( -0.6, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //130
DX3DVERT( -0.5, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //131
DX3DVERT( -0.4, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //132
DX3DVERT( -0.3, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //133
DX3DVERT( -0.2, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //134
DX3DVERT( -0.1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //135
DX3DVERT( 1.49012e-008, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //136
DX3DVERT( 0.1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //137
DX3DVERT( 0.2, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //138
DX3DVERT( 0.3, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //139
DX3DVERT( 0.4, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //140
DX3DVERT( 0.5, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //141
DX3DVERT( 0.6, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //142
DX3DVERT( 0.7, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //143
DX3DVERT( 0.8, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //144
DX3DVERT( 0.9, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //145
DX3DVERT( 1, -0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //146
DX3DVERT( -0.9, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //147
DX3DVERT( -1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //148
DX3DVERT( -0.8, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //149
DX3DVERT( -0.7, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //150
DX3DVERT( -0.6, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //151
DX3DVERT( -0.5, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //152
DX3DVERT( -0.4, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //153
DX3DVERT( -0.3, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //154
DX3DVERT( -0.2, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //155
DX3DVERT( -0.1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //156
DX3DVERT( 1.49012e-008, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //157
DX3DVERT( 0.1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //158
DX3DVERT( 0.2, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //159
DX3DVERT( 0.3, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //160
DX3DVERT( 0.4, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //161
DX3DVERT( 0.5, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //162
DX3DVERT( 0.6, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //163
DX3DVERT( 0.7, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //164
DX3DVERT( 0.8, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //165
DX3DVERT( 0.9, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //166
DX3DVERT( 1, -0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //167
DX3DVERT( -0.9, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //168
DX3DVERT( -1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //169
DX3DVERT( -0.8, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //170
DX3DVERT( -0.7, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //171
DX3DVERT( -0.6, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //172
DX3DVERT( -0.5, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //173
DX3DVERT( -0.4, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //174
DX3DVERT( -0.3, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //175
DX3DVERT( -0.2, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //176
DX3DVERT( -0.1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //177
DX3DVERT( 1.49012e-008, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //178
DX3DVERT( 0.1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //179
DX3DVERT( 0.2, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //180
DX3DVERT( 0.3, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //181
DX3DVERT( 0.4, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //182
DX3DVERT( 0.5, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //183
DX3DVERT( 0.6, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //184
DX3DVERT( 0.7, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //185
DX3DVERT( 0.8, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //186
DX3DVERT( 0.9, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //187
DX3DVERT( 1, -0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //188
DX3DVERT( -0.9, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //189
DX3DVERT( -1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //190
DX3DVERT( -0.8, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //191
DX3DVERT( -0.7, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //192
DX3DVERT( -0.6, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //193
DX3DVERT( -0.5, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //194
DX3DVERT( -0.4, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //195
DX3DVERT( -0.3, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //196
DX3DVERT( -0.2, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //197
DX3DVERT( -0.1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //198
DX3DVERT( 1.49012e-008, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //199
DX3DVERT( 0.1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //200
DX3DVERT( 0.2, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //201
DX3DVERT( 0.3, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //202
DX3DVERT( 0.4, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //203
DX3DVERT( 0.5, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //204
DX3DVERT( 0.6, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //205
DX3DVERT( 0.7, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //206
DX3DVERT( 0.8, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //207
DX3DVERT( 0.9, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //208
DX3DVERT( 1, -0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //209
DX3DVERT( -0.9, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //210
DX3DVERT( -1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //211
DX3DVERT( -0.8, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //212
DX3DVERT( -0.7, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //213
DX3DVERT( -0.6, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //214
DX3DVERT( -0.5, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //215
DX3DVERT( -0.4, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //216
DX3DVERT( -0.3, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //217
DX3DVERT( -0.2, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //218
DX3DVERT( -0.1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //219
DX3DVERT( 1.49012e-008, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //220
DX3DVERT( 0.1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //221
DX3DVERT( 0.2, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //222
DX3DVERT( 0.3, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //223
DX3DVERT( 0.4, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //224
DX3DVERT( 0.5, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //225
DX3DVERT( 0.6, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //226
DX3DVERT( 0.7, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //227
DX3DVERT( 0.8, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //228
DX3DVERT( 0.9, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //229
DX3DVERT( 1, 1.49012e-008, -0 ) DX3DVNORM( 0, 0, -1 )  //230
DX3DVERT( -0.9, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //231
DX3DVERT( -1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //232
DX3DVERT( -0.8, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //233
DX3DVERT( -0.7, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //234
DX3DVERT( -0.6, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //235
DX3DVERT( -0.5, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //236
DX3DVERT( -0.4, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //237
DX3DVERT( -0.3, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //238
DX3DVERT( -0.2, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //239
DX3DVERT( -0.1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //240
DX3DVERT( 1.49012e-008, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //241
DX3DVERT( 0.1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //242
DX3DVERT( 0.2, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //243
DX3DVERT( 0.3, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //244
DX3DVERT( 0.4, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //245
DX3DVERT( 0.5, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //246
DX3DVERT( 0.6, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //247
DX3DVERT( 0.7, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //248
DX3DVERT( 0.8, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //249
DX3DVERT( 0.9, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //250
DX3DVERT( 1, 0.1, -0 ) DX3DVNORM( 0, 0, -1 )  //251
DX3DVERT( -0.9, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //252
DX3DVERT( -1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //253
DX3DVERT( -0.8, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //254
DX3DVERT( -0.7, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //255
DX3DVERT( -0.6, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //256
DX3DVERT( -0.5, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //257
DX3DVERT( -0.4, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //258
DX3DVERT( -0.3, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //259
DX3DVERT( -0.2, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //260
DX3DVERT( -0.1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //261
DX3DVERT( 1.49012e-008, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //262
DX3DVERT( 0.1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //263
DX3DVERT( 0.2, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //264
DX3DVERT( 0.3, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //265
DX3DVERT( 0.4, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //266
DX3DVERT( 0.5, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //267
DX3DVERT( 0.6, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //268
DX3DVERT( 0.7, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //269
DX3DVERT( 0.8, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //270
DX3DVERT( 0.9, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //271
DX3DVERT( 1, 0.2, -0 ) DX3DVNORM( 0, 0, -1 )  //272
DX3DVERT( -0.9, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //273
DX3DVERT( -1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //274
DX3DVERT( -0.8, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //275
DX3DVERT( -0.7, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //276
DX3DVERT( -0.6, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //277
DX3DVERT( -0.5, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //278
DX3DVERT( -0.4, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //279
DX3DVERT( -0.3, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //280
DX3DVERT( -0.2, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //281
DX3DVERT( -0.1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //282
DX3DVERT( 1.49012e-008, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //283
DX3DVERT( 0.1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //284
DX3DVERT( 0.2, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //285
DX3DVERT( 0.3, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //286
DX3DVERT( 0.4, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //287
DX3DVERT( 0.5, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //288
DX3DVERT( 0.6, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //289
DX3DVERT( 0.7, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //290
DX3DVERT( 0.8, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //291
DX3DVERT( 0.9, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //292
DX3DVERT( 1, 0.3, -0 ) DX3DVNORM( 0, 0, -1 )  //293
DX3DVERT( -0.9, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //294
DX3DVERT( -1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //295
DX3DVERT( -0.8, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //296
DX3DVERT( -0.7, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //297
DX3DVERT( -0.6, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //298
DX3DVERT( -0.5, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //299
DX3DVERT( -0.4, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //300
DX3DVERT( -0.3, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //301
DX3DVERT( -0.2, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //302
DX3DVERT( -0.1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //303
DX3DVERT( 1.49012e-008, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //304
DX3DVERT( 0.1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //305
DX3DVERT( 0.2, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //306
DX3DVERT( 0.3, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //307
DX3DVERT( 0.4, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //308
DX3DVERT( 0.5, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //309
DX3DVERT( 0.6, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //310
DX3DVERT( 0.7, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //311
DX3DVERT( 0.8, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //312
DX3DVERT( 0.9, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //313
DX3DVERT( 1, 0.4, -0 ) DX3DVNORM( 0, 0, -1 )  //314
DX3DVERT( -0.9, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //315
DX3DVERT( -1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //316
DX3DVERT( -0.8, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //317
DX3DVERT( -0.7, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //318
DX3DVERT( -0.6, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //319
DX3DVERT( -0.5, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //320
DX3DVERT( -0.4, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //321
DX3DVERT( -0.3, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //322
DX3DVERT( -0.2, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //323
DX3DVERT( -0.1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //324
DX3DVERT( 1.49012e-008, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //325
DX3DVERT( 0.1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //326
DX3DVERT( 0.2, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //327
DX3DVERT( 0.3, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //328
DX3DVERT( 0.4, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //329
DX3DVERT( 0.5, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //330
DX3DVERT( 0.6, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //331
DX3DVERT( 0.7, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //332
DX3DVERT( 0.8, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //333
DX3DVERT( 0.9, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //334
DX3DVERT( 1, 0.5, -0 ) DX3DVNORM( 0, 0, -1 )  //335
DX3DVERT( -0.9, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //336
DX3DVERT( -1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //337
DX3DVERT( -0.8, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //338
DX3DVERT( -0.7, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //339
DX3DVERT( -0.6, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //340
DX3DVERT( -0.5, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //341
DX3DVERT( -0.4, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //342
DX3DVERT( -0.3, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //343
DX3DVERT( -0.2, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //344
DX3DVERT( -0.1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //345
DX3DVERT( 1.49012e-008, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //346
DX3DVERT( 0.1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //347
DX3DVERT( 0.2, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //348
DX3DVERT( 0.3, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //349
DX3DVERT( 0.4, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //350
DX3DVERT( 0.5, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //351
DX3DVERT( 0.6, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //352
DX3DVERT( 0.7, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //353
DX3DVERT( 0.8, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //354
DX3DVERT( 0.9, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //355
DX3DVERT( 1, 0.6, -0 ) DX3DVNORM( 0, 0, -1 )  //356
DX3DVERT( -0.9, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //357
DX3DVERT( -1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //358
DX3DVERT( -0.8, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //359
DX3DVERT( -0.7, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //360
DX3DVERT( -0.6, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //361
DX3DVERT( -0.5, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //362
DX3DVERT( -0.4, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //363
DX3DVERT( -0.3, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //364
DX3DVERT( -0.2, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //365
DX3DVERT( -0.1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //366
DX3DVERT( 1.49012e-008, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //367
DX3DVERT( 0.1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //368
DX3DVERT( 0.2, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //369
DX3DVERT( 0.3, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //370
DX3DVERT( 0.4, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //371
DX3DVERT( 0.5, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //372
DX3DVERT( 0.6, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //373
DX3DVERT( 0.7, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //374
DX3DVERT( 0.8, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //375
DX3DVERT( 0.9, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //376
DX3DVERT( 1, 0.7, -0 ) DX3DVNORM( 0, 0, -1 )  //377
DX3DVERT( -0.9, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //378
DX3DVERT( -1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //379
DX3DVERT( -0.8, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //380
DX3DVERT( -0.7, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //381
DX3DVERT( -0.6, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //382
DX3DVERT( -0.5, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //383
DX3DVERT( -0.4, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //384
DX3DVERT( -0.3, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //385
DX3DVERT( -0.2, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //386
DX3DVERT( -0.1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //387
DX3DVERT( 1.49012e-008, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //388
DX3DVERT( 0.1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //389
DX3DVERT( 0.2, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //390
DX3DVERT( 0.3, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //391
DX3DVERT( 0.4, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //392
DX3DVERT( 0.5, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //393
DX3DVERT( 0.6, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //394
DX3DVERT( 0.7, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //395
DX3DVERT( 0.8, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //396
DX3DVERT( 0.9, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //397
DX3DVERT( 1, 0.8, -0 ) DX3DVNORM( 0, 0, -1 )  //398
DX3DVERT( -0.9, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //399
DX3DVERT( -1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //400
DX3DVERT( -0.8, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //401
DX3DVERT( -0.7, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //402
DX3DVERT( -0.6, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //403
DX3DVERT( -0.5, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //404
DX3DVERT( -0.4, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //405
DX3DVERT( -0.3, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //406
DX3DVERT( -0.2, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //407
DX3DVERT( -0.1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //408
DX3DVERT( 1.49012e-008, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //409
DX3DVERT( 0.1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //410
DX3DVERT( 0.2, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //411
DX3DVERT( 0.3, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //412
DX3DVERT( 0.4, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //413
DX3DVERT( 0.5, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //414
DX3DVERT( 0.6, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //415
DX3DVERT( 0.7, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //416
DX3DVERT( 0.8, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //417
DX3DVERT( 0.9, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //418
DX3DVERT( 1, 0.9, -0 ) DX3DVNORM( 0, 0, -1 )  //419
DX3DVERT( -0.9, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //420
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //421
DX3DVERT( -0.8, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //422
DX3DVERT( -0.7, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //423
DX3DVERT( -0.6, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //424
DX3DVERT( -0.5, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //425
DX3DVERT( -0.4, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //426
DX3DVERT( -0.3, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //427
DX3DVERT( -0.2, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //428
DX3DVERT( -0.1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //429
DX3DVERT( 1.49012e-008, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //430
DX3DVERT( 0.1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //431
DX3DVERT( 0.2, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //432
DX3DVERT( 0.3, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //433
DX3DVERT( 0.4, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //434
DX3DVERT( 0.5, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //435
DX3DVERT( 0.6, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //436
DX3DVERT( 0.7, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //437
DX3DVERT( 0.8, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //438
DX3DVERT( 0.9, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //439
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //440
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_DEFAULT_MESH_UNDERRIGHT___default_mate_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_DEFAULT_MESH_UNDERRIGHT___default_mate_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 441 )
DX3DVERTEX_END


#else
#define vertex_DEFAULT_MESH_UNDERRIGHT___default_mate_0	NULL
#define vertexbuff_DEFAULT_MESH_UNDERRIGHT___default_mate_0	NULL
#endif




#if ((PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_DEFAULT_MESH_UNDERRIGHT___default_mate_0 )
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
	38, 40, 39, // 38 116
	40, 41, 39, // 39 119
	3, 2, 43, // 40 122
	2, 42, 43, // 41 125
	2, 5, 42, // 42 128
	5, 44, 42, // 43 131
	5, 7, 44, // 44 134
	7, 45, 44, // 45 137
	7, 9, 45, // 46 140
	9, 46, 45, // 47 143
	9, 11, 46, // 48 146
	11, 47, 46, // 49 149
	11, 13, 47, // 50 152
	13, 48, 47, // 51 155
	13, 15, 48, // 52 158
	15, 49, 48, // 53 161
	15, 17, 49, // 54 164
	17, 50, 49, // 55 167
	17, 19, 50, // 56 170
	19, 51, 50, // 57 173
	19, 21, 51, // 58 176
	21, 52, 51, // 59 179
	21, 23, 52, // 60 182
	23, 53, 52, // 61 185
	23, 25, 53, // 62 188
	25, 54, 53, // 63 191
	25, 27, 54, // 64 194
	27, 55, 54, // 65 197
	27, 29, 55, // 66 200
	29, 56, 55, // 67 203
	29, 31, 56, // 68 206
	31, 57, 56, // 69 209
	31, 33, 57, // 70 212
	33, 58, 57, // 71 215
	33, 35, 58, // 72 218
	35, 59, 58, // 73 221
	35, 37, 59, // 74 224
	37, 60, 59, // 75 227
	37, 39, 60, // 76 230
	39, 61, 60, // 77 233
	39, 41, 61, // 78 236
	41, 62, 61, // 79 239
	43, 42, 64, // 80 242
	42, 63, 64, // 81 245
	42, 44, 63, // 82 248
	44, 65, 63, // 83 251
	44, 45, 65, // 84 254
	45, 66, 65, // 85 257
	45, 46, 66, // 86 260
	46, 67, 66, // 87 263
	46, 47, 67, // 88 266
	47, 68, 67, // 89 269
	47, 48, 68, // 90 272
	48, 69, 68, // 91 275
	48, 49, 69, // 92 278
	49, 70, 69, // 93 281
	49, 50, 70, // 94 284
	50, 71, 70, // 95 287
	50, 51, 71, // 96 290
	51, 72, 71, // 97 293
	51, 52, 72, // 98 296
	52, 73, 72, // 99 299
	52, 53, 73, // 100 302
	53, 74, 73, // 101 305
	53, 54, 74, // 102 308
	54, 75, 74, // 103 311
	54, 55, 75, // 104 314
	55, 76, 75, // 105 317
	55, 56, 76, // 106 320
	56, 77, 76, // 107 323
	56, 57, 77, // 108 326
	57, 78, 77, // 109 329
	57, 58, 78, // 110 332
	58, 79, 78, // 111 335
	58, 59, 79, // 112 338
	59, 80, 79, // 113 341
	59, 60, 80, // 114 344
	60, 81, 80, // 115 347
	60, 61, 81, // 116 350
	61, 82, 81, // 117 353
	61, 62, 82, // 118 356
	62, 83, 82, // 119 359
	64, 63, 85, // 120 362
	63, 84, 85, // 121 365
	63, 65, 84, // 122 368
	65, 86, 84, // 123 371
	65, 66, 86, // 124 374
	66, 87, 86, // 125 377
	66, 67, 87, // 126 380
	67, 88, 87, // 127 383
	67, 68, 88, // 128 386
	68, 89, 88, // 129 389
	68, 69, 89, // 130 392
	69, 90, 89, // 131 395
	69, 70, 90, // 132 398
	70, 91, 90, // 133 401
	70, 71, 91, // 134 404
	71, 92, 91, // 135 407
	71, 72, 92, // 136 410
	72, 93, 92, // 137 413
	72, 73, 93, // 138 416
	73, 94, 93, // 139 419
	73, 74, 94, // 140 422
	74, 95, 94, // 141 425
	74, 75, 95, // 142 428
	75, 96, 95, // 143 431
	75, 76, 96, // 144 434
	76, 97, 96, // 145 437
	76, 77, 97, // 146 440
	77, 98, 97, // 147 443
	77, 78, 98, // 148 446
	78, 99, 98, // 149 449
	78, 79, 99, // 150 452
	79, 100, 99, // 151 455
	79, 80, 100, // 152 458
	80, 101, 100, // 153 461
	80, 81, 101, // 154 464
	81, 102, 101, // 155 467
	81, 82, 102, // 156 470
	82, 103, 102, // 157 473
	82, 83, 103, // 158 476
	83, 104, 103, // 159 479
	85, 84, 106, // 160 482
	84, 105, 106, // 161 485
	84, 86, 105, // 162 488
	86, 107, 105, // 163 491
	86, 87, 107, // 164 494
	87, 108, 107, // 165 497
	87, 88, 108, // 166 500
	88, 109, 108, // 167 503
	88, 89, 109, // 168 506
	89, 110, 109, // 169 509
	89, 90, 110, // 170 512
	90, 111, 110, // 171 515
	90, 91, 111, // 172 518
	91, 112, 111, // 173 521
	91, 92, 112, // 174 524
	92, 113, 112, // 175 527
	92, 93, 113, // 176 530
	93, 114, 113, // 177 533
	93, 94, 114, // 178 536
	94, 115, 114, // 179 539
	94, 95, 115, // 180 542
	95, 116, 115, // 181 545
	95, 96, 116, // 182 548
	96, 117, 116, // 183 551
	96, 97, 117, // 184 554
	97, 118, 117, // 185 557
	97, 98, 118, // 186 560
	98, 119, 118, // 187 563
	98, 99, 119, // 188 566
	99, 120, 119, // 189 569
	99, 100, 120, // 190 572
	100, 121, 120, // 191 575
	100, 101, 121, // 192 578
	101, 122, 121, // 193 581
	101, 102, 122, // 194 584
	102, 123, 122, // 195 587
	102, 103, 123, // 196 590
	103, 124, 123, // 197 593
	103, 104, 124, // 198 596
	104, 125, 124, // 199 599
	106, 105, 127, // 200 602
	105, 126, 127, // 201 605
	105, 107, 126, // 202 608
	107, 128, 126, // 203 611
	107, 108, 128, // 204 614
	108, 129, 128, // 205 617
	108, 109, 129, // 206 620
	109, 130, 129, // 207 623
	109, 110, 130, // 208 626
	110, 131, 130, // 209 629
	110, 111, 131, // 210 632
	111, 132, 131, // 211 635
	111, 112, 132, // 212 638
	112, 133, 132, // 213 641
	112, 113, 133, // 214 644
	113, 134, 133, // 215 647
	113, 114, 134, // 216 650
	114, 135, 134, // 217 653
	114, 115, 135, // 218 656
	115, 136, 135, // 219 659
	115, 116, 136, // 220 662
	116, 137, 136, // 221 665
	116, 117, 137, // 222 668
	117, 138, 137, // 223 671
	117, 118, 138, // 224 674
	118, 139, 138, // 225 677
	118, 119, 139, // 226 680
	119, 140, 139, // 227 683
	119, 120, 140, // 228 686
	120, 141, 140, // 229 689
	120, 121, 141, // 230 692
	121, 142, 141, // 231 695
	121, 122, 142, // 232 698
	122, 143, 142, // 233 701
	122, 123, 143, // 234 704
	123, 144, 143, // 235 707
	123, 124, 144, // 236 710
	124, 145, 144, // 237 713
	124, 125, 145, // 238 716
	125, 146, 145, // 239 719
	127, 126, 148, // 240 722
	126, 147, 148, // 241 725
	126, 128, 147, // 242 728
	128, 149, 147, // 243 731
	128, 129, 149, // 244 734
	129, 150, 149, // 245 737
	129, 130, 150, // 246 740
	130, 151, 150, // 247 743
	130, 131, 151, // 248 746
	131, 152, 151, // 249 749
	131, 132, 152, // 250 752
	132, 153, 152, // 251 755
	132, 133, 153, // 252 758
	133, 154, 153, // 253 761
	133, 134, 154, // 254 764
	134, 155, 154, // 255 767
	134, 135, 155, // 256 770
	135, 156, 155, // 257 773
	135, 136, 156, // 258 776
	136, 157, 156, // 259 779
	136, 137, 157, // 260 782
	137, 158, 157, // 261 785
	137, 138, 158, // 262 788
	138, 159, 158, // 263 791
	138, 139, 159, // 264 794
	139, 160, 159, // 265 797
	139, 140, 160, // 266 800
	140, 161, 160, // 267 803
	140, 141, 161, // 268 806
	141, 162, 161, // 269 809
	141, 142, 162, // 270 812
	142, 163, 162, // 271 815
	142, 143, 163, // 272 818
	143, 164, 163, // 273 821
	143, 144, 164, // 274 824
	144, 165, 164, // 275 827
	144, 145, 165, // 276 830
	145, 166, 165, // 277 833
	145, 146, 166, // 278 836
	146, 167, 166, // 279 839
	148, 147, 169, // 280 842
	147, 168, 169, // 281 845
	147, 149, 168, // 282 848
	149, 170, 168, // 283 851
	149, 150, 170, // 284 854
	150, 171, 170, // 285 857
	150, 151, 171, // 286 860
	151, 172, 171, // 287 863
	151, 152, 172, // 288 866
	152, 173, 172, // 289 869
	152, 153, 173, // 290 872
	153, 174, 173, // 291 875
	153, 154, 174, // 292 878
	154, 175, 174, // 293 881
	154, 155, 175, // 294 884
	155, 176, 175, // 295 887
	155, 156, 176, // 296 890
	156, 177, 176, // 297 893
	156, 157, 177, // 298 896
	157, 178, 177, // 299 899
	157, 158, 178, // 300 902
	158, 179, 178, // 301 905
	158, 159, 179, // 302 908
	159, 180, 179, // 303 911
	159, 160, 180, // 304 914
	160, 181, 180, // 305 917
	160, 161, 181, // 306 920
	161, 182, 181, // 307 923
	161, 162, 182, // 308 926
	162, 183, 182, // 309 929
	162, 163, 183, // 310 932
	163, 184, 183, // 311 935
	163, 164, 184, // 312 938
	164, 185, 184, // 313 941
	164, 165, 185, // 314 944
	165, 186, 185, // 315 947
	165, 166, 186, // 316 950
	166, 187, 186, // 317 953
	166, 167, 187, // 318 956
	167, 188, 187, // 319 959
	169, 168, 190, // 320 962
	168, 189, 190, // 321 965
	168, 170, 189, // 322 968
	170, 191, 189, // 323 971
	170, 171, 191, // 324 974
	171, 192, 191, // 325 977
	171, 172, 192, // 326 980
	172, 193, 192, // 327 983
	172, 173, 193, // 328 986
	173, 194, 193, // 329 989
	173, 174, 194, // 330 992
	174, 195, 194, // 331 995
	174, 175, 195, // 332 998
	175, 196, 195, // 333 1001
	175, 176, 196, // 334 1004
	176, 197, 196, // 335 1007
	176, 177, 197, // 336 1010
	177, 198, 197, // 337 1013
	177, 178, 198, // 338 1016
	178, 199, 198, // 339 1019
	178, 179, 199, // 340 1022
	179, 200, 199, // 341 1025
	179, 180, 200, // 342 1028
	180, 201, 200, // 343 1031
	180, 181, 201, // 344 1034
	181, 202, 201, // 345 1037
	181, 182, 202, // 346 1040
	182, 203, 202, // 347 1043
	182, 183, 203, // 348 1046
	183, 204, 203, // 349 1049
	183, 184, 204, // 350 1052
	184, 205, 204, // 351 1055
	184, 185, 205, // 352 1058
	185, 206, 205, // 353 1061
	185, 186, 206, // 354 1064
	186, 207, 206, // 355 1067
	186, 187, 207, // 356 1070
	187, 208, 207, // 357 1073
	187, 188, 208, // 358 1076
	188, 209, 208, // 359 1079
	190, 189, 211, // 360 1082
	189, 210, 211, // 361 1085
	189, 191, 210, // 362 1088
	191, 212, 210, // 363 1091
	191, 192, 212, // 364 1094
	192, 213, 212, // 365 1097
	192, 193, 213, // 366 1100
	193, 214, 213, // 367 1103
	193, 194, 214, // 368 1106
	194, 215, 214, // 369 1109
	194, 195, 215, // 370 1112
	195, 216, 215, // 371 1115
	195, 196, 216, // 372 1118
	196, 217, 216, // 373 1121
	196, 197, 217, // 374 1124
	197, 218, 217, // 375 1127
	197, 198, 218, // 376 1130
	198, 219, 218, // 377 1133
	198, 199, 219, // 378 1136
	199, 220, 219, // 379 1139
	199, 200, 220, // 380 1142
	200, 221, 220, // 381 1145
	200, 201, 221, // 382 1148
	201, 222, 221, // 383 1151
	201, 202, 222, // 384 1154
	202, 223, 222, // 385 1157
	202, 203, 223, // 386 1160
	203, 224, 223, // 387 1163
	203, 204, 224, // 388 1166
	204, 225, 224, // 389 1169
	204, 205, 225, // 390 1172
	205, 226, 225, // 391 1175
	205, 206, 226, // 392 1178
	206, 227, 226, // 393 1181
	206, 207, 227, // 394 1184
	207, 228, 227, // 395 1187
	207, 208, 228, // 396 1190
	208, 229, 228, // 397 1193
	208, 209, 229, // 398 1196
	209, 230, 229, // 399 1199
	211, 210, 232, // 400 1202
	210, 231, 232, // 401 1205
	210, 212, 231, // 402 1208
	212, 233, 231, // 403 1211
	212, 213, 233, // 404 1214
	213, 234, 233, // 405 1217
	213, 214, 234, // 406 1220
	214, 235, 234, // 407 1223
	214, 215, 235, // 408 1226
	215, 236, 235, // 409 1229
	215, 216, 236, // 410 1232
	216, 237, 236, // 411 1235
	216, 217, 237, // 412 1238
	217, 238, 237, // 413 1241
	217, 218, 238, // 414 1244
	218, 239, 238, // 415 1247
	218, 219, 239, // 416 1250
	219, 240, 239, // 417 1253
	219, 220, 240, // 418 1256
	220, 241, 240, // 419 1259
	220, 221, 241, // 420 1262
	221, 242, 241, // 421 1265
	221, 222, 242, // 422 1268
	222, 243, 242, // 423 1271
	222, 223, 243, // 424 1274
	223, 244, 243, // 425 1277
	223, 224, 244, // 426 1280
	224, 245, 244, // 427 1283
	224, 225, 245, // 428 1286
	225, 246, 245, // 429 1289
	225, 226, 246, // 430 1292
	226, 247, 246, // 431 1295
	226, 227, 247, // 432 1298
	227, 248, 247, // 433 1301
	227, 228, 248, // 434 1304
	228, 249, 248, // 435 1307
	228, 229, 249, // 436 1310
	229, 250, 249, // 437 1313
	229, 230, 250, // 438 1316
	230, 251, 250, // 439 1319
	232, 231, 253, // 440 1322
	231, 252, 253, // 441 1325
	231, 233, 252, // 442 1328
	233, 254, 252, // 443 1331
	233, 234, 254, // 444 1334
	234, 255, 254, // 445 1337
	234, 235, 255, // 446 1340
	235, 256, 255, // 447 1343
	235, 236, 256, // 448 1346
	236, 257, 256, // 449 1349
	236, 237, 257, // 450 1352
	237, 258, 257, // 451 1355
	237, 238, 258, // 452 1358
	238, 259, 258, // 453 1361
	238, 239, 259, // 454 1364
	239, 260, 259, // 455 1367
	239, 240, 260, // 456 1370
	240, 261, 260, // 457 1373
	240, 241, 261, // 458 1376
	241, 262, 261, // 459 1379
	241, 242, 262, // 460 1382
	242, 263, 262, // 461 1385
	242, 243, 263, // 462 1388
	243, 264, 263, // 463 1391
	243, 244, 264, // 464 1394
	244, 265, 264, // 465 1397
	244, 245, 265, // 466 1400
	245, 266, 265, // 467 1403
	245, 246, 266, // 468 1406
	246, 267, 266, // 469 1409
	246, 247, 267, // 470 1412
	247, 268, 267, // 471 1415
	247, 248, 268, // 472 1418
	248, 269, 268, // 473 1421
	248, 249, 269, // 474 1424
	249, 270, 269, // 475 1427
	249, 250, 270, // 476 1430
	250, 271, 270, // 477 1433
	250, 251, 271, // 478 1436
	251, 272, 271, // 479 1439
	253, 252, 274, // 480 1442
	252, 273, 274, // 481 1445
	252, 254, 273, // 482 1448
	254, 275, 273, // 483 1451
	254, 255, 275, // 484 1454
	255, 276, 275, // 485 1457
	255, 256, 276, // 486 1460
	256, 277, 276, // 487 1463
	256, 257, 277, // 488 1466
	257, 278, 277, // 489 1469
	257, 258, 278, // 490 1472
	258, 279, 278, // 491 1475
	258, 259, 279, // 492 1478
	259, 280, 279, // 493 1481
	259, 260, 280, // 494 1484
	260, 281, 280, // 495 1487
	260, 261, 281, // 496 1490
	261, 282, 281, // 497 1493
	261, 262, 282, // 498 1496
	262, 283, 282, // 499 1499
	262, 263, 283, // 500 1502
	263, 284, 283, // 501 1505
	263, 264, 284, // 502 1508
	264, 285, 284, // 503 1511
	264, 265, 285, // 504 1514
	265, 286, 285, // 505 1517
	265, 266, 286, // 506 1520
	266, 287, 286, // 507 1523
	266, 267, 287, // 508 1526
	267, 288, 287, // 509 1529
	267, 268, 288, // 510 1532
	268, 289, 288, // 511 1535
	268, 269, 289, // 512 1538
	269, 290, 289, // 513 1541
	269, 270, 290, // 514 1544
	270, 291, 290, // 515 1547
	270, 271, 291, // 516 1550
	271, 292, 291, // 517 1553
	271, 272, 292, // 518 1556
	272, 293, 292, // 519 1559
	274, 273, 295, // 520 1562
	273, 294, 295, // 521 1565
	273, 275, 294, // 522 1568
	275, 296, 294, // 523 1571
	275, 276, 296, // 524 1574
	276, 297, 296, // 525 1577
	276, 277, 297, // 526 1580
	277, 298, 297, // 527 1583
	277, 278, 298, // 528 1586
	278, 299, 298, // 529 1589
	278, 279, 299, // 530 1592
	279, 300, 299, // 531 1595
	279, 280, 300, // 532 1598
	280, 301, 300, // 533 1601
	280, 281, 301, // 534 1604
	281, 302, 301, // 535 1607
	281, 282, 302, // 536 1610
	282, 303, 302, // 537 1613
	282, 283, 303, // 538 1616
	283, 304, 303, // 539 1619
	283, 284, 304, // 540 1622
	284, 305, 304, // 541 1625
	284, 285, 305, // 542 1628
	285, 306, 305, // 543 1631
	285, 286, 306, // 544 1634
	286, 307, 306, // 545 1637
	286, 287, 307, // 546 1640
	287, 308, 307, // 547 1643
	287, 288, 308, // 548 1646
	288, 309, 308, // 549 1649
	288, 289, 309, // 550 1652
	289, 310, 309, // 551 1655
	289, 290, 310, // 552 1658
	290, 311, 310, // 553 1661
	290, 291, 311, // 554 1664
	291, 312, 311, // 555 1667
	291, 292, 312, // 556 1670
	292, 313, 312, // 557 1673
	292, 293, 313, // 558 1676
	293, 314, 313, // 559 1679
	295, 294, 316, // 560 1682
	294, 315, 316, // 561 1685
	294, 296, 315, // 562 1688
	296, 317, 315, // 563 1691
	296, 297, 317, // 564 1694
	297, 318, 317, // 565 1697
	297, 298, 318, // 566 1700
	298, 319, 318, // 567 1703
	298, 299, 319, // 568 1706
	299, 320, 319, // 569 1709
	299, 300, 320, // 570 1712
	300, 321, 320, // 571 1715
	300, 301, 321, // 572 1718
	301, 322, 321, // 573 1721
	301, 302, 322, // 574 1724
	302, 323, 322, // 575 1727
	302, 303, 323, // 576 1730
	303, 324, 323, // 577 1733
	303, 304, 324, // 578 1736
	304, 325, 324, // 579 1739
	304, 305, 325, // 580 1742
	305, 326, 325, // 581 1745
	305, 306, 326, // 582 1748
	306, 327, 326, // 583 1751
	306, 307, 327, // 584 1754
	307, 328, 327, // 585 1757
	307, 308, 328, // 586 1760
	308, 329, 328, // 587 1763
	308, 309, 329, // 588 1766
	309, 330, 329, // 589 1769
	309, 310, 330, // 590 1772
	310, 331, 330, // 591 1775
	310, 311, 331, // 592 1778
	311, 332, 331, // 593 1781
	311, 312, 332, // 594 1784
	312, 333, 332, // 595 1787
	312, 313, 333, // 596 1790
	313, 334, 333, // 597 1793
	313, 314, 334, // 598 1796
	314, 335, 334, // 599 1799
	316, 315, 337, // 600 1802
	315, 336, 337, // 601 1805
	315, 317, 336, // 602 1808
	317, 338, 336, // 603 1811
	317, 318, 338, // 604 1814
	318, 339, 338, // 605 1817
	318, 319, 339, // 606 1820
	319, 340, 339, // 607 1823
	319, 320, 340, // 608 1826
	320, 341, 340, // 609 1829
	320, 321, 341, // 610 1832
	321, 342, 341, // 611 1835
	321, 322, 342, // 612 1838
	322, 343, 342, // 613 1841
	322, 323, 343, // 614 1844
	323, 344, 343, // 615 1847
	323, 324, 344, // 616 1850
	324, 345, 344, // 617 1853
	324, 325, 345, // 618 1856
	325, 346, 345, // 619 1859
	325, 326, 346, // 620 1862
	326, 347, 346, // 621 1865
	326, 327, 347, // 622 1868
	327, 348, 347, // 623 1871
	327, 328, 348, // 624 1874
	328, 349, 348, // 625 1877
	328, 329, 349, // 626 1880
	329, 350, 349, // 627 1883
	329, 330, 350, // 628 1886
	330, 351, 350, // 629 1889
	330, 331, 351, // 630 1892
	331, 352, 351, // 631 1895
	331, 332, 352, // 632 1898
	332, 353, 352, // 633 1901
	332, 333, 353, // 634 1904
	333, 354, 353, // 635 1907
	333, 334, 354, // 636 1910
	334, 355, 354, // 637 1913
	334, 335, 355, // 638 1916
	335, 356, 355, // 639 1919
	337, 336, 358, // 640 1922
	336, 357, 358, // 641 1925
	336, 338, 357, // 642 1928
	338, 359, 357, // 643 1931
	338, 339, 359, // 644 1934
	339, 360, 359, // 645 1937
	339, 340, 360, // 646 1940
	340, 361, 360, // 647 1943
	340, 341, 361, // 648 1946
	341, 362, 361, // 649 1949
	341, 342, 362, // 650 1952
	342, 363, 362, // 651 1955
	342, 343, 363, // 652 1958
	343, 364, 363, // 653 1961
	343, 344, 364, // 654 1964
	344, 365, 364, // 655 1967
	344, 345, 365, // 656 1970
	345, 366, 365, // 657 1973
	345, 346, 366, // 658 1976
	346, 367, 366, // 659 1979
	346, 347, 367, // 660 1982
	347, 368, 367, // 661 1985
	347, 348, 368, // 662 1988
	348, 369, 368, // 663 1991
	348, 349, 369, // 664 1994
	349, 370, 369, // 665 1997
	349, 350, 370, // 666 2000
	350, 371, 370, // 667 2003
	350, 351, 371, // 668 2006
	351, 372, 371, // 669 2009
	351, 352, 372, // 670 2012
	352, 373, 372, // 671 2015
	352, 353, 373, // 672 2018
	353, 374, 373, // 673 2021
	353, 354, 374, // 674 2024
	354, 375, 374, // 675 2027
	354, 355, 375, // 676 2030
	355, 376, 375, // 677 2033
	355, 356, 376, // 678 2036
	356, 377, 376, // 679 2039
	358, 357, 379, // 680 2042
	357, 378, 379, // 681 2045
	357, 359, 378, // 682 2048
	359, 380, 378, // 683 2051
	359, 360, 380, // 684 2054
	360, 381, 380, // 685 2057
	360, 361, 381, // 686 2060
	361, 382, 381, // 687 2063
	361, 362, 382, // 688 2066
	362, 383, 382, // 689 2069
	362, 363, 383, // 690 2072
	363, 384, 383, // 691 2075
	363, 364, 384, // 692 2078
	364, 385, 384, // 693 2081
	364, 365, 385, // 694 2084
	365, 386, 385, // 695 2087
	365, 366, 386, // 696 2090
	366, 387, 386, // 697 2093
	366, 367, 387, // 698 2096
	367, 388, 387, // 699 2099
	367, 368, 388, // 700 2102
	368, 389, 388, // 701 2105
	368, 369, 389, // 702 2108
	369, 390, 389, // 703 2111
	369, 370, 390, // 704 2114
	370, 391, 390, // 705 2117
	370, 371, 391, // 706 2120
	371, 392, 391, // 707 2123
	371, 372, 392, // 708 2126
	372, 393, 392, // 709 2129
	372, 373, 393, // 710 2132
	373, 394, 393, // 711 2135
	373, 374, 394, // 712 2138
	374, 395, 394, // 713 2141
	374, 375, 395, // 714 2144
	375, 396, 395, // 715 2147
	375, 376, 396, // 716 2150
	376, 397, 396, // 717 2153
	376, 377, 397, // 718 2156
	377, 398, 397, // 719 2159
	379, 378, 400, // 720 2162
	378, 399, 400, // 721 2165
	378, 380, 399, // 722 2168
	380, 401, 399, // 723 2171
	380, 381, 401, // 724 2174
	381, 402, 401, // 725 2177
	381, 382, 402, // 726 2180
	382, 403, 402, // 727 2183
	382, 383, 403, // 728 2186
	383, 404, 403, // 729 2189
	383, 384, 404, // 730 2192
	384, 405, 404, // 731 2195
	384, 385, 405, // 732 2198
	385, 406, 405, // 733 2201
	385, 386, 406, // 734 2204
	386, 407, 406, // 735 2207
	386, 387, 407, // 736 2210
	387, 408, 407, // 737 2213
	387, 388, 408, // 738 2216
	388, 409, 408, // 739 2219
	388, 389, 409, // 740 2222
	389, 410, 409, // 741 2225
	389, 390, 410, // 742 2228
	390, 411, 410, // 743 2231
	390, 391, 411, // 744 2234
	391, 412, 411, // 745 2237
	391, 392, 412, // 746 2240
	392, 413, 412, // 747 2243
	392, 393, 413, // 748 2246
	393, 414, 413, // 749 2249
	393, 394, 414, // 750 2252
	394, 415, 414, // 751 2255
	394, 395, 415, // 752 2258
	395, 416, 415, // 753 2261
	395, 396, 416, // 754 2264
	396, 417, 416, // 755 2267
	396, 397, 417, // 756 2270
	397, 418, 417, // 757 2273
	397, 398, 418, // 758 2276
	398, 419, 418, // 759 2279
	400, 399, 421, // 760 2282
	399, 420, 421, // 761 2285
	399, 401, 420, // 762 2288
	401, 422, 420, // 763 2291
	401, 402, 422, // 764 2294
	402, 423, 422, // 765 2297
	402, 403, 423, // 766 2300
	403, 424, 423, // 767 2303
	403, 404, 424, // 768 2306
	404, 425, 424, // 769 2309
	404, 405, 425, // 770 2312
	405, 426, 425, // 771 2315
	405, 406, 426, // 772 2318
	406, 427, 426, // 773 2321
	406, 407, 427, // 774 2324
	407, 428, 427, // 775 2327
	407, 408, 428, // 776 2330
	408, 429, 428, // 777 2333
	408, 409, 429, // 778 2336
	409, 430, 429, // 779 2339
	409, 410, 430, // 780 2342
	410, 431, 430, // 781 2345
	410, 411, 431, // 782 2348
	411, 432, 431, // 783 2351
	411, 412, 432, // 784 2354
	412, 433, 432, // 785 2357
	412, 413, 433, // 786 2360
	413, 434, 433, // 787 2363
	413, 414, 434, // 788 2366
	414, 435, 434, // 789 2369
	414, 415, 435, // 790 2372
	415, 436, 435, // 791 2375
	415, 416, 436, // 792 2378
	416, 437, 436, // 793 2381
	416, 417, 437, // 794 2384
	417, 438, 437, // 795 2387
	417, 418, 438, // 796 2390
	418, 439, 438, // 797 2393
	418, 419, 439, // 798 2396
	419, 440, 439, // 799 2399
DX3DINDEX_END
#endif

#else
#define index_DEFAULT_MESH_UNDERRIGHT___default_mate_0	NULL
#endif




#if ((PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_DEFAULT_MESH_UNDERRIGHT___default_mate_0_INDEXSTRIP 	NULL
#endif




#if ((PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_DEFAULT_MESH_UNDERRIGHT___default_mate_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_DEFAULT_MESH_UNDERRIGHT___default_mate_0_VERTEXSTRIP 	NULL
#define vertexbuff_DEFAULT_MESH_UNDERRIGHT___default_mate_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_DEFAULT_MESH_UNDERRIGHT__ )
DX3DMODEL_START( model_DEFAULT_MESH_UNDERRIGHT___default_mate_0 )
DX3DMODEL_VERTEX( vertex_DEFAULT_MESH_UNDERRIGHT___default_mate_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_DEFAULT_MESH_UNDERRIGHT___default_mate_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 2400 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_default_mate )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_DEFAULT_MESH_UNDERRIGHT__, 1497206873 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_DEFAULT_MESH_UNDERRIGHT__ )
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
	2.1, -2.1, -0, 
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
	2.1, -2.1, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_TARGET_UPPER__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_TARGET_UNDER__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, -2.1, 0, 1
#endif



#if ((PT_TARGET_UNDER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_TARGET_UNDER___texn_target_0 == PT_TRILIST ) || ((PT_TARGET_UNDER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_TARGET_UNDER___texn_target_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VNBTUV, vertexbuff_TARGET_UNDER___texn_target_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, 0 ) DX3DVUV( 0.00199203, 0.998008 )  //0
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.998008, 0.998008 )  //1
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.998008, 0.00199199 )  //2
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.00199203, 0.00199199 )  //3
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_TARGET_UNDER___texn_target_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_TARGET_UNDER___texn_target_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VNBTUV, 4 )
DX3DVERTEX_END


#else
#define vertex_TARGET_UNDER___texn_target_0	NULL
#define vertexbuff_TARGET_UNDER___texn_target_0	NULL
#endif




#if ((PT_TARGET_UNDER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_TARGET_UNDER___texn_target_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_TARGET_UNDER___texn_target_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
DX3DINDEX_END
#endif

#else
#define index_TARGET_UNDER___texn_target_0	NULL
#endif




#if ((PT_TARGET_UNDER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_TARGET_UNDER___texn_target_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_TARGET_UNDER___texn_target_0_INDEXSTRIP 	NULL
#endif




#if ((PT_TARGET_UNDER___texn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_TARGET_UNDER___texn_target_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_TARGET_UNDER___texn_target_0_VERTEXSTRIP 	NULL
#define vertexbuff_TARGET_UNDER___texn_target_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_TARGET_UNDER__ )
DX3DMODEL_START( model_TARGET_UNDER___texn_target_0 )
DX3DMODEL_VERTEX( vertex_TARGET_UNDER___texn_target_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_TARGET_UNDER___texn_target_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 6 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_texn_target )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_TARGET_UNDER__, 2499199993 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_TARGET_UNDER__ )
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
	0, -2.1, -0, 
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
	0, -2.1, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_DEFAULT_MESH_UNDERRIGHT__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_DEFAULT_UNDERLEFT__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	-2.1, -2.1, 0, 1
#endif



#if ((PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_TRILIST ) || ((PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP))  || (PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest1_tst__ )
DX3DVERT_START( VN, vertexbuff_DEFAULT_UNDERLEFT___default_mate_0 )
DX3DVERT( -1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //0
DX3DVERT( 1, -1, -0 ) DX3DVNORM( 0, 0, -1 )  //1
DX3DVERT( 1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //2
DX3DVERT( -1, 1, -0 ) DX3DVNORM( 0, 0, -1 )  //3
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_DEFAULT_UNDERLEFT___default_mate_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_DEFAULT_UNDERLEFT___default_mate_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VN, 4 )
DX3DVERTEX_END


#else
#define vertex_DEFAULT_UNDERLEFT___default_mate_0	NULL
#define vertexbuff_DEFAULT_UNDERLEFT___default_mate_0	NULL
#endif




#if ((PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_TRILIST) ) || (PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_TRILIST )


#if ( !BINARY_LightingTest1_tst__ )
DX3DINDEX_START( index_DEFAULT_UNDERLEFT___default_mate_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
DX3DINDEX_END
#endif

#else
#define index_DEFAULT_UNDERLEFT___default_mate_0	NULL
#endif




#if ((PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_INDEXSTRIP) ) || (PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_DEFAULT_UNDERLEFT___default_mate_0_INDEXSTRIP 	NULL
#endif




#if ((PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest1_tst__ == PT_VERTEXSTRIP) ) || (PT_DEFAULT_UNDERLEFT___default_mate_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_DEFAULT_UNDERLEFT___default_mate_0_VERTEXSTRIP 	NULL
#define vertexbuff_DEFAULT_UNDERLEFT___default_mate_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_DEFAULT_UNDERLEFT__ )
DX3DMODEL_START( model_DEFAULT_UNDERLEFT___default_mate_0 )
DX3DMODEL_VERTEX( vertex_DEFAULT_UNDERLEFT___default_mate_0 )
#if ( !BINARY_LightingTest1_tst__ )
DX3DMODEL_INDEX( index_DEFAULT_UNDERLEFT___default_mate_0 )
#else
DX3DMODEL_INDEX( 0 )
#endif
DX3DMODEL_INDEXNUM( 6 )
DX3DMODEL_INDEXSTRIP( NULL )
DX3DMODEL_INDEXSTRIPNUM( 0 )
DX3DMODEL_VERTEXSTRIP( NULL )
DX3DMODEL_MATERIAL( material_default_mate )
DX3DMODEL_END
DX3DMODELTBL_END




DX3DOBJECT_START_HASH( object_DEFAULT_UNDERLEFT__, 3656569385 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_DEFAULT_UNDERLEFT__ )
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
	-2.1, -2.1, -0, 
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
	-2.1, -2.1, -0, 
	-0, -0, 0,                // -0, -0, 0
	1, 1, 1
)
DX3DOBJECT_NORMAL
DX3DOBJECT_FLG_iZiR( NONE )
DX3DOBJECT_CALLBACK( 0 )
DX3DOBJECT_SIBLING( object_TARGET_UNDER__ )
DX3DOBJECT_CHILD( object_NULL__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_Planes__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



DX3DOBJECT_START_HASH( object_Planes__, 3060835357 )
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
DX3DOBJECT_CHILD( object_DEFAULT_UNDERLEFT__ )
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
DX3DOBJECT_CHILD( object_Planes__ )
DX3DOBJECT_END



/////////////////////////////////////////////
// object_directionalLight1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	3.5243, 1.34345, 0, 1
#endif



DX3DOBJECT_START_HASH( object_directionalLight1__, 374561821 )
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
	3.5243, 1.34345, -0, 
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
	3.5243, 1.34345, -0, 
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
// object_ambientLight1__
/////////////////////////////////////////////
#if 0
	1, 0, 0, 0, 
	0, 1, 0, 0, 
	0, 0, 1, 0, 
	0, 0, 0, 1
#endif



DX3DOBJECT_START_HASH( object_ambientLight1__, 4128943645 )
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
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest1_tst___0, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest1_tst___1, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest1_tst___2, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest1_tst___3, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest1_tst___4, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest1_tst___5, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest1_tst___6, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest1_tst___7, 0 )




/////////////////////////////////////////////
#if ( !BINARY_LightingTest1_tst__ )
DX3DBINARYFILE( binaryfile_LightingTest1_tst__, NULL )
#else
DX3DBINARYFILE( binaryfile_LightingTest1_tst__, "Z:/toshi2/ATEST/ATEST/ATESTNameSpace/STAGE2-3_Beginners3DProgramming/Lighting/LightingFiles/" )
#endif


DX3DBINARYSIZE( binarysize_LightingTest1_tst__, 0 )


