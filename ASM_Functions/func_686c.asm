glabel func_686c
/* 00686C 0000686C 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 006870 00006870 AFB60060 */  sw    $s6, 0x60($sp)
/* 006874 00006874 AFB5005C */  sw    $s5, 0x5c($sp)
/* 006878 00006878 AFB30054 */  sw    $s3, 0x54($sp)
/* 00687C 0000687C 00C09825 */  move  $s3, $a2
/* 006880 00006880 0080A825 */  move  $s5, $a0
/* 006884 00006884 00A0B025 */  move  $s6, $a1
/* 006888 00006888 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00688C 0000688C AFB40058 */  sw    $s4, 0x58($sp)
/* 006890 00006890 AFB20050 */  sw    $s2, 0x50($sp)
/* 006894 00006894 AFB1004C */  sw    $s1, 0x4c($sp)
/* 006898 00006898 AFB00048 */  sw    $s0, 0x48($sp)
/* 00689C 0000689C F7BE0040 */  sdc1  $f30, 0x40($sp)
/* 0068A0 000068A0 F7BC0038 */  sdc1  $f28, 0x38($sp)
/* 0068A4 000068A4 F7BA0030 */  sdc1  $f26, 0x30($sp)
/* 0068A8 000068A8 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 0068AC 000068AC F7B60020 */  sdc1  $f22, 0x20($sp)
/* 0068B0 000068B0 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0068B4 000068B4 C6780028 */  lwc1  $f24, 0x28($s3)
/* 0068B8 000068B8 C6760024 */  lwc1  $f22, 0x24($s3)
/* 0068BC 000068BC C6B40000 */  lwc1  $f20, ($s5)
/* 0068C0 000068C0 C6720000 */  lwc1  $f18, ($s3)
/* 0068C4 000068C4 4616C782 */  mul.s $f30, $f24, $f22
/* 0068C8 000068C8 C6D60000 */  lwc1  $f22, ($s6)
/* 0068CC 000068CC C6780008 */  lwc1  $f24, 8($s3)
/* 0068D0 000068D0 3C118008 */  lui   $s1, 0x8008
/* 0068D4 000068D4 8E31D08C */  lw    $s1, -0x2f74($s1)
/* 0068D8 000068D8 4612A680 */  add.s $f26, $f20, $f18
/* 0068DC 000068DC 0000A025 */  move  $s4, $zero
/* 0068E0 000068E0 1220003A */  beqz  $s1, .L000069CC
/* 0068E4 000068E4 4618B700 */   add.s $f28, $f22, $f24
/* 0068E8 000068E8 3C128008 */  lui   $s2, 0x8008
/* 0068EC 000068EC 12200037 */  beqz  $s1, .L000069CC
/* 0068F0 000068F0 2652D090 */   addiu $s2, $s2, -0x2f70
/* 0068F4 000068F4 8E500000 */  lw    $s0, ($s2)
.L000068F8:
/* 0068F8 000068F8 26520004 */  addiu $s2, $s2, 4
/* 0068FC 000068FC C6080028 */  lwc1  $f8, 0x28($s0)
/* 006900 00006900 C60A0024 */  lwc1  $f10, 0x24($s0)
/* 006904 00006904 C6040000 */  lwc1  $f4, ($s0)
/* 006908 00006908 C6060008 */  lwc1  $f6, 8($s0)
/* 00690C 0000690C 460A4402 */  mul.s $f16, $f8, $f10
/* 006910 00006910 4604D501 */  sub.s $f20, $f26, $f4
/* 006914 00006914 4606E581 */  sub.s $f22, $f28, $f6
/* 006918 00006918 461E8600 */  add.s $f24, $f16, $f30
/* 00691C 0000691C 4618A03C */  c.lt.s $f20, $f24
/* 006920 00006920 00000000 */  nop   
/* 006924 00006924 45000025 */  bc1f  .L000069BC
/* 006928 00006928 00000000 */   nop   
/* 00692C 0000692C 4600C007 */  neg.s $f0, $f24
/* 006930 00006930 4614003C */  c.lt.s $f0, $f20
/* 006934 00006934 00000000 */  nop   
/* 006938 00006938 45000020 */  bc1f  .L000069BC
/* 00693C 0000693C 00000000 */   nop   
/* 006940 00006940 4618B03C */  c.lt.s $f22, $f24
/* 006944 00006944 00000000 */  nop   
/* 006948 00006948 4500001C */  bc1f  .L000069BC
/* 00694C 0000694C 00000000 */   nop   
/* 006950 00006950 4616003C */  c.lt.s $f0, $f22
/* 006954 00006954 00000000 */  nop   
/* 006958 00006958 45000018 */  bc1f  .L000069BC
/* 00695C 0000695C 00000000 */   nop   
/* 006960 00006960 4614A482 */  mul.s $f18, $f20, $f20
/* 006964 00006964 00000000 */  nop   
/* 006968 00006968 4616B102 */  mul.s $f4, $f22, $f22
/* 00696C 0000696C 0C00D3D8 */  jal   func_00034F60
/* 006970 00006970 46049300 */   add.s $f12, $f18, $f4
/* 006974 00006974 4618003C */  c.lt.s $f0, $f24
/* 006978 00006978 00000000 */  nop   
/* 00697C 0000697C 4500000F */  bc1f  .L000069BC
/* 006980 00006980 00000000 */   nop   
/* 006984 00006984 4600C083 */  div.s $f2, $f24, $f0
/* 006988 00006988 C6060000 */  lwc1  $f6, ($s0)
/* 00698C 0000698C C66A0000 */  lwc1  $f10, ($s3)
/* 006990 00006990 24140001 */  addiu $s4, $zero, 1
/* 006994 00006994 4602A502 */  mul.s $f20, $f20, $f2
/* 006998 00006998 46143200 */  add.s $f8, $f6, $f20
/* 00699C 0000699C 4602B582 */  mul.s $f22, $f22, $f2
/* 0069A0 000069A0 460A4401 */  sub.s $f16, $f8, $f10
/* 0069A4 000069A4 E6B00000 */  swc1  $f16, ($s5)
/* 0069A8 000069A8 C6120008 */  lwc1  $f18, 8($s0)
/* 0069AC 000069AC C6660008 */  lwc1  $f6, 8($s3)
/* 0069B0 000069B0 46169100 */  add.s $f4, $f18, $f22
/* 0069B4 000069B4 46062201 */  sub.s $f8, $f4, $f6
/* 0069B8 000069B8 E6C80000 */  swc1  $f8, ($s6)
.L000069BC:
/* 0069BC 000069BC 16800003 */  bnez  $s4, .L000069CC
/* 0069C0 000069C0 2631FFFF */   addiu $s1, $s1, -1
/* 0069C4 000069C4 5620FFCC */  bnezl $s1, .L000068F8
/* 0069C8 000069C8 8E500000 */   lw    $s0, ($s2)
.L000069CC:
/* 0069CC 000069CC 3C118008 */  lui   $s1, 0x8008
/* 0069D0 000069D0 8E31BCE8 */  lw    $s1, -0x4318($s1)
/* 0069D4 000069D4 3C128008 */  lui   $s2, 0x8008
/* 0069D8 000069D8 1220003B */  beqz  $s1, .L00006AC8
/* 0069DC 000069DC 00000000 */   nop   
/* 0069E0 000069E0 16800039 */  bnez  $s4, .L00006AC8
/* 0069E4 000069E4 2652BCF0 */   addiu $s2, $s2, -0x4310
/* 0069E8 000069E8 12200037 */  beqz  $s1, .L00006AC8
/* 0069EC 000069EC 00000000 */   nop   
/* 0069F0 000069F0 8E500000 */  lw    $s0, ($s2)
.L000069F4:
/* 0069F4 000069F4 26520004 */  addiu $s2, $s2, 4
/* 0069F8 000069F8 C6120028 */  lwc1  $f18, 0x28($s0)
.L000069FC:
/* 0069FC 000069FC C6040024 */  lwc1  $f4, 0x24($s0)
/* 006A00 00006A00 C60A0000 */  lwc1  $f10, ($s0)
/* 006A04 00006A04 C6100008 */  lwc1  $f16, 8($s0)
/* 006A08 00006A08 46049182 */  mul.s $f6, $f18, $f4
/* 006A0C 00006A0C 460AD501 */  sub.s $f20, $f26, $f10
/* 006A10 00006A10 4610E581 */  sub.s $f22, $f28, $f16
/* 006A14 00006A14 461E3600 */  add.s $f24, $f6, $f30
/* 006A18 00006A18 4618A03C */  c.lt.s $f20, $f24
/* 006A1C 00006A1C 00000000 */  nop   
/* 006A20 00006A20 45000025 */  bc1f  .L00006AB8
/* 006A24 00006A24 00000000 */   nop   
/* 006A28 00006A28 4600C007 */  neg.s $f0, $f24
/* 006A2C 00006A2C 4614003C */  c.lt.s $f0, $f20
/* 006A30 00006A30 00000000 */  nop   
/* 006A34 00006A34 45000020 */  bc1f  .L00006AB8
/* 006A38 00006A38 00000000 */   nop   
/* 006A3C 00006A3C 4618B03C */  c.lt.s $f22, $f24
/* 006A40 00006A40 00000000 */  nop   
/* 006A44 00006A44 4500001C */  bc1f  .L00006AB8
/* 006A48 00006A48 00000000 */   nop   
/* 006A4C 00006A4C 4616003C */  c.lt.s $f0, $f22
/* 006A50 00006A50 00000000 */  nop   
/* 006A54 00006A54 45000018 */  bc1f  .L00006AB8
/* 006A58 00006A58 00000000 */   nop   
/* 006A5C 00006A5C 4614A202 */  mul.s $f8, $f20, $f20
/* 006A60 00006A60 00000000 */  nop   
/* 006A64 00006A64 4616B282 */  mul.s $f10, $f22, $f22
/* 006A68 00006A68 0C00D3D8 */  jal   func_00034F60
/* 006A6C 00006A6C 460A4300 */   add.s $f12, $f8, $f10
/* 006A70 00006A70 4618003C */  c.lt.s $f0, $f24
.L00006A74:
/* 006A74 00006A74 00000000 */  nop   
/* 006A78 00006A78 4500000F */  bc1f  .L00006AB8
/* 006A7C 00006A7C 00000000 */   nop   
/* 006A80 00006A80 4600C083 */  div.s $f2, $f24, $f0
/* 006A84 00006A84 C6100000 */  lwc1  $f16, ($s0)
/* 006A88 00006A88 C6640000 */  lwc1  $f4, ($s3)
/* 006A8C 00006A8C 24140001 */  addiu $s4, $zero, 1
/* 006A90 00006A90 4602A502 */  mul.s $f20, $f20, $f2
/* 006A94 00006A94 46148480 */  add.s $f18, $f16, $f20
/* 006A98 00006A98 4602B582 */  mul.s $f22, $f22, $f2
/* 006A9C 00006A9C 46049181 */  sub.s $f6, $f18, $f4
/* 006AA0 00006AA0 E6A60000 */  swc1  $f6, ($s5)
/* 006AA4 00006AA4 C6080008 */  lwc1  $f8, 8($s0)
/* 006AA8 00006AA8 C6700008 */  lwc1  $f16, 8($s3)
/* 006AAC 00006AAC 46164280 */  add.s $f10, $f8, $f22
/* 006AB0 00006AB0 46105481 */  sub.s $f18, $f10, $f16
/* 006AB4 00006AB4 E6D20000 */  swc1  $f18, ($s6)
.L00006AB8:
/* 006AB8 00006AB8 16800003 */  bnez  $s4, .L00006AC8
/* 006ABC 00006ABC 2631FFFF */   addiu $s1, $s1, -1
/* 006AC0 00006AC0 5620FFCC */  bnezl $s1, .L000069F4
/* 006AC4 00006AC4 8E500000 */   lw    $s0, ($s2)
.L00006AC8:
/* 006AC8 00006AC8 3C118008 */  lui   $s1, 0x8008
/* 006ACC 00006ACC 8E314F38 */  lw    $s1, 0x4f38($s1)
/* 006AD0 00006AD0 3C128008 */  lui   $s2, 0x8008
/* 006AD4 00006AD4 5220003E */  beql  $s1, $zero, .L00006BD0
/* 006AD8 00006AD8 8FBF0064 */   lw    $ra, 0x64($sp)
/* 006ADC 00006ADC 1680003B */  bnez  $s4, .L00006BCC
/* 006AE0 00006AE0 26524F40 */   addiu $s2, $s2, 0x4f40
/* 006AE4 00006AE4 5220003A */  beql  $s1, $zero, .L00006BD0
/* 006AE8 00006AE8 8FBF0064 */   lw    $ra, 0x64($sp)
/* 006AEC 00006AEC 4600F3A1 */  cvt.d.s $f14, $f30
/* 006AF0 00006AF0 8E500000 */  lw    $s0, ($s2)
.L00006AF4:
/* 006AF4 00006AF4 26520004 */  addiu $s2, $s2, 4
/* 006AF8 00006AF8 C6080010 */  lwc1  $f8, 0x10($s0)
/* 006AFC 00006AFC C6040000 */  lwc1  $f4, ($s0)
/* 006B00 00006B00 C6060008 */  lwc1  $f6, 8($s0)
/* 006B04 00006B04 46004021 */  cvt.d.s $f0, $f8
/* 006B08 00006B08 4604D501 */  sub.s $f20, $f26, $f4
/* 006B0C 00006B0C 46200280 */  add.d $f10, $f0, $f0
/* 006B10 00006B10 4606E581 */  sub.s $f22, $f28, $f6
/* 006B14 00006B14 462A7400 */  add.d $f16, $f14, $f10
/* 006B18 00006B18 46208620 */  cvt.s.d $f24, $f16
func_00006B1C:
/* 006B1C 00006B1C 4618A03C */  c.lt.s $f20, $f24
/* 006B20 00006B20 00000000 */  nop   
/* 006B24 00006B24 45000025 */  bc1f  .L00006BBC
/* 006B28 00006B28 00000000 */   nop   
/* 006B2C 00006B2C 4600C007 */  neg.s $f0, $f24
/* 006B30 00006B30 4614003C */  c.lt.s $f0, $f20
/* 006B34 00006B34 00000000 */  nop   
/* 006B38 00006B38 45000020 */  bc1f  .L00006BBC
/* 006B3C 00006B3C 00000000 */   nop   
/* 006B40 00006B40 4618B03C */  c.lt.s $f22, $f24
/* 006B44 00006B44 00000000 */  nop   
/* 006B48 00006B48 4500001C */  bc1f  .L00006BBC
/* 006B4C 00006B4C 00000000 */   nop   
/* 006B50 00006B50 4616003C */  c.lt.s $f0, $f22
/* 006B54 00006B54 00000000 */  nop   
/* 006B58 00006B58 45000018 */  bc1f  .L00006BBC
/* 006B5C 00006B5C 00000000 */   nop   
/* 006B60 00006B60 4614A482 */  mul.s $f18, $f20, $f20
/* 006B64 00006B64 F7AE0068 */  sdc1  $f14, 0x68($sp)
/* 006B68 00006B68 4616B102 */  mul.s $f4, $f22, $f22
/* 006B6C 00006B6C 0C00D3D8 */  jal   func_00034F60
/* 006B70 00006B70 46049300 */   add.s $f12, $f18, $f4
/* 006B74 00006B74 4618003C */  c.lt.s $f0, $f24
/* 006B78 00006B78 D7AE0068 */  ldc1  $f14, 0x68($sp)
/* 006B7C 00006B7C 4500000F */  bc1f  .L00006BBC
/* 006B80 00006B80 00000000 */   nop   
/* 006B84 00006B84 4600C083 */  div.s $f2, $f24, $f0
/* 006B88 00006B88 C6060000 */  lwc1  $f6, ($s0)
/* 006B8C 00006B8C C66A0000 */  lwc1  $f10, ($s3)
/* 006B90 00006B90 24140001 */  addiu $s4, $zero, 1
/* 006B94 00006B94 4602A502 */  mul.s $f20, $f20, $f2
/* 006B98 00006B98 46143200 */  add.s $f8, $f6, $f20
/* 006B9C 00006B9C 4602B582 */  mul.s $f22, $f22, $f2
/* 006BA0 00006BA0 460A4401 */  sub.s $f16, $f8, $f10
/* 006BA4 00006BA4 E6B00000 */  swc1  $f16, ($s5)
/* 006BA8 00006BA8 C6120008 */  lwc1  $f18, 8($s0)
/* 006BAC 00006BAC C6660008 */  lwc1  $f6, 8($s3)
/* 006BB0 00006BB0 46169100 */  add.s $f4, $f18, $f22
/* 006BB4 00006BB4 46062201 */  sub.s $f8, $f4, $f6
/* 006BB8 00006BB8 E6C80000 */  swc1  $f8, ($s6)
.L00006BBC:
/* 006BBC 00006BBC 16800003 */  bnez  $s4, .L00006BCC
/* 006BC0 00006BC0 2631FFFF */   addiu $s1, $s1, -1
/* 006BC4 00006BC4 5620FFCB */  bnezl $s1, .L00006AF4
/* 006BC8 00006BC8 8E500000 */   lw    $s0, ($s2)
.L00006BCC:
/* 006BCC 00006BCC 8FBF0064 */  lw    $ra, 0x64($sp)
.L00006BD0:
/* 006BD0 00006BD0 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 006BD4 00006BD4 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 006BD8 00006BD8 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 006BDC 00006BDC D7BA0030 */  ldc1  $f26, 0x30($sp)
/* 006BE0 00006BE0 D7BC0038 */  ldc1  $f28, 0x38($sp)
/* 006BE4 00006BE4 D7BE0040 */  ldc1  $f30, 0x40($sp)
/* 006BE8 00006BE8 8FB00048 */  lw    $s0, 0x48($sp)
.L00006BEC:
/* 006BEC 00006BEC 8FB1004C */  lw    $s1, 0x4c($sp)
/* 006BF0 00006BF0 8FB20050 */  lw    $s2, 0x50($sp)
/* 006BF4 00006BF4 8FB30054 */  lw    $s3, 0x54($sp)
/* 006BF8 00006BF8 8FB40058 */  lw    $s4, 0x58($sp)
/* 006BFC 00006BFC 8FB5005C */  lw    $s5, 0x5c($sp)
/* 006C00 00006C00 8FB60060 */  lw    $s6, 0x60($sp)
/* 006C04 00006C04 03E00008 */  jr    $ra
/* 006C08 00006C08 27BD00B0 */   addiu $sp, $sp, 0xb0