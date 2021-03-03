.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80039AD0
/* 3A6D0 80039AD0 AFA40000 */  sw         $a0, ($sp)
/* 3A6D4 80039AD4 AFA50004 */  sw         $a1, 4($sp)
/* 3A6D8 80039AD8 AFA60008 */  sw         $a2, 8($sp)
/* 3A6DC 80039ADC AFA7000C */  sw         $a3, 0xc($sp)
/* 3A6E0 80039AE0 DFAF0008 */  ld         $t7, 8($sp)
/* 3A6E4 80039AE4 DFAE0000 */  ld         $t6, ($sp)
/* 3A6E8 80039AE8 01EE1016 */  dsrlv      $v0, $t6, $t7
/* 3A6EC 80039AEC 0002183C */  dsll32     $v1, $v0, 0
/* 3A6F0 80039AF0 0003183F */  dsra32     $v1, $v1, 0
/* 3A6F4 80039AF4 03E00008 */  jr         $ra
/* 3A6F8 80039AF8 0002103F */   dsra32    $v0, $v0, 0

glabel func_80039AFC
/* 3A6FC 80039AFC AFA40000 */  sw         $a0, ($sp)
/* 3A700 80039B00 AFA50004 */  sw         $a1, 4($sp)
/* 3A704 80039B04 AFA60008 */  sw         $a2, 8($sp)
/* 3A708 80039B08 AFA7000C */  sw         $a3, 0xc($sp)
/* 3A70C 80039B0C DFAF0008 */  ld         $t7, 8($sp)
/* 3A710 80039B10 DFAE0000 */  ld         $t6, ($sp)
/* 3A714 80039B14 01CF001F */  ddivu      $zero, $t6, $t7
/* 3A718 80039B18 15E00002 */  bnez       $t7, .L80039B24
/* 3A71C 80039B1C 00000000 */   nop
/* 3A720 80039B20 0007000D */  break      7
.L80039B24:
/* 3A724 80039B24 00001010 */   mfhi      $v0
/* 3A728 80039B28 0002183C */  dsll32     $v1, $v0, 0
/* 3A72C 80039B2C 0003183F */  dsra32     $v1, $v1, 0
/* 3A730 80039B30 03E00008 */  jr         $ra
/* 3A734 80039B34 0002103F */   dsra32    $v0, $v0, 0

glabel func_80039B38
/* 3A738 80039B38 AFA40000 */  sw         $a0, ($sp)
/* 3A73C 80039B3C AFA50004 */  sw         $a1, 4($sp)
/* 3A740 80039B40 AFA60008 */  sw         $a2, 8($sp)
/* 3A744 80039B44 AFA7000C */  sw         $a3, 0xc($sp)
/* 3A748 80039B48 DFAF0008 */  ld         $t7, 8($sp)
/* 3A74C 80039B4C DFAE0000 */  ld         $t6, ($sp)
/* 3A750 80039B50 01CF001F */  ddivu      $zero, $t6, $t7
/* 3A754 80039B54 15E00002 */  bnez       $t7, .L80039B60
/* 3A758 80039B58 00000000 */   nop
/* 3A75C 80039B5C 0007000D */  break      7
.L80039B60:
/* 3A760 80039B60 00001012 */   mflo      $v0
/* 3A764 80039B64 0002183C */  dsll32     $v1, $v0, 0
/* 3A768 80039B68 0003183F */  dsra32     $v1, $v1, 0
/* 3A76C 80039B6C 03E00008 */  jr         $ra
/* 3A770 80039B70 0002103F */   dsra32    $v0, $v0, 0

glabel func_80039B74
/* 3A774 80039B74 AFA40000 */  sw         $a0, ($sp)
/* 3A778 80039B78 AFA50004 */  sw         $a1, 4($sp)
/* 3A77C 80039B7C AFA60008 */  sw         $a2, 8($sp)
/* 3A780 80039B80 AFA7000C */  sw         $a3, 0xc($sp)
/* 3A784 80039B84 DFAF0008 */  ld         $t7, 8($sp)
/* 3A788 80039B88 DFAE0000 */  ld         $t6, ($sp)
/* 3A78C 80039B8C 01EE1014 */  dsllv      $v0, $t6, $t7
/* 3A790 80039B90 0002183C */  dsll32     $v1, $v0, 0
/* 3A794 80039B94 0003183F */  dsra32     $v1, $v1, 0
/* 3A798 80039B98 03E00008 */  jr         $ra
/* 3A79C 80039B9C 0002103F */   dsra32    $v0, $v0, 0

