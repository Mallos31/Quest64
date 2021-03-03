.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801016BC
/* DC2CDC 801016BC 00047080 */  sll        $t6, $a0, 2
/* DC2CE0 801016C0 01C47021 */  addu       $t6, $t6, $a0
/* DC2CE4 801016C4 3C0F8016 */  lui        $t7, %hi(D_80166250)
/* DC2CE8 801016C8 25EF6250 */  addiu      $t7, $t7, %lo(D_80166250)
/* DC2CEC 801016CC 000E7100 */  sll        $t6, $t6, 4
/* DC2CF0 801016D0 01CF1821 */  addu       $v1, $t6, $t7
/* DC2CF4 801016D4 8C780000 */  lw         $t8, ($v1)
/* DC2CF8 801016D8 0018C800 */  sll        $t9, $t8, 0
/* DC2CFC 801016DC 07220004 */  bltzl      $t9, .L801016F0
/* DC2D00 801016E0 9468004C */   lhu       $t0, 0x4c($v1)
/* DC2D04 801016E4 03E00008 */  jr         $ra
/* DC2D08 801016E8 240200FF */   addiu     $v0, $zero, 0xff
/* DC2D0C 801016EC 9468004C */  lhu        $t0, 0x4c($v1)
.L801016F0:
/* DC2D10 801016F0 30A40400 */  andi       $a0, $a1, 0x400
/* DC2D14 801016F4 25090001 */  addiu      $t1, $t0, 1
/* DC2D18 801016F8 1080001B */  beqz       $a0, .L80101768
/* DC2D1C 801016FC A469004C */   sh        $t1, 0x4c($v1)
/* DC2D20 80101700 84650008 */  lh         $a1, 8($v1)
/* DC2D24 80101704 8C670038 */  lw         $a3, 0x38($v1)
/* DC2D28 80101708 C4720040 */  lwc1       $f18, 0x40($v1)
/* DC2D2C 8010170C 44852000 */  mtc1       $a1, $f4
/* DC2D30 80101710 44874000 */  mtc1       $a3, $f8
/* DC2D34 80101714 312CFFFF */  andi       $t4, $t1, 0xffff
/* DC2D38 80101718 468021A0 */  cvt.s.w    $f6, $f4
/* DC2D3C 8010171C 0187082A */  slt        $at, $t4, $a3
/* DC2D40 80101720 468042A0 */  cvt.s.w    $f10, $f8
/* DC2D44 80101724 460A3403 */  div.s      $f16, $f6, $f10
/* DC2D48 80101728 46109100 */  add.s      $f4, $f18, $f16
/* DC2D4C 8010172C E4640040 */  swc1       $f4, 0x40($v1)
/* DC2D50 80101730 C4680040 */  lwc1       $f8, 0x40($v1)
/* DC2D54 80101734 4600418D */  trunc.w.s  $f6, $f8
/* DC2D58 80101738 440B3000 */  mfc1       $t3, $f6
/* DC2D5C 8010173C 00000000 */  nop
/* DC2D60 80101740 00AB1023 */  subu       $v0, $a1, $t3
/* DC2D64 80101744 58400004 */  blezl      $v0, .L80101758
/* DC2D68 80101748 00001025 */   or        $v0, $zero, $zero
/* DC2D6C 8010174C 54200003 */  bnel       $at, $zero, .L8010175C
/* DC2D70 80101750 846D002E */   lh        $t5, 0x2e($v1)
/* DC2D74 80101754 00001025 */  or         $v0, $zero, $zero
.L80101758:
/* DC2D78 80101758 846D002E */  lh         $t5, 0x2e($v1)
.L8010175C:
/* DC2D7C 8010175C ACC20010 */  sw         $v0, 0x10($a2)
/* DC2D80 80101760 01A27023 */  subu       $t6, $t5, $v0
/* DC2D84 80101764 ACCE0000 */  sw         $t6, ($a2)
.L80101768:
/* DC2D88 80101768 5480001C */  bnel       $a0, $zero, .L801017DC
/* DC2D8C 8010176C 946A004C */   lhu       $t2, 0x4c($v1)
/* DC2D90 80101770 8464000A */  lh         $a0, 0xa($v1)
/* DC2D94 80101774 8C670038 */  lw         $a3, 0x38($v1)
/* DC2D98 80101778 C4660044 */  lwc1       $f6, 0x44($v1)
/* DC2D9C 8010177C 44845000 */  mtc1       $a0, $f10
/* DC2DA0 80101780 44878000 */  mtc1       $a3, $f16
/* DC2DA4 80101784 468054A0 */  cvt.s.w    $f18, $f10
/* DC2DA8 80101788 46808120 */  cvt.s.w    $f4, $f16
/* DC2DAC 8010178C 46049203 */  div.s      $f8, $f18, $f4
/* DC2DB0 80101790 46083280 */  add.s      $f10, $f6, $f8
/* DC2DB4 80101794 E46A0044 */  swc1       $f10, 0x44($v1)
/* DC2DB8 80101798 C4700044 */  lwc1       $f16, 0x44($v1)
/* DC2DBC 8010179C 4600848D */  trunc.w.s  $f18, $f16
/* DC2DC0 801017A0 44189000 */  mfc1       $t8, $f18
/* DC2DC4 801017A4 00000000 */  nop
/* DC2DC8 801017A8 00981023 */  subu       $v0, $a0, $t8
/* DC2DCC 801017AC 58400006 */  blezl      $v0, .L801017C8
/* DC2DD0 801017B0 00001025 */   or        $v0, $zero, $zero
/* DC2DD4 801017B4 9479004C */  lhu        $t9, 0x4c($v1)
/* DC2DD8 801017B8 0327082A */  slt        $at, $t9, $a3
/* DC2DDC 801017BC 54200003 */  bnel       $at, $zero, .L801017CC
/* DC2DE0 801017C0 84680030 */   lh        $t0, 0x30($v1)
/* DC2DE4 801017C4 00001025 */  or         $v0, $zero, $zero
.L801017C8:
/* DC2DE8 801017C8 84680030 */  lh         $t0, 0x30($v1)
.L801017CC:
/* DC2DEC 801017CC ACC20014 */  sw         $v0, 0x14($a2)
/* DC2DF0 801017D0 01024823 */  subu       $t1, $t0, $v0
/* DC2DF4 801017D4 ACC90004 */  sw         $t1, 4($a2)
/* DC2DF8 801017D8 946A004C */  lhu        $t2, 0x4c($v1)
.L801017DC:
/* DC2DFC 801017DC 8C6B0038 */  lw         $t3, 0x38($v1)
/* DC2E00 801017E0 00001025 */  or         $v0, $zero, $zero
/* DC2E04 801017E4 014B082A */  slt        $at, $t2, $t3
/* DC2E08 801017E8 14200009 */  bnez       $at, .L80101810
/* DC2E0C 801017EC 00000000 */   nop
/* DC2E10 801017F0 44800000 */  mtc1       $zero, $f0
/* DC2E14 801017F4 A460004C */  sh         $zero, 0x4c($v1)
/* DC2E18 801017F8 A460002E */  sh         $zero, 0x2e($v1)
/* DC2E1C 801017FC A4600030 */  sh         $zero, 0x30($v1)
/* DC2E20 80101800 240200FF */  addiu      $v0, $zero, 0xff
/* DC2E24 80101804 E4600040 */  swc1       $f0, 0x40($v1)
/* DC2E28 80101808 03E00008 */  jr         $ra
/* DC2E2C 8010180C E4600044 */   swc1      $f0, 0x44($v1)
.L80101810:
/* DC2E30 80101810 03E00008 */  jr         $ra
/* DC2E34 80101814 00000000 */   nop
