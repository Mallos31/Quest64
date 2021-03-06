.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101534
/* E28D74 80101534 00057000 */  sll        $t6, $a1, 0
/* E28D78 80101538 05C00003 */  bltz       $t6, .L80101548
/* E28D7C 8010153C 00047880 */   sll       $t7, $a0, 2
/* E28D80 80101540 03E00008 */  jr         $ra
/* E28D84 80101544 240200FF */   addiu     $v0, $zero, 0xff
.L80101548:
/* E28D88 80101548 01E47821 */  addu       $t7, $t7, $a0
/* E28D8C 8010154C 3C188015 */  lui        $t8, %hi(D_80156FE8)
/* E28D90 80101550 27186FE8 */  addiu      $t8, $t8, %lo(D_80156FE8)
/* E28D94 80101554 000F7900 */  sll        $t7, $t7, 4
/* E28D98 80101558 01F81821 */  addu       $v1, $t7, $t8
/* E28D9C 8010155C 8462002A */  lh         $v0, 0x2a($v1)
/* E28DA0 80101560 84690026 */  lh         $t1, 0x26($v1)
/* E28DA4 80101564 8C6A0038 */  lw         $t2, 0x38($v1)
/* E28DA8 80101568 44822000 */  mtc1       $v0, $f4
/* E28DAC 8010156C 44894000 */  mtc1       $t1, $f8
/* E28DB0 80101570 448A9000 */  mtc1       $t2, $f18
/* E28DB4 80101574 468021A0 */  cvt.s.w    $f6, $f4
/* E28DB8 80101578 84790024 */  lh         $t9, 0x24($v1)
/* E28DBC 8010157C 27280001 */  addiu      $t0, $t9, 1
/* E28DC0 80101580 468042A0 */  cvt.s.w    $f10, $f8
/* E28DC4 80101584 44804000 */  mtc1       $zero, $f8
/* E28DC8 80101588 A4680024 */  sh         $t0, 0x24($v1)
/* E28DCC 8010158C 46809120 */  cvt.s.w    $f4, $f18
/* E28DD0 80101590 460A3401 */  sub.s      $f16, $f6, $f10
/* E28DD4 80101594 46048003 */  div.s      $f0, $f16, $f4
/* E28DD8 80101598 4608003C */  c.lt.s     $f0, $f8
/* E28DDC 8010159C 00000000 */  nop
/* E28DE0 801015A0 45020003 */  bc1fl      .L801015B0
/* E28DE4 801015A4 C466001C */   lwc1      $f6, 0x1c($v1)
/* E28DE8 801015A8 46000007 */  neg.s      $f0, $f0
/* E28DEC 801015AC C466001C */  lwc1       $f6, 0x1c($v1)
.L801015B0:
/* E28DF0 801015B0 84660004 */  lh         $a2, 4($v1)
/* E28DF4 801015B4 46003280 */  add.s      $f10, $f6, $f0
/* E28DF8 801015B8 00C2082A */  slt        $at, $a2, $v0
/* E28DFC 801015BC 24020002 */  addiu      $v0, $zero, 2
/* E28E00 801015C0 E46A001C */  swc1       $f10, 0x1c($v1)
/* E28E04 801015C4 C462001C */  lwc1       $f2, 0x1c($v1)
/* E28E08 801015C8 4600148D */  trunc.w.s  $f18, $f2
/* E28E0C 801015CC 44049000 */  mfc1       $a0, $f18
/* E28E10 801015D0 10200003 */  beqz       $at, .L801015E0
/* E28E14 801015D4 00802825 */   or        $a1, $a0, $zero
/* E28E18 801015D8 10000002 */  b          .L801015E4
/* E28E1C 801015DC 24020001 */   addiu     $v0, $zero, 1
.L801015E0:
/* E28E20 801015E0 00042823 */  negu       $a1, $a0
.L801015E4:
/* E28E24 801015E4 3C013F80 */  lui        $at, 0x3f80
/* E28E28 801015E8 44818000 */  mtc1       $at, $f16
/* E28E2C 801015EC 00C56021 */  addu       $t4, $a2, $a1
/* E28E30 801015F0 A46C0004 */  sh         $t4, 4($v1)
/* E28E34 801015F4 4602803E */  c.le.s     $f16, $f2
/* E28E38 801015F8 30580001 */  andi       $t8, $v0, 1
/* E28E3C 801015FC 30480002 */  andi       $t0, $v0, 2
/* E28E40 80101600 45020007 */  bc1fl      .L80101620
/* E28E44 80101604 846D0024 */   lh        $t5, 0x24($v1)
/* E28E48 80101608 44842000 */  mtc1       $a0, $f4
/* E28E4C 8010160C 00000000 */  nop
/* E28E50 80101610 46802220 */  cvt.s.w    $f8, $f4
/* E28E54 80101614 46081181 */  sub.s      $f6, $f2, $f8
/* E28E58 80101618 E466001C */  swc1       $f6, 0x1c($v1)
/* E28E5C 8010161C 846D0024 */  lh         $t5, 0x24($v1)
.L80101620:
/* E28E60 80101620 8C6E0038 */  lw         $t6, 0x38($v1)
/* E28E64 80101624 01AE082A */  slt        $at, $t5, $t6
/* E28E68 80101628 14200003 */  bnez       $at, .L80101638
/* E28E6C 8010162C 00000000 */   nop
/* E28E70 80101630 846F002A */  lh         $t7, 0x2a($v1)
/* E28E74 80101634 A46F0004 */  sh         $t7, 4($v1)
.L80101638:
/* E28E78 80101638 13000008 */  beqz       $t8, .L8010165C
/* E28E7C 8010163C 00000000 */   nop
/* E28E80 80101640 8462002A */  lh         $v0, 0x2a($v1)
/* E28E84 80101644 84790004 */  lh         $t9, 4($v1)
/* E28E88 80101648 0322082A */  slt        $at, $t9, $v0
/* E28E8C 8010164C 5420000C */  bnel       $at, $zero, .L80101680
/* E28E90 80101650 846A0024 */   lh        $t2, 0x24($v1)
/* E28E94 80101654 10000009 */  b          .L8010167C
/* E28E98 80101658 A4620004 */   sh        $v0, 4($v1)
.L8010165C:
/* E28E9C 8010165C 51000008 */  beql       $t0, $zero, .L80101680
/* E28EA0 80101660 846A0024 */   lh        $t2, 0x24($v1)
/* E28EA4 80101664 8462002A */  lh         $v0, 0x2a($v1)
/* E28EA8 80101668 84690004 */  lh         $t1, 4($v1)
/* E28EAC 8010166C 0049082A */  slt        $at, $v0, $t1
/* E28EB0 80101670 54200003 */  bnel       $at, $zero, .L80101680
/* E28EB4 80101674 846A0024 */   lh        $t2, 0x24($v1)
/* E28EB8 80101678 A4620004 */  sh         $v0, 4($v1)
.L8010167C:
/* E28EBC 8010167C 846A0024 */  lh         $t2, 0x24($v1)
.L80101680:
/* E28EC0 80101680 8C6B0038 */  lw         $t3, 0x38($v1)
/* E28EC4 80101684 00001025 */  or         $v0, $zero, $zero
/* E28EC8 80101688 014B082A */  slt        $at, $t2, $t3
/* E28ECC 8010168C 14200007 */  bnez       $at, .L801016AC
/* E28ED0 80101690 00000000 */   nop
/* E28ED4 80101694 44800000 */  mtc1       $zero, $f0
/* E28ED8 80101698 A4600024 */  sh         $zero, 0x24($v1)
/* E28EDC 8010169C 240200FF */  addiu      $v0, $zero, 0xff
/* E28EE0 801016A0 E460001C */  swc1       $f0, 0x1c($v1)
/* E28EE4 801016A4 03E00008 */  jr         $ra
/* E28EE8 801016A8 E4600020 */   swc1      $f0, 0x20($v1)
.L801016AC:
/* E28EEC 801016AC 03E00008 */  jr         $ra
/* E28EF0 801016B0 00000000 */   nop
