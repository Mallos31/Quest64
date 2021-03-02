.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100B14
/* DA7404 80100B14 3C068008 */  lui        $a2, %hi(UNK_DisplayListCommand)
/* DA7408 80100B18 24C6B2FC */  addiu      $a2, $a2, %lo(UNK_DisplayListCommand)
/* DA740C 80100B1C 8CC20000 */  lw         $v0, ($a2)
/* DA7410 80100B20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA7414 80100B24 AFBF0014 */  sw         $ra, 0x14($sp)
/* DA7418 80100B28 244E0008 */  addiu      $t6, $v0, 8
/* DA741C 80100B2C ACCE0000 */  sw         $t6, ($a2)
/* DA7420 80100B30 3C188010 */  lui        $t8, %hi(D_80103138)
/* DA7424 80100B34 27183138 */  addiu      $t8, $t8, %lo(D_80103138)
/* DA7428 80100B38 3C0F0600 */  lui        $t7, 0x600
/* DA742C 80100B3C AC4F0000 */  sw         $t7, ($v0)
/* DA7430 80100B40 AC580004 */  sw         $t8, 4($v0)
/* DA7434 80100B44 8CC20000 */  lw         $v0, ($a2)
/* DA7438 80100B48 3C08FB00 */  lui        $t0, 0xfb00
/* DA743C 80100B4C 240900FF */  addiu      $t1, $zero, 0xff
/* DA7440 80100B50 24590008 */  addiu      $t9, $v0, 8
/* DA7444 80100B54 ACD90000 */  sw         $t9, ($a2)
/* DA7448 80100B58 3C048012 */  lui        $a0, %hi(D_8011AD44)
/* DA744C 80100B5C AC490004 */  sw         $t1, 4($v0)
/* DA7450 80100B60 AC480000 */  sw         $t0, ($v0)
/* DA7454 80100B64 0C0402E8 */  jal        func_80100BA0
/* DA7458 80100B68 8C84AD44 */   lw        $a0, %lo(D_8011AD44)($a0)
/* DA745C 80100B6C 3C028012 */  lui        $v0, %hi(D_8011AD34)
/* DA7460 80100B70 2442AD34 */  addiu      $v0, $v0, %lo(D_8011AD34)
/* DA7464 80100B74 8C4A0000 */  lw         $t2, ($v0)
/* DA7468 80100B78 240D000F */  addiu      $t5, $zero, 0xf
/* DA746C 80100B7C 3C018012 */  lui        $at, %hi(D_8011AD44)
/* DA7470 80100B80 254BFFFF */  addiu      $t3, $t2, -1
/* DA7474 80100B84 15600002 */  bnez       $t3, .L80100B90
/* DA7478 80100B88 AC4B0000 */   sw        $t3, ($v0)
/* DA747C 80100B8C AC2DAD44 */  sw         $t5, %lo(D_8011AD44)($at)
.L80100B90:
/* DA7480 80100B90 8FBF0014 */  lw         $ra, 0x14($sp)
/* DA7484 80100B94 27BD0018 */  addiu      $sp, $sp, 0x18
/* DA7488 80100B98 03E00008 */  jr         $ra
/* DA748C 80100B9C 00000000 */   nop
