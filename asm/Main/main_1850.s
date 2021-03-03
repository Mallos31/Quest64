.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel gameMain
/* 1850 80000C50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1854 80000C54 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1858 80000C58 AFB30028 */  sw         $s3, 0x28($sp)
/* 185C 80000C5C AFB20024 */  sw         $s2, 0x24($sp)
/* 1860 80000C60 AFB10020 */  sw         $s1, 0x20($sp)
/* 1864 80000C64 AFB0001C */  sw         $s0, 0x1c($sp)
/* 1868 80000C68 AFA40030 */  sw         $a0, 0x30($sp)
/* 186C 80000C6C 0C00D210 */  jal        osCreateViManager
/* 1870 80000C70 240400FE */   addiu     $a0, $zero, 0xfe
/* 1874 80000C74 3C048008 */  lui        $a0, %hi(messageQueue)
/* 1878 80000C78 3C058008 */  lui        $a1, %hi(D_8007B338)
/* 187C 80000C7C 24A5B338 */  addiu      $a1, $a1, %lo(D_8007B338)
/* 1880 80000C80 2484B320 */  addiu      $a0, $a0, %lo(messageQueue)
/* 1884 80000C84 0C00CFC4 */  jal        osCreateMesgQueue
/* 1888 80000C88 24060001 */   addiu     $a2, $zero, 1
/* 188C 80000C8C 0C0091C1 */  jal        alUNKNOWN
/* 1890 80000C90 00000000 */   nop
/* 1894 80000C94 3C0E00E8 */  lui        $t6, 0xe8
/* 1898 80000C98 25CE1610 */  addiu      $t6, $t6, 0x1610
/* 189C 80000C9C 3C0400E8 */  lui        $a0, 0xe8
/* 18A0 80000CA0 3C0500E8 */  lui        $a1, 0xe8
/* 18A4 80000CA4 3C0600EC */  lui        $a2, 0xec
/* 18A8 80000CA8 3C0700EF */  lui        $a3, 0xef
/* 18AC 80000CAC 24E7E020 */  addiu      $a3, $a3, -0x1fe0
/* 18B0 80000CB0 24C6ABD0 */  addiu      $a2, $a2, -0x5430
/* 18B4 80000CB4 24A51610 */  addiu      $a1, $a1, 0x1610
/* 18B8 80000CB8 2484E800 */  addiu      $a0, $a0, -0x1800
/* 18BC 80000CBC 0C00944F */  jal        func_8002513C
/* 18C0 80000CC0 AFAE0010 */   sw        $t6, 0x10($sp)
/* 18C4 80000CC4 3C0400EF */  lui        $a0, 0xef
/* 18C8 80000CC8 3C0500EF */  lui        $a1, 0xef
/* 18CC 80000CCC 3C0600EF */  lui        $a2, 0xef
/* 18D0 80000CD0 24C6FCE0 */  addiu      $a2, $a2, -0x320
/* 18D4 80000CD4 24A5FCE0 */  addiu      $a1, $a1, -0x320
/* 18D8 80000CD8 0C009522 */  jal        func_80025488
/* 18DC 80000CDC 2484E020 */   addiu     $a0, $a0, -0x1fe0
/* 18E0 80000CE0 3C108008 */  lui        $s0, %hi(ptr_ThreadData)
/* 18E4 80000CE4 2610B358 */  addiu      $s0, $s0, %lo(ptr_ThreadData)
/* 18E8 80000CE8 02002025 */  or         $a0, $s0, $zero
/* 18EC 80000CEC 0C00014C */  jal        func_80000530
/* 18F0 80000CF0 24050001 */   addiu     $a1, $zero, 1
/* 18F4 80000CF4 0C00C4C0 */  jal        VOID_FUN_80031300
/* 18F8 80000CF8 00000000 */   nop
/* 18FC 80000CFC 3C0F8000 */  lui        $t7, %hi(osTvType)
/* 1900 80000D00 8DEF0300 */  lw         $t7, %lo(osTvType)($t7)
/* 1904 80000D04 24010001 */  addiu      $at, $zero, 1
/* 1908 80000D08 15E10005 */  bne        $t7, $at, .L80000D20
/* 190C 80000D0C 3C048007 */   lui       $a0, %hi(NTSC_VI_Mode)
/* 1910 80000D10 0C00D2E8 */  jal        osViSetMode
/* 1914 80000D14 2484F4F0 */   addiu     $a0, $a0, %lo(NTSC_VI_Mode)
/* 1918 80000D18 10000004 */  b          .L80000D2C
/* 191C 80000D1C 00000000 */   nop
.L80000D20:
/* 1920 80000D20 3C048007 */  lui        $a0, %hi(PAL_VI_Mode)
/* 1924 80000D24 0C00D2E8 */  jal        osViSetMode
/* 1928 80000D28 2484FDB0 */   addiu     $a0, $a0, %lo(PAL_VI_Mode)
.L80000D2C:
/* 192C 80000D2C 0C00D1B8 */  jal        osDestroyThread
/* 1930 80000D30 24040001 */   addiu     $a0, $zero, 1
/* 1934 80000D34 3C048009 */  lui        $a0, %hi(messageQueue)
/* 1938 80000D38 3C058008 */  lui        $a1, %hi(D_8007B3CC)
/* 193C 80000D3C 24A5B3CC */  addiu      $a1, $a1, %lo(D_8007B3CC)
/* 1940 80000D40 0C00C9C1 */  jal        func_80032704
/* 1944 80000D44 24842880 */   addiu     $a0, $a0, %lo(messageQueue)
/* 1948 80000D48 0C00D1B8 */  jal        osDestroyThread
/* 194C 80000D4C 24040001 */   addiu     $a0, $zero, 1
/* 1950 80000D50 0C00D304 */  jal        osViSetSpecialFeatures
/* 1954 80000D54 2404005A */   addiu     $a0, $zero, 0x5a
/* 1958 80000D58 0C00018B */  jal        func_8000062C
/* 195C 80000D5C 02002025 */   or        $a0, $s0, $zero
/* 1960 80000D60 0C00943A */  jal        func_800250E8
/* 1964 80000D64 02002025 */   or        $a0, $s0, $zero
/* 1968 80000D68 3C118008 */  lui        $s1, %hi(messageQueue)
/* 196C 80000D6C 2631B9E8 */  addiu      $s1, $s1, %lo(messageQueue)
/* 1970 80000D70 3C058008 */  lui        $a1, %hi(D_8007BA00)
/* 1974 80000D74 24A5BA00 */  addiu      $a1, $a1, %lo(D_8007BA00)
/* 1978 80000D78 02202025 */  or         $a0, $s1, $zero
/* 197C 80000D7C 0C00CFC4 */  jal        osCreateMesgQueue
/* 1980 80000D80 24060008 */   addiu     $a2, $zero, 8
/* 1984 80000D84 3C058008 */  lui        $a1, %hi(D_8007B9E0)
/* 1988 80000D88 24A5B9E0 */  addiu      $a1, $a1, %lo(D_8007B9E0)
/* 198C 80000D8C 02002025 */  or         $a0, $s0, $zero
/* 1990 80000D90 0C0001F5 */  jal        osScAddClient
/* 1994 80000D94 02203025 */   or        $a2, $s1, $zero
/* 1998 80000D98 0C0001C1 */  jal        Add_0x3C
/* 199C 80000D9C 02002025 */   or        $a0, $s0, $zero
/* 19A0 80000DA0 3C018008 */  lui        $at, %hi(D_8007B9D8)
/* 19A4 80000DA4 0C0003FA */  jal        loadSpiritsSpells&Hud
/* 19A8 80000DA8 AC22B9D8 */   sw        $v0, %lo(D_8007B9D8)($at)
/* 19AC 80000DAC 3C128008 */  lui        $s2, %hi(GameMode)
/* 19B0 80000DB0 3C108008 */  lui        $s0, %hi(HUDState)
/* 19B4 80000DB4 2610B2E4 */  addiu      $s0, $s0, %lo(HUDState)
/* 19B8 80000DB8 2652B2E0 */  addiu      $s2, $s2, %lo(GameMode)
/* 19BC 80000DBC 24130001 */  addiu      $s3, $zero, 1
/* 19C0 80000DC0 2411FFFC */  addiu      $s1, $zero, -4
.L80000DC4:
/* 19C4 80000DC4 0C002D48 */  jal        initSomeBossAddress
/* 19C8 80000DC8 00000000 */   nop
/* 19CC 80000DCC 0C0046D0 */  jal        initUnknownBossData
/* 19D0 80000DD0 00000000 */   nop
/* 19D4 80000DD4 0C00487C */  jal        reset_86aec_86af7
/* 19D8 80000DD8 00000000 */   nop
/* 19DC 80000DDC 0C0009F4 */  jal        SetDataForNewGame
/* 19E0 80000DE0 00000000 */   nop
/* 19E4 80000DE4 0C00845C */  jal        initInventory
/* 19E8 80000DE8 00000000 */   nop
/* 19EC 80000DEC 0C004034 */  jal        initLights&Fog
/* 19F0 80000DF0 00000000 */   nop
/* 19F4 80000DF4 0C00C396 */  jal        loadTextRes
/* 19F8 80000DF8 00000000 */   nop
/* 19FC 80000DFC 0C00997C */  jal        initBGM
/* 1A00 80000E00 00000000 */   nop
/* 1A04 80000E04 0C0003BB */  jal        setupNewGame
/* 1A08 80000E08 00000000 */   nop
/* 1A0C 80000E0C 0C009A90 */  jal        VOID_FUN_80026a40
/* 1A10 80000E10 00000000 */   nop
/* 1A14 80000E14 8E030000 */  lw         $v1, ($s0)
/* 1A18 80000E18 96420000 */  lhu        $v0, ($s2)
.L80000E1C:
/* 1A1C 80000E1C 0071C024 */  and        $t8, $v1, $s1
/* 1A20 80000E20 14400003 */  bnez       $v0, .L80000E30
/* 1A24 80000E24 AE180000 */   sw        $t8, ($s0)
/* 1A28 80000E28 A6530000 */  sh         $s3, ($s2)
/* 1A2C 80000E2C 3262FFFF */  andi       $v0, $s3, 0xffff
.L80000E30:
/* 1A30 80000E30 2459FFFF */  addiu      $t9, $v0, -1
/* 1A34 80000E34 2F210005 */  sltiu      $at, $t9, 5
/* 1A38 80000E38 10200018 */  beqz       $at, .L80000E9C
/* 1A3C 80000E3C 0019C880 */   sll       $t9, $t9, 2
/* 1A40 80000E40 3C018007 */  lui        $at, %hi(D_80070EF0)
/* 1A44 80000E44 00390821 */  addu       $at, $at, $t9
/* 1A48 80000E48 8C390EF0 */  lw         $t9, %lo(D_80070EF0)($at)
/* 1A4C 80000E4C 03200008 */  jr         $t9
/* 1A50 80000E50 00000000 */   nop
/* 1A54 80000E54 0C000600 */  jal        Mode_NormalPlay
/* 1A58 80000E58 00000000 */   nop
/* 1A5C 80000E5C 10000010 */  b          .L80000EA0
/* 1A60 80000E60 8E030000 */   lw        $v1, ($s0)
/* 1A64 80000E64 0C00082D */  jal        Mode_Pause&SaveMenu
/* 1A68 80000E68 00000000 */   nop
/* 1A6C 80000E6C 1000000C */  b          .L80000EA0
/* 1A70 80000E70 8E030000 */   lw        $v1, ($s0)
/* 1A74 80000E74 0C00089F */  jal        Mode_TitleScreen
/* 1A78 80000E78 00000000 */   nop
/* 1A7C 80000E7C 10000008 */  b          .L80000EA0
/* 1A80 80000E80 8E030000 */   lw        $v1, ($s0)
/* 1A84 80000E84 0C00090A */  jal        Mode_OPCredits&Story
/* 1A88 80000E88 00000000 */   nop
/* 1A8C 80000E8C 10000004 */  b          .L80000EA0
/* 1A90 80000E90 8E030000 */   lw        $v1, ($s0)
/* 1A94 80000E94 0C00097A */  jal        Mode_EndCredits
/* 1A98 80000E98 00000000 */   nop
.L80000E9C:
/* 1A9C 80000E9C 8E030000 */  lw         $v1, ($s0)
.L80000EA0:
/* 1AA0 80000EA0 30688000 */  andi       $t0, $v1, 0x8000
/* 1AA4 80000EA4 1500FFC7 */  bnez       $t0, .L80000DC4
/* 1AA8 80000EA8 00000000 */   nop
/* 1AAC 80000EAC 1000FFDB */  b          .L80000E1C
/* 1AB0 80000EB0 96420000 */   lhu       $v0, ($s2)
/* 1AB4 80000EB4 00000000 */  nop
/* 1AB8 80000EB8 00000000 */  nop
/* 1ABC 80000EBC 00000000 */  nop
/* 1AC0 80000EC0 00000000 */  nop
/* 1AC4 80000EC4 00000000 */  nop
/* 1AC8 80000EC8 00000000 */  nop
/* 1ACC 80000ECC 00000000 */  nop
/* 1AD0 80000ED0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1AD4 80000ED4 8FB0001C */  lw         $s0, 0x1c($sp)
/* 1AD8 80000ED8 8FB10020 */  lw         $s1, 0x20($sp)
/* 1ADC 80000EDC 8FB20024 */  lw         $s2, 0x24($sp)
/* 1AE0 80000EE0 8FB30028 */  lw         $s3, 0x28($sp)
/* 1AE4 80000EE4 03E00008 */  jr         $ra
/* 1AE8 80000EE8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel setupNewGame
/* 1AEC 80000EEC 44800000 */  mtc1       $zero, $f0
/* 1AF0 80000EF0 2402FFFF */  addiu      $v0, $zero, -1
/* 1AF4 80000EF4 240E0160 */  addiu      $t6, $zero, 0x160
/* 1AF8 80000EF8 3C018008 */  lui        $at, %hi(HUDState)
/* 1AFC 80000EFC AC2EB2E4 */  sw         $t6, %lo(HUDState)($at)
/* 1B00 80000F00 3C018008 */  lui        $at, %hi(GameMode)
/* 1B04 80000F04 240F0004 */  addiu      $t7, $zero, 4
/* 1B08 80000F08 A42FB2E0 */  sh         $t7, %lo(GameMode)($at)
/* 1B0C 80000F0C 3C018008 */  lui        $at, %hi(nextMap)
/* 1B10 80000F10 AC224EE4 */  sw         $v0, %lo(nextMap)($at)
/* 1B14 80000F14 3C018008 */  lui        $at, %hi(saveMap_)
/* 1B18 80000F18 AC224EF8 */  sw         $v0, %lo(saveMap_)($at)
/* 1B1C 80000F1C 3C018008 */  lui        $at, %hi(UNK_CurrentMapTemp2)
/* 1B20 80000F20 AC224F04 */  sw         $v0, %lo(UNK_CurrentMapTemp2)($at)
/* 1B24 80000F24 3C018008 */  lui        $at, %hi(D_80084F14)
/* 1B28 80000F28 3418FFFF */  ori        $t8, $zero, 0xffff
/* 1B2C 80000F2C A4384F14 */  sh         $t8, %lo(D_80084F14)($at)
/* 1B30 80000F30 3C018008 */  lui        $at, %hi(D_80086E44)
/* 1B34 80000F34 E4206E44 */  swc1       $f0, %lo(D_80086E44)($at)
/* 1B38 80000F38 3C018008 */  lui        $at, %hi(D_800859E2)
/* 1B3C 80000F3C A42059E2 */  sh         $zero, %lo(D_800859E2)($at)
/* 1B40 80000F40 3C018008 */  lui        $at, %hi(CurrentMap)
/* 1B44 80000F44 2419000D */  addiu      $t9, $zero, 0xd
/* 1B48 80000F48 AC394EEC */  sw         $t9, %lo(CurrentMap)($at)
/* 1B4C 80000F4C 3C018008 */  lui        $at, %hi(CurrentSubmap)
/* 1B50 80000F50 24080011 */  addiu      $t0, $zero, 0x11
/* 1B54 80000F54 AC284EF0 */  sw         $t0, %lo(CurrentSubmap)($at)
/* 1B58 80000F58 3C018008 */  lui        $at, %hi(LastExitID)
/* 1B5C 80000F5C AC225370 */  sw         $v0, %lo(LastExitID)($at)
/* 1B60 80000F60 3C018008 */  lui        $at, %hi(MapToLoad)
/* 1B64 80000F64 2409000D */  addiu      $t1, $zero, 0xd
/* 1B68 80000F68 A429BA60 */  sh         $t1, %lo(MapToLoad)($at)
/* 1B6C 80000F6C 3C018008 */  lui        $at, %hi(SubmapToLoad)
/* 1B70 80000F70 240A0011 */  addiu      $t2, $zero, 0x11
/* 1B74 80000F74 A42ABA62 */  sh         $t2, %lo(SubmapToLoad)($at)
/* 1B78 80000F78 3C018008 */  lui        $at, %hi(LastExit)
/* 1B7C 80000F7C A420BA64 */  sh         $zero, %lo(LastExit)($at)
/* 1B80 80000F80 3C01C1D0 */  lui        $at, 0xc1d0
/* 1B84 80000F84 44812000 */  mtc1       $at, $f4
/* 1B88 80000F88 3C018008 */  lui        $at, %hi(brianXPosToLoad)
/* 1B8C 80000F8C 240B0108 */  addiu      $t3, $zero, 0x108
/* 1B90 80000F90 E424BA40 */  swc1       $f4, %lo(brianXPosToLoad)($at)
/* 1B94 80000F94 3C018008 */  lui        $at, %hi(brianYPosToLoad)
/* 1B98 80000F98 E420BA44 */  swc1       $f0, %lo(brianYPosToLoad)($at)
/* 1B9C 80000F9C 3C018007 */  lui        $at, %hi(D_80070F04)
/* 1BA0 80000FA0 C4260F04 */  lwc1       $f6, %lo(D_80070F04)($at)
/* 1BA4 80000FA4 3C018008 */  lui        $at, %hi(brianZPosToLoad)
/* 1BA8 80000FA8 240C0001 */  addiu      $t4, $zero, 1
/* 1BAC 80000FAC E426BA48 */  swc1       $f6, %lo(brianZPosToLoad)($at)
/* 1BB0 80000FB0 3C018008 */  lui        $at, %hi(brianExitAnim)
/* 1BB4 80000FB4 AC2BBA4C */  sw         $t3, %lo(brianExitAnim)($at)
/* 1BB8 80000FB8 3C018008 */  lui        $at, %hi(brianAnimationOverride_UNUSED)
/* 1BBC 80000FBC A420BABE */  sh         $zero, %lo(brianAnimationOverride_UNUSED)($at)
/* 1BC0 80000FC0 3C018008 */  lui        $at, %hi(cutsceneNum)
/* 1BC4 80000FC4 A42CB2E8 */  sh         $t4, %lo(cutsceneNum)($at)
/* 1BC8 80000FC8 3C018008 */  lui        $at, %hi(fadeType)
/* 1BCC 80000FCC A420B2F0 */  sh         $zero, %lo(fadeType)($at)
/* 1BD0 80000FD0 3C018008 */  lui        $at, %hi(TitleScreenOption)
/* 1BD4 80000FD4 A020B344 */  sb         $zero, %lo(TitleScreenOption)($at)
/* 1BD8 80000FD8 3C018008 */  lui        $at, %hi(D_8007B345)
/* 1BDC 80000FDC A020B345 */  sb         $zero, %lo(D_8007B345)($at)
/* 1BE0 80000FE0 03E00008 */  jr         $ra
/* 1BE4 80000FE4 00000000 */   nop

