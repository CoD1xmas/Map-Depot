textures/xp_stadium/sky/xp_stadium_sky
{
	qer_editorimage textures/xp_stadium/sky/xp_stadium_sky.tga
	surfaceparm sky
	surfaceparm nolightmap
	surfaceparm noimpact
	surfaceparm nomarks
	skyParms env/xp_stadium 512 -
	sunfile burnville
}

textures/xp_stadium/misc/stadium_colors
{
    	sort    additive
	polygonoffset
        surfaceparm nonsolid
	surfaceparm trans
	surfaceparm noshadow
    {
	map textures/xp_stadium/misc/stadium_colors.dds
	blendFunc GL_SRC_ALPHA GL_ONE
	rgbGen exactvertex
	tcMod scroll 0.075 0
    }
}

textures/xp_stadium/misc/stadium_barrier1
{
    	sort    additive
	polygonoffset
        surfaceparm nonsolid
	surfaceparm trans
	surfaceparm noshadow
    {
	map textures/xp_stadium/misc/stadium_barrier1.tga
	blendFunc GL_SRC_ALPHA GL_ONE
	rgbGen exactvertex
	tcMod scroll 0.1 0.5
    }
}

textures/xp_stadium/misc/gate
{
    	sort    additive
	polygonoffset
        surfaceparm nonsolid
	surfaceparm trans
	surfaceparm noshadow
    {
	map textures/xp_stadium/misc/gate.tga
	blendFunc GL_SRC_ALPHA GL_ONE
	rgbGen exactvertex
	tcMod scroll 0.00 -0.25
    }
    {
	map textures/xp_stadium/misc/gate1.tga
	blendFunc GL_SRC_ALPHA GL_ONE
	rgbGen exactvertex
	//tcMod scroll 0.03 -0.06
    }
}

