
user.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <usermain>:
   0:	1141                	addi	sp,sp,-16
   2:	e406                	sd	ra,8(sp)
   4:	e022                	sd	s0,0(sp)
   6:	0800                	addi	s0,sp,16
   8:	00000517          	auipc	a0,0x0
   c:	00050513          	mv	a0,a0
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <usermain+0x10>

0000000000000018 <.LVL1>:
  18:	00000597          	auipc	a1,0x0
  1c:	00058593          	mv	a1,a1
  20:	00000517          	auipc	a0,0x0
  24:	00050513          	mv	a0,a0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL1+0x10>

0000000000000030 <.LVL2>:
  30:	00000797          	auipc	a5,0x0
  34:	00078793          	mv	a5,a5
  38:	00000517          	auipc	a0,0x0
  3c:	00050513          	mv	a0,a0
  40:	00000073          	ecall
  44:	00000517          	auipc	a0,0x0
  48:	00050513          	mv	a0,a0
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL2+0x1c>

0000000000000054 <.L2>:
  54:	a001                	j	54 <.L2>

Disassembly of section .rodata.str1.8:

0000000000000000 <.LC0>:
   0:	7270                	ld	a2,224(a2)
   2:	7065                	c.lui	zero,0xffff9
   4:	7261                	lui	tp,0xffff8
   6:	6e69                	lui	t3,0x1a
   8:	6f742067          	0x6f742067
   c:	6520                	ld	s0,72(a0)
   e:	6c6c6163          	bltu	s8,t1,6d0 <.LASF12+0x5b7>
  12:	0a3a                	slli	s4,s4,0xe
  14:	0000                	unimp
	...

0000000000000018 <.LC1>:
  18:	7375                	lui	t1,0xffffd
  1a:	7265                	lui	tp,0xffff9
  1c:	616d                	addi	sp,sp,240
  1e:	6e69                	lui	t3,0x1a
  20:	2e2e                	fld	ft8,200(sp)
  22:	0a2e                	slli	s4,s4,0xb
  24:	0000                	unimp
	...

0000000000000028 <.LC2>:
  28:	736d                	lui	t1,0xffffb
  2a:	203d2067          	0x203d2067
  2e:	7025                	c.lui	zero,0xfffe9
  30:	0a3a                	slli	s4,s4,0xe
  32:	0000                	unimp
  34:	0000                	unimp
	...

0000000000000038 <.LC3>:
  38:	6f64                	ld	s1,216(a4)
  3a:	656e                	ld	a0,216(sp)
  3c:	7720                	ld	s0,104(a4)
  3e:	7469                	lui	s0,0xffffa
  40:	2068                	fld	fa0,192(s0)
  42:	6365                	lui	t1,0x19
  44:	6c61                	lui	s8,0x18
  46:	3a6c                	fld	fa1,240(a2)
  48:	000a                	c.slli	zero,0x2

Disassembly of section .debug_info:

