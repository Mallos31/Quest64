glabel func
/* 02D418 0002D418 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 02D41C 0002D41C AFBF0024 */  sw    $ra, 0x24($sp)
/* 02D420 0002D420 AFB10020 */  sw    $s1, 0x20($sp)
/* 02D424 0002D424 AFB0001C */  sw    $s0, 0x1c($sp)
/* 02D428 0002D428 AFA40058 */  sw    $a0, 0x58($sp)
/* 02D42C 0002D42C 3C0F8006 */  lui   $t7, 0x8006
/* 02D430 0002D430 AFA00050 */  sw    $zero, 0x50($sp)
/* 02D434 0002D434 25EFF9A0 */  addiu $t7, $t7, -0x660
/* 02D438 0002D438 8DE10000 */  lw    $at, ($t7)
/* 02D43C 0002D43C 27AE0034 */  addiu $t6, $sp, 0x34
/* 02D440 0002D440 8DE80004 */  lw    $t0, 4($t7)
/* 02D444 0002D444 ADC10000 */  sw    $at, ($t6)
/* 02D448 0002D448 8DE10008 */  lw    $at, 8($t7)
/* 02D44C 0002D44C 3C038009 */  lui   $v1, 0x8009
/* 02D450 0002D450 ADC80004 */  sw    $t0, 4($t6)
/* 02D454 0002D454 ADC10008 */  sw    $at, 8($t6)
/* 02D458 0002D458 9463FD20 */  lhu   $v1, -0x2e0($v1)
/* 02D45C 0002D45C 3C028009 */  lui   $v0, 0x8009
/* 02D460 0002D460 24040082 */  addiu $a0, $zero, 0x82
/* 02D464 0002D464 30690020 */  andi  $t1, $v1, 0x20
/* 02D468 0002D468 1120000C */  beqz  $t1, .L0002D49C
/* 02D46C 0002D46C 24050033 */   addiu $a1, $zero, 0x33
/* 02D470 0002D470 3C028009 */  lui   $v0, 0x8009
/* 02D474 0002D474 8042FD2A */  lb    $v0, -0x2d6($v0)
/* 02D478 0002D478 306AFFDF */  andi  $t2, $v1, 0xffdf
/* 02D47C 0002D47C 3C018009 */  lui   $at, 0x8009
/* 02D480 0002D480 14400004 */  bnez  $v0, .L0002D494
/* 02D484 0002D484 244BFFFF */   addiu $t3, $v0, -1
/* 02D488 0002D488 AFA20054 */  sw    $v0, 0x54($sp)
/* 02D48C 0002D48C 10000005 */  b     .L0002D4A4
/* 02D490 0002D490 A42AFD20 */   sh    $t2, -0x2e0($at)
.L0002D494:
/* 02D494 0002D494 10000003 */  b     .L0002D4A4
/* 02D498 0002D498 AFAB0054 */   sw    $t3, 0x54($sp)
.L0002D49C:
/* 02D49C 0002D49C 8042FD2A */  lb    $v0, -0x2d6($v0)
/* 02D4A0 0002D4A0 AFA20054 */  sw    $v0, 0x54($sp)
.L0002D4A4:
/* 02D4A4 0002D4A4 8FAC0054 */  lw    $t4, 0x54($sp)
/* 02D4A8 0002D4A8 3C198009 */  lui   $t9, 0x8009
/* 02D4AC 0002D4AC 2739FD30 */  addiu $t9, $t9, -0x2d0
/* 02D4B0 0002D4B0 000C6840 */  sll   $t5, $t4, 1
/* 02D4B4 0002D4B4 01B9C021 */  addu  $t8, $t5, $t9
/* 02D4B8 0002D4B8 AFB8002C */  sw    $t8, 0x2c($sp)
/* 02D4BC 0002D4BC 830E0000 */  lb    $t6, ($t8)
/* 02D4C0 0002D4C0 2401FFFE */  addiu $at, $zero, -2
/* 02D4C4 0002D4C4 240D0001 */  addiu $t5, $zero, 1
/* 02D4C8 0002D4C8 11C100FA */  beq   $t6, $at, .L0002D8B4
/* 02D4CC 0002D4CC 27A60034 */   addiu $a2, $sp, 0x34
/* 02D4D0 0002D4D0 830F0001 */  lb    $t7, 1($t8)
/* 02D4D4 0002D4D4 2401FFFF */  addiu $at, $zero, -1
/* 02D4D8 0002D4D8 11E100F4 */  beq   $t7, $at, .L0002D8AC
/* 02D4DC 0002D4DC 00000000 */   nop   
/* 02D4E0 0002D4E0 15820020 */  bne   $t4, $v0, .L0002D564
/* 02D4E4 0002D4E4 24040002 */   addiu $a0, $zero, 2
/* 02D4E8 0002D4E8 2408000A */  addiu $t0, $zero, 0xa
/* 02D4EC 0002D4EC AFA80010 */  sw    $t0, 0x10($sp)
/* 02D4F0 0002D4F0 24040002 */  addiu $a0, $zero, 2
/* 02D4F4 0002D4F4 2405006F */  addiu $a1, $zero, 0x6f
/* 02D4F8 0002D4F8 24060036 */  addiu $a2, $zero, 0x36
/* 02D4FC 0002D4FC 0C00AAD9 */  jal   func_0002AB64
/* 02D500 0002D500 01803825 */   move  $a3, $t4
/* 02D504 0002D504 2409000D */  addiu $t1, $zero, 0xd
/* 02D508 0002D508 AFA90010 */  sw    $t1, 0x10($sp)
/* 02D50C 0002D50C 24040036 */  addiu $a0, $zero, 0x36
/* 02D510 0002D510 24050053 */  addiu $a1, $zero, 0x53
/* 02D514 0002D514 24060035 */  addiu $a2, $zero, 0x35
/* 02D518 0002D518 0C00A6D6 */  jal   func_00029B58
/* 02D51C 0002D51C 2407001C */   addiu $a3, $zero, 0x1c
/* 02D520 0002D520 240A000A */  addiu $t2, $zero, 0xa
/* 02D524 0002D524 AFAA0010 */  sw    $t2, 0x10($sp)
/* 02D528 0002D528 24040019 */  addiu $a0, $zero, 0x19
/* 02D52C 0002D52C 24050092 */  addiu $a1, $zero, 0x92
/* 02D530 0002D530 24060036 */  addiu $a2, $zero, 0x36
/* 02D534 0002D534 0C00A6D6 */  jal   func_00029B58
/* 02D538 0002D538 24070008 */   addiu $a3, $zero, 8
/* 02D53C 0002D53C 240B000E */  addiu $t3, $zero, 0xe
/* 02D540 0002D540 AFAB0010 */  sw    $t3, 0x10($sp)
/* 02D544 0002D544 24040043 */  addiu $a0, $zero, 0x43
/* 02D548 0002D548 240500D9 */  addiu $a1, $zero, 0xd9
/* 02D54C 0002D54C 24060035 */  addiu $a2, $zero, 0x35
/* 02D550 0002D550 0C00A6D6 */  jal   func_00029B58
/* 02D554 0002D554 2407001C */   addiu $a3, $zero, 0x1c
/* 02D558 0002D558 240D000A */  addiu $t5, $zero, 0xa
/* 02D55C 0002D55C 1000001E */  b     .L0002D5D8
/* 02D560 0002D560 AFAD0040 */   sw    $t5, 0x40($sp)
.L0002D564:
/* 02D564 0002D564 24190048 */  addiu $t9, $zero, 0x48
/* 02D568 0002D568 AFB90010 */  sw    $t9, 0x10($sp)
/* 02D56C 0002D56C 2405006F */  addiu $a1, $zero, 0x6f
/* 02D570 0002D570 24060036 */  addiu $a2, $zero, 0x36
/* 02D574 0002D574 0C00AAD9 */  jal   func_0002AB64
/* 02D578 0002D578 8FA70054 */   lw    $a3, 0x54($sp)
/* 02D57C 0002D57C 240E000D */  addiu $t6, $zero, 0xd
/* 02D580 0002D580 AFAE0010 */  sw    $t6, 0x10($sp)
/* 02D584 0002D584 24040045 */  addiu $a0, $zero, 0x45
/* 02D588 0002D588 24050053 */  addiu $a1, $zero, 0x53
/* 02D58C 0002D58C 24060035 */  addiu $a2, $zero, 0x35
/* 02D590 0002D590 0C00A6D6 */  jal   func_00029B58
/* 02D594 0002D594 2407001C */   addiu $a3, $zero, 0x1c
/* 02D598 0002D598 2418000A */  addiu $t8, $zero, 0xa
/* 02D59C 0002D59C AFB80010 */  sw    $t8, 0x10($sp)
/* 02D5A0 0002D5A0 24040052 */  addiu $a0, $zero, 0x52
/* 02D5A4 0002D5A4 24050092 */  addiu $a1, $zero, 0x92
/* 02D5A8 0002D5A8 24060036 */  addiu $a2, $zero, 0x36
/* 02D5AC 0002D5AC 0C00A6D6 */  jal   func_00029B58
/* 02D5B0 0002D5B0 24070008 */   addiu $a3, $zero, 8
/* 02D5B4 0002D5B4 240F000E */  addiu $t7, $zero, 0xe
/* 02D5B8 0002D5B8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 02D5BC 0002D5BC 24040044 */  addiu $a0, $zero, 0x44
/* 02D5C0 0002D5C0 240500D9 */  addiu $a1, $zero, 0xd9
/* 02D5C4 0002D5C4 24060035 */  addiu $a2, $zero, 0x35
/* 02D5C8 0002D5C8 0C00A6D6 */  jal   func_00029B58
/* 02D5CC 0002D5CC 2407001C */   addiu $a3, $zero, 0x1c
/* 02D5D0 0002D5D0 240C0048 */  addiu $t4, $zero, 0x48
func_0002D5D4:
/* 02D5D4 0002D5D4 AFAC0040 */  sw    $t4, 0x40($sp)
.L0002D5D8:
/* 02D5D8 0002D5D8 8FA80054 */  lw    $t0, 0x54($sp)
/* 02D5DC 0002D5DC 3C0A8009 */  lui   $t2, 0x8009
/* 02D5E0 0002D5E0 254AFD58 */  addiu $t2, $t2, -0x2a8
/* 02D5E4 0002D5E4 00084880 */  sll   $t1, $t0, 2
/* 02D5E8 0002D5E8 01284823 */  subu  $t1, $t1, $t0
/* 02D5EC 0002D5EC 000948C0 */  sll   $t1, $t1, 3
/* 02D5F0 0002D5F0 01284821 */  addu  $t1, $t1, $t0
/* 02D5F4 0002D5F4 00094880 */  sll   $t1, $t1, 2
/* 02D5F8 0002D5F8 012A1021 */  addu  $v0, $t1, $t2
/* 02D5FC 0002D5FC 240B000A */  addiu $t3, $zero, 0xa
/* 02D600 0002D600 AFAB0010 */  sw    $t3, 0x10($sp)
/* 02D604 0002D604 90470024 */  lbu   $a3, 0x24($v0)
/* 02D608 0002D608 AFA20028 */  sw    $v0, 0x28($sp)
/* 02D60C 0002D60C 24040002 */  addiu $a0, $zero, 2
/* 02D610 0002D610 24050065 */  addiu $a1, $zero, 0x65
func_0002D614:
/* 02D614 0002D614 0C00AAD9 */  jal   func_0002AB64
/* 02D618 0002D618 2406006C */   addiu $a2, $zero, 0x6c
/* 02D61C 0002D61C 8FAD0028 */  lw    $t5, 0x28($sp)
/* 02D620 0002D620 2419000A */  addiu $t9, $zero, 0xa
/* 02D624 0002D624 24040002 */  addiu $a0, $zero, 2
/* 02D628 0002D628 91A70025 */  lbu   $a3, 0x25($t5)
/* 02D62C 0002D62C AFB90010 */  sw    $t9, 0x10($sp)
/* 02D630 0002D630 2405008A */  addiu $a1, $zero, 0x8a
/* 02D634 0002D634 0C00AAD9 */  jal   func_0002AB64
/* 02D638 0002D638 2406006C */   addiu $a2, $zero, 0x6c
/* 02D63C 0002D63C 8FAE0028 */  lw    $t6, 0x28($sp)
/* 02D640 0002D640 2418000A */  addiu $t8, $zero, 0xa
/* 02D644 0002D644 24040002 */  addiu $a0, $zero, 2
/* 02D648 0002D648 91C70026 */  lbu   $a3, 0x26($t6)
/* 02D64C 0002D64C AFB80010 */  sw    $t8, 0x10($sp)
/* 02D650 0002D650 240500AF */  addiu $a1, $zero, 0xaf
/* 02D654 0002D654 0C00AAD9 */  jal   func_0002AB64
/* 02D658 0002D658 2406006C */   addiu $a2, $zero, 0x6c
/* 02D65C 0002D65C 8FAF0028 */  lw    $t7, 0x28($sp)
/* 02D660 0002D660 240C000A */  addiu $t4, $zero, 0xa
/* 02D664 0002D664 24040002 */  addiu $a0, $zero, 2
/* 02D668 0002D668 91E70027 */  lbu   $a3, 0x27($t7)
/* 02D66C 0002D66C AFAC0010 */  sw    $t4, 0x10($sp)
/* 02D670 0002D670 240500D4 */  addiu $a1, $zero, 0xd4
/* 02D674 0002D674 0C00AAD9 */  jal   func_0002AB64
/* 02D678 0002D678 2406006C */   addiu $a2, $zero, 0x6c
/* 02D67C 0002D67C 8FA30028 */  lw    $v1, 0x28($sp)
/* 02D680 0002D680 8C68003C */  lw    $t0, 0x3c($v1)
/* 02D684 0002D684 2509FFF1 */  addiu $t1, $t0, -0xf
/* 02D688 0002D688 2D210010 */  sltiu $at, $t1, 0x10
/* 02D68C 0002D68C 10200050 */  beqz  $at, .L0002D7D0
/* 02D690 0002D690 00094880 */   sll   $t1, $t1, 2
/* 02D694 0002D694 3C018007 */  lui   $at, 0x8007
/* 02D698 0002D698 00290821 */  addu  $at, $at, $t1
/* 02D69C 0002D69C 8C29194C */  lw    $t1, 0x194c($at)
/* 02D6A0 0002D6A0 01200008 */  jr    $t1
/* 02D6A4 0002D6A4 00000000 */   nop   
/* 02D6A8 0002D6A8 8C6A0040 */  lw    $t2, 0x40($v1)
/* 02D6AC 0002D6AC 24010005 */  addiu $at, $zero, 5
/* 02D6B0 0002D6B0 24110010 */  addiu $s1, $zero, 0x10
/* 02D6B4 0002D6B4 15410003 */  bne   $t2, $at, .L0002D6C4
/* 02D6B8 0002D6B8 00000000 */   nop   
/* 02D6BC 0002D6BC 10000001 */  b     .L0002D6C4
/* 02D6C0 0002D6C0 00008825 */   move  $s1, $zero
.L0002D6C4:
/* 02D6C4 0002D6C4 10000042 */  b     .L0002D7D0
/* 02D6C8 0002D6C8 AFB10048 */   sw    $s1, 0x48($sp)
/* 02D6CC 0002D6CC 8C6B0040 */  lw    $t3, 0x40($v1)
/* 02D6D0 0002D6D0 24010007 */  addiu $at, $zero, 7
/* 02D6D4 0002D6D4 24110002 */  addiu $s1, $zero, 2
/* 02D6D8 0002D6D8 15610003 */  bne   $t3, $at, .L0002D6E8
/* 02D6DC 0002D6DC 00000000 */   nop   
/* 02D6E0 0002D6E0 10000001 */  b     .L0002D6E8
/* 02D6E4 0002D6E4 24110001 */   addiu $s1, $zero, 1
.L0002D6E8:
/* 02D6E8 0002D6E8 10000039 */  b     .L0002D7D0
/* 02D6EC 0002D6EC AFB10048 */   sw    $s1, 0x48($sp)
/* 02D6F0 0002D6F0 24110004 */  addiu $s1, $zero, 4
/* 02D6F4 0002D6F4 10000036 */  b     .L0002D7D0
/* 02D6F8 0002D6F8 AFB10048 */   sw    $s1, 0x48($sp)
/* 02D6FC 0002D6FC 8C6D0040 */  lw    $t5, 0x40($v1)
/* 02D700 0002D700 24010006 */  addiu $at, $zero, 6
/* 02D704 0002D704 24110005 */  addiu $s1, $zero, 5
/* 02D708 0002D708 15A10003 */  bne   $t5, $at, .L0002D718
/* 02D70C 0002D70C 00000000 */   nop   
/* 02D710 0002D710 10000001 */  b     .L0002D718
/* 02D714 0002D714 24110003 */   addiu $s1, $zero, 3
.L0002D718:
/* 02D718 0002D718 1000002D */  b     .L0002D7D0
/* 02D71C 0002D71C AFB10048 */   sw    $s1, 0x48($sp)
/* 02D720 0002D720 24110006 */  addiu $s1, $zero, 6
/* 02D724 0002D724 1000002A */  b     .L0002D7D0
/* 02D728 0002D728 AFB10048 */   sw    $s1, 0x48($sp)
/* 02D72C 0002D72C 8C790040 */  lw    $t9, 0x40($v1)
/* 02D730 0002D730 24010016 */  addiu $at, $zero, 0x16
/* 02D734 0002D734 24110008 */  addiu $s1, $zero, 8
/* 02D738 0002D738 17210003 */  bne   $t9, $at, .L0002D748
/* 02D73C 0002D73C 00000000 */   nop   
/* 02D740 0002D740 10000001 */  b     .L0002D748
/* 02D744 0002D744 24110007 */   addiu $s1, $zero, 7
func_0002D748:
.L0002D748:
/* 02D748 0002D748 10000021 */  b     .L0002D7D0
/* 02D74C 0002D74C AFB10048 */   sw    $s1, 0x48($sp)
/* 02D750 0002D750 8C620040 */  lw    $v0, 0x40($v1)
/* 02D754 0002D754 24010008 */  addiu $at, $zero, 8
/* 02D758 0002D758 24110009 */  addiu $s1, $zero, 9
/* 02D75C 0002D75C 1040000B */  beqz  $v0, .L0002D78C
/* 02D760 0002D760 00000000 */   nop   
/* 02D764 0002D764 1041000B */  beq   $v0, $at, .L0002D794
/* 02D768 0002D768 2411000C */   addiu $s1, $zero, 0xc
/* 02D76C 0002D76C 24010013 */  addiu $at, $zero, 0x13
/* 02D770 0002D770 1041000A */  beq   $v0, $at, .L0002D79C
/* 02D774 0002D774 2411000A */   addiu $s1, $zero, 0xa
/* 02D778 0002D778 24010016 */  addiu $at, $zero, 0x16
/* 02D77C 0002D77C 10410009 */  beq   $v0, $at, .L0002D7A4
/* 02D780 0002D780 2411000B */   addiu $s1, $zero, 0xb
/* 02D784 0002D784 10000008 */  b     .L0002D7A8
/* 02D788 0002D788 00000000 */   nop   
.L0002D78C:
/* 02D78C 0002D78C 10000006 */  b     .L0002D7A8
/* 02D790 0002D790 AFB10048 */   sw    $s1, 0x48($sp)
.L0002D794:
/* 02D794 0002D794 10000004 */  b     .L0002D7A8
/* 02D798 0002D798 AFB10048 */   sw    $s1, 0x48($sp)
.L0002D79C:
/* 02D79C 0002D79C 10000002 */  b     .L0002D7A8
/* 02D7A0 0002D7A0 AFB10048 */   sw    $s1, 0x48($sp)
.L0002D7A4:
/* 02D7A4 0002D7A4 AFB10048 */  sw    $s1, 0x48($sp)
.L0002D7A8:
/* 02D7A8 0002D7A8 1000000A */  b     .L0002D7D4
/* 02D7AC 0002D7AC 8FB10048 */   lw    $s1, 0x48($sp)
/* 02D7B0 0002D7B0 2411000E */  addiu $s1, $zero, 0xe
/* 02D7B4 0002D7B4 10000006 */  b     .L0002D7D0
/* 02D7B8 0002D7B8 AFB10048 */   sw    $s1, 0x48($sp)
/* 02D7BC 0002D7BC 2411000D */  addiu $s1, $zero, 0xd
/* 02D7C0 0002D7C0 10000003 */  b     .L0002D7D0
/* 02D7C4 0002D7C4 AFB10048 */   sw    $s1, 0x48($sp)
/* 02D7C8 0002D7C8 2411000F */  addiu $s1, $zero, 0xf
/* 02D7CC 0002D7CC AFB10048 */  sw    $s1, 0x48($sp)
.L0002D7D0:
/* 02D7D0 0002D7D0 8FB10048 */  lw    $s1, 0x48($sp)
.L0002D7D4:
/* 02D7D4 0002D7D4 3C068007 */  lui   $a2, 0x8007
/* 02D7D8 0002D7D8 24040051 */  addiu $a0, $zero, 0x51
/* 02D7DC 0002D7DC 00117080 */  sll   $t6, $s1, 2
/* 02D7E0 0002D7E0 00CE3021 */  addu  $a2, $a2, $t6
/* 02D7E4 0002D7E4 8CC6AC00 */  lw    $a2, -0x5400($a2)
/* 02D7E8 0002D7E8 00008825 */  move  $s1, $zero
/* 02D7EC 0002D7EC 0C00C3A8 */  jal   func_00030EA0
/* 02D7F0 0002D7F0 24050048 */   addiu $a1, $zero, 0x48
/* 02D7F4 0002D7F4 0C00B7DB */  jal   func_0002DF6C
/* 02D7F8 0002D7F8 00000000 */   nop   
/* 02D7FC 0002D7FC 8FB80028 */  lw    $t8, 0x28($sp)
/* 02D800 0002D800 24040003 */  addiu $a0, $zero, 3
/* 02D804 0002D804 2405007E */  addiu $a1, $zero, 0x7e
/* 02D808 0002D808 97100038 */  lhu   $s0, 0x38($t8)
/* 02D80C 0002D80C 24060036 */  addiu $a2, $zero, 0x36
/* 02D810 0002D810 8FAF0040 */  lw    $t7, 0x40($sp)
/* 02D814 0002D814 2A01003C */  slti  $at, $s0, 0x3c
/* 02D818 0002D818 54200006 */  bnezl $at, .L0002D834
/* 02D81C 0002D81C 02203825 */   move  $a3, $s1
.L0002D820:
/* 02D820 0002D820 2610FFC4 */  addiu $s0, $s0, -0x3c
/* 02D824 0002D824 2A01003C */  slti  $at, $s0, 0x3c
/* 02D828 0002D828 1020FFFD */  beqz  $at, .L0002D820
/* 02D82C 0002D82C 26310001 */   addiu $s1, $s1, 1
/* 02D830 0002D830 02203825 */  move  $a3, $s1
.L0002D834:
/* 02D834 0002D834 0C00AAD9 */  jal   func_0002AB64
/* 02D838 0002D838 AFAF0010 */   sw    $t7, 0x10($sp)
/* 02D83C 0002D83C 8FAC0040 */  lw    $t4, 0x40($sp)
/* 02D840 0002D840 24040002 */  addiu $a0, $zero, 2
/* 02D844 0002D844 2405009A */  addiu $a1, $zero, 0x9a
/* 02D848 0002D848 24060036 */  addiu $a2, $zero, 0x36
/* 02D84C 0002D84C 02003825 */  move  $a3, $s0
/* 02D850 0002D850 0C00ABDC */  jal   func_0002AF70
/* 02D854 0002D854 AFAC0010 */   sw    $t4, 0x10($sp)
/* 02D858 0002D858 8FA80028 */  lw    $t0, 0x28($sp)
/* 02D85C 0002D85C 8FA90040 */  lw    $t1, 0x40($sp)
/* 02D860 0002D860 24040003 */  addiu $a0, $zero, 3
/* 02D864 0002D864 9507003A */  lhu   $a3, 0x3a($t0)
/* 02D868 0002D868 240500C0 */  addiu $a1, $zero, 0xc0
/* 02D86C 0002D86C 24060036 */  addiu $a2, $zero, 0x36
/* 02D870 0002D870 0C00AAD9 */  jal   func_0002AB64
/* 02D874 0002D874 AFA90010 */   sw    $t1, 0x10($sp)
/* 02D878 0002D878 8FAA0028 */  lw    $t2, 0x28($sp)
/* 02D87C 0002D87C 24040003 */  addiu $a0, $zero, 3
/* 02D880 0002D880 24050070 */  addiu $a1, $zero, 0x70
/* 02D884 0002D884 24060058 */  addiu $a2, $zero, 0x58
/* 02D888 0002D888 0C00ACD9 */  jal   func_0002B364
/* 02D88C 0002D88C 95470004 */   lhu   $a3, 4($t2)
/* 02D890 0002D890 8FAB0028 */  lw    $t3, 0x28($sp)
/* 02D894 0002D894 24040003 */  addiu $a0, $zero, 3
/* 02D898 0002D898 240500C0 */  addiu $a1, $zero, 0xc0
/* 02D89C 0002D89C 24060058 */  addiu $a2, $zero, 0x58
/* 02D8A0 0002D8A0 0C00ACD9 */  jal   func_0002B364
/* 02D8A4 0002D8A4 95670008 */   lhu   $a3, 8($t3)
/* 02D8A8 0002D8A8 AFB10048 */  sw    $s1, 0x48($sp)
.L0002D8AC:
/* 02D8AC 0002D8AC 10000004 */  b     .L0002D8C0
/* 02D8B0 0002D8B0 8FB10048 */   lw    $s1, 0x48($sp)
.L0002D8B4:
/* 02D8B4 0002D8B4 0C00C3A8 */  jal   func_00030EA0
/* 02D8B8 0002D8B8 AFAD0050 */   sw    $t5, 0x50($sp)
func_0002D8BC:
/* 02D8BC 0002D8BC 8FB10048 */  lw    $s1, 0x48($sp)
.L0002D8C0:
/* 02D8C0 0002D8C0 0C00B7DB */  jal   func_0002DF6C
/* 02D8C4 0002D8C4 00000000 */   nop   
/* 02D8C8 0002D8C8 8FB90054 */  lw    $t9, 0x54($sp)
/* 02D8CC 0002D8CC 8FB8002C */  lw    $t8, 0x2c($sp)
/* 02D8D0 0002D8D0 2401FFFF */  addiu $at, $zero, -1
/* 02D8D4 0002D8D4 272E0001 */  addiu $t6, $t9, 1
/* 02D8D8 0002D8D8 270F0002 */  addiu $t7, $t8, 2
/* 02D8DC 0002D8DC AFAF002C */  sw    $t7, 0x2c($sp)
/* 02D8E0 0002D8E0 AFAE0054 */  sw    $t6, 0x54($sp)
/* 02D8E4 0002D8E4 81E20000 */  lb    $v0, ($t7)
/* 02D8E8 0002D8E8 8FAC0050 */  lw    $t4, 0x50($sp)
/* 02D8EC 0002D8EC 104100F3 */  beq   $v0, $at, .L0002DCBC
/* 02D8F0 0002D8F0 00000000 */   nop   
/* 02D8F4 0002D8F4 158000F1 */  bnez  $t4, .L0002DCBC
/* 02D8F8 0002D8F8 2401FFFE */   addiu $at, $zero, -2
/* 02D8FC 0002D8FC 104100EC */  beq   $v0, $at, .L0002DCB0
/* 02D900 0002D900 24040082 */   addiu $a0, $zero, 0x82
/* 02D904 0002D904 81E80001 */  lb    $t0, 1($t7)
/* 02D908 0002D908 2401FFFF */  addiu $at, $zero, -1
/* 02D90C 0002D90C 000E4880 */  sll   $t1, $t6, 2
/* 02D910 0002D910 110100EA */  beq   $t0, $at, .L0002DCBC
/* 02D914 0002D914 012E4823 */   subu  $t1, $t1, $t6
/* 02D918 0002D918 000948C0 */  sll   $t1, $t1, 3
/* 02D91C 0002D91C 3C0D8009 */  lui   $t5, 0x8009
/* 02D920 0002D920 81ADFD2A */  lb    $t5, -0x2d6($t5)
/* 02D924 0002D924 012E4821 */  addu  $t1, $t1, $t6
/* 02D928 0002D928 3C0A8009 */  lui   $t2, 0x8009
/* 02D92C 0002D92C 254AFD58 */  addiu $t2, $t2, -0x2a8
/* 02D930 0002D930 00094880 */  sll   $t1, $t1, 2
/* 02D934 0002D934 012A5821 */  addu  $t3, $t1, $t2
/* 02D938 0002D938 15CD0020 */  bne   $t6, $t5, .L0002D9BC
/* 02D93C 0002D93C AFAB0028 */   sw    $t3, 0x28($sp)
/* 02D940 0002D940 2419000A */  addiu $t9, $zero, 0xa
/* 02D944 0002D944 AFB90010 */  sw    $t9, 0x10($sp)
/* 02D948 0002D948 24040002 */  addiu $a0, $zero, 2
/* 02D94C 0002D94C 2405006F */  addiu $a1, $zero, 0x6f
/* 02D950 0002D950 24060083 */  addiu $a2, $zero, 0x83
/* 02D954 0002D954 0C00AAD9 */  jal   func_0002AB64
/* 02D958 0002D958 01C03825 */   move  $a3, $t6
/* 02D95C 0002D95C 2418000D */  addiu $t8, $zero, 0xd
/* 02D960 0002D960 AFB80010 */  sw    $t8, 0x10($sp)
/* 02D964 0002D964 24040036 */  addiu $a0, $zero, 0x36
/* 02D968 0002D968 24050053 */  addiu $a1, $zero, 0x53
/* 02D96C 0002D96C 24060082 */  addiu $a2, $zero, 0x82
/* 02D970 0002D970 0C00A6D6 */  jal   func_00029B58
/* 02D974 0002D974 2407001C */   addiu $a3, $zero, 0x1c
/* 02D978 0002D978 240C000A */  addiu $t4, $zero, 0xa
/* 02D97C 0002D97C AFAC0010 */  sw    $t4, 0x10($sp)
/* 02D980 0002D980 24040019 */  addiu $a0, $zero, 0x19
/* 02D984 0002D984 24050092 */  addiu $a1, $zero, 0x92
/* 02D988 0002D988 24060083 */  addiu $a2, $zero, 0x83
/* 02D98C 0002D98C 0C00A6D6 */  jal   func_00029B58
/* 02D990 0002D990 24070008 */   addiu $a3, $zero, 8
/* 02D994 0002D994 240F000E */  addiu $t7, $zero, 0xe
/* 02D998 0002D998 AFAF0010 */  sw    $t7, 0x10($sp)
/* 02D99C 0002D99C 24040043 */  addiu $a0, $zero, 0x43
/* 02D9A0 0002D9A0 240500D9 */  addiu $a1, $zero, 0xd9
/* 02D9A4 0002D9A4 24060082 */  addiu $a2, $zero, 0x82
/* 02D9A8 0002D9A8 0C00A6D6 */  jal   func_00029B58
/* 02D9AC 0002D9AC 2407001C */   addiu $a3, $zero, 0x1c
/* 02D9B0 0002D9B0 2408000A */  addiu $t0, $zero, 0xa
/* 02D9B4 0002D9B4 1000001F */  b     .L0002DA34
/* 02D9B8 0002D9B8 AFA80040 */   sw    $t0, 0x40($sp)
.L0002D9BC:
/* 02D9BC 0002D9BC 24090048 */  addiu $t1, $zero, 0x48
/* 02D9C0 0002D9C0 AFA90010 */  sw    $t1, 0x10($sp)
/* 02D9C4 0002D9C4 24040002 */  addiu $a0, $zero, 2
/* 02D9C8 0002D9C8 2405006F */  addiu $a1, $zero, 0x6f
/* 02D9CC 0002D9CC 24060083 */  addiu $a2, $zero, 0x83
/* 02D9D0 0002D9D0 0C00AAD9 */  jal   func_0002AB64
/* 02D9D4 0002D9D4 8FA70054 */   lw    $a3, 0x54($sp)
/* 02D9D8 0002D9D8 240A000D */  addiu $t2, $zero, 0xd
/* 02D9DC 0002D9DC AFAA0010 */  sw    $t2, 0x10($sp)
/* 02D9E0 0002D9E0 24040045 */  addiu $a0, $zero, 0x45
/* 02D9E4 0002D9E4 24050053 */  addiu $a1, $zero, 0x53
/* 02D9E8 0002D9E8 24060082 */  addiu $a2, $zero, 0x82
/* 02D9EC 0002D9EC 0C00A6D6 */  jal   func_00029B58
/* 02D9F0 0002D9F0 2407001C */   addiu $a3, $zero, 0x1c
/* 02D9F4 0002D9F4 240B000A */  addiu $t3, $zero, 0xa
/* 02D9F8 0002D9F8 AFAB0010 */  sw    $t3, 0x10($sp)
/* 02D9FC 0002D9FC 24040052 */  addiu $a0, $zero, 0x52
/* 02DA00 0002DA00 24050092 */  addiu $a1, $zero, 0x92
/* 02DA04 0002DA04 24060083 */  addiu $a2, $zero, 0x83
/* 02DA08 0002DA08 0C00A6D6 */  jal   func_00029B58
/* 02DA0C 0002DA0C 24070008 */   addiu $a3, $zero, 8
/* 02DA10 0002DA10 240D000E */  addiu $t5, $zero, 0xe
/* 02DA14 0002DA14 AFAD0010 */  sw    $t5, 0x10($sp)
/* 02DA18 0002DA18 24040044 */  addiu $a0, $zero, 0x44
/* 02DA1C 0002DA1C 240500D9 */  addiu $a1, $zero, 0xd9
/* 02DA20 0002DA20 24060082 */  addiu $a2, $zero, 0x82
/* 02DA24 0002DA24 0C00A6D6 */  jal   func_00029B58
/* 02DA28 0002DA28 2407001C */   addiu $a3, $zero, 0x1c
/* 02DA2C 0002DA2C 240E0048 */  addiu $t6, $zero, 0x48
/* 02DA30 0002DA30 AFAE0040 */  sw    $t6, 0x40($sp)
.L0002DA34:
/* 02DA34 0002DA34 8FB90028 */  lw    $t9, 0x28($sp)
/* 02DA38 0002DA38 2418000A */  addiu $t8, $zero, 0xa
/* 02DA3C 0002DA3C 24040002 */  addiu $a0, $zero, 2
/* 02DA40 0002DA40 93270024 */  lbu   $a3, 0x24($t9)
/* 02DA44 0002DA44 AFB80010 */  sw    $t8, 0x10($sp)
/* 02DA48 0002DA48 24050065 */  addiu $a1, $zero, 0x65
/* 02DA4C 0002DA4C 0C00AAD9 */  jal   func_0002AB64
/* 02DA50 0002DA50 240600BA */   addiu $a2, $zero, 0xba
/* 02DA54 0002DA54 8FAC0028 */  lw    $t4, 0x28($sp)
/* 02DA58 0002DA58 240F000A */  addiu $t7, $zero, 0xa
/* 02DA5C 0002DA5C 24040002 */  addiu $a0, $zero, 2
/* 02DA60 0002DA60 91870025 */  lbu   $a3, 0x25($t4)
/* 02DA64 0002DA64 AFAF0010 */  sw    $t7, 0x10($sp)
/* 02DA68 0002DA68 2405008A */  addiu $a1, $zero, 0x8a
/* 02DA6C 0002DA6C 0C00AAD9 */  jal   func_0002AB64
/* 02DA70 0002DA70 240600BA */   addiu $a2, $zero, 0xba
/* 02DA74 0002DA74 8FA80028 */  lw    $t0, 0x28($sp)
/* 02DA78 0002DA78 2409000A */  addiu $t1, $zero, 0xa
/* 02DA7C 0002DA7C 24040002 */  addiu $a0, $zero, 2
/* 02DA80 0002DA80 91070026 */  lbu   $a3, 0x26($t0)
/* 02DA84 0002DA84 AFA90010 */  sw    $t1, 0x10($sp)
/* 02DA88 0002DA88 240500AF */  addiu $a1, $zero, 0xaf
/* 02DA8C 0002DA8C 0C00AAD9 */  jal   func_0002AB64
/* 02DA90 0002DA90 240600BA */   addiu $a2, $zero, 0xba
/* 02DA94 0002DA94 8FAA0028 */  lw    $t2, 0x28($sp)
/* 02DA98 0002DA98 240B000A */  addiu $t3, $zero, 0xa
/* 02DA9C 0002DA9C 24040002 */  addiu $a0, $zero, 2
/* 02DAA0 0002DAA0 91470027 */  lbu   $a3, 0x27($t2)
/* 02DAA4 0002DAA4 AFAB0010 */  sw    $t3, 0x10($sp)
/* 02DAA8 0002DAA8 240500D4 */  addiu $a1, $zero, 0xd4
/* 02DAAC 0002DAAC 0C00AAD9 */  jal   func_0002AB64
/* 02DAB0 0002DAB0 240600BA */   addiu $a2, $zero, 0xba
/* 02DAB4 0002DAB4 8FA30028 */  lw    $v1, 0x28($sp)
/* 02DAB8 0002DAB8 8C6D003C */  lw    $t5, 0x3c($v1)
/* 02DABC 0002DABC 25AEFFF1 */  addiu $t6, $t5, -0xf
/* 02DAC0 0002DAC0 2DC10010 */  sltiu $at, $t6, 0x10
/* 02DAC4 0002DAC4 10200043 */  beqz  $at, .L0002DBD4
/* 02DAC8 0002DAC8 000E7080 */   sll   $t6, $t6, 2
/* 02DACC 0002DACC 3C018007 */  lui   $at, 0x8007
/* 02DAD0 0002DAD0 002E0821 */  addu  $at, $at, $t6
/* 02DAD4 0002DAD4 8C2E198C */  lw    $t6, 0x198c($at)
/* 02DAD8 0002DAD8 01C00008 */  jr    $t6
/* 02DADC 0002DADC 00000000 */   nop   
/* 02DAE0 0002DAE0 8C790040 */  lw    $t9, 0x40($v1)
/* 02DAE4 0002DAE4 24010005 */  addiu $at, $zero, 5
/* 02DAE8 0002DAE8 17210003 */  bne   $t9, $at, .L0002DAF8
/* 02DAEC 0002DAEC 00000000 */   nop   
/* 02DAF0 0002DAF0 10000038 */  b     .L0002DBD4
/* 02DAF4 0002DAF4 00008825 */   move  $s1, $zero
.L0002DAF8:
/* 02DAF8 0002DAF8 10000036 */  b     .L0002DBD4
/* 02DAFC 0002DAFC 24110010 */   addiu $s1, $zero, 0x10
/* 02DB00 0002DB00 8C780040 */  lw    $t8, 0x40($v1)
/* 02DB04 0002DB04 24010007 */  addiu $at, $zero, 7
/* 02DB08 0002DB08 17010003 */  bne   $t8, $at, .L0002DB18
/* 02DB0C 0002DB0C 00000000 */   nop   
/* 02DB10 0002DB10 10000030 */  b     .L0002DBD4
/* 02DB14 0002DB14 24110001 */   addiu $s1, $zero, 1
.L0002DB18:
/* 02DB18 0002DB18 1000002E */  b     .L0002DBD4
/* 02DB1C 0002DB1C 24110002 */   addiu $s1, $zero, 2
/* 02DB20 0002DB20 1000002C */  b     .L0002DBD4
/* 02DB24 0002DB24 24110004 */   addiu $s1, $zero, 4
/* 02DB28 0002DB28 8C6C0040 */  lw    $t4, 0x40($v1)
/* 02DB2C 0002DB2C 24010006 */  addiu $at, $zero, 6
/* 02DB30 0002DB30 15810003 */  bne   $t4, $at, .L0002DB40
/* 02DB34 0002DB34 00000000 */   nop   
/* 02DB38 0002DB38 10000026 */  b     .L0002DBD4
/* 02DB3C 0002DB3C 24110003 */   addiu $s1, $zero, 3
.L0002DB40:
/* 02DB40 0002DB40 10000024 */  b     .L0002DBD4
/* 02DB44 0002DB44 24110005 */   addiu $s1, $zero, 5
/* 02DB48 0002DB48 10000022 */  b     .L0002DBD4
/* 02DB4C 0002DB4C 24110006 */   addiu $s1, $zero, 6
/* 02DB50 0002DB50 8C6F0040 */  lw    $t7, 0x40($v1)
/* 02DB54 0002DB54 24010016 */  addiu $at, $zero, 0x16
/* 02DB58 0002DB58 15E10003 */  bne   $t7, $at, .L0002DB68
/* 02DB5C 0002DB5C 00000000 */   nop   
/* 02DB60 0002DB60 1000001C */  b     .L0002DBD4
/* 02DB64 0002DB64 24110007 */   addiu $s1, $zero, 7
.L0002DB68:
/* 02DB68 0002DB68 1000001A */  b     .L0002DBD4
/* 02DB6C 0002DB6C 24110008 */   addiu $s1, $zero, 8
/* 02DB70 0002DB70 8C620040 */  lw    $v0, 0x40($v1)
/* 02DB74 0002DB74 24010008 */  addiu $at, $zero, 8
/* 02DB78 0002DB78 10400009 */  beqz  $v0, .L0002DBA0
/* 02DB7C 0002DB7C 00000000 */   nop   
/* 02DB80 0002DB80 10410009 */  beq   $v0, $at, .L0002DBA8
/* 02DB84 0002DB84 24010013 */   addiu $at, $zero, 0x13
/* 02DB88 0002DB88 10410009 */  beq   $v0, $at, .L0002DBB0
/* 02DB8C 0002DB8C 24010016 */   addiu $at, $zero, 0x16
/* 02DB90 0002DB90 10410009 */  beq   $v0, $at, .L0002DBB8
/* 02DB94 0002DB94 00000000 */   nop   
/* 02DB98 0002DB98 1000000F */  b     .L0002DBD8
/* 02DB9C 0002DB9C 00114080 */   sll   $t0, $s1, 2
.L0002DBA0:
/* 02DBA0 0002DBA0 1000000C */  b     .L0002DBD4
/* 02DBA4 0002DBA4 24110009 */   addiu $s1, $zero, 9
.L0002DBA8:
/* 02DBA8 0002DBA8 1000000A */  b     .L0002DBD4
/* 02DBAC 0002DBAC 2411000C */   addiu $s1, $zero, 0xc
.L0002DBB0:
/* 02DBB0 0002DBB0 10000008 */  b     .L0002DBD4
/* 02DBB4 0002DBB4 2411000A */   addiu $s1, $zero, 0xa
.L0002DBB8:
/* 02DBB8 0002DBB8 10000006 */  b     .L0002DBD4
/* 02DBBC 0002DBBC 2411000B */   addiu $s1, $zero, 0xb
/* 02DBC0 0002DBC0 10000004 */  b     .L0002DBD4
/* 02DBC4 0002DBC4 2411000E */   addiu $s1, $zero, 0xe
/* 02DBC8 0002DBC8 10000002 */  b     .L0002DBD4
/* 02DBCC 0002DBCC 2411000D */   addiu $s1, $zero, 0xd
/* 02DBD0 0002DBD0 2411000F */  addiu $s1, $zero, 0xf
.L0002DBD4:
/* 02DBD4 0002DBD4 00114080 */  sll   $t0, $s1, 2
.L0002DBD8:
/* 02DBD8 0002DBD8 3C068007 */  lui   $a2, 0x8007
/* 02DBDC 0002DBDC 00C83021 */  addu  $a2, $a2, $t0
func_0002DBE0:
/* 02DBE0 0002DBE0 8CC6AC00 */  lw    $a2, -0x5400($a2)
/* 02DBE4 0002DBE4 00008825 */  move  $s1, $zero
/* 02DBE8 0002DBE8 24040051 */  addiu $a0, $zero, 0x51
/* 02DBEC 0002DBEC 0C00C3A8 */  jal   func_00030EA0
/* 02DBF0 0002DBF0 24050096 */   addiu $a1, $zero, 0x96
/* 02DBF4 0002DBF4 0C00B7DB */  jal   func_0002DF6C
/* 02DBF8 0002DBF8 00000000 */   nop   
/* 02DBFC 0002DBFC 8FA90028 */  lw    $t1, 0x28($sp)
/* 02DC00 0002DC00 24040003 */  addiu $a0, $zero, 3
/* 02DC04 0002DC04 2405007E */  addiu $a1, $zero, 0x7e
/* 02DC08 0002DC08 95300038 */  lhu   $s0, 0x38($t1)
/* 02DC0C 0002DC0C 24060083 */  addiu $a2, $zero, 0x83
/* 02DC10 0002DC10 8FAA0040 */  lw    $t2, 0x40($sp)
/* 02DC14 0002DC14 2A01003C */  slti  $at, $s0, 0x3c
/* 02DC18 0002DC18 54200006 */  bnezl $at, .L0002DC34
/* 02DC1C 0002DC1C 02203825 */   move  $a3, $s1
.L0002DC20:
/* 02DC20 0002DC20 2610FFC4 */  addiu $s0, $s0, -0x3c
/* 02DC24 0002DC24 2A01003C */  slti  $at, $s0, 0x3c
/* 02DC28 0002DC28 1020FFFD */  beqz  $at, .L0002DC20
/* 02DC2C 0002DC2C 26310001 */   addiu $s1, $s1, 1
/* 02DC30 0002DC30 02203825 */  move  $a3, $s1
.L0002DC34:
/* 02DC34 0002DC34 0C00AAD9 */  jal   func_0002AB64
/* 02DC38 0002DC38 AFAA0010 */   sw    $t2, 0x10($sp)
/* 02DC3C 0002DC3C 8FAB0040 */  lw    $t3, 0x40($sp)
/* 02DC40 0002DC40 24040002 */  addiu $a0, $zero, 2
/* 02DC44 0002DC44 2405009A */  addiu $a1, $zero, 0x9a
/* 02DC48 0002DC48 24060083 */  addiu $a2, $zero, 0x83
/* 02DC4C 0002DC4C 02003825 */  move  $a3, $s0
/* 02DC50 0002DC50 0C00ABDC */  jal   func_0002AF70
/* 02DC54 0002DC54 AFAB0010 */   sw    $t3, 0x10($sp)
/* 02DC58 0002DC58 8FAD0028 */  lw    $t5, 0x28($sp)
/* 02DC5C 0002DC5C 8FAE0040 */  lw    $t6, 0x40($sp)
/* 02DC60 0002DC60 24040003 */  addiu $a0, $zero, 3
/* 02DC64 0002DC64 95A7003A */  lhu   $a3, 0x3a($t5)
/* 02DC68 0002DC68 240500C0 */  addiu $a1, $zero, 0xc0
/* 02DC6C 0002DC6C 24060083 */  addiu $a2, $zero, 0x83
/* 02DC70 0002DC70 0C00AAD9 */  jal   func_0002AB64
/* 02DC74 0002DC74 AFAE0010 */   sw    $t6, 0x10($sp)
/* 02DC78 0002DC78 8FB90028 */  lw    $t9, 0x28($sp)
/* 02DC7C 0002DC7C 24040003 */  addiu $a0, $zero, 3
/* 02DC80 0002DC80 24050070 */  addiu $a1, $zero, 0x70
/* 02DC84 0002DC84 240600A6 */  addiu $a2, $zero, 0xa6
/* 02DC88 0002DC88 0C00ACD9 */  jal   func_0002B364
/* 02DC8C 0002DC8C 97270004 */   lhu   $a3, 4($t9)
/* 02DC90 0002DC90 8FB80028 */  lw    $t8, 0x28($sp)
/* 02DC94 0002DC94 24040003 */  addiu $a0, $zero, 3
/* 02DC98 0002DC98 240500C0 */  addiu $a1, $zero, 0xc0
/* 02DC9C 0002DC9C 240600A6 */  addiu $a2, $zero, 0xa6
/* 02DCA0 0002DCA0 0C00ACD9 */  jal   func_0002B364
/* 02DCA4 0002DCA4 97070008 */   lhu   $a3, 8($t8)
/* 02DCA8 0002DCA8 10000004 */  b     .L0002DCBC
/* 02DCAC 0002DCAC 00000000 */   nop   
.L0002DCB0:
/* 02DCB0 0002DCB0 2405007F */  addiu $a1, $zero, 0x7f
/* 02DCB4 0002DCB4 0C00C3A8 */  jal   func_00030EA0
/* 02DCB8 0002DCB8 27A60034 */   addiu $a2, $sp, 0x34
.L0002DCBC:
/* 02DCBC 0002DCBC 0C00B7DB */  jal   func_0002DF6C
/* 02DCC0 0002DCC0 00000000 */   nop   
/* 02DCC4 0002DCC4 3C038009 */  lui   $v1, 0x8009
/* 02DCC8 0002DCC8 8C63FD10 */  lw    $v1, -0x2f0($v1)
/* 02DCCC 0002DCCC 3C028009 */  lui   $v0, 0x8009
/* 02DCD0 0002DCD0 8042FD2A */  lb    $v0, -0x2d6($v0)
/* 02DCD4 0002DCD4 00036083 */  sra   $t4, $v1, 2
/* 02DCD8 0002DCD8 318F000F */  andi  $t7, $t4, 0xf
/* 02DCDC 0002DCDC 3C018006 */  lui   $at, 0x8006
/* 02DCE0 0002DCE0 002F0821 */  addu  $at, $at, $t7
/* 02DCE4 0002DCE4 8023F0C0 */  lb    $v1, -0xf40($at)
/* 02DCE8 0002DCE8 28410002 */  slti  $at, $v0, 2
/* 02DCEC 0002DCEC 14200012 */  bnez  $at, .L0002DD38
/* 02DCF0 0002DCF0 24040005 */   addiu $a0, $zero, 5
/* 02DCF4 0002DCF4 24080007 */  addiu $t0, $zero, 7
/* 02DCF8 0002DCF8 AFA80010 */  sw    $t0, 0x10($sp)
/* 02DCFC 0002DCFC 24050038 */  addiu $a1, $zero, 0x38
/* 02DD00 0002DD00 2406004D */  addiu $a2, $zero, 0x4d
/* 02DD04 0002DD04 24070007 */  addiu $a3, $zero, 7
/* 02DD08 0002DD08 0C00A6D6 */  jal   func_00029B58
/* 02DD0C 0002DD0C AFA30050 */   sw    $v1, 0x50($sp)
/* 02DD10 0002DD10 8FA60050 */  lw    $a2, 0x50($sp)
/* 02DD14 0002DD14 24090010 */  addiu $t1, $zero, 0x10
func_0002DD18:
/* 02DD18 0002DD18 AFA90010 */  sw    $t1, 0x10($sp)
/* 02DD1C 0002DD1C 24040053 */  addiu $a0, $zero, 0x53
/* 02DD20 0002DD20 24050036 */  addiu $a1, $zero, 0x36
/* 02DD24 0002DD24 2407000C */  addiu $a3, $zero, 0xc
/* 02DD28 0002DD28 0C00A6D6 */  jal   func_00029B58
/* 02DD2C 0002DD2C 24C6003F */   addiu $a2, $a2, 0x3f
/* 02DD30 0002DD30 1000001A */  b     .L0002DD9C
/* 02DD34 0002DD34 8FB9002C */   lw    $t9, 0x2c($sp)
.L0002DD38:
/* 02DD38 0002DD38 24010001 */  addiu $at, $zero, 1
/* 02DD3C 0002DD3C 14410016 */  bne   $v0, $at, .L0002DD98
/* 02DD40 0002DD40 AFA30050 */   sw    $v1, 0x50($sp)
/* 02DD44 0002DD44 3C0A8009 */  lui   $t2, 0x8009
/* 02DD48 0002DD48 954AFD20 */  lhu   $t2, -0x2e0($t2)
/* 02DD4C 0002DD4C AFA30050 */  sw    $v1, 0x50($sp)
/* 02DD50 0002DD50 24040005 */  addiu $a0, $zero, 5
/* 02DD54 0002DD54 314B0020 */  andi  $t3, $t2, 0x20
/* 02DD58 0002DD58 1560000F */  bnez  $t3, .L0002DD98
/* 02DD5C 0002DD5C 24050038 */   addiu $a1, $zero, 0x38
/* 02DD60 0002DD60 240D0007 */  addiu $t5, $zero, 7
/* 02DD64 0002DD64 AFAD0010 */  sw    $t5, 0x10($sp)
/* 02DD68 0002DD68 2406004D */  addiu $a2, $zero, 0x4d
/* 02DD6C 0002DD6C 24070007 */  addiu $a3, $zero, 7
/* 02DD70 0002DD70 0C00A6D6 */  jal   func_00029B58
/* 02DD74 0002DD74 AFA30050 */   sw    $v1, 0x50($sp)
/* 02DD78 0002DD78 8FA60050 */  lw    $a2, 0x50($sp)
/* 02DD7C 0002DD7C 240E0010 */  addiu $t6, $zero, 0x10
/* 02DD80 0002DD80 AFAE0010 */  sw    $t6, 0x10($sp)
/* 02DD84 0002DD84 24040053 */  addiu $a0, $zero, 0x53
/* 02DD88 0002DD88 24050036 */  addiu $a1, $zero, 0x36
/* 02DD8C 0002DD8C 2407000C */  addiu $a3, $zero, 0xc
/* 02DD90 0002DD90 0C00A6D6 */  jal   func_00029B58
/* 02DD94 0002DD94 24C6003F */   addiu $a2, $a2, 0x3f
.L0002DD98:
/* 02DD98 0002DD98 8FB9002C */  lw    $t9, 0x2c($sp)
.L0002DD9C:
/* 02DD9C 0002DD9C 3C188009 */  lui   $t8, 0x8009
/* 02DDA0 0002DDA0 2718FD50 */  addiu $t8, $t8, -0x2b0
/* 02DDA4 0002DDA4 0338082B */  sltu  $at, $t9, $t8
/* 02DDA8 0002DDA8 10200016 */  beqz  $at, .L0002DE04
/* 02DDAC 0002DDAC 8FA30050 */   lw    $v1, 0x50($sp)
/* 02DDB0 0002DDB0 832C0002 */  lb    $t4, 2($t9)
/* 02DDB4 0002DDB4 2401FFFF */  addiu $at, $zero, -1
/* 02DDB8 0002DDB8 24040005 */  addiu $a0, $zero, 5
/* 02DDBC 0002DDBC 11810011 */  beq   $t4, $at, .L0002DE04
/* 02DDC0 0002DDC0 24050038 */   addiu $a1, $zero, 0x38
/* 02DDC4 0002DDC4 240F0007 */  addiu $t7, $zero, 7
/* 02DDC8 0002DDC8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 02DDCC 0002DDCC 240600A4 */  addiu $a2, $zero, 0xa4
/* 02DDD0 0002DDD0 24070007 */  addiu $a3, $zero, 7
/* 02DDD4 0002DDD4 0C00A6D6 */  jal   func_00029B58
/* 02DDD8 0002DDD8 AFA30050 */   sw    $v1, 0x50($sp)
/* 02DDDC 0002DDDC 8FA80050 */  lw    $t0, 0x50($sp)
/* 02DDE0 0002DDE0 240900AC */  addiu $t1, $zero, 0xac
/* 02DDE4 0002DDE4 240A000B */  addiu $t2, $zero, 0xb
/* 02DDE8 0002DDE8 AFAA0010 */  sw    $t2, 0x10($sp)
/* 02DDEC 0002DDEC 24040054 */  addiu $a0, $zero, 0x54
/* 02DDF0 0002DDF0 24050036 */  addiu $a1, $zero, 0x36
/* 02DDF4 0002DDF4 2407000E */  addiu $a3, $zero, 0xe
/* 02DDF8 0002DDF8 0C00A6D6 */  jal   func_00029B58
/* 02DDFC 0002DDFC 01283023 */   subu  $a2, $t1, $t0
/* 02DE00 0002DE00 8FA30050 */  lw    $v1, 0x50($sp)
.L0002DE04:
/* 02DE04 0002DE04 3C0B8009 */  lui   $t3, 0x8009
/* 02DE08 0002DE08 956BFD20 */  lhu   $t3, -0x2e0($t3)
/* 02DE0C 0002DE0C 24040001 */  addiu $a0, $zero, 1
/* 02DE10 0002DE10 24650042 */  addiu $a1, $v1, 0x42
/* 02DE14 0002DE14 316D0020 */  andi  $t5, $t3, 0x20
/* 02DE18 0002DE18 11A0000A */  beqz  $t5, .L0002DE44
/* 02DE1C 0002DE1C 24060037 */   addiu $a2, $zero, 0x37
.L0002DE20:
/* 02DE20 0002DE20 240E000D */  addiu $t6, $zero, 0xd
/* 02DE24 0002DE24 AFAE0010 */  sw    $t6, 0x10($sp)
/* 02DE28 0002DE28 24040001 */  addiu $a0, $zero, 1
/* 02DE2C 0002DE2C 24650042 */  addiu $a1, $v1, 0x42
/* 02DE30 0002DE30 24060080 */  addiu $a2, $zero, 0x80
/* 02DE34 0002DE34 0C00A6D6 */  jal   func_00029B58
/* 02DE38 0002DE38 24070010 */   addiu $a3, $zero, 0x10
/* 02DE3C 0002DE3C 10000006 */  b     .L0002DE58
/* 02DE40 0002DE40 8FB90058 */   lw    $t9, 0x58($sp)
.L0002DE44:
/* 02DE44 0002DE44 2418000D */  addiu $t8, $zero, 0xd
/* 02DE48 0002DE48 AFB80010 */  sw    $t8, 0x10($sp)
/* 02DE4C 0002DE4C 0C00A6D6 */  jal   func_00029B58
/* 02DE50 0002DE50 24070010 */   addiu $a3, $zero, 0x10
/* 02DE54 0002DE54 8FB90058 */  lw    $t9, 0x58($sp)
.L0002DE58:
/* 02DE58 0002DE58 24010001 */  addiu $at, $zero, 1
/* 02DE5C 0002DE5C 3C028009 */  lui   $v0, 0x8009
/* 02DE60 0002DE60 532100D8 */  beql  $t9, $at, .L0002E1C4
/* 02DE64 0002DE64 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02DE68 0002DE68 80422872 */  lb    $v0, 0x2872($v0)
/* 02DE6C 0002DE6C 3C108009 */  lui   $s0, 0x8009
/* 02DE70 0002DE70 00008825 */  move  $s1, $zero
/* 02DE74 0002DE74 2841FFEC */  slti  $at, $v0, -0x14
/* 02DE78 0002DE78 10200034 */  beqz  $at, .L0002DF4C
/* 02DE7C 0002DE7C 2610FD2B */   addiu $s0, $s0, -0x2d5
/* 02DE80 0002DE80 920C0000 */  lbu   $t4, ($s0)
/* 02DE84 0002DE84 00002025 */  move  $a0, $zero
/* 02DE88 0002DE88 00002825 */  move  $a1, $zero
/* 02DE8C 0002DE8C 55800027 */  bnezl $t4, .L0002DF2C
/* 02DE90 0002DE90 92080000 */   lbu   $t0, ($s0)
/* 02DE94 0002DE94 0C009A35 */  jal   func_000268D4
/* 02DE98 0002DE98 240600FF */   addiu $a2, $zero, 0xff
/* 02DE9C 0002DE9C 3C0F8009 */  lui   $t7, 0x8009
/* 02DEA0 0002DEA0 81EFFD2A */  lb    $t7, -0x2d6($t7)
/* 02DEA4 0002DEA4 3C0B8009 */  lui   $t3, 0x8009
/* 02DEA8 0002DEA8 3C018009 */  lui   $at, 0x8009
/* 02DEAC 0002DEAC 25E90001 */  addiu $t1, $t7, 1
/* 02DEB0 0002DEB0 00091600 */  sll   $v0, $t1, 0x18
/* 02DEB4 0002DEB4 00024603 */  sra   $t0, $v0, 0x18
/* 02DEB8 0002DEB8 00085040 */  sll   $t2, $t0, 1
/* 02DEBC 0002DEBC 016A5821 */  addu  $t3, $t3, $t2
/* 02DEC0 0002DEC0 816BFD30 */  lb    $t3, -0x2d0($t3)
/* 02DEC4 0002DEC4 A029FD2A */  sb    $t1, -0x2d6($at)
/* 02DEC8 0002DEC8 2401FFFF */  addiu $at, $zero, -1
/* 02DECC 0002DECC 15610005 */  bne   $t3, $at, .L0002DEE4
/* 02DED0 0002DED0 3C078009 */   lui   $a3, 0x8009
/* 02DED4 0002DED4 250DFFFF */  addiu $t5, $t0, -1
/* 02DED8 0002DED8 3C018009 */  lui   $at, 0x8009
/* 02DEDC 0002DEDC A02DFD2A */  sb    $t5, -0x2d6($at)
/* 02DEE0 0002DEE0 24110001 */  addiu $s1, $zero, 1
.L0002DEE4:
/* 02DEE4 0002DEE4 24E7FD20 */  addiu $a3, $a3, -0x2e0
/* 02DEE8 0002DEE8 94E30000 */  lhu   $v1, ($a3)
/* 02DEEC 0002DEEC 306E0020 */  andi  $t6, $v1, 0x20
/* 02DEF0 0002DEF0 15C00005 */  bnez  $t6, .L0002DF08
/* 02DEF4 0002DEF4 00000000 */   nop   
/* 02DEF8 0002DEF8 16200003 */  bnez  $s1, .L0002DF08
/* 02DEFC 0002DEFC 34780020 */   ori   $t8, $v1, 0x20
/* 02DF00 0002DF00 10000009 */  b     .L0002DF28
/* 02DF04 0002DF04 A4F80000 */   sh    $t8, ($a3)
.L0002DF08:
/* 02DF08 0002DF08 16200007 */  bnez  $s1, .L0002DF28
/* 02DF0C 0002DF0C 306CFFF8 */   andi  $t4, $v1, 0xfff8
/* 02DF10 0002DF10 A4EC0000 */  sh    $t4, ($a3)
/* 02DF14 0002DF14 358F0006 */  ori   $t7, $t4, 6
/* 02DF18 0002DF18 A4EF0000 */  sh    $t7, ($a3)
/* 02DF1C 0002DF1C 24090004 */  addiu $t1, $zero, 4
/* 02DF20 0002DF20 3C018009 */  lui   $at, 0x8009
/* 02DF24 0002DF24 A029FD29 */  sb    $t1, -0x2d7($at)
.L0002DF28:
/* 02DF28 0002DF28 92080000 */  lbu   $t0, ($s0)
.L0002DF2C:
/* 02DF2C 0002DF2C 3C078009 */  lui   $a3, 0x8009
/* 02DF30 0002DF30 24E7FD20 */  addiu $a3, $a3, -0x2e0
/* 02DF34 0002DF34 250B0001 */  addiu $t3, $t0, 1
/* 02DF38 0002DF38 A20B0000 */  sb    $t3, ($s0)
/* 02DF3C 0002DF3C 316D000F */  andi  $t5, $t3, 0xf
/* 02DF40 0002DF40 2411FFF8 */  addiu $s1, $zero, -8
/* 02DF44 0002DF44 10000039 */  b     .L0002E02C
/* 02DF48 0002DF48 A20D0000 */   sb    $t5, ($s0)
.L0002DF4C:
/* 02DF4C 0002DF4C 28410015 */  slti  $at, $v0, 0x15
/* 02DF50 0002DF50 14200030 */  bnez  $at, .L0002E014
/* 02DF54 0002DF54 3C108009 */   lui   $s0, 0x8009
/* 02DF58 0002DF58 2610FD2B */  addiu $s0, $s0, -0x2d5
/* 02DF5C 0002DF5C 920E0000 */  lbu   $t6, ($s0)
/* 02DF60 0002DF60 00002025 */  move  $a0, $zero
/* 02DF64 0002DF64 00002825 */  move  $a1, $zero
/* 02DF68 0002DF68 55C00022 */  bnezl $t6, .L0002DFF4
func_0002DF6C:
/* 02DF6C 0002DF6C 92180000 */   lbu   $t8, ($s0)
/* 02DF70 0002DF70 0C009A35 */  jal   func_000268D4
/* 02DF74 0002DF74 240600FF */   addiu $a2, $zero, 0xff
/* 02DF78 0002DF78 3C188009 */  lui   $t8, 0x8009
/* 02DF7C 0002DF7C 8318FD2A */  lb    $t8, -0x2d6($t8)
/* 02DF80 0002DF80 3C018009 */  lui   $at, 0x8009
/* 02DF84 0002DF84 3C038009 */  lui   $v1, 0x8009
/* 02DF88 0002DF88 2719FFFF */  addiu $t9, $t8, -1
/* 02DF8C 0002DF8C 00196600 */  sll   $t4, $t9, 0x18
/* 02DF90 0002DF90 000C7E03 */  sra   $t7, $t4, 0x18
/* 02DF94 0002DF94 05E10004 */  bgez  $t7, .L0002DFA8
/* 02DF98 0002DF98 A039FD2A */   sb    $t9, -0x2d6($at)
/* 02DF9C 0002DF9C 3C018009 */  lui   $at, 0x8009
/* 02DFA0 0002DFA0 A020FD2A */  sb    $zero, -0x2d6($at)
/* 02DFA4 0002DFA4 24110001 */  addiu $s1, $zero, 1
.L0002DFA8:
/* 02DFA8 0002DFA8 9463FD20 */  lhu   $v1, -0x2e0($v1)
/* 02DFAC 0002DFAC 3C018009 */  lui   $at, 0x8009
/* 02DFB0 0002DFB0 30690020 */  andi  $t1, $v1, 0x20
/* 02DFB4 0002DFB4 11200003 */  beqz  $t1, .L0002DFC4
/* 02DFB8 0002DFB8 3068FFDF */   andi  $t0, $v1, 0xffdf
/* 02DFBC 0002DFBC 1000000C */  b     .L0002DFF0
/* 02DFC0 0002DFC0 A428FD20 */   sh    $t0, -0x2e0($at)
.L0002DFC4:
/* 02DFC4 0002DFC4 1620000A */  bnez  $s1, .L0002DFF0
/* 02DFC8 0002DFC8 306AFFF8 */   andi  $t2, $v1, 0xfff8
/* 02DFCC 0002DFCC 3C018009 */  lui   $at, 0x8009
func_0002DFD0:
/* 02DFD0 0002DFD0 A42AFD20 */  sh    $t2, -0x2e0($at)
/* 02DFD4 0002DFD4 3C0B8009 */  lui   $t3, 0x8009
/* 02DFD8 0002DFD8 956BFD20 */  lhu   $t3, -0x2e0($t3)
/* 02DFDC 0002DFDC 240E0004 */  addiu $t6, $zero, 4
/* 02DFE0 0002DFE0 356D0006 */  ori   $t5, $t3, 6
/* 02DFE4 0002DFE4 A42DFD20 */  sh    $t5, -0x2e0($at)
/* 02DFE8 0002DFE8 3C018009 */  lui   $at, 0x8009
/* 02DFEC 0002DFEC A02EFD29 */  sb    $t6, -0x2d7($at)
.L0002DFF0:
/* 02DFF0 0002DFF0 92180000 */  lbu   $t8, ($s0)
.L0002DFF4:
/* 02DFF4 0002DFF4 3C078009 */  lui   $a3, 0x8009
/* 02DFF8 0002DFF8 2411FFF8 */  addiu $s1, $zero, -8
/* 02DFFC 0002DFFC 270C0001 */  addiu $t4, $t8, 1
/* 02E000 0002E000 A20C0000 */  sb    $t4, ($s0)
/* 02E004 0002E004 318F000F */  andi  $t7, $t4, 0xf
/* 02E008 0002E008 A20F0000 */  sb    $t7, ($s0)
/* 02E00C 0002E00C 10000007 */  b     .L0002E02C
/* 02E010 0002E010 24E7FD20 */   addiu $a3, $a3, -0x2e0
.L0002E014:
/* 02E014 0002E014 3C108009 */  lui   $s0, 0x8009
/* 02E018 0002E018 2610FD2B */  addiu $s0, $s0, -0x2d5
/* 02E01C 0002E01C 3C078009 */  lui   $a3, 0x8009
/* 02E020 0002E020 24E7FD20 */  addiu $a3, $a3, -0x2e0
/* 02E024 0002E024 A2000000 */  sb    $zero, ($s0)
/* 02E028 0002E028 2411FFF8 */  addiu $s1, $zero, -8
.L0002E02C:
/* 02E02C 0002E02C 3C028009 */  lui   $v0, 0x8009
/* 02E030 0002E030 94422876 */  lhu   $v0, 0x2876($v0)
/* 02E034 0002E034 30498000 */  andi  $t1, $v0, 0x8000
/* 02E038 0002E038 11200050 */  beqz  $t1, .L0002E17C
/* 02E03C 0002E03C 3C088009 */   lui   $t0, 0x8009
/* 02E040 0002E040 9508FD0C */  lhu   $t0, -0x2f4($t0)
/* 02E044 0002E044 00002025 */  move  $a0, $zero
/* 02E048 0002E048 24050001 */  addiu $a1, $zero, 1
/* 02E04C 0002E04C 310A000C */  andi  $t2, $t0, 0xc
/* 02E050 0002E050 AFAA0054 */  sw    $t2, 0x54($sp)
/* 02E054 0002E054 0C009A35 */  jal   func_000268D4
/* 02E058 0002E058 240600FF */   addiu $a2, $zero, 0xff
/* 02E05C 0002E05C 8FAB0054 */  lw    $t3, 0x54($sp)
/* 02E060 0002E060 3C028009 */  lui   $v0, 0x8009
/* 02E064 0002E064 2442FD20 */  addiu $v0, $v0, -0x2e0
/* 02E068 0002E068 11600007 */  beqz  $t3, .L0002E088
/* 02E06C 0002E06C 24010004 */   addiu $at, $zero, 4
/* 02E070 0002E070 1161001E */  beq   $t3, $at, .L0002E0EC
/* 02E074 0002E074 24010008 */   addiu $at, $zero, 8
/* 02E078 0002E078 1161000F */  beq   $t3, $at, .L0002E0B8
/* 02E07C 0002E07C 3C028009 */   lui   $v0, 0x8009
/* 02E080 0002E080 10000050 */  b     .L0002E1C4
/* 02E084 0002E084 8FBF0024 */   lw    $ra, 0x24($sp)
.L0002E088:
/* 02E088 0002E088 944D0000 */  lhu   $t5, ($v0)
/* 02E08C 0002E08C 24180001 */  addiu $t8, $zero, 1
/* 02E090 0002E090 3C018009 */  lui   $at, 0x8009
/* 02E094 0002E094 35AE2000 */  ori   $t6, $t5, 0x2000
/* 02E098 0002E098 A44E0000 */  sh    $t6, ($v0)
/* 02E09C 0002E09C A038FD23 */  sb    $t8, -0x2dd($at)
/* 02E0A0 0002E0A0 94590000 */  lhu   $t9, ($v0)
/* 02E0A4 0002E0A4 03317824 */  and   $t7, $t9, $s1
/* 02E0A8 0002E0A8 A44F0000 */  sh    $t7, ($v0)
/* 02E0AC 0002E0AC 35E90002 */  ori   $t1, $t7, 2
/* 02E0B0 0002E0B0 10000043 */  b     .L0002E1C0
/* 02E0B4 0002E0B4 A4490000 */   sh    $t1, ($v0)
.L0002E0B8:
/* 02E0B8 0002E0B8 24080005 */  addiu $t0, $zero, 5
/* 02E0BC 0002E0BC 3C018009 */  lui   $at, 0x8009
/* 02E0C0 0002E0C0 A028FD22 */  sb    $t0, -0x2de($at)
/* 02E0C4 0002E0C4 3C018009 */  lui   $at, 0x8009
/* 02E0C8 0002E0C8 240A000A */  addiu $t2, $zero, 0xa
/* 02E0CC 0002E0CC 2442FD20 */  addiu $v0, $v0, -0x2e0
/* 02E0D0 0002E0D0 A02AFD29 */  sb    $t2, -0x2d7($at)
/* 02E0D4 0002E0D4 944B0000 */  lhu   $t3, ($v0)
/* 02E0D8 0002E0D8 01717024 */  and   $t6, $t3, $s1
/* 02E0DC 0002E0DC A44E0000 */  sh    $t6, ($v0)
/* 02E0E0 0002E0E0 35D80005 */  ori   $t8, $t6, 5
/* 02E0E4 0002E0E4 10000036 */  b     .L0002E1C0
/* 02E0E8 0002E0E8 A4580000 */   sh    $t8, ($v0)
.L0002E0EC:
/* 02E0EC 0002E0EC 3C198009 */  lui   $t9, 0x8009
/* 02E0F0 0002E0F0 8339FD2A */  lb    $t9, -0x2d6($t9)
/* 02E0F4 0002E0F4 3C0F8009 */  lui   $t7, 0x8009
/* 02E0F8 0002E0F8 2401FFFE */  addiu $at, $zero, -2
/* 02E0FC 0002E0FC 00196040 */  sll   $t4, $t9, 1
/* 02E100 0002E100 01EC7821 */  addu  $t7, $t7, $t4
/* 02E104 0002E104 81EFFD30 */  lb    $t7, -0x2d0($t7)
/* 02E108 0002E108 15E1000E */  bne   $t7, $at, .L0002E144
/* 02E10C 0002E10C 3C028009 */   lui   $v0, 0x8009
/* 02E110 0002E110 2442FD20 */  addiu $v0, $v0, -0x2e0
/* 02E114 0002E114 94490000 */  lhu   $t1, ($v0)
/* 02E118 0002E118 240A0002 */  addiu $t2, $zero, 2
/* 02E11C 0002E11C 3C018009 */  lui   $at, 0x8009
/* 02E120 0002E120 35282000 */  ori   $t0, $t1, 0x2000
/* 02E124 0002E124 A4480000 */  sh    $t0, ($v0)
/* 02E128 0002E128 A02AFD23 */  sb    $t2, -0x2dd($at)
/* 02E12C 0002E12C 944B0000 */  lhu   $t3, ($v0)
/* 02E130 0002E130 01717024 */  and   $t6, $t3, $s1
/* 02E134 0002E134 A44E0000 */  sh    $t6, ($v0)
/* 02E138 0002E138 35D80003 */  ori   $t8, $t6, 3
/* 02E13C 0002E13C 10000020 */  b     .L0002E1C0
/* 02E140 0002E140 A4580000 */   sh    $t8, ($v0)
.L0002E144:
/* 02E144 0002E144 24190004 */  addiu $t9, $zero, 4
/* 02E148 0002E148 3C018009 */  lui   $at, 0x8009
/* 02E14C 0002E14C A039FD22 */  sb    $t9, -0x2de($at)
/* 02E150 0002E150 3C028009 */  lui   $v0, 0x8009
/* 02E154 0002E154 3C018009 */  lui   $at, 0x8009
/* 02E158 0002E158 240C000A */  addiu $t4, $zero, 0xa
/* 02E15C 0002E15C 2442FD20 */  addiu $v0, $v0, -0x2e0
/* 02E160 0002E160 A02CFD29 */  sb    $t4, -0x2d7($at)
/* 02E164 0002E164 944F0000 */  lhu   $t7, ($v0)
/* 02E168 0002E168 01F14024 */  and   $t0, $t7, $s1
/* 02E16C 0002E16C A4480000 */  sh    $t0, ($v0)
/* 02E170 0002E170 350A0005 */  ori   $t2, $t0, 5
/* 02E174 0002E174 10000012 */  b     .L0002E1C0
/* 02E178 0002E178 A44A0000 */   sh    $t2, ($v0)
.L0002E17C:
/* 02E17C 0002E17C 304B5000 */  andi  $t3, $v0, 0x5000
/* 02E180 0002E180 1160000F */  beqz  $t3, .L0002E1C0
/* 02E184 0002E184 240D0007 */   addiu $t5, $zero, 7
/* 02E188 0002E188 3C018009 */  lui   $at, 0x8009
/* 02E18C 0002E18C A02DFD22 */  sb    $t5, -0x2de($at)
/* 02E190 0002E190 3C018009 */  lui   $at, 0x8009
/* 02E194 0002E194 240E000A */  addiu $t6, $zero, 0xa
/* 02E198 0002E198 A02EFD29 */  sb    $t6, -0x2d7($at)
/* 02E19C 0002E19C 94F80000 */  lhu   $t8, ($a3)
/* 02E1A0 0002E1A0 00002025 */  move  $a0, $zero
/* 02E1A4 0002E1A4 24050002 */  addiu $a1, $zero, 2
/* 02E1A8 0002E1A8 03116024 */  and   $t4, $t8, $s1
/* 02E1AC 0002E1AC A4EC0000 */  sh    $t4, ($a3)
/* 02E1B0 0002E1B0 358F0005 */  ori   $t7, $t4, 5
/* 02E1B4 0002E1B4 A4EF0000 */  sh    $t7, ($a3)
/* 02E1B8 0002E1B8 0C009A35 */  jal   func_000268D4
/* 02E1BC 0002E1BC 240600FF */   addiu $a2, $zero, 0xff
.L0002E1C0:
/* 02E1C0 0002E1C0 8FBF0024 */  lw    $ra, 0x24($sp)
.L0002E1C4:
/* 02E1C4 0002E1C4 8FB0001C */  lw    $s0, 0x1c($sp)
/* 02E1C8 0002E1C8 8FB10020 */  lw    $s1, 0x20($sp)
/* 02E1CC 0002E1CC 03E00008 */  jr    $ra
/* 02E1D0 0002E1D0 27BD0058 */   addiu $sp, $sp, 0x58