glabel loadSpiritsSpells&Hud
/* 1BE8 80000FE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1BEC 80000FEC 3C040007 */  lui        $a0, 7
/* 1BF0 80000FF0 24843A90 */  addiu      $a0, $a0, 0x3a90
/* 1BF4 80000FF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1BF8 80000FF8 3C0E0007 */  lui        $t6, 7
/* 1BFC 80000FFC 25CE7560 */  addiu      $t6, $t6, 0x7560
/* 1C00 80001000 3C058009 */  lui        $a1, %hi(virt_spiritData)
/* 1C04 80001004 24A56850 */  addiu      $a1, $a1, %lo(virt_spiritData)
/* 1C08 80001008 0C009098 */  jal        loadData
/* 1C0C 8000100C 01C43023 */   subu      $a2, $t6, $a0
/* 1C10 80001010 3C0400D5 */  lui        $a0, 0xd5
/* 1C14 80001014 3C0F8009 */  lui        $t7, %hi(virt_spiritData)
/* 1C18 80001018 3C1800D7 */  lui        $t8, 0xd7
/* 1C1C 8000101C 2484B3C0 */  addiu      $a0, $a0, -0x4c40
/* 1C20 80001020 25EF6850 */  addiu      $t7, $t7, %lo(virt_spiritData)
/* 1C24 80001024 3C018008 */  lui        $at, %hi(spiritData)
/* 1C28 80001028 27187380 */  addiu      $t8, $t8, 0x7380
/* 1C2C 8000102C 3C05800C */  lui        $a1, %hi(virt_SpellData)
/* 1C30 80001030 AC2FB350 */  sw         $t7, %lo(spiritData)($at)
/* 1C34 80001034 24A50000 */  addiu      $a1, $a1, %lo(virt_SpellData)
/* 1C38 80001038 0C009098 */  jal        loadData
/* 1C3C 8000103C 03043023 */   subu      $a2, $t8, $a0
/* 1C40 80001040 3C0400D7 */  lui        $a0, 0xd7
/* 1C44 80001044 3C1900D9 */  lui        $t9, 0xd9
/* 1C48 80001048 24847380 */  addiu      $a0, $a0, 0x7380
/* 1C4C 8000104C 273984F0 */  addiu      $t9, $t9, -0x7b10
/* 1C50 80001050 3C05803A */  lui        $a1, %hi(virtHud&MenuDL)
/* 1C54 80001054 24A59AB0 */  addiu      $a1, $a1, %lo(virtHud&MenuDL)
/* 1C58 80001058 0C009098 */  jal        loadData
/* 1C5C 8000105C 03243023 */   subu      $a2, $t9, $a0
/* 1C60 80001060 3C048030 */  lui        $a0, %hi(gfxData)
/* 1C64 80001064 24841000 */  addiu      $a0, $a0, %lo(gfxData)
/* 1C68 80001068 3C09803B */  lui        $t1, %hi(D_803B5000)
/* 1C6C 8000106C 24817FFF */  addiu      $at, $a0, 0x7fff
/* 1C70 80001070 24080002 */  addiu      $t0, $zero, 2
/* 1C74 80001074 25295000 */  addiu      $t1, $t1, %lo(D_803B5000)
/* 1C78 80001078 A4285149 */  sh         $t0, 0x5149($at)
/* 1C7C 8000107C 0C000447 */  jal        writeSomeHeader_
/* 1C80 80001080 AC29514D */   sw        $t1, 0x514d($at)
/* 1C84 80001084 3C028031 */  lui        $v0, %hi(D_80309000)
/* 1C88 80001088 24429000 */  addiu      $v0, $v0, %lo(D_80309000)
/* 1C8C 8000108C 3C010001 */  lui        $at, 1
/* 1C90 80001090 00220821 */  addu       $at, $at, $v0
/* 1C94 80001094 240A0002 */  addiu      $t2, $zero, 2
/* 1C98 80001098 A42A2298 */  sh         $t2, 0x2298($at)
/* 1C9C 8000109C 3C010001 */  lui        $at, 1
/* 1CA0 800010A0 3C0B803E */  lui        $t3, %hi(D_803DA800)
/* 1CA4 800010A4 256BA800 */  addiu      $t3, $t3, %lo(D_803DA800)
/* 1CA8 800010A8 00220821 */  addu       $at, $at, $v0
/* 1CAC 800010AC 3C048031 */  lui        $a0, %hi(gfxData2)
/* 1CB0 800010B0 AC2B229C */  sw         $t3, 0x229c($at)
/* 1CB4 800010B4 0C000447 */  jal        writeSomeHeader_
/* 1CB8 800010B8 2484E150 */   addiu     $a0, $a0, %lo(gfxData2)
/* 1CBC 800010BC 3C018008 */  lui        $at, %hi(gfxDataBankSwitch)
/* 1CC0 800010C0 3C040001 */  lui        $a0, 1
/* 1CC4 800010C4 3C03803B */  lui        $v1, %hi(D_803B5000)
/* 1CC8 800010C8 3C02803E */  lui        $v0, %hi(D_803DA800)
/* 1CCC 800010CC AC20B2F4 */  sw         $zero, %lo(gfxDataBankSwitch)($at)
/* 1CD0 800010D0 34842C00 */  ori        $a0, $a0, 0x2c00
/* 1CD4 800010D4 24635000 */  addiu      $v1, $v1, %lo(D_803B5000)
/* 1CD8 800010D8 2442A800 */  addiu      $v0, $v0, %lo(D_803DA800)
.L800010DC:
/* 1CDC 800010DC A4400000 */  sh         $zero, ($v0)
/* 1CE0 800010E0 A4600000 */  sh         $zero, ($v1)
/* 1CE4 800010E4 A4400002 */  sh         $zero, 2($v0)
/* 1CE8 800010E8 A4600002 */  sh         $zero, 2($v1)
/* 1CEC 800010EC A4400004 */  sh         $zero, 4($v0)
/* 1CF0 800010F0 A4600004 */  sh         $zero, 4($v1)
/* 1CF4 800010F4 A4400006 */  sh         $zero, 6($v0)
/* 1CF8 800010F8 2484FFFC */  addiu      $a0, $a0, -4
/* 1CFC 800010FC A4600006 */  sh         $zero, 6($v1)
/* 1D00 80001100 24630008 */  addiu      $v1, $v1, 8
/* 1D04 80001104 1480FFF5 */  bnez       $a0, .L800010DC
/* 1D08 80001108 24420008 */   addiu     $v0, $v0, 8
/* 1D0C 8000110C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D10 80001110 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D14 80001114 03E00008 */  jr         $ra
/* 1D18 80001118 00000000 */   nop

glabel writeSomeHeader_
/* 1D1C 8000111C 3C028005 */  lui        $v0, %hi(D_80049EF0)
/* 1D20 80001120 24429EF0 */  addiu      $v0, $v0, %lo(D_80049EF0)
/* 1D24 80001124 3C0F8005 */  lui        $t7, %hi(D_80049FC0)
/* 1D28 80001128 25EF9FC0 */  addiu      $t7, $t7, %lo(D_80049FC0)
/* 1D2C 8000112C 3C198005 */  lui        $t9, %hi(D_80049FC0)
/* 1D30 80001130 240E0001 */  addiu      $t6, $zero, 1
/* 1D34 80001134 01E2C023 */  subu       $t8, $t7, $v0
/* 1D38 80001138 27399FC0 */  addiu      $t9, $t9, %lo(D_80049FC0)
/* 1D3C 8000113C 3C088007 */  lui        $t0, %hi(D_800723D0)
/* 1D40 80001140 AC8E0010 */  sw         $t6, 0x10($a0)
/* 1D44 80001144 AC990020 */  sw         $t9, 0x20($a0)
/* 1D48 80001148 250823D0 */  addiu      $t0, $t0, %lo(D_800723D0)
/* 1D4C 8000114C AC98001C */  sw         $t8, 0x1c($a0)
/* 1D50 80001150 AC880028 */  sw         $t0, 0x28($a0)
/* 1D54 80001154 24090800 */  addiu      $t1, $zero, 0x800
/* 1D58 80001158 3C0A8030 */  lui        $t2, 0x8030
/* 1D5C 8000115C 3C0C8032 */  lui        $t4, 0x8032
/* 1D60 80001160 3C0D8032 */  lui        $t5, 0x8032
/* 1D64 80001164 3C0E8030 */  lui        $t6, 0x8030
/* 1D68 80001168 3C198008 */  lui        $t9, 0x8008
/* 1D6C 8000116C 3401D148 */  ori        $at, $zero, 0xd148
/* 1D70 80001170 AC89002C */  sw         $t1, 0x2c($a0)
/* 1D74 80001174 254A0000 */  addiu      $t2, $t2, 0
/* 1D78 80001178 240B0400 */  addiu      $t3, $zero, 0x400
/* 1D7C 8000117C 258CB2A0 */  addiu      $t4, $t4, -0x4d60
/* 1D80 80001180 25AD32A0 */  addiu      $t5, $t5, 0x32a0
/* 1D84 80001184 25CE0400 */  addiu      $t6, $t6, 0x400
/* 1D88 80001188 240F0C00 */  addiu      $t7, $zero, 0xc00
/* 1D8C 8000118C 24180040 */  addiu      $t8, $zero, 0x40
/* 1D90 80001190 2739B9E8 */  addiu      $t9, $t9, -0x4618
/* 1D94 80001194 00814021 */  addu       $t0, $a0, $at
/* 1D98 80001198 AC800014 */  sw         $zero, 0x14($a0)
/* 1D9C 8000119C AC820018 */  sw         $v0, 0x18($a0)
/* 1DA0 800011A0 AC8A0030 */  sw         $t2, 0x30($a0)
/* 1DA4 800011A4 AC8B0034 */  sw         $t3, 0x34($a0)
/* 1DA8 800011A8 AC8C0038 */  sw         $t4, 0x38($a0)
/* 1DAC 800011AC AC8D003C */  sw         $t5, 0x3c($a0)
/* 1DB0 800011B0 AC8E0048 */  sw         $t6, 0x48($a0)
/* 1DB4 800011B4 AC8F004C */  sw         $t7, 0x4c($a0)
/* 1DB8 800011B8 AC800000 */  sw         $zero, ($a0)
/* 1DBC 800011BC AC980008 */  sw         $t8, 8($a0)
/* 1DC0 800011C0 AC990050 */  sw         $t9, 0x50($a0)
/* 1DC4 800011C4 AC880054 */  sw         $t0, 0x54($a0)
/* 1DC8 800011C8 24897FFF */  addiu      $t1, $a0, 0x7fff
/* 1DCC 800011CC 8D29514D */  lw         $t1, 0x514d($t1)
/* 1DD0 800011D0 AC89000C */  sw         $t1, 0xc($a0)
/* 1DD4 800011D4 03E00008 */  jr         $ra
/* 1DD8 800011D8 00000000 */   nop

