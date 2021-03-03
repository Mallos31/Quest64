.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100D80
/* E285C0 80100D80 00047080 */  sll        $t6, $a0, 2
/* E285C4 80100D84 01C47021 */  addu       $t6, $t6, $a0
/* E285C8 80100D88 3C0F8015 */  lui        $t7, %hi(D_80156FE8)
/* E285CC 80100D8C 25EF6FE8 */  addiu      $t7, $t7, %lo(D_80156FE8)
/* E285D0 80100D90 000E7100 */  sll        $t6, $t6, 4
/* E285D4 80100D94 01CF1821 */  addu       $v1, $t6, $t7
/* E285D8 80100D98 8C780000 */  lw         $t8, ($v1)
/* E285DC 80100D9C 00A03825 */  or         $a3, $a1, $zero
/* E285E0 80100DA0 AFA60008 */  sw         $a2, 8($sp)
/* E285E4 80100DA4 0018C800 */  sll        $t9, $t8, 0
/* E285E8 80100DA8 07200003 */  bltz       $t9, .L80100DB8
/* E285EC 80100DAC 30E60100 */   andi      $a2, $a3, 0x100
/* E285F0 80100DB0 03E00008 */  jr         $ra
/* E285F4 80100DB4 240200FF */   addiu     $v0, $zero, 0xff
.L80100DB8:
/* E285F8 80100DB8 9468004C */  lhu        $t0, 0x4c($v1)
/* E285FC 80100DBC 84640008 */  lh         $a0, 8($v1)
/* E28600 80100DC0 8465000A */  lh         $a1, 0xa($v1)
/* E28604 80100DC4 25090001 */  addiu      $t1, $t0, 1
/* E28608 80100DC8 10C0001A */  beqz       $a2, .L80100E34
/* E2860C 80100DCC A469004C */   sh        $t1, 0x4c($v1)
/* E28610 80100DD0 8C670038 */  lw         $a3, 0x38($v1)
/* E28614 80100DD4 44842000 */  mtc1       $a0, $f4
/* E28618 80100DD8 C4720040 */  lwc1       $f18, 0x40($v1)
/* E2861C 80100DDC 44874000 */  mtc1       $a3, $f8
/* E28620 80100DE0 468021A0 */  cvt.s.w    $f6, $f4
/* E28624 80100DE4 312BFFFF */  andi       $t3, $t1, 0xffff
/* E28628 80100DE8 468042A0 */  cvt.s.w    $f10, $f8
/* E2862C 80100DEC 460A3403 */  div.s      $f16, $f6, $f10
/* E28630 80100DF0 46109100 */  add.s      $f4, $f18, $f16
/* E28634 80100DF4 E4640040 */  swc1       $f4, 0x40($v1)
/* E28638 80100DF8 C4680040 */  lwc1       $f8, 0x40($v1)
/* E2863C 80100DFC 8FAE0008 */  lw         $t6, 8($sp)
/* E28640 80100E00 4600418D */  trunc.w.s  $f6, $f8
/* E28644 80100E04 44023000 */  mfc1       $v0, $f6
/* E28648 80100E08 00000000 */  nop
/* E2864C 80100E0C 0044082A */  slt        $at, $v0, $a0
/* E28650 80100E10 10200003 */  beqz       $at, .L80100E20
/* E28654 80100E14 0167082A */   slt       $at, $t3, $a3
/* E28658 80100E18 54200003 */  bnel       $at, $zero, .L80100E28
/* E2865C 80100E1C 846C002E */   lh        $t4, 0x2e($v1)
.L80100E20:
/* E28660 80100E20 00801025 */  or         $v0, $a0, $zero
/* E28664 80100E24 846C002E */  lh         $t4, 0x2e($v1)
.L80100E28:
/* E28668 80100E28 ADC20010 */  sw         $v0, 0x10($t6)
/* E2866C 80100E2C 01826823 */  subu       $t5, $t4, $v0
/* E28670 80100E30 ADCD0000 */  sw         $t5, ($t6)
.L80100E34:
/* E28674 80100E34 54C0001C */  bnel       $a2, $zero, .L80100EA8
/* E28678 80100E38 946A004C */   lhu       $t2, 0x4c($v1)
/* E2867C 80100E3C 8C670038 */  lw         $a3, 0x38($v1)
/* E28680 80100E40 44855000 */  mtc1       $a1, $f10
/* E28684 80100E44 C4660044 */  lwc1       $f6, 0x44($v1)
/* E28688 80100E48 44878000 */  mtc1       $a3, $f16
/* E2868C 80100E4C 468054A0 */  cvt.s.w    $f18, $f10
/* E28690 80100E50 46808120 */  cvt.s.w    $f4, $f16
/* E28694 80100E54 46049203 */  div.s      $f8, $f18, $f4
/* E28698 80100E58 46083280 */  add.s      $f10, $f6, $f8
/* E2869C 80100E5C E46A0044 */  swc1       $f10, 0x44($v1)
/* E286A0 80100E60 C4700044 */  lwc1       $f16, 0x44($v1)
/* E286A4 80100E64 8FA90008 */  lw         $t1, 8($sp)
/* E286A8 80100E68 4600848D */  trunc.w.s  $f18, $f16
/* E286AC 80100E6C 44029000 */  mfc1       $v0, $f18
/* E286B0 80100E70 00000000 */  nop
/* E286B4 80100E74 0045082A */  slt        $at, $v0, $a1
/* E286B8 80100E78 50200006 */  beql       $at, $zero, .L80100E94
/* E286BC 80100E7C 00A01025 */   or        $v0, $a1, $zero
/* E286C0 80100E80 9478004C */  lhu        $t8, 0x4c($v1)
/* E286C4 80100E84 0307082A */  slt        $at, $t8, $a3
/* E286C8 80100E88 54200003 */  bnel       $at, $zero, .L80100E98
/* E286CC 80100E8C 84790030 */   lh        $t9, 0x30($v1)
/* E286D0 80100E90 00A01025 */  or         $v0, $a1, $zero
.L80100E94:
/* E286D4 80100E94 84790030 */  lh         $t9, 0x30($v1)
.L80100E98:
/* E286D8 80100E98 AD220014 */  sw         $v0, 0x14($t1)
/* E286DC 80100E9C 03224023 */  subu       $t0, $t9, $v0
/* E286E0 80100EA0 AD280004 */  sw         $t0, 4($t1)
/* E286E4 80100EA4 946A004C */  lhu        $t2, 0x4c($v1)
.L80100EA8:
/* E286E8 80100EA8 8C6B0038 */  lw         $t3, 0x38($v1)
/* E286EC 80100EAC 00001025 */  or         $v0, $zero, $zero
/* E286F0 80100EB0 014B082A */  slt        $at, $t2, $t3
/* E286F4 80100EB4 14200009 */  bnez       $at, .L80100EDC
/* E286F8 80100EB8 00000000 */   nop
/* E286FC 80100EBC 44800000 */  mtc1       $zero, $f0
/* E28700 80100EC0 A460004C */  sh         $zero, 0x4c($v1)
/* E28704 80100EC4 A460002E */  sh         $zero, 0x2e($v1)
/* E28708 80100EC8 A4600030 */  sh         $zero, 0x30($v1)
/* E2870C 80100ECC 240200FF */  addiu      $v0, $zero, 0xff
/* E28710 80100ED0 E4600040 */  swc1       $f0, 0x40($v1)
/* E28714 80100ED4 03E00008 */  jr         $ra
/* E28718 80100ED8 E4600044 */   swc1      $f0, 0x44($v1)
.L80100EDC:
/* E2871C 80100EDC 03E00008 */  jr         $ra
/* E28720 80100EE0 00000000 */   nop
