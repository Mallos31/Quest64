.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A068
/* 4AC68 8004A068 001FA820 */  add        $s5, $zero, $ra
/* 4AC6C 8004A06C 8FB30018 */  lw         $s3, 0x18($sp)
/* 4AC70 8004A070 22F2F320 */  addi       $s2, $s7, -0xce0
/* 4AC74 8004A074 8FB70044 */  lw         $s7, 0x44($sp)
/* 4AC78 8004A078 1A40001A */  blez       $s2, .L8004A0E4
/* 4AC7C 8004A07C 0272A020 */   add       $s4, $s3, $s2
/* 4AC80 8004A080 02F4A022 */  sub        $s4, $s7, $s4
/* 4AC84 8004A084 06810008 */  bgez       $s4, .L8004A0A8
.L8004A088:
/* 4AC88 8004A088 40145800 */   mfc0      $s4, $11
/* 4AC8C 8004A08C 32940400 */  andi       $s4, $s4, 0x400
/* 4AC90 8004A090 1680FFFD */  bnez       $s4, .L8004A088
.L8004A094:
/* 4AC94 8004A094 40175000 */   mfc0      $s7, $10
/* 4AC98 8004A098 8FB30040 */  lw         $s3, 0x40($sp)
/* 4AC9C 8004A09C 12F3FFFD */  beq        $s7, $s3, .L8004A094
/* 4ACA0 8004A0A0 00000000 */   nop
/* 4ACA4 8004A0A4 40934000 */  mtc0       $s3, $8
.L8004A0A8:
/* 4ACA8 8004A0A8 40175000 */  mfc0       $s7, $10
/* 4ACAC 8004A0AC 0277A022 */  sub        $s4, $s3, $s7
/* 4ACB0 8004A0B0 06810004 */  bgez       $s4, .L8004A0C4
/* 4ACB4 8004A0B4 0272A020 */   add       $s4, $s3, $s2
/* 4ACB8 8004A0B8 0297A022 */  sub        $s4, $s4, $s7
/* 4ACBC 8004A0BC 0681FFFA */  bgez       $s4, .L8004A0A8
/* 4ACC0 8004A0C0 00000000 */   nop
.L8004A0C4:
/* 4ACC4 8004A0C4 0272B820 */  add        $s7, $s3, $s2
/* 4ACC8 8004A0C8 2252FFFF */  addi       $s2, $s2, -1
/* 4ACCC 8004A0CC 20140CE0 */  addi       $s4, $zero, 0xce0
/* 4ACD0 8004A0D0 0D0007F6 */  jal        func_84001FD8
/* 4ACD4 8004A0D4 20110001 */   addi      $s1, $zero, 1
/* 4ACD8 8004A0D8 0D0007F1 */  jal        func_84001FC4
/* 4ACDC 8004A0DC AFB70018 */   sw        $s7, 0x18($sp)
/* 4ACE0 8004A0E0 40974800 */  mtc0       $s7, $9
.L8004A0E4:
/* 4ACE4 8004A0E4 02A00008 */  jr         $s5
/* 4ACE8 8004A0E8 20170CE0 */   addi      $s7, $zero, 0xce0
