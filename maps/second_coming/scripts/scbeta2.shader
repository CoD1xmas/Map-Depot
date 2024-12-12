textures/seccoming/sewertop
{

	qer_editorimage textures/seccoming/sewertop.tga
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	surfaceparm noshadow
	nopicmip
	polygonoffset
	sort additive
	{
		map textures/seccoming/sewerwall.tga
		tcGen vector ( 0.0078125 0 0 ) ( 0 0.0078125 0)
//		tcGen vector ( 0.0078125 0.0078125 0 ) ( 0 0.0078125 0)
		tcMod scroll 0.03 -0.03
		rgbGen vertex
		alphaGen vertex
		blendFunc GL_SRC_ALPHA GL_ONE
	nextbundle
		map textures/seccoming/sewerwall.tga
		tcGen vector ( 0.0078125 0 0 ) ( 0 0.0078125 0)
//		tcGen vector ( 0.0078125 0.0078125 0 ) ( 0 0.0078125 0)
		tcMod scale -0.95 0.95
		tcMod scroll 0.03 -0.03
	}
}
