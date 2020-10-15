glabel func_8000B520
/* C120 8000B520 3C018008 */  lui        $at, 0x8008
/* C124 8000B524 A020D19C */  sb         $zero, -0x2e64($at)
/* C128 8000B528 03E00008 */  jr         $ra
/* C12C 8000B52C 00000000 */   nop       

glabel func_8000B530
/* C130 8000B530 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C134 8000B534 AFBF0024 */  sw         $ra, 0x24($sp)
/* C138 8000B538 AFB00020 */  sw         $s0, 0x20($sp)
/* C13C 8000B53C 3C018008 */  lui        $at, 0x8008
/* C140 8000B540 3C03803B */  lui        $v1, 0x803b
/* C144 8000B544 3C028008 */  lui        $v0, 0x8008
/* C148 8000B548 3C048008 */  lui        $a0, 0x8008
/* C14C 8000B54C AC20D1A0 */  sw         $zero, -0x2e60($at)
/* C150 8000B550 24844EE8 */  addiu      $a0, $a0, 0x4ee8
/* C154 8000B554 8C424EE4 */  lw         $v0, 0x4ee4($v0)
/* C158 8000B558 24639AD0 */  addiu      $v1, $v1, -0x6530
/* C15C 8000B55C 00008025 */  or         $s0, $zero, $zero
/* C160 8000B560 24050008 */  addiu      $a1, $zero, 8
.L8000B564:
/* C164 8000B564 946E0000 */  lhu        $t6, ($v1)
/* C168 8000B568 544E0024 */  bnel       $v0, $t6, .L8000B5FC
/* C16C 8000B56C 26100001 */   addiu     $s0, $s0, 1
/* C170 8000B570 8C8F0000 */  lw         $t7, ($a0)
/* C174 8000B574 94780002 */  lhu        $t8, 2($v1)
/* C178 8000B578 55F80020 */  bnel       $t7, $t8, .L8000B5FC
/* C17C 8000B57C 26100001 */   addiu     $s0, $s0, 1
/* C180 8000B580 02002025 */  or         $a0, $s0, $zero
/* C184 8000B584 0C002E76 */  jal        func_8000B9D8
/* C188 8000B588 AFA30028 */   sw        $v1, 0x28($sp)
/* C18C 8000B58C 1440001D */  bnez       $v0, .L8000B604
/* C190 8000B590 8FA30028 */   lw        $v1, 0x28($sp)
/* C194 8000B594 94790004 */  lhu        $t9, 4($v1)
/* C198 8000B598 3C09803B */  lui        $t1, 0x803b
/* C19C 8000B59C 25299A90 */  addiu      $t1, $t1, -0x6570
/* C1A0 8000B5A0 001940C0 */  sll        $t0, $t9, 3
/* C1A4 8000B5A4 01091021 */  addu       $v0, $t0, $t1
/* C1A8 8000B5A8 8C440000 */  lw         $a0, ($v0)
/* C1AC 8000B5AC 8C470004 */  lw         $a3, 4($v0)
/* C1B0 8000B5B0 3C05802A */  lui        $a1, 0x802a
/* C1B4 8000B5B4 24A57BC0 */  addiu      $a1, $a1, 0x7bc0
/* C1B8 8000B5B8 AFA30028 */  sw         $v1, 0x28($sp)
/* C1BC 8000B5BC 0C009098 */  jal        func_80024260
/* C1C0 8000B5C0 00E43023 */   subu      $a2, $a3, $a0
/* C1C4 8000B5C4 8FA30028 */  lw         $v1, 0x28($sp)
/* C1C8 8000B5C8 3C0A8008 */  lui        $t2, 0x8008
/* C1CC 8000B5CC 254AD1A8 */  addiu      $t2, $t2, -0x2e58
/* C1D0 8000B5D0 AFAA0010 */  sw         $t2, 0x10($sp)
/* C1D4 8000B5D4 02002025 */  or         $a0, $s0, $zero
/* C1D8 8000B5D8 8C65000C */  lw         $a1, 0xc($v1)
/* C1DC 8000B5DC 8C660010 */  lw         $a2, 0x10($v1)
/* C1E0 8000B5E0 0C002DF7 */  jal        func_8000B7DC
/* C1E4 8000B5E4 8C670014 */   lw        $a3, 0x14($v1)
/* C1E8 8000B5E8 260B0001 */  addiu      $t3, $s0, 1
/* C1EC 8000B5EC 3C018008 */  lui        $at, 0x8008
/* C1F0 8000B5F0 10000004 */  b          .L8000B604
/* C1F4 8000B5F4 AC2BD1A0 */   sw        $t3, -0x2e60($at)
/* C1F8 8000B5F8 26100001 */  addiu      $s0, $s0, 1
.L8000B5FC:
/* C1FC 8000B5FC 1605FFD9 */  bne        $s0, $a1, .L8000B564
/* C200 8000B600 24630018 */   addiu     $v1, $v1, 0x18
.L8000B604:
/* C204 8000B604 8FBF0024 */  lw         $ra, 0x24($sp)
/* C208 8000B608 8FB00020 */  lw         $s0, 0x20($sp)
/* C20C 8000B60C 27BD0040 */  addiu      $sp, $sp, 0x40
/* C210 8000B610 03E00008 */  jr         $ra
/* C214 8000B614 00000000 */   nop       