glabel func_80039BA0
/* 3A7A0 80039BA0 AFA40000 */  sw         $a0, ($sp)
/* 3A7A4 80039BA4 AFA50004 */  sw         $a1, 4($sp)
/* 3A7A8 80039BA8 AFA60008 */  sw         $a2, 8($sp)
/* 3A7AC 80039BAC AFA7000C */  sw         $a3, 0xc($sp)
/* 3A7B0 80039BB0 DFAF0008 */  ld         $t7, 8($sp)
/* 3A7B4 80039BB4 DFAE0000 */  ld         $t6, ($sp)
/* 3A7B8 80039BB8 01CF001F */  ddivu      $zero, $t6, $t7
/* 3A7BC 80039BBC 15E00002 */  bnez       $t7, .L80039BC8
/* 3A7C0 80039BC0 00000000 */   nop
/* 3A7C4 80039BC4 0007000D */  break      7
.L80039BC8:
/* 3A7C8 80039BC8 00001010 */   mfhi      $v0
/* 3A7CC 80039BCC 0002183C */  dsll32     $v1, $v0, 0
/* 3A7D0 80039BD0 0003183F */  dsra32     $v1, $v1, 0
/* 3A7D4 80039BD4 03E00008 */  jr         $ra
/* 3A7D8 80039BD8 0002103F */   dsra32    $v0, $v0, 0

glabel func_80039BDC
/* 3A7DC 80039BDC AFA40000 */  sw         $a0, ($sp)
/* 3A7E0 80039BE0 AFA50004 */  sw         $a1, 4($sp)
/* 3A7E4 80039BE4 AFA60008 */  sw         $a2, 8($sp)
/* 3A7E8 80039BE8 AFA7000C */  sw         $a3, 0xc($sp)
/* 3A7EC 80039BEC DFAF0008 */  ld         $t7, 8($sp)
/* 3A7F0 80039BF0 DFAE0000 */  ld         $t6, ($sp)
/* 3A7F4 80039BF4 01CF001E */  ddiv       $zero, $t6, $t7
/* 3A7F8 80039BF8 00000000 */  nop
/* 3A7FC 80039BFC 15E00002 */  bnez       $t7, .L80039C08
/* 3A800 80039C00 00000000 */   nop
/* 3A804 80039C04 0007000D */  break      7
.L80039C08:
/* 3A808 80039C08 6401FFFF */   daddiu    $at, $zero, -1
/* 3A80C 80039C0C 15E10005 */  bne        $t7, $at, .L80039C24
/* 3A810 80039C10 64010001 */   daddiu    $at, $zero, 1
/* 3A814 80039C14 00010FFC */  dsll32     $at, $at, 0x1f
/* 3A818 80039C18 15C10002 */  bne        $t6, $at, .L80039C24
/* 3A81C 80039C1C 00000000 */   nop
/* 3A820 80039C20 0006000D */  break      6
.L80039C24:
/* 3A824 80039C24 00001012 */   mflo      $v0
/* 3A828 80039C28 0002183C */  dsll32     $v1, $v0, 0
/* 3A82C 80039C2C 0003183F */  dsra32     $v1, $v1, 0
/* 3A830 80039C30 03E00008 */  jr         $ra
/* 3A834 80039C34 0002103F */   dsra32    $v0, $v0, 0

