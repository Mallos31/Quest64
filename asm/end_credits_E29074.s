.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101834
/* E29074 80101834 00047080 */  sll        $t6, $a0, 2
/* E29078 80101838 01C47021 */  addu       $t6, $t6, $a0
/* E2907C 8010183C 3C0F8015 */  lui        $t7, %hi(D_80156FE8)
/* E29080 80101840 25EF6FE8 */  addiu      $t7, $t7, %lo(D_80156FE8)
/* E29084 80101844 000E7100 */  sll        $t6, $t6, 4
/* E29088 80101848 01CF1021 */  addu       $v0, $t6, $t7
/* E2908C 8010184C 84580034 */  lh         $t8, 0x34($v0)
/* E29090 80101850 8C490038 */  lw         $t1, 0x38($v0)
/* E29094 80101854 27190001 */  addiu      $t9, $t8, 1
/* E29098 80101858 A4590034 */  sh         $t9, 0x34($v0)
/* E2909C 8010185C 84480034 */  lh         $t0, 0x34($v0)
/* E290A0 80101860 00001025 */  or         $v0, $zero, $zero
/* E290A4 80101864 0109082A */  slt        $at, $t0, $t1
/* E290A8 80101868 14200003 */  bnez       $at, .L80101878
/* E290AC 8010186C 00000000 */   nop
/* E290B0 80101870 03E00008 */  jr         $ra
/* E290B4 80101874 240200FF */   addiu     $v0, $zero, 0xff
.L80101878:
/* E290B8 80101878 03E00008 */  jr         $ra
/* E290BC 8010187C 00000000 */   nop