0000000000000000 <.Ldebug_info0>:
   0:	011c                	addi	a5,sp,128
   2:	0000                	unimp
   4:	0004                	0x4
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0108                	addi	a0,sp,128
   c:	0000                	unimp
   e:	0000                	unimp
  10:	000c                	0xc
	...
  2a:	0000                	unimp
  2c:	0200                	addi	s0,sp,256
  2e:	0601                	addi	a2,a2,0
  30:	0000                	unimp
  32:	0000                	unimp
  34:	0202                	c.slli64	tp
  36:	0005                	c.nop	1
  38:	0000                	unimp
  3a:	0300                	addi	s0,sp,384
  3c:	0504                	addi	s1,sp,640
  3e:	6e69                	lui	t3,0x1a
  40:	0074                	addi	a3,sp,12
  42:	0802                	c.slli64	a6
  44:	0005                	c.nop	1
  46:	0000                	unimp
  48:	0200                	addi	s0,sp,256
  4a:	0801                	addi	a6,a6,0
  4c:	0000                	unimp
  4e:	0000                	unimp
  50:	0202                	c.slli64	tp
  52:	00000007          	0x7
  56:	0200                	addi	s0,sp,256
  58:	0704                	addi	s1,sp,896
  5a:	0000                	unimp
  5c:	0000                	unimp
  5e:	0802                	c.slli64	a6
  60:	00000007          	0x7
  64:	0400                	addi	s0,sp,512
  66:	0000                	unimp
  68:	0000                	unimp
  6a:	0301                	addi	t1,t1,0
  6c:	0006                	c.slli	zero,0x1
	...
  7a:	0000                	unimp
  7c:	0100                	addi	s0,sp,128
  7e:	019c                	addi	a5,sp,192
  80:	0001                	nop
  82:	0500                	addi	s0,sp,640
  84:	736d                	lui	t1,0xffffb
  86:	05010067          	jr	80(sp)
  8a:	0111                	addi	sp,sp,4
  8c:	0001                	nop
  8e:	0a00                	addi	s0,sp,272
  90:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
  94:	0000                	unimp
  96:	0000                	unimp
  98:	9f00                	0x9f00
  9a:	0006                	c.slli	zero,0x1
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	0000                	unimp
  a2:	1300                	addi	s0,sp,416
  a4:	0001                	nop
  a6:	b900                	fsd	fs0,48(a0)
  a8:	0000                	unimp
  aa:	0700                	addi	s0,sp,896
  ac:	5a01                	li	s4,-32
  ae:	0309                	addi	t1,t1,2
	...
  b8:	0600                	addi	s0,sp,768
	...
  c2:	00000113          	li	sp,0
  c6:	00e5                	addi	ra,ra,25
  c8:	0000                	unimp
  ca:	095a0107          	0x95a0107
  ce:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
  d2:	0000                	unimp
  d4:	0000                	unimp
  d6:	0700                	addi	s0,sp,896
  d8:	5b01                	li	s6,-32
  da:	0309                	addi	t1,t1,2
	...
  e4:	0800                	addi	s0,sp,16
	...
  ee:	00000113          	li	sp,0
  f2:	095a0107          	0x95a0107
  f6:	00000003          	lb	zero,0(zero) # 0 <.Ldebug_info0>
  fa:	0000                	unimp
  fc:	0000                	unimp
  fe:	0000                	unimp
 100:	0900                	addi	s0,sp,144
 102:	0e08                	addi	a0,sp,784
 104:	0001                	nop
 106:	0200                	addi	s0,sp,256
 108:	0801                	addi	a6,a6,0
 10a:	0000                	unimp
 10c:	0000                	unimp
 10e:	070a                	slli	a4,a4,0x2
 110:	0001                	nop
 112:	0b00                	addi	s0,sp,400
	...
 11c:	0402                	c.slli64	s0
 11e:	0006                	c.slli	zero,0x1

Disassembly of section .debug_abbrev:

0000000000000000 <.Ldebug_abbrev0>:
   0:	1101                	addi	sp,sp,-32
   2:	2501                	sext.w	a0,a0
   4:	130e                	slli	t1,t1,0x23
   6:	1b0e030b          	0x1b0e030b
   a:	110e                	slli	sp,sp,0x23
   c:	1201                	addi	tp,tp,-32
   e:	00171007          	0x171007
  12:	0200                	addi	s0,sp,256
  14:	0024                	addi	s1,sp,8
  16:	0b3e0b0b          	0xb3e0b0b
  1a:	00000e03          	lb	t3,0(zero) # 0 <.Ldebug_abbrev0>
  1e:	0b002403          	lw	s0,176(zero) # b0 <.LASF0>
  22:	030b3e0b          	0x30b3e0b
  26:	0008                	0x8
  28:	0400                	addi	s0,sp,512
  2a:	012e                	slli	sp,sp,0xb
  2c:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
  34:	0b39                	addi	s6,s6,14
  36:	01111927          	0x1111927
  3a:	0712                	slli	a4,a4,0x4
  3c:	1840                	addi	s0,sp,52
  3e:	01194297          	auipc	t0,0x1194
  42:	05000013          	li	zero,80
  46:	0034                	addi	a3,sp,8
  48:	0b3a0803          	lb	a6,179(s4)
  4c:	0b390b3b          	0xb390b3b
  50:	1349                	addi	t1,t1,-14
  52:	1802                	slli	a6,a6,0x20
  54:	0000                	unimp
  56:	8906                	mv	s2,ra
  58:	0182                	c.slli64	gp
  5a:	1101                	addi	sp,sp,-32
  5c:	3101                	addiw	sp,sp,-32
  5e:	00130113          	addi	sp,t1,1 # ffffffffffffb001 <.LASF12+0xffffffffffffaee8>
  62:	0700                	addi	s0,sp,896
  64:	828a                	mv	t0,sp
  66:	0001                	nop
  68:	1802                	slli	a6,a6,0x20
  6a:	4291                	li	t0,4
  6c:	0018                	0x18
  6e:	0800                	addi	s0,sp,16
  70:	8289                	srli	a3,a3,0x2
  72:	0101                	addi	sp,sp,0
  74:	0111                	addi	sp,sp,4
  76:	1331                	addi	t1,t1,-20
  78:	0000                	unimp
  7a:	0f09                	addi	t5,t5,2
  7c:	0b00                	addi	s0,sp,400
  7e:	0013490b          	0x13490b
  82:	0a00                	addi	s0,sp,272
  84:	0026                	c.slli	zero,0x9
  86:	1349                	addi	t1,t1,-14
  88:	0000                	unimp
  8a:	3f002e0b          	0x3f002e0b
  8e:	3c19                	addiw	s8,s8,-26
  90:	6e19                	lui	t3,0x6
  92:	030e                	slli	t1,t1,0x3
  94:	3a0e                	fld	fs4,224(sp)
  96:	390b3b0b          	0x390b3b0b
  9a:	0000000b          	0xb

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	002c                	addi	a1,sp,8
   2:	0000                	unimp
   4:	0002                	c.slli64	zero
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0008                	0x8
	...

