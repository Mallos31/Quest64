.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A660
/* 4B260 8004A660 341E0010 */  ori        $fp, $zero, 0x10
/* 4B264 8004A664 1000FE72 */  b          .L8004A030
/* 4B268 8004A668 84150100 */   lh        $s5, 0x100($zero)
.L8004A66C:
/* 4B26C 8004A66C 341E0018 */  ori        $fp, $zero, 0x18
/* 4B270 8004A670 1000FE6F */  b          .L8004A030
/* 4B274 8004A674 841500A0 */   lh        $s5, 0xa0($zero)
