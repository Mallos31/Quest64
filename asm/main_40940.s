.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynDelete
/* 40940 8003FD40 03E00008 */  jr         $ra
/* 40944 8003FD44 AC800000 */   sw        $zero, ($a0)
/* 40948 8003FD48 00000000 */  nop
/* 4094C 8003FD4C 00000000 */  nop