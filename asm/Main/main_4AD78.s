.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A178
/* 4AD78 8004A178 9361FFFB */  lbu        $at, -5($k1)
/* 4AD7C 8004A17C 9762FFF9 */  lhu        $v0, -7($k1)
/* 4AD80 8004A180 8425030E */  lh         $a1, 0x30e($at)
/* 4AD84 8004A184 00A22820 */  add        $a1, $a1, $v0
/* 4AD88 8004A188 09000427 */  j          .L8400109C
/* 4AD8C 8004A18C ACB80000 */   sw        $t8, ($a1)
