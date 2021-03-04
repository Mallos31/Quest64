.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A190
/* 4AD90 8004A190 AFB90010 */  sw         $t9, 0x10($sp)
/* 4AD94 8004A194 AFB80014 */  sw         $t8, 0x14($sp)
/* 4AD98 8004A198 87A20006 */  lh         $v0, 6($sp)
/* 4AD9C 8004A19C 3042FFFD */  andi       $v0, $v0, 0xfffd
/* 4ADA0 8004A1A0 33230001 */  andi       $v1, $t9, 1
/* 4ADA4 8004A1A4 00031840 */  sll        $v1, $v1, 1
/* 4ADA8 8004A1A8 00431025 */  or         $v0, $v0, $v1
/* 4ADAC 8004A1AC 09000427 */  j          .L8400109C
/* 4ADB0 8004A1B0 A7A20006 */   sh        $v0, 6($sp)