glabel func_80039C38
/* 3A838 80039C38 AFA40000 */  sw         $a0, ($sp)
/* 3A83C 80039C3C AFA50004 */  sw         $a1, 4($sp)
/* 3A840 80039C40 AFA60008 */  sw         $a2, 8($sp)
/* 3A844 80039C44 AFA7000C */  sw         $a3, 0xc($sp)
/* 3A848 80039C48 DFAF0008 */  ld         $t7, 8($sp)
/* 3A84C 80039C4C DFAE0000 */  ld         $t6, ($sp)
/* 3A850 80039C50 01CF001D */  dmultu     $t6, $t7
/* 3A854 80039C54 00001012 */  mflo       $v0
/* 3A858 80039C58 0002183C */  dsll32     $v1, $v0, 0
/* 3A85C 80039C5C 0003183F */  dsra32     $v1, $v1, 0
/* 3A860 80039C60 03E00008 */  jr         $ra
/* 3A864 80039C64 0002103F */   dsra32    $v0, $v0, 0

glabel func_80039C68
/* 3A868 80039C68 87AF0012 */  lh         $t7, 0x12($sp)
/* 3A86C 80039C6C AFA60008 */  sw         $a2, 8($sp)
/* 3A870 80039C70 AFA7000C */  sw         $a3, 0xc($sp)
/* 3A874 80039C74 DFAE0008 */  ld         $t6, 8($sp)
/* 3A878 80039C78 01E0C025 */  or         $t8, $t7, $zero
/* 3A87C 80039C7C 0300C825 */  or         $t9, $t8, $zero
/* 3A880 80039C80 01D9001F */  ddivu      $zero, $t6, $t9
/* 3A884 80039C84 17200002 */  bnez       $t9, .L80039C90
/* 3A888 80039C88 00000000 */   nop
/* 3A88C 80039C8C 0007000D */  break      7
.L80039C90:
/* 3A890 80039C90 00004012 */   mflo      $t0
/* 3A894 80039C94 FC880000 */  sd         $t0, ($a0)
/* 3A898 80039C98 87AA0012 */  lh         $t2, 0x12($sp)
/* 3A89C 80039C9C DFA90008 */  ld         $t1, 8($sp)
/* 3A8A0 80039CA0 01405825 */  or         $t3, $t2, $zero
/* 3A8A4 80039CA4 01606025 */  or         $t4, $t3, $zero
/* 3A8A8 80039CA8 012C001F */  ddivu      $zero, $t1, $t4
/* 3A8AC 80039CAC 15800002 */  bnez       $t4, .L80039CB8
/* 3A8B0 80039CB0 00000000 */   nop
/* 3A8B4 80039CB4 0007000D */  break      7
.L80039CB8:
/* 3A8B8 80039CB8 00006810 */   mfhi      $t5
/* 3A8BC 80039CBC FCAD0000 */  sd         $t5, ($a1)
/* 3A8C0 80039CC0 03E00008 */  jr         $ra
/* 3A8C4 80039CC4 00000000 */   nop

