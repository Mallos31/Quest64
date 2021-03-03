.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101040
/* E28880 80101040 00047080 */  sll        $t6, $a0, 2
/* E28884 80101044 01C47021 */  addu       $t6, $t6, $a0
/* E28888 80101048 3C0F8015 */  lui        $t7, %hi(D_80156FE8)
/* E2888C 8010104C 25EF6FE8 */  addiu      $t7, $t7, %lo(D_80156FE8)
/* E28890 80101050 000E7100 */  sll        $t6, $t6, 4
/* E28894 80101054 01CF1021 */  addu       $v0, $t6, $t7
/* E28898 80101058 84580004 */  lh         $t8, 4($v0)
/* E2889C 8010105C 84590008 */  lh         $t9, 8($v0)
/* E288A0 80101060 84490006 */  lh         $t1, 6($v0)
/* E288A4 80101064 844A000A */  lh         $t2, 0xa($v0)
/* E288A8 80101068 03194021 */  addu       $t0, $t8, $t9
/* E288AC 8010106C A448002E */  sh         $t0, 0x2e($v0)
/* E288B0 80101070 012A5821 */  addu       $t3, $t1, $t2
/* E288B4 80101074 03E00008 */  jr         $ra
/* E288B8 80101078 A44B0030 */   sh        $t3, 0x30($v0)
