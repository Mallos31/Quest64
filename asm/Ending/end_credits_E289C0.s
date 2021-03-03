.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101180
/* E289C0 80101180 00047080 */  sll        $t6, $a0, 2
/* E289C4 80101184 01C47021 */  addu       $t6, $t6, $a0
/* E289C8 80101188 3C0F8015 */  lui        $t7, %hi(D_80156FE8)
/* E289CC 8010118C 25EF6FE8 */  addiu      $t7, $t7, %lo(D_80156FE8)
/* E289D0 80101190 000E7100 */  sll        $t6, $t6, 4
/* E289D4 80101194 01CF1021 */  addu       $v0, $t6, $t7
/* E289D8 80101198 8C580000 */  lw         $t8, ($v0)
/* E289DC 8010119C 0018C800 */  sll        $t9, $t8, 0
/* E289E0 801011A0 07220004 */  bltzl      $t9, .L801011B4
/* E289E4 801011A4 8C430038 */   lw        $v1, 0x38($v0)
/* E289E8 801011A8 03E00008 */  jr         $ra
/* E289EC 801011AC 00001025 */   or        $v0, $zero, $zero
/* E289F0 801011B0 8C430038 */  lw         $v1, 0x38($v0)
.L801011B4:
/* E289F4 801011B4 3C01437F */  lui        $at, 0x437f
/* E289F8 801011B8 44816000 */  mtc1       $at, $f12
/* E289FC 801011BC 44832000 */  mtc1       $v1, $f4
/* E28A00 801011C0 C4480048 */  lwc1       $f8, 0x48($v0)
/* E28A04 801011C4 94480032 */  lhu        $t0, 0x32($v0)
/* E28A08 801011C8 468021A0 */  cvt.s.w    $f6, $f4
/* E28A0C 801011CC 25090001 */  addiu      $t1, $t0, 1
/* E28A10 801011D0 312AFFFF */  andi       $t2, $t1, 0xffff
/* E28A14 801011D4 A4490032 */  sh         $t1, 0x32($v0)
/* E28A18 801011D8 0143082A */  slt        $at, $t2, $v1
/* E28A1C 801011DC 46066003 */  div.s      $f0, $f12, $f6
/* E28A20 801011E0 46004280 */  add.s      $f10, $f8, $f0
/* E28A24 801011E4 E44A0048 */  swc1       $f10, 0x48($v0)
/* E28A28 801011E8 C4420048 */  lwc1       $f2, 0x48($v0)
/* E28A2C 801011EC 4602603E */  c.le.s     $f12, $f2
/* E28A30 801011F0 00000000 */  nop
/* E28A34 801011F4 45030004 */  bc1tl      .L80101208
/* E28A38 801011F8 E44C0048 */   swc1      $f12, 0x48($v0)
/* E28A3C 801011FC 14200003 */  bnez       $at, .L8010120C
/* E28A40 80101200 00000000 */   nop
/* E28A44 80101204 E44C0048 */  swc1       $f12, 0x48($v0)
.L80101208:
/* E28A48 80101208 C4420048 */  lwc1       $f2, 0x48($v0)
.L8010120C:
/* E28A4C 8010120C 54A00006 */  bnel       $a1, $zero, .L80101228
/* E28A50 80101210 46026481 */   sub.s     $f18, $f12, $f2
/* E28A54 80101214 4600140D */  trunc.w.s  $f16, $f2
/* E28A58 80101218 440C8000 */  mfc1       $t4, $f16
/* E28A5C 8010121C 10000006 */  b          .L80101238
/* E28A60 80101220 A44C004E */   sh        $t4, 0x4e($v0)
/* E28A64 80101224 46026481 */  sub.s      $f18, $f12, $f2
.L80101228:
/* E28A68 80101228 4600910D */  trunc.w.s  $f4, $f18
/* E28A6C 8010122C 440E2000 */  mfc1       $t6, $f4
/* E28A70 80101230 00000000 */  nop
/* E28A74 80101234 A44E004E */  sh         $t6, 0x4e($v0)
.L80101238:
/* E28A78 80101238 944F0032 */  lhu        $t7, 0x32($v0)
/* E28A7C 8010123C 8C580038 */  lw         $t8, 0x38($v0)
/* E28A80 80101240 01F8082A */  slt        $at, $t7, $t8
/* E28A84 80101244 5420000D */  bnel       $at, $zero, .L8010127C
/* E28A88 80101248 00001025 */   or        $v0, $zero, $zero
/* E28A8C 8010124C 44803000 */  mtc1       $zero, $f6
/* E28A90 80101250 A4400032 */  sh         $zero, 0x32($v0)
/* E28A94 80101254 14A00005 */  bnez       $a1, .L8010126C
/* E28A98 80101258 E4460048 */   swc1      $f6, 0x48($v0)
/* E28A9C 8010125C 241900FF */  addiu      $t9, $zero, 0xff
/* E28AA0 80101260 A459004E */  sh         $t9, 0x4e($v0)
/* E28AA4 80101264 03E00008 */  jr         $ra
/* E28AA8 80101268 240200FF */   addiu     $v0, $zero, 0xff
.L8010126C:
/* E28AAC 8010126C A440004E */  sh         $zero, 0x4e($v0)
/* E28AB0 80101270 03E00008 */  jr         $ra
/* E28AB4 80101274 240200FF */   addiu     $v0, $zero, 0xff
/* E28AB8 80101278 00001025 */  or         $v0, $zero, $zero
.L8010127C:
/* E28ABC 8010127C 03E00008 */  jr         $ra
/* E28AC0 80101280 00000000 */   nop
