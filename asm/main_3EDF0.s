.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpSetStatus
/* 3EDF0 8003E1F0 3C0EA404 */  lui        $t6, %hi(SP_STATUS_REG)
/* 3EDF4 8003E1F4 03E00008 */  jr         $ra
/* 3EDF8 8003E1F8 ADC40010 */   sw        $a0, %lo(SP_STATUS_REG)($t6)
/* 3EDFC 8003E1FC 00000000 */  nop
