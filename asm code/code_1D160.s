glabel func_8001C560
/* 1D160 8001C560 3C028009 */  lui        $v0, 0x8009
/* 1D164 8001C564 2442C592 */  addiu      $v0, $v0, -0x3a6e
/* 1D168 8001C568 944E0000 */  lhu        $t6, ($v0)
/* 1D16C 8001C56C 44802000 */  mtc1       $zero, $f4
/* 1D170 8001C570 3C188008 */  lui        $t8, 0x8008
/* 1D174 8001C574 31CF8000 */  andi       $t7, $t6, 0x8000
/* 1D178 8001C578 A44F0000 */  sh         $t7, ($v0)
/* 1D17C 8001C57C 97184F10 */  lhu        $t8, 0x4f10($t8)
/* 1D180 8001C580 3C018009 */  lui        $at, 0x8009
/* 1D184 8001C584 E424C574 */  swc1       $f4, -0x3a8c($at)
/* 1D188 8001C588 3C018009 */  lui        $at, 0x8009
/* 1D18C 8001C58C 33190001 */  andi       $t9, $t8, 1
/* 1D190 8001C590 13200016 */  beqz       $t9, .L8001C5EC
/* 1D194 8001C594 A420C578 */   sh        $zero, -0x3a88($at)
/* 1D198 8001C598 3C028008 */  lui        $v0, 0x8008
/* 1D19C 8001C59C 8C424F18 */  lw         $v0, 0x4f18($v0)
/* 1D1A0 8001C5A0 3C048008 */  lui        $a0, 0x8008
/* 1D1A4 8001C5A4 3C018009 */  lui        $at, 0x8009
/* 1D1A8 8001C5A8 8C430030 */  lw         $v1, 0x30($v0)
/* 1D1AC 8001C5AC 1060000C */  beqz       $v1, .L8001C5E0
/* 1D1B0 8001C5B0 00000000 */   nop       
/* 1D1B4 8001C5B4 8C844EE8 */  lw         $a0, 0x4ee8($a0)
/* 1D1B8 8001C5B8 3C018009 */  lui        $at, 0x8009
/* 1D1BC 8001C5BC 000440C0 */  sll        $t0, $a0, 3
/* 1D1C0 8001C5C0 00684821 */  addu       $t1, $v1, $t0
/* 1D1C4 8001C5C4 AC29C560 */  sw         $t1, -0x3aa0($at)
/* 1D1C8 8001C5C8 8C4A0034 */  lw         $t2, 0x34($v0)
/* 1D1CC 8001C5CC 00045900 */  sll        $t3, $a0, 4
/* 1D1D0 8001C5D0 3C018009 */  lui        $at, 0x8009
/* 1D1D4 8001C5D4 014B6021 */  addu       $t4, $t2, $t3
/* 1D1D8 8001C5D8 03E00008 */  jr         $ra
/* 1D1DC 8001C5DC AC2CC564 */   sw        $t4, -0x3a9c($at)
.L8001C5E0:
/* 1D1E0 8001C5E0 AC20C560 */  sw         $zero, -0x3aa0($at)
/* 1D1E4 8001C5E4 3C018009 */  lui        $at, 0x8009
/* 1D1E8 8001C5E8 AC20C564 */  sw         $zero, -0x3a9c($at)
.L8001C5EC:
/* 1D1EC 8001C5EC 03E00008 */  jr         $ra
/* 1D1F0 8001C5F0 00000000 */   nop       

glabel func_8001C5F4
/* 1D1F4 8001C5F4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1D1F8 8001C5F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1D1FC 8001C5FC 3C028009 */  lui        $v0, 0x8009
/* 1D200 8001C600 9442C592 */  lhu        $v0, -0x3a6e($v0)
/* 1D204 8001C604 304E0001 */  andi       $t6, $v0, 1
/* 1D208 8001C608 15C000AA */  bnez       $t6, .L8001C8B4
/* 1D20C 8001C60C 304F8000 */   andi      $t7, $v0, 0x8000
/* 1D210 8001C610 15E000A8 */  bnez       $t7, .L8001C8B4
/* 1D214 8001C614 3C188008 */   lui       $t8, 0x8008
/* 1D218 8001C618 9718BB2C */  lhu        $t8, -0x44d4($t8)
/* 1D21C 8001C61C 3C018008 */  lui        $at, 0x8008
/* 1D220 8001C620 33190001 */  andi       $t9, $t8, 1
/* 1D224 8001C624 572000A4 */  bnel       $t9, $zero, .L8001C8B8
/* 1D228 8001C628 8FBF001C */   lw        $ra, 0x1c($sp)
/* 1D22C 8001C62C C420BA5C */  lwc1       $f0, -0x45a4($at)
/* 1D230 8001C630 44802000 */  mtc1       $zero, $f4
/* 1D234 8001C634 3C038009 */  lui        $v1, 0x8009
/* 1D238 8001C638 2463C574 */  addiu      $v1, $v1, -0x3a8c
/* 1D23C 8001C63C 46002032 */  c.eq.s     $f4, $f0
/* 1D240 8001C640 00000000 */  nop        
/* 1D244 8001C644 4503009C */  bc1tl      .L8001C8B8
/* 1D248 8001C648 8FBF001C */   lw        $ra, 0x1c($sp)
/* 1D24C 8001C64C C4660000 */  lwc1       $f6, ($v1)
/* 1D250 8001C650 3C014049 */  lui        $at, 0x4049
/* 1D254 8001C654 44819800 */  mtc1       $at, $f19
/* 1D258 8001C658 46003200 */  add.s      $f8, $f6, $f0
/* 1D25C 8001C65C 44809000 */  mtc1       $zero, $f18
/* 1D260 8001C660 3C028009 */  lui        $v0, 0x8009
/* 1D264 8001C664 2442C578 */  addiu      $v0, $v0, -0x3a88
/* 1D268 8001C668 E4680000 */  swc1       $f8, ($v1)
/* 1D26C 8001C66C C46A0000 */  lwc1       $f10, ($v1)
/* 1D270 8001C670 46005421 */  cvt.d.s    $f16, $f10
/* 1D274 8001C674 4630903E */  c.le.d     $f18, $f16
/* 1D278 8001C678 00000000 */  nop        
/* 1D27C 8001C67C 4502008E */  bc1fl      .L8001C8B8
/* 1D280 8001C680 8FBF001C */   lw        $ra, 0x1c($sp)
/* 1D284 8001C684 94480000 */  lhu        $t0, ($v0)
/* 1D288 8001C688 240407D0 */  addiu      $a0, $zero, 0x7d0
/* 1D28C 8001C68C 25090032 */  addiu      $t1, $t0, 0x32
/* 1D290 8001C690 0C008BF4 */  jal        func_80022FD0
/* 1D294 8001C694 A4490000 */   sh        $t1, ($v0)
/* 1D298 8001C698 3C0A8009 */  lui        $t2, 0x8009
/* 1D29C 8001C69C 954AC578 */  lhu        $t2, -0x3a88($t2)
/* 1D2A0 8001C6A0 004A082B */  sltu       $at, $v0, $t2
/* 1D2A4 8001C6A4 10200080 */  beqz       $at, .L8001C8A8
/* 1D2A8 8001C6A8 3C028008 */   lui       $v0, 0x8008
/* 1D2AC 8001C6AC 2442BAB8 */  addiu      $v0, $v0, -0x4548
/* 1D2B0 8001C6B0 C44C0014 */  lwc1       $f12, 0x14($v0)
/* 1D2B4 8001C6B4 C44E001C */  lwc1       $f14, 0x1c($v0)
/* 1D2B8 8001C6B8 E7AC003C */  swc1       $f12, 0x3c($sp)
/* 1D2BC 8001C6BC 0C00754E */  jal        func_8001D538
/* 1D2C0 8001C6C0 E7AE0038 */   swc1      $f14, 0x38($sp)
/* 1D2C4 8001C6C4 10400078 */  beqz       $v0, .L8001C8A8
/* 1D2C8 8001C6C8 C7AC003C */   lwc1      $f12, 0x3c($sp)
/* 1D2CC 8001C6CC 3C068009 */  lui        $a2, 0x8009
/* 1D2D0 8001C6D0 8CC6C560 */  lw         $a2, -0x3aa0($a2)
/* 1D2D4 8001C6D4 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 1D2D8 8001C6D8 0C00751D */  jal        func_8001D474
/* 1D2DC 8001C6DC AFA20024 */   sw        $v0, 0x24($sp)
/* 1D2E0 8001C6E0 10400071 */  beqz       $v0, .L8001C8A8
/* 1D2E4 8001C6E4 8FA30024 */   lw        $v1, 0x24($sp)
/* 1D2E8 8001C6E8 3C018009 */  lui        $at, 0x8009
/* 1D2EC 8001C6EC A420C578 */  sh         $zero, -0x3a88($at)
/* 1D2F0 8001C6F0 846B0000 */  lh         $t3, ($v1)
/* 1D2F4 8001C6F4 846C0002 */  lh         $t4, 2($v1)
/* 1D2F8 8001C6F8 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* 1D2FC 8001C6FC 448B3000 */  mtc1       $t3, $f6
/* 1D300 8001C700 448C8000 */  mtc1       $t4, $f16
/* 1D304 8001C704 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* 1D308 8001C708 46803220 */  cvt.s.w    $f8, $f6
/* 1D30C 8001C70C AFA20028 */  sw         $v0, 0x28($sp)
/* 1D310 8001C710 AFA30024 */  sw         $v1, 0x24($sp)
/* 1D314 8001C714 468084A0 */  cvt.s.w    $f18, $f16
/* 1D318 8001C718 46082301 */  sub.s      $f12, $f4, $f8
/* 1D31C 8001C71C 0C008C84 */  jal        func_80023210
/* 1D320 8001C720 46125381 */   sub.s     $f14, $f10, $f18
/* 1D324 8001C724 8FA30024 */  lw         $v1, 0x24($sp)
/* 1D328 8001C728 8FA40028 */  lw         $a0, 0x28($sp)
/* 1D32C 8001C72C 44060000 */  mfc1       $a2, $f0
/* 1D330 8001C730 846D0000 */  lh         $t5, ($v1)
/* 1D334 8001C734 846E0002 */  lh         $t6, 2($v1)
/* 1D338 8001C738 24870008 */  addiu      $a3, $a0, 8
/* 1D33C 8001C73C 448D3000 */  mtc1       $t5, $f6
/* 1D340 8001C740 448E2000 */  mtc1       $t6, $f4
/* 1D344 8001C744 46803320 */  cvt.s.w    $f12, $f6
/* 1D348 8001C748 0C007590 */  jal        func_8001D640
/* 1D34C 8001C74C 468023A0 */   cvt.s.w   $f14, $f4
/* 1D350 8001C750 8FA30024 */  lw         $v1, 0x24($sp)
/* 1D354 8001C754 3C018009 */  lui        $at, 0x8009
/* 1D358 8001C758 3C028009 */  lui        $v0, 0x8009
/* 1D35C 8001C75C 846F0000 */  lh         $t7, ($v1)
/* 1D360 8001C760 2442C592 */  addiu      $v0, $v0, -0x3a6e
/* 1D364 8001C764 24190205 */  addiu      $t9, $zero, 0x205
/* 1D368 8001C768 448F4000 */  mtc1       $t7, $f8
/* 1D36C 8001C76C 3C0B8008 */  lui        $t3, 0x8008
/* 1D370 8001C770 3C0D8008 */  lui        $t5, 0x8008
/* 1D374 8001C774 46804420 */  cvt.s.w    $f16, $f8
/* 1D378 8001C778 3C098008 */  lui        $t1, 0x8008
/* 1D37C 8001C77C 24080014 */  addiu      $t0, $zero, 0x14
/* 1D380 8001C780 E430C59C */  swc1       $f16, -0x3a64($at)
/* 1D384 8001C784 84780002 */  lh         $t8, 2($v1)
/* 1D388 8001C788 3C018009 */  lui        $at, 0x8009
/* 1D38C 8001C78C 44985000 */  mtc1       $t8, $f10
/* 1D390 8001C790 00000000 */  nop        
/* 1D394 8001C794 468054A0 */  cvt.s.w    $f18, $f10
/* 1D398 8001C798 E432C5A0 */  swc1       $f18, -0x3a60($at)
/* 1D39C 8001C79C A4590000 */  sh         $t9, ($v0)
/* 1D3A0 8001C7A0 956BD0B0 */  lhu        $t3, -0x2f50($t3)
/* 1D3A4 8001C7A4 3C018009 */  lui        $at, 0x8009
/* 1D3A8 8001C7A8 A420C596 */  sh         $zero, -0x3a6a($at)
/* 1D3AC 8001C7AC 000B60C0 */  sll        $t4, $t3, 3
/* 1D3B0 8001C7B0 018B6021 */  addu       $t4, $t4, $t3
/* 1D3B4 8001C7B4 000C6080 */  sll        $t4, $t4, 2
/* 1D3B8 8001C7B8 018B6021 */  addu       $t4, $t4, $t3
/* 1D3BC 8001C7BC 000C60C0 */  sll        $t4, $t4, 3
/* 1D3C0 8001C7C0 01AC6821 */  addu       $t5, $t5, $t4
/* 1D3C4 8001C7C4 8DADC9B8 */  lw         $t5, -0x3648($t5)
/* 1D3C8 8001C7C8 8D29BAC8 */  lw         $t1, -0x4538($t1)
/* 1D3CC 8001C7CC 3C018009 */  lui        $at, 0x8009
/* 1D3D0 8001C7D0 A428C594 */  sh         $t0, -0x3a6c($at)
/* 1D3D4 8001C7D4 95AE000C */  lhu        $t6, 0xc($t5)
/* 1D3D8 8001C7D8 952A000C */  lhu        $t2, 0xc($t1)
/* 1D3DC 8001C7DC 014E082A */  slt        $at, $t2, $t6
/* 1D3E0 8001C7E0 10200006 */  beqz       $at, .L8001C7FC
/* 1D3E4 8001C7E4 3C018009 */   lui       $at, 0x8009
/* 1D3E8 8001C7E8 A420C598 */  sh         $zero, -0x3a68($at)
/* 1D3EC 8001C7EC 944F0000 */  lhu        $t7, ($v0)
/* 1D3F0 8001C7F0 35F80002 */  ori        $t8, $t7, 2
/* 1D3F4 8001C7F4 10000006 */  b          .L8001C810
/* 1D3F8 8001C7F8 A4580000 */   sh        $t8, ($v0)
.L8001C7FC:
/* 1D3FC 8001C7FC 3C198009 */  lui        $t9, 0x8009
/* 1D400 8001C800 9739C59A */  lhu        $t9, -0x3a66($t9)
/* 1D404 8001C804 3C018009 */  lui        $at, 0x8009
/* 1D408 8001C808 2728FFFF */  addiu      $t0, $t9, -1
/* 1D40C 8001C80C A428C598 */  sh         $t0, -0x3a68($at)
.L8001C810:
/* 1D410 8001C810 0C000E87 */  jal        func_80003A1C
/* 1D414 8001C814 00000000 */   nop       
/* 1D418 8001C818 0C008222 */  jal        func_80020888
/* 1D41C 8001C81C 00000000 */   nop       
/* 1D420 8001C820 3C0142C8 */  lui        $at, 0x42c8
/* 1D424 8001C824 44813000 */  mtc1       $at, $f6
/* 1D428 8001C828 3C028009 */  lui        $v0, 0x8009
/* 1D42C 8001C82C 2442C434 */  addiu      $v0, $v0, -0x3bcc
/* 1D430 8001C830 E4460000 */  swc1       $f6, ($v0)
/* 1D434 8001C834 C4440000 */  lwc1       $f4, ($v0)
/* 1D438 8001C838 3C018007 */  lui        $at, 0x8007
/* 1D43C 8001C83C D4301610 */  ldc1       $f16, 0x1610($at)
/* 1D440 8001C840 46002221 */  cvt.d.s    $f8, $f4
/* 1D444 8001C844 3C058009 */  lui        $a1, 0x8009
/* 1D448 8001C848 46304282 */  mul.d      $f10, $f8, $f16
/* 1D44C 8001C84C 3C068008 */  lui        $a2, 0x8008
/* 1D450 8001C850 3C078009 */  lui        $a3, 0x8009
/* 1D454 8001C854 8CE7C5A0 */  lw         $a3, -0x3a60($a3)
/* 1D458 8001C858 8CC6BAD0 */  lw         $a2, -0x4530($a2)
/* 1D45C 8001C85C 8CA5C59C */  lw         $a1, -0x3a64($a1)
/* 1D460 8001C860 00002025 */  or         $a0, $zero, $zero
/* 1D464 8001C864 462054A0 */  cvt.s.d    $f18, $f10
/* 1D468 8001C868 0C0066A6 */  jal        func_80019A98
/* 1D46C 8001C86C E7B20010 */   swc1      $f18, 0x10($sp)
/* 1D470 8001C870 3C018009 */  lui        $at, 0x8009
/* 1D474 8001C874 A422C55C */  sh         $v0, -0x3aa4($at)
/* 1D478 8001C878 3C018009 */  lui        $at, 0x8009
/* 1D47C 8001C87C A420C58C */  sh         $zero, -0x3a74($at)
/* 1D480 8001C880 3C018009 */  lui        $at, 0x8009
/* 1D484 8001C884 24090001 */  addiu      $t1, $zero, 1
/* 1D488 8001C888 3C048008 */  lui        $a0, 0x8008
/* 1D48C 8001C88C A429C58E */  sh         $t1, -0x3a72($at)
/* 1D490 8001C890 0C008BF4 */  jal        func_80022FD0
/* 1D494 8001C894 8C84C990 */   lw        $a0, -0x3670($a0)
/* 1D498 8001C898 3C018009 */  lui        $at, 0x8009
/* 1D49C 8001C89C A422C590 */  sh         $v0, -0x3a70($at)
/* 1D4A0 8001C8A0 0C0099EE */  jal        func_800267B8
/* 1D4A4 8001C8A4 2404000D */   addiu     $a0, $zero, 0xd
.L8001C8A8:
/* 1D4A8 8001C8A8 44803000 */  mtc1       $zero, $f6
/* 1D4AC 8001C8AC 3C018009 */  lui        $at, 0x8009
/* 1D4B0 8001C8B0 E426C574 */  swc1       $f6, -0x3a8c($at)
.L8001C8B4:
/* 1D4B4 8001C8B4 8FBF001C */  lw         $ra, 0x1c($sp)
.L8001C8B8:
/* 1D4B8 8001C8B8 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1D4BC 8001C8BC 03E00008 */  jr         $ra
/* 1D4C0 8001C8C0 00000000 */   nop       

