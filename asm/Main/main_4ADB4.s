.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A1B4
/* 4ADB4 8004A1B4 090004A0 */  j          .L84001280
/* 4ADB8 8004A1B8 23A70008 */   addi      $a3, $sp, 8