glabel graphicsMain
/* 1DDC 800011DC 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 1DE0 800011E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1DE4 800011E4 3C108008 */  lui        $s0, %hi(UNK_DisplayListCommand)
/* 1DE8 800011E8 2610B2FC */  addiu      $s0, $s0, %lo(UNK_DisplayListCommand)
/* 1DEC 800011EC AFBF001C */  sw         $ra, 0x1c($sp)
/* 1DF0 800011F0 AFA40088 */  sw         $a0, 0x88($sp)
/* 1DF4 800011F4 8FAE0088 */  lw         $t6, 0x88($sp)
/* 1DF8 800011F8 34018148 */  ori        $at, $zero, 0x8148
/* 1DFC 800011FC 3C0DBC00 */  lui        $t5, 0xbc00
/* 1E00 80001200 01C17821 */  addu       $t7, $t6, $at
/* 1E04 80001204 AE0F0000 */  sw         $t7, ($s0)
/* 1E08 80001208 8E030000 */  lw         $v1, ($s0)
/* 1E0C 8000120C 3C19BC00 */  lui        $t9, 0xbc00
/* 1E10 80001210 37390006 */  ori        $t9, $t9, 6
/* 1E14 80001214 24780008 */  addiu      $t8, $v1, 8
/* 1E18 80001218 AE180000 */  sw         $t8, ($s0)
/* 1E1C 8000121C AC600004 */  sw         $zero, 4($v1)
/* 1E20 80001220 AC790000 */  sw         $t9, ($v1)
/* 1E24 80001224 8E030000 */  lw         $v1, ($s0)
/* 1E28 80001228 35AD0406 */  ori        $t5, $t5, 0x406
/* 1E2C 8000122C 3C048008 */  lui        $a0, %hi(spiritData)
/* 1E30 80001230 246C0008 */  addiu      $t4, $v1, 8
/* 1E34 80001234 AE0C0000 */  sw         $t4, ($s0)
/* 1E38 80001238 AC6D0000 */  sw         $t5, ($v1)
/* 1E3C 8000123C 8C84B350 */  lw         $a0, %lo(spiritData)($a0)
/* 1E40 80001240 0C00D374 */  jal        osVirtualToPhysical
/* 1E44 80001244 AFA30074 */   sw        $v1, 0x74($sp)
/* 1E48 80001248 8FA50074 */  lw         $a1, 0x74($sp)
/* 1E4C 8000124C ACA20004 */  sw         $v0, 4($a1)
/* 1E50 80001250 8E030000 */  lw         $v1, ($s0)
/* 1E54 80001254 3C0FBC00 */  lui        $t7, 0xbc00
/* 1E58 80001258 35EF0806 */  ori        $t7, $t7, 0x806
/* 1E5C 8000125C 246E0008 */  addiu      $t6, $v1, 8
/* 1E60 80001260 AE0E0000 */  sw         $t6, ($s0)
/* 1E64 80001264 AC6F0000 */  sw         $t7, ($v1)
/* 1E68 80001268 8FA40088 */  lw         $a0, 0x88($sp)
/* 1E6C 8000126C AFA30070 */  sw         $v1, 0x70($sp)
/* 1E70 80001270 24840058 */  addiu      $a0, $a0, 0x58
/* 1E74 80001274 0C00D374 */  jal        osVirtualToPhysical
/* 1E78 80001278 AFA40024 */   sw        $a0, 0x24($sp)
/* 1E7C 8000127C 8FA60070 */  lw         $a2, 0x70($sp)
/* 1E80 80001280 3C190600 */  lui        $t9, 0x600
/* 1E84 80001284 3C0EFE00 */  lui        $t6, 0xfe00
/* 1E88 80001288 ACC20004 */  sw         $v0, 4($a2)
/* 1E8C 8000128C 8E030000 */  lw         $v1, ($s0)
/* 1E90 80001290 3C0C0100 */  lui        $t4, 0x100
/* 1E94 80001294 258C0010 */  addiu      $t4, $t4, 0x10
/* 1E98 80001298 24780008 */  addiu      $t8, $v1, 8
/* 1E9C 8000129C AE180000 */  sw         $t8, ($s0)
/* 1EA0 800012A0 AC6C0004 */  sw         $t4, 4($v1)
/* 1EA4 800012A4 AC790000 */  sw         $t9, ($v1)
/* 1EA8 800012A8 8E030000 */  lw         $v1, ($s0)
/* 1EAC 800012AC 3C04802E */  lui        $a0, %hi(D_802DA800)
/* 1EB0 800012B0 2484A800 */  addiu      $a0, $a0, %lo(D_802DA800)
/* 1EB4 800012B4 246D0008 */  addiu      $t5, $v1, 8
/* 1EB8 800012B8 AE0D0000 */  sw         $t5, ($s0)
/* 1EBC 800012BC AC6E0000 */  sw         $t6, ($v1)
/* 1EC0 800012C0 0C00D374 */  jal        osVirtualToPhysical
/* 1EC4 800012C4 AFA30068 */   sw        $v1, 0x68($sp)
/* 1EC8 800012C8 8FA70068 */  lw         $a3, 0x68($sp)
/* 1ECC 800012CC 3C0CBA00 */  lui        $t4, 0xba00
/* 1ED0 800012D0 3C04802E */  lui        $a0, %hi(D_802DA800)
/* 1ED4 800012D4 ACE20004 */  sw         $v0, 4($a3)
/* 1ED8 800012D8 8E030000 */  lw         $v1, ($s0)
/* 1EDC 800012DC 3C18E700 */  lui        $t8, 0xe700
/* 1EE0 800012E0 2484A800 */  addiu      $a0, $a0, %lo(D_802DA800)
/* 1EE4 800012E4 246F0008 */  addiu      $t7, $v1, 8
/* 1EE8 800012E8 AE0F0000 */  sw         $t7, ($s0)
/* 1EEC 800012EC AC600004 */  sw         $zero, 4($v1)
/* 1EF0 800012F0 AC780000 */  sw         $t8, ($v1)
/* 1EF4 800012F4 8E030000 */  lw         $v1, ($s0)
/* 1EF8 800012F8 358C1402 */  ori        $t4, $t4, 0x1402
/* 1EFC 800012FC 3C0D0030 */  lui        $t5, 0x30
/* 1F00 80001300 24790008 */  addiu      $t9, $v1, 8
/* 1F04 80001304 AE190000 */  sw         $t9, ($s0)
/* 1F08 80001308 AC6D0004 */  sw         $t5, 4($v1)
/* 1F0C 8000130C AC6C0000 */  sw         $t4, ($v1)
/* 1F10 80001310 8E030000 */  lw         $v1, ($s0)
/* 1F14 80001314 3C0FFF10 */  lui        $t7, 0xff10
/* 1F18 80001318 35EF013F */  ori        $t7, $t7, 0x13f
/* 1F1C 8000131C 246E0008 */  addiu      $t6, $v1, 8
/* 1F20 80001320 AE0E0000 */  sw         $t6, ($s0)
/* 1F24 80001324 AC6F0000 */  sw         $t7, ($v1)
/* 1F28 80001328 0C00D374 */  jal        osVirtualToPhysical
/* 1F2C 8000132C AFA3005C */   sw        $v1, 0x5c($sp)
/* 1F30 80001330 8FA8005C */  lw         $t0, 0x5c($sp)
/* 1F34 80001334 3C19F700 */  lui        $t9, 0xf700
/* 1F38 80001338 3C0EF64D */  lui        $t6, 0xf64d
/* 1F3C 8000133C AD020004 */  sw         $v0, 4($t0)
/* 1F40 80001340 8E030000 */  lw         $v1, ($s0)
/* 1F44 80001344 3C0CFFFC */  lui        $t4, 0xfffc
/* 1F48 80001348 358CFFFC */  ori        $t4, $t4, 0xfffc
/* 1F4C 8000134C 24780008 */  addiu      $t8, $v1, 8
/* 1F50 80001350 AE180000 */  sw         $t8, ($s0)
/* 1F54 80001354 AC6C0004 */  sw         $t4, 4($v1)
/* 1F58 80001358 AC790000 */  sw         $t9, ($v1)
/* 1F5C 8000135C 8E030000 */  lw         $v1, ($s0)
/* 1F60 80001360 3C0F0002 */  lui        $t7, 2
/* 1F64 80001364 35EF0020 */  ori        $t7, $t7, 0x20
/* 1F68 80001368 246D0008 */  addiu      $t5, $v1, 8
/* 1F6C 8000136C AE0D0000 */  sw         $t5, ($s0)
/* 1F70 80001370 35CEC39C */  ori        $t6, $t6, 0xc39c
/* 1F74 80001374 AC6E0000 */  sw         $t6, ($v1)
/* 1F78 80001378 AC6F0004 */  sw         $t7, 4($v1)
/* 1F7C 8000137C 8E030000 */  lw         $v1, ($s0)
/* 1F80 80001380 3C19E700 */  lui        $t9, 0xe700
/* 1F84 80001384 24780008 */  addiu      $t8, $v1, 8
/* 1F88 80001388 AE180000 */  sw         $t8, ($s0)
/* 1F8C 8000138C AC600004 */  sw         $zero, 4($v1)
/* 1F90 80001390 AC790000 */  sw         $t9, ($v1)
/* 1F94 80001394 8E030000 */  lw         $v1, ($s0)
/* 1F98 80001398 3C0DFF10 */  lui        $t5, 0xff10
/* 1F9C 8000139C 35AD013F */  ori        $t5, $t5, 0x13f
/* 1FA0 800013A0 246C0008 */  addiu      $t4, $v1, 8
/* 1FA4 800013A4 AE0C0000 */  sw         $t4, ($s0)
/* 1FA8 800013A8 AC6D0000 */  sw         $t5, ($v1)
/* 1FAC 800013AC 8FAE0088 */  lw         $t6, 0x88($sp)
/* 1FB0 800013B0 25C47FFF */  addiu      $a0, $t6, 0x7fff
/* 1FB4 800013B4 8C84514D */  lw         $a0, 0x514d($a0)
/* 1FB8 800013B8 0C00D374 */  jal        osVirtualToPhysical
/* 1FBC 800013BC AFA3004C */   sw        $v1, 0x4c($sp)
/* 1FC0 800013C0 8FA9004C */  lw         $t1, 0x4c($sp)
/* 1FC4 800013C4 3C068008 */  lui        $a2, %hi(GameMode)
/* 1FC8 800013C8 3C0AF64D */  lui        $t2, 0xf64d
/* 1FCC 800013CC 3C0B0002 */  lui        $t3, 2
/* 1FD0 800013D0 356B0020 */  ori        $t3, $t3, 0x20
/* 1FD4 800013D4 354AC39C */  ori        $t2, $t2, 0xc39c
/* 1FD8 800013D8 24C6B2E0 */  addiu      $a2, $a2, %lo(GameMode)
/* 1FDC 800013DC 24070001 */  addiu      $a3, $zero, 1
/* 1FE0 800013E0 3C08F700 */  lui        $t0, 0xf700
/* 1FE4 800013E4 AD220004 */  sw         $v0, 4($t1)
/* 1FE8 800013E8 94CF0000 */  lhu        $t7, ($a2)
/* 1FEC 800013EC 24010002 */  addiu      $at, $zero, 2
/* 1FF0 800013F0 54EF001F */  bnel       $a3, $t7, .L80001470
/* 1FF4 800013F4 8E030000 */   lw        $v1, ($s0)
/* 1FF8 800013F8 8E030000 */  lw         $v1, ($s0)
/* 1FFC 800013FC 3C198008 */  lui        $t9, %hi(D_8007B300)
/* 2000 80001400 3C0E8008 */  lui        $t6, %hi(D_8007B304)
/* 2004 80001404 24780008 */  addiu      $t8, $v1, 8
/* 2008 80001408 AE180000 */  sw         $t8, ($s0)
/* 200C 8000140C AC680000 */  sw         $t0, ($v1)
/* 2010 80001410 8F39B300 */  lw         $t9, %lo(D_8007B300)($t9)
/* 2014 80001414 8DCEB304 */  lw         $t6, %lo(D_8007B304)($t6)
/* 2018 80001418 00196200 */  sll        $t4, $t9, 8
/* 201C 8000141C 318DF800 */  andi       $t5, $t4, 0xf800
/* 2020 80001420 3C0C8008 */  lui        $t4, %hi(D_8007B308)
/* 2024 80001424 8D8CB308 */  lw         $t4, %lo(D_8007B308)($t4)
/* 2028 80001428 000E78C0 */  sll        $t7, $t6, 3
/* 202C 8000142C 31F807C0 */  andi       $t8, $t7, 0x7c0
/* 2030 80001430 000C7082 */  srl        $t6, $t4, 2
/* 2034 80001434 31CF003E */  andi       $t7, $t6, 0x3e
/* 2038 80001438 01B8C825 */  or         $t9, $t5, $t8
/* 203C 8000143C 032F2025 */  or         $a0, $t9, $t7
/* 2040 80001440 348D0001 */  ori        $t5, $a0, 1
/* 2044 80001444 000DC400 */  sll        $t8, $t5, 0x10
/* 2048 80001448 030D6025 */  or         $t4, $t8, $t5
/* 204C 8000144C AC6C0004 */  sw         $t4, 4($v1)
/* 2050 80001450 8E030000 */  lw         $v1, ($s0)
/* 2054 80001454 246E0008 */  addiu      $t6, $v1, 8
/* 2058 80001458 AE0E0000 */  sw         $t6, ($s0)
/* 205C 8000145C AC6B0004 */  sw         $t3, 4($v1)
/* 2060 80001460 AC6A0000 */  sw         $t2, ($v1)
/* 2064 80001464 1000000E */  b          .L800014A0
/* 2068 80001468 8E030000 */   lw        $v1, ($s0)
/* 206C 8000146C 8E030000 */  lw         $v1, ($s0)
.L80001470:
/* 2070 80001470 3C0F0001 */  lui        $t7, 1
/* 2074 80001474 35EF0001 */  ori        $t7, $t7, 1
/* 2078 80001478 24790008 */  addiu      $t9, $v1, 8
/* 207C 8000147C AE190000 */  sw         $t9, ($s0)
/* 2080 80001480 AC6F0004 */  sw         $t7, 4($v1)
/* 2084 80001484 AC680000 */  sw         $t0, ($v1)
/* 2088 80001488 8E030000 */  lw         $v1, ($s0)
/* 208C 8000148C 246D0008 */  addiu      $t5, $v1, 8
/* 2090 80001490 AE0D0000 */  sw         $t5, ($s0)
/* 2094 80001494 AC6B0004 */  sw         $t3, 4($v1)
/* 2098 80001498 AC6A0000 */  sw         $t2, ($v1)
/* 209C 8000149C 8E030000 */  lw         $v1, ($s0)
.L800014A0:
/* 20A0 800014A0 3C0CE700 */  lui        $t4, 0xe700
/* 20A4 800014A4 3C19BA00 */  lui        $t9, 0xba00
/* 20A8 800014A8 24780008 */  addiu      $t8, $v1, 8
/* 20AC 800014AC AE180000 */  sw         $t8, ($s0)
/* 20B0 800014B0 AC600004 */  sw         $zero, 4($v1)
/* 20B4 800014B4 AC6C0000 */  sw         $t4, ($v1)
/* 20B8 800014B8 8E030000 */  lw         $v1, ($s0)
/* 20BC 800014BC 37391402 */  ori        $t9, $t9, 0x1402
/* 20C0 800014C0 3C0F0010 */  lui        $t7, 0x10
/* 20C4 800014C4 246E0008 */  addiu      $t6, $v1, 8
/* 20C8 800014C8 AE0E0000 */  sw         $t6, ($s0)
/* 20CC 800014CC AC6F0004 */  sw         $t7, 4($v1)
/* 20D0 800014D0 AC790000 */  sw         $t9, ($v1)
/* 20D4 800014D4 94C20000 */  lhu        $v0, ($a2)
/* 20D8 800014D8 14E20047 */  bne        $a3, $v0, .L800015F8
/* 20DC 800014DC 00000000 */   nop
/* 20E0 800014E0 0C004AF8 */  jal        func_80012BE0
/* 20E4 800014E4 8FA40024 */   lw        $a0, 0x24($sp)
/* 20E8 800014E8 0C0042D6 */  jal        VOID_FUN_80010b58
/* 20EC 800014EC 00000000 */   nop
/* 20F0 800014F0 3C0D8008 */  lui        $t5, %hi(D_80084F12)
/* 20F4 800014F4 95AD4F12 */  lhu        $t5, %lo(D_80084F12)($t5)
/* 20F8 800014F8 31B80004 */  andi       $t8, $t5, 4
/* 20FC 800014FC 13000005 */  beqz       $t8, .L80001514
/* 2100 80001500 3C048008 */   lui       $a0, %hi(D_8007B340)
/* 2104 80001504 0C00447E */  jal        func_800111F8
/* 2108 80001508 8C84B340 */   lw        $a0, %lo(D_8007B340)($a0)
/* 210C 8000150C 0C00366F */  jal        func_8000D9BC
/* 2110 80001510 8FA40024 */   lw        $a0, 0x24($sp)
.L80001514:
/* 2114 80001514 3C048008 */  lui        $a0, %hi(D_8007B340)
/* 2118 80001518 0C00447E */  jal        func_800111F8
/* 211C 8000151C 8C84B340 */   lw        $a0, %lo(D_8007B340)($a0)
/* 2120 80001520 0C003131 */  jal        func_8000C4C4
/* 2124 80001524 8FA40024 */   lw        $a0, 0x24($sp)
/* 2128 80001528 0C000E1C */  jal        func_80003870
/* 212C 8000152C 8FA40024 */   lw        $a0, 0x24($sp)
/* 2130 80001530 0C001FC6 */  jal        func_80007F18
/* 2134 80001534 8FA40024 */   lw        $a0, 0x24($sp)
/* 2138 80001538 0C00474A */  jal        func_80011D28
/* 213C 8000153C 8FA40024 */   lw        $a0, 0x24($sp)
/* 2140 80001540 0C0033A3 */  jal        func_8000CE8C
/* 2144 80001544 8FA40024 */   lw        $a0, 0x24($sp)
/* 2148 80001548 0C00233D */  jal        func_80008CF4
/* 214C 8000154C 8FA40024 */   lw        $a0, 0x24($sp)
/* 2150 80001550 0C002D86 */  jal        func_8000B618
/* 2154 80001554 8FA40024 */   lw        $a0, 0x24($sp)
/* 2158 80001558 0C004927 */  jal        VOID_FUN_8001249c
/* 215C 8000155C 00000000 */   nop
/* 2160 80001560 3C048008 */  lui        $a0, %hi(D_8007BC08)
/* 2164 80001564 0C00447E */  jal        func_800111F8
/* 2168 80001568 8C84BC08 */   lw        $a0, %lo(D_8007BC08)($a0)
/* 216C 8000156C 0C004635 */  jal        func_800118D4
/* 2170 80001570 8FA40024 */   lw        $a0, 0x24($sp)
/* 2174 80001574 0C006C67 */  jal        func_8001B19C
/* 2178 80001578 8FA40024 */   lw        $a0, 0x24($sp)
/* 217C 8000157C 0C00618E */  jal        func_80018638
/* 2180 80001580 8FA40024 */   lw        $a0, 0x24($sp)
/* 2184 80001584 0C008A3E */  jal        unk_dimsScreenWhenOpeningMenu
/* 2188 80001588 8FA40024 */   lw        $a0, 0x24($sp)
/* 218C 8000158C 3C028008 */  lui        $v0, %hi(HUDState)
/* 2190 80001590 8C42B2E4 */  lw         $v0, %lo(HUDState)($v0)
/* 2194 80001594 304C0002 */  andi       $t4, $v0, 2
/* 2198 80001598 11800006 */  beqz       $t4, .L800015B4
/* 219C 8000159C 304E4000 */   andi      $t6, $v0, 0x4000
/* 21A0 800015A0 0C00BAA8 */  jal        printText
/* 21A4 800015A4 00000000 */   nop
/* 21A8 800015A8 3C028008 */  lui        $v0, %hi(HUDState)
/* 21AC 800015AC 1000000B */  b          .L800015DC
/* 21B0 800015B0 8C42B2E4 */   lw        $v0, %lo(HUDState)($v0)
.L800015B4:
/* 21B4 800015B4 15C00009 */  bnez       $t6, .L800015DC
/* 21B8 800015B8 3C198008 */   lui       $t9, %hi(cutsceneNum)
/* 21BC 800015BC 9739B2E8 */  lhu        $t9, %lo(cutsceneNum)($t9)
/* 21C0 800015C0 24010004 */  addiu      $at, $zero, 4
/* 21C4 800015C4 53210006 */  beql       $t9, $at, .L800015E0
/* 21C8 800015C8 304F0001 */   andi      $t7, $v0, 1
/* 21CC 800015CC 0C007897 */  jal        func_8001E25C
/* 21D0 800015D0 8FA40024 */   lw        $a0, 0x24($sp)
/* 21D4 800015D4 3C028008 */  lui        $v0, %hi(HUDState)
/* 21D8 800015D8 8C42B2E4 */  lw         $v0, %lo(HUDState)($v0)
.L800015DC:
/* 21DC 800015DC 304F0001 */  andi       $t7, $v0, 1
.L800015E0:
/* 21E0 800015E0 51E00056 */  beql       $t7, $zero, .L8000173C
/* 21E4 800015E4 8E030000 */   lw        $v1, ($s0)
/* 21E8 800015E8 0C008549 */  jal        updateHUDState
/* 21EC 800015EC 00000000 */   nop
/* 21F0 800015F0 10000052 */  b          .L8000173C
/* 21F4 800015F4 8E030000 */   lw        $v1, ($s0)
.L800015F8:
/* 21F8 800015F8 54410006 */  bnel       $v0, $at, .L80001614
/* 21FC 800015FC 24010003 */   addiu     $at, $zero, 3
/* 2200 80001600 0C009A9F */  jal        openPauseMenuOrSaveLoad
/* 2204 80001604 8FA40024 */   lw        $a0, 0x24($sp)
/* 2208 80001608 1000004C */  b          .L8000173C
/* 220C 8000160C 8E030000 */   lw        $v1, ($s0)
/* 2210 80001610 24010003 */  addiu      $at, $zero, 3
.L80001614:
/* 2214 80001614 54410025 */  bnel       $v0, $at, .L800016AC
/* 2218 80001618 24010004 */   addiu     $at, $zero, 4
/* 221C 8000161C 0C040013 */  jal        displayTitleScreen
/* 2220 80001620 00000000 */   nop
/* 2224 80001624 3C068008 */  lui        $a2, %hi(GameMode)
/* 2228 80001628 24C6B2E0 */  addiu      $a2, $a2, %lo(GameMode)
/* 222C 8000162C 10400005 */  beqz       $v0, .L80001644
/* 2230 80001630 24070001 */   addiu     $a3, $zero, 1
/* 2234 80001634 1047001A */  beq        $v0, $a3, .L800016A0
/* 2238 80001638 240E0004 */   addiu     $t6, $zero, 4
/* 223C 8000163C 1000003F */  b          .L8000173C
/* 2240 80001640 8E030000 */   lw        $v1, ($s0)
.L80001644:
/* 2244 80001644 3C028008 */  lui        $v0, %hi(TitleScreenOption)
/* 2248 80001648 9042B344 */  lbu        $v0, %lo(TitleScreenOption)($v0)
/* 224C 8000164C 24010010 */  addiu      $at, $zero, 0x10
/* 2250 80001650 240C0001 */  addiu      $t4, $zero, 1
/* 2254 80001654 304D00F0 */  andi       $t5, $v0, 0xf0
/* 2258 80001658 11A10007 */  beq        $t5, $at, .L80001678
/* 225C 8000165C 24010020 */   addiu     $at, $zero, 0x20
/* 2260 80001660 11A10007 */  beq        $t5, $at, .L80001680
/* 2264 80001664 24010030 */   addiu     $at, $zero, 0x30
/* 2268 80001668 11A10009 */  beq        $t5, $at, .L80001690
/* 226C 8000166C 24180001 */   addiu     $t8, $zero, 1
/* 2270 80001670 10000031 */  b          .L80001738
/* 2274 80001674 A4D80000 */   sh        $t8, ($a2)
.L80001678:
/* 2278 80001678 1000002F */  b          .L80001738
/* 227C 8000167C A4CC0000 */   sh        $t4, ($a2)
.L80001680:
/* 2280 80001680 0C00AD44 */  jal        UNK_SetsGameStateto2(PauseOrSaveLoad)
/* 2284 80001684 00002025 */   or        $a0, $zero, $zero
/* 2288 80001688 1000002C */  b          .L8000173C
/* 228C 8000168C 8E030000 */   lw        $v1, ($s0)
.L80001690:
/* 2290 80001690 0C00AD44 */  jal        UNK_SetsGameStateto2(PauseOrSaveLoad)
/* 2294 80001694 24040008 */   addiu     $a0, $zero, 8
/* 2298 80001698 10000028 */  b          .L8000173C
/* 229C 8000169C 8E030000 */   lw        $v1, ($s0)
.L800016A0:
/* 22A0 800016A0 10000025 */  b          .L80001738
/* 22A4 800016A4 A4CE0000 */   sh        $t6, ($a2)
/* 22A8 800016A8 24010004 */  addiu      $at, $zero, 4
.L800016AC:
/* 22AC 800016AC 54410019 */  bnel       $v0, $at, .L80001714
/* 22B0 800016B0 24010005 */   addiu     $at, $zero, 5
/* 22B4 800016B4 0C040027 */  jal        func_8010009C
/* 22B8 800016B8 00000000 */   nop
/* 22BC 800016BC 3C068008 */  lui        $a2, %hi(GameMode)
/* 22C0 800016C0 24C6B2E0 */  addiu      $a2, $a2, %lo(GameMode)
/* 22C4 800016C4 10400005 */  beqz       $v0, .L800016DC
/* 22C8 800016C8 24070001 */   addiu     $a3, $zero, 1
/* 22CC 800016CC 10470008 */  beq        $v0, $a3, .L800016F0
/* 22D0 800016D0 240F0001 */   addiu     $t7, $zero, 1
/* 22D4 800016D4 1000000B */  b          .L80001704
/* 22D8 800016D8 00000000 */   nop
.L800016DC:
/* 22DC 800016DC 3C018007 */  lui        $at, %hi(D_8006AC60)
/* 22E0 800016E0 A020AC60 */  sb         $zero, %lo(D_8006AC60)($at)
/* 22E4 800016E4 24190003 */  addiu      $t9, $zero, 3
/* 22E8 800016E8 10000013 */  b          .L80001738
/* 22EC 800016EC A4D90000 */   sh        $t9, ($a2)
.L800016F0:
/* 22F0 800016F0 3C018007 */  lui        $at, %hi(D_8006AC60)
/* 22F4 800016F4 A02FAC60 */  sb         $t7, %lo(D_8006AC60)($at)
/* 22F8 800016F8 240D0003 */  addiu      $t5, $zero, 3
/* 22FC 800016FC 1000000E */  b          .L80001738
/* 2300 80001700 A4CD0000 */   sh        $t5, ($a2)
.L80001704:
/* 2304 80001704 3C018007 */  lui        $at, %hi(D_8006AC60)
/* 2308 80001708 1000000B */  b          .L80001738
/* 230C 8000170C A020AC60 */   sb        $zero, %lo(D_8006AC60)($at)
/* 2310 80001710 24010005 */  addiu      $at, $zero, 5
.L80001714:
/* 2314 80001714 54410009 */  bnel       $v0, $at, .L8000173C
/* 2318 80001718 8E030000 */   lw        $v1, ($s0)
/* 231C 8000171C 0C040023 */  jal        func_8010008C
/* 2320 80001720 00000000 */   nop
/* 2324 80001724 3C068008 */  lui        $a2, %hi(GameMode)
/* 2328 80001728 14400003 */  bnez       $v0, .L80001738
/* 232C 8000172C 24C6B2E0 */   addiu     $a2, $a2, %lo(GameMode)
/* 2330 80001730 24180003 */  addiu      $t8, $zero, 3
/* 2334 80001734 A4D80000 */  sh         $t8, ($a2)
.L80001738:
/* 2338 80001738 8E030000 */  lw         $v1, ($s0)
.L8000173C:
/* 233C 8000173C 3C0EE900 */  lui        $t6, 0xe900
/* 2340 80001740 3C040200 */  lui        $a0, 0x200
/* 2344 80001744 246C0008 */  addiu      $t4, $v1, 8
/* 2348 80001748 AE0C0000 */  sw         $t4, ($s0)
/* 234C 8000174C AC600004 */  sw         $zero, 4($v1)
/* 2350 80001750 AC6E0000 */  sw         $t6, ($v1)
/* 2354 80001754 8E030000 */  lw         $v1, ($s0)
/* 2358 80001758 3C0FB800 */  lui        $t7, 0xb800
/* 235C 8000175C 24840000 */  addiu      $a0, $a0, 0
/* 2360 80001760 24790008 */  addiu      $t9, $v1, 8
/* 2364 80001764 AE190000 */  sw         $t9, ($s0)
/* 2368 80001768 AC600004 */  sw         $zero, 4($v1)
/* 236C 8000176C AC6F0000 */  sw         $t7, ($v1)
/* 2370 80001770 0C00D394 */  jal        osWritebackDCache
/* 2374 80001774 3405D0F0 */   ori       $a1, $zero, 0xd0f0
/* 2378 80001778 8FA40088 */  lw         $a0, 0x88($sp)
/* 237C 8000177C 8E0D0000 */  lw         $t5, ($s0)
/* 2380 80001780 3C038008 */  lui        $v1, %hi(D_8007B34C)
/* 2384 80001784 2463B34C */  addiu      $v1, $v1, %lo(D_8007B34C)
/* 2388 80001788 3C01FFFF */  lui        $at, 0xffff
/* 238C 8000178C 8C6C0000 */  lw         $t4, ($v1)
/* 2390 80001790 34217EB8 */  ori        $at, $at, 0x7eb8
/* 2394 80001794 01A41023 */  subu       $v0, $t5, $a0
/* 2398 80001798 00411021 */  addu       $v0, $v0, $at
/* 239C 8000179C 0002C0C3 */  sra        $t8, $v0, 3
/* 23A0 800017A0 0198082A */  slt        $at, $t4, $t8
/* 23A4 800017A4 10200002 */  beqz       $at, .L800017B0
/* 23A8 800017A8 03001025 */   or        $v0, $t8, $zero
/* 23AC 800017AC AC780000 */  sw         $t8, ($v1)
.L800017B0:
/* 23B0 800017B0 8FAE0024 */  lw         $t6, 0x24($sp)
/* 23B4 800017B4 3C018005 */  lui        $at, %hi(D_8004C210)
/* 23B8 800017B8 AC22C210 */  sw         $v0, %lo(D_8004C210)($at)
/* 23BC 800017BC 340180F0 */  ori        $at, $zero, 0x80f0
/* 23C0 800017C0 01C1C821 */  addu       $t9, $t6, $at
/* 23C4 800017C4 AC990040 */  sw         $t9, 0x40($a0)
/* 23C8 800017C8 8FAD0024 */  lw         $t5, 0x24($sp)
/* 23CC 800017CC 8E0F0000 */  lw         $t7, ($s0)
/* 23D0 800017D0 3C01FFFF */  lui        $at, 0xffff
/* 23D4 800017D4 34217F10 */  ori        $at, $at, 0x7f10
/* 23D8 800017D8 01EDC023 */  subu       $t8, $t7, $t5
/* 23DC 800017DC 03016021 */  addu       $t4, $t8, $at
/* 23E0 800017E0 000C70C3 */  sra        $t6, $t4, 3
/* 23E4 800017E4 000EC8C0 */  sll        $t9, $t6, 3
/* 23E8 800017E8 AC990044 */  sw         $t9, 0x44($a0)
/* 23EC 800017EC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 23F0 800017F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 23F4 800017F4 27BD0088 */  addiu      $sp, $sp, 0x88
/* 23F8 800017F8 03E00008 */  jr         $ra
/* 23FC 800017FC 00000000 */   nop

