.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel romMain
/* 1000 80000400 3C088007 */  lui        $t0, %hi(D_80072E90)
/* 1004 80000404 3C090002 */  lui        $t1, 2
/* 1008 80000408 25082E90 */  addiu      $t0, $t0, %lo(D_80072E90)
/* 100C 8000040C 352939C0 */  ori        $t1, $t1, 0x39c0
.L80000410:
/* 1010 80000410 2129FFF8 */  addi       $t1, $t1, -8
/* 1014 80000414 AD000000 */  sw         $zero, ($t0)
/* 1018 80000418 AD000004 */  sw         $zero, 4($t0)
/* 101C 8000041C 1520FFFC */  bnez       $t1, .L80000410
/* 1020 80000420 21080008 */   addi      $t0, $t0, 8
/* 1024 80000424 3C0A8000 */  lui        $t2, %hi(func_80000450)
/* 1028 80000428 3C1D8007 */  lui        $sp, %hi(D_80074E90)
/* 102C 8000042C 254A0450 */  addiu      $t2, $t2, %lo(func_80000450)
/* 1030 80000430 01400008 */  jr         $t2
/* 1034 80000434 27BD4E90 */   addiu     $sp, $sp, %lo(D_80074E90)
/* 1038 80000438 00000000 */  nop
/* 103C 8000043C 00000000 */  nop
/* 1040 80000440 00000000 */  nop
/* 1044 80000444 00000000 */  nop
/* 1048 80000448 00000000 */  nop
/* 104C 8000044C 00000000 */  nop

glabel func_80000450
/* 1050 80000450 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1054 80000454 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1058 80000458 AFA40020 */  sw         $a0, 0x20($sp)
/* 105C 8000045C 0C00CE14 */  jal        osInitialize
/* 1060 80000460 00000000 */   nop
/* 1064 80000464 3C0E8007 */  lui        $t6, %hi(D_800761F0)
/* 1068 80000468 25CE61F0 */  addiu      $t6, $t6, %lo(D_800761F0)
/* 106C 8000046C 3C048007 */  lui        $a0, %hi(D_80074E90)
/* 1070 80000470 3C068000 */  lui        $a2, %hi(func_800004B0)
/* 1074 80000474 240F0001 */  addiu      $t7, $zero, 1
/* 1078 80000478 AFAF0014 */  sw         $t7, 0x14($sp)
/* 107C 8000047C 24C604B0 */  addiu      $a2, $a2, %lo(func_800004B0)
/* 1080 80000480 24844E90 */  addiu      $a0, $a0, %lo(D_80074E90)
/* 1084 80000484 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1088 80000488 24050001 */  addiu      $a1, $zero, 1
/* 108C 8000048C 0C00CEB8 */  jal        osCreateThread
/* 1090 80000490 00003825 */   or        $a3, $zero, $zero
/* 1094 80000494 3C048007 */  lui        $a0, %hi(D_80074E90)
/* 1098 80000498 0C00CF0C */  jal        osStartThread
/* 109C 8000049C 24844E90 */   addiu     $a0, $a0, %lo(D_80074E90)
/* 10A0 800004A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 10A4 800004A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 10A8 800004A8 03E00008 */  jr         $ra
/* 10AC 800004AC 00000000 */   nop

glabel func_800004B0
/* 10B0 800004B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10B4 800004B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 10B8 800004B8 AFA40020 */  sw         $a0, 0x20($sp)
/* 10BC 800004BC 3C058008 */  lui        $a1, %hi(D_800781F0)
/* 10C0 800004C0 3C068008 */  lui        $a2, %hi(D_80078208)
/* 10C4 800004C4 24C68208 */  addiu      $a2, $a2, %lo(D_80078208)
/* 10C8 800004C8 24A581F0 */  addiu      $a1, $a1, %lo(D_800781F0)
/* 10CC 800004CC 24040096 */  addiu      $a0, $zero, 0x96
/* 10D0 800004D0 0C00CF60 */  jal        osCreatePiManager
/* 10D4 800004D4 24070032 */   addiu     $a3, $zero, 0x32
/* 10D8 800004D8 3C0E8008 */  lui        $t6, %hi(D_800781F0)
/* 10DC 800004DC 25CE81F0 */  addiu      $t6, $t6, %lo(D_800781F0)
/* 10E0 800004E0 3C048007 */  lui        $a0, %hi(D_80075040)
/* 10E4 800004E4 3C068000 */  lui        $a2, %hi(gameMain)
/* 10E8 800004E8 240F0005 */  addiu      $t7, $zero, 5
/* 10EC 800004EC AFAF0014 */  sw         $t7, 0x14($sp)
/* 10F0 800004F0 24C60C50 */  addiu      $a2, $a2, %lo(gameMain)
/* 10F4 800004F4 24845040 */  addiu      $a0, $a0, %lo(D_80075040)
/* 10F8 800004F8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 10FC 800004FC 24050006 */  addiu      $a1, $zero, 6
/* 1100 80000500 0C00CEB8 */  jal        osCreateThread
/* 1104 80000504 8FA70020 */   lw        $a3, 0x20($sp)
/* 1108 80000508 3C048007 */  lui        $a0, %hi(D_80075040)
/* 110C 8000050C 0C00CF0C */  jal        osStartThread
/* 1110 80000510 24845040 */   addiu     $a0, $a0, %lo(D_80075040)
.L80000514:
/* 1114 80000514 1000FFFF */  b          .L80000514
/* 1118 80000518 00000000 */   nop
/* 111C 8000051C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1120 80000520 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1124 80000524 03E00008 */  jr         $ra
/* 1128 80000528 00000000 */   nop
/* 112C 8000052C 00000000 */  nop
