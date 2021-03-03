.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101958
/* DC2F78 80101958 00047080 */  sll        $t6, $a0, 2
/* DC2F7C 8010195C 01C47021 */  addu       $t6, $t6, $a0
/* DC2F80 80101960 3C0F8016 */  lui        $t7, %hi(D_80166250)
/* DC2F84 80101964 25EF6250 */  addiu      $t7, $t7, %lo(D_80166250)
/* DC2F88 80101968 000E7100 */  sll        $t6, $t6, 4
/* DC2F8C 8010196C 01CF1021 */  addu       $v0, $t6, $t7
/* DC2F90 80101970 8C580000 */  lw         $t8, ($v0)
/* DC2F94 80101974 0018C800 */  sll        $t9, $t8, 0
/* DC2F98 80101978 07220004 */  bltzl      $t9, .L8010198C
/* DC2F9C 8010197C 8C430038 */   lw        $v1, 0x38($v0)
/* DC2FA0 80101980 03E00008 */  jr         $ra
/* DC2FA4 80101984 00001025 */   or        $v0, $zero, $zero
/* DC2FA8 80101988 8C430038 */  lw         $v1, 0x38($v0)
.L8010198C:
/* DC2FAC 8010198C 3C01437F */  lui        $at, 0x437f
/* DC2FB0 80101990 44816000 */  mtc1       $at, $f12
/* DC2FB4 80101994 44832000 */  mtc1       $v1, $f4
/* DC2FB8 80101998 C4480048 */  lwc1       $f8, 0x48($v0)
/* DC2FBC 8010199C 94480032 */  lhu        $t0, 0x32($v0)
/* DC2FC0 801019A0 468021A0 */  cvt.s.w    $f6, $f4
/* DC2FC4 801019A4 25090001 */  addiu      $t1, $t0, 1
/* DC2FC8 801019A8 312AFFFF */  andi       $t2, $t1, 0xffff
/* DC2FCC 801019AC A4490032 */  sh         $t1, 0x32($v0)
/* DC2FD0 801019B0 0143082A */  slt        $at, $t2, $v1
/* DC2FD4 801019B4 46066003 */  div.s      $f0, $f12, $f6
/* DC2FD8 801019B8 46004280 */  add.s      $f10, $f8, $f0
/* DC2FDC 801019BC E44A0048 */  swc1       $f10, 0x48($v0)
/* DC2FE0 801019C0 C4420048 */  lwc1       $f2, 0x48($v0)
/* DC2FE4 801019C4 4602603E */  c.le.s     $f12, $f2
/* DC2FE8 801019C8 00000000 */  nop
/* DC2FEC 801019CC 45030004 */  bc1tl      .L801019E0
/* DC2FF0 801019D0 E44C0048 */   swc1      $f12, 0x48($v0)
/* DC2FF4 801019D4 14200003 */  bnez       $at, .L801019E4
/* DC2FF8 801019D8 00000000 */   nop
/* DC2FFC 801019DC E44C0048 */  swc1       $f12, 0x48($v0)
.L801019E0:
/* DC3000 801019E0 C4420048 */  lwc1       $f2, 0x48($v0)
.L801019E4:
/* DC3004 801019E4 54A00006 */  bnel       $a1, $zero, .L80101A00
/* DC3008 801019E8 46026481 */   sub.s     $f18, $f12, $f2
/* DC300C 801019EC 4600140D */  trunc.w.s  $f16, $f2
/* DC3010 801019F0 440C8000 */  mfc1       $t4, $f16
/* DC3014 801019F4 10000006 */  b          .L80101A10
/* DC3018 801019F8 A44C004E */   sh        $t4, 0x4e($v0)
/* DC301C 801019FC 46026481 */  sub.s      $f18, $f12, $f2
.L80101A00:
/* DC3020 80101A00 4600910D */  trunc.w.s  $f4, $f18
/* DC3024 80101A04 440E2000 */  mfc1       $t6, $f4
/* DC3028 80101A08 00000000 */  nop
/* DC302C 80101A0C A44E004E */  sh         $t6, 0x4e($v0)
.L80101A10:
/* DC3030 80101A10 944F0032 */  lhu        $t7, 0x32($v0)
/* DC3034 80101A14 8C580038 */  lw         $t8, 0x38($v0)
/* DC3038 80101A18 01F8082A */  slt        $at, $t7, $t8
/* DC303C 80101A1C 5420000D */  bnel       $at, $zero, .L80101A54
/* DC3040 80101A20 00001025 */   or        $v0, $zero, $zero
/* DC3044 80101A24 44803000 */  mtc1       $zero, $f6
/* DC3048 80101A28 A4400032 */  sh         $zero, 0x32($v0)
/* DC304C 80101A2C 14A00005 */  bnez       $a1, .L80101A44
/* DC3050 80101A30 E4460048 */   swc1      $f6, 0x48($v0)
/* DC3054 80101A34 241900FF */  addiu      $t9, $zero, 0xff
/* DC3058 80101A38 A459004E */  sh         $t9, 0x4e($v0)
/* DC305C 80101A3C 03E00008 */  jr         $ra
/* DC3060 80101A40 240200FF */   addiu     $v0, $zero, 0xff
.L80101A44:
/* DC3064 80101A44 A440004E */  sh         $zero, 0x4e($v0)
/* DC3068 80101A48 03E00008 */  jr         $ra
/* DC306C 80101A4C 240200FF */   addiu     $v0, $zero, 0xff
/* DC3070 80101A50 00001025 */  or         $v0, $zero, $zero
.L80101A54:
/* DC3074 80101A54 03E00008 */  jr         $ra
/* DC3078 80101A58 00000000 */   nop
