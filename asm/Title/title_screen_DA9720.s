.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80102E30
/* DA9720 80102E30 3C048010 */  lui        $a0, %hi(D_80103420)
/* DA9724 80102E34 8C843420 */  lw         $a0, %lo(D_80103420)($a0)
/* DA9728 80102E38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA972C 80102E3C AFBF0014 */  sw         $ra, 0x14($sp)
/* DA9730 80102E40 14800008 */  bnez       $a0, .L80102E64
/* DA9734 80102E44 3C0F8010 */   lui       $t7, 0x8010
/* DA9738 80102E48 3C0E8010 */  lui        $t6, %hi(D_80103428)
/* DA973C 80102E4C 85CE3428 */  lh         $t6, %lo(D_80103428)($t6)
/* DA9740 80102E50 3C018010 */  lui        $at, %hi(D_80103428)
/* DA9744 80102E54 51C0002C */  beql       $t6, $zero, .L80102F08
/* DA9748 80102E58 8FBF0014 */   lw        $ra, 0x14($sp)
/* DA974C 80102E5C 10000029 */  b          .L80102F04
/* DA9750 80102E60 A4203428 */   sh        $zero, %lo(D_80103428)($at)
.L80102E64:
/* DA9754 80102E64 85EF3428 */  lh         $t7, 0x3428($t7)
/* DA9758 80102E68 3C028010 */  lui        $v0, %hi(D_80103424)
/* DA975C 80102E6C 15E00022 */  bnez       $t7, .L80102EF8
/* DA9760 80102E70 00000000 */   nop
/* DA9764 80102E74 8C423424 */  lw         $v0, %lo(D_80103424)($v0)
/* DA9768 80102E78 2418FFFF */  addiu      $t8, $zero, -1
/* DA976C 80102E7C 3C018010 */  lui        $at, %hi(D_80103428)
/* DA9770 80102E80 44823000 */  mtc1       $v0, $f6
/* DA9774 80102E84 A4383428 */  sh         $t8, %lo(D_80103428)($at)
/* DA9778 80102E88 3C01437F */  lui        $at, 0x437f
/* DA977C 80102E8C 46803220 */  cvt.s.w    $f8, $f6
/* DA9780 80102E90 44812000 */  mtc1       $at, $f4
/* DA9784 80102E94 3C018010 */  lui        $at, %hi(D_8010342A)
/* DA9788 80102E98 A422342A */  sh         $v0, %lo(D_8010342A)($at)
/* DA978C 80102E9C 46082283 */  div.s      $f10, $f4, $f8
/* DA9790 80102EA0 E42A342C */  swc1       $f10, 0x342c($at)
/* DA9794 80102EA4 24010001 */  addiu      $at, $zero, 1
/* DA9798 80102EA8 1081000B */  beq        $a0, $at, .L80102ED8
/* DA979C 80102EAC 24010002 */   addiu     $at, $zero, 2
/* DA97A0 80102EB0 1081000D */  beq        $a0, $at, .L80102EE8
/* DA97A4 80102EB4 24010003 */   addiu     $at, $zero, 3
/* DA97A8 80102EB8 10810007 */  beq        $a0, $at, .L80102ED8
/* DA97AC 80102EBC 24010004 */   addiu     $at, $zero, 4
/* DA97B0 80102EC0 10810009 */  beq        $a0, $at, .L80102EE8
/* DA97B4 80102EC4 3C014300 */   lui       $at, 0x4300
/* DA97B8 80102EC8 44818000 */  mtc1       $at, $f16
/* DA97BC 80102ECC 3C018010 */  lui        $at, %hi(D_80103430)
/* DA97C0 80102ED0 10000009 */  b          .L80102EF8
/* DA97C4 80102ED4 E4303430 */   swc1      $f16, %lo(D_80103430)($at)
.L80102ED8:
/* DA97C8 80102ED8 44809000 */  mtc1       $zero, $f18
/* DA97CC 80102EDC 3C018010 */  lui        $at, %hi(D_80103430)
/* DA97D0 80102EE0 10000005 */  b          .L80102EF8
/* DA97D4 80102EE4 E4323430 */   swc1      $f18, %lo(D_80103430)($at)
.L80102EE8:
/* DA97D8 80102EE8 3C01437F */  lui        $at, 0x437f
/* DA97DC 80102EEC 44813000 */  mtc1       $at, $f6
/* DA97E0 80102EF0 3C018010 */  lui        $at, %hi(D_80103430)
/* DA97E4 80102EF4 E4263430 */  swc1       $f6, %lo(D_80103430)($at)
.L80102EF8:
/* DA97E8 80102EF8 3C048010 */  lui        $a0, %hi(D_80103428)
/* DA97EC 80102EFC 0C040BC5 */  jal        func_80102F14
/* DA97F0 80102F00 24843428 */   addiu     $a0, $a0, %lo(D_80103428)
.L80102F04:
/* DA97F4 80102F04 8FBF0014 */  lw         $ra, 0x14($sp)
.L80102F08:
/* DA97F8 80102F08 27BD0018 */  addiu      $sp, $sp, 0x18
/* DA97FC 80102F0C 03E00008 */  jr         $ra
/* DA9800 80102F10 00000000 */   nop
