.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynSetPitch
/* 44E30 80044230 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 44E34 80044234 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44E38 80044238 AFA40018 */  sw         $a0, 0x18($sp)
/* 44E3C 8004423C AFA60020 */  sw         $a2, 0x20($sp)
/* 44E40 80044240 8CAE0008 */  lw         $t6, 8($a1)
/* 44E44 80044244 51C00018 */  beql       $t6, $zero, .L800442A8
/* 44E48 80044248 8FBF0014 */   lw        $ra, 0x14($sp)
/* 44E4C 8004424C 0C00DA8C */  jal        __allocParam
/* 44E50 80044250 AFA5001C */   sw        $a1, 0x1c($sp)
/* 44E54 80044254 8FA7001C */  lw         $a3, 0x1c($sp)
/* 44E58 80044258 10400012 */  beqz       $v0, .L800442A4
/* 44E5C 8004425C 00403025 */   or        $a2, $v0, $zero
/* 44E60 80044260 8FAF0018 */  lw         $t7, 0x18($sp)
/* 44E64 80044264 8CF90008 */  lw         $t9, 8($a3)
/* 44E68 80044268 240A0007 */  addiu      $t2, $zero, 7
/* 44E6C 8004426C 8DF8001C */  lw         $t8, 0x1c($t7)
/* 44E70 80044270 8F2800D8 */  lw         $t0, 0xd8($t9)
/* 44E74 80044274 A44A0008 */  sh         $t2, 8($v0)
/* 44E78 80044278 24050003 */  addiu      $a1, $zero, 3
/* 44E7C 8004427C 03084821 */  addu       $t1, $t8, $t0
/* 44E80 80044280 AC490004 */  sw         $t1, 4($v0)
/* 44E84 80044284 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 44E88 80044288 AC400000 */  sw         $zero, ($v0)
/* 44E8C 8004428C E444000C */  swc1       $f4, 0xc($v0)
/* 44E90 80044290 8CEB0008 */  lw         $t3, 8($a3)
/* 44E94 80044294 8D64000C */  lw         $a0, 0xc($t3)
/* 44E98 80044298 8C990008 */  lw         $t9, 8($a0)
/* 44E9C 8004429C 0320F809 */  jalr       $t9
/* 44EA0 800442A0 00000000 */   nop
.L800442A4:
/* 44EA4 800442A4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800442A8:
/* 44EA8 800442A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 44EAC 800442AC 03E00008 */  jr         $ra
/* 44EB0 800442B0 00000000 */   nop
/* 44EB4 800442B4 00000000 */  nop
/* 44EB8 800442B8 00000000 */  nop
/* 44EBC 800442BC 00000000 */  nop