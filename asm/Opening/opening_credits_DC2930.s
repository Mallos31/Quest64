.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101310
/* DC2930 80101310 3C0E8016 */  lui        $t6, %hi(D_80166250)
/* DC2934 80101314 8DCE6250 */  lw         $t6, %lo(D_80166250)($t6)
/* DC2938 80101318 00002025 */  or         $a0, $zero, $zero
/* DC293C 8010131C 3C058000 */  lui        $a1, 0x8000
/* DC2940 80101320 000E7800 */  sll        $t7, $t6, 0
/* DC2944 80101324 05E00002 */  bltz       $t7, .L80101330
/* DC2948 80101328 3C028016 */   lui       $v0, %hi(D_801662A0)
/* DC294C 8010132C 24040001 */  addiu      $a0, $zero, 1
.L80101330:
/* DC2950 80101330 244262A0 */  addiu      $v0, $v0, %lo(D_801662A0)
/* DC2954 80101334 8C580000 */  lw         $t8, ($v0)
/* DC2958 80101338 24420050 */  addiu      $v0, $v0, 0x50
/* DC295C 8010133C 24030002 */  addiu      $v1, $zero, 2
/* DC2960 80101340 0305C824 */  and        $t9, $t8, $a1
/* DC2964 80101344 17200002 */  bnez       $t9, .L80101350
/* DC2968 80101348 24060096 */   addiu     $a2, $zero, 0x96
/* DC296C 8010134C 24840001 */  addiu      $a0, $a0, 1
.L80101350:
/* DC2970 80101350 8C480000 */  lw         $t0, ($v0)
/* DC2974 80101354 24630004 */  addiu      $v1, $v1, 4
/* DC2978 80101358 01054824 */  and        $t1, $t0, $a1
/* DC297C 8010135C 55200003 */  bnel       $t1, $zero, .L8010136C
/* DC2980 80101360 8C4A0050 */   lw        $t2, 0x50($v0)
/* DC2984 80101364 24840001 */  addiu      $a0, $a0, 1
/* DC2988 80101368 8C4A0050 */  lw         $t2, 0x50($v0)
.L8010136C:
/* DC298C 8010136C 24420050 */  addiu      $v0, $v0, 0x50
/* DC2990 80101370 01455824 */  and        $t3, $t2, $a1
/* DC2994 80101374 55600003 */  bnel       $t3, $zero, .L80101384
/* DC2998 80101378 8C4C0050 */   lw        $t4, 0x50($v0)
/* DC299C 8010137C 24840001 */  addiu      $a0, $a0, 1
/* DC29A0 80101380 8C4C0050 */  lw         $t4, 0x50($v0)
.L80101384:
/* DC29A4 80101384 24420050 */  addiu      $v0, $v0, 0x50
/* DC29A8 80101388 01856824 */  and        $t5, $t4, $a1
/* DC29AC 8010138C 55A00003 */  bnel       $t5, $zero, .L8010139C
/* DC29B0 80101390 8C4E0050 */   lw        $t6, 0x50($v0)
/* DC29B4 80101394 24840001 */  addiu      $a0, $a0, 1
/* DC29B8 80101398 8C4E0050 */  lw         $t6, 0x50($v0)
.L8010139C:
/* DC29BC 8010139C 24420050 */  addiu      $v0, $v0, 0x50
/* DC29C0 801013A0 01C57824 */  and        $t7, $t6, $a1
/* DC29C4 801013A4 15E00002 */  bnez       $t7, .L801013B0
/* DC29C8 801013A8 00000000 */   nop
/* DC29CC 801013AC 24840001 */  addiu      $a0, $a0, 1
.L801013B0:
/* DC29D0 801013B0 1466FFE7 */  bne        $v1, $a2, .L80101350
/* DC29D4 801013B4 24420050 */   addiu     $v0, $v0, 0x50
/* DC29D8 801013B8 03E00008 */  jr         $ra
/* DC29DC 801013BC 00801025 */   or        $v0, $a0, $zero