glabel Mode_NormalPlay
/* 2400 80001800 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2404 80001804 AFB60038 */  sw         $s6, 0x38($sp)
/* 2408 80001808 3C168008 */  lui        $s6, %hi(HUDState)
/* 240C 8000180C 26D6B2E4 */  addiu      $s6, $s6, %lo(HUDState)
/* 2410 80001810 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2414 80001814 AFBE0040 */  sw         $fp, 0x40($sp)
/* 2418 80001818 AFB7003C */  sw         $s7, 0x3c($sp)
/* 241C 8000181C AFB50034 */  sw         $s5, 0x34($sp)
/* 2420 80001820 AFB40030 */  sw         $s4, 0x30($sp)
/* 2424 80001824 AFB3002C */  sw         $s3, 0x2c($sp)
/* 2428 80001828 AFB20028 */  sw         $s2, 0x28($sp)
/* 242C 8000182C AFB10024 */  sw         $s1, 0x24($sp)
/* 2430 80001830 AFB00020 */  sw         $s0, 0x20($sp)
/* 2434 80001834 3C018008 */  lui        $at, %hi(D_8007B348)
/* 2438 80001838 AC20B348 */  sw         $zero, %lo(D_8007B348)($at)
/* 243C 8000183C 3C018008 */  lui        $at, %hi(transitionFadeTimer)
/* 2440 80001840 AC20B2EC */  sw         $zero, %lo(transitionFadeTimer)($at)
/* 2444 80001844 8EC30000 */  lw         $v1, ($s6)
/* 2448 80001848 AFA0005C */  sw         $zero, 0x5c($sp)
/* 244C 8000184C 306E0040 */  andi       $t6, $v1, 0x40
/* 2450 80001850 11C00041 */  beqz       $t6, .L80001958
/* 2454 80001854 306F0800 */   andi      $t7, $v1, 0x800
/* 2458 80001858 11E00009 */  beqz       $t7, .L80001880
/* 245C 8000185C 3C188008 */   lui       $t8, %hi(MapToLoad)
/* 2460 80001860 9718BA60 */  lhu        $t8, %lo(MapToLoad)($t8)
/* 2464 80001864 3C018008 */  lui        $at, %hi(nextMap)
/* 2468 80001868 3C198008 */  lui        $t9, %hi(SubmapToLoad)
/* 246C 8000186C 9739BA62 */  lhu        $t9, %lo(SubmapToLoad)($t9)
/* 2470 80001870 AC384EE4 */  sw         $t8, %lo(nextMap)($at)
/* 2474 80001874 3C018008 */  lui        $at, %hi(nextSubmap)
/* 2478 80001878 0C000BA8 */  jal        CheckIfRoomIsValidLoadPoint
/* 247C 8000187C AC394EE8 */   sw        $t9, %lo(nextSubmap)($at)
.L80001880:
/* 2480 80001880 0C00B978 */  jal        VOID_FUN_8002e5e0
/* 2484 80001884 00002025 */   or        $a0, $zero, $zero
/* 2488 80001888 3C018009 */  lui        $at, %hi(talkingFlag)
/* 248C 8000188C 0C002F44 */  jal        VOID_UNK_MoreMapTransitionStuff
/* 2490 80001890 AC2005C0 */   sw        $zero, %lo(talkingFlag)($at)
/* 2494 80001894 0C0046DC */  jal        drawTreasureChests
/* 2498 80001898 00000000 */   nop
/* 249C 8000189C 0C004888 */  jal        placeSpirits
/* 24A0 800018A0 00000000 */   nop
/* 24A4 800018A4 0C000A46 */  jal        func_80002918
/* 24A8 800018A8 00000000 */   nop
/* 24AC 800018AC 0C001E94 */  jal        UNK_LoadOpening&ClosingCutsceneData
/* 24B0 800018B0 00000000 */   nop
/* 24B4 800018B4 0C0022EC */  jal        VOID_FUN_80008bb0
/* 24B8 800018B8 00000000 */   nop
/* 24BC 800018BC 0C002D4C */  jal        SpawnBoss
/* 24C0 800018C0 00000000 */   nop
/* 24C4 800018C4 0C0049E0 */  jal        VOID_FUN_80012780
/* 24C8 800018C8 00000000 */   nop
/* 24CC 800018CC 0C004054 */  jal        timeOfDaySomething
/* 24D0 800018D0 00000000 */   nop
/* 24D4 800018D4 0C004440 */  jal        VOID_FUN_80011100
/* 24D8 800018D8 00000000 */   nop
/* 24DC 800018DC 3C018008 */  lui        $at, %hi(D_8007B340)
/* 24E0 800018E0 0C004440 */  jal        VOID_FUN_80011100
/* 24E4 800018E4 AC22B340 */   sw        $v0, %lo(D_8007B340)($at)
/* 24E8 800018E8 3C018008 */  lui        $at, %hi(D_8007B33C)
/* 24EC 800018EC 0C004440 */  jal        VOID_FUN_80011100
/* 24F0 800018F0 AC22B33C */   sw        $v0, %lo(D_8007B33C)($at)
/* 24F4 800018F4 00024880 */  sll        $t1, $v0, 2
/* 24F8 800018F8 3C048008 */  lui        $a0, %hi(D_8007BC08)
/* 24FC 800018FC 01224823 */  subu       $t1, $t1, $v0
/* 2500 80001900 2484BC08 */  addiu      $a0, $a0, %lo(D_8007BC08)
/* 2504 80001904 00094900 */  sll        $t1, $t1, 4
/* 2508 80001908 3C018008 */  lui        $at, %hi(D_800859E8)
/* 250C 8000190C AC820000 */  sw         $v0, ($a0)
/* 2510 80001910 24140002 */  addiu      $s4, $zero, 2
/* 2514 80001914 00290821 */  addu       $at, $at, $t1
/* 2518 80001918 0C007158 */  jal        VOID_FUN_8001c560
/* 251C 8000191C AC3459E8 */   sw        $s4, %lo(D_800859E8)($at)
/* 2520 80001920 0C005210 */  jal        VOID_FUN_80014840
/* 2524 80001924 00000000 */   nop
/* 2528 80001928 0C00617C */  jal        VOID_FUN_800185f0
/* 252C 8000192C 00000000 */   nop
/* 2530 80001930 0C006C34 */  jal        VOID_FUN_8001b0d0
/* 2534 80001934 00000000 */   nop
/* 2538 80001938 0C008A38 */  jal        VOID_FUN_800228e0
/* 253C 8000193C 00000000 */   nop
/* 2540 80001940 0C00787C */  jal        VOID_FUN_8001e1f0
/* 2544 80001944 00000000 */   nop
/* 2548 80001948 8ECA0000 */  lw         $t2, ($s6)
/* 254C 8000194C 2401F7BF */  addiu      $at, $zero, -0x841
/* 2550 80001950 01411824 */  and        $v1, $t2, $at
/* 2554 80001954 AEC30000 */  sw         $v1, ($s6)
.L80001958:
/* 2558 80001958 306C0400 */  andi       $t4, $v1, 0x400
/* 255C 8000195C 1180000C */  beqz       $t4, .L80001990
/* 2560 80001960 24140002 */   addiu     $s4, $zero, 2
/* 2564 80001964 3C048008 */  lui        $a0, %hi(BrianPos)
/* 2568 80001968 240D0001 */  addiu      $t5, $zero, 1
/* 256C 8000196C 240E0001 */  addiu      $t6, $zero, 1
/* 2570 80001970 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2574 80001974 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2578 80001978 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 257C 8000197C 00002825 */  or         $a1, $zero, $zero
/* 2580 80001980 24060001 */  addiu      $a2, $zero, 1
/* 2584 80001984 0C00762C */  jal        updateAnim
/* 2588 80001988 00003825 */   or        $a3, $zero, $zero
/* 258C 8000198C 8EC30000 */  lw         $v1, ($s6)
.L80001990:
/* 2590 80001990 306F0020 */  andi       $t7, $v1, 0x20
/* 2594 80001994 11E00028 */  beqz       $t7, .L80001A38
/* 2598 80001998 2401FFDF */   addiu     $at, $zero, -0x21
/* 259C 8000199C 0061C024 */  and        $t8, $v1, $at
/* 25A0 800019A0 AED80000 */  sw         $t8, ($s6)
/* 25A4 800019A4 3C028008 */  lui        $v0, %hi(fadeType)
/* 25A8 800019A8 9442B2F0 */  lhu        $v0, %lo(fadeType)($v0)
/* 25AC 800019AC 24040010 */  addiu      $a0, $zero, 0x10
/* 25B0 800019B0 24050004 */  addiu      $a1, $zero, 4
/* 25B4 800019B4 1040000B */  beqz       $v0, .L800019E4
/* 25B8 800019B8 3C068005 */   lui       $a2, 0x8005
/* 25BC 800019BC 24130001 */  addiu      $s3, $zero, 1
/* 25C0 800019C0 1053000C */  beq        $v0, $s3, .L800019F4
/* 25C4 800019C4 24040010 */   addiu     $a0, $zero, 0x10
/* 25C8 800019C8 10540010 */  beq        $v0, $s4, .L80001A0C
/* 25CC 800019CC 24040020 */   addiu     $a0, $zero, 0x20
/* 25D0 800019D0 24010003 */  addiu      $at, $zero, 3
/* 25D4 800019D4 10410013 */  beq        $v0, $at, .L80001A24
/* 25D8 800019D8 24040020 */   addiu     $a0, $zero, 0x20
/* 25DC 800019DC 10000016 */  b          .L80001A38
/* 25E0 800019E0 03001825 */   or        $v1, $t8, $zero
.L800019E4:
/* 25E4 800019E4 0C008AC2 */  jal        func_80022B08
/* 25E8 800019E8 24C6D56C */   addiu     $a2, $a2, -0x2a94
/* 25EC 800019EC 10000012 */  b          .L80001A38
/* 25F0 800019F0 8EC30000 */   lw        $v1, ($s6)
.L800019F4:
/* 25F4 800019F4 3C068005 */  lui        $a2, %hi(D_8004D5AC)
/* 25F8 800019F8 24C6D5AC */  addiu      $a2, $a2, %lo(D_8004D5AC)
/* 25FC 800019FC 0C008AC2 */  jal        func_80022B08
/* 2600 80001A00 24050004 */   addiu     $a1, $zero, 4
/* 2604 80001A04 1000000C */  b          .L80001A38
/* 2608 80001A08 8EC30000 */   lw        $v1, ($s6)
.L80001A0C:
/* 260C 80001A0C 3C068005 */  lui        $a2, %hi(D_8004D674)
/* 2610 80001A10 24C6D674 */  addiu      $a2, $a2, %lo(D_8004D674)
/* 2614 80001A14 0C008AC2 */  jal        func_80022B08
/* 2618 80001A18 24050004 */   addiu     $a1, $zero, 4
/* 261C 80001A1C 10000006 */  b          .L80001A38
/* 2620 80001A20 8EC30000 */   lw        $v1, ($s6)
.L80001A24:
/* 2624 80001A24 3C068005 */  lui        $a2, %hi(D_8004D714)
/* 2628 80001A28 24C6D714 */  addiu      $a2, $a2, %lo(D_8004D714)
/* 262C 80001A2C 0C008AC2 */  jal        func_80022B08
/* 2630 80001A30 24050004 */   addiu     $a1, $zero, 4
/* 2634 80001A34 8EC30000 */  lw         $v1, ($s6)
.L80001A38:
/* 2638 80001A38 30790100 */  andi       $t9, $v1, 0x100
/* 263C 80001A3C 1320000B */  beqz       $t9, .L80001A6C
/* 2640 80001A40 24130001 */   addiu     $s3, $zero, 1
/* 2644 80001A44 3C048008 */  lui        $a0, %hi(nextMap)
/* 2648 80001A48 3C058008 */  lui        $a1, %hi(nextSubmap)
/* 264C 80001A4C 8CA54EE8 */  lw         $a1, %lo(nextSubmap)($a1)
/* 2650 80001A50 8C844EE4 */  lw         $a0, %lo(nextMap)($a0)
/* 2654 80001A54 0C009A13 */  jal        updateBGMOnMapTransition
/* 2658 80001A58 00003025 */   or        $a2, $zero, $zero
/* 265C 80001A5C 8EC80000 */  lw         $t0, ($s6)
/* 2660 80001A60 2401FEFF */  addiu      $at, $zero, -0x101
/* 2664 80001A64 01011824 */  and        $v1, $t0, $at
/* 2668 80001A68 AEC30000 */  sw         $v1, ($s6)
.L80001A6C:
/* 266C 80001A6C 3C028008 */  lui        $v0, %hi(cutsceneNum)
/* 2670 80001A70 2442B2E8 */  addiu      $v0, $v0, %lo(cutsceneNum)
/* 2674 80001A74 944B0000 */  lhu        $t3, ($v0)
/* 2678 80001A78 2401FB7F */  addiu      $at, $zero, -0x481
/* 267C 80001A7C 00615024 */  and        $t2, $v1, $at
/* 2680 80001A80 24010004 */  addiu      $at, $zero, 4
/* 2684 80001A84 1561000D */  bne        $t3, $at, .L80001ABC
/* 2688 80001A88 AECA0000 */   sw        $t2, ($s6)
/* 268C 80001A8C 354D4080 */  ori        $t5, $t2, 0x4080
/* 2690 80001A90 AECD0000 */  sw         $t5, ($s6)
/* 2694 80001A94 240E0031 */  addiu      $t6, $zero, 0x31
/* 2698 80001A98 3C018008 */  lui        $at, %hi(transitionFadeTimer)
/* 269C 80001A9C AC2EB2EC */  sw         $t6, %lo(transitionFadeTimer)($at)
/* 26A0 80001AA0 3C018008 */  lui        $at, %hi(fadeType)
/* 26A4 80001AA4 240F0002 */  addiu      $t7, $zero, 2
/* 26A8 80001AA8 A42FB2F0 */  sh         $t7, %lo(fadeType)($at)
/* 26AC 80001AAC 3C018008 */  lui        $at, %hi(D_8007B2F2)
/* 26B0 80001AB0 2418002F */  addiu      $t8, $zero, 0x2f
/* 26B4 80001AB4 10000006 */  b          .L80001AD0
/* 26B8 80001AB8 A438B2F2 */   sh        $t8, %lo(D_8007B2F2)($at)
.L80001ABC:
/* 26BC 80001ABC 3C018008 */  lui        $at, %hi(fadeType)
/* 26C0 80001AC0 A420B2F0 */  sh         $zero, %lo(fadeType)($at)
/* 26C4 80001AC4 3C018008 */  lui        $at, %hi(D_8007B2F2)
/* 26C8 80001AC8 24190012 */  addiu      $t9, $zero, 0x12
/* 26CC 80001ACC A439B2F2 */  sh         $t9, %lo(D_8007B2F2)($at)
.L80001AD0:
/* 26D0 80001AD0 3C178008 */  lui        $s7, %hi(GameMode)
/* 26D4 80001AD4 26F7B2E0 */  addiu      $s7, $s7, %lo(GameMode)
/* 26D8 80001AD8 96E80000 */  lhu        $t0, ($s7)
/* 26DC 80001ADC 3C158008 */  lui        $s5, %hi(brianAction)
/* 26E0 80001AE0 A4400000 */  sh         $zero, ($v0)
/* 26E4 80001AE4 16680143 */  bne        $s3, $t0, .L80001FF4
/* 26E8 80001AE8 26B5BAB8 */   addiu     $s5, $s5, %lo(brianAction)
/* 26EC 80001AEC 3C1E8008 */  lui        $fp, %hi(gfxDataBankSwitch)
/* 26F0 80001AF0 3C128008 */  lui        $s2, %hi(D_8007B2D0)
/* 26F4 80001AF4 3C108008 */  lui        $s0, %hi(messageQueue)
/* 26F8 80001AF8 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 26FC 80001AFC 2652B2D0 */  addiu      $s2, $s2, %lo(D_8007B2D0)
/* 2700 80001B00 27DEB2F4 */  addiu      $fp, $fp, %lo(gfxDataBankSwitch)
/* 2704 80001B04 27B1005C */  addiu      $s1, $sp, 0x5c
.L80001B08:
/* 2708 80001B08 3C048009 */  lui        $a0, %hi(controller_no)
/* 270C 80001B0C 0C00C530 */  jal        controllerButtonsSomething
/* 2710 80001B10 80842870 */   lb        $a0, %lo(controller_no)($a0)
/* 2714 80001B14 3C018008 */  lui        $at, %hi(D_8007B2F8)
/* 2718 80001B18 AC20B2F8 */  sw         $zero, %lo(D_8007B2F8)($at)
/* 271C 80001B1C 3C018008 */  lui        $at, %hi(D_80087200)
/* 2720 80001B20 0C004614 */  jal        ResetShadowSomething
/* 2724 80001B24 AC207200 */   sw        $zero, %lo(D_80087200)($at)
/* 2728 80001B28 3C098008 */  lui        $t1, %hi(D_80084F10)
/* 272C 80001B2C 95294F10 */  lhu        $t1, %lo(D_80084F10)($t1)
/* 2730 80001B30 312A0001 */  andi       $t2, $t1, 1
/* 2734 80001B34 11400003 */  beqz       $t2, .L80001B44
/* 2738 80001B38 00000000 */   nop
/* 273C 80001B3C 0C00717D */  jal        startBattleWithNormalEnemy
/* 2740 80001B40 00000000 */   nop
.L80001B44:
/* 2744 80001B44 3C028009 */  lui        $v0, %hi(BattleState)
/* 2748 80001B48 9442C592 */  lhu        $v0, %lo(BattleState)($v0)
/* 274C 80001B4C 304B0001 */  andi       $t3, $v0, 1
/* 2750 80001B50 1160000B */  beqz       $t3, .L80001B80
/* 2754 80001B54 304C0200 */   andi      $t4, $v0, 0x200
/* 2758 80001B58 11800005 */  beqz       $t4, .L80001B70
/* 275C 80001B5C 00000000 */   nop
/* 2760 80001B60 0C0072B3 */  jal        func_8001CACC
/* 2764 80001B64 00000000 */   nop
/* 2768 80001B68 10000005 */  b          .L80001B80
/* 276C 80001B6C 00000000 */   nop
.L80001B70:
/* 2770 80001B70 0C0073FA */  jal        VOID_FUN_8001cfe8
/* 2774 80001B74 00000000 */   nop
/* 2778 80001B78 0C002308 */  jal        unk_loadMonsters
/* 277C 80001B7C 00000000 */   nop
.L80001B80:
/* 2780 80001B80 0C000BD8 */  jal        unkContainsPtrImportant
/* 2784 80001B84 00000000 */   nop
/* 2788 80001B88 0C001ED9 */  jal        VOID_FUN_80007b64
/* 278C 80001B8C 00000000 */   nop
/* 2790 80001B90 0C0055B4 */  jal        VOID_FUN_800156d0
/* 2794 80001B94 00000000 */   nop
/* 2798 80001B98 0C0040B4 */  jal        VOID_FUN_800102d0
/* 279C 80001B9C 00000000 */   nop
/* 27A0 80001BA0 0C00310B */  jal        VOID_FUN_8000c42c
/* 27A4 80001BA4 00000000 */   nop
/* 27A8 80001BA8 0C003713 */  jal        VOID_FUN_8000dc4c
/* 27AC 80001BAC 00000000 */   nop
/* 27B0 80001BB0 8FCD0000 */  lw         $t5, ($fp)
/* 27B4 80001BB4 3401D150 */  ori        $at, $zero, 0xd150
/* 27B8 80001BB8 3C0F8030 */  lui        $t7, %hi(gfxData)
/* 27BC 80001BBC 01A10019 */  multu      $t5, $at
/* 27C0 80001BC0 25EF1000 */  addiu      $t7, $t7, %lo(gfxData)
/* 27C4 80001BC4 00007012 */  mflo       $t6
/* 27C8 80001BC8 01CF2021 */  addu       $a0, $t6, $t7
/* 27CC 80001BCC 0C000477 */  jal        graphicsMain
/* 27D0 80001BD0 00000000 */   nop
/* 27D4 80001BD4 8FD80000 */  lw         $t8, ($fp)
/* 27D8 80001BD8 3401D150 */  ori        $at, $zero, 0xd150
/* 27DC 80001BDC 8EC30000 */  lw         $v1, ($s6)
/* 27E0 80001BE0 03010019 */  multu      $t8, $at
/* 27E4 80001BE4 3C088030 */  lui        $t0, %hi(gfxData)
/* 27E8 80001BE8 25081000 */  addiu      $t0, $t0, %lo(gfxData)
/* 27EC 80001BEC 306A0087 */  andi       $t2, $v1, 0x87
/* 27F0 80001BF0 0000C812 */  mflo       $t9
/* 27F4 80001BF4 03284821 */  addu       $t1, $t9, $t0
/* 27F8 80001BF8 15400037 */  bnez       $t2, .L80001CD8
/* 27FC 80001BFC AFA90058 */   sw        $t1, 0x58($sp)
/* 2800 80001C00 96AB0074 */  lhu        $t3, 0x74($s5)
/* 2804 80001C04 316C0001 */  andi       $t4, $t3, 1
/* 2808 80001C08 55800011 */  bnel       $t4, $zero, .L80001C50
/* 280C 80001C0C 8EC30000 */   lw        $v1, ($s6)
/* 2810 80001C10 C6AC0014 */  lwc1       $f12, 0x14($s5)
/* 2814 80001C14 C6AE001C */  lwc1       $f14, 0x1c($s5)
/* 2818 80001C18 0C003F78 */  jal        func_8000FDE0
/* 281C 80001C1C 8EA60024 */   lw        $a2, 0x24($s5)
/* 2820 80001C20 5040000B */  beql       $v0, $zero, .L80001C50
/* 2824 80001C24 8EC30000 */   lw        $v1, ($s6)
/* 2828 80001C28 8ECD0000 */  lw         $t5, ($s6)
/* 282C 80001C2C 35AE0080 */  ori        $t6, $t5, 0x80
/* 2830 80001C30 0C005167 */  jal        VOID_FUN_8001459c
/* 2834 80001C34 AECE0000 */   sw        $t6, ($s6)
/* 2838 80001C38 0C001835 */  jal        doorSomething
/* 283C 80001C3C 00000000 */   nop
/* 2840 80001C40 3C018008 */  lui        $at, %hi(fadeType)
/* 2844 80001C44 10000090 */  b          .L80001E88
/* 2848 80001C48 A420B2F0 */   sh        $zero, %lo(fadeType)($at)
/* 284C 80001C4C 8EC30000 */  lw         $v1, ($s6)
.L80001C50:
/* 2850 80001C50 306F1000 */  andi       $t7, $v1, 0x1000
/* 2854 80001C54 15E0008C */  bnez       $t7, .L80001E88
/* 2858 80001C58 00000000 */   nop
/* 285C 80001C5C 96B80074 */  lhu        $t8, 0x74($s5)
/* 2860 80001C60 3C088009 */  lui        $t0, %hi(ButtonPressedFrame)
/* 2864 80001C64 33190001 */  andi       $t9, $t8, 1
/* 2868 80001C68 17200087 */  bnez       $t9, .L80001E88
/* 286C 80001C6C 00000000 */   nop
/* 2870 80001C70 95082876 */  lhu        $t0, %lo(ButtonPressedFrame)($t0)
/* 2874 80001C74 3C0A8009 */  lui        $t2, %hi(BattleState)
/* 2878 80001C78 31091000 */  andi       $t1, $t0, 0x1000
/* 287C 80001C7C 11200082 */  beqz       $t1, .L80001E88
/* 2880 80001C80 00000000 */   nop
/* 2884 80001C84 954AC592 */  lhu        $t2, %lo(BattleState)($t2)
/* 2888 80001C88 3C0C8009 */  lui        $t4, %hi(ButtonBeingPressed_MAIN)
/* 288C 80001C8C 314B0001 */  andi       $t3, $t2, 1
/* 2890 80001C90 1560007D */  bnez       $t3, .L80001E88
/* 2894 80001C94 00000000 */   nop
/* 2898 80001C98 958C2874 */  lhu        $t4, %lo(ButtonBeingPressed_MAIN)($t4)
/* 289C 80001C9C 306E0001 */  andi       $t6, $v1, 1
/* 28A0 80001CA0 318D2000 */  andi       $t5, $t4, 0x2000
/* 28A4 80001CA4 15A00078 */  bnez       $t5, .L80001E88
/* 28A8 80001CA8 00000000 */   nop
/* 28AC 80001CAC 15C00076 */  bnez       $t6, .L80001E88
/* 28B0 80001CB0 240F0002 */   addiu     $t7, $zero, 2
/* 28B4 80001CB4 00132E00 */  sll        $a1, $s3, 0x18
/* 28B8 80001CB8 0005C603 */  sra        $t8, $a1, 0x18
/* 28BC 80001CBC A6EF0000 */  sh         $t7, ($s7)
/* 28C0 80001CC0 03002825 */  or         $a1, $t8, $zero
/* 28C4 80001CC4 00002025 */  or         $a0, $zero, $zero
/* 28C8 80001CC8 0C009A35 */  jal        func_800268D4
/* 28CC 80001CCC 240600FF */   addiu     $a2, $zero, 0xff
/* 28D0 80001CD0 1000006D */  b          .L80001E88
/* 28D4 80001CD4 00000000 */   nop
.L80001CD8:
/* 28D8 80001CD8 30790080 */  andi       $t9, $v1, 0x80
/* 28DC 80001CDC 1320006A */  beqz       $t9, .L80001E88
/* 28E0 80001CE0 30680002 */   andi      $t0, $v1, 2
/* 28E4 80001CE4 15000068 */  bnez       $t0, .L80001E88
/* 28E8 80001CE8 3C048008 */   lui       $a0, %hi(transitionFadeTimer)
/* 28EC 80001CEC 2484B2EC */  addiu      $a0, $a0, %lo(transitionFadeTimer)
/* 28F0 80001CF0 8C890000 */  lw         $t1, ($a0)
/* 28F4 80001CF4 306B4000 */  andi       $t3, $v1, 0x4000
/* 28F8 80001CF8 3C198008 */  lui        $t9, 0x8008
/* 28FC 80001CFC 2522FFFF */  addiu      $v0, $t1, -1
/* 2900 80001D00 1440003C */  bnez       $v0, .L80001DF4
/* 2904 80001D04 AC820000 */   sw        $v0, ($a0)
/* 2908 80001D08 11600008 */  beqz       $t3, .L80001D2C
/* 290C 80001D0C 3C048008 */   lui       $a0, 0x8008
/* 2910 80001D10 2401BFFF */  addiu      $at, $zero, -0x4001
/* 2914 80001D14 240C0005 */  addiu      $t4, $zero, 5
/* 2918 80001D18 00616824 */  and        $t5, $v1, $at
/* 291C 80001D1C A6EC0000 */  sh         $t4, ($s7)
/* 2920 80001D20 AECD0000 */  sw         $t5, ($s6)
/* 2924 80001D24 10000002 */  b          .L80001D30
/* 2928 80001D28 01A01825 */   or        $v1, $t5, $zero
.L80001D2C:
/* 292C 80001D2C A6E00000 */  sh         $zero, ($s7)
.L80001D30:
/* 2930 80001D30 346E0020 */  ori        $t6, $v1, 0x20
/* 2934 80001D34 31C20400 */  andi       $v0, $t6, 0x400
/* 2938 80001D38 AECE0000 */  sw         $t6, ($s6)
/* 293C 80001D3C 14400004 */  bnez       $v0, .L80001D50
/* 2940 80001D40 01C01825 */   or        $v1, $t6, $zero
/* 2944 80001D44 35C30040 */  ori        $v1, $t6, 0x40
/* 2948 80001D48 AEC30000 */  sw         $v1, ($s6)
/* 294C 80001D4C 30620400 */  andi       $v0, $v1, 0x400
.L80001D50:
/* 2950 80001D50 24845368 */  addiu      $a0, $a0, 0x5368
/* 2954 80001D54 8C980000 */  lw         $t8, ($a0)
/* 2958 80001D58 3C018008 */  lui        $at, %hi(CurrentMap)
/* 295C 80001D5C AC384EEC */  sw         $t8, %lo(CurrentMap)($at)
/* 2960 80001D60 8C990004 */  lw         $t9, 4($a0)
/* 2964 80001D64 3C018008 */  lui        $at, %hi(CurrentSubmap)
/* 2968 80001D68 1040001D */  beqz       $v0, .L80001DE0
/* 296C 80001D6C AC394EF0 */   sw        $t9, %lo(CurrentSubmap)($at)
/* 2970 80001D70 8EA20010 */  lw         $v0, 0x10($s5)
/* 2974 80001D74 3C038008 */  lui        $v1, %hi(currentTime)
/* 2978 80001D78 246359D0 */  addiu      $v1, $v1, %lo(currentTime)
/* 297C 80001D7C 94480006 */  lhu        $t0, 6($v0)
/* 2980 80001D80 A4480004 */  sh         $t0, 4($v0)
/* 2984 80001D84 8EA20010 */  lw         $v0, 0x10($s5)
/* 2988 80001D88 9449000A */  lhu        $t1, 0xa($v0)
/* 298C 80001D8C A4490008 */  sh         $t1, 8($v0)
/* 2990 80001D90 8C6A0000 */  lw         $t2, ($v1)
/* 2994 80001D94 25442328 */  addiu      $a0, $t2, 0x2328
/* 2998 80001D98 0C004144 */  jal        checkIfDayHasPassed&Inc
/* 299C 80001D9C AC640000 */   sw        $a0, ($v1)
/* 29A0 80001DA0 3C0C8008 */  lui        $t4, %hi(nextMap)
/* 29A4 80001DA4 8D8C4EE4 */  lw         $t4, %lo(nextMap)($t4)
/* 29A8 80001DA8 3C0D8008 */  lui        $t5, %hi(nextSubmap)
/* 29AC 80001DAC 8DAD4EE8 */  lw         $t5, %lo(nextSubmap)($t5)
/* 29B0 80001DB0 3C018008 */  lui        $at, %hi(MapToLoad)
/* 29B4 80001DB4 3C0E8008 */  lui        $t6, %hi(LastExitID)
/* 29B8 80001DB8 A42CBA60 */  sh         $t4, %lo(MapToLoad)($at)
/* 29BC 80001DBC 8DCE5370 */  lw         $t6, %lo(LastExitID)($t6)
/* 29C0 80001DC0 3C018008 */  lui        $at, %hi(SubmapToLoad)
/* 29C4 80001DC4 A42DBA62 */  sh         $t5, %lo(SubmapToLoad)($at)
/* 29C8 80001DC8 3C018008 */  lui        $at, %hi(LastExit)
/* 29CC 80001DCC A42EBA64 */  sh         $t6, %lo(LastExit)($at)
/* 29D0 80001DD0 3C018008 */  lui        $at, %hi(fadeType)
/* 29D4 80001DD4 240F0002 */  addiu      $t7, $zero, 2
/* 29D8 80001DD8 A42FB2F0 */  sh         $t7, %lo(fadeType)($at)
/* 29DC 80001DDC 8EC30000 */  lw         $v1, ($s6)
.L80001DE0:
/* 29E0 80001DE0 34780100 */  ori        $t8, $v1, 0x100
/* 29E4 80001DE4 0C009922 */  jal        VOID_FUN_80026488
/* 29E8 80001DE8 AED80000 */   sw        $t8, ($s6)
/* 29EC 80001DEC 10000026 */  b          .L80001E88
/* 29F0 80001DF0 00000000 */   nop
.L80001DF4:
/* 29F4 80001DF4 9739B2F2 */  lhu        $t9, -0x4d0e($t9)
/* 29F8 80001DF8 14590023 */  bne        $v0, $t9, .L80001E88
/* 29FC 80001DFC 3C028008 */   lui       $v0, %hi(fadeType)
/* 2A00 80001E00 9442B2F0 */  lhu        $v0, %lo(fadeType)($v0)
/* 2A04 80001E04 2404000F */  addiu      $a0, $zero, 0xf
/* 2A08 80001E08 24050002 */  addiu      $a1, $zero, 2
/* 2A0C 80001E0C 1040000A */  beqz       $v0, .L80001E38
/* 2A10 80001E10 3C068005 */   lui       $a2, 0x8005
/* 2A14 80001E14 1053000C */  beq        $v0, $s3, .L80001E48
/* 2A18 80001E18 2404000F */   addiu     $a0, $zero, 0xf
/* 2A1C 80001E1C 10540010 */  beq        $v0, $s4, .L80001E60
/* 2A20 80001E20 2404001F */   addiu     $a0, $zero, 0x1f
/* 2A24 80001E24 24010003 */  addiu      $at, $zero, 3
/* 2A28 80001E28 10410013 */  beq        $v0, $at, .L80001E78
/* 2A2C 80001E2C 2404001F */   addiu     $a0, $zero, 0x1f
/* 2A30 80001E30 10000015 */  b          .L80001E88
/* 2A34 80001E34 00000000 */   nop
.L80001E38:
/* 2A38 80001E38 0C008AC2 */  jal        func_80022B08
/* 2A3C 80001E3C 24C6D530 */   addiu     $a2, $a2, -0x2ad0
/* 2A40 80001E40 10000011 */  b          .L80001E88
/* 2A44 80001E44 00000000 */   nop
.L80001E48:
/* 2A48 80001E48 3C068005 */  lui        $a2, %hi(D_8004D570)
/* 2A4C 80001E4C 24C6D570 */  addiu      $a2, $a2, %lo(D_8004D570)
/* 2A50 80001E50 0C008AC2 */  jal        func_80022B08
/* 2A54 80001E54 24050002 */   addiu     $a1, $zero, 2
/* 2A58 80001E58 1000000B */  b          .L80001E88
/* 2A5C 80001E5C 00000000 */   nop
.L80001E60:
/* 2A60 80001E60 3C068005 */  lui        $a2, %hi(D_8004D5F8)
/* 2A64 80001E64 24C6D5F8 */  addiu      $a2, $a2, %lo(D_8004D5F8)
/* 2A68 80001E68 0C008AC2 */  jal        func_80022B08
/* 2A6C 80001E6C 24050002 */   addiu     $a1, $zero, 2
/* 2A70 80001E70 10000005 */  b          .L80001E88
/* 2A74 80001E74 00000000 */   nop
.L80001E78:
/* 2A78 80001E78 3C068005 */  lui        $a2, %hi(D_8004D698)
/* 2A7C 80001E7C 24C6D698 */  addiu      $a2, $a2, %lo(D_8004D698)
/* 2A80 80001E80 0C008AC2 */  jal        func_80022B08
/* 2A84 80001E84 24050002 */   addiu     $a1, $zero, 2
.L80001E88:
/* 2A88 80001E88 0C009996 */  jal        VOID_UNK_MUSIC
/* 2A8C 80001E8C 00000000 */   nop
/* 2A90 80001E90 0C00D3B4 */  jal        osGetTime
/* 2A94 80001E94 00000000 */   nop
/* 2A98 80001E98 3C048008 */  lui        $a0, %hi(D_8007BA28)
/* 2A9C 80001E9C 2484BA28 */  addiu      $a0, $a0, %lo(D_8007BA28)
/* 2AA0 80001EA0 AC820000 */  sw         $v0, ($a0)
/* 2AA4 80001EA4 AC830004 */  sw         $v1, 4($a0)
/* 2AA8 80001EA8 3C0A8008 */  lui        $t2, %hi(D_8007BA20)
/* 2AAC 80001EAC 3C0B8008 */  lui        $t3, %hi(D_8007BA24)
/* 2AB0 80001EB0 8D6BBA24 */  lw         $t3, %lo(D_8007BA24)($t3)
/* 2AB4 80001EB4 8D4ABA20 */  lw         $t2, %lo(D_8007BA20)($t2)
/* 2AB8 80001EB8 3C058008 */  lui        $a1, %hi(D_8007BA30)
/* 2ABC 80001EBC 24A5BA30 */  addiu      $a1, $a1, %lo(D_8007BA30)
/* 2AC0 80001EC0 006B082B */  sltu       $at, $v1, $t3
/* 2AC4 80001EC4 004A6023 */  subu       $t4, $v0, $t2
/* 2AC8 80001EC8 01816023 */  subu       $t4, $t4, $at
/* 2ACC 80001ECC 006B6823 */  subu       $t5, $v1, $t3
/* 2AD0 80001ED0 ACAD0004 */  sw         $t5, 4($a1)
/* 2AD4 80001ED4 ACAC0000 */  sw         $t4, ($a1)
/* 2AD8 80001ED8 3C018008 */  lui        $at, %hi(D_8007BA38)
/* 2ADC 80001EDC 3C188009 */  lui        $t8, %hi(D_8008C640)
/* 2AE0 80001EE0 8F18C640 */  lw         $t8, %lo(D_8008C640)($t8)
/* 2AE4 80001EE4 AC2CBA38 */  sw         $t4, %lo(D_8007BA38)($at)
/* 2AE8 80001EE8 AC2DBA3C */  sw         $t5, -0x45c4($at)
/* 2AEC 80001EEC 2401FFFF */  addiu      $at, $zero, -1
/* 2AF0 80001EF0 1301000D */  beq        $t8, $at, .L80001F28
/* 2AF4 80001EF4 00000000 */   nop
/* 2AF8 80001EF8 0C00950F */  jal        func_8002543C
/* 2AFC 80001EFC 00002025 */   or        $a0, $zero, $zero
/* 2B00 80001F00 14400009 */  bnez       $v0, .L80001F28
/* 2B04 80001F04 00002025 */   or        $a0, $zero, $zero
/* 2B08 80001F08 3C058009 */  lui        $a1, %hi(D_8008C640)
/* 2B0C 80001F0C 0C0094B6 */  jal        func_800252D8
/* 2B10 80001F10 8CA5C640 */   lw        $a1, %lo(D_8008C640)($a1)
/* 2B14 80001F14 0C0094D9 */  jal        func_80025364
/* 2B18 80001F18 00002025 */   or        $a0, $zero, $zero
/* 2B1C 80001F1C 2419FFFF */  addiu      $t9, $zero, -1
/* 2B20 80001F20 3C018009 */  lui        $at, %hi(D_8008C640)
/* 2B24 80001F24 AC39C640 */  sw         $t9, %lo(D_8008C640)($at)
.L80001F28:
/* 2B28 80001F28 3C038008 */  lui        $v1, %hi(D_8007B348)
/* 2B2C 80001F2C 2463B348 */  addiu      $v1, $v1, %lo(D_8007B348)
/* 2B30 80001F30 8C620000 */  lw         $v0, ($v1)
/* 2B34 80001F34 1440000C */  bnez       $v0, .L80001F68
/* 2B38 80001F38 24480001 */   addiu     $t0, $v0, 1
/* 2B3C 80001F3C AC680000 */  sw         $t0, ($v1)
/* 2B40 80001F40 02002025 */  or         $a0, $s0, $zero
.L80001F44:
/* 2B44 80001F44 02202825 */  or         $a1, $s1, $zero
/* 2B48 80001F48 0C00D008 */  jal        osRecvMesg
/* 2B4C 80001F4C 02603025 */   or        $a2, $s3, $zero
/* 2B50 80001F50 8FA9005C */  lw         $t1, 0x5c($sp)
/* 2B54 80001F54 852A0000 */  lh         $t2, ($t1)
/* 2B58 80001F58 566AFFFA */  bnel       $s3, $t2, .L80001F44
/* 2B5C 80001F5C 02002025 */   or        $a0, $s0, $zero
/* 2B60 80001F60 10000014 */  b          .L80001FB4
/* 2B64 80001F64 00000000 */   nop
.L80001F68:
/* 2B68 80001F68 02002025 */  or         $a0, $s0, $zero
.L80001F6C:
/* 2B6C 80001F6C 02202825 */  or         $a1, $s1, $zero
/* 2B70 80001F70 0C00D008 */  jal        osRecvMesg
/* 2B74 80001F74 02603025 */   or        $a2, $s3, $zero
/* 2B78 80001F78 8FAB005C */  lw         $t3, 0x5c($sp)
/* 2B7C 80001F7C 856C0000 */  lh         $t4, ($t3)
/* 2B80 80001F80 568CFFFA */  bnel       $s4, $t4, .L80001F6C
/* 2B84 80001F84 02002025 */   or        $a0, $s0, $zero
/* 2B88 80001F88 964D0000 */  lhu        $t5, ($s2)
/* 2B8C 80001F8C 29A10002 */  slti       $at, $t5, 2
/* 2B90 80001F90 10200008 */  beqz       $at, .L80001FB4
/* 2B94 80001F94 02002025 */   or        $a0, $s0, $zero
.L80001F98:
/* 2B98 80001F98 02202825 */  or         $a1, $s1, $zero
/* 2B9C 80001F9C 0C00D008 */  jal        osRecvMesg
/* 2BA0 80001FA0 02603025 */   or        $a2, $s3, $zero
/* 2BA4 80001FA4 964E0000 */  lhu        $t6, ($s2)
/* 2BA8 80001FA8 29C10002 */  slti       $at, $t6, 2
/* 2BAC 80001FAC 5420FFFA */  bnel       $at, $zero, .L80001F98
/* 2BB0 80001FB0 02002025 */   or        $a0, $s0, $zero
.L80001FB4:
/* 2BB4 80001FB4 3C048008 */  lui        $a0, %hi(D_8007B9D8)
/* 2BB8 80001FB8 8C84B9D8 */  lw         $a0, %lo(D_8007B9D8)($a0)
/* 2BBC 80001FBC 8FA50058 */  lw         $a1, 0x58($sp)
/* 2BC0 80001FC0 0C00D080 */  jal        osSendMesg
/* 2BC4 80001FC4 02603025 */   or        $a2, $s3, $zero
/* 2BC8 80001FC8 8FCF0000 */  lw         $t7, ($fp)
/* 2BCC 80001FCC A6400000 */  sh         $zero, ($s2)
/* 2BD0 80001FD0 39F80001 */  xori       $t8, $t7, 1
/* 2BD4 80001FD4 0C00D3B4 */  jal        osGetTime
/* 2BD8 80001FD8 AFD80000 */   sw        $t8, ($fp)
/* 2BDC 80001FDC 3C018008 */  lui        $at, %hi(D_8007BA20)
/* 2BE0 80001FE0 AC22BA20 */  sw         $v0, %lo(D_8007BA20)($at)
/* 2BE4 80001FE4 AC23BA24 */  sw         $v1, -0x45dc($at)
/* 2BE8 80001FE8 96F90000 */  lhu        $t9, ($s7)
/* 2BEC 80001FEC 1279FEC6 */  beq        $s3, $t9, .L80001B08
/* 2BF0 80001FF0 00000000 */   nop
.L80001FF4:
/* 2BF4 80001FF4 8EC80000 */  lw         $t0, ($s6)
/* 2BF8 80001FF8 3C108008 */  lui        $s0, %hi(messageQueue)
/* 2BFC 80001FFC 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 2C00 80002000 31090200 */  andi       $t1, $t0, 0x200
/* 2C04 80002004 11200003 */  beqz       $t1, .L80002014
/* 2C08 80002008 27B1005C */   addiu     $s1, $sp, 0x5c
/* 2C0C 8000200C 0C0094FC */  jal        func_800253F0
/* 2C10 80002010 00002025 */   or        $a0, $zero, $zero
.L80002014:
/* 2C14 80002014 02002025 */  or         $a0, $s0, $zero
.L80002018:
/* 2C18 80002018 02202825 */  or         $a1, $s1, $zero
/* 2C1C 8000201C 0C00D008 */  jal        osRecvMesg
/* 2C20 80002020 24060001 */   addiu     $a2, $zero, 1
/* 2C24 80002024 8FAA005C */  lw         $t2, 0x5c($sp)
/* 2C28 80002028 854B0000 */  lh         $t3, ($t2)
/* 2C2C 8000202C 568BFFFA */  bnel       $s4, $t3, .L80002018
/* 2C30 80002030 02002025 */   or        $a0, $s0, $zero
/* 2C34 80002034 8EC30000 */  lw         $v1, ($s6)
/* 2C38 80002038 2401FDFF */  addiu      $at, $zero, -0x201
/* 2C3C 8000203C 00002025 */  or         $a0, $zero, $zero
/* 2C40 80002040 306C0200 */  andi       $t4, $v1, 0x200
/* 2C44 80002044 11800009 */  beqz       $t4, .L8000206C
/* 2C48 80002048 00616824 */   and       $t5, $v1, $at
/* 2C4C 8000204C 0C00950F */  jal        func_8002543C
/* 2C50 80002050 AECD0000 */   sw        $t5, ($s6)
/* 2C54 80002054 50400006 */  beql       $v0, $zero, .L80002070
/* 2C58 80002058 8ECE0000 */   lw        $t6, ($s6)
.L8000205C:
/* 2C5C 8000205C 0C00950F */  jal        func_8002543C
/* 2C60 80002060 00002025 */   or        $a0, $zero, $zero
/* 2C64 80002064 1440FFFD */  bnez       $v0, .L8000205C
/* 2C68 80002068 00000000 */   nop
.L8000206C:
/* 2C6C 8000206C 8ECE0000 */  lw         $t6, ($s6)
.L80002070:
/* 2C70 80002070 31CF0400 */  andi       $t7, $t6, 0x400
/* 2C74 80002074 51E00004 */  beql       $t7, $zero, .L80002088
/* 2C78 80002078 8FBF0044 */   lw        $ra, 0x44($sp)
/* 2C7C 8000207C 0C00AD44 */  jal        UNK_SetsGameStateto2(PauseOrSaveLoad)
/* 2C80 80002080 24040004 */   addiu     $a0, $zero, 4
/* 2C84 80002084 8FBF0044 */  lw         $ra, 0x44($sp)
.L80002088:
/* 2C88 80002088 8FB00020 */  lw         $s0, 0x20($sp)
/* 2C8C 8000208C 8FB10024 */  lw         $s1, 0x24($sp)
/* 2C90 80002090 8FB20028 */  lw         $s2, 0x28($sp)
/* 2C94 80002094 8FB3002C */  lw         $s3, 0x2c($sp)
/* 2C98 80002098 8FB40030 */  lw         $s4, 0x30($sp)
/* 2C9C 8000209C 8FB50034 */  lw         $s5, 0x34($sp)
/* 2CA0 800020A0 8FB60038 */  lw         $s6, 0x38($sp)
/* 2CA4 800020A4 8FB7003C */  lw         $s7, 0x3c($sp)
/* 2CA8 800020A8 8FBE0040 */  lw         $fp, 0x40($sp)
/* 2CAC 800020AC 03E00008 */  jr         $ra
/* 2CB0 800020B0 27BD0060 */   addiu     $sp, $sp, 0x60

