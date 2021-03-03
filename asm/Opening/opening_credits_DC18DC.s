.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801002BC
/* DC18DC 801002BC 0C040C38 */  jal        func_801030E0
/* DC18E0 801002C0 00000000 */   nop
/* DC18E4 801002C4 3C028010 */  lui        $v0, %hi(D_80106200)
/* DC18E8 801002C8 24426200 */  addiu      $v0, $v0, %lo(D_80106200)
/* DC18EC 801002CC 8C4C0000 */  lw         $t4, ($v0)
/* DC18F0 801002D0 3C038010 */  lui        $v1, %hi(D_80106210)
/* DC18F4 801002D4 240D0096 */  addiu      $t5, $zero, 0x96
/* DC18F8 801002D8 158000D1 */  bnez       $t4, .L80100620
/* DC18FC 801002DC 3C018010 */   lui       $at, %hi(D_80106220)
/* DC1900 801002E0 8C636210 */  lw         $v1, %lo(D_80106210)($v1)
/* DC1904 801002E4 AC4D0000 */  sw         $t5, ($v0)
/* DC1908 801002E8 AC206220 */  sw         $zero, %lo(D_80106220)($at)
/* DC190C 801002EC 3C018010 */  lui        $at, %hi(D_80106224)
/* DC1910 801002F0 AC206224 */  sw         $zero, %lo(D_80106224)($at)
/* DC1914 801002F4 3C018010 */  lui        $at, %hi(D_80106210)
/* DC1918 801002F8 24630001 */  addiu      $v1, $v1, 1
/* DC191C 801002FC 100000C8 */  b          .L80100620
/* DC1920 80100300 AC236210 */   sw        $v1, %lo(D_80106210)($at)
