.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101818
/* DC2E38 80101818 00047080 */  sll        $t6, $a0, 2
/* DC2E3C 8010181C 01C47021 */  addu       $t6, $t6, $a0
/* DC2E40 80101820 3C0F8016 */  lui        $t7, %hi(D_80166250)
/* DC2E44 80101824 25EF6250 */  addiu      $t7, $t7, %lo(D_80166250)
/* DC2E48 80101828 000E7100 */  sll        $t6, $t6, 4
/* DC2E4C 8010182C 01CF1021 */  addu       $v0, $t6, $t7
/* DC2E50 80101830 84580004 */  lh         $t8, 4($v0)
/* DC2E54 80101834 84590008 */  lh         $t9, 8($v0)
/* DC2E58 80101838 84490006 */  lh         $t1, 6($v0)
/* DC2E5C 8010183C 844A000A */  lh         $t2, 0xa($v0)
/* DC2E60 80101840 03194021 */  addu       $t0, $t8, $t9
/* DC2E64 80101844 A448002E */  sh         $t0, 0x2e($v0)
/* DC2E68 80101848 012A5821 */  addu       $t3, $t1, $t2
/* DC2E6C 8010184C 03E00008 */  jr         $ra
/* DC2E70 80101850 A44B0030 */   sh        $t3, 0x30($v0)