glabel func_8001C8C4
/* 1D4C4 8001C8C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D4C8 8001C8C8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1D4CC 8001C8CC 3C028008 */  lui        $v0, 0x8008
/* 1D4D0 8001C8D0 8C42D1A0 */  lw         $v0, -0x2e60($v0)
/* 1D4D4 8001C8D4 24010007 */  addiu      $at, $zero, 7
/* 1D4D8 8001C8D8 3C038008 */  lui        $v1, 0x8008
/* 1D4DC 8001C8DC 14410007 */  bne        $v0, $at, .L8001C8FC
/* 1D4E0 8001C8E0 2463D0A8 */   addiu     $v1, $v1, -0x2f58
/* 1D4E4 8001C8E4 44800000 */  mtc1       $zero, $f0
/* 1D4E8 8001C8E8 3C018009 */  lui        $at, 0x8009
/* 1D4EC 8001C8EC E420C59C */  swc1       $f0, -0x3a64($at)
/* 1D4F0 8001C8F0 3C018009 */  lui        $at, 0x8009
/* 1D4F4 8001C8F4 10000009 */  b          .L8001C91C
/* 1D4F8 8001C8F8 E420C5A0 */   swc1      $f0, -0x3a60($at)
.L8001C8FC:
/* 1D4FC 8001C8FC 3C018008 */  lui        $at, 0x8008
/* 1D500 8001C900 C424D1CC */  lwc1       $f4, -0x2e34($at)
/* 1D504 8001C904 3C018009 */  lui        $at, 0x8009
/* 1D508 8001C908 E424C59C */  swc1       $f4, -0x3a64($at)
/* 1D50C 8001C90C 3C018008 */  lui        $at, 0x8008
/* 1D510 8001C910 C426D1D4 */  lwc1       $f6, -0x2e2c($at)
/* 1D514 8001C914 3C018009 */  lui        $at, 0x8009
/* 1D518 8001C918 E426C5A0 */  swc1       $f6, -0x3a60($at)
.L8001C91C:
/* 1D51C 8001C91C 240E0305 */  addiu      $t6, $zero, 0x305
/* 1D520 8001C920 3C018009 */  lui        $at, 0x8009
/* 1D524 8001C924 A42EC592 */  sh         $t6, -0x3a6e($at)
/* 1D528 8001C928 3C018009 */  lui        $at, 0x8009
/* 1D52C 8001C92C A420C596 */  sh         $zero, -0x3a6a($at)
/* 1D530 8001C930 3C018009 */  lui        $at, 0x8009
/* 1D534 8001C934 A420C594 */  sh         $zero, -0x3a6c($at)
/* 1D538 8001C938 8C6F0000 */  lw         $t7, ($v1)
/* 1D53C 8001C93C 3C088008 */  lui        $t0, 0x8008
/* 1D540 8001C940 3C018009 */  lui        $at, 0x8009
/* 1D544 8001C944 2508D0AC */  addiu      $t0, $t0, -0x2f54
/* 1D548 8001C948 AC2FC568 */  sw         $t7, -0x3a98($at)
/* 1D54C 8001C94C 8D180000 */  lw         $t8, ($t0)
/* 1D550 8001C950 3C018009 */  lui        $at, 0x8009
/* 1D554 8001C954 3C19803B */  lui        $t9, 0x803b
/* 1D558 8001C958 AC38C56C */  sw         $t8, -0x3a94($at)
/* 1D55C 8001C95C 3C018009 */  lui        $at, 0x8009
/* 1D560 8001C960 AC22C570 */  sw         $v0, -0x3a90($at)
/* 1D564 8001C964 3C09803B */  lui        $t1, 0x803b
/* 1D568 8001C968 2739A164 */  addiu      $t9, $t9, -0x5e9c
/* 1D56C 8001C96C 2529ABB8 */  addiu      $t1, $t1, -0x5448
/* 1D570 8001C970 AC790000 */  sw         $t9, ($v1)
/* 1D574 8001C974 AD090000 */  sw         $t1, ($t0)
/* 1D578 8001C978 3C0A8008 */  lui        $t2, 0x8008
/* 1D57C 8001C97C 254AC998 */  addiu      $t2, $t2, -0x3668
/* 1D580 8001C980 3C058009 */  lui        $a1, 0x8009
/* 1D584 8001C984 3C068009 */  lui        $a2, 0x8009
/* 1D588 8001C988 3C078008 */  lui        $a3, 0x8008
/* 1D58C 8001C98C 8CE7D1DC */  lw         $a3, -0x2e24($a3)
/* 1D590 8001C990 8CC6C5A0 */  lw         $a2, -0x3a60($a2)
/* 1D594 8001C994 8CA5C59C */  lw         $a1, -0x3a64($a1)
/* 1D598 8001C998 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1D59C 8001C99C 0C002DF7 */  jal        func_8000B7DC
/* 1D5A0 8001C9A0 2444FFFF */   addiu     $a0, $v0, -1
/* 1D5A4 8001C9A4 0C002CAE */  jal        func_8000B2B8
/* 1D5A8 8001C9A8 00000000 */   nop       
/* 1D5AC 8001C9AC 3C018008 */  lui        $at, 0x8008
/* 1D5B0 8001C9B0 3C028008 */  lui        $v0, 0x8008
/* 1D5B4 8001C9B4 AC20D1A0 */  sw         $zero, -0x2e60($at)
/* 1D5B8 8001C9B8 2442C990 */  addiu      $v0, $v0, -0x3670
/* 1D5BC 8001C9BC 240B0001 */  addiu      $t3, $zero, 1
/* 1D5C0 8001C9C0 AC4B0000 */  sw         $t3, ($v0)
/* 1D5C4 8001C9C4 3C018009 */  lui        $at, 0x8009
/* 1D5C8 8001C9C8 0C002498 */  jal        func_80009260
/* 1D5CC 8001C9CC A42BC59A */   sh        $t3, -0x3a66($at)
/* 1D5D0 8001C9D0 24020001 */  addiu      $v0, $zero, 1
/* 1D5D4 8001C9D4 3C018009 */  lui        $at, 0x8009
/* 1D5D8 8001C9D8 AC22C558 */  sw         $v0, -0x3aa8($at)
/* 1D5DC 8001C9DC 3C0D8008 */  lui        $t5, 0x8008
/* 1D5E0 8001C9E0 25ADC9BC */  addiu      $t5, $t5, -0x3644
/* 1D5E4 8001C9E4 3C018009 */  lui        $at, 0x8009
/* 1D5E8 8001C9E8 AC2DC538 */  sw         $t5, -0x3ac8($at)
/* 1D5EC 8001C9EC 3C018009 */  lui        $at, 0x8009
/* 1D5F0 8001C9F0 A422C58C */  sh         $v0, -0x3a74($at)
/* 1D5F4 8001C9F4 3C018009 */  lui        $at, 0x8009
/* 1D5F8 8001C9F8 3C0E8009 */  lui        $t6, 0x8009
/* 1D5FC 8001C9FC 95CEC59A */  lhu        $t6, -0x3a66($t6)
/* 1D600 8001CA00 A422C58E */  sh         $v0, -0x3a72($at)
/* 1D604 8001CA04 3C018009 */  lui        $at, 0x8009
/* 1D608 8001CA08 A420C590 */  sh         $zero, -0x3a70($at)
/* 1D60C 8001CA0C 3C188009 */  lui        $t8, 0x8009
/* 1D610 8001CA10 8F18C570 */  lw         $t8, -0x3a90($t8)
/* 1D614 8001CA14 3C018009 */  lui        $at, 0x8009
/* 1D618 8001CA18 25CFFFFF */  addiu      $t7, $t6, -1
/* 1D61C 8001CA1C A42FC598 */  sh         $t7, -0x3a68($at)
/* 1D620 8001CA20 24010008 */  addiu      $at, $zero, 8
/* 1D624 8001CA24 13010003 */  beq        $t8, $at, .L8001CA34
/* 1D628 8001CA28 24020029 */   addiu     $v0, $zero, 0x29
/* 1D62C 8001CA2C 10000001 */  b          .L8001CA34
/* 1D630 8001CA30 00001025 */   or        $v0, $zero, $zero
.L8001CA34:
/* 1D634 8001CA34 00022600 */  sll        $a0, $v0, 0x18
/* 1D638 8001CA38 0004CE03 */  sra        $t9, $a0, 0x18
/* 1D63C 8001CA3C 0C0099EE */  jal        func_800267B8
/* 1D640 8001CA40 03202025 */   or        $a0, $t9, $zero
/* 1D644 8001CA44 0C000E87 */  jal        func_80003A1C
/* 1D648 8001CA48 00000000 */   nop       
/* 1D64C 8001CA4C 0C008222 */  jal        func_80020888
/* 1D650 8001CA50 00000000 */   nop       
/* 1D654 8001CA54 3C098009 */  lui        $t1, 0x8009
/* 1D658 8001CA58 8D29C570 */  lw         $t1, -0x3a90($t1)
/* 1D65C 8001CA5C 3C018005 */  lui        $at, 0x8005
/* 1D660 8001CA60 3C028009 */  lui        $v0, 0x8009
/* 1D664 8001CA64 00095080 */  sll        $t2, $t1, 2
/* 1D668 8001CA68 002A0821 */  addu       $at, $at, $t2
/* 1D66C 8001CA6C C428D28C */  lwc1       $f8, -0x2d74($at)
/* 1D670 8001CA70 2442C434 */  addiu      $v0, $v0, -0x3bcc
/* 1D674 8001CA74 3C018007 */  lui        $at, 0x8007
/* 1D678 8001CA78 E4480000 */  swc1       $f8, ($v0)
/* 1D67C 8001CA7C C44A0000 */  lwc1       $f10, ($v0)
/* 1D680 8001CA80 D4321618 */  ldc1       $f18, 0x1618($at)
/* 1D684 8001CA84 3C058009 */  lui        $a1, 0x8009
/* 1D688 8001CA88 46005421 */  cvt.d.s    $f16, $f10
/* 1D68C 8001CA8C 3C068008 */  lui        $a2, 0x8008
/* 1D690 8001CA90 46328102 */  mul.d      $f4, $f16, $f18
/* 1D694 8001CA94 3C078009 */  lui        $a3, 0x8009
/* 1D698 8001CA98 8CE7C5A0 */  lw         $a3, -0x3a60($a3)
/* 1D69C 8001CA9C 8CC6D1D0 */  lw         $a2, -0x2e30($a2)
/* 1D6A0 8001CAA0 8CA5C59C */  lw         $a1, -0x3a64($a1)
/* 1D6A4 8001CAA4 00002025 */  or         $a0, $zero, $zero
/* 1D6A8 8001CAA8 462021A0 */  cvt.s.d    $f6, $f4
/* 1D6AC 8001CAAC 0C0066A6 */  jal        func_80019A98
/* 1D6B0 8001CAB0 E7A60010 */   swc1      $f6, 0x10($sp)
/* 1D6B4 8001CAB4 3C018009 */  lui        $at, 0x8009
/* 1D6B8 8001CAB8 A422C55C */  sh         $v0, -0x3aa4($at)
/* 1D6BC 8001CABC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1D6C0 8001CAC0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1D6C4 8001CAC4 03E00008 */  jr         $ra
/* 1D6C8 8001CAC8 00000000 */   nop       

