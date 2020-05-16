//skipped groundPlane_transform
//skipped Manipulator1
//skipped UniversalManip
//skipped CubeCompass
/////////////////////////////////////////////
// object_NOEXP_locator1__
/////////////////////////////////////////////


DX3DOBJECT_START_HASH( object_NOEXP_locator1__, 1922611517 )
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



/////////////////////////////////////////////
// object_TARGETBIG__
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




#if ((PT_TARGETBIG___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest2_tst__ == PT_TRILIST) ) || (PT_TARGETBIG___texsn_target_0 == PT_TRILIST ) || ((PT_TARGETBIG___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest2_tst__ == PT_INDEXSTRIP))  || (PT_TARGETBIG___texsn_target_0 == PT_INDEXSTRIP)


#if ( !BINARY_LightingTest2_tst__ )
DX3DVERT_START( VNBTUV, vertexbuff_TARGETBIG___texsn_target_0 )
DX3DVERT( -3, -3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, 0 ) DX3DVUV( 0.00199203, 0.998008 )  //0
DX3DVERT( 3, -3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.998008, 0.998008 )  //1
DX3DVERT( 3, 3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.998008, 0.00199199 )  //2
DX3DVERT( -3, 3, -0 ) DX3DVNORM( 0, 0, -1 ) DX3DVBINORM( 0, 1, 0 ) DX3DVTANNORM( 1, -0, -0 ) DX3DVUV( 0.00199203, 0.00199199 )  //3
DX3DVERT_END
#endif


DX3DVERTEX_START( vertex_TARGETBIG___texsn_target_0 )
#if ( !BINARY_LightingTest2_tst__ )
DX3DVERTEX_VERTBUFFER( vertexbuff_TARGETBIG___texsn_target_0 )
#else
DX3DVERTEX_VERTBUFFER( 0 )
#endif
DX3DVERTEX_VERTNUM_iZ( VNBTUV, 4 )
DX3DVERTEX_END


#else
#define vertex_TARGETBIG___texsn_target_0	NULL
#define vertexbuff_TARGETBIG___texsn_target_0	NULL
#endif




#if ((PT_TARGETBIG___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest2_tst__ == PT_TRILIST) ) || (PT_TARGETBIG___texsn_target_0 == PT_TRILIST )


#if ( !BINARY_LightingTest2_tst__ )
DX3DINDEX_START( index_TARGETBIG___texsn_target_0 )
	0, 1, 3, // 0 2
	1, 2, 3, // 1 5
DX3DINDEX_END
#endif

#else
#define index_TARGETBIG___texsn_target_0	NULL
#endif




#if ((PT_TARGETBIG___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest2_tst__ == PT_INDEXSTRIP) ) || (PT_TARGETBIG___texsn_target_0 == PT_INDEXSTRIP )


//NO INDEX STRIP
#else
#define index_TARGETBIG___texsn_target_0_INDEXSTRIP 	NULL
#endif




#if ((PT_TARGETBIG___texsn_target_0 == PT_FOLLOWALL) && (PT_ALL_LightingTest2_tst__ == PT_VERTEXSTRIP) ) || (PT_TARGETBIG___texsn_target_0 == PT_VERTEXSTRIP )


//NO VERTEX STRIP
#else
#define vertex_TARGETBIG___texsn_target_0_VERTEXSTRIP 	NULL
#define vertexbuff_TARGETBIG___texsn_target_0_VERTEXSTRIP 	NULL
#endif




DX3DMODELTBL_START( modeltbl_TARGETBIG__ )
DX3DMODEL_START( model_TARGETBIG___texsn_target_0 )
DX3DMODEL_VERTEX( vertex_TARGETBIG___texsn_target_0 )
#if ( !BINARY_LightingTest2_tst__ )
DX3DMODEL_INDEX( index_TARGETBIG___texsn_target_0 )
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




DX3DOBJECT_START_HASH( object_TARGETBIG__, 3816292717 )
DX3DOBJECT_ROTORDER( RO_XYZ )
DX3DOBJECT_MODEL( modeltbl_TARGETBIG__ )
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
DX3DOBJECT_SIBLING( object_NOEXP_locator1__ )
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
DX3DOBJECT_CHILD( object_TARGETBIG__ )
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
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest2_tst___0, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest2_tst___1, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest2_tst___2, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest2_tst___3, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest2_tst___4, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest2_tst___5, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest2_tst___6, 0 )
DX3DOBJECT_JOINTCOUNT( jointcnt_LightingTest2_tst___7, 0 )




/////////////////////////////////////////////
#if ( !BINARY_LightingTest2_tst__ )
DX3DBINARYFILE( binaryfile_LightingTest2_tst__, NULL )
#else
DX3DBINARYFILE( binaryfile_LightingTest2_tst__, "Z:/toshi2/ATEST/ATEST/ATESTNameSpace/STAGE2-3_Beginners3DProgramming/Lighting/LightingFiles/" )
#endif


DX3DBINARYSIZE( binarysize_LightingTest2_tst__, 0 )


