.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010575C
/* DC6D7C 8010575C 27BDFEB8 */  addiu      $sp, $sp, -0x148
/* DC6D80 80105760 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC6D84 80105764 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC6D88 80105768 8C620000 */  lw         $v0, ($v1)
/* DC6D8C 8010576C AFBF002C */  sw         $ra, 0x2c($sp)
/* DC6D90 80105770 AFBE0028 */  sw         $fp, 0x28($sp)
/* DC6D94 80105774 244E0008 */  addiu      $t6, $v0, 8
/* DC6D98 80105778 AFB70024 */  sw         $s7, 0x24($sp)
/* DC6D9C 8010577C AFB60020 */  sw         $s6, 0x20($sp)
/* DC6DA0 80105780 AFB5001C */  sw         $s5, 0x1c($sp)
/* DC6DA4 80105784 AFB40018 */  sw         $s4, 0x18($sp)
/* DC6DA8 80105788 AFB30014 */  sw         $s3, 0x14($sp)
/* DC6DAC 8010578C AFB20010 */  sw         $s2, 0x10($sp)
/* DC6DB0 80105790 AFB1000C */  sw         $s1, 0xc($sp)
/* DC6DB4 80105794 AFB00008 */  sw         $s0, 8($sp)
/* DC6DB8 80105798 AFA0013C */  sw         $zero, 0x13c($sp)
/* DC6DBC 8010579C AC6E0000 */  sw         $t6, ($v1)
/* DC6DC0 801057A0 3C188010 */  lui        $t8, %hi(D_80106240)
/* DC6DC4 801057A4 27186240 */  addiu      $t8, $t8, %lo(D_80106240)
/* DC6DC8 801057A8 3C0F0600 */  lui        $t7, 0x600
/* DC6DCC 801057AC AC4F0000 */  sw         $t7, ($v0)
/* DC6DD0 801057B0 AC580004 */  sw         $t8, 4($v0)
/* DC6DD4 801057B4 8C620000 */  lw         $v0, ($v1)
/* DC6DD8 801057B8 3C0EBA00 */  lui        $t6, 0xba00
/* DC6DDC 801057BC 35CE0E02 */  ori        $t6, $t6, 0xe02
/* DC6DE0 801057C0 24590008 */  addiu      $t9, $v0, 8
/* DC6DE4 801057C4 AC790000 */  sw         $t9, ($v1)
/* DC6DE8 801057C8 340F8000 */  ori        $t7, $zero, 0x8000
/* DC6DEC 801057CC AC4F0004 */  sw         $t7, 4($v0)
/* DC6DF0 801057D0 AC4E0000 */  sw         $t6, ($v0)
/* DC6DF4 801057D4 8C620000 */  lw         $v0, ($v1)
/* DC6DF8 801057D8 3C0EFFFC */  lui        $t6, 0xfffc
/* DC6DFC 801057DC 3C19FCFF */  lui        $t9, 0xfcff
/* DC6E00 801057E0 24580008 */  addiu      $t8, $v0, 8
/* DC6E04 801057E4 AC780000 */  sw         $t8, ($v1)
/* DC6E08 801057E8 3739FFFF */  ori        $t9, $t9, 0xffff
/* DC6E0C 801057EC 35CEF279 */  ori        $t6, $t6, 0xf279
/* DC6E10 801057F0 AC4E0004 */  sw         $t6, 4($v0)
/* DC6E14 801057F4 AC590000 */  sw         $t9, ($v0)
/* DC6E18 801057F8 8C620000 */  lw         $v0, ($v1)
/* DC6E1C 801057FC 3C190050 */  lui        $t9, 0x50
/* DC6E20 80105800 3C18B900 */  lui        $t8, 0xb900
/* DC6E24 80105804 244F0008 */  addiu      $t7, $v0, 8
/* DC6E28 80105808 AC6F0000 */  sw         $t7, ($v1)
/* DC6E2C 8010580C 3718031D */  ori        $t8, $t8, 0x31d
/* DC6E30 80105810 37394240 */  ori        $t9, $t9, 0x4240
/* DC6E34 80105814 3C098009 */  lui        $t1, %hi(JoystickX)
/* DC6E38 80105818 AC590004 */  sw         $t9, 4($v0)
/* DC6E3C 8010581C AC580000 */  sw         $t8, ($v0)
/* DC6E40 80105820 81292871 */  lb         $t1, %lo(JoystickX)($t1)
/* DC6E44 80105824 00002025 */  or         $a0, $zero, $zero
/* DC6E48 80105828 3C028009 */  lui        $v0, 0x8009
/* DC6E4C 8010582C 29210015 */  slti       $at, $t1, 0x15
/* DC6E50 80105830 14200003 */  bnez       $at, .L80105840
/* DC6E54 80105834 3C188017 */   lui       $t8, 0x8017
/* DC6E58 80105838 10000005 */  b          .L80105850
/* DC6E5C 8010583C 24040008 */   addiu     $a0, $zero, 8
.L80105840:
/* DC6E60 80105840 2921FFEC */  slti       $at, $t1, -0x14
/* DC6E64 80105844 10200002 */  beqz       $at, .L80105850
/* DC6E68 80105848 00000000 */   nop
/* DC6E6C 8010584C 24040004 */  addiu      $a0, $zero, 4
.L80105850:
/* DC6E70 80105850 80422872 */  lb         $v0, 0x2872($v0)
/* DC6E74 80105854 348E0001 */  ori        $t6, $a0, 1
/* DC6E78 80105858 000E7E00 */  sll        $t7, $t6, 0x18
/* DC6E7C 8010585C 28410015 */  slti       $at, $v0, 0x15
/* DC6E80 80105860 14200002 */  bnez       $at, .L8010586C
/* DC6E84 80105864 00002825 */   or        $a1, $zero, $zero
/* DC6E88 80105868 000F2603 */  sra        $a0, $t7, 0x18
.L8010586C:
/* DC6E8C 8010586C 2841FFEC */  slti       $at, $v0, -0x14
/* DC6E90 80105870 10200003 */  beqz       $at, .L80105880
/* DC6E94 80105874 34990002 */   ori       $t9, $a0, 2
/* DC6E98 80105878 00197600 */  sll        $t6, $t9, 0x18
/* DC6E9C 8010587C 000E2603 */  sra        $a0, $t6, 0x18
.L80105880:
/* DC6EA0 80105880 83184DF3 */  lb         $t8, 0x4df3($t8)
/* DC6EA4 80105884 3C018017 */  lui        $at, %hi(D_80174DF3)
/* DC6EA8 80105888 A0244DF3 */  sb         $a0, %lo(D_80174DF3)($at)
/* DC6EAC 8010588C 0098C826 */  xor        $t9, $a0, $t8
/* DC6EB0 80105890 03241024 */  and        $v0, $t9, $a0
/* DC6EB4 80105894 00027600 */  sll        $t6, $v0, 0x18
/* DC6EB8 80105898 000E1603 */  sra        $v0, $t6, 0x18
/* DC6EBC 8010589C 30580001 */  andi       $t8, $v0, 1
/* DC6EC0 801058A0 13000002 */  beqz       $t8, .L801058AC
/* DC6EC4 801058A4 00003025 */   or        $a2, $zero, $zero
/* DC6EC8 801058A8 2405FFFF */  addiu      $a1, $zero, -1
.L801058AC:
/* DC6ECC 801058AC 30590002 */  andi       $t9, $v0, 2
/* DC6ED0 801058B0 13200002 */  beqz       $t9, .L801058BC
/* DC6ED4 801058B4 304E0004 */   andi      $t6, $v0, 4
/* DC6ED8 801058B8 24050001 */  addiu      $a1, $zero, 1
.L801058BC:
/* DC6EDC 801058BC 11C00002 */  beqz       $t6, .L801058C8
/* DC6EE0 801058C0 304F0008 */   andi      $t7, $v0, 8
/* DC6EE4 801058C4 2406FFFF */  addiu      $a2, $zero, -1
.L801058C8:
/* DC6EE8 801058C8 11E00002 */  beqz       $t7, .L801058D4
/* DC6EEC 801058CC 3C028010 */   lui       $v0, %hi(D_80106238)
/* DC6EF0 801058D0 24060001 */  addiu      $a2, $zero, 1
.L801058D4:
/* DC6EF4 801058D4 80426238 */  lb         $v0, %lo(D_80106238)($v0)
/* DC6EF8 801058D8 3C018017 */  lui        $at, %hi(D_80174DF4)
/* DC6EFC 801058DC A0254DF4 */  sb         $a1, %lo(D_80174DF4)($at)
/* DC6F00 801058E0 00451021 */  addu       $v0, $v0, $a1
/* DC6F04 801058E4 0002C600 */  sll        $t8, $v0, 0x18
/* DC6F08 801058E8 00181603 */  sra        $v0, $t8, 0x18
/* DC6F0C 801058EC 04410004 */  bgez       $v0, .L80105900
/* DC6F10 801058F0 3C018010 */   lui       $at, 0x8010
/* DC6F14 801058F4 3C018010 */  lui        $at, %hi(D_80106238)
/* DC6F18 801058F8 10000007 */  b          .L80105918
/* DC6F1C 801058FC A0206238 */   sb        $zero, %lo(D_80106238)($at)
.L80105900:
/* DC6F20 80105900 A0226238 */  sb         $v0, 0x6238($at)
/* DC6F24 80105904 28410002 */  slti       $at, $v0, 2
/* DC6F28 80105908 14200003 */  bnez       $at, .L80105918
/* DC6F2C 8010590C 24020001 */   addiu     $v0, $zero, 1
/* DC6F30 80105910 3C018010 */  lui        $at, %hi(D_80106238)
/* DC6F34 80105914 A0226238 */  sb         $v0, %lo(D_80106238)($at)
.L80105918:
/* DC6F38 80105918 3C028010 */  lui        $v0, %hi(D_8010623C)
/* DC6F3C 8010591C 8042623C */  lb         $v0, %lo(D_8010623C)($v0)
/* DC6F40 80105920 3C018017 */  lui        $at, %hi(D_80174DF5)
/* DC6F44 80105924 A0264DF5 */  sb         $a2, %lo(D_80174DF5)($at)
/* DC6F48 80105928 00461021 */  addu       $v0, $v0, $a2
/* DC6F4C 8010592C 00027600 */  sll        $t6, $v0, 0x18
/* DC6F50 80105930 000E1603 */  sra        $v0, $t6, 0x18
/* DC6F54 80105934 04410004 */  bgez       $v0, .L80105948
/* DC6F58 80105938 3C018010 */   lui       $at, 0x8010
/* DC6F5C 8010593C 3C018010 */  lui        $at, %hi(D_8010623C)
/* DC6F60 80105940 10000007 */  b          .L80105960
/* DC6F64 80105944 A020623C */   sb        $zero, %lo(D_8010623C)($at)
.L80105948:
/* DC6F68 80105948 A022623C */  sb         $v0, 0x623c($at)
/* DC6F6C 8010594C 28410002 */  slti       $at, $v0, 2
/* DC6F70 80105950 14200003 */  bnez       $at, .L80105960
/* DC6F74 80105954 24180001 */   addiu     $t8, $zero, 1
/* DC6F78 80105958 3C018010 */  lui        $at, %hi(D_8010623C)
/* DC6F7C 8010595C A038623C */  sb         $t8, %lo(D_8010623C)($at)
.L80105960:
/* DC6F80 80105960 3C028010 */  lui        $v0, %hi(D_80106234)
/* DC6F84 80105964 90426234 */  lbu        $v0, %lo(D_80106234)($v0)
/* DC6F88 80105968 3C1FE700 */  lui        $ra, 0xe700
/* DC6F8C 8010596C 3C0FFD10 */  lui        $t7, 0xfd10
/* DC6F90 80105970 10400006 */  beqz       $v0, .L8010598C
/* DC6F94 80105974 3C188016 */   lui       $t8, 0x8016
/* DC6F98 80105978 24010001 */  addiu      $at, $zero, 1
/* DC6F9C 8010597C 10410177 */  beq        $v0, $at, .L80105F5C
/* DC6FA0 80105980 3C1FE700 */   lui       $ra, 0xe700
/* DC6FA4 80105984 10000211 */  b          .L801061CC
/* DC6FA8 80105988 8FBF002C */   lw        $ra, 0x2c($sp)
.L8010598C:
/* DC6FAC 8010598C 8C620000 */  lw         $v0, ($v1)
/* DC6FB0 80105990 2718F6E8 */  addiu      $t8, $t8, -0x918
/* DC6FB4 80105994 3C1E0400 */  lui        $fp, 0x400
/* DC6FB8 80105998 24590008 */  addiu      $t9, $v0, 8
/* DC6FBC 8010599C AC790000 */  sw         $t9, ($v1)
/* DC6FC0 801059A0 AC400004 */  sw         $zero, 4($v0)
/* DC6FC4 801059A4 AC5F0000 */  sw         $ra, ($v0)
/* DC6FC8 801059A8 8C620000 */  lw         $v0, ($v1)
/* DC6FCC 801059AC 37DE0400 */  ori        $fp, $fp, 0x400
/* DC6FD0 801059B0 00008825 */  or         $s1, $zero, $zero
/* DC6FD4 801059B4 244E0008 */  addiu      $t6, $v0, 8
/* DC6FD8 801059B8 AC6E0000 */  sw         $t6, ($v1)
/* DC6FDC 801059BC AC580004 */  sw         $t8, 4($v0)
/* DC6FE0 801059C0 AC4F0000 */  sw         $t7, ($v0)
/* DC6FE4 801059C4 8C620000 */  lw         $v0, ($v1)
/* DC6FE8 801059C8 3C0EE800 */  lui        $t6, 0xe800
/* DC6FEC 801059CC 3C18F500 */  lui        $t8, 0xf500
/* DC6FF0 801059D0 24590008 */  addiu      $t9, $v0, 8
/* DC6FF4 801059D4 AC790000 */  sw         $t9, ($v1)
/* DC6FF8 801059D8 AC400004 */  sw         $zero, 4($v0)
/* DC6FFC 801059DC AC4E0000 */  sw         $t6, ($v0)
/* DC7000 801059E0 8C620000 */  lw         $v0, ($v1)
/* DC7004 801059E4 3C190700 */  lui        $t9, 0x700
/* DC7008 801059E8 37180100 */  ori        $t8, $t8, 0x100
/* DC700C 801059EC 244F0008 */  addiu      $t7, $v0, 8
/* DC7010 801059F0 AC6F0000 */  sw         $t7, ($v1)
/* DC7014 801059F4 AC590004 */  sw         $t9, 4($v0)
/* DC7018 801059F8 AC580000 */  sw         $t8, ($v0)
/* DC701C 801059FC 8C620000 */  lw         $v0, ($v1)
/* DC7020 80105A00 3C0FE600 */  lui        $t7, 0xe600
/* DC7024 80105A04 3C19F000 */  lui        $t9, 0xf000
/* DC7028 80105A08 244E0008 */  addiu      $t6, $v0, 8
/* DC702C 80105A0C AC6E0000 */  sw         $t6, ($v1)
/* DC7030 80105A10 AC400004 */  sw         $zero, 4($v0)
/* DC7034 80105A14 AC4F0000 */  sw         $t7, ($v0)
/* DC7038 80105A18 8C620000 */  lw         $v0, ($v1)
/* DC703C 80105A1C 3C0E0703 */  lui        $t6, 0x703
/* DC7040 80105A20 35CEC000 */  ori        $t6, $t6, 0xc000
/* DC7044 80105A24 24580008 */  addiu      $t8, $v0, 8
/* DC7048 80105A28 AC780000 */  sw         $t8, ($v1)
/* DC704C 80105A2C AC4E0004 */  sw         $t6, 4($v0)
/* DC7050 80105A30 AC590000 */  sw         $t9, ($v0)
/* DC7054 80105A34 8C620000 */  lw         $v0, ($v1)
/* DC7058 80105A38 3C188016 */  lui        $t8, %hi(D_8015D0C0)
/* DC705C 80105A3C 2718D0C0 */  addiu      $t8, $t8, %lo(D_8015D0C0)
/* DC7060 80105A40 244F0008 */  addiu      $t7, $v0, 8
/* DC7064 80105A44 AC6F0000 */  sw         $t7, ($v1)
/* DC7068 80105A48 AC400004 */  sw         $zero, 4($v0)
/* DC706C 80105A4C AC5F0000 */  sw         $ra, ($v0)
/* DC7070 80105A50 AFB80030 */  sw         $t8, 0x30($sp)
/* DC7074 80105A54 240D000B */  addiu      $t5, $zero, 0xb
/* DC7078 80105A58 24100047 */  addiu      $s0, $zero, 0x47
/* DC707C 80105A5C 2413003B */  addiu      $s3, $zero, 0x3b
/* DC7080 80105A60 3C17B300 */  lui        $s7, 0xb300
/* DC7084 80105A64 3C16B400 */  lui        $s6, 0xb400
/* DC7088 80105A68 3C15F200 */  lui        $s5, 0xf200
/* DC708C 80105A6C 3C14F400 */  lui        $s4, 0xf400
.L80105A70:
/* DC7090 80105A70 8C620000 */  lw         $v0, ($v1)
/* DC7094 80105A74 3C0EFD48 */  lui        $t6, 0xfd48
/* DC7098 80105A78 35CE004F */  ori        $t6, $t6, 0x4f
/* DC709C 80105A7C 24590008 */  addiu      $t9, $v0, 8
/* DC70A0 80105A80 AC790000 */  sw         $t9, ($v1)
/* DC70A4 80105A84 AC4E0000 */  sw         $t6, ($v0)
/* DC70A8 80105A88 8FAF0030 */  lw         $t7, 0x30($sp)
/* DC70AC 80105A8C 3C19F548 */  lui        $t9, 0xf548
/* DC70B0 80105A90 37391400 */  ori        $t9, $t9, 0x1400
/* DC70B4 80105A94 AC4F0004 */  sw         $t7, 4($v0)
/* DC70B8 80105A98 8C620000 */  lw         $v0, ($v1)
/* DC70BC 80105A9C 3C0E0700 */  lui        $t6, 0x700
/* DC70C0 80105AA0 00116080 */  sll        $t4, $s1, 2
/* DC70C4 80105AA4 24580008 */  addiu      $t8, $v0, 8
/* DC70C8 80105AA8 AC780000 */  sw         $t8, ($v1)
/* DC70CC 80105AAC AC4E0004 */  sw         $t6, 4($v0)
/* DC70D0 80105AB0 AC590000 */  sw         $t9, ($v0)
/* DC70D4 80105AB4 8C620000 */  lw         $v0, ($v1)
/* DC70D8 80105AB8 3C18E600 */  lui        $t8, 0xe600
/* DC70DC 80105ABC 000D4080 */  sll        $t0, $t5, 2
/* DC70E0 80105AC0 244F0008 */  addiu      $t7, $v0, 8
/* DC70E4 80105AC4 AC6F0000 */  sw         $t7, ($v1)
/* DC70E8 80105AC8 AC400004 */  sw         $zero, 4($v0)
/* DC70EC 80105ACC AC580000 */  sw         $t8, ($v0)
/* DC70F0 80105AD0 8C620000 */  lw         $v0, ($v1)
/* DC70F4 80105AD4 3C010713 */  lui        $at, 0x713
/* DC70F8 80105AD8 3421E000 */  ori        $at, $at, 0xe000
/* DC70FC 80105ADC 24590008 */  addiu      $t9, $v0, 8
/* DC7100 80105AE0 AC790000 */  sw         $t9, ($v1)
/* DC7104 80105AE4 31180FFF */  andi       $t8, $t0, 0xfff
/* DC7108 80105AE8 318E0FFF */  andi       $t6, $t4, 0xfff
/* DC710C 80105AEC 01D47825 */  or         $t7, $t6, $s4
/* DC7110 80105AF0 0301C825 */  or         $t9, $t8, $at
/* DC7114 80105AF4 AC590004 */  sw         $t9, 4($v0)
/* DC7118 80105AF8 AC4F0000 */  sw         $t7, ($v0)
/* DC711C 80105AFC 8C620000 */  lw         $v0, ($v1)
/* DC7120 80105B00 01C06025 */  or         $t4, $t6, $zero
/* DC7124 80105B04 03004025 */  or         $t0, $t8, $zero
/* DC7128 80105B08 244E0008 */  addiu      $t6, $v0, 8
/* DC712C 80105B0C AC6E0000 */  sw         $t6, ($v1)
/* DC7130 80105B10 AC400004 */  sw         $zero, 4($v0)
/* DC7134 80105B14 AC5F0000 */  sw         $ra, ($v0)
/* DC7138 80105B18 8C620000 */  lw         $v0, ($v1)
/* DC713C 80105B1C 3C18F540 */  lui        $t8, 0xf540
/* DC7140 80105B20 37181400 */  ori        $t8, $t8, 0x1400
/* DC7144 80105B24 244F0008 */  addiu      $t7, $v0, 8
/* DC7148 80105B28 AC6F0000 */  sw         $t7, ($v1)
/* DC714C 80105B2C AC400004 */  sw         $zero, 4($v0)
/* DC7150 80105B30 AC580000 */  sw         $t8, ($v0)
/* DC7154 80105B34 8C620000 */  lw         $v0, ($v1)
/* DC7158 80105B38 3C010027 */  lui        $at, 0x27
/* DC715C 80105B3C 3421C000 */  ori        $at, $at, 0xc000
/* DC7160 80105B40 24590008 */  addiu      $t9, $v0, 8
/* DC7164 80105B44 AC790000 */  sw         $t9, ($v1)
/* DC7168 80105B48 01017825 */  or         $t7, $t0, $at
/* DC716C 80105B4C 01957025 */  or         $t6, $t4, $s5
/* DC7170 80105B50 AC4E0000 */  sw         $t6, ($v0)
/* DC7174 80105B54 AC4F0004 */  sw         $t7, 4($v0)
/* DC7178 80105B58 8C620000 */  lw         $v0, ($v1)
/* DC717C 80105B5C 0010C880 */  sll        $t9, $s0, 2
/* DC7180 80105B60 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC7184 80105B64 24580008 */  addiu      $t8, $v0, 8
/* DC7188 80105B68 AC780000 */  sw         $t8, ($v1)
/* DC718C 80105B6C 3C01E43C */  lui        $at, 0xe43c
/* DC7190 80105B70 01C17825 */  or         $t7, $t6, $at
/* DC7194 80105B74 0013C080 */  sll        $t8, $s3, 2
/* DC7198 80105B78 33190FFF */  andi       $t9, $t8, 0xfff
/* DC719C 80105B7C 3C010014 */  lui        $at, 0x14
/* DC71A0 80105B80 03217025 */  or         $t6, $t9, $at
/* DC71A4 80105B84 AC4E0004 */  sw         $t6, 4($v0)
/* DC71A8 80105B88 AC4F0000 */  sw         $t7, ($v0)
/* DC71AC 80105B8C 8C620000 */  lw         $v0, ($v1)
/* DC71B0 80105B90 0011C140 */  sll        $t8, $s1, 5
/* DC71B4 80105B94 3319FFFF */  andi       $t9, $t8, 0xffff
/* DC71B8 80105B98 244F0008 */  addiu      $t7, $v0, 8
/* DC71BC 80105B9C AC6F0000 */  sw         $t7, ($v1)
/* DC71C0 80105BA0 AC590004 */  sw         $t9, 4($v0)
/* DC71C4 80105BA4 AC560000 */  sw         $s6, ($v0)
/* DC71C8 80105BA8 8C620000 */  lw         $v0, ($v1)
/* DC71CC 80105BAC 240100B3 */  addiu      $at, $zero, 0xb3
/* DC71D0 80105BB0 2673000C */  addiu      $s3, $s3, 0xc
/* DC71D4 80105BB4 244E0008 */  addiu      $t6, $v0, 8
/* DC71D8 80105BB8 AC6E0000 */  sw         $t6, ($v1)
/* DC71DC 80105BBC 2631000C */  addiu      $s1, $s1, 0xc
/* DC71E0 80105BC0 2610000C */  addiu      $s0, $s0, 0xc
/* DC71E4 80105BC4 25AD000C */  addiu      $t5, $t5, 0xc
/* DC71E8 80105BC8 AC5E0004 */  sw         $fp, 4($v0)
/* DC71EC 80105BCC 1661FFA8 */  bne        $s3, $at, .L80105A70
/* DC71F0 80105BD0 AC570000 */   sw        $s7, ($v0)
/* DC71F4 80105BD4 8C620000 */  lw         $v0, ($v1)
/* DC71F8 80105BD8 3C18FD48 */  lui        $t8, 0xfd48
/* DC71FC 80105BDC 3718004F */  ori        $t8, $t8, 0x4f
/* DC7200 80105BE0 244F0008 */  addiu      $t7, $v0, 8
/* DC7204 80105BE4 AC6F0000 */  sw         $t7, ($v1)
/* DC7208 80105BE8 AC580000 */  sw         $t8, ($v0)
/* DC720C 80105BEC 8FB90030 */  lw         $t9, 0x30($sp)
/* DC7210 80105BF0 3C0FF548 */  lui        $t7, 0xf548
/* DC7214 80105BF4 35EF1400 */  ori        $t7, $t7, 0x1400
/* DC7218 80105BF8 AC590004 */  sw         $t9, 4($v0)
/* DC721C 80105BFC 8C620000 */  lw         $v0, ($v1)
/* DC7220 80105C00 3C180700 */  lui        $t8, 0x700
/* DC7224 80105C04 00116080 */  sll        $t4, $s1, 2
/* DC7228 80105C08 244E0008 */  addiu      $t6, $v0, 8
/* DC722C 80105C0C AC6E0000 */  sw         $t6, ($v1)
/* DC7230 80105C10 AC580004 */  sw         $t8, 4($v0)
/* DC7234 80105C14 AC4F0000 */  sw         $t7, ($v0)
/* DC7238 80105C18 8C620000 */  lw         $v0, ($v1)
/* DC723C 80105C1C 3C0EE600 */  lui        $t6, 0xe600
/* DC7240 80105C20 31980FFF */  andi       $t8, $t4, 0xfff
/* DC7244 80105C24 24590008 */  addiu      $t9, $v0, 8
/* DC7248 80105C28 AC790000 */  sw         $t9, ($v1)
/* DC724C 80105C2C AC400004 */  sw         $zero, 4($v0)
/* DC7250 80105C30 AC4E0000 */  sw         $t6, ($v0)
/* DC7254 80105C34 8C620000 */  lw         $v0, ($v1)
/* DC7258 80105C38 26280001 */  addiu      $t0, $s1, 1
/* DC725C 80105C3C 00087080 */  sll        $t6, $t0, 2
/* DC7260 80105C40 3C010713 */  lui        $at, 0x713
/* DC7264 80105C44 244F0008 */  addiu      $t7, $v0, 8
/* DC7268 80105C48 AC6F0000 */  sw         $t7, ($v1)
/* DC726C 80105C4C 3421E000 */  ori        $at, $at, 0xe000
/* DC7270 80105C50 31C80FFF */  andi       $t0, $t6, 0xfff
/* DC7274 80105C54 0314C825 */  or         $t9, $t8, $s4
/* DC7278 80105C58 03006025 */  or         $t4, $t8, $zero
/* DC727C 80105C5C 0101C025 */  or         $t8, $t0, $at
/* DC7280 80105C60 AC580004 */  sw         $t8, 4($v0)
/* DC7284 80105C64 AC590000 */  sw         $t9, ($v0)
/* DC7288 80105C68 8C620000 */  lw         $v0, ($v1)
/* DC728C 80105C6C 3C0FF540 */  lui        $t7, 0xf540
/* DC7290 80105C70 35EF1400 */  ori        $t7, $t7, 0x1400
/* DC7294 80105C74 24590008 */  addiu      $t9, $v0, 8
/* DC7298 80105C78 AC790000 */  sw         $t9, ($v1)
/* DC729C 80105C7C AC400004 */  sw         $zero, 4($v0)
/* DC72A0 80105C80 AC5F0000 */  sw         $ra, ($v0)
/* DC72A4 80105C84 8C620000 */  lw         $v0, ($v1)
/* DC72A8 80105C88 3C010027 */  lui        $at, 0x27
/* DC72AC 80105C8C 3421C000 */  ori        $at, $at, 0xc000
/* DC72B0 80105C90 244E0008 */  addiu      $t6, $v0, 8
/* DC72B4 80105C94 AC6E0000 */  sw         $t6, ($v1)
/* DC72B8 80105C98 AC400004 */  sw         $zero, 4($v0)
/* DC72BC 80105C9C AC4F0000 */  sw         $t7, ($v0)
/* DC72C0 80105CA0 8C620000 */  lw         $v0, ($v1)
/* DC72C4 80105CA4 01017025 */  or         $t6, $t0, $at
/* DC72C8 80105CA8 0195C825 */  or         $t9, $t4, $s5
/* DC72CC 80105CAC 24580008 */  addiu      $t8, $v0, 8
/* DC72D0 80105CB0 AC780000 */  sw         $t8, ($v1)
/* DC72D4 80105CB4 AC4E0004 */  sw         $t6, 4($v0)
/* DC72D8 80105CB8 AC590000 */  sw         $t9, ($v0)
/* DC72DC 80105CBC 8C620000 */  lw         $v0, ($v1)
/* DC72E0 80105CC0 2638003D */  addiu      $t8, $s1, 0x3d
/* DC72E4 80105CC4 0018C880 */  sll        $t9, $t8, 2
/* DC72E8 80105CC8 244F0008 */  addiu      $t7, $v0, 8
/* DC72EC 80105CCC AC6F0000 */  sw         $t7, ($v1)
/* DC72F0 80105CD0 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC72F4 80105CD4 3C01E43C */  lui        $at, 0xe43c
/* DC72F8 80105CD8 01C17825 */  or         $t7, $t6, $at
/* DC72FC 80105CDC 0013C080 */  sll        $t8, $s3, 2
/* DC7300 80105CE0 33190FFF */  andi       $t9, $t8, 0xfff
/* DC7304 80105CE4 3C010014 */  lui        $at, 0x14
/* DC7308 80105CE8 03217025 */  or         $t6, $t9, $at
/* DC730C 80105CEC AC4E0004 */  sw         $t6, 4($v0)
/* DC7310 80105CF0 AC4F0000 */  sw         $t7, ($v0)
/* DC7314 80105CF4 8C620000 */  lw         $v0, ($v1)
/* DC7318 80105CF8 0011C140 */  sll        $t8, $s1, 5
/* DC731C 80105CFC 3319FFFF */  andi       $t9, $t8, 0xffff
/* DC7320 80105D00 244F0008 */  addiu      $t7, $v0, 8
/* DC7324 80105D04 AC6F0000 */  sw         $t7, ($v1)
/* DC7328 80105D08 AC590004 */  sw         $t9, 4($v0)
/* DC732C 80105D0C AC560000 */  sw         $s6, ($v0)
/* DC7330 80105D10 8C620000 */  lw         $v0, ($v1)
/* DC7334 80105D14 3C19FD10 */  lui        $t9, 0xfd10
/* DC7338 80105D18 3C118010 */  lui        $s1, 0x8010
/* DC733C 80105D1C 244E0008 */  addiu      $t6, $v0, 8
/* DC7340 80105D20 AC6E0000 */  sw         $t6, ($v1)
/* DC7344 80105D24 AC5E0004 */  sw         $fp, 4($v0)
/* DC7348 80105D28 AC570000 */  sw         $s7, ($v0)
/* DC734C 80105D2C 8C620000 */  lw         $v0, ($v1)
/* DC7350 80105D30 3C0E8016 */  lui        $t6, %hi(D_80163430)
/* DC7354 80105D34 25CE3430 */  addiu      $t6, $t6, %lo(D_80163430)
/* DC7358 80105D38 244F0008 */  addiu      $t7, $v0, 8
/* DC735C 80105D3C AC6F0000 */  sw         $t7, ($v1)
/* DC7360 80105D40 AC400004 */  sw         $zero, 4($v0)
/* DC7364 80105D44 AC5F0000 */  sw         $ra, ($v0)
/* DC7368 80105D48 8C620000 */  lw         $v0, ($v1)
/* DC736C 80105D4C 3C01E400 */  lui        $at, 0xe400
/* DC7370 80105D50 24580008 */  addiu      $t8, $v0, 8
/* DC7374 80105D54 AC780000 */  sw         $t8, ($v1)
/* DC7378 80105D58 AC4E0004 */  sw         $t6, 4($v0)
/* DC737C 80105D5C AC590000 */  sw         $t9, ($v0)
/* DC7380 80105D60 8C620000 */  lw         $v0, ($v1)
/* DC7384 80105D64 3C18E800 */  lui        $t8, 0xe800
/* DC7388 80105D68 3C0EF500 */  lui        $t6, 0xf500
/* DC738C 80105D6C 244F0008 */  addiu      $t7, $v0, 8
/* DC7390 80105D70 AC6F0000 */  sw         $t7, ($v1)
/* DC7394 80105D74 AC400004 */  sw         $zero, 4($v0)
/* DC7398 80105D78 AC580000 */  sw         $t8, ($v0)
/* DC739C 80105D7C 8C620000 */  lw         $v0, ($v1)
/* DC73A0 80105D80 3C0F0700 */  lui        $t7, 0x700
/* DC73A4 80105D84 35CE0100 */  ori        $t6, $t6, 0x100
/* DC73A8 80105D88 24590008 */  addiu      $t9, $v0, 8
/* DC73AC 80105D8C AC790000 */  sw         $t9, ($v1)
/* DC73B0 80105D90 AC4F0004 */  sw         $t7, 4($v0)
/* DC73B4 80105D94 AC4E0000 */  sw         $t6, ($v0)
/* DC73B8 80105D98 8C620000 */  lw         $v0, ($v1)
/* DC73BC 80105D9C 3C19E600 */  lui        $t9, 0xe600
/* DC73C0 80105DA0 3C0FF000 */  lui        $t7, 0xf000
/* DC73C4 80105DA4 24580008 */  addiu      $t8, $v0, 8
/* DC73C8 80105DA8 AC780000 */  sw         $t8, ($v1)
/* DC73CC 80105DAC AC400004 */  sw         $zero, 4($v0)
/* DC73D0 80105DB0 AC590000 */  sw         $t9, ($v0)
/* DC73D4 80105DB4 8C620000 */  lw         $v0, ($v1)
/* DC73D8 80105DB8 3C180703 */  lui        $t8, 0x703
/* DC73DC 80105DBC 3718C000 */  ori        $t8, $t8, 0xc000
/* DC73E0 80105DC0 244E0008 */  addiu      $t6, $v0, 8
/* DC73E4 80105DC4 AC6E0000 */  sw         $t6, ($v1)
/* DC73E8 80105DC8 AC580004 */  sw         $t8, 4($v0)
/* DC73EC 80105DCC AC4F0000 */  sw         $t7, ($v0)
/* DC73F0 80105DD0 8C620000 */  lw         $v0, ($v1)
/* DC73F4 80105DD4 3C0FFD48 */  lui        $t7, 0xfd48
/* DC73F8 80105DD8 3C188016 */  lui        $t8, 0x8016
/* DC73FC 80105DDC 24590008 */  addiu      $t9, $v0, 8
/* DC7400 80105DE0 AC790000 */  sw         $t9, ($v1)
/* DC7404 80105DE4 AC5F0000 */  sw         $ra, ($v0)
/* DC7408 80105DE8 8231623C */  lb         $s1, 0x623c($s1)
/* DC740C 80105DEC AC400004 */  sw         $zero, 4($v0)
/* DC7410 80105DF0 8C620000 */  lw         $v0, ($v1)
/* DC7414 80105DF4 271833D0 */  addiu      $t8, $t8, 0x33d0
/* DC7418 80105DF8 35EF0007 */  ori        $t7, $t7, 7
/* DC741C 80105DFC 244E0008 */  addiu      $t6, $v0, 8
/* DC7420 80105E00 AC6E0000 */  sw         $t6, ($v1)
/* DC7424 80105E04 AC580004 */  sw         $t8, 4($v0)
/* DC7428 80105E08 AC4F0000 */  sw         $t7, ($v0)
/* DC742C 80105E0C 8C620000 */  lw         $v0, ($v1)
/* DC7430 80105E10 3C0EF548 */  lui        $t6, 0xf548
/* DC7434 80105E14 35CE0200 */  ori        $t6, $t6, 0x200
/* DC7438 80105E18 24590008 */  addiu      $t9, $v0, 8
/* DC743C 80105E1C AC790000 */  sw         $t9, ($v1)
/* DC7440 80105E20 3C0F0700 */  lui        $t7, 0x700
/* DC7444 80105E24 AC4F0004 */  sw         $t7, 4($v0)
/* DC7448 80105E28 AC4E0000 */  sw         $t6, ($v0)
/* DC744C 80105E2C 8C620000 */  lw         $v0, ($v1)
/* DC7450 80105E30 3C19E600 */  lui        $t9, 0xe600
/* DC7454 80105E34 3C0F0701 */  lui        $t7, 0x701
/* DC7458 80105E38 24580008 */  addiu      $t8, $v0, 8
/* DC745C 80105E3C AC780000 */  sw         $t8, ($v1)
/* DC7460 80105E40 AC400004 */  sw         $zero, 4($v0)
/* DC7464 80105E44 AC590000 */  sw         $t9, ($v0)
/* DC7468 80105E48 8C620000 */  lw         $v0, ($v1)
/* DC746C 80105E4C 35EF4028 */  ori        $t7, $t7, 0x4028
/* DC7470 80105E50 001160C0 */  sll        $t4, $s1, 3
/* DC7474 80105E54 244E0008 */  addiu      $t6, $v0, 8
/* DC7478 80105E58 AC6E0000 */  sw         $t6, ($v1)
/* DC747C 80105E5C AC4F0004 */  sw         $t7, 4($v0)
/* DC7480 80105E60 AC540000 */  sw         $s4, ($v0)
/* DC7484 80105E64 8C620000 */  lw         $v0, ($v1)
/* DC7488 80105E68 3C0EF540 */  lui        $t6, 0xf540
/* DC748C 80105E6C 35CE0200 */  ori        $t6, $t6, 0x200
/* DC7490 80105E70 24580008 */  addiu      $t8, $v0, 8
/* DC7494 80105E74 AC780000 */  sw         $t8, ($v1)
/* DC7498 80105E78 AC400004 */  sw         $zero, 4($v0)
/* DC749C 80105E7C AC5F0000 */  sw         $ra, ($v0)
/* DC74A0 80105E80 8C620000 */  lw         $v0, ($v1)
/* DC74A4 80105E84 3C180002 */  lui        $t8, 2
/* DC74A8 80105E88 37188028 */  ori        $t8, $t8, 0x8028
/* DC74AC 80105E8C 24590008 */  addiu      $t9, $v0, 8
/* DC74B0 80105E90 AC790000 */  sw         $t9, ($v1)
/* DC74B4 80105E94 AC400004 */  sw         $zero, 4($v0)
/* DC74B8 80105E98 AC4E0000 */  sw         $t6, ($v0)
/* DC74BC 80105E9C 8C620000 */  lw         $v0, ($v1)
/* DC74C0 80105EA0 01916023 */  subu       $t4, $t4, $s1
/* DC74C4 80105EA4 000C60C0 */  sll        $t4, $t4, 3
/* DC74C8 80105EA8 244F0008 */  addiu      $t7, $v0, 8
/* DC74CC 80105EAC AC6F0000 */  sw         $t7, ($v1)
/* DC74D0 80105EB0 AC580004 */  sw         $t8, 4($v0)
/* DC74D4 80105EB4 AC550000 */  sw         $s5, ($v0)
/* DC74D8 80105EB8 8C620000 */  lw         $v0, ($v1)
/* DC74DC 80105EBC 01916023 */  subu       $t4, $t4, $s1
/* DC74E0 80105EC0 258E0072 */  addiu      $t6, $t4, 0x72
/* DC74E4 80105EC4 000E7880 */  sll        $t7, $t6, 2
/* DC74E8 80105EC8 24590008 */  addiu      $t9, $v0, 8
/* DC74EC 80105ECC AC790000 */  sw         $t9, ($v1)
/* DC74F0 80105ED0 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC74F4 80105ED4 0018CB00 */  sll        $t9, $t8, 0xc
/* DC74F8 80105ED8 03217025 */  or         $t6, $t9, $at
/* DC74FC 80105EDC 35CF02D0 */  ori        $t7, $t6, 0x2d0
/* DC7500 80105EE0 25980067 */  addiu      $t8, $t4, 0x67
/* DC7504 80105EE4 0018C880 */  sll        $t9, $t8, 2
/* DC7508 80105EE8 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC750C 80105EEC AC4F0000 */  sw         $t7, ($v0)
/* DC7510 80105EF0 000E7B00 */  sll        $t7, $t6, 0xc
/* DC7514 80105EF4 35F802A4 */  ori        $t8, $t7, 0x2a4
/* DC7518 80105EF8 AC580004 */  sw         $t8, 4($v0)
/* DC751C 80105EFC 8C620000 */  lw         $v0, ($v1)
/* DC7520 80105F00 3C0F8009 */  lui        $t7, 0x8009
/* DC7524 80105F04 24010001 */  addiu      $at, $zero, 1
/* DC7528 80105F08 24590008 */  addiu      $t9, $v0, 8
/* DC752C 80105F0C AC790000 */  sw         $t9, ($v1)
/* DC7530 80105F10 AC400004 */  sw         $zero, 4($v0)
/* DC7534 80105F14 AC560000 */  sw         $s6, ($v0)
/* DC7538 80105F18 8C620000 */  lw         $v0, ($v1)
/* DC753C 80105F1C 244E0008 */  addiu      $t6, $v0, 8
/* DC7540 80105F20 AC6E0000 */  sw         $t6, ($v1)
/* DC7544 80105F24 AC5E0004 */  sw         $fp, 4($v0)
/* DC7548 80105F28 AC570000 */  sw         $s7, ($v0)
/* DC754C 80105F2C 95EF2876 */  lhu        $t7, 0x2876($t7)
/* DC7550 80105F30 31F8B000 */  andi       $t8, $t7, 0xb000
/* DC7554 80105F34 530000A5 */  beql       $t8, $zero, .L801061CC
/* DC7558 80105F38 8FBF002C */   lw        $ra, 0x2c($sp)
/* DC755C 80105F3C 16210005 */  bne        $s1, $at, .L80105F54
/* DC7560 80105F40 240E0001 */   addiu     $t6, $zero, 1
/* DC7564 80105F44 24190001 */  addiu      $t9, $zero, 1
/* DC7568 80105F48 3C018010 */  lui        $at, %hi(D_80106234)
/* DC756C 80105F4C 1000009E */  b          .L801061C8
/* DC7570 80105F50 A0396234 */   sb        $t9, %lo(D_80106234)($at)
.L80105F54:
/* DC7574 80105F54 1000009C */  b          .L801061C8
/* DC7578 80105F58 AFAE013C */   sw        $t6, 0x13c($sp)
.L80105F5C:
/* DC757C 80105F5C 8C620000 */  lw         $v0, ($v1)
/* DC7580 80105F60 3C0E8015 */  lui        $t6, %hi(D_80155260)
/* DC7584 80105F64 25CE5260 */  addiu      $t6, $t6, %lo(D_80155260)
/* DC7588 80105F68 244F0008 */  addiu      $t7, $v0, 8
/* DC758C 80105F6C AC6F0000 */  sw         $t7, ($v1)
/* DC7590 80105F70 AC400004 */  sw         $zero, 4($v0)
/* DC7594 80105F74 AC5F0000 */  sw         $ra, ($v0)
/* DC7598 80105F78 8C620000 */  lw         $v0, ($v1)
/* DC759C 80105F7C 3C19FD10 */  lui        $t9, 0xfd10
/* DC75A0 80105F80 3C1E0400 */  lui        $fp, 0x400
/* DC75A4 80105F84 24580008 */  addiu      $t8, $v0, 8
/* DC75A8 80105F88 AC780000 */  sw         $t8, ($v1)
/* DC75AC 80105F8C AC4E0004 */  sw         $t6, 4($v0)
/* DC75B0 80105F90 AC590000 */  sw         $t9, ($v0)
/* DC75B4 80105F94 8C620000 */  lw         $v0, ($v1)
/* DC75B8 80105F98 3C18E800 */  lui        $t8, 0xe800
/* DC75BC 80105F9C 3C0EF500 */  lui        $t6, 0xf500
/* DC75C0 80105FA0 244F0008 */  addiu      $t7, $v0, 8
/* DC75C4 80105FA4 AC6F0000 */  sw         $t7, ($v1)
/* DC75C8 80105FA8 AC400004 */  sw         $zero, 4($v0)
/* DC75CC 80105FAC AC580000 */  sw         $t8, ($v0)
/* DC75D0 80105FB0 8C620000 */  lw         $v0, ($v1)
/* DC75D4 80105FB4 3C0F0700 */  lui        $t7, 0x700
/* DC75D8 80105FB8 35CE0100 */  ori        $t6, $t6, 0x100
/* DC75DC 80105FBC 24590008 */  addiu      $t9, $v0, 8
/* DC75E0 80105FC0 AC790000 */  sw         $t9, ($v1)
/* DC75E4 80105FC4 AC4F0004 */  sw         $t7, 4($v0)
/* DC75E8 80105FC8 AC4E0000 */  sw         $t6, ($v0)
/* DC75EC 80105FCC 8C620000 */  lw         $v0, ($v1)
/* DC75F0 80105FD0 3C19E600 */  lui        $t9, 0xe600
/* DC75F4 80105FD4 3C0FF000 */  lui        $t7, 0xf000
/* DC75F8 80105FD8 24580008 */  addiu      $t8, $v0, 8
/* DC75FC 80105FDC AC780000 */  sw         $t8, ($v1)
/* DC7600 80105FE0 AC400004 */  sw         $zero, 4($v0)
/* DC7604 80105FE4 AC590000 */  sw         $t9, ($v0)
/* DC7608 80105FE8 8C620000 */  lw         $v0, ($v1)
/* DC760C 80105FEC 3C180703 */  lui        $t8, 0x703
/* DC7610 80105FF0 3718C000 */  ori        $t8, $t8, 0xc000
/* DC7614 80105FF4 244E0008 */  addiu      $t6, $v0, 8
/* DC7618 80105FF8 AC6E0000 */  sw         $t6, ($v1)
/* DC761C 80105FFC AC580004 */  sw         $t8, 4($v0)
/* DC7620 80106000 AC4F0000 */  sw         $t7, ($v0)
/* DC7624 80106004 8C620000 */  lw         $v0, ($v1)
/* DC7628 80106008 3C0E8015 */  lui        $t6, %hi(D_80153E08)
/* DC762C 8010600C 25CE3E08 */  addiu      $t6, $t6, %lo(D_80153E08)
/* DC7630 80106010 24590008 */  addiu      $t9, $v0, 8
/* DC7634 80106014 AC790000 */  sw         $t9, ($v1)
/* DC7638 80106018 AC400004 */  sw         $zero, 4($v0)
/* DC763C 8010601C AC5F0000 */  sw         $ra, ($v0)
/* DC7640 80106020 AFAE0030 */  sw         $t6, 0x30($sp)
/* DC7644 80106024 37DE0400 */  ori        $fp, $fp, 0x400
/* DC7648 80106028 00006825 */  or         $t5, $zero, $zero
/* DC764C 8010602C 24110009 */  addiu      $s1, $zero, 9
/* DC7650 80106030 24120069 */  addiu      $s2, $zero, 0x69
/* DC7654 80106034 2410005F */  addiu      $s0, $zero, 0x5f
/* DC7658 80106038 3C17B300 */  lui        $s7, 0xb300
/* DC765C 8010603C 3C16B400 */  lui        $s6, 0xb400
/* DC7660 80106040 3C15F200 */  lui        $s5, 0xf200
/* DC7664 80106044 3C14F400 */  lui        $s4, 0xf400
.L80106048:
/* DC7668 80106048 8C620000 */  lw         $v0, ($v1)
/* DC766C 8010604C 3C18FD48 */  lui        $t8, 0xfd48
/* DC7670 80106050 37180067 */  ori        $t8, $t8, 0x67
/* DC7674 80106054 244F0008 */  addiu      $t7, $v0, 8
/* DC7678 80106058 AC6F0000 */  sw         $t7, ($v1)
/* DC767C 8010605C AC580000 */  sw         $t8, ($v0)
/* DC7680 80106060 8FB90030 */  lw         $t9, 0x30($sp)
/* DC7684 80106064 3C0FF548 */  lui        $t7, 0xf548
/* DC7688 80106068 35EF1A00 */  ori        $t7, $t7, 0x1a00
/* DC768C 8010606C AC590004 */  sw         $t9, 4($v0)
/* DC7690 80106070 8C620000 */  lw         $v0, ($v1)
/* DC7694 80106074 3C180700 */  lui        $t8, 0x700
/* DC7698 80106078 000D4080 */  sll        $t0, $t5, 2
/* DC769C 8010607C 244E0008 */  addiu      $t6, $v0, 8
/* DC76A0 80106080 AC6E0000 */  sw         $t6, ($v1)
/* DC76A4 80106084 AC580004 */  sw         $t8, 4($v0)
/* DC76A8 80106088 AC4F0000 */  sw         $t7, ($v0)
/* DC76AC 8010608C 8C620000 */  lw         $v0, ($v1)
/* DC76B0 80106090 3C0EE600 */  lui        $t6, 0xe600
/* DC76B4 80106094 00114880 */  sll        $t1, $s1, 2
/* DC76B8 80106098 24590008 */  addiu      $t9, $v0, 8
/* DC76BC 8010609C AC790000 */  sw         $t9, ($v1)
/* DC76C0 801060A0 AC400004 */  sw         $zero, 4($v0)
/* DC76C4 801060A4 AC4E0000 */  sw         $t6, ($v0)
/* DC76C8 801060A8 8C620000 */  lw         $v0, ($v1)
/* DC76CC 801060AC 3C010718 */  lui        $at, 0x718
/* DC76D0 801060B0 3421E000 */  ori        $at, $at, 0xe000
/* DC76D4 801060B4 244F0008 */  addiu      $t7, $v0, 8
/* DC76D8 801060B8 AC6F0000 */  sw         $t7, ($v1)
/* DC76DC 801060BC 312E0FFF */  andi       $t6, $t1, 0xfff
/* DC76E0 801060C0 31180FFF */  andi       $t8, $t0, 0xfff
/* DC76E4 801060C4 0314C825 */  or         $t9, $t8, $s4
/* DC76E8 801060C8 01C17825 */  or         $t7, $t6, $at
/* DC76EC 801060CC AC4F0004 */  sw         $t7, 4($v0)
/* DC76F0 801060D0 AC590000 */  sw         $t9, ($v0)
/* DC76F4 801060D4 8C620000 */  lw         $v0, ($v1)
/* DC76F8 801060D8 03004025 */  or         $t0, $t8, $zero
/* DC76FC 801060DC 01C04825 */  or         $t1, $t6, $zero
/* DC7700 801060E0 24580008 */  addiu      $t8, $v0, 8
/* DC7704 801060E4 AC780000 */  sw         $t8, ($v1)
/* DC7708 801060E8 AC400004 */  sw         $zero, 4($v0)
/* DC770C 801060EC AC5F0000 */  sw         $ra, ($v0)
/* DC7710 801060F0 8C620000 */  lw         $v0, ($v1)
/* DC7714 801060F4 3C0EF540 */  lui        $t6, 0xf540
/* DC7718 801060F8 35CE1A00 */  ori        $t6, $t6, 0x1a00
/* DC771C 801060FC 24590008 */  addiu      $t9, $v0, 8
/* DC7720 80106100 AC790000 */  sw         $t9, ($v1)
/* DC7724 80106104 AC400004 */  sw         $zero, 4($v0)
/* DC7728 80106108 AC4E0000 */  sw         $t6, ($v0)
/* DC772C 8010610C 8C620000 */  lw         $v0, ($v1)
/* DC7730 80106110 3C010031 */  lui        $at, 0x31
/* DC7734 80106114 3421C000 */  ori        $at, $at, 0xc000
/* DC7738 80106118 244F0008 */  addiu      $t7, $v0, 8
/* DC773C 8010611C AC6F0000 */  sw         $t7, ($v1)
/* DC7740 80106120 0121C825 */  or         $t9, $t1, $at
/* DC7744 80106124 0115C025 */  or         $t8, $t0, $s5
/* DC7748 80106128 AC580000 */  sw         $t8, ($v0)
/* DC774C 8010612C AC590004 */  sw         $t9, 4($v0)
/* DC7750 80106130 8C620000 */  lw         $v0, ($v1)
/* DC7754 80106134 00127880 */  sll        $t7, $s2, 2
/* DC7758 80106138 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC775C 8010613C 244E0008 */  addiu      $t6, $v0, 8
/* DC7760 80106140 AC6E0000 */  sw         $t6, ($v1)
/* DC7764 80106144 3C01E441 */  lui        $at, 0xe441
/* DC7768 80106148 0301C825 */  or         $t9, $t8, $at
/* DC776C 8010614C 00107080 */  sll        $t6, $s0, 2
/* DC7770 80106150 31CF0FFF */  andi       $t7, $t6, 0xfff
/* DC7774 80106154 3C01000F */  lui        $at, 0xf
/* DC7778 80106158 01E1C025 */  or         $t8, $t7, $at
/* DC777C 8010615C AC580004 */  sw         $t8, 4($v0)
/* DC7780 80106160 AC590000 */  sw         $t9, ($v0)
/* DC7784 80106164 8C620000 */  lw         $v0, ($v1)
/* DC7788 80106168 000D7140 */  sll        $t6, $t5, 5
/* DC778C 8010616C 31CFFFFF */  andi       $t7, $t6, 0xffff
/* DC7790 80106170 24590008 */  addiu      $t9, $v0, 8
/* DC7794 80106174 AC790000 */  sw         $t9, ($v1)
/* DC7798 80106178 AC4F0004 */  sw         $t7, 4($v0)
/* DC779C 8010617C AC560000 */  sw         $s6, ($v0)
/* DC77A0 80106180 8C620000 */  lw         $v0, ($v1)
/* DC77A4 80106184 24010091 */  addiu      $at, $zero, 0x91
/* DC77A8 80106188 2610000A */  addiu      $s0, $s0, 0xa
/* DC77AC 8010618C 24580008 */  addiu      $t8, $v0, 8
/* DC77B0 80106190 AC780000 */  sw         $t8, ($v1)
/* DC77B4 80106194 25AD000A */  addiu      $t5, $t5, 0xa
/* DC77B8 80106198 2652000A */  addiu      $s2, $s2, 0xa
/* DC77BC 8010619C 2631000A */  addiu      $s1, $s1, 0xa
/* DC77C0 801061A0 AC5E0004 */  sw         $fp, 4($v0)
/* DC77C4 801061A4 1601FFA8 */  bne        $s0, $at, .L80106048
/* DC77C8 801061A8 AC570000 */   sw        $s7, ($v0)
/* DC77CC 801061AC 3C198009 */  lui        $t9, %hi(ButtonPressedFrame)
/* DC77D0 801061B0 97392876 */  lhu        $t9, %lo(ButtonPressedFrame)($t9)
/* DC77D4 801061B4 3C018010 */  lui        $at, %hi(D_80106234)
/* DC77D8 801061B8 332E4000 */  andi       $t6, $t9, 0x4000
/* DC77DC 801061BC 51C00003 */  beql       $t6, $zero, .L801061CC
/* DC77E0 801061C0 8FBF002C */   lw        $ra, 0x2c($sp)
/* DC77E4 801061C4 A0206234 */  sb         $zero, %lo(D_80106234)($at)
.L801061C8:
/* DC77E8 801061C8 8FBF002C */  lw         $ra, 0x2c($sp)
.L801061CC:
/* DC77EC 801061CC 8FA2013C */  lw         $v0, 0x13c($sp)
/* DC77F0 801061D0 8FB00008 */  lw         $s0, 8($sp)
/* DC77F4 801061D4 8FB1000C */  lw         $s1, 0xc($sp)
/* DC77F8 801061D8 8FB20010 */  lw         $s2, 0x10($sp)
/* DC77FC 801061DC 8FB30014 */  lw         $s3, 0x14($sp)
/* DC7800 801061E0 8FB40018 */  lw         $s4, 0x18($sp)
/* DC7804 801061E4 8FB5001C */  lw         $s5, 0x1c($sp)
/* DC7808 801061E8 8FB60020 */  lw         $s6, 0x20($sp)
/* DC780C 801061EC 8FB70024 */  lw         $s7, 0x24($sp)
/* DC7810 801061F0 8FBE0028 */  lw         $fp, 0x28($sp)
/* DC7814 801061F4 03E00008 */  jr         $ra
/* DC7818 801061F8 27BD0148 */   addiu     $sp, $sp, 0x148
/* DC781C 801061FC 00000000 */  nop
/* DC7820 80106200 00000000 */  nop
/* DC7824 80106204 00000000 */  nop
/* DC7828 80106208 00000000 */  nop
/* DC782C 8010620C 00000000 */  nop
/* DC7830 80106210 00000000 */  nop
/* DC7834 80106214 00000000 */  nop
/* DC7838 80106218 00000000 */  nop
/* DC783C 8010621C 00000000 */  nop
/* DC7840 80106220 00000000 */  nop
/* DC7844 80106224 00000000 */  nop
/* DC7848 80106228 00000000 */  nop
/* DC784C 8010622C 00000000 */  nop
/* DC7850 80106230 00000000 */  nop
/* DC7854 80106234 00000000 */  nop
/* DC7858 80106238 00000000 */  nop
/* DC785C 8010623C 00000000 */  nop
