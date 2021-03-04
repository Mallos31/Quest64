.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80049FC0
/* 4ABC0 80049FC0 090005CE */  j          .L84001738
/* 4ABC4 80049FC4 201D0110 */   addi      $sp, $zero, 0x110
/* 4ABC8 80049FC8 0D0007F5 */  jal        func_84001FD4
/* 4ABCC 80049FCC 0016A020 */   add       $s4, $zero, $s6
/* 4ABD0 80049FD0 842200B8 */  lh         $v0, 0xb8($at)
/* 4ABD4 80049FD4 00400008 */  jr         $v0
/* 4ABD8 80049FD8 001915C2 */   srl       $v0, $t9, 0x17
/* 4ABDC 80049FDC 40022000 */  mfc0       $v0, $4
/* 4ABE0 80049FE0 30420080 */  andi       $v0, $v0, 0x80
/* 4ABE4 80049FE4 14400006 */  bnez       $v0, .L8004A000
/* 4ABE8 80049FE8 84150026 */   lh        $s5, 0x26($zero)
/* 4ABEC 80049FEC 179BFFED */  bne        $gp, $k1, .L80049FA4
/* 4ABF0 80049FF0 8F790000 */   lw        $t9, ($k1)
/* 4ABF4 80049FF4 09000432 */  j          .L840010C8
/* 4ABF8 80049FF8 841F0104 */   lh        $ra, 0x104($zero)
/* 4ABFC 80049FFC 841500B6 */  lh         $s5, 0xb6($zero)
.L8004A000:
/* 4AC00 8004A000 0900043C */  j          .L840010F0
/* 4AC04 8004A004 341E0020 */   ori       $fp, $zero, 0x20
/* 4AC08 8004A008 201C0AE0 */  addi       $gp, $zero, 0xae0
/* 4AC0C 8004A00C 001FA820 */  add        $s5, $zero, $ra
/* 4AC10 8004A010 201409A0 */  addi       $s4, $zero, 0x9a0
/* 4AC14 8004A014 001A9820 */  add        $s3, $zero, $k0
/* 4AC18 8004A018 235A0140 */  addi       $k0, $k0, 0x140
/* 4AC1C 8004A01C 0D0007F5 */  jal        func_84001FD4
/* 4AC20 8004A020 2012013F */   addi      $s2, $zero, 0x13f
/* 4AC24 8004A024 02A00008 */  jr         $s5
/* 4AC28 8004A028 201B09A0 */   addi      $k1, $zero, 0x9a0
