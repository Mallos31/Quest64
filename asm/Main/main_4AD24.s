.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A124
/* 4AD24 8004A124 0D000470 */  jal        func_840011C0
/* 4AD28 8004A128 23F80000 */   addi      $t8, $ra, 0
/* 4AD2C 8004A12C 9361FFF9 */  lbu        $at, -7($k1)
/* 4AD30 8004A130 9362FFFA */  lbu        $v0, -6($k1)
/* 4AD34 8004A134 9363FFFB */  lbu        $v1, -5($k1)
/* 4AD38 8004A138 841F0396 */  lh         $ra, 0x396($zero)
/* 4AD3C 8004A13C 09000474 */  j          .L840011D0
/* 4AD40 8004A140 841800BA */   lh        $t8, 0xba($zero)