Disassembly of section .debug_line:

0000000000000000 <.Ldebug_line0>:
   0:	0088                	addi	a0,sp,64
   2:	0000                	unimp
   4:	00360003          	lb	zero,3(a2)
   8:	0000                	unimp
   a:	0101                	addi	sp,sp,0
   c:	000d0efb          	0xd0efb
  10:	0101                	addi	sp,sp,0
  12:	0101                	addi	sp,sp,0
  14:	0000                	unimp
  16:	0100                	addi	s0,sp,128
  18:	0000                	unimp
  1a:	6b01                	0x6b01
  1c:	7265                	lui	tp,0xffff9
  1e:	656e                	ld	a0,216(sp)
  20:	006c                	addi	a1,sp,12
  22:	6e69                	lui	t3,0x1a
  24:	64756c63          	bltu	a0,t2,67c <.LASF12+0x563>
  28:	0065                	c.nop	25
  2a:	7500                	ld	s0,40(a0)
  2c:	2e726573          	csrrsi	a0,0x2e7,4
  30:	00010063          	beqz	sp,30 <.Ldebug_line0+0x30>
  34:	6400                	ld	s0,8(s0)
  36:	6665                	lui	a2,0x19
  38:	00682e73          	csrrs	t3,0x6,a6
  3c:	0002                	c.slli64	zero
  3e:	0000                	unimp
  40:	0105                	addi	sp,sp,1
  42:	0900                	addi	s0,sp,144
  44:	0002                	c.slli64	zero
  46:	0000                	unimp
  48:	0000                	unimp
  4a:	0000                	unimp
  4c:	1500                	addi	s0,sp,672
  4e:	0505                	addi	a0,a0,1
  50:	00090103          	lb	sp,0(s2)
  54:	0100                	addi	s0,sp,128
  56:	00090103          	lb	sp,0(s2)
  5a:	0100                	addi	s0,sp,128
  5c:	00090103          	lb	sp,0(s2)
  60:	0100                	addi	s0,sp,128
  62:	00090203          	lb	tp,0(s2)
  66:	0100                	addi	s0,sp,128
  68:	00090503          	lb	a0,0(s2)
  6c:	0100                	addi	s0,sp,128
  6e:	0205                	addi	tp,tp,1
  70:	0200                	addi	s0,sp,256
  72:	0104                	addi	s1,sp,128
  74:	00090203          	lb	tp,0(s2)
  78:	0100                	addi	s0,sp,128
  7a:	0305                	addi	t1,t1,1
  7c:	0200                	addi	s0,sp,256
  7e:	0104                	addi	s1,sp,128
  80:	00090103          	lb	sp,0(s2)
  84:	0100                	addi	s0,sp,128
  86:	0009                	c.nop	2
  88:	0000                	unimp
  8a:	0101                	addi	sp,sp,0

Disassembly of section .debug_str:

0000000000000000 <.LASF5>:
   0:	6e75                	lui	t3,0x1d
   2:	6e676973          	csrrsi	s2,0x6e6,14
   6:	6465                	lui	s0,0x19
   8:	6920                	ld	s0,80(a0)
   a:	746e                	ld	s0,248(sp)
	...

