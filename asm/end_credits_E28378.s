.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100B38
/* E28378 80100B38 3C0E8015 */  lui        $t6, %hi(D_80156FE8)
/* E2837C 80100B3C 8DCE6FE8 */  lw         $t6, %lo(D_80156FE8)($t6)
/* E28380 80100B40 00002025 */  or         $a0, $zero, $zero
/* E28384 80100B44 3C058000 */  lui        $a1, 0x8000
/* E28388 80100B48 000E7800 */  sll        $t7, $t6, 0
/* E2838C 80100B4C 05E00002 */  bltz       $t7, .L80100B58
/* E28390 80100B50 3C028015 */   lui       $v0, %hi(D_80157038)
/* E28394 80100B54 24040001 */  addiu      $a0, $zero, 1
.L80100B58:
/* E28398 80100B58 24427038 */  addiu      $v0, $v0, %lo(D_80157038)
/* E2839C 80100B5C 8C580000 */  lw         $t8, ($v0)
/* E283A0 80100B60 24420050 */  addiu      $v0, $v0, 0x50
/* E283A4 80100B64 24030002 */  addiu      $v1, $zero, 2
/* E283A8 80100B68 0305C824 */  and        $t9, $t8, $a1
/* E283AC 80100B6C 17200002 */  bnez       $t9, .L80100B78
/* E283B0 80100B70 24060096 */   addiu     $a2, $zero, 0x96
/* E283B4 80100B74 24840001 */  addiu      $a0, $a0, 1
.L80100B78:
/* E283B8 80100B78 8C480000 */  lw         $t0, ($v0)
/* E283BC 80100B7C 24630004 */  addiu      $v1, $v1, 4
/* E283C0 80100B80 01054824 */  and        $t1, $t0, $a1
/* E283C4 80100B84 55200003 */  bnel       $t1, $zero, .L80100B94
/* E283C8 80100B88 8C4A0050 */   lw        $t2, 0x50($v0)
/* E283CC 80100B8C 24840001 */  addiu      $a0, $a0, 1
/* E283D0 80100B90 8C4A0050 */  lw         $t2, 0x50($v0)
.L80100B94:
/* E283D4 80100B94 24420050 */  addiu      $v0, $v0, 0x50
/* E283D8 80100B98 01455824 */  and        $t3, $t2, $a1
/* E283DC 80100B9C 55600003 */  bnel       $t3, $zero, .L80100BAC
/* E283E0 80100BA0 8C4C0050 */   lw        $t4, 0x50($v0)
/* E283E4 80100BA4 24840001 */  addiu      $a0, $a0, 1
/* E283E8 80100BA8 8C4C0050 */  lw         $t4, 0x50($v0)
.L80100BAC:
/* E283EC 80100BAC 24420050 */  addiu      $v0, $v0, 0x50
/* E283F0 80100BB0 01856824 */  and        $t5, $t4, $a1
/* E283F4 80100BB4 55A00003 */  bnel       $t5, $zero, .L80100BC4
/* E283F8 80100BB8 8C4E0050 */   lw        $t6, 0x50($v0)
/* E283FC 80100BBC 24840001 */  addiu      $a0, $a0, 1
/* E28400 80100BC0 8C4E0050 */  lw         $t6, 0x50($v0)
.L80100BC4:
/* E28404 80100BC4 24420050 */  addiu      $v0, $v0, 0x50
/* E28408 80100BC8 01C57824 */  and        $t7, $t6, $a1
/* E2840C 80100BCC 15E00002 */  bnez       $t7, .L80100BD8
/* E28410 80100BD0 00000000 */   nop
/* E28414 80100BD4 24840001 */  addiu      $a0, $a0, 1
.L80100BD8:
/* E28418 80100BD8 1466FFE7 */  bne        $v1, $a2, .L80100B78
/* E2841C 80100BDC 24420050 */   addiu     $v0, $v0, 0x50
/* E28420 80100BE0 03E00008 */  jr         $ra
/* E28424 80100BE4 00801025 */   or        $v0, $a0, $zero
