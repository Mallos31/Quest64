glabel func_5f4c
/* 005F4C 00005F4C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 005F50 00005F50 AFB00020 */  sw    $s0, 0x20($sp)
/* 005F54 00005F54 00C08025 */  move  $s0, $a2
/* 005F58 00005F58 AFBF0024 */  sw    $ra, 0x24($sp)
/* 005F5C 00005F5C E7AC0060 */  swc1  $f12, 0x60($sp)
/* 005F60 00005F60 AFA7006C */  sw    $a3, 0x6c($sp)
/* 005F64 00005F64 C6000018 */  lwc1  $f0, 0x18($s0)
/* 005F68 00005F68 C6020020 */  lwc1  $f2, 0x20($s0)
/* 005F6C 00005F6C E7AE0064 */  swc1  $f14, 0x64($sp)
/* 005F70 00005F70 46000102 */  mul.s $f4, $f0, $f0
/* 005F74 00005F74 00000000 */  nop   
/* 005F78 00005F78 46021182 */  mul.s $f6, $f2, $f2
/* 005F7C 00005F7C 0C00D3D8 */  jal   func_00034F60
/* 005F80 00005F80 46062300 */   add.s $f12, $f4, $f6
/* 005F84 00005F84 C7A20060 */  lwc1  $f2, 0x60($sp)
/* 005F88 00005F88 44808000 */  mtc1  $zero, $f16
/* 005F8C 00005F8C C7AE0064 */  lwc1  $f14, 0x64($sp)
/* 005F90 00005F90 E7A0003C */  swc1  $f0, 0x3c($sp)
/* 005F94 00005F94 46101032 */  c.eq.s $f2, $f16
/* 005F98 00005F98 00000000 */  nop   
/* 005F9C 00005F9C 45000007 */  bc1f  .L00005FBC
/* 005FA0 00005FA0 00000000 */   nop   
/* 005FA4 00005FA4 46107032 */  c.eq.s $f14, $f16
/* 005FA8 00005FA8 8FA3006C */  lw    $v1, 0x6c($sp)
/* 005FAC 00005FAC 3C018007 */  lui   $at, 0x8007
/* 005FB0 00005FB0 2408000F */  addiu $t0, $zero, 0xf
/* 005FB4 00005FB4 45010092 */  bc1t  .L00006200
/* 005FB8 00005FB8 3C078008 */   lui   $a3, 0x8008
.L00005FBC:
/* 005FBC 00005FBC 46021202 */  mul.s $f8, $f2, $f2
/* 005FC0 00005FC0 E7AE0064 */  swc1  $f14, 0x64($sp)
/* 005FC4 00005FC4 460E7282 */  mul.s $f10, $f14, $f14
/* 005FC8 00005FC8 0C00D3D8 */  jal   func_00034F60
/* 005FCC 00005FCC 460A4300 */   add.s $f12, $f8, $f10
/* 005FD0 00005FD0 3C018007 */  lui   $at, 0x8007
/* 005FD4 00005FD4 D4261068 */  ldc1  $f6, 0x1068($at)
/* 005FD8 00005FD8 46000121 */  cvt.d.s $f4, $f0
/* 005FDC 00005FDC 3C014000 */  lui   $at, 0x4000
/* 005FE0 00005FE0 46262202 */  mul.d $f8, $f4, $f6
/* 005FE4 00005FE4 44815800 */  mtc1  $at, $f11
/* 005FE8 00005FE8 44805000 */  mtc1  $zero, $f10
/* 005FEC 00005FEC C7AE0064 */  lwc1  $f14, 0x64($sp)
/* 005FF0 00005FF0 C7A40060 */  lwc1  $f4, 0x60($sp)
/* 005FF4 00005FF4 46204420 */  cvt.s.d $f16, $f8
/* 005FF8 00005FF8 46008321 */  cvt.d.s $f12, $f16
/* 005FFC 00005FFC 462C503C */  c.lt.d $f10, $f12
.L00006000:
/* 006000 00006000 00000000 */  nop   
.L00006004:
/* 006004 00006004 4502000D */  bc1fl .L0000603C
.L00006008:
/* 006008 00006008 C7AC0060 */   lwc1  $f12, 0x60($sp)
.L0000600C:
/* 00600C 0000600C 46002021 */  cvt.d.s $f0, $f4
/* 006010 00006010 460070A1 */  cvt.d.s $f2, $f14
/* 006014 00006014 46200180 */  add.d $f6, $f0, $f0
/* 006018 00006018 3C014000 */  lui   $at, 0x4000
/* 00601C 0000601C 44818000 */  mtc1  $at, $f16
/* 006020 00006020 46221100 */  add.d $f4, $f2, $f2
/* 006024 00006024 462C3203 */  div.d $f8, $f6, $f12
/* 006028 00006028 462C2183 */  div.d $f6, $f4, $f12
/* 00602C 0000602C 462042A0 */  cvt.s.d $f10, $f8
/* 006030 00006030 E7AA0060 */  swc1  $f10, 0x60($sp)
/* 006034 00006034 462033A0 */  cvt.s.d $f14, $f6
/* 006038 00006038 C7AC0060 */  lwc1  $f12, 0x60($sp)
.L0000603C:
/* 00603C 0000603C 0C008C84 */  jal   func_00023210
/* 006040 00006040 E7B00040 */   swc1  $f16, 0x40($sp)
/* 006044 00006044 C60E0010 */  lwc1  $f14, 0x10($s0)
/* 006048 00006048 3C018007 */  lui   $at, 0x8007
/* 00604C 0000604C D4321070 */  ldc1  $f18, 0x1070($at)
/* 006050 00006050 460E0301 */  sub.s $f12, $f0, $f14
/* 006054 00006054 C7B00040 */  lwc1  $f16, 0x40($sp)
/* 006058 00006058 3C018007 */  lui   $at, 0x8007
/* 00605C 0000605C 3C058008 */  lui   $a1, 0x8008
/* 006060 00006060 460060A1 */  cvt.d.s $f2, $f12
/* 006064 00006064 4622903C */  c.lt.d $f18, $f2
/* 006068 00006068 00000000 */  nop   
/* 00606C 0000606C 45000007 */  bc1f  .L0000608C
/* 006070 00006070 00000000 */   nop   
/* 006074 00006074 3C018007 */  lui   $at, 0x8007
/* 006078 00006078 D4281078 */  ldc1  $f8, 0x1078($at)
/* 00607C 0000607C 46281281 */  sub.d $f10, $f2, $f8
/* 006080 00006080 46205320 */  cvt.s.d $f12, $f10
/* 006084 00006084 1000000B */  b     .L000060B4
/* 006088 00006088 460060A1 */   cvt.d.s $f2, $f12
.L0000608C:
/* 00608C 0000608C D4241080 */  ldc1  $f4, 0x1080($at)
/* 006090 00006090 3C018007 */  lui   $at, 0x8007
/* 006094 00006094 4624103C */  c.lt.d $f2, $f4
/* 006098 00006098 00000000 */  nop   
/* 00609C 0000609C 45000005 */  bc1f  .L000060B4
/* 0060A0 000060A0 00000000 */   nop   
/* 0060A4 000060A4 D4261088 */  ldc1  $f6, 0x1088($at)
/* 0060A8 000060A8 46261200 */  add.d $f8, $f2, $f6
/* 0060AC 000060AC 46204320 */  cvt.s.d $f12, $f8
/* 0060B0 000060B0 460060A1 */  cvt.d.s $f2, $f12
.L000060B4:
/* 0060B4 000060B4 3C018007 */  lui   $at, 0x8007
/* 0060B8 000060B8 D4241090 */  ldc1  $f4, 0x1090($at)
/* 0060BC 000060BC 460072A1 */  cvt.d.s $f10, $f14
/* 0060C0 000060C0 3C018007 */  lui   $at, 0x8007
/* 0060C4 000060C4 46241182 */  mul.d $f6, $f2, $f4
/* 0060C8 000060C8 46265200 */  add.d $f8, $f10, $f6
/* 0060CC 000060CC 46204120 */  cvt.s.d $f4, $f8
/* 0060D0 000060D0 E6040010 */  swc1  $f4, 0x10($s0)
.L000060D4:
/* 0060D4 000060D4 C60A0010 */  lwc1  $f10, 0x10($s0)
/* 0060D8 000060D8 46005021 */  cvt.d.s $f0, $f10
/* 0060DC 000060DC 4620903C */  c.lt.d $f18, $f0
/* 0060E0 000060E0 00000000 */  nop   
/* 0060E4 000060E4 45000007 */  bc1f  .L00006104
/* 0060E8 000060E8 00000000 */   nop   
/* 0060EC 000060EC 3C018007 */  lui   $at, 0x8007
/* 0060F0 000060F0 D4261098 */  ldc1  $f6, 0x1098($at)
/* 0060F4 000060F4 46260201 */  sub.d $f8, $f0, $f6
/* 0060F8 000060F8 46204120 */  cvt.s.d $f4, $f8
/* 0060FC 000060FC 1000000B */  b     .L0000612C
/* 006100 00006100 E6040010 */   swc1  $f4, 0x10($s0)
.L00006104:
/* 006104 00006104 D42A10A0 */  ldc1  $f10, 0x10a0($at)
.L00006108:
/* 006108 00006108 3C018007 */  lui   $at, 0x8007
/* 00610C 0000610C 462A003C */  c.lt.d $f0, $f10
/* 006110 00006110 00000000 */  nop   
/* 006114 00006114 45020006 */  bc1fl .L00006130
/* 006118 00006118 C7A2003C */   lwc1  $f2, 0x3c($sp)
/* 00611C 0000611C D42610A8 */  ldc1  $f6, 0x10a8($at)
/* 006120 00006120 46260200 */  add.d $f8, $f0, $f6
/* 006124 00006124 46204120 */  cvt.s.d $f4, $f8
/* 006128 00006128 E6040010 */  swc1  $f4, 0x10($s0)
.L0000612C:
/* 00612C 0000612C C7A2003C */  lwc1  $f2, 0x3c($sp)
.L00006130:
/* 006130 00006130 44805000 */  mtc1  $zero, $f10
/* 006134 00006134 24A5BC30 */  addiu $a1, $a1, -0x43d0
/* 006138 00006138 46028181 */  sub.s $f6, $f16, $f2
/* 00613C 0000613C 3C018007 */  lui   $at, 0x8007
/* 006140 00006140 E4AA0000 */  swc1  $f10, ($a1)
/* 006144 00006144 D42410B0 */  ldc1  $f4, 0x10b0($at)
/* 006148 00006148 46003221 */  cvt.d.s $f8, $f6
/* 00614C 0000614C 460011A1 */  cvt.d.s $f6, $f2
/* 006150 00006150 46244282 */  mul.d $f10, $f8, $f4
/* 006154 00006154 462A3200 */  add.d $f8, $f6, $f10
/* 006158 00006158 46204020 */  cvt.s.d $f0, $f8
/* 00615C 0000615C E4A00004 */  swc1  $f0, 4($a1)
/* 006160 00006160 C60C0010 */  lwc1  $f12, 0x10($s0)
/* 006164 00006164 E7B00040 */  swc1  $f16, 0x40($sp)
/* 006168 00006168 0C008CBD */  jal   func_000232F4
/* 00616C 0000616C E7A0002C */   swc1  $f0, 0x2c($sp)
/* 006170 00006170 3C013FF0 */  lui   $at, 0x3ff0
/* 006174 00006174 44811800 */  mtc1  $at, $f3
/* 006178 00006178 3C014160 */  lui   $at, 0x4160
/* 00617C 0000617C C7B00040 */  lwc1  $f16, 0x40($sp)
/* 006180 00006180 44815000 */  mtc1  $at, $f10
/* 006184 00006184 3C058008 */  lui   $a1, 0x8008
/* 006188 00006188 24A5BC30 */  addiu $a1, $a1, -0x43d0
/* 00618C 0000618C C4A40000 */  lwc1  $f4, ($a1)
/* 006190 00006190 460A8202 */  mul.s $f8, $f16, $f10
/* 006194 00006194 C7A0002C */  lwc1  $f0, 0x2c($sp)
/* 006198 00006198 E6040018 */  swc1  $f4, 0x18($s0)
/* 00619C 0000619C C4A60004 */  lwc1  $f6, 4($a1)
/* 0061A0 000061A0 3C014040 */  lui   $at, 0x4040
/* 0061A4 000061A4 44812000 */  mtc1  $at, $f4
/* 0061A8 000061A8 E6060020 */  swc1  $f6, 0x20($s0)
/* 0061AC 000061AC 44801000 */  mtc1  $zero, $f2
/* 0061B0 000061B0 46044180 */  add.s $f6, $f8, $f4
/* 0061B4 000061B4 240E0002 */  addiu $t6, $zero, 2
/* 0061B8 000061B8 AFAE005C */  sw    $t6, 0x5c($sp)
/* 0061BC 000061BC 46000221 */  cvt.d.s $f8, $f0
/* 0061C0 000061C0 4600328D */  trunc.w.s $f10, $f6
/* 0061C4 000061C4 24070002 */  addiu $a3, $zero, 2
/* 0061C8 000061C8 AFA00050 */  sw    $zero, 0x50($sp)
/* 0061CC 000061CC 4622403C */  c.lt.d $f8, $f2
/* 0061D0 000061D0 44065000 */  mfc1  $a2, $f10
/* 0061D4 000061D4 00001025 */  move  $v0, $zero
/* 0061D8 000061D8 45020029 */  bc1fl .L00006280
/* 0061DC 000061DC 8FAC005C */   lw    $t4, 0x5c($sp)
/* 0061E0 000061E0 46008121 */  cvt.d.s $f4, $f16
/* 0061E4 000061E4 8FB9006C */  lw    $t9, 0x6c($sp)
/* 0061E8 000061E8 4622203C */  c.lt.d $f4, $f2
/* 0061EC 000061EC 00000000 */  nop   
/* 0061F0 000061F0 45000022 */  bc1f  .L0000627C
/* 0061F4 000061F4 24180001 */   addiu $t8, $zero, 1
/* 0061F8 000061F8 10000020 */  b     .L0000627C
.L000061FC:
/* 0061FC 000061FC A7380000 */   sh    $t8, ($t9)
.L00006200:
.L00006200:
/* 006200 00006200 24090003 */  addiu $t1, $zero, 3
/* 006204 00006204 D42010B8 */  ldc1  $f0, 0x10b8($at)
.L00006208:
/* 006208 00006208 8CE7BC2C */  lw    $a3, -0x43d4($a3)
/* 00620C 0000620C AFA8005C */  sw    $t0, 0x5c($sp)
/* 006210 00006210 AFA90050 */  sw    $t1, 0x50($sp)
/* 006214 00006214 240A0004 */  addiu $t2, $zero, 4
/* 006218 00006218 240B0008 */  addiu $t3, $zero, 8
/* 00621C 0000621C A46A0000 */  sh    $t2, ($v1)
/* 006220 00006220 A46B0004 */  sh    $t3, 4($v1)
/* 006224 00006224 C6060018 */  lwc1  $f6, 0x18($s0)
/* 006228 00006228 E610000C */  swc1  $f16, 0xc($s0)
/* 00622C 0000622C E6100014 */  swc1  $f16, 0x14($s0)
/* 006230 00006230 460032A1 */  cvt.d.s $f10, $f6
/* 006234 00006234 C6060020 */  lwc1  $f6, 0x20($s0)
/* 006238 00006238 46205202 */  mul.d $f8, $f10, $f0
/* 00623C 0000623C 24060001 */  addiu $a2, $zero, 1
/* 006240 00006240 460032A1 */  cvt.d.s $f10, $f6
/* 006244 00006244 24020001 */  addiu $v0, $zero, 1
/* 006248 00006248 02002025 */  move  $a0, $s0
/* 00624C 0000624C 46204120 */  cvt.s.d $f4, $f8
/* 006250 00006250 46205202 */  mul.d $f8, $f10, $f0
/* 006254 00006254 E6040018 */  swc1  $f4, 0x18($s0)
/* 006258 00006258 46204120 */  cvt.s.d $f4, $f8
/* 00625C 0000625C E6040020 */  swc1  $f4, 0x20($s0)
/* 006260 00006260 AFA60054 */  sw    $a2, 0x54($sp)
/* 006264 00006264 AFA2004C */  sw    $v0, 0x4c($sp)
/* 006268 00006268 0C0061AD */  jal   func_000186B4
/* 00626C 0000626C AFA70058 */   sw    $a3, 0x58($sp)
/* 006270 00006270 8FA2004C */  lw    $v0, 0x4c($sp)
/* 006274 00006274 8FA60054 */  lw    $a2, 0x54($sp)
/* 006278 00006278 8FA70058 */  lw    $a3, 0x58($sp)
.L0000627C:
/* 00627C 0000627C 8FAC005C */  lw    $t4, 0x5c($sp)
.L00006280:
/* 006280 00006280 860D0052 */  lh    $t5, 0x52($s0)
/* 006284 00006284 518D000D */  beql  $t4, $t5, .L000062BC
/* 006288 00006288 A6060058 */   sh    $a2, 0x58($s0)
/* 00628C 0000628C 860E005A */  lh    $t6, 0x5a($s0)
/* 006290 00006290 02002025 */  move  $a0, $s0
/* 006294 00006294 01802825 */  move  $a1, $t4
/* 006298 00006298 518E0008 */  beql  $t4, $t6, .L000062BC
/* 00629C 0000629C A6060058 */   sh    $a2, 0x58($s0)
/* 0062A0 000062A0 AFA60010 */  sw    $a2, 0x10($sp)
/* 0062A4 000062A4 0C00762C */  jal   func_0001D8B0
/* 0062A8 000062A8 AFA20014 */   sw    $v0, 0x14($sp)
/* 0062AC 000062AC 8FAF0050 */  lw    $t7, 0x50($sp)
/* 0062B0 000062B0 10000002 */  b     .L000062BC
/* 0062B4 000062B4 A60F0054 */   sh    $t7, 0x54($s0)
/* 0062B8 000062B8 A6060058 */  sh    $a2, 0x58($s0)
.L000062BC:
/* 0062BC 000062BC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0062C0 000062C0 8FB00020 */  lw    $s0, 0x20($sp)
/* 0062C4 000062C4 27BD0060 */  addiu $sp, $sp, 0x60
/* 0062C8 000062C8 03E00008 */  jr    $ra
/* 0062CC 000062CC 00000000 */   nop