000000000000000d <.LASF8>:
   d:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
  11:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
  15:	2e38                	fld	fa4,88(a2)
  17:	2e32                	fld	ft8,264(sp)
  19:	2030                	fld	fa2,64(s0)
  1b:	6d2d                	lui	s10,0xb
  1d:	646f6d63          	bltu	t5,t1,677 <.LASF12+0x55e>
  21:	6c65                	lui	s8,0x19
  23:	6d3d                	lui	s10,0xf
  25:	6465                	lui	s0,0x19
  27:	6e61                	lui	t3,0x18
  29:	2079                	0x2079
  2b:	6d2d                	lui	s10,0xb
  2d:	6f6e                	ld	t5,216(sp)
  2f:	722d                	lui	tp,0xfffeb
  31:	6c65                	lui	s8,0x19
  33:	7861                	lui	a6,0xffff8
  35:	2d20                	fld	fs0,88(a0)
  37:	616d                	addi	sp,sp,240
  39:	6372                	ld	t1,280(sp)
  3b:	3d68                	fld	fa0,248(a0)
  3d:	7672                	ld	a2,312(sp)
  3f:	3436                	fld	fs0,360(sp)
  41:	6d69                	lui	s10,0x1a
  43:	6661                	lui	a2,0x18
  45:	6364                	ld	s1,192(a4)
  47:	2d20                	fld	fs0,88(a0)
  49:	616d                	addi	sp,sp,240
  4b:	6962                	ld	s2,24(sp)
  4d:	6c3d                	lui	s8,0xf
  4f:	3670                	fld	fa2,232(a2)
  51:	6434                	ld	a3,72(s0)
  53:	2d20                	fld	fs0,88(a0)
  55:	62646767          	0x62646767
  59:	2d20                	fld	fs0,88(a0)
  5b:	662d204f          	fnmadd.q	ft0,fs10,ft2,fa2,rdn
  5f:	6f6e                	ld	t5,216(sp)
  61:	6f2d                	lui	t5,0xb
  63:	696d                	lui	s2,0x1b
  65:	2d74                	fld	fa3,216(a0)
  67:	7266                	ld	tp,120(sp)
  69:	6d61                	lui	s10,0x18
  6b:	2d65                	addiw	s10,s10,25
  6d:	6f70                	ld	a2,216(a4)
  6f:	6e69                	lui	t3,0x1a
  71:	6574                	ld	a3,200(a0)
  73:	2072                	fld	ft0,280(sp)
  75:	662d                	lui	a2,0xb
  77:	7266                	ld	tp,120(sp)
  79:	6565                	lui	a0,0x19
  7b:	6e617473          	csrrci	s0,0x6e6,2
  7f:	6964                	ld	s1,208(a0)
  81:	676e                	ld	a4,216(sp)
  83:	2d20                	fld	fs0,88(a0)
  85:	6e66                	ld	t3,88(sp)
  87:	6f632d6f          	jal	s10,3277d <.LASF12+0x32664>
  8b:	6d6d                	lui	s10,0x1b
  8d:	          	jal	t3,674d <.LASF12+0x6634>

0000000000000090 <.LASF6>:
  90:	6f6c                	ld	a1,216(a4)
  92:	676e                	ld	a4,216(sp)
  94:	7520                	ld	s0,104(a0)
  96:	736e                	ld	t1,248(sp)
  98:	6769                	lui	a4,0x1a
  9a:	656e                	ld	a0,216(sp)
  9c:	2064                	fld	fs1,192(s0)
  9e:	6e69                	lui	t3,0x1a
  a0:	0074                	addi	a3,sp,12

00000000000000a2 <.LASF3>:
  a2:	6e75                	lui	t3,0x1d
  a4:	6e676973          	csrrsi	s2,0x6e6,14
  a8:	6465                	lui	s0,0x19
  aa:	6320                	ld	s0,64(a4)
  ac:	6168                	ld	a0,192(a0)
  ae:	0072                	c.slli	zero,0x1c

00000000000000b0 <.LASF0>:
  b0:	6e676973          	csrrsi	s2,0x6e6,14
  b4:	6465                	lui	s0,0x19
  b6:	6320                	ld	s0,64(a4)
  b8:	6168                	ld	a0,192(a0)
  ba:	0072                	c.slli	zero,0x1c