glabel func_8000B618
/* C218 8000B618 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C21C 8000B61C AFBF0024 */  sw         $ra, 0x24($sp)
/* C220 8000B620 00803825 */  or         $a3, $a0, $zero
/* C224 8000B624 3C0E8008 */  lui        $t6, 0x8008
/* C228 8000B628 8DCED1A0 */  lw         $t6, -0x2e60($t6)
/* C22C 8000B62C 3C098008 */  lui        $t1, 0x8008
/* C230 8000B630 2529D1A8 */  addiu      $t1, $t1, -0x2e58
/* C234 8000B634 11C0003E */  beqz       $t6, .L8000B730
/* C238 8000B638 3C0A8008 */   lui       $t2, 0x8008
/* C23C 8000B63C 852F0074 */  lh         $t7, 0x74($t1)
/* C240 8000B640 3C08803B */  lui        $t0, 0x803b
/* C244 8000B644 254AB2FC */  addiu      $t2, $t2, -0x4d04
/* C248 8000B648 000FC080 */  sll        $t8, $t7, 2
/* C24C 8000B64C 01184021 */  addu       $t0, $t0, $t8
/* C250 8000B650 8D08A164 */  lw         $t0, -0x5e9c($t0)
/* C254 8000B654 8D430000 */  lw         $v1, ($t2)
/* C258 8000B658 3C0BBA00 */  lui        $t3, 0xba00
/* C25C 8000B65C 356B0C02 */  ori        $t3, $t3, 0xc02
/* C260 8000B660 24790008 */  addiu      $t9, $v1, 8
/* C264 8000B664 AD590000 */  sw         $t9, ($t2)
/* C268 8000B668 240C2000 */  addiu      $t4, $zero, 0x2000
/* C26C 8000B66C AC6C0004 */  sw         $t4, 4($v1)
/* C270 8000B670 AC6B0000 */  sw         $t3, ($v1)
/* C274 8000B674 852D0076 */  lh         $t5, 0x76($t1)
/* C278 8000B678 3C058008 */  lui        $a1, 0x8008
/* C27C 8000B67C 24A5D1CC */  addiu      $a1, $a1, -0x2e34
/* C280 8000B680 000D7080 */  sll        $t6, $t5, 2
/* C284 8000B684 01CD7023 */  subu       $t6, $t6, $t5
/* C288 8000B688 000E7080 */  sll        $t6, $t6, 2
/* C28C 8000B68C 01C83021 */  addu       $a2, $t6, $t0
/* C290 8000B690 24040001 */  addiu      $a0, $zero, 1
/* C294 8000B694 0C0076CE */  jal        func_8001DB38
/* C298 8000B698 AFA8002C */   sw        $t0, 0x2c($sp)
/* C29C 8000B69C 3C0F8008 */  lui        $t7, 0x8008
/* C2A0 8000B6A0 85EFD21E */  lh         $t7, -0x2de2($t7)
/* C2A4 8000B6A4 8FA8002C */  lw         $t0, 0x2c($sp)
/* C2A8 8000B6A8 3C048008 */  lui        $a0, 0x8008
/* C2AC 8000B6AC 000FC080 */  sll        $t8, $t7, 2
/* C2B0 8000B6B0 030FC023 */  subu       $t8, $t8, $t7
/* C2B4 8000B6B4 0018C080 */  sll        $t8, $t8, 2
/* C2B8 8000B6B8 3C058008 */  lui        $a1, 0x8008
/* C2BC 8000B6BC 24A5D1CC */  addiu      $a1, $a1, -0x2e34
/* C2C0 8000B6C0 9484D224 */  lhu        $a0, -0x2ddc($a0)
/* C2C4 8000B6C4 0C00782B */  jal        func_8001E0AC
/* C2C8 8000B6C8 03083021 */   addu      $a2, $t8, $t0
/* C2CC 8000B6CC 3C198008 */  lui        $t9, 0x8008
/* C2D0 8000B6D0 8F39D230 */  lw         $t9, -0x2dd0($t9)
/* C2D4 8000B6D4 24010002 */  addiu      $at, $zero, 2
/* C2D8 8000B6D8 972B0000 */  lhu        $t3, ($t9)
/* C2DC 8000B6DC 11610014 */  beq        $t3, $at, .L8000B730
/* C2E0 8000B6E0 3C018008 */   lui       $at, 0x8008
/* C2E4 8000B6E4 C42CD1CC */  lwc1       $f12, -0x2e34($at)
/* C2E8 8000B6E8 3C018008 */  lui        $at, 0x8008
/* C2EC 8000B6EC C42ED1D0 */  lwc1       $f14, -0x2e30($at)
/* C2F0 8000B6F0 3C018008 */  lui        $at, 0x8008
/* C2F4 8000B6F4 C424D1FC */  lwc1       $f4, -0x2e04($at)
/* C2F8 8000B6F8 3C018008 */  lui        $at, 0x8008
/* C2FC 8000B6FC C426D200 */  lwc1       $f6, -0x2e00($at)
/* C300 8000B700 3C018008 */  lui        $at, 0x8008
/* C304 8000B704 C428D1F4 */  lwc1       $f8, -0x2e0c($at)
/* C308 8000B708 C42AD1F0 */  lwc1       $f10, -0x2e10($at)
/* C30C 8000B70C 3C068008 */  lui        $a2, 0x8008
/* C310 8000B710 3C078008 */  lui        $a3, 0x8008
/* C314 8000B714 460A4402 */  mul.s      $f16, $f8, $f10
/* C318 8000B718 8CE7D1F8 */  lw         $a3, -0x2e08($a3)
/* C31C 8000B71C 8CC6D1D4 */  lw         $a2, -0x2e2c($a2)
/* C320 8000B720 E7A40010 */  swc1       $f4, 0x10($sp)
/* C324 8000B724 E7A60014 */  swc1       $f6, 0x14($sp)
/* C328 8000B728 0C004618 */  jal        func_80011860
/* C32C 8000B72C E7B00018 */   swc1      $f16, 0x18($sp)
.L8000B730:
/* C330 8000B730 8FBF0024 */  lw         $ra, 0x24($sp)
/* C334 8000B734 27BD0038 */  addiu      $sp, $sp, 0x38
/* C338 8000B738 03E00008 */  jr         $ra
/* C33C 8000B73C 00000000 */   nop       

