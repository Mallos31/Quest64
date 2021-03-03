.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101E8C
/* DC34AC 80101E8C 00057000 */  sll        $t6, $a1, 0
/* DC34B0 80101E90 05C00003 */  bltz       $t6, .L80101EA0
/* DC34B4 80101E94 00047880 */   sll       $t7, $a0, 2
/* DC34B8 80101E98 03E00008 */  jr         $ra
/* DC34BC 80101E9C 240200FF */   addiu     $v0, $zero, 0xff
.L80101EA0:
/* DC34C0 80101EA0 01E47821 */  addu       $t7, $t7, $a0
/* DC34C4 80101EA4 3C188016 */  lui        $t8, %hi(D_80166250)
/* DC34C8 80101EA8 27186250 */  addiu      $t8, $t8, %lo(D_80166250)
/* DC34CC 80101EAC 000F7900 */  sll        $t7, $t7, 4
/* DC34D0 80101EB0 01F81821 */  addu       $v1, $t7, $t8
/* DC34D4 80101EB4 8462002C */  lh         $v0, 0x2c($v1)
/* DC34D8 80101EB8 84690028 */  lh         $t1, 0x28($v1)
/* DC34DC 80101EBC 8C6A0038 */  lw         $t2, 0x38($v1)
/* DC34E0 80101EC0 44822000 */  mtc1       $v0, $f4
/* DC34E4 80101EC4 44894000 */  mtc1       $t1, $f8
/* DC34E8 80101EC8 448A9000 */  mtc1       $t2, $f18
/* DC34EC 80101ECC 468021A0 */  cvt.s.w    $f6, $f4
/* DC34F0 80101ED0 84790024 */  lh         $t9, 0x24($v1)
/* DC34F4 80101ED4 27280001 */  addiu      $t0, $t9, 1
/* DC34F8 80101ED8 468042A0 */  cvt.s.w    $f10, $f8
/* DC34FC 80101EDC 44804000 */  mtc1       $zero, $f8
/* DC3500 80101EE0 A4680024 */  sh         $t0, 0x24($v1)
/* DC3504 80101EE4 46809120 */  cvt.s.w    $f4, $f18
/* DC3508 80101EE8 460A3401 */  sub.s      $f16, $f6, $f10
/* DC350C 80101EEC 46048003 */  div.s      $f0, $f16, $f4
/* DC3510 80101EF0 4608003C */  c.lt.s     $f0, $f8
/* DC3514 80101EF4 00000000 */  nop
/* DC3518 80101EF8 45020003 */  bc1fl      .L80101F08
/* DC351C 80101EFC C4660020 */   lwc1      $f6, 0x20($v1)
/* DC3520 80101F00 46000007 */  neg.s      $f0, $f0
/* DC3524 80101F04 C4660020 */  lwc1       $f6, 0x20($v1)
.L80101F08:
/* DC3528 80101F08 84660006 */  lh         $a2, 6($v1)
/* DC352C 80101F0C 46003280 */  add.s      $f10, $f6, $f0
/* DC3530 80101F10 00C2082A */  slt        $at, $a2, $v0
/* DC3534 80101F14 24020008 */  addiu      $v0, $zero, 8
/* DC3538 80101F18 E46A0020 */  swc1       $f10, 0x20($v1)
/* DC353C 80101F1C C4620020 */  lwc1       $f2, 0x20($v1)
/* DC3540 80101F20 4600148D */  trunc.w.s  $f18, $f2
/* DC3544 80101F24 44049000 */  mfc1       $a0, $f18
/* DC3548 80101F28 10200003 */  beqz       $at, .L80101F38
/* DC354C 80101F2C 00802825 */   or        $a1, $a0, $zero
/* DC3550 80101F30 10000002 */  b          .L80101F3C
/* DC3554 80101F34 24020004 */   addiu     $v0, $zero, 4
.L80101F38:
/* DC3558 80101F38 00042823 */  negu       $a1, $a0
.L80101F3C:
/* DC355C 80101F3C 3C013F80 */  lui        $at, 0x3f80
/* DC3560 80101F40 44818000 */  mtc1       $at, $f16
/* DC3564 80101F44 00C56021 */  addu       $t4, $a2, $a1
/* DC3568 80101F48 A46C0006 */  sh         $t4, 6($v1)
/* DC356C 80101F4C 4602803E */  c.le.s     $f16, $f2
/* DC3570 80101F50 30580004 */  andi       $t8, $v0, 4
/* DC3574 80101F54 30480008 */  andi       $t0, $v0, 8
/* DC3578 80101F58 45020007 */  bc1fl      .L80101F78
/* DC357C 80101F5C 846D0024 */   lh        $t5, 0x24($v1)
/* DC3580 80101F60 44842000 */  mtc1       $a0, $f4
/* DC3584 80101F64 00000000 */  nop
/* DC3588 80101F68 46802220 */  cvt.s.w    $f8, $f4
/* DC358C 80101F6C 46081181 */  sub.s      $f6, $f2, $f8
/* DC3590 80101F70 E4660020 */  swc1       $f6, 0x20($v1)
/* DC3594 80101F74 846D0024 */  lh         $t5, 0x24($v1)
.L80101F78:
/* DC3598 80101F78 8C6E0038 */  lw         $t6, 0x38($v1)
/* DC359C 80101F7C 01AE082A */  slt        $at, $t5, $t6
/* DC35A0 80101F80 14200003 */  bnez       $at, .L80101F90
/* DC35A4 80101F84 00000000 */   nop
/* DC35A8 80101F88 846F002C */  lh         $t7, 0x2c($v1)
/* DC35AC 80101F8C A46F0006 */  sh         $t7, 6($v1)
.L80101F90:
/* DC35B0 80101F90 13000008 */  beqz       $t8, .L80101FB4
/* DC35B4 80101F94 00000000 */   nop
/* DC35B8 80101F98 8462002C */  lh         $v0, 0x2c($v1)
/* DC35BC 80101F9C 84790006 */  lh         $t9, 6($v1)
/* DC35C0 80101FA0 0322082A */  slt        $at, $t9, $v0
/* DC35C4 80101FA4 5420000C */  bnel       $at, $zero, .L80101FD8
/* DC35C8 80101FA8 846A0024 */   lh        $t2, 0x24($v1)
/* DC35CC 80101FAC 10000009 */  b          .L80101FD4
/* DC35D0 80101FB0 A4620006 */   sh        $v0, 6($v1)
.L80101FB4:
/* DC35D4 80101FB4 51000008 */  beql       $t0, $zero, .L80101FD8
/* DC35D8 80101FB8 846A0024 */   lh        $t2, 0x24($v1)
/* DC35DC 80101FBC 8462002C */  lh         $v0, 0x2c($v1)
/* DC35E0 80101FC0 84690006 */  lh         $t1, 6($v1)
/* DC35E4 80101FC4 0049082A */  slt        $at, $v0, $t1
/* DC35E8 80101FC8 54200003 */  bnel       $at, $zero, .L80101FD8
/* DC35EC 80101FCC 846A0024 */   lh        $t2, 0x24($v1)
/* DC35F0 80101FD0 A4620006 */  sh         $v0, 6($v1)
.L80101FD4:
/* DC35F4 80101FD4 846A0024 */  lh         $t2, 0x24($v1)
.L80101FD8:
/* DC35F8 80101FD8 8C6B0038 */  lw         $t3, 0x38($v1)
/* DC35FC 80101FDC 00001025 */  or         $v0, $zero, $zero
/* DC3600 80101FE0 014B082A */  slt        $at, $t2, $t3
/* DC3604 80101FE4 14200007 */  bnez       $at, .L80102004
/* DC3608 80101FE8 00000000 */   nop
/* DC360C 80101FEC 44800000 */  mtc1       $zero, $f0
/* DC3610 80101FF0 A4600024 */  sh         $zero, 0x24($v1)
/* DC3614 80101FF4 240200FF */  addiu      $v0, $zero, 0xff
/* DC3618 80101FF8 E460001C */  swc1       $f0, 0x1c($v1)
/* DC361C 80101FFC 03E00008 */  jr         $ra
/* DC3620 80102000 E4600020 */   swc1      $f0, 0x20($v1)
.L80102004:
/* DC3624 80102004 03E00008 */  jr         $ra
/* DC3628 80102008 00000000 */   nop
