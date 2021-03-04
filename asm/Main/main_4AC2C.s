.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A02C
/* 4AC2C 8004A02C 001FA820 */  add        $s5, $zero, $ra
/* 4AC30 8004A030 8FD30000 */  lw         $s3, ($fp)
/* 4AC34 8004A034 87D20004 */  lh         $s2, 4($fp)
/* 4AC38 8004A038 0D0007F5 */  jal        func_84001FD4
/* 4AC3C 8004A03C 87D40006 */   lh        $s4, 6($fp)
/* 4AC40 8004A040 0D0007F1 */  jal        func_84001FC4
/* 4AC44 8004A044 00000000 */   nop
/* 4AC48 8004A048 02A00008 */  jr         $s5
/* 4AC4C 8004A04C 00136582 */   srl       $t4, $s3, 0x16
