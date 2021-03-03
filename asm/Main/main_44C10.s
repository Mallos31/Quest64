.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynAddPlayer
/* 44C10 80044010 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 44C14 80044014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44C18 80044018 00803025 */  or         $a2, $a0, $zero
/* 44C1C 8004401C AFA60018 */  sw         $a2, 0x18($sp)
/* 44C20 80044020 24040001 */  addiu      $a0, $zero, 1
/* 44C24 80044024 0C00D058 */  jal        osSetIntMask
/* 44C28 80044028 AFA5001C */   sw        $a1, 0x1c($sp)
/* 44C2C 8004402C 8FA60018 */  lw         $a2, 0x18($sp)
/* 44C30 80044030 8FA5001C */  lw         $a1, 0x1c($sp)
/* 44C34 80044034 00402025 */  or         $a0, $v0, $zero
/* 44C38 80044038 8CCE0020 */  lw         $t6, 0x20($a2)
/* 44C3C 8004403C ACAE0010 */  sw         $t6, 0x10($a1)
/* 44C40 80044040 8CCF0000 */  lw         $t7, ($a2)
/* 44C44 80044044 ACAF0000 */  sw         $t7, ($a1)
/* 44C48 80044048 0C00D058 */  jal        osSetIntMask
/* 44C4C 8004404C ACC50000 */   sw        $a1, ($a2)
/* 44C50 80044050 8FBF0014 */  lw         $ra, 0x14($sp)
/* 44C54 80044054 27BD0018 */  addiu      $sp, $sp, 0x18
/* 44C58 80044058 03E00008 */  jr         $ra
/* 44C5C 8004405C 00000000 */   nop

glabel alSynStopVoice
/* 44C60 80044060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 44C64 80044064 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44C68 80044068 AFA40018 */  sw         $a0, 0x18($sp)
/* 44C6C 8004406C 8CAE0008 */  lw         $t6, 8($a1)
/* 44C70 80044070 51C00016 */  beql       $t6, $zero, .L800440CC
/* 44C74 80044074 8FBF0014 */   lw        $ra, 0x14($sp)
/* 44C78 80044078 0C00DA8C */  jal        __allocParam
/* 44C7C 8004407C AFA5001C */   sw        $a1, 0x1c($sp)
/* 44C80 80044080 8FA7001C */  lw         $a3, 0x1c($sp)
/* 44C84 80044084 10400010 */  beqz       $v0, .L800440C8
/* 44C88 80044088 00403025 */   or        $a2, $v0, $zero
/* 44C8C 8004408C 8FAF0018 */  lw         $t7, 0x18($sp)
/* 44C90 80044090 8CF90008 */  lw         $t9, 8($a3)
/* 44C94 80044094 240A000F */  addiu      $t2, $zero, 0xf
/* 44C98 80044098 8DF8001C */  lw         $t8, 0x1c($t7)
/* 44C9C 8004409C 8F2800D8 */  lw         $t0, 0xd8($t9)
/* 44CA0 800440A0 A44A0008 */  sh         $t2, 8($v0)
/* 44CA4 800440A4 AC400000 */  sw         $zero, ($v0)
/* 44CA8 800440A8 03084821 */  addu       $t1, $t8, $t0
/* 44CAC 800440AC AC490004 */  sw         $t1, 4($v0)
/* 44CB0 800440B0 8CEB0008 */  lw         $t3, 8($a3)
/* 44CB4 800440B4 24050003 */  addiu      $a1, $zero, 3
/* 44CB8 800440B8 8D64000C */  lw         $a0, 0xc($t3)
/* 44CBC 800440BC 8C990008 */  lw         $t9, 8($a0)
/* 44CC0 800440C0 0320F809 */  jalr       $t9
/* 44CC4 800440C4 00000000 */   nop
.L800440C8:
/* 44CC8 800440C8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800440CC:
/* 44CCC 800440CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 44CD0 800440D0 03E00008 */  jr         $ra
/* 44CD4 800440D4 00000000 */   nop
/* 44CD8 800440D8 00000000 */  nop
/* 44CDC 800440DC 00000000 */  nop
