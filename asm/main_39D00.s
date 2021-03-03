.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel UnknownALfunction
/* 39D00 80039100 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 39D04 80039104 AFBF0014 */  sw         $ra, 0x14($sp)
/* 39D08 80039108 0C00D058 */  jal        osSetIntMask
/* 39D0C 8003910C 24040001 */   addiu     $a0, $zero, 1
/* 39D10 80039110 8E500008 */  lw         $s0, 8($s2)
/* 39D14 80039114 0040A025 */  or         $s4, $v0, $zero
/* 39D18 80039118 12000012 */  beqz       $s0, .L80039164
/* 39D1C 8003911C 00000000 */   nop
.L80039120:
/* 39D20 80039120 8E0E0010 */  lw         $t6, 0x10($s0)
/* 39D24 80039124 8E110000 */  lw         $s1, ($s0)
/* 39D28 80039128 166E000C */  bne        $s3, $t6, .L8003915C
/* 39D2C 8003912C 00000000 */   nop
/* 39D30 80039130 12200005 */  beqz       $s1, .L80039148
/* 39D34 80039134 00000000 */   nop
/* 39D38 80039138 8E2F0008 */  lw         $t7, 8($s1)
/* 39D3C 8003913C 8E180008 */  lw         $t8, 8($s0)
/* 39D40 80039140 01F8C821 */  addu       $t9, $t7, $t8
/* 39D44 80039144 AE390008 */  sw         $t9, 8($s1)
.L80039148:
/* 39D48 80039148 0C00DA08 */  jal        alUnlink
/* 39D4C 8003914C 02002025 */   or        $a0, $s0, $zero
/* 39D50 80039150 02002025 */  or         $a0, $s0, $zero
/* 39D54 80039154 0C00DA14 */  jal        alLink
/* 39D58 80039158 02402825 */   or        $a1, $s2, $zero
.L8003915C:
/* 39D5C 8003915C 1620FFF0 */  bnez       $s1, .L80039120
/* 39D60 80039160 02208025 */   or        $s0, $s1, $zero
.L80039164:
/* 39D64 80039164 0C00D058 */  jal        osSetIntMask
/* 39D68 80039168 02802025 */   or        $a0, $s4, $zero
/* 39D6C 8003916C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 39D70 80039170 27BD0018 */  addiu      $sp, $sp, 0x18
/* 39D74 80039174 03E00008 */  jr         $ra
/* 39D78 80039178 00000000 */   nop

glabel func_8003917C
/* 39D7C 8003917C 03E00008 */  jr         $ra
/* 39D80 80039180 00000000 */   nop

glabel func_80039184
/* 39D84 80039184 03E00008 */  jr         $ra
/* 39D88 80039188 00000000 */   nop

