	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-m4
	.eabi_attribute	6, 13	@ Tag_CPU_arch
	.eabi_attribute	7, 77	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	fpv4-sp-d16
	.eabi_attribute	27, 1	@ Tag_ABI_HardFP_use
	.eabi_attribute	36, 1	@ Tag_FP_HP_extension
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"model"
	.globl	model_Predict           @ -- Begin function model_Predict
	.p2align	2
	.type	model_Predict,%function
	.code	16                      @ @model_Predict
	.thumb_func
model_Predict:
	.fnstart
@ %bb.0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	.vsave	{d8}
	vpush	{d8}
	ldr	r5, .LCPI0_22
	vldr	s16, .LCPI0_1
	vldr	s0, .LCPI0_0
	vldr	s3, .LCPI0_2
	vldr	s5, .LCPI0_3
	mov	r4, r2
.LPC0_0:
	add	r5, pc
	vmov.f32	s7, s16
	str	r0, [r5]
	vldr	s2, [r1]
	vldr	s4, [r1, #4]
	vldr	s6, [r1, #8]
	vldr	s8, [r1, #12]
	vldr	s10, [r1, #16]
	vldr	s12, [r1, #20]
	vldr	s14, [r1, #24]
	vldr	s1, [r1, #28]
	vmla.f32	s7, s2, s0
	vldr	s0, .LCPI0_4
	vldr	s2, .LCPI0_5
	vmla.f32	s7, s4, s3
	vldr	s4, .LCPI0_6
	vldr	s3, .LCPI0_10
	vmla.f32	s7, s6, s5
	vldr	s6, .LCPI0_7
	vldr	s5, .LCPI0_11
	vmla.f32	s7, s8, s0
	vldr	s0, .LCPI0_8
	vmla.f32	s7, s10, s2
	vmla.f32	s7, s12, s4
	vmla.f32	s7, s14, s6
	vmla.f32	s7, s1, s0
	vldr	s0, .LCPI0_9
	vstr	s7, [r5, #12]
	vmov.f32	s7, s16
	vldr	s2, [r1]
	vldr	s4, [r1, #4]
	vldr	s6, [r1, #8]
	vldr	s8, [r1, #12]
	vldr	s10, [r1, #16]
	vldr	s12, [r1, #20]
	vldr	s14, [r1, #24]
	vldr	s1, [r1, #28]
	vmla.f32	s7, s2, s0
	vldr	s0, .LCPI0_12
	vldr	s2, .LCPI0_13
	vmla.f32	s7, s4, s3
	vldr	s4, .LCPI0_14
	vmla.f32	s7, s6, s5
	vldr	s6, .LCPI0_15
	vmla.f32	s7, s8, s0
	vldr	s0, .LCPI0_16
	vmla.f32	s7, s10, s2
	vmla.f32	s7, s12, s4
	vmla.f32	s7, s14, s6
	vldr	s6, .LCPI0_18
	vmla.f32	s7, s1, s0
	vldr	s0, .LCPI0_17
	vstr	s7, [r5, #16]
	ldr	r0, [r5, #12]
	str	r0, [r5, #20]
	ldr	r0, [r5, #16]
	str	r0, [r5, #24]
	ldr	r0, .LCPI0_23
.LPC0_1:
	add	r0, pc
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	str	r0, [r5, #32]
	str	r1, [r5, #28]
	vldr	s2, [r5, #20]
	vldr	s4, [r5, #24]
	vadd.f32	s2, s2, s6
	vadd.f32	s0, s4, s0
	vmov	r0, s2
	vstr	s0, [r5, #8]
	bl	tanhf
	ldr	r6, .LCPI0_24
.LPC0_2:
	add	r6, pc
	str	r0, [r6]
	ldr	r0, [r5, #8]
	bl	tanhf
	ldr	r1, .LCPI0_25
	vldr	s0, .LCPI0_19
	vldr	s2, [r6]
	vldr	s4, .LCPI0_20
	vldr	s6, .LCPI0_21
	vmov	s8, r0
	vmla.f32	s16, s2, s0
.LPC0_3:
	add	r1, pc
	vmla.f32	s16, s8, s4
	ldr	r1, [r1]
	vadd.f32	s0, s16, s6
	vmov	r0, s0
	str	r1, [r5, #4]
	bl	tanhf
	cmp	r4, #0
	itt	ne
	vmovne	s0, r0
	vstrne	s0, [r4]
	vpop	{d8}
	pop	{r4, r5, r6, pc}
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	1059994083              @ float 0.680570781
.LCPI0_1:
	.long	0                       @ float 0
.LCPI0_2:
	.long	1071153880              @ float 1.69149303
.LCPI0_3:
	.long	3198811222              @ float -0.332003295
.LCPI0_4:
	.long	1033569058              @ float 0.0756895691
.LCPI0_5:
	.long	1050145405              @ float 0.296771914
.LCPI0_6:
	.long	1069748628              @ float 1.52397394
.LCPI0_7:
	.long	1066573020              @ float 1.14541197
.LCPI0_8:
	.long	3172537387              @ float -0.0373727493
.LCPI0_9:
	.long	3188707348              @ float -0.140442193
.LCPI0_10:
	.long	1068763487              @ float 1.40653598
.LCPI0_11:
	.long	3202470373              @ float -0.441054493
.LCPI0_12:
	.long	3215959532              @ float -1.37225103
.LCPI0_13:
	.long	3219282008              @ float -1.76832104
.LCPI0_14:
	.long	1065583668              @ float 1.02747202
.LCPI0_15:
	.long	3204397163              @ float -0.49847731
.LCPI0_16:
	.long	3214148641              @ float -1.156376
.LCPI0_17:
	.long	3214944938              @ float -1.251302
.LCPI0_18:
	.long	3220901143              @ float -1.96133697
.LCPI0_19:
	.long	1085645536              @ float 5.6761322
.LCPI0_20:
	.long	1061192800              @ float 0.752019882
.LCPI0_21:
	.long	3207179260              @ float -0.662780523
.LCPI0_22:
	.long	.L_MergedGlobals-(.LPC0_0+4)
.LCPI0_23:
	.long	c_1-(.LPC0_1+4)
.LCPI0_24:
	.long	g_4.0-(.LPC0_2+4)
.LCPI0_25:
	.long	c_3-(.LPC0_3+4)
.Lfunc_end0:
	.size	model_Predict, .Lfunc_end0-model_Predict
	.fnend
                                        @ -- End function
	.globl	model_Reset             @ -- Begin function model_Reset
	.p2align	1
	.type	model_Reset,%function
	.code	16                      @ @model_Reset
	.thumb_func
model_Reset:
	.fnstart
@ %bb.0:                                @ %entry
	bx	lr
.Lfunc_end1:
	.size	model_Reset, .Lfunc_end1-model_Reset
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	model_GetInputSize      @ -- Begin function model_GetInputSize
	.p2align	1
	.type	model_GetInputSize,%function
	.code	16                      @ @model_GetInputSize
	.thumb_func
model_GetInputSize:
	.fnstart
@ %bb.0:                                @ %entry
	movs	r1, #0
	cmp	r0, #0
	it	eq
	moveq	r1, #1
	lsls	r0, r1, #3
	bx	lr
.Lfunc_end2:
	.size	model_GetInputSize, .Lfunc_end2-model_GetInputSize
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	model_GetOutputSize     @ -- Begin function model_GetOutputSize
	.p2align	1
	.type	model_GetOutputSize,%function
	.code	16                      @ @model_GetOutputSize
	.thumb_func
model_GetOutputSize:
	.fnstart
@ %bb.0:                                @ %entry
	movs	r1, #0
	cmp	r0, #0
	it	eq
	moveq	r1, #1
	mov	r0, r1
	bx	lr
.Lfunc_end3:
	.size	model_GetOutputSize, .Lfunc_end3-model_GetOutputSize
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	model_GetNumNodes       @ -- Begin function model_GetNumNodes
	.p2align	1
	.type	model_GetNumNodes,%function
	.code	16                      @ @model_GetNumNodes
	.thumb_func
model_GetNumNodes:
	.fnstart
@ %bb.0:                                @ %entry
	movs	r0, #15
	bx	lr
.Lfunc_end4:
	.size	model_GetNumNodes, .Lfunc_end4-model_GetNumNodes
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	model_GetInputShape     @ -- Begin function model_GetInputShape
	.p2align	1
	.type	model_GetInputShape,%function
	.code	16                      @ @model_GetInputShape
	.thumb_func
model_GetInputShape:
	.fnstart
@ %bb.0:                                @ %entry
	cbz	r0, .LBB5_2
@ %bb.1:                                @ %ElseBlock0
	movs	r0, #0
	strd	r0, r0, [r1]
	str	r0, [r1, #8]
	bx	lr
.LBB5_2:                                @ %ThenBlock0
	movs	r0, #1
	movs	r2, #8
	strd	r0, r0, [r1]
	str	r2, [r1, #8]
	bx	lr
.Lfunc_end5:
	.size	model_GetInputShape, .Lfunc_end5-model_GetInputShape
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	model_GetOutputShape    @ -- Begin function model_GetOutputShape
	.p2align	1
	.type	model_GetOutputShape,%function
	.code	16                      @ @model_GetOutputShape
	.thumb_func
model_GetOutputShape:
	.fnstart
@ %bb.0:                                @ %entry
	cmp	r0, #0
	ite	eq
	moveq	r0, #1
	movne	r0, #0
	str	r0, [r1]
	str	r0, [r1, #4]
	str	r0, [r1, #8]
	bx	lr
.Lfunc_end6:
	.size	model_GetOutputShape, .Lfunc_end6-model_GetOutputShape
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	model_GetMetadata       @ -- Begin function model_GetMetadata
	.p2align	2
	.type	model_GetMetadata,%function
	.code	16                      @ @model_GetMetadata
	.thumb_func
model_GetMetadata:
	.fnstart
@ %bb.0:                                @ %entry
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .LCPI7_35
	mov	r1, r0
	ldr	r0, .LCPI7_36
	movs	r3, #0
.LPC7_0:
	add	r2, pc
.LPC7_1:
	add	r0, pc
	b	.LBB7_3
	.p2align	2
@ %bb.1:
.LCPI7_35:
	.long	.L__unnamed_1-(.LPC7_0+4)
	.p2align	2
@ %bb.2:
.LCPI7_36:
	.long	.L__unnamed_2-(.LPC7_1+4)
.LBB7_3:                                @ %loop.body.i
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r3]
	ldrb	r6, [r1, r3]
	orrs.w	r5, r6, r7
	beq.w	.LBB7_155
@ %bb.4:                                @ %if.after.i
                                        @   in Loop: Header=BB7_3 Depth=1
	cmp	r6, r7
	bne	.LBB7_7
@ %bb.5:                                @ %if.after.i
                                        @   in Loop: Header=BB7_3 Depth=1
	cmp	r3, #8
	beq	.LBB7_7
@ %bb.6:                                @ %if.after.i
                                        @   in Loop: Header=BB7_3 Depth=1
	adds	r3, #1
	cmp	r6, #0
	bne	.LBB7_3
.LBB7_7:                                @ %loop.body.i258.preheader
	ldr	r0, .LCPI7_37
	movs	r3, #0
.LPC7_2:
	add	r0, pc
	b	.LBB7_9
	.p2align	2
@ %bb.8:
.LCPI7_37:
	.long	.L__unnamed_3-(.LPC7_2+4)
.LBB7_9:                                @ %loop.body.i258
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r3]
	ldrb	r6, [r1, r3]
	orrs.w	r5, r6, r7
	beq.w	.LBB7_155
@ %bb.10:                               @ %if.after.i259
                                        @   in Loop: Header=BB7_9 Depth=1
	cmp	r6, r7
	bne	.LBB7_13
@ %bb.11:                               @ %if.after.i259
                                        @   in Loop: Header=BB7_9 Depth=1
	cmp	r3, #8
	beq	.LBB7_13
@ %bb.12:                               @ %if.after.i259
                                        @   in Loop: Header=BB7_9 Depth=1
	adds	r3, #1
	cmp	r6, #0
	bne	.LBB7_9
.LBB7_13:                               @ %loop.body.i253.preheader
	ldr	r3, .LCPI7_38
	ldr	r0, .LCPI7_39
	movs	r5, #0
.LPC7_3:
	add	r3, pc
.LPC7_4:
	add	r0, pc
	b	.LBB7_16
	.p2align	2
@ %bb.14:
.LCPI7_38:
	.long	.L__unnamed_4-(.LPC7_3+4)
	.p2align	2
@ %bb.15:
.LCPI7_39:
	.long	.L__unnamed_5-(.LPC7_4+4)
.LBB7_16:                               @ %loop.body.i253
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r3, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.17:                               @ %if.after.i254
                                        @   in Loop: Header=BB7_16 Depth=1
	cmp	r6, r7
	bne	.LBB7_20
@ %bb.18:                               @ %if.after.i254
                                        @   in Loop: Header=BB7_16 Depth=1
	cmp	r5, #7
	beq	.LBB7_20
@ %bb.19:                               @ %if.after.i254
                                        @   in Loop: Header=BB7_16 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_16
.LBB7_20:                               @ %loop.body.i248.preheader
	ldr	r0, .LCPI7_40
	movs	r6, #0
.LPC7_5:
	add	r0, pc
	b	.LBB7_22
	.p2align	2
@ %bb.21:
.LCPI7_40:
	.long	.L__unnamed_6-(.LPC7_5+4)
.LBB7_22:                               @ %loop.body.i248
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r6]
	ldrb	r5, [r1, r6]
	orrs.w	r4, r5, r7
	beq.w	.LBB7_155
@ %bb.23:                               @ %if.after.i249
                                        @   in Loop: Header=BB7_22 Depth=1
	cmp	r5, r7
	bne	.LBB7_26
@ %bb.24:                               @ %if.after.i249
                                        @   in Loop: Header=BB7_22 Depth=1
	cmp	r6, #8
	beq	.LBB7_26
@ %bb.25:                               @ %if.after.i249
                                        @   in Loop: Header=BB7_22 Depth=1
	adds	r6, #1
	cmp	r5, #0
	bne	.LBB7_22
.LBB7_26:                               @ %loop.body.i243.preheader
	ldr	r0, .LCPI7_41
	movs	r6, #0
.LPC7_6:
	add	r0, pc
	b	.LBB7_28
	.p2align	2
@ %bb.27:
.LCPI7_41:
	.long	.L__unnamed_3-(.LPC7_6+4)
.LBB7_28:                               @ %loop.body.i243
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r6]
	ldrb	r5, [r1, r6]
	orrs.w	r4, r5, r7
	beq.w	.LBB7_155
@ %bb.29:                               @ %if.after.i244
                                        @   in Loop: Header=BB7_28 Depth=1
	cmp	r5, r7
	bne	.LBB7_32
@ %bb.30:                               @ %if.after.i244
                                        @   in Loop: Header=BB7_28 Depth=1
	cmp	r6, #8
	beq	.LBB7_32
@ %bb.31:                               @ %if.after.i244
                                        @   in Loop: Header=BB7_28 Depth=1
	adds	r6, #1
	cmp	r5, #0
	bne	.LBB7_28
.LBB7_32:                               @ %loop.body.i238.preheader
	ldr	r0, .LCPI7_7
	movs	r6, #0
.LPC7_7:
	add	r0, pc
.LBB7_33:                               @ %loop.body.i238
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r6]
	ldrb	r5, [r1, r6]
	orrs.w	r4, r5, r7
	beq.w	.LBB7_155
@ %bb.34:                               @ %if.after.i239
                                        @   in Loop: Header=BB7_33 Depth=1
	cmp	r5, r7
	bne	.LBB7_37
@ %bb.35:                               @ %if.after.i239
                                        @   in Loop: Header=BB7_33 Depth=1
	cmp	r6, #8
	beq	.LBB7_37
@ %bb.36:                               @ %if.after.i239
                                        @   in Loop: Header=BB7_33 Depth=1
	adds	r6, #1
	cmp	r5, #0
	bne	.LBB7_33
.LBB7_37:                               @ %loop.body.i233.preheader
	ldr	r0, .LCPI7_8
	movs	r6, #0
.LPC7_8:
	add	r0, pc
.LBB7_38:                               @ %loop.body.i233
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r3, r6]
	ldrb	r5, [r1, r6]
	orrs.w	r4, r5, r7
	beq.w	.LBB7_155
@ %bb.39:                               @ %if.after.i234
                                        @   in Loop: Header=BB7_38 Depth=1
	cmp	r5, r7
	bne	.LBB7_42
@ %bb.40:                               @ %if.after.i234
                                        @   in Loop: Header=BB7_38 Depth=1
	cmp	r6, #7
	beq	.LBB7_42
@ %bb.41:                               @ %if.after.i234
                                        @   in Loop: Header=BB7_38 Depth=1
	adds	r6, #1
	cmp	r5, #0
	bne	.LBB7_38
.LBB7_42:                               @ %loop.body.i228.preheader
	ldr	r0, .LCPI7_9
	movs	r6, #0
.LPC7_9:
	add	r0, pc
.LBB7_43:                               @ %loop.body.i228
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r6]
	ldrb	r5, [r1, r6]
	orrs.w	r4, r5, r7
	beq.w	.LBB7_155
@ %bb.44:                               @ %if.after.i229
                                        @   in Loop: Header=BB7_43 Depth=1
	cmp	r5, r7
	bne	.LBB7_47
@ %bb.45:                               @ %if.after.i229
                                        @   in Loop: Header=BB7_43 Depth=1
	cmp	r6, #8
	beq	.LBB7_47
@ %bb.46:                               @ %if.after.i229
                                        @   in Loop: Header=BB7_43 Depth=1
	adds	r6, #1
	cmp	r5, #0
	bne	.LBB7_43
.LBB7_47:                               @ %loop.body.i223.preheader
	ldr	r0, .LCPI7_10
	movs	r6, #0
.LPC7_10:
	add	r0, pc
.LBB7_48:                               @ %loop.body.i223
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r6]
	ldrb	r5, [r1, r6]
	orrs.w	r4, r5, r7
	beq.w	.LBB7_155
@ %bb.49:                               @ %if.after.i224
                                        @   in Loop: Header=BB7_48 Depth=1
	cmp	r5, r7
	bne	.LBB7_52
@ %bb.50:                               @ %if.after.i224
                                        @   in Loop: Header=BB7_48 Depth=1
	cmp	r6, #8
	beq	.LBB7_52
@ %bb.51:                               @ %if.after.i224
                                        @   in Loop: Header=BB7_48 Depth=1
	adds	r6, #1
	cmp	r5, #0
	bne	.LBB7_48
.LBB7_52:                               @ %loop.body.i218.preheader
	ldr	r0, .LCPI7_11
	movs	r6, #0
.LPC7_11:
	add	r0, pc
.LBB7_53:                               @ %loop.body.i218
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r3, r6]
	ldrb	r5, [r1, r6]
	orrs.w	r4, r5, r7
	beq.w	.LBB7_155
@ %bb.54:                               @ %if.after.i219
                                        @   in Loop: Header=BB7_53 Depth=1
	cmp	r5, r7
	bne	.LBB7_57
@ %bb.55:                               @ %if.after.i219
                                        @   in Loop: Header=BB7_53 Depth=1
	cmp	r6, #7
	beq	.LBB7_57
@ %bb.56:                               @ %if.after.i219
                                        @   in Loop: Header=BB7_53 Depth=1
	adds	r6, #1
	cmp	r5, #0
	bne	.LBB7_53
.LBB7_57:                               @ %loop.body.i213.preheader
	ldr	r0, .LCPI7_12
	movs	r5, #0
.LPC7_12:
	add	r0, pc
	mov	r12, r0
	ldr	r0, .LCPI7_13
.LPC7_13:
	add	r0, pc
.LBB7_58:                               @ %loop.body.i213
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r12
	ldrb	r6, [r1, r5]
	ldrb	r7, [r7, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.59:                               @ %if.after.i214
                                        @   in Loop: Header=BB7_58 Depth=1
	cmp	r6, r7
	bne	.LBB7_62
@ %bb.60:                               @ %if.after.i214
                                        @   in Loop: Header=BB7_58 Depth=1
	cmp	r5, #7
	beq	.LBB7_62
@ %bb.61:                               @ %if.after.i214
                                        @   in Loop: Header=BB7_58 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_58
.LBB7_62:                               @ %loop.body.i208.preheader
	ldr	r0, .LCPI7_14
	movs	r6, #0
.LPC7_14:
	add	r0, pc
.LBB7_63:                               @ %loop.body.i208
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r6]
	ldrb	r5, [r1, r6]
	orrs.w	r4, r5, r7
	beq.w	.LBB7_155
@ %bb.64:                               @ %if.after.i209
                                        @   in Loop: Header=BB7_63 Depth=1
	cmp	r5, r7
	bne	.LBB7_67
@ %bb.65:                               @ %if.after.i209
                                        @   in Loop: Header=BB7_63 Depth=1
	cmp	r6, #8
	beq	.LBB7_67
@ %bb.66:                               @ %if.after.i209
                                        @   in Loop: Header=BB7_63 Depth=1
	adds	r6, #1
	cmp	r5, #0
	bne	.LBB7_63
.LBB7_67:                               @ %loop.body.i203.preheader
	ldr	r0, .LCPI7_15
	movs	r5, #0
.LPC7_15:
	add	r0, pc
	mov	lr, r0
	ldr	r0, .LCPI7_16
.LPC7_16:
	add	r0, pc
.LBB7_68:                               @ %loop.body.i203
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, lr
	ldrb	r6, [r1, r5]
	ldrb	r7, [r4, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.69:                               @ %if.after.i204
                                        @   in Loop: Header=BB7_68 Depth=1
	cmp	r6, r7
	bne	.LBB7_72
@ %bb.70:                               @ %if.after.i204
                                        @   in Loop: Header=BB7_68 Depth=1
	cmp	r5, #2
	beq	.LBB7_72
@ %bb.71:                               @ %if.after.i204
                                        @   in Loop: Header=BB7_68 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_68
.LBB7_72:                               @ %loop.body.i198.preheader
	ldr	r0, .LCPI7_17
	movs	r5, #0
.LPC7_17:
	add	r0, pc
.LBB7_73:                               @ %loop.body.i198
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r3, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.74:                               @ %if.after.i199
                                        @   in Loop: Header=BB7_73 Depth=1
	cmp	r6, r7
	bne	.LBB7_77
@ %bb.75:                               @ %if.after.i199
                                        @   in Loop: Header=BB7_73 Depth=1
	cmp	r5, #7
	beq	.LBB7_77
@ %bb.76:                               @ %if.after.i199
                                        @   in Loop: Header=BB7_73 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_73
.LBB7_77:                               @ %loop.body.i193.preheader
	ldr	r0, .LCPI7_18
	movs	r5, #0
.LPC7_18:
	add	r0, pc
.LBB7_78:                               @ %loop.body.i193
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r12
	ldrb	r6, [r1, r5]
	ldrb	r7, [r7, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.79:                               @ %if.after.i194
                                        @   in Loop: Header=BB7_78 Depth=1
	cmp	r6, r7
	bne	.LBB7_82
@ %bb.80:                               @ %if.after.i194
                                        @   in Loop: Header=BB7_78 Depth=1
	cmp	r5, #7
	beq	.LBB7_82
@ %bb.81:                               @ %if.after.i194
                                        @   in Loop: Header=BB7_78 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_78
.LBB7_82:                               @ %loop.body.i188.preheader
	ldr	r0, .LCPI7_19
	movs	r5, #0
.LPC7_19:
	add	r0, pc
.LBB7_83:                               @ %loop.body.i188
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.84:                               @ %if.after.i189
                                        @   in Loop: Header=BB7_83 Depth=1
	cmp	r6, r7
	bne	.LBB7_87
@ %bb.85:                               @ %if.after.i189
                                        @   in Loop: Header=BB7_83 Depth=1
	cmp	r5, #8
	beq	.LBB7_87
@ %bb.86:                               @ %if.after.i189
                                        @   in Loop: Header=BB7_83 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_83
.LBB7_87:                               @ %loop.body.i183.preheader
	ldr	r0, .LCPI7_20
	movs	r5, #0
.LPC7_20:
	add	r0, pc
.LBB7_88:                               @ %loop.body.i183
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, lr
	ldrb	r6, [r1, r5]
	ldrb	r7, [r4, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.89:                               @ %if.after.i184
                                        @   in Loop: Header=BB7_88 Depth=1
	cmp	r6, r7
	bne	.LBB7_92
@ %bb.90:                               @ %if.after.i184
                                        @   in Loop: Header=BB7_88 Depth=1
	cmp	r5, #2
	beq	.LBB7_92
@ %bb.91:                               @ %if.after.i184
                                        @   in Loop: Header=BB7_88 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_88
.LBB7_92:                               @ %loop.body.i178.preheader
	ldr	r0, .LCPI7_21
	movs	r5, #0
.LPC7_21:
	add	r0, pc
.LBB7_93:                               @ %loop.body.i178
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.94:                               @ %if.after.i179
                                        @   in Loop: Header=BB7_93 Depth=1
	cmp	r6, r7
	bne	.LBB7_97
@ %bb.95:                               @ %if.after.i179
                                        @   in Loop: Header=BB7_93 Depth=1
	cmp	r5, #8
	beq	.LBB7_97
@ %bb.96:                               @ %if.after.i179
                                        @   in Loop: Header=BB7_93 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_93
.LBB7_97:                               @ %loop.body.i173.preheader
	ldr	r0, .LCPI7_22
	movs	r5, #0
.LPC7_22:
	add	r0, pc
.LBB7_98:                               @ %loop.body.i173
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r3, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.99:                               @ %if.after.i174
                                        @   in Loop: Header=BB7_98 Depth=1
	cmp	r6, r7
	bne	.LBB7_102
@ %bb.100:                              @ %if.after.i174
                                        @   in Loop: Header=BB7_98 Depth=1
	cmp	r5, #7
	beq	.LBB7_102
@ %bb.101:                              @ %if.after.i174
                                        @   in Loop: Header=BB7_98 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_98
.LBB7_102:                              @ %loop.body.i168.preheader
	ldr	r0, .LCPI7_23
	movs	r5, #0
.LPC7_23:
	add	r0, pc
.LBB7_103:                              @ %loop.body.i168
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.104:                              @ %if.after.i169
                                        @   in Loop: Header=BB7_103 Depth=1
	cmp	r6, r7
	bne	.LBB7_107
@ %bb.105:                              @ %if.after.i169
                                        @   in Loop: Header=BB7_103 Depth=1
	cmp	r5, #8
	beq	.LBB7_107
@ %bb.106:                              @ %if.after.i169
                                        @   in Loop: Header=BB7_103 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_103
.LBB7_107:                              @ %loop.body.i163.preheader
	ldr	r0, .LCPI7_24
	movs	r5, #0
.LPC7_24:
	add	r0, pc
.LBB7_108:                              @ %loop.body.i163
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.109:                              @ %if.after.i164
                                        @   in Loop: Header=BB7_108 Depth=1
	cmp	r6, r7
	bne	.LBB7_112
@ %bb.110:                              @ %if.after.i164
                                        @   in Loop: Header=BB7_108 Depth=1
	cmp	r5, #8
	beq	.LBB7_112
@ %bb.111:                              @ %if.after.i164
                                        @   in Loop: Header=BB7_108 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_108
.LBB7_112:                              @ %loop.body.i158.preheader
	ldr	r0, .LCPI7_25
	movs	r5, #0
.LPC7_25:
	add	r0, pc
.LBB7_113:                              @ %loop.body.i158
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r3, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq.w	.LBB7_155
@ %bb.114:                              @ %if.after.i159
                                        @   in Loop: Header=BB7_113 Depth=1
	cmp	r6, r7
	bne	.LBB7_117
@ %bb.115:                              @ %if.after.i159
                                        @   in Loop: Header=BB7_113 Depth=1
	cmp	r5, #7
	beq	.LBB7_117
@ %bb.116:                              @ %if.after.i159
                                        @   in Loop: Header=BB7_113 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_113
.LBB7_117:                              @ %loop.body.i153.preheader
	ldr	r0, .LCPI7_26
	movs	r5, #0
.LPC7_26:
	add	r0, pc
.LBB7_118:                              @ %loop.body.i153
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r12
	ldrb	r6, [r1, r5]
	ldrb	r7, [r7, r5]
	orrs.w	r4, r6, r7
	beq	.LBB7_155
@ %bb.119:                              @ %if.after.i154
                                        @   in Loop: Header=BB7_118 Depth=1
	cmp	r6, r7
	bne	.LBB7_122
@ %bb.120:                              @ %if.after.i154
                                        @   in Loop: Header=BB7_118 Depth=1
	cmp	r5, #7
	beq	.LBB7_122
@ %bb.121:                              @ %if.after.i154
                                        @   in Loop: Header=BB7_118 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_118
.LBB7_122:                              @ %loop.body.i148.preheader
	ldr	r0, .LCPI7_27
	movs	r5, #0
.LPC7_27:
	add	r0, pc
.LBB7_123:                              @ %loop.body.i148
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq	.LBB7_155
@ %bb.124:                              @ %if.after.i149
                                        @   in Loop: Header=BB7_123 Depth=1
	cmp	r6, r7
	bne	.LBB7_127
@ %bb.125:                              @ %if.after.i149
                                        @   in Loop: Header=BB7_123 Depth=1
	cmp	r5, #8
	beq	.LBB7_127
@ %bb.126:                              @ %if.after.i149
                                        @   in Loop: Header=BB7_123 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_123
.LBB7_127:                              @ %loop.body.i143.preheader
	ldr	r0, .LCPI7_28
	movs	r5, #0
.LPC7_28:
	add	r0, pc
.LBB7_128:                              @ %loop.body.i143
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, lr
	ldrb	r6, [r1, r5]
	ldrb	r7, [r4, r5]
	orrs.w	r4, r6, r7
	beq	.LBB7_155
@ %bb.129:                              @ %if.after.i144
                                        @   in Loop: Header=BB7_128 Depth=1
	cmp	r6, r7
	bne	.LBB7_132
@ %bb.130:                              @ %if.after.i144
                                        @   in Loop: Header=BB7_128 Depth=1
	cmp	r5, #2
	beq	.LBB7_132
@ %bb.131:                              @ %if.after.i144
                                        @   in Loop: Header=BB7_128 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_128
.LBB7_132:                              @ %loop.body.i138.preheader
	ldr	r0, .LCPI7_29
	movs	r5, #0
.LPC7_29:
	add	r0, pc
.LBB7_133:                              @ %loop.body.i138
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r3, r5]
	ldrb	r6, [r1, r5]
	orrs.w	r4, r6, r7
	beq	.LBB7_155
@ %bb.134:                              @ %if.after.i139
                                        @   in Loop: Header=BB7_133 Depth=1
	cmp	r6, r7
	bne	.LBB7_137
@ %bb.135:                              @ %if.after.i139
                                        @   in Loop: Header=BB7_133 Depth=1
	cmp	r5, #7
	beq	.LBB7_137
@ %bb.136:                              @ %if.after.i139
                                        @   in Loop: Header=BB7_133 Depth=1
	adds	r5, #1
	cmp	r6, #0
	bne	.LBB7_133
.LBB7_137:                              @ %loop.body.i133.preheader
	ldr	r0, .LCPI7_30
	movs	r3, #0
.LPC7_30:
	add	r0, pc
.LBB7_138:                              @ %loop.body.i133
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r12
	ldrb	r6, [r1, r3]
	ldrb	r7, [r7, r3]
	orrs.w	r5, r6, r7
	beq	.LBB7_155
@ %bb.139:                              @ %if.after.i134
                                        @   in Loop: Header=BB7_138 Depth=1
	cmp	r6, r7
	bne	.LBB7_142
@ %bb.140:                              @ %if.after.i134
                                        @   in Loop: Header=BB7_138 Depth=1
	cmp	r3, #7
	beq	.LBB7_142
@ %bb.141:                              @ %if.after.i134
                                        @   in Loop: Header=BB7_138 Depth=1
	adds	r3, #1
	cmp	r6, #0
	bne	.LBB7_138
.LBB7_142:                              @ %loop.body.i128.preheader
	ldr	r0, .LCPI7_31
	movs	r3, #0
.LPC7_31:
	add	r0, pc
.LBB7_143:                              @ %loop.body.i128
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r2, r3]
	ldrb	r6, [r1, r3]
	orrs.w	r5, r6, r7
	beq	.LBB7_155
@ %bb.144:                              @ %if.after.i129
                                        @   in Loop: Header=BB7_143 Depth=1
	cmp	r6, r7
	bne	.LBB7_147
@ %bb.145:                              @ %if.after.i129
                                        @   in Loop: Header=BB7_143 Depth=1
	cmp	r3, #8
	beq	.LBB7_147
@ %bb.146:                              @ %if.after.i129
                                        @   in Loop: Header=BB7_143 Depth=1
	adds	r3, #1
	cmp	r6, #0
	bne	.LBB7_143
.LBB7_147:                              @ %loop.body.i123.preheader
	ldr	r0, .LCPI7_32
	movs	r3, #0
.LPC7_32:
	add	r0, pc
.LBB7_148:                              @ %loop.body.i123
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, lr
	ldrb	r6, [r1, r3]
	ldrb	r7, [r7, r3]
	orrs.w	r5, r6, r7
	beq	.LBB7_155
@ %bb.149:                              @ %if.after.i124
                                        @   in Loop: Header=BB7_148 Depth=1
	cmp	r6, r7
	bne	.LBB7_152
@ %bb.150:                              @ %if.after.i124
                                        @   in Loop: Header=BB7_148 Depth=1
	cmp	r3, #2
	beq	.LBB7_152
@ %bb.151:                              @ %if.after.i124
                                        @   in Loop: Header=BB7_148 Depth=1
	adds	r3, #1
	cmp	r6, #0
	bne	.LBB7_148
.LBB7_152:                              @ %loop.body.i118.preheader
	ldr	r3, .LCPI7_33
	ldr	r0, .LCPI7_34
	movs	r5, #0
.LPC7_33:
	add	r3, pc
.LPC7_34:
	add	r0, pc
.LBB7_153:                              @ %loop.body.i118
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r6, [r2, r5]
	ldrb	r7, [r1, r5]
	orrs.w	r4, r7, r6
	itt	eq
	moveq	r0, r3
	popeq	{r4, r5, r6, r7, pc}
	cmp	r7, r6
	bne	.LBB7_155
@ %bb.154:                              @ %if.after.i119
                                        @   in Loop: Header=BB7_153 Depth=1
	cmp	r5, #8
	it	eq
	popeq	{r4, r5, r6, r7, pc}
	adds	r5, #1
	cmp	r7, #0
	bne	.LBB7_153
.LBB7_155:                              @ %NoMatchBlock
	pop	{r4, r5, r6, r7, pc}
	.p2align	2
@ %bb.156:
.LCPI7_7:
	.long	.L__unnamed_7-(.LPC7_7+4)
.LCPI7_8:
	.long	.L__unnamed_8-(.LPC7_8+4)
.LCPI7_9:
	.long	.L__unnamed_9-(.LPC7_9+4)
.LCPI7_10:
	.long	.L__unnamed_10-(.LPC7_10+4)
.LCPI7_11:
	.long	.L__unnamed_11-(.LPC7_11+4)
.LCPI7_12:
	.long	.L__unnamed_12-(.LPC7_12+4)
.LCPI7_13:
	.long	.L__unnamed_13-(.LPC7_13+4)
.LCPI7_14:
	.long	.L__unnamed_14-(.LPC7_14+4)
.LCPI7_15:
	.long	.L__unnamed_15-(.LPC7_15+4)
.LCPI7_16:
	.long	.L__unnamed_11-(.LPC7_16+4)
.LCPI7_17:
	.long	.L__unnamed_16-(.LPC7_17+4)
.LCPI7_18:
	.long	.L__unnamed_17-(.LPC7_18+4)
.LCPI7_19:
	.long	.L__unnamed_18-(.LPC7_19+4)
.LCPI7_20:
	.long	.L__unnamed_16-(.LPC7_20+4)
.LCPI7_21:
	.long	.L__unnamed_2-(.LPC7_21+4)
.LCPI7_22:
	.long	.L__unnamed_19-(.LPC7_22+4)
.LCPI7_23:
	.long	.L__unnamed_20-(.LPC7_23+4)
.LCPI7_24:
	.long	.L__unnamed_21-(.LPC7_24+4)
.LCPI7_25:
	.long	.L__unnamed_22-(.LPC7_25+4)
.LCPI7_26:
	.long	.L__unnamed_13-(.LPC7_26+4)
.LCPI7_27:
	.long	.L__unnamed_23-(.LPC7_27+4)
.LCPI7_28:
	.long	.L__unnamed_22-(.LPC7_28+4)
.LCPI7_29:
	.long	.L__unnamed_24-(.LPC7_29+4)
.LCPI7_30:
	.long	.L__unnamed_17-(.LPC7_30+4)
.LCPI7_31:
	.long	.L__unnamed_25-(.LPC7_31+4)
.LCPI7_32:
	.long	.L__unnamed_24-(.LPC7_32+4)
.LCPI7_33:
	.long	.L__unnamed_26-(.LPC7_33+4)
.LCPI7_34:
	.long	.L__unnamed_27-(.LPC7_34+4)
.Lfunc_end7:
	.size	model_GetMetadata, .Lfunc_end7-model_GetMetadata
	.cantunwind
	.fnend
                                        @ -- End function
	.type	c_1,%object             @ @c_1
	.section	.rodata,"a",%progbits
	.p2align	2
c_1:
	.long	3220901143              @ float -1.96133697
	.long	3214944938              @ float -1.251302
	.size	c_1, 8

	.type	c_3,%object             @ @c_3
	.p2align	2
c_3:
	.long	3207179260              @ float -0.662780523
	.size	c_3, 4

	.type	.L__unnamed_27,%object  @ @0
	.section	.rodata.str1.1,"aMS",%progbits,1
.L__unnamed_27:
	.zero	1
	.size	.L__unnamed_27, 1

	.type	.L__unnamed_2,%object   @ @1
.L__unnamed_2:
	.asciz	"1010"
	.size	.L__unnamed_2, 5

	.type	.L__unnamed_1,%object   @ @2
.L__unnamed_1:
	.asciz	"ancestor"
	.size	.L__unnamed_1, 9

	.type	.L__unnamed_3,%object   @ @3
.L__unnamed_3:
	.asciz	"1001"
	.size	.L__unnamed_3, 5

	.type	.L__unnamed_5,%object   @ @4
.L__unnamed_5:
	.asciz	"input.1"
	.size	.L__unnamed_5, 8

	.type	.L__unnamed_4,%object   @ @5
.L__unnamed_4:
	.asciz	"GroupId"
	.size	.L__unnamed_4, 8

	.type	.L__unnamed_6,%object   @ @6
.L__unnamed_6:
	.asciz	"1000"
	.size	.L__unnamed_6, 5

	.type	.L__unnamed_7,%object   @ @7
.L__unnamed_7:
	.asciz	"1006"
	.size	.L__unnamed_7, 5

	.type	.L__unnamed_8,%object   @ @8
.L__unnamed_8:
	.asciz	"2"
	.size	.L__unnamed_8, 2

	.type	.L__unnamed_9,%object   @ @9
.L__unnamed_9:
	.asciz	"1005"
	.size	.L__unnamed_9, 5

	.type	.L__unnamed_10,%object  @ @10
.L__unnamed_10:
	.asciz	"1007"
	.size	.L__unnamed_10, 5

	.type	.L__unnamed_11,%object  @ @11
.L__unnamed_11:
	.asciz	"7"
	.size	.L__unnamed_11, 2

	.type	.L__unnamed_13,%object  @ @12
.L__unnamed_13:
	.asciz	"Plus"
	.size	.L__unnamed_13, 5

	.type	.L__unnamed_12,%object  @ @13
.L__unnamed_12:
	.asciz	"op_type"
	.size	.L__unnamed_12, 8

	.type	.L__unnamed_14,%object  @ @14
.L__unnamed_14:
	.asciz	"1008"
	.size	.L__unnamed_14, 5

	.type	.L__unnamed_15,%object  @ @15
.L__unnamed_15:
	.asciz	"id"
	.size	.L__unnamed_15, 3

	.type	.L__unnamed_16,%object  @ @16
.L__unnamed_16:
	.asciz	"8"
	.size	.L__unnamed_16, 2

	.type	.L__unnamed_17,%object  @ @17
.L__unnamed_17:
	.asciz	"Tanh"
	.size	.L__unnamed_17, 5

	.type	.L__unnamed_18,%object  @ @18
.L__unnamed_18:
	.asciz	"1009"
	.size	.L__unnamed_18, 5

	.type	.L__unnamed_19,%object  @ @19
.L__unnamed_19:
	.asciz	"4"
	.size	.L__unnamed_19, 2

	.type	.L__unnamed_20,%object  @ @20
.L__unnamed_20:
	.asciz	"1003"
	.size	.L__unnamed_20, 5

	.type	.L__unnamed_21,%object  @ @21
.L__unnamed_21:
	.asciz	"1011"
	.size	.L__unnamed_21, 5

	.type	.L__unnamed_22,%object  @ @22
.L__unnamed_22:
	.asciz	"11"
	.size	.L__unnamed_22, 3

	.type	.L__unnamed_23,%object  @ @23
.L__unnamed_23:
	.asciz	"1012"
	.size	.L__unnamed_23, 5

	.type	.L__unnamed_24,%object  @ @24
.L__unnamed_24:
	.asciz	"12"
	.size	.L__unnamed_24, 3

	.type	.L__unnamed_25,%object  @ @25
.L__unnamed_25:
	.asciz	"1013"
	.size	.L__unnamed_25, 5

	.type	.L__unnamed_26,%object  @ @26
.L__unnamed_26:
	.asciz	"1014"
	.size	.L__unnamed_26, 5

	.type	g_4.0,%object           @ @g_4.0
	.local	g_4.0
	.comm	g_4.0,4,8
	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.local	.L_MergedGlobals
	.comm	.L_MergedGlobals,36,16

model_context = .L_MergedGlobals
	.size	model_context, 4
g_6 = .L_MergedGlobals+4
	.size	g_6, 4
g_3.1 = .L_MergedGlobals+8
	.size	g_3.1, 4
g_0 = .L_MergedGlobals+12
	.size	g_0, 8
g_1 = .L_MergedGlobals+20
	.size	g_1, 8
g_2 = .L_MergedGlobals+28
	.size	g_2, 8
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
