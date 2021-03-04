.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A610
/* 4B210 8004A610 CAC02000 */  bbit0      $s6, 0, .L80052614
/* 4B214 8004A614 84250270 */   lh        $a1, 0x270($at)
/* 4B218 8004A618 09000427 */  j          .L8400109C
/* 4B21C 8004A61C E8A02000 */   bbit1     $a1, 0, .L80052620
