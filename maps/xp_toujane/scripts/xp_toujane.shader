textures/xp_toujane/sky/xp_toujane_sky
{
	qer_editorimage textures/sky/d-daydrop.tga
	surfaceparm sky
	surfaceparm nolightmap
	surfaceparm noimpact
	surfaceparm nomarks
	skyParms env/xptoujane 512 -
	sunfile mp_carentan
}

textures/xp_toujane/ground/tj_ground1
{
	surfaceparm dirt
	surfaceparm noncolliding
	polygonOffset
	qer_editorimage textures/xp_toujane/ground/tj_ground1.dds
	{
		map textures/xp_toujane/ground/tj_ground1
		rgbGen exactVertex
		alphagen vertex
		blendFunc blend
	nextbundle
		map $lightmap
		blendFunc filter
	}
}

textures/xp_toujane/ground/tj_ground2
{
	surfaceparm dirt
	surfaceparm noncolliding
	polygonOffset
	qer_editorimage textures/xp_toujane/ground/tj_ground2.dds
	{
		map textures/xp_toujane/ground/tj_ground2
		rgbGen exactVertex
		alphagen vertex
		blendFunc blend
	nextbundle
		map $lightmap
		blendFunc filter
	}
}

textures/xp_toujane/effects/clip_nosight_wood
{
	qer_trans 0.3
	surfaceparm wood
	//surfaceparm noimpact
	surfaceparm nodraw
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm monsterclip
	surfaceparm ai_nosight
	surfaceparm vehicleclip
	surfaceparm itemclip
	surfaceparm canshootclip
}