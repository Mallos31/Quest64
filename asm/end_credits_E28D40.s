.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101500
/* E28D40 80101500 00047080 */  sll        $t6, $a0, 2
/* E28D44 80101504 01C47021 */  addu       $t6, $t6, $a0
/* E28D48 80101508 3C0F8015 */  lui        $t7, %hi(D_80156FE8)
/* E28D4C 8010150C 25EF6FE8 */  addiu      $t7, $t7, %lo(D_80156FE8)
/* E28D50 80101510 000E7100 */  sll        $t6, $t6, 4
/* E28D54 80101514 01CF1021 */  addu       $v0, $t6, $t7
/* E28D58 80101518 84580004 */  lh         $t8, 4($v0)
/* E28D5C 8010151C 84590006 */  lh         $t9, 6($v0)
/* E28D60 80101520 A445002A */  sh         $a1, 0x2a($v0)
/* E28D64 80101524 A446002C */  sh         $a2, 0x2c($v0)
/* E28D68 80101528 A4580026 */  sh         $t8, 0x26($v0)
/* E28D6C 8010152C 03E00008 */  jr         $ra
/* E28D70 80101530 A4590028 */   sh        $t9, 0x28($v0)
