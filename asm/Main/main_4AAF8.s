.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80049EF8
/* 4AAF8 80049EF8 8C220010 */  lw         $v0, 0x10($at)
/* 4AAFC 80049EFC 20030F7F */  addi       $v1, $zero, 0xf7f
/* 4AB00 80049F00 20071080 */  addi       $a3, $zero, 0x1080
/* 4AB04 80049F04 40870000 */  mtc0       $a3, $0
/* 4AB08 80049F08 40820800 */  mtc0       $v0, $1
/* 4AB0C 80049F0C 40831000 */  mtc0       $v1, $2
.L80049F10:
/* 4AB10 80049F10 40043000 */  mfc0       $a0, $6
/* 4AB14 80049F14 1480FFFE */  bnez       $a0, .L80049F10
/* 4AB18 80049F18 00000000 */   nop
/* 4AB1C 80049F1C 0D00040F */  jal        func_8400103C
/* 4AB20 80049F20 00000000 */   nop
/* 4AB24 80049F24 00E00008 */  jr         $a3
/* 4AB28 80049F28 40803800 */   mtc0      $zero, $7

glabel func_80049F2C
/* 4AB2C 80049F2C 40082000 */  mfc0       $t0, $4
/* 4AB30 80049F30 31080080 */  andi       $t0, $t0, 0x80
/* 4AB34 80049F34 15000002 */  bnez       $t0, .L80049F40
/* 4AB38 80049F38 00000000 */   nop
/* 4AB3C 80049F3C 03E00008 */  jr         $ra
.L80049F40:
/* 4AB40 80049F40 40803800 */   mtc0      $zero, $7
