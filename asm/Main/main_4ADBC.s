.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A1BC
/* 4ADBC 8004A1BC 23A7000C */  addi       $a3, $sp, 0xc
/* 4ADC0 8004A1C0 8CE30000 */  lw         $v1, ($a3)
/* 4ADC4 8004A1C4 9365FFFB */  lbu        $a1, -5($k1)
/* 4ADC8 8004A1C8 9366FFFA */  lbu        $a2, -6($k1)
/* 4ADCC 8004A1CC 20020001 */  addi       $v0, $zero, 1
/* 4ADD0 8004A1D0 00A21004 */  sllv       $v0, $v0, $a1
/* 4ADD4 8004A1D4 2042FFFF */  addi       $v0, $v0, -1
/* 4ADD8 8004A1D8 00C21004 */  sllv       $v0, $v0, $a2
/* 4ADDC 8004A1DC 00401027 */  not        $v0, $v0
/* 4ADE0 8004A1E0 00431024 */  and        $v0, $v0, $v1
/* 4ADE4 8004A1E4 00581825 */  or         $v1, $v0, $t8
/* 4ADE8 8004A1E8 ACE30000 */  sw         $v1, ($a3)
/* 4ADEC 8004A1EC 8FB90008 */  lw         $t9, 8($sp)
/* 4ADF0 8004A1F0 090004DD */  j          .L84001374
/* 4ADF4 8004A1F4 8FB8000C */   lw        $t8, 0xc($sp)
