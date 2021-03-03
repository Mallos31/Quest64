.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80036920
/* 37520 80036920 03E00008 */  jr         $ra
/* 37524 80036924 00000000 */   nop

glabel _timeToSamplesNoRound
/* 37528 80036928 8C8E0044 */  lw         $t6, 0x44($a0)
/* 3752C 8003692C 44852000 */  mtc1       $a1, $f4
/* 37530 80036930 3C018007 */  lui        $at, %hi(AL_1000000_0)
/* 37534 80036934 448E4000 */  mtc1       $t6, $f8
/* 37538 80036938 468021A0 */  cvt.s.w    $f6, $f4
/* 3753C 8003693C D4241C00 */  ldc1       $f4, %lo(AL_1000000_0)($at)
/* 37540 80036940 3C013FE0 */  lui        $at, 0x3fe0
/* 37544 80036944 44813800 */  mtc1       $at, $f7
/* 37548 80036948 2401FFF0 */  addiu      $at, $zero, -0x10
/* 3754C 8003694C 468042A0 */  cvt.s.w    $f10, $f8
/* 37550 80036950 460A3402 */  mul.s      $f16, $f6, $f10
/* 37554 80036954 44803000 */  mtc1       $zero, $f6
/* 37558 80036958 460084A1 */  cvt.d.s    $f18, $f16
/* 3755C 8003695C 46249203 */  div.d      $f8, $f18, $f4
/* 37560 80036960 46264280 */  add.d      $f10, $f8, $f6
/* 37564 80036964 46205020 */  cvt.s.d    $f0, $f10
/* 37568 80036968 4600040D */  trunc.w.s  $f16, $f0
/* 3756C 8003696C 44028000 */  mfc1       $v0, $f16
/* 37570 80036970 00000000 */  nop
/* 37574 80036974 0041C024 */  and        $t8, $v0, $at
/* 37578 80036978 03E00008 */  jr         $ra
/* 3757C 8003697C 03001025 */   or        $v0, $t8, $zero

glabel _freePVoice
/* 37580 80036980 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 37584 80036984 AFBF0014 */  sw         $ra, 0x14($sp)
/* 37588 80036988 AFA40018 */  sw         $a0, 0x18($sp)
/* 3758C 8003698C AFA5001C */  sw         $a1, 0x1c($sp)
/* 37590 80036990 0C00DA08 */  jal        alUnlink
/* 37594 80036994 00A02025 */   or        $a0, $a1, $zero
/* 37598 80036998 8FA50018 */  lw         $a1, 0x18($sp)
/* 3759C 8003699C 8FA4001C */  lw         $a0, 0x1c($sp)
/* 375A0 800369A0 0C00DA14 */  jal        alLink
/* 375A4 800369A4 24A50014 */   addiu     $a1, $a1, 0x14
/* 375A8 800369A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 375AC 800369AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 375B0 800369B0 03E00008 */  jr         $ra
/* 375B4 800369B4 00000000 */   nop

glabel _collectPVoices
/* 375B8 800369B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 375BC 800369BC AFBF0024 */  sw         $ra, 0x24($sp)
/* 375C0 800369C0 AFB20020 */  sw         $s2, 0x20($sp)
/* 375C4 800369C4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 375C8 800369C8 AFB00018 */  sw         $s0, 0x18($sp)
/* 375CC 800369CC 8C900014 */  lw         $s0, 0x14($a0)
/* 375D0 800369D0 00808825 */  or         $s1, $a0, $zero
/* 375D4 800369D4 24920004 */  addiu      $s2, $a0, 4
/* 375D8 800369D8 5200000A */  beql       $s0, $zero, .L80036A04
/* 375DC 800369DC 8FBF0024 */   lw        $ra, 0x24($sp)
.L800369E0:
/* 375E0 800369E0 0C00DA08 */  jal        alUnlink
/* 375E4 800369E4 02002025 */   or        $a0, $s0, $zero
/* 375E8 800369E8 02002025 */  or         $a0, $s0, $zero
/* 375EC 800369EC 0C00DA14 */  jal        alLink
/* 375F0 800369F0 02402825 */   or        $a1, $s2, $zero
/* 375F4 800369F4 8E300014 */  lw         $s0, 0x14($s1)
/* 375F8 800369F8 1600FFF9 */  bnez       $s0, .L800369E0
/* 375FC 800369FC 00000000 */   nop
/* 37600 80036A00 8FBF0024 */  lw         $ra, 0x24($sp)
.L80036A04:
/* 37604 80036A04 8FB00018 */  lw         $s0, 0x18($sp)
/* 37608 80036A08 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3760C 80036A0C 8FB20020 */  lw         $s2, 0x20($sp)
/* 37610 80036A10 03E00008 */  jr         $ra
/* 37614 80036A14 27BD0028 */   addiu     $sp, $sp, 0x28