glabel func_8001CACC
/* 1D6CC 8001CACC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D6D0 8001CAD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D6D4 8001CAD4 3C028009 */  lui        $v0, 0x8009
/* 1D6D8 8001CAD8 9442C58C */  lhu        $v0, -0x3a74($v0)
/* 1D6DC 8001CADC 3C198008 */  lui        $t9, 0x8008
/* 1D6E0 8001CAE0 2739C998 */  addiu      $t9, $t9, -0x3668
/* 1D6E4 8001CAE4 10400006 */  beqz       $v0, .L8001CB00
/* 1D6E8 8001CAE8 3C0E8009 */   lui       $t6, 0x8009
/* 1D6EC 8001CAEC 24010001 */  addiu      $at, $zero, 1
/* 1D6F0 8001CAF0 104100B2 */  beq        $v0, $at, .L8001CDBC
/* 1D6F4 8001CAF4 00000000 */   nop       
/* 1D6F8 8001CAF8 10000138 */  b          .L8001CFDC
/* 1D6FC 8001CAFC 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001CB00:
/* 1D700 8001CB00 95CEC590 */  lhu        $t6, -0x3a70($t6)
/* 1D704 8001CB04 3C028008 */  lui        $v0, 0x8008
/* 1D708 8001CB08 2442BAB8 */  addiu      $v0, $v0, -0x4548
/* 1D70C 8001CB0C 000E78C0 */  sll        $t7, $t6, 3
/* 1D710 8001CB10 01EE7821 */  addu       $t7, $t7, $t6
/* 1D714 8001CB14 000F7880 */  sll        $t7, $t7, 2
/* 1D718 8001CB18 01EE7821 */  addu       $t7, $t7, $t6
/* 1D71C 8001CB1C 000F78C0 */  sll        $t7, $t7, 3
/* 1D720 8001CB20 25F80024 */  addiu      $t8, $t7, 0x24
/* 1D724 8001CB24 03191821 */  addu       $v1, $t8, $t9
/* 1D728 8001CB28 C4640000 */  lwc1       $f4, ($v1)
/* 1D72C 8001CB2C C4460014 */  lwc1       $f6, 0x14($v0)
/* 1D730 8001CB30 C4680008 */  lwc1       $f8, 8($v1)
/* 1D734 8001CB34 C44A001C */  lwc1       $f10, 0x1c($v0)
/* 1D738 8001CB38 AFA30018 */  sw         $v1, 0x18($sp)
/* 1D73C 8001CB3C 46062301 */  sub.s      $f12, $f4, $f6
/* 1D740 8001CB40 0C008C84 */  jal        func_80023210
/* 1D744 8001CB44 460A4381 */   sub.s     $f14, $f8, $f10
/* 1D748 8001CB48 24040064 */  addiu      $a0, $zero, 0x64
/* 1D74C 8001CB4C 0C008BF4 */  jal        func_80022FD0
/* 1D750 8001CB50 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 1D754 8001CB54 2C410033 */  sltiu      $at, $v0, 0x33
/* 1D758 8001CB58 8FA30018 */  lw         $v1, 0x18($sp)
/* 1D75C 8001CB5C 14200019 */  bnez       $at, .L8001CBC4
/* 1D760 8001CB60 C7AE001C */   lwc1      $f14, 0x1c($sp)
/* 1D764 8001CB64 3C018007 */  lui        $at, 0x8007
/* 1D768 8001CB68 D4301620 */  ldc1       $f16, 0x1620($at)
/* 1D76C 8001CB6C 46007121 */  cvt.d.s    $f4, $f14
/* 1D770 8001CB70 3C018007 */  lui        $at, 0x8007
/* 1D774 8001CB74 46302180 */  add.d      $f6, $f4, $f16
/* 1D778 8001CB78 D4281628 */  ldc1       $f8, 0x1628($at)
/* 1D77C 8001CB7C 3C018007 */  lui        $at, 0x8007
/* 1D780 8001CB80 462033A0 */  cvt.s.d    $f14, $f6
/* 1D784 8001CB84 46007021 */  cvt.d.s    $f0, $f14
/* 1D788 8001CB88 4628003C */  c.lt.d     $f0, $f8
/* 1D78C 8001CB8C 00000000 */  nop        
/* 1D790 8001CB90 45020006 */  bc1fl      .L8001CBAC
/* 1D794 8001CB94 4620803C */   c.lt.d    $f16, $f0
/* 1D798 8001CB98 D42C1630 */  ldc1       $f12, 0x1630($at)
/* 1D79C 8001CB9C 462C0280 */  add.d      $f10, $f0, $f12
/* 1D7A0 8001CBA0 10000008 */  b          .L8001CBC4
/* 1D7A4 8001CBA4 462053A0 */   cvt.s.d   $f14, $f10
/* 1D7A8 8001CBA8 4620803C */  c.lt.d     $f16, $f0
.L8001CBAC:
/* 1D7AC 8001CBAC 3C018007 */  lui        $at, 0x8007
/* 1D7B0 8001CBB0 45000004 */  bc1f       .L8001CBC4
/* 1D7B4 8001CBB4 00000000 */   nop       
/* 1D7B8 8001CBB8 D42C1638 */  ldc1       $f12, 0x1638($at)
/* 1D7BC 8001CBBC 462C0101 */  sub.d      $f4, $f0, $f12
/* 1D7C0 8001CBC0 462023A0 */  cvt.s.d    $f14, $f4
.L8001CBC4:
/* 1D7C4 8001CBC4 3C018007 */  lui        $at, 0x8007
/* 1D7C8 8001CBC8 D42C1640 */  ldc1       $f12, 0x1640($at)
/* 1D7CC 8001CBCC 3C018007 */  lui        $at, 0x8007
/* 1D7D0 8001CBD0 D4301648 */  ldc1       $f16, 0x1648($at)
/* 1D7D4 8001CBD4 3C018007 */  lui        $at, 0x8007
/* 1D7D8 8001CBD8 D4281650 */  ldc1       $f8, 0x1650($at)
/* 1D7DC 8001CBDC 460071A1 */  cvt.d.s    $f6, $f14
/* 1D7E0 8001CBE0 3C018007 */  lui        $at, 0x8007
/* 1D7E4 8001CBE4 46283280 */  add.d      $f10, $f6, $f8
/* 1D7E8 8001CBE8 D4241658 */  ldc1       $f4, 0x1658($at)
/* 1D7EC 8001CBEC 462053A0 */  cvt.s.d    $f14, $f10
/* 1D7F0 8001CBF0 46007021 */  cvt.d.s    $f0, $f14
/* 1D7F4 8001CBF4 4624003C */  c.lt.d     $f0, $f4
/* 1D7F8 8001CBF8 00000000 */  nop        
/* 1D7FC 8001CBFC 45020005 */  bc1fl      .L8001CC14
/* 1D800 8001CC00 4620803C */   c.lt.d    $f16, $f0
/* 1D804 8001CC04 462C0180 */  add.d      $f6, $f0, $f12
/* 1D808 8001CC08 10000007 */  b          .L8001CC28
/* 1D80C 8001CC0C 462033A0 */   cvt.s.d   $f14, $f6
/* 1D810 8001CC10 4620803C */  c.lt.d     $f16, $f0
.L8001CC14:
/* 1D814 8001CC14 00000000 */  nop        
/* 1D818 8001CC18 45020004 */  bc1fl      .L8001CC2C
/* 1D81C 8001CC1C 44808000 */   mtc1      $zero, $f16
/* 1D820 8001CC20 462C0201 */  sub.d      $f8, $f0, $f12
/* 1D824 8001CC24 462043A0 */  cvt.s.d    $f14, $f8
.L8001CC28:
/* 1D828 8001CC28 44808000 */  mtc1       $zero, $f16
.L8001CC2C:
/* 1D82C 8001CC2C 3C058009 */  lui        $a1, 0x8009
/* 1D830 8001CC30 24A5C580 */  addiu      $a1, $a1, -0x3a80
/* 1D834 8001CC34 E4B00000 */  swc1       $f16, ($a1)
/* 1D838 8001CC38 8C620064 */  lw         $v0, 0x64($v1)
/* 1D83C 8001CC3C C442001C */  lwc1       $f2, 0x1c($v0)
/* 1D840 8001CC40 C44C0018 */  lwc1       $f12, 0x18($v0)
/* 1D844 8001CC44 460C103C */  c.lt.s     $f2, $f12
/* 1D848 8001CC48 00000000 */  nop        
/* 1D84C 8001CC4C 4502000D */  bc1fl      .L8001CC84
/* 1D850 8001CC50 C4640024 */   lwc1      $f4, 0x24($v1)
/* 1D854 8001CC54 C46A0024 */  lwc1       $f10, 0x24($v1)
/* 1D858 8001CC58 3C01402E */  lui        $at, 0x402e
/* 1D85C 8001CC5C 44819800 */  mtc1       $at, $f19
/* 1D860 8001CC60 460A6102 */  mul.s      $f4, $f12, $f10
/* 1D864 8001CC64 44809000 */  mtc1       $zero, $f18
/* 1D868 8001CC68 46002021 */  cvt.d.s    $f0, $f4
/* 1D86C 8001CC6C 46200180 */  add.d      $f6, $f0, $f0
/* 1D870 8001CC70 46323200 */  add.d      $f8, $f6, $f18
/* 1D874 8001CC74 462042A0 */  cvt.s.d    $f10, $f8
/* 1D878 8001CC78 1000000B */  b          .L8001CCA8
/* 1D87C 8001CC7C E4AA0004 */   swc1      $f10, 4($a1)
/* 1D880 8001CC80 C4640024 */  lwc1       $f4, 0x24($v1)
.L8001CC84:
/* 1D884 8001CC84 3C01402E */  lui        $at, 0x402e
/* 1D888 8001CC88 44819800 */  mtc1       $at, $f19
/* 1D88C 8001CC8C 46041182 */  mul.s      $f6, $f2, $f4
/* 1D890 8001CC90 44809000 */  mtc1       $zero, $f18
/* 1D894 8001CC94 46003021 */  cvt.d.s    $f0, $f6
/* 1D898 8001CC98 46200200 */  add.d      $f8, $f0, $f0
/* 1D89C 8001CC9C 46324280 */  add.d      $f10, $f8, $f18
/* 1D8A0 8001CCA0 46205120 */  cvt.s.d    $f4, $f10
/* 1D8A4 8001CCA4 E4A40004 */  swc1       $f4, 4($a1)
.L8001CCA8:
/* 1D8A8 8001CCA8 C4A60004 */  lwc1       $f6, 4($a1)
/* 1D8AC 8001CCAC 3C013FF8 */  lui        $at, 0x3ff8
/* 1D8B0 8001CCB0 44815800 */  mtc1       $at, $f11
/* 1D8B4 8001CCB4 44805000 */  mtc1       $zero, $f10
/* 1D8B8 8001CCB8 46003221 */  cvt.d.s    $f8, $f6
/* 1D8BC 8001CCBC 3C028008 */  lui        $v0, 0x8008
/* 1D8C0 8001CCC0 462A4102 */  mul.d      $f4, $f8, $f10
/* 1D8C4 8001CCC4 24426DC0 */  addiu      $v0, $v0, 0x6dc0
/* 1D8C8 8001CCC8 46007306 */  mov.s      $f12, $f14
/* 1D8CC 8001CCCC AFA30018 */  sw         $v1, 0x18($sp)
/* 1D8D0 8001CCD0 462021A0 */  cvt.s.d    $f6, $f4
/* 1D8D4 8001CCD4 0C008CBD */  jal        func_800232F4
/* 1D8D8 8001CCD8 E446004C */   swc1      $f6, 0x4c($v0)
/* 1D8DC 8001CCDC 8FA30018 */  lw         $v1, 0x18($sp)
/* 1D8E0 8001CCE0 3C058009 */  lui        $a1, 0x8009
/* 1D8E4 8001CCE4 24A5C580 */  addiu      $a1, $a1, -0x3a80
/* 1D8E8 8001CCE8 C4AA0000 */  lwc1       $f10, ($a1)
/* 1D8EC 8001CCEC C4680000 */  lwc1       $f8, ($v1)
/* 1D8F0 8001CCF0 3C028008 */  lui        $v0, 0x8008
/* 1D8F4 8001CCF4 24426DC0 */  addiu      $v0, $v0, 0x6dc0
/* 1D8F8 8001CCF8 460A4100 */  add.s      $f4, $f8, $f10
/* 1D8FC 8001CCFC C4A80004 */  lwc1       $f8, 4($a1)
/* 1D900 8001CD00 3C01402E */  lui        $at, 0x402e
/* 1D904 8001CD04 44819800 */  mtc1       $at, $f19
/* 1D908 8001CD08 E444000C */  swc1       $f4, 0xc($v0)
/* 1D90C 8001CD0C C4660008 */  lwc1       $f6, 8($v1)
/* 1D910 8001CD10 44809000 */  mtc1       $zero, $f18
/* 1D914 8001CD14 3C018008 */  lui        $at, 0x8008
/* 1D918 8001CD18 46083280 */  add.s      $f10, $f6, $f8
/* 1D91C 8001CD1C 44808000 */  mtc1       $zero, $f16
/* 1D920 8001CD20 3C058009 */  lui        $a1, 0x8009
/* 1D924 8001CD24 3C048009 */  lui        $a0, 0x8009
/* 1D928 8001CD28 E44A0014 */  swc1       $f10, 0x14($v0)
/* 1D92C 8001CD2C C4640004 */  lwc1       $f4, 4($v1)
/* 1D930 8001CD30 2484C58E */  addiu      $a0, $a0, -0x3a72
/* 1D934 8001CD34 24A5C58C */  addiu      $a1, $a1, -0x3a74
/* 1D938 8001CD38 460021A1 */  cvt.d.s    $f6, $f4
/* 1D93C 8001CD3C 46323200 */  add.d      $f8, $f6, $f18
/* 1D940 8001CD40 462042A0 */  cvt.s.d    $f10, $f8
/* 1D944 8001CD44 E44A0010 */  swc1       $f10, 0x10($v0)
/* 1D948 8001CD48 C4440010 */  lwc1       $f4, 0x10($v0)
/* 1D94C 8001CD4C C420BAD0 */  lwc1       $f0, -0x4530($at)
/* 1D950 8001CD50 3C014170 */  lui        $at, 0x4170
/* 1D954 8001CD54 44815000 */  mtc1       $at, $f10
/* 1D958 8001CD58 4600203C */  c.lt.s     $f4, $f0
/* 1D95C 8001CD5C 3C018007 */  lui        $at, 0x8007
/* 1D960 8001CD60 45020003 */  bc1fl      .L8001CD70
/* 1D964 8001CD64 E4500048 */   swc1      $f16, 0x48($v0)
/* 1D968 8001CD68 E4400010 */  swc1       $f0, 0x10($v0)
/* 1D96C 8001CD6C E4500048 */  swc1       $f16, 0x48($v0)
.L8001CD70:
/* 1D970 8001CD70 C4460048 */  lwc1       $f6, 0x48($v0)
/* 1D974 8001CD74 AC400000 */  sw         $zero, ($v0)
/* 1D978 8001CD78 E450003C */  swc1       $f16, 0x3c($v0)
/* 1D97C 8001CD7C E4460044 */  swc1       $f6, 0x44($v0)
/* 1D980 8001CD80 C4480044 */  lwc1       $f8, 0x44($v0)
/* 1D984 8001CD84 E44A0058 */  swc1       $f10, 0x58($v0)
/* 1D988 8001CD88 AC430080 */  sw         $v1, 0x80($v0)
/* 1D98C 8001CD8C E4480040 */  swc1       $f8, 0x40($v0)
/* 1D990 8001CD90 C4241660 */  lwc1       $f4, 0x1660($at)
/* 1D994 8001CD94 C446002C */  lwc1       $f6, 0x2c($v0)
/* 1D998 8001CD98 3C018008 */  lui        $at, 0x8008
/* 1D99C 8001CD9C E4440070 */  swc1       $f4, 0x70($v0)
/* 1D9A0 8001CDA0 E4266EF0 */  swc1       $f6, 0x6ef0($at)
/* 1D9A4 8001CDA4 94A80000 */  lhu        $t0, ($a1)
/* 1D9A8 8001CDA8 240A003C */  addiu      $t2, $zero, 0x3c
/* 1D9AC 8001CDAC A48A0000 */  sh         $t2, ($a0)
/* 1D9B0 8001CDB0 25090001 */  addiu      $t1, $t0, 1
/* 1D9B4 8001CDB4 10000088 */  b          .L8001CFD8
/* 1D9B8 8001CDB8 A4A90000 */   sh        $t1, ($a1)
.L8001CDBC:
/* 1D9BC 8001CDBC 3C048009 */  lui        $a0, 0x8009
/* 1D9C0 8001CDC0 2484C58E */  addiu      $a0, $a0, -0x3a72
/* 1D9C4 8001CDC4 948B0000 */  lhu        $t3, ($a0)
/* 1D9C8 8001CDC8 256CFFFF */  addiu      $t4, $t3, -1
/* 1D9CC 8001CDCC 318DFFFF */  andi       $t5, $t4, 0xffff
/* 1D9D0 8001CDD0 15A00081 */  bnez       $t5, .L8001CFD8
/* 1D9D4 8001CDD4 A48C0000 */   sh        $t4, ($a0)
/* 1D9D8 8001CDD8 3C028009 */  lui        $v0, 0x8009
/* 1D9DC 8001CDDC 2442C592 */  addiu      $v0, $v0, -0x3a6e
/* 1D9E0 8001CDE0 944E0000 */  lhu        $t6, ($v0)
/* 1D9E4 8001CDE4 3C048008 */  lui        $a0, 0x8008
/* 1D9E8 8001CDE8 31CFFDFF */  andi       $t7, $t6, 0xfdff
/* 1D9EC 8001CDEC A44F0000 */  sh         $t7, ($v0)
/* 1D9F0 8001CDF0 0C004FD7 */  jal        func_80013F5C
/* 1D9F4 8001CDF4 8C846ED8 */   lw        $a0, 0x6ed8($a0)
/* 1D9F8 8001CDF8 3C028008 */  lui        $v0, 0x8008
/* 1D9FC 8001CDFC 3C018009 */  lui        $at, 0x8009
/* 1DA00 8001CE00 C428C59C */  lwc1       $f8, -0x3a64($at)
/* 1DA04 8001CE04 2442BAB8 */  addiu      $v0, $v0, -0x4548
/* 1DA08 8001CE08 3C018009 */  lui        $at, 0x8009
/* 1DA0C 8001CE0C C44A0014 */  lwc1       $f10, 0x14($v0)
/* 1DA10 8001CE10 C424C5A0 */  lwc1       $f4, -0x3a60($at)
/* 1DA14 8001CE14 C446001C */  lwc1       $f6, 0x1c($v0)
/* 1DA18 8001CE18 460A4301 */  sub.s      $f12, $f8, $f10
/* 1DA1C 8001CE1C 0C008C84 */  jal        func_80023210
/* 1DA20 8001CE20 46062381 */   sub.s     $f14, $f4, $f6
/* 1DA24 8001CE24 3C018007 */  lui        $at, 0x8007
/* 1DA28 8001CE28 D4301668 */  ldc1       $f16, 0x1668($at)
/* 1DA2C 8001CE2C 46000221 */  cvt.d.s    $f8, $f0
/* 1DA30 8001CE30 3C058009 */  lui        $a1, 0x8009
/* 1DA34 8001CE34 46304280 */  add.d      $f10, $f8, $f16
/* 1DA38 8001CE38 3C018007 */  lui        $at, 0x8007
/* 1DA3C 8001CE3C 24A5C580 */  addiu      $a1, $a1, -0x3a80
/* 1DA40 8001CE40 462053A0 */  cvt.s.d    $f14, $f10
/* 1DA44 8001CE44 460070A1 */  cvt.d.s    $f2, $f14
/* 1DA48 8001CE48 4622803C */  c.lt.d     $f16, $f2
/* 1DA4C 8001CE4C 44808000 */  mtc1       $zero, $f16
/* 1DA50 8001CE50 45000006 */  bc1f       .L8001CE6C
/* 1DA54 8001CE54 00000000 */   nop       
/* 1DA58 8001CE58 3C018007 */  lui        $at, 0x8007
/* 1DA5C 8001CE5C D42C1670 */  ldc1       $f12, 0x1670($at)
/* 1DA60 8001CE60 462C1101 */  sub.d      $f4, $f2, $f12
/* 1DA64 8001CE64 1000000A */  b          .L8001CE90
/* 1DA68 8001CE68 462023A0 */   cvt.s.d   $f14, $f4
.L8001CE6C:
/* 1DA6C 8001CE6C D4261678 */  ldc1       $f6, 0x1678($at)
/* 1DA70 8001CE70 3C018007 */  lui        $at, 0x8007
/* 1DA74 8001CE74 4626103C */  c.lt.d     $f2, $f6
/* 1DA78 8001CE78 00000000 */  nop        
/* 1DA7C 8001CE7C 45020005 */  bc1fl      .L8001CE94
/* 1DA80 8001CE80 3C014248 */   lui       $at, 0x4248
/* 1DA84 8001CE84 D42C1680 */  ldc1       $f12, 0x1680($at)
/* 1DA88 8001CE88 462C1200 */  add.d      $f8, $f2, $f12
/* 1DA8C 8001CE8C 462043A0 */  cvt.s.d    $f14, $f8
.L8001CE90:
/* 1DA90 8001CE90 3C014248 */  lui        $at, 0x4248
.L8001CE94:
/* 1DA94 8001CE94 44815000 */  mtc1       $at, $f10
/* 1DA98 8001CE98 E4B00000 */  swc1       $f16, ($a1)
/* 1DA9C 8001CE9C 46007306 */  mov.s      $f12, $f14
/* 1DAA0 8001CEA0 0C008CBD */  jal        func_800232F4
/* 1DAA4 8001CEA4 E4AA0004 */   swc1      $f10, 4($a1)
/* 1DAA8 8001CEA8 3C038008 */  lui        $v1, 0x8008
/* 1DAAC 8001CEAC 3C058009 */  lui        $a1, 0x8009
/* 1DAB0 8001CEB0 24A5C580 */  addiu      $a1, $a1, -0x3a80
/* 1DAB4 8001CEB4 2463BAB8 */  addiu      $v1, $v1, -0x4548
/* 1DAB8 8001CEB8 C4640014 */  lwc1       $f4, 0x14($v1)
/* 1DABC 8001CEBC C4A60000 */  lwc1       $f6, ($a1)
/* 1DAC0 8001CEC0 C46A0018 */  lwc1       $f10, 0x18($v1)
/* 1DAC4 8001CEC4 3C01403E */  lui        $at, 0x403e
/* 1DAC8 8001CEC8 46062200 */  add.s      $f8, $f4, $f6
/* 1DACC 8001CECC 44803000 */  mtc1       $zero, $f6
/* 1DAD0 8001CED0 44813800 */  mtc1       $at, $f7
/* 1DAD4 8001CED4 3C028008 */  lui        $v0, 0x8008
/* 1DAD8 8001CED8 46005121 */  cvt.d.s    $f4, $f10
/* 1DADC 8001CEDC 24426DC0 */  addiu      $v0, $v0, 0x6dc0
/* 1DAE0 8001CEE0 E448000C */  swc1       $f8, 0xc($v0)
/* 1DAE4 8001CEE4 46262200 */  add.d      $f8, $f4, $f6
/* 1DAE8 8001CEE8 44808000 */  mtc1       $zero, $f16
/* 1DAEC 8001CEEC C4A60004 */  lwc1       $f6, 4($a1)
/* 1DAF0 8001CEF0 C464001C */  lwc1       $f4, 0x1c($v1)
/* 1DAF4 8001CEF4 462042A0 */  cvt.s.d    $f10, $f8
/* 1DAF8 8001CEF8 E4500048 */  swc1       $f16, 0x48($v0)
/* 1DAFC 8001CEFC 94590008 */  lhu        $t9, 8($v0)
/* 1DB00 8001CF00 46062200 */  add.s      $f8, $f4, $f6
/* 1DB04 8001CF04 E44A0010 */  swc1       $f10, 0x10($v0)
/* 1DB08 8001CF08 C44A0048 */  lwc1       $f10, 0x48($v0)
/* 1DB0C 8001CF0C 24180004 */  addiu      $t8, $zero, 4
/* 1DB10 8001CF10 37280010 */  ori        $t0, $t9, 0x10
/* 1DB14 8001CF14 E44A0044 */  swc1       $f10, 0x44($v0)
/* 1DB18 8001CF18 C4440044 */  lwc1       $f4, 0x44($v0)
/* 1DB1C 8001CF1C AC580000 */  sw         $t8, ($v0)
/* 1DB20 8001CF20 A4480008 */  sh         $t0, 8($v0)
/* 1DB24 8001CF24 E4480014 */  swc1       $f8, 0x14($v0)
/* 1DB28 8001CF28 3C098009 */  lui        $t1, 0x8009
/* 1DB2C 8001CF2C E450003C */  swc1       $f16, 0x3c($v0)
/* 1DB30 8001CF30 E4440040 */  swc1       $f4, 0x40($v0)
/* 1DB34 8001CF34 9529C592 */  lhu        $t1, -0x3a6e($t1)
/* 1DB38 8001CF38 3C0F8008 */  lui        $t7, 0x8008
/* 1DB3C 8001CF3C 3C0B8009 */  lui        $t3, 0x8009
/* 1DB40 8001CF40 312A0100 */  andi       $t2, $t1, 0x100
/* 1DB44 8001CF44 1140000E */  beqz       $t2, .L8001CF80
/* 1DB48 8001CF48 25EFBACC */   addiu     $t7, $t7, -0x4534
/* 1DB4C 8001CF4C 8D6BC570 */  lw         $t3, -0x3a90($t3)
/* 1DB50 8001CF50 24010008 */  addiu      $at, $zero, 8
/* 1DB54 8001CF54 1561000A */  bne        $t3, $at, .L8001CF80
/* 1DB58 8001CF58 3C014248 */   lui       $at, 0x4248
/* 1DB5C 8001CF5C 44813000 */  mtc1       $at, $f6
/* 1DB60 8001CF60 3C0141E0 */  lui        $at, 0x41e0
/* 1DB64 8001CF64 44814000 */  mtc1       $at, $f8
/* 1DB68 8001CF68 3C014334 */  lui        $at, 0x4334
/* 1DB6C 8001CF6C 44815000 */  mtc1       $at, $f10
/* 1DB70 8001CF70 E4460058 */  swc1       $f6, 0x58($v0)
/* 1DB74 8001CF74 E448005C */  swc1       $f8, 0x5c($v0)
/* 1DB78 8001CF78 10000011 */  b          .L8001CFC0
/* 1DB7C 8001CF7C E44A004C */   swc1      $f10, 0x4c($v0)
.L8001CF80:
/* 1DB80 8001CF80 3C0C8008 */  lui        $t4, 0x8008
/* 1DB84 8001CF84 8D8C4EE4 */  lw         $t4, 0x4ee4($t4)
/* 1DB88 8001CF88 3C0E8005 */  lui        $t6, 0x8005
/* 1DB8C 8001CF8C 25CED0A0 */  addiu      $t6, $t6, -0x2f60
/* 1DB90 8001CF90 000C6880 */  sll        $t5, $t4, 2
/* 1DB94 8001CF94 01AC6823 */  subu       $t5, $t5, $t4
/* 1DB98 8001CF98 000D6880 */  sll        $t5, $t5, 2
/* 1DB9C 8001CF9C 01AE1821 */  addu       $v1, $t5, $t6
/* 1DBA0 8001CFA0 C4660000 */  lwc1       $f6, ($v1)
/* 1DBA4 8001CFA4 C4440058 */  lwc1       $f4, 0x58($v0)
/* 1DBA8 8001CFA8 C44A004C */  lwc1       $f10, 0x4c($v0)
/* 1DBAC 8001CFAC 46062200 */  add.s      $f8, $f4, $f6
/* 1DBB0 8001CFB0 C4640004 */  lwc1       $f4, 4($v1)
/* 1DBB4 8001CFB4 46045180 */  add.s      $f6, $f10, $f4
/* 1DBB8 8001CFB8 E4480058 */  swc1       $f8, 0x58($v0)
/* 1DBBC 8001CFBC E446004C */  swc1       $f6, 0x4c($v0)
.L8001CFC0:
/* 1DBC0 8001CFC0 AC4F0080 */  sw         $t7, 0x80($v0)
/* 1DBC4 8001CFC4 3C018007 */  lui        $at, 0x8007
/* 1DBC8 8001CFC8 C4281688 */  lwc1       $f8, 0x1688($at)
/* 1DBCC 8001CFCC 3C018008 */  lui        $at, 0x8008
/* 1DBD0 8001CFD0 E4480070 */  swc1       $f8, 0x70($v0)
/* 1DBD4 8001CFD4 E4306EFC */  swc1       $f16, 0x6efc($at)
.L8001CFD8:
/* 1DBD8 8001CFD8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001CFDC:
/* 1DBDC 8001CFDC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1DBE0 8001CFE0 03E00008 */  jr         $ra
/* 1DBE4 8001CFE4 00000000 */   nop       