glabel func_8000B740
/* C340 8000B740 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C344 8000B744 AFBF0014 */  sw         $ra, 0x14($sp)
/* C348 8000B748 3C0E8008 */  lui        $t6, 0x8008
/* C34C 8000B74C 8DCED1A0 */  lw         $t6, -0x2e60($t6)
/* C350 8000B750 3C028008 */  lui        $v0, 0x8008
/* C354 8000B754 00001825 */  or         $v1, $zero, $zero
/* C358 8000B758 11C0001B */  beqz       $t6, .L8000B7C8
/* C35C 8000B75C 2442D1A8 */   addiu     $v0, $v0, -0x2e58
/* C360 8000B760 3C048008 */  lui        $a0, 0x8008
/* C364 8000B764 2484BAB8 */  addiu      $a0, $a0, -0x4548
/* C368 8000B768 C4860014 */  lwc1       $f6, 0x14($a0)
/* C36C 8000B76C C4440024 */  lwc1       $f4, 0x24($v0)
/* C370 8000B770 C48A001C */  lwc1       $f10, 0x1c($a0)
/* C374 8000B774 C448002C */  lwc1       $f8, 0x2c($v0)
/* C378 8000B778 46062001 */  sub.s      $f0, $f4, $f6
/* C37C 8000B77C AFA0001C */  sw         $zero, 0x1c($sp)
/* C380 8000B780 460A4081 */  sub.s      $f2, $f8, $f10
/* C384 8000B784 46000402 */  mul.s      $f16, $f0, $f0
/* C388 8000B788 00000000 */  nop        
/* C38C 8000B78C 46021482 */  mul.s      $f18, $f2, $f2
/* C390 8000B790 0C00D3D8 */  jal        func_80034F60
/* C394 8000B794 46128300 */   add.s     $f12, $f16, $f18
/* C398 8000B798 3C028008 */  lui        $v0, 0x8008
/* C39C 8000B79C 8C42D1A0 */  lw         $v0, -0x2e60($v0)
/* C3A0 8000B7A0 3C01803B */  lui        $at, 0x803b
/* C3A4 8000B7A4 8FA3001C */  lw         $v1, 0x1c($sp)
/* C3A8 8000B7A8 00027880 */  sll        $t7, $v0, 2
/* C3AC 8000B7AC 002F0821 */  addu       $at, $at, $t7
/* C3B0 8000B7B0 C4249B8C */  lwc1       $f4, -0x6474($at)
/* C3B4 8000B7B4 4604003C */  c.lt.s     $f0, $f4
/* C3B8 8000B7B8 00000000 */  nop        
/* C3BC 8000B7BC 45020003 */  bc1fl      .L8000B7CC
/* C3C0 8000B7C0 00601025 */   or        $v0, $v1, $zero
/* C3C4 8000B7C4 00401825 */  or         $v1, $v0, $zero
.L8000B7C8:
/* C3C8 8000B7C8 00601025 */  or         $v0, $v1, $zero
.L8000B7CC:
/* C3CC 8000B7CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* C3D0 8000B7D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* C3D4 8000B7D4 03E00008 */  jr         $ra
/* C3D8 8000B7D8 00000000 */   nop       

