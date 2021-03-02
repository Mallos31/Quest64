.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801006D8
/* DA6FC8 801006D8 3C068008 */  lui        $a2, %hi(UNK_DisplayListCommand)
/* DA6FCC 801006DC 24C6B2FC */  addiu      $a2, $a2, %lo(UNK_DisplayListCommand)
/* DA6FD0 801006E0 8CC20000 */  lw         $v0, ($a2)
/* DA6FD4 801006E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA6FD8 801006E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DA6FDC 801006EC 244E0008 */  addiu      $t6, $v0, 8
/* DA6FE0 801006F0 ACCE0000 */  sw         $t6, ($a2)
/* DA6FE4 801006F4 3C188010 */  lui        $t8, %hi(D_80103138)
/* DA6FE8 801006F8 27183138 */  addiu      $t8, $t8, %lo(D_80103138)
/* DA6FEC 801006FC 3C0F0600 */  lui        $t7, 0x600
/* DA6FF0 80100700 AC4F0000 */  sw         $t7, ($v0)
/* DA6FF4 80100704 AC580004 */  sw         $t8, 4($v0)
/* DA6FF8 80100708 8CC20000 */  lw         $v0, ($a2)
/* DA6FFC 8010070C 3C078012 */  lui        $a3, %hi(D_8011AD3C)
/* DA7000 80100710 3C0CFB00 */  lui        $t4, 0xfb00
/* DA7004 80100714 24590008 */  addiu      $t9, $v0, 8
/* DA7008 80100718 ACD90000 */  sw         $t9, ($a2)
/* DA700C 8010071C 24E7AD3C */  addiu      $a3, $a3, %lo(D_8011AD3C)
/* DA7010 80100720 AC4C0000 */  sw         $t4, ($v0)
/* DA7014 80100724 8CED0000 */  lw         $t5, ($a3)
/* DA7018 80100728 3C088012 */  lui        $t0, %hi(D_8011AD44)
/* DA701C 8010072C 2508AD44 */  addiu      $t0, $t0, %lo(D_8011AD44)
/* DA7020 80100730 31AE00FF */  andi       $t6, $t5, 0xff
/* DA7024 80100734 AC4E0004 */  sw         $t6, 4($v0)
/* DA7028 80100738 0C0402E8 */  jal        func_80100BA0
/* DA702C 8010073C 8D040000 */   lw        $a0, ($t0)
/* DA7030 80100740 3C078012 */  lui        $a3, %hi(D_8011AD3C)
/* DA7034 80100744 3C098012 */  lui        $t1, %hi(D_8011AD40)
/* DA7038 80100748 2529AD40 */  addiu      $t1, $t1, %lo(D_8011AD40)
/* DA703C 8010074C 24E7AD3C */  addiu      $a3, $a3, %lo(D_8011AD3C)
/* DA7040 80100750 8CEF0000 */  lw         $t7, ($a3)
/* DA7044 80100754 8D230000 */  lw         $v1, ($t1)
/* DA7048 80100758 3C088012 */  lui        $t0, %hi(D_8011AD44)
/* DA704C 8010075C 2508AD44 */  addiu      $t0, $t0, %lo(D_8011AD44)
/* DA7050 80100760 01E31021 */  addu       $v0, $t7, $v1
/* DA7054 80100764 28410100 */  slti       $at, $v0, 0x100
/* DA7058 80100768 14200006 */  bnez       $at, .L80100784
/* DA705C 8010076C ACE20000 */   sw        $v0, ($a3)
/* DA7060 80100770 240200FF */  addiu      $v0, $zero, 0xff
/* DA7064 80100774 00036023 */  negu       $t4, $v1
/* DA7068 80100778 ACE20000 */  sw         $v0, ($a3)
/* DA706C 8010077C 10000006 */  b          .L80100798
/* DA7070 80100780 AD2C0000 */   sw        $t4, ($t1)
.L80100784:
/* DA7074 80100784 04410004 */  bgez       $v0, .L80100798
/* DA7078 80100788 00036823 */   negu      $t5, $v1
/* DA707C 8010078C ACE00000 */  sw         $zero, ($a3)
/* DA7080 80100790 AD2D0000 */  sw         $t5, ($t1)
/* DA7084 80100794 00001025 */  or         $v0, $zero, $zero
.L80100798:
/* DA7088 80100798 3C0E8010 */  lui        $t6, %hi(D_80103420)
/* DA708C 8010079C 8DCE3420 */  lw         $t6, %lo(D_80103420)($t6)
/* DA7090 801007A0 3C018012 */  lui        $at, %hi(D_8011AD54)
/* DA7094 801007A4 AC22AD54 */  sw         $v0, %lo(D_8011AD54)($at)
/* DA7098 801007A8 15C000D2 */  bnez       $t6, .L80100AF4
/* DA709C 801007AC 00000000 */   nop
/* DA70A0 801007B0 8D020000 */  lw         $v0, ($t0)
/* DA70A4 801007B4 3C038009 */  lui        $v1, %hi(ButtonPressedFrame)
/* DA70A8 801007B8 24632876 */  addiu      $v1, $v1, %lo(ButtonPressedFrame)
/* DA70AC 801007BC 14400018 */  bnez       $v0, .L80100820
/* DA70B0 801007C0 240A0002 */   addiu     $t2, $zero, 2
/* DA70B4 801007C4 946F0000 */  lhu        $t7, ($v1)
/* DA70B8 801007C8 24040001 */  addiu      $a0, $zero, 1
/* DA70BC 801007CC 240500FF */  addiu      $a1, $zero, 0xff
/* DA70C0 801007D0 31F81000 */  andi       $t8, $t7, 0x1000
/* DA70C4 801007D4 13000012 */  beqz       $t8, .L80100820
/* DA70C8 801007D8 00000000 */   nop
/* DA70CC 801007DC 0C0096E3 */  jal        func_80025B8C
/* DA70D0 801007E0 24060040 */   addiu     $a2, $zero, 0x40
/* DA70D4 801007E4 3C078012 */  lui        $a3, %hi(D_8011AD3C)
/* DA70D8 801007E8 3C088012 */  lui        $t0, %hi(D_8011AD44)
/* DA70DC 801007EC 3C098012 */  lui        $t1, %hi(D_8011AD40)
/* DA70E0 801007F0 2529AD40 */  addiu      $t1, $t1, %lo(D_8011AD40)
/* DA70E4 801007F4 2508AD44 */  addiu      $t0, $t0, %lo(D_8011AD44)
/* DA70E8 801007F8 24E7AD3C */  addiu      $a3, $a3, %lo(D_8011AD3C)
/* DA70EC 801007FC 24190080 */  addiu      $t9, $zero, 0x80
/* DA70F0 80100800 240C0001 */  addiu      $t4, $zero, 1
/* DA70F4 80100804 ACE00000 */  sw         $zero, ($a3)
/* DA70F8 80100808 AD390000 */  sw         $t9, ($t1)
/* DA70FC 8010080C AD0C0000 */  sw         $t4, ($t0)
/* DA7100 80100810 240D003C */  addiu      $t5, $zero, 0x3c
/* DA7104 80100814 3C018012 */  lui        $at, %hi(D_8011AD34)
/* DA7108 80100818 100000B6 */  b          .L80100AF4
/* DA710C 8010081C AC2DAD34 */   sw        $t5, %lo(D_8011AD34)($at)
.L80100820:
/* DA7110 80100820 3C038009 */  lui        $v1, %hi(ButtonPressedFrame)
/* DA7114 80100824 15420033 */  bne        $t2, $v0, .L801008F4
/* DA7118 80100828 24632876 */   addiu     $v1, $v1, %lo(ButtonPressedFrame)
/* DA711C 8010082C 94620000 */  lhu        $v0, ($v1)
/* DA7120 80100830 24040001 */  addiu      $a0, $zero, 1
/* DA7124 80100834 240500FF */  addiu      $a1, $zero, 0xff
/* DA7128 80100838 304EB000 */  andi       $t6, $v0, 0xb000
/* DA712C 8010083C 11C00015 */  beqz       $t6, .L80100894
/* DA7130 80100840 304D4000 */   andi      $t5, $v0, 0x4000
/* DA7134 80100844 0C0096E3 */  jal        func_80025B8C
/* DA7138 80100848 24060040 */   addiu     $a2, $zero, 0x40
/* DA713C 8010084C 3C078012 */  lui        $a3, %hi(D_8011AD3C)
/* DA7140 80100850 3C088012 */  lui        $t0, %hi(D_8011AD44)
/* DA7144 80100854 3C098012 */  lui        $t1, %hi(D_8011AD40)
/* DA7148 80100858 2529AD40 */  addiu      $t1, $t1, %lo(D_8011AD40)
/* DA714C 8010085C 2508AD44 */  addiu      $t0, $t0, %lo(D_8011AD44)
/* DA7150 80100860 24E7AD3C */  addiu      $a3, $a3, %lo(D_8011AD3C)
/* DA7154 80100864 240F0080 */  addiu      $t7, $zero, 0x80
/* DA7158 80100868 24180003 */  addiu      $t8, $zero, 3
/* DA715C 8010086C ACE00000 */  sw         $zero, ($a3)
/* DA7160 80100870 AD2F0000 */  sw         $t7, ($t1)
/* DA7164 80100874 AD180000 */  sw         $t8, ($t0)
/* DA7168 80100878 2419003C */  addiu      $t9, $zero, 0x3c
/* DA716C 8010087C 3C018012 */  lui        $at, %hi(D_8011AD34)
/* DA7170 80100880 AC39AD34 */  sw         $t9, %lo(D_8011AD34)($at)
/* DA7174 80100884 3C018010 */  lui        $at, %hi(D_80103110)
/* DA7178 80100888 240C0001 */  addiu      $t4, $zero, 1
/* DA717C 8010088C 10000099 */  b          .L80100AF4
/* DA7180 80100890 AC2C3110 */   sw        $t4, %lo(D_80103110)($at)
.L80100894:
/* DA7184 80100894 11A00097 */  beqz       $t5, .L80100AF4
/* DA7188 80100898 01402025 */   or        $a0, $t2, $zero
/* DA718C 8010089C 240500FF */  addiu      $a1, $zero, 0xff
/* DA7190 801008A0 0C0096E3 */  jal        func_80025B8C
/* DA7194 801008A4 24060040 */   addiu     $a2, $zero, 0x40
/* DA7198 801008A8 3C078012 */  lui        $a3, %hi(D_8011AD3C)
/* DA719C 801008AC 3C088012 */  lui        $t0, %hi(D_8011AD44)
/* DA71A0 801008B0 3C098012 */  lui        $t1, %hi(D_8011AD40)
/* DA71A4 801008B4 2529AD40 */  addiu      $t1, $t1, %lo(D_8011AD40)
/* DA71A8 801008B8 2508AD44 */  addiu      $t0, $t0, %lo(D_8011AD44)
/* DA71AC 801008BC 24E7AD3C */  addiu      $a3, $a3, %lo(D_8011AD3C)
/* DA71B0 801008C0 240E00FF */  addiu      $t6, $zero, 0xff
/* DA71B4 801008C4 240F0080 */  addiu      $t7, $zero, 0x80
/* DA71B8 801008C8 24180004 */  addiu      $t8, $zero, 4
/* DA71BC 801008CC 240A0002 */  addiu      $t2, $zero, 2
/* DA71C0 801008D0 ACEE0000 */  sw         $t6, ($a3)
/* DA71C4 801008D4 AD2F0000 */  sw         $t7, ($t1)
/* DA71C8 801008D8 AD180000 */  sw         $t8, ($t0)
/* DA71CC 801008DC 3C018012 */  lui        $at, %hi(D_8011AD34)
/* DA71D0 801008E0 AC2AAD34 */  sw         $t2, %lo(D_8011AD34)($at)
/* DA71D4 801008E4 3C018010 */  lui        $at, %hi(D_80103110)
/* DA71D8 801008E8 24190001 */  addiu      $t9, $zero, 1
/* DA71DC 801008EC 10000081 */  b          .L80100AF4
/* DA71E0 801008F0 AC393110 */   sw        $t9, %lo(D_80103110)($at)
.L801008F4:
/* DA71E4 801008F4 240B0008 */  addiu      $t3, $zero, 8
/* DA71E8 801008F8 11620003 */  beq        $t3, $v0, .L80100908
/* DA71EC 801008FC 24010007 */   addiu     $at, $zero, 7
/* DA71F0 80100900 54410046 */  bnel       $v0, $at, .L80100A1C
/* DA71F4 80100904 24010006 */   addiu     $at, $zero, 6
.L80100908:
/* DA71F8 80100908 94620000 */  lhu        $v0, ($v1)
/* DA71FC 8010090C 24040001 */  addiu      $a0, $zero, 1
/* DA7200 80100910 240500FF */  addiu      $a1, $zero, 0xff
/* DA7204 80100914 304CB000 */  andi       $t4, $v0, 0xb000
/* DA7208 80100918 11800028 */  beqz       $t4, .L801009BC
/* DA720C 8010091C 30594000 */   andi      $t9, $v0, 0x4000
/* DA7210 80100920 0C0096E3 */  jal        func_80025B8C
/* DA7214 80100924 24060040 */   addiu     $a2, $zero, 0x40
/* DA7218 80100928 3C078012 */  lui        $a3, %hi(D_8011AD3C)
/* DA721C 8010092C 3C098012 */  lui        $t1, %hi(D_8011AD40)
/* DA7220 80100930 2529AD40 */  addiu      $t1, $t1, %lo(D_8011AD40)
/* DA7224 80100934 24E7AD3C */  addiu      $a3, $a3, %lo(D_8011AD3C)
/* DA7228 80100938 240D0080 */  addiu      $t5, $zero, 0x80
/* DA722C 8010093C ACE00000 */  sw         $zero, ($a3)
/* DA7230 80100940 AD2D0000 */  sw         $t5, ($t1)
/* DA7234 80100944 3C188012 */  lui        $t8, %hi(D_8011AD50)
/* DA7238 80100948 8318AD50 */  lb         $t8, %lo(D_8011AD50)($t8)
/* DA723C 8010094C 240E0001 */  addiu      $t6, $zero, 1
/* DA7240 80100950 3C018010 */  lui        $at, %hi(D_80103110)
/* DA7244 80100954 AC2E3110 */  sw         $t6, %lo(D_80103110)($at)
/* DA7248 80100958 3C088012 */  lui        $t0, %hi(D_8011AD44)
/* DA724C 8010095C 3C018012 */  lui        $at, %hi(D_8011AD34)
/* DA7250 80100960 240F003C */  addiu      $t7, $zero, 0x3c
/* DA7254 80100964 2508AD44 */  addiu      $t0, $t0, %lo(D_8011AD44)
/* DA7258 80100968 240B0008 */  addiu      $t3, $zero, 8
/* DA725C 8010096C 1700000A */  bnez       $t8, .L80100998
/* DA7260 80100970 AC2FAD34 */   sw        $t7, %lo(D_8011AD34)($at)
/* DA7264 80100974 8D190000 */  lw         $t9, ($t0)
/* DA7268 80100978 240C000B */  addiu      $t4, $zero, 0xb
/* DA726C 8010097C 240D000D */  addiu      $t5, $zero, 0xd
/* DA7270 80100980 15790003 */  bne        $t3, $t9, .L80100990
/* DA7274 80100984 00000000 */   nop
/* DA7278 80100988 1000005A */  b          .L80100AF4
/* DA727C 8010098C AD0C0000 */   sw        $t4, ($t0)
.L80100990:
/* DA7280 80100990 10000058 */  b          .L80100AF4
/* DA7284 80100994 AD0D0000 */   sw        $t5, ($t0)
.L80100998:
/* DA7288 80100998 8D0E0000 */  lw         $t6, ($t0)
/* DA728C 8010099C 240F000C */  addiu      $t7, $zero, 0xc
/* DA7290 801009A0 2418000E */  addiu      $t8, $zero, 0xe
/* DA7294 801009A4 156E0003 */  bne        $t3, $t6, .L801009B4
/* DA7298 801009A8 00000000 */   nop
/* DA729C 801009AC 10000051 */  b          .L80100AF4
/* DA72A0 801009B0 AD0F0000 */   sw        $t7, ($t0)
.L801009B4:
/* DA72A4 801009B4 1000004F */  b          .L80100AF4
/* DA72A8 801009B8 AD180000 */   sw        $t8, ($t0)
.L801009BC:
/* DA72AC 801009BC 1320004D */  beqz       $t9, .L80100AF4
/* DA72B0 801009C0 01402025 */   or        $a0, $t2, $zero
/* DA72B4 801009C4 240500FF */  addiu      $a1, $zero, 0xff
/* DA72B8 801009C8 0C0096E3 */  jal        func_80025B8C
/* DA72BC 801009CC 24060040 */   addiu     $a2, $zero, 0x40
/* DA72C0 801009D0 3C078012 */  lui        $a3, %hi(D_8011AD3C)
/* DA72C4 801009D4 3C088012 */  lui        $t0, %hi(D_8011AD44)
/* DA72C8 801009D8 3C098012 */  lui        $t1, %hi(D_8011AD40)
/* DA72CC 801009DC 2529AD40 */  addiu      $t1, $t1, %lo(D_8011AD40)
/* DA72D0 801009E0 2508AD44 */  addiu      $t0, $t0, %lo(D_8011AD44)
/* DA72D4 801009E4 24E7AD3C */  addiu      $a3, $a3, %lo(D_8011AD3C)
/* DA72D8 801009E8 240A0002 */  addiu      $t2, $zero, 2
/* DA72DC 801009EC 240C00FF */  addiu      $t4, $zero, 0xff
/* DA72E0 801009F0 240D0080 */  addiu      $t5, $zero, 0x80
/* DA72E4 801009F4 ACEC0000 */  sw         $t4, ($a3)
/* DA72E8 801009F8 AD2D0000 */  sw         $t5, ($t1)
/* DA72EC 801009FC AD0A0000 */  sw         $t2, ($t0)
/* DA72F0 80100A00 3C018012 */  lui        $at, %hi(D_8011AD34)
/* DA72F4 80100A04 AC2AAD34 */  sw         $t2, %lo(D_8011AD34)($at)
/* DA72F8 80100A08 3C018010 */  lui        $at, %hi(D_80103110)
/* DA72FC 80100A0C 240E0001 */  addiu      $t6, $zero, 1
/* DA7300 80100A10 10000038 */  b          .L80100AF4
/* DA7304 80100A14 AC2E3110 */   sw        $t6, %lo(D_80103110)($at)
/* DA7308 80100A18 24010006 */  addiu      $at, $zero, 6
.L80100A1C:
/* DA730C 80100A1C 54410019 */  bnel       $v0, $at, .L80100A84
/* DA7310 80100A20 24010009 */   addiu     $at, $zero, 9
/* DA7314 80100A24 946F0000 */  lhu        $t7, ($v1)
/* DA7318 80100A28 01402025 */  or         $a0, $t2, $zero
/* DA731C 80100A2C 240500FF */  addiu      $a1, $zero, 0xff
/* DA7320 80100A30 31F8F000 */  andi       $t8, $t7, 0xf000
/* DA7324 80100A34 1300002F */  beqz       $t8, .L80100AF4
/* DA7328 80100A38 00000000 */   nop
/* DA732C 80100A3C 0C0096E3 */  jal        func_80025B8C
/* DA7330 80100A40 24060040 */   addiu     $a2, $zero, 0x40
/* DA7334 80100A44 3C078012 */  lui        $a3, %hi(D_8011AD3C)
/* DA7338 80100A48 3C088012 */  lui        $t0, %hi(D_8011AD44)
/* DA733C 80100A4C 3C098012 */  lui        $t1, %hi(D_8011AD40)
/* DA7340 80100A50 2529AD40 */  addiu      $t1, $t1, %lo(D_8011AD40)
/* DA7344 80100A54 2508AD44 */  addiu      $t0, $t0, %lo(D_8011AD44)
/* DA7348 80100A58 24E7AD3C */  addiu      $a3, $a3, %lo(D_8011AD3C)
/* DA734C 80100A5C 240A0002 */  addiu      $t2, $zero, 2
/* DA7350 80100A60 241900FF */  addiu      $t9, $zero, 0xff
/* DA7354 80100A64 240C0080 */  addiu      $t4, $zero, 0x80
/* DA7358 80100A68 ACF90000 */  sw         $t9, ($a3)
/* DA735C 80100A6C AD2C0000 */  sw         $t4, ($t1)
/* DA7360 80100A70 AD0A0000 */  sw         $t2, ($t0)
/* DA7364 80100A74 3C018012 */  lui        $at, %hi(D_8011AD34)
/* DA7368 80100A78 1000001E */  b          .L80100AF4
/* DA736C 80100A7C AC2AAD34 */   sw        $t2, %lo(D_8011AD34)($at)
/* DA7370 80100A80 24010009 */  addiu      $at, $zero, 9
.L80100A84:
/* DA7374 80100A84 5441000E */  bnel       $v0, $at, .L80100AC0
/* DA7378 80100A88 2401000A */   addiu     $at, $zero, 0xa
/* DA737C 80100A8C 946D0000 */  lhu        $t5, ($v1)
/* DA7380 80100A90 24040001 */  addiu      $a0, $zero, 1
/* DA7384 80100A94 240500FF */  addiu      $a1, $zero, 0xff
/* DA7388 80100A98 31AEB000 */  andi       $t6, $t5, 0xb000
/* DA738C 80100A9C 11C00015 */  beqz       $t6, .L80100AF4
/* DA7390 80100AA0 00000000 */   nop
/* DA7394 80100AA4 0C0096E3 */  jal        func_80025B8C
/* DA7398 80100AA8 24060040 */   addiu     $a2, $zero, 0x40
/* DA739C 80100AAC 240F0001 */  addiu      $t7, $zero, 1
/* DA73A0 80100AB0 3C018010 */  lui        $at, %hi(D_80103110)
/* DA73A4 80100AB4 1000000F */  b          .L80100AF4
/* DA73A8 80100AB8 AC2F3110 */   sw        $t7, %lo(D_80103110)($at)
/* DA73AC 80100ABC 2401000A */  addiu      $at, $zero, 0xa
.L80100AC0:
/* DA73B0 80100AC0 1441000C */  bne        $v0, $at, .L80100AF4
/* DA73B4 80100AC4 00000000 */   nop
/* DA73B8 80100AC8 94780000 */  lhu        $t8, ($v1)
/* DA73BC 80100ACC 24040001 */  addiu      $a0, $zero, 1
/* DA73C0 80100AD0 240500FF */  addiu      $a1, $zero, 0xff
/* DA73C4 80100AD4 3319B000 */  andi       $t9, $t8, 0xb000
/* DA73C8 80100AD8 13200006 */  beqz       $t9, .L80100AF4
/* DA73CC 80100ADC 00000000 */   nop
/* DA73D0 80100AE0 0C0096E3 */  jal        func_80025B8C
/* DA73D4 80100AE4 24060040 */   addiu     $a2, $zero, 0x40
/* DA73D8 80100AE8 240C0001 */  addiu      $t4, $zero, 1
/* DA73DC 80100AEC 3C018010 */  lui        $at, %hi(D_80103110)
/* DA73E0 80100AF0 AC2C3110 */  sw         $t4, %lo(D_80103110)($at)
.L80100AF4:
/* DA73E4 80100AF4 3C0D8012 */  lui        $t5, %hi(D_8011AD34)
/* DA73E8 80100AF8 8DADAD34 */  lw         $t5, %lo(D_8011AD34)($t5)
/* DA73EC 80100AFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* DA73F0 80100B00 3C018012 */  lui        $at, %hi(D_8011AD34)
/* DA73F4 80100B04 25AEFFFF */  addiu      $t6, $t5, -1
/* DA73F8 80100B08 AC2EAD34 */  sw         $t6, %lo(D_8011AD34)($at)
/* DA73FC 80100B0C 03E00008 */  jr         $ra
/* DA7400 80100B10 27BD0018 */   addiu     $sp, $sp, 0x18
