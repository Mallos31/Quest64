.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100C98
/* E284D8 80100C98 3C0E8015 */  lui        $t6, %hi(D_80156FE8)
/* E284DC 80100C9C 8DCE6FE8 */  lw         $t6, %lo(D_80156FE8)($t6)
/* E284E0 80100CA0 3C028015 */  lui        $v0, %hi(D_80157038)
/* E284E4 80100CA4 24427038 */  addiu      $v0, $v0, %lo(D_80157038)
/* E284E8 80100CA8 000E7800 */  sll        $t7, $t6, 0
/* E284EC 80100CAC 05E00003 */  bltz       $t7, .L80100CBC
/* E284F0 80100CB0 3C048000 */   lui       $a0, 0x8000
/* E284F4 80100CB4 03E00008 */  jr         $ra
/* E284F8 80100CB8 00001025 */   or        $v0, $zero, $zero
.L80100CBC:
/* E284FC 80100CBC 8C580000 */  lw         $t8, ($v0)
/* E28500 80100CC0 24030002 */  addiu      $v1, $zero, 2
/* E28504 80100CC4 24420050 */  addiu      $v0, $v0, 0x50
/* E28508 80100CC8 0304C824 */  and        $t9, $t8, $a0
/* E2850C 80100CCC 17200003 */  bnez       $t9, .L80100CDC
/* E28510 80100CD0 24050096 */   addiu     $a1, $zero, 0x96
/* E28514 80100CD4 03E00008 */  jr         $ra
/* E28518 80100CD8 24020001 */   addiu     $v0, $zero, 1
.L80100CDC:
/* E2851C 80100CDC 8C480000 */  lw         $t0, ($v0)
/* E28520 80100CE0 01044824 */  and        $t1, $t0, $a0
/* E28524 80100CE4 55200006 */  bnel       $t1, $zero, .L80100D00
/* E28528 80100CE8 8C4B0050 */   lw        $t3, 0x50($v0)
/* E2852C 80100CEC 00031400 */  sll        $v0, $v1, 0x10
/* E28530 80100CF0 00025403 */  sra        $t2, $v0, 0x10
/* E28534 80100CF4 03E00008 */  jr         $ra
/* E28538 80100CF8 01401025 */   or        $v0, $t2, $zero
/* E2853C 80100CFC 8C4B0050 */  lw         $t3, 0x50($v0)
.L80100D00:
/* E28540 80100D00 24420050 */  addiu      $v0, $v0, 0x50
/* E28544 80100D04 01646024 */  and        $t4, $t3, $a0
/* E28548 80100D08 55800006 */  bnel       $t4, $zero, .L80100D24
/* E2854C 80100D0C 8C4F0050 */   lw        $t7, 0x50($v0)
/* E28550 80100D10 24620001 */  addiu      $v0, $v1, 1
/* E28554 80100D14 00026C00 */  sll        $t5, $v0, 0x10
/* E28558 80100D18 03E00008 */  jr         $ra
/* E2855C 80100D1C 000D1403 */   sra       $v0, $t5, 0x10
/* E28560 80100D20 8C4F0050 */  lw         $t7, 0x50($v0)
.L80100D24:
/* E28564 80100D24 24420050 */  addiu      $v0, $v0, 0x50
/* E28568 80100D28 01E4C024 */  and        $t8, $t7, $a0
/* E2856C 80100D2C 57000006 */  bnel       $t8, $zero, .L80100D48
/* E28570 80100D30 8C490050 */   lw        $t1, 0x50($v0)
/* E28574 80100D34 24620002 */  addiu      $v0, $v1, 2
/* E28578 80100D38 0002CC00 */  sll        $t9, $v0, 0x10
/* E2857C 80100D3C 03E00008 */  jr         $ra
/* E28580 80100D40 00191403 */   sra       $v0, $t9, 0x10
/* E28584 80100D44 8C490050 */  lw         $t1, 0x50($v0)
.L80100D48:
/* E28588 80100D48 24420050 */  addiu      $v0, $v0, 0x50
/* E2858C 80100D4C 01245024 */  and        $t2, $t1, $a0
/* E28590 80100D50 55400006 */  bnel       $t2, $zero, .L80100D6C
/* E28594 80100D54 24630004 */   addiu     $v1, $v1, 4
/* E28598 80100D58 24620003 */  addiu      $v0, $v1, 3
/* E2859C 80100D5C 00025C00 */  sll        $t3, $v0, 0x10
/* E285A0 80100D60 03E00008 */  jr         $ra
/* E285A4 80100D64 000B1403 */   sra       $v0, $t3, 0x10
/* E285A8 80100D68 24630004 */  addiu      $v1, $v1, 4
.L80100D6C:
/* E285AC 80100D6C 1465FFDB */  bne        $v1, $a1, .L80100CDC
/* E285B0 80100D70 24420050 */   addiu     $v0, $v0, 0x50
/* E285B4 80100D74 2402FFFF */  addiu      $v0, $zero, -1
/* E285B8 80100D78 03E00008 */  jr         $ra
/* E285BC 80100D7C 00000000 */   nop