glabel func_8001CFE8
/* 1DBE8 8001CFE8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1DBEC 8001CFEC 3C068009 */  lui        $a2, 0x8009
/* 1DBF0 8001CFF0 24C6C592 */  addiu      $a2, $a2, -0x3a6e
/* 1DBF4 8001CFF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1DBF8 8001CFF8 94C30000 */  lhu        $v1, ($a2)
/* 1DBFC 8001CFFC 3C048009 */  lui        $a0, 0x8009
/* 1DC00 8001D000 2484C594 */  addiu      $a0, $a0, -0x3a6c
/* 1DC04 8001D004 306E0004 */  andi       $t6, $v1, 4
/* 1DC08 8001D008 51C000D0 */  beql       $t6, $zero, .L8001D34C
/* 1DC0C 8001D00C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 1DC10 8001D010 94820000 */  lhu        $v0, ($a0)
/* 1DC14 8001D014 10400003 */  beqz       $v0, .L8001D024
/* 1DC18 8001D018 244FFFFF */   addiu     $t7, $v0, -1
/* 1DC1C 8001D01C 100000CA */  b          .L8001D348
/* 1DC20 8001D020 A48F0000 */   sh        $t7, ($a0)
.L8001D024:
/* 1DC24 8001D024 30780002 */  andi       $t8, $v1, 2
/* 1DC28 8001D028 13000010 */  beqz       $t8, .L8001D06C
/* 1DC2C 8001D02C 3C198009 */   lui       $t9, 0x8009
/* 1DC30 8001D030 9739C598 */  lhu        $t9, -0x3a68($t9)
/* 1DC34 8001D034 3C0B8008 */  lui        $t3, 0x8008
/* 1DC38 8001D038 3C0E8008 */  lui        $t6, 0x8008
/* 1DC3C 8001D03C 00195040 */  sll        $t2, $t9, 1
/* 1DC40 8001D040 016A5821 */  addu       $t3, $t3, $t2
/* 1DC44 8001D044 956BD0B0 */  lhu        $t3, -0x2f50($t3)
/* 1DC48 8001D048 25CEC998 */  addiu      $t6, $t6, -0x3668
/* 1DC4C 8001D04C 000B60C0 */  sll        $t4, $t3, 3
/* 1DC50 8001D050 018B6021 */  addu       $t4, $t4, $t3
/* 1DC54 8001D054 000C6080 */  sll        $t4, $t4, 2
/* 1DC58 8001D058 018B6021 */  addu       $t4, $t4, $t3
/* 1DC5C 8001D05C 000C60C0 */  sll        $t4, $t4, 3
/* 1DC60 8001D060 258D0024 */  addiu      $t5, $t4, 0x24
/* 1DC64 8001D064 10000003 */  b          .L8001D074
/* 1DC68 8001D068 01AE4021 */   addu      $t0, $t5, $t6
.L8001D06C:
/* 1DC6C 8001D06C 3C088008 */  lui        $t0, 0x8008
/* 1DC70 8001D070 2508BACC */  addiu      $t0, $t0, -0x4534
.L8001D074:
/* 1DC74 8001D074 950F0060 */  lhu        $t7, 0x60($t0)
/* 1DC78 8001D078 31F80001 */  andi       $t8, $t7, 1
/* 1DC7C 8001D07C 170000B2 */  bnez       $t8, .L8001D348
/* 1DC80 8001D080 3C198008 */   lui       $t9, 0x8008
/* 1DC84 8001D084 8F39C990 */  lw         $t9, -0x3670($t9)
/* 1DC88 8001D088 00002825 */  or         $a1, $zero, $zero
/* 1DC8C 8001D08C 306A0400 */  andi       $t2, $v1, 0x400
/* 1DC90 8001D090 13200003 */  beqz       $t9, .L8001D0A0
/* 1DC94 8001D094 346C0008 */   ori       $t4, $v1, 8
/* 1DC98 8001D098 11400026 */  beqz       $t2, .L8001D134
/* 1DC9C 8001D09C 30790010 */   andi      $t9, $v1, 0x10
.L8001D0A0:
/* 1DCA0 8001D0A0 318D0100 */  andi       $t5, $t4, 0x100
/* 1DCA4 8001D0A4 A4CC0000 */  sh         $t4, ($a2)
/* 1DCA8 8001D0A8 11A00017 */  beqz       $t5, .L8001D108
/* 1DCAC 8001D0AC 24050001 */   addiu     $a1, $zero, 1
/* 1DCB0 8001D0B0 3C048009 */  lui        $a0, 0x8009
/* 1DCB4 8001D0B4 8C84C570 */  lw         $a0, -0x3a90($a0)
/* 1DCB8 8001D0B8 AFA5002C */  sw         $a1, 0x2c($sp)
/* 1DCBC 8001D0BC AFA80024 */  sw         $t0, 0x24($sp)
/* 1DCC0 8001D0C0 2484FFFF */  addiu      $a0, $a0, -1
/* 1DCC4 8001D0C4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1DCC8 8001D0C8 0C002E83 */  jal        func_8000BA0C
/* 1DCCC 8001D0CC 01C02025 */   or        $a0, $t6, $zero
/* 1DCD0 8001D0D0 3C048009 */  lui        $a0, 0x8009
/* 1DCD4 8001D0D4 8C84C570 */  lw         $a0, -0x3a90($a0)
/* 1DCD8 8001D0D8 0C002EDA */  jal        func_8000BB68
/* 1DCDC 8001D0DC 2484FFFF */   addiu     $a0, $a0, -1
/* 1DCE0 8001D0E0 3C0F8009 */  lui        $t7, 0x8009
/* 1DCE4 8001D0E4 8DEFC568 */  lw         $t7, -0x3a98($t7)
/* 1DCE8 8001D0E8 3C188009 */  lui        $t8, 0x8009
/* 1DCEC 8001D0EC 8F18C56C */  lw         $t8, -0x3a94($t8)
/* 1DCF0 8001D0F0 3C018008 */  lui        $at, 0x8008
/* 1DCF4 8001D0F4 AC2FD0A8 */  sw         $t7, -0x2f58($at)
/* 1DCF8 8001D0F8 3C018008 */  lui        $at, 0x8008
/* 1DCFC 8001D0FC 8FA5002C */  lw         $a1, 0x2c($sp)
/* 1DD00 8001D100 8FA80024 */  lw         $t0, 0x24($sp)
/* 1DD04 8001D104 AC38D0AC */  sw         $t8, -0x2f54($at)
.L8001D108:
/* 1DD08 8001D108 AFA5002C */  sw         $a1, 0x2c($sp)
/* 1DD0C 8001D10C 0C00760A */  jal        func_8001D828
/* 1DD10 8001D110 AFA80024 */   sw        $t0, 0x24($sp)
/* 1DD14 8001D114 3C068009 */  lui        $a2, 0x8009
/* 1DD18 8001D118 3C018008 */  lui        $at, 0x8008
/* 1DD1C 8001D11C AC22BA70 */  sw         $v0, -0x4590($at)
/* 1DD20 8001D120 24C6C592 */  addiu      $a2, $a2, -0x3a6e
/* 1DD24 8001D124 94C30000 */  lhu        $v1, ($a2)
/* 1DD28 8001D128 8FA5002C */  lw         $a1, 0x2c($sp)
/* 1DD2C 8001D12C 1000000F */  b          .L8001D16C
/* 1DD30 8001D130 8FA80024 */   lw        $t0, 0x24($sp)
.L8001D134:
/* 1DD34 8001D134 13200003 */  beqz       $t9, .L8001D144
/* 1DD38 8001D138 306A0100 */   andi      $t2, $v1, 0x100
/* 1DD3C 8001D13C 1000000B */  b          .L8001D16C
/* 1DD40 8001D140 24050001 */   addiu     $a1, $zero, 1
.L8001D144:
/* 1DD44 8001D144 15400009 */  bnez       $t2, .L8001D16C
/* 1DD48 8001D148 3C0B8008 */   lui       $t3, 0x8008
/* 1DD4C 8001D14C 956BBAC0 */  lhu        $t3, -0x4540($t3)
/* 1DD50 8001D150 346D0010 */  ori        $t5, $v1, 0x10
/* 1DD54 8001D154 316C0020 */  andi       $t4, $t3, 0x20
/* 1DD58 8001D158 11800004 */  beqz       $t4, .L8001D16C
/* 1DD5C 8001D15C 00000000 */   nop       
/* 1DD60 8001D160 A4CD0000 */  sh         $t5, ($a2)
/* 1DD64 8001D164 24050001 */  addiu      $a1, $zero, 1
/* 1DD68 8001D168 31A3FFFF */  andi       $v1, $t5, 0xffff
.L8001D16C:
/* 1DD6C 8001D16C 10A00024 */  beqz       $a1, .L8001D200
/* 1DD70 8001D170 3062FFFB */   andi      $v0, $v1, 0xfffb
/* 1DD74 8001D174 306EFFFE */  andi       $t6, $v1, 0xfffe
/* 1DD78 8001D178 A4CE0000 */  sh         $t6, ($a2)
/* 1DD7C 8001D17C 3C018009 */  lui        $at, 0x8009
/* 1DD80 8001D180 3C048009 */  lui        $a0, 0x8009
/* 1DD84 8001D184 A420C630 */  sh         $zero, -0x39d0($at)
/* 1DD88 8001D188 0C006729 */  jal        func_80019CA4
/* 1DD8C 8001D18C 9484C55C */   lhu       $a0, -0x3aa4($a0)
/* 1DD90 8001D190 0C0023DB */  jal        func_80008F6C
/* 1DD94 8001D194 00000000 */   nop       
/* 1DD98 8001D198 3C048008 */  lui        $a0, 0x8008
/* 1DD9C 8001D19C 0C0050F0 */  jal        func_800143C0
/* 1DDA0 8001D1A0 8C846ED8 */   lw        $a0, 0x6ed8($a0)
/* 1DDA4 8001D1A4 3C068009 */  lui        $a2, 0x8009
/* 1DDA8 8001D1A8 24C6C592 */  addiu      $a2, $a2, -0x3a6e
/* 1DDAC 8001D1AC 94C30000 */  lhu        $v1, ($a2)
/* 1DDB0 8001D1B0 3C058008 */  lui        $a1, 0x8008
/* 1DDB4 8001D1B4 2404002B */  addiu      $a0, $zero, 0x2b
/* 1DDB8 8001D1B8 306F0100 */  andi       $t7, $v1, 0x100
/* 1DDBC 8001D1BC 11E00003 */  beqz       $t7, .L8001D1CC
/* 1DDC0 8001D1C0 3078FEFF */   andi      $t8, $v1, 0xfeff
/* 1DDC4 8001D1C4 A4D80000 */  sh         $t8, ($a2)
/* 1DDC8 8001D1C8 3303FFFF */  andi       $v1, $t8, 0xffff
.L8001D1CC:
/* 1DDCC 8001D1CC 30790010 */  andi       $t9, $v1, 0x10
/* 1DDD0 8001D1D0 13200007 */  beqz       $t9, .L8001D1F0
/* 1DDD4 8001D1D4 00003025 */   or        $a2, $zero, $zero
/* 1DDD8 8001D1D8 3C048008 */  lui        $a0, 0x8008
/* 1DDDC 8001D1DC 8C844EE4 */  lw         $a0, 0x4ee4($a0)
/* 1DDE0 8001D1E0 0C009A13 */  jal        func_8002684C
/* 1DDE4 8001D1E4 8CA54EE8 */   lw        $a1, 0x4ee8($a1)
/* 1DDE8 8001D1E8 10000058 */  b          .L8001D34C
/* 1DDEC 8001D1EC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001D1F0:
/* 1DDF0 8001D1F0 0C0099FE */  jal        func_800267F8
/* 1DDF4 8001D1F4 24050008 */   addiu     $a1, $zero, 8
/* 1DDF8 8001D1F8 10000054 */  b          .L8001D34C
/* 1DDFC 8001D1FC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001D200:
/* 1DE00 8001D200 A4C20000 */  sh         $v0, ($a2)
/* 1DE04 8001D204 304B0002 */  andi       $t3, $v0, 2
/* 1DE08 8001D208 11600008 */  beqz       $t3, .L8001D22C
/* 1DE0C 8001D20C 01601025 */   or        $v0, $t3, $zero
/* 1DE10 8001D210 0C0024CB */  jal        func_8000932C
/* 1DE14 8001D214 AFA80024 */   sw        $t0, 0x24($sp)
/* 1DE18 8001D218 3C028009 */  lui        $v0, 0x8009
/* 1DE1C 8001D21C 9442C592 */  lhu        $v0, -0x3a6e($v0)
/* 1DE20 8001D220 8FA80024 */  lw         $t0, 0x24($sp)
/* 1DE24 8001D224 304C0002 */  andi       $t4, $v0, 2
/* 1DE28 8001D228 01801025 */  or         $v0, $t4, $zero
.L8001D22C:
/* 1DE2C 8001D22C C5040000 */  lwc1       $f4, ($t0)
/* 1DE30 8001D230 3C038009 */  lui        $v1, 0x8009
/* 1DE34 8001D234 2463C5A4 */  addiu      $v1, $v1, -0x3a5c
/* 1DE38 8001D238 E4640000 */  swc1       $f4, ($v1)
/* 1DE3C 8001D23C C5060008 */  lwc1       $f6, 8($t0)
/* 1DE40 8001D240 3C098009 */  lui        $t1, 0x8009
/* 1DE44 8001D244 2529C430 */  addiu      $t1, $t1, -0x3bd0
/* 1DE48 8001D248 10400010 */  beqz       $v0, .L8001D28C
/* 1DE4C 8001D24C E5260000 */   swc1      $f6, ($t1)
/* 1DE50 8001D250 3C0D8009 */  lui        $t5, 0x8009
/* 1DE54 8001D254 95ADC598 */  lhu        $t5, -0x3a68($t5)
/* 1DE58 8001D258 3C0F8008 */  lui        $t7, 0x8008
/* 1DE5C 8001D25C 3C018008 */  lui        $at, 0x8008
/* 1DE60 8001D260 000D7040 */  sll        $t6, $t5, 1
/* 1DE64 8001D264 01EE7821 */  addu       $t7, $t7, $t6
/* 1DE68 8001D268 95EFD0B0 */  lhu        $t7, -0x2f50($t7)
/* 1DE6C 8001D26C 000FC0C0 */  sll        $t8, $t7, 3
/* 1DE70 8001D270 030FC021 */  addu       $t8, $t8, $t7
/* 1DE74 8001D274 0018C080 */  sll        $t8, $t8, 2
/* 1DE78 8001D278 030FC021 */  addu       $t8, $t8, $t7
/* 1DE7C 8001D27C 0018C0C0 */  sll        $t8, $t8, 3
/* 1DE80 8001D280 00380821 */  addu       $at, $at, $t8
/* 1DE84 8001D284 10000003 */  b          .L8001D294
/* 1DE88 8001D288 C420C9A8 */   lwc1      $f0, -0x3658($at)
.L8001D28C:
/* 1DE8C 8001D28C 3C018008 */  lui        $at, 0x8008
/* 1DE90 8001D290 C420BAC4 */  lwc1       $f0, -0x453c($at)
.L8001D294:
/* 1DE94 8001D294 10400011 */  beqz       $v0, .L8001D2DC
/* 1DE98 8001D298 3C018007 */   lui       $at, 0x8007
/* 1DE9C 8001D29C 3C198009 */  lui        $t9, 0x8009
/* 1DEA0 8001D2A0 9739C598 */  lhu        $t9, -0x3a68($t9)
/* 1DEA4 8001D2A4 3C0B8008 */  lui        $t3, 0x8008
/* 1DEA8 8001D2A8 3C0E8008 */  lui        $t6, 0x8008
/* 1DEAC 8001D2AC 00195040 */  sll        $t2, $t9, 1
/* 1DEB0 8001D2B0 016A5821 */  addu       $t3, $t3, $t2
/* 1DEB4 8001D2B4 956BD0B0 */  lhu        $t3, -0x2f50($t3)
/* 1DEB8 8001D2B8 25CEC998 */  addiu      $t6, $t6, -0x3668
/* 1DEBC 8001D2BC 000B60C0 */  sll        $t4, $t3, 3
/* 1DEC0 8001D2C0 018B6021 */  addu       $t4, $t4, $t3
/* 1DEC4 8001D2C4 000C6080 */  sll        $t4, $t4, 2
/* 1DEC8 8001D2C8 018B6021 */  addu       $t4, $t4, $t3
/* 1DECC 8001D2CC 000C60C0 */  sll        $t4, $t4, 3
/* 1DED0 8001D2D0 258D0024 */  addiu      $t5, $t4, 0x24
/* 1DED4 8001D2D4 10000003 */  b          .L8001D2E4
/* 1DED8 8001D2D8 01AE4021 */   addu      $t0, $t5, $t6
.L8001D2DC:
/* 1DEDC 8001D2DC 3C088008 */  lui        $t0, 0x8008
/* 1DEE0 8001D2E0 2508BACC */  addiu      $t0, $t0, -0x4534
.L8001D2E4:
/* 1DEE4 8001D2E4 8D0F0068 */  lw         $t7, 0x68($t0)
/* 1DEE8 8001D2E8 8D180064 */  lw         $t8, 0x64($t0)
/* 1DEEC 8001D2EC C5100024 */  lwc1       $f16, 0x24($t0)
/* 1DEF0 8001D2F0 C5E80090 */  lwc1       $f8, 0x90($t7)
/* 1DEF4 8001D2F4 C70A0018 */  lwc1       $f10, 0x18($t8)
/* 1DEF8 8001D2F8 46080002 */  mul.s      $f0, $f0, $f8
/* 1DEFC 8001D2FC 00000000 */  nop        
/* 1DF00 8001D300 46105482 */  mul.s      $f18, $f10, $f16
/* 1DF04 8001D304 10400003 */  beqz       $v0, .L8001D314
/* 1DF08 8001D308 46120000 */   add.s     $f0, $f0, $f18
/* 1DF0C 8001D30C 10000002 */  b          .L8001D318
/* 1DF10 8001D310 24020001 */   addiu     $v0, $zero, 1
.L8001D314:
/* 1DF14 8001D314 24020002 */  addiu      $v0, $zero, 2
.L8001D318:
/* 1DF18 8001D318 D4261690 */  ldc1       $f6, 0x1690($at)
/* 1DF1C 8001D31C 46000121 */  cvt.d.s    $f4, $f0
/* 1DF20 8001D320 8D060004 */  lw         $a2, 4($t0)
/* 1DF24 8001D324 46262202 */  mul.d      $f8, $f4, $f6
/* 1DF28 8001D328 3044FFFF */  andi       $a0, $v0, 0xffff
/* 1DF2C 8001D32C 8C650000 */  lw         $a1, ($v1)
/* 1DF30 8001D330 8D270000 */  lw         $a3, ($t1)
/* 1DF34 8001D334 462042A0 */  cvt.s.d    $f10, $f8
/* 1DF38 8001D338 0C0066A6 */  jal        func_80019A98
/* 1DF3C 8001D33C E7AA0010 */   swc1      $f10, 0x10($sp)
/* 1DF40 8001D340 3C018009 */  lui        $at, 0x8009
/* 1DF44 8001D344 A422C55E */  sh         $v0, -0x3aa2($at)
.L8001D348:
/* 1DF48 8001D348 8FBF001C */  lw         $ra, 0x1c($sp)
.L8001D34C:
/* 1DF4C 8001D34C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1DF50 8001D350 03E00008 */  jr         $ra
/* 1DF54 8001D354 00000000 */   nop       