glabel func_80039CC8
/* 3A8C8 80039CC8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 3A8CC 80039CCC AFA40008 */  sw         $a0, 8($sp)
/* 3A8D0 80039CD0 AFA5000C */  sw         $a1, 0xc($sp)
/* 3A8D4 80039CD4 AFA60010 */  sw         $a2, 0x10($sp)
/* 3A8D8 80039CD8 AFA70014 */  sw         $a3, 0x14($sp)
/* 3A8DC 80039CDC DFAF0010 */  ld         $t7, 0x10($sp)
/* 3A8E0 80039CE0 DFAE0008 */  ld         $t6, 8($sp)
/* 3A8E4 80039CE4 01CF001E */  ddiv       $zero, $t6, $t7
/* 3A8E8 80039CE8 00000000 */  nop
/* 3A8EC 80039CEC 15E00002 */  bnez       $t7, .L80039CF8
/* 3A8F0 80039CF0 00000000 */   nop
/* 3A8F4 80039CF4 0007000D */  break      7
.L80039CF8:
/* 3A8F8 80039CF8 6401FFFF */   daddiu    $at, $zero, -1
/* 3A8FC 80039CFC 15E10005 */  bne        $t7, $at, .L80039D14
/* 3A900 80039D00 64010001 */   daddiu    $at, $zero, 1
/* 3A904 80039D04 00010FFC */  dsll32     $at, $at, 0x1f
/* 3A908 80039D08 15C10002 */  bne        $t6, $at, .L80039D14
/* 3A90C 80039D0C 00000000 */   nop
/* 3A910 80039D10 0006000D */  break      6
.L80039D14:
/* 3A914 80039D14 0000C010 */   mfhi      $t8
/* 3A918 80039D18 FFB80000 */  sd         $t8, ($sp)
/* 3A91C 80039D1C 07010003 */  bgez       $t8, .L80039D2C
/* 3A920 80039D20 00000000 */   nop
/* 3A924 80039D24 1DE00007 */  bgtz       $t7, .L80039D44
/* 3A928 80039D28 00000000 */   nop
.L80039D2C:
/* 3A92C 80039D2C DFB90000 */  ld         $t9, ($sp)
/* 3A930 80039D30 1B200008 */  blez       $t9, .L80039D54
/* 3A934 80039D34 00000000 */   nop
/* 3A938 80039D38 DFA80010 */  ld         $t0, 0x10($sp)
/* 3A93C 80039D3C 05010005 */  bgez       $t0, .L80039D54
/* 3A940 80039D40 00000000 */   nop
.L80039D44:
/* 3A944 80039D44 DFA90000 */  ld         $t1, ($sp)
/* 3A948 80039D48 DFAA0010 */  ld         $t2, 0x10($sp)
/* 3A94C 80039D4C 012A582D */  daddu      $t3, $t1, $t2
/* 3A950 80039D50 FFAB0000 */  sd         $t3, ($sp)
.L80039D54:
/* 3A954 80039D54 8FA20000 */  lw         $v0, ($sp)
/* 3A958 80039D58 8FA30004 */  lw         $v1, 4($sp)
/* 3A95C 80039D5C 03E00008 */  jr         $ra
/* 3A960 80039D60 27BD0008 */   addiu     $sp, $sp, 8

glabel func_80039D64
/* 3A964 80039D64 AFA40000 */  sw         $a0, ($sp)
/* 3A968 80039D68 AFA50004 */  sw         $a1, 4($sp)
/* 3A96C 80039D6C AFA60008 */  sw         $a2, 8($sp)
/* 3A970 80039D70 AFA7000C */  sw         $a3, 0xc($sp)
/* 3A974 80039D74 DFAF0008 */  ld         $t7, 8($sp)
/* 3A978 80039D78 DFAE0000 */  ld         $t6, ($sp)
/* 3A97C 80039D7C 01EE1017 */  dsrav      $v0, $t6, $t7
/* 3A980 80039D80 0002183C */  dsll32     $v1, $v0, 0
/* 3A984 80039D84 0003183F */  dsra32     $v1, $v1, 0
/* 3A988 80039D88 03E00008 */  jr         $ra
/* 3A98C 80039D8C 0002103F */   dsra32    $v0, $v0, 0

