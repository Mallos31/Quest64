.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101854
/* DC2E74 80101854 00047080 */  sll        $t6, $a0, 2
/* DC2E78 80101858 01C47021 */  addu       $t6, $t6, $a0
/* DC2E7C 8010185C 3C0F8016 */  lui        $t7, %hi(D_80166250)
/* DC2E80 80101860 25EF6250 */  addiu      $t7, $t7, %lo(D_80166250)
/* DC2E84 80101864 000E7100 */  sll        $t6, $t6, 4
/* DC2E88 80101868 01CF1021 */  addu       $v0, $t6, $t7
/* DC2E8C 8010186C 8C580000 */  lw         $t8, ($v0)
/* DC2E90 80101870 0018C800 */  sll        $t9, $t8, 0
/* DC2E94 80101874 07220004 */  bltzl      $t9, .L80101888
/* DC2E98 80101878 8C430038 */   lw        $v1, 0x38($v0)
/* DC2E9C 8010187C 03E00008 */  jr         $ra
/* DC2EA0 80101880 00001025 */   or        $v0, $zero, $zero
/* DC2EA4 80101884 8C430038 */  lw         $v1, 0x38($v0)
.L80101888:
/* DC2EA8 80101888 3C01437F */  lui        $at, 0x437f
/* DC2EAC 8010188C 44816000 */  mtc1       $at, $f12
/* DC2EB0 80101890 44832000 */  mtc1       $v1, $f4
/* DC2EB4 80101894 C4480048 */  lwc1       $f8, 0x48($v0)
/* DC2EB8 80101898 94480032 */  lhu        $t0, 0x32($v0)
/* DC2EBC 8010189C 468021A0 */  cvt.s.w    $f6, $f4
/* DC2EC0 801018A0 25090001 */  addiu      $t1, $t0, 1
/* DC2EC4 801018A4 312AFFFF */  andi       $t2, $t1, 0xffff
/* DC2EC8 801018A8 A4490032 */  sh         $t1, 0x32($v0)
/* DC2ECC 801018AC 0143082A */  slt        $at, $t2, $v1
/* DC2ED0 801018B0 46066003 */  div.s      $f0, $f12, $f6
/* DC2ED4 801018B4 46004280 */  add.s      $f10, $f8, $f0
/* DC2ED8 801018B8 E44A0048 */  swc1       $f10, 0x48($v0)
/* DC2EDC 801018BC C4420048 */  lwc1       $f2, 0x48($v0)
/* DC2EE0 801018C0 4602603E */  c.le.s     $f12, $f2
/* DC2EE4 801018C4 00000000 */  nop
/* DC2EE8 801018C8 45030004 */  bc1tl      .L801018DC
/* DC2EEC 801018CC E44C0048 */   swc1      $f12, 0x48($v0)
/* DC2EF0 801018D0 14200003 */  bnez       $at, .L801018E0
/* DC2EF4 801018D4 00000000 */   nop
/* DC2EF8 801018D8 E44C0048 */  swc1       $f12, 0x48($v0)
.L801018DC:
/* DC2EFC 801018DC C4420048 */  lwc1       $f2, 0x48($v0)
.L801018E0:
/* DC2F00 801018E0 54A00006 */  bnel       $a1, $zero, .L801018FC
/* DC2F04 801018E4 46026481 */   sub.s     $f18, $f12, $f2
/* DC2F08 801018E8 4600140D */  trunc.w.s  $f16, $f2
/* DC2F0C 801018EC 440C8000 */  mfc1       $t4, $f16
/* DC2F10 801018F0 10000006 */  b          .L8010190C
/* DC2F14 801018F4 A44C004E */   sh        $t4, 0x4e($v0)
/* DC2F18 801018F8 46026481 */  sub.s      $f18, $f12, $f2
.L801018FC:
/* DC2F1C 801018FC 4600910D */  trunc.w.s  $f4, $f18
/* DC2F20 80101900 440E2000 */  mfc1       $t6, $f4
/* DC2F24 80101904 00000000 */  nop
/* DC2F28 80101908 A44E004E */  sh         $t6, 0x4e($v0)
.L8010190C:
/* DC2F2C 8010190C 944F0032 */  lhu        $t7, 0x32($v0)
/* DC2F30 80101910 8C580038 */  lw         $t8, 0x38($v0)
/* DC2F34 80101914 01F8082A */  slt        $at, $t7, $t8
/* DC2F38 80101918 5420000D */  bnel       $at, $zero, .L80101950
/* DC2F3C 8010191C 00001025 */   or        $v0, $zero, $zero
/* DC2F40 80101920 44803000 */  mtc1       $zero, $f6
/* DC2F44 80101924 A4400032 */  sh         $zero, 0x32($v0)
/* DC2F48 80101928 14A00005 */  bnez       $a1, .L80101940
/* DC2F4C 8010192C E4460048 */   swc1      $f6, 0x48($v0)
/* DC2F50 80101930 241900FF */  addiu      $t9, $zero, 0xff
/* DC2F54 80101934 A459004E */  sh         $t9, 0x4e($v0)
/* DC2F58 80101938 03E00008 */  jr         $ra
/* DC2F5C 8010193C 240200FF */   addiu     $v0, $zero, 0xff
.L80101940:
/* DC2F60 80101940 A440004E */  sh         $zero, 0x4e($v0)
/* DC2F64 80101944 03E00008 */  jr         $ra
/* DC2F68 80101948 240200FF */   addiu     $v0, $zero, 0xff
/* DC2F6C 8010194C 00001025 */  or         $v0, $zero, $zero
.L80101950:
/* DC2F70 80101950 03E00008 */  jr         $ra
/* DC2F74 80101954 00000000 */   nop