glabel __freeParam
/* 37618 80036A18 3C028007 */  lui        $v0, %hi(alGlobals)
/* 3761C 80036A1C 8C420990 */  lw         $v0, %lo(alGlobals)($v0)
/* 37620 80036A20 8C4E002C */  lw         $t6, 0x2c($v0)
/* 37624 80036A24 AC8E0000 */  sw         $t6, ($a0)
/* 37628 80036A28 03E00008 */  jr         $ra
/* 3762C 80036A2C AC44002C */   sw        $a0, 0x2c($v0)

glabel __allocParam
/* 37630 80036A30 3C028007 */  lui        $v0, %hi(alGlobals)
/* 37634 80036A34 8C420990 */  lw         $v0, %lo(alGlobals)($v0)
/* 37638 80036A38 00001825 */  or         $v1, $zero, $zero
/* 3763C 80036A3C 8C44002C */  lw         $a0, 0x2c($v0)
/* 37640 80036A40 10800005 */  beqz       $a0, .L80036A58
/* 37644 80036A44 00000000 */   nop
/* 37648 80036A48 8C8E0000 */  lw         $t6, ($a0)
/* 3764C 80036A4C 00801825 */  or         $v1, $a0, $zero
/* 37650 80036A50 AC4E002C */  sw         $t6, 0x2c($v0)
/* 37654 80036A54 AC800000 */  sw         $zero, ($a0)
.L80036A58:
/* 37658 80036A58 03E00008 */  jr         $ra
/* 3765C 80036A5C 00601025 */   or        $v0, $v1, $zero

glabel func_80036A60
/* 37660 80036A60 03E00008 */  jr         $ra
/* 37664 80036A64 00000000 */   nop

