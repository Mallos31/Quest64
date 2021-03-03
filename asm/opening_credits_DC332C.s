.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101D0C
/* DC332C 80101D0C 00057000 */  sll        $t6, $a1, 0
/* DC3330 80101D10 05C00003 */  bltz       $t6, .L80101D20
/* DC3334 80101D14 00047880 */   sll       $t7, $a0, 2
/* DC3338 80101D18 03E00008 */  jr         $ra
/* DC333C 80101D1C 240200FF */   addiu     $v0, $zero, 0xff
.L80101D20:
/* DC3340 80101D20 01E47821 */  addu       $t7, $t7, $a0
/* DC3344 80101D24 3C188016 */  lui        $t8, %hi(D_80166250)
/* DC3348 80101D28 27186250 */  addiu      $t8, $t8, %lo(D_80166250)
/* DC334C 80101D2C 000F7900 */  sll        $t7, $t7, 4
/* DC3350 80101D30 01F81821 */  addu       $v1, $t7, $t8
/* DC3354 80101D34 8462002A */  lh         $v0, 0x2a($v1)
/* DC3358 80101D38 84690026 */  lh         $t1, 0x26($v1)
/* DC335C 80101D3C 8C6A0038 */  lw         $t2, 0x38($v1)
/* DC3360 80101D40 44822000 */  mtc1       $v0, $f4
/* DC3364 80101D44 44894000 */  mtc1       $t1, $f8
/* DC3368 80101D48 448A9000 */  mtc1       $t2, $f18
/* DC336C 80101D4C 468021A0 */  cvt.s.w    $f6, $f4
/* DC3370 80101D50 84790024 */  lh         $t9, 0x24($v1)
/* DC3374 80101D54 27280001 */  addiu      $t0, $t9, 1
/* DC3378 80101D58 468042A0 */  cvt.s.w    $f10, $f8
/* DC337C 80101D5C 44804000 */  mtc1       $zero, $f8
/* DC3380 80101D60 A4680024 */  sh         $t0, 0x24($v1)
/* DC3384 80101D64 46809120 */  cvt.s.w    $f4, $f18
/* DC3388 80101D68 460A3401 */  sub.s      $f16, $f6, $f10
/* DC338C 80101D6C 46048003 */  div.s      $f0, $f16, $f4
/* DC3390 80101D70 4608003C */  c.lt.s     $f0, $f8
/* DC3394 80101D74 00000000 */  nop
/* DC3398 80101D78 45020003 */  bc1fl      .L80101D88
/* DC339C 80101D7C C466001C */   lwc1      $f6, 0x1c($v1)
/* DC33A0 80101D80 46000007 */  neg.s      $f0, $f0
/* DC33A4 80101D84 C466001C */  lwc1       $f6, 0x1c($v1)
.L80101D88:
/* DC33A8 80101D88 84660004 */  lh         $a2, 4($v1)
/* DC33AC 80101D8C 46003280 */  add.s      $f10, $f6, $f0
/* DC33B0 80101D90 00C2082A */  slt        $at, $a2, $v0
/* DC33B4 80101D94 24020002 */  addiu      $v0, $zero, 2
/* DC33B8 80101D98 E46A001C */  swc1       $f10, 0x1c($v1)
/* DC33BC 80101D9C C462001C */  lwc1       $f2, 0x1c($v1)
/* DC33C0 80101DA0 4600148D */  trunc.w.s  $f18, $f2
/* DC33C4 80101DA4 44049000 */  mfc1       $a0, $f18
/* DC33C8 80101DA8 10200003 */  beqz       $at, .L80101DB8
/* DC33CC 80101DAC 00802825 */   or        $a1, $a0, $zero
/* DC33D0 80101DB0 10000002 */  b          .L80101DBC
/* DC33D4 80101DB4 24020001 */   addiu     $v0, $zero, 1
.L80101DB8:
/* DC33D8 80101DB8 00042823 */  negu       $a1, $a0
.L80101DBC:
/* DC33DC 80101DBC 3C013F80 */  lui        $at, 0x3f80
/* DC33E0 80101DC0 44818000 */  mtc1       $at, $f16
/* DC33E4 80101DC4 00C56021 */  addu       $t4, $a2, $a1
/* DC33E8 80101DC8 A46C0004 */  sh         $t4, 4($v1)
/* DC33EC 80101DCC 4602803E */  c.le.s     $f16, $f2
/* DC33F0 80101DD0 30580001 */  andi       $t8, $v0, 1
/* DC33F4 80101DD4 30480002 */  andi       $t0, $v0, 2
/* DC33F8 80101DD8 45020007 */  bc1fl      .L80101DF8
/* DC33FC 80101DDC 846D0024 */   lh        $t5, 0x24($v1)
/* DC3400 80101DE0 44842000 */  mtc1       $a0, $f4
/* DC3404 80101DE4 00000000 */  nop
/* DC3408 80101DE8 46802220 */  cvt.s.w    $f8, $f4
/* DC340C 80101DEC 46081181 */  sub.s      $f6, $f2, $f8
/* DC3410 80101DF0 E466001C */  swc1       $f6, 0x1c($v1)
/* DC3414 80101DF4 846D0024 */  lh         $t5, 0x24($v1)
.L80101DF8:
/* DC3418 80101DF8 8C6E0038 */  lw         $t6, 0x38($v1)
/* DC341C 80101DFC 01AE082A */  slt        $at, $t5, $t6
/* DC3420 80101E00 14200003 */  bnez       $at, .L80101E10
/* DC3424 80101E04 00000000 */   nop
/* DC3428 80101E08 846F002A */  lh         $t7, 0x2a($v1)
/* DC342C 80101E0C A46F0004 */  sh         $t7, 4($v1)
.L80101E10:
/* DC3430 80101E10 13000008 */  beqz       $t8, .L80101E34
/* DC3434 80101E14 00000000 */   nop
/* DC3438 80101E18 8462002A */  lh         $v0, 0x2a($v1)
/* DC343C 80101E1C 84790004 */  lh         $t9, 4($v1)
/* DC3440 80101E20 0322082A */  slt        $at, $t9, $v0
/* DC3444 80101E24 5420000C */  bnel       $at, $zero, .L80101E58
/* DC3448 80101E28 846A0024 */   lh        $t2, 0x24($v1)
/* DC344C 80101E2C 10000009 */  b          .L80101E54
/* DC3450 80101E30 A4620004 */   sh        $v0, 4($v1)
.L80101E34:
/* DC3454 80101E34 51000008 */  beql       $t0, $zero, .L80101E58
/* DC3458 80101E38 846A0024 */   lh        $t2, 0x24($v1)
/* DC345C 80101E3C 8462002A */  lh         $v0, 0x2a($v1)
/* DC3460 80101E40 84690004 */  lh         $t1, 4($v1)
/* DC3464 80101E44 0049082A */  slt        $at, $v0, $t1
/* DC3468 80101E48 54200003 */  bnel       $at, $zero, .L80101E58
/* DC346C 80101E4C 846A0024 */   lh        $t2, 0x24($v1)
/* DC3470 80101E50 A4620004 */  sh         $v0, 4($v1)
.L80101E54:
/* DC3474 80101E54 846A0024 */  lh         $t2, 0x24($v1)
.L80101E58:
/* DC3478 80101E58 8C6B0038 */  lw         $t3, 0x38($v1)
/* DC347C 80101E5C 00001025 */  or         $v0, $zero, $zero
/* DC3480 80101E60 014B082A */  slt        $at, $t2, $t3
/* DC3484 80101E64 14200007 */  bnez       $at, .L80101E84
/* DC3488 80101E68 00000000 */   nop
/* DC348C 80101E6C 44800000 */  mtc1       $zero, $f0
/* DC3490 80101E70 A4600024 */  sh         $zero, 0x24($v1)
/* DC3494 80101E74 240200FF */  addiu      $v0, $zero, 0xff
/* DC3498 80101E78 E460001C */  swc1       $f0, 0x1c($v1)
/* DC349C 80101E7C 03E00008 */  jr         $ra
/* DC34A0 80101E80 E4600020 */   swc1      $f0, 0x20($v1)
.L80101E84:
/* DC34A4 80101E84 03E00008 */  jr         $ra
/* DC34A8 80101E88 00000000 */   nop
