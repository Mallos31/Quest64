.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80049EF0
/* 4AAF0 80049EF0 09000419 */  j          .L84001064
/* 4AAF4 80049EF4 20010FC0 */   addi      $at, $zero, 0xfc0