glabel func_8001D358
/* 1DF58 8001D358 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1DF5C 8001D35C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DF60 8001D360 0C00605F */  jal        func_8001817C
/* 1DF64 8001D364 00000000 */   nop       
/* 1DF68 8001D368 3C0D8009 */  lui        $t5, 0x8009
/* 1DF6C 8001D36C 25ADC592 */  addiu      $t5, $t5, -0x3a6e
/* 1DF70 8001D370 95AC0000 */  lhu        $t4, ($t5)
/* 1DF74 8001D374 318E0001 */  andi       $t6, $t4, 1
/* 1DF78 8001D378 11C0003A */  beqz       $t6, .L8001D464
/* 1DF7C 8001D37C 318F0002 */   andi      $t7, $t4, 2
/* 1DF80 8001D380 15E0002D */  bnez       $t7, .L8001D438
/* 1DF84 8001D384 3C018009 */   lui       $at, 0x8009
/* 1DF88 8001D388 3C028009 */  lui        $v0, 0x8009
/* 1DF8C 8001D38C 9442C59A */  lhu        $v0, -0x3a66($v0)
/* 1DF90 8001D390 3C038009 */  lui        $v1, 0x8009
/* 1DF94 8001D394 240AFFFF */  addiu      $t2, $zero, -1
/* 1DF98 8001D398 10400020 */  beqz       $v0, .L8001D41C
/* 1DF9C 8001D39C 00403025 */   or        $a2, $v0, $zero
/* 1DFA0 8001D3A0 3C088008 */  lui        $t0, 0x8008
/* 1DFA4 8001D3A4 3C078008 */  lui        $a3, 0x8008
/* 1DFA8 8001D3A8 3C058009 */  lui        $a1, 0x8009
/* 1DFAC 8001D3AC 24A5C598 */  addiu      $a1, $a1, -0x3a68
/* 1DFB0 8001D3B0 24E7D0B0 */  addiu      $a3, $a3, -0x2f50
/* 1DFB4 8001D3B4 2508C998 */  addiu      $t0, $t0, -0x3668
/* 1DFB8 8001D3B8 9463C598 */  lhu        $v1, -0x3a68($v1)
/* 1DFBC 8001D3BC 00405825 */  or         $t3, $v0, $zero
/* 1DFC0 8001D3C0 24090128 */  addiu      $t1, $zero, 0x128
/* 1DFC4 8001D3C4 24780001 */  addiu      $t8, $v1, 1
.L8001D3C8:
/* 1DFC8 8001D3C8 3303FFFF */  andi       $v1, $t8, 0xffff
/* 1DFCC 8001D3CC 006B082A */  slt        $at, $v1, $t3
/* 1DFD0 8001D3D0 14200003 */  bnez       $at, .L8001D3E0
/* 1DFD4 8001D3D4 A4B80000 */   sh        $t8, ($a1)
/* 1DFD8 8001D3D8 A4A00000 */  sh         $zero, ($a1)
/* 1DFDC 8001D3DC 3003FFFF */  andi       $v1, $zero, 0xffff
.L8001D3E0:
/* 1DFE0 8001D3E0 0003C840 */  sll        $t9, $v1, 1
/* 1DFE4 8001D3E4 00F97021 */  addu       $t6, $a3, $t9
/* 1DFE8 8001D3E8 95C20000 */  lhu        $v0, ($t6)
/* 1DFEC 8001D3EC 00490019 */  multu      $v0, $t1
/* 1DFF0 8001D3F0 00007812 */  mflo       $t7
/* 1DFF4 8001D3F4 010F2021 */  addu       $a0, $t0, $t7
/* 1DFF8 8001D3F8 9498000A */  lhu        $t8, 0xa($a0)
/* 1DFFC 8001D3FC 53000005 */  beql       $t8, $zero, .L8001D414
/* 1E000 8001D400 24C6FFFF */   addiu     $a2, $a2, -1
/* 1E004 8001D404 84990074 */  lh         $t9, 0x74($a0)
/* 1E008 8001D408 15590004 */  bne        $t2, $t9, .L8001D41C
/* 1E00C 8001D40C 00000000 */   nop       
/* 1E010 8001D410 24C6FFFF */  addiu      $a2, $a2, -1
.L8001D414:
/* 1E014 8001D414 54C0FFEC */  bnel       $a2, $zero, .L8001D3C8
/* 1E018 8001D418 24780001 */   addiu     $t8, $v1, 1
.L8001D41C:
/* 1E01C 8001D41C 14C00003 */  bnez       $a2, .L8001D42C
/* 1E020 8001D420 240F0014 */   addiu     $t7, $zero, 0x14
/* 1E024 8001D424 358E0400 */  ori        $t6, $t4, 0x400
/* 1E028 8001D428 A5AE0000 */  sh         $t6, ($t5)
.L8001D42C:
/* 1E02C 8001D42C 3C018009 */  lui        $at, 0x8009
/* 1E030 8001D430 10000002 */  b          .L8001D43C
/* 1E034 8001D434 A42FC594 */   sh        $t7, -0x3a6c($at)
.L8001D438:
/* 1E038 8001D438 A420C594 */  sh         $zero, -0x3a6c($at)
.L8001D43C:
/* 1E03C 8001D43C 3C048009 */  lui        $a0, 0x8009
/* 1E040 8001D440 0C006729 */  jal        func_80019CA4
/* 1E044 8001D444 9484C55E */   lhu       $a0, -0x3aa2($a0)
/* 1E048 8001D448 3C0D8009 */  lui        $t5, 0x8009
/* 1E04C 8001D44C 25ADC592 */  addiu      $t5, $t5, -0x3a6e
/* 1E050 8001D450 95B80000 */  lhu        $t8, ($t5)
/* 1E054 8001D454 3B0E0002 */  xori       $t6, $t8, 2
/* 1E058 8001D458 A5AE0000 */  sh         $t6, ($t5)
/* 1E05C 8001D45C 35CF0004 */  ori        $t7, $t6, 4
/* 1E060 8001D460 A5AF0000 */  sh         $t7, ($t5)
.L8001D464:
/* 1E064 8001D464 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E068 8001D468 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E06C 8001D46C 03E00008 */  jr         $ra
/* 1E070 8001D470 00000000 */   nop       

