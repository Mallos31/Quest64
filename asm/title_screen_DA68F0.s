.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100000
/* DA68F0 80100000 3C018012 */  lui        $at, %hi(D_8011AD30)
/* DA68F4 80100004 AC20AD30 */  sw         $zero, %lo(D_8011AD30)($at)
/* DA68F8 80100008 3C018012 */  lui        $at, %hi(D_8011AD44)
/* DA68FC 8010000C AC20AD44 */  sw         $zero, %lo(D_8011AD44)($at)
/* DA6900 80100010 24020001 */  addiu      $v0, $zero, 1
/* DA6904 80100014 3C018010 */  lui        $at, %hi(D_80103424)
/* DA6908 80100018 AC223424 */  sw         $v0, %lo(D_80103424)($at)
/* DA690C 8010001C 3C018010 */  lui        $at, %hi(D_80103420)
/* DA6910 80100020 AC203420 */  sw         $zero, %lo(D_80103420)($at)
/* DA6914 80100024 3C018012 */  lui        $at, %hi(D_8011AD34)
/* DA6918 80100028 AC22AD34 */  sw         $v0, %lo(D_8011AD34)($at)
/* DA691C 8010002C 3C018012 */  lui        $at, %hi(D_8011AD3C)
/* DA6920 80100030 AC20AD3C */  sw         $zero, %lo(D_8011AD3C)($at)
/* DA6924 80100034 3C018012 */  lui        $at, %hi(D_8011AD40)
/* DA6928 80100038 240E0008 */  addiu      $t6, $zero, 8
/* DA692C 8010003C AC2EAD40 */  sw         $t6, %lo(D_8011AD40)($at)
/* DA6930 80100040 3C018012 */  lui        $at, %hi(D_8011AD38)
/* DA6934 80100044 03E00008 */  jr         $ra
/* DA6938 80100048 AC20AD38 */   sw        $zero, %lo(D_8011AD38)($at)