glabel Mode_Pause&SaveMenu
/* 2CB4 800020B4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2CB8 800020B8 AFB60030 */  sw         $s6, 0x30($sp)
/* 2CBC 800020BC 3C168008 */  lui        $s6, %hi(D_8007B348)
/* 2CC0 800020C0 AFB30024 */  sw         $s3, 0x24($sp)
/* 2CC4 800020C4 24130002 */  addiu      $s3, $zero, 2
/* 2CC8 800020C8 26D6B348 */  addiu      $s6, $s6, %lo(D_8007B348)
/* 2CCC 800020CC AFBF003C */  sw         $ra, 0x3c($sp)
/* 2CD0 800020D0 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2CD4 800020D4 AFB70034 */  sw         $s7, 0x34($sp)
/* 2CD8 800020D8 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2CDC 800020DC AFB40028 */  sw         $s4, 0x28($sp)
/* 2CE0 800020E0 AFB20020 */  sw         $s2, 0x20($sp)
/* 2CE4 800020E4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2CE8 800020E8 AFB00018 */  sw         $s0, 0x18($sp)
/* 2CEC 800020EC AEC00000 */  sw         $zero, ($s6)
/* 2CF0 800020F0 3C0E8008 */  lui        $t6, %hi(GameMode)
/* 2CF4 800020F4 95CEB2E0 */  lhu        $t6, %lo(GameMode)($t6)
/* 2CF8 800020F8 3C018009 */  lui        $at, %hi(D_8008FD0E)
/* 2CFC 800020FC AFA0004C */  sw         $zero, 0x4c($sp)
/* 2D00 80002100 166E003D */  bne        $s3, $t6, .L800021F8
/* 2D04 80002104 A020FD0E */   sb        $zero, %lo(D_8008FD0E)($at)
/* 2D08 80002108 3C178030 */  lui        $s7, %hi(gfxData)
/* 2D0C 8000210C 3C148008 */  lui        $s4, %hi(gfxDataBankSwitch)
/* 2D10 80002110 3C108008 */  lui        $s0, %hi(messageQueue)
/* 2D14 80002114 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 2D18 80002118 2694B2F4 */  addiu      $s4, $s4, %lo(gfxDataBankSwitch)
/* 2D1C 8000211C 26F71000 */  addiu      $s7, $s7, %lo(gfxData)
/* 2D20 80002120 341ED150 */  ori        $fp, $zero, 0xd150
/* 2D24 80002124 24120001 */  addiu      $s2, $zero, 1
/* 2D28 80002128 27B1004C */  addiu      $s1, $sp, 0x4c
.L8000212C:
/* 2D2C 8000212C 3C048009 */  lui        $a0, %hi(controller_no)
/* 2D30 80002130 0C00C530 */  jal        controllerButtonsSomething
/* 2D34 80002134 80842870 */   lb        $a0, %lo(controller_no)($a0)
/* 2D38 80002138 3C018008 */  lui        $at, %hi(D_8007B2F8)
/* 2D3C 8000213C AC20B2F8 */  sw         $zero, %lo(D_8007B2F8)($at)
/* 2D40 80002140 8E8F0000 */  lw         $t7, ($s4)
/* 2D44 80002144 01FE0019 */  multu      $t7, $fp
/* 2D48 80002148 0000C012 */  mflo       $t8
/* 2D4C 8000214C 02F82021 */  addu       $a0, $s7, $t8
/* 2D50 80002150 0C000477 */  jal        graphicsMain
/* 2D54 80002154 00000000 */   nop
/* 2D58 80002158 8E990000 */  lw         $t9, ($s4)
/* 2D5C 8000215C 033E0019 */  multu      $t9, $fp
/* 2D60 80002160 00004012 */  mflo       $t0
/* 2D64 80002164 02E8A821 */  addu       $s5, $s7, $t0
/* 2D68 80002168 0C009996 */  jal        VOID_UNK_MUSIC
/* 2D6C 8000216C 00000000 */   nop
/* 2D70 80002170 8EC20000 */  lw         $v0, ($s6)
/* 2D74 80002174 1440000C */  bnez       $v0, .L800021A8
/* 2D78 80002178 24490001 */   addiu     $t1, $v0, 1
/* 2D7C 8000217C AEC90000 */  sw         $t1, ($s6)
/* 2D80 80002180 02002025 */  or         $a0, $s0, $zero
.L80002184:
/* 2D84 80002184 02202825 */  or         $a1, $s1, $zero
/* 2D88 80002188 0C00D008 */  jal        osRecvMesg
/* 2D8C 8000218C 02403025 */   or        $a2, $s2, $zero
/* 2D90 80002190 8FAA004C */  lw         $t2, 0x4c($sp)
/* 2D94 80002194 854B0000 */  lh         $t3, ($t2)
/* 2D98 80002198 564BFFFA */  bnel       $s2, $t3, .L80002184
/* 2D9C 8000219C 02002025 */   or        $a0, $s0, $zero
/* 2DA0 800021A0 10000009 */  b          .L800021C8
/* 2DA4 800021A4 00000000 */   nop
.L800021A8:
/* 2DA8 800021A8 02002025 */  or         $a0, $s0, $zero
.L800021AC:
/* 2DAC 800021AC 02202825 */  or         $a1, $s1, $zero
/* 2DB0 800021B0 0C00D008 */  jal        osRecvMesg
/* 2DB4 800021B4 02403025 */   or        $a2, $s2, $zero
/* 2DB8 800021B8 8FAC004C */  lw         $t4, 0x4c($sp)
/* 2DBC 800021BC 858D0000 */  lh         $t5, ($t4)
/* 2DC0 800021C0 566DFFFA */  bnel       $s3, $t5, .L800021AC
/* 2DC4 800021C4 02002025 */   or        $a0, $s0, $zero
.L800021C8:
/* 2DC8 800021C8 3C048008 */  lui        $a0, %hi(D_8007B9D8)
/* 2DCC 800021CC 8C84B9D8 */  lw         $a0, %lo(D_8007B9D8)($a0)
/* 2DD0 800021D0 02A02825 */  or         $a1, $s5, $zero
/* 2DD4 800021D4 0C00D080 */  jal        osSendMesg
/* 2DD8 800021D8 02403025 */   or        $a2, $s2, $zero
/* 2DDC 800021DC 8E8E0000 */  lw         $t6, ($s4)
/* 2DE0 800021E0 3C188008 */  lui        $t8, %hi(GameMode)
/* 2DE4 800021E4 39CF0001 */  xori       $t7, $t6, 1
/* 2DE8 800021E8 AE8F0000 */  sw         $t7, ($s4)
/* 2DEC 800021EC 9718B2E0 */  lhu        $t8, %lo(GameMode)($t8)
/* 2DF0 800021F0 1278FFCE */  beq        $s3, $t8, .L8000212C
/* 2DF4 800021F4 00000000 */   nop
.L800021F8:
/* 2DF8 800021F8 3C198009 */  lui        $t9, %hi(D_8008FD0E)
/* 2DFC 800021FC 8339FD0E */  lb         $t9, %lo(D_8008FD0E)($t9)
/* 2E00 80002200 3C108008 */  lui        $s0, %hi(messageQueue)
/* 2E04 80002204 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 2E08 80002208 13200006 */  beqz       $t9, .L80002224
/* 2E0C 8000220C 27B1004C */   addiu     $s1, $sp, 0x4c
/* 2E10 80002210 0C000BA8 */  jal        CheckIfRoomIsValidLoadPoint
/* 2E14 80002214 00000000 */   nop
/* 2E18 80002218 24080002 */  addiu      $t0, $zero, 2
/* 2E1C 8000221C 3C018008 */  lui        $at, %hi(cutsceneNum)
/* 2E20 80002220 A428B2E8 */  sh         $t0, %lo(cutsceneNum)($at)
.L80002224:
/* 2E24 80002224 0C009A81 */  jal        VOID_FUN_80026a04
/* 2E28 80002228 00000000 */   nop
/* 2E2C 8000222C 02002025 */  or         $a0, $s0, $zero
.L80002230:
/* 2E30 80002230 02202825 */  or         $a1, $s1, $zero
/* 2E34 80002234 0C00D008 */  jal        osRecvMesg
/* 2E38 80002238 24060001 */   addiu     $a2, $zero, 1
/* 2E3C 8000223C 8FA9004C */  lw         $t1, 0x4c($sp)
/* 2E40 80002240 852A0000 */  lh         $t2, ($t1)
/* 2E44 80002244 566AFFFA */  bnel       $s3, $t2, .L80002230
/* 2E48 80002248 02002025 */   or        $a0, $s0, $zero
/* 2E4C 8000224C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 2E50 80002250 8FB00018 */  lw         $s0, 0x18($sp)
/* 2E54 80002254 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2E58 80002258 8FB20020 */  lw         $s2, 0x20($sp)
/* 2E5C 8000225C 8FB30024 */  lw         $s3, 0x24($sp)
/* 2E60 80002260 8FB40028 */  lw         $s4, 0x28($sp)
/* 2E64 80002264 8FB5002C */  lw         $s5, 0x2c($sp)
/* 2E68 80002268 8FB60030 */  lw         $s6, 0x30($sp)
/* 2E6C 8000226C 8FB70034 */  lw         $s7, 0x34($sp)
/* 2E70 80002270 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2E74 80002274 03E00008 */  jr         $ra
/* 2E78 80002278 27BD0050 */   addiu     $sp, $sp, 0x50

