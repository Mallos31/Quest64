glabel func_8003EE60
/* 3FA60 8003EE60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3FA64 8003EE64 AFA50020 */  sw         $a1, 0x20($sp)
/* 3FA68 8003EE68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FA6C 8003EE6C 30AE00FF */  andi       $t6, $a1, 0xff
/* 3FA70 8003EE70 29C10026 */  slti       $at, $t6, 0x26
/* 3FA74 8003EE74 01C02825 */  or         $a1, $t6, $zero
/* 3FA78 8003EE78 AE00000C */  sw         $zero, 0xc($s0)
/* 3FA7C 8003EE7C AE000010 */  sw         $zero, 0x10($s0)
/* 3FA80 8003EE80 AE000014 */  sw         $zero, 0x14($s0)
/* 3FA84 8003EE84 AE000018 */  sw         $zero, 0x18($s0)
/* 3FA88 8003EE88 AE00001C */  sw         $zero, 0x1c($s0)
/* 3FA8C 8003EE8C AE000020 */  sw         $zero, 0x20($s0)
/* 3FA90 8003EE90 1420000A */  bnez       $at, .L8003EEBC
/* 3FA94 8003EE94 01C01825 */   or        $v1, $t6, $zero
/* 3FA98 8003EE98 25CFFFBB */  addiu      $t7, $t6, -0x45
/* 3FA9C 8003EE9C 2DE10034 */  sltiu      $at, $t7, 0x34
/* 3FAA0 8003EEA0 10200181 */  beqz       $at, .L8003F4A8
/* 3FAA4 8003EEA4 000F7880 */   sll       $t7, $t7, 2
/* 3FAA8 8003EEA8 3C018007 */  lui        $at, 0x8007
/* 3FAAC 8003EEAC 002F0821 */  addu       $at, $at, $t7
/* 3FAB0 8003EEB0 8C2F1F44 */  lw         $t7, 0x1f44($at)
/* 3FAB4 8003EEB4 01E00008 */  jr         $t7
/* 3FAB8 8003EEB8 00000000 */   nop       
.L8003EEBC:
/* 3FABC 8003EEBC 24010025 */  addiu      $at, $zero, 0x25
/* 3FAC0 8003EEC0 50610172 */  beql       $v1, $at, .L8003F48C
/* 3FAC4 8003EEC4 8E18000C */   lw        $t8, 0xc($s0)
/* 3FAC8 8003EEC8 10000178 */  b          .L8003F4AC
/* 3FACC 8003EECC 8E0E000C */   lw        $t6, 0xc($s0)
/* 3FAD0 8003EED0 8CD80000 */  lw         $t8, ($a2)
/* 3FAD4 8003EED4 2401FFFC */  addiu      $at, $zero, -4
/* 3FAD8 8003EED8 27190003 */  addiu      $t9, $t8, 3
/* 3FADC 8003EEDC 03217024 */  and        $t6, $t9, $at
/* 3FAE0 8003EEE0 25CF0004 */  addiu      $t7, $t6, 4
/* 3FAE4 8003EEE4 ACCF0000 */  sw         $t7, ($a2)
/* 3FAE8 8003EEE8 8E0E000C */  lw         $t6, 0xc($s0)
/* 3FAEC 8003EEEC 8DF9FFFC */  lw         $t9, -4($t7)
/* 3FAF0 8003EEF0 00EE7821 */  addu       $t7, $a3, $t6
/* 3FAF4 8003EEF4 A1F90000 */  sb         $t9, ($t7)
/* 3FAF8 8003EEF8 8E18000C */  lw         $t8, 0xc($s0)
/* 3FAFC 8003EEFC 270E0001 */  addiu      $t6, $t8, 1
/* 3FB00 8003EF00 1000016F */  b          .L8003F4C0
/* 3FB04 8003EF04 AE0E000C */   sw        $t6, 0xc($s0)
/* 3FB08 8003EF08 92020034 */  lbu        $v0, 0x34($s0)
/* 3FB0C 8003EF0C 2401006C */  addiu      $at, $zero, 0x6c
/* 3FB10 8003EF10 5441000D */  bnel       $v0, $at, .L8003EF48
/* 3FB14 8003EF14 2401004C */   addiu     $at, $zero, 0x4c
/* 3FB18 8003EF18 8CD90000 */  lw         $t9, ($a2)
/* 3FB1C 8003EF1C 2401FFFC */  addiu      $at, $zero, -4
/* 3FB20 8003EF20 272F0003 */  addiu      $t7, $t9, 3
/* 3FB24 8003EF24 01E1C024 */  and        $t8, $t7, $at
/* 3FB28 8003EF28 270E0004 */  addiu      $t6, $t8, 4
/* 3FB2C 8003EF2C ACCE0000 */  sw         $t6, ($a2)
/* 3FB30 8003EF30 8DCFFFFC */  lw         $t7, -4($t6)
/* 3FB34 8003EF34 000FC7C3 */  sra        $t8, $t7, 0x1f
/* 3FB38 8003EF38 AE180000 */  sw         $t8, ($s0)
/* 3FB3C 8003EF3C 10000019 */  b          .L8003EFA4
/* 3FB40 8003EF40 AE0F0004 */   sw        $t7, 4($s0)
/* 3FB44 8003EF44 2401004C */  addiu      $at, $zero, 0x4c
.L8003EF48:
/* 3FB48 8003EF48 5441000D */  bnel       $v0, $at, .L8003EF80
/* 3FB4C 8003EF4C 8CCF0000 */   lw        $t7, ($a2)
/* 3FB50 8003EF50 8CCE0000 */  lw         $t6, ($a2)
/* 3FB54 8003EF54 2401FFF8 */  addiu      $at, $zero, -8
/* 3FB58 8003EF58 25CF0007 */  addiu      $t7, $t6, 7
/* 3FB5C 8003EF5C 01E1C024 */  and        $t8, $t7, $at
/* 3FB60 8003EF60 27190008 */  addiu      $t9, $t8, 8
/* 3FB64 8003EF64 ACD90000 */  sw         $t9, ($a2)
/* 3FB68 8003EF68 8F38FFF8 */  lw         $t8, -8($t9)
/* 3FB6C 8003EF6C 8F39FFFC */  lw         $t9, -4($t9)
/* 3FB70 8003EF70 AE180000 */  sw         $t8, ($s0)
/* 3FB74 8003EF74 1000000B */  b          .L8003EFA4
/* 3FB78 8003EF78 AE190004 */   sw        $t9, 4($s0)
/* 3FB7C 8003EF7C 8CCF0000 */  lw         $t7, ($a2)
.L8003EF80:
/* 3FB80 8003EF80 2401FFFC */  addiu      $at, $zero, -4
/* 3FB84 8003EF84 25EE0003 */  addiu      $t6, $t7, 3
/* 3FB88 8003EF88 01C1C024 */  and        $t8, $t6, $at
/* 3FB8C 8003EF8C 27190004 */  addiu      $t9, $t8, 4
/* 3FB90 8003EF90 ACD90000 */  sw         $t9, ($a2)
/* 3FB94 8003EF94 8F2EFFFC */  lw         $t6, -4($t9)
/* 3FB98 8003EF98 000EC7C3 */  sra        $t8, $t6, 0x1f
/* 3FB9C 8003EF9C AE180000 */  sw         $t8, ($s0)
/* 3FBA0 8003EFA0 AE0E0004 */  sw         $t6, 4($s0)
.L8003EFA4:
/* 3FBA4 8003EFA4 920F0034 */  lbu        $t7, 0x34($s0)
/* 3FBA8 8003EFA8 24010068 */  addiu      $at, $zero, 0x68
/* 3FBAC 8003EFAC 55E10008 */  bnel       $t7, $at, .L8003EFD0
/* 3FBB0 8003EFB0 8E0E0000 */   lw        $t6, ($s0)
/* 3FBB4 8003EFB4 8E0F0004 */  lw         $t7, 4($s0)
/* 3FBB8 8003EFB8 000FCC00 */  sll        $t9, $t7, 0x10
/* 3FBBC 8003EFBC 00197403 */  sra        $t6, $t9, 0x10
/* 3FBC0 8003EFC0 000EC7C3 */  sra        $t8, $t6, 0x1f
/* 3FBC4 8003EFC4 AE180000 */  sw         $t8, ($s0)
/* 3FBC8 8003EFC8 AE0E0004 */  sw         $t6, 4($s0)
/* 3FBCC 8003EFCC 8E0E0000 */  lw         $t6, ($s0)
.L8003EFD0:
/* 3FBD0 8003EFD0 5DC0000E */  bgtzl      $t6, .L8003F00C
/* 3FBD4 8003EFD4 8E020030 */   lw        $v0, 0x30($s0)
/* 3FBD8 8003EFD8 05C20004 */  bltzl      $t6, .L8003EFEC
/* 3FBDC 8003EFDC 8E19000C */   lw        $t9, 0xc($s0)
/* 3FBE0 8003EFE0 1000000A */  b          .L8003F00C
/* 3FBE4 8003EFE4 8E020030 */   lw        $v0, 0x30($s0)
/* 3FBE8 8003EFE8 8E19000C */  lw         $t9, 0xc($s0)
.L8003EFEC:
/* 3FBEC 8003EFEC 2418002D */  addiu      $t8, $zero, 0x2d
/* 3FBF0 8003EFF0 00F97021 */  addu       $t6, $a3, $t9
/* 3FBF4 8003EFF4 A1D80000 */  sb         $t8, ($t6)
/* 3FBF8 8003EFF8 8E0F000C */  lw         $t7, 0xc($s0)
/* 3FBFC 8003EFFC 25F90001 */  addiu      $t9, $t7, 1
/* 3FC00 8003F000 10000016 */  b          .L8003F05C
/* 3FC04 8003F004 AE19000C */   sw        $t9, 0xc($s0)
/* 3FC08 8003F008 8E020030 */  lw         $v0, 0x30($s0)
.L8003F00C:
/* 3FC0C 8003F00C 30580002 */  andi       $t8, $v0, 2
/* 3FC10 8003F010 13000009 */  beqz       $t8, .L8003F038
/* 3FC14 8003F014 304E0001 */   andi      $t6, $v0, 1
/* 3FC18 8003F018 8E0F000C */  lw         $t7, 0xc($s0)
/* 3FC1C 8003F01C 240E002B */  addiu      $t6, $zero, 0x2b
/* 3FC20 8003F020 00EFC821 */  addu       $t9, $a3, $t7
/* 3FC24 8003F024 A32E0000 */  sb         $t6, ($t9)
/* 3FC28 8003F028 8E18000C */  lw         $t8, 0xc($s0)
/* 3FC2C 8003F02C 270F0001 */  addiu      $t7, $t8, 1
/* 3FC30 8003F030 1000000A */  b          .L8003F05C
/* 3FC34 8003F034 AE0F000C */   sw        $t7, 0xc($s0)
.L8003F038:
/* 3FC38 8003F038 51C00009 */  beql       $t6, $zero, .L8003F060
/* 3FC3C 8003F03C 8E19000C */   lw        $t9, 0xc($s0)
/* 3FC40 8003F040 8E18000C */  lw         $t8, 0xc($s0)
/* 3FC44 8003F044 24190020 */  addiu      $t9, $zero, 0x20
/* 3FC48 8003F048 00F87821 */  addu       $t7, $a3, $t8
/* 3FC4C 8003F04C A1F90000 */  sb         $t9, ($t7)
/* 3FC50 8003F050 8E0E000C */  lw         $t6, 0xc($s0)
/* 3FC54 8003F054 25D80001 */  addiu      $t8, $t6, 1
/* 3FC58 8003F058 AE18000C */  sw         $t8, 0xc($s0)
.L8003F05C:
/* 3FC5C 8003F05C 8E19000C */  lw         $t9, 0xc($s0)
.L8003F060:
/* 3FC60 8003F060 02002025 */  or         $a0, $s0, $zero
/* 3FC64 8003F064 03277821 */  addu       $t7, $t9, $a3
/* 3FC68 8003F068 0C011F38 */  jal        func_80047CE0
/* 3FC6C 8003F06C AE0F0008 */   sw        $t7, 8($s0)
/* 3FC70 8003F070 10000114 */  b          .L8003F4C4
/* 3FC74 8003F074 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3FC78 8003F078 92020034 */  lbu        $v0, 0x34($s0)
/* 3FC7C 8003F07C 2401006C */  addiu      $at, $zero, 0x6c
/* 3FC80 8003F080 5441000D */  bnel       $v0, $at, .L8003F0B8
/* 3FC84 8003F084 2401004C */   addiu     $at, $zero, 0x4c
/* 3FC88 8003F088 8CCE0000 */  lw         $t6, ($a2)
/* 3FC8C 8003F08C 2401FFFC */  addiu      $at, $zero, -4
/* 3FC90 8003F090 25D80003 */  addiu      $t8, $t6, 3
/* 3FC94 8003F094 0301C824 */  and        $t9, $t8, $at
/* 3FC98 8003F098 272F0004 */  addiu      $t7, $t9, 4
/* 3FC9C 8003F09C ACCF0000 */  sw         $t7, ($a2)
/* 3FCA0 8003F0A0 8DF8FFFC */  lw         $t8, -4($t7)
/* 3FCA4 8003F0A4 001877C3 */  sra        $t6, $t8, 0x1f
/* 3FCA8 8003F0A8 AE0E0000 */  sw         $t6, ($s0)
/* 3FCAC 8003F0AC 10000019 */  b          .L8003F114
/* 3FCB0 8003F0B0 AE180004 */   sw        $t8, 4($s0)
/* 3FCB4 8003F0B4 2401004C */  addiu      $at, $zero, 0x4c
.L8003F0B8:
/* 3FCB8 8003F0B8 5441000D */  bnel       $v0, $at, .L8003F0F0
/* 3FCBC 8003F0BC 8CCE0000 */   lw        $t6, ($a2)
/* 3FCC0 8003F0C0 8CD90000 */  lw         $t9, ($a2)
/* 3FCC4 8003F0C4 2401FFF8 */  addiu      $at, $zero, -8
/* 3FCC8 8003F0C8 27380007 */  addiu      $t8, $t9, 7
/* 3FCCC 8003F0CC 03017024 */  and        $t6, $t8, $at
/* 3FCD0 8003F0D0 25CF0008 */  addiu      $t7, $t6, 8
/* 3FCD4 8003F0D4 ACCF0000 */  sw         $t7, ($a2)
/* 3FCD8 8003F0D8 8DF9FFFC */  lw         $t9, -4($t7)
/* 3FCDC 8003F0DC 8DF8FFF8 */  lw         $t8, -8($t7)
/* 3FCE0 8003F0E0 AE190004 */  sw         $t9, 4($s0)
/* 3FCE4 8003F0E4 1000000B */  b          .L8003F114
/* 3FCE8 8003F0E8 AE180000 */   sw        $t8, ($s0)
/* 3FCEC 8003F0EC 8CCE0000 */  lw         $t6, ($a2)
.L8003F0F0:
/* 3FCF0 8003F0F0 2401FFFC */  addiu      $at, $zero, -4
/* 3FCF4 8003F0F4 25CF0003 */  addiu      $t7, $t6, 3
/* 3FCF8 8003F0F8 01E1C024 */  and        $t8, $t7, $at
/* 3FCFC 8003F0FC 27190004 */  addiu      $t9, $t8, 4
/* 3FD00 8003F100 ACD90000 */  sw         $t9, ($a2)
/* 3FD04 8003F104 8F2FFFFC */  lw         $t7, -4($t9)
/* 3FD08 8003F108 000FC7C3 */  sra        $t8, $t7, 0x1f
/* 3FD0C 8003F10C AE180000 */  sw         $t8, ($s0)
/* 3FD10 8003F110 AE0F0004 */  sw         $t7, 4($s0)
.L8003F114:
/* 3FD14 8003F114 92020034 */  lbu        $v0, 0x34($s0)
/* 3FD18 8003F118 24010068 */  addiu      $at, $zero, 0x68
/* 3FD1C 8003F11C 14410007 */  bne        $v0, $at, .L8003F13C
/* 3FD20 8003F120 00000000 */   nop       
/* 3FD24 8003F124 8E0F0004 */  lw         $t7, 4($s0)
/* 3FD28 8003F128 240E0000 */  addiu      $t6, $zero, 0
/* 3FD2C 8003F12C AE0E0000 */  sw         $t6, ($s0)
/* 3FD30 8003F130 31F9FFFF */  andi       $t9, $t7, 0xffff
/* 3FD34 8003F134 10000007 */  b          .L8003F154
/* 3FD38 8003F138 AE190004 */   sw        $t9, 4($s0)
.L8003F13C:
/* 3FD3C 8003F13C 54400006 */  bnel       $v0, $zero, .L8003F158
/* 3FD40 8003F140 8E0F0030 */   lw        $t7, 0x30($s0)
/* 3FD44 8003F144 8E190004 */  lw         $t9, 4($s0)
/* 3FD48 8003F148 24180000 */  addiu      $t8, $zero, 0
/* 3FD4C 8003F14C AE180000 */  sw         $t8, ($s0)
/* 3FD50 8003F150 AE190004 */  sw         $t9, 4($s0)
.L8003F154:
/* 3FD54 8003F154 8E0F0030 */  lw         $t7, 0x30($s0)
.L8003F158:
/* 3FD58 8003F158 31EE0008 */  andi       $t6, $t7, 8
/* 3FD5C 8003F15C 51C00014 */  beql       $t6, $zero, .L8003F1B0
/* 3FD60 8003F160 8E18000C */   lw        $t8, 0xc($s0)
/* 3FD64 8003F164 8E19000C */  lw         $t9, 0xc($s0)
/* 3FD68 8003F168 24180030 */  addiu      $t8, $zero, 0x30
/* 3FD6C 8003F16C 24010078 */  addiu      $at, $zero, 0x78
/* 3FD70 8003F170 00F97821 */  addu       $t7, $a3, $t9
/* 3FD74 8003F174 A1F80000 */  sb         $t8, ($t7)
/* 3FD78 8003F178 8E0E000C */  lw         $t6, 0xc($s0)
/* 3FD7C 8003F17C 25D90001 */  addiu      $t9, $t6, 1
/* 3FD80 8003F180 10610004 */  beq        $v1, $at, .L8003F194
/* 3FD84 8003F184 AE19000C */   sw        $t9, 0xc($s0)
/* 3FD88 8003F188 24010058 */  addiu      $at, $zero, 0x58
/* 3FD8C 8003F18C 54610008 */  bnel       $v1, $at, .L8003F1B0
/* 3FD90 8003F190 8E18000C */   lw        $t8, 0xc($s0)
.L8003F194:
/* 3FD94 8003F194 8E18000C */  lw         $t8, 0xc($s0)
/* 3FD98 8003F198 00F87821 */  addu       $t7, $a3, $t8
/* 3FD9C 8003F19C A1E50000 */  sb         $a1, ($t7)
/* 3FDA0 8003F1A0 8E0E000C */  lw         $t6, 0xc($s0)
/* 3FDA4 8003F1A4 25D90001 */  addiu      $t9, $t6, 1
/* 3FDA8 8003F1A8 AE19000C */  sw         $t9, 0xc($s0)
/* 3FDAC 8003F1AC 8E18000C */  lw         $t8, 0xc($s0)
.L8003F1B0:
/* 3FDB0 8003F1B0 02002025 */  or         $a0, $s0, $zero
/* 3FDB4 8003F1B4 03077821 */  addu       $t7, $t8, $a3
/* 3FDB8 8003F1B8 0C011F38 */  jal        func_80047CE0
/* 3FDBC 8003F1BC AE0F0008 */   sw        $t7, 8($s0)
/* 3FDC0 8003F1C0 100000C0 */  b          .L8003F4C4
/* 3FDC4 8003F1C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3FDC8 8003F1C8 920E0034 */  lbu        $t6, 0x34($s0)
/* 3FDCC 8003F1CC 2401004C */  addiu      $at, $zero, 0x4c
/* 3FDD0 8003F1D0 55C10019 */  bnel       $t6, $at, .L8003F238
/* 3FDD4 8003F1D4 8CC20000 */   lw        $v0, ($a2)
/* 3FDD8 8003F1D8 8CC20000 */  lw         $v0, ($a2)
/* 3FDDC 8003F1DC 30590001 */  andi       $t9, $v0, 1
/* 3FDE0 8003F1E0 13200005 */  beqz       $t9, .L8003F1F8
/* 3FDE4 8003F1E4 00401825 */   or        $v1, $v0, $zero
/* 3FDE8 8003F1E8 24780007 */  addiu      $t8, $v1, 7
/* 3FDEC 8003F1EC ACD80000 */  sw         $t8, ($a2)
/* 3FDF0 8003F1F0 1000000D */  b          .L8003F228
/* 3FDF4 8003F1F4 2702FFEA */   addiu     $v0, $t8, -0x16
.L8003F1F8:
/* 3FDF8 8003F1F8 306F0002 */  andi       $t7, $v1, 2
/* 3FDFC 8003F1FC 11E00005 */  beqz       $t7, .L8003F214
/* 3FE00 8003F200 24590007 */   addiu     $t9, $v0, 7
/* 3FE04 8003F204 246E000A */  addiu      $t6, $v1, 0xa
/* 3FE08 8003F208 ACCE0000 */  sw         $t6, ($a2)
/* 3FE0C 8003F20C 10000005 */  b          .L8003F224
/* 3FE10 8003F210 25C4FFD8 */   addiu     $a0, $t6, -0x28
.L8003F214:
/* 3FE14 8003F214 2401FFF8 */  addiu      $at, $zero, -8
/* 3FE18 8003F218 0321C024 */  and        $t8, $t9, $at
/* 3FE1C 8003F21C 27040008 */  addiu      $a0, $t8, 8
/* 3FE20 8003F220 ACC40000 */  sw         $a0, ($a2)
.L8003F224:
/* 3FE24 8003F224 00801025 */  or         $v0, $a0, $zero
.L8003F228:
/* 3FE28 8003F228 D444FFF8 */  ldc1       $f4, -8($v0)
/* 3FE2C 8003F22C 10000017 */  b          .L8003F28C
/* 3FE30 8003F230 F6040000 */   sdc1      $f4, ($s0)
/* 3FE34 8003F234 8CC20000 */  lw         $v0, ($a2)
.L8003F238:
/* 3FE38 8003F238 304E0001 */  andi       $t6, $v0, 1
/* 3FE3C 8003F23C 11C00005 */  beqz       $t6, .L8003F254
/* 3FE40 8003F240 00401825 */   or        $v1, $v0, $zero
/* 3FE44 8003F244 24790007 */  addiu      $t9, $v1, 7
/* 3FE48 8003F248 ACD90000 */  sw         $t9, ($a2)
/* 3FE4C 8003F24C 1000000D */  b          .L8003F284
/* 3FE50 8003F250 2722FFEA */   addiu     $v0, $t9, -0x16
.L8003F254:
/* 3FE54 8003F254 30780002 */  andi       $t8, $v1, 2
/* 3FE58 8003F258 13000005 */  beqz       $t8, .L8003F270
/* 3FE5C 8003F25C 244E0007 */   addiu     $t6, $v0, 7
/* 3FE60 8003F260 246F000A */  addiu      $t7, $v1, 0xa
/* 3FE64 8003F264 ACCF0000 */  sw         $t7, ($a2)
/* 3FE68 8003F268 10000005 */  b          .L8003F280
/* 3FE6C 8003F26C 25E4FFD8 */   addiu     $a0, $t7, -0x28
.L8003F270:
/* 3FE70 8003F270 2401FFF8 */  addiu      $at, $zero, -8
/* 3FE74 8003F274 01C1C824 */  and        $t9, $t6, $at
/* 3FE78 8003F278 27240008 */  addiu      $a0, $t9, 8
/* 3FE7C 8003F27C ACC40000 */  sw         $a0, ($a2)
.L8003F280:
/* 3FE80 8003F280 00801025 */  or         $v0, $a0, $zero
.L8003F284:
/* 3FE84 8003F284 D446FFF8 */  ldc1       $f6, -8($v0)
/* 3FE88 8003F288 F6060000 */  sdc1       $f6, ($s0)
.L8003F28C:
/* 3FE8C 8003F28C 960F0000 */  lhu        $t7, ($s0)
/* 3FE90 8003F290 31EE8000 */  andi       $t6, $t7, 0x8000
/* 3FE94 8003F294 51C0000A */  beql       $t6, $zero, .L8003F2C0
/* 3FE98 8003F298 8E020030 */   lw        $v0, 0x30($s0)
/* 3FE9C 8003F29C 8E18000C */  lw         $t8, 0xc($s0)
/* 3FEA0 8003F2A0 2419002D */  addiu      $t9, $zero, 0x2d
/* 3FEA4 8003F2A4 00F87821 */  addu       $t7, $a3, $t8
/* 3FEA8 8003F2A8 A1F90000 */  sb         $t9, ($t7)
/* 3FEAC 8003F2AC 8E0E000C */  lw         $t6, 0xc($s0)
/* 3FEB0 8003F2B0 25D80001 */  addiu      $t8, $t6, 1
/* 3FEB4 8003F2B4 10000016 */  b          .L8003F310
/* 3FEB8 8003F2B8 AE18000C */   sw        $t8, 0xc($s0)
/* 3FEBC 8003F2BC 8E020030 */  lw         $v0, 0x30($s0)
.L8003F2C0:
/* 3FEC0 8003F2C0 30590002 */  andi       $t9, $v0, 2
/* 3FEC4 8003F2C4 13200009 */  beqz       $t9, .L8003F2EC
/* 3FEC8 8003F2C8 304F0001 */   andi      $t7, $v0, 1
/* 3FECC 8003F2CC 8E0E000C */  lw         $t6, 0xc($s0)
/* 3FED0 8003F2D0 240F002B */  addiu      $t7, $zero, 0x2b
/* 3FED4 8003F2D4 00EEC021 */  addu       $t8, $a3, $t6
/* 3FED8 8003F2D8 A30F0000 */  sb         $t7, ($t8)
/* 3FEDC 8003F2DC 8E19000C */  lw         $t9, 0xc($s0)
/* 3FEE0 8003F2E0 272E0001 */  addiu      $t6, $t9, 1
/* 3FEE4 8003F2E4 1000000A */  b          .L8003F310
/* 3FEE8 8003F2E8 AE0E000C */   sw        $t6, 0xc($s0)
.L8003F2EC:
/* 3FEEC 8003F2EC 51E00009 */  beql       $t7, $zero, .L8003F314
/* 3FEF0 8003F2F0 8E18000C */   lw        $t8, 0xc($s0)
/* 3FEF4 8003F2F4 8E19000C */  lw         $t9, 0xc($s0)
/* 3FEF8 8003F2F8 24180020 */  addiu      $t8, $zero, 0x20
/* 3FEFC 8003F2FC 00F97021 */  addu       $t6, $a3, $t9
/* 3FF00 8003F300 A1D80000 */  sb         $t8, ($t6)
/* 3FF04 8003F304 8E0F000C */  lw         $t7, 0xc($s0)
/* 3FF08 8003F308 25F90001 */  addiu      $t9, $t7, 1
/* 3FF0C 8003F30C AE19000C */  sw         $t9, 0xc($s0)
.L8003F310:
/* 3FF10 8003F310 8E18000C */  lw         $t8, 0xc($s0)
.L8003F314:
/* 3FF14 8003F314 02002025 */  or         $a0, $s0, $zero
/* 3FF18 8003F318 03077021 */  addu       $t6, $t8, $a3
/* 3FF1C 8003F31C 0C01213C */  jal        func_800484F0
/* 3FF20 8003F320 AE0E0008 */   sw        $t6, 8($s0)
/* 3FF24 8003F324 10000067 */  b          .L8003F4C4
/* 3FF28 8003F328 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3FF2C 8003F32C 92020034 */  lbu        $v0, 0x34($s0)
/* 3FF30 8003F330 24010068 */  addiu      $at, $zero, 0x68
/* 3FF34 8003F334 5441000C */  bnel       $v0, $at, .L8003F368
/* 3FF38 8003F338 2401006C */   addiu     $at, $zero, 0x6c
/* 3FF3C 8003F33C 8CCF0000 */  lw         $t7, ($a2)
/* 3FF40 8003F340 2401FFFC */  addiu      $at, $zero, -4
/* 3FF44 8003F344 25F90003 */  addiu      $t9, $t7, 3
/* 3FF48 8003F348 0321C024 */  and        $t8, $t9, $at
/* 3FF4C 8003F34C 270E0004 */  addiu      $t6, $t8, 4
/* 3FF50 8003F350 ACCE0000 */  sw         $t6, ($a2)
/* 3FF54 8003F354 8DD9FFFC */  lw         $t9, -4($t6)
/* 3FF58 8003F358 8E0F002C */  lw         $t7, 0x2c($s0)
/* 3FF5C 8003F35C 10000058 */  b          .L8003F4C0
/* 3FF60 8003F360 A72F0000 */   sh        $t7, ($t9)
/* 3FF64 8003F364 2401006C */  addiu      $at, $zero, 0x6c
.L8003F368:
/* 3FF68 8003F368 5441000C */  bnel       $v0, $at, .L8003F39C
/* 3FF6C 8003F36C 2401004C */   addiu     $at, $zero, 0x4c
/* 3FF70 8003F370 8CD80000 */  lw         $t8, ($a2)
/* 3FF74 8003F374 2401FFFC */  addiu      $at, $zero, -4
/* 3FF78 8003F378 270E0003 */  addiu      $t6, $t8, 3
/* 3FF7C 8003F37C 01C17824 */  and        $t7, $t6, $at
/* 3FF80 8003F380 25F90004 */  addiu      $t9, $t7, 4
/* 3FF84 8003F384 ACD90000 */  sw         $t9, ($a2)
/* 3FF88 8003F388 8F2EFFFC */  lw         $t6, -4($t9)
/* 3FF8C 8003F38C 8E18002C */  lw         $t8, 0x2c($s0)
/* 3FF90 8003F390 1000004B */  b          .L8003F4C0
/* 3FF94 8003F394 ADD80000 */   sw        $t8, ($t6)
/* 3FF98 8003F398 2401004C */  addiu      $at, $zero, 0x4c
.L8003F39C:
/* 3FF9C 8003F39C 5441000E */  bnel       $v0, $at, .L8003F3D8
/* 3FFA0 8003F3A0 8CCF0000 */   lw        $t7, ($a2)
/* 3FFA4 8003F3A4 8CCF0000 */  lw         $t7, ($a2)
/* 3FFA8 8003F3A8 2401FFFC */  addiu      $at, $zero, -4
/* 3FFAC 8003F3AC 25F90003 */  addiu      $t9, $t7, 3
/* 3FFB0 8003F3B0 0321C024 */  and        $t8, $t9, $at
/* 3FFB4 8003F3B4 270E0004 */  addiu      $t6, $t8, 4
/* 3FFB8 8003F3B8 ACCE0000 */  sw         $t6, ($a2)
/* 3FFBC 8003F3BC 8DCEFFFC */  lw         $t6, -4($t6)
/* 3FFC0 8003F3C0 8E0F002C */  lw         $t7, 0x2c($s0)
/* 3FFC4 8003F3C4 24180000 */  addiu      $t8, $zero, 0
/* 3FFC8 8003F3C8 ADD80000 */  sw         $t8, ($t6)
/* 3FFCC 8003F3CC 1000003C */  b          .L8003F4C0
/* 3FFD0 8003F3D0 ADCF0004 */   sw        $t7, 4($t6)
/* 3FFD4 8003F3D4 8CCF0000 */  lw         $t7, ($a2)
.L8003F3D8:
/* 3FFD8 8003F3D8 2401FFFC */  addiu      $at, $zero, -4
/* 3FFDC 8003F3DC 25F80003 */  addiu      $t8, $t7, 3
/* 3FFE0 8003F3E0 0301C824 */  and        $t9, $t8, $at
/* 3FFE4 8003F3E4 272E0004 */  addiu      $t6, $t9, 4
/* 3FFE8 8003F3E8 ACCE0000 */  sw         $t6, ($a2)
/* 3FFEC 8003F3EC 8DD8FFFC */  lw         $t8, -4($t6)
/* 3FFF0 8003F3F0 8E0F002C */  lw         $t7, 0x2c($s0)
/* 3FFF4 8003F3F4 10000032 */  b          .L8003F4C0
/* 3FFF8 8003F3F8 AF0F0000 */   sw        $t7, ($t8)
/* 3FFFC 8003F3FC 8CD90000 */  lw         $t9, ($a2)
/* 40000 8003F400 2401FFFC */  addiu      $at, $zero, -4
/* 40004 8003F404 02002025 */  or         $a0, $s0, $zero
/* 40008 8003F408 272E0003 */  addiu      $t6, $t9, 3
/* 4000C 8003F40C 01C17824 */  and        $t7, $t6, $at
/* 40010 8003F410 25F80004 */  addiu      $t8, $t7, 4
/* 40014 8003F414 ACD80000 */  sw         $t8, ($a2)
/* 40018 8003F418 8F0EFFFC */  lw         $t6, -4($t8)
/* 4001C 8003F41C 8E0F000C */  lw         $t7, 0xc($s0)
/* 40020 8003F420 24050078 */  addiu      $a1, $zero, 0x78
/* 40024 8003F424 000EC7C3 */  sra        $t8, $t6, 0x1f
/* 40028 8003F428 AE0E0004 */  sw         $t6, 4($s0)
/* 4002C 8003F42C 01E77021 */  addu       $t6, $t7, $a3
/* 40030 8003F430 AE180000 */  sw         $t8, ($s0)
/* 40034 8003F434 0C011F38 */  jal        func_80047CE0
/* 40038 8003F438 AE0E0008 */   sw        $t6, 8($s0)
/* 4003C 8003F43C 10000021 */  b          .L8003F4C4
/* 40040 8003F440 8FBF0014 */   lw        $ra, 0x14($sp)
/* 40044 8003F444 8CD80000 */  lw         $t8, ($a2)
/* 40048 8003F448 2401FFFC */  addiu      $at, $zero, -4
/* 4004C 8003F44C 27190003 */  addiu      $t9, $t8, 3
/* 40050 8003F450 03217824 */  and        $t7, $t9, $at
/* 40054 8003F454 25EE0004 */  addiu      $t6, $t7, 4
/* 40058 8003F458 ACCE0000 */  sw         $t6, ($a2)
/* 4005C 8003F45C 8DC4FFFC */  lw         $a0, -4($t6)
/* 40060 8003F460 0C00FED3 */  jal        func_8003FB4C
/* 40064 8003F464 AE040008 */   sw        $a0, 8($s0)
/* 40068 8003F468 8E030024 */  lw         $v1, 0x24($s0)
/* 4006C 8003F46C AE020014 */  sw         $v0, 0x14($s0)
/* 40070 8003F470 04600013 */  bltz       $v1, .L8003F4C0
/* 40074 8003F474 0062082A */   slt       $at, $v1, $v0
/* 40078 8003F478 50200012 */  beql       $at, $zero, .L8003F4C4
/* 4007C 8003F47C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 40080 8003F480 1000000F */  b          .L8003F4C0
/* 40084 8003F484 AE030014 */   sw        $v1, 0x14($s0)
/* 40088 8003F488 8E18000C */  lw         $t8, 0xc($s0)
.L8003F48C:
/* 4008C 8003F48C 240E0025 */  addiu      $t6, $zero, 0x25
/* 40090 8003F490 00F8C821 */  addu       $t9, $a3, $t8
/* 40094 8003F494 A32E0000 */  sb         $t6, ($t9)
/* 40098 8003F498 8E0F000C */  lw         $t7, 0xc($s0)
/* 4009C 8003F49C 25F80001 */  addiu      $t8, $t7, 1
/* 400A0 8003F4A0 10000007 */  b          .L8003F4C0
/* 400A4 8003F4A4 AE18000C */   sw        $t8, 0xc($s0)
.L8003F4A8:
/* 400A8 8003F4A8 8E0E000C */  lw         $t6, 0xc($s0)
.L8003F4AC:
/* 400AC 8003F4AC 00EEC821 */  addu       $t9, $a3, $t6
/* 400B0 8003F4B0 A3250000 */  sb         $a1, ($t9)
/* 400B4 8003F4B4 8E0F000C */  lw         $t7, 0xc($s0)
/* 400B8 8003F4B8 25F80001 */  addiu      $t8, $t7, 1
/* 400BC 8003F4BC AE18000C */  sw         $t8, 0xc($s0)
.L8003F4C0:
/* 400C0 8003F4C0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003F4C4:
/* 400C4 8003F4C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 400C8 8003F4C8 03E00008 */  jr         $ra
/* 400CC 8003F4CC 00000000 */   nop       

