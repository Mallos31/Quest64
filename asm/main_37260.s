.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alHeapDBAlloc
/* 37260 80036660 8FAE0010 */  lw         $t6, 0x10($sp)
/* 37264 80036664 AFA40000 */  sw         $a0, ($sp)
/* 37268 80036668 AFA50004 */  sw         $a1, 4($sp)
/* 3726C 8003666C 00EE0019 */  multu      $a3, $t6
/* 37270 80036670 8CD90008 */  lw         $t9, 8($a2)
/* 37274 80036674 8CD80000 */  lw         $t8, ($a2)
/* 37278 80036678 8CC40004 */  lw         $a0, 4($a2)
/* 3727C 8003667C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 37280 80036680 03194021 */  addu       $t0, $t8, $t9
/* 37284 80036684 00001825 */  or         $v1, $zero, $zero
/* 37288 80036688 00001012 */  mflo       $v0
/* 3728C 8003668C 2442000F */  addiu      $v0, $v0, 0xf
/* 37290 80036690 00417824 */  and        $t7, $v0, $at
/* 37294 80036694 008F4821 */  addu       $t1, $a0, $t7
/* 37298 80036698 0109082B */  sltu       $at, $t0, $t1
/* 3729C 8003669C 14200003 */  bnez       $at, .L800366AC
/* 372A0 800366A0 008F5021 */   addu      $t2, $a0, $t7
/* 372A4 800366A4 00801825 */  or         $v1, $a0, $zero
/* 372A8 800366A8 ACCA0004 */  sw         $t2, 4($a2)
.L800366AC:
/* 372AC 800366AC 03E00008 */  jr         $ra
/* 372B0 800366B0 00601025 */   or        $v0, $v1, $zero
/* 372B4 800366B4 00000000 */  nop
/* 372B8 800366B8 00000000 */  nop
/* 372BC 800366BC 00000000 */  nop