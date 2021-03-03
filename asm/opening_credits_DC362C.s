.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010200C
/* DC362C 8010200C 00047080 */  sll        $t6, $a0, 2
/* DC3630 80102010 01C47021 */  addu       $t6, $t6, $a0
/* DC3634 80102014 3C0F8016 */  lui        $t7, %hi(D_80166250)
/* DC3638 80102018 25EF6250 */  addiu      $t7, $t7, %lo(D_80166250)
/* DC363C 8010201C 000E7100 */  sll        $t6, $t6, 4
/* DC3640 80102020 01CF1021 */  addu       $v0, $t6, $t7
/* DC3644 80102024 84580034 */  lh         $t8, 0x34($v0)
/* DC3648 80102028 8C490038 */  lw         $t1, 0x38($v0)
/* DC364C 8010202C 27190001 */  addiu      $t9, $t8, 1
/* DC3650 80102030 A4590034 */  sh         $t9, 0x34($v0)
/* DC3654 80102034 84480034 */  lh         $t0, 0x34($v0)
/* DC3658 80102038 00001025 */  or         $v0, $zero, $zero
/* DC365C 8010203C 0109082A */  slt        $at, $t0, $t1
/* DC3660 80102040 14200003 */  bnez       $at, .L80102050
/* DC3664 80102044 00000000 */   nop
/* DC3668 80102048 03E00008 */  jr         $ra
/* DC366C 8010204C 240200FF */   addiu     $v0, $zero, 0xff
.L80102050:
/* DC3670 80102050 03E00008 */  jr         $ra
/* DC3674 80102054 00000000 */   nop
