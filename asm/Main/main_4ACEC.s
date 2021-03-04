.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A0EC
/* 4ACEC 8004A0EC 304200FE */  andi       $v0, $v0, 0xfe
/* 4ACF0 8004A0F0 84420076 */  lh         $v0, 0x76($v0)
/* 4ACF4 8004A0F4 00400008 */  jr         $v0
/* 4ACF8 8004A0F8 9361FFFF */   lbu       $at, -1($k1)