glabel osPfsInitPak
/* 3A990 80039D90 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 3A994 80039D94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A998 80039D98 AFA40068 */  sw         $a0, 0x68($sp)
/* 3A99C 80039D9C AFA5006C */  sw         $a1, 0x6c($sp)
/* 3A9A0 80039DA0 AFA60070 */  sw         $a2, 0x70($sp)
/* 3A9A4 80039DA4 0C011210 */  jal        __osSiGetAccess
/* 3A9A8 80039DA8 AFA00060 */   sw        $zero, 0x60($sp)
/* 3A9AC 80039DAC 8FA40068 */  lw         $a0, 0x68($sp)
/* 3A9B0 80039DB0 0C01122C */  jal        __osPfsGetStatus
/* 3A9B4 80039DB4 8FA50070 */   lw        $a1, 0x70($sp)
/* 3A9B8 80039DB8 0C011221 */  jal        __osSiRelAccess
/* 3A9BC 80039DBC AFA20060 */   sw        $v0, 0x60($sp)
/* 3A9C0 80039DC0 8FAE0060 */  lw         $t6, 0x60($sp)
/* 3A9C4 80039DC4 11C00003 */  beqz       $t6, .L80039DD4
/* 3A9C8 80039DC8 00000000 */   nop
/* 3A9CC 80039DCC 10000085 */  b          .L80039FE4
/* 3A9D0 80039DD0 01C01025 */   or        $v0, $t6, $zero
.L80039DD4:
/* 3A9D4 80039DD4 8FAF0068 */  lw         $t7, 0x68($sp)
/* 3A9D8 80039DD8 8FB8006C */  lw         $t8, 0x6c($sp)
/* 3A9DC 80039DDC AF0F0004 */  sw         $t7, 4($t8)
/* 3A9E0 80039DE0 8FA8006C */  lw         $t0, 0x6c($sp)
/* 3A9E4 80039DE4 8FB90070 */  lw         $t9, 0x70($sp)
/* 3A9E8 80039DE8 AD190008 */  sw         $t9, 8($t0)
/* 3A9EC 80039DEC 8FA9006C */  lw         $t1, 0x6c($sp)
/* 3A9F0 80039DF0 AD200000 */  sw         $zero, ($t1)
/* 3A9F4 80039DF4 8FAA006C */  lw         $t2, 0x6c($sp)
/* 3A9F8 80039DF8 A1400065 */  sb         $zero, 0x65($t2)
/* 3A9FC 80039DFC 0C0115F7 */  jal        __osPfsSelectBank
/* 3AA00 80039E00 8FA4006C */   lw        $a0, 0x6c($sp)
/* 3AA04 80039E04 AFA20060 */  sw         $v0, 0x60($sp)
/* 3AA08 80039E08 8FAB0060 */  lw         $t3, 0x60($sp)
/* 3AA0C 80039E0C 11600003 */  beqz       $t3, .L80039E1C
/* 3AA10 80039E10 00000000 */   nop
/* 3AA14 80039E14 10000073 */  b          .L80039FE4
/* 3AA18 80039E18 01601025 */   or        $v0, $t3, $zero
.L80039E1C:
/* 3AA1C 80039E1C 27A4003C */  addiu      $a0, $sp, 0x3c
/* 3AA20 80039E20 27A5005E */  addiu      $a1, $sp, 0x5e
/* 3AA24 80039E24 0C0112D3 */  jal        __osIdCheckSum
/* 3AA28 80039E28 27A6005C */   addiu     $a2, $sp, 0x5c
/* 3AA2C 80039E2C 27AC003C */  addiu      $t4, $sp, 0x3c
/* 3AA30 80039E30 AFAC0038 */  sw         $t4, 0x38($sp)
/* 3AA34 80039E34 958D001C */  lhu        $t5, 0x1c($t4)
/* 3AA38 80039E38 97AE005E */  lhu        $t6, 0x5e($sp)
/* 3AA3C 80039E3C 15AE0005 */  bne        $t5, $t6, .L80039E54
/* 3AA40 80039E40 00000000 */   nop
/* 3AA44 80039E44 958F001E */  lhu        $t7, 0x1e($t4)
/* 3AA48 80039E48 97B8005C */  lhu        $t8, 0x5c($sp)
/* 3AA4C 80039E4C 11F8000F */  beq        $t7, $t8, .L80039E8C
/* 3AA50 80039E50 00000000 */   nop
.L80039E54:
/* 3AA54 80039E54 8FA4006C */  lw         $a0, 0x6c($sp)
/* 3AA58 80039E58 0C0113F3 */  jal        __osCheckPackId
/* 3AA5C 80039E5C 8FA50038 */   lw        $a1, 0x38($sp)
/* 3AA60 80039E60 AFA20060 */  sw         $v0, 0x60($sp)
/* 3AA64 80039E64 8FB90060 */  lw         $t9, 0x60($sp)
/* 3AA68 80039E68 13200003 */  beqz       $t9, .L80039E78
/* 3AA6C 80039E6C 00000000 */   nop
/* 3AA70 80039E70 1000005C */  b          .L80039FE4
/* 3AA74 80039E74 03201025 */   or        $v0, $t9, $zero
.L80039E78:
/* 3AA78 80039E78 8FA80060 */  lw         $t0, 0x60($sp)
/* 3AA7C 80039E7C 11000003 */  beqz       $t0, .L80039E8C
/* 3AA80 80039E80 00000000 */   nop
/* 3AA84 80039E84 10000057 */  b          .L80039FE4
/* 3AA88 80039E88 01001025 */   or        $v0, $t0, $zero
.L80039E8C:
/* 3AA8C 80039E8C 8FA90038 */  lw         $t1, 0x38($sp)
/* 3AA90 80039E90 952A0018 */  lhu        $t2, 0x18($t1)
/* 3AA94 80039E94 314B0001 */  andi       $t3, $t2, 1
/* 3AA98 80039E98 15600013 */  bnez       $t3, .L80039EE8
/* 3AA9C 80039E9C 00000000 */   nop
/* 3AAA0 80039EA0 8FA4006C */  lw         $a0, 0x6c($sp)
/* 3AAA4 80039EA4 01202825 */  or         $a1, $t1, $zero
/* 3AAA8 80039EA8 0C0112ED */  jal        __osRepairPackId
/* 3AAAC 80039EAC 27A60018 */   addiu     $a2, $sp, 0x18
/* 3AAB0 80039EB0 AFA20060 */  sw         $v0, 0x60($sp)
/* 3AAB4 80039EB4 8FAD0060 */  lw         $t5, 0x60($sp)
/* 3AAB8 80039EB8 11A00003 */  beqz       $t5, .L80039EC8
/* 3AABC 80039EBC 00000000 */   nop
/* 3AAC0 80039EC0 10000048 */  b          .L80039FE4
/* 3AAC4 80039EC4 01A01025 */   or        $v0, $t5, $zero
.L80039EC8:
/* 3AAC8 80039EC8 27AE0018 */  addiu      $t6, $sp, 0x18
/* 3AACC 80039ECC AFAE0038 */  sw         $t6, 0x38($sp)
/* 3AAD0 80039ED0 95CC0018 */  lhu        $t4, 0x18($t6)
/* 3AAD4 80039ED4 318F0001 */  andi       $t7, $t4, 1
/* 3AAD8 80039ED8 15E00003 */  bnez       $t7, .L80039EE8
/* 3AADC 80039EDC 00000000 */   nop
/* 3AAE0 80039EE0 10000040 */  b          .L80039FE4
/* 3AAE4 80039EE4 2402000B */   addiu     $v0, $zero, 0xb
.L80039EE8:
/* 3AAE8 80039EE8 AFA00064 */  sw         $zero, 0x64($sp)
.L80039EEC:
/* 3AAEC 80039EEC 8FB80038 */  lw         $t8, 0x38($sp)
/* 3AAF0 80039EF0 8FB90064 */  lw         $t9, 0x64($sp)
/* 3AAF4 80039EF4 8FAB006C */  lw         $t3, 0x6c($sp)
/* 3AAF8 80039EF8 03194021 */  addu       $t0, $t8, $t9
/* 3AAFC 80039EFC 910A0000 */  lbu        $t2, ($t0)
/* 3AB00 80039F00 01794821 */  addu       $t1, $t3, $t9
/* 3AB04 80039F04 A12A000C */  sb         $t2, 0xc($t1)
/* 3AB08 80039F08 8FAD0064 */  lw         $t5, 0x64($sp)
/* 3AB0C 80039F0C 25AE0001 */  addiu      $t6, $t5, 1
/* 3AB10 80039F10 29C10020 */  slti       $at, $t6, 0x20
/* 3AB14 80039F14 1420FFF5 */  bnez       $at, .L80039EEC
/* 3AB18 80039F18 AFAE0064 */   sw        $t6, 0x64($sp)
/* 3AB1C 80039F1C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 3AB20 80039F20 8FB8006C */  lw         $t8, 0x6c($sp)
/* 3AB24 80039F24 24060007 */  addiu      $a2, $zero, 7
/* 3AB28 80039F28 918F001B */  lbu        $t7, 0x1b($t4)
/* 3AB2C 80039F2C 240C0010 */  addiu      $t4, $zero, 0x10
/* 3AB30 80039F30 AF0F004C */  sw         $t7, 0x4c($t8)
/* 3AB34 80039F34 8FA80038 */  lw         $t0, 0x38($sp)
/* 3AB38 80039F38 8FB9006C */  lw         $t9, 0x6c($sp)
/* 3AB3C 80039F3C 24180008 */  addiu      $t8, $zero, 8
/* 3AB40 80039F40 910B001A */  lbu        $t3, 0x1a($t0)
/* 3AB44 80039F44 A32B0064 */  sb         $t3, 0x64($t9)
/* 3AB48 80039F48 8FAA006C */  lw         $t2, 0x6c($sp)
/* 3AB4C 80039F4C 91490064 */  lbu        $t1, 0x64($t2)
/* 3AB50 80039F50 00096840 */  sll        $t5, $t1, 1
/* 3AB54 80039F54 25AE0003 */  addiu      $t6, $t5, 3
/* 3AB58 80039F58 AD4E0060 */  sw         $t6, 0x60($t2)
/* 3AB5C 80039F5C 8FAF006C */  lw         $t7, 0x6c($sp)
/* 3AB60 80039F60 ADEC0050 */  sw         $t4, 0x50($t7)
/* 3AB64 80039F64 8FA8006C */  lw         $t0, 0x6c($sp)
/* 3AB68 80039F68 AD180054 */  sw         $t8, 0x54($t0)
/* 3AB6C 80039F6C 8FAB006C */  lw         $t3, 0x6c($sp)
/* 3AB70 80039F70 91790064 */  lbu        $t9, 0x64($t3)
/* 3AB74 80039F74 001948C0 */  sll        $t1, $t9, 3
/* 3AB78 80039F78 252D0008 */  addiu      $t5, $t1, 8
/* 3AB7C 80039F7C AD6D0058 */  sw         $t5, 0x58($t3)
/* 3AB80 80039F80 8FAE006C */  lw         $t6, 0x6c($sp)
/* 3AB84 80039F84 91CC0064 */  lbu        $t4, 0x64($t6)
/* 3AB88 80039F88 8DCA0058 */  lw         $t2, 0x58($t6)
/* 3AB8C 80039F8C 000C78C0 */  sll        $t7, $t4, 3
/* 3AB90 80039F90 014FC021 */  addu       $t8, $t2, $t7
/* 3AB94 80039F94 ADD8005C */  sw         $t8, 0x5c($t6)
/* 3AB98 80039F98 8FA8006C */  lw         $t0, 0x6c($sp)
/* 3AB9C 80039F9C 8D040004 */  lw         $a0, 4($t0)
/* 3ABA0 80039FA0 8D050008 */  lw         $a1, 8($t0)
/* 3ABA4 80039FA4 0C011614 */  jal        __osContRamRead
/* 3ABA8 80039FA8 2507002C */   addiu     $a3, $t0, 0x2c
/* 3ABAC 80039FAC AFA20060 */  sw         $v0, 0x60($sp)
/* 3ABB0 80039FB0 8FB90060 */  lw         $t9, 0x60($sp)
/* 3ABB4 80039FB4 13200003 */  beqz       $t9, .L80039FC4
/* 3ABB8 80039FB8 00000000 */   nop
/* 3ABBC 80039FBC 10000009 */  b          .L80039FE4
/* 3ABC0 80039FC0 03201025 */   or        $v0, $t9, $zero
.L80039FC4:
/* 3ABC4 80039FC4 0C0116EC */  jal        osPfsChecker
/* 3ABC8 80039FC8 8FA4006C */   lw        $a0, 0x6c($sp)
/* 3ABCC 80039FCC 8FA9006C */  lw         $t1, 0x6c($sp)
/* 3ABD0 80039FD0 AFA20060 */  sw         $v0, 0x60($sp)
/* 3ABD4 80039FD4 8D2D0000 */  lw         $t5, ($t1)
/* 3ABD8 80039FD8 35AB0001 */  ori        $t3, $t5, 1
/* 3ABDC 80039FDC AD2B0000 */  sw         $t3, ($t1)
/* 3ABE0 80039FE0 8FA20060 */  lw         $v0, 0x60($sp)
.L80039FE4:
/* 3ABE4 80039FE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3ABE8 80039FE8 27BD0068 */  addiu      $sp, $sp, 0x68
/* 3ABEC 80039FEC 03E00008 */  jr         $ra
/* 3ABF0 80039FF0 00000000 */   nop
/* 3ABF4 80039FF4 00000000 */  nop
/* 3ABF8 80039FF8 00000000 */  nop
/* 3ABFC 80039FFC 00000000 */  nop