glabel func_8003918C
/* 39D8C 8003918C 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* 39D90 80039190 AFBE0040 */  sw         $fp, 0x40($sp)
/* 39D94 80039194 AFB7003C */  sw         $s7, 0x3c($sp)
/* 39D98 80039198 AFB60038 */  sw         $s6, 0x38($sp)
/* 39D9C 8003919C AFB40030 */  sw         $s4, 0x30($sp)
/* 39DA0 800391A0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 39DA4 800391A4 3C018007 */  lui        $at, 0x8007
/* 39DA8 800391A8 0080B025 */  or         $s6, $a0, $zero
/* 39DAC 800391AC AFBF0044 */  sw         $ra, 0x44($sp)
/* 39DB0 800391B0 AFB50034 */  sw         $s5, 0x34($sp)
/* 39DB4 800391B4 AFB3002C */  sw         $s3, 0x2c($sp)
/* 39DB8 800391B8 AFB20028 */  sw         $s2, 0x28($sp)
/* 39DBC 800391BC AFB10024 */  sw         $s1, 0x24($sp)
/* 39DC0 800391C0 AFB00020 */  sw         $s0, 0x20($sp)
/* 39DC4 800391C4 D4341E60 */  ldc1       $f20, 0x1e60($at)
/* 39DC8 800391C8 24940028 */  addiu      $s4, $a0, 0x28
/* 39DCC 800391CC 24970014 */  addiu      $s7, $a0, 0x14
/* 39DD0 800391D0 241E0001 */  addiu      $fp, $zero, 1
.L800391D4:
/* 39DD4 800391D4 86C20028 */  lh         $v0, 0x28($s6)
/* 39DD8 800391D8 24010005 */  addiu      $at, $zero, 5
/* 39DDC 800391DC 240E0005 */  addiu      $t6, $zero, 5
/* 39DE0 800391E0 14410007 */  bne        $v0, $at, .L80039200
/* 39DE4 800391E4 02E02025 */   or        $a0, $s7, $zero
/* 39DE8 800391E8 A7AE00F4 */  sh         $t6, 0xf4($sp)
/* 39DEC 800391EC 8EC60048 */  lw         $a2, 0x48($s6)
/* 39DF0 800391F0 0C00FF9B */  jal        alEvtqPostEvent
/* 39DF4 800391F4 27A500F4 */   addiu     $a1, $sp, 0xf4
/* 39DF8 800391F8 10000122 */  b          .L80039684
/* 39DFC 800391FC 02E02025 */   or        $a0, $s7, $zero
.L80039200:
/* 39E00 80039200 8ED5002C */  lw         $s5, 0x2c($s6)
/* 39E04 80039204 2C410009 */  sltiu      $at, $v0, 9
/* 39E08 80039208 1020011D */  beqz       $at, .L80039680
/* 39E0C 8003920C 8EB1001C */   lw        $s1, 0x1c($s5)
/* 39E10 80039210 00027880 */  sll        $t7, $v0, 2
/* 39E14 80039214 3C018007 */  lui        $at, %hi(D_80071E68)
/* 39E18 80039218 002F0821 */  addu       $at, $at, $t7
/* 39E1C 8003921C 8C2F1E68 */  lw         $t7, %lo(D_80071E68)($at)
/* 39E20 80039220 01E00008 */  jr         $t7
/* 39E24 80039224 00000000 */   nop
/* 39E28 80039228 8EB80028 */  lw         $t8, 0x28($s5)
/* 39E2C 8003922C 57000115 */  bnel       $t8, $zero, .L80039684
/* 39E30 80039230 02E02025 */   or        $a0, $s7, $zero
/* 39E34 80039234 12200112 */  beqz       $s1, .L80039680
/* 39E38 80039238 02A02825 */   or        $a1, $s5, $zero
/* 39E3C 8003923C A7A000E2 */  sh         $zero, 0xe2($sp)
/* 39E40 80039240 86B90020 */  lh         $t9, 0x20($s5)
/* 39E44 80039244 A3A000E4 */  sb         $zero, 0xe4($sp)
/* 39E48 80039248 27A600E0 */  addiu      $a2, $sp, 0xe0
/* 39E4C 8003924C A7B900E0 */  sh         $t9, 0xe0($sp)
/* 39E50 80039250 0C0110EA */  jal        alSynAllocVoice
/* 39E54 80039254 8EC40038 */   lw        $a0, 0x38($s6)
/* 39E58 80039258 8E270000 */  lw         $a3, ($s1)
/* 39E5C 8003925C 86AF002C */  lh         $t7, 0x2c($s5)
/* 39E60 80039260 2401007F */  addiu      $at, $zero, 0x7f
/* 39E64 80039264 90EE000C */  lbu        $t6, 0xc($a3)
/* 39E68 80039268 2408007F */  addiu      $t0, $zero, 0x7f
/* 39E6C 8003926C 01CF0019 */  multu      $t6, $t7
/* 39E70 80039270 0000C012 */  mflo       $t8
/* 39E74 80039274 00000000 */  nop
/* 39E78 80039278 00000000 */  nop
/* 39E7C 8003927C 0301001A */  div        $zero, $t8, $at
/* 39E80 80039280 0000C812 */  mflo       $t9
/* 39E84 80039284 A7B900BA */  sh         $t9, 0xba($sp)
/* 39E88 80039288 922F000C */  lbu        $t7, 0xc($s1)
/* 39E8C 8003928C 92AE002E */  lbu        $t6, 0x2e($s5)
/* 39E90 80039290 01CF1821 */  addu       $v1, $t6, $t7
/* 39E94 80039294 2463FFC0 */  addiu      $v1, $v1, -0x40
/* 39E98 80039298 0003C400 */  sll        $t8, $v1, 0x10
/* 39E9C 8003929C 00181C03 */  sra        $v1, $t8, 0x10
/* 39EA0 800392A0 5C600003 */  bgtzl      $v1, .L800392B0
/* 39EA4 800392A4 2861007F */   slti      $at, $v1, 0x7f
/* 39EA8 800392A8 00001825 */  or         $v1, $zero, $zero
/* 39EAC 800392AC 2861007F */  slti       $at, $v1, 0x7f
.L800392B0:
/* 39EB0 800392B0 10200003 */  beqz       $at, .L800392C0
/* 39EB4 800392B4 00000000 */   nop
/* 39EB8 800392B8 10000001 */  b          .L800392C0
/* 39EBC 800392BC 306800FF */   andi      $t0, $v1, 0xff
.L800392C0:
/* 39EC0 800392C0 C6A40024 */  lwc1       $f4, 0x24($s5)
/* 39EC4 800392C4 02A02825 */  or         $a1, $s5, $zero
/* 39EC8 800392C8 E7A400D0 */  swc1       $f4, 0xd0($sp)
/* 39ECC 800392CC 8CF00000 */  lw         $s0, ($a3)
/* 39ED0 800392D0 8E260008 */  lw         $a2, 8($s1)
/* 39ED4 800392D4 8EC40038 */  lw         $a0, 0x38($s6)
/* 39ED8 800392D8 0C0111D8 */  jal        alSynStartVoice
/* 39EDC 800392DC A3A800D7 */   sb        $t0, 0xd7($sp)
/* 39EE0 800392E0 93A600D7 */  lbu        $a2, 0xd7($sp)
/* 39EE4 800392E4 AEBE0028 */  sw         $fp, 0x28($s5)
/* 39EE8 800392E8 8EC40038 */  lw         $a0, 0x38($s6)
/* 39EEC 800392EC 0C01118C */  jal        alSynSetPan
/* 39EF0 800392F0 02A02825 */   or        $a1, $s5, $zero
/* 39EF4 800392F4 8EC40038 */  lw         $a0, 0x38($s6)
/* 39EF8 800392F8 02A02825 */  or         $a1, $s5, $zero
/* 39EFC 800392FC 87A600BA */  lh         $a2, 0xba($sp)
/* 39F00 80039300 0C011064 */  jal        alSynSetVol
/* 39F04 80039304 02003825 */   or        $a3, $s0, $zero
/* 39F08 80039308 8EC40038 */  lw         $a0, 0x38($s6)
/* 39F0C 8003930C 02A02825 */  or         $a1, $s5, $zero
/* 39F10 80039310 0C01108C */  jal        alSynSetPitch
/* 39F14 80039314 8FA600D0 */   lw        $a2, 0xd0($sp)
/* 39F18 80039318 8EC40038 */  lw         $a0, 0x38($s6)
/* 39F1C 8003931C 02A02825 */  or         $a1, $s5, $zero
/* 39F20 80039320 0C0111B0 */  jal        alSynSetFXMix
/* 39F24 80039324 92A6002F */   lbu       $a2, 0x2f($s5)
/* 39F28 80039328 240E0006 */  addiu      $t6, $zero, 6
/* 39F2C 8003932C A7AE00C0 */  sh         $t6, 0xc0($sp)
/* 39F30 80039330 AFB500C4 */  sw         $s5, 0xc4($sp)
/* 39F34 80039334 8E2F0000 */  lw         $t7, ($s1)
/* 39F38 80039338 C6A20024 */  lwc1       $f2, 0x24($s5)
/* 39F3C 8003933C 3C067FFF */  lui        $a2, 0x7fff
/* 39F40 80039340 8DE20000 */  lw         $v0, ($t7)
/* 39F44 80039344 02E02025 */  or         $a0, $s7, $zero
/* 39F48 80039348 44823000 */  mtc1       $v0, $f6
/* 39F4C 8003934C 00000000 */  nop
/* 39F50 80039350 46803220 */  cvt.s.w    $f8, $f6
/* 39F54 80039354 46024283 */  div.s      $f10, $f8, $f2
/* 39F58 80039358 46005021 */  cvt.d.s    $f0, $f10
/* 39F5C 8003935C 4620A03C */  c.lt.d     $f20, $f0
/* 39F60 80039360 00000000 */  nop
/* 39F64 80039364 45020004 */  bc1fl      .L80039378
/* 39F68 80039368 4620010D */   trunc.w.d $f4, $f0
/* 39F6C 8003936C 10000004 */  b          .L80039380
/* 39F70 80039370 34C6FFFF */   ori       $a2, $a2, 0xffff
/* 39F74 80039374 4620010D */  trunc.w.d  $f4, $f0
.L80039378:
/* 39F78 80039378 44062000 */  mfc1       $a2, $f4
/* 39F7C 8003937C 00000000 */  nop
.L80039380:
/* 39F80 80039380 0C00FF9B */  jal        alEvtqPostEvent
/* 39F84 80039384 27A500C0 */   addiu     $a1, $sp, 0xc0
/* 39F88 80039388 100000BE */  b          .L80039684
/* 39F8C 8003938C 02E02025 */   or        $a0, $s7, $zero
/* 39F90 80039390 8EB90028 */  lw         $t9, 0x28($s5)
/* 39F94 80039394 57D900BB */  bnel       $fp, $t9, .L80039684
/* 39F98 80039398 02E02025 */   or        $a0, $s7, $zero
/* 39F9C 8003939C 122000B8 */  beqz       $s1, .L80039680
/* 39FA0 800393A0 02A02825 */   or        $a1, $s5, $zero
/* 39FA4 800393A4 8E2E0000 */  lw         $t6, ($s1)
/* 39FA8 800393A8 C6A20024 */  lwc1       $f2, 0x24($s5)
/* 39FAC 800393AC 3C077FFF */  lui        $a3, 0x7fff
/* 39FB0 800393B0 8DC20008 */  lw         $v0, 8($t6)
/* 39FB4 800393B4 00003025 */  or         $a2, $zero, $zero
/* 39FB8 800393B8 44823000 */  mtc1       $v0, $f6
/* 39FBC 800393BC 00000000 */  nop
/* 39FC0 800393C0 46803220 */  cvt.s.w    $f8, $f6
/* 39FC4 800393C4 46024283 */  div.s      $f10, $f8, $f2
/* 39FC8 800393C8 46005021 */  cvt.d.s    $f0, $f10
/* 39FCC 800393CC 4620A03C */  c.lt.d     $f20, $f0
/* 39FD0 800393D0 00000000 */  nop
/* 39FD4 800393D4 45020004 */  bc1fl      .L800393E8
/* 39FD8 800393D8 4620010D */   trunc.w.d $f4, $f0
/* 39FDC 800393DC 10000004 */  b          .L800393F0
/* 39FE0 800393E0 34E7FFFF */   ori       $a3, $a3, 0xffff
/* 39FE4 800393E4 4620010D */  trunc.w.d  $f4, $f0
.L800393E8:
/* 39FE8 800393E8 44072000 */  mfc1       $a3, $f4
/* 39FEC 800393EC 00000000 */  nop
.L800393F0:
/* 39FF0 800393F0 00E08025 */  or         $s0, $a3, $zero
/* 39FF4 800393F4 0C011064 */  jal        alSynSetVol
/* 39FF8 800393F8 8EC40038 */   lw        $a0, 0x38($s6)
/* 39FFC 800393FC 1200000B */  beqz       $s0, .L8003942C
/* 3A000 80039400 02A02825 */   or        $a1, $s5, $zero
/* 3A004 80039404 24180007 */  addiu      $t8, $zero, 7
/* 3A008 80039408 A7B800C0 */  sh         $t8, 0xc0($sp)
/* 3A00C 8003940C AFB500C4 */  sw         $s5, 0xc4($sp)
/* 3A010 80039410 02E02025 */  or         $a0, $s7, $zero
/* 3A014 80039414 27A500C0 */  addiu      $a1, $sp, 0xc0
/* 3A018 80039418 0C00FF9B */  jal        alEvtqPostEvent
/* 3A01C 8003941C 02003025 */   or        $a2, $s0, $zero
/* 3A020 80039420 24190002 */  addiu      $t9, $zero, 2
/* 3A024 80039424 10000096 */  b          .L80039680
/* 3A028 80039428 AEB90028 */   sw        $t9, 0x28($s5)
.L8003942C:
/* 3A02C 8003942C 0C011018 */  jal        alSynStopVoice
/* 3A030 80039430 8EC40038 */   lw        $a0, 0x38($s6)
/* 3A034 80039434 8EC40038 */  lw         $a0, 0x38($s6)
/* 3A038 80039438 0C011038 */  jal        alSynFreeVoice
/* 3A03C 8003943C 02A02825 */   or        $a1, $s5, $zero
/* 3A040 80039440 02E09025 */  or         $s2, $s7, $zero
/* 3A044 80039444 02A09825 */  or         $s3, $s5, $zero
/* 3A048 80039448 0C00E440 */  jal        UnknownALfunction
/* 3A04C 8003944C AFB4004C */   sw        $s4, 0x4c($sp)
/* 3A050 80039450 8FB4004C */  lw         $s4, 0x4c($sp)
/* 3A054 80039454 1000008A */  b          .L80039680
/* 3A058 80039458 AEA00028 */   sw        $zero, 0x28($s5)
/* 3A05C 8003945C 8EAF0028 */  lw         $t7, 0x28($s5)
/* 3A060 80039460 928E0008 */  lbu        $t6, 8($s4)
/* 3A064 80039464 17CF0086 */  bne        $fp, $t7, .L80039680
/* 3A068 80039468 A2AE002E */   sb        $t6, 0x2e($s5)
/* 3A06C 8003946C 12200084 */  beqz       $s1, .L80039680
/* 3A070 80039470 02A02825 */   or        $a1, $s5, $zero
/* 3A074 80039474 9239000C */  lbu        $t9, 0xc($s1)
/* 3A078 80039478 31D800FF */  andi       $t8, $t6, 0xff
/* 3A07C 8003947C 2408007F */  addiu      $t0, $zero, 0x7f
/* 3A080 80039480 03191821 */  addu       $v1, $t8, $t9
/* 3A084 80039484 2463FFC0 */  addiu      $v1, $v1, -0x40
/* 3A088 80039488 00037400 */  sll        $t6, $v1, 0x10
/* 3A08C 8003948C 000E1C03 */  sra        $v1, $t6, 0x10
/* 3A090 80039490 5C600003 */  bgtzl      $v1, .L800394A0
/* 3A094 80039494 2861007F */   slti      $at, $v1, 0x7f
/* 3A098 80039498 00001825 */  or         $v1, $zero, $zero
/* 3A09C 8003949C 2861007F */  slti       $at, $v1, 0x7f
.L800394A0:
/* 3A0A0 800394A0 10200003 */  beqz       $at, .L800394B0
/* 3A0A4 800394A4 00000000 */   nop
/* 3A0A8 800394A8 10000001 */  b          .L800394B0
/* 3A0AC 800394AC 306800FF */   andi      $t0, $v1, 0xff
.L800394B0:
/* 3A0B0 800394B0 8EC40038 */  lw         $a0, 0x38($s6)
/* 3A0B4 800394B4 0C01118C */  jal        alSynSetPan
/* 3A0B8 800394B8 310600FF */   andi      $a2, $t0, 0xff
/* 3A0BC 800394BC 10000071 */  b          .L80039684
/* 3A0C0 800394C0 02E02025 */   or        $a0, $s7, $zero
/* 3A0C4 800394C4 C6800008 */  lwc1       $f0, 8($s4)
/* 3A0C8 800394C8 3C018007 */  lui        $at, %hi(D_80071E90)
/* 3A0CC 800394CC 02A02825 */  or         $a1, $s5, $zero
/* 3A0D0 800394D0 E6A00024 */  swc1       $f0, 0x24($s5)
/* 3A0D4 800394D4 D4281E90 */  ldc1       $f8, %lo(D_80071E90)($at)
/* 3A0D8 800394D8 460001A1 */  cvt.d.s    $f6, $f0
/* 3A0DC 800394DC 3C018007 */  lui        $at, %hi(D_80071E98)
/* 3A0E0 800394E0 4628303C */  c.lt.d     $f6, $f8
/* 3A0E4 800394E4 00000000 */  nop
/* 3A0E8 800394E8 45020004 */  bc1fl      .L800394FC
/* 3A0EC 800394EC 8EB80028 */   lw        $t8, 0x28($s5)
/* 3A0F0 800394F0 C42A1E98 */  lwc1       $f10, %lo(D_80071E98)($at)
/* 3A0F4 800394F4 E6AA0024 */  swc1       $f10, 0x24($s5)
/* 3A0F8 800394F8 8EB80028 */  lw         $t8, 0x28($s5)
.L800394FC:
/* 3A0FC 800394FC 57D80061 */  bnel       $fp, $t8, .L80039684
/* 3A100 80039500 02E02025 */   or        $a0, $s7, $zero
/* 3A104 80039504 8EC40038 */  lw         $a0, 0x38($s6)
/* 3A108 80039508 0C01108C */  jal        alSynSetPitch
/* 3A10C 8003950C 8EA60024 */   lw        $a2, 0x24($s5)
/* 3A110 80039510 1000005C */  b          .L80039684
/* 3A114 80039514 02E02025 */   or        $a0, $s7, $zero
/* 3A118 80039518 8EAE0028 */  lw         $t6, 0x28($s5)
/* 3A11C 8003951C 92990008 */  lbu        $t9, 8($s4)
/* 3A120 80039520 02A02825 */  or         $a1, $s5, $zero
/* 3A124 80039524 17CE0056 */  bne        $fp, $t6, .L80039680
/* 3A128 80039528 A2B9002F */   sb        $t9, 0x2f($s5)
/* 3A12C 8003952C 8EC40038 */  lw         $a0, 0x38($s6)
/* 3A130 80039530 0C0111B0 */  jal        alSynSetFXMix
/* 3A134 80039534 332600FF */   andi      $a2, $t9, 0xff
/* 3A138 80039538 10000052 */  b          .L80039684
/* 3A13C 8003953C 02E02025 */   or        $a0, $s7, $zero
/* 3A140 80039540 8EB80028 */  lw         $t8, 0x28($s5)
/* 3A144 80039544 868F0008 */  lh         $t7, 8($s4)
/* 3A148 80039548 17D8004D */  bne        $fp, $t8, .L80039680
/* 3A14C 8003954C A6AF002C */   sh        $t7, 0x2c($s5)
/* 3A150 80039550 5220004C */  beql       $s1, $zero, .L80039684
/* 3A154 80039554 02E02025 */   or        $a0, $s7, $zero
/* 3A158 80039558 8E390000 */  lw         $t9, ($s1)
/* 3A15C 8003955C 86AF002C */  lh         $t7, 0x2c($s5)
/* 3A160 80039560 2401007F */  addiu      $at, $zero, 0x7f
/* 3A164 80039564 932E000D */  lbu        $t6, 0xd($t9)
/* 3A168 80039568 8EC40038 */  lw         $a0, 0x38($s6)
/* 3A16C 8003956C 02A02825 */  or         $a1, $s5, $zero
/* 3A170 80039570 01CF0019 */  multu      $t6, $t7
/* 3A174 80039574 240703E8 */  addiu      $a3, $zero, 0x3e8
/* 3A178 80039578 00004012 */  mflo       $t0
/* 3A17C 8003957C 00000000 */  nop
/* 3A180 80039580 00000000 */  nop
/* 3A184 80039584 0101001A */  div        $zero, $t0, $at
/* 3A188 80039588 0000C012 */  mflo       $t8
/* 3A18C 8003958C 00183400 */  sll        $a2, $t8, 0x10
/* 3A190 80039590 0006CC03 */  sra        $t9, $a2, 0x10
/* 3A194 80039594 0C011064 */  jal        alSynSetVol
/* 3A198 80039598 03203025 */   or        $a2, $t9, $zero
/* 3A19C 8003959C 10000039 */  b          .L80039684
/* 3A1A0 800395A0 02E02025 */   or        $a0, $s7, $zero
/* 3A1A4 800395A4 8E270000 */  lw         $a3, ($s1)
/* 3A1A8 800395A8 2401FFFF */  addiu      $at, $zero, -1
/* 3A1AC 800395AC 02A02825 */  or         $a1, $s5, $zero
/* 3A1B0 800395B0 8CE30004 */  lw         $v1, 4($a3)
/* 3A1B4 800395B4 50610033 */  beql       $v1, $at, .L80039684
/* 3A1B8 800395B8 02E02025 */   or        $a0, $s7, $zero
/* 3A1BC 800395BC 90EE000D */  lbu        $t6, 0xd($a3)
/* 3A1C0 800395C0 86AF002C */  lh         $t7, 0x2c($s5)
/* 3A1C4 800395C4 2401007F */  addiu      $at, $zero, 0x7f
/* 3A1C8 800395C8 44832000 */  mtc1       $v1, $f4
/* 3A1CC 800395CC 01CF0019 */  multu      $t6, $t7
/* 3A1D0 800395D0 C6A20024 */  lwc1       $f2, 0x24($s5)
/* 3A1D4 800395D4 468021A0 */  cvt.s.w    $f6, $f4
/* 3A1D8 800395D8 3C077FFF */  lui        $a3, 0x7fff
/* 3A1DC 800395DC 46023203 */  div.s      $f8, $f6, $f2
/* 3A1E0 800395E0 00004012 */  mflo       $t0
/* 3A1E4 800395E4 00000000 */  nop
/* 3A1E8 800395E8 00000000 */  nop
/* 3A1EC 800395EC 0101001A */  div        $zero, $t0, $at
/* 3A1F0 800395F0 46004021 */  cvt.d.s    $f0, $f8
/* 3A1F4 800395F4 00004012 */  mflo       $t0
/* 3A1F8 800395F8 4620A03C */  c.lt.d     $f20, $f0
/* 3A1FC 800395FC 00083400 */  sll        $a2, $t0, 0x10
/* 3A200 80039600 00067403 */  sra        $t6, $a2, 0x10
/* 3A204 80039604 01C03025 */  or         $a2, $t6, $zero
/* 3A208 80039608 45020004 */  bc1fl      .L8003961C
/* 3A20C 8003960C 4620028D */   trunc.w.d $f10, $f0
/* 3A210 80039610 10000004 */  b          .L80039624
/* 3A214 80039614 34E7FFFF */   ori       $a3, $a3, 0xffff
/* 3A218 80039618 4620028D */  trunc.w.d  $f10, $f0
.L8003961C:
/* 3A21C 8003961C 44075000 */  mfc1       $a3, $f10
/* 3A220 80039620 00000000 */  nop
.L80039624:
/* 3A224 80039624 00E08025 */  or         $s0, $a3, $zero
/* 3A228 80039628 0C011064 */  jal        alSynSetVol
/* 3A22C 8003962C 8EC40038 */   lw        $a0, 0x38($s6)
/* 3A230 80039630 A7BE00C0 */  sh         $fp, 0xc0($sp)
/* 3A234 80039634 AFB500C4 */  sw         $s5, 0xc4($sp)
/* 3A238 80039638 02E02025 */  or         $a0, $s7, $zero
/* 3A23C 8003963C 27A500C0 */  addiu      $a1, $sp, 0xc0
/* 3A240 80039640 0C00FF9B */  jal        alEvtqPostEvent
/* 3A244 80039644 02003025 */   or        $a2, $s0, $zero
/* 3A248 80039648 1000000E */  b          .L80039684
/* 3A24C 8003964C 02E02025 */   or        $a0, $s7, $zero
/* 3A250 80039650 8EC40038 */  lw         $a0, 0x38($s6)
/* 3A254 80039654 0C011018 */  jal        alSynStopVoice
/* 3A258 80039658 02A02825 */   or        $a1, $s5, $zero
/* 3A25C 8003965C 8EC40038 */  lw         $a0, 0x38($s6)
/* 3A260 80039660 0C011038 */  jal        alSynFreeVoice
/* 3A264 80039664 02A02825 */   or        $a1, $s5, $zero
/* 3A268 80039668 02E09025 */  or         $s2, $s7, $zero
/* 3A26C 8003966C 02A09825 */  or         $s3, $s5, $zero
/* 3A270 80039670 0C00E440 */  jal        UnknownALfunction
/* 3A274 80039674 AFB4004C */   sw        $s4, 0x4c($sp)
/* 3A278 80039678 8FB4004C */  lw         $s4, 0x4c($sp)
/* 3A27C 8003967C AEA00028 */  sw         $zero, 0x28($s5)
.L80039680:
/* 3A280 80039680 02E02025 */  or         $a0, $s7, $zero
.L80039684:
/* 3A284 80039684 0C00FFE4 */  jal        alEvtqNextEvent
/* 3A288 80039688 02802825 */   or        $a1, $s4, $zero
/* 3A28C 8003968C 1040FED1 */  beqz       $v0, .L800391D4
/* 3A290 80039690 AEC2004C */   sw        $v0, 0x4c($s6)
/* 3A294 80039694 8ECF0050 */  lw         $t7, 0x50($s6)
/* 3A298 80039698 01E2C021 */  addu       $t8, $t7, $v0
/* 3A29C 8003969C AED80050 */  sw         $t8, 0x50($s6)
/* 3A2A0 800396A0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 3A2A4 800396A4 8FBE0040 */  lw         $fp, 0x40($sp)
/* 3A2A8 800396A8 8FB7003C */  lw         $s7, 0x3c($sp)
/* 3A2AC 800396AC 8FB60038 */  lw         $s6, 0x38($sp)
/* 3A2B0 800396B0 8FB50034 */  lw         $s5, 0x34($sp)
/* 3A2B4 800396B4 8FB40030 */  lw         $s4, 0x30($sp)
/* 3A2B8 800396B8 8FB3002C */  lw         $s3, 0x2c($sp)
/* 3A2BC 800396BC 8FB20028 */  lw         $s2, 0x28($sp)
/* 3A2C0 800396C0 8FB10024 */  lw         $s1, 0x24($sp)
/* 3A2C4 800396C4 8FB00020 */  lw         $s0, 0x20($sp)
/* 3A2C8 800396C8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 3A2CC 800396CC 03E00008 */  jr         $ra
/* 3A2D0 800396D0 27BD0108 */   addiu     $sp, $sp, 0x108