glabel func_8000B7DC
/* C3DC 8000B7DC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C3E0 8000B7E0 AFB00020 */  sw         $s0, 0x20($sp)
/* C3E4 8000B7E4 8FB00040 */  lw         $s0, 0x40($sp)
/* C3E8 8000B7E8 AFBF002C */  sw         $ra, 0x2c($sp)
/* C3EC 8000B7EC AFB20028 */  sw         $s2, 0x28($sp)
/* C3F0 8000B7F0 AFB10024 */  sw         $s1, 0x24($sp)
/* C3F4 8000B7F4 AFA40030 */  sw         $a0, 0x30($sp)
/* C3F8 8000B7F8 AFA50034 */  sw         $a1, 0x34($sp)
/* C3FC 8000B7FC AFA60038 */  sw         $a2, 0x38($sp)
/* C400 8000B800 AFA7003C */  sw         $a3, 0x3c($sp)
/* C404 8000B804 8FAE0030 */  lw         $t6, 0x30($sp)
/* C408 8000B808 3C18803B */  lui        $t8, 0x803b
/* C40C 8000B80C 27189F20 */  addiu      $t8, $t8, -0x60e0
/* C410 8000B810 000E78C0 */  sll        $t7, $t6, 3
/* C414 8000B814 01EE7823 */  subu       $t7, $t7, $t6
/* C418 8000B818 000F78C0 */  sll        $t7, $t7, 3
/* C41C 8000B81C 01F89021 */  addu       $s2, $t7, $t8
/* C420 8000B820 86590002 */  lh         $t9, 2($s2)
/* C424 8000B824 26110024 */  addiu      $s1, $s0, 0x24
/* C428 8000B828 24080001 */  addiu      $t0, $zero, 1
/* C42C 8000B82C 24090001 */  addiu      $t1, $zero, 1
/* C430 8000B830 A6190074 */  sh         $t9, 0x74($s0)
/* C434 8000B834 AFA90014 */  sw         $t1, 0x14($sp)
/* C438 8000B838 AFA80010 */  sw         $t0, 0x10($sp)
/* C43C 8000B83C 02202025 */  or         $a0, $s1, $zero
/* C440 8000B840 00002825 */  or         $a1, $zero, $zero
/* C444 8000B844 24060001 */  addiu      $a2, $zero, 1
/* C448 8000B848 0C00762C */  jal        func_8001D8B0
/* C44C 8000B84C 00003825 */   or        $a3, $zero, $zero
/* C450 8000B850 C6440020 */  lwc1       $f4, 0x20($s2)
/* C454 8000B854 260A0090 */  addiu      $t2, $s0, 0x90
/* C458 8000B858 3C014F80 */  lui        $at, 0x4f80
/* C45C 8000B85C E6240024 */  swc1       $f4, 0x24($s1)
/* C460 8000B860 C6460018 */  lwc1       $f6, 0x18($s2)
/* C464 8000B864 AE320064 */  sw         $s2, 0x64($s1)
/* C468 8000B868 AE2A0068 */  sw         $t2, 0x68($s1)
/* C46C 8000B86C E6260028 */  swc1       $f6, 0x28($s1)
/* C470 8000B870 AE120020 */  sw         $s2, 0x20($s0)
/* C474 8000B874 964B0006 */  lhu        $t3, 6($s2)
/* C478 8000B878 A60B000A */  sh         $t3, 0xa($s0)
/* C47C 8000B87C 964C0006 */  lhu        $t4, 6($s2)
/* C480 8000B880 A6000000 */  sh         $zero, ($s0)
/* C484 8000B884 A6000008 */  sh         $zero, 8($s0)
/* C488 8000B888 A60C000C */  sh         $t4, 0xc($s0)
/* C48C 8000B88C 964D000C */  lhu        $t5, 0xc($s2)
/* C490 8000B890 448D4000 */  mtc1       $t5, $f8
/* C494 8000B894 05A10004 */  bgez       $t5, .L8000B8A8
/* C498 8000B898 46804320 */   cvt.s.w   $f12, $f8
/* C49C 8000B89C 44815000 */  mtc1       $at, $f10
/* C4A0 8000B8A0 00000000 */  nop        
/* C4A4 8000B8A4 460A6300 */  add.s      $f12, $f12, $f10
.L8000B8A8:
/* C4A8 8000B8A8 0C00D3D8 */  jal        func_80034F60
/* C4AC 8000B8AC 00000000 */   nop       
/* C4B0 8000B8B0 3C018007 */  lui        $at, 0x8007
/* C4B4 8000B8B4 D43211D0 */  ldc1       $f18, 0x11d0($at)
/* C4B8 8000B8B8 46000421 */  cvt.d.s    $f16, $f0
/* C4BC 8000B8BC 3C018007 */  lui        $at, 0x8007
/* C4C0 8000B8C0 46328102 */  mul.d      $f4, $f16, $f18
/* C4C4 8000B8C4 D42611D8 */  ldc1       $f6, 0x11d8($at)
/* C4C8 8000B8C8 8E0E0020 */  lw         $t6, 0x20($s0)
/* C4CC 8000B8CC A6000090 */  sh         $zero, 0x90($s0)
/* C4D0 8000B8D0 3C013F80 */  lui        $at, 0x3f80
/* C4D4 8000B8D4 44818000 */  mtc1       $at, $f16
/* C4D8 8000B8D8 3C028008 */  lui        $v0, 0x8008
/* C4DC 8000B8DC 2442D110 */  addiu      $v0, $v0, -0x2ef0
/* C4E0 8000B8E0 46262200 */  add.d      $f8, $f4, $f6
/* C4E4 8000B8E4 44807000 */  mtc1       $zero, $f14
/* C4E8 8000B8E8 24070A00 */  addiu      $a3, $zero, 0xa00
/* C4EC 8000B8EC 462042A0 */  cvt.s.d    $f10, $f8
/* C4F0 8000B8F0 E60A0010 */  swc1       $f10, 0x10($s0)
/* C4F4 8000B8F4 95CF002A */  lhu        $t7, 0x2a($t6)
/* C4F8 8000B8F8 A60F0114 */  sh         $t7, 0x114($s0)
/* C4FC 8000B8FC 8E380064 */  lw         $t8, 0x64($s1)
/* C500 8000B900 9719000C */  lhu        $t9, 0xc($t8)
/* C504 8000B904 A6190116 */  sh         $t9, 0x116($s0)
/* C508 8000B908 8E280064 */  lw         $t0, 0x64($s1)
/* C50C 8000B90C 9509000E */  lhu        $t1, 0xe($t0)
/* C510 8000B910 E6100120 */  swc1       $f16, 0x120($s0)
/* C514 8000B914 A6090118 */  sh         $t1, 0x118($s0)
/* C518 8000B918 AFA20010 */  sw         $v0, 0x10($sp)
/* C51C 8000B91C 8FA60038 */  lw         $a2, 0x38($sp)
/* C520 8000B920 0C003B98 */  jal        func_8000EE60
/* C524 8000B924 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* C528 8000B928 3C028008 */  lui        $v0, 0x8008
/* C52C 8000B92C 2442D110 */  addiu      $v0, $v0, -0x2ef0
/* C530 8000B930 C4520000 */  lwc1       $f18, ($v0)
/* C534 8000B934 3C0A803B */  lui        $t2, 0x803b
/* C538 8000B938 254AA0A8 */  addiu      $t2, $t2, -0x5f58
/* C53C 8000B93C E6320000 */  swc1       $f18, ($s1)
/* C540 8000B940 C4440004 */  lwc1       $f4, 4($v0)
/* C544 8000B944 E6240004 */  swc1       $f4, 4($s1)
/* C548 8000B948 C4460008 */  lwc1       $f6, 8($v0)
/* C54C 8000B94C 164A000C */  bne        $s2, $t2, .L8000B980
/* C550 8000B950 E6260008 */   swc1      $f6, 8($s1)
/* C554 8000B954 960B0008 */  lhu        $t3, 8($s0)
/* C558 8000B958 3C01403E */  lui        $at, 0x403e
/* C55C 8000B95C 44818800 */  mtc1       $at, $f17
/* C560 8000B960 356C0004 */  ori        $t4, $t3, 4
/* C564 8000B964 A60C0008 */  sh         $t4, 8($s0)
/* C568 8000B968 C6280004 */  lwc1       $f8, 4($s1)
/* C56C 8000B96C 44808000 */  mtc1       $zero, $f16
/* C570 8000B970 460042A1 */  cvt.d.s    $f10, $f8
/* C574 8000B974 46305481 */  sub.d      $f18, $f10, $f16
/* C578 8000B978 46209120 */  cvt.s.d    $f4, $f18
/* C57C 8000B97C E6240004 */  swc1       $f4, 4($s1)
.L8000B980:
/* C580 8000B980 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* C584 8000B984 3C0E803B */  lui        $t6, 0x803b
/* C588 8000B988 240D0001 */  addiu      $t5, $zero, 1
/* C58C 8000B98C E6260010 */  swc1       $f6, 0x10($s1)
/* C590 8000B990 C448000C */  lwc1       $f8, 0xc($v0)
/* C594 8000B994 25CEA0A8 */  addiu      $t6, $t6, -0x5f58
/* C598 8000B998 35B80004 */  ori        $t8, $t5, 4
/* C59C 8000B99C E628002C */  swc1       $f8, 0x2c($s1)
/* C5A0 8000B9A0 C44A0010 */  lwc1       $f10, 0x10($v0)
/* C5A4 8000B9A4 E62A0030 */  swc1       $f10, 0x30($s1)
/* C5A8 8000B9A8 C4500014 */  lwc1       $f16, 0x14($v0)
/* C5AC 8000B9AC A62D005E */  sh         $t5, 0x5e($s1)
/* C5B0 8000B9B0 A6200060 */  sh         $zero, 0x60($s1)
/* C5B4 8000B9B4 164E0002 */  bne        $s2, $t6, .L8000B9C0
/* C5B8 8000B9B8 E6300034 */   swc1      $f16, 0x34($s1)
/* C5BC 8000B9BC A638005E */  sh         $t8, 0x5e($s1)
.L8000B9C0:
/* C5C0 8000B9C0 8FBF002C */  lw         $ra, 0x2c($sp)
/* C5C4 8000B9C4 8FB00020 */  lw         $s0, 0x20($sp)
/* C5C8 8000B9C8 8FB10024 */  lw         $s1, 0x24($sp)
/* C5CC 8000B9CC 8FB20028 */  lw         $s2, 0x28($sp)
/* C5D0 8000B9D0 03E00008 */  jr         $ra
/* C5D4 8000B9D4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000B9D8
/* C5D8 8000B9D8 308E0007 */  andi       $t6, $a0, 7
/* C5DC 8000B9DC 3C0F8005 */  lui        $t7, 0x8005
/* C5E0 8000B9E0 0004C0C2 */  srl        $t8, $a0, 3
/* C5E4 8000B9E4 3C198008 */  lui        $t9, 0x8008
/* C5E8 8000B9E8 0338C821 */  addu       $t9, $t9, $t8
/* C5EC 8000B9EC 01EE7821 */  addu       $t7, $t7, $t6
/* C5F0 8000B9F0 91EFD740 */  lbu        $t7, -0x28c0($t7)
/* C5F4 8000B9F4 9339D19C */  lbu        $t9, -0x2e64($t9)
/* C5F8 8000B9F8 01F91024 */  and        $v0, $t7, $t9
/* C5FC 8000B9FC 304800FF */  andi       $t0, $v0, 0xff
/* C600 8000BA00 01001025 */  or         $v0, $t0, $zero
/* C604 8000BA04 03E00008 */  jr         $ra
/* C608 8000BA08 00000000 */   nop       

