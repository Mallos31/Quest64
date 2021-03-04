.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A498
/* 4B098 8004A498 EBBF031C */  bbit1      $sp, 0x1f, .L8004B10C
/* 4B09C 8004A49C 1500001B */   bnez      $t0, .L8004A50C
/* 4B0A0 8004A4A0 30270002 */   andi      $a3, $at, 2
/* 4B0A4 8004A4A4 201403E0 */  addi       $s4, $zero, 0x3e0
/* 4B0A8 8004A4A8 30280004 */  andi       $t0, $at, 4
/* 4B0AC 8004A4AC 1100000A */  beqz       $t0, .L8004A4D8
/* 4B0B0 8004A4B0 CADA2003 */   bbit0     $s6, 0x1a, .L800524C0
/* 4B0B4 8004A4B4 8FB30024 */   lw        $s3, 0x24($sp)
/* 4B0B8 8004A4B8 8FA8004C */  lw         $t0, 0x4c($sp)
/* 4B0BC 8004A4BC 20110001 */  addi       $s1, $zero, 1
/* 4B0C0 8004A4C0 22610040 */  addi       $at, $s3, 0x40
/* 4B0C4 8004A4C4 12680004 */  beq        $s3, $t0, .L8004A4D8
/* 4B0C8 8004A4C8 200C003F */   addi      $t4, $zero, 0x3f
/* 4B0CC 8004A4CC 0D0007F6 */  jal        func_84001FD8
/* 4B0D0 8004A4D0 AFA10024 */   sw        $at, 0x24($sp)
/* 4B0D4 8004A4D4 0D0007F1 */  jal        func_84001FC4
.L8004A4D8:
/* 4B0D8 8004A4D8 CADC2001 */   bbit0     $s6, 0x1c, .L800524E0
/* 4B0DC 8004A4DC 10E0000E */   beqz      $a3, .L8004A518
/* 4B0E0 8004A4E0 CADB2002 */   bbit0     $s6, 0x1b, .L800524EC
/* 4B0E4 8004A4E4 EA9A2003 */   bbit1     $s4, 0x1a, .L800524F4
/* 4B0E8 8004A4E8 CADD2000 */   bbit0     $s6, 0x1d, .L800524EC
/* 4B0EC 8004A4EC EA9C2001 */   bbit1     $s4, 0x1c, .L800524F4
/* 4B0F0 8004A4F0 20030460 */   addi      $v1, $zero, 0x460
/* 4B0F4 8004A4F4 EA9B2002 */  bbit1      $s4, 0x1b, .L80052500
/* 4B0F8 8004A4F8 EA9D2000 */   bbit1     $s4, 0x1d, .L800524FC
/* 4B0FC 8004A4FC 200103E0 */   addi      $at, $zero, 0x3e0
/* 4B100 8004A500 20020420 */  addi       $v0, $zero, 0x420
/* 4B104 8004A504 0900057F */  j          .L840015FC
/* 4B108 8004A508 841F00BA */   lh        $ra, 0xba($zero)
.L8004A50C:
/* 4B10C 8004A50C CADA2003 */  bbit0      $s6, 0x1a, .L8005251C
/* 4B110 8004A510 09000566 */   j         .L84001598
/* 4B114 8004A514 20140420 */   addi      $s4, $zero, 0x420
.L8004A518:
/* 4B118 8004A518 24030DE0 */  addiu      $v1, $zero, 0xde0
/* 4B11C 8004A51C 00160821 */  addu       $at, $zero, $s6
/* 4B120 8004A520 0D00057F */  jal        func_840015FC
/* 4B124 8004A524 00141021 */   addu      $v0, $zero, $s4
/* 4B128 8004A528 EA862003 */  bbit1      $s4, 6, .L80052538
/* 4B12C 8004A52C EA852001 */   bbit1     $s4, 5, .L80052534
/* 4B130 8004A530 C87B2000 */   bbit0     $v1, 0x1b, .L80052534
/* 4B134 8004A534 0900056C */   j         .L840015B0
/* 4B138 8004A538 C87D207E */   bbit0     $v1, 0x1d, .L80052734
