.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101CD8
/* DC32F8 80101CD8 00047080 */  sll        $t6, $a0, 2
/* DC32FC 80101CDC 01C47021 */  addu       $t6, $t6, $a0
/* DC3300 80101CE0 3C0F8016 */  lui        $t7, %hi(D_80166250)
/* DC3304 80101CE4 25EF6250 */  addiu      $t7, $t7, %lo(D_80166250)
/* DC3308 80101CE8 000E7100 */  sll        $t6, $t6, 4
/* DC330C 80101CEC 01CF1021 */  addu       $v0, $t6, $t7
/* DC3310 80101CF0 84580004 */  lh         $t8, 4($v0)
/* DC3314 80101CF4 84590006 */  lh         $t9, 6($v0)
/* DC3318 80101CF8 A445002A */  sh         $a1, 0x2a($v0)
/* DC331C 80101CFC A446002C */  sh         $a2, 0x2c($v0)
/* DC3320 80101D00 A4580026 */  sh         $t8, 0x26($v0)
/* DC3324 80101D04 03E00008 */  jr         $ra
/* DC3328 80101D08 A4590028 */   sh        $t9, 0x28($v0)
