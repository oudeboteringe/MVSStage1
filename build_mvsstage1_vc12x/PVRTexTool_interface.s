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
	.file	"PVRTexTool_interface.cpp"
	.section	.text.PVRTexToolAvailable,"ax",%progbits
	.align	2
	.global	PVRTexToolAvailable
	.hidden	PVRTexToolAvailable
	.type	PVRTexToolAvailable, %function
PVRTexToolAvailable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L8
.LPIC0:
	add	r4, pc, r4
	ldrb	r0, [r4]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L5
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #0
	ldmnefd	sp!, {r4, pc}
	add	r1, r4, #4
	mov	r2, #8
	ldr	r0, .L8+4
	bl	s3eExtGetHash(PLT)
	mov	r2, #1
	cmp	r0, #0
	moveq	r3, #1
	moveq	r0, r3
	streqb	r3, [r4]
	ldr	r3, .L8+8
	ldrneb	r0, [r4]	@ zero_extendqisi2
.LPIC5:
	add	r3, pc, r3
	strb	r2, [r3, #1]
	ldmfd	sp!, {r4, pc}
.L5:
	mov	r0, #1
	ldmfd	sp!, {r4, pc}
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC0+8)
	.word	-1229730132
	.word	.LANCHOR0-(.LPIC5+8)
	.size	PVRTexToolAvailable, .-PVRTexToolAvailable
	.section	.text.PVRTexToolConvert,"ax",%progbits
	.align	2
	.global	PVRTexToolConvert
	.hidden	PVRTexToolConvert
	.type	PVRTexToolConvert, %function
PVRTexToolConvert:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r4, .L18
.LPIC6:
	add	r4, pc, r4
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L15
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L13
.L16:
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L13:
	ldr	r0, .L18+4
	add	r1, r4, #4
	mov	r2, #8
	bl	s3eExtGetHash(PLT)
	cmp	r0, #0
	beq	.L17
	ldr	r1, .L18+8
	mov	r0, #2
.LPIC13:
	add	r1, pc, r1
	bl	s3eDebugAssertShow(PLT)
	ldrb	r2, [r4]	@ zero_extendqisi2
	mov	r3, #1
	strb	r3, [r4, #12]
	cmp	r2, #0
	strb	r3, [r4, #1]
	beq	.L16
.L15:
	ldr	r3, .L18+12
	mov	r0, r5
.LPIC7:
	add	r3, pc, r3
	ldr	r3, [r3, #4]
	blx	r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L17:
	mov	r3, #1
	strb	r3, [r4]
	strb	r3, [r4, #12]
	strb	r3, [r4, #1]
	b	.L15
.L19:
	.align	2
.L18:
	.word	.LANCHOR0-(.LPIC6+8)
	.word	-1229730132
	.word	.LC0-(.LPIC13+8)
	.word	.LANCHOR0-(.LPIC7+8)
	.size	PVRTexToolConvert, .-PVRTexToolConvert
	.section	.text.PVRTexToolFree,"ax",%progbits
	.align	2
	.global	PVRTexToolFree
	.hidden	PVRTexToolFree
	.type	PVRTexToolFree, %function
PVRTexToolFree:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r4, .L27
.LPIC17:
	add	r4, pc, r4
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L25
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	cmp	r3, #0
	ldmnefd	sp!, {r3, r4, r5, pc}
	ldr	r0, .L27+4
	add	r1, r4, #4
	mov	r2, #8
	bl	s3eExtGetHash(PLT)
	cmp	r0, #0
	bne	.L24
	mov	r3, #1
	strb	r3, [r4]
	strb	r3, [r4, #12]
	strb	r3, [r4, #1]
.L25:
	ldr	r3, .L27+8
	mov	r0, r5
.LPIC18:
	add	r3, pc, r3
	ldr	r3, [r3, #8]
	blx	r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L24:
	ldr	r1, .L27+12
	mov	r0, #2
.LPIC24:
	add	r1, pc, r1
	bl	s3eDebugAssertShow(PLT)
	ldrb	r2, [r4]	@ zero_extendqisi2
	mov	r3, #1
	strb	r3, [r4, #12]
	cmp	r2, #0
	strb	r3, [r4, #1]
	ldmeqfd	sp!, {r3, r4, r5, pc}
	b	.L25
.L28:
	.align	2
.L27:
	.word	.LANCHOR0-(.LPIC17+8)
	.word	-1229730132
	.word	.LANCHOR0-(.LPIC18+8)
	.word	.LC0-(.LPIC24+8)
	.size	PVRTexToolFree, .-PVRTexToolFree
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"error loading extension: PVRTexTool\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZL8g_GotExt, %object
	.size	_ZL8g_GotExt, 1
_ZL8g_GotExt:
	.space	1
	.type	_ZL15g_TriedNoMsgExt, %object
	.size	_ZL15g_TriedNoMsgExt, 1
_ZL15g_TriedNoMsgExt:
	.space	1
	.space	2
	.type	_ZL5g_Ext, %object
	.size	_ZL5g_Ext, 8
_ZL5g_Ext:
	.space	8
	.type	_ZL10g_TriedExt, %object
	.size	_ZL10g_TriedExt, 1
_ZL10g_TriedExt:
	.space	1
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
