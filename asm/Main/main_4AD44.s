.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A144
/* 4AD44 8004A144 EBBF031C */  bbit1      $sp, 0x1f, .L8004ADB8
/* 4AD48 8004A148 8FB30024 */   lw        $s3, 0x24($sp)
/* 4AD4C 8004A14C 8C030FE0 */  lw         $v1, 0xfe0($zero)
/* 4AD50 8004A150 201403E0 */  addi       $s4, $zero, 0x3e0
/* 4AD54 8004A154 00731822 */  sub        $v1, $v1, $s3
/* 4AD58 8004A158 0461FFA0 */  bgez       $v1, .L80049FDC
/* 4AD5C 8004A15C 2273FFC0 */   addi      $s3, $s3, -0x40
/* 4AD60 8004A160 0D0007F5 */  jal        func_84001FD4
/* 4AD64 8004A164 2012003F */   addi      $s2, $zero, 0x3f
/* 4AD68 8004A168 0D0007F1 */  jal        func_84001FC4
/* 4AD6C 8004A16C 20030460 */   addi      $v1, $zero, 0x460
/* 4AD70 8004A170 0900056F */  j          .L840015BC
/* 4AD74 8004A174 AFB30024 */   sw        $s3, 0x24($sp)