glabel func_8001D474
/* 1E074 8001D474 10C0002D */  beqz       $a2, .L8001D52C
/* 1E078 8001D478 00001825 */   or        $v1, $zero, $zero
/* 1E07C 8001D47C 8CC20004 */  lw         $v0, 4($a2)
/* 1E080 8001D480 8CC30000 */  lw         $v1, ($a2)
/* 1E084 8001D484 10400026 */  beqz       $v0, .L8001D520
/* 1E088 8001D488 00000000 */   nop       
.L8001D48C:
/* 1E08C 8001D48C 846E0000 */  lh         $t6, ($v1)
/* 1E090 8001D490 448E2000 */  mtc1       $t6, $f4
/* 1E094 8001D494 00000000 */  nop        
/* 1E098 8001D498 46802020 */  cvt.s.w    $f0, $f4
/* 1E09C 8001D49C 460C003E */  c.le.s     $f0, $f12
/* 1E0A0 8001D4A0 00000000 */  nop        
/* 1E0A4 8001D4A4 4502001C */  bc1fl      .L8001D518
/* 1E0A8 8001D4A8 2442FFFF */   addiu     $v0, $v0, -1
/* 1E0AC 8001D4AC 846F0002 */  lh         $t7, 2($v1)
/* 1E0B0 8001D4B0 448F3000 */  mtc1       $t7, $f6
/* 1E0B4 8001D4B4 00000000 */  nop        
/* 1E0B8 8001D4B8 468030A0 */  cvt.s.w    $f2, $f6
/* 1E0BC 8001D4BC 460E103E */  c.le.s     $f2, $f14
/* 1E0C0 8001D4C0 00000000 */  nop        
/* 1E0C4 8001D4C4 45020014 */  bc1fl      .L8001D518
/* 1E0C8 8001D4C8 2442FFFF */   addiu     $v0, $v0, -1
/* 1E0CC 8001D4CC 84780004 */  lh         $t8, 4($v1)
/* 1E0D0 8001D4D0 46006401 */  sub.s      $f16, $f12, $f0
/* 1E0D4 8001D4D4 44984000 */  mtc1       $t8, $f8
/* 1E0D8 8001D4D8 00000000 */  nop        
/* 1E0DC 8001D4DC 468042A0 */  cvt.s.w    $f10, $f8
/* 1E0E0 8001D4E0 460A803E */  c.le.s     $f16, $f10
/* 1E0E4 8001D4E4 00000000 */  nop        
/* 1E0E8 8001D4E8 4502000B */  bc1fl      .L8001D518
/* 1E0EC 8001D4EC 2442FFFF */   addiu     $v0, $v0, -1
/* 1E0F0 8001D4F0 84790006 */  lh         $t9, 6($v1)
/* 1E0F4 8001D4F4 46027181 */  sub.s      $f6, $f14, $f2
/* 1E0F8 8001D4F8 44999000 */  mtc1       $t9, $f18
/* 1E0FC 8001D4FC 00000000 */  nop        
/* 1E100 8001D500 46809120 */  cvt.s.w    $f4, $f18
/* 1E104 8001D504 4604303E */  c.le.s     $f6, $f4
/* 1E108 8001D508 00000000 */  nop        
/* 1E10C 8001D50C 45010004 */  bc1t       .L8001D520
/* 1E110 8001D510 00000000 */   nop       
/* 1E114 8001D514 2442FFFF */  addiu      $v0, $v0, -1
.L8001D518:
/* 1E118 8001D518 1440FFDC */  bnez       $v0, .L8001D48C
/* 1E11C 8001D51C 24630018 */   addiu     $v1, $v1, 0x18
.L8001D520:
/* 1E120 8001D520 54400003 */  bnel       $v0, $zero, .L8001D530
/* 1E124 8001D524 00601025 */   or        $v0, $v1, $zero
/* 1E128 8001D528 00001825 */  or         $v1, $zero, $zero
.L8001D52C:
/* 1E12C 8001D52C 00601025 */  or         $v0, $v1, $zero
.L8001D530:
/* 1E130 8001D530 03E00008 */  jr         $ra
/* 1E134 8001D534 00000000 */   nop       

