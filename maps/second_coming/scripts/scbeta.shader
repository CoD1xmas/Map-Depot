textures/seccoming/betawater
{
	qer_editorimage textures/seccoming/betawater
	qer_trans .9
	tessSize 512
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	surfaceparm noshadow
	sort water
	deformVertexes wave 512 sin .2 .7 .5 .1
	

	{
		map textures/seccoming/betawater.tga
		rgbGen exactVertex
		blendFunc blend
		tcMod scale 1 .5
		tcMod Scroll .008 0
	nextbundle
		map $lightmap
	}
	
}