glabel alAudioFrame
/* 37668 80036A68 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* 3766C 80036A6C AFB10030 */  sw         $s1, 0x30($sp)
/* 37670 80036A70 3C118007 */  lui        $s1, %hi(alGlobals)
/* 37674 80036A74 8E310990 */  lw         $s1, %lo(alGlobals)($s1)
/* 37678 80036A78 AFBF004C */  sw         $ra, 0x4c($sp)
/* 3767C 80036A7C AFB70048 */  sw         $s7, 0x48($sp)
/* 37680 80036A80 AFB60044 */  sw         $s6, 0x44($sp)
/* 37684 80036A84 AFB50040 */  sw         $s5, 0x40($sp)
/* 37688 80036A88 AFB4003C */  sw         $s4, 0x3c($sp)
/* 3768C 80036A8C AFB30038 */  sw         $s3, 0x38($sp)
/* 37690 80036A90 AFB20034 */  sw         $s2, 0x34($sp)
/* 37694 80036A94 AFB0002C */  sw         $s0, 0x2c($sp)
/* 37698 80036A98 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 3769C 80036A9C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 376A0 80036AA0 AFA400B8 */  sw         $a0, 0xb8($sp)
/* 376A4 80036AA4 AFA500BC */  sw         $a1, 0xbc($sp)
/* 376A8 80036AA8 A7A000AA */  sh         $zero, 0xaa($sp)
/* 376AC 80036AAC 8E2F0000 */  lw         $t7, ($s1)
/* 376B0 80036AB0 00E09825 */  or         $s3, $a3, $zero
/* 376B4 80036AB4 0080A025 */  or         $s4, $a0, $zero
/* 376B8 80036AB8 15E00004 */  bnez       $t7, .L80036ACC
/* 376BC 80036ABC 00C0A825 */   or        $s5, $a2, $zero
/* 376C0 80036AC0 ACA00000 */  sw         $zero, ($a1)
/* 376C4 80036AC4 10000081 */  b          .L80036CCC
/* 376C8 80036AC8 00801025 */   or        $v0, $a0, $zero
.L80036ACC:
/* 376CC 80036ACC AFA000B4 */  sw         $zero, 0xb4($sp)
/* 376D0 80036AD0 8E220000 */  lw         $v0, ($s1)
/* 376D4 80036AD4 3C037FFF */  lui        $v1, 0x7fff
/* 376D8 80036AD8 3463FFFF */  ori        $v1, $v1, 0xffff
/* 376DC 80036ADC 1040000E */  beqz       $v0, .L80036B18
/* 376E0 80036AE0 2412FFF0 */   addiu     $s2, $zero, -0x10
/* 376E4 80036AE4 8E240020 */  lw         $a0, 0x20($s1)
/* 376E8 80036AE8 8C590010 */  lw         $t9, 0x10($v0)
.L80036AEC:
/* 376EC 80036AEC 03244023 */  subu       $t0, $t9, $a0
/* 376F0 80036AF0 0103082A */  slt        $at, $t0, $v1
/* 376F4 80036AF4 50200006 */  beql       $at, $zero, .L80036B10
/* 376F8 80036AF8 8C420000 */   lw        $v0, ($v0)
/* 376FC 80036AFC AFA200B4 */  sw         $v0, 0xb4($sp)
/* 37700 80036B00 8C490010 */  lw         $t1, 0x10($v0)
/* 37704 80036B04 8E240020 */  lw         $a0, 0x20($s1)
/* 37708 80036B08 01241823 */  subu       $v1, $t1, $a0
/* 3770C 80036B0C 8C420000 */  lw         $v0, ($v0)
.L80036B10:
/* 37710 80036B10 5440FFF6 */  bnel       $v0, $zero, .L80036AEC
/* 37714 80036B14 8C590010 */   lw        $t9, 0x10($v0)
.L80036B18:
/* 37718 80036B18 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* 3771C 80036B1C 8E240020 */  lw         $a0, 0x20($s1)
/* 37720 80036B20 8D420010 */  lw         $v0, 0x10($t2)
/* 37724 80036B24 00445823 */  subu       $t3, $v0, $a0
/* 37728 80036B28 0173082A */  slt        $at, $t3, $s3
/* 3772C 80036B2C 10200038 */  beqz       $at, .L80036C10
/* 37730 80036B30 AE22001C */   sw        $v0, 0x1c($s1)
/* 37734 80036B34 3C013FE0 */  lui        $at, 0x3fe0
/* 37738 80036B38 4481B800 */  mtc1       $at, $f23
/* 3773C 80036B3C 3C018007 */  lui        $at, %hi(D_80071C08)
/* 37740 80036B40 4480B000 */  mtc1       $zero, $f22
/* 37744 80036B44 D4341C08 */  ldc1       $f20, %lo(D_80071C08)($at)
.L80036B48:
/* 37748 80036B48 8E2C001C */  lw         $t4, 0x1c($s1)
/* 3774C 80036B4C 3C107FFF */  lui        $s0, 0x7fff
/* 37750 80036B50 3610FFFF */  ori        $s0, $s0, 0xffff
/* 37754 80036B54 01926824 */  and        $t5, $t4, $s2
/* 37758 80036B58 AE2D001C */  sw         $t5, 0x1c($s1)
/* 3775C 80036B5C 8FA400B4 */  lw         $a0, 0xb4($sp)
/* 37760 80036B60 8C990008 */  lw         $t9, 8($a0)
/* 37764 80036B64 0320F809 */  jalr       $t9
/* 37768 80036B68 00000000 */   nop
/* 3776C 80036B6C 8E380044 */  lw         $t8, 0x44($s1)
/* 37770 80036B70 44822000 */  mtc1       $v0, $f4
/* 37774 80036B74 8FA800B4 */  lw         $t0, 0xb4($sp)
/* 37778 80036B78 44984000 */  mtc1       $t8, $f8
/* 3777C 80036B7C 468021A0 */  cvt.s.w    $f6, $f4
/* 37780 80036B80 8D090010 */  lw         $t1, 0x10($t0)
/* 37784 80036B84 468042A0 */  cvt.s.w    $f10, $f8
/* 37788 80036B88 460A3402 */  mul.s      $f16, $f6, $f10
/* 3778C 80036B8C 460084A1 */  cvt.d.s    $f18, $f16
/* 37790 80036B90 46349103 */  div.d      $f4, $f18, $f20
/* 37794 80036B94 46362200 */  add.d      $f8, $f4, $f22
/* 37798 80036B98 46204020 */  cvt.s.d    $f0, $f8
/* 3779C 80036B9C 4600018D */  trunc.w.s  $f6, $f0
/* 377A0 80036BA0 44023000 */  mfc1       $v0, $f6
/* 377A4 80036BA4 00000000 */  nop
/* 377A8 80036BA8 01225021 */  addu       $t2, $t1, $v0
/* 377AC 80036BAC AD0A0010 */  sw         $t2, 0x10($t0)
/* 377B0 80036BB0 AFA000B4 */  sw         $zero, 0xb4($sp)
/* 377B4 80036BB4 8E230000 */  lw         $v1, ($s1)
/* 377B8 80036BB8 5060000F */  beql       $v1, $zero, .L80036BF8
/* 377BC 80036BBC 8FAF00B4 */   lw        $t7, 0xb4($sp)
/* 377C0 80036BC0 8E240020 */  lw         $a0, 0x20($s1)
/* 377C4 80036BC4 8C6B0010 */  lw         $t3, 0x10($v1)
.L80036BC8:
/* 377C8 80036BC8 01646023 */  subu       $t4, $t3, $a0
/* 377CC 80036BCC 0190082A */  slt        $at, $t4, $s0
/* 377D0 80036BD0 50200006 */  beql       $at, $zero, .L80036BEC
/* 377D4 80036BD4 8C630000 */   lw        $v1, ($v1)
/* 377D8 80036BD8 AFA300B4 */  sw         $v1, 0xb4($sp)
/* 377DC 80036BDC 8C6D0010 */  lw         $t5, 0x10($v1)
/* 377E0 80036BE0 8E240020 */  lw         $a0, 0x20($s1)
/* 377E4 80036BE4 01A48023 */  subu       $s0, $t5, $a0
/* 377E8 80036BE8 8C630000 */  lw         $v1, ($v1)
.L80036BEC:
/* 377EC 80036BEC 5460FFF6 */  bnel       $v1, $zero, .L80036BC8
/* 377F0 80036BF0 8C6B0010 */   lw        $t3, 0x10($v1)
/* 377F4 80036BF4 8FAF00B4 */  lw         $t7, 0xb4($sp)
.L80036BF8:
/* 377F8 80036BF8 8E240020 */  lw         $a0, 0x20($s1)
/* 377FC 80036BFC 8DE20010 */  lw         $v0, 0x10($t7)
/* 37800 80036C00 0044C823 */  subu       $t9, $v0, $a0
/* 37804 80036C04 0333082A */  slt        $at, $t9, $s3
/* 37808 80036C08 1420FFCF */  bnez       $at, .L80036B48
/* 3780C 80036C0C AE22001C */   sw        $v0, 0x1c($s1)
.L80036C10:
/* 37810 80036C10 8E38001C */  lw         $t8, 0x1c($s1)
/* 37814 80036C14 2412FFF0 */  addiu      $s2, $zero, -0x10
/* 37818 80036C18 27B700AA */  addiu      $s7, $sp, 0xaa
/* 3781C 80036C1C 03127024 */  and        $t6, $t8, $s2
/* 37820 80036C20 1A600022 */  blez       $s3, .L80036CAC
/* 37824 80036C24 AE2E001C */   sw        $t6, 0x1c($s1)
/* 37828 80036C28 3C160700 */  lui        $s6, 0x700
.L80036C2C:
/* 3782C 80036C2C 8E220048 */  lw         $v0, 0x48($s1)
/* 37830 80036C30 02608025 */  or         $s0, $s3, $zero
/* 37834 80036C34 0053082A */  slt        $at, $v0, $s3
/* 37838 80036C38 10200003 */  beqz       $at, .L80036C48
/* 3783C 80036C3C 00000000 */   nop
/* 37840 80036C40 10000001 */  b          .L80036C48
/* 37844 80036C44 00408025 */   or        $s0, $v0, $zero
.L80036C48:
/* 37848 80036C48 AE960000 */  sw         $s6, ($s4)
/* 3784C 80036C4C AE800004 */  sw         $zero, 4($s4)
/* 37850 80036C50 8E320038 */  lw         $s2, 0x38($s1)
/* 37854 80036C54 24050006 */  addiu      $a1, $zero, 6
/* 37858 80036C58 02A03025 */  or         $a2, $s5, $zero
/* 3785C 80036C5C 8E590008 */  lw         $t9, 8($s2)
/* 37860 80036C60 02402025 */  or         $a0, $s2, $zero
/* 37864 80036C64 0320F809 */  jalr       $t9
/* 37868 80036C68 00000000 */   nop
/* 3786C 80036C6C 8E270020 */  lw         $a3, 0x20($s1)
/* 37870 80036C70 26890008 */  addiu      $t1, $s4, 8
/* 37874 80036C74 AFA90010 */  sw         $t1, 0x10($sp)
/* 37878 80036C78 8E590004 */  lw         $t9, 4($s2)
/* 3787C 80036C7C 02402025 */  or         $a0, $s2, $zero
/* 37880 80036C80 02E02825 */  or         $a1, $s7, $zero
/* 37884 80036C84 0320F809 */  jalr       $t9
/* 37888 80036C88 02003025 */   or        $a2, $s0, $zero
/* 3788C 80036C8C 8E2B0020 */  lw         $t3, 0x20($s1)
/* 37890 80036C90 02709823 */  subu       $s3, $s3, $s0
/* 37894 80036C94 00104080 */  sll        $t0, $s0, 2
/* 37898 80036C98 01706021 */  addu       $t4, $t3, $s0
/* 3789C 80036C9C 0040A025 */  or         $s4, $v0, $zero
/* 378A0 80036CA0 02A8A821 */  addu       $s5, $s5, $t0
/* 378A4 80036CA4 1E60FFE1 */  bgtz       $s3, .L80036C2C
/* 378A8 80036CA8 AE2C0020 */   sw        $t4, 0x20($s1)
.L80036CAC:
/* 378AC 80036CAC 8FAD00B8 */  lw         $t5, 0xb8($sp)
/* 378B0 80036CB0 8FAE00BC */  lw         $t6, 0xbc($sp)
/* 378B4 80036CB4 02202025 */  or         $a0, $s1, $zero
/* 378B8 80036CB8 028D7823 */  subu       $t7, $s4, $t5
/* 378BC 80036CBC 000FC0C3 */  sra        $t8, $t7, 3
/* 378C0 80036CC0 0C00DA6E */  jal        _collectPVoices
/* 378C4 80036CC4 ADD80000 */   sw        $t8, ($t6)
/* 378C8 80036CC8 02801025 */  or         $v0, $s4, $zero
.L80036CCC:
/* 378CC 80036CCC 8FBF004C */  lw         $ra, 0x4c($sp)
/* 378D0 80036CD0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 378D4 80036CD4 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 378D8 80036CD8 8FB0002C */  lw         $s0, 0x2c($sp)
/* 378DC 80036CDC 8FB10030 */  lw         $s1, 0x30($sp)
/* 378E0 80036CE0 8FB20034 */  lw         $s2, 0x34($sp)
/* 378E4 80036CE4 8FB30038 */  lw         $s3, 0x38($sp)
/* 378E8 80036CE8 8FB4003C */  lw         $s4, 0x3c($sp)
/* 378EC 80036CEC 8FB50040 */  lw         $s5, 0x40($sp)
/* 378F0 80036CF0 8FB60044 */  lw         $s6, 0x44($sp)
/* 378F4 80036CF4 8FB70048 */  lw         $s7, 0x48($sp)
/* 378F8 80036CF8 03E00008 */  jr         $ra
/* 378FC 80036CFC 27BD00B8 */   addiu     $sp, $sp, 0xb8