glabel func_8000BA0C
/* C60C 8000BA0C AFA40000 */  sw         $a0, ($sp)
/* C610 8000BA10 308EFFFF */  andi       $t6, $a0, 0xffff
/* C614 8000BA14 01C02025 */  or         $a0, $t6, $zero
/* C618 8000BA18 3C188008 */  lui        $t8, 0x8008
/* C61C 8000BA1C 2718D19C */  addiu      $t8, $t8, -0x2e64
/* C620 8000BA20 000478C3 */  sra        $t7, $a0, 3
/* C624 8000BA24 30880007 */  andi       $t0, $a0, 7
/* C628 8000BA28 3C098005 */  lui        $t1, 0x8005
/* C62C 8000BA2C 01284821 */  addu       $t1, $t1, $t0
/* C630 8000BA30 01F81821 */  addu       $v1, $t7, $t8
/* C634 8000BA34 90790000 */  lbu        $t9, ($v1)
/* C638 8000BA38 9129D740 */  lbu        $t1, -0x28c0($t1)
/* C63C 8000BA3C 03295025 */  or         $t2, $t9, $t1
/* C640 8000BA40 A06A0000 */  sb         $t2, ($v1)
/* C644 8000BA44 03E00008 */  jr         $ra
/* C648 8000BA48 00000000 */   nop       