glabel alSndpNew
/* 3A2D4 800396D4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3A2D8 800396D8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3A2DC 800396DC AFB00020 */  sw         $s0, 0x20($sp)
/* 3A2E0 800396E0 8CAE0000 */  lw         $t6, ($a1)
/* 3A2E4 800396E4 240FFFFF */  addiu      $t7, $zero, -1
/* 3A2E8 800396E8 24183E80 */  addiu      $t8, $zero, 0x3e80
/* 3A2EC 800396EC 00A04025 */  or         $t0, $a1, $zero
/* 3A2F0 800396F0 AC8F003C */  sw         $t7, 0x3c($a0)
/* 3A2F4 800396F4 AC980048 */  sw         $t8, 0x48($a0)
/* 3A2F8 800396F8 AC8E0044 */  sw         $t6, 0x44($a0)
/* 3A2FC 800396FC 8D190000 */  lw         $t9, ($t0)
/* 3A300 80039700 00808025 */  or         $s0, $a0, $zero
/* 3A304 80039704 8D060008 */  lw         $a2, 8($t0)
/* 3A308 80039708 00194880 */  sll        $t1, $t9, 2
/* 3A30C 8003970C 01394823 */  subu       $t1, $t1, $t9
/* 3A310 80039710 00094900 */  sll        $t1, $t1, 4
/* 3A314 80039714 AFA90010 */  sw         $t1, 0x10($sp)
/* 3A318 80039718 AFA8004C */  sw         $t0, 0x4c($sp)
/* 3A31C 8003971C 00002025 */  or         $a0, $zero, $zero
/* 3A320 80039720 00002825 */  or         $a1, $zero, $zero
/* 3A324 80039724 0C00D998 */  jal        alHeapDBAlloc
/* 3A328 80039728 24070001 */   addiu     $a3, $zero, 1
/* 3A32C 8003972C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 3A330 80039730 AE020040 */  sw         $v0, 0x40($s0)
/* 3A334 80039734 00001825 */  or         $v1, $zero, $zero
/* 3A338 80039738 8D0A0000 */  lw         $t2, ($t0)
/* 3A33C 8003973C 00402025 */  or         $a0, $v0, $zero
/* 3A340 80039740 00002825 */  or         $a1, $zero, $zero
/* 3A344 80039744 11400008 */  beqz       $t2, .L80039768
/* 3A348 80039748 24070001 */   addiu     $a3, $zero, 1
/* 3A34C 8003974C AC80001C */  sw         $zero, 0x1c($a0)
.L80039750:
/* 3A350 80039750 8D0B0000 */  lw         $t3, ($t0)
/* 3A354 80039754 24630001 */  addiu      $v1, $v1, 1
/* 3A358 80039758 24840030 */  addiu      $a0, $a0, 0x30
/* 3A35C 8003975C 006B082B */  sltu       $at, $v1, $t3
/* 3A360 80039760 5420FFFB */  bnel       $at, $zero, .L80039750
/* 3A364 80039764 AC80001C */   sw        $zero, 0x1c($a0)
.L80039768:
/* 3A368 80039768 8D0C0004 */  lw         $t4, 4($t0)
/* 3A36C 8003976C 8D060008 */  lw         $a2, 8($t0)
/* 3A370 80039770 AFA8004C */  sw         $t0, 0x4c($sp)
/* 3A374 80039774 000C68C0 */  sll        $t5, $t4, 3
/* 3A378 80039778 01AC6823 */  subu       $t5, $t5, $t4
/* 3A37C 8003977C 000D6880 */  sll        $t5, $t5, 2
/* 3A380 80039780 AFAD0010 */  sw         $t5, 0x10($sp)
/* 3A384 80039784 0C00D998 */  jal        alHeapDBAlloc
/* 3A388 80039788 00002025 */   or        $a0, $zero, $zero
/* 3A38C 8003978C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 3A390 80039790 26040014 */  addiu      $a0, $s0, 0x14
/* 3A394 80039794 00402825 */  or         $a1, $v0, $zero
/* 3A398 80039798 8D060004 */  lw         $a2, 4($t0)
/* 3A39C 8003979C 0C010007 */  jal        alEvtqNew
/* 3A3A0 800397A0 AFA40028 */   sw        $a0, 0x28($sp)
/* 3A3A4 800397A4 3C0E8007 */  lui        $t6, %hi(alGlobals)
/* 3A3A8 800397A8 8DC40990 */  lw         $a0, %lo(alGlobals)($t6)
/* 3A3AC 800397AC 3C0F8004 */  lui        $t7, %hi(func_8003918C)
/* 3A3B0 800397B0 25EF918C */  addiu      $t7, $t7, %lo(func_8003918C)
/* 3A3B4 800397B4 AE000000 */  sw         $zero, ($s0)
/* 3A3B8 800397B8 AE0F0008 */  sw         $t7, 8($s0)
/* 3A3BC 800397BC AE100004 */  sw         $s0, 4($s0)
/* 3A3C0 800397C0 02002825 */  or         $a1, $s0, $zero
/* 3A3C4 800397C4 0C011004 */  jal        alSynAddPlayer
/* 3A3C8 800397C8 AE040038 */   sw        $a0, 0x38($s0)
/* 3A3CC 800397CC 24180005 */  addiu      $t8, $zero, 5
/* 3A3D0 800397D0 A7B80034 */  sh         $t8, 0x34($sp)
/* 3A3D4 800397D4 8E060048 */  lw         $a2, 0x48($s0)
/* 3A3D8 800397D8 8FA40028 */  lw         $a0, 0x28($sp)
/* 3A3DC 800397DC 0C00FF9B */  jal        alEvtqPostEvent
/* 3A3E0 800397E0 27A50034 */   addiu     $a1, $sp, 0x34
/* 3A3E4 800397E4 8FA40028 */  lw         $a0, 0x28($sp)
/* 3A3E8 800397E8 0C00FFE4 */  jal        alEvtqNextEvent
/* 3A3EC 800397EC 26050028 */   addiu     $a1, $s0, 0x28
/* 3A3F0 800397F0 AE02004C */  sw         $v0, 0x4c($s0)
/* 3A3F4 800397F4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3A3F8 800397F8 8FB00020 */  lw         $s0, 0x20($sp)
/* 3A3FC 800397FC 27BD0048 */  addiu      $sp, $sp, 0x48
/* 3A400 80039800 03E00008 */  jr         $ra
/* 3A404 80039804 00000000 */   nop
/* 3A408 80039808 00000000 */  nop
/* 3A40C 8003980C 00000000 */  nop