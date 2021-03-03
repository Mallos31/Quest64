.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100000
/* DC1620 80100000 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DC1624 80100004 AFBF0014 */  sw         $ra, 0x14($sp)
/* DC1628 80100008 0C040452 */  jal        func_80101148
/* DC162C 8010000C 00000000 */   nop
/* DC1630 80100010 240E000A */  addiu      $t6, $zero, 0xa
/* DC1634 80100014 3C018016 */  lui        $at, %hi(D_80166220)
/* DC1638 80100018 AC2E6220 */  sw         $t6, %lo(D_80166220)($at)
/* DC163C 8010001C 3C018016 */  lui        $at, %hi(D_80166224)
/* DC1640 80100020 240F0001 */  addiu      $t7, $zero, 1
/* DC1644 80100024 AC2F6224 */  sw         $t7, %lo(D_80166224)($at)
/* DC1648 80100028 3C018016 */  lui        $at, %hi(D_80166228)
/* DC164C 8010002C 2418012C */  addiu      $t8, $zero, 0x12c
/* DC1650 80100030 AC386228 */  sw         $t8, %lo(D_80166228)($at)
/* DC1654 80100034 3C018016 */  lui        $at, %hi(D_8016622C)
/* DC1658 80100038 241900DF */  addiu      $t9, $zero, 0xdf
/* DC165C 8010003C AC39622C */  sw         $t9, %lo(D_8016622C)($at)
/* DC1660 80100040 3C018016 */  lui        $at, %hi(D_8016623C)
/* DC1664 80100044 AC20623C */  sw         $zero, %lo(D_8016623C)($at)
/* DC1668 80100048 3C018016 */  lui        $at, %hi(D_80166240)
/* DC166C 8010004C AC206240 */  sw         $zero, %lo(D_80166240)($at)
/* DC1670 80100050 3C018016 */  lui        $at, %hi(D_80166230)
/* DC1674 80100054 AC206230 */  sw         $zero, %lo(D_80166230)($at)
/* DC1678 80100058 3C018016 */  lui        $at, %hi(D_80166234)
/* DC167C 8010005C AC206234 */  sw         $zero, %lo(D_80166234)($at)
/* DC1680 80100060 3C018016 */  lui        $at, %hi(D_80166244)
/* DC1684 80100064 AC206244 */  sw         $zero, %lo(D_80166244)($at)
/* DC1688 80100068 3C018016 */  lui        $at, %hi(D_80166248)
/* DC168C 8010006C AC206248 */  sw         $zero, %lo(D_80166248)($at)
/* DC1690 80100070 3C018016 */  lui        $at, %hi(D_8016624C)
/* DC1694 80100074 AC20624C */  sw         $zero, %lo(D_8016624C)($at)
/* DC1698 80100078 3C018010 */  lui        $at, %hi(D_80106200)
/* DC169C 8010007C AC206200 */  sw         $zero, %lo(D_80106200)($at)
/* DC16A0 80100080 8FBF0014 */  lw         $ra, 0x14($sp)
/* DC16A4 80100084 3C018010 */  lui        $at, %hi(D_80106220)
/* DC16A8 80100088 AC206220 */  sw         $zero, %lo(D_80106220)($at)
