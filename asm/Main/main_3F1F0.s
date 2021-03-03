.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpDeviceBusy
/* 3F1F0 8003E5F0 3C0EA404 */  lui        $t6, %hi(SP_STATUS_REG)
/* 3F1F4 8003E5F4 8DC40010 */  lw         $a0, %lo(SP_STATUS_REG)($t6)
/* 3F1F8 8003E5F8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 3F1FC 8003E5FC 308F001C */  andi       $t7, $a0, 0x1c
/* 3F200 8003E600 11E00003 */  beqz       $t7, .L8003E610
/* 3F204 8003E604 00000000 */   nop
/* 3F208 8003E608 10000002 */  b          .L8003E614
/* 3F20C 8003E60C 24020001 */   addiu     $v0, $zero, 1
.L8003E610:
/* 3F210 8003E610 00001025 */  or         $v0, $zero, $zero
.L8003E614:
/* 3F214 8003E614 03E00008 */  jr         $ra
/* 3F218 8003E618 27BD0008 */   addiu     $sp, $sp, 8
/* 3F21C 8003E61C 00000000 */  nop