glabel func_8000BA4C
/* C64C 8000BA4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C650 8000BA50 AFBF0014 */  sw         $ra, 0x14($sp)
/* C654 8000BA54 00803825 */  or         $a3, $a0, $zero
/* C658 8000BA58 00073080 */  sll        $a2, $a3, 2
/* C65C 8000BA5C 3C02803B */  lui        $v0, 0x803b
/* C660 8000BA60 00461021 */  addu       $v0, $v0, $a2
/* C664 8000BA64 3C038008 */  lui        $v1, 0x8008
/* C668 8000BA68 8C42ABD8 */  lw         $v0, -0x5428($v0)
/* C66C 8000BA6C 2463C970 */  addiu      $v1, $v1, -0x3690
/* C670 8000BA70 24050020 */  addiu      $a1, $zero, 0x20
.L8000BA74:
/* C674 8000BA74 904E0000 */  lbu        $t6, ($v0)
/* C678 8000BA78 24A5FFFF */  addiu      $a1, $a1, -1
/* C67C 8000BA7C 24630001 */  addiu      $v1, $v1, 1
/* C680 8000BA80 24420001 */  addiu      $v0, $v0, 1
/* C684 8000BA84 14A0FFFB */  bnez       $a1, .L8000BA74
/* C688 8000BA88 A06EFFFF */   sb        $t6, -1($v1)
/* C68C 8000BA8C 3C02803B */  lui        $v0, 0x803b
/* C690 8000BA90 00461021 */  addu       $v0, $v0, $a2
/* C694 8000BA94 3C038008 */  lui        $v1, 0x8008
/* C698 8000BA98 8C42ABF8 */  lw         $v0, -0x5408($v0)
/* C69C 8000BA9C 2463C570 */  addiu      $v1, $v1, -0x3a90
/* C6A0 8000BAA0 24050400 */  addiu      $a1, $zero, 0x400
.L8000BAA4:
/* C6A4 8000BAA4 904F0000 */  lbu        $t7, ($v0)
/* C6A8 8000BAA8 24A5FFFC */  addiu      $a1, $a1, -4
/* C6AC 8000BAAC 24630004 */  addiu      $v1, $v1, 4
/* C6B0 8000BAB0 A06FFFFC */  sb         $t7, -4($v1)
/* C6B4 8000BAB4 90580001 */  lbu        $t8, 1($v0)
/* C6B8 8000BAB8 24420004 */  addiu      $v0, $v0, 4
/* C6BC 8000BABC A078FFFD */  sb         $t8, -3($v1)
/* C6C0 8000BAC0 9059FFFE */  lbu        $t9, -2($v0)
/* C6C4 8000BAC4 A079FFFE */  sb         $t9, -2($v1)
/* C6C8 8000BAC8 9048FFFF */  lbu        $t0, -1($v0)
/* C6CC 8000BACC 14A0FFF5 */  bnez       $a1, .L8000BAA4
/* C6D0 8000BAD0 A068FFFF */   sb        $t0, -1($v1)
/* C6D4 8000BAD4 3C058008 */  lui        $a1, 0x8008
/* C6D8 8000BAD8 3C098008 */  lui        $t1, 0x8008
/* C6DC 8000BADC 24A5D130 */  addiu      $a1, $a1, -0x2ed0
/* C6E0 8000BAE0 2529D1CC */  addiu      $t1, $t1, -0x2e34
/* C6E4 8000BAE4 252B006C */  addiu      $t3, $t1, 0x6c
/* C6E8 8000BAE8 00A06025 */  or         $t4, $a1, $zero
.L8000BAEC:
/* C6EC 8000BAEC 8D210000 */  lw         $at, ($t1)
/* C6F0 8000BAF0 2529000C */  addiu      $t1, $t1, 0xc
/* C6F4 8000BAF4 258C000C */  addiu      $t4, $t4, 0xc
/* C6F8 8000BAF8 AD81FFF4 */  sw         $at, -0xc($t4)
/* C6FC 8000BAFC 8D21FFF8 */  lw         $at, -8($t1)
/* C700 8000BB00 AD81FFF8 */  sw         $at, -8($t4)
/* C704 8000BB04 8D21FFFC */  lw         $at, -4($t1)
/* C708 8000BB08 152BFFF8 */  bne        $t1, $t3, .L8000BAEC
/* C70C 8000BB0C AD81FFFC */   sw        $at, -4($t4)
/* C710 8000BB10 24010007 */  addiu      $at, $zero, 7
/* C714 8000BB14 14E1000A */  bne        $a3, $at, .L8000BB40
/* C718 8000BB18 000768C0 */   sll       $t5, $a3, 3
/* C71C 8000BB1C 3C01C1F8 */  lui        $at, 0xc1f8
/* C720 8000BB20 44812000 */  mtc1       $at, $f4
/* C724 8000BB24 3C01430B */  lui        $at, 0x430b
/* C728 8000BB28 44813000 */  mtc1       $at, $f6
/* C72C 8000BB2C 3C01C3A4 */  lui        $at, 0xc3a4
/* C730 8000BB30 44814000 */  mtc1       $at, $f8
/* C734 8000BB34 E4A40000 */  swc1       $f4, ($a1)
/* C738 8000BB38 E4A60004 */  swc1       $f6, 4($a1)
/* C73C 8000BB3C E4A80008 */  swc1       $f8, 8($a1)
.L8000BB40:
/* C740 8000BB40 01A76823 */  subu       $t5, $t5, $a3
/* C744 8000BB44 3C0E803B */  lui        $t6, 0x803b
/* C748 8000BB48 25CE9BB0 */  addiu      $t6, $t6, -0x6450
/* C74C 8000BB4C 000D68C0 */  sll        $t5, $t5, 3
/* C750 8000BB50 0C00510D */  jal        func_80014434
/* C754 8000BB54 01AE2021 */   addu      $a0, $t5, $t6
/* C758 8000BB58 8FBF0014 */  lw         $ra, 0x14($sp)
/* C75C 8000BB5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* C760 8000BB60 03E00008 */  jr         $ra
/* C764 8000BB64 00000000 */   nop       

