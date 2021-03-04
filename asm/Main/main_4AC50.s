.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A050
/* 4AC50 8004A050 318C003C */  andi       $t4, $t4, 0x3c
/* 4AC54 8004A054 8D8C0160 */  lw         $t4, 0x160($t4)
/* 4AC58 8004A058 00139A00 */  sll        $s3, $s3, 8
/* 4AC5C 8004A05C 00139A02 */  srl        $s3, $s3, 8
/* 4AC60 8004A060 03E00008 */  jr         $ra
/* 4AC64 8004A064 026C9820 */   add       $s3, $s3, $t4
