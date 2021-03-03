.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101470
/* DC2A90 80101470 3C0E8016 */  lui        $t6, %hi(D_80166250)
/* DC2A94 80101474 8DCE6250 */  lw         $t6, %lo(D_80166250)($t6)
/* DC2A98 80101478 3C028016 */  lui        $v0, %hi(D_801662A0)
/* DC2A9C 8010147C 244262A0 */  addiu      $v0, $v0, %lo(D_801662A0)
/* DC2AA0 80101480 000E7800 */  sll        $t7, $t6, 0
/* DC2AA4 80101484 05E00003 */  bltz       $t7, .L80101494
/* DC2AA8 80101488 3C048000 */   lui       $a0, 0x8000
/* DC2AAC 8010148C 03E00008 */  jr         $ra
/* DC2AB0 80101490 00001025 */   or        $v0, $zero, $zero
.L80101494:
/* DC2AB4 80101494 8C580000 */  lw         $t8, ($v0)
/* DC2AB8 80101498 24030002 */  addiu      $v1, $zero, 2
/* DC2ABC 8010149C 24420050 */  addiu      $v0, $v0, 0x50
/* DC2AC0 801014A0 0304C824 */  and        $t9, $t8, $a0
/* DC2AC4 801014A4 17200003 */  bnez       $t9, .L801014B4
/* DC2AC8 801014A8 24050096 */   addiu     $a1, $zero, 0x96
/* DC2ACC 801014AC 03E00008 */  jr         $ra
/* DC2AD0 801014B0 24020001 */   addiu     $v0, $zero, 1
.L801014B4:
/* DC2AD4 801014B4 8C480000 */  lw         $t0, ($v0)
/* DC2AD8 801014B8 01044824 */  and        $t1, $t0, $a0
/* DC2ADC 801014BC 55200006 */  bnel       $t1, $zero, .L801014D8
/* DC2AE0 801014C0 8C4B0050 */   lw        $t3, 0x50($v0)
/* DC2AE4 801014C4 00031400 */  sll        $v0, $v1, 0x10
/* DC2AE8 801014C8 00025403 */  sra        $t2, $v0, 0x10
/* DC2AEC 801014CC 03E00008 */  jr         $ra
/* DC2AF0 801014D0 01401025 */   or        $v0, $t2, $zero
/* DC2AF4 801014D4 8C4B0050 */  lw         $t3, 0x50($v0)
.L801014D8:
/* DC2AF8 801014D8 24420050 */  addiu      $v0, $v0, 0x50
/* DC2AFC 801014DC 01646024 */  and        $t4, $t3, $a0
/* DC2B00 801014E0 55800006 */  bnel       $t4, $zero, .L801014FC
/* DC2B04 801014E4 8C4F0050 */   lw        $t7, 0x50($v0)
/* DC2B08 801014E8 24620001 */  addiu      $v0, $v1, 1
/* DC2B0C 801014EC 00026C00 */  sll        $t5, $v0, 0x10
/* DC2B10 801014F0 03E00008 */  jr         $ra
/* DC2B14 801014F4 000D1403 */   sra       $v0, $t5, 0x10
/* DC2B18 801014F8 8C4F0050 */  lw         $t7, 0x50($v0)
.L801014FC:
/* DC2B1C 801014FC 24420050 */  addiu      $v0, $v0, 0x50
/* DC2B20 80101500 01E4C024 */  and        $t8, $t7, $a0
/* DC2B24 80101504 57000006 */  bnel       $t8, $zero, .L80101520
/* DC2B28 80101508 8C490050 */   lw        $t1, 0x50($v0)
/* DC2B2C 8010150C 24620002 */  addiu      $v0, $v1, 2
/* DC2B30 80101510 0002CC00 */  sll        $t9, $v0, 0x10
/* DC2B34 80101514 03E00008 */  jr         $ra
/* DC2B38 80101518 00191403 */   sra       $v0, $t9, 0x10
/* DC2B3C 8010151C 8C490050 */  lw         $t1, 0x50($v0)
.L80101520:
/* DC2B40 80101520 24420050 */  addiu      $v0, $v0, 0x50
/* DC2B44 80101524 01245024 */  and        $t2, $t1, $a0
/* DC2B48 80101528 55400006 */  bnel       $t2, $zero, .L80101544
/* DC2B4C 8010152C 24630004 */   addiu     $v1, $v1, 4
/* DC2B50 80101530 24620003 */  addiu      $v0, $v1, 3
/* DC2B54 80101534 00025C00 */  sll        $t3, $v0, 0x10
/* DC2B58 80101538 03E00008 */  jr         $ra
/* DC2B5C 8010153C 000B1403 */   sra       $v0, $t3, 0x10
/* DC2B60 80101540 24630004 */  addiu      $v1, $v1, 4
.L80101544:
/* DC2B64 80101544 1465FFDB */  bne        $v1, $a1, .L801014B4
/* DC2B68 80101548 24420050 */   addiu     $v0, $v0, 0x50
/* DC2B6C 8010154C 2402FFFF */  addiu      $v0, $zero, -1
/* DC2B70 80101550 03E00008 */  jr         $ra
/* DC2B74 80101554 00000000 */   nop