glabel func_8000BB68
/* C768 8000BB68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C76C 8000BB6C AFBF0014 */  sw         $ra, 0x14($sp)
/* C770 8000BB70 00802825 */  or         $a1, $a0, $zero
/* C774 8000BB74 24010007 */  addiu      $at, $zero, 7
/* C778 8000BB78 14A1004E */  bne        $a1, $at, .L8000BCB4
/* C77C 8000BB7C 00057080 */   sll       $t6, $a1, 2
/* C780 8000BB80 3C02803B */  lui        $v0, 0x803b
/* C784 8000BB84 004E1021 */  addu       $v0, $v0, $t6
/* C788 8000BB88 3C038008 */  lui        $v1, 0x8008
/* C78C 8000BB8C 8C42ABD8 */  lw         $v0, -0x5428($v0)
/* C790 8000BB90 2463C970 */  addiu      $v1, $v1, -0x3690
/* C794 8000BB94 24040020 */  addiu      $a0, $zero, 0x20
.L8000BB98:
/* C798 8000BB98 904F0000 */  lbu        $t7, ($v0)
/* C79C 8000BB9C 2484FFFF */  addiu      $a0, $a0, -1
/* C7A0 8000BBA0 24630001 */  addiu      $v1, $v1, 1
/* C7A4 8000BBA4 24420001 */  addiu      $v0, $v0, 1
/* C7A8 8000BBA8 1480FFFB */  bnez       $a0, .L8000BB98
/* C7AC 8000BBAC A06FFFFF */   sb        $t7, -1($v1)
/* C7B0 8000BBB0 3C02803B */  lui        $v0, 0x803b
/* C7B4 8000BBB4 3C038008 */  lui        $v1, 0x8008
/* C7B8 8000BBB8 2442AAB4 */  addiu      $v0, $v0, -0x554c
/* C7BC 8000BBBC 2463C570 */  addiu      $v1, $v1, -0x3a90
/* C7C0 8000BBC0 24040400 */  addiu      $a0, $zero, 0x400
.L8000BBC4:
/* C7C4 8000BBC4 90580000 */  lbu        $t8, ($v0)
/* C7C8 8000BBC8 2484FFFC */  addiu      $a0, $a0, -4
/* C7CC 8000BBCC 24630004 */  addiu      $v1, $v1, 4
/* C7D0 8000BBD0 A078FFFC */  sb         $t8, -4($v1)
/* C7D4 8000BBD4 90590001 */  lbu        $t9, 1($v0)
/* C7D8 8000BBD8 24420004 */  addiu      $v0, $v0, 4
/* C7DC 8000BBDC A079FFFD */  sb         $t9, -3($v1)
/* C7E0 8000BBE0 9048FFFE */  lbu        $t0, -2($v0)
/* C7E4 8000BBE4 A068FFFE */  sb         $t0, -2($v1)
/* C7E8 8000BBE8 9049FFFF */  lbu        $t1, -1($v0)
/* C7EC 8000BBEC 1480FFF5 */  bnez       $a0, .L8000BBC4
/* C7F0 8000BBF0 A069FFFF */   sb        $t1, -1($v1)
/* C7F4 8000BBF4 0C00B9DA */  jal        func_8002E768
/* C7F8 8000BBF8 24040001 */   addiu     $a0, $zero, 1
/* C7FC 8000BBFC 3C028008 */  lui        $v0, 0x8008
/* C800 8000BC00 3C048008 */  lui        $a0, 0x8008
/* C804 8000BC04 2484B2E4 */  addiu      $a0, $a0, -0x4d1c
/* C808 8000BC08 2442BAB8 */  addiu      $v0, $v0, -0x4548
/* C80C 8000BC0C 944A0008 */  lhu        $t2, 8($v0)
/* C810 8000BC10 8C8C0000 */  lw         $t4, ($a0)
/* C814 8000BC14 240E0031 */  addiu      $t6, $zero, 0x31
/* C818 8000BC18 354B0010 */  ori        $t3, $t2, 0x10
/* C81C 8000BC1C 358D0080 */  ori        $t5, $t4, 0x80
/* C820 8000BC20 A44B0008 */  sh         $t3, 8($v0)
/* C824 8000BC24 AC8D0000 */  sw         $t5, ($a0)
/* C828 8000BC28 3C018008 */  lui        $at, 0x8008
/* C82C 8000BC2C AC2EB2EC */  sw         $t6, -0x4d14($at)
/* C830 8000BC30 3C018008 */  lui        $at, 0x8008
/* C834 8000BC34 240F0003 */  addiu      $t7, $zero, 3
/* C838 8000BC38 A42FB2F0 */  sh         $t7, -0x4d10($at)
/* C83C 8000BC3C 3C018008 */  lui        $at, 0x8008
/* C840 8000BC40 2418002F */  addiu      $t8, $zero, 0x2f
/* C844 8000BC44 A438B2F2 */  sh         $t8, -0x4d0e($at)
/* C848 8000BC48 3C018008 */  lui        $at, 0x8008
/* C84C 8000BC4C 24190004 */  addiu      $t9, $zero, 4
/* C850 8000BC50 3C038008 */  lui        $v1, 0x8008
/* C854 8000BC54 A439B2E8 */  sh         $t9, -0x4d18($at)
/* C858 8000BC58 24635368 */  addiu      $v1, $v1, 0x5368
/* C85C 8000BC5C 44802000 */  mtc1       $zero, $f4
/* C860 8000BC60 24080022 */  addiu      $t0, $zero, 0x22
/* C864 8000BC64 24090001 */  addiu      $t1, $zero, 1
/* C868 8000BC68 240AFFFF */  addiu      $t2, $zero, -1
/* C86C 8000BC6C AC680000 */  sw         $t0, ($v1)
/* C870 8000BC70 AC690004 */  sw         $t1, 4($v1)
/* C874 8000BC74 AC6A0008 */  sw         $t2, 8($v1)
/* C878 8000BC78 3C018008 */  lui        $at, 0x8008
/* C87C 8000BC7C E424BA40 */  swc1       $f4, -0x45c0($at)
/* C880 8000BC80 3C014160 */  lui        $at, 0x4160
/* C884 8000BC84 44813000 */  mtc1       $at, $f6
/* C888 8000BC88 3C018008 */  lui        $at, 0x8008
/* C88C 8000BC8C 240B0108 */  addiu      $t3, $zero, 0x108
/* C890 8000BC90 E426BA44 */  swc1       $f6, -0x45bc($at)
/* C894 8000BC94 3C018007 */  lui        $at, 0x8007
/* C898 8000BC98 C42811E0 */  lwc1       $f8, 0x11e0($at)
/* C89C 8000BC9C 3C018008 */  lui        $at, 0x8008
/* C8A0 8000BCA0 E428BA48 */  swc1       $f8, -0x45b8($at)
/* C8A4 8000BCA4 3C018008 */  lui        $at, 0x8008
/* C8A8 8000BCA8 AC2BBA4C */  sw         $t3, -0x45b4($at)
/* C8AC 8000BCAC 10000011 */  b          .L8000BCF4
/* C8B0 8000BCB0 A4400006 */   sh        $zero, 6($v0)
.L8000BCB4:
/* C8B4 8000BCB4 3C038008 */  lui        $v1, 0x8008
/* C8B8 8000BCB8 00056840 */  sll        $t5, $a1, 1
/* C8BC 8000BCBC 3C0E8005 */  lui        $t6, 0x8005
/* C8C0 8000BCC0 2463BA80 */  addiu      $v1, $v1, -0x4580
/* C8C4 8000BCC4 01CD7021 */  addu       $t6, $t6, $t5
/* C8C8 8000BCC8 95CEC2C0 */  lhu        $t6, -0x3d40($t6)
/* C8CC 8000BCCC 946C0006 */  lhu        $t4, 6($v1)
/* C8D0 8000BCD0 018E7821 */  addu       $t7, $t4, $t6
/* C8D4 8000BCD4 31E2FFFF */  andi       $v0, $t7, 0xffff
/* C8D8 8000BCD8 284101F5 */  slti       $at, $v0, 0x1f5
/* C8DC 8000BCDC 14200004 */  bnez       $at, .L8000BCF0
/* C8E0 8000BCE0 A46F0006 */   sh        $t7, 6($v1)
/* C8E4 8000BCE4 241801F4 */  addiu      $t8, $zero, 0x1f4
/* C8E8 8000BCE8 A4780006 */  sh         $t8, 6($v1)
/* C8EC 8000BCEC 3302FFFF */  andi       $v0, $t8, 0xffff
.L8000BCF0:
/* C8F0 8000BCF0 A4620004 */  sh         $v0, 4($v1)
.L8000BCF4:
/* C8F4 8000BCF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* C8F8 8000BCF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* C8FC 8000BCFC 03E00008 */  jr         $ra
/* C900 8000BD00 00000000 */   nop       
/* C904 8000BD04 00000000 */  nop        
/* C908 8000BD08 00000000 */  nop        
/* C90C 8000BD0C 00000000 */  nop        