glabel Mode_TitleScreen
/* 2E7C 8000227C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2E80 80002280 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2E84 80002284 3C1E8008 */  lui        $fp, %hi(D_8007B348)
/* 2E88 80002288 27DEB348 */  addiu      $fp, $fp, %lo(D_8007B348)
/* 2E8C 8000228C AFBF003C */  sw         $ra, 0x3c($sp)
/* 2E90 80002290 AFB70034 */  sw         $s7, 0x34($sp)
/* 2E94 80002294 AFB60030 */  sw         $s6, 0x30($sp)
/* 2E98 80002298 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2E9C 8000229C AFB40028 */  sw         $s4, 0x28($sp)
/* 2EA0 800022A0 AFB30024 */  sw         $s3, 0x24($sp)
/* 2EA4 800022A4 AFB20020 */  sw         $s2, 0x20($sp)
/* 2EA8 800022A8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2EAC 800022AC AFB00018 */  sw         $s0, 0x18($sp)
/* 2EB0 800022B0 AFA0004C */  sw         $zero, 0x4c($sp)
/* 2EB4 800022B4 0C00C710 */  jal        loadTitleScreenData
/* 2EB8 800022B8 AFC00000 */   sw        $zero, ($fp)
/* 2EBC 800022BC 0C040000 */  jal        virt_actorSpace
/* 2EC0 800022C0 00000000 */   nop
/* 2EC4 800022C4 3C0E8008 */  lui        $t6, %hi(GameMode)
/* 2EC8 800022C8 95CEB2E0 */  lhu        $t6, %lo(GameMode)($t6)
/* 2ECC 800022CC 24010003 */  addiu      $at, $zero, 3
/* 2ED0 800022D0 3417D150 */  ori        $s7, $zero, 0xd150
/* 2ED4 800022D4 15C1003C */  bne        $t6, $at, .L800023C8
/* 2ED8 800022D8 3C168030 */   lui       $s6, %hi(gfxData)
/* 2EDC 800022DC 3C148008 */  lui        $s4, %hi(gfxDataBankSwitch)
/* 2EE0 800022E0 3C108008 */  lui        $s0, %hi(messageQueue)
/* 2EE4 800022E4 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 2EE8 800022E8 2694B2F4 */  addiu      $s4, $s4, %lo(gfxDataBankSwitch)
/* 2EEC 800022EC 26D61000 */  addiu      $s6, $s6, %lo(gfxData)
/* 2EF0 800022F0 24130002 */  addiu      $s3, $zero, 2
/* 2EF4 800022F4 24120001 */  addiu      $s2, $zero, 1
/* 2EF8 800022F8 27B1004C */  addiu      $s1, $sp, 0x4c
.L800022FC:
/* 2EFC 800022FC 3C048009 */  lui        $a0, %hi(controller_no)
/* 2F00 80002300 0C00C530 */  jal        controllerButtonsSomething
/* 2F04 80002304 80842870 */   lb        $a0, %lo(controller_no)($a0)
/* 2F08 80002308 3C018008 */  lui        $at, %hi(D_8007B2F8)
/* 2F0C 8000230C AC20B2F8 */  sw         $zero, %lo(D_8007B2F8)($at)
/* 2F10 80002310 8E8F0000 */  lw         $t7, ($s4)
/* 2F14 80002314 01F70019 */  multu      $t7, $s7
/* 2F18 80002318 0000C012 */  mflo       $t8
/* 2F1C 8000231C 02D82021 */  addu       $a0, $s6, $t8
/* 2F20 80002320 0C000477 */  jal        graphicsMain
/* 2F24 80002324 00000000 */   nop
/* 2F28 80002328 8E990000 */  lw         $t9, ($s4)
/* 2F2C 8000232C 8FC20000 */  lw         $v0, ($fp)
/* 2F30 80002330 03370019 */  multu      $t9, $s7
/* 2F34 80002334 24490001 */  addiu      $t1, $v0, 1
/* 2F38 80002338 00004012 */  mflo       $t0
/* 2F3C 8000233C 02C8A821 */  addu       $s5, $s6, $t0
/* 2F40 80002340 5440000D */  bnel       $v0, $zero, .L80002378
/* 2F44 80002344 02002025 */   or        $a0, $s0, $zero
/* 2F48 80002348 AFC90000 */  sw         $t1, ($fp)
/* 2F4C 8000234C 02002025 */  or         $a0, $s0, $zero
.L80002350:
/* 2F50 80002350 02202825 */  or         $a1, $s1, $zero
/* 2F54 80002354 0C00D008 */  jal        osRecvMesg
/* 2F58 80002358 02403025 */   or        $a2, $s2, $zero
/* 2F5C 8000235C 8FAA004C */  lw         $t2, 0x4c($sp)
/* 2F60 80002360 854B0000 */  lh         $t3, ($t2)
/* 2F64 80002364 564BFFFA */  bnel       $s2, $t3, .L80002350
/* 2F68 80002368 02002025 */   or        $a0, $s0, $zero
/* 2F6C 8000236C 10000009 */  b          .L80002394
/* 2F70 80002370 00000000 */   nop
/* 2F74 80002374 02002025 */  or         $a0, $s0, $zero
.L80002378:
/* 2F78 80002378 02202825 */  or         $a1, $s1, $zero
/* 2F7C 8000237C 0C00D008 */  jal        osRecvMesg
/* 2F80 80002380 02403025 */   or        $a2, $s2, $zero
/* 2F84 80002384 8FAC004C */  lw         $t4, 0x4c($sp)
/* 2F88 80002388 858D0000 */  lh         $t5, ($t4)
/* 2F8C 8000238C 566DFFFA */  bnel       $s3, $t5, .L80002378
/* 2F90 80002390 02002025 */   or        $a0, $s0, $zero
.L80002394:
/* 2F94 80002394 3C048008 */  lui        $a0, %hi(D_8007B9D8)
/* 2F98 80002398 8C84B9D8 */  lw         $a0, %lo(D_8007B9D8)($a0)
/* 2F9C 8000239C 02A02825 */  or         $a1, $s5, $zero
/* 2FA0 800023A0 0C00D080 */  jal        osSendMesg
/* 2FA4 800023A4 02403025 */   or        $a2, $s2, $zero
/* 2FA8 800023A8 8E8E0000 */  lw         $t6, ($s4)
/* 2FAC 800023AC 3C188008 */  lui        $t8, %hi(GameMode)
/* 2FB0 800023B0 24010003 */  addiu      $at, $zero, 3
/* 2FB4 800023B4 39CF0001 */  xori       $t7, $t6, 1
/* 2FB8 800023B8 AE8F0000 */  sw         $t7, ($s4)
/* 2FBC 800023BC 9718B2E0 */  lhu        $t8, %lo(GameMode)($t8)
/* 2FC0 800023C0 1301FFCE */  beq        $t8, $at, .L800022FC
/* 2FC4 800023C4 00000000 */   nop
.L800023C8:
/* 2FC8 800023C8 3C108008 */  lui        $s0, %hi(messageQueue)
/* 2FCC 800023CC 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 2FD0 800023D0 27B1004C */  addiu      $s1, $sp, 0x4c
/* 2FD4 800023D4 24130002 */  addiu      $s3, $zero, 2
/* 2FD8 800023D8 02002025 */  or         $a0, $s0, $zero
.L800023DC:
/* 2FDC 800023DC 02202825 */  or         $a1, $s1, $zero
/* 2FE0 800023E0 0C00D008 */  jal        osRecvMesg
/* 2FE4 800023E4 24060001 */   addiu     $a2, $zero, 1
/* 2FE8 800023E8 8FB9004C */  lw         $t9, 0x4c($sp)
/* 2FEC 800023EC 87280000 */  lh         $t0, ($t9)
/* 2FF0 800023F0 5668FFFA */  bnel       $s3, $t0, .L800023DC
/* 2FF4 800023F4 02002025 */   or        $a0, $s0, $zero
/* 2FF8 800023F8 8FBF003C */  lw         $ra, 0x3c($sp)
/* 2FFC 800023FC 8FB00018 */  lw         $s0, 0x18($sp)
/* 3000 80002400 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3004 80002404 8FB20020 */  lw         $s2, 0x20($sp)
/* 3008 80002408 8FB30024 */  lw         $s3, 0x24($sp)
/* 300C 8000240C 8FB40028 */  lw         $s4, 0x28($sp)
/* 3010 80002410 8FB5002C */  lw         $s5, 0x2c($sp)
/* 3014 80002414 8FB60030 */  lw         $s6, 0x30($sp)
/* 3018 80002418 8FB70034 */  lw         $s7, 0x34($sp)
/* 301C 8000241C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 3020 80002420 03E00008 */  jr         $ra
/* 3024 80002424 27BD0050 */   addiu     $sp, $sp, 0x50