glabel alSynNew
/* 37900 80036D00 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 37904 80036D04 AFBF0044 */  sw         $ra, 0x44($sp)
/* 37908 80036D08 AFBE0040 */  sw         $fp, 0x40($sp)
/* 3790C 80036D0C AFB7003C */  sw         $s7, 0x3c($sp)
/* 37910 80036D10 AFB60038 */  sw         $s6, 0x38($sp)
/* 37914 80036D14 AFB50034 */  sw         $s5, 0x34($sp)
/* 37918 80036D18 AFB40030 */  sw         $s4, 0x30($sp)
/* 3791C 80036D1C AFB3002C */  sw         $s3, 0x2c($sp)
/* 37920 80036D20 AFB20028 */  sw         $s2, 0x28($sp)
/* 37924 80036D24 AFB10024 */  sw         $s1, 0x24($sp)
/* 37928 80036D28 AFB00020 */  sw         $s0, 0x20($sp)
/* 3792C 80036D2C 8CB70014 */  lw         $s7, 0x14($a1)
/* 37930 80036D30 AC800000 */  sw         $zero, ($a0)
/* 37934 80036D34 8CAE0004 */  lw         $t6, 4($a1)
/* 37938 80036D38 AC800020 */  sw         $zero, 0x20($a0)
/* 3793C 80036D3C AC80001C */  sw         $zero, 0x1c($a0)
/* 37940 80036D40 AC8E003C */  sw         $t6, 0x3c($a0)
/* 37944 80036D44 8CAF0018 */  lw         $t7, 0x18($a1)
/* 37948 80036D48 241800A0 */  addiu      $t8, $zero, 0xa0
/* 3794C 80036D4C AC980048 */  sw         $t8, 0x48($a0)
/* 37950 80036D50 AC8F0044 */  sw         $t7, 0x44($a0)
/* 37954 80036D54 8CB90010 */  lw         $t9, 0x10($a1)
/* 37958 80036D58 0080B025 */  or         $s6, $a0, $zero
/* 3795C 80036D5C 00A0F025 */  or         $fp, $a1, $zero
/* 37960 80036D60 2408001C */  addiu      $t0, $zero, 0x1c
/* 37964 80036D64 AC990024 */  sw         $t9, 0x24($a0)
/* 37968 80036D68 AFA80010 */  sw         $t0, 0x10($sp)
/* 3796C 80036D6C 00002025 */  or         $a0, $zero, $zero
/* 37970 80036D70 00002825 */  or         $a1, $zero, $zero
/* 37974 80036D74 24070001 */  addiu      $a3, $zero, 1
/* 37978 80036D78 0C00D998 */  jal        alHeapDBAlloc
/* 3797C 80036D7C 02E03025 */   or        $a2, $s7, $zero
/* 37980 80036D80 AFA2005C */  sw         $v0, 0x5c($sp)
/* 37984 80036D84 0C010024 */  jal        alSaveNew
/* 37988 80036D88 00402025 */   or        $a0, $v0, $zero
/* 3798C 80036D8C 8FA9005C */  lw         $t1, 0x5c($sp)
/* 37990 80036D90 240A004C */  addiu      $t2, $zero, 0x4c
/* 37994 80036D94 00002025 */  or         $a0, $zero, $zero
/* 37998 80036D98 AEC90038 */  sw         $t1, 0x38($s6)
/* 3799C 80036D9C AFAA0010 */  sw         $t2, 0x10($sp)
/* 379A0 80036DA0 00002825 */  or         $a1, $zero, $zero
/* 379A4 80036DA4 02E03025 */  or         $a2, $s7, $zero
/* 379A8 80036DA8 0C00D998 */  jal        alHeapDBAlloc
/* 379AC 80036DAC 24070001 */   addiu     $a3, $zero, 1
/* 379B0 80036DB0 240B0001 */  addiu      $t3, $zero, 1
/* 379B4 80036DB4 AEC20034 */  sw         $v0, 0x34($s6)
/* 379B8 80036DB8 AECB0040 */  sw         $t3, 0x40($s6)
/* 379BC 80036DBC 8FC70004 */  lw         $a3, 4($fp)
/* 379C0 80036DC0 240C0004 */  addiu      $t4, $zero, 4
/* 379C4 80036DC4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 379C8 80036DC8 00002025 */  or         $a0, $zero, $zero
/* 379CC 80036DCC 00002825 */  or         $a1, $zero, $zero
/* 379D0 80036DD0 0C00D998 */  jal        alHeapDBAlloc
/* 379D4 80036DD4 02E03025 */   or        $a2, $s7, $zero
/* 379D8 80036DD8 8EC40034 */  lw         $a0, 0x34($s6)
/* 379DC 80036DDC 00402825 */  or         $a1, $v0, $zero
/* 379E0 80036DE0 0C01004A */  jal        alAuxBusNew
/* 379E4 80036DE4 8FC60004 */   lw        $a2, 4($fp)
/* 379E8 80036DE8 240D0020 */  addiu      $t5, $zero, 0x20
/* 379EC 80036DEC AFAD0010 */  sw         $t5, 0x10($sp)
/* 379F0 80036DF0 00002025 */  or         $a0, $zero, $zero
/* 379F4 80036DF4 00002825 */  or         $a1, $zero, $zero
/* 379F8 80036DF8 02E03025 */  or         $a2, $s7, $zero
/* 379FC 80036DFC 0C00D998 */  jal        alHeapDBAlloc
/* 37A00 80036E00 24070001 */   addiu     $a3, $zero, 1
/* 37A04 80036E04 AEC20030 */  sw         $v0, 0x30($s6)
/* 37A08 80036E08 8FC70004 */  lw         $a3, 4($fp)
/* 37A0C 80036E0C 240E0004 */  addiu      $t6, $zero, 4
/* 37A10 80036E10 AFAE0010 */  sw         $t6, 0x10($sp)
/* 37A14 80036E14 00002025 */  or         $a0, $zero, $zero
/* 37A18 80036E18 00002825 */  or         $a1, $zero, $zero
/* 37A1C 80036E1C 0C00D998 */  jal        alHeapDBAlloc
/* 37A20 80036E20 02E03025 */   or        $a2, $s7, $zero
/* 37A24 80036E24 8EC40030 */  lw         $a0, 0x30($s6)
/* 37A28 80036E28 00402825 */  or         $a1, $v0, $zero
/* 37A2C 80036E2C 0C010035 */  jal        alMainBusNew
/* 37A30 80036E30 8FC60004 */   lw        $a2, 4($fp)
/* 37A34 80036E34 93CF001C */  lbu        $t7, 0x1c($fp)
/* 37A38 80036E38 02C02025 */  or         $a0, $s6, $zero
/* 37A3C 80036E3C 03C03025 */  or         $a2, $fp, $zero
/* 37A40 80036E40 11E00006 */  beqz       $t7, .L80036E5C
/* 37A44 80036E44 24050002 */   addiu     $a1, $zero, 2
/* 37A48 80036E48 00002825 */  or         $a1, $zero, $zero
/* 37A4C 80036E4C 0C01020C */  jal        alSynAllocFX
/* 37A50 80036E50 02E03825 */   or        $a3, $s7, $zero
/* 37A54 80036E54 10000005 */  b          .L80036E6C
/* 37A58 80036E58 AEC00004 */   sw        $zero, 4($s6)
.L80036E5C:
/* 37A5C 80036E5C 8EC40030 */  lw         $a0, 0x30($s6)
/* 37A60 80036E60 0C010234 */  jal        alMainBusParam
/* 37A64 80036E64 8EC60034 */   lw        $a2, 0x34($s6)
/* 37A68 80036E68 AEC00004 */  sw         $zero, 4($s6)
.L80036E6C:
/* 37A6C 80036E6C AEC00008 */  sw         $zero, 8($s6)
/* 37A70 80036E70 AEC00014 */  sw         $zero, 0x14($s6)
/* 37A74 80036E74 AEC00018 */  sw         $zero, 0x18($s6)
/* 37A78 80036E78 AEC0000C */  sw         $zero, 0xc($s6)
/* 37A7C 80036E7C AEC00010 */  sw         $zero, 0x10($s6)
/* 37A80 80036E80 8FC70004 */  lw         $a3, 4($fp)
/* 37A84 80036E84 241800DC */  addiu      $t8, $zero, 0xdc
/* 37A88 80036E88 AFB80010 */  sw         $t8, 0x10($sp)
/* 37A8C 80036E8C 00002025 */  or         $a0, $zero, $zero
/* 37A90 80036E90 00002825 */  or         $a1, $zero, $zero
/* 37A94 80036E94 0C00D998 */  jal        alHeapDBAlloc
/* 37A98 80036E98 02E03025 */   or        $a2, $s7, $zero
/* 37A9C 80036E9C 8FD90004 */  lw         $t9, 4($fp)
/* 37AA0 80036EA0 0000A025 */  or         $s4, $zero, $zero
/* 37AA4 80036EA4 00408025 */  or         $s0, $v0, $zero
/* 37AA8 80036EA8 1B20002F */  blez       $t9, .L80036F68
/* 37AAC 80036EAC 26C50004 */   addiu     $a1, $s6, 4
/* 37AB0 80036EB0 2451008C */  addiu      $s1, $v0, 0x8c
/* 37AB4 80036EB4 24520058 */  addiu      $s2, $v0, 0x58
/* 37AB8 80036EB8 24530010 */  addiu      $s3, $v0, 0x10
/* 37ABC 80036EBC AFA50048 */  sw         $a1, 0x48($sp)
.L80036EC0:
/* 37AC0 80036EC0 8FA50048 */  lw         $a1, 0x48($sp)
/* 37AC4 80036EC4 0200A825 */  or         $s5, $s0, $zero
/* 37AC8 80036EC8 0C00DA14 */  jal        alLink
/* 37ACC 80036ECC 02002025 */   or        $a0, $s0, $zero
/* 37AD0 80036ED0 AE000008 */  sw         $zero, 8($s0)
/* 37AD4 80036ED4 8EC50024 */  lw         $a1, 0x24($s6)
/* 37AD8 80036ED8 02602025 */  or         $a0, $s3, $zero
/* 37ADC 80036EDC 0C010081 */  jal        alLoadNew
/* 37AE0 80036EE0 02E03025 */   or        $a2, $s7, $zero
/* 37AE4 80036EE4 02602025 */  or         $a0, $s3, $zero
/* 37AE8 80036EE8 24050001 */  addiu      $a1, $zero, 1
/* 37AEC 80036EEC 0C010288 */  jal        alLoadParam
/* 37AF0 80036EF0 00003025 */   or        $a2, $zero, $zero
/* 37AF4 80036EF4 02402025 */  or         $a0, $s2, $zero
/* 37AF8 80036EF8 0C01005F */  jal        alResampleNew
/* 37AFC 80036EFC 02E02825 */   or        $a1, $s7, $zero
/* 37B00 80036F00 02402025 */  or         $a0, $s2, $zero
/* 37B04 80036F04 24050001 */  addiu      $a1, $zero, 1
/* 37B08 80036F08 0C01055C */  jal        alResampleParam
/* 37B0C 80036F0C 02603025 */   or        $a2, $s3, $zero
/* 37B10 80036F10 02202025 */  or         $a0, $s1, $zero
/* 37B14 80036F14 0C0100AB */  jal        alEnvmixerNew
/* 37B18 80036F18 02E02825 */   or        $a1, $s7, $zero
/* 37B1C 80036F1C 02202025 */  or         $a0, $s1, $zero
/* 37B20 80036F20 24050001 */  addiu      $a1, $zero, 1
/* 37B24 80036F24 0C010661 */  jal        alEnvmixerParam
/* 37B28 80036F28 02403025 */   or        $a2, $s2, $zero
/* 37B2C 80036F2C 8EC40034 */  lw         $a0, 0x34($s6)
/* 37B30 80036F30 24050002 */  addiu      $a1, $zero, 2
/* 37B34 80036F34 0C010934 */  jal        alAuxBusParam
/* 37B38 80036F38 02203025 */   or        $a2, $s1, $zero
/* 37B3C 80036F3C 26A8008C */  addiu      $t0, $s5, 0x8c
/* 37B40 80036F40 AEA8000C */  sw         $t0, 0xc($s5)
/* 37B44 80036F44 8FC90004 */  lw         $t1, 4($fp)
/* 37B48 80036F48 26940001 */  addiu      $s4, $s4, 1
/* 37B4C 80036F4C 261000DC */  addiu      $s0, $s0, 0xdc
/* 37B50 80036F50 0289082A */  slt        $at, $s4, $t1
/* 37B54 80036F54 263100DC */  addiu      $s1, $s1, 0xdc
/* 37B58 80036F58 265200DC */  addiu      $s2, $s2, 0xdc
/* 37B5C 80036F5C 1420FFD8 */  bnez       $at, .L80036EC0
/* 37B60 80036F60 267300DC */   addiu     $s3, $s3, 0xdc
/* 37B64 80036F64 0000A025 */  or         $s4, $zero, $zero
.L80036F68:
/* 37B68 80036F68 8FA4005C */  lw         $a0, 0x5c($sp)
/* 37B6C 80036F6C 24050001 */  addiu      $a1, $zero, 1
/* 37B70 80036F70 0C010978 */  jal        alSaveParam
/* 37B74 80036F74 8EC60030 */   lw        $a2, 0x30($s6)
/* 37B78 80036F78 8FC70008 */  lw         $a3, 8($fp)
/* 37B7C 80036F7C 240A001C */  addiu      $t2, $zero, 0x1c
/* 37B80 80036F80 AFAA0010 */  sw         $t2, 0x10($sp)
/* 37B84 80036F84 00002025 */  or         $a0, $zero, $zero
/* 37B88 80036F88 00002825 */  or         $a1, $zero, $zero
/* 37B8C 80036F8C 0C00D998 */  jal        alHeapDBAlloc
/* 37B90 80036F90 02E03025 */   or        $a2, $s7, $zero
/* 37B94 80036F94 AEC0002C */  sw         $zero, 0x2c($s6)
/* 37B98 80036F98 8FCB0008 */  lw         $t3, 8($fp)
/* 37B9C 80036F9C 00401825 */  or         $v1, $v0, $zero
/* 37BA0 80036FA0 5960000B */  blezl      $t3, .L80036FD0
/* 37BA4 80036FA4 AED70028 */   sw        $s7, 0x28($s6)
/* 37BA8 80036FA8 8ECC002C */  lw         $t4, 0x2c($s6)
.L80036FAC:
/* 37BAC 80036FAC 26940001 */  addiu      $s4, $s4, 1
/* 37BB0 80036FB0 AC6C0000 */  sw         $t4, ($v1)
/* 37BB4 80036FB4 AEC3002C */  sw         $v1, 0x2c($s6)
/* 37BB8 80036FB8 8FCD0008 */  lw         $t5, 8($fp)
/* 37BBC 80036FBC 2463001C */  addiu      $v1, $v1, 0x1c
/* 37BC0 80036FC0 028D082A */  slt        $at, $s4, $t5
/* 37BC4 80036FC4 5420FFF9 */  bnel       $at, $zero, .L80036FAC
/* 37BC8 80036FC8 8ECC002C */   lw        $t4, 0x2c($s6)
/* 37BCC 80036FCC AED70028 */  sw         $s7, 0x28($s6)
.L80036FD0:
/* 37BD0 80036FD0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 37BD4 80036FD4 8FBE0040 */  lw         $fp, 0x40($sp)
/* 37BD8 80036FD8 8FB7003C */  lw         $s7, 0x3c($sp)
/* 37BDC 80036FDC 8FB60038 */  lw         $s6, 0x38($sp)
/* 37BE0 80036FE0 8FB50034 */  lw         $s5, 0x34($sp)
/* 37BE4 80036FE4 8FB40030 */  lw         $s4, 0x30($sp)
/* 37BE8 80036FE8 8FB3002C */  lw         $s3, 0x2c($sp)
/* 37BEC 80036FEC 8FB20028 */  lw         $s2, 0x28($sp)
/* 37BF0 80036FF0 8FB10024 */  lw         $s1, 0x24($sp)
/* 37BF4 80036FF4 8FB00020 */  lw         $s0, 0x20($sp)
/* 37BF8 80036FF8 03E00008 */  jr         $ra
/* 37BFC 80036FFC 27BD0078 */   addiu     $sp, $sp, 0x78

glabel osAiGetLength
/* 37C00 80037000 3C0EA450 */  lui        $t6, %hi(AI_LEN_REG)
/* 37C04 80037004 03E00008 */  jr         $ra
/* 37C08 80037008 8DC20004 */   lw        $v0, %lo(AI_LEN_REG)($t6)
/* 37C0C 8003700C 00000000 */  nop