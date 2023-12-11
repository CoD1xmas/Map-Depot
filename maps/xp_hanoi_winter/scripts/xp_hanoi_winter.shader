textures/xp_hanoi/effects/clip_nosight_wood
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

textures/xp_hanoi/effects/xphanoiwater
{
	qer_editorimage env/watercolor1_dn
	qer_trans .3
	tessSize 512
	q3map_globaltexture
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	surfaceparm nolightmap
	surfaceparm noshadow
	sort water
	{
		requires GL_MAX_TEXTURE_UNITS_ARB < 4 || ! GL_NV_texture_shader || ! GL_NV_register_combiners || cvar sys_cpuMHz < 980
		requires GL_MAX_TEXTURE_UNITS_ARB < 4 || ! GL_ATI_fragment_shader || cvar sys_cpuMHz < 980

		map textures/sfx/damwater.jpg
		tcMod Scroll .05 0
		tcMod scale 4 4
		rgbGen constlighting ( 0.65 0.68 0.69 )
	}
	{
		requires GL_MAX_TEXTURE_UNITS_ARB < 4 || ! GL_NV_texture_shader || ! GL_NV_register_combiners || cvar sys_cpuMHz < 980
		requires GL_MAX_TEXTURE_UNITS_ARB < 4 || ! GL_ATI_fragment_shader || cvar sys_cpuMHz < 980

		map textures/sfx/damwateroverlay.jpg
		tcMod scroll -0.01 .01
		tcMod scale 2 2
		tcMod turb 1.03 0.2 1.03
		rgbGen exactVertex
		blendFunc add
	nextbundle
		map textures/sfx/damwateroverlay.jpg
		tcMod scroll 0.02 .02
		tcMod scale 4 4
		tcMod turb 0.01 0.2 0.03
	}
	{
		requires GL_MAX_TEXTURE_UNITS_ARB < 4 || ! GL_NV_texture_shader || ! GL_NV_register_combiners
		requires GL_MAX_TEXTURE_UNITS_ARB < 4 || ! GL_ATI_fragment_shader
		requires GL_ARB_texture_cube_map
		requires GL_ARB_texture_env_combine
		requires GL_ARB_texture_env_dot3
		requires cvar sys_cpuMHz >= 980

		// img_width   img_height   world_width   world_height   wind_vel   wind_dir_x   wind_dir_y   wave_amplitude
		waterMap	64 64   37 37    76 1 0   .07
		rgbGen identity
		tcgen vector ( .001953125 0 0 ) ( 0 .001953125 0 )
		tcmod scroll .1 0
		blendfunc GL_SRC_ALPHA GL_ZERO
		depthwrite
	nextbundle
		cubemap $renormalize
		tcGen sunHalfAngle
		texEnvCombine
		{
			rgb = DOT3_RGBA_ARB(Cp, Ct)
		}
	}
	{
		requires GL_MAX_TEXTURE_UNITS_ARB < 4 || ! GL_NV_texture_shader || ! GL_NV_register_combiners
		requires GL_MAX_TEXTURE_UNITS_ARB < 4 || ! GL_ATI_fragment_shader
		requires GL_ARB_texture_cube_map
		requires GL_ARB_texture_env_combine
		requires GL_ARB_texture_env_dot3
		requires cvar sys_cpuMHz >= 980

		map $whiteimage
		alphaGen dot
		rgbGen constLighting ( 0 .05 .1 )
		blendfunc GL_ONE GL_SRC_ALPHA
		texEnvCombine
		{
			rgb = REPLACE(Cp)
			alpha = MODULATE(1-Ap,1-Ap)
		}
	nextbundle
		map $whiteimage
		texEnvCombine
		{
			const = ( .15 .2 .25 .2 ) * identityLighting
			rgb = INTERPOLATE_ARB(Cc, Cp, Ap)
			alpha = REPLACE(Ac)
		}
	}
	{
		requires GL_MAX_TEXTURE_UNITS_ARB >= 4
		requires GL_NV_texture_shader
		requires GL_ARB_texture_cube_map
		requires GL_NV_register_combiners
		requires cvar sys_cpuMHz >= 980

		// img_width   img_height   world_width   world_height   wind_vel   wind_dir_x   wind_dir_y   wave_amplitude
		waterMap	64 64   37 37    76 1 0   .06
		rgbGen vertex
		alphaGen const .35
		blendFunc blend
		tcgen vector ( .001953125 0 0 ) ( 0 .001953125 0 )
		tcmod scroll .07 0
	nextbundle
		cubemap $renormalize
		tcgen nv_dot_product_reflect_cube_map_eye_from_qs_1of3
		nvTexShader dot_product_cube_map_and_reflect_cube_map_eye_from_qs_1of3(expand tex0)
	nextbundle
		cubemap env/watercolor1
		tcgen nv_dot_product_reflect_cube_map_eye_from_qs_2of3
		nvTexShader dot_product_cube_map_and_reflect_cube_map_eye_from_qs_2of3(expand tex0)
	nextbundle
		cubemap env/stalin128
		tcgen nv_dot_product_reflect_cube_map_eye_from_qs_3of3
		nvTexShader dot_product_cube_map_and_reflect_cube_map_eye_from_qs_3of3(expand tex0)

		nvRegCombiners
		{
			{
				rgb
				{
					discard = tex2 * unsigned_invert(tex3.a);
					discard = tex3 * tex3.a;
					spare0 = sum();
				}
			}
			{
				rgb
				{
					spare0 = spare0 * col0;
				}
			}
			out.rgb = lerp(fog.a, spare0, fog);
			out.a = col0.a;
		}
	}
	{
		requires ! GL_NV_texture_shader || ! GL_NV_register_combiners
		requires GL_MAX_TEXTURE_UNITS_ARB >= 4
		requires GL_ATI_fragment_shader
		requires GL_ARB_texture_cube_map
		requires cvar sys_cpuMHz >= 980

		// img_width   img_height   world_width   world_height   wind_vel   wind_dir_x   wind_dir_y   wave_amplitude
		waterMap	64 64   37 37    76 1 0   .06
		rgbGen vertex
		alphaGen const .35
		blendFunc blend
		tcgen vector ( .001953125 0 0 ) ( 0 .001953125 0 )
		tcmod scroll .07 0
	nextbundle
		cubemap $renormalize
		tcgen vertexToEye
	nextbundle
		cubemap env/watercolor1
	nextbundle
		cubemap env/stalin128
/*
// do this only if the shader is not in world coordinates or it has vertex deformation
	nextbundle
		cubemap env/watercolor1
		tcgen tbn_x
	nextbundle
		cubemap env/stalin128
		tcgen tbn_y
	nextbundle
		cubemap $renormalize
		tcgen tbn_z
*/

		atiFragmentShader
		{
			//*****************************************************************************
			// phase 0

			//-------------------------------------
			// routing section

			r0 = tex(tc0);	// r0 = bumpmap surface normal
			r1 = tex(tc1);	// r1 = normalized eye-to-point direction vector in world space
/*
// do this only if the shader is not in world coordinates or it has vertex deformation
			r2 = copy(tc2);	// r2 = Tx,Bx,Nx
			r3 = copy(tc3);	// r3 = Ty,By,Ny
			r4 = copy(tc4);	// r4 = Tz,Bz,Nz
*/

			//-------------------------------------
			// operation section
			// need to calculate lookup vectors for the reflection cube map and the diffuse cube map in surface-local space
			// The diffuse cubemap vector is merely the surface normal from the bumpmap (ie, r0) rotated into world space
			// The specular vector is the world space eye vector reflected around the world space normal vector.
			// E + 2 (((E . N) N) / (N . N) - E) = 2 ((E . N) / (N . N)) N - E = (2 (E . N) N - (N . N) E) / N . N

// do this only if the shader is in world coordinates and has no vertex deformation
			// reflect eye vector in world space
			r3 = dot3(r1 * 2 - 1, r0 * 2 - 1);	// r3 = E . N
			r3 = mul(r3, r0 * 2 - 1);			// r3 = (E . N) N
			r3 = sub(r3 * 2, r1 * 2 - 1);		// r3 = 2 (E . N) N - E = reflection vector

/*
// do this only if the shader is not in world coordinates or it has vertex deformation
			// rotate per-pixel normal into world space
			r2.r = dot3(r0 * 2 - 1, r2);
			r2.g = dot3(r0 * 2 - 1, r3);
			r2.b = dot3(r0 * 2 - 1, r4);	// r2 = N

			// reflect eye vector in world space assuming N can be unnormalized
			// N can only be unnormalized if the TBN frame is different for 2 or more vertices of a triangle
			r3 = dot3(r2, r1 * 2 - 1);		// r3 = E . N
			r3 = mul(r3, r2);				// r3 = (E . N) N
			r0 = dot3(r2, r2);				// r0 = N . N
			r0 = mul(r0, r1 * 2 - 1);		// r0 = (N . N) E
			r3 = sub(r3 * 2, r0);			// r3 = 2 (E . N) N - (N . N) E = reflection vector
*/

			//*****************************************************************************
			// phase 1

			//-------------------------------------
			// routing section

			r2 = tex(r2);	// r2 = diffuse color
			r3 = tex(r3);	// r3 = specular color + fresnel alpha

			//-------------------------------------
			// operation section
			// need to store r0.rgba with the color and alpha

			r0 = lerp(r3.a, r3, r2);
			r0 = mul(r0, col0);
			r0.a = mov(col0.a);
		}
	}
}
