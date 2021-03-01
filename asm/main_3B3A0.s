.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel VOID_EMPTY_FUNC2
/* 3B3A0 8003A7A0 27BDFFF8 */  addiu      $sp, $sp, -8
/* 3B3A4 8003A7A4 AFA40008 */  sw         $a0, 8($sp)
/* 3B3A8 8003A7A8 AFA5000C */  sw         $a1, 0xc($sp)
/* 3B3AC 8003A7AC AFA60010 */  sw         $a2, 0x10($sp)
/* 3B3B0 8003A7B0 AFA70014 */  sw         $a3, 0x14($sp)
/* 3B3B4 8003A7B4 03E00008 */  jr         $ra
/* 3B3B8 8003A7B8 27BD0008 */   addiu     $sp, $sp, 8

glabel emptyDEBUGprintPfsErrorData
/* 3B3BC 8003A7BC 27BDFFF8 */  addiu      $sp, $sp, -8
/* 3B3C0 8003A7C0 AFA40008 */  sw         $a0, 8($sp)
/* 3B3C4 8003A7C4 AFA5000C */  sw         $a1, 0xc($sp)
/* 3B3C8 8003A7C8 AFA60010 */  sw         $a2, 0x10($sp)
/* 3B3CC 8003A7CC AFA70014 */  sw         $a3, 0x14($sp)
/* 3B3D0 8003A7D0 03E00008 */  jr         $ra
/* 3B3D4 8003A7D4 27BD0008 */   addiu     $sp, $sp, 8
/* 3B3D8 8003A7D8 00000000 */  nop
/* 3B3DC 8003A7DC 00000000 */  nop
