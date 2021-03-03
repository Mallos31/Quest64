.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel SetDataForNewGame
/* 33D0 800027D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33D4 800027D4 3C028008 */  lui        $v0, 0x8008
/* 33D8 800027D8 3C038008 */  lui        $v1, 0x8008
/* 33DC 800027DC 3C040087 */  lui        $a0, 0x87
/* 33E0 800027E0 3C078008 */  lui        $a3, %hi(D_8007BC14)
/* 33E4 800027E4 3C088008 */  lui        $t0, %hi(D_8007BC1C)
/* 33E8 800027E8 44800000 */  mtc1       $zero, $f0
/* 33EC 800027EC 2508BC1C */  addiu      $t0, $t0, %lo(D_8007BC1C)
/* 33F0 800027F0 24E7BC14 */  addiu      $a3, $a3, %lo(D_8007BC14)
/* 33F4 800027F4 2484B830 */  addiu      $a0, $a0, -0x47d0
/* 33F8 800027F8 2463BA80 */  addiu      $v1, $v1, -0x4580
/* 33FC 800027FC 2442BAB8 */  addiu      $v0, $v0, -0x4548
/* 3400 80002800 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3404 80002804 3C0E8005 */  lui        $t6, %hi(BrianStartingData)
/* 3408 80002808 25CE3D04 */  addiu      $t6, $t6, %lo(BrianStartingData)
/* 340C 8000280C 25D90030 */  addiu      $t9, $t6, 0x30
/* 3410 80002810 00604825 */  or         $t1, $v1, $zero
.L80002814:
/* 3414 80002814 8DC10000 */  lw         $at, ($t6)
/* 3418 80002818 25CE000C */  addiu      $t6, $t6, 0xc
/* 341C 8000281C 2529000C */  addiu      $t1, $t1, 0xc
/* 3420 80002820 AD21FFF4 */  sw         $at, -0xc($t1)
/* 3424 80002824 8DC1FFF8 */  lw         $at, -8($t6)
/* 3428 80002828 AD21FFF8 */  sw         $at, -8($t1)
/* 342C 8000282C 8DC1FFFC */  lw         $at, -4($t6)
/* 3430 80002830 15D9FFF8 */  bne        $t6, $t9, .L80002814
/* 3434 80002834 AD21FFFC */   sw        $at, -4($t1)
/* 3438 80002838 8DC10000 */  lw         $at, ($t6)
/* 343C 8000283C 3C0D8008 */  lui        $t5, %hi(D_8007BB38)
/* 3440 80002840 240BFFFF */  addiu      $t3, $zero, -1
/* 3444 80002844 AD210000 */  sw         $at, ($t1)
/* 3448 80002848 8DD90004 */  lw         $t9, 4($t6)
/* 344C 8000284C 240C0001 */  addiu      $t4, $zero, 1
/* 3450 80002850 25ADBB38 */  addiu      $t5, $t5, %lo(D_8007BB38)
/* 3454 80002854 AD390004 */  sw         $t9, 4($t1)
/* 3458 80002858 C4640020 */  lwc1       $f4, 0x20($v1)
/* 345C 8000285C C4660018 */  lwc1       $f6, 0x18($v1)
/* 3460 80002860 846A0002 */  lh         $t2, 2($v1)
/* 3464 80002864 AC430010 */  sw         $v1, 0x10($v0)
/* 3468 80002868 A4400006 */  sh         $zero, 6($v0)
/* 346C 8000286C A4400008 */  sh         $zero, 8($v0)
/* 3470 80002870 A440011C */  sh         $zero, 0x11c($v0)
/* 3474 80002874 A44B0066 */  sh         $t3, 0x66($v0)
/* 3478 80002878 A4400068 */  sh         $zero, 0x68($v0)
/* 347C 8000287C A44C006C */  sh         $t4, 0x6c($v0)
/* 3480 80002880 AC430078 */  sw         $v1, 0x78($v0)
/* 3484 80002884 AC4D007C */  sw         $t5, 0x7c($v0)
/* 3488 80002888 A4400072 */  sh         $zero, 0x72($v0)
/* 348C 8000288C A4400074 */  sh         $zero, 0x74($v0)
/* 3490 80002890 3C018008 */  lui        $at, %hi(brianExitAnim)
/* 3494 80002894 24180108 */  addiu      $t8, $zero, 0x108
/* 3498 80002898 E4440038 */  swc1       $f4, 0x38($v0)
/* 349C 8000289C E446003C */  swc1       $f6, 0x3c($v0)
/* 34A0 800028A0 A44A0064 */  sh         $t2, 0x64($v0)
/* 34A4 800028A4 AC38BA4C */  sw         $t8, %lo(brianExitAnim)($at)
/* 34A8 800028A8 3C018008 */  lui        $at, %hi(MapToLoad)
/* 34AC 800028AC 240F000D */  addiu      $t7, $zero, 0xd
/* 34B0 800028B0 A42FBA60 */  sh         $t7, %lo(MapToLoad)($at)
/* 34B4 800028B4 3C018008 */  lui        $at, %hi(SubmapToLoad)
/* 34B8 800028B8 24190011 */  addiu      $t9, $zero, 0x11
/* 34BC 800028BC A439BA62 */  sh         $t9, %lo(SubmapToLoad)($at)
/* 34C0 800028C0 3C018008 */  lui        $at, %hi(LastExit)
/* 34C4 800028C4 A420BA64 */  sh         $zero, %lo(LastExit)($at)
/* 34C8 800028C8 3C018008 */  lui        $at, %hi(D_8007BCA0)
/* 34CC 800028CC E420BCA0 */  swc1       $f0, %lo(D_8007BCA0)($at)
/* 34D0 800028D0 E4E00000 */  swc1       $f0, ($a3)
/* 34D4 800028D4 C4E80000 */  lwc1       $f8, ($a3)
/* 34D8 800028D8 3C018008 */  lui        $at, %hi(D_8007BC10)
/* 34DC 800028DC 3C0E0087 */  lui        $t6, 0x87
/* 34E0 800028E0 E428BC10 */  swc1       $f8, %lo(D_8007BC10)($at)
/* 34E4 800028E4 E5000000 */  swc1       $f0, ($t0)
/* 34E8 800028E8 C50A0000 */  lwc1       $f10, ($t0)
/* 34EC 800028EC 3C018008 */  lui        $at, 0x8008
/* 34F0 800028F0 25CE1900 */  addiu      $t6, $t6, 0x1900
/* 34F4 800028F4 3C058020 */  lui        $a1, %hi(virt_BrianData)
/* 34F8 800028F8 24A56000 */  addiu      $a1, $a1, %lo(virt_BrianData)
/* 34FC 800028FC 01C43023 */  subu       $a2, $t6, $a0
/* 3500 80002900 0C009098 */  jal        loadData
/* 3504 80002904 E42ABC18 */   swc1      $f10, -0x43e8($at)
/* 3508 80002908 8FBF0014 */  lw         $ra, 0x14($sp)
/* 350C 8000290C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3510 80002910 03E00008 */  jr         $ra
/* 3514 80002914 00000000 */   nop

glabel func_80002918
/* 3518 80002918 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 351C 8000291C 3C028008 */  lui        $v0, %hi(brianAction)
/* 3520 80002920 3C038008 */  lui        $v1, %hi(D_8007BC40)
/* 3524 80002924 44807000 */  mtc1       $zero, $f14
/* 3528 80002928 2463BC40 */  addiu      $v1, $v1, %lo(D_8007BC40)
/* 352C 8000292C 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* 3530 80002930 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3534 80002934 844E0064 */  lh         $t6, 0x64($v0)
/* 3538 80002938 3C188005 */  lui        $t8, %hi(D_80053D00)
/* 353C 8000293C 3C018008 */  lui        $at, 0x8008
/* 3540 80002940 000E7880 */  sll        $t7, $t6, 2
/* 3544 80002944 030FC021 */  addu       $t8, $t8, $t7
/* 3548 80002948 8F183D00 */  lw         $t8, %lo(D_80053D00)($t8)
/* 354C 8000294C A4400000 */  sh         $zero, ($v0)
/* 3550 80002950 A4400124 */  sh         $zero, 0x124($v0)
/* 3554 80002954 C42CBA40 */  lwc1       $f12, -0x45c0($at)
/* 3558 80002958 E44E0018 */  swc1       $f14, 0x18($v0)
/* 355C 8000295C 3C018008 */  lui        $at, %hi(brianYPosToLoad)
/* 3560 80002960 E44C0014 */  swc1       $f12, 0x14($v0)
/* 3564 80002964 C420BA44 */  lwc1       $f0, %lo(brianYPosToLoad)($at)
/* 3568 80002968 E44E0020 */  swc1       $f14, 0x20($v0)
/* 356C 8000296C E44E0028 */  swc1       $f14, 0x28($v0)
/* 3570 80002970 3C018008 */  lui        $at, %hi(brianZPosToLoad)
/* 3574 80002974 E440001C */  swc1       $f0, 0x1c($v0)
/* 3578 80002978 C424BA48 */  lwc1       $f4, %lo(brianZPosToLoad)($at)
/* 357C 8000297C 44060000 */  mfc1       $a2, $f0
/* 3580 80002980 E44E002C */  swc1       $f14, 0x2c($v0)
/* 3584 80002984 E44E0030 */  swc1       $f14, 0x30($v0)
/* 3588 80002988 E44E0034 */  swc1       $f14, 0x34($v0)
/* 358C 8000298C 24070A00 */  addiu      $a3, $zero, 0xa00
/* 3590 80002990 AFA30010 */  sw         $v1, 0x10($sp)
/* 3594 80002994 AFB80024 */  sw         $t8, 0x24($sp)
/* 3598 80002998 0C003B98 */  jal        func_8000EE60
/* 359C 8000299C E4440024 */   swc1      $f4, 0x24($v0)
/* 35A0 800029A0 3C038008 */  lui        $v1, %hi(D_8007BC40)
/* 35A4 800029A4 2463BC40 */  addiu      $v1, $v1, %lo(D_8007BC40)
/* 35A8 800029A8 C4660004 */  lwc1       $f6, 4($v1)
/* 35AC 800029AC 3C018008 */  lui        $at, %hi(BrianYPos)
/* 35B0 800029B0 3C048008 */  lui        $a0, %hi(BrianPos)
/* 35B4 800029B4 E426BAD0 */  swc1       $f6, %lo(BrianYPos)($at)
/* 35B8 800029B8 C468000C */  lwc1       $f8, 0xc($v1)
/* 35BC 800029BC 3C018008 */  lui        $at, %hi(BrianShadowFwdTiltMult)
/* 35C0 800029C0 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 35C4 800029C4 E428BAF8 */  swc1       $f8, %lo(BrianShadowFwdTiltMult)($at)
/* 35C8 800029C8 C46A0010 */  lwc1       $f10, 0x10($v1)
/* 35CC 800029CC 24060001 */  addiu      $a2, $zero, 1
/* 35D0 800029D0 24080001 */  addiu      $t0, $zero, 1
/* 35D4 800029D4 E42ABAFC */  swc1       $f10, -0x4504($at)
/* 35D8 800029D8 C4700014 */  lwc1       $f16, 0x14($v1)
/* 35DC 800029DC 3C018008 */  lui        $at, %hi(BrianShadowSideTiltMult)
/* 35E0 800029E0 24090001 */  addiu      $t1, $zero, 1
/* 35E4 800029E4 E430BB00 */  swc1       $f16, %lo(BrianShadowSideTiltMult)($at)
/* 35E8 800029E8 94620018 */  lhu        $v0, 0x18($v1)
/* 35EC 800029EC 3C018008 */  lui        $at, 0x8008
/* 35F0 800029F0 3C078008 */  lui        $a3, 0x8008
/* 35F4 800029F4 30598000 */  andi       $t9, $v0, 0x8000
/* 35F8 800029F8 13200004 */  beqz       $t9, .L80002A0C
/* 35FC 800029FC 00000000 */   nop
/* 3600 80002A00 3C018008 */  lui        $at, %hi(cameraMode)
/* 3604 80002A04 10000002 */  b          .L80002A10
/* 3608 80002A08 A420BB2E */   sh        $zero, %lo(cameraMode)($at)
.L80002A0C:
/* 360C 80002A0C A422BB2E */  sh         $v0, -0x44d2($at)
.L80002A10:
/* 3610 80002A10 3C028008 */  lui        $v0, %hi(brianAnimationOverride_UNUSED)
/* 3614 80002A14 9442BABE */  lhu        $v0, %lo(brianAnimationOverride_UNUSED)($v0)
/* 3618 80002A18 10400004 */  beqz       $v0, .L80002A2C
/* 361C 80002A1C 00402825 */   or        $a1, $v0, $zero
/* 3620 80002A20 3C078008 */  lui        $a3, %hi(tempCurrAnim)
/* 3624 80002A24 10000003 */  b          .L80002A34
/* 3628 80002A28 8CE7BC2C */   lw        $a3, %lo(tempCurrAnim)($a3)
.L80002A2C:
/* 362C 80002A2C 8CE7BC2C */  lw         $a3, -0x43d4($a3)
/* 3630 80002A30 00E02825 */  or         $a1, $a3, $zero
.L80002A34:
/* 3634 80002A34 AFA80010 */  sw         $t0, 0x10($sp)
/* 3638 80002A38 0C00762C */  jal        updateAnim
/* 363C 80002A3C AFA90014 */   sw        $t1, 0x14($sp)
/* 3640 80002A40 3C038008 */  lui        $v1, %hi(brianExitAnim)
/* 3644 80002A44 2463BA4C */  addiu      $v1, $v1, %lo(brianExitAnim)
/* 3648 80002A48 8C620000 */  lw         $v0, ($v1)
/* 364C 80002A4C 240B0003 */  addiu      $t3, $zero, 3
/* 3650 80002A50 24010001 */  addiu      $at, $zero, 1
/* 3654 80002A54 304A0008 */  andi       $t2, $v0, 8
/* 3658 80002A58 11400009 */  beqz       $t2, .L80002A80
/* 365C 80002A5C 00022A03 */   sra       $a1, $v0, 8
/* 3660 80002A60 3C018008 */  lui        $at, %hi(brianAction)
/* 3664 80002A64 240C000F */  addiu      $t4, $zero, 0xf
/* 3668 80002A68 A42BBAB8 */  sh         $t3, %lo(brianAction)($at)
/* 366C 80002A6C A42CBABC */  sh         $t4, -0x4544($at)
/* 3670 80002A70 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 3674 80002A74 240D0001 */  addiu      $t5, $zero, 1
/* 3678 80002A78 100000DE */  b          .L80002DF4
/* 367C 80002A7C A42DBB2C */   sh        $t5, %lo(D_8007BB2C)($at)
.L80002A80:
/* 3680 80002A80 30AE0007 */  andi       $t6, $a1, 7
/* 3684 80002A84 11C10009 */  beq        $t6, $at, .L80002AAC
/* 3688 80002A88 3C078008 */   lui       $a3, 0x8008
/* 368C 80002A8C 24010002 */  addiu      $at, $zero, 2
/* 3690 80002A90 11C10028 */  beq        $t6, $at, .L80002B34
/* 3694 80002A94 2408000A */   addiu     $t0, $zero, 0xa
/* 3698 80002A98 24010003 */  addiu      $at, $zero, 3
/* 369C 80002A9C 11C1009F */  beq        $t6, $at, .L80002D1C
/* 36A0 80002AA0 240F000F */   addiu     $t7, $zero, 0xf
/* 36A4 80002AA4 24010004 */  addiu      $at, $zero, 4
/* 36A8 80002AA8 15C100D2 */  bne        $t6, $at, .L80002DF4
.L80002AAC:
/* 36AC 80002AAC 3C018008 */   lui       $at, %hi(brianAction)
/* 36B0 80002AB0 240F0008 */  addiu      $t7, $zero, 8
/* 36B4 80002AB4 2418000F */  addiu      $t8, $zero, 0xf
/* 36B8 80002AB8 A42FBAB8 */  sh         $t7, %lo(brianAction)($at)
/* 36BC 80002ABC A438BABC */  sh         $t8, -0x4544($at)
/* 36C0 80002AC0 3C0141A0 */  lui        $at, 0x41a0
/* 36C4 80002AC4 44809000 */  mtc1       $zero, $f18
/* 36C8 80002AC8 44812000 */  mtc1       $at, $f4
/* 36CC 80002ACC 24E5BC30 */  addiu      $a1, $a3, -0x43d0
/* 36D0 80002AD0 3C018008 */  lui        $at, %hi(BrianZRotation)
/* 36D4 80002AD4 E4B20000 */  swc1       $f18, ($a1)
/* 36D8 80002AD8 E4A40004 */  swc1       $f4, 4($a1)
/* 36DC 80002ADC 0C008CBD */  jal        func_800232F4
/* 36E0 80002AE0 C42CBADC */   lwc1      $f12, %lo(BrianZRotation)($at)
/* 36E4 80002AE4 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 36E8 80002AE8 24E7BC30 */  addiu      $a3, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 36EC 80002AEC C4E60000 */  lwc1       $f6, ($a3)
/* 36F0 80002AF0 3C018008 */  lui        $at, %hi(D_8007BBE0)
/* 36F4 80002AF4 24190001 */  addiu      $t9, $zero, 1
/* 36F8 80002AF8 E426BBE0 */  swc1       $f6, %lo(D_8007BBE0)($at)
/* 36FC 80002AFC C4E80004 */  lwc1       $f8, 4($a3)
/* 3700 80002B00 24040005 */  addiu      $a0, $zero, 5
/* 3704 80002B04 24050021 */  addiu      $a1, $zero, 0x21
/* 3708 80002B08 E428BBE4 */  swc1       $f8, -0x441c($at)
/* 370C 80002B0C 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 3710 80002B10 A439BB2C */  sh         $t9, %lo(D_8007BB2C)($at)
/* 3714 80002B14 0C009A35 */  jal        func_800268D4
/* 3718 80002B18 240600FF */   addiu     $a2, $zero, 0xff
/* 371C 80002B1C 2404000F */  addiu      $a0, $zero, 0xf
/* 3720 80002B20 24050021 */  addiu      $a1, $zero, 0x21
/* 3724 80002B24 0C009A35 */  jal        func_800268D4
/* 3728 80002B28 240600FF */   addiu     $a2, $zero, 0xff
/* 372C 80002B2C 100000B1 */  b          .L80002DF4
/* 3730 80002B30 00000000 */   nop
.L80002B34:
/* 3734 80002B34 3C098008 */  lui        $t1, %hi(D_8007BA50)
/* 3738 80002B38 8D29BA50 */  lw         $t1, %lo(D_8007BA50)($t1)
/* 373C 80002B3C 3C0B8008 */  lui        $t3, %hi(D_80084F24)
/* 3740 80002B40 8D6B4F24 */  lw         $t3, %lo(D_80084F24)($t3)
/* 3744 80002B44 3C018007 */  lui        $at, %hi(D_80070F10)
/* 3748 80002B48 00095080 */  sll        $t2, $t1, 2
/* 374C 80002B4C D4220F10 */  ldc1       $f2, %lo(D_80070F10)($at)
/* 3750 80002B50 01495023 */  subu       $t2, $t2, $t1
/* 3754 80002B54 3C018008 */  lui        $at, %hi(brianAction)
/* 3758 80002B58 000A50C0 */  sll        $t2, $t2, 3
/* 375C 80002B5C A428BAB8 */  sh         $t0, %lo(brianAction)($at)
/* 3760 80002B60 014B1021 */  addu       $v0, $t2, $t3
/* 3764 80002B64 C44A000C */  lwc1       $f10, 0xc($v0)
/* 3768 80002B68 3C018008 */  lui        $at, 0x8008
/* 376C 80002B6C 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 3770 80002B70 46005421 */  cvt.d.s    $f16, $f10
/* 3774 80002B74 24E7BC30 */  addiu      $a3, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 3778 80002B78 46228482 */  mul.d      $f18, $f16, $f2
/* 377C 80002B7C 240E0015 */  addiu      $t6, $zero, 0x15
/* 3780 80002B80 240F0055 */  addiu      $t7, $zero, 0x55
/* 3784 80002B84 2419001F */  addiu      $t9, $zero, 0x1f
/* 3788 80002B88 46209020 */  cvt.s.d    $f0, $f18
/* 378C 80002B8C E420BADC */  swc1       $f0, -0x4524($at)
/* 3790 80002B90 3C018008 */  lui        $at, %hi(D_8007BBEC)
/* 3794 80002B94 E420BBEC */  swc1       $f0, %lo(D_8007BBEC)($at)
/* 3798 80002B98 8C6C0000 */  lw         $t4, ($v1)
/* 379C 80002B9C 3C018008 */  lui        $at, 0x8008
/* 37A0 80002BA0 318D0001 */  andi       $t5, $t4, 1
/* 37A4 80002BA4 11A0000E */  beqz       $t5, .L80002BE0
/* 37A8 80002BA8 00000000 */   nop
/* 37AC 80002BAC 3C018008 */  lui        $at, %hi(ParticleTimer)
/* 37B0 80002BB0 A42EBABC */  sh         $t6, %lo(ParticleTimer)($at)
/* 37B4 80002BB4 3C018008 */  lui        $at, %hi(BrianAnimFrameCounter)
/* 37B8 80002BB8 A42FBB20 */  sh         $t7, %lo(BrianAnimFrameCounter)($at)
/* 37BC 80002BBC 3C018007 */  lui        $at, %hi(D_80070F18)
/* 37C0 80002BC0 C4240F18 */  lwc1       $f4, %lo(D_80070F18)($at)
/* 37C4 80002BC4 3C018007 */  lui        $at, %hi(D_80070F1C)
/* 37C8 80002BC8 2418000E */  addiu      $t8, $zero, 0xe
/* 37CC 80002BCC E4E40000 */  swc1       $f4, ($a3)
/* 37D0 80002BD0 C4260F1C */  lwc1       $f6, %lo(D_80070F1C)($at)
/* 37D4 80002BD4 AFB80034 */  sw         $t8, 0x34($sp)
/* 37D8 80002BD8 10000018 */  b          .L80002C3C
/* 37DC 80002BDC E4E60004 */   swc1      $f6, 4($a3)
.L80002BE0:
/* 37E0 80002BE0 A439BABC */  sh         $t9, -0x4544($at)
/* 37E4 80002BE4 3C018008 */  lui        $at, %hi(D_8007BBEC)
/* 37E8 80002BE8 C428BBEC */  lwc1       $f8, %lo(D_8007BBEC)($at)
/* 37EC 80002BEC 3C018007 */  lui        $at, %hi(D_80070F20)
/* 37F0 80002BF0 D4300F20 */  ldc1       $f16, %lo(D_80070F20)($at)
/* 37F4 80002BF4 460042A1 */  cvt.d.s    $f10, $f8
/* 37F8 80002BF8 3C018008 */  lui        $at, 0x8008
/* 37FC 80002BFC 46305480 */  add.d      $f18, $f10, $f16
/* 3800 80002C00 2408003C */  addiu      $t0, $zero, 0x3c
/* 3804 80002C04 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 3808 80002C08 24E7BC30 */  addiu      $a3, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 380C 80002C0C 46209120 */  cvt.s.d    $f4, $f18
/* 3810 80002C10 24090014 */  addiu      $t1, $zero, 0x14
/* 3814 80002C14 AFA90034 */  sw         $t1, 0x34($sp)
/* 3818 80002C18 E424BBEC */  swc1       $f4, -0x4414($at)
/* 381C 80002C1C 3C018008 */  lui        $at, %hi(BrianAnimFrameCounter)
/* 3820 80002C20 A428BB20 */  sh         $t0, %lo(BrianAnimFrameCounter)($at)
/* 3824 80002C24 3C018007 */  lui        $at, %hi(D_80070F28)
/* 3828 80002C28 C4260F28 */  lwc1       $f6, %lo(D_80070F28)($at)
/* 382C 80002C2C 3C018007 */  lui        $at, %hi(D_80070F2C)
/* 3830 80002C30 E4E60000 */  swc1       $f6, ($a3)
/* 3834 80002C34 C4280F2C */  lwc1       $f8, %lo(D_80070F2C)($at)
/* 3838 80002C38 E4E80004 */  swc1       $f8, 4($a3)
.L80002C3C:
/* 383C 80002C3C C44A000C */  lwc1       $f10, 0xc($v0)
/* 3840 80002C40 AFA20020 */  sw         $v0, 0x20($sp)
/* 3844 80002C44 00E02825 */  or         $a1, $a3, $zero
/* 3848 80002C48 46005407 */  neg.s      $f16, $f10
/* 384C 80002C4C 460084A1 */  cvt.d.s    $f18, $f16
/* 3850 80002C50 46229102 */  mul.d      $f4, $f18, $f2
/* 3854 80002C54 0C008CBD */  jal        func_800232F4
/* 3858 80002C58 46202320 */   cvt.s.d   $f12, $f4
/* 385C 80002C5C 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 3860 80002C60 24E7BC30 */  addiu      $a3, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 3864 80002C64 3C018008 */  lui        $at, %hi(BrianModelScale)
/* 3868 80002C68 C428BAF0 */  lwc1       $f8, %lo(BrianModelScale)($at)
/* 386C 80002C6C C4E60000 */  lwc1       $f6, ($a3)
/* 3870 80002C70 8FA20020 */  lw         $v0, 0x20($sp)
/* 3874 80002C74 3C018008 */  lui        $at, 0x8008
/* 3878 80002C78 46083282 */  mul.s      $f10, $f6, $f8
/* 387C 80002C7C C4500000 */  lwc1       $f16, ($v0)
/* 3880 80002C80 240A0001 */  addiu      $t2, $zero, 1
/* 3884 80002C84 3C048008 */  lui        $a0, %hi(BrianPos)
/* 3888 80002C88 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 388C 80002C8C 460A8481 */  sub.s      $f18, $f16, $f10
/* 3890 80002C90 E432BACC */  swc1       $f18, -0x4534($at)
/* 3894 80002C94 C4E40004 */  lwc1       $f4, 4($a3)
/* 3898 80002C98 C4500008 */  lwc1       $f16, 8($v0)
/* 389C 80002C9C 3C018008 */  lui        $at, %hi(BrianZPos)
/* 38A0 80002CA0 46082182 */  mul.s      $f6, $f4, $f8
/* 38A4 80002CA4 46068280 */  add.s      $f10, $f16, $f6
/* 38A8 80002CA8 E42ABAD4 */  swc1       $f10, %lo(BrianZPos)($at)
/* 38AC 80002CAC 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 38B0 80002CB0 0C0019C8 */  jal        loadBrianAnim
/* 38B4 80002CB4 A42ABB2C */   sh        $t2, %lo(D_8007BB2C)($at)
/* 38B8 80002CB8 3C0B8008 */  lui        $t3, %hi(BrianCurrAnim)
/* 38BC 80002CBC 856BBB1E */  lh         $t3, %lo(BrianCurrAnim)($t3)
/* 38C0 80002CC0 8FAD0024 */  lw         $t5, 0x24($sp)
/* 38C4 80002CC4 3C048008 */  lui        $a0, 0x8008
/* 38C8 80002CC8 000B6080 */  sll        $t4, $t3, 2
/* 38CC 80002CCC 018B6023 */  subu       $t4, $t4, $t3
/* 38D0 80002CD0 000C6080 */  sll        $t4, $t4, 2
/* 38D4 80002CD4 3C068008 */  lui        $a2, %hi(BrianModelScale)
/* 38D8 80002CD8 8CC6BAF0 */  lw         $a2, %lo(BrianModelScale)($a2)
/* 38DC 80002CDC 2484BACC */  addiu      $a0, $a0, -0x4534
/* 38E0 80002CE0 0C007649 */  jal        func_8001D924
/* 38E4 80002CE4 018D2821 */   addu      $a1, $t4, $t5
/* 38E8 80002CE8 3C058008 */  lui        $a1, %hi(BrianAnimFrameCounter)
/* 38EC 80002CEC 3C068008 */  lui        $a2, %hi(brianExitAnim)
/* 38F0 80002CF0 8CC6BA4C */  lw         $a2, %lo(brianExitAnim)($a2)
/* 38F4 80002CF4 94A5BB20 */  lhu        $a1, %lo(BrianAnimFrameCounter)($a1)
/* 38F8 80002CF8 24040001 */  addiu      $a0, $zero, 1
/* 38FC 80002CFC 0C0036DF */  jal        func_8000DB7C
/* 3900 80002D00 8FA70020 */   lw        $a3, 0x20($sp)
/* 3904 80002D04 93A40037 */  lbu        $a0, 0x37($sp)
/* 3908 80002D08 24050008 */  addiu      $a1, $zero, 8
/* 390C 80002D0C 0C009A35 */  jal        func_800268D4
/* 3910 80002D10 240600FF */   addiu     $a2, $zero, 0xff
/* 3914 80002D14 10000037 */  b          .L80002DF4
/* 3918 80002D18 00000000 */   nop
.L80002D1C:
/* 391C 80002D1C 3C018008 */  lui        $at, %hi(brianAction)
/* 3920 80002D20 240E0008 */  addiu      $t6, $zero, 8
/* 3924 80002D24 A42EBAB8 */  sh         $t6, %lo(brianAction)($at)
/* 3928 80002D28 A42FBABC */  sh         $t7, -0x4544($at)
/* 392C 80002D2C 3C0141A0 */  lui        $at, 0x41a0
/* 3930 80002D30 44809000 */  mtc1       $zero, $f18
/* 3934 80002D34 44812000 */  mtc1       $at, $f4
/* 3938 80002D38 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 393C 80002D3C 24E5BC30 */  addiu      $a1, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 3940 80002D40 3C018008 */  lui        $at, %hi(BrianZRotation)
/* 3944 80002D44 E4B20000 */  swc1       $f18, ($a1)
/* 3948 80002D48 E4A40004 */  swc1       $f4, 4($a1)
/* 394C 80002D4C 0C008CBD */  jal        func_800232F4
/* 3950 80002D50 C42CBADC */   lwc1      $f12, %lo(BrianZRotation)($at)
/* 3954 80002D54 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 3958 80002D58 24E7BC30 */  addiu      $a3, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 395C 80002D5C C4E80000 */  lwc1       $f8, ($a3)
/* 3960 80002D60 3C018008 */  lui        $at, %hi(D_8007BBE0)
/* 3964 80002D64 24180001 */  addiu      $t8, $zero, 1
/* 3968 80002D68 E428BBE0 */  swc1       $f8, %lo(D_8007BBE0)($at)
/* 396C 80002D6C C4F00004 */  lwc1       $f16, 4($a3)
/* 3970 80002D70 3C048008 */  lui        $a0, %hi(BrianPos)
/* 3974 80002D74 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 3978 80002D78 E430BBE4 */  swc1       $f16, -0x441c($at)
/* 397C 80002D7C 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 3980 80002D80 0C0019C8 */  jal        loadBrianAnim
/* 3984 80002D84 A438BB2C */   sh        $t8, %lo(D_8007BB2C)($at)
/* 3988 80002D88 3C198008 */  lui        $t9, %hi(BrianCurrAnim)
/* 398C 80002D8C 8739BB1E */  lh         $t9, %lo(BrianCurrAnim)($t9)
/* 3990 80002D90 8FA90024 */  lw         $t1, 0x24($sp)
/* 3994 80002D94 3C048008 */  lui        $a0, 0x8008
/* 3998 80002D98 00194080 */  sll        $t0, $t9, 2
/* 399C 80002D9C 01194023 */  subu       $t0, $t0, $t9
/* 39A0 80002DA0 00084080 */  sll        $t0, $t0, 2
/* 39A4 80002DA4 3C068008 */  lui        $a2, %hi(BrianModelScale)
/* 39A8 80002DA8 8CC6BAF0 */  lw         $a2, %lo(BrianModelScale)($a2)
/* 39AC 80002DAC 2484BACC */  addiu      $a0, $a0, -0x4534
/* 39B0 80002DB0 0C007649 */  jal        func_8001D924
/* 39B4 80002DB4 01092821 */   addu      $a1, $t0, $t1
/* 39B8 80002DB8 3C058008 */  lui        $a1, %hi(BrianAnimFrameCounter)
/* 39BC 80002DBC 3C068008 */  lui        $a2, %hi(brianExitAnim)
/* 39C0 80002DC0 8CC6BA4C */  lw         $a2, %lo(brianExitAnim)($a2)
/* 39C4 80002DC4 94A5BB20 */  lhu        $a1, %lo(BrianAnimFrameCounter)($a1)
/* 39C8 80002DC8 24040001 */  addiu      $a0, $zero, 1
/* 39CC 80002DCC 0C0036DF */  jal        func_8000DB7C
/* 39D0 80002DD0 8FA70020 */   lw        $a3, 0x20($sp)
/* 39D4 80002DD4 24040005 */  addiu      $a0, $zero, 5
/* 39D8 80002DD8 24050021 */  addiu      $a1, $zero, 0x21
/* 39DC 80002DDC 0C009A35 */  jal        func_800268D4
/* 39E0 80002DE0 240600FF */   addiu     $a2, $zero, 0xff
/* 39E4 80002DE4 2404000F */  addiu      $a0, $zero, 0xf
/* 39E8 80002DE8 24050021 */  addiu      $a1, $zero, 0x21
/* 39EC 80002DEC 0C009A35 */  jal        func_800268D4
/* 39F0 80002DF0 240600FF */   addiu     $a2, $zero, 0xff
.L80002DF4:
/* 39F4 80002DF4 3C0A8008 */  lui        $t2, %hi(LastExitID)
/* 39F8 80002DF8 8D4A5370 */  lw         $t2, %lo(LastExitID)($t2)
/* 39FC 80002DFC 3C018008 */  lui        $at, %hi(UNK_EscapeFlag)
/* 3A00 80002E00 A420BAC0 */  sh         $zero, %lo(UNK_EscapeFlag)($at)
/* 3A04 80002E04 2401FFFF */  addiu      $at, $zero, -1
/* 3A08 80002E08 15410004 */  bne        $t2, $at, .L80002E1C
/* 3A0C 80002E0C 3C0D8008 */   lui       $t5, %hi(HUDState)
/* 3A10 80002E10 340C0010 */  ori        $t4, $zero, 0x10
/* 3A14 80002E14 3C018008 */  lui        $at, %hi(UNK_EscapeFlag)
/* 3A18 80002E18 A42CBAC0 */  sh         $t4, %lo(UNK_EscapeFlag)($at)
.L80002E1C:
/* 3A1C 80002E1C 8DADB2E4 */  lw         $t5, %lo(HUDState)($t5)
/* 3A20 80002E20 3C188008 */  lui        $t8, %hi(brianDataStart)
/* 3A24 80002E24 3C028008 */  lui        $v0, 0x8008
/* 3A28 80002E28 31AE0800 */  andi       $t6, $t5, 0x800
/* 3A2C 80002E2C 11C0000B */  beqz       $t6, .L80002E5C
/* 3A30 80002E30 3C0A8008 */   lui       $t2, 0x8008
/* 3A34 80002E34 8F18BB30 */  lw         $t8, %lo(brianDataStart)($t8)
/* 3A38 80002E38 240F0001 */  addiu      $t7, $zero, 1
/* 3A3C 80002E3C 3C198008 */  lui        $t9, %hi(brianDataStart)
/* 3A40 80002E40 A70F0004 */  sh         $t7, 4($t8)
/* 3A44 80002E44 8F39BB30 */  lw         $t9, %lo(brianDataStart)($t9)
/* 3A48 80002E48 3C098008 */  lui        $t1, %hi(D_8007BB34)
/* 3A4C 80002E4C 9728000A */  lhu        $t0, 0xa($t9)
/* 3A50 80002E50 A7280008 */  sh         $t0, 8($t9)
/* 3A54 80002E54 8D29BB34 */  lw         $t1, %lo(D_8007BB34)($t1)
/* 3A58 80002E58 A5200000 */  sh         $zero, ($t1)
.L80002E5C:
/* 3A5C 80002E5C 8D4ABB34 */  lw         $t2, -0x44cc($t2)
/* 3A60 80002E60 44803000 */  mtc1       $zero, $f6
/* 3A64 80002E64 2442BC0C */  addiu      $v0, $v0, -0x43f4
/* 3A68 80002E68 A5400000 */  sh         $zero, ($t2)
/* 3A6C 80002E6C E4460000 */  swc1       $f6, ($v0)
/* 3A70 80002E70 C44A0000 */  lwc1       $f10, ($v0)
/* 3A74 80002E74 3C018008 */  lui        $at, %hi(D_8007BA5C)
/* 3A78 80002E78 240B00FF */  addiu      $t3, $zero, 0xff
/* 3A7C 80002E7C E42ABA5C */  swc1       $f10, %lo(D_8007BA5C)($at)
/* 3A80 80002E80 3C018008 */  lui        $at, %hi(D_8007BC28)
/* 3A84 80002E84 A420BC28 */  sh         $zero, %lo(D_8007BC28)($at)
/* 3A88 80002E88 3C018008 */  lui        $at, %hi(itemToReceive)
/* 3A8C 80002E8C AC2BBA70 */  sw         $t3, %lo(itemToReceive)($at)
/* 3A90 80002E90 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3A94 80002E94 27BD0038 */  addiu      $sp, $sp, 0x38
/* 3A98 80002E98 03E00008 */  jr         $ra
/* 3A9C 80002E9C 00000000 */   nop

glabel CheckIfRoomIsValidLoadPoint
/* 3AA0 80002EA0 3C068008 */  lui        $a2, %hi(nextMap)
/* 3AA4 80002EA4 3C078008 */  lui        $a3, %hi(nextSubmap)
/* 3AA8 80002EA8 3C088008 */  lui        $t0, %hi(temp_CurrMap)
/* 3AAC 80002EAC 25085368 */  addiu      $t0, $t0, %lo(temp_CurrMap)
/* 3AB0 80002EB0 24E74EE8 */  addiu      $a3, $a3, %lo(nextSubmap)
/* 3AB4 80002EB4 24C64EE4 */  addiu      $a2, $a2, %lo(nextMap)
/* 3AB8 80002EB8 3C014248 */  lui        $at, 0x4248
/* 3ABC 80002EBC 3C0E8008 */  lui        $t6, %hi(ConstantBrianDataPtr)
/* 3AC0 80002EC0 8DCEBAC8 */  lw         $t6, %lo(ConstantBrianDataPtr)($t6)
/* 3AC4 80002EC4 44812000 */  mtc1       $at, $f4
/* 3AC8 80002EC8 3C018008 */  lui        $at, 0x8008
/* 3ACC 80002ECC 3C058005 */  lui        $a1, 0x8005
/* 3AD0 80002ED0 E5C40018 */  swc1       $f4, 0x18($t6)
/* 3AD4 80002ED4 8CC20000 */  lw         $v0, ($a2)
/* 3AD8 80002ED8 3C048005 */  lui        $a0, %hi(D_80054158)
/* 3ADC 80002EDC 24844158 */  addiu      $a0, $a0, %lo(D_80054158)
/* 3AE0 80002EE0 AC224EEC */  sw         $v0, 0x4eec($at)
/* 3AE4 80002EE4 8CE30000 */  lw         $v1, ($a3)
/* 3AE8 80002EE8 3C018008 */  lui        $at, %hi(CurrentSubmap)
/* 3AEC 80002EEC 24A54048 */  addiu      $a1, $a1, 0x4048
/* 3AF0 80002EF0 AC234EF0 */  sw         $v1, %lo(CurrentSubmap)($at)
/* 3AF4 80002EF4 AD000008 */  sw         $zero, 8($t0)
/* 3AF8 80002EF8 94AF0000 */  lhu        $t7, ($a1)
.L80002EFC:
/* 3AFC 80002EFC 544F0011 */  bnel       $v0, $t7, .L80002F44
/* 3B00 80002F00 24A50010 */   addiu     $a1, $a1, 0x10
/* 3B04 80002F04 94B80002 */  lhu        $t8, 2($a1)
/* 3B08 80002F08 5478000E */  bnel       $v1, $t8, .L80002F44
/* 3B0C 80002F0C 24A50010 */   addiu     $a1, $a1, 0x10
/* 3B10 80002F10 C4A60004 */  lwc1       $f6, 4($a1)
/* 3B14 80002F14 3C018008 */  lui        $at, %hi(brianXPosToLoad)
/* 3B18 80002F18 2402FFFF */  addiu      $v0, $zero, -1
/* 3B1C 80002F1C E426BA40 */  swc1       $f6, %lo(brianXPosToLoad)($at)
/* 3B20 80002F20 C4A80008 */  lwc1       $f8, 8($a1)
/* 3B24 80002F24 3C018008 */  lui        $at, %hi(brianYPosToLoad)
/* 3B28 80002F28 E428BA44 */  swc1       $f8, %lo(brianYPosToLoad)($at)
/* 3B2C 80002F2C C4AA000C */  lwc1       $f10, 0xc($a1)
/* 3B30 80002F30 3C018008 */  lui        $at, %hi(brianZPosToLoad)
/* 3B34 80002F34 E42ABA48 */  swc1       $f10, %lo(brianZPosToLoad)($at)
/* 3B38 80002F38 10000005 */  b          .L80002F50
/* 3B3C 80002F3C AD020008 */   sw        $v0, 8($t0)
/* 3B40 80002F40 24A50010 */  addiu      $a1, $a1, 0x10
.L80002F44:
/* 3B44 80002F44 54A4FFED */  bnel       $a1, $a0, .L80002EFC
/* 3B48 80002F48 94AF0000 */   lhu       $t7, ($a1)
/* 3B4C 80002F4C 2402FFFF */  addiu      $v0, $zero, -1
.L80002F50:
/* 3B50 80002F50 ACC20000 */  sw         $v0, ($a2)
/* 3B54 80002F54 ACE20000 */  sw         $v0, ($a3)
/* 3B58 80002F58 03E00008 */  jr         $ra
/* 3B5C 80002F5C 00000000 */   nop

glabel unkContainsPtrImportant
/* 3B60 80002F60 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3B64 80002F64 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3B68 80002F68 3C0E8008 */  lui        $t6, %hi(D_8007BB1C)
/* 3B6C 80002F6C 85CEBB1C */  lh         $t6, %lo(D_8007BB1C)($t6)
/* 3B70 80002F70 3C188005 */  lui        $t8, %hi(D_80053D00)
/* 3B74 80002F74 3C028008 */  lui        $v0, %hi(ConstantBrianDataPtr)
/* 3B78 80002F78 000E7880 */  sll        $t7, $t6, 2
/* 3B7C 80002F7C 030FC021 */  addu       $t8, $t8, $t7
/* 3B80 80002F80 8F183D00 */  lw         $t8, %lo(D_80053D00)($t8)
/* 3B84 80002F84 8C42BAC8 */  lw         $v0, %lo(ConstantBrianDataPtr)($v0)
/* 3B88 80002F88 44802000 */  mtc1       $zero, $f4
/* 3B8C 80002F8C AFB80024 */  sw         $t8, 0x24($sp)
/* 3B90 80002F90 94590004 */  lhu        $t9, 4($v0)
/* 3B94 80002F94 944B0006 */  lhu        $t3, 6($v0)
/* 3B98 80002F98 3C098008 */  lui        $t1, 0x8008
/* 3B9C 80002F9C 00195080 */  sll        $t2, $t9, 2
/* 3BA0 80002FA0 01595023 */  subu       $t2, $t2, $t9
/* 3BA4 80002FA4 014B082A */  slt        $at, $t2, $t3
/* 3BA8 80002FA8 10200005 */  beqz       $at, .L80002FC0
/* 3BAC 80002FAC 3C0D8009 */   lui       $t5, %hi(BattleState)
/* 3BB0 80002FB0 240C0019 */  addiu      $t4, $zero, 0x19
/* 3BB4 80002FB4 3C018008 */  lui        $at, %hi(tempCurrAnim)
/* 3BB8 80002FB8 1000000B */  b          .L80002FE8
/* 3BBC 80002FBC AC2CBC2C */   sw        $t4, %lo(tempCurrAnim)($at)
.L80002FC0:
/* 3BC0 80002FC0 95ADC592 */  lhu        $t5, %lo(BattleState)($t5)
/* 3BC4 80002FC4 3C018008 */  lui        $at, 0x8008
/* 3BC8 80002FC8 240F0011 */  addiu      $t7, $zero, 0x11
/* 3BCC 80002FCC 31AE0001 */  andi       $t6, $t5, 1
/* 3BD0 80002FD0 11C00004 */  beqz       $t6, .L80002FE4
/* 3BD4 80002FD4 00000000 */   nop
/* 3BD8 80002FD8 3C018008 */  lui        $at, %hi(tempCurrAnim)
/* 3BDC 80002FDC 10000002 */  b          .L80002FE8
/* 3BE0 80002FE0 AC2FBC2C */   sw        $t7, %lo(tempCurrAnim)($at)
.L80002FE4:
/* 3BE4 80002FE4 AC20BC2C */  sw         $zero, -0x43d4($at)
.L80002FE8:
/* 3BE8 80002FE8 3C018008 */  lui        $at, %hi(D_8007BA58)
/* 3BEC 80002FEC E424BA58 */  swc1       $f4, %lo(D_8007BA58)($at)
/* 3BF0 80002FF0 3C018008 */  lui        $at, %hi(D_8007BA54)
/* 3BF4 80002FF4 2529B2E4 */  addiu      $t1, $t1, -0x4d1c
/* 3BF8 80002FF8 E424BA54 */  swc1       $f4, %lo(D_8007BA54)($at)
/* 3BFC 80002FFC 8D380000 */  lw         $t8, ($t1)
/* 3C00 80003000 3C028009 */  lui        $v0, %hi(BattleState)
/* 3C04 80003004 33190087 */  andi       $t9, $t8, 0x87
/* 3C08 80003008 17200048 */  bnez       $t9, .L8000312C
/* 3C0C 8000300C 00000000 */   nop
/* 3C10 80003010 9442C592 */  lhu        $v0, %lo(BattleState)($v0)
/* 3C14 80003014 3C088008 */  lui        $t0, 0x8008
/* 3C18 80003018 304A0001 */  andi       $t2, $v0, 1
/* 3C1C 8000301C 1140000E */  beqz       $t2, .L80003058
/* 3C20 80003020 304B0002 */   andi      $t3, $v0, 2
/* 3C24 80003024 1560000A */  bnez       $t3, .L80003050
/* 3C28 80003028 3C088008 */   lui       $t0, %hi(D_8007BB2C)
/* 3C2C 8000302C 9508BB2C */  lhu        $t0, %lo(D_8007BB2C)($t0)
/* 3C30 80003030 3C048008 */  lui        $a0, %hi(BrianPos)
/* 3C34 80003034 310C0001 */  andi       $t4, $t0, 1
/* 3C38 80003038 15800005 */  bnez       $t4, .L80003050
/* 3C3C 8000303C 00000000 */   nop
/* 3C40 80003040 0C0019DD */  jal        func_80006774
/* 3C44 80003044 2484BACC */   addiu     $a0, $a0, %lo(BrianPos)
/* 3C48 80003048 3C018008 */  lui        $at, %hi(UNK_StaffAttack)
/* 3C4C 8000304C A422BABA */  sh         $v0, %lo(UNK_StaffAttack)($at)
.L80003050:
/* 3C50 80003050 10000036 */  b          .L8000312C
/* 3C54 80003054 00000000 */   nop
.L80003058:
/* 3C58 80003058 9508BB2C */  lhu        $t0, -0x44d4($t0)
/* 3C5C 8000305C 3C048008 */  lui        $a0, %hi(brianAction)
/* 3C60 80003060 2484BAB8 */  addiu      $a0, $a0, %lo(brianAction)
/* 3C64 80003064 310D0001 */  andi       $t5, $t0, 1
/* 3C68 80003068 15A00030 */  bnez       $t5, .L8000312C
/* 3C6C 8000306C 3C058008 */   lui       $a1, %hi(BrianPos)
/* 3C70 80003070 0C001684 */  jal        func_80005A10
/* 3C74 80003074 24A5BACC */   addiu     $a1, $a1, %lo(BrianPos)
/* 3C78 80003078 3C018008 */  lui        $at, %hi(npcNum)
/* 3C7C 8000307C AC22BA74 */  sw         $v0, %lo(npcNum)($at)
/* 3C80 80003080 3C0E8008 */  lui        $t6, %hi(npcNum)
/* 3C84 80003084 8DCEBA74 */  lw         $t6, %lo(npcNum)($t6)
/* 3C88 80003088 3C048008 */  lui        $a0, %hi(BrianPos)
/* 3C8C 8000308C 15C00027 */  bnez       $t6, .L8000312C
/* 3C90 80003090 00000000 */   nop
/* 3C94 80003094 0C0048D6 */  jal        PickUpSpirit
/* 3C98 80003098 2484BACC */   addiu     $a0, $a0, %lo(BrianPos)
/* 3C9C 8000309C 3C018008 */  lui        $at, %hi(ptr_spiritPos)
/* 3CA0 800030A0 AC22BA78 */  sw         $v0, %lo(ptr_spiritPos)($at)
/* 3CA4 800030A4 3C0F8008 */  lui        $t7, %hi(ptr_spiritPos)
/* 3CA8 800030A8 8DEFBA78 */  lw         $t7, %lo(ptr_spiritPos)($t7)
/* 3CAC 800030AC 3C048008 */  lui        $a0, %hi(BrianPos)
/* 3CB0 800030B0 15E0001E */  bnez       $t7, .L8000312C
/* 3CB4 800030B4 00000000 */   nop
/* 3CB8 800030B8 0C00479E */  jal        func_80011E78
/* 3CBC 800030BC 2484BACC */   addiu     $a0, $a0, %lo(BrianPos)
/* 3CC0 800030C0 3C018008 */  lui        $at, %hi(D_8007BA7C)
/* 3CC4 800030C4 AC22BA7C */  sw         $v0, %lo(D_8007BA7C)($at)
/* 3CC8 800030C8 3C188008 */  lui        $t8, %hi(D_8007BA7C)
/* 3CCC 800030CC 8F18BA7C */  lw         $t8, %lo(D_8007BA7C)($t8)
/* 3CD0 800030D0 17000016 */  bnez       $t8, .L8000312C
/* 3CD4 800030D4 00000000 */   nop
/* 3CD8 800030D8 0C002DD0 */  jal        VOID_FUN_8000b740
/* 3CDC 800030DC 00000000 */   nop
/* 3CE0 800030E0 3C048008 */  lui        $a0, %hi(D_8007BC20)
/* 3CE4 800030E4 2484BC20 */  addiu      $a0, $a0, %lo(D_8007BC20)
/* 3CE8 800030E8 10400010 */  beqz       $v0, .L8000312C
/* 3CEC 800030EC AC820000 */   sw        $v0, ($a0)
/* 3CF0 800030F0 0C002E93 */  jal        func_8000BA4C
/* 3CF4 800030F4 2444FFFF */   addiu     $a0, $v0, -1
/* 3CF8 800030F8 3C0A8008 */  lui        $t2, %hi(HUDState)
/* 3CFC 800030FC 8D4AB2E4 */  lw         $t2, %lo(HUDState)($t2)
/* 3D00 80003100 2419001E */  addiu      $t9, $zero, 0x1e
/* 3D04 80003104 3C018008 */  lui        $at, %hi(D_8007BC24)
/* 3D08 80003108 3C0C8008 */  lui        $t4, %hi(UNK_EscapeFlag)
/* 3D0C 8000310C 958CBAC0 */  lhu        $t4, %lo(UNK_EscapeFlag)($t4)
/* 3D10 80003110 AC39BC24 */  sw         $t9, %lo(D_8007BC24)($at)
/* 3D14 80003114 3C018008 */  lui        $at, %hi(HUDState)
/* 3D18 80003118 354B0002 */  ori        $t3, $t2, 2
/* 3D1C 8000311C AC2BB2E4 */  sw         $t3, %lo(HUDState)($at)
/* 3D20 80003120 3C018008 */  lui        $at, %hi(UNK_EscapeFlag)
/* 3D24 80003124 358D0001 */  ori        $t5, $t4, 1
/* 3D28 80003128 A42DBAC0 */  sh         $t5, %lo(UNK_EscapeFlag)($at)
.L8000312C:
/* 3D2C 8000312C 3C098008 */  lui        $t1, %hi(HUDState)
/* 3D30 80003130 2529B2E4 */  addiu      $t1, $t1, %lo(HUDState)
/* 3D34 80003134 8D230000 */  lw         $v1, ($t1)
/* 3D38 80003138 3C088008 */  lui        $t0, %hi(D_8007BB2C)
/* 3D3C 8000313C 9508BB2C */  lhu        $t0, %lo(D_8007BB2C)($t0)
/* 3D40 80003140 306E000F */  andi       $t6, $v1, 0xf
/* 3D44 80003144 15C0011A */  bnez       $t6, .L800035B0
/* 3D48 80003148 306B0004 */   andi      $t3, $v1, 4
/* 3D4C 8000314C 3C0F8009 */  lui        $t7, %hi(ButtonPressedFrame)
/* 3D50 80003150 95EF2876 */  lhu        $t7, %lo(ButtonPressedFrame)($t7)
/* 3D54 80003154 3C048008 */  lui        $a0, %hi(brianAction)
/* 3D58 80003158 2484BAB8 */  addiu      $a0, $a0, %lo(brianAction)
/* 3D5C 8000315C 31F8A000 */  andi       $t8, $t7, 0xa000
/* 3D60 80003160 130000E0 */  beqz       $t8, .L800034E4
/* 3D64 80003164 3C058008 */   lui       $a1, 0x8008
/* 3D68 80003168 3C028009 */  lui        $v0, %hi(BattleState)
/* 3D6C 8000316C 9442C592 */  lhu        $v0, %lo(BattleState)($v0)
/* 3D70 80003170 31040001 */  andi       $a0, $t0, 1
/* 3D74 80003174 30590001 */  andi       $t9, $v0, 1
/* 3D78 80003178 1320001D */  beqz       $t9, .L800031F0
/* 3D7C 8000317C 00000000 */   nop
/* 3D80 80003180 1480001B */  bnez       $a0, .L800031F0
/* 3D84 80003184 304A0002 */   andi      $t2, $v0, 2
/* 3D88 80003188 1540012C */  bnez       $t2, .L8000363C
/* 3D8C 8000318C 00000000 */   nop
/* 3D90 80003190 0C0056D4 */  jal        VOID_FUN_80015b50
/* 3D94 80003194 00000000 */   nop
/* 3D98 80003198 14400128 */  bnez       $v0, .L8000363C
/* 3D9C 8000319C 3C0B8008 */   lui       $t3, %hi(UNK_StaffAttack)
/* 3DA0 800031A0 956BBABA */  lhu        $t3, %lo(UNK_StaffAttack)($t3)
/* 3DA4 800031A4 3C058008 */  lui        $a1, %hi(BrianPos)
/* 3DA8 800031A8 24A5BACC */  addiu      $a1, $a1, %lo(BrianPos)
/* 3DAC 800031AC 11600007 */  beqz       $t3, .L800031CC
/* 3DB0 800031B0 3C048008 */   lui       $a0, 0x8008
/* 3DB4 800031B4 3C048008 */  lui        $a0, %hi(brianAction)
/* 3DB8 800031B8 2484BAB8 */  addiu      $a0, $a0, %lo(brianAction)
/* 3DBC 800031BC 0C001A7F */  jal        func_800069FC
/* 3DC0 800031C0 8FA60024 */   lw        $a2, 0x24($sp)
/* 3DC4 800031C4 1000011D */  b          .L8000363C
/* 3DC8 800031C8 00000000 */   nop
.L800031CC:
/* 3DCC 800031CC 0C001CF3 */  jal        battleFenceSomething
/* 3DD0 800031D0 2484BAB8 */   addiu     $a0, $a0, -0x4548
/* 3DD4 800031D4 3C018008 */  lui        $at, %hi(UNK_StaffAttack)
/* 3DD8 800031D8 3C048008 */  lui        $a0, %hi(BrianPos)
/* 3DDC 800031DC A420BABA */  sh         $zero, %lo(UNK_StaffAttack)($at)
/* 3DE0 800031E0 0C0074D6 */  jal        VOID_FUN_8001d358
/* 3DE4 800031E4 2484BACC */   addiu     $a0, $a0, %lo(BrianPos)
/* 3DE8 800031E8 10000114 */  b          .L8000363C
/* 3DEC 800031EC 00000000 */   nop
.L800031F0:
/* 3DF0 800031F0 14800112 */  bnez       $a0, .L8000363C
/* 3DF4 800031F4 3C088008 */   lui       $t0, %hi(npcNum)
/* 3DF8 800031F8 2508BA74 */  addiu      $t0, $t0, %lo(npcNum)
/* 3DFC 800031FC 8D020000 */  lw         $v0, ($t0)
/* 3E00 80003200 240D0007 */  addiu      $t5, $zero, 7
/* 3E04 80003204 3C018008 */  lui        $at, %hi(brianAction)
/* 3E08 80003208 1040002C */  beqz       $v0, .L800032BC
/* 3E0C 8000320C 244CFFFF */   addiu     $t4, $v0, -1
/* 3E10 80003210 44803000 */  mtc1       $zero, $f6
/* 3E14 80003214 AD0C0000 */  sw         $t4, ($t0)
/* 3E18 80003218 A42DBAB8 */  sh         $t5, %lo(brianAction)($at)
/* 3E1C 8000321C 3C018008 */  lui        $at, %hi(BrianZSpeed)
/* 3E20 80003220 44804000 */  mtc1       $zero, $f8
/* 3E24 80003224 44805000 */  mtc1       $zero, $f10
/* 3E28 80003228 E426BAEC */  swc1       $f6, %lo(BrianZSpeed)($at)
/* 3E2C 8000322C 3C018008 */  lui        $at, %hi(BrianXSpeed)
/* 3E30 80003230 3C058008 */  lui        $a1, %hi(tempCurrAnim)
/* 3E34 80003234 44808000 */  mtc1       $zero, $f16
/* 3E38 80003238 8CA5BC2C */  lw         $a1, %lo(tempCurrAnim)($a1)
/* 3E3C 8000323C E428BAE4 */  swc1       $f8, %lo(BrianXSpeed)($at)
/* 3E40 80003240 E42ABAE0 */  swc1       $f10, -0x4520($at)
/* 3E44 80003244 3C018008 */  lui        $at, 0x8008
/* 3E48 80003248 3C048008 */  lui        $a0, %hi(BrianPos)
/* 3E4C 8000324C 240E0001 */  addiu      $t6, $zero, 1
/* 3E50 80003250 240F0001 */  addiu      $t7, $zero, 1
/* 3E54 80003254 AFAF0014 */  sw         $t7, 0x14($sp)
/* 3E58 80003258 AFAE0010 */  sw         $t6, 0x10($sp)
/* 3E5C 8000325C 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 3E60 80003260 24060001 */  addiu      $a2, $zero, 1
/* 3E64 80003264 E430BAD8 */  swc1       $f16, -0x4528($at)
/* 3E68 80003268 0C00762C */  jal        updateAnim
/* 3E6C 8000326C 00A03825 */   or        $a3, $a1, $zero
/* 3E70 80003270 3C048008 */  lui        $a0, %hi(npcNum)
/* 3E74 80003274 0C0021B9 */  jal        NPC_Talk_GiveItem
/* 3E78 80003278 8C84BA74 */   lw        $a0, %lo(npcNum)($a0)
/* 3E7C 8000327C 3C188009 */  lui        $t8, %hi(D_8008C644)
/* 3E80 80003280 8F18C644 */  lw         $t8, %lo(D_8008C644)($t8)
/* 3E84 80003284 24040001 */  addiu      $a0, $zero, 1
/* 3E88 80003288 2B010046 */  slti       $at, $t8, 0x46
/* 3E8C 8000328C 10200003 */  beqz       $at, .L8000329C
/* 3E90 80003290 00000000 */   nop
/* 3E94 80003294 10000001 */  b          .L8000329C
/* 3E98 80003298 00002025 */   or        $a0, $zero, $zero
.L8000329C:
/* 3E9C 8000329C 0C00B9DA */  jal        UNK_calledWhenWritingToTextbox
/* 3EA0 800032A0 00000000 */   nop
/* 3EA4 800032A4 3C038008 */  lui        $v1, %hi(HUDState)
/* 3EA8 800032A8 2463B2E4 */  addiu      $v1, $v1, %lo(HUDState)
/* 3EAC 800032AC 8C790000 */  lw         $t9, ($v1)
/* 3EB0 800032B0 372A0002 */  ori        $t2, $t9, 2
/* 3EB4 800032B4 100000E1 */  b          .L8000363C
/* 3EB8 800032B8 AC6A0000 */   sw        $t2, ($v1)
.L800032BC:
/* 3EBC 800032BC 3C058008 */  lui        $a1, %hi(ptr_spiritPos)
/* 3EC0 800032C0 24A5BA78 */  addiu      $a1, $a1, %lo(ptr_spiritPos)
/* 3EC4 800032C4 8CAB0000 */  lw         $t3, ($a1)
/* 3EC8 800032C8 11600022 */  beqz       $t3, .L80003354
/* 3ECC 800032CC 3C028008 */   lui       $v0, %hi(ConstantBrianDataPtr)
/* 3ED0 800032D0 8C42BAC8 */  lw         $v0, %lo(ConstantBrianDataPtr)($v0)
/* 3ED4 800032D4 24040032 */  addiu      $a0, $zero, 0x32
/* 3ED8 800032D8 34780008 */  ori        $t8, $v1, 8
/* 3EDC 800032DC 904C0024 */  lbu        $t4, 0x24($v0)
/* 3EE0 800032E0 3C018008 */  lui        $at, 0x8008
/* 3EE4 800032E4 24420024 */  addiu      $v0, $v0, 0x24
/* 3EE8 800032E8 548C000B */  bnel       $a0, $t4, .L80003318
/* 3EEC 800032EC AD380000 */   sw        $t8, ($t1)
/* 3EF0 800032F0 904D0001 */  lbu        $t5, 1($v0)
/* 3EF4 800032F4 548D0008 */  bnel       $a0, $t5, .L80003318
/* 3EF8 800032F8 AD380000 */   sw        $t8, ($t1)
/* 3EFC 800032FC 904E0002 */  lbu        $t6, 2($v0)
/* 3F00 80003300 548E0005 */  bnel       $a0, $t6, .L80003318
/* 3F04 80003304 AD380000 */   sw        $t8, ($t1)
/* 3F08 80003308 904F0003 */  lbu        $t7, 3($v0)
/* 3F0C 8000330C 108F00CB */  beq        $a0, $t7, .L8000363C
/* 3F10 80003310 00000000 */   nop
/* 3F14 80003314 AD380000 */  sw         $t8, ($t1)
.L80003318:
/* 3F18 80003318 A420BAB8 */  sh         $zero, -0x4548($at)
/* 3F1C 8000331C 8CB90000 */  lw         $t9, ($a1)
/* 3F20 80003320 0C0049D0 */  jal        func_80012740
/* 3F24 80003324 93240014 */   lbu       $a0, 0x14($t9)
/* 3F28 80003328 3C028008 */  lui        $v0, %hi(ptr_spiritPos)
/* 3F2C 8000332C 8C42BA78 */  lw         $v0, %lo(ptr_spiritPos)($v0)
/* 3F30 80003330 00002025 */  or         $a0, $zero, $zero
/* 3F34 80003334 24050001 */  addiu      $a1, $zero, 1
/* 3F38 80003338 944A0010 */  lhu        $t2, 0x10($v0)
/* 3F3C 8000333C 240600FF */  addiu      $a2, $zero, 0xff
/* 3F40 80003340 354B0001 */  ori        $t3, $t2, 1
/* 3F44 80003344 0C009A35 */  jal        func_800268D4
/* 3F48 80003348 A44B0010 */   sh        $t3, 0x10($v0)
/* 3F4C 8000334C 100000BB */  b          .L8000363C
/* 3F50 80003350 00000000 */   nop
.L80003354:
/* 3F54 80003354 0C008485 */  jal        CheckIfLastInvSlotEmpty
/* 3F58 80003358 00000000 */   nop
/* 3F5C 8000335C 1040003F */  beqz       $v0, .L8000345C
/* 3F60 80003360 3C048008 */   lui       $a0, %hi(D_8007BA7C)
/* 3F64 80003364 8C84BA7C */  lw         $a0, %lo(D_8007BA7C)($a0)
/* 3F68 80003368 1080003C */  beqz       $a0, .L8000345C
/* 3F6C 8000336C 00000000 */   nop
/* 3F70 80003370 0C004817 */  jal        func_8001205C
/* 3F74 80003374 00000000 */   nop
/* 3F78 80003378 44809000 */  mtc1       $zero, $f18
/* 3F7C 8000337C 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 3F80 80003380 24E5BC30 */  addiu      $a1, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 3F84 80003384 3C018008 */  lui        $at, %hi(BrianModelScale)
/* 3F88 80003388 E4B20000 */  swc1       $f18, ($a1)
/* 3F8C 8000338C C424BAF0 */  lwc1       $f4, %lo(BrianModelScale)($at)
/* 3F90 80003390 3C01432B */  lui        $at, 0x432b
/* 3F94 80003394 44813000 */  mtc1       $at, $f6
/* 3F98 80003398 3C0C8008 */  lui        $t4, %hi(D_8007BA7C)
/* 3F9C 8000339C 8D8CBA7C */  lw         $t4, %lo(D_8007BA7C)($t4)
/* 3FA0 800033A0 46062202 */  mul.s      $f8, $f4, $f6
/* 3FA4 800033A4 3C018008 */  lui        $at, %hi(UNK_somethingElseToDoWithAnimation)
/* 3FA8 800033A8 E428BC34 */  swc1       $f8, %lo(UNK_somethingElseToDoWithAnimation)($at)
/* 3FAC 800033AC 0C008CBD */  jal        func_800232F4
/* 3FB0 800033B0 C58C0010 */   lwc1      $f12, 0x10($t4)
/* 3FB4 800033B4 3C028008 */  lui        $v0, %hi(D_8007BA7C)
/* 3FB8 800033B8 2442BA7C */  addiu      $v0, $v0, %lo(D_8007BA7C)
/* 3FBC 800033BC 8C4D0000 */  lw         $t5, ($v0)
/* 3FC0 800033C0 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 3FC4 800033C4 24E7BC30 */  addiu      $a3, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 3FC8 800033C8 C4F00000 */  lwc1       $f16, ($a3)
/* 3FCC 800033CC C5AA0000 */  lwc1       $f10, ($t5)
/* 3FD0 800033D0 3C018008 */  lui        $at, 0x8008
/* 3FD4 800033D4 3C048008 */  lui        $a0, %hi(brianAction)
/* 3FD8 800033D8 46105480 */  add.s      $f18, $f10, $f16
/* 3FDC 800033DC 3C058008 */  lui        $a1, %hi(BrianPos)
/* 3FE0 800033E0 24A5BACC */  addiu      $a1, $a1, %lo(BrianPos)
/* 3FE4 800033E4 2484BAB8 */  addiu      $a0, $a0, %lo(brianAction)
/* 3FE8 800033E8 E432BACC */  swc1       $f18, -0x4534($at)
/* 3FEC 800033EC 8C4E0000 */  lw         $t6, ($v0)
/* 3FF0 800033F0 C4E60004 */  lwc1       $f6, 4($a3)
/* 3FF4 800033F4 3C018008 */  lui        $at, %hi(BrianZPos)
/* 3FF8 800033F8 C5C40008 */  lwc1       $f4, 8($t6)
/* 3FFC 800033FC 8FA60024 */  lw         $a2, 0x24($sp)
/* 4000 80003400 46062200 */  add.s      $f8, $f4, $f6
/* 4004 80003404 E428BAD4 */  swc1       $f8, %lo(BrianZPos)($at)
/* 4008 80003408 8C4F0000 */  lw         $t7, ($v0)
/* 400C 8000340C 3C018008 */  lui        $at, %hi(BrianZRotation)
/* 4010 80003410 C5EA0010 */  lwc1       $f10, 0x10($t7)
/* 4014 80003414 E42ABADC */  swc1       $f10, %lo(BrianZRotation)($at)
/* 4018 80003418 8C580000 */  lw         $t8, ($v0)
/* 401C 8000341C 3C018007 */  lui        $at, %hi(D_80070F30)
/* 4020 80003420 D4240F30 */  ldc1       $f4, %lo(D_80070F30)($at)
/* 4024 80003424 C7100010 */  lwc1       $f16, 0x10($t8)
/* 4028 80003428 3C018008 */  lui        $at, %hi(D_8007BBEC)
/* 402C 8000342C 460084A1 */  cvt.d.s    $f18, $f16
/* 4030 80003430 46249180 */  add.d      $f6, $f18, $f4
/* 4034 80003434 46203220 */  cvt.s.d    $f8, $f6
/* 4038 80003438 E428BBEC */  swc1       $f8, %lo(D_8007BBEC)($at)
/* 403C 8000343C 8C590000 */  lw         $t9, ($v0)
/* 4040 80003440 3C018008 */  lui        $at, %hi(spellLayer0Ele)
/* 4044 80003444 872A0050 */  lh         $t2, 0x50($t9)
/* 4048 80003448 0C001981 */  jal        func_80006604
/* 404C 8000344C A02ABBD0 */   sb        $t2, %lo(spellLayer0Ele)($at)
/* 4050 80003450 3C018008 */  lui        $at, %hi(D_8007BA7C)
/* 4054 80003454 10000079 */  b          .L8000363C
/* 4058 80003458 AC20BA7C */   sw        $zero, %lo(D_8007BA7C)($at)
.L8000345C:
/* 405C 8000345C 3C088008 */  lui        $t0, %hi(D_8007BB2C)
/* 4060 80003460 9508BB2C */  lhu        $t0, %lo(D_8007BB2C)($t0)
/* 4064 80003464 3C018008 */  lui        $at, %hi(brianAction)
/* 4068 80003468 44805000 */  mtc1       $zero, $f10
/* 406C 8000346C 240B0003 */  addiu      $t3, $zero, 3
/* 4070 80003470 240C000F */  addiu      $t4, $zero, 0xf
/* 4074 80003474 A42BBAB8 */  sh         $t3, %lo(brianAction)($at)
/* 4078 80003478 A42CBABC */  sh         $t4, -0x4544($at)
/* 407C 8000347C 3C018008 */  lui        $at, %hi(BrianZSpeed)
/* 4080 80003480 44808000 */  mtc1       $zero, $f16
/* 4084 80003484 44809000 */  mtc1       $zero, $f18
/* 4088 80003488 E42ABAEC */  swc1       $f10, %lo(BrianZSpeed)($at)
/* 408C 8000348C 3C018008 */  lui        $at, %hi(BrianXSpeed)
/* 4090 80003490 44802000 */  mtc1       $zero, $f4
/* 4094 80003494 E430BAE4 */  swc1       $f16, %lo(BrianXSpeed)($at)
/* 4098 80003498 E432BAE0 */  swc1       $f18, -0x4520($at)
/* 409C 8000349C 3C018008 */  lui        $at, %hi(BrianFwdTiltMult)
/* 40A0 800034A0 E424BAD8 */  swc1       $f4, %lo(BrianFwdTiltMult)($at)
/* 40A4 800034A4 3C018008 */  lui        $at, 0x8008
/* 40A8 800034A8 3C048008 */  lui        $a0, 0x8008
/* 40AC 800034AC 3C078008 */  lui        $a3, 0x8008
/* 40B0 800034B0 240F0001 */  addiu      $t7, $zero, 1
/* 40B4 800034B4 24180001 */  addiu      $t8, $zero, 1
/* 40B8 800034B8 350E0001 */  ori        $t6, $t0, 1
/* 40BC 800034BC A42EBB2C */  sh         $t6, -0x44d4($at)
/* 40C0 800034C0 AFB80014 */  sw         $t8, 0x14($sp)
/* 40C4 800034C4 AFAF0010 */  sw         $t7, 0x10($sp)
/* 40C8 800034C8 8CE7BC2C */  lw         $a3, -0x43d4($a3)
/* 40CC 800034CC 2484BACC */  addiu      $a0, $a0, -0x4534
/* 40D0 800034D0 2405001B */  addiu      $a1, $zero, 0x1b
/* 40D4 800034D4 0C00762C */  jal        updateAnim
/* 40D8 800034D8 24060001 */   addiu     $a2, $zero, 1
/* 40DC 800034DC 10000057 */  b          .L8000363C
/* 40E0 800034E0 00000000 */   nop
.L800034E4:
/* 40E4 800034E4 0C001C0C */  jal        func_80007030
/* 40E8 800034E8 24A5BACC */   addiu     $a1, $a1, -0x4534
/* 40EC 800034EC 10400053 */  beqz       $v0, .L8000363C
/* 40F0 800034F0 3C038008 */   lui       $v1, %hi(HUDState)
/* 40F4 800034F4 8C63B2E4 */  lw         $v1, %lo(HUDState)($v1)
/* 40F8 800034F8 3C0A8009 */  lui        $t2, %hi(ButtonPressedFrame)
/* 40FC 800034FC 30790004 */  andi       $t9, $v1, 4
/* 4100 80003500 57200018 */  bnel       $t9, $zero, .L80003564
/* 4104 80003504 306F0001 */   andi      $t7, $v1, 1
/* 4108 80003508 954A2876 */  lhu        $t2, %lo(ButtonPressedFrame)($t2)
/* 410C 8000350C 386C0001 */  xori       $t4, $v1, 1
/* 4110 80003510 3C018008 */  lui        $at, %hi(HUDState)
/* 4114 80003514 314B0010 */  andi       $t3, $t2, 0x10
/* 4118 80003518 11600011 */  beqz       $t3, .L80003560
/* 411C 8000351C 24040006 */   addiu     $a0, $zero, 6
/* 4120 80003520 3C068005 */  lui        $a2, %hi(D_8004D530)
/* 4124 80003524 AC2CB2E4 */  sw         $t4, %lo(HUDState)($at)
/* 4128 80003528 24C6D530 */  addiu      $a2, $a2, %lo(D_8004D530)
/* 412C 8000352C 0C008AC2 */  jal        func_80022B08
/* 4130 80003530 24050002 */   addiu     $a1, $zero, 2
/* 4134 80003534 00002025 */  or         $a0, $zero, $zero
/* 4138 80003538 24050001 */  addiu      $a1, $zero, 1
/* 413C 8000353C 0C009A35 */  jal        func_800268D4
/* 4140 80003540 240600FF */   addiu     $a2, $zero, 0xff
/* 4144 80003544 3C088008 */  lui        $t0, %hi(D_8007BB2C)
/* 4148 80003548 9508BB2C */  lhu        $t0, %lo(D_8007BB2C)($t0)
/* 414C 8000354C 3C038008 */  lui        $v1, %hi(HUDState)
/* 4150 80003550 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 4154 80003554 350E0001 */  ori        $t6, $t0, 1
/* 4158 80003558 A42EBB2C */  sh         $t6, %lo(D_8007BB2C)($at)
/* 415C 8000355C 8C63B2E4 */  lw         $v1, %lo(HUDState)($v1)
.L80003560:
/* 4160 80003560 306F0001 */  andi       $t7, $v1, 1
.L80003564:
/* 4164 80003564 15E00035 */  bnez       $t7, .L8000363C
/* 4168 80003568 3C188008 */   lui       $t8, %hi(D_8007BB34)
/* 416C 8000356C 8F18BB34 */  lw         $t8, %lo(D_8007BB34)($t8)
/* 4170 80003570 3C048008 */  lui        $a0, 0x8008
/* 4174 80003574 97190000 */  lhu        $t9, ($t8)
/* 4178 80003578 332A0040 */  andi       $t2, $t9, 0x40
/* 417C 8000357C 1540002F */  bnez       $t2, .L8000363C
/* 4180 80003580 00000000 */   nop
/* 4184 80003584 0C001C30 */  jal        func_800070C0
/* 4188 80003588 2484BAB8 */   addiu     $a0, $a0, -0x4548
/* 418C 8000358C 1040002B */  beqz       $v0, .L8000363C
/* 4190 80003590 3C048008 */   lui       $a0, %hi(brianAction)
/* 4194 80003594 3C058008 */  lui        $a1, %hi(BrianPos)
/* 4198 80003598 24A5BACC */  addiu      $a1, $a1, %lo(BrianPos)
/* 419C 8000359C 2484BAB8 */  addiu      $a0, $a0, %lo(brianAction)
/* 41A0 800035A0 0C001CAA */  jal        func_800072A8
/* 41A4 800035A4 8FA60024 */   lw        $a2, 0x24($sp)
/* 41A8 800035A8 10000024 */  b          .L8000363C
/* 41AC 800035AC 00000000 */   nop
.L800035B0:
/* 41B0 800035B0 1160000D */  beqz       $t3, .L800035E8
/* 41B4 800035B4 306C0001 */   andi      $t4, $v1, 1
/* 41B8 800035B8 3C048008 */  lui        $a0, %hi(brianAction)
/* 41BC 800035BC 0C001C30 */  jal        func_800070C0
/* 41C0 800035C0 2484BAB8 */   addiu     $a0, $a0, %lo(brianAction)
/* 41C4 800035C4 1040001D */  beqz       $v0, .L8000363C
/* 41C8 800035C8 3C048008 */   lui       $a0, %hi(brianAction)
/* 41CC 800035CC 3C058008 */  lui        $a1, %hi(BrianPos)
/* 41D0 800035D0 24A5BACC */  addiu      $a1, $a1, %lo(BrianPos)
/* 41D4 800035D4 2484BAB8 */  addiu      $a0, $a0, %lo(brianAction)
/* 41D8 800035D8 0C001CAA */  jal        func_800072A8
/* 41DC 800035DC 8FA60024 */   lw        $a2, 0x24($sp)
/* 41E0 800035E0 10000016 */  b          .L8000363C
/* 41E4 800035E4 00000000 */   nop
.L800035E8:
/* 41E8 800035E8 11800014 */  beqz       $t4, .L8000363C
/* 41EC 800035EC 3C0D8009 */   lui       $t5, %hi(ButtonPressedFrame)
/* 41F0 800035F0 95AD2876 */  lhu        $t5, %lo(ButtonPressedFrame)($t5)
/* 41F4 800035F4 386F0001 */  xori       $t7, $v1, 1
/* 41F8 800035F8 24040006 */  addiu      $a0, $zero, 6
/* 41FC 800035FC 31AE4010 */  andi       $t6, $t5, 0x4010
/* 4200 80003600 11C0000E */  beqz       $t6, .L8000363C
/* 4204 80003604 24050004 */   addiu     $a1, $zero, 4
/* 4208 80003608 3C068005 */  lui        $a2, %hi(D_8004D544)
/* 420C 8000360C AD2F0000 */  sw         $t7, ($t1)
/* 4210 80003610 0C008AC2 */  jal        func_80022B08
/* 4214 80003614 24C6D544 */   addiu     $a2, $a2, %lo(D_8004D544)
/* 4218 80003618 00002025 */  or         $a0, $zero, $zero
/* 421C 8000361C 24050002 */  addiu      $a1, $zero, 2
/* 4220 80003620 0C009A35 */  jal        func_800268D4
/* 4224 80003624 240600FF */   addiu     $a2, $zero, 0xff
/* 4228 80003628 3C088008 */  lui        $t0, %hi(D_8007BB2C)
/* 422C 8000362C 9508BB2C */  lhu        $t0, %lo(D_8007BB2C)($t0)
/* 4230 80003630 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 4234 80003634 3119FFFE */  andi       $t9, $t0, 0xfffe
/* 4238 80003638 A439BB2C */  sh         $t9, %lo(D_8007BB2C)($at)
.L8000363C:
/* 423C 8000363C 3C028009 */  lui        $v0, %hi(BattleState)
/* 4240 80003640 9442C592 */  lhu        $v0, %lo(BattleState)($v0)
/* 4244 80003644 3C018009 */  lui        $at, 0x8009
/* 4248 80003648 3C0C8008 */  lui        $t4, %hi(brianDataStart)
/* 424C 8000364C 304A0008 */  andi       $t2, $v0, 8
/* 4250 80003650 11400043 */  beqz       $t2, .L80003760
/* 4254 80003654 304D0010 */   andi      $t5, $v0, 0x10
/* 4258 80003658 8D8CBB30 */  lw         $t4, %lo(brianDataStart)($t4)
/* 425C 8000365C 304BFFF7 */  andi       $t3, $v0, 0xfff7
/* 4260 80003660 A42BC592 */  sh         $t3, -0x3a6e($at)
/* 4264 80003664 3C0E8008 */  lui        $t6, %hi(InBattleXP)
/* 4268 80003668 8DCEBA68 */  lw         $t6, %lo(InBattleXP)($t6)
/* 426C 8000366C 8D8D0010 */  lw         $t5, 0x10($t4)
/* 4270 80003670 3C188008 */  lui        $t8, %hi(brianDataStart)
/* 4274 80003674 3C0A8008 */  lui        $t2, %hi(D_8007BA6C)
/* 4278 80003678 01AE7821 */  addu       $t7, $t5, $t6
/* 427C 8000367C AD8F0010 */  sw         $t7, 0x10($t4)
/* 4280 80003680 8F18BB30 */  lw         $t8, %lo(brianDataStart)($t8)
/* 4284 80003684 8D4ABA6C */  lw         $t2, %lo(D_8007BA6C)($t2)
/* 4288 80003688 3C038008 */  lui        $v1, %hi(itemToReceive)
/* 428C 8000368C 8F190014 */  lw         $t9, 0x14($t8)
/* 4290 80003690 240100FF */  addiu      $at, $zero, 0xff
/* 4294 80003694 032A5821 */  addu       $t3, $t9, $t2
/* 4298 80003698 AF0B0014 */  sw         $t3, 0x14($t8)
/* 429C 8000369C 8C63BA70 */  lw         $v1, %lo(itemToReceive)($v1)
/* 42A0 800036A0 10610007 */  beq        $v1, $at, .L800036C0
/* 42A4 800036A4 00000000 */   nop
/* 42A8 800036A8 0C008490 */  jal        func_80021240
/* 42AC 800036AC 306400FF */   andi      $a0, $v1, 0xff
/* 42B0 800036B0 10400003 */  beqz       $v0, .L800036C0
/* 42B4 800036B4 240D00FF */   addiu     $t5, $zero, 0xff
/* 42B8 800036B8 3C018008 */  lui        $at, %hi(itemToReceive)
/* 42BC 800036BC AC2DBA70 */  sw         $t5, %lo(itemToReceive)($at)
.L800036C0:
/* 42C0 800036C0 3C048008 */  lui        $a0, %hi(BrianPos)
/* 42C4 800036C4 0C0080B9 */  jal        unk_UsesBrianOREnemyPos
/* 42C8 800036C8 2484BACC */   addiu     $a0, $a0, %lo(BrianPos)
/* 42CC 800036CC 3C018008 */  lui        $at, %hi(D_8007BB38)
/* 42D0 800036D0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 42D4 800036D4 A420BB38 */  sh         $zero, %lo(D_8007BB38)($at)
/* 42D8 800036D8 3C018008 */  lui        $at, %hi(brianAction)
/* 42DC 800036DC 240E000F */  addiu      $t6, $zero, 0xf
/* 42E0 800036E0 A42EBAB8 */  sh         $t6, %lo(brianAction)($at)
/* 42E4 800036E4 85EC00C2 */  lh         $t4, 0xc2($t7)
/* 42E8 800036E8 3C198008 */  lui        $t9, %hi(D_8007BB2C)
/* 42EC 800036EC 44803000 */  mtc1       $zero, $f6
/* 42F0 800036F0 A42CBABC */  sh         $t4, -0x4544($at)
/* 42F4 800036F4 9739BB2C */  lhu        $t9, %lo(D_8007BB2C)($t9)
/* 42F8 800036F8 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 42FC 800036FC 44804000 */  mtc1       $zero, $f8
/* 4300 80003700 372A0001 */  ori        $t2, $t9, 1
/* 4304 80003704 A42ABB2C */  sh         $t2, %lo(D_8007BB2C)($at)
/* 4308 80003708 3C018008 */  lui        $at, %hi(BrianZSpeed)
/* 430C 8000370C 44805000 */  mtc1       $zero, $f10
/* 4310 80003710 E426BAEC */  swc1       $f6, %lo(BrianZSpeed)($at)
/* 4314 80003714 3C018008 */  lui        $at, %hi(BrianXSpeed)
/* 4318 80003718 44808000 */  mtc1       $zero, $f16
/* 431C 8000371C E428BAE4 */  swc1       $f8, %lo(BrianXSpeed)($at)
/* 4320 80003720 E42ABAE0 */  swc1       $f10, -0x4520($at)
/* 4324 80003724 3C018008 */  lui        $at, 0x8008
/* 4328 80003728 3C048008 */  lui        $a0, 0x8008
/* 432C 8000372C 3C078008 */  lui        $a3, %hi(tempCurrAnim)
/* 4330 80003730 240B0001 */  addiu      $t3, $zero, 1
/* 4334 80003734 24180001 */  addiu      $t8, $zero, 1
/* 4338 80003738 AFB80014 */  sw         $t8, 0x14($sp)
/* 433C 8000373C AFAB0010 */  sw         $t3, 0x10($sp)
/* 4340 80003740 8CE7BC2C */  lw         $a3, %lo(tempCurrAnim)($a3)
/* 4344 80003744 2484BACC */  addiu      $a0, $a0, -0x4534
/* 4348 80003748 24050010 */  addiu      $a1, $zero, 0x10
/* 434C 8000374C 24060001 */  addiu      $a2, $zero, 1
/* 4350 80003750 0C00762C */  jal        updateAnim
/* 4354 80003754 E430BAD8 */   swc1      $f16, -0x4528($at)
/* 4358 80003758 10000007 */  b          .L80003778
/* 435C 8000375C 00000000 */   nop
.L80003760:
/* 4360 80003760 11A00005 */  beqz       $t5, .L80003778
/* 4364 80003764 3C048008 */   lui       $a0, %hi(BrianPos)
/* 4368 80003768 0C0080B9 */  jal        unk_UsesBrianOREnemyPos
/* 436C 8000376C 2484BACC */   addiu     $a0, $a0, %lo(BrianPos)
/* 4370 80003770 3C018008 */  lui        $at, %hi(D_8007BB38)
/* 4374 80003774 A420BB38 */  sh         $zero, %lo(D_8007BB38)($at)
.L80003778:
/* 4378 80003778 3C0E8008 */  lui        $t6, %hi(brianAction)
/* 437C 8000377C 95CEBAB8 */  lhu        $t6, %lo(brianAction)($t6)
/* 4380 80003780 3C198005 */  lui        $t9, %hi(ptr_IMPORTANT_FUNCS)
/* 4384 80003784 3C048008 */  lui        $a0, 0x8008
/* 4388 80003788 000E7880 */  sll        $t7, $t6, 2
/* 438C 8000378C 032FC821 */  addu       $t9, $t9, $t7
/* 4390 80003790 8F39C230 */  lw         $t9, %lo(ptr_IMPORTANT_FUNCS)($t9)
/* 4394 80003794 3C058008 */  lui        $a1, %hi(brianAction)
/* 4398 80003798 24A5BAB8 */  addiu      $a1, $a1, %lo(brianAction)
/* 439C 8000379C 2484BACC */  addiu      $a0, $a0, -0x4534
/* 43A0 800037A0 0320F809 */  jalr       $t9
/* 43A4 800037A4 8FA60024 */   lw        $a2, 0x24($sp)
/* 43A8 800037A8 3C018008 */  lui        $at, %hi(D_8007BA54)
/* 43AC 800037AC C422BA54 */  lwc1       $f2, %lo(D_8007BA54)($at)
/* 43B0 800037B0 3C018008 */  lui        $at, %hi(D_8007BA58)
/* 43B4 800037B4 C420BA58 */  lwc1       $f0, %lo(D_8007BA58)($at)
/* 43B8 800037B8 46021482 */  mul.s      $f18, $f2, $f2
/* 43BC 800037BC 00000000 */  nop
/* 43C0 800037C0 46000102 */  mul.s      $f4, $f0, $f0
/* 43C4 800037C4 0C00D3D8 */  jal        _nsqrtf
/* 43C8 800037C8 46049300 */   add.s     $f12, $f18, $f4
/* 43CC 800037CC 3C038008 */  lui        $v1, %hi(D_8007BA5C)
/* 43D0 800037D0 2463BA5C */  addiu      $v1, $v1, %lo(D_8007BA5C)
/* 43D4 800037D4 E4600000 */  swc1       $f0, ($v1)
/* 43D8 800037D8 3C0C8009 */  lui        $t4, %hi(BattleState)
/* 43DC 800037DC 958CC592 */  lhu        $t4, %lo(BattleState)($t4)
/* 43E0 800037E0 3C0B8008 */  lui        $t3, %hi(brianDataStart)
/* 43E4 800037E4 318A0001 */  andi       $t2, $t4, 1
/* 43E8 800037E8 5540001E */  bnel       $t2, $zero, .L80003864
/* 43EC 800037EC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 43F0 800037F0 8D6BBB30 */  lw         $t3, %lo(brianDataStart)($t3)
/* 43F4 800037F4 3C028008 */  lui        $v0, %hi(D_8007BC0C)
/* 43F8 800037F8 2442BC0C */  addiu      $v0, $v0, %lo(D_8007BC0C)
/* 43FC 800037FC 95780008 */  lhu        $t8, 8($t3)
/* 4400 80003800 956D000A */  lhu        $t5, 0xa($t3)
/* 4404 80003804 030D082A */  slt        $at, $t8, $t5
/* 4408 80003808 50200016 */  beql       $at, $zero, .L80003864
/* 440C 8000380C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4410 80003810 C4460000 */  lwc1       $f6, ($v0)
/* 4414 80003814 C4680000 */  lwc1       $f8, ($v1)
/* 4418 80003818 3C018007 */  lui        $at, %hi(D_80070F38)
/* 441C 8000381C D4220F38 */  ldc1       $f2, %lo(D_80070F38)($at)
/* 4420 80003820 46083280 */  add.s      $f10, $f6, $f8
/* 4424 80003824 E44A0000 */  swc1       $f10, ($v0)
/* 4428 80003828 C4500000 */  lwc1       $f16, ($v0)
/* 442C 8000382C 46008021 */  cvt.d.s    $f0, $f16
/* 4430 80003830 4620103C */  c.lt.d     $f2, $f0
/* 4434 80003834 00000000 */  nop
/* 4438 80003838 4502000A */  bc1fl      .L80003864
/* 443C 8000383C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4440 80003840 46220481 */  sub.d      $f18, $f0, $f2
/* 4444 80003844 3C0E8008 */  lui        $t6, %hi(brianDataStart)
/* 4448 80003848 46209120 */  cvt.s.d    $f4, $f18
/* 444C 8000384C E4440000 */  swc1       $f4, ($v0)
/* 4450 80003850 8DCEBB30 */  lw         $t6, %lo(brianDataStart)($t6)
/* 4454 80003854 95CF0008 */  lhu        $t7, 8($t6)
/* 4458 80003858 25F90001 */  addiu      $t9, $t7, 1
/* 445C 8000385C A5D90008 */  sh         $t9, 8($t6)
/* 4460 80003860 8FBF001C */  lw         $ra, 0x1c($sp)
.L80003864:
/* 4464 80003864 27BD0030 */  addiu      $sp, $sp, 0x30
/* 4468 80003868 03E00008 */  jr         $ra
/* 446C 8000386C 00000000 */   nop

glabel func_80003870
/* 4470 80003870 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4474 80003874 3C058008 */  lui        $a1, %hi(UNK_DisplayListCommand)
/* 4478 80003878 24A5B2FC */  addiu      $a1, $a1, %lo(UNK_DisplayListCommand)
/* 447C 8000387C AFBF0024 */  sw         $ra, 0x24($sp)
/* 4480 80003880 AFA40038 */  sw         $a0, 0x38($sp)
/* 4484 80003884 8CA30000 */  lw         $v1, ($a1)
/* 4488 80003888 3C180100 */  lui        $t8, 0x100
/* 448C 8000388C 271800A0 */  addiu      $t8, $t8, 0xa0
/* 4490 80003890 246E0008 */  addiu      $t6, $v1, 8
/* 4494 80003894 ACAE0000 */  sw         $t6, ($a1)
/* 4498 80003898 3C0F0600 */  lui        $t7, 0x600
/* 449C 8000389C AC6F0000 */  sw         $t7, ($v1)
/* 44A0 800038A0 AC780004 */  sw         $t8, 4($v1)
/* 44A4 800038A4 3C048008 */  lui        $a0, %hi(D_8007BC08)
/* 44A8 800038A8 0C00447E */  jal        func_800111F8
/* 44AC 800038AC 8C84BC08 */   lw        $a0, %lo(D_8007BC08)($a0)
/* 44B0 800038B0 3C198008 */  lui        $t9, %hi(brianAction)
/* 44B4 800038B4 9739BAB8 */  lhu        $t9, %lo(brianAction)($t9)
/* 44B8 800038B8 2401000A */  addiu      $at, $zero, 0xa
/* 44BC 800038BC 24080001 */  addiu      $t0, $zero, 1
/* 44C0 800038C0 13210004 */  beq        $t9, $at, .L800038D4
/* 44C4 800038C4 3C098008 */   lui       $t1, 0x8008
/* 44C8 800038C8 2401000B */  addiu      $at, $zero, 0xb
/* 44CC 800038CC 57210004 */  bnel       $t9, $at, .L800038E0
/* 44D0 800038D0 AFA00034 */   sw        $zero, 0x34($sp)
.L800038D4:
/* 44D4 800038D4 10000002 */  b          .L800038E0
/* 44D8 800038D8 AFA80034 */   sw        $t0, 0x34($sp)
/* 44DC 800038DC AFA00034 */  sw         $zero, 0x34($sp)
.L800038E0:
/* 44E0 800038E0 8529BB1C */  lh         $t1, -0x44e4($t1)
/* 44E4 800038E4 3C0B8005 */  lui        $t3, %hi(D_80053D00)
/* 44E8 800038E8 3C048008 */  lui        $a0, %hi(BrianPos)
/* 44EC 800038EC 00095080 */  sll        $t2, $t1, 2
/* 44F0 800038F0 016A5821 */  addu       $t3, $t3, $t2
/* 44F4 800038F4 8D6B3D00 */  lw         $t3, %lo(D_80053D00)($t3)
/* 44F8 800038F8 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 44FC 800038FC 0C0019C8 */  jal        loadBrianAnim
/* 4500 80003900 AFAB0028 */   sw        $t3, 0x28($sp)
/* 4504 80003904 3C0C8008 */  lui        $t4, %hi(BrianCurrAnim)
/* 4508 80003908 858CBB1E */  lh         $t4, %lo(BrianCurrAnim)($t4)
/* 450C 8000390C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 4510 80003910 3C058008 */  lui        $a1, %hi(BrianPos)
/* 4514 80003914 000C6880 */  sll        $t5, $t4, 2
/* 4518 80003918 01AC6823 */  subu       $t5, $t5, $t4
/* 451C 8000391C 000D6880 */  sll        $t5, $t5, 2
/* 4520 80003920 24A5BACC */  addiu      $a1, $a1, %lo(BrianPos)
/* 4524 80003924 8FA40034 */  lw         $a0, 0x34($sp)
/* 4528 80003928 8FA70038 */  lw         $a3, 0x38($sp)
/* 452C 8000392C 0C0076CE */  jal        func_8001DB38
/* 4530 80003930 01AE3021 */   addu      $a2, $t5, $t6
/* 4534 80003934 3C0F8008 */  lui        $t7, %hi(BrianCurrAnim)
/* 4538 80003938 85EFBB1E */  lh         $t7, %lo(BrianCurrAnim)($t7)
/* 453C 8000393C 8FB90028 */  lw         $t9, 0x28($sp)
/* 4540 80003940 3C048008 */  lui        $a0, 0x8008
/* 4544 80003944 000FC080 */  sll        $t8, $t7, 2
/* 4548 80003948 030FC023 */  subu       $t8, $t8, $t7
/* 454C 8000394C 0018C080 */  sll        $t8, $t8, 2
/* 4550 80003950 3C058008 */  lui        $a1, %hi(BrianPos)
/* 4554 80003954 24A5BACC */  addiu      $a1, $a1, %lo(BrianPos)
/* 4558 80003958 9484BB24 */  lhu        $a0, -0x44dc($a0)
/* 455C 8000395C 0C00782B */  jal        func_8001E0AC
/* 4560 80003960 03193021 */   addu      $a2, $t8, $t9
/* 4564 80003964 3C048008 */  lui        $a0, %hi(BrianPos)
/* 4568 80003968 0C0019C8 */  jal        loadBrianAnim
/* 456C 8000396C 2484BACC */   addiu     $a0, $a0, %lo(BrianPos)
/* 4570 80003970 3C038009 */  lui        $v1, %hi(D_8008C5B0)
/* 4574 80003974 3C088008 */  lui        $t0, %hi(D_8007BC40)
/* 4578 80003978 2463C5B0 */  addiu      $v1, $v1, %lo(D_8008C5B0)
/* 457C 8000397C 2508BC40 */  addiu      $t0, $t0, %lo(D_8007BC40)
/* 4580 80003980 3C018008 */  lui        $at, %hi(BrianYPos)
/* 4584 80003984 C42EBAD0 */  lwc1       $f14, %lo(BrianYPos)($at)
/* 4588 80003988 AFA80010 */  sw         $t0, 0x10($sp)
/* 458C 8000398C C46C0000 */  lwc1       $f12, ($v1)
/* 4590 80003990 8C660008 */  lw         $a2, 8($v1)
/* 4594 80003994 0C003B98 */  jal        func_8000EE60
/* 4598 80003998 24070A00 */   addiu     $a3, $zero, 0xa00
/* 459C 8000399C 3C038009 */  lui        $v1, %hi(D_8008C5B0)
/* 45A0 800039A0 2463C5B0 */  addiu      $v1, $v1, %lo(D_8008C5B0)
/* 45A4 800039A4 C4640000 */  lwc1       $f4, ($v1)
/* 45A8 800039A8 3C028008 */  lui        $v0, %hi(BrianShadowXPos)
/* 45AC 800039AC 2442BBF0 */  addiu      $v0, $v0, %lo(BrianShadowXPos)
/* 45B0 800039B0 3C018008 */  lui        $at, %hi(D_8007BC44)
/* 45B4 800039B4 E4440000 */  swc1       $f4, ($v0)
/* 45B8 800039B8 C426BC44 */  lwc1       $f6, %lo(D_8007BC44)($at)
/* 45BC 800039BC C4680008 */  lwc1       $f8, 8($v1)
/* 45C0 800039C0 3C018008 */  lui        $at, %hi(BrianShadowRotation_)
/* 45C4 800039C4 E4460004 */  swc1       $f6, 4($v0)
/* 45C8 800039C8 E4480008 */  swc1       $f8, 8($v0)
/* 45CC 800039CC C42ABAFC */  lwc1       $f10, %lo(BrianShadowRotation_)($at)
/* 45D0 800039D0 3C018008 */  lui        $at, %hi(BrianShadowSideTiltMult)
/* 45D4 800039D4 C430BB00 */  lwc1       $f16, %lo(BrianShadowSideTiltMult)($at)
/* 45D8 800039D8 3C018008 */  lui        $at, %hi(BrianShadowScaleMult)
/* 45DC 800039DC C432BAF4 */  lwc1       $f18, %lo(BrianShadowScaleMult)($at)
/* 45E0 800039E0 C424BAF0 */  lwc1       $f4, -0x4510($at)
/* 45E4 800039E4 3C078008 */  lui        $a3, %hi(BrianShadowFwdTiltMult)
/* 45E8 800039E8 8CE7BAF8 */  lw         $a3, %lo(BrianShadowFwdTiltMult)($a3)
/* 45EC 800039EC 46049182 */  mul.s      $f6, $f18, $f4
/* 45F0 800039F0 8C460008 */  lw         $a2, 8($v0)
/* 45F4 800039F4 C44E0004 */  lwc1       $f14, 4($v0)
/* 45F8 800039F8 C44C0000 */  lwc1       $f12, ($v0)
/* 45FC 800039FC E7AA0010 */  swc1       $f10, 0x10($sp)
/* 4600 80003A00 E7B00014 */  swc1       $f16, 0x14($sp)
/* 4604 80003A04 0C004618 */  jal        drawSomeShadow
/* 4608 80003A08 E7A60018 */   swc1      $f6, 0x18($sp)
/* 460C 80003A0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 4610 80003A10 27BD0038 */  addiu      $sp, $sp, 0x38
/* 4614 80003A14 03E00008 */  jr         $ra
/* 4618 80003A18 00000000 */   nop

glabel UNK_Battle_Init
/* 461C 80003A1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4620 80003A20 3C028008 */  lui        $v0, %hi(brianAction)
/* 4624 80003A24 3C0A8008 */  lui        $t2, %hi(D_8007BA6C)
/* 4628 80003A28 254ABA6C */  addiu      $t2, $t2, %lo(D_8007BA6C)
/* 462C 80003A2C 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* 4630 80003A30 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4634 80003A34 AD400000 */  sw         $zero, ($t2)
/* 4638 80003A38 3C018008 */  lui        $at, %hi(InBattleXP)
/* 463C 80003A3C AC20BA68 */  sw         $zero, %lo(InBattleXP)($at)
/* 4640 80003A40 8C480078 */  lw         $t0, 0x78($v0)
/* 4644 80003A44 844F0064 */  lh         $t7, 0x64($v0)
/* 4648 80003A48 3C098005 */  lui        $t1, %hi(D_80053D00)
/* 464C 80003A4C 9519000C */  lhu        $t9, 0xc($t0)
/* 4650 80003A50 000FC080 */  sll        $t8, $t7, 2
/* 4654 80003A54 01384821 */  addu       $t1, $t1, $t8
/* 4658 80003A58 44992000 */  mtc1       $t9, $f4
/* 465C 80003A5C 8D293D00 */  lw         $t1, %lo(D_80053D00)($t1)
/* 4660 80003A60 07210005 */  bgez       $t9, .L80003A78
/* 4664 80003A64 468021A0 */   cvt.s.w   $f6, $f4
/* 4668 80003A68 3C014F80 */  lui        $at, 0x4f80
/* 466C 80003A6C 44814000 */  mtc1       $at, $f8
/* 4670 80003A70 00000000 */  nop
/* 4674 80003A74 46083180 */  add.s      $f6, $f6, $f8
.L80003A78:
/* 4678 80003A78 3C018007 */  lui        $at, %hi(D_80070F40)
/* 467C 80003A7C D4300F40 */  ldc1       $f16, %lo(D_80070F40)($at)
/* 4680 80003A80 460032A1 */  cvt.d.s    $f10, $f6
/* 4684 80003A84 3C014031 */  lui        $at, 0x4031
/* 4688 80003A88 46305482 */  mul.d      $f18, $f10, $f16
/* 468C 80003A8C 44812800 */  mtc1       $at, $f5
/* 4690 80003A90 44802000 */  mtc1       $zero, $f4
/* 4694 80003A94 8C430010 */  lw         $v1, 0x10($v0)
/* 4698 80003A98 A4400080 */  sh         $zero, 0x80($v0)
/* 469C 80003A9C A440010C */  sh         $zero, 0x10c($v0)
/* 46A0 80003AA0 3C013F80 */  lui        $at, 0x3f80
/* 46A4 80003AA4 44815000 */  mtc1       $at, $f10
/* 46A8 80003AA8 46249200 */  add.d      $f8, $f18, $f4
/* 46AC 80003AAC C4500024 */  lwc1       $f16, 0x24($v0)
/* 46B0 80003AB0 3C048008 */  lui        $a0, %hi(BrianPos)
/* 46B4 80003AB4 3C078008 */  lui        $a3, 0x8008
/* 46B8 80003AB8 462041A0 */  cvt.s.d    $f6, $f8
/* 46BC 80003ABC 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 46C0 80003AC0 24050012 */  addiu      $a1, $zero, 0x12
/* 46C4 80003AC4 24060001 */  addiu      $a2, $zero, 1
/* 46C8 80003AC8 E446000C */  swc1       $f6, 0xc($v0)
/* 46CC 80003ACC 906C0024 */  lbu        $t4, 0x24($v1)
/* 46D0 80003AD0 906B0027 */  lbu        $t3, 0x27($v1)
/* 46D4 80003AD4 906E0025 */  lbu        $t6, 0x25($v1)
/* 46D8 80003AD8 90780026 */  lbu        $t8, 0x26($v1)
/* 46DC 80003ADC 016C6821 */  addu       $t5, $t3, $t4
/* 46E0 80003AE0 01AE7821 */  addu       $t7, $t5, $t6
/* 46E4 80003AE4 240B0010 */  addiu      $t3, $zero, 0x10
/* 46E8 80003AE8 01F8C821 */  addu       $t9, $t7, $t8
/* 46EC 80003AEC A4590104 */  sh         $t9, 0x104($v0)
/* 46F0 80003AF0 A44B010A */  sh         $t3, 0x10a($v0)
/* 46F4 80003AF4 950C000C */  lhu        $t4, 0xc($t0)
/* 46F8 80003AF8 240E0003 */  addiu      $t6, $zero, 3
/* 46FC 80003AFC 94580008 */  lhu        $t8, 8($v0)
/* 4700 80003B00 A44C0106 */  sh         $t4, 0x106($v0)
/* 4704 80003B04 950D000E */  lhu        $t5, 0xe($t0)
/* 4708 80003B08 A44E0000 */  sh         $t6, ($v0)
/* 470C 80003B0C E44A0110 */  swc1       $f10, 0x110($v0)
/* 4710 80003B10 A44D0108 */  sh         $t5, 0x108($v0)
/* 4714 80003B14 852F00DA */  lh         $t7, 0xda($t1)
/* 4718 80003B18 944B0074 */  lhu        $t3, 0x74($v0)
/* 471C 80003B1C 3319FFDF */  andi       $t9, $t8, 0xffdf
/* 4720 80003B20 A4400002 */  sh         $zero, 2($v0)
/* 4724 80003B24 356C0001 */  ori        $t4, $t3, 1
/* 4728 80003B28 A4590008 */  sh         $t9, 8($v0)
/* 472C 80003B2C A44C0074 */  sh         $t4, 0x74($v0)
/* 4730 80003B30 240D0001 */  addiu      $t5, $zero, 1
/* 4734 80003B34 240E0001 */  addiu      $t6, $zero, 1
/* 4738 80003B38 E4500130 */  swc1       $f16, 0x130($v0)
/* 473C 80003B3C A44F0004 */  sh         $t7, 4($v0)
/* 4740 80003B40 8CE7BC2C */  lw         $a3, -0x43d4($a3)
/* 4744 80003B44 AFAE0014 */  sw         $t6, 0x14($sp)
/* 4748 80003B48 0C00762C */  jal        updateAnim
/* 474C 80003B4C AFAD0010 */   sw        $t5, 0x10($sp)
/* 4750 80003B50 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4754 80003B54 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4758 80003B58 03E00008 */  jr         $ra
/* 475C 80003B5C 00000000 */   nop

glabel func_80003B60
/* 4760 80003B60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4764 80003B64 3C01C100 */  lui        $at, 0xc100
/* 4768 80003B68 44811000 */  mtc1       $at, $f2
/* 476C 80003B6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4770 80003B70 AFA40020 */  sw         $a0, 0x20($sp)
/* 4774 80003B74 AFA50024 */  sw         $a1, 0x24($sp)
/* 4778 80003B78 AFA60028 */  sw         $a2, 0x28($sp)
/* 477C 80003B7C 3C0E8009 */  lui        $t6, %hi(JoystickX)
/* 4780 80003B80 81CE2871 */  lb         $t6, %lo(JoystickX)($t6)
/* 4784 80003B84 3C0F8009 */  lui        $t7, %hi(JoystickY)
/* 4788 80003B88 81EF2872 */  lb         $t7, %lo(JoystickY)($t7)
/* 478C 80003B8C 448E2000 */  mtc1       $t6, $f4
/* 4790 80003B90 448F5000 */  mtc1       $t7, $f10
/* 4794 80003B94 468021A0 */  cvt.s.w    $f6, $f4
/* 4798 80003B98 468053A0 */  cvt.s.w    $f14, $f10
/* 479C 80003B9C 46003207 */  neg.s      $f8, $f6
/* 47A0 80003BA0 46007387 */  neg.s      $f14, $f14
/* 47A4 80003BA4 4608103C */  c.lt.s     $f2, $f8
/* 47A8 80003BA8 E7A8001C */  swc1       $f8, 0x1c($sp)
/* 47AC 80003BAC 4500000A */  bc1f       .L80003BD8
/* 47B0 80003BB0 3C014100 */   lui       $at, 0x4100
/* 47B4 80003BB4 44818000 */  mtc1       $at, $f16
/* 47B8 80003BB8 00000000 */  nop
/* 47BC 80003BBC 4610403C */  c.lt.s     $f8, $f16
/* 47C0 80003BC0 00000000 */  nop
/* 47C4 80003BC4 45020005 */  bc1fl      .L80003BDC
/* 47C8 80003BC8 460E103C */   c.lt.s    $f2, $f14
/* 47CC 80003BCC 44800000 */  mtc1       $zero, $f0
/* 47D0 80003BD0 00000000 */  nop
/* 47D4 80003BD4 E7A0001C */  swc1       $f0, 0x1c($sp)
.L80003BD8:
/* 47D8 80003BD8 460E103C */  c.lt.s     $f2, $f14
.L80003BDC:
/* 47DC 80003BDC 44800000 */  mtc1       $zero, $f0
/* 47E0 80003BE0 3C014100 */  lui        $at, 0x4100
/* 47E4 80003BE4 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 47E8 80003BE8 45020009 */  bc1fl      .L80003C10
/* 47EC 80003BEC 46002032 */   c.eq.s    $f4, $f0
/* 47F0 80003BF0 44819000 */  mtc1       $at, $f18
/* 47F4 80003BF4 00000000 */  nop
/* 47F8 80003BF8 4612703C */  c.lt.s     $f14, $f18
/* 47FC 80003BFC 00000000 */  nop
/* 4800 80003C00 45020003 */  bc1fl      .L80003C10
/* 4804 80003C04 46002032 */   c.eq.s    $f4, $f0
/* 4808 80003C08 46000386 */  mov.s      $f14, $f0
/* 480C 80003C0C 46002032 */  c.eq.s     $f4, $f0
.L80003C10:
/* 4810 80003C10 3C058008 */  lui        $a1, %hi(UNK_somethingToDoWithAnimation)
/* 4814 80003C14 24A5BC30 */  addiu      $a1, $a1, %lo(UNK_somethingToDoWithAnimation)
/* 4818 80003C18 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* 481C 80003C1C 45000005 */  bc1f       .L80003C34
/* 4820 80003C20 3C018008 */   lui       $at, 0x8008
/* 4824 80003C24 46007032 */  c.eq.s     $f14, $f0
/* 4828 80003C28 00000000 */  nop
/* 482C 80003C2C 4501000B */  bc1t       .L80003C5C
/* 4830 80003C30 00000000 */   nop
.L80003C34:
/* 4834 80003C34 E4A60000 */  swc1       $f6, ($a1)
/* 4838 80003C38 E4AE0004 */  swc1       $f14, 4($a1)
/* 483C 80003C3C 0C008CBD */  jal        func_800232F4
/* 4840 80003C40 C42C6DE8 */   lwc1      $f12, 0x6de8($at)
/* 4844 80003C44 3C058008 */  lui        $a1, %hi(UNK_somethingToDoWithAnimation)
/* 4848 80003C48 24A5BC30 */  addiu      $a1, $a1, %lo(UNK_somethingToDoWithAnimation)
/* 484C 80003C4C C4AA0000 */  lwc1       $f10, ($a1)
/* 4850 80003C50 44800000 */  mtc1       $zero, $f0
/* 4854 80003C54 C4AE0004 */  lwc1       $f14, 4($a1)
/* 4858 80003C58 E7AA001C */  swc1       $f10, 0x1c($sp)
.L80003C5C:
/* 485C 80003C5C 3C188009 */  lui        $t8, %hi(D_8008C638)
/* 4860 80003C60 8F18C638 */  lw         $t8, %lo(D_8008C638)($t8)
/* 4864 80003C64 3C058008 */  lui        $a1, 0x8008
/* 4868 80003C68 3C198009 */  lui        $t9, 0x8009
/* 486C 80003C6C 13000005 */  beqz       $t8, .L80003C84
/* 4870 80003C70 3C028009 */   lui       $v0, 0x8009
/* 4874 80003C74 46000386 */  mov.s      $f14, $f0
/* 4878 80003C78 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 487C 80003C7C 10000019 */  b          .L80003CE4
/* 4880 80003C80 24A5B2E4 */   addiu     $a1, $a1, -0x4d1c
.L80003C84:
/* 4884 80003C84 8F39C63C */  lw         $t9, -0x39c4($t9)
/* 4888 80003C88 3C058008 */  lui        $a1, %hi(HUDState)
/* 488C 80003C8C 24A5B2E4 */  addiu      $a1, $a1, %lo(HUDState)
/* 4890 80003C90 53200007 */  beql       $t9, $zero, .L80003CB0
/* 4894 80003C94 8CA80000 */   lw        $t0, ($a1)
/* 4898 80003C98 3C058008 */  lui        $a1, %hi(HUDState)
/* 489C 80003C9C 24A5B2E4 */  addiu      $a1, $a1, %lo(HUDState)
/* 48A0 80003CA0 46000386 */  mov.s      $f14, $f0
/* 48A4 80003CA4 1000000F */  b          .L80003CE4
/* 48A8 80003CA8 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 48AC 80003CAC 8CA80000 */  lw         $t0, ($a1)
.L80003CB0:
/* 48B0 80003CB0 8FAA0024 */  lw         $t2, 0x24($sp)
/* 48B4 80003CB4 3109300F */  andi       $t1, $t0, 0x300f
/* 48B8 80003CB8 51200005 */  beql       $t1, $zero, .L80003CD0
/* 48BC 80003CBC 954B0080 */   lhu       $t3, 0x80($t2)
/* 48C0 80003CC0 46000386 */  mov.s      $f14, $f0
/* 48C4 80003CC4 10000007 */  b          .L80003CE4
/* 48C8 80003CC8 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 48CC 80003CCC 954B0080 */  lhu        $t3, 0x80($t2)
.L80003CD0:
/* 48D0 80003CD0 316C0008 */  andi       $t4, $t3, 8
/* 48D4 80003CD4 11800003 */  beqz       $t4, .L80003CE4
/* 48D8 80003CD8 00000000 */   nop
/* 48DC 80003CDC 46000386 */  mov.s      $f14, $f0
/* 48E0 80003CE0 E7A0001C */  swc1       $f0, 0x1c($sp)
.L80003CE4:
/* 48E4 80003CE4 9442C592 */  lhu        $v0, -0x3a6e($v0)
/* 48E8 80003CE8 3C0F8009 */  lui        $t7, 0x8009
/* 48EC 80003CEC 3C048008 */  lui        $a0, 0x8008
/* 48F0 80003CF0 304D0001 */  andi       $t5, $v0, 1
/* 48F4 80003CF4 11A00006 */  beqz       $t5, .L80003D10
/* 48F8 80003CF8 304E0202 */   andi      $t6, $v0, 0x202
/* 48FC 80003CFC 11C00004 */  beqz       $t6, .L80003D10
/* 4900 80003D00 00000000 */   nop
/* 4904 80003D04 46000386 */  mov.s      $f14, $f0
/* 4908 80003D08 10000006 */  b          .L80003D24
/* 490C 80003D0C E7A0001C */   swc1      $f0, 0x1c($sp)
.L80003D10:
/* 4910 80003D10 95EFC594 */  lhu        $t7, -0x3a6c($t7)
/* 4914 80003D14 51E00004 */  beql       $t7, $zero, .L80003D28
/* 4918 80003D18 8FB80024 */   lw        $t8, 0x24($sp)
/* 491C 80003D1C 46000386 */  mov.s      $f14, $f0
/* 4920 80003D20 E7A0001C */  swc1       $f0, 0x1c($sp)
.L80003D24:
/* 4924 80003D24 8FB80024 */  lw         $t8, 0x24($sp)
.L80003D28:
/* 4928 80003D28 2484BC24 */  addiu      $a0, $a0, -0x43dc
/* 492C 80003D2C 97020008 */  lhu        $v0, 8($t8)
/* 4930 80003D30 30590001 */  andi       $t9, $v0, 1
/* 4934 80003D34 13200019 */  beqz       $t9, .L80003D9C
/* 4938 80003D38 304F0002 */   andi      $t7, $v0, 2
/* 493C 80003D3C 8C830000 */  lw         $v1, ($a0)
/* 4940 80003D40 3C0A8009 */  lui        $t2, 0x8009
/* 4944 80003D44 10600008 */  beqz       $v1, .L80003D68
/* 4948 80003D48 2468FFFF */   addiu     $t0, $v1, -1
/* 494C 80003D4C 1500002B */  bnez       $t0, .L80003DFC
/* 4950 80003D50 AC880000 */   sw        $t0, ($a0)
/* 4954 80003D54 00002025 */  or         $a0, $zero, $zero
/* 4958 80003D58 0C00B9DA */  jal        UNK_calledWhenWritingToTextbox
/* 495C 80003D5C E7AE0018 */   swc1      $f14, 0x18($sp)
/* 4960 80003D60 10000026 */  b          .L80003DFC
/* 4964 80003D64 C7AE0018 */   lwc1      $f14, 0x18($sp)
.L80003D68:
/* 4968 80003D68 8D4A05C0 */  lw         $t2, 0x5c0($t2)
/* 496C 80003D6C 8FAC0024 */  lw         $t4, 0x24($sp)
/* 4970 80003D70 15400022 */  bnez       $t2, .L80003DFC
/* 4974 80003D74 304BFFFE */   andi      $t3, $v0, 0xfffe
/* 4978 80003D78 A58B0008 */  sh         $t3, 8($t4)
/* 497C 80003D7C 8CAD0000 */  lw         $t5, ($a1)
/* 4980 80003D80 2401FFFD */  addiu      $at, $zero, -3
/* 4984 80003D84 E7AE0018 */  swc1       $f14, 0x18($sp)
/* 4988 80003D88 01A17024 */  and        $t6, $t5, $at
/* 498C 80003D8C 0C007231 */  jal        UNK_BossBattleInit
/* 4990 80003D90 ACAE0000 */   sw        $t6, ($a1)
/* 4994 80003D94 10000019 */  b          .L80003DFC
/* 4998 80003D98 C7AE0018 */   lwc1      $f14, 0x18($sp)
.L80003D9C:
/* 499C 80003D9C 11E0000C */  beqz       $t7, .L80003DD0
/* 49A0 80003DA0 304B0010 */   andi      $t3, $v0, 0x10
/* 49A4 80003DA4 3C188009 */  lui        $t8, %hi(talkingFlag)
/* 49A8 80003DA8 8F1805C0 */  lw         $t8, %lo(talkingFlag)($t8)
/* 49AC 80003DAC 8FA80024 */  lw         $t0, 0x24($sp)
/* 49B0 80003DB0 17000012 */  bnez       $t8, .L80003DFC
/* 49B4 80003DB4 3059FFFD */   andi      $t9, $v0, 0xfffd
/* 49B8 80003DB8 A5190008 */  sh         $t9, 8($t0)
/* 49BC 80003DBC 8CA90000 */  lw         $t1, ($a1)
/* 49C0 80003DC0 2401FFFD */  addiu      $at, $zero, -3
/* 49C4 80003DC4 01215024 */  and        $t2, $t1, $at
/* 49C8 80003DC8 1000000C */  b          .L80003DFC
/* 49CC 80003DCC ACAA0000 */   sw        $t2, ($a1)
.L80003DD0:
/* 49D0 80003DD0 1160000A */  beqz       $t3, .L80003DFC
/* 49D4 80003DD4 3C0C8009 */   lui       $t4, %hi(talkingFlag)
/* 49D8 80003DD8 8D8C05C0 */  lw         $t4, %lo(talkingFlag)($t4)
/* 49DC 80003DDC 8FAE0024 */  lw         $t6, 0x24($sp)
/* 49E0 80003DE0 15800006 */  bnez       $t4, .L80003DFC
/* 49E4 80003DE4 304DFFEF */   andi      $t5, $v0, 0xffef
/* 49E8 80003DE8 A5CD0008 */  sh         $t5, 8($t6)
/* 49EC 80003DEC 8CAF0000 */  lw         $t7, ($a1)
/* 49F0 80003DF0 2401FFFD */  addiu      $at, $zero, -3
/* 49F4 80003DF4 01E1C024 */  and        $t8, $t7, $at
/* 49F8 80003DF8 ACB80000 */  sw         $t8, ($a1)
.L80003DFC:
/* 49FC 80003DFC 8FB90024 */  lw         $t9, 0x24($sp)
/* 4A00 80003E00 24010001 */  addiu      $at, $zero, 1
/* 4A04 80003E04 C7AC001C */  lwc1       $f12, 0x1c($sp)
/* 4A08 80003E08 97220000 */  lhu        $v0, ($t9)
/* 4A0C 80003E0C 8FA60020 */  lw         $a2, 0x20($sp)
/* 4A10 80003E10 10410009 */  beq        $v0, $at, .L80003E38
/* 4A14 80003E14 24010002 */   addiu     $at, $zero, 2
/* 4A18 80003E18 1441000B */  bne        $v0, $at, .L80003E48
/* 4A1C 80003E1C C7AC001C */   lwc1      $f12, 0x1c($sp)
/* 4A20 80003E20 C7AC001C */  lwc1       $f12, 0x1c($sp)
/* 4A24 80003E24 8FA60020 */  lw         $a2, 0x20($sp)
/* 4A28 80003E28 0C0014D3 */  jal        func_8000534C
/* 4A2C 80003E2C 8FA70024 */   lw        $a3, 0x24($sp)
/* 4A30 80003E30 10000009 */  b          .L80003E58
/* 4A34 80003E34 24040A01 */   addiu     $a0, $zero, 0xa01
.L80003E38:
/* 4A38 80003E38 0C001396 */  jal        func_80004E58
/* 4A3C 80003E3C 8FA70024 */   lw        $a3, 0x24($sp)
/* 4A40 80003E40 10000005 */  b          .L80003E58
/* 4A44 80003E44 24040A01 */   addiu     $a0, $zero, 0xa01
.L80003E48:
/* 4A48 80003E48 8FA60020 */  lw         $a2, 0x20($sp)
/* 4A4C 80003E4C 0C00134C */  jal        func_80004D30
/* 4A50 80003E50 8FA70024 */   lw        $a3, 0x24($sp)
/* 4A54 80003E54 24040A01 */  addiu      $a0, $zero, 0xa01
.L80003E58:
/* 4A58 80003E58 8FA50020 */  lw         $a1, 0x20($sp)
/* 4A5C 80003E5C 0C0015D2 */  jal        func_80005748
/* 4A60 80003E60 8FA60024 */   lw        $a2, 0x24($sp)
/* 4A64 80003E64 8FA80024 */  lw         $t0, 0x24($sp)
/* 4A68 80003E68 44800000 */  mtc1       $zero, $f0
/* 4A6C 80003E6C 24010002 */  addiu      $at, $zero, 2
/* 4A70 80003E70 95090000 */  lhu        $t1, ($t0)
/* 4A74 80003E74 3C028008 */  lui        $v0, %hi(D_8007BC28)
/* 4A78 80003E78 8FAB0020 */  lw         $t3, 0x20($sp)
/* 4A7C 80003E7C 1521002D */  bne        $t1, $at, .L80003F34
/* 4A80 80003E80 2442BC28 */   addiu     $v0, $v0, %lo(D_8007BC28)
/* 4A84 80003E84 944A0000 */  lhu        $t2, ($v0)
/* 4A88 80003E88 956C0058 */  lhu        $t4, 0x58($t3)
/* 4A8C 80003E8C 00002025 */  or         $a0, $zero, $zero
/* 4A90 80003E90 24050021 */  addiu      $a1, $zero, 0x21
/* 4A94 80003E94 014C6821 */  addu       $t5, $t2, $t4
/* 4A98 80003E98 31AEFFFF */  andi       $t6, $t5, 0xffff
/* 4A9C 80003E9C 29C10097 */  slti       $at, $t6, 0x97
/* 4AA0 80003EA0 14200006 */  bnez       $at, .L80003EBC
/* 4AA4 80003EA4 A44D0000 */   sh        $t5, ($v0)
/* 4AA8 80003EA8 A4400000 */  sh         $zero, ($v0)
/* 4AAC 80003EAC 0C009A35 */  jal        func_800268D4
/* 4AB0 80003EB0 240600FF */   addiu     $a2, $zero, 0xff
/* 4AB4 80003EB4 44800000 */  mtc1       $zero, $f0
/* 4AB8 80003EB8 00000000 */  nop
.L80003EBC:
/* 4ABC 80003EBC 8FAF0024 */  lw         $t7, 0x24($sp)
/* 4AC0 80003EC0 95E20004 */  lhu        $v0, 4($t7)
/* 4AC4 80003EC4 1040001B */  beqz       $v0, .L80003F34
/* 4AC8 80003EC8 30580003 */   andi      $t8, $v0, 3
/* 4ACC 80003ECC 17000016 */  bnez       $t8, .L80003F28
/* 4AD0 80003ED0 3C048005 */   lui       $a0, %hi(dustType_)
/* 4AD4 80003ED4 8FB90020 */  lw         $t9, 0x20($sp)
/* 4AD8 80003ED8 8FA80020 */  lw         $t0, 0x20($sp)
/* 4ADC 80003EDC 2484CE30 */  addiu      $a0, $a0, %lo(dustType_)
/* 4AE0 80003EE0 C7280000 */  lwc1       $f8, ($t9)
/* 4AE4 80003EE4 3C013F80 */  lui        $at, 0x3f80
/* 4AE8 80003EE8 44819000 */  mtc1       $at, $f18
/* 4AEC 80003EEC E4880018 */  swc1       $f8, 0x18($a0)
/* 4AF0 80003EF0 C5100004 */  lwc1       $f16, 4($t0)
/* 4AF4 80003EF4 8FA90020 */  lw         $t1, 0x20($sp)
/* 4AF8 80003EF8 3C018007 */  lui        $at, 0x8007
/* 4AFC 80003EFC 46128100 */  add.s      $f4, $f16, $f18
/* 4B00 80003F00 E484001C */  swc1       $f4, 0x1c($a0)
/* 4B04 80003F04 C5260008 */  lwc1       $f6, 8($t1)
/* 4B08 80003F08 E4800030 */  swc1       $f0, 0x30($a0)
/* 4B0C 80003F0C E4860020 */  swc1       $f6, 0x20($a0)
/* 4B10 80003F10 C42A0F48 */  lwc1       $f10, 0xf48($at)
/* 4B14 80003F14 E4800038 */  swc1       $f0, 0x38($a0)
/* 4B18 80003F18 0C006C42 */  jal        func_8001B108
/* 4B1C 80003F1C E48A0034 */   swc1      $f10, 0x34($a0)
/* 4B20 80003F20 8FAB0024 */  lw         $t3, 0x24($sp)
/* 4B24 80003F24 95620004 */  lhu        $v0, 4($t3)
.L80003F28:
/* 4B28 80003F28 8FAC0024 */  lw         $t4, 0x24($sp)
/* 4B2C 80003F2C 244AFFFF */  addiu      $t2, $v0, -1
/* 4B30 80003F30 A58A0004 */  sh         $t2, 4($t4)
.L80003F34:
/* 4B34 80003F34 8FA40024 */  lw         $a0, 0x24($sp)
/* 4B38 80003F38 0C001803 */  jal        func_8000600C
/* 4B3C 80003F3C 8FA50020 */   lw        $a1, 0x20($sp)
/* 4B40 80003F40 8FA40024 */  lw         $a0, 0x24($sp)
/* 4B44 80003F44 0C001D28 */  jal        func_800074A0
/* 4B48 80003F48 8FA50020 */   lw        $a1, 0x20($sp)
/* 4B4C 80003F4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4B50 80003F50 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4B54 80003F54 03E00008 */  jr         $ra
/* 4B58 80003F58 00000000 */   nop

glabel func_80003F5C
/* 4B5C 80003F5C 44800000 */  mtc1       $zero, $f0
/* 4B60 80003F60 AFA60008 */  sw         $a2, 8($sp)
/* 4B64 80003F64 E4800020 */  swc1       $f0, 0x20($a0)
/* 4B68 80003F68 E4800018 */  swc1       $f0, 0x18($a0)
/* 4B6C 80003F6C 94AE0004 */  lhu        $t6, 4($a1)
/* 4B70 80003F70 25CFFFFF */  addiu      $t7, $t6, -1
/* 4B74 80003F74 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 4B78 80003F78 17000005 */  bnez       $t8, .L80003F90
/* 4B7C 80003F7C A4AF0004 */   sh        $t7, 4($a1)
/* 4B80 80003F80 A4A00000 */  sh         $zero, ($a1)
/* 4B84 80003F84 94990060 */  lhu        $t9, 0x60($a0)
/* 4B88 80003F88 3328FFFC */  andi       $t0, $t9, 0xfffc
/* 4B8C 80003F8C A4880060 */  sh         $t0, 0x60($a0)
.L80003F90:
/* 4B90 80003F90 03E00008 */  jr         $ra
/* 4B94 80003F94 00000000 */   nop

glabel func_80003F98
/* 4B98 80003F98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4B9C 80003F9C AFA5001C */  sw         $a1, 0x1c($sp)
/* 4BA0 80003FA0 AFA60020 */  sw         $a2, 0x20($sp)
/* 4BA4 80003FA4 8FA6001C */  lw         $a2, 0x1c($sp)
/* 4BA8 80003FA8 00802825 */  or         $a1, $a0, $zero
/* 4BAC 80003FAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 4BB0 80003FB0 AFA40018 */  sw         $a0, 0x18($sp)
/* 4BB4 80003FB4 24040A01 */  addiu      $a0, $zero, 0xa01
/* 4BB8 80003FB8 AFA50018 */  sw         $a1, 0x18($sp)
/* 4BBC 80003FBC 0C0015D2 */  jal        func_80005748
/* 4BC0 80003FC0 AFA6001C */   sw        $a2, 0x1c($sp)
/* 4BC4 80003FC4 8FA50018 */  lw         $a1, 0x18($sp)
/* 4BC8 80003FC8 3C018007 */  lui        $at, %hi(D_80070F50)
/* 4BCC 80003FCC D4200F50 */  ldc1       $f0, %lo(D_80070F50)($at)
/* 4BD0 80003FD0 C4A40018 */  lwc1       $f4, 0x18($a1)
/* 4BD4 80003FD4 C4B00020 */  lwc1       $f16, 0x20($a1)
/* 4BD8 80003FD8 8FA6001C */  lw         $a2, 0x1c($sp)
/* 4BDC 80003FDC 460021A1 */  cvt.d.s    $f6, $f4
/* 4BE0 80003FE0 460084A1 */  cvt.d.s    $f18, $f16
/* 4BE4 80003FE4 46203202 */  mul.d      $f8, $f6, $f0
/* 4BE8 80003FE8 00000000 */  nop
/* 4BEC 80003FEC 46209102 */  mul.d      $f4, $f18, $f0
/* 4BF0 80003FF0 462042A0 */  cvt.s.d    $f10, $f8
/* 4BF4 80003FF4 462021A0 */  cvt.s.d    $f6, $f4
/* 4BF8 80003FF8 E4AA0018 */  swc1       $f10, 0x18($a1)
/* 4BFC 80003FFC E4A60020 */  swc1       $f6, 0x20($a1)
/* 4C00 80004000 94CE0004 */  lhu        $t6, 4($a2)
/* 4C04 80004004 25CFFFFF */  addiu      $t7, $t6, -1
/* 4C08 80004008 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 4C0C 8000400C 17000008 */  bnez       $t8, .L80004030
/* 4C10 80004010 A4CF0004 */   sh        $t7, 4($a2)
/* 4C14 80004014 44809000 */  mtc1       $zero, $f18
/* 4C18 80004018 A4C00000 */  sh         $zero, ($a2)
/* 4C1C 8000401C 94B90060 */  lhu        $t9, 0x60($a1)
/* 4C20 80004020 E4B20020 */  swc1       $f18, 0x20($a1)
/* 4C24 80004024 E4B20018 */  swc1       $f18, 0x18($a1)
/* 4C28 80004028 3328FFFE */  andi       $t0, $t9, 0xfffe
/* 4C2C 8000402C A4A80060 */  sh         $t0, 0x60($a1)
.L80004030:
/* 4C30 80004030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4C34 80004034 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4C38 80004038 03E00008 */  jr         $ra
/* 4C3C 8000403C 00000000 */   nop

glabel func_80004040
/* 4C40 80004040 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4C44 80004044 AFB00020 */  sw         $s0, 0x20($sp)
/* 4C48 80004048 44800000 */  mtc1       $zero, $f0
/* 4C4C 8000404C 00A08025 */  or         $s0, $a1, $zero
/* 4C50 80004050 AFBF0024 */  sw         $ra, 0x24($sp)
/* 4C54 80004054 AFA60030 */  sw         $a2, 0x30($sp)
/* 4C58 80004058 E4800020 */  swc1       $f0, 0x20($a0)
/* 4C5C 8000405C E4800018 */  swc1       $f0, 0x18($a0)
/* 4C60 80004060 960E0004 */  lhu        $t6, 4($s0)
/* 4C64 80004064 25CFFFFF */  addiu      $t7, $t6, -1
/* 4C68 80004068 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 4C6C 8000406C 1700004C */  bnez       $t8, .L800041A0
/* 4C70 80004070 A60F0004 */   sh        $t7, 4($s0)
/* 4C74 80004074 8E020010 */  lw         $v0, 0x10($s0)
/* 4C78 80004078 E4800018 */  swc1       $f0, 0x18($a0)
/* 4C7C 8000407C E4800020 */  swc1       $f0, 0x20($a0)
/* 4C80 80004080 94590004 */  lhu        $t9, 4($v0)
/* 4C84 80004084 24080006 */  addiu      $t0, $zero, 6
/* 4C88 80004088 240900E6 */  addiu      $t1, $zero, 0xe6
/* 4C8C 8000408C 17200040 */  bnez       $t9, .L80004190
/* 4C90 80004090 24050009 */   addiu     $a1, $zero, 9
/* 4C94 80004094 A6080000 */  sh         $t0, ($s0)
/* 4C98 80004098 A6090004 */  sh         $t1, 4($s0)
/* 4C9C 8000409C 3C078008 */  lui        $a3, %hi(tempCurrAnim)
/* 4CA0 800040A0 240A0001 */  addiu      $t2, $zero, 1
/* 4CA4 800040A4 240B0001 */  addiu      $t3, $zero, 1
/* 4CA8 800040A8 AFAB0014 */  sw         $t3, 0x14($sp)
/* 4CAC 800040AC AFAA0010 */  sw         $t2, 0x10($sp)
/* 4CB0 800040B0 8CE7BC2C */  lw         $a3, %lo(tempCurrAnim)($a3)
/* 4CB4 800040B4 AFA40028 */  sw         $a0, 0x28($sp)
/* 4CB8 800040B8 0C00762C */  jal        updateAnim
/* 4CBC 800040BC 24060001 */   addiu     $a2, $zero, 1
/* 4CC0 800040C0 0C0080B9 */  jal        unk_UsesBrianOREnemyPos
/* 4CC4 800040C4 8FA40028 */   lw        $a0, 0x28($sp)
/* 4CC8 800040C8 0C0099EE */  jal        updateBGM
/* 4CCC 800040CC 2404001E */   addiu     $a0, $zero, 0x1e
/* 4CD0 800040D0 3C038008 */  lui        $v1, %hi(HUDState)
/* 4CD4 800040D4 2463B2E4 */  addiu      $v1, $v1, %lo(HUDState)
/* 4CD8 800040D8 8C6C0000 */  lw         $t4, ($v1)
/* 4CDC 800040DC 3C018008 */  lui        $at, 0x8008
/* 4CE0 800040E0 240F0002 */  addiu      $t7, $zero, 2
/* 4CE4 800040E4 358D0880 */  ori        $t5, $t4, 0x880
/* 4CE8 800040E8 AC6D0000 */  sw         $t5, ($v1)
/* 4CEC 800040EC 960E0004 */  lhu        $t6, 4($s0)
/* 4CF0 800040F0 2418005A */  addiu      $t8, $zero, 0x5a
/* 4CF4 800040F4 241900C8 */  addiu      $t9, $zero, 0xc8
/* 4CF8 800040F8 AC2EB2EC */  sw         $t6, -0x4d14($at)
/* 4CFC 800040FC 3C018008 */  lui        $at, %hi(fadeType)
/* 4D00 80004100 A42FB2F0 */  sh         $t7, %lo(fadeType)($at)
/* 4D04 80004104 3C018008 */  lui        $at, %hi(D_8007B2F2)
/* 4D08 80004108 A438B2F2 */  sh         $t8, %lo(D_8007B2F2)($at)
/* 4D0C 8000410C A6190120 */  sh         $t9, 0x120($s0)
/* 4D10 80004110 3C088008 */  lui        $t0, %hi(MapToLoad)
/* 4D14 80004114 9508BA60 */  lhu        $t0, %lo(MapToLoad)($t0)
/* 4D18 80004118 3C028008 */  lui        $v0, %hi(temp_CurrMap)
/* 4D1C 8000411C 24425368 */  addiu      $v0, $v0, %lo(temp_CurrMap)
/* 4D20 80004120 3C098008 */  lui        $t1, %hi(SubmapToLoad)
/* 4D24 80004124 AC480000 */  sw         $t0, ($v0)
/* 4D28 80004128 9529BA62 */  lhu        $t1, %lo(SubmapToLoad)($t1)
/* 4D2C 8000412C 3C0A8008 */  lui        $t2, %hi(LastExit)
/* 4D30 80004130 44800000 */  mtc1       $zero, $f0
/* 4D34 80004134 AC490004 */  sw         $t1, 4($v0)
/* 4D38 80004138 954ABA64 */  lhu        $t2, %lo(LastExit)($t2)
/* 4D3C 8000413C 3C018008 */  lui        $at, %hi(brianXPosToLoad)
/* 4D40 80004140 240B0108 */  addiu      $t3, $zero, 0x108
/* 4D44 80004144 AC4A0008 */  sw         $t2, 8($v0)
/* 4D48 80004148 E420BA40 */  swc1       $f0, %lo(brianXPosToLoad)($at)
/* 4D4C 8000414C 3C018008 */  lui        $at, %hi(brianYPosToLoad)
/* 4D50 80004150 E420BA44 */  swc1       $f0, %lo(brianYPosToLoad)($at)
/* 4D54 80004154 3C018008 */  lui        $at, %hi(brianZPosToLoad)
/* 4D58 80004158 E420BA48 */  swc1       $f0, %lo(brianZPosToLoad)($at)
/* 4D5C 8000415C 3C018008 */  lui        $at, %hi(brianExitAnim)
/* 4D60 80004160 AC2BBA4C */  sw         $t3, %lo(brianExitAnim)($at)
/* 4D64 80004164 3C018008 */  lui        $at, %hi(brianAnimationOverride_UNUSED)
/* 4D68 80004168 A420BABE */  sh         $zero, %lo(brianAnimationOverride_UNUSED)($at)
/* 4D6C 8000416C 3C018005 */  lui        $at, %hi(D_8004D2B4)
/* 4D70 80004170 240C0001 */  addiu      $t4, $zero, 1
/* 4D74 80004174 3C048005 */  lui        $a0, %hi(D_8004D2BC)
/* 4D78 80004178 A02CD2B4 */  sb         $t4, %lo(D_8004D2B4)($at)
/* 4D7C 8000417C 2484D2BC */  addiu      $a0, $a0, %lo(D_8004D2BC)
/* 4D80 80004180 AC800000 */  sw         $zero, ($a0)
/* 4D84 80004184 3C018005 */  lui        $at, %hi(D_8004D2B8)
/* 4D88 80004188 10000005 */  b          .L800041A0
/* 4D8C 8000418C AC20D2B8 */   sw        $zero, %lo(D_8004D2B8)($at)
.L80004190:
/* 4D90 80004190 A6000000 */  sh         $zero, ($s0)
/* 4D94 80004194 948E0060 */  lhu        $t6, 0x60($a0)
/* 4D98 80004198 31CFFFFC */  andi       $t7, $t6, 0xfffc
/* 4D9C 8000419C A48F0060 */  sh         $t7, 0x60($a0)
.L800041A0:
/* 4DA0 800041A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 4DA4 800041A4 8FB00020 */  lw         $s0, 0x20($sp)
/* 4DA8 800041A8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 4DAC 800041AC 03E00008 */  jr         $ra
/* 4DB0 800041B0 00000000 */   nop

glabel func_800041B4
/* 4DB4 800041B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4DB8 800041B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4DBC 800041BC AFA40018 */  sw         $a0, 0x18($sp)
/* 4DC0 800041C0 AFA60020 */  sw         $a2, 0x20($sp)
/* 4DC4 800041C4 00A03825 */  or         $a3, $a1, $zero
/* 4DC8 800041C8 3C068008 */  lui        $a2, %hi(UNK_somethingToDoWithAnimation)
/* 4DCC 800041CC 24C6BC30 */  addiu      $a2, $a2, %lo(UNK_somethingToDoWithAnimation)
/* 4DD0 800041D0 8FA40018 */  lw         $a0, 0x18($sp)
/* 4DD4 800041D4 8FA50020 */  lw         $a1, 0x20($sp)
/* 4DD8 800041D8 0C0015B4 */  jal        func_800056D0
/* 4DDC 800041DC AFA7001C */   sw        $a3, 0x1c($sp)
/* 4DE0 800041E0 3C028008 */  lui        $v0, %hi(UNK_somethingToDoWithAnimation)
/* 4DE4 800041E4 2442BC30 */  addiu      $v0, $v0, %lo(UNK_somethingToDoWithAnimation)
/* 4DE8 800041E8 8FA50018 */  lw         $a1, 0x18($sp)
/* 4DEC 800041EC C4440000 */  lwc1       $f4, ($v0)
/* 4DF0 800041F0 8FA6001C */  lw         $a2, 0x1c($sp)
/* 4DF4 800041F4 24040A01 */  addiu      $a0, $zero, 0xa01
/* 4DF8 800041F8 E4A40018 */  swc1       $f4, 0x18($a1)
/* 4DFC 800041FC C4460004 */  lwc1       $f6, 4($v0)
/* 4E00 80004200 0C0015D2 */  jal        func_80005748
/* 4E04 80004204 E4A60020 */   swc1      $f6, 0x20($a1)
/* 4E08 80004208 8FA7001C */  lw         $a3, 0x1c($sp)
/* 4E0C 8000420C 3C028008 */  lui        $v0, %hi(cameraFuncIndex)
/* 4E10 80004210 24426DC0 */  addiu      $v0, $v0, %lo(cameraFuncIndex)
/* 4E14 80004214 94EE0004 */  lhu        $t6, 4($a3)
/* 4E18 80004218 94F80120 */  lhu        $t8, 0x120($a3)
/* 4E1C 8000421C 3C01437A */  lui        $at, 0x437a
/* 4E20 80004220 25CFFFFF */  addiu      $t7, $t6, -1
/* 4E24 80004224 31F9FFFF */  andi       $t9, $t7, 0xffff
/* 4E28 80004228 17190009 */  bne        $t8, $t9, .L80004250
/* 4E2C 8000422C A4EF0004 */   sh        $t7, 4($a3)
/* 4E30 80004230 44814000 */  mtc1       $at, $f8
/* 4E34 80004234 3C014316 */  lui        $at, 0x4316
/* 4E38 80004238 44815000 */  mtc1       $at, $f10
/* 4E3C 8000423C 3C018007 */  lui        $at, %hi(D_80070F58)
/* 4E40 80004240 E448004C */  swc1       $f8, 0x4c($v0)
/* 4E44 80004244 E44A0058 */  swc1       $f10, 0x58($v0)
/* 4E48 80004248 C4300F58 */  lwc1       $f16, %lo(D_80070F58)($at)
/* 4E4C 8000424C E4500070 */  swc1       $f16, 0x70($v0)
.L80004250:
/* 4E50 80004250 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4E54 80004254 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4E58 80004258 03E00008 */  jr         $ra
/* 4E5C 8000425C 00000000 */   nop

glabel func_80004260
/* 4E60 80004260 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4E64 80004264 AFA60020 */  sw         $a2, 0x20($sp)
/* 4E68 80004268 44800000 */  mtc1       $zero, $f0
/* 4E6C 8000426C 00803025 */  or         $a2, $a0, $zero
/* 4E70 80004270 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4E74 80004274 AFA40018 */  sw         $a0, 0x18($sp)
/* 4E78 80004278 00A03825 */  or         $a3, $a1, $zero
/* 4E7C 8000427C E4C00020 */  swc1       $f0, 0x20($a2)
/* 4E80 80004280 E4C00018 */  swc1       $f0, 0x18($a2)
/* 4E84 80004284 3C0E8009 */  lui        $t6, %hi(talkingFlag)
/* 4E88 80004288 8DCE05C0 */  lw         $t6, %lo(talkingFlag)($t6)
/* 4E8C 8000428C 3C048008 */  lui        $a0, %hi(npcNum)
/* 4E90 80004290 55C00049 */  bnel       $t6, $zero, .L800043B8
/* 4E94 80004294 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4E98 80004298 8C84BA74 */  lw         $a0, %lo(npcNum)($a0)
/* 4E9C 8000429C AFA60018 */  sw         $a2, 0x18($sp)
/* 4EA0 800042A0 0C002252 */  jal        func_80008948
/* 4EA4 800042A4 AFA7001C */   sw        $a3, 0x1c($sp)
/* 4EA8 800042A8 8FA7001C */  lw         $a3, 0x1c($sp)
/* 4EAC 800042AC 8FA60018 */  lw         $a2, 0x18($sp)
/* 4EB0 800042B0 3C028008 */  lui        $v0, %hi(HUDState)
/* 4EB4 800042B4 A4E00000 */  sh         $zero, ($a3)
/* 4EB8 800042B8 94CF0060 */  lhu        $t7, 0x60($a2)
/* 4EBC 800042BC 2442B2E4 */  addiu      $v0, $v0, %lo(HUDState)
/* 4EC0 800042C0 2401FFFD */  addiu      $at, $zero, -3
/* 4EC4 800042C4 31F8FFFE */  andi       $t8, $t7, 0xfffe
/* 4EC8 800042C8 A4D80060 */  sh         $t8, 0x60($a2)
/* 4ECC 800042CC 8C590000 */  lw         $t9, ($v0)
/* 4ED0 800042D0 3C0B8008 */  lui        $t3, 0x8008
/* 4ED4 800042D4 03214024 */  and        $t0, $t9, $at
/* 4ED8 800042D8 31090010 */  andi       $t1, $t0, 0x10
/* 4EDC 800042DC 1120002A */  beqz       $t1, .L80004388
/* 4EE0 800042E0 AC480000 */   sw        $t0, ($v0)
/* 4EE4 800042E4 2401FFEF */  addiu      $at, $zero, -0x11
/* 4EE8 800042E8 01015024 */  and        $t2, $t0, $at
/* 4EEC 800042EC AC4A0000 */  sw         $t2, ($v0)
/* 4EF0 800042F0 8D6BBA74 */  lw         $t3, -0x458c($t3)
/* 4EF4 800042F4 3C0D8008 */  lui        $t5, 0x8008
/* 4EF8 800042F8 24010006 */  addiu      $at, $zero, 6
/* 4EFC 800042FC 000B6140 */  sll        $t4, $t3, 5
/* 4F00 80004300 018B6021 */  addu       $t4, $t4, $t3
/* 4F04 80004304 000C6080 */  sll        $t4, $t4, 2
/* 4F08 80004308 01AC6821 */  addu       $t5, $t5, $t4
/* 4F0C 8000430C 8DADBDB0 */  lw         $t5, -0x4250($t5)
/* 4F10 80004310 3C0F8009 */  lui        $t7, %hi(D_800905C4)
/* 4F14 80004314 95AE0002 */  lhu        $t6, 2($t5)
/* 4F18 80004318 15C10024 */  bne        $t6, $at, .L800043AC
/* 4F1C 8000431C 00000000 */   nop
/* 4F20 80004320 8DEF05C4 */  lw         $t7, %lo(D_800905C4)($t7)
/* 4F24 80004324 35590480 */  ori        $t9, $t2, 0x480
/* 4F28 80004328 24080023 */  addiu      $t0, $zero, 0x23
/* 4F2C 8000432C 15E0001F */  bnez       $t7, .L800043AC
/* 4F30 80004330 3C018008 */   lui       $at, %hi(transitionFadeTimer)
/* 4F34 80004334 AC590000 */  sw         $t9, ($v0)
/* 4F38 80004338 AC28B2EC */  sw         $t0, %lo(transitionFadeTimer)($at)
/* 4F3C 8000433C 3C0A8008 */  lui        $t2, %hi(nextMap)
/* 4F40 80004340 8D4A4EE4 */  lw         $t2, %lo(nextMap)($t2)
/* 4F44 80004344 3C018008 */  lui        $at, %hi(D_8007B2F2)
/* 4F48 80004348 2409001E */  addiu      $t1, $zero, 0x1e
/* 4F4C 8000434C A429B2F2 */  sh         $t1, %lo(D_8007B2F2)($at)
/* 4F50 80004350 3C0B8008 */  lui        $t3, %hi(nextSubmap)
/* 4F54 80004354 8D6B4EE8 */  lw         $t3, %lo(nextSubmap)($t3)
/* 4F58 80004358 3C018008 */  lui        $at, %hi(MapToLoad)
/* 4F5C 8000435C A42ABA60 */  sh         $t2, %lo(MapToLoad)($at)
/* 4F60 80004360 3C018008 */  lui        $at, %hi(SubmapToLoad)
/* 4F64 80004364 A42BBA62 */  sh         $t3, %lo(SubmapToLoad)($at)
/* 4F68 80004368 240C0003 */  addiu      $t4, $zero, 3
/* 4F6C 8000436C 240D0041 */  addiu      $t5, $zero, 0x41
/* 4F70 80004370 A4EC0000 */  sh         $t4, ($a3)
/* 4F74 80004374 A4ED0004 */  sh         $t5, 4($a3)
/* 4F78 80004378 94CE0060 */  lhu        $t6, 0x60($a2)
/* 4F7C 8000437C 35CF0001 */  ori        $t7, $t6, 1
/* 4F80 80004380 1000000A */  b          .L800043AC
/* 4F84 80004384 A4CF0060 */   sh        $t7, 0x60($a2)
.L80004388:
/* 4F88 80004388 94E20008 */  lhu        $v0, 8($a3)
/* 4F8C 8000438C 00002025 */  or         $a0, $zero, $zero
/* 4F90 80004390 2405003B */  addiu      $a1, $zero, 0x3b
/* 4F94 80004394 30580040 */  andi       $t8, $v0, 0x40
/* 4F98 80004398 13000004 */  beqz       $t8, .L800043AC
/* 4F9C 8000439C 3059FFBF */   andi      $t9, $v0, 0xffbf
/* 4FA0 800043A0 A4F90008 */  sh         $t9, 8($a3)
/* 4FA4 800043A4 0C009A35 */  jal        func_800268D4
/* 4FA8 800043A8 240600FF */   addiu     $a2, $zero, 0xff
.L800043AC:
/* 4FAC 800043AC 3C018008 */  lui        $at, %hi(npcNum)
/* 4FB0 800043B0 AC20BA74 */  sw         $zero, %lo(npcNum)($at)
/* 4FB4 800043B4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800043B8:
/* 4FB8 800043B8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4FBC 800043BC 03E00008 */  jr         $ra
/* 4FC0 800043C0 00000000 */   nop

glabel UNK_BrianWalksForward
/* 4FC4 800043C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4FC8 800043C8 AFB10018 */  sw         $s1, 0x18($sp)
/* 4FCC 800043CC AFB00014 */  sw         $s0, 0x14($sp)
/* 4FD0 800043D0 00A08025 */  or         $s0, $a1, $zero
/* 4FD4 800043D4 00808825 */  or         $s1, $a0, $zero
/* 4FD8 800043D8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4FDC 800043DC AFA60028 */  sw         $a2, 0x28($sp)
/* 4FE0 800043E0 C60C0128 */  lwc1       $f12, 0x128($s0)
/* 4FE4 800043E4 C60E012C */  lwc1       $f14, 0x12c($s0)
/* 4FE8 800043E8 02203025 */  or         $a2, $s1, $zero
/* 4FEC 800043EC 0C001396 */  jal        func_80004E58
/* 4FF0 800043F0 02003825 */   or        $a3, $s0, $zero
/* 4FF4 800043F4 24040A01 */  addiu      $a0, $zero, 0xa01
/* 4FF8 800043F8 02202825 */  or         $a1, $s1, $zero
/* 4FFC 800043FC 0C0015D2 */  jal        func_80005748
/* 5000 80004400 02003025 */   or        $a2, $s0, $zero
/* 5004 80004404 960E0004 */  lhu        $t6, 4($s0)
/* 5008 80004408 25CFFFFF */  addiu      $t7, $t6, -1
/* 500C 8000440C 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 5010 80004410 17000008 */  bnez       $t8, .L80004434
/* 5014 80004414 A60F0004 */   sh        $t7, 4($s0)
/* 5018 80004418 44809000 */  mtc1       $zero, $f18
/* 501C 8000441C A6000000 */  sh         $zero, ($s0)
/* 5020 80004420 96390060 */  lhu        $t9, 0x60($s1)
/* 5024 80004424 E6320020 */  swc1       $f18, 0x20($s1)
/* 5028 80004428 E6320018 */  swc1       $f18, 0x18($s1)
/* 502C 8000442C 3328FFFE */  andi       $t0, $t9, 0xfffe
/* 5030 80004430 A6280060 */  sh         $t0, 0x60($s1)
.L80004434:
/* 5034 80004434 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5038 80004438 8FB00014 */  lw         $s0, 0x14($sp)
/* 503C 8000443C 8FB10018 */  lw         $s1, 0x18($sp)
/* 5040 80004440 03E00008 */  jr         $ra
/* 5044 80004444 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80004448
/* 5048 80004448 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 504C 8000444C AFB10020 */  sw         $s1, 0x20($sp)
/* 5050 80004450 AFB0001C */  sw         $s0, 0x1c($sp)
/* 5054 80004454 44800000 */  mtc1       $zero, $f0
/* 5058 80004458 00A08025 */  or         $s0, $a1, $zero
/* 505C 8000445C 00808825 */  or         $s1, $a0, $zero
/* 5060 80004460 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5064 80004464 AFA60030 */  sw         $a2, 0x30($sp)
/* 5068 80004468 E6200020 */  swc1       $f0, 0x20($s1)
/* 506C 8000446C E6200018 */  swc1       $f0, 0x18($s1)
/* 5070 80004470 960E0004 */  lhu        $t6, 4($s0)
/* 5074 80004474 25CFFFFF */  addiu      $t7, $t6, -1
/* 5078 80004478 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 507C 8000447C 17000057 */  bnez       $t8, .L800045DC
/* 5080 80004480 A60F0004 */   sh        $t7, 4($s0)
/* 5084 80004484 96040002 */  lhu        $a0, 2($s0)
/* 5088 80004488 02202825 */  or         $a1, $s1, $zero
/* 508C 8000448C 0C001A9D */  jal        func_80006A74
/* 5090 80004490 2484FFFF */   addiu     $a0, $a0, -1
/* 5094 80004494 5040003B */  beql       $v0, $zero, .L80004584
/* 5098 80004498 960C0002 */   lhu       $t4, 2($s0)
/* 509C 8000449C 0C001AC7 */  jal        func_80006B1C
/* 50A0 800044A0 02002025 */   or        $a0, $s0, $zero
/* 50A4 800044A4 9606011E */  lhu        $a2, 0x11e($s0)
/* 50A8 800044A8 96040002 */  lhu        $a0, 2($s0)
/* 50AC 800044AC AFB10010 */  sw         $s1, 0x10($sp)
/* 50B0 800044B0 00064203 */  sra        $t0, $a2, 8
/* 50B4 800044B4 3106000F */  andi       $a2, $t0, 0xf
/* 50B8 800044B8 3045FFFF */  andi       $a1, $v0, 0xffff
/* 50BC 800044BC 34078004 */  ori        $a3, $zero, 0x8004
/* 50C0 800044C0 0C002B30 */  jal        func_8000ACC0
/* 50C4 800044C4 2484FFFF */   addiu     $a0, $a0, -1
/* 50C8 800044C8 50400029 */  beql       $v0, $zero, .L80004570
/* 50CC 800044CC 8E020010 */   lw        $v0, 0x10($s0)
/* 50D0 800044D0 8E230064 */  lw         $v1, 0x64($s1)
/* 50D4 800044D4 946A0008 */  lhu        $t2, 8($v1)

glabel Add1ToMPOnStaffAtk
/* 50D8 800044D8 254B0001 */  addiu      $t3, $t2, 1
/* 50DC 800044DC A46B0008 */  sh         $t3, 8($v1)
/* 50E0 800044E0 8E230064 */  lw         $v1, 0x64($s1)
/* 50E4 800044E4 9464000A */  lhu        $a0, 0xa($v1)
/* 50E8 800044E8 946C0008 */  lhu        $t4, 8($v1)
/* 50EC 800044EC 008C082A */  slt        $at, $a0, $t4
/* 50F0 800044F0 50200003 */  beql       $at, $zero, .L80004500
/* 50F4 800044F4 960D0080 */   lhu       $t5, 0x80($s0)
/* 50F8 800044F8 A4640008 */  sh         $a0, 8($v1)
/* 50FC 800044FC 960D0080 */  lhu        $t5, 0x80($s0)
.L80004500:
/* 5100 80004500 3044FFFF */  andi       $a0, $v0, 0xffff
/* 5104 80004504 31AE0002 */  andi       $t6, $t5, 2
/* 5108 80004508 51C00019 */  beql       $t6, $zero, .L80004570
/* 510C 8000450C 8E020010 */   lw        $v0, 0x10($s0)
/* 5110 80004510 8E230064 */  lw         $v1, 0x64($s1)
/* 5114 80004514 24840003 */  addiu      $a0, $a0, 3
/* 5118 80004518 00047883 */  sra        $t7, $a0, 2
/* 511C 8000451C 94790004 */  lhu        $t9, 4($v1)
/* 5120 80004520 25E40001 */  addiu      $a0, $t7, 1
/* 5124 80004524 3086FFFF */  andi       $a2, $a0, 0xffff
/* 5128 80004528 03264021 */  addu       $t0, $t9, $a2
/* 512C 8000452C A4680004 */  sh         $t0, 4($v1)
/* 5130 80004530 8E230064 */  lw         $v1, 0x64($s1)
/* 5134 80004534 02202025 */  or         $a0, $s1, $zero
/* 5138 80004538 94650006 */  lhu        $a1, 6($v1)
/* 513C 8000453C 94690004 */  lhu        $t1, 4($v1)
/* 5140 80004540 00A9082A */  slt        $at, $a1, $t1
/* 5144 80004544 10200002 */  beqz       $at, .L80004550
/* 5148 80004548 00000000 */   nop
/* 514C 8000454C A4650004 */  sh         $a1, 4($v1)
.L80004550:
/* 5150 80004550 0C00637D */  jal        func_80018DF4
/* 5154 80004554 24050001 */   addiu     $a1, $zero, 1
/* 5158 80004558 02202025 */  or         $a0, $s1, $zero
/* 515C 8000455C 24050002 */  addiu      $a1, $zero, 2
/* 5160 80004560 24060001 */  addiu      $a2, $zero, 1
/* 5164 80004564 0C007F3E */  jal        func_8001FCF8
/* 5168 80004568 2407001E */   addiu     $a3, $zero, 0x1e
/* 516C 8000456C 8E020010 */  lw         $v0, 0x10($s0)
.L80004570:
/* 5170 80004570 944A0028 */  lhu        $t2, 0x28($v0)
/* 5174 80004574 254B0001 */  addiu      $t3, $t2, 1
/* 5178 80004578 1000000C */  b          .L800045AC
/* 517C 8000457C A44B0028 */   sh        $t3, 0x28($v0)
/* 5180 80004580 960C0002 */  lhu        $t4, 2($s0)
.L80004584:
/* 5184 80004584 3C0F8008 */  lui        $t7, %hi(EnemyData)
/* 5188 80004588 25EFC998 */  addiu      $t7, $t7, %lo(EnemyData)
/* 518C 8000458C 000C68C0 */  sll        $t5, $t4, 3
/* 5190 80004590 01AC6821 */  addu       $t5, $t5, $t4
/* 5194 80004594 000D6880 */  sll        $t5, $t5, 2
/* 5198 80004598 01AC6821 */  addu       $t5, $t5, $t4
/* 519C 8000459C 000D68C0 */  sll        $t5, $t5, 3
/* 51A0 800045A0 25AEFEFC */  addiu      $t6, $t5, -0x104
/* 51A4 800045A4 0C002C44 */  jal        VOID_FUN_8000b110
/* 51A8 800045A8 01CF2021 */   addu      $a0, $t6, $t7
.L800045AC:
/* 51AC 800045AC 24180003 */  addiu      $t8, $zero, 3
/* 51B0 800045B0 A6180000 */  sh         $t8, ($s0)
/* 51B4 800045B4 8FB90030 */  lw         $t9, 0x30($sp)
/* 51B8 800045B8 02002025 */  or         $a0, $s0, $zero
/* 51BC 800045BC 8728007A */  lh         $t0, 0x7a($t9)
/* 51C0 800045C0 A6000002 */  sh         $zero, 2($s0)
/* 51C4 800045C4 2509FFEC */  addiu      $t1, $t0, -0x14
/* 51C8 800045C8 0C001CF3 */  jal        battleFenceSomething
/* 51CC 800045CC A6090004 */   sh        $t1, 4($s0)
/* 51D0 800045D0 A6000002 */  sh         $zero, 2($s0)
/* 51D4 800045D4 0C0074D6 */  jal        VOID_FUN_8001d358
/* 51D8 800045D8 02202025 */   or        $a0, $s1, $zero
.L800045DC:
/* 51DC 800045DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 51E0 800045E0 8FB0001C */  lw         $s0, 0x1c($sp)
/* 51E4 800045E4 8FB10020 */  lw         $s1, 0x20($sp)
/* 51E8 800045E8 03E00008 */  jr         $ra
/* 51EC 800045EC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800045F0
/* 51F0 800045F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 51F4 800045F4 AFB10020 */  sw         $s1, 0x20($sp)
/* 51F8 800045F8 AFB0001C */  sw         $s0, 0x1c($sp)
/* 51FC 800045FC 44800000 */  mtc1       $zero, $f0
/* 5200 80004600 00A08025 */  or         $s0, $a1, $zero
/* 5204 80004604 00808825 */  or         $s1, $a0, $zero
/* 5208 80004608 AFBF0024 */  sw         $ra, 0x24($sp)
/* 520C 8000460C AFA60030 */  sw         $a2, 0x30($sp)
/* 5210 80004610 E6200020 */  swc1       $f0, 0x20($s1)
/* 5214 80004614 E6200018 */  swc1       $f0, 0x18($s1)
/* 5218 80004618 96020120 */  lhu        $v0, 0x120($s0)
/* 521C 8000461C 1040000B */  beqz       $v0, .L8000464C
/* 5220 80004620 244EFFFF */   addiu     $t6, $v0, -1
/* 5224 80004624 31CFFFFF */  andi       $t7, $t6, 0xffff
/* 5228 80004628 15E00032 */  bnez       $t7, .L800046F4
/* 522C 8000462C A60E0120 */   sh        $t6, 0x120($s0)
/* 5230 80004630 02202025 */  or         $a0, $s1, $zero
/* 5234 80004634 9605011E */  lhu        $a1, 0x11e($s0)
/* 5238 80004638 00003025 */  or         $a2, $zero, $zero
/* 523C 8000463C 0C0052A6 */  jal        func_80014A98
/* 5240 80004640 00003825 */   or        $a3, $zero, $zero
/* 5244 80004644 1000002C */  b          .L800046F8
/* 5248 80004648 8FBF0024 */   lw        $ra, 0x24($sp)
.L8000464C:
/* 524C 8000464C 96180004 */  lhu        $t8, 4($s0)
/* 5250 80004650 2719FFFF */  addiu      $t9, $t8, -1
/* 5254 80004654 3328FFFF */  andi       $t0, $t9, 0xffff
/* 5258 80004658 15000026 */  bnez       $t0, .L800046F4
/* 525C 8000465C A6190004 */   sh        $t9, 4($s0)
/* 5260 80004660 0C0056D4 */  jal        VOID_FUN_80015b50
/* 5264 80004664 00000000 */   nop
/* 5268 80004668 10400003 */  beqz       $v0, .L80004678
/* 526C 8000466C 24090008 */   addiu     $t1, $zero, 8
/* 5270 80004670 10000020 */  b          .L800046F4
/* 5274 80004674 A6090004 */   sh        $t1, 4($s0)
.L80004678:
/* 5278 80004678 962A0060 */  lhu        $t2, 0x60($s1)
/* 527C 8000467C 240D0003 */  addiu      $t5, $zero, 3
/* 5280 80004680 02202025 */  or         $a0, $s1, $zero
/* 5284 80004684 314BFFFE */  andi       $t3, $t2, 0xfffe
/* 5288 80004688 A62B0060 */  sh         $t3, 0x60($s1)
/* 528C 8000468C 96020008 */  lhu        $v0, 8($s0)
/* 5290 80004690 24050018 */  addiu      $a1, $zero, 0x18
/* 5294 80004694 24060001 */  addiu      $a2, $zero, 1
/* 5298 80004698 304C0004 */  andi       $t4, $v0, 4
/* 529C 8000469C 1180000F */  beqz       $t4, .L800046DC
/* 52A0 800046A0 3058FFFB */   andi      $t8, $v0, 0xfffb
/* 52A4 800046A4 A60D0000 */  sh         $t5, ($s0)
/* 52A8 800046A8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 52AC 800046AC 3C078008 */  lui        $a3, 0x8008
/* 52B0 800046B0 24190001 */  addiu      $t9, $zero, 1
/* 52B4 800046B4 85CF0122 */  lh         $t7, 0x122($t6)
/* 52B8 800046B8 A6180008 */  sh         $t8, 8($s0)
/* 52BC 800046BC 24080001 */  addiu      $t0, $zero, 1
/* 52C0 800046C0 A60F0004 */  sh         $t7, 4($s0)
/* 52C4 800046C4 AFA80014 */  sw         $t0, 0x14($sp)
/* 52C8 800046C8 AFB90010 */  sw         $t9, 0x10($sp)
/* 52CC 800046CC 0C00762C */  jal        updateAnim
/* 52D0 800046D0 8CE7BC2C */   lw        $a3, -0x43d4($a3)
/* 52D4 800046D4 10000002 */  b          .L800046E0
/* 52D8 800046D8 00000000 */   nop
.L800046DC:
/* 52DC 800046DC A6000000 */  sh         $zero, ($s0)
.L800046E0:
/* 52E0 800046E0 0C001CF3 */  jal        battleFenceSomething
/* 52E4 800046E4 02002025 */   or        $a0, $s0, $zero
/* 52E8 800046E8 A6000002 */  sh         $zero, 2($s0)
/* 52EC 800046EC 0C0074D6 */  jal        VOID_FUN_8001d358
/* 52F0 800046F0 02202025 */   or        $a0, $s1, $zero
.L800046F4:
/* 52F4 800046F4 8FBF0024 */  lw         $ra, 0x24($sp)
.L800046F8:
/* 52F8 800046F8 8FB0001C */  lw         $s0, 0x1c($sp)
/* 52FC 800046FC 8FB10020 */  lw         $s1, 0x20($sp)
/* 5300 80004700 03E00008 */  jr         $ra
/* 5304 80004704 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80004708
/* 5308 80004708 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 530C 8000470C AFB10020 */  sw         $s1, 0x20($sp)
/* 5310 80004710 AFB0001C */  sw         $s0, 0x1c($sp)
/* 5314 80004714 3C018007 */  lui        $at, %hi(D_80070F60)
/* 5318 80004718 44807000 */  mtc1       $zero, $f14
/* 531C 8000471C D4300F60 */  ldc1       $f16, %lo(D_80070F60)($at)
/* 5320 80004720 00808025 */  or         $s0, $a0, $zero
/* 5324 80004724 00A08825 */  or         $s1, $a1, $zero
/* 5328 80004728 AFBF0024 */  sw         $ra, 0x24($sp)
/* 532C 8000472C AFA60030 */  sw         $a2, 0x30($sp)
/* 5330 80004730 E60E0020 */  swc1       $f14, 0x20($s0)
/* 5334 80004734 E60E0018 */  swc1       $f14, 0x18($s0)
/* 5338 80004738 C6260128 */  lwc1       $f6, 0x128($s1)
/* 533C 8000473C C6040000 */  lwc1       $f4, ($s0)
/* 5340 80004740 C60A0008 */  lwc1       $f10, 8($s0)
/* 5344 80004744 C60C0010 */  lwc1       $f12, 0x10($s0)
/* 5348 80004748 46062200 */  add.s      $f8, $f4, $f6
/* 534C 8000474C 3C018007 */  lui        $at, 0x8007
/* 5350 80004750 2419000A */  addiu      $t9, $zero, 0xa
/* 5354 80004754 24080050 */  addiu      $t0, $zero, 0x50
/* 5358 80004758 E6080000 */  swc1       $f8, ($s0)
/* 535C 8000475C C632012C */  lwc1       $f18, 0x12c($s1)
/* 5360 80004760 02002025 */  or         $a0, $s0, $zero
/* 5364 80004764 24060001 */  addiu      $a2, $zero, 1
/* 5368 80004768 46125100 */  add.s      $f4, $f10, $f18
/* 536C 8000476C 3C078008 */  lui        $a3, 0x8008
/* 5370 80004770 24090001 */  addiu      $t1, $zero, 1
/* 5374 80004774 240A0001 */  addiu      $t2, $zero, 1
/* 5378 80004778 E6040008 */  swc1       $f4, 8($s0)
/* 537C 8000477C C6260130 */  lwc1       $f6, 0x130($s1)
/* 5380 80004780 460C3081 */  sub.s      $f2, $f6, $f12
/* 5384 80004784 46001021 */  cvt.d.s    $f0, $f2
/* 5388 80004788 4620803C */  c.lt.d     $f16, $f0
/* 538C 8000478C 00000000 */  nop
/* 5390 80004790 45000007 */  bc1f       .L800047B0
/* 5394 80004794 00000000 */   nop
/* 5398 80004798 3C018007 */  lui        $at, %hi(D_80070F68)
/* 539C 8000479C D42E0F68 */  ldc1       $f14, %lo(D_80070F68)($at)
/* 53A0 800047A0 462E0201 */  sub.d      $f8, $f0, $f14
/* 53A4 800047A4 462040A0 */  cvt.s.d    $f2, $f8
/* 53A8 800047A8 1000000B */  b          .L800047D8
/* 53AC 800047AC 46001021 */   cvt.d.s   $f0, $f2
.L800047B0:
/* 53B0 800047B0 D42A0F70 */  ldc1       $f10, 0xf70($at)
/* 53B4 800047B4 3C018007 */  lui        $at, %hi(D_80070F78)
/* 53B8 800047B8 462A003C */  c.lt.d     $f0, $f10
/* 53BC 800047BC 00000000 */  nop
/* 53C0 800047C0 45000005 */  bc1f       .L800047D8
/* 53C4 800047C4 00000000 */   nop
/* 53C8 800047C8 D42E0F78 */  ldc1       $f14, %lo(D_80070F78)($at)
/* 53CC 800047CC 462E0480 */  add.d      $f18, $f0, $f14
/* 53D0 800047D0 462090A0 */  cvt.s.d    $f2, $f18
/* 53D4 800047D4 46001021 */  cvt.d.s    $f0, $f2
.L800047D8:
/* 53D8 800047D8 3C018007 */  lui        $at, %hi(D_80070F80)
/* 53DC 800047DC D42E0F80 */  ldc1       $f14, %lo(D_80070F80)($at)
/* 53E0 800047E0 3C018007 */  lui        $at, %hi(D_80070F88)
/* 53E4 800047E4 D4260F88 */  ldc1       $f6, %lo(D_80070F88)($at)
/* 53E8 800047E8 46006121 */  cvt.d.s    $f4, $f12
/* 53EC 800047EC 3C018007 */  lui        $at, 0x8007
/* 53F0 800047F0 46260202 */  mul.d      $f8, $f0, $f6
/* 53F4 800047F4 46282280 */  add.d      $f10, $f4, $f8
/* 53F8 800047F8 462054A0 */  cvt.s.d    $f18, $f10
/* 53FC 800047FC E6120010 */  swc1       $f18, 0x10($s0)
/* 5400 80004800 C6060010 */  lwc1       $f6, 0x10($s0)
/* 5404 80004804 460030A1 */  cvt.d.s    $f2, $f6
/* 5408 80004808 4622803C */  c.lt.d     $f16, $f2
/* 540C 8000480C 00000000 */  nop
/* 5410 80004810 45000005 */  bc1f       .L80004828
/* 5414 80004814 00000000 */   nop
/* 5418 80004818 462E1101 */  sub.d      $f4, $f2, $f14
/* 541C 8000481C 46202220 */  cvt.s.d    $f8, $f4
/* 5420 80004820 10000009 */  b          .L80004848
/* 5424 80004824 E6080010 */   swc1      $f8, 0x10($s0)
.L80004828:
/* 5428 80004828 D42A0F90 */  ldc1       $f10, 0xf90($at)
/* 542C 8000482C 462A103C */  c.lt.d     $f2, $f10
/* 5430 80004830 00000000 */  nop
/* 5434 80004834 45020005 */  bc1fl      .L8000484C
/* 5438 80004838 962E0004 */   lhu       $t6, 4($s1)
/* 543C 8000483C 462E1480 */  add.d      $f18, $f2, $f14
/* 5440 80004840 462091A0 */  cvt.s.d    $f6, $f18
/* 5444 80004844 E6060010 */  swc1       $f6, 0x10($s0)
.L80004848:
/* 5448 80004848 962E0004 */  lhu        $t6, 4($s1)
.L8000484C:
/* 544C 8000484C 25CFFFFF */  addiu      $t7, $t6, -1
/* 5450 80004850 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 5454 80004854 17000019 */  bnez       $t8, .L800048BC
/* 5458 80004858 A62F0004 */   sh        $t7, 4($s1)
/* 545C 8000485C A6390000 */  sh         $t9, ($s1)
/* 5460 80004860 A6280004 */  sh         $t0, 4($s1)
/* 5464 80004864 96250006 */  lhu        $a1, 6($s1)
/* 5468 80004868 AFAA0014 */  sw         $t2, 0x14($sp)
/* 546C 8000486C AFA90010 */  sw         $t1, 0x10($sp)
/* 5470 80004870 0C00762C */  jal        updateAnim
/* 5474 80004874 8CE7BC2C */   lw        $a3, -0x43d4($a3)
/* 5478 80004878 0C0019C8 */  jal        loadBrianAnim
/* 547C 8000487C 02002025 */   or        $a0, $s0, $zero
/* 5480 80004880 860B0052 */  lh         $t3, 0x52($s0)
/* 5484 80004884 8FAD0030 */  lw         $t5, 0x30($sp)
/* 5488 80004888 02002025 */  or         $a0, $s0, $zero
/* 548C 8000488C 000B6080 */  sll        $t4, $t3, 2
/* 5490 80004890 018B6023 */  subu       $t4, $t4, $t3
/* 5494 80004894 000C6080 */  sll        $t4, $t4, 2
/* 5498 80004898 8E060024 */  lw         $a2, 0x24($s0)
/* 549C 8000489C 0C007649 */  jal        func_8001D924
/* 54A0 800048A0 018D2821 */   addu      $a1, $t4, $t5
/* 54A4 800048A4 C6240134 */  lwc1       $f4, 0x134($s1)
/* 54A8 800048A8 2404001A */  addiu      $a0, $zero, 0x1a
/* 54AC 800048AC 24050008 */  addiu      $a1, $zero, 8
/* 54B0 800048B0 240600FF */  addiu      $a2, $zero, 0xff
/* 54B4 800048B4 0C009A35 */  jal        func_800268D4
/* 54B8 800048B8 E6040010 */   swc1      $f4, 0x10($s0)
.L800048BC:
/* 54BC 800048BC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 54C0 800048C0 8FB0001C */  lw         $s0, 0x1c($sp)
/* 54C4 800048C4 8FB10020 */  lw         $s1, 0x20($sp)
/* 54C8 800048C8 03E00008 */  jr         $ra
/* 54CC 800048CC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800048D0
/* 54D0 800048D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 54D4 800048D4 AFB00018 */  sw         $s0, 0x18($sp)
/* 54D8 800048D8 00A08025 */  or         $s0, $a1, $zero
/* 54DC 800048DC AFBF001C */  sw         $ra, 0x1c($sp)
/* 54E0 800048E0 AFA60028 */  sw         $a2, 0x28($sp)
/* 54E4 800048E4 00803825 */  or         $a3, $a0, $zero
/* 54E8 800048E8 3C068008 */  lui        $a2, %hi(UNK_somethingToDoWithAnimation)
/* 54EC 800048EC 24C6BC30 */  addiu      $a2, $a2, %lo(UNK_somethingToDoWithAnimation)
/* 54F0 800048F0 00E02025 */  or         $a0, $a3, $zero
/* 54F4 800048F4 8FA50028 */  lw         $a1, 0x28($sp)
/* 54F8 800048F8 0C0015B4 */  jal        func_800056D0
/* 54FC 800048FC AFA70020 */   sw        $a3, 0x20($sp)
/* 5500 80004900 3C028008 */  lui        $v0, %hi(UNK_somethingToDoWithAnimation)
/* 5504 80004904 2442BC30 */  addiu      $v0, $v0, %lo(UNK_somethingToDoWithAnimation)
/* 5508 80004908 8FA50020 */  lw         $a1, 0x20($sp)
/* 550C 8000490C C4440000 */  lwc1       $f4, ($v0)
/* 5510 80004910 24040A00 */  addiu      $a0, $zero, 0xa00
/* 5514 80004914 02003025 */  or         $a2, $s0, $zero
/* 5518 80004918 E4A40018 */  swc1       $f4, 0x18($a1)
/* 551C 8000491C C4460004 */  lwc1       $f6, 4($v0)
/* 5520 80004920 0C0015D2 */  jal        func_80005748
/* 5524 80004924 E4A60020 */   swc1      $f6, 0x20($a1)
/* 5528 80004928 960E0004 */  lhu        $t6, 4($s0)
/* 552C 8000492C 8FA70020 */  lw         $a3, 0x20($sp)
/* 5530 80004930 25CFFFFF */  addiu      $t7, $t6, -1
/* 5534 80004934 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 5538 80004938 17000007 */  bnez       $t8, .L80004958
/* 553C 8000493C A60F0004 */   sh        $t7, 4($s0)
/* 5540 80004940 A6000000 */  sh         $zero, ($s0)
/* 5544 80004944 94F90060 */  lhu        $t9, 0x60($a3)
/* 5548 80004948 3328FFFE */  andi       $t0, $t9, 0xfffe
/* 554C 8000494C A4E80060 */  sh         $t0, 0x60($a3)
/* 5550 80004950 C6080134 */  lwc1       $f8, 0x134($s0)
/* 5554 80004954 E4E80010 */  swc1       $f8, 0x10($a3)
.L80004958:
/* 5558 80004958 8FBF001C */  lw         $ra, 0x1c($sp)
/* 555C 8000495C 8FB00018 */  lw         $s0, 0x18($sp)
/* 5560 80004960 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5564 80004964 03E00008 */  jr         $ra
/* 5568 80004968 00000000 */   nop

glabel UNK_calledWhenOpeningChest(RENAME)
/* 556C 8000496C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5570 80004970 AFB10020 */  sw         $s1, 0x20($sp)
/* 5574 80004974 AFB0001C */  sw         $s0, 0x1c($sp)
/* 5578 80004978 00A08025 */  or         $s0, $a1, $zero
/* 557C 8000497C 00808825 */  or         $s1, $a0, $zero
/* 5580 80004980 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5584 80004984 00C03825 */  or         $a3, $a2, $zero
/* 5588 80004988 960E0004 */  lhu        $t6, 4($s0)
/* 558C 8000498C 02202025 */  or         $a0, $s1, $zero
/* 5590 80004990 00E02825 */  or         $a1, $a3, $zero
/* 5594 80004994 11C00034 */  beqz       $t6, .L80004A68
/* 5598 80004998 3C0B8009 */   lui       $t3, 0x8009
/* 559C 8000499C 3C068008 */  lui        $a2, %hi(UNK_somethingToDoWithAnimation)
/* 55A0 800049A0 0C0015B4 */  jal        func_800056D0
/* 55A4 800049A4 24C6BC30 */   addiu     $a2, $a2, %lo(UNK_somethingToDoWithAnimation)
/* 55A8 800049A8 3C028008 */  lui        $v0, %hi(UNK_somethingToDoWithAnimation)
/* 55AC 800049AC 2442BC30 */  addiu      $v0, $v0, %lo(UNK_somethingToDoWithAnimation)
/* 55B0 800049B0 C4440000 */  lwc1       $f4, ($v0)
/* 55B4 800049B4 24040A00 */  addiu      $a0, $zero, 0xa00
/* 55B8 800049B8 02202825 */  or         $a1, $s1, $zero
/* 55BC 800049BC E6240018 */  swc1       $f4, 0x18($s1)
/* 55C0 800049C0 C4460004 */  lwc1       $f6, 4($v0)
/* 55C4 800049C4 02003025 */  or         $a2, $s0, $zero
/* 55C8 800049C8 0C0015D2 */  jal        func_80005748
/* 55CC 800049CC E6260020 */   swc1      $f6, 0x20($s1)
/* 55D0 800049D0 96020004 */  lhu        $v0, 4($s0)
/* 55D4 800049D4 24010020 */  addiu      $at, $zero, 0x20
/* 55D8 800049D8 54410012 */  bnel       $v0, $at, .L80004A24
/* 55DC 800049DC 2459FFFF */   addiu     $t9, $v0, -1
/* 55E0 800049E0 0C004830 */  jal        func_800120C0
/* 55E4 800049E4 92040118 */   lbu       $a0, 0x118($s0)
/* 55E8 800049E8 0C00B9DA */  jal        UNK_calledWhenWritingToTextbox
/* 55EC 800049EC 24040001 */   addiu     $a0, $zero, 1
/* 55F0 800049F0 0C0084A8 */  jal        addItemToEmptySlot
/* 55F4 800049F4 92040118 */   lbu       $a0, 0x118($s0)
/* 55F8 800049F8 3C028008 */  lui        $v0, %hi(HUDState)
/* 55FC 800049FC 2442B2E4 */  addiu      $v0, $v0, %lo(HUDState)
/* 5600 80004A00 8C4F0000 */  lw         $t7, ($v0)
/* 5604 80004A04 00002025 */  or         $a0, $zero, $zero
/* 5608 80004A08 2405003B */  addiu      $a1, $zero, 0x3b
/* 560C 80004A0C 35F80002 */  ori        $t8, $t7, 2
/* 5610 80004A10 AC580000 */  sw         $t8, ($v0)
/* 5614 80004A14 0C009A35 */  jal        func_800268D4
/* 5618 80004A18 240600FF */   addiu     $a2, $zero, 0xff
/* 561C 80004A1C 96020004 */  lhu        $v0, 4($s0)
/* 5620 80004A20 2459FFFF */  addiu      $t9, $v0, -1
.L80004A24:
/* 5624 80004A24 3328FFFF */  andi       $t0, $t9, 0xffff
/* 5628 80004A28 1500001E */  bnez       $t0, .L80004AA4
/* 562C 80004A2C A6190004 */   sh        $t9, 4($s0)
/* 5630 80004A30 C6080134 */  lwc1       $f8, 0x134($s0)
/* 5634 80004A34 3C058008 */  lui        $a1, %hi(tempCurrAnim)
/* 5638 80004A38 24090001 */  addiu      $t1, $zero, 1
/* 563C 80004A3C E6280010 */  swc1       $f8, 0x10($s1)
/* 5640 80004A40 8CA5BC2C */  lw         $a1, %lo(tempCurrAnim)($a1)
/* 5644 80004A44 240A0001 */  addiu      $t2, $zero, 1
/* 5648 80004A48 AFAA0014 */  sw         $t2, 0x14($sp)
/* 564C 80004A4C AFA90010 */  sw         $t1, 0x10($sp)
/* 5650 80004A50 02202025 */  or         $a0, $s1, $zero
/* 5654 80004A54 24060001 */  addiu      $a2, $zero, 1
/* 5658 80004A58 0C00762C */  jal        updateAnim
/* 565C 80004A5C 00A03825 */   or        $a3, $a1, $zero
/* 5660 80004A60 10000011 */  b          .L80004AA8
/* 5664 80004A64 8FBF0024 */   lw        $ra, 0x24($sp)
.L80004A68:
/* 5668 80004A68 8D6B05C0 */  lw         $t3, 0x5c0($t3)
/* 566C 80004A6C 5560000E */  bnel       $t3, $zero, .L80004AA8
/* 5670 80004A70 8FBF0024 */   lw        $ra, 0x24($sp)
/* 5674 80004A74 A6000000 */  sh         $zero, ($s0)
/* 5678 80004A78 962C0060 */  lhu        $t4, 0x60($s1)
/* 567C 80004A7C 3C028008 */  lui        $v0, %hi(HUDState)
/* 5680 80004A80 2442B2E4 */  addiu      $v0, $v0, %lo(HUDState)
/* 5684 80004A84 318DFFFE */  andi       $t5, $t4, 0xfffe
/* 5688 80004A88 A62D0060 */  sh         $t5, 0x60($s1)
/* 568C 80004A8C 8C4E0000 */  lw         $t6, ($v0)
/* 5690 80004A90 2401FFFD */  addiu      $at, $zero, -3
/* 5694 80004A94 01C17824 */  and        $t7, $t6, $at
/* 5698 80004A98 AC4F0000 */  sw         $t7, ($v0)
/* 569C 80004A9C 3C018008 */  lui        $at, %hi(npcNum)
/* 56A0 80004AA0 AC20BA74 */  sw         $zero, %lo(npcNum)($at)
.L80004AA4:
/* 56A4 80004AA4 8FBF0024 */  lw         $ra, 0x24($sp)
.L80004AA8:
/* 56A8 80004AA8 8FB0001C */  lw         $s0, 0x1c($sp)
/* 56AC 80004AAC 8FB10020 */  lw         $s1, 0x20($sp)
/* 56B0 80004AB0 03E00008 */  jr         $ra
/* 56B4 80004AB4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80004AB8
/* 56B8 80004AB8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 56BC 80004ABC AFB00020 */  sw         $s0, 0x20($sp)
/* 56C0 80004AC0 00A08025 */  or         $s0, $a1, $zero
/* 56C4 80004AC4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 56C8 80004AC8 AFA40028 */  sw         $a0, 0x28($sp)
/* 56CC 80004ACC AFA60030 */  sw         $a2, 0x30($sp)
/* 56D0 80004AD0 960E0004 */  lhu        $t6, 4($s0)
/* 56D4 80004AD4 25CFFFFF */  addiu      $t7, $t6, -1
/* 56D8 80004AD8 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 56DC 80004ADC 1700001B */  bnez       $t8, .L80004B4C
/* 56E0 80004AE0 A60F0004 */   sh        $t7, 4($s0)
/* 56E4 80004AE4 92040118 */  lbu        $a0, 0x118($s0)
/* 56E8 80004AE8 0C0084F6 */  jal        func_800213D8
/* 56EC 80004AEC 8FA50028 */   lw        $a1, 0x28($sp)
/* 56F0 80004AF0 92190118 */  lbu        $t9, 0x118($s0)
/* 56F4 80004AF4 3C09803B */  lui        $t1, 0x803b
/* 56F8 80004AF8 24010002 */  addiu      $at, $zero, 2
/* 56FC 80004AFC 00194080 */  sll        $t0, $t9, 2
/* 5700 80004B00 01194023 */  subu       $t0, $t0, $t9
/* 5704 80004B04 00084080 */  sll        $t0, $t0, 2
/* 5708 80004B08 01284821 */  addu       $t1, $t1, $t0
/* 570C 80004B0C 952991F2 */  lhu        $t1, -0x6e0e($t1)
/* 5710 80004B10 240A000F */  addiu      $t2, $zero, 0xf
/* 5714 80004B14 02002025 */  or         $a0, $s0, $zero
/* 5718 80004B18 15210008 */  bne        $t1, $at, .L80004B3C
/* 571C 80004B1C 00000000 */   nop
/* 5720 80004B20 0C001CF3 */  jal        battleFenceSomething
/* 5724 80004B24 02002025 */   or        $a0, $s0, $zero
/* 5728 80004B28 A6000002 */  sh         $zero, 2($s0)
/* 572C 80004B2C 0C0074D6 */  jal        VOID_FUN_8001d358
/* 5730 80004B30 8FA40028 */   lw        $a0, 0x28($sp)
/* 5734 80004B34 10000022 */  b          .L80004BC0
/* 5738 80004B38 8FBF0024 */   lw        $ra, 0x24($sp)
.L80004B3C:
/* 573C 80004B3C 0C001CF3 */  jal        battleFenceSomething
/* 5740 80004B40 A60A0120 */   sh        $t2, 0x120($s0)
/* 5744 80004B44 1000001E */  b          .L80004BC0
/* 5748 80004B48 8FBF0024 */   lw        $ra, 0x24($sp)
.L80004B4C:
/* 574C 80004B4C 960B0120 */  lhu        $t3, 0x120($s0)
/* 5750 80004B50 256CFFFF */  addiu      $t4, $t3, -1
/* 5754 80004B54 318DFFFF */  andi       $t5, $t4, 0xffff
/* 5758 80004B58 15A00018 */  bnez       $t5, .L80004BBC
/* 575C 80004B5C A60C0120 */   sh        $t4, 0x120($s0)
/* 5760 80004B60 0C0056D4 */  jal        VOID_FUN_80015b50
/* 5764 80004B64 00000000 */   nop
/* 5768 80004B68 10400004 */  beqz       $v0, .L80004B7C
/* 576C 80004B6C 240F0003 */   addiu     $t7, $zero, 3
/* 5770 80004B70 240E0008 */  addiu      $t6, $zero, 8
/* 5774 80004B74 10000011 */  b          .L80004BBC
/* 5778 80004B78 A60E0120 */   sh        $t6, 0x120($s0)
.L80004B7C:
/* 577C 80004B7C 2418000F */  addiu      $t8, $zero, 0xf
/* 5780 80004B80 A60F0000 */  sh         $t7, ($s0)
/* 5784 80004B84 A6180004 */  sh         $t8, 4($s0)
/* 5788 80004B88 3C078008 */  lui        $a3, %hi(tempCurrAnim)
/* 578C 80004B8C 24190001 */  addiu      $t9, $zero, 1
/* 5790 80004B90 24080001 */  addiu      $t0, $zero, 1
/* 5794 80004B94 AFA80014 */  sw         $t0, 0x14($sp)
/* 5798 80004B98 AFB90010 */  sw         $t9, 0x10($sp)
/* 579C 80004B9C 8CE7BC2C */  lw         $a3, %lo(tempCurrAnim)($a3)
/* 57A0 80004BA0 8FA40028 */  lw         $a0, 0x28($sp)
/* 57A4 80004BA4 24050018 */  addiu      $a1, $zero, 0x18
/* 57A8 80004BA8 0C00762C */  jal        updateAnim
/* 57AC 80004BAC 24060001 */   addiu     $a2, $zero, 1
/* 57B0 80004BB0 A6000002 */  sh         $zero, 2($s0)
/* 57B4 80004BB4 0C0074D6 */  jal        VOID_FUN_8001d358
/* 57B8 80004BB8 8FA40028 */   lw        $a0, 0x28($sp)
.L80004BBC:
/* 57BC 80004BBC 8FBF0024 */  lw         $ra, 0x24($sp)
.L80004BC0:
/* 57C0 80004BC0 8FB00020 */  lw         $s0, 0x20($sp)
/* 57C4 80004BC4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 57C8 80004BC8 03E00008 */  jr         $ra
/* 57CC 80004BCC 00000000 */   nop

glabel func_80004BD0
/* 57D0 80004BD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 57D4 80004BD4 AFB00018 */  sw         $s0, 0x18($sp)
/* 57D8 80004BD8 44800000 */  mtc1       $zero, $f0
/* 57DC 80004BDC 00A08025 */  or         $s0, $a1, $zero
/* 57E0 80004BE0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 57E4 80004BE4 AFA60028 */  sw         $a2, 0x28($sp)
/* 57E8 80004BE8 00803825 */  or         $a3, $a0, $zero
/* 57EC 80004BEC E4E00020 */  swc1       $f0, 0x20($a3)
/* 57F0 80004BF0 E4E00018 */  swc1       $f0, 0x18($a3)
/* 57F4 80004BF4 960E0004 */  lhu        $t6, 4($s0)
/* 57F8 80004BF8 3C048008 */  lui        $a0, 0x8008
/* 57FC 80004BFC 29C10026 */  slti       $at, $t6, 0x26
/* 5800 80004C00 50200039 */  beql       $at, $zero, .L80004CE8
/* 5804 80004C04 960F0004 */   lhu       $t7, 4($s0)
/* 5808 80004C08 C4EC0010 */  lwc1       $f12, 0x10($a3)
/* 580C 80004C0C C6040130 */  lwc1       $f4, 0x130($s0)
/* 5810 80004C10 3C018007 */  lui        $at, %hi(D_80070F98)
/* 5814 80004C14 D42E0F98 */  ldc1       $f14, %lo(D_80070F98)($at)
/* 5818 80004C18 460C2081 */  sub.s      $f2, $f4, $f12
/* 581C 80004C1C 3C018007 */  lui        $at, 0x8007
/* 5820 80004C20 46001021 */  cvt.d.s    $f0, $f2
/* 5824 80004C24 462E003C */  c.lt.d     $f0, $f14
/* 5828 80004C28 00000000 */  nop
/* 582C 80004C2C 45000007 */  bc1f       .L80004C4C
/* 5830 80004C30 00000000 */   nop
/* 5834 80004C34 3C018007 */  lui        $at, %hi(D_80070FA0)
/* 5838 80004C38 D4300FA0 */  ldc1       $f16, %lo(D_80070FA0)($at)
/* 583C 80004C3C 46300180 */  add.d      $f6, $f0, $f16
/* 5840 80004C40 462030A0 */  cvt.s.d    $f2, $f6
/* 5844 80004C44 1000000B */  b          .L80004C74
/* 5848 80004C48 46001021 */   cvt.d.s   $f0, $f2
.L80004C4C:
/* 584C 80004C4C D4280FA8 */  ldc1       $f8, 0xfa8($at)
/* 5850 80004C50 3C018007 */  lui        $at, %hi(D_80070FB0)
/* 5854 80004C54 4620403C */  c.lt.d     $f8, $f0
/* 5858 80004C58 00000000 */  nop
/* 585C 80004C5C 45000005 */  bc1f       .L80004C74
/* 5860 80004C60 00000000 */   nop
/* 5864 80004C64 D4300FB0 */  ldc1       $f16, %lo(D_80070FB0)($at)
/* 5868 80004C68 46300281 */  sub.d      $f10, $f0, $f16
/* 586C 80004C6C 462050A0 */  cvt.s.d    $f2, $f10
/* 5870 80004C70 46001021 */  cvt.d.s    $f0, $f2
.L80004C74:
/* 5874 80004C74 3C018007 */  lui        $at, %hi(D_80070FB8)
/* 5878 80004C78 D4300FB8 */  ldc1       $f16, %lo(D_80070FB8)($at)
/* 587C 80004C7C 3C018007 */  lui        $at, %hi(D_80070FC0)
/* 5880 80004C80 D4240FC0 */  ldc1       $f4, %lo(D_80070FC0)($at)
/* 5884 80004C84 460064A1 */  cvt.d.s    $f18, $f12
/* 5888 80004C88 3C018007 */  lui        $at, 0x8007
/* 588C 80004C8C 46240182 */  mul.d      $f6, $f0, $f4
/* 5890 80004C90 46269200 */  add.d      $f8, $f18, $f6
/* 5894 80004C94 462042A0 */  cvt.s.d    $f10, $f8
/* 5898 80004C98 E4EA0010 */  swc1       $f10, 0x10($a3)
/* 589C 80004C9C C4E40010 */  lwc1       $f4, 0x10($a3)
/* 58A0 80004CA0 460020A1 */  cvt.d.s    $f2, $f4
/* 58A4 80004CA4 462E103C */  c.lt.d     $f2, $f14
/* 58A8 80004CA8 00000000 */  nop
/* 58AC 80004CAC 45000005 */  bc1f       .L80004CC4
/* 58B0 80004CB0 00000000 */   nop
/* 58B4 80004CB4 46301480 */  add.d      $f18, $f2, $f16
/* 58B8 80004CB8 462091A0 */  cvt.s.d    $f6, $f18
/* 58BC 80004CBC 10000009 */  b          .L80004CE4
/* 58C0 80004CC0 E4E60010 */   swc1      $f6, 0x10($a3)
.L80004CC4:
/* 58C4 80004CC4 D4280FC8 */  ldc1       $f8, 0xfc8($at)
/* 58C8 80004CC8 4622403C */  c.lt.d     $f8, $f2
/* 58CC 80004CCC 00000000 */  nop
/* 58D0 80004CD0 45020005 */  bc1fl      .L80004CE8
/* 58D4 80004CD4 960F0004 */   lhu       $t7, 4($s0)
/* 58D8 80004CD8 46301281 */  sub.d      $f10, $f2, $f16
/* 58DC 80004CDC 46205120 */  cvt.s.d    $f4, $f10
/* 58E0 80004CE0 E4E40010 */  swc1       $f4, 0x10($a3)
.L80004CE4:
/* 58E4 80004CE4 960F0004 */  lhu        $t7, 4($s0)
.L80004CE8:
/* 58E8 80004CE8 25F8FFFF */  addiu      $t8, $t7, -1
/* 58EC 80004CEC 3319FFFF */  andi       $t9, $t8, 0xffff
/* 58F0 80004CF0 1720000A */  bnez       $t9, .L80004D1C
/* 58F4 80004CF4 A6180004 */   sh        $t8, 4($s0)
/* 58F8 80004CF8 A6000000 */  sh         $zero, ($s0)
/* 58FC 80004CFC 94E80060 */  lhu        $t0, 0x60($a3)
/* 5900 80004D00 3C058008 */  lui        $a1, %hi(nextSubmap)
/* 5904 80004D04 2406001E */  addiu      $a2, $zero, 0x1e
/* 5908 80004D08 3109FFFC */  andi       $t1, $t0, 0xfffc
/* 590C 80004D0C A4E90060 */  sh         $t1, 0x60($a3)
/* 5910 80004D10 8CA54EE8 */  lw         $a1, %lo(nextSubmap)($a1)
/* 5914 80004D14 0C009A13 */  jal        updateBGMOnMapTransition
/* 5918 80004D18 8C844EE4 */   lw        $a0, 0x4ee4($a0)
.L80004D1C:
/* 591C 80004D1C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5920 80004D20 8FB00018 */  lw         $s0, 0x18($sp)
/* 5924 80004D24 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5928 80004D28 03E00008 */  jr         $ra
/* 592C 80004D2C 00000000 */   nop

glabel func_80004D30
/* 5930 80004D30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5934 80004D34 44800000 */  mtc1       $zero, $f0
/* 5938 80004D38 AFBF001C */  sw         $ra, 0x1c($sp)
/* 593C 80004D3C E7AC0020 */  swc1       $f12, 0x20($sp)
/* 5940 80004D40 00C02025 */  or         $a0, $a2, $zero
/* 5944 80004D44 E4800020 */  swc1       $f0, 0x20($a0)
/* 5948 80004D48 E4800018 */  swc1       $f0, 0x18($a0)
/* 594C 80004D4C C7A40020 */  lwc1       $f4, 0x20($sp)
/* 5950 80004D50 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 5954 80004D54 46002032 */  c.eq.s     $f4, $f0
/* 5958 80004D58 00000000 */  nop
/* 595C 80004D5C 45000005 */  bc1f       .L80004D74
/* 5960 80004D60 00000000 */   nop
/* 5964 80004D64 46007032 */  c.eq.s     $f14, $f0
/* 5968 80004D68 3C058008 */  lui        $a1, 0x8008
/* 596C 80004D6C 45010029 */  bc1t       .L80004E14
/* 5970 80004D70 00000000 */   nop
.L80004D74:
/* 5974 80004D74 46063202 */  mul.s      $f8, $f6, $f6
/* 5978 80004D78 AFA7002C */  sw         $a3, 0x2c($sp)
/* 597C 80004D7C 460E7282 */  mul.s      $f10, $f14, $f14
/* 5980 80004D80 0C00D3D8 */  jal        _nsqrtf
/* 5984 80004D84 460A4300 */   add.s     $f12, $f8, $f10
/* 5988 80004D88 3C018007 */  lui        $at, %hi(D_80070FD0)
/* 598C 80004D8C D4320FD0 */  ldc1       $f18, %lo(D_80070FD0)($at)
/* 5990 80004D90 46000421 */  cvt.d.s    $f16, $f0
/* 5994 80004D94 3C014000 */  lui        $at, 0x4000
/* 5998 80004D98 46328102 */  mul.d      $f4, $f16, $f18
/* 599C 80004D9C 44813800 */  mtc1       $at, $f7
/* 59A0 80004DA0 44803000 */  mtc1       $zero, $f6
/* 59A4 80004DA4 44805000 */  mtc1       $zero, $f10
/* 59A8 80004DA8 8FA7002C */  lw         $a3, 0x2c($sp)
/* 59AC 80004DAC 3C014000 */  lui        $at, 0x4000
/* 59B0 80004DB0 240E0002 */  addiu      $t6, $zero, 2
/* 59B4 80004DB4 240F001E */  addiu      $t7, $zero, 0x1e
/* 59B8 80004DB8 46202320 */  cvt.s.d    $f12, $f4
/* 59BC 80004DBC 24180001 */  addiu      $t8, $zero, 1
/* 59C0 80004DC0 46006221 */  cvt.d.s    $f8, $f12
/* 59C4 80004DC4 4628303C */  c.lt.d     $f6, $f8
/* 59C8 80004DC8 00000000 */  nop
/* 59CC 80004DCC 45020004 */  bc1fl      .L80004DE0
/* 59D0 80004DD0 3C013FF8 */   lui       $at, 0x3ff8
/* 59D4 80004DD4 44816000 */  mtc1       $at, $f12
/* 59D8 80004DD8 00000000 */  nop
/* 59DC 80004DDC 3C013FF8 */  lui        $at, 0x3ff8
.L80004DE0:
/* 59E0 80004DE0 44815800 */  mtc1       $at, $f11
/* 59E4 80004DE4 46006421 */  cvt.d.s    $f16, $f12
/* 59E8 80004DE8 3C018008 */  lui        $at, 0x8008
/* 59EC 80004DEC 4630503C */  c.lt.d     $f10, $f16
/* 59F0 80004DF0 00000000 */  nop
/* 59F4 80004DF4 45000005 */  bc1f       .L80004E0C
/* 59F8 80004DF8 00000000 */   nop
/* 59FC 80004DFC A4EE0000 */  sh         $t6, ($a3)
/* 5A00 80004E00 A4EF0004 */  sh         $t7, 4($a3)
/* 5A04 80004E04 10000010 */  b          .L80004E48
/* 5A08 80004E08 A420BC28 */   sh        $zero, -0x43d8($at)
.L80004E0C:
/* 5A0C 80004E0C 1000000E */  b          .L80004E48
/* 5A10 80004E10 A4F80000 */   sh        $t8, ($a3)
.L80004E14:
/* 5A14 80004E14 8CA5BC2C */  lw         $a1, -0x43d4($a1)
/* 5A18 80004E18 84990052 */  lh         $t9, 0x52($a0)
/* 5A1C 80004E1C 50B9000B */  beql       $a1, $t9, .L80004E4C
/* 5A20 80004E20 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5A24 80004E24 8488005A */  lh         $t0, 0x5a($a0)
/* 5A28 80004E28 24060001 */  addiu      $a2, $zero, 1
/* 5A2C 80004E2C 00A03825 */  or         $a3, $a1, $zero
/* 5A30 80004E30 10A80005 */  beq        $a1, $t0, .L80004E48
/* 5A34 80004E34 24090001 */   addiu     $t1, $zero, 1
/* 5A38 80004E38 240A0001 */  addiu      $t2, $zero, 1
/* 5A3C 80004E3C AFAA0014 */  sw         $t2, 0x14($sp)
/* 5A40 80004E40 0C00762C */  jal        updateAnim
/* 5A44 80004E44 AFA90010 */   sw        $t1, 0x10($sp)
.L80004E48:
/* 5A48 80004E48 8FBF001C */  lw         $ra, 0x1c($sp)
.L80004E4C:
/* 5A4C 80004E4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5A50 80004E50 03E00008 */  jr         $ra
/* 5A54 80004E54 00000000 */   nop

glabel func_80004E58
/* 5A58 80004E58 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 5A5C 80004E5C AFBF001C */  sw         $ra, 0x1c($sp)
/* 5A60 80004E60 E7AC0058 */  swc1       $f12, 0x58($sp)
/* 5A64 80004E64 AFA70064 */  sw         $a3, 0x64($sp)
/* 5A68 80004E68 00C02025 */  or         $a0, $a2, $zero
/* 5A6C 80004E6C C4800018 */  lwc1       $f0, 0x18($a0)
/* 5A70 80004E70 C4820020 */  lwc1       $f2, 0x20($a0)
/* 5A74 80004E74 E7AE005C */  swc1       $f14, 0x5c($sp)
/* 5A78 80004E78 46000102 */  mul.s      $f4, $f0, $f0
/* 5A7C 80004E7C AFA40060 */  sw         $a0, 0x60($sp)
/* 5A80 80004E80 46021182 */  mul.s      $f6, $f2, $f2
/* 5A84 80004E84 0C00D3D8 */  jal        _nsqrtf
/* 5A88 80004E88 46062300 */   add.s     $f12, $f4, $f6
/* 5A8C 80004E8C C7A20058 */  lwc1       $f2, 0x58($sp)
/* 5A90 80004E90 44809000 */  mtc1       $zero, $f18
/* 5A94 80004E94 8FA30064 */  lw         $v1, 0x64($sp)
/* 5A98 80004E98 8FA40060 */  lw         $a0, 0x60($sp)
/* 5A9C 80004E9C 46121032 */  c.eq.s     $f2, $f18
/* 5AA0 80004EA0 C7AE005C */  lwc1       $f14, 0x5c($sp)
/* 5AA4 80004EA4 E7A00034 */  swc1       $f0, 0x34($sp)
/* 5AA8 80004EA8 AFA00048 */  sw         $zero, 0x48($sp)
/* 5AAC 80004EAC 45000005 */  bc1f       .L80004EC4
/* 5AB0 80004EB0 00000000 */   nop
/* 5AB4 80004EB4 46127032 */  c.eq.s     $f14, $f18
/* 5AB8 80004EB8 3C018007 */  lui        $at, 0x8007
/* 5ABC 80004EBC 450300C6 */  bc1tl      .L800051D8
/* 5AC0 80004EC0 C48A0018 */   lwc1      $f10, 0x18($a0)
.L80004EC4:
/* 5AC4 80004EC4 46021202 */  mul.s      $f8, $f2, $f2
/* 5AC8 80004EC8 AFA40060 */  sw         $a0, 0x60($sp)
/* 5ACC 80004ECC E7AE005C */  swc1       $f14, 0x5c($sp)
/* 5AD0 80004ED0 460E7282 */  mul.s      $f10, $f14, $f14
/* 5AD4 80004ED4 0C00D3D8 */  jal        _nsqrtf
/* 5AD8 80004ED8 460A4300 */   add.s     $f12, $f8, $f10
/* 5ADC 80004EDC 3C018007 */  lui        $at, %hi(D_80070FD8)
/* 5AE0 80004EE0 D4260FD8 */  ldc1       $f6, %lo(D_80070FD8)($at)
/* 5AE4 80004EE4 46000121 */  cvt.d.s    $f4, $f0
/* 5AE8 80004EE8 3C014000 */  lui        $at, 0x4000
/* 5AEC 80004EEC 46262202 */  mul.d      $f8, $f4, $f6
/* 5AF0 80004EF0 44815800 */  mtc1       $at, $f11
/* 5AF4 80004EF4 44805000 */  mtc1       $zero, $f10
/* 5AF8 80004EF8 8FA40060 */  lw         $a0, 0x60($sp)
/* 5AFC 80004EFC C7AE005C */  lwc1       $f14, 0x5c($sp)
/* 5B00 80004F00 C7A40058 */  lwc1       $f4, 0x58($sp)
/* 5B04 80004F04 46204420 */  cvt.s.d    $f16, $f8
/* 5B08 80004F08 46008321 */  cvt.d.s    $f12, $f16
/* 5B0C 80004F0C 462C503C */  c.lt.d     $f10, $f12
/* 5B10 80004F10 00000000 */  nop
/* 5B14 80004F14 4502000D */  bc1fl      .L80004F4C
/* 5B18 80004F18 C7AC0058 */   lwc1      $f12, 0x58($sp)
/* 5B1C 80004F1C 46002021 */  cvt.d.s    $f0, $f4
/* 5B20 80004F20 460070A1 */  cvt.d.s    $f2, $f14
/* 5B24 80004F24 46200180 */  add.d      $f6, $f0, $f0
/* 5B28 80004F28 3C014000 */  lui        $at, 0x4000
/* 5B2C 80004F2C 44818000 */  mtc1       $at, $f16
/* 5B30 80004F30 46221100 */  add.d      $f4, $f2, $f2
/* 5B34 80004F34 462C3203 */  div.d      $f8, $f6, $f12
/* 5B38 80004F38 462C2183 */  div.d      $f6, $f4, $f12
/* 5B3C 80004F3C 462042A0 */  cvt.s.d    $f10, $f8
/* 5B40 80004F40 E7AA0058 */  swc1       $f10, 0x58($sp)
/* 5B44 80004F44 462033A0 */  cvt.s.d    $f14, $f6
/* 5B48 80004F48 C7AC0058 */  lwc1       $f12, 0x58($sp)
.L80004F4C:
/* 5B4C 80004F4C AFA40060 */  sw         $a0, 0x60($sp)
/* 5B50 80004F50 0C008C84 */  jal        func_80023210
/* 5B54 80004F54 E7B00038 */   swc1      $f16, 0x38($sp)
/* 5B58 80004F58 8FA40060 */  lw         $a0, 0x60($sp)
/* 5B5C 80004F5C 3C018007 */  lui        $at, %hi(D_80070FE0)
/* 5B60 80004F60 D4240FE0 */  ldc1       $f4, %lo(D_80070FE0)($at)
/* 5B64 80004F64 C4880010 */  lwc1       $f8, 0x10($a0)
/* 5B68 80004F68 44809000 */  mtc1       $zero, $f18
/* 5B6C 80004F6C C7B00038 */  lwc1       $f16, 0x38($sp)
/* 5B70 80004F70 E7A80024 */  swc1       $f8, 0x24($sp)
/* 5B74 80004F74 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* 5B78 80004F78 3C018007 */  lui        $at, 0x8007
/* 5B7C 80004F7C 460A0301 */  sub.s      $f12, $f0, $f10
/* 5B80 80004F80 460060A1 */  cvt.d.s    $f2, $f12
/* 5B84 80004F84 4622203C */  c.lt.d     $f4, $f2
/* 5B88 80004F88 00000000 */  nop
/* 5B8C 80004F8C 45000007 */  bc1f       .L80004FAC
/* 5B90 80004F90 00000000 */   nop
/* 5B94 80004F94 3C018007 */  lui        $at, %hi(D_80070FE8)
/* 5B98 80004F98 D4260FE8 */  ldc1       $f6, %lo(D_80070FE8)($at)
/* 5B9C 80004F9C 46261201 */  sub.d      $f8, $f2, $f6
/* 5BA0 80004FA0 46204320 */  cvt.s.d    $f12, $f8
/* 5BA4 80004FA4 1000000B */  b          .L80004FD4
/* 5BA8 80004FA8 460060A1 */   cvt.d.s   $f2, $f12
.L80004FAC:
/* 5BAC 80004FAC D42A0FF0 */  ldc1       $f10, 0xff0($at)
/* 5BB0 80004FB0 3C018007 */  lui        $at, %hi(D_80070FF8)
/* 5BB4 80004FB4 462A103C */  c.lt.d     $f2, $f10
/* 5BB8 80004FB8 00000000 */  nop
/* 5BBC 80004FBC 45000005 */  bc1f       .L80004FD4
/* 5BC0 80004FC0 00000000 */   nop
/* 5BC4 80004FC4 D4240FF8 */  ldc1       $f4, %lo(D_80070FF8)($at)
/* 5BC8 80004FC8 46241180 */  add.d      $f6, $f2, $f4
/* 5BCC 80004FCC 46203320 */  cvt.s.d    $f12, $f6
/* 5BD0 80004FD0 460060A1 */  cvt.d.s    $f2, $f12
.L80004FD4:
/* 5BD4 80004FD4 3C018007 */  lui        $at, %hi(D_80071000)
/* 5BD8 80004FD8 D4281000 */  ldc1       $f8, %lo(D_80071000)($at)
/* 5BDC 80004FDC 3C018007 */  lui        $at, 0x8007
/* 5BE0 80004FE0 4622403C */  c.lt.d     $f8, $f2
/* 5BE4 80004FE4 00000000 */  nop
/* 5BE8 80004FE8 45000005 */  bc1f       .L80005000
/* 5BEC 80004FEC 00000000 */   nop
/* 5BF0 80004FF0 3C018007 */  lui        $at, %hi(D_80071008)
/* 5BF4 80004FF4 C42C1008 */  lwc1       $f12, %lo(D_80071008)($at)
/* 5BF8 80004FF8 10000009 */  b          .L80005020
/* 5BFC 80004FFC 460060A1 */   cvt.d.s   $f2, $f12
.L80005000:
/* 5C00 80005000 D42A1010 */  ldc1       $f10, 0x1010($at)
/* 5C04 80005004 3C018007 */  lui        $at, %hi(D_80071018)
/* 5C08 80005008 462A103C */  c.lt.d     $f2, $f10
/* 5C0C 8000500C 00000000 */  nop
/* 5C10 80005010 45020004 */  bc1fl      .L80005024
/* 5C14 80005014 460C903E */   c.le.s    $f18, $f12
/* 5C18 80005018 C42C1018 */  lwc1       $f12, %lo(D_80071018)($at)
/* 5C1C 8000501C 460060A1 */  cvt.d.s    $f2, $f12
.L80005020:
/* 5C20 80005020 460C903E */  c.le.s     $f18, $f12
.L80005024:
/* 5C24 80005024 3C018007 */  lui        $at, 0x8007
/* 5C28 80005028 45020004 */  bc1fl      .L8000503C
/* 5C2C 8000502C 46006387 */   neg.s     $f14, $f12
/* 5C30 80005030 10000002 */  b          .L8000503C
/* 5C34 80005034 46006386 */   mov.s     $f14, $f12
/* 5C38 80005038 46006387 */  neg.s      $f14, $f12
.L8000503C:
/* 5C3C 8000503C D4261020 */  ldc1       $f6, 0x1020($at)
/* 5C40 80005040 46007121 */  cvt.d.s    $f4, $f14
/* 5C44 80005044 3C013FF0 */  lui        $at, 0x3ff0
/* 5C48 80005048 46262203 */  div.d      $f8, $f4, $f6
/* 5C4C 8000504C 44815800 */  mtc1       $at, $f11
/* 5C50 80005050 44805000 */  mtc1       $zero, $f10
/* 5C54 80005054 3C013FE0 */  lui        $at, 0x3fe0
/* 5C58 80005058 460081A1 */  cvt.d.s    $f6, $f16
/* 5C5C 8000505C 46285101 */  sub.d      $f4, $f10, $f8
/* 5C60 80005060 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 5C64 80005064 46243282 */  mul.d      $f10, $f6, $f4
/* 5C68 80005068 44802000 */  mtc1       $zero, $f4
/* 5C6C 8000506C 44812800 */  mtc1       $at, $f5
/* 5C70 80005070 460041A1 */  cvt.d.s    $f6, $f8
/* 5C74 80005074 3C018007 */  lui        $at, 0x8007
/* 5C78 80005078 46205420 */  cvt.s.d    $f16, $f10
/* 5C7C 8000507C 46241282 */  mul.d      $f10, $f2, $f4
/* 5C80 80005080 462A3200 */  add.d      $f8, $f6, $f10
/* 5C84 80005084 46204120 */  cvt.s.d    $f4, $f8
/* 5C88 80005088 E4840010 */  swc1       $f4, 0x10($a0)
/* 5C8C 8000508C C4860010 */  lwc1       $f6, 0x10($a0)
/* 5C90 80005090 D42A1028 */  ldc1       $f10, 0x1028($at)
/* 5C94 80005094 3C018007 */  lui        $at, 0x8007
/* 5C98 80005098 46003021 */  cvt.d.s    $f0, $f6
/* 5C9C 8000509C 4620503C */  c.lt.d     $f10, $f0
/* 5CA0 800050A0 00000000 */  nop
/* 5CA4 800050A4 45000007 */  bc1f       .L800050C4
/* 5CA8 800050A8 00000000 */   nop
/* 5CAC 800050AC 3C018007 */  lui        $at, %hi(D_80071030)
/* 5CB0 800050B0 D4281030 */  ldc1       $f8, %lo(D_80071030)($at)
/* 5CB4 800050B4 46280101 */  sub.d      $f4, $f0, $f8
/* 5CB8 800050B8 462021A0 */  cvt.s.d    $f6, $f4
/* 5CBC 800050BC 1000000B */  b          .L800050EC
/* 5CC0 800050C0 E4860010 */   swc1      $f6, 0x10($a0)
.L800050C4:
/* 5CC4 800050C4 D42A1038 */  ldc1       $f10, 0x1038($at)
/* 5CC8 800050C8 3C018007 */  lui        $at, %hi(D_80071040)
/* 5CCC 800050CC 462A003C */  c.lt.d     $f0, $f10
/* 5CD0 800050D0 00000000 */  nop
/* 5CD4 800050D4 45020006 */  bc1fl      .L800050F0
/* 5CD8 800050D8 C7A20034 */   lwc1      $f2, 0x34($sp)
/* 5CDC 800050DC D4281040 */  ldc1       $f8, %lo(D_80071040)($at)
/* 5CE0 800050E0 46280100 */  add.d      $f4, $f0, $f8
/* 5CE4 800050E4 462021A0 */  cvt.s.d    $f6, $f4
/* 5CE8 800050E8 E4860010 */  swc1       $f6, 0x10($a0)
.L800050EC:
/* 5CEC 800050EC C7A20034 */  lwc1       $f2, 0x34($sp)
.L800050F0:
/* 5CF0 800050F0 3C058008 */  lui        $a1, %hi(UNK_somethingToDoWithAnimation)
/* 5CF4 800050F4 24A5BC30 */  addiu      $a1, $a1, %lo(UNK_somethingToDoWithAnimation)
/* 5CF8 800050F8 46028281 */  sub.s      $f10, $f16, $f2
/* 5CFC 800050FC E4B20000 */  swc1       $f18, ($a1)
/* 5D00 80005100 3C018007 */  lui        $at, %hi(D_80071048)
/* 5D04 80005104 D4241048 */  ldc1       $f4, %lo(D_80071048)($at)
/* 5D08 80005108 46005221 */  cvt.d.s    $f8, $f10
/* 5D0C 8000510C 460012A1 */  cvt.d.s    $f10, $f2
/* 5D10 80005110 46244182 */  mul.d      $f6, $f8, $f4
/* 5D14 80005114 46265200 */  add.d      $f8, $f10, $f6
/* 5D18 80005118 46204020 */  cvt.s.d    $f0, $f8
/* 5D1C 8000511C E4A00004 */  swc1       $f0, 4($a1)
/* 5D20 80005120 C48C0010 */  lwc1       $f12, 0x10($a0)
/* 5D24 80005124 E7B00038 */  swc1       $f16, 0x38($sp)
/* 5D28 80005128 E7A00024 */  swc1       $f0, 0x24($sp)
/* 5D2C 8000512C 0C008CBD */  jal        func_800232F4
/* 5D30 80005130 AFA40060 */   sw        $a0, 0x60($sp)
/* 5D34 80005134 3C013FF8 */  lui        $at, 0x3ff8
/* 5D38 80005138 44811800 */  mtc1       $at, $f3
/* 5D3C 8000513C 3C014160 */  lui        $at, 0x4160
/* 5D40 80005140 C7B00038 */  lwc1       $f16, 0x38($sp)
/* 5D44 80005144 44813000 */  mtc1       $at, $f6
/* 5D48 80005148 3C058008 */  lui        $a1, %hi(UNK_somethingToDoWithAnimation)
/* 5D4C 8000514C 24A5BC30 */  addiu      $a1, $a1, %lo(UNK_somethingToDoWithAnimation)
/* 5D50 80005150 8FA40060 */  lw         $a0, 0x60($sp)
/* 5D54 80005154 C4A40000 */  lwc1       $f4, ($a1)
/* 5D58 80005158 46068202 */  mul.s      $f8, $f16, $f6
/* 5D5C 8000515C 8FA30064 */  lw         $v1, 0x64($sp)
/* 5D60 80005160 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 5D64 80005164 E4840018 */  swc1       $f4, 0x18($a0)
/* 5D68 80005168 C4AA0004 */  lwc1       $f10, 4($a1)
/* 5D6C 8000516C 3C014040 */  lui        $at, 0x4040
/* 5D70 80005170 44812000 */  mtc1       $at, $f4
/* 5D74 80005174 E48A0020 */  swc1       $f10, 0x20($a0)
/* 5D78 80005178 44801000 */  mtc1       $zero, $f2
/* 5D7C 8000517C 46044280 */  add.s      $f10, $f8, $f4
/* 5D80 80005180 240E0001 */  addiu      $t6, $zero, 1
/* 5D84 80005184 AFAE0054 */  sw         $t6, 0x54($sp)
/* 5D88 80005188 46008221 */  cvt.d.s    $f8, $f16
/* 5D8C 8000518C 4600518D */  trunc.w.s  $f6, $f10
/* 5D90 80005190 24070001 */  addiu      $a3, $zero, 1
/* 5D94 80005194 00001025 */  or         $v0, $zero, $zero
/* 5D98 80005198 4628103C */  c.lt.d     $f2, $f8
/* 5D9C 8000519C 44063000 */  mfc1       $a2, $f6
/* 5DA0 800051A0 24180002 */  addiu      $t8, $zero, 2
/* 5DA4 800051A4 2419001E */  addiu      $t9, $zero, 0x1e
/* 5DA8 800051A8 45010006 */  bc1t       .L800051C4
/* 5DAC 800051AC 3C018008 */   lui       $at, 0x8008
/* 5DB0 800051B0 46000121 */  cvt.d.s    $f4, $f0
/* 5DB4 800051B4 4624103C */  c.lt.d     $f2, $f4
/* 5DB8 800051B8 00000000 */  nop
/* 5DBC 800051BC 4502004F */  bc1fl      .L800052FC
/* 5DC0 800051C0 8FAE0054 */   lw        $t6, 0x54($sp)
.L800051C4:
/* 5DC4 800051C4 A4780000 */  sh         $t8, ($v1)
/* 5DC8 800051C8 A4790004 */  sh         $t9, 4($v1)
/* 5DCC 800051CC 1000004A */  b          .L800052F8
/* 5DD0 800051D0 A420BC28 */   sh        $zero, -0x43d8($at)
/* 5DD4 800051D4 C48A0018 */  lwc1       $f10, 0x18($a0)
.L800051D8:
/* 5DD8 800051D8 D42C1050 */  ldc1       $f12, 0x1050($at)
/* 5DDC 800051DC 3C013FF0 */  lui        $at, 0x3ff0
/* 5DE0 800051E0 460051A1 */  cvt.d.s    $f6, $f10
/* 5DE4 800051E4 C48A0020 */  lwc1       $f10, 0x20($a0)
/* 5DE8 800051E8 462C3202 */  mul.d      $f8, $f6, $f12
/* 5DEC 800051EC 44815800 */  mtc1       $at, $f11
/* 5DF0 800051F0 460051A1 */  cvt.d.s    $f6, $f10
/* 5DF4 800051F4 44805000 */  mtc1       $zero, $f10
/* 5DF8 800051F8 460000A1 */  cvt.d.s    $f2, $f0
/* 5DFC 800051FC 2408000F */  addiu      $t0, $zero, 0xf
/* 5E00 80005200 4622503C */  c.lt.d     $f10, $f2
/* 5E04 80005204 3C078008 */  lui        $a3, 0x8008
/* 5E08 80005208 46204120 */  cvt.s.d    $f4, $f8
/* 5E0C 8000520C 462C3202 */  mul.d      $f8, $f6, $f12
/* 5E10 80005210 24090003 */  addiu      $t1, $zero, 3
/* 5E14 80005214 240A0004 */  addiu      $t2, $zero, 4
/* 5E18 80005218 E4840018 */  swc1       $f4, 0x18($a0)
/* 5E1C 8000521C 240B0008 */  addiu      $t3, $zero, 8
/* 5E20 80005220 3C014160 */  lui        $at, 0x4160
/* 5E24 80005224 46204120 */  cvt.s.d    $f4, $f8
/* 5E28 80005228 45000020 */  bc1f       .L800052AC
/* 5E2C 8000522C E4840020 */   swc1      $f4, 0x20($a0)
/* 5E30 80005230 3C018007 */  lui        $at, %hi(D_80071058)
/* 5E34 80005234 D4201058 */  ldc1       $f0, %lo(D_80071058)($at)
/* 5E38 80005238 8CE7BC2C */  lw         $a3, -0x43d4($a3)
/* 5E3C 8000523C AFA80054 */  sw         $t0, 0x54($sp)
/* 5E40 80005240 AFA90048 */  sw         $t1, 0x48($sp)
/* 5E44 80005244 A46A0000 */  sh         $t2, ($v1)
/* 5E48 80005248 A46B0004 */  sh         $t3, 4($v1)
/* 5E4C 8000524C C4860018 */  lwc1       $f6, 0x18($a0)
/* 5E50 80005250 E492000C */  swc1       $f18, 0xc($a0)
/* 5E54 80005254 E4920014 */  swc1       $f18, 0x14($a0)
/* 5E58 80005258 46003221 */  cvt.d.s    $f8, $f6
/* 5E5C 8000525C C4860020 */  lwc1       $f6, 0x20($a0)
/* 5E60 80005260 46204102 */  mul.d      $f4, $f8, $f0
/* 5E64 80005264 24060001 */  addiu      $a2, $zero, 1
/* 5E68 80005268 46003221 */  cvt.d.s    $f8, $f6
/* 5E6C 8000526C 24020001 */  addiu      $v0, $zero, 1
/* 5E70 80005270 462022A0 */  cvt.s.d    $f10, $f4
/* 5E74 80005274 46204102 */  mul.d      $f4, $f8, $f0
/* 5E78 80005278 E48A0018 */  swc1       $f10, 0x18($a0)
/* 5E7C 8000527C 462022A0 */  cvt.s.d    $f10, $f4
/* 5E80 80005280 E48A0020 */  swc1       $f10, 0x20($a0)
/* 5E84 80005284 AFA6004C */  sw         $a2, 0x4c($sp)
/* 5E88 80005288 AFA40060 */  sw         $a0, 0x60($sp)
/* 5E8C 8000528C AFA20044 */  sw         $v0, 0x44($sp)
/* 5E90 80005290 0C0061AD */  jal        func_800186B4
/* 5E94 80005294 AFA70050 */   sw        $a3, 0x50($sp)
/* 5E98 80005298 8FA20044 */  lw         $v0, 0x44($sp)
/* 5E9C 8000529C 8FA40060 */  lw         $a0, 0x60($sp)
/* 5EA0 800052A0 8FA6004C */  lw         $a2, 0x4c($sp)
/* 5EA4 800052A4 10000014 */  b          .L800052F8
/* 5EA8 800052A8 8FA70050 */   lw        $a3, 0x50($sp)
.L800052AC:
/* 5EAC 800052AC 44813000 */  mtc1       $at, $f6
/* 5EB0 800052B0 3C014040 */  lui        $at, 0x4040
/* 5EB4 800052B4 44812000 */  mtc1       $at, $f4
/* 5EB8 800052B8 46060202 */  mul.s      $f8, $f0, $f6
/* 5EBC 800052BC 3C018007 */  lui        $at, 0x8007
/* 5EC0 800052C0 240C0001 */  addiu      $t4, $zero, 1
/* 5EC4 800052C4 AFAC0054 */  sw         $t4, 0x54($sp)
/* 5EC8 800052C8 24070001 */  addiu      $a3, $zero, 1
/* 5ECC 800052CC 00001025 */  or         $v0, $zero, $zero
/* 5ED0 800052D0 46044280 */  add.s      $f10, $f8, $f4
/* 5ED4 800052D4 D4281060 */  ldc1       $f8, 0x1060($at)
/* 5ED8 800052D8 4600518D */  trunc.w.s  $f6, $f10
/* 5EDC 800052DC 4628103C */  c.lt.d     $f2, $f8
/* 5EE0 800052E0 44063000 */  mfc1       $a2, $f6
/* 5EE4 800052E4 45020005 */  bc1fl      .L800052FC
/* 5EE8 800052E8 8FAE0054 */   lw        $t6, 0x54($sp)
/* 5EEC 800052EC A4600000 */  sh         $zero, ($v1)
/* 5EF0 800052F0 E4920018 */  swc1       $f18, 0x18($a0)
/* 5EF4 800052F4 E4920020 */  swc1       $f18, 0x20($a0)
.L800052F8:
/* 5EF8 800052F8 8FAE0054 */  lw         $t6, 0x54($sp)
.L800052FC:
/* 5EFC 800052FC 848F0052 */  lh         $t7, 0x52($a0)
/* 5F00 80005300 51CF000E */  beql       $t6, $t7, .L8000533C
/* 5F04 80005304 A4860058 */   sh        $a2, 0x58($a0)
/* 5F08 80005308 8498005A */  lh         $t8, 0x5a($a0)
/* 5F0C 8000530C 01C02825 */  or         $a1, $t6, $zero
/* 5F10 80005310 51D8000A */  beql       $t6, $t8, .L8000533C
/* 5F14 80005314 A4860058 */   sh        $a2, 0x58($a0)
/* 5F18 80005318 AFA60010 */  sw         $a2, 0x10($sp)
/* 5F1C 8000531C AFA20014 */  sw         $v0, 0x14($sp)
/* 5F20 80005320 0C00762C */  jal        updateAnim
/* 5F24 80005324 AFA40060 */   sw        $a0, 0x60($sp)
/* 5F28 80005328 8FA40060 */  lw         $a0, 0x60($sp)
/* 5F2C 8000532C 8FB90048 */  lw         $t9, 0x48($sp)
/* 5F30 80005330 10000002 */  b          .L8000533C
/* 5F34 80005334 A4990054 */   sh        $t9, 0x54($a0)
/* 5F38 80005338 A4860058 */  sh         $a2, 0x58($a0)
.L8000533C:
/* 5F3C 8000533C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5F40 80005340 27BD0058 */  addiu      $sp, $sp, 0x58
/* 5F44 80005344 03E00008 */  jr         $ra
/* 5F48 80005348 00000000 */   nop

glabel func_8000534C
/* 5F4C 8000534C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 5F50 80005350 AFB00020 */  sw         $s0, 0x20($sp)
/* 5F54 80005354 00C08025 */  or         $s0, $a2, $zero
/* 5F58 80005358 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5F5C 8000535C E7AC0060 */  swc1       $f12, 0x60($sp)
/* 5F60 80005360 AFA7006C */  sw         $a3, 0x6c($sp)
/* 5F64 80005364 C6000018 */  lwc1       $f0, 0x18($s0)
/* 5F68 80005368 C6020020 */  lwc1       $f2, 0x20($s0)
/* 5F6C 8000536C E7AE0064 */  swc1       $f14, 0x64($sp)
/* 5F70 80005370 46000102 */  mul.s      $f4, $f0, $f0
/* 5F74 80005374 00000000 */  nop
/* 5F78 80005378 46021182 */  mul.s      $f6, $f2, $f2
/* 5F7C 8000537C 0C00D3D8 */  jal        _nsqrtf
/* 5F80 80005380 46062300 */   add.s     $f12, $f4, $f6
/* 5F84 80005384 C7A20060 */  lwc1       $f2, 0x60($sp)
/* 5F88 80005388 44808000 */  mtc1       $zero, $f16
/* 5F8C 8000538C C7AE0064 */  lwc1       $f14, 0x64($sp)
/* 5F90 80005390 E7A0003C */  swc1       $f0, 0x3c($sp)
/* 5F94 80005394 46101032 */  c.eq.s     $f2, $f16
/* 5F98 80005398 00000000 */  nop
/* 5F9C 8000539C 45000007 */  bc1f       .L800053BC
/* 5FA0 800053A0 00000000 */   nop
/* 5FA4 800053A4 46107032 */  c.eq.s     $f14, $f16
/* 5FA8 800053A8 8FA3006C */  lw         $v1, 0x6c($sp)
/* 5FAC 800053AC 3C018007 */  lui        $at, 0x8007
/* 5FB0 800053B0 2408000F */  addiu      $t0, $zero, 0xf
/* 5FB4 800053B4 45010092 */  bc1t       .L80005600
/* 5FB8 800053B8 3C078008 */   lui       $a3, 0x8008
.L800053BC:
/* 5FBC 800053BC 46021202 */  mul.s      $f8, $f2, $f2
/* 5FC0 800053C0 E7AE0064 */  swc1       $f14, 0x64($sp)
/* 5FC4 800053C4 460E7282 */  mul.s      $f10, $f14, $f14
/* 5FC8 800053C8 0C00D3D8 */  jal        _nsqrtf
/* 5FCC 800053CC 460A4300 */   add.s     $f12, $f8, $f10
/* 5FD0 800053D0 3C018007 */  lui        $at, %hi(D_80071068)
/* 5FD4 800053D4 D4261068 */  ldc1       $f6, %lo(D_80071068)($at)
/* 5FD8 800053D8 46000121 */  cvt.d.s    $f4, $f0
/* 5FDC 800053DC 3C014000 */  lui        $at, 0x4000
/* 5FE0 800053E0 46262202 */  mul.d      $f8, $f4, $f6
/* 5FE4 800053E4 44815800 */  mtc1       $at, $f11
/* 5FE8 800053E8 44805000 */  mtc1       $zero, $f10
/* 5FEC 800053EC C7AE0064 */  lwc1       $f14, 0x64($sp)
/* 5FF0 800053F0 C7A40060 */  lwc1       $f4, 0x60($sp)
/* 5FF4 800053F4 46204420 */  cvt.s.d    $f16, $f8
/* 5FF8 800053F8 46008321 */  cvt.d.s    $f12, $f16
/* 5FFC 800053FC 462C503C */  c.lt.d     $f10, $f12
/* 6000 80005400 00000000 */  nop
/* 6004 80005404 4502000D */  bc1fl      .L8000543C
/* 6008 80005408 C7AC0060 */   lwc1      $f12, 0x60($sp)
/* 600C 8000540C 46002021 */  cvt.d.s    $f0, $f4
/* 6010 80005410 460070A1 */  cvt.d.s    $f2, $f14
/* 6014 80005414 46200180 */  add.d      $f6, $f0, $f0
/* 6018 80005418 3C014000 */  lui        $at, 0x4000
/* 601C 8000541C 44818000 */  mtc1       $at, $f16
/* 6020 80005420 46221100 */  add.d      $f4, $f2, $f2
/* 6024 80005424 462C3203 */  div.d      $f8, $f6, $f12
/* 6028 80005428 462C2183 */  div.d      $f6, $f4, $f12
/* 602C 8000542C 462042A0 */  cvt.s.d    $f10, $f8
/* 6030 80005430 E7AA0060 */  swc1       $f10, 0x60($sp)
/* 6034 80005434 462033A0 */  cvt.s.d    $f14, $f6
/* 6038 80005438 C7AC0060 */  lwc1       $f12, 0x60($sp)
.L8000543C:
/* 603C 8000543C 0C008C84 */  jal        func_80023210
/* 6040 80005440 E7B00040 */   swc1      $f16, 0x40($sp)
/* 6044 80005444 C60E0010 */  lwc1       $f14, 0x10($s0)
/* 6048 80005448 3C018007 */  lui        $at, %hi(D_80071070)
/* 604C 8000544C D4321070 */  ldc1       $f18, %lo(D_80071070)($at)
/* 6050 80005450 460E0301 */  sub.s      $f12, $f0, $f14
/* 6054 80005454 C7B00040 */  lwc1       $f16, 0x40($sp)
/* 6058 80005458 3C018007 */  lui        $at, 0x8007
/* 605C 8000545C 3C058008 */  lui        $a1, 0x8008
/* 6060 80005460 460060A1 */  cvt.d.s    $f2, $f12
/* 6064 80005464 4622903C */  c.lt.d     $f18, $f2
/* 6068 80005468 00000000 */  nop
/* 606C 8000546C 45000007 */  bc1f       .L8000548C
/* 6070 80005470 00000000 */   nop
/* 6074 80005474 3C018007 */  lui        $at, %hi(D_80071078)
/* 6078 80005478 D4281078 */  ldc1       $f8, %lo(D_80071078)($at)
/* 607C 8000547C 46281281 */  sub.d      $f10, $f2, $f8
/* 6080 80005480 46205320 */  cvt.s.d    $f12, $f10
/* 6084 80005484 1000000B */  b          .L800054B4
/* 6088 80005488 460060A1 */   cvt.d.s   $f2, $f12
.L8000548C:
/* 608C 8000548C D4241080 */  ldc1       $f4, 0x1080($at)
/* 6090 80005490 3C018007 */  lui        $at, %hi(D_80071088)
/* 6094 80005494 4624103C */  c.lt.d     $f2, $f4
/* 6098 80005498 00000000 */  nop
/* 609C 8000549C 45000005 */  bc1f       .L800054B4
/* 60A0 800054A0 00000000 */   nop
/* 60A4 800054A4 D4261088 */  ldc1       $f6, %lo(D_80071088)($at)
/* 60A8 800054A8 46261200 */  add.d      $f8, $f2, $f6
/* 60AC 800054AC 46204320 */  cvt.s.d    $f12, $f8
/* 60B0 800054B0 460060A1 */  cvt.d.s    $f2, $f12
.L800054B4:
/* 60B4 800054B4 3C018007 */  lui        $at, %hi(D_80071090)
/* 60B8 800054B8 D4241090 */  ldc1       $f4, %lo(D_80071090)($at)
/* 60BC 800054BC 460072A1 */  cvt.d.s    $f10, $f14
/* 60C0 800054C0 3C018007 */  lui        $at, 0x8007
/* 60C4 800054C4 46241182 */  mul.d      $f6, $f2, $f4
/* 60C8 800054C8 46265200 */  add.d      $f8, $f10, $f6
/* 60CC 800054CC 46204120 */  cvt.s.d    $f4, $f8
/* 60D0 800054D0 E6040010 */  swc1       $f4, 0x10($s0)
/* 60D4 800054D4 C60A0010 */  lwc1       $f10, 0x10($s0)
/* 60D8 800054D8 46005021 */  cvt.d.s    $f0, $f10
/* 60DC 800054DC 4620903C */  c.lt.d     $f18, $f0
/* 60E0 800054E0 00000000 */  nop
/* 60E4 800054E4 45000007 */  bc1f       .L80005504
/* 60E8 800054E8 00000000 */   nop
/* 60EC 800054EC 3C018007 */  lui        $at, %hi(D_80071098)
/* 60F0 800054F0 D4261098 */  ldc1       $f6, %lo(D_80071098)($at)
/* 60F4 800054F4 46260201 */  sub.d      $f8, $f0, $f6
/* 60F8 800054F8 46204120 */  cvt.s.d    $f4, $f8
/* 60FC 800054FC 1000000B */  b          .L8000552C
/* 6100 80005500 E6040010 */   swc1      $f4, 0x10($s0)
.L80005504:
/* 6104 80005504 D42A10A0 */  ldc1       $f10, 0x10a0($at)
/* 6108 80005508 3C018007 */  lui        $at, %hi(D_800710A8)
/* 610C 8000550C 462A003C */  c.lt.d     $f0, $f10
/* 6110 80005510 00000000 */  nop
/* 6114 80005514 45020006 */  bc1fl      .L80005530
/* 6118 80005518 C7A2003C */   lwc1      $f2, 0x3c($sp)
/* 611C 8000551C D42610A8 */  ldc1       $f6, %lo(D_800710A8)($at)
/* 6120 80005520 46260200 */  add.d      $f8, $f0, $f6
/* 6124 80005524 46204120 */  cvt.s.d    $f4, $f8
/* 6128 80005528 E6040010 */  swc1       $f4, 0x10($s0)
.L8000552C:
/* 612C 8000552C C7A2003C */  lwc1       $f2, 0x3c($sp)
.L80005530:
/* 6130 80005530 44805000 */  mtc1       $zero, $f10
/* 6134 80005534 24A5BC30 */  addiu      $a1, $a1, -0x43d0
/* 6138 80005538 46028181 */  sub.s      $f6, $f16, $f2
/* 613C 8000553C 3C018007 */  lui        $at, %hi(D_800710B0)
/* 6140 80005540 E4AA0000 */  swc1       $f10, ($a1)
/* 6144 80005544 D42410B0 */  ldc1       $f4, %lo(D_800710B0)($at)
/* 6148 80005548 46003221 */  cvt.d.s    $f8, $f6
/* 614C 8000554C 460011A1 */  cvt.d.s    $f6, $f2
/* 6150 80005550 46244282 */  mul.d      $f10, $f8, $f4
/* 6154 80005554 462A3200 */  add.d      $f8, $f6, $f10
/* 6158 80005558 46204020 */  cvt.s.d    $f0, $f8
/* 615C 8000555C E4A00004 */  swc1       $f0, 4($a1)
/* 6160 80005560 C60C0010 */  lwc1       $f12, 0x10($s0)
/* 6164 80005564 E7B00040 */  swc1       $f16, 0x40($sp)
/* 6168 80005568 0C008CBD */  jal        func_800232F4
/* 616C 8000556C E7A0002C */   swc1      $f0, 0x2c($sp)
/* 6170 80005570 3C013FF0 */  lui        $at, 0x3ff0
/* 6174 80005574 44811800 */  mtc1       $at, $f3
/* 6178 80005578 3C014160 */  lui        $at, 0x4160
/* 617C 8000557C C7B00040 */  lwc1       $f16, 0x40($sp)
/* 6180 80005580 44815000 */  mtc1       $at, $f10
/* 6184 80005584 3C058008 */  lui        $a1, %hi(UNK_somethingToDoWithAnimation)
/* 6188 80005588 24A5BC30 */  addiu      $a1, $a1, %lo(UNK_somethingToDoWithAnimation)
/* 618C 8000558C C4A40000 */  lwc1       $f4, ($a1)
/* 6190 80005590 460A8202 */  mul.s      $f8, $f16, $f10
/* 6194 80005594 C7A0002C */  lwc1       $f0, 0x2c($sp)
/* 6198 80005598 E6040018 */  swc1       $f4, 0x18($s0)
/* 619C 8000559C C4A60004 */  lwc1       $f6, 4($a1)
/* 61A0 800055A0 3C014040 */  lui        $at, 0x4040
/* 61A4 800055A4 44812000 */  mtc1       $at, $f4
/* 61A8 800055A8 E6060020 */  swc1       $f6, 0x20($s0)
/* 61AC 800055AC 44801000 */  mtc1       $zero, $f2
/* 61B0 800055B0 46044180 */  add.s      $f6, $f8, $f4
/* 61B4 800055B4 240E0002 */  addiu      $t6, $zero, 2
/* 61B8 800055B8 AFAE005C */  sw         $t6, 0x5c($sp)
/* 61BC 800055BC 46000221 */  cvt.d.s    $f8, $f0
/* 61C0 800055C0 4600328D */  trunc.w.s  $f10, $f6
/* 61C4 800055C4 24070002 */  addiu      $a3, $zero, 2
/* 61C8 800055C8 AFA00050 */  sw         $zero, 0x50($sp)
/* 61CC 800055CC 4622403C */  c.lt.d     $f8, $f2
/* 61D0 800055D0 44065000 */  mfc1       $a2, $f10
/* 61D4 800055D4 00001025 */  or         $v0, $zero, $zero
/* 61D8 800055D8 45020029 */  bc1fl      .L80005680
/* 61DC 800055DC 8FAC005C */   lw        $t4, 0x5c($sp)
/* 61E0 800055E0 46008121 */  cvt.d.s    $f4, $f16
/* 61E4 800055E4 8FB9006C */  lw         $t9, 0x6c($sp)
/* 61E8 800055E8 4622203C */  c.lt.d     $f4, $f2
/* 61EC 800055EC 00000000 */  nop
/* 61F0 800055F0 45000022 */  bc1f       .L8000567C
/* 61F4 800055F4 24180001 */   addiu     $t8, $zero, 1
/* 61F8 800055F8 10000020 */  b          .L8000567C
/* 61FC 800055FC A7380000 */   sh        $t8, ($t9)
.L80005600:
/* 6200 80005600 24090003 */  addiu      $t1, $zero, 3
/* 6204 80005604 D42010B8 */  ldc1       $f0, 0x10b8($at)
/* 6208 80005608 8CE7BC2C */  lw         $a3, -0x43d4($a3)
/* 620C 8000560C AFA8005C */  sw         $t0, 0x5c($sp)
/* 6210 80005610 AFA90050 */  sw         $t1, 0x50($sp)
/* 6214 80005614 240A0004 */  addiu      $t2, $zero, 4
/* 6218 80005618 240B0008 */  addiu      $t3, $zero, 8
/* 621C 8000561C A46A0000 */  sh         $t2, ($v1)
/* 6220 80005620 A46B0004 */  sh         $t3, 4($v1)
/* 6224 80005624 C6060018 */  lwc1       $f6, 0x18($s0)
/* 6228 80005628 E610000C */  swc1       $f16, 0xc($s0)
/* 622C 8000562C E6100014 */  swc1       $f16, 0x14($s0)
/* 6230 80005630 460032A1 */  cvt.d.s    $f10, $f6
/* 6234 80005634 C6060020 */  lwc1       $f6, 0x20($s0)
/* 6238 80005638 46205202 */  mul.d      $f8, $f10, $f0
/* 623C 8000563C 24060001 */  addiu      $a2, $zero, 1
/* 6240 80005640 460032A1 */  cvt.d.s    $f10, $f6
/* 6244 80005644 24020001 */  addiu      $v0, $zero, 1
/* 6248 80005648 02002025 */  or         $a0, $s0, $zero
/* 624C 8000564C 46204120 */  cvt.s.d    $f4, $f8
/* 6250 80005650 46205202 */  mul.d      $f8, $f10, $f0
/* 6254 80005654 E6040018 */  swc1       $f4, 0x18($s0)
/* 6258 80005658 46204120 */  cvt.s.d    $f4, $f8
/* 625C 8000565C E6040020 */  swc1       $f4, 0x20($s0)
/* 6260 80005660 AFA60054 */  sw         $a2, 0x54($sp)
/* 6264 80005664 AFA2004C */  sw         $v0, 0x4c($sp)
/* 6268 80005668 0C0061AD */  jal        func_800186B4
/* 626C 8000566C AFA70058 */   sw        $a3, 0x58($sp)
/* 6270 80005670 8FA2004C */  lw         $v0, 0x4c($sp)
/* 6274 80005674 8FA60054 */  lw         $a2, 0x54($sp)
/* 6278 80005678 8FA70058 */  lw         $a3, 0x58($sp)
.L8000567C:
/* 627C 8000567C 8FAC005C */  lw         $t4, 0x5c($sp)
.L80005680:
/* 6280 80005680 860D0052 */  lh         $t5, 0x52($s0)
/* 6284 80005684 518D000D */  beql       $t4, $t5, .L800056BC
/* 6288 80005688 A6060058 */   sh        $a2, 0x58($s0)
/* 628C 8000568C 860E005A */  lh         $t6, 0x5a($s0)
/* 6290 80005690 02002025 */  or         $a0, $s0, $zero
/* 6294 80005694 01802825 */  or         $a1, $t4, $zero
/* 6298 80005698 518E0008 */  beql       $t4, $t6, .L800056BC
/* 629C 8000569C A6060058 */   sh        $a2, 0x58($s0)
/* 62A0 800056A0 AFA60010 */  sw         $a2, 0x10($sp)
/* 62A4 800056A4 0C00762C */  jal        updateAnim
/* 62A8 800056A8 AFA20014 */   sw        $v0, 0x14($sp)
/* 62AC 800056AC 8FAF0050 */  lw         $t7, 0x50($sp)
/* 62B0 800056B0 10000002 */  b          .L800056BC
/* 62B4 800056B4 A60F0054 */   sh        $t7, 0x54($s0)
/* 62B8 800056B8 A6060058 */  sh         $a2, 0x58($s0)
.L800056BC:
/* 62BC 800056BC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 62C0 800056C0 8FB00020 */  lw         $s0, 0x20($sp)
/* 62C4 800056C4 27BD0060 */  addiu      $sp, $sp, 0x60
/* 62C8 800056C8 03E00008 */  jr         $ra
/* 62CC 800056CC 00000000 */   nop

glabel func_800056D0
/* 62D0 800056D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62D4 800056D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 62D8 800056D8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 62DC 800056DC AFA60020 */  sw         $a2, 0x20($sp)
/* 62E0 800056E0 0C0019C8 */  jal        loadBrianAnim
/* 62E4 800056E4 AFA40018 */   sw        $a0, 0x18($sp)
/* 62E8 800056E8 8FA40018 */  lw         $a0, 0x18($sp)
/* 62EC 800056EC 8FB8001C */  lw         $t8, 0x1c($sp)
/* 62F0 800056F0 848E0052 */  lh         $t6, 0x52($a0)
/* 62F4 800056F4 8C860024 */  lw         $a2, 0x24($a0)
/* 62F8 800056F8 000E7880 */  sll        $t7, $t6, 2
/* 62FC 800056FC 01EE7823 */  subu       $t7, $t7, $t6
/* 6300 80005700 000F7880 */  sll        $t7, $t7, 2
/* 6304 80005704 0C007649 */  jal        func_8001D924
/* 6308 80005708 01F82821 */   addu      $a1, $t7, $t8
/* 630C 8000570C 8FA40018 */  lw         $a0, 0x18($sp)
/* 6310 80005710 8FA50020 */  lw         $a1, 0x20($sp)
/* 6314 80005714 C4840044 */  lwc1       $f4, 0x44($a0)
/* 6318 80005718 46002187 */  neg.s      $f6, $f4
/* 631C 8000571C E4A60000 */  swc1       $f6, ($a1)
/* 6320 80005720 C488004C */  lwc1       $f8, 0x4c($a0)
/* 6324 80005724 E4A80004 */  swc1       $f8, 4($a1)
/* 6328 80005728 0C008CBD */  jal        func_800232F4
/* 632C 8000572C C48C0010 */   lwc1      $f12, 0x10($a0)
/* 6330 80005730 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6334 80005734 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6338 80005738 03E00008 */  jr         $ra
/* 633C 8000573C 00000000 */   nop

glabel func_80005740
/* 6340 80005740 03E00008 */  jr         $ra
/* 6344 80005744 00000000 */   nop

glabel func_80005748
/* 6348 80005748 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 634C 8000574C AFB00028 */  sw         $s0, 0x28($sp)
/* 6350 80005750 00A08025 */  or         $s0, $a1, $zero
/* 6354 80005754 AFBF002C */  sw         $ra, 0x2c($sp)
/* 6358 80005758 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 635C 8000575C AFA40038 */  sw         $a0, 0x38($sp)
/* 6360 80005760 3C028009 */  lui        $v0, %hi(BattleState)
/* 6364 80005764 9442C592 */  lhu        $v0, %lo(BattleState)($v0)
/* 6368 80005768 304E0001 */  andi       $t6, $v0, 1
/* 636C 8000576C 11C0006F */  beqz       $t6, .L8000592C
/* 6370 80005770 304F0006 */   andi      $t7, $v0, 6
/* 6374 80005774 55E0006E */  bnel       $t7, $zero, .L80005930
/* 6378 80005778 26040018 */   addiu     $a0, $s0, 0x18
/* 637C 8000577C C6040000 */  lwc1       $f4, ($s0)
/* 6380 80005780 C6060018 */  lwc1       $f6, 0x18($s0)
/* 6384 80005784 C6100008 */  lwc1       $f16, 8($s0)
/* 6388 80005788 C6120020 */  lwc1       $f18, 0x20($s0)
/* 638C 8000578C 46062200 */  add.s      $f8, $f4, $f6
/* 6390 80005790 3C018009 */  lui        $at, %hi(brianBattleFenceXpos)
/* 6394 80005794 C42AC5A4 */  lwc1       $f10, %lo(brianBattleFenceXpos)($at)
/* 6398 80005798 46128100 */  add.s      $f4, $f16, $f18
/* 639C 8000579C 3C018009 */  lui        $at, %hi(brianBattleFenceZpos)
/* 63A0 800057A0 C426C430 */  lwc1       $f6, %lo(brianBattleFenceZpos)($at)
/* 63A4 800057A4 460A4501 */  sub.s      $f20, $f8, $f10
/* 63A8 800057A8 AFA60040 */  sw         $a2, 0x40($sp)
/* 63AC 800057AC 46062081 */  sub.s      $f2, $f4, $f6
/* 63B0 800057B0 4614A202 */  mul.s      $f8, $f20, $f20
/* 63B4 800057B4 00000000 */  nop
/* 63B8 800057B8 46021282 */  mul.s      $f10, $f2, $f2
/* 63BC 800057BC E7A20030 */  swc1       $f2, 0x30($sp)
/* 63C0 800057C0 0C00D3D8 */  jal        _nsqrtf
/* 63C4 800057C4 460A4300 */   add.s     $f12, $f8, $f10
/* 63C8 800057C8 8FA60040 */  lw         $a2, 0x40($sp)
/* 63CC 800057CC C7A20030 */  lwc1       $f2, 0x30($sp)
/* 63D0 800057D0 C4D0000C */  lwc1       $f16, 0xc($a2)
/* 63D4 800057D4 C4D20110 */  lwc1       $f18, 0x110($a2)
/* 63D8 800057D8 46128302 */  mul.s      $f12, $f16, $f18
/* 63DC 800057DC 4600603C */  c.lt.s     $f12, $f0
/* 63E0 800057E0 00000000 */  nop
/* 63E4 800057E4 45020012 */  bc1fl      .L80005830
/* 63E8 800057E8 C6040000 */   lwc1      $f4, ($s0)
/* 63EC 800057EC 46146102 */  mul.s      $f4, $f12, $f20
/* 63F0 800057F0 C6080000 */  lwc1       $f8, ($s0)
/* 63F4 800057F4 3C018009 */  lui        $at, %hi(brianBattleFenceXpos)
/* 63F8 800057F8 C430C5A4 */  lwc1       $f16, %lo(brianBattleFenceXpos)($at)
/* 63FC 800057FC 3C018009 */  lui        $at, 0x8009
/* 6400 80005800 46002183 */  div.s      $f6, $f4, $f0
/* 6404 80005804 46026102 */  mul.s      $f4, $f12, $f2
/* 6408 80005808 46083281 */  sub.s      $f10, $f6, $f8
/* 640C 8000580C C6080008 */  lwc1       $f8, 8($s0)
/* 6410 80005810 46002183 */  div.s      $f6, $f4, $f0
/* 6414 80005814 46105480 */  add.s      $f18, $f10, $f16
/* 6418 80005818 E6120018 */  swc1       $f18, 0x18($s0)
/* 641C 8000581C C430C430 */  lwc1       $f16, -0x3bd0($at)
/* 6420 80005820 46083281 */  sub.s      $f10, $f6, $f8
/* 6424 80005824 46105480 */  add.s      $f18, $f10, $f16
/* 6428 80005828 E6120020 */  swc1       $f18, 0x20($s0)
/* 642C 8000582C C6040000 */  lwc1       $f4, ($s0)
.L80005830:
/* 6430 80005830 C6060018 */  lwc1       $f6, 0x18($s0)
/* 6434 80005834 C6100008 */  lwc1       $f16, 8($s0)
/* 6438 80005838 C6120020 */  lwc1       $f18, 0x20($s0)
/* 643C 8000583C 46062200 */  add.s      $f8, $f4, $f6
/* 6440 80005840 3C018009 */  lui        $at, %hi(D_8008C59C)
/* 6444 80005844 C42AC59C */  lwc1       $f10, %lo(D_8008C59C)($at)
/* 6448 80005848 46128100 */  add.s      $f4, $f16, $f18
/* 644C 8000584C 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* 6450 80005850 C426C5A0 */  lwc1       $f6, %lo(D_8008C5A0)($at)
/* 6454 80005854 460A4501 */  sub.s      $f20, $f8, $f10
/* 6458 80005858 AFA60040 */  sw         $a2, 0x40($sp)
/* 645C 8000585C 46062081 */  sub.s      $f2, $f4, $f6
/* 6460 80005860 4614A202 */  mul.s      $f8, $f20, $f20
/* 6464 80005864 00000000 */  nop
/* 6468 80005868 46021282 */  mul.s      $f10, $f2, $f2
/* 646C 8000586C E7A20030 */  swc1       $f2, 0x30($sp)
/* 6470 80005870 0C00D3D8 */  jal        _nsqrtf
/* 6474 80005874 460A4300 */   add.s     $f12, $f8, $f10
/* 6478 80005878 3C188009 */  lui        $t8, %hi(BattleState)
/* 647C 8000587C 9718C592 */  lhu        $t8, %lo(BattleState)($t8)
/* 6480 80005880 8FA60040 */  lw         $a2, 0x40($sp)
/* 6484 80005884 C7A20030 */  lwc1       $f2, 0x30($sp)
/* 6488 80005888 33190100 */  andi       $t9, $t8, 0x100
/* 648C 8000588C 1320001A */  beqz       $t9, .L800058F8
/* 6490 80005890 3C028009 */   lui       $v0, 0x8009
/* 6494 80005894 3C028009 */  lui        $v0, %hi(D_8008C434)
/* 6498 80005898 2442C434 */  addiu      $v0, $v0, %lo(D_8008C434)
/* 649C 8000589C C44C0000 */  lwc1       $f12, ($v0)
/* 64A0 800058A0 4600603C */  c.lt.s     $f12, $f0
/* 64A4 800058A4 00000000 */  nop
/* 64A8 800058A8 45020021 */  bc1fl      .L80005930
/* 64AC 800058AC 26040018 */   addiu     $a0, $s0, 0x18
/* 64B0 800058B0 46146402 */  mul.s      $f16, $f12, $f20
/* 64B4 800058B4 C6040000 */  lwc1       $f4, ($s0)
/* 64B8 800058B8 3C018009 */  lui        $at, %hi(D_8008C59C)
/* 64BC 800058BC C428C59C */  lwc1       $f8, %lo(D_8008C59C)($at)
/* 64C0 800058C0 3C018009 */  lui        $at, 0x8009
/* 64C4 800058C4 46008483 */  div.s      $f18, $f16, $f0
/* 64C8 800058C8 46049181 */  sub.s      $f6, $f18, $f4
/* 64CC 800058CC 46083280 */  add.s      $f10, $f6, $f8
/* 64D0 800058D0 C6060008 */  lwc1       $f6, 8($s0)
/* 64D4 800058D4 E60A0018 */  swc1       $f10, 0x18($s0)
/* 64D8 800058D8 C4500000 */  lwc1       $f16, ($v0)
/* 64DC 800058DC C42AC5A0 */  lwc1       $f10, -0x3a60($at)
/* 64E0 800058E0 46028482 */  mul.s      $f18, $f16, $f2
/* 64E4 800058E4 46009103 */  div.s      $f4, $f18, $f0
/* 64E8 800058E8 46062201 */  sub.s      $f8, $f4, $f6
/* 64EC 800058EC 460A4400 */  add.s      $f16, $f8, $f10
/* 64F0 800058F0 1000000E */  b          .L8000592C
/* 64F4 800058F4 E6100020 */   swc1      $f16, 0x20($s0)
.L800058F8:
/* 64F8 800058F8 2442C434 */  addiu      $v0, $v0, -0x3bcc
/* 64FC 800058FC C4520000 */  lwc1       $f18, ($v0)
/* 6500 80005900 4600903C */  c.lt.s     $f18, $f0
/* 6504 80005904 00000000 */  nop
/* 6508 80005908 45020006 */  bc1fl      .L80005924
/* 650C 8000590C 94CA0008 */   lhu       $t2, 8($a2)
/* 6510 80005910 94C80008 */  lhu        $t0, 8($a2)
/* 6514 80005914 35090020 */  ori        $t1, $t0, 0x20
/* 6518 80005918 10000004 */  b          .L8000592C
/* 651C 8000591C A4C90008 */   sh        $t1, 8($a2)
/* 6520 80005920 94CA0008 */  lhu        $t2, 8($a2)
.L80005924:
/* 6524 80005924 314BFFDF */  andi       $t3, $t2, 0xffdf
/* 6528 80005928 A4CB0008 */  sh         $t3, 8($a2)
.L8000592C:
/* 652C 8000592C 26040018 */  addiu      $a0, $s0, 0x18
.L80005930:
/* 6530 80005930 26050020 */  addiu      $a1, $s0, 0x20
/* 6534 80005934 0C00171B */  jal        func_80005C6C
/* 6538 80005938 02003025 */   or        $a2, $s0, $zero
/* 653C 8000593C C6040018 */  lwc1       $f4, 0x18($s0)
/* 6540 80005940 3C018008 */  lui        $at, %hi(D_8007BA54)
/* 6544 80005944 3C028008 */  lui        $v0, %hi(D_8007BC40)
/* 6548 80005948 E424BA54 */  swc1       $f4, %lo(D_8007BA54)($at)
/* 654C 8000594C C6060020 */  lwc1       $f6, 0x20($s0)
/* 6550 80005950 3C018008 */  lui        $at, %hi(D_8007BA58)
/* 6554 80005954 2442BC40 */  addiu      $v0, $v0, %lo(D_8007BC40)
/* 6558 80005958 E426BA58 */  swc1       $f6, %lo(D_8007BA58)($at)
/* 655C 8000595C 8E030064 */  lw         $v1, 0x64($s0)
/* 6560 80005960 C60A0018 */  lwc1       $f10, 0x18($s0)
/* 6564 80005964 C6080000 */  lwc1       $f8, ($s0)
/* 6568 80005968 C4640018 */  lwc1       $f4, 0x18($v1)
/* 656C 8000596C C4660020 */  lwc1       $f6, 0x20($v1)
/* 6570 80005970 460A4300 */  add.s      $f12, $f8, $f10
/* 6574 80005974 C6120020 */  lwc1       $f18, 0x20($s0)
/* 6578 80005978 46062202 */  mul.s      $f8, $f4, $f6
/* 657C 8000597C C6100008 */  lwc1       $f16, 8($s0)
/* 6580 80005980 97A7003A */  lhu        $a3, 0x3a($sp)
/* 6584 80005984 46128080 */  add.s      $f2, $f16, $f18
/* 6588 80005988 E4480000 */  swc1       $f8, ($v0)
/* 658C 8000598C C60E0004 */  lwc1       $f14, 4($s0)
/* 6590 80005990 44061000 */  mfc1       $a2, $f2
/* 6594 80005994 0C003B98 */  jal        func_8000EE60
/* 6598 80005998 AFA20010 */   sw        $v0, 0x10($sp)
/* 659C 8000599C 3C028008 */  lui        $v0, %hi(D_8007BC40)
/* 65A0 800059A0 2442BC40 */  addiu      $v0, $v0, %lo(D_8007BC40)
/* 65A4 800059A4 C44A0000 */  lwc1       $f10, ($v0)
/* 65A8 800059A8 C6100000 */  lwc1       $f16, ($s0)
/* 65AC 800059AC C6060008 */  lwc1       $f6, 8($s0)
/* 65B0 800059B0 46105481 */  sub.s      $f18, $f10, $f16
/* 65B4 800059B4 E6120018 */  swc1       $f18, 0x18($s0)
/* 65B8 800059B8 C4440008 */  lwc1       $f4, 8($v0)
/* 65BC 800059BC 46062201 */  sub.s      $f8, $f4, $f6
/* 65C0 800059C0 E6080020 */  swc1       $f8, 0x20($s0)
/* 65C4 800059C4 C44A0000 */  lwc1       $f10, ($v0)
/* 65C8 800059C8 E60A0000 */  swc1       $f10, ($s0)
/* 65CC 800059CC C4500004 */  lwc1       $f16, 4($v0)
/* 65D0 800059D0 E6100004 */  swc1       $f16, 4($s0)
/* 65D4 800059D4 C4520008 */  lwc1       $f18, 8($v0)
/* 65D8 800059D8 E6120008 */  swc1       $f18, 8($s0)
/* 65DC 800059DC C444000C */  lwc1       $f4, 0xc($v0)
/* 65E0 800059E0 E604002C */  swc1       $f4, 0x2c($s0)
/* 65E4 800059E4 C4460010 */  lwc1       $f6, 0x10($v0)
/* 65E8 800059E8 E6060030 */  swc1       $f6, 0x30($s0)
/* 65EC 800059EC C4480014 */  lwc1       $f8, 0x14($v0)
/* 65F0 800059F0 E6080034 */  swc1       $f8, 0x34($s0)
/* 65F4 800059F4 944C0018 */  lhu        $t4, 0x18($v0)
/* 65F8 800059F8 A60C0062 */  sh         $t4, 0x62($s0)
/* 65FC 800059FC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 6600 80005A00 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 6604 80005A04 8FB00028 */  lw         $s0, 0x28($sp)
/* 6608 80005A08 03E00008 */  jr         $ra
/* 660C 80005A0C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80005A10
/* 6610 80005A10 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6614 80005A14 AFB40054 */  sw         $s4, 0x54($sp)
/* 6618 80005A18 00A0A025 */  or         $s4, $a1, $zero
/* 661C 80005A1C AFBF0064 */  sw         $ra, 0x64($sp)
/* 6620 80005A20 AFB70060 */  sw         $s7, 0x60($sp)
/* 6624 80005A24 AFB6005C */  sw         $s6, 0x5c($sp)
/* 6628 80005A28 AFB50058 */  sw         $s5, 0x58($sp)
/* 662C 80005A2C AFB30050 */  sw         $s3, 0x50($sp)
/* 6630 80005A30 AFB2004C */  sw         $s2, 0x4c($sp)
/* 6634 80005A34 AFB10048 */  sw         $s1, 0x48($sp)
/* 6638 80005A38 AFB00044 */  sw         $s0, 0x44($sp)
/* 663C 80005A3C F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 6640 80005A40 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 6644 80005A44 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 6648 80005A48 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 664C 80005A4C F7B60018 */  sdc1       $f22, 0x18($sp)
/* 6650 80005A50 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 6654 80005A54 3C0E8008 */  lui        $t6, %hi(HUDState)
/* 6658 80005A58 8DCEB2E4 */  lw         $t6, %lo(HUDState)($t6)
/* 665C 80005A5C 00008025 */  or         $s0, $zero, $zero
/* 6660 80005A60 31CF448D */  andi       $t7, $t6, 0x448d
/* 6664 80005A64 55E00070 */  bnel       $t7, $zero, .L80005C28
/* 6668 80005A68 02001025 */   or        $v0, $s0, $zero
/* 666C 80005A6C 94980008 */  lhu        $t8, 8($a0)
/* 6670 80005A70 3C158008 */  lui        $s5, %hi(D_8007BCE8)
/* 6674 80005A74 33190010 */  andi       $t9, $t8, 0x10
/* 6678 80005A78 5720006B */  bnel       $t9, $zero, .L80005C28
/* 667C 80005A7C 02001025 */   or        $v0, $s0, $zero
/* 6680 80005A80 8EB5BCE8 */  lw         $s5, %lo(D_8007BCE8)($s5)
/* 6684 80005A84 3C168008 */  lui        $s6, %hi(npcPtrs)
/* 6688 80005A88 26D6BCF0 */  addiu      $s6, $s6, %lo(npcPtrs)
/* 668C 80005A8C 12A00065 */  beqz       $s5, .L80005C24
/* 6690 80005A90 3C018007 */   lui       $at, %hi(D_800710C0)
/* 6694 80005A94 C43C10C0 */  lwc1       $f28, %lo(D_800710C0)($at)
/* 6698 80005A98 3C014018 */  lui        $at, 0x4018
/* 669C 80005A9C 4481D800 */  mtc1       $at, $f27
/* 66A0 80005AA0 3C01C018 */  lui        $at, 0xc018
/* 66A4 80005AA4 4481C800 */  mtc1       $at, $f25
/* 66A8 80005AA8 3C01402E */  lui        $at, 0x402e
/* 66AC 80005AAC 4481B800 */  mtc1       $at, $f23
/* 66B0 80005AB0 3C01C02E */  lui        $at, 0xc02e
/* 66B4 80005AB4 3C138008 */  lui        $s3, 0x8008
/* 66B8 80005AB8 3C128008 */  lui        $s2, 0x8008
/* 66BC 80005ABC 4481A800 */  mtc1       $at, $f21
/* 66C0 80005AC0 4480F000 */  mtc1       $zero, $f30
/* 66C4 80005AC4 4480D000 */  mtc1       $zero, $f26
/* 66C8 80005AC8 4480C000 */  mtc1       $zero, $f24
/* 66CC 80005ACC 4480B000 */  mtc1       $zero, $f22
/* 66D0 80005AD0 4480A000 */  mtc1       $zero, $f20
/* 66D4 80005AD4 2652BC30 */  addiu      $s2, $s2, -0x43d0
/* 66D8 80005AD8 2673BD30 */  addiu      $s3, $s3, -0x42d0
/* 66DC 80005ADC 24170210 */  addiu      $s7, $zero, 0x210
/* 66E0 80005AE0 8ED10000 */  lw         $s1, ($s6)
.L80005AE4:
/* 66E4 80005AE4 C68A0004 */  lwc1       $f10, 4($s4)
/* 66E8 80005AE8 C6860000 */  lwc1       $f6, ($s4)
/* 66EC 80005AEC C6280004 */  lwc1       $f8, 4($s1)
/* 66F0 80005AF0 C6240000 */  lwc1       $f4, ($s1)
/* 66F4 80005AF4 C6320008 */  lwc1       $f18, 8($s1)
/* 66F8 80005AF8 460A4081 */  sub.s      $f2, $f8, $f10
/* 66FC 80005AFC 26D60004 */  addiu      $s6, $s6, 4
/* 6700 80005B00 46062381 */  sub.s      $f14, $f4, $f6
/* 6704 80005B04 C6840008 */  lwc1       $f4, 8($s4)
/* 6708 80005B08 46001021 */  cvt.d.s    $f0, $f2
/* 670C 80005B0C 46049401 */  sub.s      $f16, $f18, $f4
/* 6710 80005B10 4620A03C */  c.lt.d     $f20, $f0
/* 6714 80005B14 00000000 */  nop
/* 6718 80005B18 4502003E */  bc1fl      .L80005C14
/* 671C 80005B1C 26B5FFFF */   addiu     $s5, $s5, -1
/* 6720 80005B20 4636003C */  c.lt.d     $f0, $f22
/* 6724 80005B24 00000000 */  nop
/* 6728 80005B28 4502003A */  bc1fl      .L80005C14
/* 672C 80005B2C 26B5FFFF */   addiu     $s5, $s5, -1
/* 6730 80005B30 96280060 */  lhu        $t0, 0x60($s1)
/* 6734 80005B34 460E7182 */  mul.s      $f6, $f14, $f14
/* 6738 80005B38 3C014361 */  lui        $at, 0x4361
/* 673C 80005B3C 31091000 */  andi       $t1, $t0, 0x1000
/* 6740 80005B40 46108202 */  mul.s      $f8, $f16, $f16
/* 6744 80005B44 11200003 */  beqz       $t1, .L80005B54
/* 6748 80005B48 02402825 */   or        $a1, $s2, $zero
/* 674C 80005B4C 10000003 */  b          .L80005B5C
/* 6750 80005B50 4600E006 */   mov.s     $f0, $f28
.L80005B54:
/* 6754 80005B54 44810000 */  mtc1       $at, $f0
/* 6758 80005B58 00000000 */  nop
.L80005B5C:
/* 675C 80005B5C 46083280 */  add.s      $f10, $f6, $f8
/* 6760 80005B60 4600503C */  c.lt.s     $f10, $f0
/* 6764 80005B64 00000000 */  nop
/* 6768 80005B68 4502002A */  bc1fl      .L80005C14
/* 676C 80005B6C 26B5FFFF */   addiu     $s5, $s5, -1
/* 6770 80005B70 E64E0000 */  swc1       $f14, ($s2)
/* 6774 80005B74 E6500004 */  swc1       $f16, 4($s2)
/* 6778 80005B78 0C008CBD */  jal        func_800232F4
/* 677C 80005B7C C68C0010 */   lwc1      $f12, 0x10($s4)
/* 6780 80005B80 C6520004 */  lwc1       $f18, 4($s2)
/* 6784 80005B84 4612F03E */  c.le.s     $f30, $f18
/* 6788 80005B88 00000000 */  nop
/* 678C 80005B8C 45020021 */  bc1fl      .L80005C14
/* 6790 80005B90 26B5FFFF */   addiu     $s5, $s5, -1
/* 6794 80005B94 C6440000 */  lwc1       $f4, ($s2)
/* 6798 80005B98 46002021 */  cvt.d.s    $f0, $f4
/* 679C 80005B9C 4620C03C */  c.lt.d     $f24, $f0
/* 67A0 80005BA0 00000000 */  nop
/* 67A4 80005BA4 4502001B */  bc1fl      .L80005C14
/* 67A8 80005BA8 26B5FFFF */   addiu     $s5, $s5, -1
/* 67AC 80005BAC 463A003C */  c.lt.d     $f0, $f26
/* 67B0 80005BB0 02601025 */  or         $v0, $s3, $zero
/* 67B4 80005BB4 2624FFEC */  addiu      $a0, $s1, -0x14
/* 67B8 80005BB8 45020016 */  bc1fl      .L80005C14
/* 67BC 80005BBC 26B5FFFF */   addiu     $s5, $s5, -1
/* 67C0 80005BC0 10930013 */  beq        $a0, $s3, .L80005C10
/* 67C4 80005BC4 26100001 */   addiu     $s0, $s0, 1
/* 67C8 80005BC8 02335023 */  subu       $t2, $s1, $s3
/* 67CC 80005BCC 254BFFEC */  addiu      $t3, $t2, -0x14
/* 67D0 80005BD0 0177001B */  divu       $zero, $t3, $s7
/* 67D4 80005BD4 00002810 */  mfhi       $a1
/* 67D8 80005BD8 00A01825 */  or         $v1, $a1, $zero
/* 67DC 80005BDC 16E00002 */  bnez       $s7, .L80005BE8
/* 67E0 80005BE0 00000000 */   nop
/* 67E4 80005BE4 0007000D */  break      7
.L80005BE8:
/* 67E8 80005BE8 00B31821 */   addu      $v1, $a1, $s3
/* 67EC 80005BEC 50A00006 */  beql       $a1, $zero, .L80005C08
/* 67F0 80005BF0 24420210 */   addiu     $v0, $v0, 0x210
.L80005BF4:
/* 67F4 80005BF4 24420084 */  addiu      $v0, $v0, 0x84
/* 67F8 80005BF8 1462FFFE */  bne        $v1, $v0, .L80005BF4
/* 67FC 80005BFC 26100001 */   addiu     $s0, $s0, 1
/* 6800 80005C00 10440003 */  beq        $v0, $a0, .L80005C10
.L80005C04:
/* 6804 80005C04 24420210 */   addiu     $v0, $v0, 0x210
.L80005C08:
/* 6808 80005C08 1444FFFE */  bne        $v0, $a0, .L80005C04
/* 680C 80005C0C 26100004 */   addiu     $s0, $s0, 4
.L80005C10:
/* 6810 80005C10 26B5FFFF */  addiu      $s5, $s5, -1
.L80005C14:
/* 6814 80005C14 52A00004 */  beql       $s5, $zero, .L80005C28
/* 6818 80005C18 02001025 */   or        $v0, $s0, $zero
/* 681C 80005C1C 5200FFB1 */  beql       $s0, $zero, .L80005AE4
/* 6820 80005C20 8ED10000 */   lw        $s1, ($s6)
.L80005C24:
/* 6824 80005C24 02001025 */  or         $v0, $s0, $zero
.L80005C28:
/* 6828 80005C28 8FBF0064 */  lw         $ra, 0x64($sp)
/* 682C 80005C2C D7B40010 */  ldc1       $f20, 0x10($sp)
/* 6830 80005C30 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 6834 80005C34 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 6838 80005C38 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 683C 80005C3C D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 6840 80005C40 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 6844 80005C44 8FB00044 */  lw         $s0, 0x44($sp)
/* 6848 80005C48 8FB10048 */  lw         $s1, 0x48($sp)
/* 684C 80005C4C 8FB2004C */  lw         $s2, 0x4c($sp)
/* 6850 80005C50 8FB30050 */  lw         $s3, 0x50($sp)
/* 6854 80005C54 8FB40054 */  lw         $s4, 0x54($sp)
/* 6858 80005C58 8FB50058 */  lw         $s5, 0x58($sp)
/* 685C 80005C5C 8FB6005C */  lw         $s6, 0x5c($sp)
/* 6860 80005C60 8FB70060 */  lw         $s7, 0x60($sp)
/* 6864 80005C64 03E00008 */  jr         $ra
/* 6868 80005C68 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_80005C6C
/* 686C 80005C6C 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* 6870 80005C70 AFB60060 */  sw         $s6, 0x60($sp)
/* 6874 80005C74 AFB5005C */  sw         $s5, 0x5c($sp)
/* 6878 80005C78 AFB30054 */  sw         $s3, 0x54($sp)
/* 687C 80005C7C 00C09825 */  or         $s3, $a2, $zero
/* 6880 80005C80 0080A825 */  or         $s5, $a0, $zero
/* 6884 80005C84 00A0B025 */  or         $s6, $a1, $zero
/* 6888 80005C88 AFBF0064 */  sw         $ra, 0x64($sp)
/* 688C 80005C8C AFB40058 */  sw         $s4, 0x58($sp)
/* 6890 80005C90 AFB20050 */  sw         $s2, 0x50($sp)
/* 6894 80005C94 AFB1004C */  sw         $s1, 0x4c($sp)
/* 6898 80005C98 AFB00048 */  sw         $s0, 0x48($sp)
/* 689C 80005C9C F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 68A0 80005CA0 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 68A4 80005CA4 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 68A8 80005CA8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 68AC 80005CAC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 68B0 80005CB0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 68B4 80005CB4 C6780028 */  lwc1       $f24, 0x28($s3)
/* 68B8 80005CB8 C6760024 */  lwc1       $f22, 0x24($s3)
/* 68BC 80005CBC C6B40000 */  lwc1       $f20, ($s5)
/* 68C0 80005CC0 C6720000 */  lwc1       $f18, ($s3)
/* 68C4 80005CC4 4616C782 */  mul.s      $f30, $f24, $f22
/* 68C8 80005CC8 C6D60000 */  lwc1       $f22, ($s6)
/* 68CC 80005CCC C6780008 */  lwc1       $f24, 8($s3)
/* 68D0 80005CD0 3C118008 */  lui        $s1, %hi(D_8007D08C)
/* 68D4 80005CD4 8E31D08C */  lw         $s1, %lo(D_8007D08C)($s1)
/* 68D8 80005CD8 4612A680 */  add.s      $f26, $f20, $f18
/* 68DC 80005CDC 0000A025 */  or         $s4, $zero, $zero
/* 68E0 80005CE0 1220003A */  beqz       $s1, .L80005DCC
/* 68E4 80005CE4 4618B700 */   add.s     $f28, $f22, $f24
/* 68E8 80005CE8 3C128008 */  lui        $s2, %hi(D_8007D090)
/* 68EC 80005CEC 12200037 */  beqz       $s1, .L80005DCC
/* 68F0 80005CF0 2652D090 */   addiu     $s2, $s2, %lo(D_8007D090)
/* 68F4 80005CF4 8E500000 */  lw         $s0, ($s2)
.L80005CF8:
/* 68F8 80005CF8 26520004 */  addiu      $s2, $s2, 4
/* 68FC 80005CFC C6080028 */  lwc1       $f8, 0x28($s0)
/* 6900 80005D00 C60A0024 */  lwc1       $f10, 0x24($s0)
/* 6904 80005D04 C6040000 */  lwc1       $f4, ($s0)
/* 6908 80005D08 C6060008 */  lwc1       $f6, 8($s0)
/* 690C 80005D0C 460A4402 */  mul.s      $f16, $f8, $f10
/* 6910 80005D10 4604D501 */  sub.s      $f20, $f26, $f4
/* 6914 80005D14 4606E581 */  sub.s      $f22, $f28, $f6
/* 6918 80005D18 461E8600 */  add.s      $f24, $f16, $f30
/* 691C 80005D1C 4618A03C */  c.lt.s     $f20, $f24
/* 6920 80005D20 00000000 */  nop
/* 6924 80005D24 45000025 */  bc1f       .L80005DBC
/* 6928 80005D28 00000000 */   nop
/* 692C 80005D2C 4600C007 */  neg.s      $f0, $f24
/* 6930 80005D30 4614003C */  c.lt.s     $f0, $f20
/* 6934 80005D34 00000000 */  nop
/* 6938 80005D38 45000020 */  bc1f       .L80005DBC
/* 693C 80005D3C 00000000 */   nop
/* 6940 80005D40 4618B03C */  c.lt.s     $f22, $f24
/* 6944 80005D44 00000000 */  nop
/* 6948 80005D48 4500001C */  bc1f       .L80005DBC
/* 694C 80005D4C 00000000 */   nop
/* 6950 80005D50 4616003C */  c.lt.s     $f0, $f22
/* 6954 80005D54 00000000 */  nop
/* 6958 80005D58 45000018 */  bc1f       .L80005DBC
/* 695C 80005D5C 00000000 */   nop
/* 6960 80005D60 4614A482 */  mul.s      $f18, $f20, $f20
/* 6964 80005D64 00000000 */  nop
/* 6968 80005D68 4616B102 */  mul.s      $f4, $f22, $f22
/* 696C 80005D6C 0C00D3D8 */  jal        _nsqrtf
/* 6970 80005D70 46049300 */   add.s     $f12, $f18, $f4
/* 6974 80005D74 4618003C */  c.lt.s     $f0, $f24
/* 6978 80005D78 00000000 */  nop
/* 697C 80005D7C 4500000F */  bc1f       .L80005DBC
/* 6980 80005D80 00000000 */   nop
/* 6984 80005D84 4600C083 */  div.s      $f2, $f24, $f0
/* 6988 80005D88 C6060000 */  lwc1       $f6, ($s0)
/* 698C 80005D8C C66A0000 */  lwc1       $f10, ($s3)
/* 6990 80005D90 24140001 */  addiu      $s4, $zero, 1
/* 6994 80005D94 4602A502 */  mul.s      $f20, $f20, $f2
/* 6998 80005D98 46143200 */  add.s      $f8, $f6, $f20
/* 699C 80005D9C 4602B582 */  mul.s      $f22, $f22, $f2
/* 69A0 80005DA0 460A4401 */  sub.s      $f16, $f8, $f10
/* 69A4 80005DA4 E6B00000 */  swc1       $f16, ($s5)
/* 69A8 80005DA8 C6120008 */  lwc1       $f18, 8($s0)
/* 69AC 80005DAC C6660008 */  lwc1       $f6, 8($s3)
/* 69B0 80005DB0 46169100 */  add.s      $f4, $f18, $f22
/* 69B4 80005DB4 46062201 */  sub.s      $f8, $f4, $f6
/* 69B8 80005DB8 E6C80000 */  swc1       $f8, ($s6)
.L80005DBC:
/* 69BC 80005DBC 16800003 */  bnez       $s4, .L80005DCC
/* 69C0 80005DC0 2631FFFF */   addiu     $s1, $s1, -1
/* 69C4 80005DC4 5620FFCC */  bnel       $s1, $zero, .L80005CF8
/* 69C8 80005DC8 8E500000 */   lw        $s0, ($s2)
.L80005DCC:
/* 69CC 80005DCC 3C118008 */  lui        $s1, %hi(D_8007BCE8)
/* 69D0 80005DD0 8E31BCE8 */  lw         $s1, %lo(D_8007BCE8)($s1)
/* 69D4 80005DD4 3C128008 */  lui        $s2, %hi(npcPtrs)
/* 69D8 80005DD8 1220003B */  beqz       $s1, .L80005EC8
/* 69DC 80005DDC 00000000 */   nop
/* 69E0 80005DE0 16800039 */  bnez       $s4, .L80005EC8
/* 69E4 80005DE4 2652BCF0 */   addiu     $s2, $s2, %lo(npcPtrs)
/* 69E8 80005DE8 12200037 */  beqz       $s1, .L80005EC8
/* 69EC 80005DEC 00000000 */   nop
/* 69F0 80005DF0 8E500000 */  lw         $s0, ($s2)
.L80005DF4:
/* 69F4 80005DF4 26520004 */  addiu      $s2, $s2, 4
/* 69F8 80005DF8 C6120028 */  lwc1       $f18, 0x28($s0)
/* 69FC 80005DFC C6040024 */  lwc1       $f4, 0x24($s0)
/* 6A00 80005E00 C60A0000 */  lwc1       $f10, ($s0)
/* 6A04 80005E04 C6100008 */  lwc1       $f16, 8($s0)
/* 6A08 80005E08 46049182 */  mul.s      $f6, $f18, $f4
/* 6A0C 80005E0C 460AD501 */  sub.s      $f20, $f26, $f10
/* 6A10 80005E10 4610E581 */  sub.s      $f22, $f28, $f16
/* 6A14 80005E14 461E3600 */  add.s      $f24, $f6, $f30
/* 6A18 80005E18 4618A03C */  c.lt.s     $f20, $f24
/* 6A1C 80005E1C 00000000 */  nop
/* 6A20 80005E20 45000025 */  bc1f       .L80005EB8
/* 6A24 80005E24 00000000 */   nop
/* 6A28 80005E28 4600C007 */  neg.s      $f0, $f24
/* 6A2C 80005E2C 4614003C */  c.lt.s     $f0, $f20
/* 6A30 80005E30 00000000 */  nop
/* 6A34 80005E34 45000020 */  bc1f       .L80005EB8
/* 6A38 80005E38 00000000 */   nop
/* 6A3C 80005E3C 4618B03C */  c.lt.s     $f22, $f24
/* 6A40 80005E40 00000000 */  nop
/* 6A44 80005E44 4500001C */  bc1f       .L80005EB8
/* 6A48 80005E48 00000000 */   nop
/* 6A4C 80005E4C 4616003C */  c.lt.s     $f0, $f22
/* 6A50 80005E50 00000000 */  nop
/* 6A54 80005E54 45000018 */  bc1f       .L80005EB8
/* 6A58 80005E58 00000000 */   nop
/* 6A5C 80005E5C 4614A202 */  mul.s      $f8, $f20, $f20
/* 6A60 80005E60 00000000 */  nop
/* 6A64 80005E64 4616B282 */  mul.s      $f10, $f22, $f22
/* 6A68 80005E68 0C00D3D8 */  jal        _nsqrtf
/* 6A6C 80005E6C 460A4300 */   add.s     $f12, $f8, $f10
/* 6A70 80005E70 4618003C */  c.lt.s     $f0, $f24
/* 6A74 80005E74 00000000 */  nop
/* 6A78 80005E78 4500000F */  bc1f       .L80005EB8
/* 6A7C 80005E7C 00000000 */   nop
/* 6A80 80005E80 4600C083 */  div.s      $f2, $f24, $f0
/* 6A84 80005E84 C6100000 */  lwc1       $f16, ($s0)
/* 6A88 80005E88 C6640000 */  lwc1       $f4, ($s3)
/* 6A8C 80005E8C 24140001 */  addiu      $s4, $zero, 1
/* 6A90 80005E90 4602A502 */  mul.s      $f20, $f20, $f2
/* 6A94 80005E94 46148480 */  add.s      $f18, $f16, $f20
/* 6A98 80005E98 4602B582 */  mul.s      $f22, $f22, $f2
/* 6A9C 80005E9C 46049181 */  sub.s      $f6, $f18, $f4
/* 6AA0 80005EA0 E6A60000 */  swc1       $f6, ($s5)
/* 6AA4 80005EA4 C6080008 */  lwc1       $f8, 8($s0)
/* 6AA8 80005EA8 C6700008 */  lwc1       $f16, 8($s3)
/* 6AAC 80005EAC 46164280 */  add.s      $f10, $f8, $f22
/* 6AB0 80005EB0 46105481 */  sub.s      $f18, $f10, $f16
/* 6AB4 80005EB4 E6D20000 */  swc1       $f18, ($s6)
.L80005EB8:
/* 6AB8 80005EB8 16800003 */  bnez       $s4, .L80005EC8
/* 6ABC 80005EBC 2631FFFF */   addiu     $s1, $s1, -1
/* 6AC0 80005EC0 5620FFCC */  bnel       $s1, $zero, .L80005DF4
/* 6AC4 80005EC4 8E500000 */   lw        $s0, ($s2)
.L80005EC8:
/* 6AC8 80005EC8 3C118008 */  lui        $s1, %hi(D_80084F38)
/* 6ACC 80005ECC 8E314F38 */  lw         $s1, %lo(D_80084F38)($s1)
/* 6AD0 80005ED0 3C128008 */  lui        $s2, %hi(D_80084F40)
/* 6AD4 80005ED4 5220003E */  beql       $s1, $zero, .L80005FD0
/* 6AD8 80005ED8 8FBF0064 */   lw        $ra, 0x64($sp)
/* 6ADC 80005EDC 1680003B */  bnez       $s4, .L80005FCC
/* 6AE0 80005EE0 26524F40 */   addiu     $s2, $s2, %lo(D_80084F40)
/* 6AE4 80005EE4 5220003A */  beql       $s1, $zero, .L80005FD0
/* 6AE8 80005EE8 8FBF0064 */   lw        $ra, 0x64($sp)
/* 6AEC 80005EEC 4600F3A1 */  cvt.d.s    $f14, $f30
/* 6AF0 80005EF0 8E500000 */  lw         $s0, ($s2)
.L80005EF4:
/* 6AF4 80005EF4 26520004 */  addiu      $s2, $s2, 4
/* 6AF8 80005EF8 C6080010 */  lwc1       $f8, 0x10($s0)
/* 6AFC 80005EFC C6040000 */  lwc1       $f4, ($s0)
/* 6B00 80005F00 C6060008 */  lwc1       $f6, 8($s0)
/* 6B04 80005F04 46004021 */  cvt.d.s    $f0, $f8
/* 6B08 80005F08 4604D501 */  sub.s      $f20, $f26, $f4
/* 6B0C 80005F0C 46200280 */  add.d      $f10, $f0, $f0
/* 6B10 80005F10 4606E581 */  sub.s      $f22, $f28, $f6
/* 6B14 80005F14 462A7400 */  add.d      $f16, $f14, $f10
/* 6B18 80005F18 46208620 */  cvt.s.d    $f24, $f16
/* 6B1C 80005F1C 4618A03C */  c.lt.s     $f20, $f24
/* 6B20 80005F20 00000000 */  nop
/* 6B24 80005F24 45000025 */  bc1f       .L80005FBC
/* 6B28 80005F28 00000000 */   nop
/* 6B2C 80005F2C 4600C007 */  neg.s      $f0, $f24
/* 6B30 80005F30 4614003C */  c.lt.s     $f0, $f20
/* 6B34 80005F34 00000000 */  nop
/* 6B38 80005F38 45000020 */  bc1f       .L80005FBC
/* 6B3C 80005F3C 00000000 */   nop
/* 6B40 80005F40 4618B03C */  c.lt.s     $f22, $f24
/* 6B44 80005F44 00000000 */  nop
/* 6B48 80005F48 4500001C */  bc1f       .L80005FBC
/* 6B4C 80005F4C 00000000 */   nop
/* 6B50 80005F50 4616003C */  c.lt.s     $f0, $f22
/* 6B54 80005F54 00000000 */  nop
/* 6B58 80005F58 45000018 */  bc1f       .L80005FBC
/* 6B5C 80005F5C 00000000 */   nop
/* 6B60 80005F60 4614A482 */  mul.s      $f18, $f20, $f20
/* 6B64 80005F64 F7AE0068 */  sdc1       $f14, 0x68($sp)
/* 6B68 80005F68 4616B102 */  mul.s      $f4, $f22, $f22
/* 6B6C 80005F6C 0C00D3D8 */  jal        _nsqrtf
/* 6B70 80005F70 46049300 */   add.s     $f12, $f18, $f4
/* 6B74 80005F74 4618003C */  c.lt.s     $f0, $f24
/* 6B78 80005F78 D7AE0068 */  ldc1       $f14, 0x68($sp)
/* 6B7C 80005F7C 4500000F */  bc1f       .L80005FBC
/* 6B80 80005F80 00000000 */   nop
/* 6B84 80005F84 4600C083 */  div.s      $f2, $f24, $f0
/* 6B88 80005F88 C6060000 */  lwc1       $f6, ($s0)
/* 6B8C 80005F8C C66A0000 */  lwc1       $f10, ($s3)
/* 6B90 80005F90 24140001 */  addiu      $s4, $zero, 1
/* 6B94 80005F94 4602A502 */  mul.s      $f20, $f20, $f2
/* 6B98 80005F98 46143200 */  add.s      $f8, $f6, $f20
/* 6B9C 80005F9C 4602B582 */  mul.s      $f22, $f22, $f2
/* 6BA0 80005FA0 460A4401 */  sub.s      $f16, $f8, $f10
/* 6BA4 80005FA4 E6B00000 */  swc1       $f16, ($s5)
/* 6BA8 80005FA8 C6120008 */  lwc1       $f18, 8($s0)
/* 6BAC 80005FAC C6660008 */  lwc1       $f6, 8($s3)
/* 6BB0 80005FB0 46169100 */  add.s      $f4, $f18, $f22
/* 6BB4 80005FB4 46062201 */  sub.s      $f8, $f4, $f6
/* 6BB8 80005FB8 E6C80000 */  swc1       $f8, ($s6)
.L80005FBC:
/* 6BBC 80005FBC 16800003 */  bnez       $s4, .L80005FCC
/* 6BC0 80005FC0 2631FFFF */   addiu     $s1, $s1, -1
/* 6BC4 80005FC4 5620FFCB */  bnel       $s1, $zero, .L80005EF4
/* 6BC8 80005FC8 8E500000 */   lw        $s0, ($s2)
.L80005FCC:
/* 6BCC 80005FCC 8FBF0064 */  lw         $ra, 0x64($sp)
.L80005FD0:
/* 6BD0 80005FD0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 6BD4 80005FD4 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 6BD8 80005FD8 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 6BDC 80005FDC D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 6BE0 80005FE0 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 6BE4 80005FE4 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 6BE8 80005FE8 8FB00048 */  lw         $s0, 0x48($sp)
/* 6BEC 80005FEC 8FB1004C */  lw         $s1, 0x4c($sp)
/* 6BF0 80005FF0 8FB20050 */  lw         $s2, 0x50($sp)
/* 6BF4 80005FF4 8FB30054 */  lw         $s3, 0x54($sp)
/* 6BF8 80005FF8 8FB40058 */  lw         $s4, 0x58($sp)
/* 6BFC 80005FFC 8FB5005C */  lw         $s5, 0x5c($sp)
/* 6C00 80006000 8FB60060 */  lw         $s6, 0x60($sp)
/* 6C04 80006004 03E00008 */  jr         $ra
/* 6C08 80006008 27BD00B0 */   addiu     $sp, $sp, 0xb0

glabel func_8000600C
/* 6C0C 8000600C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6C10 80006010 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C14 80006014 00803825 */  or         $a3, $a0, $zero
/* 6C18 80006018 00A03025 */  or         $a2, $a1, $zero
/* 6C1C 8000601C 94C20062 */  lhu        $v0, 0x62($a2)
/* 6C20 80006020 24010001 */  addiu      $at, $zero, 1
/* 6C24 80006024 00027983 */  sra        $t7, $v0, 6
/* 6C28 80006028 31F80007 */  andi       $t8, $t7, 7
/* 6C2C 8000602C 53000026 */  beql       $t8, $zero, .L800060C8
/* 6C30 80006030 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6C34 80006034 13010005 */  beq        $t8, $at, .L8000604C
/* 6C38 80006038 24010002 */   addiu     $at, $zero, 2
/* 6C3C 8000603C 53010010 */  beql       $t8, $at, .L80006080
/* 6C40 80006040 3C014000 */   lui       $at, 0x4000
/* 6C44 80006044 10000020 */  b          .L800060C8
/* 6C48 80006048 8FBF0014 */   lw        $ra, 0x14($sp)
.L8000604C:
/* 6C4C 8000604C 94E20124 */  lhu        $v0, 0x124($a3)
/* 6C50 80006050 24040001 */  addiu      $a0, $zero, 1
/* 6C54 80006054 24050004 */  addiu      $a1, $zero, 4
/* 6C58 80006058 54400006 */  bnel       $v0, $zero, .L80006074
/* 6C5C 8000605C 2459FFFF */   addiu     $t9, $v0, -1
/* 6C60 80006060 0C001AFB */  jal        func_80006BEC
/* 6C64 80006064 AFA70018 */   sw        $a3, 0x18($sp)
/* 6C68 80006068 8FA70018 */  lw         $a3, 0x18($sp)
/* 6C6C 8000606C 94E20124 */  lhu        $v0, 0x124($a3)
/* 6C70 80006070 2459FFFF */  addiu      $t9, $v0, -1
.L80006074:
/* 6C74 80006074 10000013 */  b          .L800060C4
/* 6C78 80006078 A4F90124 */   sh        $t9, 0x124($a3)
/* 6C7C 8000607C 3C014000 */  lui        $at, 0x4000
.L80006080:
/* 6C80 80006080 44816000 */  mtc1       $at, $f12
/* 6C84 80006084 C4C4002C */  lwc1       $f4, 0x2c($a2)
/* 6C88 80006088 C4C60000 */  lwc1       $f6, ($a2)
/* 6C8C 8000608C C4CA0034 */  lwc1       $f10, 0x34($a2)
/* 6C90 80006090 460C2002 */  mul.s      $f0, $f4, $f12
/* 6C94 80006094 C4D00008 */  lwc1       $f16, 8($a2)
/* 6C98 80006098 C4C40018 */  lwc1       $f4, 0x18($a2)
/* 6C9C 8000609C 460C5082 */  mul.s      $f2, $f10, $f12
/* 6CA0 800060A0 46003200 */  add.s      $f8, $f6, $f0
/* 6CA4 800060A4 46028480 */  add.s      $f18, $f16, $f2
/* 6CA8 800060A8 E4C80000 */  swc1       $f8, ($a2)
/* 6CAC 800060AC C4C80020 */  lwc1       $f8, 0x20($a2)
/* 6CB0 800060B0 46002180 */  add.s      $f6, $f4, $f0
/* 6CB4 800060B4 E4D20008 */  swc1       $f18, 8($a2)
/* 6CB8 800060B8 46024280 */  add.s      $f10, $f8, $f2
/* 6CBC 800060BC E4C60018 */  swc1       $f6, 0x18($a2)
/* 6CC0 800060C0 E4CA0020 */  swc1       $f10, 0x20($a2)
.L800060C4:
/* 6CC4 800060C4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800060C8:
/* 6CC8 800060C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6CCC 800060CC 03E00008 */  jr         $ra
/* 6CD0 800060D0 00000000 */   nop

glabel doorSomething
/* 6CD4 800060D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6CD8 800060D8 3C038008 */  lui        $v1, %hi(temp_CurrMap)
/* 6CDC 800060DC 24635368 */  addiu      $v1, $v1, %lo(temp_CurrMap)
/* 6CE0 800060E0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6CE4 800060E4 9466000C */  lhu        $a2, 0xc($v1)
/* 6CE8 800060E8 3C018008 */  lui        $at, 0x8008
/* 6CEC 800060EC 24180003 */  addiu      $t8, $zero, 3
/* 6CF0 800060F0 00061203 */  sra        $v0, $a2, 8
/* 6CF4 800060F4 304E000F */  andi       $t6, $v0, 0xf
/* 6CF8 800060F8 30CF0004 */  andi       $t7, $a2, 4
/* 6CFC 800060FC 01C01025 */  or         $v0, $t6, $zero
/* 6D00 80006100 11E0001A */  beqz       $t7, .L8000616C
/* 6D04 80006104 AC26BA4C */   sw        $a2, -0x45b4($at)
/* 6D08 80006108 3C018008 */  lui        $at, %hi(brianAction)
/* 6D0C 8000610C 2419001E */  addiu      $t9, $zero, 0x1e
/* 6D10 80006110 A438BAB8 */  sh         $t8, %lo(brianAction)($at)
/* 6D14 80006114 A439BABC */  sh         $t9, -0x4544($at)
/* 6D18 80006118 A420BABE */  sh         $zero, -0x4542($at)
/* 6D1C 8000611C 3C088008 */  lui        $t0, %hi(D_8007BB2C)
/* 6D20 80006120 9508BB2C */  lhu        $t0, %lo(D_8007BB2C)($t0)
/* 6D24 80006124 3C058008 */  lui        $a1, %hi(tempCurrAnim)
/* 6D28 80006128 8CA5BC2C */  lw         $a1, %lo(tempCurrAnim)($a1)
/* 6D2C 8000612C 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 6D30 80006130 3C048008 */  lui        $a0, 0x8008
/* 6D34 80006134 240A0001 */  addiu      $t2, $zero, 1
/* 6D38 80006138 240B0001 */  addiu      $t3, $zero, 1
/* 6D3C 8000613C 35090001 */  ori        $t1, $t0, 1
/* 6D40 80006140 A429BB2C */  sh         $t1, %lo(D_8007BB2C)($at)
/* 6D44 80006144 AFAB0014 */  sw         $t3, 0x14($sp)
/* 6D48 80006148 AFAA0010 */  sw         $t2, 0x10($sp)
/* 6D4C 8000614C 2484BACC */  addiu      $a0, $a0, -0x4534
/* 6D50 80006150 24060001 */  addiu      $a2, $zero, 1
/* 6D54 80006154 0C00762C */  jal        updateAnim
/* 6D58 80006158 00A03825 */   or        $a3, $a1, $zero
/* 6D5C 8000615C 240C0013 */  addiu      $t4, $zero, 0x13
/* 6D60 80006160 3C018008 */  lui        $at, %hi(transitionFadeTimer)
/* 6D64 80006164 10000072 */  b          .L80006330
/* 6D68 80006168 AC2CB2EC */   sw        $t4, %lo(transitionFadeTimer)($at)
.L8000616C:
/* 6D6C 8000616C 24010001 */  addiu      $at, $zero, 1
/* 6D70 80006170 1041000B */  beq        $v0, $at, .L800061A0
/* 6D74 80006174 3C078008 */   lui       $a3, 0x8008
/* 6D78 80006178 24010002 */  addiu      $at, $zero, 2
/* 6D7C 8000617C 10410034 */  beq        $v0, $at, .L80006250
/* 6D80 80006180 3C048008 */   lui       $a0, 0x8008
/* 6D84 80006184 24010003 */  addiu      $at, $zero, 3
/* 6D88 80006188 10410031 */  beq        $v0, $at, .L80006250
/* 6D8C 8000618C 24010004 */   addiu     $at, $zero, 4
/* 6D90 80006190 10410045 */  beq        $v0, $at, .L800062A8
/* 6D94 80006194 3C188008 */   lui       $t8, 0x8008
/* 6D98 80006198 10000066 */  b          .L80006334
/* 6D9C 8000619C 8FBF001C */   lw        $ra, 0x1c($sp)
.L800061A0:
/* 6DA0 800061A0 3C018008 */  lui        $at, %hi(brianAction)
/* 6DA4 800061A4 240D0008 */  addiu      $t5, $zero, 8
/* 6DA8 800061A8 240E001E */  addiu      $t6, $zero, 0x1e
/* 6DAC 800061AC 44800000 */  mtc1       $zero, $f0
/* 6DB0 800061B0 A42DBAB8 */  sh         $t5, %lo(brianAction)($at)
/* 6DB4 800061B4 A42EBABC */  sh         $t6, -0x4544($at)
/* 6DB8 800061B8 A420BABE */  sh         $zero, -0x4542($at)
/* 6DBC 800061BC C46C0014 */  lwc1       $f12, 0x14($v1)
/* 6DC0 800061C0 3C018008 */  lui        $at, %hi(BrianSideTiltMult)
/* 6DC4 800061C4 E420BAE0 */  swc1       $f0, %lo(BrianSideTiltMult)($at)
/* 6DC8 800061C8 3C018008 */  lui        $at, %hi(BrianFwdTiltMult)
/* 6DCC 800061CC E420BAD8 */  swc1       $f0, %lo(BrianFwdTiltMult)($at)
/* 6DD0 800061D0 3C014220 */  lui        $at, 0x4220
/* 6DD4 800061D4 44812000 */  mtc1       $at, $f4
/* 6DD8 800061D8 24E5BC30 */  addiu      $a1, $a3, -0x43d0
/* 6DDC 800061DC 3C018008 */  lui        $at, %hi(BrianZRotation)
/* 6DE0 800061E0 E4A00000 */  swc1       $f0, ($a1)
/* 6DE4 800061E4 E4A40004 */  swc1       $f4, 4($a1)
/* 6DE8 800061E8 0C008CBD */  jal        func_800232F4
/* 6DEC 800061EC E42CBADC */   swc1      $f12, %lo(BrianZRotation)($at)
/* 6DF0 800061F0 3C078008 */  lui        $a3, %hi(UNK_somethingToDoWithAnimation)
/* 6DF4 800061F4 24E7BC30 */  addiu      $a3, $a3, %lo(UNK_somethingToDoWithAnimation)
/* 6DF8 800061F8 C4E60000 */  lwc1       $f6, ($a3)
/* 6DFC 800061FC 3C018008 */  lui        $at, %hi(D_8007BBE0)
/* 6E00 80006200 3C0F8008 */  lui        $t7, 0x8008
/* 6E04 80006204 E426BBE0 */  swc1       $f6, %lo(D_8007BBE0)($at)
/* 6E08 80006208 C4E80004 */  lwc1       $f8, 4($a3)
/* 6E0C 8000620C 24040005 */  addiu      $a0, $zero, 5
/* 6E10 80006210 24050021 */  addiu      $a1, $zero, 0x21
/* 6E14 80006214 E428BBE4 */  swc1       $f8, -0x441c($at)
/* 6E18 80006218 95EFBB2C */  lhu        $t7, -0x44d4($t7)
/* 6E1C 8000621C 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 6E20 80006220 240600FF */  addiu      $a2, $zero, 0xff
/* 6E24 80006224 35F80001 */  ori        $t8, $t7, 1
/* 6E28 80006228 0C009A35 */  jal        func_800268D4
/* 6E2C 8000622C A438BB2C */   sh        $t8, %lo(D_8007BB2C)($at)
/* 6E30 80006230 2404000F */  addiu      $a0, $zero, 0xf
/* 6E34 80006234 24050021 */  addiu      $a1, $zero, 0x21
/* 6E38 80006238 0C009A35 */  jal        func_800268D4
/* 6E3C 8000623C 240600FF */   addiu     $a2, $zero, 0xff
/* 6E40 80006240 24190013 */  addiu      $t9, $zero, 0x13
/* 6E44 80006244 3C018008 */  lui        $at, %hi(transitionFadeTimer)
/* 6E48 80006248 10000039 */  b          .L80006330
/* 6E4C 8000624C AC39B2EC */   sw        $t9, %lo(transitionFadeTimer)($at)
.L80006250:
/* 6E50 80006250 3C058008 */  lui        $a1, %hi(BrianPos)
/* 6E54 80006254 24A5BACC */  addiu      $a1, $a1, %lo(BrianPos)
/* 6E58 80006258 0C0018D0 */  jal        func_80006340
/* 6E5C 8000625C 2484BAB8 */   addiu     $a0, $a0, -0x4548
/* 6E60 80006260 3C038008 */  lui        $v1, %hi(temp_CurrMap)
/* 6E64 80006264 24635368 */  addiu      $v1, $v1, %lo(temp_CurrMap)
/* 6E68 80006268 9468000C */  lhu        $t0, 0xc($v1)
/* 6E6C 8000626C 240B0032 */  addiu      $t3, $zero, 0x32
/* 6E70 80006270 3C018008 */  lui        $at, 0x8008
/* 6E74 80006274 31090001 */  andi       $t1, $t0, 1
/* 6E78 80006278 11200005 */  beqz       $t1, .L80006290
/* 6E7C 8000627C 3C0C8008 */   lui       $t4, 0x8008
/* 6E80 80006280 240A0032 */  addiu      $t2, $zero, 0x32
/* 6E84 80006284 3C018008 */  lui        $at, %hi(transitionFadeTimer)
/* 6E88 80006288 10000002 */  b          .L80006294
/* 6E8C 8000628C AC2AB2EC */   sw        $t2, %lo(transitionFadeTimer)($at)
.L80006290:
/* 6E90 80006290 AC2BB2EC */  sw         $t3, -0x4d14($at)
.L80006294:
/* 6E94 80006294 958CBB2C */  lhu        $t4, -0x44d4($t4)
/* 6E98 80006298 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 6E9C 8000629C 358D0001 */  ori        $t5, $t4, 1
/* 6EA0 800062A0 10000023 */  b          .L80006330
/* 6EA4 800062A4 A42DBB2C */   sh        $t5, %lo(D_8007BB2C)($at)
.L800062A8:
/* 6EA8 800062A8 8C6E0010 */  lw         $t6, 0x10($v1)
/* 6EAC 800062AC 8F184F24 */  lw         $t8, 0x4f24($t8)
/* 6EB0 800062B0 24040001 */  addiu      $a0, $zero, 1
/* 6EB4 800062B4 000E7880 */  sll        $t7, $t6, 2
/* 6EB8 800062B8 01EE7823 */  subu       $t7, $t7, $t6
/* 6EBC 800062BC 000F78C0 */  sll        $t7, $t7, 3
/* 6EC0 800062C0 00002825 */  or         $a1, $zero, $zero
/* 6EC4 800062C4 0C0036DF */  jal        func_8000DB7C
/* 6EC8 800062C8 01F83821 */   addu      $a3, $t7, $t8
/* 6ECC 800062CC 3C018008 */  lui        $at, %hi(brianAction)
/* 6ED0 800062D0 24190003 */  addiu      $t9, $zero, 3
/* 6ED4 800062D4 2408001E */  addiu      $t0, $zero, 0x1e
/* 6ED8 800062D8 A439BAB8 */  sh         $t9, %lo(brianAction)($at)
/* 6EDC 800062DC A428BABC */  sh         $t0, -0x4544($at)
/* 6EE0 800062E0 A420BABE */  sh         $zero, -0x4542($at)
/* 6EE4 800062E4 3C098008 */  lui        $t1, %hi(D_8007BB2C)
/* 6EE8 800062E8 9529BB2C */  lhu        $t1, %lo(D_8007BB2C)($t1)
/* 6EEC 800062EC 3C058008 */  lui        $a1, %hi(tempCurrAnim)
/* 6EF0 800062F0 8CA5BC2C */  lw         $a1, %lo(tempCurrAnim)($a1)
/* 6EF4 800062F4 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 6EF8 800062F8 3C048008 */  lui        $a0, 0x8008
/* 6EFC 800062FC 240B0001 */  addiu      $t3, $zero, 1
/* 6F00 80006300 240C0001 */  addiu      $t4, $zero, 1
/* 6F04 80006304 352A0001 */  ori        $t2, $t1, 1
/* 6F08 80006308 A42ABB2C */  sh         $t2, %lo(D_8007BB2C)($at)
/* 6F0C 8000630C AFAC0014 */  sw         $t4, 0x14($sp)
/* 6F10 80006310 AFAB0010 */  sw         $t3, 0x10($sp)
/* 6F14 80006314 2484BACC */  addiu      $a0, $a0, -0x4534
/* 6F18 80006318 24060001 */  addiu      $a2, $zero, 1
/* 6F1C 8000631C 0C00762C */  jal        updateAnim
/* 6F20 80006320 00A03825 */   or        $a3, $a1, $zero
/* 6F24 80006324 240D0019 */  addiu      $t5, $zero, 0x19
/* 6F28 80006328 3C018008 */  lui        $at, %hi(transitionFadeTimer)
/* 6F2C 8000632C AC2DB2EC */  sw         $t5, %lo(transitionFadeTimer)($at)
.L80006330:
/* 6F30 80006330 8FBF001C */  lw         $ra, 0x1c($sp)
.L80006334:
/* 6F34 80006334 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6F38 80006338 03E00008 */  jr         $ra
/* 6F3C 8000633C 00000000 */   nop

glabel func_80006340
/* 6F40 80006340 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 6F44 80006344 AFB10024 */  sw         $s1, 0x24($sp)
/* 6F48 80006348 AFB00020 */  sw         $s0, 0x20($sp)
/* 6F4C 8000634C 3C028008 */  lui        $v0, %hi(temp_CurrMap)
/* 6F50 80006350 24425368 */  addiu      $v0, $v0, %lo(temp_CurrMap)
/* 6F54 80006354 00A08025 */  or         $s0, $a1, $zero
/* 6F58 80006358 00808825 */  or         $s1, $a0, $zero
/* 6F5C 8000635C AFBF002C */  sw         $ra, 0x2c($sp)
/* 6F60 80006360 AFB20028 */  sw         $s2, 0x28($sp)
/* 6F64 80006364 8C4E0010 */  lw         $t6, 0x10($v0)
/* 6F68 80006368 3C188008 */  lui        $t8, %hi(D_80084F24)
/* 6F6C 8000636C 8F184F24 */  lw         $t8, %lo(D_80084F24)($t8)
/* 6F70 80006370 000E7880 */  sll        $t7, $t6, 2
/* 6F74 80006374 01EE7823 */  subu       $t7, $t7, $t6
/* 6F78 80006378 000F78C0 */  sll        $t7, $t7, 3
/* 6F7C 8000637C 01F89021 */  addu       $s2, $t7, $t8
/* 6F80 80006380 02403825 */  or         $a3, $s2, $zero
/* 6F84 80006384 00002025 */  or         $a0, $zero, $zero
/* 6F88 80006388 00002825 */  or         $a1, $zero, $zero
/* 6F8C 8000638C 0C0036DF */  jal        func_8000DB7C
/* 6F90 80006390 9446000C */   lhu       $a2, 0xc($v0)
/* 6F94 80006394 3C028008 */  lui        $v0, %hi(exitType)
/* 6F98 80006398 94425374 */  lhu        $v0, %lo(exitType)($v0)
/* 6F9C 8000639C 24010003 */  addiu      $at, $zero, 3
/* 6FA0 800063A0 240E0009 */  addiu      $t6, $zero, 9
/* 6FA4 800063A4 00024203 */  sra        $t0, $v0, 8
/* 6FA8 800063A8 3109000F */  andi       $t1, $t0, 0xf
/* 6FAC 800063AC 1521001A */  bne        $t1, $at, .L80006418
/* 6FB0 800063B0 240F0008 */   addiu     $t7, $zero, 8
/* 6FB4 800063B4 A6200006 */  sh         $zero, 6($s1)
/* 6FB8 800063B8 240A000A */  addiu      $t2, $zero, 0xa
/* 6FBC 800063BC 240B0001 */  addiu      $t3, $zero, 1
/* 6FC0 800063C0 AFAB0014 */  sw         $t3, 0x14($sp)
/* 6FC4 800063C4 AFAA0010 */  sw         $t2, 0x10($sp)
/* 6FC8 800063C8 02002025 */  or         $a0, $s0, $zero
/* 6FCC 800063CC 2405001A */  addiu      $a1, $zero, 0x1a
/* 6FD0 800063D0 24060001 */  addiu      $a2, $zero, 1
/* 6FD4 800063D4 0C00762C */  jal        updateAnim
/* 6FD8 800063D8 24070001 */   addiu     $a3, $zero, 1
/* 6FDC 800063DC 44800000 */  mtc1       $zero, $f0
/* 6FE0 800063E0 240C0003 */  addiu      $t4, $zero, 3
/* 6FE4 800063E4 240D004B */  addiu      $t5, $zero, 0x4b
/* 6FE8 800063E8 A62C0000 */  sh         $t4, ($s1)
/* 6FEC 800063EC A62D0004 */  sh         $t5, 4($s1)
/* 6FF0 800063F0 2404001E */  addiu      $a0, $zero, 0x1e
/* 6FF4 800063F4 24050009 */  addiu      $a1, $zero, 9
/* 6FF8 800063F8 240600FF */  addiu      $a2, $zero, 0xff
/* 6FFC 800063FC E600000C */  swc1       $f0, 0xc($s0)
/* 7000 80006400 E6000014 */  swc1       $f0, 0x14($s0)
/* 7004 80006404 E6000018 */  swc1       $f0, 0x18($s0)
/* 7008 80006408 0C009A35 */  jal        func_800268D4
/* 700C 8000640C E6000020 */   swc1      $f0, 0x20($s0)
/* 7010 80006410 10000074 */  b          .L800065E4
/* 7014 80006414 960B0060 */   lhu       $t3, 0x60($s0)
.L80006418:
/* 7018 80006418 A62E0000 */  sh         $t6, ($s1)
/* 701C 8000641C A62F0004 */  sh         $t7, 4($s1)
/* 7020 80006420 2418000A */  addiu      $t8, $zero, 0xa
/* 7024 80006424 24190001 */  addiu      $t9, $zero, 1
/* 7028 80006428 AFB90014 */  sw         $t9, 0x14($sp)
/* 702C 8000642C AFB80010 */  sw         $t8, 0x10($sp)
/* 7030 80006430 02002025 */  or         $a0, $s0, $zero
/* 7034 80006434 24050001 */  addiu      $a1, $zero, 1
/* 7038 80006438 2406000A */  addiu      $a2, $zero, 0xa
/* 703C 8000643C 0C00762C */  jal        updateAnim
/* 7040 80006440 24070001 */   addiu     $a3, $zero, 1
/* 7044 80006444 3C088008 */  lui        $t0, %hi(exitType)
/* 7048 80006448 95085374 */  lhu        $t0, %lo(exitType)($t0)
/* 704C 8000644C 3C058008 */  lui        $a1, %hi(UNK_somethingToDoWithAnimation)
/* 7050 80006450 24A5BC30 */  addiu      $a1, $a1, %lo(UNK_somethingToDoWithAnimation)
/* 7054 80006454 31090001 */  andi       $t1, $t0, 1
/* 7058 80006458 1120000E */  beqz       $t1, .L80006494
/* 705C 8000645C 24020014 */   addiu     $v0, $zero, 0x14
/* 7060 80006460 3C01C305 */  lui        $at, 0xc305
/* 7064 80006464 44812000 */  mtc1       $at, $f4
/* 7068 80006468 3C01C2B8 */  lui        $at, 0xc2b8
/* 706C 8000646C 44813000 */  mtc1       $at, $f6
/* 7070 80006470 3C058008 */  lui        $a1, %hi(UNK_somethingToDoWithAnimation)
/* 7074 80006474 3C014080 */  lui        $at, 0x4080
/* 7078 80006478 44814000 */  mtc1       $at, $f8
/* 707C 8000647C 24A5BC30 */  addiu      $a1, $a1, %lo(UNK_somethingToDoWithAnimation)
/* 7080 80006480 24020015 */  addiu      $v0, $zero, 0x15
/* 7084 80006484 E4A40000 */  swc1       $f4, ($a1)
/* 7088 80006488 E4A60004 */  swc1       $f6, 4($a1)
/* 708C 8000648C 1000000A */  b          .L800064B8
/* 7090 80006490 E4A80008 */   swc1      $f8, 8($a1)
.L80006494:
/* 7094 80006494 3C01C2EE */  lui        $at, 0xc2ee
/* 7098 80006498 44815000 */  mtc1       $at, $f10
/* 709C 8000649C 3C0142FA */  lui        $at, 0x42fa
/* 70A0 800064A0 44818000 */  mtc1       $at, $f16
/* 70A4 800064A4 3C014322 */  lui        $at, 0x4322
/* 70A8 800064A8 44819000 */  mtc1       $at, $f18
/* 70AC 800064AC E4AA0000 */  swc1       $f10, ($a1)
/* 70B0 800064B0 E4B00004 */  swc1       $f16, 4($a1)
/* 70B4 800064B4 E4B20008 */  swc1       $f18, 8($a1)
.L800064B8:
/* 70B8 800064B8 A6220006 */  sh         $v0, 6($s1)
/* 70BC 800064BC C644000C */  lwc1       $f4, 0xc($s2)
/* 70C0 800064C0 3C018007 */  lui        $at, %hi(D_800710C8)
/* 70C4 800064C4 D42810C8 */  ldc1       $f8, %lo(D_800710C8)($at)
/* 70C8 800064C8 460021A1 */  cvt.d.s    $f6, $f4
/* 70CC 800064CC 46283282 */  mul.d      $f10, $f6, $f8
/* 70D0 800064D0 462050A0 */  cvt.s.d    $f2, $f10
/* 70D4 800064D4 46001307 */  neg.s      $f12, $f2
/* 70D8 800064D8 0C008CBD */  jal        func_800232F4
/* 70DC 800064DC E7A20034 */   swc1      $f2, 0x34($sp)
/* 70E0 800064E0 962A0004 */  lhu        $t2, 4($s1)
/* 70E4 800064E4 3C058008 */  lui        $a1, %hi(UNK_somethingToDoWithAnimation)
/* 70E8 800064E8 24A5BC30 */  addiu      $a1, $a1, %lo(UNK_somethingToDoWithAnimation)
/* 70EC 800064EC 448A8000 */  mtc1       $t2, $f16
/* 70F0 800064F0 C7A20034 */  lwc1       $f2, 0x34($sp)
/* 70F4 800064F4 05410005 */  bgez       $t2, .L8000650C
/* 70F8 800064F8 46808320 */   cvt.s.w   $f12, $f16
/* 70FC 800064FC 3C014F80 */  lui        $at, 0x4f80
/* 7100 80006500 44819000 */  mtc1       $at, $f18
/* 7104 80006504 00000000 */  nop
/* 7108 80006508 46126300 */  add.s      $f12, $f12, $f18
.L8000650C:
/* 710C 8000650C C4A40000 */  lwc1       $f4, ($a1)
/* 7110 80006510 C6060024 */  lwc1       $f6, 0x24($s0)
/* 7114 80006514 C64A0000 */  lwc1       $f10, ($s2)
/* 7118 80006518 C6120000 */  lwc1       $f18, ($s0)
/* 711C 8000651C 46062202 */  mul.s      $f8, $f4, $f6
/* 7120 80006520 3C018007 */  lui        $at, 0x8007
/* 7124 80006524 46085401 */  sub.s      $f16, $f10, $f8
/* 7128 80006528 46128101 */  sub.s      $f4, $f16, $f18
/* 712C 8000652C 460C2183 */  div.s      $f6, $f4, $f12
/* 7130 80006530 E6260128 */  swc1       $f6, 0x128($s1)
/* 7134 80006534 C6080024 */  lwc1       $f8, 0x24($s0)
/* 7138 80006538 C4AA0004 */  lwc1       $f10, 4($a1)
/* 713C 8000653C C6520008 */  lwc1       $f18, 8($s2)
/* 7140 80006540 C6060008 */  lwc1       $f6, 8($s0)
/* 7144 80006544 46085402 */  mul.s      $f16, $f10, $f8
/* 7148 80006548 E6220134 */  swc1       $f2, 0x134($s1)
/* 714C 8000654C 46109100 */  add.s      $f4, $f18, $f16
/* 7150 80006550 46062281 */  sub.s      $f10, $f4, $f6
/* 7154 80006554 460C5203 */  div.s      $f8, $f10, $f12
/* 7158 80006558 460012A1 */  cvt.d.s    $f10, $f2
/* 715C 8000655C E628012C */  swc1       $f8, 0x12c($s1)
/* 7160 80006560 C4B20008 */  lwc1       $f18, 8($a1)
/* 7164 80006564 D42410D0 */  ldc1       $f4, 0x10d0($at)
/* 7168 80006568 3C018007 */  lui        $at, %hi(D_800710D8)
/* 716C 8000656C 46009421 */  cvt.d.s    $f16, $f18
/* 7170 80006570 D43210D8 */  ldc1       $f18, %lo(D_800710D8)($at)
/* 7174 80006574 46248182 */  mul.d      $f6, $f16, $f4
/* 7178 80006578 3C018007 */  lui        $at, 0x8007
/* 717C 8000657C 46265200 */  add.d      $f8, $f10, $f6
/* 7180 80006580 462040A0 */  cvt.s.d    $f2, $f8
/* 7184 80006584 46001021 */  cvt.d.s    $f0, $f2
/* 7188 80006588 4620903C */  c.lt.d     $f18, $f0
/* 718C 8000658C 00000000 */  nop
/* 7190 80006590 45000006 */  bc1f       .L800065AC
/* 7194 80006594 00000000 */   nop
/* 7198 80006598 3C018007 */  lui        $at, %hi(D_800710E0)
/* 719C 8000659C D43010E0 */  ldc1       $f16, %lo(D_800710E0)($at)
/* 71A0 800065A0 46300101 */  sub.d      $f4, $f0, $f16
/* 71A4 800065A4 1000000A */  b          .L800065D0
/* 71A8 800065A8 462020A0 */   cvt.s.d   $f2, $f4
.L800065AC:
/* 71AC 800065AC D42A10E8 */  ldc1       $f10, 0x10e8($at)
/* 71B0 800065B0 3C018007 */  lui        $at, %hi(D_800710F0)
/* 71B4 800065B4 462A003C */  c.lt.d     $f0, $f10
/* 71B8 800065B8 00000000 */  nop
/* 71BC 800065BC 45020005 */  bc1fl      .L800065D4
/* 71C0 800065C0 44800000 */   mtc1      $zero, $f0
/* 71C4 800065C4 D42610F0 */  ldc1       $f6, %lo(D_800710F0)($at)
/* 71C8 800065C8 46260200 */  add.d      $f8, $f0, $f6
/* 71CC 800065CC 462040A0 */  cvt.s.d    $f2, $f8
.L800065D0:
/* 71D0 800065D0 44800000 */  mtc1       $zero, $f0
.L800065D4:
/* 71D4 800065D4 E6220130 */  swc1       $f2, 0x130($s1)
/* 71D8 800065D8 E600000C */  swc1       $f0, 0xc($s0)
/* 71DC 800065DC E6000014 */  swc1       $f0, 0x14($s0)
/* 71E0 800065E0 960B0060 */  lhu        $t3, 0x60($s0)
.L800065E4:
/* 71E4 800065E4 356C0001 */  ori        $t4, $t3, 1
/* 71E8 800065E8 A60C0060 */  sh         $t4, 0x60($s0)
/* 71EC 800065EC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 71F0 800065F0 8FB00020 */  lw         $s0, 0x20($sp)
/* 71F4 800065F4 8FB10024 */  lw         $s1, 0x24($sp)
/* 71F8 800065F8 8FB20028 */  lw         $s2, 0x28($sp)
/* 71FC 800065FC 03E00008 */  jr         $ra
/* 7200 80006600 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80006604
/* 7204 80006604 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7208 80006608 AFB00020 */  sw         $s0, 0x20($sp)
/* 720C 8000660C 00A08025 */  or         $s0, $a1, $zero
/* 7210 80006610 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7214 80006614 AFA40028 */  sw         $a0, 0x28($sp)
/* 7218 80006618 AFA60030 */  sw         $a2, 0x30($sp)
/* 721C 8000661C 240E0001 */  addiu      $t6, $zero, 1
/* 7220 80006620 240F0001 */  addiu      $t7, $zero, 1
/* 7224 80006624 AFAF0014 */  sw         $t7, 0x14($sp)
/* 7228 80006628 AFAE0010 */  sw         $t6, 0x10($sp)
/* 722C 8000662C 02002025 */  or         $a0, $s0, $zero
/* 7230 80006630 2405001C */  addiu      $a1, $zero, 0x1c
/* 7234 80006634 24060001 */  addiu      $a2, $zero, 1
/* 7238 80006638 0C00762C */  jal        updateAnim
/* 723C 8000663C 2407001D */   addiu     $a3, $zero, 0x1d
/* 7240 80006640 0C0019C8 */  jal        loadBrianAnim
/* 7244 80006644 02002025 */   or        $a0, $s0, $zero
/* 7248 80006648 86180052 */  lh         $t8, 0x52($s0)
/* 724C 8000664C 8FA80030 */  lw         $t0, 0x30($sp)
/* 7250 80006650 02002025 */  or         $a0, $s0, $zero
/* 7254 80006654 0018C880 */  sll        $t9, $t8, 2
/* 7258 80006658 0338C823 */  subu       $t9, $t9, $t8
/* 725C 8000665C 0019C880 */  sll        $t9, $t9, 2
/* 7260 80006660 8E060024 */  lw         $a2, 0x24($s0)
/* 7264 80006664 0C007649 */  jal        func_8001D924
/* 7268 80006668 03282821 */   addu      $a1, $t9, $t0
/* 726C 8000666C 8FA20028 */  lw         $v0, 0x28($sp)
/* 7270 80006670 2409000B */  addiu      $t1, $zero, 0xb
/* 7274 80006674 240A005A */  addiu      $t2, $zero, 0x5a
/* 7278 80006678 A4490000 */  sh         $t1, ($v0)
/* 727C 8000667C A44A0004 */  sh         $t2, 4($v0)
/* 7280 80006680 960B0060 */  lhu        $t3, 0x60($s0)
/* 7284 80006684 356C0001 */  ori        $t4, $t3, 1
/* 7288 80006688 A60C0060 */  sh         $t4, 0x60($s0)
/* 728C 8000668C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7290 80006690 8FB00020 */  lw         $s0, 0x20($sp)
/* 7294 80006694 03E00008 */  jr         $ra
/* 7298 80006698 27BD0028 */   addiu     $sp, $sp, 0x28

glabel playItemUseAnim
/* 729C 8000669C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72A0 800066A0 3C028008 */  lui        $v0, %hi(brianAction)
/* 72A4 800066A4 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* 72A8 800066A8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 72AC 800066AC AFA40020 */  sw         $a0, 0x20($sp)
/* 72B0 800066B0 844E0064 */  lh         $t6, 0x64($v0)
/* 72B4 800066B4 3C038005 */  lui        $v1, %hi(D_80053D00)
/* 72B8 800066B8 93B80023 */  lbu        $t8, 0x23($sp)
/* 72BC 800066BC 000E7880 */  sll        $t7, $t6, 2
/* 72C0 800066C0 006F1821 */  addu       $v1, $v1, $t7
/* 72C4 800066C4 8C633D00 */  lw         $v1, %lo(D_80053D00)($v1)
/* 72C8 800066C8 2419000C */  addiu      $t9, $zero, 0xc
/* 72CC 800066CC 94490074 */  lhu        $t1, 0x74($v0)
/* 72D0 800066D0 A4590000 */  sh         $t9, ($v0)
/* 72D4 800066D4 A0580118 */  sb         $t8, 0x118($v0)
/* 72D8 800066D8 84680116 */  lh         $t0, 0x116($v1)
/* 72DC 800066DC 3C048008 */  lui        $a0, 0x8008
/* 72E0 800066E0 240B0001 */  addiu      $t3, $zero, 1
/* 72E4 800066E4 240C0001 */  addiu      $t4, $zero, 1
/* 72E8 800066E8 352A0001 */  ori        $t2, $t1, 1
/* 72EC 800066EC A44A0074 */  sh         $t2, 0x74($v0)
/* 72F0 800066F0 AFAC0014 */  sw         $t4, 0x14($sp)
/* 72F4 800066F4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 72F8 800066F8 2484BACC */  addiu      $a0, $a0, -0x4534
/* 72FC 800066FC 24050017 */  addiu      $a1, $zero, 0x17
/* 7300 80006700 24060001 */  addiu      $a2, $zero, 1
/* 7304 80006704 24070016 */  addiu      $a3, $zero, 0x16
/* 7308 80006708 0C00762C */  jal        updateAnim
/* 730C 8000670C A4480004 */   sh        $t0, 4($v0)
/* 7310 80006710 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7314 80006714 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7318 80006718 03E00008 */  jr         $ra
/* 731C 8000671C 00000000 */   nop

glabel loadBrianAnim
/* 7320 80006720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7324 80006724 3C078005 */  lui        $a3, %hi(BrianAnimTest)
/* 7328 80006728 8CE7C270 */  lw         $a3, %lo(BrianAnimTest)($a3)
/* 732C 8000672C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7330 80006730 84830052 */  lh         $v1, 0x52($a0)
/* 7334 80006734 3C0F8005 */  lui        $t7, %hi(brianAnimPtrs_)
/* 7338 80006738 25EF3F58 */  addiu      $t7, $t7, %lo(brianAnimPtrs_)
/* 733C 8000673C 10E30009 */  beq        $a3, $v1, .L80006764
/* 7340 80006740 000370C0 */   sll       $t6, $v1, 3
/* 7344 80006744 01CF1021 */  addu       $v0, $t6, $t7
/* 7348 80006748 8C440000 */  lw         $a0, ($v0)
/* 734C 8000674C 8C580004 */  lw         $t8, 4($v0)
/* 7350 80006750 3C018005 */  lui        $at, %hi(BrianAnimTest)
/* 7354 80006754 AC23C270 */  sw         $v1, %lo(BrianAnimTest)($at)
/* 7358 80006758 3C058020 */  lui        $a1, 0x8020
/* 735C 8000675C 0C009098 */  jal        loadData
/* 7360 80006760 03043023 */   subu      $a2, $t8, $a0
.L80006764:
/* 7364 80006764 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7368 80006768 27BD0018 */  addiu      $sp, $sp, 0x18
/* 736C 8000676C 03E00008 */  jr         $ra
/* 7370 80006770 00000000 */   nop

glabel func_80006774
/* 7374 80006774 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 7378 80006778 AFB1004C */  sw         $s1, 0x4c($sp)
/* 737C 8000677C 00808825 */  or         $s1, $a0, $zero
/* 7380 80006780 AFBF006C */  sw         $ra, 0x6c($sp)
/* 7384 80006784 AFBE0068 */  sw         $fp, 0x68($sp)
/* 7388 80006788 AFB70064 */  sw         $s7, 0x64($sp)
/* 738C 8000678C AFB60060 */  sw         $s6, 0x60($sp)
/* 7390 80006790 AFB5005C */  sw         $s5, 0x5c($sp)
/* 7394 80006794 AFB40058 */  sw         $s4, 0x58($sp)
/* 7398 80006798 AFB30054 */  sw         $s3, 0x54($sp)
/* 739C 8000679C AFB20050 */  sw         $s2, 0x50($sp)
/* 73A0 800067A0 AFB00048 */  sw         $s0, 0x48($sp)
/* 73A4 800067A4 F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 73A8 800067A8 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 73AC 800067AC F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 73B0 800067B0 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 73B4 800067B4 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 73B8 800067B8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 73BC 800067BC 8E2E0064 */  lw         $t6, 0x64($s1)
/* 73C0 800067C0 C6260024 */  lwc1       $f6, 0x24($s1)
/* 73C4 800067C4 3C0F8009 */  lui        $t7, %hi(tempNumEnemies)
/* 73C8 800067C8 C5C40018 */  lwc1       $f4, 0x18($t6)
/* 73CC 800067CC 95EFC59A */  lhu        $t7, %lo(tempNumEnemies)($t7)
/* 73D0 800067D0 AFA00070 */  sw         $zero, 0x70($sp)
/* 73D4 800067D4 46062782 */  mul.s      $f30, $f4, $f6
/* 73D8 800067D8 11E00075 */  beqz       $t7, .L800069B0
/* 73DC 800067DC 0000A025 */   or        $s4, $zero, $zero
/* 73E0 800067E0 3C014024 */  lui        $at, 0x4024
/* 73E4 800067E4 3C138008 */  lui        $s3, 0x8008
/* 73E8 800067E8 3C168008 */  lui        $s6, 0x8008
/* 73EC 800067EC 3C128008 */  lui        $s2, %hi(UNK_somethingToDoWithAnimation)
/* 73F0 800067F0 4481E800 */  mtc1       $at, $f29
/* 73F4 800067F4 4480E000 */  mtc1       $zero, $f28
/* 73F8 800067F8 4480D000 */  mtc1       $zero, $f26
/* 73FC 800067FC 2652BC30 */  addiu      $s2, $s2, %lo(UNK_somethingToDoWithAnimation)
/* 7400 80006800 26D6C998 */  addiu      $s6, $s6, -0x3668
/* 7404 80006804 2673D0B0 */  addiu      $s3, $s3, -0x2f50
/* 7408 80006808 241E0001 */  addiu      $fp, $zero, 1
/* 740C 8000680C 24170128 */  addiu      $s7, $zero, 0x128
/* 7410 80006810 2415FFFF */  addiu      $s5, $zero, -1
/* 7414 80006814 96780000 */  lhu        $t8, ($s3)
.L80006818:
/* 7418 80006818 03170019 */  multu      $t8, $s7
/* 741C 8000681C 0000C812 */  mflo       $t9
/* 7420 80006820 02D91021 */  addu       $v0, $s6, $t9
/* 7424 80006824 84480074 */  lh         $t0, 0x74($v0)
/* 7428 80006828 24500024 */  addiu      $s0, $v0, 0x24
/* 742C 8000682C 12A80059 */  beq        $s5, $t0, .L80006994
/* 7430 80006830 00000000 */   nop
/* 7434 80006834 C6080000 */  lwc1       $f8, ($s0)
/* 7438 80006838 C62A0000 */  lwc1       $f10, ($s1)
/* 743C 8000683C C6100008 */  lwc1       $f16, 8($s0)
/* 7440 80006840 C6320008 */  lwc1       $f18, 8($s1)
/* 7444 80006844 460A4501 */  sub.s      $f20, $f8, $f10
/* 7448 80006848 46128581 */  sub.s      $f22, $f16, $f18
/* 744C 8000684C 4614A102 */  mul.s      $f4, $f20, $f20
/* 7450 80006850 00000000 */  nop
/* 7454 80006854 4616B182 */  mul.s      $f6, $f22, $f22
/* 7458 80006858 0C00D3D8 */  jal        _nsqrtf
/* 745C 8000685C 46062300 */   add.s     $f12, $f4, $f6
/* 7460 80006860 8E090064 */  lw         $t1, 0x64($s0)
/* 7464 80006864 C60A0024 */  lwc1       $f10, 0x24($s0)
/* 7468 80006868 46000421 */  cvt.d.s    $f16, $f0
/* 746C 8000686C C5280018 */  lwc1       $f8, 0x18($t1)
/* 7470 80006870 460A4602 */  mul.s      $f24, $f8, $f10
/* 7474 80006874 4618F480 */  add.s      $f18, $f30, $f24
/* 7478 80006878 46009121 */  cvt.d.s    $f4, $f18
/* 747C 8000687C 463C2180 */  add.d      $f6, $f4, $f28
/* 7480 80006880 4626803C */  c.lt.d     $f16, $f6
/* 7484 80006884 00000000 */  nop
/* 7488 80006888 45000042 */  bc1f       .L80006994
/* 748C 8000688C 00000000 */   nop
/* 7490 80006890 E6540000 */  swc1       $f20, ($s2)
/* 7494 80006894 E6560004 */  swc1       $f22, 4($s2)
/* 7498 80006898 8E020064 */  lw         $v0, 0x64($s0)
/* 749C 8000689C 24010002 */  addiu      $at, $zero, 2
/* 74A0 800068A0 02402825 */  or         $a1, $s2, $zero
/* 74A4 800068A4 94430000 */  lhu        $v1, ($v0)
/* 74A8 800068A8 17C3000A */  bne        $fp, $v1, .L800068D4
/* 74AC 800068AC 00000000 */   nop
/* 74B0 800068B0 C4520018 */  lwc1       $f18, 0x18($v0)
/* 74B4 800068B4 8E0A0068 */  lw         $t2, 0x68($s0)
/* 74B8 800068B8 C62A0004 */  lwc1       $f10, 4($s1)
/* 74BC 800068BC 46009021 */  cvt.d.s    $f0, $f18
/* 74C0 800068C0 C5480094 */  lwc1       $f8, 0x94($t2)
/* 74C4 800068C4 46200100 */  add.d      $f4, $f0, $f0
/* 74C8 800068C8 460A4501 */  sub.s      $f20, $f8, $f10
/* 74CC 800068CC 1000000A */  b          .L800068F8
/* 74D0 800068D0 462025A0 */   cvt.s.d   $f22, $f4
.L800068D4:
/* 74D4 800068D4 54610005 */  bnel       $v1, $at, .L800068EC
/* 74D8 800068D8 C6100004 */   lwc1      $f16, 4($s0)
/* 74DC 800068DC 4600D586 */  mov.s      $f22, $f26
/* 74E0 800068E0 10000005 */  b          .L800068F8
/* 74E4 800068E4 4600D506 */   mov.s     $f20, $f26
/* 74E8 800068E8 C6100004 */  lwc1       $f16, 4($s0)
.L800068EC:
/* 74EC 800068EC C6260004 */  lwc1       $f6, 4($s1)
/* 74F0 800068F0 C456001C */  lwc1       $f22, 0x1c($v0)
/* 74F4 800068F4 46068501 */  sub.s      $f20, $f16, $f6
.L800068F8:
/* 74F8 800068F8 461AA03C */  c.lt.s     $f20, $f26
/* 74FC 800068FC 00000000 */  nop
/* 7500 80006900 45020003 */  bc1fl      .L80006910
/* 7504 80006904 8E2B0064 */   lw        $t3, 0x64($s1)
/* 7508 80006908 4600A507 */  neg.s      $f20, $f20
/* 750C 8000690C 8E2B0064 */  lw         $t3, 0x64($s1)
.L80006910:
/* 7510 80006910 C62A0024 */  lwc1       $f10, 0x24($s1)
/* 7514 80006914 C6040024 */  lwc1       $f4, 0x24($s0)
/* 7518 80006918 C568001C */  lwc1       $f8, 0x1c($t3)
/* 751C 8000691C 460A4482 */  mul.s      $f18, $f8, $f10
/* 7520 80006920 00000000 */  nop
/* 7524 80006924 4604B402 */  mul.s      $f16, $f22, $f4
/* 7528 80006928 46128180 */  add.s      $f6, $f16, $f18
/* 752C 8000692C 4606A501 */  sub.s      $f20, $f20, $f6
/* 7530 80006930 461AA03E */  c.le.s     $f20, $f26
/* 7534 80006934 00000000 */  nop
/* 7538 80006938 45000016 */  bc1f       .L80006994
/* 753C 8000693C 00000000 */   nop
/* 7540 80006940 0C008CBD */  jal        func_800232F4
/* 7544 80006944 C62C0010 */   lwc1      $f12, 0x10($s1)
/* 7548 80006948 C6480004 */  lwc1       $f8, 4($s2)
/* 754C 8000694C 4608D03E */  c.le.s     $f26, $f8
/* 7550 80006950 00000000 */  nop
/* 7554 80006954 4500000F */  bc1f       .L80006994
/* 7558 80006958 00000000 */   nop
/* 755C 8000695C C6400000 */  lwc1       $f0, ($s2)
/* 7560 80006960 4600C287 */  neg.s      $f10, $f24
/* 7564 80006964 4600503C */  c.lt.s     $f10, $f0
/* 7568 80006968 00000000 */  nop
/* 756C 8000696C 45000009 */  bc1f       .L80006994
/* 7570 80006970 00000000 */   nop
/* 7574 80006974 4618003C */  c.lt.s     $f0, $f24
/* 7578 80006978 00000000 */  nop
/* 757C 8000697C 45000005 */  bc1f       .L80006994
/* 7580 80006980 00000000 */   nop
/* 7584 80006984 966C0000 */  lhu        $t4, ($s3)
/* 7588 80006988 258D0001 */  addiu      $t5, $t4, 1
/* 758C 8000698C 10000008 */  b          .L800069B0
/* 7590 80006990 AFAD0070 */   sw        $t5, 0x70($sp)
.L80006994:
/* 7594 80006994 3C0E8009 */  lui        $t6, %hi(tempNumEnemies)
/* 7598 80006998 95CEC59A */  lhu        $t6, %lo(tempNumEnemies)($t6)
/* 759C 8000699C 26940001 */  addiu      $s4, $s4, 1
/* 75A0 800069A0 26730002 */  addiu      $s3, $s3, 2
/* 75A4 800069A4 028E082B */  sltu       $at, $s4, $t6
/* 75A8 800069A8 5420FF9B */  bnel       $at, $zero, .L80006818
/* 75AC 800069AC 96780000 */   lhu       $t8, ($s3)
.L800069B0:
/* 75B0 800069B0 8FA20070 */  lw         $v0, 0x70($sp)
/* 75B4 800069B4 8FBF006C */  lw         $ra, 0x6c($sp)
/* 75B8 800069B8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 75BC 800069BC D7B60020 */  ldc1       $f22, 0x20($sp)
/* 75C0 800069C0 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 75C4 800069C4 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 75C8 800069C8 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 75CC 800069CC D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 75D0 800069D0 8FB00048 */  lw         $s0, 0x48($sp)
/* 75D4 800069D4 8FB1004C */  lw         $s1, 0x4c($sp)
/* 75D8 800069D8 8FB20050 */  lw         $s2, 0x50($sp)
/* 75DC 800069DC 8FB30054 */  lw         $s3, 0x54($sp)
/* 75E0 800069E0 8FB40058 */  lw         $s4, 0x58($sp)
/* 75E4 800069E4 8FB5005C */  lw         $s5, 0x5c($sp)
/* 75E8 800069E8 8FB60060 */  lw         $s6, 0x60($sp)
/* 75EC 800069EC 8FB70064 */  lw         $s7, 0x64($sp)
/* 75F0 800069F0 8FBE0068 */  lw         $fp, 0x68($sp)
/* 75F4 800069F4 03E00008 */  jr         $ra
/* 75F8 800069F8 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_800069FC
/* 75FC 800069FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7600 80006A00 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7604 80006A04 AFA40020 */  sw         $a0, 0x20($sp)
/* 7608 80006A08 AFA50024 */  sw         $a1, 0x24($sp)
/* 760C 80006A0C AFA60028 */  sw         $a2, 0x28($sp)
/* 7610 80006A10 8FAF0020 */  lw         $t7, 0x20($sp)
/* 7614 80006A14 240E000D */  addiu      $t6, $zero, 0xd
/* 7618 80006A18 24180014 */  addiu      $t8, $zero, 0x14
/* 761C 80006A1C A5EE0000 */  sh         $t6, ($t7)
/* 7620 80006A20 A5F80004 */  sh         $t8, 4($t7)
/* 7624 80006A24 8FA40024 */  lw         $a0, 0x24($sp)
/* 7628 80006A28 3C078008 */  lui        $a3, 0x8008
/* 762C 80006A2C 240A0001 */  addiu      $t2, $zero, 1
/* 7630 80006A30 94880060 */  lhu        $t0, 0x60($a0)
/* 7634 80006A34 240B0001 */  addiu      $t3, $zero, 1
/* 7638 80006A38 2405000A */  addiu      $a1, $zero, 0xa
/* 763C 80006A3C 35090001 */  ori        $t1, $t0, 1
/* 7640 80006A40 A4890060 */  sh         $t1, 0x60($a0)
/* 7644 80006A44 AFAB0014 */  sw         $t3, 0x14($sp)
/* 7648 80006A48 AFAA0010 */  sw         $t2, 0x10($sp)
/* 764C 80006A4C 8CE7BC2C */  lw         $a3, -0x43d4($a3)
/* 7650 80006A50 0C00762C */  jal        updateAnim
/* 7654 80006A54 24060001 */   addiu     $a2, $zero, 1
/* 7658 80006A58 24040023 */  addiu      $a0, $zero, 0x23
/* 765C 80006A5C 0C00503B */  jal        func_800140EC
/* 7660 80006A60 8FA50024 */   lw        $a1, 0x24($sp)
/* 7664 80006A64 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7668 80006A68 27BD0020 */  addiu      $sp, $sp, 0x20
/* 766C 80006A6C 03E00008 */  jr         $ra
/* 7670 80006A70 00000000 */   nop

glabel func_80006A74
/* 7674 80006A74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7678 80006A78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 767C 80006A7C 00803025 */  or         $a2, $a0, $zero
/* 7680 80006A80 0006C0C0 */  sll        $t8, $a2, 3
/* 7684 80006A84 0306C021 */  addu       $t8, $t8, $a2
/* 7688 80006A88 0018C080 */  sll        $t8, $t8, 2
/* 768C 80006A8C 0306C021 */  addu       $t8, $t8, $a2
/* 7690 80006A90 8CAE0068 */  lw         $t6, 0x68($a1)
/* 7694 80006A94 0018C0C0 */  sll        $t8, $t8, 3
/* 7698 80006A98 3C198008 */  lui        $t9, %hi(D_8007CA24)
/* 769C 80006A9C 0338C821 */  addu       $t9, $t9, $t8
/* 76A0 80006AA0 8F39CA24 */  lw         $t9, %lo(D_8007CA24)($t9)
/* 76A4 80006AA4 95C20086 */  lhu        $v0, 0x86($t6)
/* 76A8 80006AA8 24040064 */  addiu      $a0, $zero, 0x64
/* 76AC 80006AAC 97280086 */  lhu        $t0, 0x86($t9)
/* 76B0 80006AB0 00027880 */  sll        $t7, $v0, 2
/* 76B4 80006AB4 01E27823 */  subu       $t7, $t7, $v0
/* 76B8 80006AB8 000F78C0 */  sll        $t7, $t7, 3
/* 76BC 80006ABC 25090007 */  addiu      $t1, $t0, 7
/* 76C0 80006AC0 000950C3 */  sra        $t2, $t1, 3
/* 76C4 80006AC4 01E27821 */  addu       $t7, $t7, $v0
/* 76C8 80006AC8 000F7880 */  sll        $t7, $t7, 2
/* 76CC 80006ACC 004A5821 */  addu       $t3, $v0, $t2
/* 76D0 80006AD0 01EB001A */  div        $zero, $t7, $t3
/* 76D4 80006AD4 00006012 */  mflo       $t4
/* 76D8 80006AD8 A7AC001E */  sh         $t4, 0x1e($sp)
/* 76DC 80006ADC 15600002 */  bnez       $t3, .L80006AE8
/* 76E0 80006AE0 00000000 */   nop
/* 76E4 80006AE4 0007000D */  break      7
.L80006AE8:
/* 76E8 80006AE8 2401FFFF */   addiu     $at, $zero, -1
/* 76EC 80006AEC 15610004 */  bne        $t3, $at, .L80006B00
/* 76F0 80006AF0 3C018000 */   lui       $at, 0x8000
/* 76F4 80006AF4 15E10002 */  bne        $t7, $at, .L80006B00
/* 76F8 80006AF8 00000000 */   nop
/* 76FC 80006AFC 0006000D */  break      6
.L80006B00:
/* 7700 80006B00 0C008BF4 */   jal       ReturnRandomNumber
/* 7704 80006B04 00000000 */   nop
/* 7708 80006B08 87AD001E */  lh         $t5, 0x1e($sp)
/* 770C 80006B0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7710 80006B10 004D102B */  sltu       $v0, $v0, $t5
/* 7714 80006B14 03E00008 */  jr         $ra
/* 7718 80006B18 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80006B1C
/* 771C 80006B1C 8C870010 */  lw         $a3, 0x10($a0)
/* 7720 80006B20 94820104 */  lhu        $v0, 0x104($a0)
/* 7724 80006B24 90E80024 */  lbu        $t0, 0x24($a3)
/* 7728 80006B28 00022883 */  sra        $a1, $v0, 2
/* 772C 80006B2C 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 7730 80006B30 00401825 */  or         $v1, $v0, $zero
/* 7734 80006B34 3046FFFF */  andi       $a2, $v0, 0xffff
/* 7738 80006B38 01C8082A */  slt        $at, $t6, $t0
/* 773C 80006B3C 10200005 */  beqz       $at, .L80006B54
/* 7740 80006B40 01C01025 */   or        $v0, $t6, $zero
/* 7744 80006B44 00C87823 */  subu       $t7, $a2, $t0
/* 7748 80006B48 01EE3021 */  addu       $a2, $t7, $t6
/* 774C 80006B4C 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 7750 80006B50 03003025 */  or         $a2, $t8, $zero
.L80006B54:
/* 7754 80006B54 90E50025 */  lbu        $a1, 0x25($a3)
/* 7758 80006B58 00037043 */  sra        $t6, $v1, 1
/* 775C 80006B5C 0045082A */  slt        $at, $v0, $a1
/* 7760 80006B60 10200004 */  beqz       $at, .L80006B74
/* 7764 80006B64 00C5C823 */   subu      $t9, $a2, $a1
/* 7768 80006B68 03223021 */  addu       $a2, $t9, $v0
/* 776C 80006B6C 30C9FFFF */  andi       $t1, $a2, 0xffff
/* 7770 80006B70 01203025 */  or         $a2, $t1, $zero
.L80006B74:
/* 7774 80006B74 90E50026 */  lbu        $a1, 0x26($a3)
/* 7778 80006B78 0045082A */  slt        $at, $v0, $a1
/* 777C 80006B7C 10200004 */  beqz       $at, .L80006B90
/* 7780 80006B80 00C55023 */   subu      $t2, $a2, $a1
/* 7784 80006B84 01423021 */  addu       $a2, $t2, $v0
/* 7788 80006B88 30CBFFFF */  andi       $t3, $a2, 0xffff
/* 778C 80006B8C 01603025 */  or         $a2, $t3, $zero
.L80006B90:
/* 7790 80006B90 90E50027 */  lbu        $a1, 0x27($a3)
/* 7794 80006B94 0045082A */  slt        $at, $v0, $a1
/* 7798 80006B98 10200004 */  beqz       $at, .L80006BAC
/* 779C 80006B9C 00C56023 */   subu      $t4, $a2, $a1
/* 77A0 80006BA0 01823021 */  addu       $a2, $t4, $v0
/* 77A4 80006BA4 30CDFFFF */  andi       $t5, $a2, 0xffff
/* 77A8 80006BA8 01A03025 */  or         $a2, $t5, $zero
.L80006BAC:
/* 77AC 80006BAC 9498010A */  lhu        $t8, 0x10a($a0)
/* 77B0 80006BB0 01C61821 */  addu       $v1, $t6, $a2
/* 77B4 80006BB4 306FFFFF */  andi       $t7, $v1, 0xffff
/* 77B8 80006BB8 01F80019 */  multu      $t7, $t8
/* 77BC 80006BBC 948A0080 */  lhu        $t2, 0x80($a0)
/* 77C0 80006BC0 314B0001 */  andi       $t3, $t2, 1
/* 77C4 80006BC4 00001812 */  mflo       $v1
/* 77C8 80006BC8 0003C903 */  sra        $t9, $v1, 4
/* 77CC 80006BCC 3329FFFF */  andi       $t1, $t9, 0xffff
/* 77D0 80006BD0 11600003 */  beqz       $t3, .L80006BE0
/* 77D4 80006BD4 01201825 */   or        $v1, $t1, $zero
/* 77D8 80006BD8 00096042 */  srl        $t4, $t1, 1
/* 77DC 80006BDC 3183FFFF */  andi       $v1, $t4, 0xffff
.L80006BE0:
/* 77E0 80006BE0 00601025 */  or         $v0, $v1, $zero
/* 77E4 80006BE4 03E00008 */  jr         $ra
/* 77E8 80006BE8 00000000 */   nop

glabel func_80006BEC
/* 77EC 80006BEC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 77F0 80006BF0 AFB00020 */  sw         $s0, 0x20($sp)
/* 77F4 80006BF4 3090FFFF */  andi       $s0, $a0, 0xffff
/* 77F8 80006BF8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 77FC 80006BFC AFA40048 */  sw         $a0, 0x48($sp)
/* 7800 80006C00 AFA5004C */  sw         $a1, 0x4c($sp)
/* 7804 80006C04 3C0E8008 */  lui        $t6, %hi(brianAction)
/* 7808 80006C08 95CEBAB8 */  lhu        $t6, %lo(brianAction)($t6)
/* 780C 80006C0C 24010006 */  addiu      $at, $zero, 6
/* 7810 80006C10 3C0F8008 */  lui        $t7, %hi(D_8007BB1C)
/* 7814 80006C14 51C100D0 */  beql       $t6, $at, .L80006F58
/* 7818 80006C18 02001025 */   or        $v0, $s0, $zero
/* 781C 80006C1C 85EFBB1C */  lh         $t7, %lo(D_8007BB1C)($t7)
/* 7820 80006C20 3C198005 */  lui        $t9, %hi(D_80053D00)
/* 7824 80006C24 3C098008 */  lui        $t1, 0x8008
/* 7828 80006C28 000FC080 */  sll        $t8, $t7, 2
/* 782C 80006C2C 0338C821 */  addu       $t9, $t9, $t8
/* 7830 80006C30 8F393D00 */  lw         $t9, %lo(D_80053D00)($t9)
/* 7834 80006C34 120000A1 */  beqz       $s0, .L80006EBC
/* 7838 80006C38 AFB90038 */   sw        $t9, 0x38($sp)
/* 783C 80006C3C 8CC80068 */  lw         $t0, 0x68($a2)
/* 7840 80006C40 44908000 */  mtc1       $s0, $f16
/* 7844 80006C44 95020084 */  lhu        $v0, 0x84($t0)
/* 7848 80006C48 44822000 */  mtc1       $v0, $f4
/* 784C 80006C4C 04410005 */  bgez       $v0, .L80006C64
/* 7850 80006C50 46802020 */   cvt.s.w   $f0, $f4
/* 7854 80006C54 3C014F80 */  lui        $at, 0x4f80
/* 7858 80006C58 44813000 */  mtc1       $at, $f6
/* 785C 80006C5C 00000000 */  nop
/* 7860 80006C60 46060000 */  add.s      $f0, $f0, $f6
.L80006C64:
/* 7864 80006C64 9529BBC0 */  lhu        $t1, -0x4440($t1)
/* 7868 80006C68 468084A0 */  cvt.s.w    $f18, $f16
/* 786C 80006C6C 3C014F80 */  lui        $at, 0x4f80
/* 7870 80006C70 00495021 */  addu       $t2, $v0, $t1
/* 7874 80006C74 448A4000 */  mtc1       $t2, $f8
/* 7878 80006C78 00000000 */  nop
/* 787C 80006C7C 468042A0 */  cvt.s.w    $f10, $f8
/* 7880 80006C80 06010004 */  bgez       $s0, .L80006C94
/* 7884 80006C84 460A0003 */   div.s     $f0, $f0, $f10
/* 7888 80006C88 44812000 */  mtc1       $at, $f4
/* 788C 80006C8C 00000000 */  nop
/* 7890 80006C90 46049480 */  add.s      $f18, $f18, $f4
.L80006C94:
/* 7894 80006C94 46009182 */  mul.s      $f6, $f18, $f0
/* 7898 80006C98 24100001 */  addiu      $s0, $zero, 1
/* 789C 80006C9C 3C014F00 */  lui        $at, 0x4f00
/* 78A0 80006CA0 444BF800 */  cfc1       $t3, $31
/* 78A4 80006CA4 44D0F800 */  ctc1       $s0, $31
/* 78A8 80006CA8 00000000 */  nop
/* 78AC 80006CAC 46003224 */  cvt.w.s    $f8, $f6
/* 78B0 80006CB0 4450F800 */  cfc1       $s0, $31
/* 78B4 80006CB4 00000000 */  nop
/* 78B8 80006CB8 32100078 */  andi       $s0, $s0, 0x78
/* 78BC 80006CBC 52000013 */  beql       $s0, $zero, .L80006D0C
/* 78C0 80006CC0 44104000 */   mfc1      $s0, $f8
/* 78C4 80006CC4 44814000 */  mtc1       $at, $f8
/* 78C8 80006CC8 24100001 */  addiu      $s0, $zero, 1
/* 78CC 80006CCC 46083201 */  sub.s      $f8, $f6, $f8
/* 78D0 80006CD0 44D0F800 */  ctc1       $s0, $31
/* 78D4 80006CD4 00000000 */  nop
/* 78D8 80006CD8 46004224 */  cvt.w.s    $f8, $f8
/* 78DC 80006CDC 4450F800 */  cfc1       $s0, $31
/* 78E0 80006CE0 00000000 */  nop
/* 78E4 80006CE4 32100078 */  andi       $s0, $s0, 0x78
/* 78E8 80006CE8 16000005 */  bnez       $s0, .L80006D00
/* 78EC 80006CEC 00000000 */   nop
/* 78F0 80006CF0 44104000 */  mfc1       $s0, $f8
/* 78F4 80006CF4 3C018000 */  lui        $at, 0x8000
/* 78F8 80006CF8 10000007 */  b          .L80006D18
/* 78FC 80006CFC 02018025 */   or        $s0, $s0, $at
.L80006D00:
/* 7900 80006D00 10000005 */  b          .L80006D18
/* 7904 80006D04 2410FFFF */   addiu     $s0, $zero, -1
/* 7908 80006D08 44104000 */  mfc1       $s0, $f8
.L80006D0C:
/* 790C 80006D0C 00000000 */  nop
/* 7910 80006D10 0600FFFB */  bltz       $s0, .L80006D00
/* 7914 80006D14 00000000 */   nop
.L80006D18:
/* 7918 80006D18 320CFFFF */  andi       $t4, $s0, 0xffff
/* 791C 80006D1C 01808025 */  or         $s0, $t4, $zero
/* 7920 80006D20 44CBF800 */  ctc1       $t3, $31
/* 7924 80006D24 44905000 */  mtc1       $s0, $f10
/* 7928 80006D28 3C014F80 */  lui        $at, 0x4f80
/* 792C 80006D2C 05810004 */  bgez       $t4, .L80006D40
/* 7930 80006D30 46805320 */   cvt.s.w   $f12, $f10
/* 7934 80006D34 44818000 */  mtc1       $at, $f16
/* 7938 80006D38 00000000 */  nop
/* 793C 80006D3C 46106300 */  add.s      $f12, $f12, $f16
.L80006D40:
/* 7940 80006D40 0C00D3D8 */  jal        _nsqrtf
/* 7944 80006D44 00000000 */   nop
/* 7948 80006D48 3C013F80 */  lui        $at, 0x3f80
/* 794C 80006D4C 44812000 */  mtc1       $at, $f4
/* 7950 80006D50 24040001 */  addiu      $a0, $zero, 1
/* 7954 80006D54 3C014F00 */  lui        $at, 0x4f00
/* 7958 80006D58 46040480 */  add.s      $f18, $f0, $f4
/* 795C 80006D5C 444DF800 */  cfc1       $t5, $31
/* 7960 80006D60 44C4F800 */  ctc1       $a0, $31
/* 7964 80006D64 00000000 */  nop
/* 7968 80006D68 460091A4 */  cvt.w.s    $f6, $f18
/* 796C 80006D6C 4444F800 */  cfc1       $a0, $31
/* 7970 80006D70 00000000 */  nop
/* 7974 80006D74 30840078 */  andi       $a0, $a0, 0x78
/* 7978 80006D78 50800013 */  beql       $a0, $zero, .L80006DC8
/* 797C 80006D7C 44043000 */   mfc1      $a0, $f6
/* 7980 80006D80 44813000 */  mtc1       $at, $f6
/* 7984 80006D84 24040001 */  addiu      $a0, $zero, 1
/* 7988 80006D88 46069181 */  sub.s      $f6, $f18, $f6
/* 798C 80006D8C 44C4F800 */  ctc1       $a0, $31
/* 7990 80006D90 00000000 */  nop
/* 7994 80006D94 460031A4 */  cvt.w.s    $f6, $f6
/* 7998 80006D98 4444F800 */  cfc1       $a0, $31
/* 799C 80006D9C 00000000 */  nop
/* 79A0 80006DA0 30840078 */  andi       $a0, $a0, 0x78
/* 79A4 80006DA4 14800005 */  bnez       $a0, .L80006DBC
/* 79A8 80006DA8 00000000 */   nop
/* 79AC 80006DAC 44043000 */  mfc1       $a0, $f6
/* 79B0 80006DB0 3C018000 */  lui        $at, 0x8000
/* 79B4 80006DB4 10000007 */  b          .L80006DD4
/* 79B8 80006DB8 00812025 */   or        $a0, $a0, $at
.L80006DBC:
/* 79BC 80006DBC 10000005 */  b          .L80006DD4
/* 79C0 80006DC0 2404FFFF */   addiu     $a0, $zero, -1
/* 79C4 80006DC4 44043000 */  mfc1       $a0, $f6
.L80006DC8:
/* 79C8 80006DC8 00000000 */  nop
/* 79CC 80006DCC 0480FFFB */  bltz       $a0, .L80006DBC
/* 79D0 80006DD0 00000000 */   nop
.L80006DD4:
/* 79D4 80006DD4 44CDF800 */  ctc1       $t5, $31
/* 79D8 80006DD8 0C008BF4 */  jal        ReturnRandomNumber
/* 79DC 80006DDC 00000000 */   nop
/* 79E0 80006DE0 02028021 */  addu       $s0, $s0, $v0
/* 79E4 80006DE4 320EFFFF */  andi       $t6, $s0, 0xffff
/* 79E8 80006DE8 15C00004 */  bnez       $t6, .L80006DFC
/* 79EC 80006DEC 01C08025 */   or        $s0, $t6, $zero
/* 79F0 80006DF0 25D00001 */  addiu      $s0, $t6, 1
/* 79F4 80006DF4 320FFFFF */  andi       $t7, $s0, 0xffff
/* 79F8 80006DF8 01E08025 */  or         $s0, $t7, $zero
.L80006DFC:
/* 79FC 80006DFC 3C048008 */  lui        $a0, %hi(BrianPos)
/* 7A00 80006E00 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 7A04 80006E04 8C820064 */  lw         $v0, 0x64($a0)
/* 7A08 80006E08 3C098008 */  lui        $t1, 0x8008
/* 7A0C 80006E0C 24050200 */  addiu      $a1, $zero, 0x200
/* 7A10 80006E10 94430004 */  lhu        $v1, 4($v0)
/* 7A14 80006E14 AFB0002C */  sw         $s0, 0x2c($sp)
/* 7A18 80006E18 8FB9002C */  lw         $t9, 0x2c($sp)
/* 7A1C 80006E1C 0070082A */  slt        $at, $v1, $s0
/* 7A20 80006E20 10200003 */  beqz       $at, .L80006E30
/* 7A24 80006E24 00794023 */   subu      $t0, $v1, $t9
/* 7A28 80006E28 10000002 */  b          .L80006E34
/* 7A2C 80006E2C A4400004 */   sh        $zero, 4($v0)
.L80006E30:
/* 7A30 80006E30 A4480004 */  sh         $t0, 4($v0)
.L80006E34:
/* 7A34 80006E34 9529BB38 */  lhu        $t1, -0x44c8($t1)
/* 7A38 80006E38 24060002 */  addiu      $a2, $zero, 2
/* 7A3C 80006E3C 312A0200 */  andi       $t2, $t1, 0x200
/* 7A40 80006E40 11400011 */  beqz       $t2, .L80006E88
/* 7A44 80006E44 00000000 */   nop
/* 7A48 80006E48 8C820064 */  lw         $v0, 0x64($a0)
/* 7A4C 80006E4C 8FAC002C */  lw         $t4, 0x2c($sp)
/* 7A50 80006E50 944B0008 */  lhu        $t3, 8($v0)
/* 7A54 80006E54 016C6821 */  addu       $t5, $t3, $t4
/* 7A58 80006E58 A44D0008 */  sh         $t5, 8($v0)
/* 7A5C 80006E5C 8C820064 */  lw         $v0, 0x64($a0)
/* 7A60 80006E60 9443000A */  lhu        $v1, 0xa($v0)
/* 7A64 80006E64 944E0008 */  lhu        $t6, 8($v0)
/* 7A68 80006E68 006E082A */  slt        $at, $v1, $t6
/* 7A6C 80006E6C 10200002 */  beqz       $at, .L80006E78
/* 7A70 80006E70 00000000 */   nop
/* 7A74 80006E74 A4430008 */  sh         $v1, 8($v0)
.L80006E78:
/* 7A78 80006E78 0C007F3E */  jal        func_8001FCF8
/* 7A7C 80006E7C 2407001E */   addiu     $a3, $zero, 0x1e
/* 7A80 80006E80 3C048008 */  lui        $a0, %hi(BrianPos)
/* 7A84 80006E84 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
.L80006E88:
/* 7A88 80006E88 3C0F8008 */  lui        $t7, %hi(ConstantBrianDataPtr)
/* 7A8C 80006E8C 8DEFBAC8 */  lw         $t7, %lo(ConstantBrianDataPtr)($t7)
/* 7A90 80006E90 3C088008 */  lui        $t0, %hi(ConstantBrianDataPtr)
/* 7A94 80006E94 00002825 */  or         $a1, $zero, $zero
/* 7A98 80006E98 95F80028 */  lhu        $t8, 0x28($t7)
/* 7A9C 80006E9C 27190001 */  addiu      $t9, $t8, 1
/* 7AA0 80006EA0 A5F90028 */  sh         $t9, 0x28($t7)
/* 7AA4 80006EA4 8D08BAC8 */  lw         $t0, %lo(ConstantBrianDataPtr)($t0)
/* 7AA8 80006EA8 9509002E */  lhu        $t1, 0x2e($t0)
/* 7AAC 80006EAC 252A0001 */  addiu      $t2, $t1, 1
/* 7AB0 80006EB0 A50A002E */  sh         $t2, 0x2e($t0)
/* 7AB4 80006EB4 0C00637D */  jal        func_80018DF4
/* 7AB8 80006EB8 8FA6002C */   lw        $a2, 0x2c($sp)
.L80006EBC:
/* 7ABC 80006EBC 8FAC0038 */  lw         $t4, 0x38($sp)
/* 7AC0 80006EC0 240B0005 */  addiu      $t3, $zero, 5
/* 7AC4 80006EC4 3C018008 */  lui        $at, %hi(brianAction)
/* 7AC8 80006EC8 A42BBAB8 */  sh         $t3, %lo(brianAction)($at)
/* 7ACC 80006ECC 858D0062 */  lh         $t5, 0x62($t4)
/* 7AD0 80006ED0 3C048008 */  lui        $a0, %hi(BrianPos)
/* 7AD4 80006ED4 2484BACC */  addiu      $a0, $a0, %lo(BrianPos)
/* 7AD8 80006ED8 A42DBABC */  sh         $t5, -0x4544($at)
/* 7ADC 80006EDC 948E0060 */  lhu        $t6, 0x60($a0)
/* 7AE0 80006EE0 24050008 */  addiu      $a1, $zero, 8
/* 7AE4 80006EE4 24060001 */  addiu      $a2, $zero, 1
/* 7AE8 80006EE8 35D80001 */  ori        $t8, $t6, 1
/* 7AEC 80006EEC A4980060 */  sh         $t8, 0x60($a0)
/* 7AF0 80006EF0 97A2004E */  lhu        $v0, 0x4e($sp)
/* 7AF4 80006EF4 3C078008 */  lui        $a3, 0x8008
/* 7AF8 80006EF8 240A0001 */  addiu      $t2, $zero, 1
/* 7AFC 80006EFC 30590004 */  andi       $t9, $v0, 4
/* 7B00 80006F00 13200003 */  beqz       $t9, .L80006F10
/* 7B04 80006F04 24080001 */   addiu     $t0, $zero, 1
/* 7B08 80006F08 37090002 */  ori        $t1, $t8, 2
/* 7B0C 80006F0C A4890060 */  sh         $t1, 0x60($a0)
.L80006F10:
/* 7B10 80006F10 8CE7BC2C */  lw         $a3, -0x43d4($a3)
/* 7B14 80006F14 AFAA0010 */  sw         $t2, 0x10($sp)
/* 7B18 80006F18 AFA80014 */  sw         $t0, 0x14($sp)
/* 7B1C 80006F1C 0C00762C */  jal        updateAnim
/* 7B20 80006F20 AFA2002C */   sw        $v0, 0x2c($sp)
/* 7B24 80006F24 12000005 */  beqz       $s0, .L80006F3C
/* 7B28 80006F28 8FA2002C */   lw        $v0, 0x2c($sp)
/* 7B2C 80006F2C 24040002 */  addiu      $a0, $zero, 2
/* 7B30 80006F30 0C004FC8 */  jal        func_80013F20
/* 7B34 80006F34 AFA2002C */   sw        $v0, 0x2c($sp)
/* 7B38 80006F38 8FA2002C */  lw         $v0, 0x2c($sp)
.L80006F3C:
/* 7B3C 80006F3C 304B8000 */  andi       $t3, $v0, 0x8000
/* 7B40 80006F40 11600004 */  beqz       $t3, .L80006F54
/* 7B44 80006F44 00002025 */   or        $a0, $zero, $zero
/* 7B48 80006F48 24050018 */  addiu      $a1, $zero, 0x18
/* 7B4C 80006F4C 0C009A35 */  jal        func_800268D4
/* 7B50 80006F50 240600FF */   addiu     $a2, $zero, 0xff
.L80006F54:
/* 7B54 80006F54 02001025 */  or         $v0, $s0, $zero
.L80006F58:
/* 7B58 80006F58 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7B5C 80006F5C 8FB00020 */  lw         $s0, 0x20($sp)
/* 7B60 80006F60 27BD0048 */  addiu      $sp, $sp, 0x48
/* 7B64 80006F64 03E00008 */  jr         $ra
/* 7B68 80006F68 00000000 */   nop

glabel VOID_FUN_80006f6c
/* 7B6C 80006F6C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7B70 80006F70 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7B74 80006F74 3C0E8008 */  lui        $t6, %hi(brianAction)
/* 7B78 80006F78 95CEBAB8 */  lhu        $t6, %lo(brianAction)($t6)
/* 7B7C 80006F7C 24010006 */  addiu      $at, $zero, 6
/* 7B80 80006F80 3C0F8008 */  lui        $t7, %hi(ConstantBrianDataPtr)
/* 7B84 80006F84 51C10027 */  beql       $t6, $at, .L80007024
/* 7B88 80006F88 8FBF001C */   lw        $ra, 0x1c($sp)
/* 7B8C 80006F8C 8DEFBAC8 */  lw         $t7, %lo(ConstantBrianDataPtr)($t7)
/* 7B90 80006F90 3C198008 */  lui        $t9, 0x8008
/* 7B94 80006F94 3C028005 */  lui        $v0, 0x8005
/* 7B98 80006F98 95F80004 */  lhu        $t8, 4($t7)
/* 7B9C 80006F9C 24090003 */  addiu      $t1, $zero, 3
/* 7BA0 80006FA0 3C018008 */  lui        $at, %hi(brianAction)
/* 7BA4 80006FA4 1300001E */  beqz       $t8, .L80007020
/* 7BA8 80006FA8 3C0B8008 */   lui       $t3, 0x8008
/* 7BAC 80006FAC 8739BB1C */  lh         $t9, -0x44e4($t9)
/* 7BB0 80006FB0 A429BAB8 */  sh         $t1, %lo(brianAction)($at)
/* 7BB4 80006FB4 3C048008 */  lui        $a0, 0x8008
/* 7BB8 80006FB8 00194080 */  sll        $t0, $t9, 2
/* 7BBC 80006FBC 00481021 */  addu       $v0, $v0, $t0
/* 7BC0 80006FC0 8C423D00 */  lw         $v0, 0x3d00($v0)
/* 7BC4 80006FC4 3C078008 */  lui        $a3, 0x8008
/* 7BC8 80006FC8 240D0001 */  addiu      $t5, $zero, 1
/* 7BCC 80006FCC 844A0056 */  lh         $t2, 0x56($v0)
/* 7BD0 80006FD0 240E0001 */  addiu      $t6, $zero, 1
/* 7BD4 80006FD4 AFAE0014 */  sw         $t6, 0x14($sp)
/* 7BD8 80006FD8 A42ABABC */  sh         $t2, -0x4544($at)
/* 7BDC 80006FDC 956BBB2C */  lhu        $t3, -0x44d4($t3)
/* 7BE0 80006FE0 3C018008 */  lui        $at, %hi(D_8007BB2C)
/* 7BE4 80006FE4 AFAD0010 */  sw         $t5, 0x10($sp)
/* 7BE8 80006FE8 356C0003 */  ori        $t4, $t3, 3
/* 7BEC 80006FEC A42CBB2C */  sh         $t4, %lo(D_8007BB2C)($at)
/* 7BF0 80006FF0 8CE7BC2C */  lw         $a3, -0x43d4($a3)
/* 7BF4 80006FF4 2484BACC */  addiu      $a0, $a0, -0x4534
/* 7BF8 80006FF8 24050007 */  addiu      $a1, $zero, 7
/* 7BFC 80006FFC 0C00762C */  jal        updateAnim
/* 7C00 80007000 24060001 */   addiu     $a2, $zero, 1
/* 7C04 80007004 3C048008 */  lui        $a0, %hi(BrianPos)
/* 7C08 80007008 0C00822E */  jal        func_800208B8
/* 7C0C 8000700C 2484BACC */   addiu     $a0, $a0, %lo(BrianPos)
/* 7C10 80007010 00002025 */  or         $a0, $zero, $zero
/* 7C14 80007014 24050017 */  addiu      $a1, $zero, 0x17
/* 7C18 80007018 0C009A35 */  jal        func_800268D4
/* 7C1C 8000701C 240600FF */   addiu     $a2, $zero, 0xff
.L80007020:
/* 7C20 80007020 8FBF001C */  lw         $ra, 0x1c($sp)
.L80007024:
/* 7C24 80007024 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7C28 80007028 03E00008 */  jr         $ra
/* 7C2C 8000702C 00000000 */   nop

glabel func_80007030
/* 7C30 80007030 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7C34 80007034 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C38 80007038 AFA40020 */  sw         $a0, 0x20($sp)
/* 7C3C 8000703C 94AE0060 */  lhu        $t6, 0x60($a1)
/* 7C40 80007040 00001825 */  or         $v1, $zero, $zero
/* 7C44 80007044 3C188008 */  lui        $t8, %hi(HUDState)
/* 7C48 80007048 31CF0001 */  andi       $t7, $t6, 1
/* 7C4C 8000704C 55E00018 */  bnel       $t7, $zero, .L800070B0
/* 7C50 80007050 00601025 */   or        $v0, $v1, $zero
/* 7C54 80007054 8F18B2E4 */  lw         $t8, %lo(HUDState)($t8)
/* 7C58 80007058 3C028009 */  lui        $v0, %hi(BattleState)
/* 7C5C 8000705C 33190080 */  andi       $t9, $t8, 0x80
/* 7C60 80007060 57200013 */  bnel       $t9, $zero, .L800070B0
/* 7C64 80007064 00601025 */   or        $v0, $v1, $zero
/* 7C68 80007068 9442C592 */  lhu        $v0, %lo(BattleState)($v0)
/* 7C6C 8000706C 30480001 */  andi       $t0, $v0, 1
/* 7C70 80007070 1100000D */  beqz       $t0, .L800070A8
/* 7C74 80007074 30490202 */   andi      $t1, $v0, 0x202
/* 7C78 80007078 5520000D */  bnel       $t1, $zero, .L800070B0
/* 7C7C 8000707C 00601025 */   or        $v0, $v1, $zero
/* 7C80 80007080 0C0056D4 */  jal        VOID_FUN_80015b50
/* 7C84 80007084 AFA0001C */   sw        $zero, 0x1c($sp)
/* 7C88 80007088 14400008 */  bnez       $v0, .L800070AC
/* 7C8C 8000708C 8FA3001C */   lw        $v1, 0x1c($sp)
/* 7C90 80007090 3C0A8009 */  lui        $t2, %hi(D_8008C594)
/* 7C94 80007094 954AC594 */  lhu        $t2, %lo(D_8008C594)($t2)
/* 7C98 80007098 55400005 */  bnel       $t2, $zero, .L800070B0
/* 7C9C 8000709C 00601025 */   or        $v0, $v1, $zero
/* 7CA0 800070A0 10000002 */  b          .L800070AC
/* 7CA4 800070A4 24030001 */   addiu     $v1, $zero, 1
.L800070A8:
/* 7CA8 800070A8 24030001 */  addiu      $v1, $zero, 1
.L800070AC:
/* 7CAC 800070AC 00601025 */  or         $v0, $v1, $zero
.L800070B0:
/* 7CB0 800070B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7CB4 800070B4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7CB8 800070B8 03E00008 */  jr         $ra
/* 7CBC 800070BC 00000000 */   nop

glabel func_800070C0
/* 7CC0 800070C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7CC4 800070C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7CC8 800070C8 00803025 */  or         $a2, $a0, $zero
/* 7CCC 800070CC AFA0001C */  sw         $zero, 0x1c($sp)
/* 7CD0 800070D0 94C7011C */  lhu        $a3, 0x11c($a2)
/* 7CD4 800070D4 3C028009 */  lui        $v0, %hi(ButtonPressedFrame)
/* 7CD8 800070D8 28E10003 */  slti       $at, $a3, 3
/* 7CDC 800070DC 1020003F */  beqz       $at, .L800071DC
/* 7CE0 800070E0 00000000 */   nop
/* 7CE4 800070E4 94422876 */  lhu        $v0, %lo(ButtonPressedFrame)($v0)
/* 7CE8 800070E8 304E000F */  andi       $t6, $v0, 0xf
/* 7CEC 800070EC 11C0003B */  beqz       $t6, .L800071DC
/* 7CF0 800070F0 304F0008 */   andi      $t7, $v0, 8
/* 7CF4 800070F4 11E00003 */  beqz       $t7, .L80007104
/* 7CF8 800070F8 30580004 */   andi      $t8, $v0, 4
/* 7CFC 800070FC 1000000E */  b          .L80007138
/* 7D00 80007100 AFA00024 */   sw        $zero, 0x24($sp)
.L80007104:
/* 7D04 80007104 13000004 */  beqz       $t8, .L80007118
/* 7D08 80007108 30480002 */   andi      $t0, $v0, 2
/* 7D0C 8000710C 24190002 */  addiu      $t9, $zero, 2
/* 7D10 80007110 10000009 */  b          .L80007138
/* 7D14 80007114 AFB90024 */   sw        $t9, 0x24($sp)
.L80007118:
/* 7D18 80007118 11000004 */  beqz       $t0, .L8000712C
/* 7D1C 8000711C 304A0001 */   andi      $t2, $v0, 1
/* 7D20 80007120 24090001 */  addiu      $t1, $zero, 1
/* 7D24 80007124 10000004 */  b          .L80007138
/* 7D28 80007128 AFA90024 */   sw        $t1, 0x24($sp)
.L8000712C:
/* 7D2C 8000712C 11400002 */  beqz       $t2, .L80007138
/* 7D30 80007130 240B0003 */   addiu     $t3, $zero, 3
/* 7D34 80007134 AFAB0024 */  sw         $t3, 0x24($sp)
.L80007138:
/* 7D38 80007138 8FAC0024 */  lw         $t4, 0x24($sp)
/* 7D3C 8000713C 00C76821 */  addu       $t5, $a2, $a3
/* 7D40 80007140 24C50119 */  addiu      $a1, $a2, 0x119
/* 7D44 80007144 A1AC0119 */  sb         $t4, 0x119($t5)
/* 7D48 80007148 94CE011C */  lhu        $t6, 0x11c($a2)
/* 7D4C 8000714C 25CF0001 */  addiu      $t7, $t6, 1
/* 7D50 80007150 A4CF011C */  sh         $t7, 0x11c($a2)
/* 7D54 80007154 AFA60028 */  sw         $a2, 0x28($sp)
/* 7D58 80007158 0C005224 */  jal        func_80014890
/* 7D5C 8000715C 31E4FFFF */   andi      $a0, $t7, 0xffff
/* 7D60 80007160 8FA60028 */  lw         $a2, 0x28($sp)
/* 7D64 80007164 00402025 */  or         $a0, $v0, $zero
/* 7D68 80007168 8CD80010 */  lw         $t8, 0x10($a2)
/* 7D6C 8000716C 0C005274 */  jal        func_800149D0
/* 7D70 80007170 97050008 */   lhu       $a1, 8($t8)
/* 7D74 80007174 30590005 */  andi       $t9, $v0, 5
/* 7D78 80007178 13200006 */  beqz       $t9, .L80007194
/* 7D7C 8000717C 8FA60028 */   lw        $a2, 0x28($sp)
/* 7D80 80007180 94C8011C */  lhu        $t0, 0x11c($a2)
/* 7D84 80007184 24020013 */  addiu      $v0, $zero, 0x13
/* 7D88 80007188 2509FFFF */  addiu      $t1, $t0, -1
/* 7D8C 8000718C 1000000B */  b          .L800071BC
/* 7D90 80007190 A4C9011C */   sh        $t1, 0x11c($a2)
.L80007194:
/* 7D94 80007194 3C048008 */  lui        $a0, %hi(HUDState)
/* 7D98 80007198 2484B2E4 */  addiu      $a0, $a0, %lo(HUDState)
/* 7D9C 8000719C 8C830000 */  lw         $v1, ($a0)
/* 7DA0 800071A0 24020017 */  addiu      $v0, $zero, 0x17
/* 7DA4 800071A4 306A0004 */  andi       $t2, $v1, 4
/* 7DA8 800071A8 15400003 */  bnez       $t2, .L800071B8
/* 7DAC 800071AC 346B0004 */   ori       $t3, $v1, 4
/* 7DB0 800071B0 10000002 */  b          .L800071BC
/* 7DB4 800071B4 AC8B0000 */   sw        $t3, ($a0)
.L800071B8:
/* 7DB8 800071B8 24020017 */  addiu      $v0, $zero, 0x17
.L800071BC:
/* 7DBC 800071BC 00022E00 */  sll        $a1, $v0, 0x18
/* 7DC0 800071C0 00056603 */  sra        $t4, $a1, 0x18
/* 7DC4 800071C4 01802825 */  or         $a1, $t4, $zero
/* 7DC8 800071C8 00002025 */  or         $a0, $zero, $zero
/* 7DCC 800071CC 0C009A35 */  jal        func_800268D4
/* 7DD0 800071D0 240600FF */   addiu     $a2, $zero, 0xff
/* 7DD4 800071D4 10000030 */  b          .L80007298
/* 7DD8 800071D8 8FA2001C */   lw        $v0, 0x1c($sp)
.L800071DC:
/* 7DDC 800071DC 3C028009 */  lui        $v0, %hi(ButtonPressedFrame)
/* 7DE0 800071E0 10E00017 */  beqz       $a3, .L80007240
/* 7DE4 800071E4 94422876 */   lhu       $v0, %lo(ButtonPressedFrame)($v0)
/* 7DE8 800071E8 304DA000 */  andi       $t5, $v0, 0xa000
/* 7DEC 800071EC 11A00014 */  beqz       $t5, .L80007240
/* 7DF0 800071F0 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 7DF4 800071F4 24C50119 */  addiu      $a1, $a2, 0x119
/* 7DF8 800071F8 0C005224 */  jal        func_80014890
/* 7DFC 800071FC AFA60028 */   sw        $a2, 0x28($sp)
/* 7E00 80007200 8FA60028 */  lw         $a2, 0x28($sp)
/* 7E04 80007204 3044FFFF */  andi       $a0, $v0, 0xffff
/* 7E08 80007208 8CCE0010 */  lw         $t6, 0x10($a2)
/* 7E0C 8000720C A4C2011E */  sh         $v0, 0x11e($a2)
/* 7E10 80007210 0C005274 */  jal        func_800149D0
/* 7E14 80007214 95C50008 */   lhu       $a1, 8($t6)
/* 7E18 80007218 1440001E */  bnez       $v0, .L80007294
/* 7E1C 8000721C 3C048008 */   lui       $a0, %hi(HUDState)
/* 7E20 80007220 2484B2E4 */  addiu      $a0, $a0, %lo(HUDState)
/* 7E24 80007224 8C8F0000 */  lw         $t7, ($a0)
/* 7E28 80007228 2401FFFB */  addiu      $at, $zero, -5
/* 7E2C 8000722C 24190001 */  addiu      $t9, $zero, 1
/* 7E30 80007230 01E1C024 */  and        $t8, $t7, $at
/* 7E34 80007234 AC980000 */  sw         $t8, ($a0)
/* 7E38 80007238 10000016 */  b          .L80007294
/* 7E3C 8000723C AFB9001C */   sw        $t9, 0x1c($sp)
.L80007240:
/* 7E40 80007240 30484000 */  andi       $t0, $v0, 0x4000
/* 7E44 80007244 11000013 */  beqz       $t0, .L80007294
/* 7E48 80007248 3C048008 */   lui       $a0, %hi(HUDState)
/* 7E4C 8000724C 2484B2E4 */  addiu      $a0, $a0, %lo(HUDState)
/* 7E50 80007250 8C890000 */  lw         $t1, ($a0)
/* 7E54 80007254 24050013 */  addiu      $a1, $zero, 0x13
/* 7E58 80007258 312A0004 */  andi       $t2, $t1, 4
/* 7E5C 8000725C 5140000E */  beql       $t2, $zero, .L80007298
/* 7E60 80007260 8FA2001C */   lw        $v0, 0x1c($sp)
/* 7E64 80007264 10E00003 */  beqz       $a3, .L80007274
/* 7E68 80007268 24EBFFFF */   addiu     $t3, $a3, -1
/* 7E6C 8000726C A4CB011C */  sh         $t3, 0x11c($a2)
/* 7E70 80007270 3167FFFF */  andi       $a3, $t3, 0xffff
.L80007274:
/* 7E74 80007274 14E00005 */  bnez       $a3, .L8000728C
/* 7E78 80007278 240600FF */   addiu     $a2, $zero, 0xff
/* 7E7C 8000727C 8C8C0000 */  lw         $t4, ($a0)
/* 7E80 80007280 2401FFFB */  addiu      $at, $zero, -5
/* 7E84 80007284 01816824 */  and        $t5, $t4, $at
/* 7E88 80007288 AC8D0000 */  sw         $t5, ($a0)
.L8000728C:
/* 7E8C 8000728C 0C009A35 */  jal        func_800268D4
/* 7E90 80007290 00002025 */   or        $a0, $zero, $zero
.L80007294:
/* 7E94 80007294 8FA2001C */  lw         $v0, 0x1c($sp)
.L80007298:
/* 7E98 80007298 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7E9C 8000729C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7EA0 800072A0 03E00008 */  jr         $ra
/* 7EA4 800072A4 00000000 */   nop

glabel func_800072A8
/* 7EA8 800072A8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7EAC 800072AC AFB10020 */  sw         $s1, 0x20($sp)
/* 7EB0 800072B0 AFB0001C */  sw         $s0, 0x1c($sp)
/* 7EB4 800072B4 00808025 */  or         $s0, $a0, $zero
/* 7EB8 800072B8 00A08825 */  or         $s1, $a1, $zero
/* 7EBC 800072BC AFBF0024 */  sw         $ra, 0x24($sp)
/* 7EC0 800072C0 AFA60030 */  sw         $a2, 0x30($sp)
/* 7EC4 800072C4 960F011C */  lhu        $t7, 0x11c($s0)
/* 7EC8 800072C8 8E220064 */  lw         $v0, 0x64($s1)
/* 7ECC 800072CC 3C19800C */  lui        $t9, %hi(D_800C1B26)
/* 7ED0 800072D0 000FC040 */  sll        $t8, $t7, 1
/* 7ED4 800072D4 0338C821 */  addu       $t9, $t9, $t8
/* 7ED8 800072D8 97391B26 */  lhu        $t9, %lo(D_800C1B26)($t9)
/* 7EDC 800072DC 944E0008 */  lhu        $t6, 8($v0)
/* 7EE0 800072E0 3C0C800C */  lui        $t4, 0x800c
/* 7EE4 800072E4 24010002 */  addiu      $at, $zero, 2
/* 7EE8 800072E8 01D94023 */  subu       $t0, $t6, $t9
/* 7EEC 800072EC A4480008 */  sh         $t0, 8($v0)
/* 7EF0 800072F0 9603011E */  lhu        $v1, 0x11e($s0)
/* 7EF4 800072F4 44800000 */  mtc1       $zero, $f0
/* 7EF8 800072F8 02202025 */  or         $a0, $s1, $zero
/* 7EFC 800072FC 00034A03 */  sra        $t1, $v1, 8
/* 7F00 80007300 312A000F */  andi       $t2, $t1, 0xf
/* 7F04 80007304 000A5880 */  sll        $t3, $t2, 2
/* 7F08 80007308 018B6021 */  addu       $t4, $t4, $t3
/* 7F0C 8000730C 306D00FF */  andi       $t5, $v1, 0xff
/* 7F10 80007310 8D8C1B14 */  lw         $t4, 0x1b14($t4)
/* 7F14 80007314 000D7900 */  sll        $t7, $t5, 4
/* 7F18 80007318 01ED7821 */  addu       $t7, $t7, $t5
/* 7F1C 8000731C 000F7880 */  sll        $t7, $t7, 2
/* 7F20 80007320 018F3821 */  addu       $a3, $t4, $t7
/* 7F24 80007324 94F80018 */  lhu        $t8, 0x18($a3)
/* 7F28 80007328 240B000E */  addiu      $t3, $zero, 0xe
/* 7F2C 8000732C 240D0012 */  addiu      $t5, $zero, 0x12
/* 7F30 80007330 17010007 */  bne        $t8, $at, .L80007350
/* 7F34 80007334 24060001 */   addiu     $a2, $zero, 1
/* 7F38 80007338 960E0008 */  lhu        $t6, 8($s0)
/* 7F3C 8000733C 24050017 */  addiu      $a1, $zero, 0x17
/* 7F40 80007340 24070016 */  addiu      $a3, $zero, 0x16
/* 7F44 80007344 35D90004 */  ori        $t9, $t6, 4
/* 7F48 80007348 10000004 */  b          .L8000735C
/* 7F4C 8000734C A6190008 */   sh        $t9, 8($s0)
.L80007350:
/* 7F50 80007350 3C078008 */  lui        $a3, %hi(tempCurrAnim)
/* 7F54 80007354 24050003 */  addiu      $a1, $zero, 3
/* 7F58 80007358 8CE7BC2C */  lw         $a3, %lo(tempCurrAnim)($a3)
.L8000735C:
/* 7F5C 8000735C 8FA80030 */  lw         $t0, 0x30($sp)
/* 7F60 80007360 00054880 */  sll        $t1, $a1, 2
/* 7F64 80007364 01254823 */  subu       $t1, $t1, $a1
/* 7F68 80007368 00094880 */  sll        $t1, $t1, 2
/* 7F6C 8000736C 01095021 */  addu       $t2, $t0, $t1
/* 7F70 80007370 95420002 */  lhu        $v0, 2($t2)
/* 7F74 80007374 A60B0000 */  sh         $t3, ($s0)
/* 7F78 80007378 A60D0120 */  sh         $t5, 0x120($s0)
/* 7F7C 8000737C A600011C */  sh         $zero, 0x11c($s0)
/* 7F80 80007380 A6020004 */  sh         $v0, 4($s0)
/* 7F84 80007384 962C0060 */  lhu        $t4, 0x60($s1)
/* 7F88 80007388 E6200018 */  swc1       $f0, 0x18($s1)
/* 7F8C 8000738C E6200020 */  swc1       $f0, 0x20($s1)
/* 7F90 80007390 358F0001 */  ori        $t7, $t4, 1
/* 7F94 80007394 A62F0060 */  sh         $t7, 0x60($s1)
/* 7F98 80007398 24180001 */  addiu      $t8, $zero, 1
/* 7F9C 8000739C 240E0001 */  addiu      $t6, $zero, 1
/* 7FA0 800073A0 AFAE0014 */  sw         $t6, 0x14($sp)
/* 7FA4 800073A4 0C00762C */  jal        updateAnim
/* 7FA8 800073A8 AFB80010 */   sw        $t8, 0x10($sp)
/* 7FAC 800073AC 2404002D */  addiu      $a0, $zero, 0x2d
/* 7FB0 800073B0 0C00503B */  jal        func_800140EC
/* 7FB4 800073B4 02202825 */   or        $a1, $s1, $zero
/* 7FB8 800073B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7FBC 800073BC 8FB0001C */  lw         $s0, 0x1c($sp)
/* 7FC0 800073C0 8FB10020 */  lw         $s1, 0x20($sp)
/* 7FC4 800073C4 03E00008 */  jr         $ra
/* 7FC8 800073C8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel battleFenceSomething
/* 7FCC 800073CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7FD0 800073D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FD4 800073D4 3C0E8009 */  lui        $t6, %hi(BattleState)
/* 7FD8 800073D8 95CEC592 */  lhu        $t6, %lo(BattleState)($t6)
/* 7FDC 800073DC 3C018009 */  lui        $at, %hi(brianBattleFenceXpos)
/* 7FE0 800073E0 31CF0001 */  andi       $t7, $t6, 1
/* 7FE4 800073E4 51E0002B */  beql       $t7, $zero, .L80007494
/* 7FE8 800073E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7FEC 800073EC C4840014 */  lwc1       $f4, 0x14($a0)
/* 7FF0 800073F0 C426C5A4 */  lwc1       $f6, %lo(brianBattleFenceXpos)($at)
/* 7FF4 800073F4 3C018009 */  lui        $at, %hi(brianBattleFenceZpos)
/* 7FF8 800073F8 C42AC430 */  lwc1       $f10, %lo(brianBattleFenceZpos)($at)
/* 7FFC 800073FC 46062001 */  sub.s      $f0, $f4, $f6
/* 8000 80007400 C488001C */  lwc1       $f8, 0x1c($a0)
/* 8004 80007404 AFA40018 */  sw         $a0, 0x18($sp)
/* 8008 80007408 460A4081 */  sub.s      $f2, $f8, $f10
/* 800C 8000740C 46000402 */  mul.s      $f16, $f0, $f0
/* 8010 80007410 00000000 */  nop
/* 8014 80007414 46021482 */  mul.s      $f18, $f2, $f2
/* 8018 80007418 0C00D3D8 */  jal        _nsqrtf
/* 801C 8000741C 46128300 */   add.s     $f12, $f16, $f18
/* 8020 80007420 3C038008 */  lui        $v1, %hi(D_8007BCA0)
/* 8024 80007424 2463BCA0 */  addiu      $v1, $v1, %lo(D_8007BCA0)
/* 8028 80007428 C4640000 */  lwc1       $f4, ($v1)
/* 802C 8000742C 3C014049 */  lui        $at, 0x4049
/* 8030 80007430 44816800 */  mtc1       $at, $f13
/* 8034 80007434 46002180 */  add.s      $f6, $f4, $f0
/* 8038 80007438 44806000 */  mtc1       $zero, $f12
/* 803C 8000743C 8FA40018 */  lw         $a0, 0x18($sp)
/* 8040 80007440 E4660000 */  swc1       $f6, ($v1)
/* 8044 80007444 C4680000 */  lwc1       $f8, ($v1)
/* 8048 80007448 460040A1 */  cvt.d.s    $f2, $f8
/* 804C 8000744C 4622603C */  c.lt.d     $f12, $f2
/* 8050 80007450 00000000 */  nop
/* 8054 80007454 4502000F */  bc1fl      .L80007494
/* 8058 80007458 8FBF0014 */   lw        $ra, 0x14($sp)
/* 805C 8000745C 462C1281 */  sub.d      $f10, $f2, $f12
.L80007460:
/* 8060 80007460 46205420 */  cvt.s.d    $f16, $f10
/* 8064 80007464 E4700000 */  swc1       $f16, ($v1)
/* 8068 80007468 8C820010 */  lw         $v0, 0x10($a0)
/* 806C 8000746C 9458002C */  lhu        $t8, 0x2c($v0)
/* 8070 80007470 27190001 */  addiu      $t9, $t8, 1
/* 8074 80007474 A459002C */  sh         $t9, 0x2c($v0)
/* 8078 80007478 C4720000 */  lwc1       $f18, ($v1)
/* 807C 8000747C 460090A1 */  cvt.d.s    $f2, $f18
/* 8080 80007480 4622603C */  c.lt.d     $f12, $f2
/* 8084 80007484 00000000 */  nop
/* 8088 80007488 4503FFF5 */  bc1tl      .L80007460
/* 808C 8000748C 462C1281 */   sub.d     $f10, $f2, $f12
/* 8090 80007490 8FBF0014 */  lw         $ra, 0x14($sp)
.L80007494:
/* 8094 80007494 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8098 80007498 03E00008 */  jr         $ra
/* 809C 8000749C 00000000 */   nop

glabel func_800074A0
/* 80A0 800074A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 80A4 800074A4 AFB00018 */  sw         $s0, 0x18($sp)
/* 80A8 800074A8 00808025 */  or         $s0, $a0, $zero
/* 80AC 800074AC AFBF001C */  sw         $ra, 0x1c($sp)
/* 80B0 800074B0 AFA50024 */  sw         $a1, 0x24($sp)
/* 80B4 800074B4 3C0E8009 */  lui        $t6, %hi(BattleState)
/* 80B8 800074B8 95CEC592 */  lhu        $t6, %lo(BattleState)($t6)
/* 80BC 800074BC 3C188008 */  lui        $t8, %hi(D_80084F10)
/* 80C0 800074C0 31CF0001 */  andi       $t7, $t6, 1
/* 80C4 800074C4 55E00054 */  bnel       $t7, $zero, .L80007618
/* 80C8 800074C8 8FAD0024 */   lw        $t5, 0x24($sp)
/* 80CC 800074CC 97184F10 */  lhu        $t8, %lo(D_80084F10)($t8)
/* 80D0 800074D0 3C028008 */  lui        $v0, %hi(D_8007BC14)
/* 80D4 800074D4 2442BC14 */  addiu      $v0, $v0, %lo(D_8007BC14)
/* 80D8 800074D8 33190001 */  andi       $t9, $t8, 1
/* 80DC 800074DC 13200029 */  beqz       $t9, .L80007584
/* 80E0 800074E0 3C014089 */   lui       $at, 0x4089
/* 80E4 800074E4 3C014069 */  lui        $at, 0x4069
/* 80E8 800074E8 44816800 */  mtc1       $at, $f13
/* 80EC 800074EC 3C028008 */  lui        $v0, %hi(D_8007BC10)
/* 80F0 800074F0 2442BC10 */  addiu      $v0, $v0, %lo(D_8007BC10)
/* 80F4 800074F4 3C018008 */  lui        $at, %hi(D_8007BA5C)
/* 80F8 800074F8 C422BA5C */  lwc1       $f2, %lo(D_8007BA5C)($at)
/* 80FC 800074FC C4440000 */  lwc1       $f4, ($v0)
/* 8100 80007500 44806000 */  mtc1       $zero, $f12
/* 8104 80007504 3C038008 */  lui        $v1, %hi(D_8007BC18)
/* 8108 80007508 46022180 */  add.s      $f6, $f4, $f2
/* 810C 8000750C 2463BC18 */  addiu      $v1, $v1, %lo(D_8007BC18)
/* 8110 80007510 E4460000 */  swc1       $f6, ($v0)
/* 8114 80007514 C4480000 */  lwc1       $f8, ($v0)
/* 8118 80007518 46004021 */  cvt.d.s    $f0, $f8
/* 811C 8000751C 4620603C */  c.lt.d     $f12, $f0
/* 8120 80007520 00000000 */  nop
/* 8124 80007524 45020005 */  bc1fl      .L8000753C
/* 8128 80007528 C4720000 */   lwc1      $f18, ($v1)
/* 812C 8000752C 462C0281 */  sub.d      $f10, $f0, $f12
/* 8130 80007530 46205420 */  cvt.s.d    $f16, $f10
/* 8134 80007534 E4500000 */  swc1       $f16, ($v0)
/* 8138 80007538 C4720000 */  lwc1       $f18, ($v1)
.L8000753C:
/* 813C 8000753C 3C018007 */  lui        $at, %hi(D_800710F8)
/* 8140 80007540 D42C10F8 */  ldc1       $f12, %lo(D_800710F8)($at)
/* 8144 80007544 46029100 */  add.s      $f4, $f18, $f2
/* 8148 80007548 E4640000 */  swc1       $f4, ($v1)
/* 814C 8000754C C4660000 */  lwc1       $f6, ($v1)
/* 8150 80007550 46003021 */  cvt.d.s    $f0, $f6
/* 8154 80007554 4620603C */  c.lt.d     $f12, $f0
/* 8158 80007558 00000000 */  nop
/* 815C 8000755C 4502002E */  bc1fl      .L80007618
/* 8160 80007560 8FAD0024 */   lw        $t5, 0x24($sp)
/* 8164 80007564 462C0201 */  sub.d      $f8, $f0, $f12
/* 8168 80007568 462042A0 */  cvt.s.d    $f10, $f8
/* 816C 8000756C E46A0000 */  swc1       $f10, ($v1)
/* 8170 80007570 8E020010 */  lw         $v0, 0x10($s0)
/* 8174 80007574 9449002C */  lhu        $t1, 0x2c($v0)
/* 8178 80007578 252A0001 */  addiu      $t2, $t1, 1
/* 817C 8000757C 10000025 */  b          .L80007614
/* 8180 80007580 A44A002C */   sh        $t2, 0x2c($v0)
.L80007584:
/* 8184 80007584 44816800 */  mtc1       $at, $f13
/* 8188 80007588 3C018008 */  lui        $at, %hi(D_8007BA5C)
/* 818C 8000758C C422BA5C */  lwc1       $f2, %lo(D_8007BA5C)($at)
/* 8190 80007590 C4500000 */  lwc1       $f16, ($v0)
/* 8194 80007594 44806000 */  mtc1       $zero, $f12
/* 8198 80007598 3C038008 */  lui        $v1, %hi(D_8007BC1C)
/* 819C 8000759C 46028480 */  add.s      $f18, $f16, $f2
/* 81A0 800075A0 2463BC1C */  addiu      $v1, $v1, %lo(D_8007BC1C)
/* 81A4 800075A4 E4520000 */  swc1       $f18, ($v0)
/* 81A8 800075A8 C4440000 */  lwc1       $f4, ($v0)
/* 81AC 800075AC 46002021 */  cvt.d.s    $f0, $f4
/* 81B0 800075B0 4620603C */  c.lt.d     $f12, $f0
/* 81B4 800075B4 00000000 */  nop
/* 81B8 800075B8 45020005 */  bc1fl      .L800075D0
/* 81BC 800075BC C46A0000 */   lwc1      $f10, ($v1)
/* 81C0 800075C0 462C0181 */  sub.d      $f6, $f0, $f12
/* 81C4 800075C4 46203220 */  cvt.s.d    $f8, $f6
/* 81C8 800075C8 E4480000 */  swc1       $f8, ($v0)
/* 81CC 800075CC C46A0000 */  lwc1       $f10, ($v1)
.L800075D0:
/* 81D0 800075D0 3C018007 */  lui        $at, %hi(D_80071100)
/* 81D4 800075D4 D42C1100 */  ldc1       $f12, %lo(D_80071100)($at)
/* 81D8 800075D8 46025400 */  add.s      $f16, $f10, $f2
/* 81DC 800075DC E4700000 */  swc1       $f16, ($v1)
/* 81E0 800075E0 C4720000 */  lwc1       $f18, ($v1)
/* 81E4 800075E4 46009021 */  cvt.d.s    $f0, $f18
/* 81E8 800075E8 4620603C */  c.lt.d     $f12, $f0
/* 81EC 800075EC 00000000 */  nop
/* 81F0 800075F0 45020009 */  bc1fl      .L80007618
/* 81F4 800075F4 8FAD0024 */   lw        $t5, 0x24($sp)
/* 81F8 800075F8 462C0101 */  sub.d      $f4, $f0, $f12
/* 81FC 800075FC 462021A0 */  cvt.s.d    $f6, $f4
/* 8200 80007600 E4660000 */  swc1       $f6, ($v1)
/* 8204 80007604 8E020010 */  lw         $v0, 0x10($s0)
/* 8208 80007608 944B002C */  lhu        $t3, 0x2c($v0)
/* 820C 8000760C 256C0001 */  addiu      $t4, $t3, 1
/* 8210 80007610 A44C002C */  sh         $t4, 0x2c($v0)
.L80007614:
/* 8214 80007614 8FAD0024 */  lw         $t5, 0x24($sp)
.L80007618:
/* 8218 80007618 8DAE0064 */  lw         $t6, 0x64($t5)
/* 821C 8000761C 95CF0006 */  lhu        $t7, 6($t6)
/* 8220 80007620 29E101F4 */  slti       $at, $t7, 0x1f4
/* 8224 80007624 5020002B */  beql       $at, $zero, .L800076D4
/* 8228 80007628 8E0C0010 */   lw        $t4, 0x10($s0)
/* 822C 8000762C 8E020010 */  lw         $v0, 0x10($s0)
/* 8230 80007630 3C088005 */  lui        $t0, %hi(D_80053ECC)
/* 8234 80007634 25083ECC */  addiu      $t0, $t0, %lo(D_80053ECC)
/* 8238 80007638 90580030 */  lbu        $t8, 0x30($v0)
/* 823C 8000763C 94450028 */  lhu        $a1, 0x28($v0)
/* 8240 80007640 0018C840 */  sll        $t9, $t8, 1
/* 8244 80007644 01194821 */  addu       $t1, $t0, $t9
/* 8248 80007648 95270000 */  lhu        $a3, ($t1)
/* 824C 8000764C 00A7082A */  slt        $at, $a1, $a3
/* 8250 80007650 1420001C */  bnez       $at, .L800076C4
/* 8254 80007654 00A75023 */   subu      $t2, $a1, $a3
/* 8258 80007658 A44A0028 */  sh         $t2, 0x28($v0)
/* 825C 8000765C 8FAB0024 */  lw         $t3, 0x24($sp)
/* 8260 80007660 24040001 */  addiu      $a0, $zero, 1
/* 8264 80007664 240D01F4 */  addiu      $t5, $zero, 0x1f4
/* 8268 80007668 8D630064 */  lw         $v1, 0x64($t3)
/* 826C 8000766C 94660006 */  lhu        $a2, 6($v1)
/* 8270 80007670 24CC0001 */  addiu      $t4, $a2, 1
/* 8274 80007674 298101F5 */  slti       $at, $t4, 0x1f5
/* 8278 80007678 54200005 */  bnel       $at, $zero, .L80007690
/* 827C 8000767C 00C47821 */   addu      $t7, $a2, $a0
/* 8280 80007680 01A62023 */  subu       $a0, $t5, $a2
/* 8284 80007684 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8288 80007688 01C02025 */  or         $a0, $t6, $zero
/* 828C 8000768C 00C47821 */  addu       $t7, $a2, $a0
.L80007690:
/* 8290 80007690 A46F0006 */  sh         $t7, 6($v1)
/* 8294 80007694 8FB80024 */  lw         $t8, 0x24($sp)
/* 8298 80007698 8F030064 */  lw         $v1, 0x64($t8)
/* 829C 8000769C 94790004 */  lhu        $t9, 4($v1)
/* 82A0 800076A0 03244821 */  addu       $t1, $t9, $a0
/* 82A4 800076A4 A4690004 */  sh         $t1, 4($v1)
/* 82A8 800076A8 8E020010 */  lw         $v0, 0x10($s0)
/* 82AC 800076AC 90470030 */  lbu        $a3, 0x30($v0)
/* 82B0 800076B0 28E10036 */  slti       $at, $a3, 0x36
/* 82B4 800076B4 10200003 */  beqz       $at, .L800076C4
/* 82B8 800076B8 24EA0001 */   addiu     $t2, $a3, 1
/* 82BC 800076BC A04A0030 */  sb         $t2, 0x30($v0)
/* 82C0 800076C0 8E020010 */  lw         $v0, 0x10($s0)
.L800076C4:
/* 82C4 800076C4 8FAB0024 */  lw         $t3, 0x24($sp)
/* 82C8 800076C8 10000008 */  b          .L800076EC
/* 82CC 800076CC 8D630064 */   lw        $v1, 0x64($t3)
/* 82D0 800076D0 8E0C0010 */  lw         $t4, 0x10($s0)
.L800076D4:
/* 82D4 800076D4 3C088005 */  lui        $t0, %hi(D_80053ECC)
/* 82D8 800076D8 25083ECC */  addiu      $t0, $t0, %lo(D_80053ECC)
/* 82DC 800076DC A5800028 */  sh         $zero, 0x28($t4)
/* 82E0 800076E0 8FAD0024 */  lw         $t5, 0x24($sp)
/* 82E4 800076E4 8E020010 */  lw         $v0, 0x10($s0)
/* 82E8 800076E8 8DA30064 */  lw         $v1, 0x64($t5)
.L800076EC:
/* 82EC 800076EC 946E000A */  lhu        $t6, 0xa($v1)
/* 82F0 800076F0 29C101F4 */  slti       $at, $t6, 0x1f4
/* 82F4 800076F4 50200029 */  beql       $at, $zero, .L8000779C
/* 82F8 800076F8 A440002A */   sh        $zero, 0x2a($v0)
/* 82FC 800076FC 904F0031 */  lbu        $t7, 0x31($v0)
/* 8300 80007700 9445002A */  lhu        $a1, 0x2a($v0)
/* 8304 80007704 000FC040 */  sll        $t8, $t7, 1
/* 8308 80007708 0118C821 */  addu       $t9, $t0, $t8
/* 830C 8000770C 97270000 */  lhu        $a3, ($t9)
/* 8310 80007710 00074880 */  sll        $t1, $a3, 2
/* 8314 80007714 00A9082A */  slt        $at, $a1, $t1
/* 8318 80007718 1420001C */  bnez       $at, .L8000778C
/* 831C 8000771C 00A95023 */   subu      $t2, $a1, $t1
/* 8320 80007720 A44A002A */  sh         $t2, 0x2a($v0)
/* 8324 80007724 8FAB0024 */  lw         $t3, 0x24($sp)
/* 8328 80007728 24040001 */  addiu      $a0, $zero, 1
/* 832C 8000772C 240D01F4 */  addiu      $t5, $zero, 0x1f4
/* 8330 80007730 8D630064 */  lw         $v1, 0x64($t3)
/* 8334 80007734 9466000A */  lhu        $a2, 0xa($v1)
/* 8338 80007738 24CC0001 */  addiu      $t4, $a2, 1
/* 833C 8000773C 298101F5 */  slti       $at, $t4, 0x1f5
/* 8340 80007740 54200005 */  bnel       $at, $zero, .L80007758
/* 8344 80007744 00C47821 */   addu      $t7, $a2, $a0
/* 8348 80007748 01A62023 */  subu       $a0, $t5, $a2
/* 834C 8000774C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8350 80007750 01C02025 */  or         $a0, $t6, $zero
/* 8354 80007754 00C47821 */  addu       $t7, $a2, $a0
.L80007758:
/* 8358 80007758 A46F000A */  sh         $t7, 0xa($v1)
/* 835C 8000775C 8FB80024 */  lw         $t8, 0x24($sp)
/* 8360 80007760 8F030064 */  lw         $v1, 0x64($t8)
/* 8364 80007764 94790008 */  lhu        $t9, 8($v1)
/* 8368 80007768 03244821 */  addu       $t1, $t9, $a0
/* 836C 8000776C A4690008 */  sh         $t1, 8($v1)
/* 8370 80007770 8E020010 */  lw         $v0, 0x10($s0)
/* 8374 80007774 90470031 */  lbu        $a3, 0x31($v0)
/* 8378 80007778 28E10036 */  slti       $at, $a3, 0x36
/* 837C 8000777C 10200003 */  beqz       $at, .L8000778C
/* 8380 80007780 24EA0001 */   addiu     $t2, $a3, 1
/* 8384 80007784 A04A0031 */  sb         $t2, 0x31($v0)
/* 8388 80007788 8E020010 */  lw         $v0, 0x10($s0)
.L8000778C:
/* 838C 8000778C 8FAB0024 */  lw         $t3, 0x24($sp)
/* 8390 80007790 10000005 */  b          .L800077A8
/* 8394 80007794 8D630064 */   lw        $v1, 0x64($t3)
/* 8398 80007798 A440002A */  sh         $zero, 0x2a($v0)
.L8000779C:
/* 839C 8000779C 8FAC0024 */  lw         $t4, 0x24($sp)
/* 83A0 800077A0 8E020010 */  lw         $v0, 0x10($s0)
/* 83A4 800077A4 8D830064 */  lw         $v1, 0x64($t4)
.L800077A8:
/* 83A8 800077A8 946D000C */  lhu        $t5, 0xc($v1)
/* 83AC 800077AC 29A100FF */  slti       $at, $t5, 0xff
/* 83B0 800077B0 50200023 */  beql       $at, $zero, .L80007840
/* 83B4 800077B4 A440002C */   sh        $zero, 0x2c($v0)
/* 83B8 800077B8 904E0032 */  lbu        $t6, 0x32($v0)
/* 83BC 800077BC 9446002C */  lhu        $a2, 0x2c($v0)
/* 83C0 800077C0 000E7840 */  sll        $t7, $t6, 1
/* 83C4 800077C4 010FC021 */  addu       $t8, $t0, $t7
/* 83C8 800077C8 97070000 */  lhu        $a3, ($t8)
/* 83CC 800077CC 00C7082A */  slt        $at, $a2, $a3
/* 83D0 800077D0 14200017 */  bnez       $at, .L80007830
/* 83D4 800077D4 00C7C823 */   subu      $t9, $a2, $a3
/* 83D8 800077D8 A459002C */  sh         $t9, 0x2c($v0)
/* 83DC 800077DC 8FA90024 */  lw         $t1, 0x24($sp)
/* 83E0 800077E0 24040001 */  addiu      $a0, $zero, 1
/* 83E4 800077E4 240B00FF */  addiu      $t3, $zero, 0xff
/* 83E8 800077E8 8D230064 */  lw         $v1, 0x64($t1)
/* 83EC 800077EC 9465000C */  lhu        $a1, 0xc($v1)
/* 83F0 800077F0 24AA0001 */  addiu      $t2, $a1, 1
/* 83F4 800077F4 29410100 */  slti       $at, $t2, 0x100
/* 83F8 800077F8 54200005 */  bnel       $at, $zero, .L80007810
/* 83FC 800077FC 00A46821 */   addu      $t5, $a1, $a0
/* 8400 80007800 01652023 */  subu       $a0, $t3, $a1
/* 8404 80007804 308CFFFF */  andi       $t4, $a0, 0xffff
/* 8408 80007808 01802025 */  or         $a0, $t4, $zero
/* 840C 8000780C 00A46821 */  addu       $t5, $a1, $a0
.L80007810:
/* 8410 80007810 A46D000C */  sh         $t5, 0xc($v1)
/* 8414 80007814 8E020010 */  lw         $v0, 0x10($s0)
/* 8418 80007818 90460032 */  lbu        $a2, 0x32($v0)
/* 841C 8000781C 28C10036 */  slti       $at, $a2, 0x36
/* 8420 80007820 10200003 */  beqz       $at, .L80007830
/* 8424 80007824 24CE0001 */   addiu     $t6, $a2, 1
/* 8428 80007828 A04E0032 */  sb         $t6, 0x32($v0)
/* 842C 8000782C 8E020010 */  lw         $v0, 0x10($s0)
.L80007830:
/* 8430 80007830 8FAF0024 */  lw         $t7, 0x24($sp)
/* 8434 80007834 10000005 */  b          .L8000784C
/* 8438 80007838 8DE30064 */   lw        $v1, 0x64($t7)
/* 843C 8000783C A440002C */  sh         $zero, 0x2c($v0)
.L80007840:
/* 8440 80007840 8FB80024 */  lw         $t8, 0x24($sp)
/* 8444 80007844 8E020010 */  lw         $v0, 0x10($s0)
/* 8448 80007848 8F030064 */  lw         $v1, 0x64($t8)
.L8000784C:
/* 844C 8000784C 9479000E */  lhu        $t9, 0xe($v1)
/* 8450 80007850 2B2100FF */  slti       $at, $t9, 0xff
/* 8454 80007854 50200021 */  beql       $at, $zero, .L800078DC
/* 8458 80007858 A440002E */   sh        $zero, 0x2e($v0)
/* 845C 8000785C 90490033 */  lbu        $t1, 0x33($v0)
/* 8460 80007860 9446002E */  lhu        $a2, 0x2e($v0)
/* 8464 80007864 00095040 */  sll        $t2, $t1, 1
/* 8468 80007868 010A5821 */  addu       $t3, $t0, $t2
/* 846C 8000786C 95670000 */  lhu        $a3, ($t3)
/* 8470 80007870 00076040 */  sll        $t4, $a3, 1
/* 8474 80007874 00CC082A */  slt        $at, $a2, $t4
/* 8478 80007878 14200018 */  bnez       $at, .L800078DC
/* 847C 8000787C 00CC6823 */   subu      $t5, $a2, $t4
/* 8480 80007880 A44D002E */  sh         $t5, 0x2e($v0)
/* 8484 80007884 8FAE0024 */  lw         $t6, 0x24($sp)
/* 8488 80007888 24040001 */  addiu      $a0, $zero, 1
/* 848C 8000788C 241800FF */  addiu      $t8, $zero, 0xff
/* 8490 80007890 8DC30064 */  lw         $v1, 0x64($t6)
/* 8494 80007894 9465000E */  lhu        $a1, 0xe($v1)
/* 8498 80007898 24AF0001 */  addiu      $t7, $a1, 1
/* 849C 8000789C 29E10100 */  slti       $at, $t7, 0x100
/* 84A0 800078A0 54200005 */  bnel       $at, $zero, .L800078B8
/* 84A4 800078A4 00A44821 */   addu      $t1, $a1, $a0
/* 84A8 800078A8 03052023 */  subu       $a0, $t8, $a1
/* 84AC 800078AC 3099FFFF */  andi       $t9, $a0, 0xffff
/* 84B0 800078B0 03202025 */  or         $a0, $t9, $zero
/* 84B4 800078B4 00A44821 */  addu       $t1, $a1, $a0
.L800078B8:
/* 84B8 800078B8 A469000E */  sh         $t1, 0xe($v1)
/* 84BC 800078BC 8E020010 */  lw         $v0, 0x10($s0)
/* 84C0 800078C0 90460033 */  lbu        $a2, 0x33($v0)
/* 84C4 800078C4 28C10036 */  slti       $at, $a2, 0x36
/* 84C8 800078C8 10200004 */  beqz       $at, .L800078DC
/* 84CC 800078CC 24CA0001 */   addiu     $t2, $a2, 1
/* 84D0 800078D0 10000002 */  b          .L800078DC
/* 84D4 800078D4 A04A0033 */   sb        $t2, 0x33($v0)
/* 84D8 800078D8 A440002E */  sh         $zero, 0x2e($v0)
.L800078DC:
/* 84DC 800078DC 3C078008 */  lui        $a3, %hi(HUDState)
/* 84E0 800078E0 24E7B2E4 */  addiu      $a3, $a3, %lo(HUDState)
/* 84E4 800078E4 8CEB0000 */  lw         $t3, ($a3)
/* 84E8 800078E8 316C0008 */  andi       $t4, $t3, 8
/* 84EC 800078EC 55800032 */  bnel       $t4, $zero, .L800079B8
/* 84F0 800078F0 8CEF0000 */   lw        $t7, ($a3)
/* 84F4 800078F4 8E0D0010 */  lw         $t5, 0x10($s0)
/* 84F8 800078F8 8FAE0024 */  lw         $t6, 0x24($sp)
/* 84FC 800078FC 3C068005 */  lui        $a2, 0x8005
/* 8500 80007900 91A40034 */  lbu        $a0, 0x34($t5)
/* 8504 80007904 8DC30064 */  lw         $v1, 0x64($t6)
/* 8508 80007908 28810062 */  slti       $at, $a0, 0x62
/* 850C 8000790C 14200003 */  bnez       $at, .L8000791C
/* 8510 80007910 00047880 */   sll       $t7, $a0, 2
/* 8514 80007914 10000027 */  b          .L800079B4
/* 8518 80007918 AC600010 */   sw        $zero, 0x10($v1)
.L8000791C:
/* 851C 8000791C 00CF3021 */  addu       $a2, $a2, $t7
/* 8520 80007920 8CC63D3C */  lw         $a2, 0x3d3c($a2)
/* 8524 80007924 8C650010 */  lw         $a1, 0x10($v1)
/* 8528 80007928 00A6082B */  sltu       $at, $a1, $a2
/* 852C 8000792C 14200021 */  bnez       $at, .L800079B4
/* 8530 80007930 00A6C023 */   subu      $t8, $a1, $a2
/* 8534 80007934 AC780010 */  sw         $t8, 0x10($v1)
/* 8538 80007938 8E020010 */  lw         $v0, 0x10($s0)
/* 853C 8000793C 24050001 */  addiu      $a1, $zero, 1
/* 8540 80007940 90440034 */  lbu        $a0, 0x34($v0)
/* 8544 80007944 28810062 */  slti       $at, $a0, 0x62
/* 8548 80007948 10200003 */  beqz       $at, .L80007958
/* 854C 8000794C 24990001 */   addiu     $t9, $a0, 1
/* 8550 80007950 A0590034 */  sb         $t9, 0x34($v0)
/* 8554 80007954 8E020010 */  lw         $v0, 0x10($s0)
.L80007958:
/* 8558 80007958 24430024 */  addiu      $v1, $v0, 0x24
/* 855C 8000795C 90690000 */  lbu        $t1, ($v1)
/* 8560 80007960 24040032 */  addiu      $a0, $zero, 0x32
/* 8564 80007964 5489000B */  bnel       $a0, $t1, .L80007994
/* 8568 80007968 8CED0000 */   lw        $t5, ($a3)
/* 856C 8000796C 906A0001 */  lbu        $t2, 1($v1)
/* 8570 80007970 548A0008 */  bnel       $a0, $t2, .L80007994
/* 8574 80007974 8CED0000 */   lw        $t5, ($a3)
/* 8578 80007978 906B0002 */  lbu        $t3, 2($v1)
/* 857C 8000797C 548B0005 */  bnel       $a0, $t3, .L80007994
/* 8580 80007980 8CED0000 */   lw        $t5, ($a3)
/* 8584 80007984 906C0003 */  lbu        $t4, 3($v1)
/* 8588 80007988 508C000B */  beql       $a0, $t4, .L800079B8
/* 858C 8000798C 8CEF0000 */   lw        $t7, ($a3)
/* 8590 80007990 8CED0000 */  lw         $t5, ($a3)
.L80007994:
/* 8594 80007994 00002025 */  or         $a0, $zero, $zero
/* 8598 80007998 240600FF */  addiu      $a2, $zero, 0xff
/* 859C 8000799C 35AE0008 */  ori        $t6, $t5, 8
/* 85A0 800079A0 ACEE0000 */  sw         $t6, ($a3)
/* 85A4 800079A4 0C009A35 */  jal        func_800268D4
/* 85A8 800079A8 A6000000 */   sh        $zero, ($s0)
/* 85AC 800079AC 3C078008 */  lui        $a3, %hi(HUDState)
/* 85B0 800079B0 24E7B2E4 */  addiu      $a3, $a3, %lo(HUDState)
.L800079B4:
/* 85B4 800079B4 8CEF0000 */  lw         $t7, ($a3)
.L800079B8:
/* 85B8 800079B8 3C048008 */  lui        $a0, %hi(itemToReceive)
/* 85BC 800079BC 31F8000A */  andi       $t8, $t7, 0xa
/* 85C0 800079C0 5700001C */  bnel       $t8, $zero, .L80007A34
/* 85C4 800079C4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 85C8 800079C8 8C84BA70 */  lw         $a0, %lo(itemToReceive)($a0)
/* 85CC 800079CC 240100FF */  addiu      $at, $zero, 0xff
/* 85D0 800079D0 50810018 */  beql       $a0, $at, .L80007A34
/* 85D4 800079D4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 85D8 800079D8 0C004830 */  jal        func_800120C0
/* 85DC 800079DC 00000000 */   nop
/* 85E0 800079E0 0C00B9DA */  jal        UNK_calledWhenWritingToTextbox
/* 85E4 800079E4 24040001 */   addiu     $a0, $zero, 1
/* 85E8 800079E8 3C048008 */  lui        $a0, %hi(D_8007BA73)
/* 85EC 800079EC 0C0084A8 */  jal        addItemToEmptySlot
/* 85F0 800079F0 9084BA73 */   lbu       $a0, %lo(D_8007BA73)($a0)
/* 85F4 800079F4 241900FF */  addiu      $t9, $zero, 0xff
/* 85F8 800079F8 3C018008 */  lui        $at, %hi(itemToReceive)
/* 85FC 800079FC AC39BA70 */  sw         $t9, %lo(itemToReceive)($at)
/* 8600 80007A00 96090008 */  lhu        $t1, 8($s0)
/* 8604 80007A04 3C0B8008 */  lui        $t3, %hi(HUDState)
/* 8608 80007A08 3C018008 */  lui        $at, 0x8008
/* 860C 80007A0C 352A0002 */  ori        $t2, $t1, 2
/* 8610 80007A10 A60A0008 */  sh         $t2, 8($s0)
/* 8614 80007A14 8D6BB2E4 */  lw         $t3, %lo(HUDState)($t3)
/* 8618 80007A18 00002025 */  or         $a0, $zero, $zero
/* 861C 80007A1C 2405003B */  addiu      $a1, $zero, 0x3b
/* 8620 80007A20 356C0002 */  ori        $t4, $t3, 2
/* 8624 80007A24 AC2CB2E4 */  sw         $t4, -0x4d1c($at)
/* 8628 80007A28 0C009A35 */  jal        func_800268D4
/* 862C 80007A2C 240600FF */   addiu     $a2, $zero, 0xff
/* 8630 80007A30 8FBF001C */  lw         $ra, 0x1c($sp)
.L80007A34:
/* 8634 80007A34 8FB00018 */  lw         $s0, 0x18($sp)
/* 8638 80007A38 27BD0020 */  addiu      $sp, $sp, 0x20
/* 863C 80007A3C 03E00008 */  jr         $ra
/* 8640 80007A40 00000000 */   nop
/* 8644 80007A44 00000000 */  nop
/* 8648 80007A48 00000000 */  nop
/* 864C 80007A4C 00000000 */  nop
