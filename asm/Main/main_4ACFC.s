.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A0FC
/* 4ACFC 8004A0FC 841800BA */  lh         $t8, 0xba($zero)
/* 4AD00 8004A100 841F0396 */  lh         $ra, 0x396($zero)
/* 4AD04 8004A104 9361FFFD */  lbu        $at, -3($k1)
/* 4AD08 8004A108 9362FFFE */  lbu        $v0, -2($k1)
/* 4AD0C 8004A10C 9363FFFF */  lbu        $v1, -1($k1)
/* 4AD10 8004A110 9421031E */  lhu        $at, 0x31e($at)
/* 4AD14 8004A114 9442031E */  lhu        $v0, 0x31e($v0)
/* 4AD18 8004A118 9463031E */  lhu        $v1, 0x31e($v1)
/* 4AD1C 8004A11C 03E00008 */  jr         $ra
/* 4AD20 8004A120 20240000 */   addi      $a0, $at, 0
