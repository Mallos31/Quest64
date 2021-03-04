.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A5A0
/* 4B1A0 8004A5A0 20080380 */  addi       $t0, $zero, 0x380
/* 4B1A4 8004A5A4 C8032005 */  bbit0      $zero, 3, .L800525BC
/* 4B1A8 8004A5A8 CBB30801 */   bbit0     $sp, 0x13, .L8004C5B0
/* 4B1AC 8004A5AC 87A30004 */   lh        $v1, 4($sp)
/* 4B1B0 8004A5B0 C9001800 */  bbit0      $t0, 0, .L800505B4
/* 4B1B4 8004A5B4 C9011801 */   bbit0     $t0, 1, .L800505BC
/* 4B1B8 8004A5B8 C9001C00 */   bbit0     $t0, 0, .L800515BC
/* 4B1BC 8004A5BC C9011C01 */   bbit0     $t0, 1, .L800515C4
/* 4B1C0 8004A5C0 03E00008 */   jr        $ra
/* 4B1C4 8004A5C4 4A030007 */   .byte     0x4a, 0x03, 0x00, 0x07