00000000000000bc <.LASF1>:
  bc:	726f6873          	csrrsi	a6,0x726,30
  c0:	2074                	fld	fa3,192(s0)
  c2:	6e69                	lui	t3,0x1a
  c4:	0074                	addi	a3,sp,12

00000000000000c6 <.LASF10>:
  c6:	6d6f682f          	0x6d6f682f
  ca:	2f65                	addiw	t5,t5,25
  cc:	6f68                	ld	a0,216(a4)
  ce:	2f62                	fld	ft10,24(sp)
  d0:	7250                	ld	a2,160(a2)
  d2:	6172676f          	jal	a4,26ee8 <.LASF12+0x26dcf>
  d6:	736d                	lui	t1,0xffffb
  d8:	3678782f          	0x3678782f
  dc:	6f656e2f          	0x6f656e2f
	...

00000000000000e1 <.LASF11>:
  e1:	7375                	lui	t1,0xffffd
  e3:	7265                	lui	tp,0xffff9
  e5:	616d                	addi	sp,sp,240
  e7:	6e69                	lui	t3,0x1a
	...

00000000000000ea <.LASF2>:
  ea:	6f6c                	ld	a1,216(a4)
  ec:	676e                	ld	a4,216(sp)
  ee:	6920                	ld	s0,80(a0)
  f0:	746e                	ld	s0,248(sp)
	...

00000000000000f3 <.LASF9>:
  f3:	6e72656b          	0x6e72656b
  f7:	6c65                	lui	s8,0x19
  f9:	6573752f          	0x6573752f
  fd:	2e72                	fld	ft8,280(sp)
  ff:	          	beq	t1,t1,77f <.LASF12+0x666>

0000000000000101 <.LASF7>:
 101:	72616863          	bltu	sp,t1,831 <.LASF12+0x718>
	...

0000000000000106 <.LASF4>:
 106:	726f6873          	csrrsi	a6,0x726,30
 10a:	2074                	fld	fa3,192(s0)
 10c:	6e75                	lui	t3,0x1d
 10e:	6e676973          	csrrsi	s2,0x6e6,14
 112:	6465                	lui	s0,0x19
 114:	6920                	ld	s0,80(a0)
 116:	746e                	ld	s0,248(sp)
	...

0000000000000119 <.LASF12>:
 119:	7270                	ld	a2,224(a2)
 11b:	6e69                	lui	t3,0x1a
 11d:	6674                	ld	a3,200(a2)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	4700                	lw	s0,8(a4)
   2:	203a4343          	fmadd.s	ft6,fs4,ft3,ft4,rmm
   6:	4728                	lw	a0,72(a4)
   8:	554e                	lw	a0,240(sp)
   a:	2029                	0x2029
   c:	2e38                	fld	fa4,88(a2)
   e:	2e32                	fld	ft8,264(sp)
  10:	0030                	addi	a2,sp,8

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	0xc
   2:	0000                	unimp
   4:	ffff                	0xffff
   6:	ffff                	0xffff
   8:	0001                	nop
   a:	7c01                	lui	s8,0xfffe0
   c:	0d01                	addi	s10,s10,0
   e:	0002                	c.slli64	zero
  10:	0024                	addi	s1,sp,8
	...
  26:	0000                	unimp
  28:	0e42                	slli	t3,t3,0x10
  2a:	4410                	lw	a2,8(s0)
  2c:	0281                	addi	t0,t0,0
  2e:	0488                	addi	a0,sp,576
  30:	0c42                	slli	s8,s8,0x10
  32:	0008                	0x8
  34:	0000                	unimp
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	3241                	addiw	tp,tp,-16
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0028                	addi	a0,sp,8
   e:	0000                	unimp
  10:	7205                	lui	tp,0xfffe1
  12:	3676                	fld	fa2,376(sp)
  14:	6934                	ld	a3,80(a0)
  16:	7032                	0x7032
  18:	5f30                	lw	a2,120(a4)
  1a:	326d                	addiw	tp,tp,-5
  1c:	3070                	fld	fa2,224(s0)
  1e:	615f 7032 5f30      	0x5f307032615f
  24:	3266                	fld	ft4,120(sp)
  26:	3070                	fld	fa2,224(s0)
  28:	645f 7032 5f30      	0x5f307032645f
  2e:	30703263          	0x30703263
	...
