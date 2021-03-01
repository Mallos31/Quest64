.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osStartThread
/* 34830 80033C30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 34834 80033C34 AFBF001C */  sw         $ra, 0x1c($sp)
/* 34838 80033C38 AFA40028 */  sw         $a0, 0x28($sp)
/* 3483C 80033C3C AFB10018 */  sw         $s1, 0x18($sp)
/* 34840 80033C40 0C00F534 */  jal        __osDisableInt
/* 34844 80033C44 AFB00014 */   sw        $s0, 0x14($sp)
/* 34848 80033C48 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3484C 80033C4C 24010001 */  addiu      $at, $zero, 1
/* 34850 80033C50 00408025 */  or         $s0, $v0, $zero
/* 34854 80033C54 95D10010 */  lhu        $s1, 0x10($t6)
/* 34858 80033C58 1221000C */  beq        $s1, $at, .L80033C8C
/* 3485C 80033C5C 24010008 */   addiu     $at, $zero, 8
/* 34860 80033C60 1621002A */  bne        $s1, $at, .L80033D0C
/* 34864 80033C64 00000000 */   nop
/* 34868 80033C68 8FB80028 */  lw         $t8, 0x28($sp)
/* 3486C 80033C6C 240F0002 */  addiu      $t7, $zero, 2
/* 34870 80033C70 3C048007 */  lui        $a0, %hi(__osRunQueue)
/* 34874 80033C74 A70F0010 */  sh         $t7, 0x10($t8)
/* 34878 80033C78 8FA50028 */  lw         $a1, 0x28($sp)
/* 3487C 80033C7C 0C00F463 */  jal        __osEnqueueThread
/* 34880 80033C80 248409F8 */   addiu     $a0, $a0, %lo(__osRunQueue)
/* 34884 80033C84 10000021 */  b          .L80033D0C
/* 34888 80033C88 00000000 */   nop
.L80033C8C:
/* 3488C 80033C8C 8FB90028 */  lw         $t9, 0x28($sp)
/* 34890 80033C90 8F280008 */  lw         $t0, 8($t9)
/* 34894 80033C94 11000005 */  beqz       $t0, .L80033CAC
/* 34898 80033C98 00000000 */   nop
/* 3489C 80033C9C 3C098007 */  lui        $t1, %hi(__osRunQueue)
/* 348A0 80033CA0 252909F8 */  addiu      $t1, $t1, %lo(__osRunQueue)
/* 348A4 80033CA4 1509000A */  bne        $t0, $t1, .L80033CD0
/* 348A8 80033CA8 00000000 */   nop
.L80033CAC:
/* 348AC 80033CAC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 348B0 80033CB0 240A0002 */  addiu      $t2, $zero, 2
/* 348B4 80033CB4 3C048007 */  lui        $a0, %hi(__osRunQueue)
/* 348B8 80033CB8 A56A0010 */  sh         $t2, 0x10($t3)
/* 348BC 80033CBC 8FA50028 */  lw         $a1, 0x28($sp)
/* 348C0 80033CC0 0C00F463 */  jal        __osEnqueueThread
/* 348C4 80033CC4 248409F8 */   addiu     $a0, $a0, %lo(__osRunQueue)
/* 348C8 80033CC8 10000010 */  b          .L80033D0C
/* 348CC 80033CCC 00000000 */   nop
.L80033CD0:
/* 348D0 80033CD0 8FAD0028 */  lw         $t5, 0x28($sp)
/* 348D4 80033CD4 240C0008 */  addiu      $t4, $zero, 8
/* 348D8 80033CD8 A5AC0010 */  sh         $t4, 0x10($t5)
/* 348DC 80033CDC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 348E0 80033CE0 8DC40008 */  lw         $a0, 8($t6)
/* 348E4 80033CE4 0C00F463 */  jal        __osEnqueueThread
/* 348E8 80033CE8 01C02825 */   or        $a1, $t6, $zero
/* 348EC 80033CEC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 348F0 80033CF0 0C00F475 */  jal        __osPopThread
/* 348F4 80033CF4 8DE40008 */   lw        $a0, 8($t7)
/* 348F8 80033CF8 00408825 */  or         $s1, $v0, $zero
/* 348FC 80033CFC 3C048007 */  lui        $a0, %hi(__osRunQueue)
/* 34900 80033D00 248409F8 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* 34904 80033D04 0C00F463 */  jal        __osEnqueueThread
/* 34908 80033D08 02202825 */   or        $a1, $s1, $zero
.L80033D0C:
/* 3490C 80033D0C 3C188007 */  lui        $t8, %hi(__osRunningThread)
/* 34910 80033D10 8F180A00 */  lw         $t8, %lo(__osRunningThread)($t8)
/* 34914 80033D14 17000005 */  bnez       $t8, .L80033D2C
/* 34918 80033D18 00000000 */   nop
/* 3491C 80033D1C 0C00F479 */  jal        __osDispatchThread
/* 34920 80033D20 00000000 */   nop
/* 34924 80033D24 1000000F */  b          .L80033D64
/* 34928 80033D28 00000000 */   nop
.L80033D2C:
/* 3492C 80033D2C 3C198007 */  lui        $t9, %hi(__osRunningThread)
/* 34930 80033D30 3C098007 */  lui        $t1, %hi(__osRunQueue)
/* 34934 80033D34 8D2909F8 */  lw         $t1, %lo(__osRunQueue)($t1)
/* 34938 80033D38 8F390A00 */  lw         $t9, %lo(__osRunningThread)($t9)
/* 3493C 80033D3C 8D2A0004 */  lw         $t2, 4($t1)
/* 34940 80033D40 8F280004 */  lw         $t0, 4($t9)
/* 34944 80033D44 010A082A */  slt        $at, $t0, $t2
/* 34948 80033D48 10200006 */  beqz       $at, .L80033D64
/* 3494C 80033D4C 00000000 */   nop
/* 34950 80033D50 240B0002 */  addiu      $t3, $zero, 2
/* 34954 80033D54 3C048007 */  lui        $a0, %hi(__osRunQueue)
/* 34958 80033D58 A72B0010 */  sh         $t3, 0x10($t9)
/* 3495C 80033D5C 0C00F423 */  jal        __osEnqueueAndYield
/* 34960 80033D60 248409F8 */   addiu     $a0, $a0, %lo(__osRunQueue)
.L80033D64:
/* 34964 80033D64 0C00F53C */  jal        __osRestoreInt
/* 34968 80033D68 02002025 */   or        $a0, $s0, $zero
/* 3496C 80033D6C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 34970 80033D70 8FB00014 */  lw         $s0, 0x14($sp)
/* 34974 80033D74 8FB10018 */  lw         $s1, 0x18($sp)
/* 34978 80033D78 03E00008 */  jr         $ra
/* 3497C 80033D7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel osCreatePiManager
/* 34980 80033D80 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 34984 80033D84 3C0E8007 */  lui        $t6, %hi(__osPiDevMgr)
/* 34988 80033D88 8DCEF420 */  lw         $t6, %lo(__osPiDevMgr)($t6)
/* 3498C 80033D8C AFBF001C */  sw         $ra, 0x1c($sp)
/* 34990 80033D90 AFA40030 */  sw         $a0, 0x30($sp)
/* 34994 80033D94 AFA50034 */  sw         $a1, 0x34($sp)
/* 34998 80033D98 AFA60038 */  sw         $a2, 0x38($sp)
/* 3499C 80033D9C 15C00056 */  bnez       $t6, .L80033EF8
/* 349A0 80033DA0 AFA7003C */   sw        $a3, 0x3c($sp)
/* 349A4 80033DA4 8FA40034 */  lw         $a0, 0x34($sp)
/* 349A8 80033DA8 8FA50038 */  lw         $a1, 0x38($sp)
/* 349AC 80033DAC 0C00CFC4 */  jal        osCreateMesgQueue
/* 349B0 80033DB0 8FA6003C */   lw        $a2, 0x3c($sp)
/* 349B4 80033DB4 3C048009 */  lui        $a0, %hi(piEventQueue)
/* 349B8 80033DB8 3C058009 */  lui        $a1, %hi(piEventBuf)
/* 349BC 80033DBC 24A53F18 */  addiu      $a1, $a1, %lo(piEventBuf)
/* 349C0 80033DC0 24843F00 */  addiu      $a0, $a0, %lo(piEventQueue)
/* 349C4 80033DC4 0C00CFC4 */  jal        osCreateMesgQueue
/* 349C8 80033DC8 24060001 */   addiu     $a2, $zero, 1
/* 349CC 80033DCC 3C0F8007 */  lui        $t7, %hi(__osSiAccessQueueEnabled)
/* 349D0 80033DD0 8DEF0A10 */  lw         $t7, %lo(__osSiAccessQueueEnabled)($t7)
/* 349D4 80033DD4 15E00003 */  bnez       $t7, .L80033DE4
/* 349D8 80033DD8 00000000 */   nop
/* 349DC 80033DDC 0C00F5D4 */  jal        __osSiCreateAccessQueue
/* 349E0 80033DE0 00000000 */   nop
.L80033DE4:
/* 349E4 80033DE4 3C058009 */  lui        $a1, %hi(piEventQueue)
/* 349E8 80033DE8 3C062222 */  lui        $a2, 0x2222
/* 349EC 80033DEC 34C62222 */  ori        $a2, $a2, 0x2222
/* 349F0 80033DF0 24A53F00 */  addiu      $a1, $a1, %lo(piEventQueue)
/* 349F4 80033DF4 0C00CFEC */  jal        osSetEventMesg
/* 349F8 80033DF8 24040008 */   addiu     $a0, $zero, 8
/* 349FC 80033DFC 2418FFFF */  addiu      $t8, $zero, -1
/* 34A00 80033E00 AFB80028 */  sw         $t8, 0x28($sp)
/* 34A04 80033E04 0C00F604 */  jal        osGetThreadPri
/* 34A08 80033E08 00002025 */   or        $a0, $zero, $zero
/* 34A0C 80033E0C AFA20024 */  sw         $v0, 0x24($sp)
/* 34A10 80033E10 8FB90024 */  lw         $t9, 0x24($sp)
/* 34A14 80033E14 8FA80030 */  lw         $t0, 0x30($sp)
/* 34A18 80033E18 0328082A */  slt        $at, $t9, $t0
/* 34A1C 80033E1C 10200005 */  beqz       $at, .L80033E34
/* 34A20 80033E20 00000000 */   nop
/* 34A24 80033E24 AFB90028 */  sw         $t9, 0x28($sp)
/* 34A28 80033E28 00002025 */  or         $a0, $zero, $zero
/* 34A2C 80033E2C 0C00F60C */  jal        osSetThreadPri
/* 34A30 80033E30 01002825 */   or        $a1, $t0, $zero
.L80033E34:
/* 34A34 80033E34 0C00F534 */  jal        __osDisableInt
/* 34A38 80033E38 00000000 */   nop
/* 34A3C 80033E3C 3C018007 */  lui        $at, 0x8007
/* 34A40 80033E40 8FAB0034 */  lw         $t3, 0x34($sp)
/* 34A44 80033E44 3C0A8009 */  lui        $t2, %hi(piThread)
/* 34A48 80033E48 3C0C8009 */  lui        $t4, %hi(piEventQueue)
/* 34A4C 80033E4C 24090001 */  addiu      $t1, $zero, 1
/* 34A50 80033E50 254A2D50 */  addiu      $t2, $t2, %lo(piThread)
/* 34A54 80033E54 258C3F00 */  addiu      $t4, $t4, %lo(piEventQueue)
/* 34A58 80033E58 AC29F420 */  sw         $t1, -0xbe0($at)
/* 34A5C 80033E5C AC2AF424 */  sw         $t2, -0xbdc($at)
/* 34A60 80033E60 AC2CF42C */  sw         $t4, -0xbd4($at)
/* 34A64 80033E64 3C188009 */  lui        $t8, 0x8009
/* 34A68 80033E68 AC2BF428 */  sw         $t3, -0xbd8($at)
/* 34A6C 80033E6C 8FA80030 */  lw         $t0, 0x30($sp)
/* 34A70 80033E70 3C018007 */  lui        $at, 0x8007
/* 34A74 80033E74 3C0D8009 */  lui        $t5, %hi(__osSiAccessQueue)
/* 34A78 80033E78 3C0E8004 */  lui        $t6, %hi(osPiRawStartDma)
/* 34A7C 80033E7C 3C0F8004 */  lui        $t7, %hi(osEPiRawStartDma)
/* 34A80 80033E80 27182F00 */  addiu      $t8, $t8, 0x2f00
/* 34A84 80033E84 25AD55E8 */  addiu      $t5, $t5, %lo(__osSiAccessQueue)
/* 34A88 80033E88 25CED910 */  addiu      $t6, $t6, %lo(osPiRawStartDma)
/* 34A8C 80033E8C 25EFD9F0 */  addiu      $t7, $t7, %lo(osEPiRawStartDma)
/* 34A90 80033E90 27191000 */  addiu      $t9, $t8, 0x1000
/* 34A94 80033E94 3C068004 */  lui        $a2, 0x8004
/* 34A98 80033E98 3C078007 */  lui        $a3, %hi(__osPiDevMgr)
/* 34A9C 80033E9C AFA2002C */  sw         $v0, 0x2c($sp)
/* 34AA0 80033EA0 AC2DF430 */  sw         $t5, -0xbd0($at)
/* 34AA4 80033EA4 AC2EF434 */  sw         $t6, -0xbcc($at)
/* 34AA8 80033EA8 AC2FF438 */  sw         $t7, -0xbc8($at)
/* 34AAC 80033EAC 24E7F420 */  addiu      $a3, $a3, %lo(__osPiDevMgr)
/* 34AB0 80033EB0 24C6DC20 */  addiu      $a2, $a2, -0x23e0
/* 34AB4 80033EB4 AFB90010 */  sw         $t9, 0x10($sp)
/* 34AB8 80033EB8 01402025 */  or         $a0, $t2, $zero
/* 34ABC 80033EBC 00002825 */  or         $a1, $zero, $zero
/* 34AC0 80033EC0 0C00CEB8 */  jal        osCreateThread
/* 34AC4 80033EC4 AFA80014 */   sw        $t0, 0x14($sp)
/* 34AC8 80033EC8 3C048009 */  lui        $a0, %hi(piThread)
/* 34ACC 80033ECC 0C00CF0C */  jal        osStartThread
/* 34AD0 80033ED0 24842D50 */   addiu     $a0, $a0, %lo(piThread)
/* 34AD4 80033ED4 0C00F53C */  jal        __osRestoreInt
/* 34AD8 80033ED8 8FA4002C */   lw        $a0, 0x2c($sp)
/* 34ADC 80033EDC 8FA90028 */  lw         $t1, 0x28($sp)
/* 34AE0 80033EE0 2401FFFF */  addiu      $at, $zero, -1
/* 34AE4 80033EE4 11210004 */  beq        $t1, $at, .L80033EF8
/* 34AE8 80033EE8 00000000 */   nop
/* 34AEC 80033EEC 00002025 */  or         $a0, $zero, $zero
/* 34AF0 80033EF0 0C00F60C */  jal        osSetThreadPri
/* 34AF4 80033EF4 01202825 */   or        $a1, $t1, $zero
.L80033EF8:
/* 34AF8 80033EF8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 34AFC 80033EFC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 34B00 80033F00 03E00008 */  jr         $ra
/* 34B04 80033F04 00000000 */   nop
/* 34B08 80033F08 00000000 */  nop
/* 34B0C 80033F0C 00000000 */  nop