glabel func_8001D538
/* 1E138 8001D538 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1E13C 8001D53C F7B60018 */  sdc1       $f22, 0x18($sp)
/* 1E140 8001D540 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1E144 8001D544 46006506 */  mov.s      $f20, $f12
/* 1E148 8001D548 46007586 */  mov.s      $f22, $f14
/* 1E14C 8001D54C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1E150 8001D550 3C058009 */  lui        $a1, 0x8009
/* 1E154 8001D554 8CA5C564 */  lw         $a1, -0x3a9c($a1)
/* 1E158 8001D558 00002025 */  or         $a0, $zero, $zero
/* 1E15C 8001D55C 00001825 */  or         $v1, $zero, $zero
/* 1E160 8001D560 10A00031 */  beqz       $a1, .L8001D628
/* 1E164 8001D564 00000000 */   nop       
/* 1E168 8001D568 8CA2000C */  lw         $v0, 0xc($a1)
/* 1E16C 8001D56C 8CA30008 */  lw         $v1, 8($a1)
/* 1E170 8001D570 27A50030 */  addiu      $a1, $sp, 0x30
/* 1E174 8001D574 10400021 */  beqz       $v0, .L8001D5FC
/* 1E178 8001D578 3C018007 */   lui       $at, 0x8007
/* 1E17C 8001D57C C4301698 */  lwc1       $f16, 0x1698($at)
/* 1E180 8001D580 3C018007 */  lui        $at, 0x8007
/* 1E184 8001D584 C42E169C */  lwc1       $f14, 0x169c($at)
/* 1E188 8001D588 846E0000 */  lh         $t6, ($v1)
.L8001D58C:
/* 1E18C 8001D58C 846F0002 */  lh         $t7, 2($v1)
/* 1E190 8001D590 2442FFFF */  addiu      $v0, $v0, -1
/* 1E194 8001D594 448E2000 */  mtc1       $t6, $f4
/* 1E198 8001D598 448F4000 */  mtc1       $t7, $f8
/* 1E19C 8001D59C 468021A0 */  cvt.s.w    $f6, $f4
/* 1E1A0 8001D5A0 468042A0 */  cvt.s.w    $f10, $f8
/* 1E1A4 8001D5A4 46143001 */  sub.s      $f0, $f6, $f20
/* 1E1A8 8001D5A8 46165081 */  sub.s      $f2, $f10, $f22
/* 1E1AC 8001D5AC 46000482 */  mul.s      $f18, $f0, $f0
/* 1E1B0 8001D5B0 00000000 */  nop        
/* 1E1B4 8001D5B4 46021102 */  mul.s      $f4, $f2, $f2
/* 1E1B8 8001D5B8 46049300 */  add.s      $f12, $f18, $f4
/* 1E1BC 8001D5BC 460C703E */  c.le.s     $f14, $f12
/* 1E1C0 8001D5C0 00000000 */  nop        
/* 1E1C4 8001D5C4 45000008 */  bc1f       .L8001D5E8
/* 1E1C8 8001D5C8 00000000 */   nop       
/* 1E1CC 8001D5CC 4610603E */  c.le.s     $f12, $f16
/* 1E1D0 8001D5D0 0004C080 */  sll        $t8, $a0, 2
/* 1E1D4 8001D5D4 00B8C821 */  addu       $t9, $a1, $t8
/* 1E1D8 8001D5D8 45020004 */  bc1fl      .L8001D5EC
/* 1E1DC 8001D5DC 28810006 */   slti      $at, $a0, 6
/* 1E1E0 8001D5E0 AF230000 */  sw         $v1, ($t9)
/* 1E1E4 8001D5E4 24840001 */  addiu      $a0, $a0, 1
.L8001D5E8:
/* 1E1E8 8001D5E8 28810006 */  slti       $at, $a0, 6
.L8001D5EC:
/* 1E1EC 8001D5EC 10200003 */  beqz       $at, .L8001D5FC
/* 1E1F0 8001D5F0 24630004 */   addiu     $v1, $v1, 4
/* 1E1F4 8001D5F4 5440FFE5 */  bnel       $v0, $zero, .L8001D58C
/* 1E1F8 8001D5F8 846E0000 */   lh        $t6, ($v1)
.L8001D5FC:
/* 1E1FC 8001D5FC 14800003 */  bnez       $a0, .L8001D60C
/* 1E200 8001D600 00000000 */   nop       
/* 1E204 8001D604 10000008 */  b          .L8001D628
/* 1E208 8001D608 00001825 */   or        $v1, $zero, $zero
.L8001D60C:
/* 1E20C 8001D60C 0C008BF4 */  jal        func_80022FD0
/* 1E210 8001D610 00000000 */   nop       
/* 1E214 8001D614 27A50030 */  addiu      $a1, $sp, 0x30
/* 1E218 8001D618 00024080 */  sll        $t0, $v0, 2
/* 1E21C 8001D61C 00A84821 */  addu       $t1, $a1, $t0
/* 1E220 8001D620 10000001 */  b          .L8001D628
/* 1E224 8001D624 8D230000 */   lw        $v1, ($t1)
.L8001D628:
/* 1E228 8001D628 00601025 */  or         $v0, $v1, $zero
/* 1E22C 8001D62C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1E230 8001D630 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 1E234 8001D634 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 1E238 8001D638 03E00008 */  jr         $ra
/* 1E23C 8001D63C 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8001D640
/* 1E240 8001D640 27BDFF38 */  addiu      $sp, $sp, -0xc8
/* 1E244 8001D644 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1E248 8001D648 AFB00038 */  sw         $s0, 0x38($sp)
/* 1E24C 8001D64C F7B80030 */  sdc1       $f24, 0x30($sp)
/* 1E250 8001D650 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 1E254 8001D654 4486A000 */  mtc1       $a2, $f20
/* 1E258 8001D658 46006586 */  mov.s      $f22, $f12
/* 1E25C 8001D65C 46007606 */  mov.s      $f24, $f14
/* 1E260 8001D660 00E08025 */  or         $s0, $a3, $zero
/* 1E264 8001D664 AFBF005C */  sw         $ra, 0x5c($sp)
/* 1E268 8001D668 AFBE0058 */  sw         $fp, 0x58($sp)
/* 1E26C 8001D66C AFB70054 */  sw         $s7, 0x54($sp)
/* 1E270 8001D670 AFB60050 */  sw         $s6, 0x50($sp)
/* 1E274 8001D674 AFB5004C */  sw         $s5, 0x4c($sp)
/* 1E278 8001D678 AFB40048 */  sw         $s4, 0x48($sp)
/* 1E27C 8001D67C AFB30044 */  sw         $s3, 0x44($sp)
/* 1E280 8001D680 AFB20040 */  sw         $s2, 0x40($sp)
/* 1E284 8001D684 AFB1003C */  sw         $s1, 0x3c($sp)
/* 1E288 8001D688 96040000 */  lhu        $a0, ($s0)
/* 1E28C 8001D68C 0C008BF4 */  jal        func_80022FD0
/* 1E290 8001D690 26100002 */   addiu     $s0, $s0, 2
/* 1E294 8001D694 3C048009 */  lui        $a0, 0x8009
/* 1E298 8001D698 8C84C564 */  lw         $a0, -0x3a9c($a0)
/* 1E29C 8001D69C 00027040 */  sll        $t6, $v0, 1
/* 1E2A0 8001D6A0 020E7821 */  addu       $t7, $s0, $t6
/* 1E2A4 8001D6A4 95F80000 */  lhu        $t8, ($t7)
/* 1E2A8 8001D6A8 8C880004 */  lw         $t0, 4($a0)
/* 1E2AC 8001D6AC 8C890000 */  lw         $t1, ($a0)
/* 1E2B0 8001D6B0 0018C8C0 */  sll        $t9, $t8, 3
/* 1E2B4 8001D6B4 03281821 */  addu       $v1, $t9, $t0
/* 1E2B8 8001D6B8 946B0006 */  lhu        $t3, 6($v1)
/* 1E2BC 8001D6BC 94770004 */  lhu        $s7, 4($v1)
/* 1E2C0 8001D6C0 8D2A0000 */  lw         $t2, ($t1)
/* 1E2C4 8001D6C4 000B6080 */  sll        $t4, $t3, 2
/* 1E2C8 8001D6C8 3C1E8009 */  lui        $fp, 0x8009
/* 1E2CC 8001D6CC 018B6023 */  subu       $t4, $t4, $t3
/* 1E2D0 8001D6D0 27DEC558 */  addiu      $fp, $fp, -0x3aa8
/* 1E2D4 8001D6D4 000C6080 */  sll        $t4, $t4, 2
/* 1E2D8 8001D6D8 8C750000 */  lw         $s5, ($v1)
/* 1E2DC 8001D6DC 3C128008 */  lui        $s2, 0x8008
/* 1E2E0 8001D6E0 2652C998 */  addiu      $s2, $s2, -0x3668
/* 1E2E4 8001D6E4 27B6006C */  addiu      $s6, $sp, 0x6c
/* 1E2E8 8001D6E8 AFC00000 */  sw         $zero, ($fp)
/* 1E2EC 8001D6EC 12E00037 */  beqz       $s7, .L8001D7CC
/* 1E2F0 8001D6F0 014C9821 */   addu      $s3, $t2, $t4
/* 1E2F4 8001D6F4 3C108009 */  lui        $s0, 0x8009
/* 1E2F8 8001D6F8 2610C580 */  addiu      $s0, $s0, -0x3a80
.L8001D6FC:
/* 1E2FC 8001D6FC 8EA20008 */  lw         $v0, 8($s5)
/* 1E300 8001D700 8EB10004 */  lw         $s1, 4($s5)
/* 1E304 8001D704 26540024 */  addiu      $s4, $s2, 0x24
/* 1E308 8001D708 50400005 */  beql       $v0, $zero, .L8001D720
/* 1E30C 8001D70C 8EAD0000 */   lw        $t5, ($s5)
/* 1E310 8001D710 0C008BF4 */  jal        func_80022FD0
/* 1E314 8001D714 24440001 */   addiu     $a0, $v0, 1
/* 1E318 8001D718 02228821 */  addu       $s1, $s1, $v0
/* 1E31C 8001D71C 8EAD0000 */  lw         $t5, ($s5)
.L8001D720:
/* 1E320 8001D720 AED10004 */  sw         $s1, 4($s6)
/* 1E324 8001D724 3C0E8008 */  lui        $t6, 0x8008
/* 1E328 8001D728 AECD0000 */  sw         $t5, ($s6)
/* 1E32C 8001D72C 8DCEC990 */  lw         $t6, -0x3670($t6)
/* 1E330 8001D730 3C018008 */  lui        $at, 0x8008
/* 1E334 8001D734 26D60008 */  addiu      $s6, $s6, 8
/* 1E338 8001D738 01D17821 */  addu       $t7, $t6, $s1
/* 1E33C 8001D73C AC2FC990 */  sw         $t7, -0x3670($at)
/* 1E340 8001D740 8FC20000 */  lw         $v0, ($fp)
/* 1E344 8001D744 3C018009 */  lui        $at, 0x8009
/* 1E348 8001D748 0002C080 */  sll        $t8, $v0, 2
/* 1E34C 8001D74C 00380821 */  addu       $at, $at, $t8
/* 1E350 8001D750 AC34C538 */  sw         $s4, -0x3ac8($at)
/* 1E354 8001D754 24590001 */  addiu      $t9, $v0, 1
/* 1E358 8001D758 12200019 */  beqz       $s1, .L8001D7C0
/* 1E35C 8001D75C AFD90000 */   sw        $t9, ($fp)
.L8001D760:
/* 1E360 8001D760 C6640000 */  lwc1       $f4, ($s3)
/* 1E364 8001D764 4600A306 */  mov.s      $f12, $f20
/* 1E368 8001D768 02002825 */  or         $a1, $s0, $zero
/* 1E36C 8001D76C E6040000 */  swc1       $f4, ($s0)
/* 1E370 8001D770 C6660004 */  lwc1       $f6, 4($s3)
/* 1E374 8001D774 26540024 */  addiu      $s4, $s2, 0x24
/* 1E378 8001D778 0C008CBD */  jal        func_800232F4
/* 1E37C 8001D77C E6060004 */   swc1      $f6, 4($s0)
/* 1E380 8001D780 C6080000 */  lwc1       $f8, ($s0)
/* 1E384 8001D784 C6100004 */  lwc1       $f16, 4($s0)
/* 1E388 8001D788 8EA40000 */  lw         $a0, ($s5)
/* 1E38C 8001D78C 4608B280 */  add.s      $f10, $f22, $f8
/* 1E390 8001D790 4407A000 */  mfc1       $a3, $f20
/* 1E394 8001D794 AFB20014 */  sw         $s2, 0x14($sp)
/* 1E398 8001D798 4610C480 */  add.s      $f18, $f24, $f16
/* 1E39C 8001D79C 44055000 */  mfc1       $a1, $f10
/* 1E3A0 8001D7A0 AFB40010 */  sw         $s4, 0x10($sp)
/* 1E3A4 8001D7A4 44069000 */  mfc1       $a2, $f18
/* 1E3A8 8001D7A8 0C0023F8 */  jal        func_80008FE0
/* 1E3AC 8001D7AC 00000000 */   nop       
/* 1E3B0 8001D7B0 2631FFFF */  addiu      $s1, $s1, -1
/* 1E3B4 8001D7B4 26520128 */  addiu      $s2, $s2, 0x128
/* 1E3B8 8001D7B8 1620FFE9 */  bnez       $s1, .L8001D760
/* 1E3BC 8001D7BC 2673000C */   addiu     $s3, $s3, 0xc
.L8001D7C0:
/* 1E3C0 8001D7C0 26F7FFFF */  addiu      $s7, $s7, -1
/* 1E3C4 8001D7C4 16E0FFCD */  bnez       $s7, .L8001D6FC
/* 1E3C8 8001D7C8 26B5000C */   addiu     $s5, $s5, 0xc
.L8001D7CC:
/* 1E3CC 8001D7CC 0C002498 */  jal        func_80009260
/* 1E3D0 8001D7D0 00000000 */   nop       
/* 1E3D4 8001D7D4 3C088008 */  lui        $t0, 0x8008
/* 1E3D8 8001D7D8 8D08C990 */  lw         $t0, -0x3670($t0)
/* 1E3DC 8001D7DC 3C018009 */  lui        $at, 0x8009
/* 1E3E0 8001D7E0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1E3E4 8001D7E4 A428C59A */  sh         $t0, -0x3a66($at)
/* 1E3E8 8001D7E8 8FBF005C */  lw         $ra, 0x5c($sp)
/* 1E3EC 8001D7EC D7B60028 */  ldc1       $f22, 0x28($sp)
/* 1E3F0 8001D7F0 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 1E3F4 8001D7F4 8FB00038 */  lw         $s0, 0x38($sp)
/* 1E3F8 8001D7F8 8FB1003C */  lw         $s1, 0x3c($sp)
/* 1E3FC 8001D7FC 8FB20040 */  lw         $s2, 0x40($sp)
/* 1E400 8001D800 8FB30044 */  lw         $s3, 0x44($sp)
/* 1E404 8001D804 8FB40048 */  lw         $s4, 0x48($sp)
/* 1E408 8001D808 8FB5004C */  lw         $s5, 0x4c($sp)
/* 1E40C 8001D80C 8FB60050 */  lw         $s6, 0x50($sp)
/* 1E410 8001D810 8FB70054 */  lw         $s7, 0x54($sp)
/* 1E414 8001D814 8FBE0058 */  lw         $fp, 0x58($sp)
/* 1E418 8001D818 03E00008 */  jr         $ra
/* 1E41C 8001D81C 27BD00C8 */   addiu     $sp, $sp, 0xc8