glabel Mode_OPCredits&Story
/* 3028 80002428 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 302C 8000242C AFBE0038 */  sw         $fp, 0x38($sp)
/* 3030 80002430 3C1E8008 */  lui        $fp, %hi(D_8007B348)
/* 3034 80002434 27DEB348 */  addiu      $fp, $fp, %lo(D_8007B348)
/* 3038 80002438 AFBF003C */  sw         $ra, 0x3c($sp)
/* 303C 8000243C AFB70034 */  sw         $s7, 0x34($sp)
/* 3040 80002440 AFB60030 */  sw         $s6, 0x30($sp)
/* 3044 80002444 AFB5002C */  sw         $s5, 0x2c($sp)
/* 3048 80002448 AFB40028 */  sw         $s4, 0x28($sp)
/* 304C 8000244C AFB30024 */  sw         $s3, 0x24($sp)
/* 3050 80002450 AFB20020 */  sw         $s2, 0x20($sp)
/* 3054 80002454 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3058 80002458 AFB00018 */  sw         $s0, 0x18($sp)
/* 305C 8000245C AFA0004C */  sw         $zero, 0x4c($sp)
/* 3060 80002460 0C00C71E */  jal        loadCredits&StoryData
/* 3064 80002464 AFC00000 */   sw        $zero, ($fp)
/* 3068 80002468 0C040000 */  jal        virt_actorSpace
/* 306C 8000246C 00000000 */   nop
/* 3070 80002470 3C0E8008 */  lui        $t6, %hi(GameMode)
/* 3074 80002474 95CEB2E0 */  lhu        $t6, %lo(GameMode)($t6)
/* 3078 80002478 24010004 */  addiu      $at, $zero, 4
/* 307C 8000247C 3417D150 */  ori        $s7, $zero, 0xd150
/* 3080 80002480 15C1003D */  bne        $t6, $at, .L80002578
/* 3084 80002484 3C168030 */   lui       $s6, %hi(gfxData)
/* 3088 80002488 3C148008 */  lui        $s4, %hi(gfxDataBankSwitch)
/* 308C 8000248C 3C108008 */  lui        $s0, %hi(messageQueue)
/* 3090 80002490 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 3094 80002494 2694B2F4 */  addiu      $s4, $s4, %lo(gfxDataBankSwitch)
/* 3098 80002498 26D61000 */  addiu      $s6, $s6, %lo(gfxData)
/* 309C 8000249C 24130002 */  addiu      $s3, $zero, 2
/* 30A0 800024A0 24120001 */  addiu      $s2, $zero, 1
/* 30A4 800024A4 27B1004C */  addiu      $s1, $sp, 0x4c
.L800024A8:
/* 30A8 800024A8 3C048009 */  lui        $a0, %hi(controller_no)
/* 30AC 800024AC 0C00C530 */  jal        controllerButtonsSomething
/* 30B0 800024B0 80842870 */   lb        $a0, %lo(controller_no)($a0)
/* 30B4 800024B4 3C018008 */  lui        $at, %hi(D_8007B2F8)
/* 30B8 800024B8 0C009996 */  jal        VOID_UNK_MUSIC
/* 30BC 800024BC AC20B2F8 */   sw        $zero, %lo(D_8007B2F8)($at)
/* 30C0 800024C0 8E8F0000 */  lw         $t7, ($s4)
/* 30C4 800024C4 01F70019 */  multu      $t7, $s7
/* 30C8 800024C8 0000C012 */  mflo       $t8
/* 30CC 800024CC 02D82021 */  addu       $a0, $s6, $t8
/* 30D0 800024D0 0C000477 */  jal        graphicsMain
/* 30D4 800024D4 00000000 */   nop
/* 30D8 800024D8 8E990000 */  lw         $t9, ($s4)
/* 30DC 800024DC 8FC20000 */  lw         $v0, ($fp)
/* 30E0 800024E0 03370019 */  multu      $t9, $s7
/* 30E4 800024E4 24490001 */  addiu      $t1, $v0, 1
/* 30E8 800024E8 00004012 */  mflo       $t0
/* 30EC 800024EC 02C8A821 */  addu       $s5, $s6, $t0
/* 30F0 800024F0 5440000D */  bnel       $v0, $zero, .L80002528
/* 30F4 800024F4 02002025 */   or        $a0, $s0, $zero
/* 30F8 800024F8 AFC90000 */  sw         $t1, ($fp)
/* 30FC 800024FC 02002025 */  or         $a0, $s0, $zero
.L80002500:
/* 3100 80002500 02202825 */  or         $a1, $s1, $zero
/* 3104 80002504 0C00D008 */  jal        osRecvMesg
/* 3108 80002508 02403025 */   or        $a2, $s2, $zero
/* 310C 8000250C 8FAA004C */  lw         $t2, 0x4c($sp)
/* 3110 80002510 854B0000 */  lh         $t3, ($t2)
/* 3114 80002514 564BFFFA */  bnel       $s2, $t3, .L80002500
/* 3118 80002518 02002025 */   or        $a0, $s0, $zero
/* 311C 8000251C 10000009 */  b          .L80002544
/* 3120 80002520 00000000 */   nop
/* 3124 80002524 02002025 */  or         $a0, $s0, $zero
.L80002528:
/* 3128 80002528 02202825 */  or         $a1, $s1, $zero
/* 312C 8000252C 0C00D008 */  jal        osRecvMesg
/* 3130 80002530 02403025 */   or        $a2, $s2, $zero
/* 3134 80002534 8FAC004C */  lw         $t4, 0x4c($sp)
/* 3138 80002538 858D0000 */  lh         $t5, ($t4)
/* 313C 8000253C 566DFFFA */  bnel       $s3, $t5, .L80002528
/* 3140 80002540 02002025 */   or        $a0, $s0, $zero
.L80002544:
/* 3144 80002544 3C048008 */  lui        $a0, %hi(D_8007B9D8)
/* 3148 80002548 8C84B9D8 */  lw         $a0, %lo(D_8007B9D8)($a0)
/* 314C 8000254C 02A02825 */  or         $a1, $s5, $zero
/* 3150 80002550 0C00D080 */  jal        osSendMesg
/* 3154 80002554 02403025 */   or        $a2, $s2, $zero
/* 3158 80002558 8E8E0000 */  lw         $t6, ($s4)
/* 315C 8000255C 3C188008 */  lui        $t8, %hi(GameMode)
/* 3160 80002560 24010004 */  addiu      $at, $zero, 4
/* 3164 80002564 39CF0001 */  xori       $t7, $t6, 1
/* 3168 80002568 AE8F0000 */  sw         $t7, ($s4)
/* 316C 8000256C 9718B2E0 */  lhu        $t8, %lo(GameMode)($t8)
/* 3170 80002570 1301FFCD */  beq        $t8, $at, .L800024A8
/* 3174 80002574 00000000 */   nop
.L80002578:
/* 3178 80002578 3C108008 */  lui        $s0, %hi(messageQueue)
/* 317C 8000257C 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 3180 80002580 27B1004C */  addiu      $s1, $sp, 0x4c
/* 3184 80002584 24130002 */  addiu      $s3, $zero, 2
/* 3188 80002588 0C0099EE */  jal        updateBGM
/* 318C 8000258C 2404FFFF */   addiu     $a0, $zero, -1
/* 3190 80002590 0C009996 */  jal        VOID_UNK_MUSIC
/* 3194 80002594 00000000 */   nop
/* 3198 80002598 02002025 */  or         $a0, $s0, $zero
.L8000259C:
/* 319C 8000259C 02202825 */  or         $a1, $s1, $zero
/* 31A0 800025A0 0C00D008 */  jal        osRecvMesg
/* 31A4 800025A4 24060001 */   addiu     $a2, $zero, 1
/* 31A8 800025A8 8FB9004C */  lw         $t9, 0x4c($sp)
/* 31AC 800025AC 87280000 */  lh         $t0, ($t9)
/* 31B0 800025B0 5668FFFA */  bnel       $s3, $t0, .L8000259C
/* 31B4 800025B4 02002025 */   or        $a0, $s0, $zero
/* 31B8 800025B8 8FBF003C */  lw         $ra, 0x3c($sp)
/* 31BC 800025BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 31C0 800025C0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 31C4 800025C4 8FB20020 */  lw         $s2, 0x20($sp)
/* 31C8 800025C8 8FB30024 */  lw         $s3, 0x24($sp)
/* 31CC 800025CC 8FB40028 */  lw         $s4, 0x28($sp)
/* 31D0 800025D0 8FB5002C */  lw         $s5, 0x2c($sp)
/* 31D4 800025D4 8FB60030 */  lw         $s6, 0x30($sp)
/* 31D8 800025D8 8FB70034 */  lw         $s7, 0x34($sp)
/* 31DC 800025DC 8FBE0038 */  lw         $fp, 0x38($sp)
/* 31E0 800025E0 03E00008 */  jr         $ra
/* 31E4 800025E4 27BD0050 */   addiu     $sp, $sp, 0x50

