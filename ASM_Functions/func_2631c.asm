glabel func_2631c
/* 02631C 0002631C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 026320 00026320 AFB20020 */  sw    $s2, 0x20($sp)
/* 026324 00026324 3C128009 */  lui   $s2, 0x8009
/* 026328 00026328 2652F934 */  addiu $s2, $s2, -0x6cc
/* 02632C 0002632C AFBF003C */  sw    $ra, 0x3c($sp)
/* 026330 00026330 AFBE0038 */  sw    $fp, 0x38($sp)
/* 026334 00026334 AFB70034 */  sw    $s7, 0x34($sp)
/* 026338 00026338 AFB60030 */  sw    $s6, 0x30($sp)
/* 02633C 0002633C AFB5002C */  sw    $s5, 0x2c($sp)
/* 026340 00026340 AFB40028 */  sw    $s4, 0x28($sp)
/* 026344 00026344 AFB30024 */  sw    $s3, 0x24($sp)
/* 026348 00026348 AFB1001C */  sw    $s1, 0x1c($sp)
/* 02634C 0002634C AFB00018 */  sw    $s0, 0x18($sp)
/* 026350 00026350 28010005 */  slti  $at, $zero, 5
/* 026354 00026354 AE400000 */  sw    $zero, ($s2)
/* 026358 00026358 10200046 */  beqz  $at, .L00026474
/* 02635C 0002635C 00001025 */   move  $v0, $zero
/* 026360 00026360 3C1E8009 */  lui   $fp, 0x8009
/* 026364 00026364 3C178009 */  lui   $s7, 0x8009
/* 026368 00026368 3C168009 */  lui   $s6, 0x8009
/* 02636C 0002636C 3C158009 */  lui   $s5, 0x8009
/* 026370 00026370 3C148009 */  lui   $s4, 0x8009
/* 026374 00026374 3C138005 */  lui   $s3, 0x8005
/* 026378 00026378 3C118009 */  lui   $s1, 0x8009
/* 02637C 0002637C 3C108009 */  lui   $s0, 0x8009
/* 026380 00026380 2610F92C */  addiu $s0, $s0, -0x6d4
/* 026384 00026384 2631F930 */  addiu $s1, $s1, -0x6d0
/* 026388 00026388 267339A8 */  addiu $s3, $s3, 0x39a8
/* 02638C 0002638C 2694F94C */  addiu $s4, $s4, -0x6b4
/* 026390 00026390 26B5F960 */  addiu $s5, $s5, -0x6a0
/* 026394 00026394 26D6F95C */  addiu $s6, $s6, -0x6a4
/* 026398 00026398 26F7F970 */  addiu $s7, $s7, -0x690
/* 02639C 0002639C 27DEF958 */  addiu $fp, $fp, -0x6a8
.L000263A0:
/* 0263A0 000263A0 00027080 */  sll   $t6, $v0, 2
/* 0263A4 000263A4 026E1821 */  addu  $v1, $s3, $t6
.L000263A8:
/* 0263A8 000263A8 8C640000 */  lw    $a0, ($v1)
/* 0263AC 000263AC 2C410005 */  sltiu $at, $v0, 5
/* 0263B0 000263B0 5080002C */  beql  $a0, $zero, .L00026464
/* 0263B4 000263B4 24480001 */   addiu $t0, $v0, 1
/* 0263B8 000263B8 10200023 */  beqz  $at, .L00026448
/* 0263BC 000263BC 00027880 */   sll   $t7, $v0, 2
/* 0263C0 000263C0 3C018007 */  lui   $at, 0x8007
/* 0263C4 000263C4 002F0821 */  addu  $at, $at, $t7
/* 0263C8 000263C8 8C2F1700 */  lw    $t7, 0x1700($at)
/* 0263CC 000263CC 01E00008 */  jr    $t7
/* 0263D0 000263D0 00000000 */   nop   
/* 0263D4 000263D4 8E980000 */  lw    $t8, ($s4)
/* 0263D8 000263D8 8EB90000 */  lw    $t9, ($s5)
/* 0263DC 000263DC AE180000 */  sw    $t8, ($s0)
/* 0263E0 000263E0 10000019 */  b     .L00026448
/* 0263E4 000263E4 AE390000 */   sw    $t9, ($s1)
/* 0263E8 000263E8 3C088009 */  lui   $t0, 0x8009
/* 0263EC 000263EC 8D08F950 */  lw    $t0, -0x6b0($t0)
/* 0263F0 000263F0 3C098009 */  lui   $t1, 0x8009
/* 0263F4 000263F4 AE080000 */  sw    $t0, ($s0)
/* 0263F8 000263F8 8D29F964 */  lw    $t1, -0x69c($t1)
/* 0263FC 000263FC 10000012 */  b     .L00026448
/* 026400 00026400 AE290000 */   sw    $t1, ($s1)
/* 026404 00026404 3C0A8009 */  lui   $t2, 0x8009
/* 026408 00026408 8D4AF954 */  lw    $t2, -0x6ac($t2)
/* 02640C 0002640C 3C0B8009 */  lui   $t3, 0x8009
/* 026410 00026410 AE0A0000 */  sw    $t2, ($s0)
/* 026414 00026414 8D6BF968 */  lw    $t3, -0x698($t3)
/* 026418 00026418 1000000B */  b     .L00026448
/* 02641C 0002641C AE2B0000 */   sw    $t3, ($s1)
/* 026420 00026420 8FCC0000 */  lw    $t4, ($fp)
/* 026424 00026424 3C0D8009 */  lui   $t5, 0x8009
/* 026428 00026428 AE0C0000 */  sw    $t4, ($s0)
/* 02642C 0002642C 8DADF96C */  lw    $t5, -0x694($t5)
/* 026430 00026430 10000005 */  b     .L00026448
.L00026434:
/* 026434 00026434 AE2D0000 */   sw    $t5, ($s1)
/* 026438 00026438 8ECE0000 */  lw    $t6, ($s6)
/* 02643C 0002643C 8EEF0000 */  lw    $t7, ($s7)
/* 026440 00026440 AE0E0000 */  sw    $t6, ($s0)
/* 026444 00026444 AE2F0000 */  sw    $t7, ($s1)
.L00026448:
/* 026448 00026448 2498FFFF */  addiu $t8, $a0, -1
/* 02644C 0002644C 17000004 */  bnez  $t8, .L00026460
/* 026450 00026450 AC780000 */   sw    $t8, ($v1)
/* 026454 00026454 0C009783 */  jal   func_00025E0C
/* 026458 00026458 00000000 */   nop   
/* 02645C 0002645C 8E420000 */  lw    $v0, ($s2)
.L00026460:
/* 026460 00026460 24480001 */  addiu $t0, $v0, 1
.L00026464:
/* 026464 00026464 29010005 */  slti  $at, $t0, 5
/* 026468 00026468 AE480000 */  sw    $t0, ($s2)
/* 02646C 0002646C 1420FFCC */  bnez  $at, .L000263A0
/* 026470 00026470 01001025 */   move  $v0, $t0
.L00026474:
/* 026474 00026474 3C048005 */  lui   $a0, 0x8005
/* 026478 00026478 8C84397C */  lw    $a0, 0x397c($a0)
/* 02647C 0002647C 240100FF */  addiu $at, $zero, 0xff
/* 026480 00026480 10810003 */  beq   $a0, $at, .L00026490
/* 026484 00026484 00000000 */   nop   
.L00026488:
/* 026488 00026488 0C009661 */  jal   func_00025984
/* 02648C 0002648C 00000000 */   nop   
.L00026490:
/* 026490 00026490 3C098005 */  lui   $t1, 0x8005
/* 026494 00026494 8D29398C */  lw    $t1, 0x398c($t1)
/* 026498 00026498 11200003 */  beqz  $t1, .L000264A8
/* 02649C 0002649C 00000000 */   nop   
/* 0264A0 000264A0 0C009885 */  jal   func_00026214
/* 0264A4 000264A4 00000000 */   nop   
.L000264A8:
/* 0264A8 000264A8 3C0A8005 */  lui   $t2, 0x8005
/* 0264AC 000264AC 8D4A3990 */  lw    $t2, 0x3990($t2)
/* 0264B0 000264B0 11400003 */  beqz  $t2, .L000264C0
/* 0264B4 000264B4 00000000 */   nop   
/* 0264B8 000264B8 0C0098BD */  jal   func_000262F4
/* 0264BC 000264BC 00000000 */   nop   
.L000264C0:
/* 0264C0 000264C0 0C0096F6 */  jal   func_00025BD8
/* 0264C4 000264C4 00000000 */   nop   
/* 0264C8 000264C8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0264CC 000264CC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0264D0 000264D0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0264D4 000264D4 8FB20020 */  lw    $s2, 0x20($sp)
/* 0264D8 000264D8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0264DC 000264DC 8FB40028 */  lw    $s4, 0x28($sp)
/* 0264E0 000264E0 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0264E4 000264E4 8FB60030 */  lw    $s6, 0x30($sp)
/* 0264E8 000264E8 8FB70034 */  lw    $s7, 0x34($sp)
/* 0264EC 000264EC 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0264F0 000264F0 03E00008 */  jr    $ra
/* 0264F4 000264F4 27BD0040 */   addiu $sp, $sp, 0x40