glabel func_8001D820
/* 1E420 8001D820 03E00008 */  jr         $ra
/* 1E424 8001D824 00000000 */   nop       

glabel func_8001D828
/* 1E428 8001D828 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E42C 8001D82C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E430 8001D830 3C0E8009 */  lui        $t6, 0x8009
/* 1E434 8001D834 95CEC592 */  lhu        $t6, -0x3a6e($t6)
/* 1E438 8001D838 31CF0100 */  andi       $t7, $t6, 0x100
/* 1E43C 8001D83C 15E00005 */  bnez       $t7, .L8001D854
/* 1E440 8001D840 00000000 */   nop       
/* 1E444 8001D844 0C008BF4 */  jal        func_80022FD0
/* 1E448 8001D848 24040004 */   addiu     $a0, $zero, 4
/* 1E44C 8001D84C 1440000E */  bnez       $v0, .L8001D888
/* 1E450 8001D850 240300FF */   addiu     $v1, $zero, 0xff
.L8001D854:
/* 1E454 8001D854 3C048009 */  lui        $a0, 0x8009
/* 1E458 8001D858 0C008BF4 */  jal        func_80022FD0
/* 1E45C 8001D85C 9484C59A */   lhu       $a0, -0x3a66($a0)
/* 1E460 8001D860 0002C0C0 */  sll        $t8, $v0, 3
/* 1E464 8001D864 0302C021 */  addu       $t8, $t8, $v0
/* 1E468 8001D868 0018C080 */  sll        $t8, $t8, 2
/* 1E46C 8001D86C 0302C021 */  addu       $t8, $t8, $v0
/* 1E470 8001D870 0018C0C0 */  sll        $t8, $t8, 3
/* 1E474 8001D874 3C198008 */  lui        $t9, 0x8008
/* 1E478 8001D878 0338C821 */  addu       $t9, $t9, $t8
/* 1E47C 8001D87C 8F39C9B8 */  lw         $t9, -0x3648($t9)
/* 1E480 8001D880 10000001 */  b          .L8001D888
/* 1E484 8001D884 93230034 */   lbu       $v1, 0x34($t9)
.L8001D888:
/* 1E488 8001D888 00601025 */  or         $v0, $v1, $zero
/* 1E48C 8001D88C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E490 8001D890 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E494 8001D894 03E00008 */  jr         $ra
/* 1E498 8001D898 00000000 */   nop       

glabel func_8001D89C
/* 1E49C 8001D89C 03E00008 */  jr         $ra
/* 1E4A0 8001D8A0 00000000 */   nop       
/* 1E4A4 8001D8A4 00000000 */  nop        
/* 1E4A8 8001D8A8 00000000 */  nop        
/* 1E4AC 8001D8AC 00000000 */  nop        