glabel Mode_EndCredits
/* 31E8 800025E8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 31EC 800025EC AFBE0038 */  sw         $fp, 0x38($sp)
/* 31F0 800025F0 3C1E8008 */  lui        $fp, %hi(D_8007B348)
/* 31F4 800025F4 27DEB348 */  addiu      $fp, $fp, %lo(D_8007B348)
/* 31F8 800025F8 AFBF003C */  sw         $ra, 0x3c($sp)
/* 31FC 800025FC AFB70034 */  sw         $s7, 0x34($sp)
/* 3200 80002600 AFB60030 */  sw         $s6, 0x30($sp)
/* 3204 80002604 AFB5002C */  sw         $s5, 0x2c($sp)
/* 3208 80002608 AFB40028 */  sw         $s4, 0x28($sp)
/* 320C 8000260C AFB30024 */  sw         $s3, 0x24($sp)
/* 3210 80002610 AFB20020 */  sw         $s2, 0x20($sp)
/* 3214 80002614 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3218 80002618 AFB00018 */  sw         $s0, 0x18($sp)
/* 321C 8000261C AFA0004C */  sw         $zero, 0x4c($sp)
/* 3220 80002620 0C00C72C */  jal        loadCreditsData
/* 3224 80002624 AFC00000 */   sw        $zero, ($fp)
/* 3228 80002628 0C040000 */  jal        virt_actorSpace
/* 322C 8000262C 00000000 */   nop
/* 3230 80002630 0C0099EE */  jal        updateBGM
/* 3234 80002634 24040014 */   addiu     $a0, $zero, 0x14
/* 3238 80002638 3C0E8008 */  lui        $t6, %hi(GameMode)
/* 323C 8000263C 95CEB2E0 */  lhu        $t6, %lo(GameMode)($t6)
/* 3240 80002640 24010005 */  addiu      $at, $zero, 5
/* 3244 80002644 3417D150 */  ori        $s7, $zero, 0xd150
/* 3248 80002648 15C1003D */  bne        $t6, $at, .L80002740
/* 324C 8000264C 3C168030 */   lui       $s6, %hi(gfxData)
/* 3250 80002650 3C148008 */  lui        $s4, %hi(gfxDataBankSwitch)
/* 3254 80002654 3C108008 */  lui        $s0, %hi(messageQueue)
/* 3258 80002658 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 325C 8000265C 2694B2F4 */  addiu      $s4, $s4, %lo(gfxDataBankSwitch)
/* 3260 80002660 26D61000 */  addiu      $s6, $s6, %lo(gfxData)
/* 3264 80002664 24130002 */  addiu      $s3, $zero, 2
/* 3268 80002668 24120001 */  addiu      $s2, $zero, 1
/* 326C 8000266C 27B1004C */  addiu      $s1, $sp, 0x4c
.L80002670:
/* 3270 80002670 3C048009 */  lui        $a0, %hi(controller_no)
/* 3274 80002674 0C00C530 */  jal        controllerButtonsSomething
/* 3278 80002678 80842870 */   lb        $a0, %lo(controller_no)($a0)
/* 327C 8000267C 3C018008 */  lui        $at, %hi(D_8007B2F8)
/* 3280 80002680 0C009996 */  jal        VOID_UNK_MUSIC
/* 3284 80002684 AC20B2F8 */   sw        $zero, %lo(D_8007B2F8)($at)
/* 3288 80002688 8E8F0000 */  lw         $t7, ($s4)
/* 328C 8000268C 01F70019 */  multu      $t7, $s7
/* 3290 80002690 0000C012 */  mflo       $t8
/* 3294 80002694 02D82021 */  addu       $a0, $s6, $t8
/* 3298 80002698 0C000477 */  jal        graphicsMain
/* 329C 8000269C 00000000 */   nop
/* 32A0 800026A0 8E990000 */  lw         $t9, ($s4)
/* 32A4 800026A4 8FC20000 */  lw         $v0, ($fp)
/* 32A8 800026A8 03370019 */  multu      $t9, $s7
/* 32AC 800026AC 24490001 */  addiu      $t1, $v0, 1
/* 32B0 800026B0 00004012 */  mflo       $t0
/* 32B4 800026B4 02C8A821 */  addu       $s5, $s6, $t0
/* 32B8 800026B8 5440000D */  bnel       $v0, $zero, .L800026F0
/* 32BC 800026BC 02002025 */   or        $a0, $s0, $zero
/* 32C0 800026C0 AFC90000 */  sw         $t1, ($fp)
/* 32C4 800026C4 02002025 */  or         $a0, $s0, $zero
.L800026C8:
/* 32C8 800026C8 02202825 */  or         $a1, $s1, $zero
/* 32CC 800026CC 0C00D008 */  jal        osRecvMesg
/* 32D0 800026D0 02403025 */   or        $a2, $s2, $zero
/* 32D4 800026D4 8FAA004C */  lw         $t2, 0x4c($sp)
/* 32D8 800026D8 854B0000 */  lh         $t3, ($t2)
/* 32DC 800026DC 564BFFFA */  bnel       $s2, $t3, .L800026C8
/* 32E0 800026E0 02002025 */   or        $a0, $s0, $zero
/* 32E4 800026E4 10000009 */  b          .L8000270C
/* 32E8 800026E8 00000000 */   nop
/* 32EC 800026EC 02002025 */  or         $a0, $s0, $zero
.L800026F0:
/* 32F0 800026F0 02202825 */  or         $a1, $s1, $zero
/* 32F4 800026F4 0C00D008 */  jal        osRecvMesg
/* 32F8 800026F8 02403025 */   or        $a2, $s2, $zero
/* 32FC 800026FC 8FAC004C */  lw         $t4, 0x4c($sp)
/* 3300 80002700 858D0000 */  lh         $t5, ($t4)
/* 3304 80002704 566DFFFA */  bnel       $s3, $t5, .L800026F0
/* 3308 80002708 02002025 */   or        $a0, $s0, $zero
.L8000270C:
/* 330C 8000270C 3C048008 */  lui        $a0, %hi(D_8007B9D8)
/* 3310 80002710 8C84B9D8 */  lw         $a0, %lo(D_8007B9D8)($a0)
/* 3314 80002714 02A02825 */  or         $a1, $s5, $zero
/* 3318 80002718 0C00D080 */  jal        osSendMesg
/* 331C 8000271C 02403025 */   or        $a2, $s2, $zero
/* 3320 80002720 8E8E0000 */  lw         $t6, ($s4)
/* 3324 80002724 3C188008 */  lui        $t8, %hi(GameMode)
/* 3328 80002728 24010005 */  addiu      $at, $zero, 5
/* 332C 8000272C 39CF0001 */  xori       $t7, $t6, 1
/* 3330 80002730 AE8F0000 */  sw         $t7, ($s4)
/* 3334 80002734 9718B2E0 */  lhu        $t8, %lo(GameMode)($t8)
/* 3338 80002738 1301FFCD */  beq        $t8, $at, .L80002670
/* 333C 8000273C 00000000 */   nop
.L80002740:
/* 3340 80002740 3C108008 */  lui        $s0, %hi(messageQueue)
/* 3344 80002744 2610B9E8 */  addiu      $s0, $s0, %lo(messageQueue)
/* 3348 80002748 27B1004C */  addiu      $s1, $sp, 0x4c
/* 334C 8000274C 24130002 */  addiu      $s3, $zero, 2
/* 3350 80002750 0C0099EE */  jal        updateBGM
/* 3354 80002754 2404FFFF */   addiu     $a0, $zero, -1
/* 3358 80002758 0C009996 */  jal        VOID_UNK_MUSIC
/* 335C 8000275C 00000000 */   nop
/* 3360 80002760 3C028008 */  lui        $v0, %hi(HUDState)
/* 3364 80002764 2442B2E4 */  addiu      $v0, $v0, %lo(HUDState)
/* 3368 80002768 8C590000 */  lw         $t9, ($v0)
/* 336C 8000276C 37288000 */  ori        $t0, $t9, 0x8000
/* 3370 80002770 AC480000 */  sw         $t0, ($v0)
/* 3374 80002774 02002025 */  or         $a0, $s0, $zero
.L80002778:
/* 3378 80002778 02202825 */  or         $a1, $s1, $zero
/* 337C 8000277C 0C00D008 */  jal        osRecvMesg
/* 3380 80002780 24060001 */   addiu     $a2, $zero, 1
/* 3384 80002784 8FA9004C */  lw         $t1, 0x4c($sp)
/* 3388 80002788 852A0000 */  lh         $t2, ($t1)
/* 338C 8000278C 566AFFFA */  bnel       $s3, $t2, .L80002778
/* 3390 80002790 02002025 */   or        $a0, $s0, $zero
/* 3394 80002794 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3398 80002798 8FB00018 */  lw         $s0, 0x18($sp)
/* 339C 8000279C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 33A0 800027A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 33A4 800027A4 8FB30024 */  lw         $s3, 0x24($sp)
/* 33A8 800027A8 8FB40028 */  lw         $s4, 0x28($sp)
/* 33AC 800027AC 8FB5002C */  lw         $s5, 0x2c($sp)
/* 33B0 800027B0 8FB60030 */  lw         $s6, 0x30($sp)
/* 33B4 800027B4 8FB70034 */  lw         $s7, 0x34($sp)
/* 33B8 800027B8 8FBE0038 */  lw         $fp, 0x38($sp)
/* 33BC 800027BC 03E00008 */  jr         $ra
/* 33C0 800027C0 27BD0050 */   addiu     $sp, $sp, 0x50
/* 33C4 800027C4 00000000 */  nop
/* 33C8 800027C8 00000000 */  nop
/* 33CC 800027CC 00000000 */  nop
