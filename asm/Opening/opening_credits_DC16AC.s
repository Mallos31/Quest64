.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010008C
/* DC16AC 8010008C 3C018016 */  lui        $at, %hi(D_80166238)
/* DC16B0 80100090 AC206238 */  sw         $zero, %lo(D_80166238)($at)
/* DC16B4 80100094 03E00008 */  jr         $ra
/* DC16B8 80100098 27BD0018 */   addiu     $sp, $sp, 0x18