glabel func_8003F4D0
/* 400D0 8003F4D0 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* 400D4 8003F4D4 AFB70034 */  sw         $s7, 0x34($sp)
/* 400D8 8003F4D8 AFB60030 */  sw         $s6, 0x30($sp)
/* 400DC 8003F4DC AFB5002C */  sw         $s5, 0x2c($sp)
/* 400E0 8003F4E0 AFBE0038 */  sw         $fp, 0x38($sp)
/* 400E4 8003F4E4 AFB40028 */  sw         $s4, 0x28($sp)
/* 400E8 8003F4E8 AFB30024 */  sw         $s3, 0x24($sp)
/* 400EC 8003F4EC AFA700E4 */  sw         $a3, 0xe4($sp)
/* 400F0 8003F4F0 3C158007 */  lui        $s5, 0x8007
/* 400F4 8003F4F4 3C168007 */  lui        $s6, 0x8007
/* 400F8 8003F4F8 3C178007 */  lui        $s7, 0x8007
/* 400FC 8003F4FC 00C03825 */  or         $a3, $a2, $zero
/* 40100 8003F500 00A09825 */  or         $s3, $a1, $zero
/* 40104 8003F504 0080A025 */  or         $s4, $a0, $zero
/* 40108 8003F508 AFBF003C */  sw         $ra, 0x3c($sp)
/* 4010C 8003F50C AFB20020 */  sw         $s2, 0x20($sp)
/* 40110 8003F510 AFB1001C */  sw         $s1, 0x1c($sp)
/* 40114 8003F514 AFB00018 */  sw         $s0, 0x18($sp)
/* 40118 8003F518 AFA600E0 */  sw         $a2, 0xe0($sp)
/* 4011C 8003F51C AFA000CC */  sw         $zero, 0xcc($sp)
/* 40120 8003F520 26F70AA0 */  addiu      $s7, $s7, 0xaa0
/* 40124 8003F524 26D61F24 */  addiu      $s6, $s6, 0x1f24
/* 40128 8003F528 26B50AC4 */  addiu      $s5, $s5, 0xac4
/* 4012C 8003F52C 241E000A */  addiu      $fp, $zero, 0xa
.L8003F530:
/* 40130 8003F530 90E20000 */  lbu        $v0, ($a3)
/* 40134 8003F534 00E09025 */  or         $s2, $a3, $zero
/* 40138 8003F538 24030025 */  addiu      $v1, $zero, 0x25
/* 4013C 8003F53C 10400009 */  beqz       $v0, .L8003F564
/* 40140 8003F540 00408025 */   or        $s0, $v0, $zero
/* 40144 8003F544 50620008 */  beql       $v1, $v0, .L8003F568
/* 40148 8003F548 02471023 */   subu      $v0, $s2, $a3
/* 4014C 8003F54C 92420001 */  lbu        $v0, 1($s2)
.L8003F550:
/* 40150 8003F550 26520001 */  addiu      $s2, $s2, 1
/* 40154 8003F554 10400003 */  beqz       $v0, .L8003F564
/* 40158 8003F558 00408025 */   or        $s0, $v0, $zero
/* 4015C 8003F55C 5462FFFC */  bnel       $v1, $v0, .L8003F550
/* 40160 8003F560 92420001 */   lbu       $v0, 1($s2)
.L8003F564:
/* 40164 8003F564 02471023 */  subu       $v0, $s2, $a3
.L8003F568:
/* 40168 8003F568 1840000D */  blez       $v0, .L8003F5A0
/* 4016C 8003F56C 02602025 */   or        $a0, $s3, $zero
/* 40170 8003F570 00E02825 */  or         $a1, $a3, $zero
/* 40174 8003F574 00408825 */  or         $s1, $v0, $zero
/* 40178 8003F578 0280F809 */  jalr       $s4
/* 4017C 8003F57C 00403025 */   or        $a2, $v0, $zero
/* 40180 8003F580 10400005 */  beqz       $v0, .L8003F598
/* 40184 8003F584 00409825 */   or        $s3, $v0, $zero
/* 40188 8003F588 8FAE00CC */  lw         $t6, 0xcc($sp)
/* 4018C 8003F58C 01D17821 */  addu       $t7, $t6, $s1
/* 40190 8003F590 10000003 */  b          .L8003F5A0
/* 40194 8003F594 AFAF00CC */   sw        $t7, 0xcc($sp)
.L8003F598:
/* 40198 8003F598 10000153 */  b          .L8003FAE8
/* 4019C 8003F59C 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003F5A0:
/* 401A0 8003F5A0 16000003 */  bnez       $s0, .L8003F5B0
/* 401A4 8003F5A4 26520001 */   addiu     $s2, $s2, 1
/* 401A8 8003F5A8 1000014F */  b          .L8003FAE8
/* 401AC 8003F5AC 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003F5B0:
/* 401B0 8003F5B0 AFA000D0 */  sw         $zero, 0xd0($sp)
/* 401B4 8003F5B4 92450000 */  lbu        $a1, ($s2)
/* 401B8 8003F5B8 0C00FEDD */  jal        func_8003FB74
/* 401BC 8003F5BC 02C02025 */   or        $a0, $s6, $zero
/* 401C0 8003F5C0 1040000F */  beqz       $v0, .L8003F600
/* 401C4 8003F5C4 00408025 */   or        $s0, $v0, $zero
.L8003F5C8:
/* 401C8 8003F5C8 0216C823 */  subu       $t9, $s0, $s6
/* 401CC 8003F5CC 00197080 */  sll        $t6, $t9, 2
/* 401D0 8003F5D0 3C0F8007 */  lui        $t7, 0x8007
/* 401D4 8003F5D4 01EE7821 */  addu       $t7, $t7, $t6
/* 401D8 8003F5D8 8DEF1F2C */  lw         $t7, 0x1f2c($t7)
/* 401DC 8003F5DC 8FB800D0 */  lw         $t8, 0xd0($sp)
/* 401E0 8003F5E0 26520001 */  addiu      $s2, $s2, 1
/* 401E4 8003F5E4 02C02025 */  or         $a0, $s6, $zero
/* 401E8 8003F5E8 030FC825 */  or         $t9, $t8, $t7
/* 401EC 8003F5EC AFB900D0 */  sw         $t9, 0xd0($sp)
/* 401F0 8003F5F0 0C00FEDD */  jal        func_8003FB74
/* 401F4 8003F5F4 92450000 */   lbu       $a1, ($s2)
/* 401F8 8003F5F8 1440FFF3 */  bnez       $v0, .L8003F5C8
/* 401FC 8003F5FC 00408025 */   or        $s0, $v0, $zero
.L8003F600:
/* 40200 8003F600 924E0000 */  lbu        $t6, ($s2)
/* 40204 8003F604 2402002A */  addiu      $v0, $zero, 0x2a
/* 40208 8003F608 8FB800E4 */  lw         $t8, 0xe4($sp)
/* 4020C 8003F60C 144E0011 */  bne        $v0, $t6, .L8003F654
/* 40210 8003F610 3C048007 */   lui       $a0, 0x8007
/* 40214 8003F614 270F0003 */  addiu      $t7, $t8, 3
/* 40218 8003F618 2401FFFC */  addiu      $at, $zero, -4
/* 4021C 8003F61C 01E1C824 */  and        $t9, $t7, $at
/* 40220 8003F620 272E0004 */  addiu      $t6, $t9, 4
/* 40224 8003F624 AFAE00E4 */  sw         $t6, 0xe4($sp)
/* 40228 8003F628 8F380000 */  lw         $t8, ($t9)
/* 4022C 8003F62C 26520001 */  addiu      $s2, $s2, 1
/* 40230 8003F630 07010006 */  bgez       $t8, .L8003F64C
/* 40234 8003F634 AFB800C8 */   sw        $t8, 0xc8($sp)
/* 40238 8003F638 8FAE00D0 */  lw         $t6, 0xd0($sp)
/* 4023C 8003F63C 00187823 */  negu       $t7, $t8
/* 40240 8003F640 AFAF00C8 */  sw         $t7, 0xc8($sp)
/* 40244 8003F644 35D90004 */  ori        $t9, $t6, 4
/* 40248 8003F648 AFB900D0 */  sw         $t9, 0xd0($sp)
.L8003F64C:
/* 4024C 8003F64C 10000018 */  b          .L8003F6B0
/* 40250 8003F650 92450000 */   lbu       $a1, ($s2)
.L8003F654:
/* 40254 8003F654 AFA000C8 */  sw         $zero, 0xc8($sp)
/* 40258 8003F658 92450000 */  lbu        $a1, ($s2)
/* 4025C 8003F65C 28A10030 */  slti       $at, $a1, 0x30
/* 40260 8003F660 14200013 */  bnez       $at, .L8003F6B0
/* 40264 8003F664 28A1003A */   slti      $at, $a1, 0x3a
/* 40268 8003F668 50200012 */  beql       $at, $zero, .L8003F6B4
/* 4026C 8003F66C 2401002E */   addiu     $at, $zero, 0x2e
/* 40270 8003F670 8FB800C8 */  lw         $t8, 0xc8($sp)
.L8003F674:
/* 40274 8003F674 2B0103E7 */  slti       $at, $t8, 0x3e7
/* 40278 8003F678 50200007 */  beql       $at, $zero, .L8003F698
/* 4027C 8003F67C 92450001 */   lbu       $a1, 1($s2)
/* 40280 8003F680 031E0019 */  multu      $t8, $fp
/* 40284 8003F684 00007812 */  mflo       $t7
/* 40288 8003F688 00AF7021 */  addu       $t6, $a1, $t7
/* 4028C 8003F68C 25D9FFD0 */  addiu      $t9, $t6, -0x30
/* 40290 8003F690 AFB900C8 */  sw         $t9, 0xc8($sp)
/* 40294 8003F694 92450001 */  lbu        $a1, 1($s2)
.L8003F698:
/* 40298 8003F698 26520001 */  addiu      $s2, $s2, 1
/* 4029C 8003F69C 28A10030 */  slti       $at, $a1, 0x30
/* 402A0 8003F6A0 14200003 */  bnez       $at, .L8003F6B0
/* 402A4 8003F6A4 28A1003A */   slti      $at, $a1, 0x3a
/* 402A8 8003F6A8 5420FFF2 */  bnel       $at, $zero, .L8003F674
/* 402AC 8003F6AC 8FB800C8 */   lw        $t8, 0xc8($sp)
.L8003F6B0:
/* 402B0 8003F6B0 2401002E */  addiu      $at, $zero, 0x2e
.L8003F6B4:
/* 402B4 8003F6B4 10A10004 */  beq        $a1, $at, .L8003F6C8
/* 402B8 8003F6B8 2418FFFF */   addiu     $t8, $zero, -1
/* 402BC 8003F6BC AFB800C4 */  sw         $t8, 0xc4($sp)
/* 402C0 8003F6C0 10000026 */  b          .L8003F75C
/* 402C4 8003F6C4 92450000 */   lbu       $a1, ($s2)
.L8003F6C8:
/* 402C8 8003F6C8 924F0001 */  lbu        $t7, 1($s2)
/* 402CC 8003F6CC 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 402D0 8003F6D0 26520001 */  addiu      $s2, $s2, 1
/* 402D4 8003F6D4 144F000A */  bne        $v0, $t7, .L8003F700
/* 402D8 8003F6D8 25D90003 */   addiu     $t9, $t6, 3
/* 402DC 8003F6DC 2401FFFC */  addiu      $at, $zero, -4
/* 402E0 8003F6E0 0321C024 */  and        $t8, $t9, $at
/* 402E4 8003F6E4 270F0004 */  addiu      $t7, $t8, 4
/* 402E8 8003F6E8 AFAF00E4 */  sw         $t7, 0xe4($sp)
/* 402EC 8003F6EC 8F0E0000 */  lw         $t6, ($t8)
/* 402F0 8003F6F0 26520001 */  addiu      $s2, $s2, 1
/* 402F4 8003F6F4 AFAE00C4 */  sw         $t6, 0xc4($sp)
/* 402F8 8003F6F8 10000018 */  b          .L8003F75C
/* 402FC 8003F6FC 92450000 */   lbu       $a1, ($s2)
.L8003F700:
/* 40300 8003F700 AFA000C4 */  sw         $zero, 0xc4($sp)
/* 40304 8003F704 92450000 */  lbu        $a1, ($s2)
/* 40308 8003F708 28A10030 */  slti       $at, $a1, 0x30
/* 4030C 8003F70C 14200013 */  bnez       $at, .L8003F75C
/* 40310 8003F710 28A1003A */   slti      $at, $a1, 0x3a
/* 40314 8003F714 10200011 */  beqz       $at, .L8003F75C
/* 40318 8003F718 00000000 */   nop       
/* 4031C 8003F71C 8FB900C4 */  lw         $t9, 0xc4($sp)
.L8003F720:
/* 40320 8003F720 2B2103E7 */  slti       $at, $t9, 0x3e7
/* 40324 8003F724 50200007 */  beql       $at, $zero, .L8003F744
/* 40328 8003F728 92450001 */   lbu       $a1, 1($s2)
/* 4032C 8003F72C 033E0019 */  multu      $t9, $fp
/* 40330 8003F730 00007812 */  mflo       $t7
/* 40334 8003F734 00AFC021 */  addu       $t8, $a1, $t7
/* 40338 8003F738 270EFFD0 */  addiu      $t6, $t8, -0x30
/* 4033C 8003F73C AFAE00C4 */  sw         $t6, 0xc4($sp)
/* 40340 8003F740 92450001 */  lbu        $a1, 1($s2)
.L8003F744:
/* 40344 8003F744 26520001 */  addiu      $s2, $s2, 1
/* 40348 8003F748 28A10030 */  slti       $at, $a1, 0x30
/* 4034C 8003F74C 14200003 */  bnez       $at, .L8003F75C
/* 40350 8003F750 28A1003A */   slti      $at, $a1, 0x3a
/* 40354 8003F754 5420FFF2 */  bnel       $at, $zero, .L8003F720
/* 40358 8003F758 8FB900C4 */   lw        $t9, 0xc4($sp)
.L8003F75C:
/* 4035C 8003F75C 0C00FEDD */  jal        func_8003FB74
/* 40360 8003F760 24841F20 */   addiu     $a0, $a0, 0x1f20
/* 40364 8003F764 10400005 */  beqz       $v0, .L8003F77C
/* 40368 8003F768 27B000A0 */   addiu     $s0, $sp, 0xa0
/* 4036C 8003F76C 92590000 */  lbu        $t9, ($s2)
/* 40370 8003F770 26520001 */  addiu      $s2, $s2, 1
/* 40374 8003F774 10000002 */  b          .L8003F780
/* 40378 8003F778 A3B900D4 */   sb        $t9, 0xd4($sp)
.L8003F77C:
/* 4037C 8003F77C A3A000D4 */  sb         $zero, 0xd4($sp)
.L8003F780:
/* 40380 8003F780 93AF00D4 */  lbu        $t7, 0xd4($sp)
/* 40384 8003F784 2402006C */  addiu      $v0, $zero, 0x6c
/* 40388 8003F788 27A600E4 */  addiu      $a2, $sp, 0xe4
/* 4038C 8003F78C 144F0007 */  bne        $v0, $t7, .L8003F7AC
/* 40390 8003F790 27A70074 */   addiu     $a3, $sp, 0x74
/* 40394 8003F794 92580000 */  lbu        $t8, ($s2)
/* 40398 8003F798 240E004C */  addiu      $t6, $zero, 0x4c
/* 4039C 8003F79C 14580003 */  bne        $v0, $t8, .L8003F7AC
/* 403A0 8003F7A0 00000000 */   nop       
/* 403A4 8003F7A4 A3AE00D4 */  sb         $t6, 0xd4($sp)
/* 403A8 8003F7A8 26520001 */  addiu      $s2, $s2, 1
.L8003F7AC:
/* 403AC 8003F7AC 0C00FB98 */  jal        func_8003EE60
/* 403B0 8003F7B0 92450000 */   lbu       $a1, ($s2)
/* 403B4 8003F7B4 8FB900C8 */  lw         $t9, 0xc8($sp)
/* 403B8 8003F7B8 8FAF00AC */  lw         $t7, 0xac($sp)
/* 403BC 8003F7BC 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* 403C0 8003F7C0 032FC023 */  subu       $t8, $t9, $t7
/* 403C4 8003F7C4 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* 403C8 8003F7C8 030EC823 */  subu       $t9, $t8, $t6
/* 403CC 8003F7CC 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* 403D0 8003F7D0 032FC023 */  subu       $t8, $t9, $t7
/* 403D4 8003F7D4 8FAF00BC */  lw         $t7, 0xbc($sp)
/* 403D8 8003F7D8 030EC823 */  subu       $t9, $t8, $t6
/* 403DC 8003F7DC 8FAE00C0 */  lw         $t6, 0xc0($sp)
/* 403E0 8003F7E0 032FC023 */  subu       $t8, $t9, $t7
/* 403E4 8003F7E4 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* 403E8 8003F7E8 030EC823 */  subu       $t9, $t8, $t6
/* 403EC 8003F7EC AFB900C8 */  sw         $t9, 0xc8($sp)
/* 403F0 8003F7F0 31F80004 */  andi       $t8, $t7, 4
/* 403F4 8003F7F4 1700001A */  bnez       $t8, .L8003F860
/* 403F8 8003F7F8 0019702A */   slt       $t6, $zero, $t9
/* 403FC 8003F7FC 51C00019 */  beql       $t6, $zero, .L8003F864
/* 40400 8003F800 8FB900AC */   lw        $t9, 0xac($sp)
/* 40404 8003F804 11C00016 */  beqz       $t6, .L8003F860
/* 40408 8003F808 03208825 */   or        $s1, $t9, $zero
/* 4040C 8003F80C 2E210021 */  sltiu      $at, $s1, 0x21
.L8003F810:
/* 40410 8003F810 14200003 */  bnez       $at, .L8003F820
/* 40414 8003F814 02208025 */   or        $s0, $s1, $zero
/* 40418 8003F818 10000001 */  b          .L8003F820
/* 4041C 8003F81C 24100020 */   addiu     $s0, $zero, 0x20
.L8003F820:
/* 40420 8003F820 1A00000C */  blez       $s0, .L8003F854
/* 40424 8003F824 02602025 */   or        $a0, $s3, $zero
/* 40428 8003F828 02E02825 */  or         $a1, $s7, $zero
/* 4042C 8003F82C 0280F809 */  jalr       $s4
/* 40430 8003F830 02003025 */   or        $a2, $s0, $zero
/* 40434 8003F834 10400005 */  beqz       $v0, .L8003F84C
/* 40438 8003F838 00409825 */   or        $s3, $v0, $zero
/* 4043C 8003F83C 8FAF00CC */  lw         $t7, 0xcc($sp)
/* 40440 8003F840 01F0C021 */  addu       $t8, $t7, $s0
/* 40444 8003F844 10000003 */  b          .L8003F854
/* 40448 8003F848 AFB800CC */   sw        $t8, 0xcc($sp)
.L8003F84C:
/* 4044C 8003F84C 100000A6 */  b          .L8003FAE8
/* 40450 8003F850 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003F854:
/* 40454 8003F854 02308823 */  subu       $s1, $s1, $s0
/* 40458 8003F858 5E20FFED */  bgtzl      $s1, .L8003F810
/* 4045C 8003F85C 2E210021 */   sltiu     $at, $s1, 0x21
.L8003F860:
/* 40460 8003F860 8FB900AC */  lw         $t9, 0xac($sp)
.L8003F864:
/* 40464 8003F864 02602025 */  or         $a0, $s3, $zero
/* 40468 8003F868 27A50074 */  addiu      $a1, $sp, 0x74
/* 4046C 8003F86C 5B20000D */  blezl      $t9, .L8003F8A4
/* 40470 8003F870 8FB900B0 */   lw        $t9, 0xb0($sp)
/* 40474 8003F874 0280F809 */  jalr       $s4
/* 40478 8003F878 03203025 */   or        $a2, $t9, $zero
/* 4047C 8003F87C 10400006 */  beqz       $v0, .L8003F898
/* 40480 8003F880 00409825 */   or        $s3, $v0, $zero
/* 40484 8003F884 8FAE00CC */  lw         $t6, 0xcc($sp)
/* 40488 8003F888 8FAF00AC */  lw         $t7, 0xac($sp)
/* 4048C 8003F88C 01CFC021 */  addu       $t8, $t6, $t7
/* 40490 8003F890 10000003 */  b          .L8003F8A0
/* 40494 8003F894 AFB800CC */   sw        $t8, 0xcc($sp)
.L8003F898:
/* 40498 8003F898 10000093 */  b          .L8003FAE8
/* 4049C 8003F89C 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003F8A0:
/* 404A0 8003F8A0 8FB900B0 */  lw         $t9, 0xb0($sp)
.L8003F8A4:
/* 404A4 8003F8A4 0019702A */  slt        $t6, $zero, $t9
/* 404A8 8003F8A8 51C00019 */  beql       $t6, $zero, .L8003F910
/* 404AC 8003F8AC 8FB900B4 */   lw        $t9, 0xb4($sp)
/* 404B0 8003F8B0 11C00016 */  beqz       $t6, .L8003F90C
/* 404B4 8003F8B4 03208825 */   or        $s1, $t9, $zero
/* 404B8 8003F8B8 2E210021 */  sltiu      $at, $s1, 0x21
.L8003F8BC:
/* 404BC 8003F8BC 14200003 */  bnez       $at, .L8003F8CC
/* 404C0 8003F8C0 02208025 */   or        $s0, $s1, $zero
/* 404C4 8003F8C4 10000001 */  b          .L8003F8CC
/* 404C8 8003F8C8 24100020 */   addiu     $s0, $zero, 0x20
.L8003F8CC:
/* 404CC 8003F8CC 1A00000C */  blez       $s0, .L8003F900
/* 404D0 8003F8D0 02602025 */   or        $a0, $s3, $zero
/* 404D4 8003F8D4 02A02825 */  or         $a1, $s5, $zero
/* 404D8 8003F8D8 0280F809 */  jalr       $s4
/* 404DC 8003F8DC 02003025 */   or        $a2, $s0, $zero
/* 404E0 8003F8E0 10400005 */  beqz       $v0, .L8003F8F8
/* 404E4 8003F8E4 00409825 */   or        $s3, $v0, $zero
/* 404E8 8003F8E8 8FAF00CC */  lw         $t7, 0xcc($sp)
/* 404EC 8003F8EC 01F0C021 */  addu       $t8, $t7, $s0
/* 404F0 8003F8F0 10000003 */  b          .L8003F900
/* 404F4 8003F8F4 AFB800CC */   sw        $t8, 0xcc($sp)
.L8003F8F8:
/* 404F8 8003F8F8 1000007B */  b          .L8003FAE8
/* 404FC 8003F8FC 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003F900:
/* 40500 8003F900 02308823 */  subu       $s1, $s1, $s0
/* 40504 8003F904 5E20FFED */  bgtzl      $s1, .L8003F8BC
/* 40508 8003F908 2E210021 */   sltiu     $at, $s1, 0x21
.L8003F90C:
/* 4050C 8003F90C 8FB900B4 */  lw         $t9, 0xb4($sp)
.L8003F910:
/* 40510 8003F910 02602025 */  or         $a0, $s3, $zero
/* 40514 8003F914 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 40518 8003F918 5B20000D */  blezl      $t9, .L8003F950
/* 4051C 8003F91C 8FB900B8 */   lw        $t9, 0xb8($sp)
/* 40520 8003F920 0280F809 */  jalr       $s4
/* 40524 8003F924 03203025 */   or        $a2, $t9, $zero
/* 40528 8003F928 10400006 */  beqz       $v0, .L8003F944
/* 4052C 8003F92C 00409825 */   or        $s3, $v0, $zero
/* 40530 8003F930 8FAE00CC */  lw         $t6, 0xcc($sp)
/* 40534 8003F934 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* 40538 8003F938 01CFC021 */  addu       $t8, $t6, $t7
/* 4053C 8003F93C 10000003 */  b          .L8003F94C
/* 40540 8003F940 AFB800CC */   sw        $t8, 0xcc($sp)
.L8003F944:
/* 40544 8003F944 10000068 */  b          .L8003FAE8
/* 40548 8003F948 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003F94C:
/* 4054C 8003F94C 8FB900B8 */  lw         $t9, 0xb8($sp)
.L8003F950:
/* 40550 8003F950 0019702A */  slt        $t6, $zero, $t9
/* 40554 8003F954 51C00019 */  beql       $t6, $zero, .L8003F9BC
/* 40558 8003F958 8FB900BC */   lw        $t9, 0xbc($sp)
/* 4055C 8003F95C 11C00016 */  beqz       $t6, .L8003F9B8
/* 40560 8003F960 03208825 */   or        $s1, $t9, $zero
/* 40564 8003F964 2E210021 */  sltiu      $at, $s1, 0x21
.L8003F968:
/* 40568 8003F968 14200003 */  bnez       $at, .L8003F978
/* 4056C 8003F96C 02208025 */   or        $s0, $s1, $zero
/* 40570 8003F970 10000001 */  b          .L8003F978
/* 40574 8003F974 24100020 */   addiu     $s0, $zero, 0x20
.L8003F978:
/* 40578 8003F978 1A00000C */  blez       $s0, .L8003F9AC
/* 4057C 8003F97C 02602025 */   or        $a0, $s3, $zero
/* 40580 8003F980 02A02825 */  or         $a1, $s5, $zero
/* 40584 8003F984 0280F809 */  jalr       $s4
/* 40588 8003F988 02003025 */   or        $a2, $s0, $zero
/* 4058C 8003F98C 10400005 */  beqz       $v0, .L8003F9A4
/* 40590 8003F990 00409825 */   or        $s3, $v0, $zero
/* 40594 8003F994 8FAF00CC */  lw         $t7, 0xcc($sp)
/* 40598 8003F998 01F0C021 */  addu       $t8, $t7, $s0
/* 4059C 8003F99C 10000003 */  b          .L8003F9AC
/* 405A0 8003F9A0 AFB800CC */   sw        $t8, 0xcc($sp)
.L8003F9A4:
/* 405A4 8003F9A4 10000050 */  b          .L8003FAE8
/* 405A8 8003F9A8 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003F9AC:
/* 405AC 8003F9AC 02308823 */  subu       $s1, $s1, $s0
/* 405B0 8003F9B0 5E20FFED */  bgtzl      $s1, .L8003F968
/* 405B4 8003F9B4 2E210021 */   sltiu     $at, $s1, 0x21
.L8003F9B8:
/* 405B8 8003F9B8 8FB900BC */  lw         $t9, 0xbc($sp)
.L8003F9BC:
/* 405BC 8003F9BC 02602025 */  or         $a0, $s3, $zero
/* 405C0 8003F9C0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 405C4 8003F9C4 1B20000D */  blez       $t9, .L8003F9FC
/* 405C8 8003F9C8 8FAF00B4 */   lw        $t7, 0xb4($sp)
/* 405CC 8003F9CC 01CF2821 */  addu       $a1, $t6, $t7
/* 405D0 8003F9D0 0280F809 */  jalr       $s4
/* 405D4 8003F9D4 03203025 */   or        $a2, $t9, $zero
/* 405D8 8003F9D8 10400006 */  beqz       $v0, .L8003F9F4
/* 405DC 8003F9DC 00409825 */   or        $s3, $v0, $zero
/* 405E0 8003F9E0 8FB800CC */  lw         $t8, 0xcc($sp)
/* 405E4 8003F9E4 8FAE00BC */  lw         $t6, 0xbc($sp)
/* 405E8 8003F9E8 030E7821 */  addu       $t7, $t8, $t6
/* 405EC 8003F9EC 10000003 */  b          .L8003F9FC
/* 405F0 8003F9F0 AFAF00CC */   sw        $t7, 0xcc($sp)
.L8003F9F4:
/* 405F4 8003F9F4 1000003C */  b          .L8003FAE8
/* 405F8 8003F9F8 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003F9FC:
/* 405FC 8003F9FC 8FB900C0 */  lw         $t9, 0xc0($sp)
/* 40600 8003FA00 0019C02A */  slt        $t8, $zero, $t9
/* 40604 8003FA04 53000019 */  beql       $t8, $zero, .L8003FA6C
/* 40608 8003FA08 8FB900D0 */   lw        $t9, 0xd0($sp)
/* 4060C 8003FA0C 13000016 */  beqz       $t8, .L8003FA68
/* 40610 8003FA10 03208825 */   or        $s1, $t9, $zero
/* 40614 8003FA14 2E210021 */  sltiu      $at, $s1, 0x21
.L8003FA18:
/* 40618 8003FA18 14200003 */  bnez       $at, .L8003FA28
/* 4061C 8003FA1C 02208025 */   or        $s0, $s1, $zero
/* 40620 8003FA20 10000001 */  b          .L8003FA28
/* 40624 8003FA24 24100020 */   addiu     $s0, $zero, 0x20
.L8003FA28:
/* 40628 8003FA28 1A00000C */  blez       $s0, .L8003FA5C
/* 4062C 8003FA2C 02602025 */   or        $a0, $s3, $zero
/* 40630 8003FA30 02A02825 */  or         $a1, $s5, $zero
/* 40634 8003FA34 0280F809 */  jalr       $s4
/* 40638 8003FA38 02003025 */   or        $a2, $s0, $zero
/* 4063C 8003FA3C 10400005 */  beqz       $v0, .L8003FA54
/* 40640 8003FA40 00409825 */   or        $s3, $v0, $zero
/* 40644 8003FA44 8FAE00CC */  lw         $t6, 0xcc($sp)
/* 40648 8003FA48 01D07821 */  addu       $t7, $t6, $s0
/* 4064C 8003FA4C 10000003 */  b          .L8003FA5C
/* 40650 8003FA50 AFAF00CC */   sw        $t7, 0xcc($sp)
.L8003FA54:
/* 40654 8003FA54 10000024 */  b          .L8003FAE8
/* 40658 8003FA58 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003FA5C:
/* 4065C 8003FA5C 02308823 */  subu       $s1, $s1, $s0
/* 40660 8003FA60 5E20FFED */  bgtzl      $s1, .L8003FA18
/* 40664 8003FA64 2E210021 */   sltiu     $at, $s1, 0x21
.L8003FA68:
/* 40668 8003FA68 8FB900D0 */  lw         $t9, 0xd0($sp)
.L8003FA6C:
/* 4066C 8003FA6C 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* 40670 8003FA70 33380004 */  andi       $t8, $t9, 4
/* 40674 8003FA74 1300001A */  beqz       $t8, .L8003FAE0
/* 40678 8003FA78 000E782A */   slt       $t7, $zero, $t6
/* 4067C 8003FA7C 11E00018 */  beqz       $t7, .L8003FAE0
/* 40680 8003FA80 00000000 */   nop       
/* 40684 8003FA84 11E00016 */  beqz       $t7, .L8003FAE0
/* 40688 8003FA88 01C08825 */   or        $s1, $t6, $zero
/* 4068C 8003FA8C 2E210021 */  sltiu      $at, $s1, 0x21
.L8003FA90:
/* 40690 8003FA90 14200003 */  bnez       $at, .L8003FAA0
/* 40694 8003FA94 02208025 */   or        $s0, $s1, $zero
/* 40698 8003FA98 10000001 */  b          .L8003FAA0
/* 4069C 8003FA9C 24100020 */   addiu     $s0, $zero, 0x20
.L8003FAA0:
/* 406A0 8003FAA0 1A00000C */  blez       $s0, .L8003FAD4
/* 406A4 8003FAA4 02602025 */   or        $a0, $s3, $zero
/* 406A8 8003FAA8 02E02825 */  or         $a1, $s7, $zero
/* 406AC 8003FAAC 0280F809 */  jalr       $s4
/* 406B0 8003FAB0 02003025 */   or        $a2, $s0, $zero
/* 406B4 8003FAB4 10400005 */  beqz       $v0, .L8003FACC
/* 406B8 8003FAB8 00409825 */   or        $s3, $v0, $zero
/* 406BC 8003FABC 8FB900CC */  lw         $t9, 0xcc($sp)
/* 406C0 8003FAC0 0330C021 */  addu       $t8, $t9, $s0
/* 406C4 8003FAC4 10000003 */  b          .L8003FAD4
/* 406C8 8003FAC8 AFB800CC */   sw        $t8, 0xcc($sp)
.L8003FACC:
/* 406CC 8003FACC 10000006 */  b          .L8003FAE8
/* 406D0 8003FAD0 8FA200CC */   lw        $v0, 0xcc($sp)
.L8003FAD4:
/* 406D4 8003FAD4 02308823 */  subu       $s1, $s1, $s0
/* 406D8 8003FAD8 5E20FFED */  bgtzl      $s1, .L8003FA90
/* 406DC 8003FADC 2E210021 */   sltiu     $at, $s1, 0x21
.L8003FAE0:
/* 406E0 8003FAE0 1000FE93 */  b          .L8003F530
/* 406E4 8003FAE4 26470001 */   addiu     $a3, $s2, 1
.L8003FAE8:
/* 406E8 8003FAE8 8FBF003C */  lw         $ra, 0x3c($sp)
/* 406EC 8003FAEC 8FB00018 */  lw         $s0, 0x18($sp)
/* 406F0 8003FAF0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 406F4 8003FAF4 8FB20020 */  lw         $s2, 0x20($sp)
/* 406F8 8003FAF8 8FB30024 */  lw         $s3, 0x24($sp)
/* 406FC 8003FAFC 8FB40028 */  lw         $s4, 0x28($sp)
/* 40700 8003FB00 8FB5002C */  lw         $s5, 0x2c($sp)
/* 40704 8003FB04 8FB60030 */  lw         $s6, 0x30($sp)
/* 40708 8003FB08 8FB70034 */  lw         $s7, 0x34($sp)
/* 4070C 8003FB0C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 40710 8003FB10 03E00008 */  jr         $ra
/* 40714 8003FB14 27BD00D8 */   addiu     $sp, $sp, 0xd8
/* 40718 8003FB18 00000000 */  nop        
/* 4071C 8003FB1C 00000000 */  nop        