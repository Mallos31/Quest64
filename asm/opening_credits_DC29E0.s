.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801013C0
/* DC29E0 801013C0 3C0E8016 */  lui        $t6, %hi(D_80166250)
/* DC29E4 801013C4 8DCE6250 */  lw         $t6, %lo(D_80166250)($t6)
/* DC29E8 801013C8 00002025 */  or         $a0, $zero, $zero
/* DC29EC 801013CC 3C058000 */  lui        $a1, 0x8000
/* DC29F0 801013D0 000E7800 */  sll        $t7, $t6, 0
/* DC29F4 801013D4 05E10002 */  bgez       $t7, .L801013E0
/* DC29F8 801013D8 3C028016 */   lui       $v0, %hi(D_801662A0)
/* DC29FC 801013DC 24040001 */  addiu      $a0, $zero, 1
.L801013E0:
/* DC2A00 801013E0 244262A0 */  addiu      $v0, $v0, %lo(D_801662A0)
/* DC2A04 801013E4 8C580000 */  lw         $t8, ($v0)
/* DC2A08 801013E8 24420050 */  addiu      $v0, $v0, 0x50
/* DC2A0C 801013EC 24030002 */  addiu      $v1, $zero, 2
/* DC2A10 801013F0 0305C824 */  and        $t9, $t8, $a1
/* DC2A14 801013F4 13200002 */  beqz       $t9, .L80101400
/* DC2A18 801013F8 24060096 */   addiu     $a2, $zero, 0x96
/* DC2A1C 801013FC 24840001 */  addiu      $a0, $a0, 1
.L80101400:
/* DC2A20 80101400 8C480000 */  lw         $t0, ($v0)
/* DC2A24 80101404 24630004 */  addiu      $v1, $v1, 4
/* DC2A28 80101408 01054824 */  and        $t1, $t0, $a1
/* DC2A2C 8010140C 51200003 */  beql       $t1, $zero, .L8010141C
/* DC2A30 80101410 8C4A0050 */   lw        $t2, 0x50($v0)
/* DC2A34 80101414 24840001 */  addiu      $a0, $a0, 1
/* DC2A38 80101418 8C4A0050 */  lw         $t2, 0x50($v0)
.L8010141C:
/* DC2A3C 8010141C 24420050 */  addiu      $v0, $v0, 0x50
/* DC2A40 80101420 01455824 */  and        $t3, $t2, $a1
/* DC2A44 80101424 51600003 */  beql       $t3, $zero, .L80101434
/* DC2A48 80101428 8C4C0050 */   lw        $t4, 0x50($v0)
/* DC2A4C 8010142C 24840001 */  addiu      $a0, $a0, 1
/* DC2A50 80101430 8C4C0050 */  lw         $t4, 0x50($v0)
.L80101434:
/* DC2A54 80101434 24420050 */  addiu      $v0, $v0, 0x50
/* DC2A58 80101438 01856824 */  and        $t5, $t4, $a1
/* DC2A5C 8010143C 51A00003 */  beql       $t5, $zero, .L8010144C
/* DC2A60 80101440 8C4E0050 */   lw        $t6, 0x50($v0)
/* DC2A64 80101444 24840001 */  addiu      $a0, $a0, 1
/* DC2A68 80101448 8C4E0050 */  lw         $t6, 0x50($v0)
.L8010144C:
/* DC2A6C 8010144C 24420050 */  addiu      $v0, $v0, 0x50
/* DC2A70 80101450 01C57824 */  and        $t7, $t6, $a1
/* DC2A74 80101454 11E00002 */  beqz       $t7, .L80101460
/* DC2A78 80101458 00000000 */   nop
/* DC2A7C 8010145C 24840001 */  addiu      $a0, $a0, 1
.L80101460:
/* DC2A80 80101460 1466FFE7 */  bne        $v1, $a2, .L80101400
/* DC2A84 80101464 24420050 */   addiu     $v0, $v0, 0x50
/* DC2A88 80101468 03E00008 */  jr         $ra
/* DC2A8C 8010146C 00801025 */   or        $v0, $a0, $zero
