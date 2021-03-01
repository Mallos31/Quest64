.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSndpSetSound
/* 3A4B0 800398B0 00057400 */  sll        $t6, $a1, 0x10
/* 3A4B4 800398B4 000E7C03 */  sra        $t7, $t6, 0x10
/* 3A4B8 800398B8 AFA50004 */  sw         $a1, 4($sp)
/* 3A4BC 800398BC 03E00008 */  jr         $ra
/* 3A4C0 800398C0 AC8F003C */   sw        $t7, 0x3c($a0)
/* 3A4C4 800398C4 00000000 */  nop
/* 3A4C8 800398C8 00000000 */  nop
/* 3A4CC 800398CC 00000000 */  nop
