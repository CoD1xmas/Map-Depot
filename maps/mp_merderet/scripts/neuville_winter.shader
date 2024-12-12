textures/belgium/foliage/wintertreeline_c_foy

{
	surfaceparm foliage
	surfaceparm nomarks
	surfaceparm nolightmap

	qer_editorimage textures/belgium/foliage/foliage_snow@wintertreeline_c.dds
	{
		map textures/belgium/foliage/foliage_snow@wintertreeline_c.dds
		rgbGen const ( 0.4 0.45 0.5 )
		alphaFunc GE128
		depthWrite
		nextbundle
		map $whiteimage
	}
}

textures/belgium/foliage/singletree1_foy
{
	surfaceparm foliage
	surfaceparm nomarks
	surfaceparm nolightmap

	qer_editorimage textures/belgium/foliage/foliage_snow@singletree1.tga
	{
		map textures/belgium/foliage/foliage_snow@singletree1
		rgbGen const ( 0.4 0.45 0.5 )
		alphaFunc GE128
		depthWrite
		nextbundle
		map $whiteimage
	}
}

textures/ardennes/terrain/dirtysnow3
{
	surfaceparm snow
	surfaceparm noncolliding
	polygonOffset
	qer_editorimage textures/ardennes/terrain/snow@dirtysnow3.tga
	{
		map textures/ardennes/terrain/snow@dirtysnow3
		rgbGen exactVertex
		alphagen vertex
		blendFunc blend
	nextbundle
		map $lightmap
		blendFunc filter
	}
}