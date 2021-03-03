.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100634
/* DC1C54 80100634 27BDFF10 */  addiu      $sp, $sp, -0xf0
/* DC1C58 80100638 3C028016 */  lui        $v0, %hi(D_80166238)
/* DC1C5C 8010063C 24426238 */  addiu      $v0, $v0, %lo(D_80166238)
/* DC1C60 80100640 8C4E0000 */  lw         $t6, ($v0)
/* DC1C64 80100644 AFBF0064 */  sw         $ra, 0x64($sp)
/* DC1C68 80100648 AFBE0060 */  sw         $fp, 0x60($sp)
/* DC1C6C 8010064C AFB7005C */  sw         $s7, 0x5c($sp)
/* DC1C70 80100650 AFB60058 */  sw         $s6, 0x58($sp)
/* DC1C74 80100654 AFB50054 */  sw         $s5, 0x54($sp)
/* DC1C78 80100658 AFB40050 */  sw         $s4, 0x50($sp)
/* DC1C7C 8010065C AFB3004C */  sw         $s3, 0x4c($sp)
/* DC1C80 80100660 AFB20048 */  sw         $s2, 0x48($sp)
/* DC1C84 80100664 AFB10044 */  sw         $s1, 0x44($sp)
/* DC1C88 80100668 15C0000C */  bnez       $t6, .L8010069C
/* DC1C8C 8010066C AFB00040 */   sw        $s0, 0x40($sp)
/* DC1C90 80100670 3C018017 */  lui        $at, %hi(D_80174CB4)
/* DC1C94 80100674 3C048016 */  lui        $a0, %hi(D_80166230)
/* DC1C98 80100678 AC204CB4 */  sw         $zero, %lo(D_80174CB4)($at)
/* DC1C9C 8010067C 24846230 */  addiu      $a0, $a0, %lo(D_80166230)
/* DC1CA0 80100680 AC800000 */  sw         $zero, ($a0)
/* DC1CA4 80100684 3C018017 */  lui        $at, %hi(D_80174DE8)
/* DC1CA8 80100688 A0204DE8 */  sb         $zero, %lo(D_80174DE8)($at)
/* DC1CAC 8010068C 3C018017 */  lui        $at, %hi(D_80174DE4)
/* DC1CB0 80100690 AC204DE4 */  sw         $zero, %lo(D_80174DE4)($at)
/* DC1CB4 80100694 240F0001 */  addiu      $t7, $zero, 1
/* DC1CB8 80100698 AC4F0000 */  sw         $t7, ($v0)
.L8010069C:
/* DC1CBC 8010069C 3C048016 */  lui        $a0, %hi(D_80166230)
/* DC1CC0 801006A0 24846230 */  addiu      $a0, $a0, %lo(D_80166230)
/* DC1CC4 801006A4 8C980000 */  lw         $t8, ($a0)
/* DC1CC8 801006A8 3C0E8017 */  lui        $t6, %hi(D_80174CB4)
/* DC1CCC 801006AC 3C038016 */  lui        $v1, %hi(D_80166244)
/* DC1CD0 801006B0 27190001 */  addiu      $t9, $t8, 1
/* DC1CD4 801006B4 AC990000 */  sw         $t9, ($a0)
/* DC1CD8 801006B8 8DCE4CB4 */  lw         $t6, %lo(D_80174CB4)($t6)
/* DC1CDC 801006BC 3C018017 */  lui        $at, %hi(D_80174CB4)
/* DC1CE0 801006C0 24636244 */  addiu      $v1, $v1, %lo(D_80166244)
/* DC1CE4 801006C4 25CF0001 */  addiu      $t7, $t6, 1
/* DC1CE8 801006C8 AC2F4CB4 */  sw         $t7, %lo(D_80174CB4)($at)
/* DC1CEC 801006CC 8C780000 */  lw         $t8, ($v1)
/* DC1CF0 801006D0 3C0E8016 */  lui        $t6, %hi(D_80166248)
/* DC1CF4 801006D4 3C138016 */  lui        $s3, %hi(D_8016623C)
/* DC1CF8 801006D8 27190001 */  addiu      $t9, $t8, 1
/* DC1CFC 801006DC AC790000 */  sw         $t9, ($v1)
/* DC1D00 801006E0 8DCE6248 */  lw         $t6, %lo(D_80166248)($t6)
/* DC1D04 801006E4 2673623C */  addiu      $s3, $s3, %lo(D_8016623C)
/* DC1D08 801006E8 24150028 */  addiu      $s5, $zero, 0x28
/* DC1D0C 801006EC 000E78C0 */  sll        $t7, $t6, 3
/* DC1D10 801006F0 8E6E0000 */  lw         $t6, ($s3)
/* DC1D14 801006F4 3C1E8011 */  lui        $fp, %hi(D_8010B338)
/* DC1D18 801006F8 27DEB338 */  addiu      $fp, $fp, %lo(D_8010B338)
/* DC1D1C 801006FC 01D50019 */  multu      $t6, $s5
/* DC1D20 80100700 03CFC021 */  addu       $t8, $fp, $t7
/* DC1D24 80100704 8F190000 */  lw         $t9, ($t8)
/* DC1D28 80100708 8C780000 */  lw         $t8, ($v1)
/* DC1D2C 8010070C 00007812 */  mflo       $t7
/* DC1D30 80100710 032F1021 */  addu       $v0, $t9, $t7
/* DC1D34 80100714 844E0002 */  lh         $t6, 2($v0)
/* DC1D38 80100718 030E082A */  slt        $at, $t8, $t6
/* DC1D3C 8010071C 542000C3 */  bnel       $at, $zero, .L80100A2C
/* DC1D40 80100720 8C980000 */   lw        $t8, ($a0)
/* DC1D44 80100724 84590022 */  lh         $t9, 0x22($v0)
/* DC1D48 80100728 2401FFFF */  addiu      $at, $zero, -1
/* DC1D4C 8010072C 3C0F8016 */  lui        $t7, %hi(D_8016624C)
/* DC1D50 80100730 572100BE */  bnel       $t9, $at, .L80100A2C
/* DC1D54 80100734 8C980000 */   lw        $t8, ($a0)
/* DC1D58 80100738 8DEF624C */  lw         $t7, %lo(D_8016624C)($t7)
/* DC1D5C 8010073C 3C178016 */  lui        $s7, %hi(D_80166240)
/* DC1D60 80100740 26F76240 */  addiu      $s7, $s7, %lo(D_80166240)
/* DC1D64 80100744 15E000B8 */  bnez       $t7, .L80100A28
/* DC1D68 80100748 2416000C */   addiu     $s6, $zero, 0xc
/* DC1D6C 8010074C 3C148016 */  lui        $s4, %hi(D_80166234)
/* DC1D70 80100750 26946234 */  addiu      $s4, $s4, %lo(D_80166234)
.L80100754:
/* DC1D74 80100754 0C04051C */  jal        func_80101470
/* DC1D78 80100758 00000000 */   nop
/* DC1D7C 8010075C 2401FFFF */  addiu      $at, $zero, -1
/* DC1D80 80100760 104100A6 */  beq        $v0, $at, .L801009FC
/* DC1D84 80100764 00409025 */   or        $s2, $v0, $zero
/* DC1D88 80100768 8E6F0000 */  lw         $t7, ($s3)
/* DC1D8C 8010076C 3C188016 */  lui        $t8, %hi(D_80166248)
/* DC1D90 80100770 8F186248 */  lw         $t8, %lo(D_80166248)($t8)
/* DC1D94 80100774 01F50019 */  multu      $t7, $s5
/* DC1D98 80100778 3C118010 */  lui        $s1, 0x8010
/* DC1D9C 8010077C 001870C0 */  sll        $t6, $t8, 3
/* DC1DA0 80100780 03CEC821 */  addu       $t9, $fp, $t6
/* DC1DA4 80100784 8F300000 */  lw         $s0, ($t9)
/* DC1DA8 80100788 00122400 */  sll        $a0, $s2, 0x10
/* DC1DAC 8010078C 3C018000 */  lui        $at, 0x8000
/* DC1DB0 80100790 0000C012 */  mflo       $t8
/* DC1DB4 80100794 02187021 */  addu       $t6, $s0, $t8
/* DC1DB8 80100798 A5C00020 */  sh         $zero, 0x20($t6)
/* DC1DBC 8010079C 8E790000 */  lw         $t9, ($s3)
/* DC1DC0 801007A0 03350019 */  multu      $t9, $s5
/* DC1DC4 801007A4 00007812 */  mflo       $t7
/* DC1DC8 801007A8 020FC021 */  addu       $t8, $s0, $t7
/* DC1DCC 801007AC A7020022 */  sh         $v0, 0x22($t8)
/* DC1DD0 801007B0 8E6E0000 */  lw         $t6, ($s3)
/* DC1DD4 801007B4 01D50019 */  multu      $t6, $s5
/* DC1DD8 801007B8 00047403 */  sra        $t6, $a0, 0x10
/* DC1DDC 801007BC 01C02025 */  or         $a0, $t6, $zero
/* DC1DE0 801007C0 0000C812 */  mflo       $t9
/* DC1DE4 801007C4 02191021 */  addu       $v0, $s0, $t9
/* DC1DE8 801007C8 84590020 */  lh         $t9, 0x20($v0)
/* DC1DEC 801007CC 944F0000 */  lhu        $t7, ($v0)
/* DC1DF0 801007D0 84460008 */  lh         $a2, 8($v0)
/* DC1DF4 801007D4 03360019 */  multu      $t9, $s6
/* DC1DF8 801007D8 000FC0C0 */  sll        $t8, $t7, 3
/* DC1DFC 801007DC 02388821 */  addu       $s1, $s1, $t8
/* DC1E00 801007E0 8E3167E0 */  lw         $s1, 0x67e0($s1)
/* DC1E04 801007E4 8C590004 */  lw         $t9, 4($v0)
/* DC1E08 801007E8 8447000A */  lh         $a3, 0xa($v0)
/* DC1E0C 801007EC 00007812 */  mflo       $t7
/* DC1E10 801007F0 022F4021 */  addu       $t0, $s1, $t7
/* DC1E14 801007F4 8D180000 */  lw         $t8, ($t0)
/* DC1E18 801007F8 844F0010 */  lh         $t7, 0x10($v0)
/* DC1E1C 801007FC 03017025 */  or         $t6, $t8, $at
/* DC1E20 80100800 AFAF0010 */  sw         $t7, 0x10($sp)
/* DC1E24 80100804 84580012 */  lh         $t8, 0x12($v0)
/* DC1E28 80100808 01D92825 */  or         $a1, $t6, $t9
/* DC1E2C 8010080C AFB80014 */  sw         $t8, 0x14($sp)
/* DC1E30 80100810 844E000C */  lh         $t6, 0xc($v0)
/* DC1E34 80100814 AFAE0018 */  sw         $t6, 0x18($sp)
/* DC1E38 80100818 8459000E */  lh         $t9, 0xe($v0)
/* DC1E3C 8010081C AFB9001C */  sw         $t9, 0x1c($sp)
/* DC1E40 80100820 844F0014 */  lh         $t7, 0x14($v0)
/* DC1E44 80100824 AFAF0020 */  sw         $t7, 0x20($sp)
/* DC1E48 80100828 84580016 */  lh         $t8, 0x16($v0)
/* DC1E4C 8010082C AFB80024 */  sw         $t8, 0x24($sp)
/* DC1E50 80100830 8C4E0018 */  lw         $t6, 0x18($v0)
/* DC1E54 80100834 8E980000 */  lw         $t8, ($s4)
/* DC1E58 80100838 AFAE0028 */  sw         $t6, 0x28($sp)
/* DC1E5C 8010083C 8C59001C */  lw         $t9, 0x1c($v0)
/* DC1E60 80100840 AFB9002C */  sw         $t9, 0x2c($sp)
/* DC1E64 80100844 8D0F0008 */  lw         $t7, 8($t0)
/* DC1E68 80100848 AFB80034 */  sw         $t8, 0x34($sp)
/* DC1E6C 8010084C 0C040420 */  jal        func_80101080
/* DC1E70 80100850 AFAF0030 */   sw        $t7, 0x30($sp)
/* DC1E74 80100854 8E630000 */  lw         $v1, ($s3)
/* DC1E78 80100858 8E8E0000 */  lw         $t6, ($s4)
/* DC1E7C 8010085C 00750019 */  multu      $v1, $s5
/* DC1E80 80100860 25D90001 */  addiu      $t9, $t6, 1
/* DC1E84 80100864 AE990000 */  sw         $t9, ($s4)
/* DC1E88 80100868 00007812 */  mflo       $t7
/* DC1E8C 8010086C 020F1021 */  addu       $v0, $s0, $t7
/* DC1E90 80100870 84580002 */  lh         $t8, 2($v0)
/* DC1E94 80100874 5700000A */  bnel       $t8, $zero, .L801008A0
/* DC1E98 80100878 AEE30000 */   sw        $v1, ($s7)
/* DC1E9C 8010087C 8EEE0000 */  lw         $t6, ($s7)
/* DC1EA0 80100880 A44E0024 */  sh         $t6, 0x24($v0)
/* DC1EA4 80100884 8E630000 */  lw         $v1, ($s3)
/* DC1EA8 80100888 0003C880 */  sll        $t9, $v1, 2
/* DC1EAC 8010088C 0323C821 */  addu       $t9, $t9, $v1
/* DC1EB0 80100890 0019C8C0 */  sll        $t9, $t9, 3
/* DC1EB4 80100894 10000002 */  b          .L801008A0
/* DC1EB8 80100898 02191021 */   addu      $v0, $s0, $t9
/* DC1EBC 8010089C AEE30000 */  sw         $v1, ($s7)
.L801008A0:
/* DC1EC0 801008A0 844F0020 */  lh         $t7, 0x20($v0)
/* DC1EC4 801008A4 01F60019 */  multu      $t7, $s6
/* DC1EC8 801008A8 0000C012 */  mflo       $t8
/* DC1ECC 801008AC 02384021 */  addu       $t0, $s1, $t8
/* DC1ED0 801008B0 8D040000 */  lw         $a0, ($t0)
/* DC1ED4 801008B4 308EC800 */  andi       $t6, $a0, 0xc800
/* DC1ED8 801008B8 51C00023 */  beql       $t6, $zero, .L80100948
/* DC1EDC 801008BC 30981000 */   andi      $t8, $a0, 0x1000
/* DC1EE0 801008C0 84590002 */  lh         $t9, 2($v0)
/* DC1EE4 801008C4 00003825 */  or         $a3, $zero, $zero
/* DC1EE8 801008C8 00004825 */  or         $t1, $zero, $zero
/* DC1EEC 801008CC 1720000C */  bnez       $t9, .L80100900
/* DC1EF0 801008D0 00000000 */   nop
/* DC1EF4 801008D4 8EEF0000 */  lw         $t7, ($s7)
/* DC1EF8 801008D8 844E0008 */  lh         $t6, 8($v0)
/* DC1EFC 801008DC 01F50019 */  multu      $t7, $s5
/* DC1F00 801008E0 844F000A */  lh         $t7, 0xa($v0)
/* DC1F04 801008E4 0000C012 */  mflo       $t8
/* DC1F08 801008E8 02181821 */  addu       $v1, $s0, $t8
/* DC1F0C 801008EC 84790008 */  lh         $t9, 8($v1)
/* DC1F10 801008F0 8478000A */  lh         $t8, 0xa($v1)
/* DC1F14 801008F4 01D93823 */  subu       $a3, $t6, $t9
/* DC1F18 801008F8 10000001 */  b          .L80100900
/* DC1F1C 801008FC 01F84823 */   subu      $t1, $t7, $t8
.L80100900:
/* DC1F20 80100900 850E0004 */  lh         $t6, 4($t0)
/* DC1F24 80100904 85190006 */  lh         $t9, 6($t0)
/* DC1F28 80100908 02402025 */  or         $a0, $s2, $zero
/* DC1F2C 8010090C 01C72821 */  addu       $a1, $t6, $a3
/* DC1F30 80100910 0C040736 */  jal        func_80101CD8
/* DC1F34 80100914 03293021 */   addu      $a2, $t9, $t1
/* DC1F38 80100918 8E630000 */  lw         $v1, ($s3)
/* DC1F3C 8010091C 00037880 */  sll        $t7, $v1, 2
/* DC1F40 80100920 01E37821 */  addu       $t7, $t7, $v1
/* DC1F44 80100924 000F78C0 */  sll        $t7, $t7, 3
/* DC1F48 80100928 020FC021 */  addu       $t8, $s0, $t7
/* DC1F4C 8010092C 870E0020 */  lh         $t6, 0x20($t8)
/* DC1F50 80100930 000EC880 */  sll        $t9, $t6, 2
/* DC1F54 80100934 032EC823 */  subu       $t9, $t9, $t6
/* DC1F58 80100938 0019C880 */  sll        $t9, $t9, 2
/* DC1F5C 8010093C 02397821 */  addu       $t7, $s1, $t9
/* DC1F60 80100940 8DE40000 */  lw         $a0, ($t7)
/* DC1F64 80100944 30981000 */  andi       $t8, $a0, 0x1000
.L80100948:
/* DC1F68 80100948 5300000F */  beql       $t8, $zero, .L80100988
/* DC1F6C 8010094C 3C016000 */   lui       $at, 0x6000
/* DC1F70 80100950 0C040816 */  jal        func_80102058
/* DC1F74 80100954 02402025 */   or        $a0, $s2, $zero
/* DC1F78 80100958 8E630000 */  lw         $v1, ($s3)
/* DC1F7C 8010095C 00037080 */  sll        $t6, $v1, 2
/* DC1F80 80100960 01C37021 */  addu       $t6, $t6, $v1
/* DC1F84 80100964 000E70C0 */  sll        $t6, $t6, 3
/* DC1F88 80100968 020EC821 */  addu       $t9, $s0, $t6
/* DC1F8C 8010096C 872F0020 */  lh         $t7, 0x20($t9)
/* DC1F90 80100970 000FC080 */  sll        $t8, $t7, 2
/* DC1F94 80100974 030FC023 */  subu       $t8, $t8, $t7
/* DC1F98 80100978 0018C080 */  sll        $t8, $t8, 2
/* DC1F9C 8010097C 02387021 */  addu       $t6, $s1, $t8
/* DC1FA0 80100980 8DC40000 */  lw         $a0, ($t6)
/* DC1FA4 80100984 3C016000 */  lui        $at, 0x6000
.L80100988:
/* DC1FA8 80100988 0081C824 */  and        $t9, $a0, $at
/* DC1FAC 8010098C 53200005 */  beql       $t9, $zero, .L801009A4
/* DC1FB0 80100990 246F0001 */   addiu     $t7, $v1, 1
/* DC1FB4 80100994 0C040606 */  jal        func_80101818
/* DC1FB8 80100998 02402025 */   or        $a0, $s2, $zero
/* DC1FBC 8010099C 8E630000 */  lw         $v1, ($s3)
/* DC1FC0 801009A0 246F0001 */  addiu      $t7, $v1, 1
.L801009A4:
/* DC1FC4 801009A4 AE6F0000 */  sw         $t7, ($s3)
/* DC1FC8 801009A8 3C188016 */  lui        $t8, %hi(D_80166248)
/* DC1FCC 801009AC 8F186248 */  lw         $t8, %lo(D_80166248)($t8)
/* DC1FD0 801009B0 01E01825 */  or         $v1, $t7, $zero
/* DC1FD4 801009B4 001870C0 */  sll        $t6, $t8, 3
/* DC1FD8 801009B8 03CEC821 */  addu       $t9, $fp, $t6
/* DC1FDC 801009BC 8F2F0004 */  lw         $t7, 4($t9)
/* DC1FE0 801009C0 006F082B */  sltu       $at, $v1, $t7
/* DC1FE4 801009C4 1420000A */  bnez       $at, .L801009F0
/* DC1FE8 801009C8 00000000 */   nop
/* DC1FEC 801009CC AE600000 */  sw         $zero, ($s3)
/* DC1FF0 801009D0 24180001 */  addiu      $t8, $zero, 1
/* DC1FF4 801009D4 3C018016 */  lui        $at, %hi(D_8016624C)
/* DC1FF8 801009D8 AC38624C */  sw         $t8, %lo(D_8016624C)($at)
/* DC1FFC 801009DC 3C018016 */  lui        $at, %hi(D_80166244)
/* DC2000 801009E0 3C048016 */  lui        $a0, %hi(D_80166230)
/* DC2004 801009E4 AC206244 */  sw         $zero, %lo(D_80166244)($at)
/* DC2008 801009E8 1000000F */  b          .L80100A28
/* DC200C 801009EC 24846230 */   addiu     $a0, $a0, %lo(D_80166230)
.L801009F0:
/* DC2010 801009F0 3C018016 */  lui        $at, %hi(D_80166244)
/* DC2014 801009F4 10000004 */  b          .L80100A08
/* DC2018 801009F8 AC206244 */   sw        $zero, %lo(D_80166244)($at)
.L801009FC:
/* DC201C 801009FC 3C048016 */  lui        $a0, %hi(D_80166230)
/* DC2020 80100A00 10000009 */  b          .L80100A28
/* DC2024 80100A04 24846230 */   addiu     $a0, $a0, %lo(D_80166230)
.L80100A08:
/* DC2028 80100A08 00750019 */  multu      $v1, $s5
/* DC202C 80100A0C 00007012 */  mflo       $t6
/* DC2030 80100A10 020EC821 */  addu       $t9, $s0, $t6
/* DC2034 80100A14 872F0002 */  lh         $t7, 2($t9)
/* DC2038 80100A18 11E0FF4E */  beqz       $t7, .L80100754
/* DC203C 80100A1C 00000000 */   nop
/* DC2040 80100A20 3C048016 */  lui        $a0, %hi(D_80166230)
/* DC2044 80100A24 24846230 */  addiu      $a0, $a0, %lo(D_80166230)
.L80100A28:
/* DC2048 80100A28 8C980000 */  lw         $t8, ($a0)
.L80100A2C:
/* DC204C 80100A2C 24011E00 */  addiu      $at, $zero, 0x1e00
/* DC2050 80100A30 2416000C */  addiu      $s6, $zero, 0xc
/* DC2054 80100A34 17010003 */  bne        $t8, $at, .L80100A44
/* DC2058 80100A38 00000000 */   nop
/* DC205C 80100A3C 0C00990D */  jal        func_80026434
/* DC2060 80100A40 2404005A */   addiu     $a0, $zero, 0x5a
.L80100A44:
/* DC2064 80100A44 0C04081D */  jal        func_80102074
/* DC2068 80100A48 24040001 */   addiu     $a0, $zero, 1
/* DC206C 80100A4C 0C04081D */  jal        func_80102074
/* DC2070 80100A50 00002025 */   or        $a0, $zero, $zero
/* DC2074 80100A54 3C138016 */  lui        $s3, %hi(D_80166250)
/* DC2078 80100A58 3C17FF7F */  lui        $s7, 0xff7f
/* DC207C 80100A5C 36F7FFFF */  ori        $s7, $s7, 0xffff
/* DC2080 80100A60 26736250 */  addiu      $s3, $s3, %lo(D_80166250)
/* DC2084 80100A64 00009025 */  or         $s2, $zero, $zero
.L80100A68:
/* DC2088 80100A68 8E6E0000 */  lw         $t6, ($s3)
/* DC208C 80100A6C 02402025 */  or         $a0, $s2, $zero
/* DC2090 80100A70 000EC800 */  sll        $t9, $t6, 0
/* DC2094 80100A74 07230080 */  bgezl      $t9, .L80100C78
/* DC2098 80100A78 26520001 */   addiu     $s2, $s2, 1
/* DC209C 80100A7C 0C040401 */  jal        func_80101004
/* DC20A0 80100A80 27A500E4 */   addiu     $a1, $sp, 0xe4
/* DC20A4 80100A84 2401FFFF */  addiu      $at, $zero, -1
/* DC20A8 80100A88 1041007A */  beq        $v0, $at, .L80100C74
/* DC20AC 80100A8C 0040A025 */   or        $s4, $v0, $zero
/* DC20B0 80100A90 00550019 */  multu      $v0, $s5
/* DC20B4 80100A94 8FAF00E4 */  lw         $t7, 0xe4($sp)
/* DC20B8 80100A98 8E640000 */  lw         $a0, ($s3)
/* DC20BC 80100A9C 000FC0C0 */  sll        $t8, $t7, 3
/* DC20C0 80100AA0 03D87021 */  addu       $t6, $fp, $t8
/* DC20C4 80100AA4 8DD00000 */  lw         $s0, ($t6)
/* DC20C8 80100AA8 3C0E8010 */  lui        $t6, %hi(D_801067E0)
/* DC20CC 80100AAC 25CE67E0 */  addiu      $t6, $t6, %lo(D_801067E0)
/* DC20D0 80100AB0 0000C812 */  mflo       $t9
/* DC20D4 80100AB4 02191821 */  addu       $v1, $s0, $t9
/* DC20D8 80100AB8 946F0000 */  lhu        $t7, ($v1)
/* DC20DC 80100ABC 0004CA00 */  sll        $t9, $a0, 8
/* DC20E0 80100AC0 000FC0C0 */  sll        $t8, $t7, 3
/* DC20E4 80100AC4 030E3021 */  addu       $a2, $t8, $t6
/* DC20E8 80100AC8 07210002 */  bgez       $t9, .L80100AD4
/* DC20EC 80100ACC 8CD10000 */   lw        $s1, ($a2)
/* DC20F0 80100AD0 00972024 */  and        $a0, $a0, $s7
.L80100AD4:
/* DC20F4 80100AD4 84650020 */  lh         $a1, 0x20($v1)
/* DC20F8 80100AD8 00B60019 */  multu      $a1, $s6
/* DC20FC 80100ADC 00007812 */  mflo       $t7
/* DC2100 80100AE0 022FC021 */  addu       $t8, $s1, $t7
/* DC2104 80100AE4 8F0E0000 */  lw         $t6, ($t8)
/* DC2108 80100AE8 24AF0001 */  addiu      $t7, $a1, 1
/* DC210C 80100AEC 01C4C824 */  and        $t9, $t6, $a0
/* DC2110 80100AF0 57200061 */  bnel       $t9, $zero, .L80100C78
/* DC2114 80100AF4 26520001 */   addiu     $s2, $s2, 1
/* DC2118 80100AF8 A46F0020 */  sh         $t7, 0x20($v1)
/* DC211C 80100AFC 8CCE0004 */  lw         $t6, 4($a2)
/* DC2120 80100B00 84780020 */  lh         $t8, 0x20($v1)
/* DC2124 80100B04 030E082B */  sltu       $at, $t8, $t6
/* DC2128 80100B08 5420000A */  bnel       $at, $zero, .L80100B34
/* DC212C 80100B0C 8E6E0000 */   lw        $t6, ($s3)
/* DC2130 80100B10 0C04049B */  jal        func_8010126C
/* DC2134 80100B14 02402025 */   or        $a0, $s2, $zero
/* DC2138 80100B18 02950019 */  multu      $s4, $s5
/* DC213C 80100B1C 2419FFFF */  addiu      $t9, $zero, -1
/* DC2140 80100B20 00007812 */  mflo       $t7
/* DC2144 80100B24 020FC021 */  addu       $t8, $s0, $t7
/* DC2148 80100B28 10000052 */  b          .L80100C74
/* DC214C 80100B2C A7190022 */   sh        $t9, 0x22($t8)
/* DC2150 80100B30 8E6E0000 */  lw         $t6, ($s3)
.L80100B34:
/* DC2154 80100B34 01D7C824 */  and        $t9, $t6, $s7
/* DC2158 80100B38 AE790000 */  sw         $t9, ($s3)
/* DC215C 80100B3C 84780020 */  lh         $t8, 0x20($v1)
/* DC2160 80100B40 03160019 */  multu      $t8, $s6
/* DC2164 80100B44 00007012 */  mflo       $t6
/* DC2168 80100B48 022E7821 */  addu       $t7, $s1, $t6
/* DC216C 80100B4C 8DF80000 */  lw         $t8, ($t7)
/* DC2170 80100B50 03387025 */  or         $t6, $t9, $t8
/* DC2174 80100B54 AE6E0000 */  sw         $t6, ($s3)
/* DC2178 80100B58 846F0020 */  lh         $t7, 0x20($v1)
/* DC217C 80100B5C 01F60019 */  multu      $t7, $s6
/* DC2180 80100B60 0000C812 */  mflo       $t9
/* DC2184 80100B64 0239C021 */  addu       $t8, $s1, $t9
/* DC2188 80100B68 8F0E0008 */  lw         $t6, 8($t8)
/* DC218C 80100B6C AE6E0038 */  sw         $t6, 0x38($s3)
/* DC2190 80100B70 846F0020 */  lh         $t7, 0x20($v1)
/* DC2194 80100B74 01F60019 */  multu      $t7, $s6
/* DC2198 80100B78 0000C812 */  mflo       $t9
/* DC219C 80100B7C 0239C021 */  addu       $t8, $s1, $t9
/* DC21A0 80100B80 8F0E0000 */  lw         $t6, ($t8)
/* DC21A4 80100B84 31CFC800 */  andi       $t7, $t6, 0xc800
/* DC21A8 80100B88 11E0001F */  beqz       $t7, .L80100C08
/* DC21AC 80100B8C 00000000 */   nop
/* DC21B0 80100B90 84790002 */  lh         $t9, 2($v1)
/* DC21B4 80100B94 00003825 */  or         $a3, $zero, $zero
/* DC21B8 80100B98 00004825 */  or         $t1, $zero, $zero
/* DC21BC 80100B9C 1720000D */  bnez       $t9, .L80100BD4
/* DC21C0 80100BA0 00000000 */   nop
/* DC21C4 80100BA4 94780024 */  lhu        $t8, 0x24($v1)
/* DC21C8 80100BA8 846F0008 */  lh         $t7, 8($v1)
/* DC21CC 80100BAC 00187080 */  sll        $t6, $t8, 2
/* DC21D0 80100BB0 01D87021 */  addu       $t6, $t6, $t8
/* DC21D4 80100BB4 000E70C0 */  sll        $t6, $t6, 3
/* DC21D8 80100BB8 020E2021 */  addu       $a0, $s0, $t6
/* DC21DC 80100BBC 84990008 */  lh         $t9, 8($a0)
/* DC21E0 80100BC0 848E000A */  lh         $t6, 0xa($a0)
/* DC21E4 80100BC4 8478000A */  lh         $t8, 0xa($v1)
/* DC21E8 80100BC8 01F93823 */  subu       $a3, $t7, $t9
/* DC21EC 80100BCC 10000001 */  b          .L80100BD4
/* DC21F0 80100BD0 030E4823 */   subu      $t1, $t8, $t6
.L80100BD4:
/* DC21F4 80100BD4 02950019 */  multu      $s4, $s5
/* DC21F8 80100BD8 02402025 */  or         $a0, $s2, $zero
/* DC21FC 80100BDC 00007812 */  mflo       $t7
/* DC2200 80100BE0 020FC821 */  addu       $t9, $s0, $t7
/* DC2204 80100BE4 87380020 */  lh         $t8, 0x20($t9)
/* DC2208 80100BE8 03160019 */  multu      $t8, $s6
/* DC220C 80100BEC 00007012 */  mflo       $t6
/* DC2210 80100BF0 022E1021 */  addu       $v0, $s1, $t6
/* DC2214 80100BF4 844F0004 */  lh         $t7, 4($v0)
/* DC2218 80100BF8 84590006 */  lh         $t9, 6($v0)
/* DC221C 80100BFC 01E72821 */  addu       $a1, $t7, $a3
/* DC2220 80100C00 0C040736 */  jal        func_80101CD8
/* DC2224 80100C04 03293021 */   addu      $a2, $t9, $t1
.L80100C08:
/* DC2228 80100C08 02950019 */  multu      $s4, $s5
/* DC222C 80100C0C 02402025 */  or         $a0, $s2, $zero
/* DC2230 80100C10 0000C012 */  mflo       $t8
/* DC2234 80100C14 02181821 */  addu       $v1, $s0, $t8
/* DC2238 80100C18 846E0020 */  lh         $t6, 0x20($v1)
/* DC223C 80100C1C 01D60019 */  multu      $t6, $s6
/* DC2240 80100C20 00007812 */  mflo       $t7
/* DC2244 80100C24 022FC821 */  addu       $t9, $s1, $t7
/* DC2248 80100C28 8F220000 */  lw         $v0, ($t9)
/* DC224C 80100C2C 30581000 */  andi       $t8, $v0, 0x1000
/* DC2250 80100C30 5300000B */  beql       $t8, $zero, .L80100C60
/* DC2254 80100C34 3C016000 */   lui       $at, 0x6000
/* DC2258 80100C38 0C040816 */  jal        func_80102058
/* DC225C 80100C3C AFA30070 */   sw        $v1, 0x70($sp)
/* DC2260 80100C40 8FA30070 */  lw         $v1, 0x70($sp)
/* DC2264 80100C44 846E0020 */  lh         $t6, 0x20($v1)
/* DC2268 80100C48 000E7880 */  sll        $t7, $t6, 2
/* DC226C 80100C4C 01EE7823 */  subu       $t7, $t7, $t6
/* DC2270 80100C50 000F7880 */  sll        $t7, $t7, 2
/* DC2274 80100C54 022FC821 */  addu       $t9, $s1, $t7
/* DC2278 80100C58 8F220000 */  lw         $v0, ($t9)
/* DC227C 80100C5C 3C016000 */  lui        $at, 0x6000
.L80100C60:
/* DC2280 80100C60 0041C024 */  and        $t8, $v0, $at
/* DC2284 80100C64 53000004 */  beql       $t8, $zero, .L80100C78
/* DC2288 80100C68 26520001 */   addiu     $s2, $s2, 1
/* DC228C 80100C6C 0C040606 */  jal        func_80101818
/* DC2290 80100C70 02402025 */   or        $a0, $s2, $zero
.L80100C74:
/* DC2294 80100C74 26520001 */  addiu      $s2, $s2, 1
.L80100C78:
/* DC2298 80100C78 2A410096 */  slti       $at, $s2, 0x96
/* DC229C 80100C7C 1420FF7A */  bnez       $at, .L80100A68
/* DC22A0 80100C80 26730050 */   addiu     $s3, $s3, 0x50
/* DC22A4 80100C84 3C0E8009 */  lui        $t6, %hi(ButtonPressedFrame)
/* DC22A8 80100C88 95CE2876 */  lhu        $t6, %lo(ButtonPressedFrame)($t6)
/* DC22AC 80100C8C 3C188017 */  lui        $t8, 0x8017
/* DC22B0 80100C90 31CF1000 */  andi       $t7, $t6, 0x1000
/* DC22B4 80100C94 11E00003 */  beqz       $t7, .L80100CA4
/* DC22B8 80100C98 24190001 */   addiu     $t9, $zero, 1
/* DC22BC 80100C9C 3C018017 */  lui        $at, %hi(D_80174DE8)
/* DC22C0 80100CA0 A0394DE8 */  sb         $t9, %lo(D_80174DE8)($at)
.L80100CA4:
/* DC22C4 80100CA4 93184DE8 */  lbu        $t8, 0x4de8($t8)
/* DC22C8 80100CA8 130000B4 */  beqz       $t8, .L80100F7C
/* DC22CC 80100CAC 3C0E8017 */   lui       $t6, %hi(D_80174DE4)
/* DC22D0 80100CB0 8DCE4DE4 */  lw         $t6, %lo(D_80174DE4)($t6)
/* DC22D4 80100CB4 3C018017 */  lui        $at, %hi(D_80174DE4)
/* DC22D8 80100CB8 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC22DC 80100CBC 25CF000A */  addiu      $t7, $t6, 0xa
/* DC22E0 80100CC0 AC2F4DE4 */  sw         $t7, %lo(D_80174DE4)($at)
/* DC22E4 80100CC4 29E10100 */  slti       $at, $t7, 0x100
/* DC22E8 80100CC8 14200004 */  bnez       $at, .L80100CDC
/* DC22EC 80100CCC 2463B2FC */   addiu     $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC22F0 80100CD0 241900FF */  addiu      $t9, $zero, 0xff
/* DC22F4 80100CD4 3C018017 */  lui        $at, %hi(D_80174DE4)
/* DC22F8 80100CD8 AC394DE4 */  sw         $t9, %lo(D_80174DE4)($at)
.L80100CDC:
/* DC22FC 80100CDC 8C620000 */  lw         $v0, ($v1)
/* DC2300 80100CE0 3C13E700 */  lui        $s3, 0xe700
/* DC2304 80100CE4 3C198010 */  lui        $t9, 0x8010
/* DC2308 80100CE8 24580008 */  addiu      $t8, $v0, 8
/* DC230C 80100CEC AC780000 */  sw         $t8, ($v1)
/* DC2310 80100CF0 AC400004 */  sw         $zero, 4($v0)
/* DC2314 80100CF4 AC530000 */  sw         $s3, ($v0)
/* DC2318 80100CF8 8C620000 */  lw         $v0, ($v1)
/* DC231C 80100CFC 273962B0 */  addiu      $t9, $t9, 0x62b0
/* DC2320 80100D00 3C0F0600 */  lui        $t7, 0x600
/* DC2324 80100D04 244E0008 */  addiu      $t6, $v0, 8
/* DC2328 80100D08 AC6E0000 */  sw         $t6, ($v1)
/* DC232C 80100D0C AC590004 */  sw         $t9, 4($v0)
/* DC2330 80100D10 AC4F0000 */  sw         $t7, ($v0)
/* DC2334 80100D14 8C620000 */  lw         $v0, ($v1)
/* DC2338 80100D18 3C0EBA00 */  lui        $t6, 0xba00
/* DC233C 80100D1C 35CE0E02 */  ori        $t6, $t6, 0xe02
/* DC2340 80100D20 24580008 */  addiu      $t8, $v0, 8
/* DC2344 80100D24 AC780000 */  sw         $t8, ($v1)
/* DC2348 80100D28 340F8000 */  ori        $t7, $zero, 0x8000
/* DC234C 80100D2C AC4F0004 */  sw         $t7, 4($v0)
/* DC2350 80100D30 AC4E0000 */  sw         $t6, ($v0)
/* DC2354 80100D34 8C620000 */  lw         $v0, ($v1)
/* DC2358 80100D38 3C0E0050 */  lui        $t6, 0x50
/* DC235C 80100D3C 3C18B900 */  lui        $t8, 0xb900
/* DC2360 80100D40 24590008 */  addiu      $t9, $v0, 8
/* DC2364 80100D44 AC790000 */  sw         $t9, ($v1)
/* DC2368 80100D48 3718031D */  ori        $t8, $t8, 0x31d
/* DC236C 80100D4C 35CE4240 */  ori        $t6, $t6, 0x4240
/* DC2370 80100D50 AC4E0004 */  sw         $t6, 4($v0)
/* DC2374 80100D54 AC580000 */  sw         $t8, ($v0)
/* DC2378 80100D58 8C620000 */  lw         $v0, ($v1)
/* DC237C 80100D5C 3C19FB00 */  lui        $t9, 0xfb00
/* DC2380 80100D60 3C188017 */  lui        $t8, %hi(D_80174DE4)
/* DC2384 80100D64 244F0008 */  addiu      $t7, $v0, 8
/* DC2388 80100D68 AC6F0000 */  sw         $t7, ($v1)
/* DC238C 80100D6C AC590000 */  sw         $t9, ($v0)
/* DC2390 80100D70 8F184DE4 */  lw         $t8, %lo(D_80174DE4)($t8)
/* DC2394 80100D74 2401FF00 */  addiu      $at, $zero, -0x100
/* DC2398 80100D78 3C140700 */  lui        $s4, 0x700
/* DC239C 80100D7C 330E00FF */  andi       $t6, $t8, 0xff
/* DC23A0 80100D80 01C17825 */  or         $t7, $t6, $at
/* DC23A4 80100D84 AC4F0004 */  sw         $t7, 4($v0)
/* DC23A8 80100D88 8C620000 */  lw         $v0, ($v1)
/* DC23AC 80100D8C 3C0E8011 */  lui        $t6, %hi(D_8010BCD0)
/* DC23B0 80100D90 25CEBCD0 */  addiu      $t6, $t6, %lo(D_8010BCD0)
/* DC23B4 80100D94 24590008 */  addiu      $t9, $v0, 8
/* DC23B8 80100D98 AC790000 */  sw         $t9, ($v1)
/* DC23BC 80100D9C 3C18FD10 */  lui        $t8, 0xfd10
/* DC23C0 80100DA0 AC580000 */  sw         $t8, ($v0)
/* DC23C4 80100DA4 AC4E0004 */  sw         $t6, 4($v0)
/* DC23C8 80100DA8 8C620000 */  lw         $v0, ($v1)
/* DC23CC 80100DAC 3C19E800 */  lui        $t9, 0xe800
/* DC23D0 80100DB0 3C0EF500 */  lui        $t6, 0xf500
/* DC23D4 80100DB4 244F0008 */  addiu      $t7, $v0, 8
/* DC23D8 80100DB8 AC6F0000 */  sw         $t7, ($v1)
/* DC23DC 80100DBC AC400004 */  sw         $zero, 4($v0)
/* DC23E0 80100DC0 AC590000 */  sw         $t9, ($v0)
/* DC23E4 80100DC4 8C620000 */  lw         $v0, ($v1)
/* DC23E8 80100DC8 35CE0100 */  ori        $t6, $t6, 0x100
/* DC23EC 80100DCC 3C15E600 */  lui        $s5, 0xe600
/* DC23F0 80100DD0 24580008 */  addiu      $t8, $v0, 8
/* DC23F4 80100DD4 AC780000 */  sw         $t8, ($v1)
/* DC23F8 80100DD8 AC540004 */  sw         $s4, 4($v0)
/* DC23FC 80100DDC AC4E0000 */  sw         $t6, ($v0)
/* DC2400 80100DE0 8C620000 */  lw         $v0, ($v1)
/* DC2404 80100DE4 3C0E073F */  lui        $t6, 0x73f
/* DC2408 80100DE8 35CEC000 */  ori        $t6, $t6, 0xc000
/* DC240C 80100DEC 244F0008 */  addiu      $t7, $v0, 8
/* DC2410 80100DF0 AC6F0000 */  sw         $t7, ($v1)
/* DC2414 80100DF4 AC400004 */  sw         $zero, 4($v0)
/* DC2418 80100DF8 AC550000 */  sw         $s5, ($v0)
/* DC241C 80100DFC 8C620000 */  lw         $v0, ($v1)
/* DC2420 80100E00 3C18F000 */  lui        $t8, 0xf000
/* DC2424 80100E04 3C118011 */  lui        $s1, 0x8011
/* DC2428 80100E08 24590008 */  addiu      $t9, $v0, 8
/* DC242C 80100E0C AC790000 */  sw         $t9, ($v1)
/* DC2430 80100E10 AC4E0004 */  sw         $t6, 4($v0)
/* DC2434 80100E14 AC580000 */  sw         $t8, ($v0)
/* DC2438 80100E18 8C620000 */  lw         $v0, ($v1)
/* DC243C 80100E1C 3C17074F */  lui        $s7, 0x74f
/* DC2440 80100E20 3C12FD48 */  lui        $s2, 0xfd48
/* DC2444 80100E24 244F0008 */  addiu      $t7, $v0, 8
/* DC2448 80100E28 AC6F0000 */  sw         $t7, ($v1)
/* DC244C 80100E2C 3C10F548 */  lui        $s0, 0xf548
/* DC2450 80100E30 36105000 */  ori        $s0, $s0, 0x5000
/* DC2454 80100E34 3652013F */  ori        $s2, $s2, 0x13f
/* DC2458 80100E38 36F7C014 */  ori        $s7, $s7, 0xc014
/* DC245C 80100E3C 2631BED0 */  addiu      $s1, $s1, -0x4130
/* DC2460 80100E40 0000F825 */  or         $ra, $zero, $zero
/* DC2464 80100E44 240D0006 */  addiu      $t5, $zero, 6
/* DC2468 80100E48 3C16F400 */  lui        $s6, 0xf400
/* DC246C 80100E4C AC400004 */  sw         $zero, 4($v0)
/* DC2470 80100E50 AC530000 */  sw         $s3, ($v0)
.L80100E54:
/* DC2474 80100E54 8C620000 */  lw         $v0, ($v1)
/* DC2478 80100E58 3C01E450 */  lui        $at, 0xe450
/* DC247C 80100E5C 24590008 */  addiu      $t9, $v0, 8
/* DC2480 80100E60 AC790000 */  sw         $t9, ($v1)
/* DC2484 80100E64 AC510004 */  sw         $s1, 4($v0)
/* DC2488 80100E68 AC520000 */  sw         $s2, ($v0)
/* DC248C 80100E6C 8C620000 */  lw         $v0, ($v1)
/* DC2490 80100E70 24580008 */  addiu      $t8, $v0, 8
/* DC2494 80100E74 AC780000 */  sw         $t8, ($v1)
/* DC2498 80100E78 AC540004 */  sw         $s4, 4($v0)
/* DC249C 80100E7C AC500000 */  sw         $s0, ($v0)
/* DC24A0 80100E80 8C620000 */  lw         $v0, ($v1)
/* DC24A4 80100E84 244E0008 */  addiu      $t6, $v0, 8
/* DC24A8 80100E88 AC6E0000 */  sw         $t6, ($v1)
/* DC24AC 80100E8C AC400004 */  sw         $zero, 4($v0)
/* DC24B0 80100E90 AC550000 */  sw         $s5, ($v0)
/* DC24B4 80100E94 8C620000 */  lw         $v0, ($v1)
/* DC24B8 80100E98 244F0008 */  addiu      $t7, $v0, 8
/* DC24BC 80100E9C AC6F0000 */  sw         $t7, ($v1)
/* DC24C0 80100EA0 AC570004 */  sw         $s7, 4($v0)
/* DC24C4 80100EA4 AC560000 */  sw         $s6, ($v0)
/* DC24C8 80100EA8 8C620000 */  lw         $v0, ($v1)
/* DC24CC 80100EAC 3C0FF200 */  lui        $t7, 0xf200
/* DC24D0 80100EB0 24590008 */  addiu      $t9, $v0, 8
/* DC24D4 80100EB4 AC790000 */  sw         $t9, ($v1)
/* DC24D8 80100EB8 AC400004 */  sw         $zero, 4($v0)
/* DC24DC 80100EBC AC530000 */  sw         $s3, ($v0)
/* DC24E0 80100EC0 8C620000 */  lw         $v0, ($v1)
/* DC24E4 80100EC4 3C19004F */  lui        $t9, 0x4f
/* DC24E8 80100EC8 3739C014 */  ori        $t9, $t9, 0xc014
/* DC24EC 80100ECC 24580008 */  addiu      $t8, $v0, 8
/* DC24F0 80100ED0 AC780000 */  sw         $t8, ($v1)
/* DC24F4 80100ED4 AC400004 */  sw         $zero, 4($v0)
/* DC24F8 80100ED8 AC500000 */  sw         $s0, ($v0)
/* DC24FC 80100EDC 8C620000 */  lw         $v0, ($v1)
/* DC2500 80100EE0 244E0008 */  addiu      $t6, $v0, 8
/* DC2504 80100EE4 AC6E0000 */  sw         $t6, ($v1)
/* DC2508 80100EE8 AC590004 */  sw         $t9, 4($v0)
/* DC250C 80100EEC AC4F0000 */  sw         $t7, ($v0)
/* DC2510 80100EF0 8C620000 */  lw         $v0, ($v1)
/* DC2514 80100EF4 000D7080 */  sll        $t6, $t5, 2
/* DC2518 80100EF8 31CF0FFF */  andi       $t7, $t6, 0xfff
/* DC251C 80100EFC 24580008 */  addiu      $t8, $v0, 8
/* DC2520 80100F00 AC780000 */  sw         $t8, ($v1)
/* DC2524 80100F04 001FC080 */  sll        $t8, $ra, 2
/* DC2528 80100F08 330E0FFF */  andi       $t6, $t8, 0xfff
/* DC252C 80100F0C 01E1C825 */  or         $t9, $t7, $at
/* DC2530 80100F10 AC590000 */  sw         $t9, ($v0)
/* DC2534 80100F14 AC4E0004 */  sw         $t6, 4($v0)
/* DC2538 80100F18 8C620000 */  lw         $v0, ($v1)
/* DC253C 80100F1C 3C19B400 */  lui        $t9, 0xb400
/* DC2540 80100F20 240100F6 */  addiu      $at, $zero, 0xf6
/* DC2544 80100F24 244F0008 */  addiu      $t7, $v0, 8
/* DC2548 80100F28 AC6F0000 */  sw         $t7, ($v1)
/* DC254C 80100F2C AC400004 */  sw         $zero, 4($v0)
/* DC2550 80100F30 AC590000 */  sw         $t9, ($v0)
/* DC2554 80100F34 8C620000 */  lw         $v0, ($v1)
/* DC2558 80100F38 3C0F0400 */  lui        $t7, 0x400
/* DC255C 80100F3C 25AD0006 */  addiu      $t5, $t5, 6
/* DC2560 80100F40 24580008 */  addiu      $t8, $v0, 8
/* DC2564 80100F44 AC780000 */  sw         $t8, ($v1)
/* DC2568 80100F48 35EF0400 */  ori        $t7, $t7, 0x400
/* DC256C 80100F4C 3C0EB300 */  lui        $t6, 0xb300
/* DC2570 80100F50 27FF0006 */  addiu      $ra, $ra, 6
/* DC2574 80100F54 AC4E0000 */  sw         $t6, ($v0)
/* DC2578 80100F58 15A1FFBE */  bne        $t5, $at, .L80100E54
/* DC257C 80100F5C AC4F0004 */   sw        $t7, 4($v0)
/* DC2580 80100F60 3C198017 */  lui        $t9, %hi(D_80174DE4)
/* DC2584 80100F64 8F394DE4 */  lw         $t9, %lo(D_80174DE4)($t9)
/* DC2588 80100F68 2B2100FF */  slti       $at, $t9, 0xff
/* DC258C 80100F6C 14200003 */  bnez       $at, .L80100F7C
/* DC2590 80100F70 00000000 */   nop
/* DC2594 80100F74 10000017 */  b          .L80100FD4
/* DC2598 80100F78 24020001 */   addiu     $v0, $zero, 1
.L80100F7C:
/* DC259C 80100F7C 0C0404F0 */  jal        func_801013C0
/* DC25A0 80100F80 00000000 */   nop
/* DC25A4 80100F84 14400012 */  bnez       $v0, .L80100FD0
/* DC25A8 80100F88 3C188016 */   lui       $t8, %hi(D_8016624C)
/* DC25AC 80100F8C 8F18624C */  lw         $t8, %lo(D_8016624C)($t8)
/* DC25B0 80100F90 3C018016 */  lui        $at, 0x8016
/* DC25B4 80100F94 3C0E8016 */  lui        $t6, %hi(D_80166248)
/* DC25B8 80100F98 1300000D */  beqz       $t8, .L80100FD0
/* DC25BC 80100F9C 3C198011 */   lui       $t9, %hi(D_8010B340)
/* DC25C0 80100FA0 8DCE6248 */  lw         $t6, %lo(D_80166248)($t6)
/* DC25C4 80100FA4 8F39B340 */  lw         $t9, %lo(D_8010B340)($t9)
/* DC25C8 80100FA8 AC20624C */  sw         $zero, 0x624c($at)
/* DC25CC 80100FAC 3C018016 */  lui        $at, %hi(D_80166248)
/* DC25D0 80100FB0 25CF0001 */  addiu      $t7, $t6, 1
/* DC25D4 80100FB4 AC2F6248 */  sw         $t7, %lo(D_80166248)($at)
/* DC25D8 80100FB8 01F9082B */  sltu       $at, $t7, $t9
/* DC25DC 80100FBC 14200004 */  bnez       $at, .L80100FD0
/* DC25E0 80100FC0 00001025 */   or        $v0, $zero, $zero
/* DC25E4 80100FC4 3C018016 */  lui        $at, %hi(D_80166248)
/* DC25E8 80100FC8 10000002 */  b          .L80100FD4
/* DC25EC 80100FCC AC206248 */   sw        $zero, %lo(D_80166248)($at)
.L80100FD0:
/* DC25F0 80100FD0 24020002 */  addiu      $v0, $zero, 2
.L80100FD4:
/* DC25F4 80100FD4 8FBF0064 */  lw         $ra, 0x64($sp)
/* DC25F8 80100FD8 8FB00040 */  lw         $s0, 0x40($sp)
/* DC25FC 80100FDC 8FB10044 */  lw         $s1, 0x44($sp)
/* DC2600 80100FE0 8FB20048 */  lw         $s2, 0x48($sp)
/* DC2604 80100FE4 8FB3004C */  lw         $s3, 0x4c($sp)
/* DC2608 80100FE8 8FB40050 */  lw         $s4, 0x50($sp)
/* DC260C 80100FEC 8FB50054 */  lw         $s5, 0x54($sp)
/* DC2610 80100FF0 8FB60058 */  lw         $s6, 0x58($sp)
/* DC2614 80100FF4 8FB7005C */  lw         $s7, 0x5c($sp)
/* DC2618 80100FF8 8FBE0060 */  lw         $fp, 0x60($sp)
/* DC261C 80100FFC 03E00008 */  jr         $ra
/* DC2620 80101000 27BD00F0 */   addiu     $sp, $sp, 0xf0
