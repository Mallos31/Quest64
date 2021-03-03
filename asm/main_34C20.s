.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osRecvMesg
/* 34C20 80034020 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 34C24 80034024 AFBF001C */  sw         $ra, 0x1c($sp)
/* 34C28 80034028 AFA40028 */  sw         $a0, 0x28($sp)
/* 34C2C 8003402C AFA5002C */  sw         $a1, 0x2c($sp)
/* 34C30 80034030 AFA60030 */  sw         $a2, 0x30($sp)
/* 34C34 80034034 AFB10018 */  sw         $s1, 0x18($sp)
/* 34C38 80034038 0C00F534 */  jal        __osDisableInt
/* 34C3C 8003403C AFB00014 */   sw        $s0, 0x14($sp)
/* 34C40 80034040 8FAE0028 */  lw         $t6, 0x28($sp)
/* 34C44 80034044 00408025 */  or         $s0, $v0, $zero
/* 34C48 80034048 8DCF0008 */  lw         $t7, 8($t6)
/* 34C4C 8003404C 15E00012 */  bnez       $t7, .L80034098
/* 34C50 80034050 00000000 */   nop
.L80034054:
/* 34C54 80034054 8FB80030 */  lw         $t8, 0x30($sp)
/* 34C58 80034058 17000005 */  bnez       $t8, .L80034070
/* 34C5C 8003405C 00000000 */   nop
/* 34C60 80034060 0C00F53C */  jal        __osRestoreInt
/* 34C64 80034064 02002025 */   or        $a0, $s0, $zero
/* 34C68 80034068 10000036 */  b          .L80034144
/* 34C6C 8003406C 2402FFFF */   addiu     $v0, $zero, -1
.L80034070:
/* 34C70 80034070 3C088007 */  lui        $t0, %hi(__osRunningThread)
/* 34C74 80034074 8D080A00 */  lw         $t0, %lo(__osRunningThread)($t0)
/* 34C78 80034078 24190008 */  addiu      $t9, $zero, 8
/* 34C7C 8003407C A5190010 */  sh         $t9, 0x10($t0)
/* 34C80 80034080 0C00F423 */  jal        __osEnqueueAndYield
/* 34C84 80034084 8FA40028 */   lw        $a0, 0x28($sp)
/* 34C88 80034088 8FA90028 */  lw         $t1, 0x28($sp)
/* 34C8C 8003408C 8D2A0008 */  lw         $t2, 8($t1)
/* 34C90 80034090 1140FFF0 */  beqz       $t2, .L80034054
/* 34C94 80034094 00000000 */   nop
.L80034098:
/* 34C98 80034098 8FAB002C */  lw         $t3, 0x2c($sp)
/* 34C9C 8003409C 11600008 */  beqz       $t3, .L800340C0
/* 34CA0 800340A0 00000000 */   nop
/* 34CA4 800340A4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 34CA8 800340A8 8D8E000C */  lw         $t6, 0xc($t4)
/* 34CAC 800340AC 8D8D0014 */  lw         $t5, 0x14($t4)
/* 34CB0 800340B0 000E7880 */  sll        $t7, $t6, 2
/* 34CB4 800340B4 01AFC021 */  addu       $t8, $t5, $t7
/* 34CB8 800340B8 8F190000 */  lw         $t9, ($t8)
/* 34CBC 800340BC AD790000 */  sw         $t9, ($t3)
.L800340C0:
/* 34CC0 800340C0 8FA80028 */  lw         $t0, 0x28($sp)
/* 34CC4 800340C4 8D09000C */  lw         $t1, 0xc($t0)
/* 34CC8 800340C8 8D0C0010 */  lw         $t4, 0x10($t0)
/* 34CCC 800340CC 252A0001 */  addiu      $t2, $t1, 1
/* 34CD0 800340D0 014C001A */  div        $zero, $t2, $t4
/* 34CD4 800340D4 00007010 */  mfhi       $t6
/* 34CD8 800340D8 AD0E000C */  sw         $t6, 0xc($t0)
/* 34CDC 800340DC 8FAD0028 */  lw         $t5, 0x28($sp)
/* 34CE0 800340E0 15800002 */  bnez       $t4, .L800340EC
/* 34CE4 800340E4 00000000 */   nop
/* 34CE8 800340E8 0007000D */  break      7
.L800340EC:
/* 34CEC 800340EC 2401FFFF */   addiu     $at, $zero, -1
/* 34CF0 800340F0 15810004 */  bne        $t4, $at, .L80034104
/* 34CF4 800340F4 3C018000 */   lui       $at, 0x8000
/* 34CF8 800340F8 15410002 */  bne        $t2, $at, .L80034104
/* 34CFC 800340FC 00000000 */   nop
/* 34D00 80034100 0006000D */  break      6
.L80034104:
/* 34D04 80034104 8DAF0008 */   lw        $t7, 8($t5)
/* 34D08 80034108 25F8FFFF */  addiu      $t8, $t7, -1
/* 34D0C 8003410C ADB80008 */  sw         $t8, 8($t5)
/* 34D10 80034110 8FB90028 */  lw         $t9, 0x28($sp)
/* 34D14 80034114 8F2B0004 */  lw         $t3, 4($t9)
/* 34D18 80034118 8D690000 */  lw         $t1, ($t3)
/* 34D1C 8003411C 11200006 */  beqz       $t1, .L80034138
/* 34D20 80034120 00000000 */   nop
/* 34D24 80034124 0C00F475 */  jal        __osPopThread
/* 34D28 80034128 27240004 */   addiu     $a0, $t9, 4
/* 34D2C 8003412C 00408825 */  or         $s1, $v0, $zero
/* 34D30 80034130 0C00CF0C */  jal        osStartThread
/* 34D34 80034134 02202025 */   or        $a0, $s1, $zero
.L80034138:
/* 34D38 80034138 0C00F53C */  jal        __osRestoreInt
/* 34D3C 8003413C 02002025 */   or        $a0, $s0, $zero
/* 34D40 80034140 00001025 */  or         $v0, $zero, $zero
.L80034144:
/* 34D44 80034144 8FBF001C */  lw         $ra, 0x1c($sp)
/* 34D48 80034148 8FB00014 */  lw         $s0, 0x14($sp)
/* 34D4C 8003414C 8FB10018 */  lw         $s1, 0x18($sp)
/* 34D50 80034150 03E00008 */  jr         $ra
/* 34D54 80034154 27BD0028 */   addiu     $sp, $sp, 0x28
/* 34D58 80034158 00000000 */  nop
/* 34D5C 8003415C 00000000 */  nop