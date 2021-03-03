.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101004
/* DC2624 80101004 3C028011 */  lui        $v0, %hi(D_8010B340)
/* DC2628 80101008 8C42B340 */  lw         $v0, %lo(D_8010B340)($v0)
/* DC262C 8010100C 00803825 */  or         $a3, $a0, $zero
/* DC2630 80101010 AFA50004 */  sw         $a1, 4($sp)
/* DC2634 80101014 10400017 */  beqz       $v0, .L80101074
/* DC2638 80101018 00001825 */   or        $v1, $zero, $zero
/* DC263C 8010101C 3C058011 */  lui        $a1, %hi(D_8010B338)
/* DC2640 80101020 24A5B338 */  addiu      $a1, $a1, %lo(D_8010B338)
.L80101024:
/* DC2644 80101024 8CA60004 */  lw         $a2, 4($a1)
/* DC2648 80101028 00002025 */  or         $a0, $zero, $zero
/* DC264C 8010102C 50C0000E */  beql       $a2, $zero, .L80101068
/* DC2650 80101030 24630001 */   addiu     $v1, $v1, 1
/* DC2654 80101034 8CA80000 */  lw         $t0, ($a1)
.L80101038:
/* DC2658 80101038 850E0022 */  lh         $t6, 0x22($t0)
/* DC265C 8010103C 54EE0006 */  bnel       $a3, $t6, .L80101058
/* DC2660 80101040 24840001 */   addiu     $a0, $a0, 1
/* DC2664 80101044 8FAF0004 */  lw         $t7, 4($sp)
/* DC2668 80101048 00801025 */  or         $v0, $a0, $zero
/* DC266C 8010104C 03E00008 */  jr         $ra
/* DC2670 80101050 ADE30000 */   sw        $v1, ($t7)
/* DC2674 80101054 24840001 */  addiu      $a0, $a0, 1
.L80101058:
/* DC2678 80101058 0086082B */  sltu       $at, $a0, $a2
/* DC267C 8010105C 1420FFF6 */  bnez       $at, .L80101038
/* DC2680 80101060 25080028 */   addiu     $t0, $t0, 0x28
/* DC2684 80101064 24630001 */  addiu      $v1, $v1, 1
.L80101068:
/* DC2688 80101068 0062082B */  sltu       $at, $v1, $v0
/* DC268C 8010106C 1420FFED */  bnez       $at, .L80101024
/* DC2690 80101070 24A50008 */   addiu     $a1, $a1, 8
.L80101074:
/* DC2694 80101074 2402FFFF */  addiu      $v0, $zero, -1
/* DC2698 80101078 03E00008 */  jr         $ra
/* DC269C 8010107C 00000000 */   nop
