.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100BE8
/* E28428 80100BE8 3C0E8015 */  lui        $t6, %hi(D_80156FE8)
/* E2842C 80100BEC 8DCE6FE8 */  lw         $t6, %lo(D_80156FE8)($t6)
/* E28430 80100BF0 00002025 */  or         $a0, $zero, $zero
/* E28434 80100BF4 3C058000 */  lui        $a1, 0x8000
/* E28438 80100BF8 000E7800 */  sll        $t7, $t6, 0
/* E2843C 80100BFC 05E10002 */  bgez       $t7, .L80100C08
/* E28440 80100C00 3C028015 */   lui       $v0, %hi(D_80157038)
/* E28444 80100C04 24040001 */  addiu      $a0, $zero, 1
.L80100C08:
/* E28448 80100C08 24427038 */  addiu      $v0, $v0, %lo(D_80157038)
/* E2844C 80100C0C 8C580000 */  lw         $t8, ($v0)
/* E28450 80100C10 24420050 */  addiu      $v0, $v0, 0x50
/* E28454 80100C14 24030002 */  addiu      $v1, $zero, 2
/* E28458 80100C18 0305C824 */  and        $t9, $t8, $a1
/* E2845C 80100C1C 13200002 */  beqz       $t9, .L80100C28
/* E28460 80100C20 24060096 */   addiu     $a2, $zero, 0x96
/* E28464 80100C24 24840001 */  addiu      $a0, $a0, 1
.L80100C28:
/* E28468 80100C28 8C480000 */  lw         $t0, ($v0)
/* E2846C 80100C2C 24630004 */  addiu      $v1, $v1, 4
/* E28470 80100C30 01054824 */  and        $t1, $t0, $a1
/* E28474 80100C34 51200003 */  beql       $t1, $zero, .L80100C44
/* E28478 80100C38 8C4A0050 */   lw        $t2, 0x50($v0)
/* E2847C 80100C3C 24840001 */  addiu      $a0, $a0, 1
/* E28480 80100C40 8C4A0050 */  lw         $t2, 0x50($v0)
.L80100C44:
/* E28484 80100C44 24420050 */  addiu      $v0, $v0, 0x50
/* E28488 80100C48 01455824 */  and        $t3, $t2, $a1
/* E2848C 80100C4C 51600003 */  beql       $t3, $zero, .L80100C5C
/* E28490 80100C50 8C4C0050 */   lw        $t4, 0x50($v0)
/* E28494 80100C54 24840001 */  addiu      $a0, $a0, 1
/* E28498 80100C58 8C4C0050 */  lw         $t4, 0x50($v0)
.L80100C5C:
/* E2849C 80100C5C 24420050 */  addiu      $v0, $v0, 0x50
/* E284A0 80100C60 01856824 */  and        $t5, $t4, $a1
/* E284A4 80100C64 51A00003 */  beql       $t5, $zero, .L80100C74
/* E284A8 80100C68 8C4E0050 */   lw        $t6, 0x50($v0)
/* E284AC 80100C6C 24840001 */  addiu      $a0, $a0, 1
/* E284B0 80100C70 8C4E0050 */  lw         $t6, 0x50($v0)
.L80100C74:
/* E284B4 80100C74 24420050 */  addiu      $v0, $v0, 0x50
/* E284B8 80100C78 01C57824 */  and        $t7, $t6, $a1
/* E284BC 80100C7C 11E00002 */  beqz       $t7, .L80100C88
/* E284C0 80100C80 00000000 */   nop
/* E284C4 80100C84 24840001 */  addiu      $a0, $a0, 1
.L80100C88:
/* E284C8 80100C88 1466FFE7 */  bne        $v1, $a2, .L80100C28
/* E284CC 80100C8C 24420050 */   addiu     $v0, $v0, 0x50
/* E284D0 80100C90 03E00008 */  jr         $ra
/* E284D4 80100C94 00801025 */   or        $v0, $a0, $zero
