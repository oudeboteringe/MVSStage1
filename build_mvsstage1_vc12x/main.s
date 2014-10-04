	.arch armv6
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 2
	.file	"main.cpp"
	.section	.text.startup.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	bl	_Z8Iw2DInitv(PLT)
	ldr	r0, .L9
	ldr	r6, .L9+4
.LPIC0:
	add	r0, pc, r0
	bl	_Z15Iw2DCreateImagePKc(PLT)
.LPIC1:
	add	r6, pc, r6
	mov	r5, r0
	b	.L2
.L3:
	bl	_Z16Iw2DSurfaceClearj(PLT)
	ldr	r3, .L9+8
	mov	r0, r5
	ldr	r3, [r6, r3]
	ldmia	r3, {r1, r2}
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwFVec2(PLT)
	bl	_Z15Iw2DSurfaceShowv(PLT)
	mov	r0, r4
	bl	s3eDeviceYield(PLT)
.L2:
	bl	s3eDeviceCheckQuitRequest(PLT)
	subs	r4, r0, #0
	mov	r0, #-16777216
	beq	.L3
	cmp	r5, #0
	beq	.L4
	ldr	r3, [r5]
	mov	r0, r5
	ldr	r3, [r3, #16]
	blx	r3
.L4:
	bl	_Z13Iw2DTerminatev(PLT)
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, pc}
.L10:
	.align	2
.L9:
	.word	.LC0-(.LPIC0+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	_ZN8CIwFVec26g_ZeroE(GOT)
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"textures/foto_klein.png\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
