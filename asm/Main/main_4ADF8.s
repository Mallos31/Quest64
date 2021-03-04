.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A1F8
/* 4ADF8 8004A1F8 9739031E */  lhu        $t9, 0x31e($t9)
/* 4ADFC 8004A1FC 9718031E */  lhu        $t8, 0x31e($t8)
/* 4AE00 8004A200 34027070 */  ori        $v0, $zero, 0x7070
.L8004A204:
/* 4AE04 8004A204 87230024 */  lh         $v1, 0x24($t9)
/* 4AE08 8004A208 00431024 */  and        $v0, $v0, $v1
/* 4AE0C 8004A20C 1738FFFD */  bne        $t9, $t8, .L8004A204
/* 4AE10 8004A210 23390028 */   addi      $t9, $t9, 0x28
/* 4AE14 8004A214 1040FF71 */  beqz       $v0, .L80049FDC
/* 4AE18 8004A218 83A20038 */   lb        $v0, 0x38($sp)
/* 4AE1C 8004A21C 2042FFFC */  addi       $v0, $v0, -4
/* 4AE20 8004A220 0440FF76 */  bltz       $v0, .L80049FFC
/* 4AE24 8004A224 20430398 */   addi      $v1, $v0, 0x398
/* 4AE28 8004A228 8C7A0000 */  lw         $k0, ($v1)
/* 4AE2C 8004A22C A3A20038 */  sb         $v0, 0x38($sp)
/* 4AE30 8004A230 09000427 */  j          .L8400109C
/* 4AE34 8004A234 237C0000 */   addi      $gp, $k1, 0
