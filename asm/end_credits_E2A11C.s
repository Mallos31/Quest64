.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801028DC
/* E2A11C 801028DC 27BDFE58 */  addiu      $sp, $sp, -0x1a8
/* E2A120 801028E0 AFBF003C */  sw         $ra, 0x3c($sp)
/* E2A124 801028E4 AFBE0038 */  sw         $fp, 0x38($sp)
/* E2A128 801028E8 AFB70034 */  sw         $s7, 0x34($sp)
/* E2A12C 801028EC AFB60030 */  sw         $s6, 0x30($sp)
/* E2A130 801028F0 AFB5002C */  sw         $s5, 0x2c($sp)
/* E2A134 801028F4 AFB40028 */  sw         $s4, 0x28($sp)
/* E2A138 801028F8 AFB30024 */  sw         $s3, 0x24($sp)
/* E2A13C 801028FC AFB20020 */  sw         $s2, 0x20($sp)
/* E2A140 80102900 AFB1001C */  sw         $s1, 0x1c($sp)
/* E2A144 80102904 AFB00018 */  sw         $s0, 0x18($sp)
/* E2A148 80102908 AFA401A8 */  sw         $a0, 0x1a8($sp)
/* E2A14C 8010290C 14800009 */  bnez       $a0, .L80102934
/* E2A150 80102910 AFA501AC */   sw        $a1, 0x1ac($sp)
/* E2A154 80102914 3C018015 */  lui        $at, %hi(D_80156FA0)
/* E2A158 80102918 C4306FA0 */  lwc1       $f16, %lo(D_80156FA0)($at)
/* E2A15C 8010291C 3C018010 */  lui        $at, %hi(D_801035C4)
/* E2A160 80102920 A02035C4 */  sb         $zero, %lo(D_801035C4)($at)
/* E2A164 80102924 3C018010 */  lui        $at, %hi(D_801035AC)
/* E2A168 80102928 00001025 */  or         $v0, $zero, $zero
/* E2A16C 8010292C 1000030E */  b          .L80103568
/* E2A170 80102930 E43035AC */   swc1      $f16, %lo(D_801035AC)($at)
.L80102934:
/* E2A174 80102934 3C0F8010 */  lui        $t7, %hi(D_801035C4)
/* E2A178 80102938 91EF35C4 */  lbu        $t7, %lo(D_801035C4)($t7)
/* E2A17C 8010293C 24100002 */  addiu      $s0, $zero, 2
/* E2A180 80102940 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* E2A184 80102944 160F0003 */  bne        $s0, $t7, .L80102954
/* E2A188 80102948 2463B2FC */   addiu     $v1, $v1, %lo(UNK_DisplayListCommand)
/* E2A18C 8010294C 10000306 */  b          .L80103568
/* E2A190 80102950 24020001 */   addiu     $v0, $zero, 1
.L80102954:
/* E2A194 80102954 8C620000 */  lw         $v0, ($v1)
/* E2A198 80102958 3C19E700 */  lui        $t9, 0xe700
/* E2A19C 8010295C 3C0FB900 */  lui        $t7, 0xb900
/* E2A1A0 80102960 24580008 */  addiu      $t8, $v0, 8
/* E2A1A4 80102964 AC780000 */  sw         $t8, ($v1)
/* E2A1A8 80102968 AC400004 */  sw         $zero, 4($v0)
/* E2A1AC 8010296C AC590000 */  sw         $t9, ($v0)
/* E2A1B0 80102970 8C620000 */  lw         $v0, ($v1)
/* E2A1B4 80102974 3C180050 */  lui        $t8, 0x50
/* E2A1B8 80102978 371841C8 */  ori        $t8, $t8, 0x41c8
/* E2A1BC 8010297C 244E0008 */  addiu      $t6, $v0, 8
/* E2A1C0 80102980 AC6E0000 */  sw         $t6, ($v1)
/* E2A1C4 80102984 35EF031D */  ori        $t7, $t7, 0x31d
/* E2A1C8 80102988 AC4F0000 */  sw         $t7, ($v0)
/* E2A1CC 8010298C AC580004 */  sw         $t8, 4($v0)
/* E2A1D0 80102990 8C620000 */  lw         $v0, ($v1)
/* E2A1D4 80102994 3C0F8010 */  lui        $t7, %hi(D_80103640)
/* E2A1D8 80102998 25EF3640 */  addiu      $t7, $t7, %lo(D_80103640)
/* E2A1DC 8010299C 24590008 */  addiu      $t9, $v0, 8
/* E2A1E0 801029A0 AC790000 */  sw         $t9, ($v1)
/* E2A1E4 801029A4 3C0E0600 */  lui        $t6, 0x600
/* E2A1E8 801029A8 AC4E0000 */  sw         $t6, ($v0)
/* E2A1EC 801029AC AC4F0004 */  sw         $t7, 4($v0)
/* E2A1F0 801029B0 8C620000 */  lw         $v0, ($v1)
/* E2A1F4 801029B4 3C19BA00 */  lui        $t9, 0xba00
/* E2A1F8 801029B8 37390E02 */  ori        $t9, $t9, 0xe02
/* E2A1FC 801029BC 24580008 */  addiu      $t8, $v0, 8
/* E2A200 801029C0 AC780000 */  sw         $t8, ($v1)
/* E2A204 801029C4 340E8000 */  ori        $t6, $zero, 0x8000
/* E2A208 801029C8 3C0F8010 */  lui        $t7, %hi(D_801035B0)
/* E2A20C 801029CC AC4E0004 */  sw         $t6, 4($v0)
/* E2A210 801029D0 AC590000 */  sw         $t9, ($v0)
/* E2A214 801029D4 8DEF35B0 */  lw         $t7, %lo(D_801035B0)($t7)
/* E2A218 801029D8 24013570 */  addiu      $at, $zero, 0x3570
/* E2A21C 801029DC 24180002 */  addiu      $t8, $zero, 2
/* E2A220 801029E0 15E10007 */  bne        $t7, $at, .L80102A00
/* E2A224 801029E4 3C0E8010 */   lui       $t6, 0x8010
/* E2A228 801029E8 3C018010 */  lui        $at, %hi(D_801035BC)
/* E2A22C 801029EC A03835BC */  sb         $t8, %lo(D_801035BC)($at)
/* E2A230 801029F0 3C018010 */  lui        $at, %hi(D_801035C0)
/* E2A234 801029F4 24190001 */  addiu      $t9, $zero, 1
/* E2A238 801029F8 10000011 */  b          .L80102A40
/* E2A23C 801029FC A03935C0 */   sb        $t9, %lo(D_801035C0)($at)
.L80102A00:
/* E2A240 80102A00 8DCE35B0 */  lw         $t6, 0x35b0($t6)
/* E2A244 80102A04 3C018015 */  lui        $at, %hi(D_80156FA8)
/* E2A248 80102A08 D4246FA8 */  ldc1       $f4, %lo(D_80156FA8)($at)
/* E2A24C 80102A0C 448E3000 */  mtc1       $t6, $f6
/* E2A250 80102A10 3C018010 */  lui        $at, 0x8010
/* E2A254 80102A14 240F0002 */  addiu      $t7, $zero, 2
/* E2A258 80102A18 46803221 */  cvt.d.w    $f8, $f6
/* E2A25C 80102A1C 240401E0 */  addiu      $a0, $zero, 0x1e0
/* E2A260 80102A20 46282032 */  c.eq.d     $f4, $f8
/* E2A264 80102A24 00000000 */  nop
/* E2A268 80102A28 45000005 */  bc1f       .L80102A40
/* E2A26C 80102A2C 00000000 */   nop
/* E2A270 80102A30 0C00990D */  jal        func_80026434
/* E2A274 80102A34 A02F35C0 */   sb        $t7, 0x35c0($at)
/* E2A278 80102A38 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* E2A27C 80102A3C 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
.L80102A40:
/* E2A280 80102A40 3C028010 */  lui        $v0, %hi(D_801035BC)
/* E2A284 80102A44 904235BC */  lbu        $v0, %lo(D_801035BC)($v0)
/* E2A288 80102A48 24010001 */  addiu      $at, $zero, 1
/* E2A28C 80102A4C 3C188010 */  lui        $t8, 0x8010
/* E2A290 80102A50 50400009 */  beql       $v0, $zero, .L80102A78
/* E2A294 80102A54 44806000 */   mtc1      $zero, $f12
/* E2A298 80102A58 10410009 */  beq        $v0, $at, .L80102A80
/* E2A29C 80102A5C 00000000 */   nop
/* E2A2A0 80102A60 1050000B */  beq        $v0, $s0, .L80102A90
/* E2A2A4 80102A64 3C018015 */   lui       $at, 0x8015
/* E2A2A8 80102A68 44806000 */  mtc1       $zero, $f12
/* E2A2AC 80102A6C 1000000A */  b          .L80102A98
/* E2A2B0 80102A70 46006006 */   mov.s     $f0, $f12
/* E2A2B4 80102A74 44806000 */  mtc1       $zero, $f12
.L80102A78:
/* E2A2B8 80102A78 10000007 */  b          .L80102A98
/* E2A2BC 80102A7C 46006006 */   mov.s     $f0, $f12
.L80102A80:
/* E2A2C0 80102A80 3C018015 */  lui        $at, %hi(D_80156FB0)
/* E2A2C4 80102A84 44806000 */  mtc1       $zero, $f12
/* E2A2C8 80102A88 10000003 */  b          .L80102A98
/* E2A2CC 80102A8C C4206FB0 */   lwc1      $f0, %lo(D_80156FB0)($at)
.L80102A90:
/* E2A2D0 80102A90 44806000 */  mtc1       $zero, $f12
/* E2A2D4 80102A94 C4206FB4 */  lwc1       $f0, 0x6fb4($at)
.L80102A98:
/* E2A2D8 80102A98 3C018010 */  lui        $at, %hi(D_801035B4)
/* E2A2DC 80102A9C C42235B4 */  lwc1       $f2, %lo(D_801035B4)($at)
/* E2A2E0 80102AA0 3C01437F */  lui        $at, 0x437f
/* E2A2E4 80102AA4 44817000 */  mtc1       $at, $f14
/* E2A2E8 80102AA8 46001080 */  add.s      $f2, $f2, $f0
/* E2A2EC 80102AAC 3C018010 */  lui        $at, 0x8010
/* E2A2F0 80102AB0 3C0EE700 */  lui        $t6, 0xe700
/* E2A2F4 80102AB4 00005025 */  or         $t2, $zero, $zero
/* E2A2F8 80102AB8 4602703C */  c.lt.s     $f14, $f2
/* E2A2FC 80102ABC 3C1EB300 */  lui        $fp, 0xb300
/* E2A300 80102AC0 3C17B400 */  lui        $s7, 0xb400
/* E2A304 80102AC4 45020005 */  bc1fl      .L80102ADC
/* E2A308 80102AC8 460C103E */   c.le.s    $f2, $f12
/* E2A30C 80102ACC 46007086 */  mov.s      $f2, $f14
/* E2A310 80102AD0 10000007 */  b          .L80102AF0
/* E2A314 80102AD4 A02035BC */   sb        $zero, 0x35bc($at)
/* E2A318 80102AD8 460C103E */  c.le.s     $f2, $f12
.L80102ADC:
/* E2A31C 80102ADC 3C018010 */  lui        $at, %hi(D_801035BC)
/* E2A320 80102AE0 45000003 */  bc1f       .L80102AF0
/* E2A324 80102AE4 00000000 */   nop
/* E2A328 80102AE8 46006086 */  mov.s      $f2, $f12
/* E2A32C 80102AEC A02035BC */  sb         $zero, %lo(D_801035BC)($at)
.L80102AF0:
/* E2A330 80102AF0 8F1835B0 */  lw         $t8, 0x35b0($t8)
/* E2A334 80102AF4 3C018010 */  lui        $at, %hi(D_801035B4)
/* E2A338 80102AF8 E42235B4 */  swc1       $f2, %lo(D_801035B4)($at)
/* E2A33C 80102AFC 2B0136D8 */  slti       $at, $t8, 0x36d8
/* E2A340 80102B00 1020011F */  beqz       $at, .L80102F80
/* E2A344 80102B04 3C18FB00 */   lui       $t8, 0xfb00
/* E2A348 80102B08 8C620000 */  lw         $v0, ($v1)
/* E2A34C 80102B0C 4600128D */  trunc.w.s  $f10, $f2
/* E2A350 80102B10 2401FF00 */  addiu      $at, $zero, -0x100
/* E2A354 80102B14 24590008 */  addiu      $t9, $v0, 8
/* E2A358 80102B18 AC790000 */  sw         $t9, ($v1)
/* E2A35C 80102B1C AC400004 */  sw         $zero, 4($v0)
/* E2A360 80102B20 AC4E0000 */  sw         $t6, ($v0)
/* E2A364 80102B24 8C620000 */  lw         $v0, ($v1)
/* E2A368 80102B28 440E5000 */  mfc1       $t6, $f10
/* E2A36C 80102B2C 24110005 */  addiu      $s1, $zero, 5
/* E2A370 80102B30 244F0008 */  addiu      $t7, $v0, 8
/* E2A374 80102B34 AC6F0000 */  sw         $t7, ($v1)
/* E2A378 80102B38 AC580000 */  sw         $t8, ($v0)
/* E2A37C 80102B3C 31CF00FF */  andi       $t7, $t6, 0xff
/* E2A380 80102B40 01E1C025 */  or         $t8, $t7, $at
/* E2A384 80102B44 AC580004 */  sw         $t8, 4($v0)
/* E2A388 80102B48 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* E2A38C 80102B4C 3C0F8010 */  lui        $t7, %hi(D_801061C0)
/* E2A390 80102B50 8C620000 */  lw         $v0, ($v1)
/* E2A394 80102B54 25EF61C0 */  addiu      $t7, $t7, %lo(D_801061C0)
/* E2A398 80102B58 00197100 */  sll        $t6, $t9, 4
/* E2A39C 80102B5C 01CF2021 */  addu       $a0, $t6, $t7
/* E2A3A0 80102B60 8C980008 */  lw         $t8, 8($a0)
/* E2A3A4 80102B64 8C8D0004 */  lw         $t5, 4($a0)
/* E2A3A8 80102B68 24590008 */  addiu      $t9, $v0, 8
/* E2A3AC 80102B6C 8C920000 */  lw         $s2, ($a0)
/* E2A3B0 80102B70 AC790000 */  sw         $t9, ($v1)
/* E2A3B4 80102B74 AFB80184 */  sw         $t8, 0x184($sp)
/* E2A3B8 80102B78 3C0EFD10 */  lui        $t6, 0xfd10
/* E2A3BC 80102B7C AC4E0000 */  sw         $t6, ($v0)
/* E2A3C0 80102B80 00403825 */  or         $a3, $v0, $zero
/* E2A3C4 80102B84 AC4D0004 */  sw         $t5, 4($v0)
/* E2A3C8 80102B88 8C620000 */  lw         $v0, ($v1)
/* E2A3CC 80102B8C 3C18E800 */  lui        $t8, 0xe800
/* E2A3D0 80102B90 3C0EF500 */  lui        $t6, 0xf500
/* E2A3D4 80102B94 244F0008 */  addiu      $t7, $v0, 8
/* E2A3D8 80102B98 AC6F0000 */  sw         $t7, ($v1)
/* E2A3DC 80102B9C AC400004 */  sw         $zero, 4($v0)
/* E2A3E0 80102BA0 AC580000 */  sw         $t8, ($v0)
/* E2A3E4 80102BA4 00404025 */  or         $t0, $v0, $zero
/* E2A3E8 80102BA8 8C620000 */  lw         $v0, ($v1)
/* E2A3EC 80102BAC 3C0F0700 */  lui        $t7, 0x700
/* E2A3F0 80102BB0 35CE0100 */  ori        $t6, $t6, 0x100
/* E2A3F4 80102BB4 24590008 */  addiu      $t9, $v0, 8
/* E2A3F8 80102BB8 AC790000 */  sw         $t9, ($v1)
/* E2A3FC 80102BBC AC4F0004 */  sw         $t7, 4($v0)
/* E2A400 80102BC0 AC4E0000 */  sw         $t6, ($v0)
/* E2A404 80102BC4 00404825 */  or         $t1, $v0, $zero
/* E2A408 80102BC8 8C620000 */  lw         $v0, ($v1)
/* E2A40C 80102BCC 3C19E600 */  lui        $t9, 0xe600
/* E2A410 80102BD0 3C0FF000 */  lui        $t7, 0xf000
/* E2A414 80102BD4 24580008 */  addiu      $t8, $v0, 8
/* E2A418 80102BD8 AC780000 */  sw         $t8, ($v1)
/* E2A41C 80102BDC AC400004 */  sw         $zero, 4($v0)
/* E2A420 80102BE0 AC590000 */  sw         $t9, ($v0)
/* E2A424 80102BE4 8C620000 */  lw         $v0, ($v1)
/* E2A428 80102BE8 3C18073F */  lui        $t8, 0x73f
/* E2A42C 80102BEC 3718C000 */  ori        $t8, $t8, 0xc000
/* E2A430 80102BF0 244E0008 */  addiu      $t6, $v0, 8
/* E2A434 80102BF4 AC6E0000 */  sw         $t6, ($v1)
/* E2A438 80102BF8 3C018010 */  lui        $at, %hi(D_801035B4)
/* E2A43C 80102BFC AC580004 */  sw         $t8, 4($v0)
/* E2A440 80102C00 AC4F0000 */  sw         $t7, ($v0)
/* E2A444 80102C04 E42235B4 */  swc1       $f2, %lo(D_801035B4)($at)
/* E2A448 80102C08 3C018010 */  lui        $at, %hi(D_801035AC)
/* E2A44C 80102C0C C43035AC */  lwc1       $f16, %lo(D_801035AC)($at)
/* E2A450 80102C10 8FAB0184 */  lw         $t3, 0x184($sp)
/* E2A454 80102C14 8C620000 */  lw         $v0, ($v1)
/* E2A458 80102C18 4600848D */  trunc.w.s  $f18, $f16
/* E2A45C 80102C1C 3C0EE700 */  lui        $t6, 0xe700
/* E2A460 80102C20 24590008 */  addiu      $t9, $v0, 8
/* E2A464 80102C24 AC790000 */  sw         $t9, ($v1)
/* E2A468 80102C28 44069000 */  mfc1       $a2, $f18
/* E2A46C 80102C2C AC4E0000 */  sw         $t6, ($v0)
/* E2A470 80102C30 240E0137 */  addiu      $t6, $zero, 0x137
/* E2A474 80102C34 00CB001B */  divu       $zero, $a2, $t3
/* E2A478 80102C38 00002010 */  mfhi       $a0
/* E2A47C 80102C3C 2573FFFF */  addiu      $s3, $t3, -1
/* E2A480 80102C40 32780FFF */  andi       $t8, $s3, 0xfff
/* E2A484 80102C44 01C4A023 */  subu       $s4, $t6, $a0
/* E2A488 80102C48 3C01FD48 */  lui        $at, 0xfd48
/* E2A48C 80102C4C 03019825 */  or         $s3, $t8, $at
/* E2A490 80102C50 001478C3 */  sra        $t7, $s4, 3
/* E2A494 80102C54 31F801FF */  andi       $t8, $t7, 0x1ff
/* E2A498 80102C58 0018CA40 */  sll        $t9, $t8, 9
/* E2A49C 80102C5C 00044080 */  sll        $t0, $a0, 2
/* E2A4A0 80102C60 310F0FFF */  andi       $t7, $t0, 0xfff
/* E2A4A4 80102C64 3C01F548 */  lui        $at, 0xf548
/* E2A4A8 80102C68 0321A025 */  or         $s4, $t9, $at
/* E2A4AC 80102C6C 000FC300 */  sll        $t8, $t7, 0xc
/* E2A4B0 80102C70 3C01F400 */  lui        $at, 0xf400
/* E2A4B4 80102C74 0301C825 */  or         $t9, $t8, $at
/* E2A4B8 80102C78 3C01F200 */  lui        $at, 0xf200
/* E2A4BC 80102C7C 2489FFFF */  addiu      $t1, $a0, -1
/* E2A4C0 80102C80 00097880 */  sll        $t7, $t1, 2
/* E2A4C4 80102C84 03017025 */  or         $t6, $t8, $at
/* E2A4C8 80102C88 03004025 */  or         $t0, $t8, $zero
/* E2A4CC 80102C8C AC400004 */  sw         $zero, 4($v0)
/* E2A4D0 80102C90 AFB9006C */  sw         $t9, 0x6c($sp)
/* E2A4D4 80102C94 31F80FFF */  andi       $t8, $t7, 0xfff
/* E2A4D8 80102C98 0018CB00 */  sll        $t9, $t8, 0xc
/* E2A4DC 80102C9C 24950007 */  addiu      $s5, $a0, 7
/* E2A4E0 80102CA0 001578C3 */  sra        $t7, $s5, 3
/* E2A4E4 80102CA4 31F801FF */  andi       $t8, $t7, 0x1ff
/* E2A4E8 80102CA8 AFAE0060 */  sw         $t6, 0x60($sp)
/* E2A4EC 80102CAC 3C010700 */  lui        $at, 0x700
/* E2A4F0 80102CB0 03217025 */  or         $t6, $t9, $at
/* E2A4F4 80102CB4 03204825 */  or         $t1, $t9, $zero
/* E2A4F8 80102CB8 0018CA40 */  sll        $t9, $t8, 9
/* E2A4FC 80102CBC 240F0130 */  addiu      $t7, $zero, 0x130
/* E2A500 80102CC0 01E4B023 */  subu       $s6, $t7, $a0
/* E2A504 80102CC4 3C01F548 */  lui        $at, 0xf548
/* E2A508 80102CC8 0321A825 */  or         $s5, $t9, $at
/* E2A50C 80102CCC 0016C080 */  sll        $t8, $s6, 2
/* E2A510 80102CD0 33190FFF */  andi       $t9, $t8, 0xfff
/* E2A514 80102CD4 AFAE0054 */  sw         $t6, 0x54($sp)
/* E2A518 80102CD8 00197300 */  sll        $t6, $t9, 0xc
/* E2A51C 80102CDC 0004C140 */  sll        $t8, $a0, 5
/* E2A520 80102CE0 3C01E400 */  lui        $at, 0xe400
/* E2A524 80102CE4 01C17825 */  or         $t7, $t6, $at
/* E2A528 80102CE8 3319FFFF */  andi       $t9, $t8, 0xffff
/* E2A52C 80102CEC 01C0B025 */  or         $s6, $t6, $zero
/* E2A530 80102CF0 00197400 */  sll        $t6, $t9, 0x10
/* E2A534 80102CF4 AFAE0040 */  sw         $t6, 0x40($sp)
/* E2A538 80102CF8 AFAF0044 */  sw         $t7, 0x44($sp)
/* E2A53C 80102CFC AFA9004C */  sw         $t1, 0x4c($sp)
/* E2A540 80102D00 00803825 */  or         $a3, $a0, $zero
/* E2A544 80102D04 00006825 */  or         $t5, $zero, $zero
/* E2A548 80102D08 241F0006 */  addiu      $ra, $zero, 6
/* E2A54C 80102D0C 00402825 */  or         $a1, $v0, $zero
/* E2A550 80102D10 15600002 */  bnez       $t3, .L80102D1C
/* E2A554 80102D14 00000000 */   nop
/* E2A558 80102D18 0007000D */  break      7
.L80102D1C:
/* E2A55C 80102D1C 8C620000 */   lw        $v0, ($v1)
/* E2A560 80102D20 3C190700 */  lui        $t9, 0x700
/* E2A564 80102D24 000D2080 */  sll        $a0, $t5, 2
/* E2A568 80102D28 244F0008 */  addiu      $t7, $v0, 8
/* E2A56C 80102D2C AC6F0000 */  sw         $t7, ($v1)
/* E2A570 80102D30 AC520004 */  sw         $s2, 4($v0)
/* E2A574 80102D34 AC530000 */  sw         $s3, ($v0)
/* E2A578 80102D38 8C620000 */  lw         $v0, ($v1)
/* E2A57C 80102D3C 3C0FE600 */  lui        $t7, 0xe600
/* E2A580 80102D40 00112880 */  sll        $a1, $s1, 2
/* E2A584 80102D44 24580008 */  addiu      $t8, $v0, 8
/* E2A588 80102D48 AC780000 */  sw         $t8, ($v1)
/* E2A58C 80102D4C AC590004 */  sw         $t9, 4($v0)
/* E2A590 80102D50 AC540000 */  sw         $s4, ($v0)
/* E2A594 80102D54 8C620000 */  lw         $v0, ($v1)
/* E2A598 80102D58 30990FFF */  andi       $t9, $a0, 0xfff
/* E2A59C 80102D5C 3C01074B */  lui        $at, 0x74b
/* E2A5A0 80102D60 244E0008 */  addiu      $t6, $v0, 8
/* E2A5A4 80102D64 AC6E0000 */  sw         $t6, ($v1)
/* E2A5A8 80102D68 AC400004 */  sw         $zero, 4($v0)
/* E2A5AC 80102D6C AC4F0000 */  sw         $t7, ($v0)
/* E2A5B0 80102D70 8C620000 */  lw         $v0, ($v1)
/* E2A5B4 80102D74 8FAE006C */  lw         $t6, 0x6c($sp)
/* E2A5B8 80102D78 3421C000 */  ori        $at, $at, 0xc000
/* E2A5BC 80102D7C 24580008 */  addiu      $t8, $v0, 8
/* E2A5C0 80102D80 AC780000 */  sw         $t8, ($v1)
/* E2A5C4 80102D84 30B80FFF */  andi       $t8, $a1, 0xfff
/* E2A5C8 80102D88 03202025 */  or         $a0, $t9, $zero
/* E2A5CC 80102D8C 01D97825 */  or         $t7, $t6, $t9
/* E2A5D0 80102D90 0301C825 */  or         $t9, $t8, $at
/* E2A5D4 80102D94 AC590004 */  sw         $t9, 4($v0)
/* E2A5D8 80102D98 AC4F0000 */  sw         $t7, ($v0)
/* E2A5DC 80102D9C 8C620000 */  lw         $v0, ($v1)
/* E2A5E0 80102DA0 3C0FE700 */  lui        $t7, 0xe700
/* E2A5E4 80102DA4 03002825 */  or         $a1, $t8, $zero
/* E2A5E8 80102DA8 244E0008 */  addiu      $t6, $v0, 8
/* E2A5EC 80102DAC AC6E0000 */  sw         $t6, ($v1)
/* E2A5F0 80102DB0 AC400004 */  sw         $zero, 4($v0)
/* E2A5F4 80102DB4 AC4F0000 */  sw         $t7, ($v0)
/* E2A5F8 80102DB8 8C620000 */  lw         $v0, ($v1)
/* E2A5FC 80102DBC 3C01004B */  lui        $at, 0x4b
/* E2A600 80102DC0 3421C000 */  ori        $at, $at, 0xc000
/* E2A604 80102DC4 24580008 */  addiu      $t8, $v0, 8
/* E2A608 80102DC8 AC780000 */  sw         $t8, ($v1)
/* E2A60C 80102DCC AC400004 */  sw         $zero, 4($v0)
/* E2A610 80102DD0 AC540000 */  sw         $s4, ($v0)
/* E2A614 80102DD4 8C620000 */  lw         $v0, ($v1)
/* E2A618 80102DD8 8FAE0060 */  lw         $t6, 0x60($sp)
/* E2A61C 80102DDC 00A1C025 */  or         $t8, $a1, $at
/* E2A620 80102DE0 24590008 */  addiu      $t9, $v0, 8
/* E2A624 80102DE4 AC790000 */  sw         $t9, ($v1)
/* E2A628 80102DE8 01C47825 */  or         $t7, $t6, $a0
/* E2A62C 80102DEC AC4F0000 */  sw         $t7, ($v0)
/* E2A630 80102DF0 AC580004 */  sw         $t8, 4($v0)
/* E2A634 80102DF4 8C620000 */  lw         $v0, ($v1)
/* E2A638 80102DF8 8FAF0044 */  lw         $t7, 0x44($sp)
/* E2A63C 80102DFC 001F3880 */  sll        $a3, $ra, 2
/* E2A640 80102E00 24590008 */  addiu      $t9, $v0, 8
/* E2A644 80102E04 AC790000 */  sw         $t9, ($v1)
/* E2A648 80102E08 30EE0FFF */  andi       $t6, $a3, 0xfff
/* E2A64C 80102E0C 01EEC025 */  or         $t8, $t7, $t6
/* E2A650 80102E10 AC580000 */  sw         $t8, ($v0)
/* E2A654 80102E14 AC440004 */  sw         $a0, 4($v0)
/* E2A658 80102E18 8C620000 */  lw         $v0, ($v1)
/* E2A65C 80102E1C 01C03825 */  or         $a3, $t6, $zero
/* E2A660 80102E20 000D8140 */  sll        $s0, $t5, 5
/* E2A664 80102E24 24590008 */  addiu      $t9, $v0, 8
/* E2A668 80102E28 AC790000 */  sw         $t9, ($v1)
/* E2A66C 80102E2C AC570000 */  sw         $s7, ($v0)
/* E2A670 80102E30 8FAF0040 */  lw         $t7, 0x40($sp)
/* E2A674 80102E34 320EFFFF */  andi       $t6, $s0, 0xffff
/* E2A678 80102E38 01C08025 */  or         $s0, $t6, $zero
/* E2A67C 80102E3C 01EEC025 */  or         $t8, $t7, $t6
/* E2A680 80102E40 AC580004 */  sw         $t8, 4($v0)
/* E2A684 80102E44 8C620000 */  lw         $v0, ($v1)
/* E2A688 80102E48 3C0E0400 */  lui        $t6, 0x400
/* E2A68C 80102E4C 35CE0400 */  ori        $t6, $t6, 0x400
/* E2A690 80102E50 24590008 */  addiu      $t9, $v0, 8
/* E2A694 80102E54 AC790000 */  sw         $t9, ($v1)
/* E2A698 80102E58 AC4E0004 */  sw         $t6, 4($v0)
/* E2A69C 80102E5C AC5E0000 */  sw         $fp, ($v0)
/* E2A6A0 80102E60 8C620000 */  lw         $v0, ($v1)
/* E2A6A4 80102E64 3C190700 */  lui        $t9, 0x700
/* E2A6A8 80102E68 3C01F400 */  lui        $at, 0xf400
/* E2A6AC 80102E6C 244F0008 */  addiu      $t7, $v0, 8
/* E2A6B0 80102E70 AC6F0000 */  sw         $t7, ($v1)
/* E2A6B4 80102E74 AC520004 */  sw         $s2, 4($v0)
/* E2A6B8 80102E78 AC530000 */  sw         $s3, ($v0)
/* E2A6BC 80102E7C 8C620000 */  lw         $v0, ($v1)
/* E2A6C0 80102E80 3C0FE600 */  lui        $t7, 0xe600
/* E2A6C4 80102E84 27FF0006 */  addiu      $ra, $ra, 6
/* E2A6C8 80102E88 24580008 */  addiu      $t8, $v0, 8
/* E2A6CC 80102E8C AC780000 */  sw         $t8, ($v1)
/* E2A6D0 80102E90 AC590004 */  sw         $t9, 4($v0)
/* E2A6D4 80102E94 AC550000 */  sw         $s5, ($v0)
/* E2A6D8 80102E98 8C620000 */  lw         $v0, ($v1)
/* E2A6DC 80102E9C 0081C825 */  or         $t9, $a0, $at
/* E2A6E0 80102EA0 3C01F200 */  lui        $at, 0xf200
/* E2A6E4 80102EA4 244E0008 */  addiu      $t6, $v0, 8
/* E2A6E8 80102EA8 AC6E0000 */  sw         $t6, ($v1)
/* E2A6EC 80102EAC AC400004 */  sw         $zero, 4($v0)
/* E2A6F0 80102EB0 AC4F0000 */  sw         $t7, ($v0)
/* E2A6F4 80102EB4 8C620000 */  lw         $v0, ($v1)
/* E2A6F8 80102EB8 25AD0006 */  addiu      $t5, $t5, 6
/* E2A6FC 80102EBC 26310006 */  addiu      $s1, $s1, 6
/* E2A700 80102EC0 24580008 */  addiu      $t8, $v0, 8
/* E2A704 80102EC4 AC780000 */  sw         $t8, ($v1)
/* E2A708 80102EC8 AC590000 */  sw         $t9, ($v0)
/* E2A70C 80102ECC 8FAE0054 */  lw         $t6, 0x54($sp)
/* E2A710 80102ED0 3C19E700 */  lui        $t9, 0xe700
/* E2A714 80102ED4 01C57825 */  or         $t7, $t6, $a1
/* E2A718 80102ED8 AC4F0004 */  sw         $t7, 4($v0)
/* E2A71C 80102EDC 8C620000 */  lw         $v0, ($v1)
/* E2A720 80102EE0 24580008 */  addiu      $t8, $v0, 8
/* E2A724 80102EE4 AC780000 */  sw         $t8, ($v1)
/* E2A728 80102EE8 AC400004 */  sw         $zero, 4($v0)
/* E2A72C 80102EEC AC590000 */  sw         $t9, ($v0)
/* E2A730 80102EF0 8C620000 */  lw         $v0, ($v1)
/* E2A734 80102EF4 0081C025 */  or         $t8, $a0, $at
/* E2A738 80102EF8 3C01E44C */  lui        $at, 0xe44c
/* E2A73C 80102EFC 244E0008 */  addiu      $t6, $v0, 8
/* E2A740 80102F00 AC6E0000 */  sw         $t6, ($v1)
/* E2A744 80102F04 AC400004 */  sw         $zero, 4($v0)
/* E2A748 80102F08 AC550000 */  sw         $s5, ($v0)
/* E2A74C 80102F0C 8C620000 */  lw         $v0, ($v1)
/* E2A750 80102F10 244F0008 */  addiu      $t7, $v0, 8
/* E2A754 80102F14 AC6F0000 */  sw         $t7, ($v1)
/* E2A758 80102F18 AC580000 */  sw         $t8, ($v0)
/* E2A75C 80102F1C 8FB9004C */  lw         $t9, 0x4c($sp)
/* E2A760 80102F20 00E1C025 */  or         $t8, $a3, $at
/* E2A764 80102F24 240100E4 */  addiu      $at, $zero, 0xe4
/* E2A768 80102F28 03257025 */  or         $t6, $t9, $a1
/* E2A76C 80102F2C AC4E0004 */  sw         $t6, 4($v0)
/* E2A770 80102F30 8C620000 */  lw         $v0, ($v1)
/* E2A774 80102F34 02C4C825 */  or         $t9, $s6, $a0
/* E2A778 80102F38 244F0008 */  addiu      $t7, $v0, 8
/* E2A77C 80102F3C AC6F0000 */  sw         $t7, ($v1)
/* E2A780 80102F40 AC590004 */  sw         $t9, 4($v0)
/* E2A784 80102F44 AC580000 */  sw         $t8, ($v0)
/* E2A788 80102F48 8C620000 */  lw         $v0, ($v1)
/* E2A78C 80102F4C 3C180400 */  lui        $t8, 0x400
/* E2A790 80102F50 37180400 */  ori        $t8, $t8, 0x400
/* E2A794 80102F54 244E0008 */  addiu      $t6, $v0, 8
/* E2A798 80102F58 AC6E0000 */  sw         $t6, ($v1)
/* E2A79C 80102F5C AC500004 */  sw         $s0, 4($v0)
/* E2A7A0 80102F60 AC570000 */  sw         $s7, ($v0)
/* E2A7A4 80102F64 8C620000 */  lw         $v0, ($v1)
/* E2A7A8 80102F68 244F0008 */  addiu      $t7, $v0, 8
/* E2A7AC 80102F6C AC6F0000 */  sw         $t7, ($v1)
/* E2A7B0 80102F70 AC580004 */  sw         $t8, 4($v0)
/* E2A7B4 80102F74 17E1FF69 */  bne        $ra, $at, .L80102D1C
/* E2A7B8 80102F78 AC5E0000 */   sw        $fp, ($v0)
/* E2A7BC 80102F7C 24100002 */  addiu      $s0, $zero, 2
.L80102F80:
/* E2A7C0 80102F80 3C028010 */  lui        $v0, %hi(D_801035C0)
/* E2A7C4 80102F84 904235C0 */  lbu        $v0, %lo(D_801035C0)($v0)
/* E2A7C8 80102F88 3C018010 */  lui        $at, %hi(D_801035AC)
/* E2A7CC 80102F8C C43035AC */  lwc1       $f16, %lo(D_801035AC)($at)
/* E2A7D0 80102F90 3C17B400 */  lui        $s7, 0xb400
/* E2A7D4 80102F94 10400008 */  beqz       $v0, .L80102FB8
/* E2A7D8 80102F98 3C1EB300 */   lui       $fp, 0xb300
/* E2A7DC 80102F9C 24010001 */  addiu      $at, $zero, 1
/* E2A7E0 80102FA0 10410007 */  beq        $v0, $at, .L80102FC0
/* E2A7E4 80102FA4 00000000 */   nop
/* E2A7E8 80102FA8 10500008 */  beq        $v0, $s0, .L80102FCC
/* E2A7EC 80102FAC 3C018015 */   lui       $at, 0x8015
/* E2A7F0 80102FB0 10000007 */  b          .L80102FD0
/* E2A7F4 80102FB4 46006006 */   mov.s     $f0, $f12
.L80102FB8:
/* E2A7F8 80102FB8 10000005 */  b          .L80102FD0
/* E2A7FC 80102FBC 46006006 */   mov.s     $f0, $f12
.L80102FC0:
/* E2A800 80102FC0 3C018015 */  lui        $at, %hi(D_80156FB8)
/* E2A804 80102FC4 10000002 */  b          .L80102FD0
/* E2A808 80102FC8 C4206FB8 */   lwc1      $f0, %lo(D_80156FB8)($at)
.L80102FCC:
/* E2A80C 80102FCC C4206FBC */  lwc1       $f0, 0x6fbc($at)
.L80102FD0:
/* E2A810 80102FD0 3C018010 */  lui        $at, %hi(D_801035B8)
/* E2A814 80102FD4 C42235B8 */  lwc1       $f2, %lo(D_801035B8)($at)
/* E2A818 80102FD8 3C018010 */  lui        $at, 0x8010
/* E2A81C 80102FDC 3C0F8010 */  lui        $t7, 0x8010
/* E2A820 80102FE0 46001080 */  add.s      $f2, $f2, $f0
/* E2A824 80102FE4 00005025 */  or         $t2, $zero, $zero
/* E2A828 80102FE8 24110005 */  addiu      $s1, $zero, 5
/* E2A82C 80102FEC 241F0006 */  addiu      $ra, $zero, 6
/* E2A830 80102FF0 4602703C */  c.lt.s     $f14, $f2
/* E2A834 80102FF4 00000000 */  nop
/* E2A838 80102FF8 45020005 */  bc1fl      .L80103010
/* E2A83C 80102FFC 460C103E */   c.le.s    $f2, $f12
/* E2A840 80103000 46007086 */  mov.s      $f2, $f14
/* E2A844 80103004 1000000E */  b          .L80103040
/* E2A848 80103008 A02035C0 */   sb        $zero, 0x35c0($at)
/* E2A84C 8010300C 460C103E */  c.le.s     $f2, $f12
.L80103010:
/* E2A850 80103010 3C018010 */  lui        $at, %hi(D_801035C0)
/* E2A854 80103014 3C198010 */  lui        $t9, %hi(D_801035C4)
/* E2A858 80103018 45000009 */  bc1f       .L80103040
/* E2A85C 8010301C 00000000 */   nop
/* E2A860 80103020 933935C4 */  lbu        $t9, %lo(D_801035C4)($t9)
/* E2A864 80103024 A02035C0 */  sb         $zero, %lo(D_801035C0)($at)
/* E2A868 80103028 24010001 */  addiu      $at, $zero, 1
/* E2A86C 8010302C 17210004 */  bne        $t9, $at, .L80103040
/* E2A870 80103030 46006086 */   mov.s     $f2, $f12
/* E2A874 80103034 240E0002 */  addiu      $t6, $zero, 2
/* E2A878 80103038 3C018010 */  lui        $at, %hi(D_801035C4)
/* E2A87C 8010303C A02E35C4 */  sb         $t6, %lo(D_801035C4)($at)
.L80103040:
/* E2A880 80103040 8DEF35B0 */  lw         $t7, 0x35b0($t7)
/* E2A884 80103044 3C018010 */  lui        $at, %hi(D_801035B8)
/* E2A888 80103048 E42235B8 */  swc1       $f2, %lo(D_801035B8)($at)
/* E2A88C 8010304C 29E13570 */  slti       $at, $t7, 0x3570
/* E2A890 80103050 1420011D */  bnez       $at, .L801034C8
/* E2A894 80103054 3C19E700 */   lui       $t9, 0xe700
/* E2A898 80103058 8C620000 */  lw         $v0, ($v1)
/* E2A89C 8010305C 4600118D */  trunc.w.s  $f6, $f2
/* E2A8A0 80103060 3C0FFB00 */  lui        $t7, 0xfb00
/* E2A8A4 80103064 24580008 */  addiu      $t8, $v0, 8
/* E2A8A8 80103068 AC780000 */  sw         $t8, ($v1)
/* E2A8AC 8010306C AC400004 */  sw         $zero, 4($v0)
/* E2A8B0 80103070 AC590000 */  sw         $t9, ($v0)
/* E2A8B4 80103074 8C620000 */  lw         $v0, ($v1)
/* E2A8B8 80103078 44193000 */  mfc1       $t9, $f6
/* E2A8BC 8010307C 2401FF00 */  addiu      $at, $zero, -0x100
/* E2A8C0 80103080 244E0008 */  addiu      $t6, $v0, 8
/* E2A8C4 80103084 AC6E0000 */  sw         $t6, ($v1)
/* E2A8C8 80103088 AC4F0000 */  sw         $t7, ($v0)
/* E2A8CC 8010308C 332E00FF */  andi       $t6, $t9, 0xff
/* E2A8D0 80103090 01C17825 */  or         $t7, $t6, $at
/* E2A8D4 80103094 AC4F0004 */  sw         $t7, 4($v0)
/* E2A8D8 80103098 8FB801A8 */  lw         $t8, 0x1a8($sp)
/* E2A8DC 8010309C 3C0E8010 */  lui        $t6, %hi(D_801061C0)
/* E2A8E0 801030A0 00403825 */  or         $a3, $v0, $zero
/* E2A8E4 801030A4 8C620000 */  lw         $v0, ($v1)
/* E2A8E8 801030A8 25CE61C0 */  addiu      $t6, $t6, %lo(D_801061C0)
/* E2A8EC 801030AC 0018C900 */  sll        $t9, $t8, 4
/* E2A8F0 801030B0 032E2021 */  addu       $a0, $t9, $t6
/* E2A8F4 801030B4 8C8F0018 */  lw         $t7, 0x18($a0)
/* E2A8F8 801030B8 8C8D0014 */  lw         $t5, 0x14($a0)
/* E2A8FC 801030BC 24580008 */  addiu      $t8, $v0, 8
/* E2A900 801030C0 8C920010 */  lw         $s2, 0x10($a0)
/* E2A904 801030C4 AC780000 */  sw         $t8, ($v1)
/* E2A908 801030C8 AFAF0184 */  sw         $t7, 0x184($sp)
/* E2A90C 801030CC 3C19FD10 */  lui        $t9, 0xfd10
/* E2A910 801030D0 AC590000 */  sw         $t9, ($v0)
/* E2A914 801030D4 00404025 */  or         $t0, $v0, $zero
/* E2A918 801030D8 AC4D0004 */  sw         $t5, 4($v0)
/* E2A91C 801030DC 8C620000 */  lw         $v0, ($v1)
/* E2A920 801030E0 3C0FE800 */  lui        $t7, 0xe800
/* E2A924 801030E4 3C19F500 */  lui        $t9, 0xf500
/* E2A928 801030E8 244E0008 */  addiu      $t6, $v0, 8
/* E2A92C 801030EC AC6E0000 */  sw         $t6, ($v1)
/* E2A930 801030F0 AC400004 */  sw         $zero, 4($v0)
/* E2A934 801030F4 AC4F0000 */  sw         $t7, ($v0)
/* E2A938 801030F8 00404825 */  or         $t1, $v0, $zero
/* E2A93C 801030FC 8C620000 */  lw         $v0, ($v1)
/* E2A940 80103100 3C0E0700 */  lui        $t6, 0x700
/* E2A944 80103104 37390100 */  ori        $t9, $t9, 0x100
/* E2A948 80103108 24580008 */  addiu      $t8, $v0, 8
/* E2A94C 8010310C AC780000 */  sw         $t8, ($v1)
/* E2A950 80103110 AC4E0004 */  sw         $t6, 4($v0)
/* E2A954 80103114 AC590000 */  sw         $t9, ($v0)
/* E2A958 80103118 8C620000 */  lw         $v0, ($v1)
/* E2A95C 8010311C 3C18E600 */  lui        $t8, 0xe600
/* E2A960 80103120 4600810D */  trunc.w.s  $f4, $f16
/* E2A964 80103124 244F0008 */  addiu      $t7, $v0, 8
/* E2A968 80103128 AC6F0000 */  sw         $t7, ($v1)
/* E2A96C 8010312C AC400004 */  sw         $zero, 4($v0)
/* E2A970 80103130 AC580000 */  sw         $t8, ($v0)
/* E2A974 80103134 8C620000 */  lw         $v0, ($v1)
/* E2A978 80103138 3C0F073F */  lui        $t7, 0x73f
/* E2A97C 8010313C 35EFC000 */  ori        $t7, $t7, 0xc000
/* E2A980 80103140 24590008 */  addiu      $t9, $v0, 8
/* E2A984 80103144 AC790000 */  sw         $t9, ($v1)
/* E2A988 80103148 3C0EF000 */  lui        $t6, 0xf000
/* E2A98C 8010314C AC4E0000 */  sw         $t6, ($v0)
/* E2A990 80103150 AC4F0004 */  sw         $t7, 4($v0)
/* E2A994 80103154 8FAB0184 */  lw         $t3, 0x184($sp)
/* E2A998 80103158 44062000 */  mfc1       $a2, $f4
/* E2A99C 8010315C 3C018010 */  lui        $at, %hi(D_801035B8)
/* E2A9A0 80103160 E42235B8 */  swc1       $f2, %lo(D_801035B8)($at)
/* E2A9A4 80103164 00CB001B */  divu       $zero, $a2, $t3
/* E2A9A8 80103168 00406025 */  or         $t4, $v0, $zero
/* E2A9AC 8010316C 8C620000 */  lw         $v0, ($v1)
/* E2A9B0 80103170 3C0EE700 */  lui        $t6, 0xe700
/* E2A9B4 80103174 00002010 */  mfhi       $a0
/* E2A9B8 80103178 24590008 */  addiu      $t9, $v0, 8
/* E2A9BC 8010317C AC790000 */  sw         $t9, ($v1)
/* E2A9C0 80103180 24190137 */  addiu      $t9, $zero, 0x137
/* E2A9C4 80103184 2573FFFF */  addiu      $s3, $t3, -1
/* E2A9C8 80103188 326F0FFF */  andi       $t7, $s3, 0xfff
/* E2A9CC 8010318C 0324A023 */  subu       $s4, $t9, $a0
/* E2A9D0 80103190 3C01FD48 */  lui        $at, 0xfd48
/* E2A9D4 80103194 AC4E0000 */  sw         $t6, ($v0)
/* E2A9D8 80103198 001470C3 */  sra        $t6, $s4, 3
/* E2A9DC 8010319C 01E19825 */  or         $s3, $t7, $at
/* E2A9E0 801031A0 31CF01FF */  andi       $t7, $t6, 0x1ff
/* E2A9E4 801031A4 000FC240 */  sll        $t8, $t7, 9
/* E2A9E8 801031A8 00044080 */  sll        $t0, $a0, 2
/* E2A9EC 801031AC 310E0FFF */  andi       $t6, $t0, 0xfff
/* E2A9F0 801031B0 3C01F548 */  lui        $at, 0xf548
/* E2A9F4 801031B4 0301A025 */  or         $s4, $t8, $at
/* E2A9F8 801031B8 000E7B00 */  sll        $t7, $t6, 0xc
/* E2A9FC 801031BC 3C01F400 */  lui        $at, 0xf400
/* E2AA00 801031C0 01E1C025 */  or         $t8, $t7, $at
/* E2AA04 801031C4 3C01F200 */  lui        $at, 0xf200
/* E2AA08 801031C8 2489FFFF */  addiu      $t1, $a0, -1
/* E2AA0C 801031CC 00097080 */  sll        $t6, $t1, 2
/* E2AA10 801031D0 01E1C825 */  or         $t9, $t7, $at
/* E2AA14 801031D4 01E04025 */  or         $t0, $t7, $zero
/* E2AA18 801031D8 AC400004 */  sw         $zero, 4($v0)
/* E2AA1C 801031DC AFB8006C */  sw         $t8, 0x6c($sp)
/* E2AA20 801031E0 31CF0FFF */  andi       $t7, $t6, 0xfff
/* E2AA24 801031E4 000FC300 */  sll        $t8, $t7, 0xc
/* E2AA28 801031E8 24950007 */  addiu      $s5, $a0, 7
/* E2AA2C 801031EC 001570C3 */  sra        $t6, $s5, 3
/* E2AA30 801031F0 31CF01FF */  andi       $t7, $t6, 0x1ff
/* E2AA34 801031F4 AFB90060 */  sw         $t9, 0x60($sp)
/* E2AA38 801031F8 3C010700 */  lui        $at, 0x700
/* E2AA3C 801031FC 0301C825 */  or         $t9, $t8, $at
/* E2AA40 80103200 03004825 */  or         $t1, $t8, $zero
/* E2AA44 80103204 000FC240 */  sll        $t8, $t7, 9
/* E2AA48 80103208 240E0130 */  addiu      $t6, $zero, 0x130
/* E2AA4C 8010320C 01C4B023 */  subu       $s6, $t6, $a0
/* E2AA50 80103210 3C01F548 */  lui        $at, 0xf548
/* E2AA54 80103214 0301A825 */  or         $s5, $t8, $at
/* E2AA58 80103218 00167880 */  sll        $t7, $s6, 2
/* E2AA5C 8010321C 31F80FFF */  andi       $t8, $t7, 0xfff
/* E2AA60 80103220 AFB90054 */  sw         $t9, 0x54($sp)
/* E2AA64 80103224 0018CB00 */  sll        $t9, $t8, 0xc
/* E2AA68 80103228 00047940 */  sll        $t7, $a0, 5
/* E2AA6C 8010322C 3C01E400 */  lui        $at, 0xe400
/* E2AA70 80103230 03217025 */  or         $t6, $t9, $at
/* E2AA74 80103234 31F8FFFF */  andi       $t8, $t7, 0xffff
/* E2AA78 80103238 0320B025 */  or         $s6, $t9, $zero
/* E2AA7C 8010323C 0018CC00 */  sll        $t9, $t8, 0x10
/* E2AA80 80103240 AFB90040 */  sw         $t9, 0x40($sp)
/* E2AA84 80103244 AFAE0044 */  sw         $t6, 0x44($sp)
/* E2AA88 80103248 AFA9004C */  sw         $t1, 0x4c($sp)
/* E2AA8C 8010324C 00803825 */  or         $a3, $a0, $zero
/* E2AA90 80103250 00006825 */  or         $t5, $zero, $zero
/* E2AA94 80103254 00C08025 */  or         $s0, $a2, $zero
/* E2AA98 80103258 00402825 */  or         $a1, $v0, $zero
/* E2AA9C 8010325C 15600002 */  bnez       $t3, .L80103268
/* E2AAA0 80103260 00000000 */   nop
/* E2AAA4 80103264 0007000D */  break      7
.L80103268:
/* E2AAA8 80103268 8C620000 */   lw        $v0, ($v1)
/* E2AAAC 8010326C 3C180700 */  lui        $t8, 0x700
/* E2AAB0 80103270 000D2080 */  sll        $a0, $t5, 2
/* E2AAB4 80103274 244E0008 */  addiu      $t6, $v0, 8
/* E2AAB8 80103278 AC6E0000 */  sw         $t6, ($v1)
/* E2AABC 8010327C AC520004 */  sw         $s2, 4($v0)
/* E2AAC0 80103280 AC530000 */  sw         $s3, ($v0)
/* E2AAC4 80103284 8C620000 */  lw         $v0, ($v1)
/* E2AAC8 80103288 3C0EE600 */  lui        $t6, 0xe600
/* E2AACC 8010328C 00112880 */  sll        $a1, $s1, 2
/* E2AAD0 80103290 244F0008 */  addiu      $t7, $v0, 8
/* E2AAD4 80103294 AC6F0000 */  sw         $t7, ($v1)
/* E2AAD8 80103298 AC580004 */  sw         $t8, 4($v0)
/* E2AADC 8010329C AC540000 */  sw         $s4, ($v0)
/* E2AAE0 801032A0 8C620000 */  lw         $v0, ($v1)
/* E2AAE4 801032A4 30980FFF */  andi       $t8, $a0, 0xfff
/* E2AAE8 801032A8 3C01074B */  lui        $at, 0x74b
/* E2AAEC 801032AC 24590008 */  addiu      $t9, $v0, 8
/* E2AAF0 801032B0 AC790000 */  sw         $t9, ($v1)
/* E2AAF4 801032B4 AC400004 */  sw         $zero, 4($v0)
/* E2AAF8 801032B8 AC4E0000 */  sw         $t6, ($v0)
/* E2AAFC 801032BC 8C620000 */  lw         $v0, ($v1)
/* E2AB00 801032C0 8FB9006C */  lw         $t9, 0x6c($sp)
/* E2AB04 801032C4 3421C000 */  ori        $at, $at, 0xc000
/* E2AB08 801032C8 244F0008 */  addiu      $t7, $v0, 8
/* E2AB0C 801032CC AC6F0000 */  sw         $t7, ($v1)
/* E2AB10 801032D0 30AF0FFF */  andi       $t7, $a1, 0xfff
/* E2AB14 801032D4 03002025 */  or         $a0, $t8, $zero
/* E2AB18 801032D8 03387025 */  or         $t6, $t9, $t8
/* E2AB1C 801032DC 01E1C025 */  or         $t8, $t7, $at
/* E2AB20 801032E0 AC580004 */  sw         $t8, 4($v0)
/* E2AB24 801032E4 AC4E0000 */  sw         $t6, ($v0)
/* E2AB28 801032E8 8C620000 */  lw         $v0, ($v1)
/* E2AB2C 801032EC 3C0EE700 */  lui        $t6, 0xe700
/* E2AB30 801032F0 01E02825 */  or         $a1, $t7, $zero
/* E2AB34 801032F4 24590008 */  addiu      $t9, $v0, 8
/* E2AB38 801032F8 AC790000 */  sw         $t9, ($v1)
/* E2AB3C 801032FC AC400004 */  sw         $zero, 4($v0)
/* E2AB40 80103300 AC4E0000 */  sw         $t6, ($v0)
/* E2AB44 80103304 8C620000 */  lw         $v0, ($v1)
/* E2AB48 80103308 3C01004B */  lui        $at, 0x4b
/* E2AB4C 8010330C 3421C000 */  ori        $at, $at, 0xc000
/* E2AB50 80103310 244F0008 */  addiu      $t7, $v0, 8
/* E2AB54 80103314 AC6F0000 */  sw         $t7, ($v1)
/* E2AB58 80103318 AC400004 */  sw         $zero, 4($v0)
/* E2AB5C 8010331C AC540000 */  sw         $s4, ($v0)
/* E2AB60 80103320 8C620000 */  lw         $v0, ($v1)
/* E2AB64 80103324 8FB90060 */  lw         $t9, 0x60($sp)
/* E2AB68 80103328 00A17825 */  or         $t7, $a1, $at
/* E2AB6C 8010332C 24580008 */  addiu      $t8, $v0, 8
/* E2AB70 80103330 AC780000 */  sw         $t8, ($v1)
/* E2AB74 80103334 03247025 */  or         $t6, $t9, $a0
/* E2AB78 80103338 AC4E0000 */  sw         $t6, ($v0)
/* E2AB7C 8010333C AC4F0004 */  sw         $t7, 4($v0)
/* E2AB80 80103340 8C620000 */  lw         $v0, ($v1)
/* E2AB84 80103344 8FAE0044 */  lw         $t6, 0x44($sp)
/* E2AB88 80103348 001F3880 */  sll        $a3, $ra, 2
/* E2AB8C 8010334C 24580008 */  addiu      $t8, $v0, 8
/* E2AB90 80103350 AC780000 */  sw         $t8, ($v1)
/* E2AB94 80103354 30F90FFF */  andi       $t9, $a3, 0xfff
/* E2AB98 80103358 01D97825 */  or         $t7, $t6, $t9
/* E2AB9C 8010335C AC4F0000 */  sw         $t7, ($v0)
/* E2ABA0 80103360 AC440004 */  sw         $a0, 4($v0)
/* E2ABA4 80103364 8C620000 */  lw         $v0, ($v1)
/* E2ABA8 80103368 03203825 */  or         $a3, $t9, $zero
/* E2ABAC 8010336C 000D8140 */  sll        $s0, $t5, 5
/* E2ABB0 80103370 24580008 */  addiu      $t8, $v0, 8
/* E2ABB4 80103374 AC780000 */  sw         $t8, ($v1)
/* E2ABB8 80103378 AC570000 */  sw         $s7, ($v0)
/* E2ABBC 8010337C 8FAE0040 */  lw         $t6, 0x40($sp)
/* E2ABC0 80103380 3219FFFF */  andi       $t9, $s0, 0xffff
/* E2ABC4 80103384 03208025 */  or         $s0, $t9, $zero
/* E2ABC8 80103388 01D97825 */  or         $t7, $t6, $t9
/* E2ABCC 8010338C AC4F0004 */  sw         $t7, 4($v0)
/* E2ABD0 80103390 8C620000 */  lw         $v0, ($v1)
/* E2ABD4 80103394 3C190400 */  lui        $t9, 0x400
/* E2ABD8 80103398 37390400 */  ori        $t9, $t9, 0x400
/* E2ABDC 8010339C 24580008 */  addiu      $t8, $v0, 8
/* E2ABE0 801033A0 AC780000 */  sw         $t8, ($v1)
/* E2ABE4 801033A4 AC590004 */  sw         $t9, 4($v0)
/* E2ABE8 801033A8 AC5E0000 */  sw         $fp, ($v0)
/* E2ABEC 801033AC 8C620000 */  lw         $v0, ($v1)
/* E2ABF0 801033B0 3C180700 */  lui        $t8, 0x700
/* E2ABF4 801033B4 3C01F400 */  lui        $at, 0xf400
/* E2ABF8 801033B8 244E0008 */  addiu      $t6, $v0, 8
/* E2ABFC 801033BC AC6E0000 */  sw         $t6, ($v1)
/* E2AC00 801033C0 AC520004 */  sw         $s2, 4($v0)
/* E2AC04 801033C4 AC530000 */  sw         $s3, ($v0)
/* E2AC08 801033C8 8C620000 */  lw         $v0, ($v1)
/* E2AC0C 801033CC 3C0EE600 */  lui        $t6, 0xe600
/* E2AC10 801033D0 27FF0006 */  addiu      $ra, $ra, 6
/* E2AC14 801033D4 244F0008 */  addiu      $t7, $v0, 8
/* E2AC18 801033D8 AC6F0000 */  sw         $t7, ($v1)
/* E2AC1C 801033DC AC580004 */  sw         $t8, 4($v0)
/* E2AC20 801033E0 AC550000 */  sw         $s5, ($v0)
/* E2AC24 801033E4 8C620000 */  lw         $v0, ($v1)
/* E2AC28 801033E8 0081C025 */  or         $t8, $a0, $at
/* E2AC2C 801033EC 3C01F200 */  lui        $at, 0xf200
/* E2AC30 801033F0 24590008 */  addiu      $t9, $v0, 8
/* E2AC34 801033F4 AC790000 */  sw         $t9, ($v1)
/* E2AC38 801033F8 AC400004 */  sw         $zero, 4($v0)
/* E2AC3C 801033FC AC4E0000 */  sw         $t6, ($v0)
/* E2AC40 80103400 8C620000 */  lw         $v0, ($v1)
/* E2AC44 80103404 25AD0006 */  addiu      $t5, $t5, 6
/* E2AC48 80103408 26310006 */  addiu      $s1, $s1, 6
/* E2AC4C 8010340C 244F0008 */  addiu      $t7, $v0, 8
/* E2AC50 80103410 AC6F0000 */  sw         $t7, ($v1)
/* E2AC54 80103414 AC580000 */  sw         $t8, ($v0)
/* E2AC58 80103418 8FB90054 */  lw         $t9, 0x54($sp)
/* E2AC5C 8010341C 3C18E700 */  lui        $t8, 0xe700
/* E2AC60 80103420 03257025 */  or         $t6, $t9, $a1
/* E2AC64 80103424 AC4E0004 */  sw         $t6, 4($v0)
/* E2AC68 80103428 8C620000 */  lw         $v0, ($v1)
/* E2AC6C 8010342C 244F0008 */  addiu      $t7, $v0, 8
/* E2AC70 80103430 AC6F0000 */  sw         $t7, ($v1)
/* E2AC74 80103434 AC400004 */  sw         $zero, 4($v0)
/* E2AC78 80103438 AC580000 */  sw         $t8, ($v0)
/* E2AC7C 8010343C 8C620000 */  lw         $v0, ($v1)
/* E2AC80 80103440 00817825 */  or         $t7, $a0, $at
/* E2AC84 80103444 3C01E44C */  lui        $at, 0xe44c
/* E2AC88 80103448 24590008 */  addiu      $t9, $v0, 8
/* E2AC8C 8010344C AC790000 */  sw         $t9, ($v1)
/* E2AC90 80103450 AC400004 */  sw         $zero, 4($v0)
/* E2AC94 80103454 AC550000 */  sw         $s5, ($v0)
/* E2AC98 80103458 8C620000 */  lw         $v0, ($v1)
/* E2AC9C 8010345C 244E0008 */  addiu      $t6, $v0, 8
/* E2ACA0 80103460 AC6E0000 */  sw         $t6, ($v1)
/* E2ACA4 80103464 AC4F0000 */  sw         $t7, ($v0)
/* E2ACA8 80103468 8FB8004C */  lw         $t8, 0x4c($sp)
/* E2ACAC 8010346C 00E17825 */  or         $t7, $a3, $at
/* E2ACB0 80103470 240100E4 */  addiu      $at, $zero, 0xe4
/* E2ACB4 80103474 0305C825 */  or         $t9, $t8, $a1
/* E2ACB8 80103478 AC590004 */  sw         $t9, 4($v0)
/* E2ACBC 8010347C 8C620000 */  lw         $v0, ($v1)
/* E2ACC0 80103480 02C4C025 */  or         $t8, $s6, $a0
/* E2ACC4 80103484 244E0008 */  addiu      $t6, $v0, 8
/* E2ACC8 80103488 AC6E0000 */  sw         $t6, ($v1)
/* E2ACCC 8010348C AC580004 */  sw         $t8, 4($v0)
/* E2ACD0 80103490 AC4F0000 */  sw         $t7, ($v0)
/* E2ACD4 80103494 8C620000 */  lw         $v0, ($v1)
/* E2ACD8 80103498 3C0F0400 */  lui        $t7, 0x400
/* E2ACDC 8010349C 35EF0400 */  ori        $t7, $t7, 0x400
/* E2ACE0 801034A0 24590008 */  addiu      $t9, $v0, 8
/* E2ACE4 801034A4 AC790000 */  sw         $t9, ($v1)
/* E2ACE8 801034A8 AC500004 */  sw         $s0, 4($v0)
/* E2ACEC 801034AC AC570000 */  sw         $s7, ($v0)
/* E2ACF0 801034B0 8C620000 */  lw         $v0, ($v1)
/* E2ACF4 801034B4 244E0008 */  addiu      $t6, $v0, 8
/* E2ACF8 801034B8 AC6E0000 */  sw         $t6, ($v1)
/* E2ACFC 801034BC AC4F0004 */  sw         $t7, 4($v0)
/* E2AD00 801034C0 17E1FF69 */  bne        $ra, $at, .L80103268
/* E2AD04 801034C4 AC5E0000 */   sw        $fp, ($v0)
.L801034C8:
/* E2AD08 801034C8 3C188010 */  lui        $t8, %hi(D_801035B0)
/* E2AD0C 801034CC 8F1835B0 */  lw         $t8, %lo(D_801035B0)($t8)
/* E2AD10 801034D0 3C018010 */  lui        $at, %hi(D_801035B0)
/* E2AD14 801034D4 44809000 */  mtc1       $zero, $f18
/* E2AD18 801034D8 27190001 */  addiu      $t9, $t8, 1
/* E2AD1C 801034DC 44994000 */  mtc1       $t9, $f8
/* E2AD20 801034E0 AC3935B0 */  sw         $t9, %lo(D_801035B0)($at)
/* E2AD24 801034E4 3C01406E */  lui        $at, 0x406e
/* E2AD28 801034E8 468042A1 */  cvt.d.w    $f10, $f8
/* E2AD2C 801034EC 44819800 */  mtc1       $at, $f19
/* E2AD30 801034F0 2B2135AC */  slti       $at, $t9, 0x35ac
/* E2AD34 801034F4 3C188010 */  lui        $t8, 0x8010
/* E2AD38 801034F8 00001025 */  or         $v0, $zero, $zero
/* E2AD3C 801034FC 462A903E */  c.le.d     $f18, $f10
/* E2AD40 80103500 00000000 */  nop
/* E2AD44 80103504 45000012 */  bc1f       .L80103550
/* E2AD48 80103508 00000000 */   nop
/* E2AD4C 8010350C 10200010 */  beqz       $at, .L80103550
/* E2AD50 80103510 8FAE0184 */   lw        $t6, 0x184($sp)
/* E2AD54 80103514 448E3000 */  mtc1       $t6, $f6
/* E2AD58 80103518 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* E2AD5C 8010351C 05C10005 */  bgez       $t6, .L80103534
/* E2AD60 80103520 46803120 */   cvt.s.w   $f4, $f6
/* E2AD64 80103524 3C014F80 */  lui        $at, 0x4f80
/* E2AD68 80103528 44814000 */  mtc1       $at, $f8
/* E2AD6C 8010352C 00000000 */  nop
/* E2AD70 80103530 46082100 */  add.s      $f4, $f4, $f8
.L80103534:
/* E2AD74 80103534 448F5000 */  mtc1       $t7, $f10
/* E2AD78 80103538 3C018010 */  lui        $at, %hi(D_801035AC)
/* E2AD7C 8010353C 468054A0 */  cvt.s.w    $f18, $f10
/* E2AD80 80103540 46122183 */  div.s      $f6, $f4, $f18
/* E2AD84 80103544 46068401 */  sub.s      $f16, $f16, $f6
/* E2AD88 80103548 10000007 */  b          .L80103568
/* E2AD8C 8010354C E43035AC */   swc1      $f16, %lo(D_801035AC)($at)
.L80103550:
/* E2AD90 80103550 8F1835B0 */  lw         $t8, 0x35b0($t8)
/* E2AD94 80103554 240135AC */  addiu      $at, $zero, 0x35ac
/* E2AD98 80103558 24190001 */  addiu      $t9, $zero, 1
/* E2AD9C 8010355C 17010002 */  bne        $t8, $at, .L80103568
/* E2ADA0 80103560 3C018010 */   lui       $at, %hi(D_801035C4)
/* E2ADA4 80103564 A03935C4 */  sb         $t9, %lo(D_801035C4)($at)
.L80103568:
/* E2ADA8 80103568 8FBF003C */  lw         $ra, 0x3c($sp)
/* E2ADAC 8010356C 8FB00018 */  lw         $s0, 0x18($sp)
/* E2ADB0 80103570 8FB1001C */  lw         $s1, 0x1c($sp)
/* E2ADB4 80103574 8FB20020 */  lw         $s2, 0x20($sp)
/* E2ADB8 80103578 8FB30024 */  lw         $s3, 0x24($sp)
/* E2ADBC 8010357C 8FB40028 */  lw         $s4, 0x28($sp)
/* E2ADC0 80103580 8FB5002C */  lw         $s5, 0x2c($sp)
/* E2ADC4 80103584 8FB60030 */  lw         $s6, 0x30($sp)
/* E2ADC8 80103588 8FB70034 */  lw         $s7, 0x34($sp)
/* E2ADCC 8010358C 8FBE0038 */  lw         $fp, 0x38($sp)
/* E2ADD0 80103590 03E00008 */  jr         $ra
/* E2ADD4 80103594 27BD01A8 */   addiu     $sp, $sp, 0x1a8
/* E2ADD8 80103598 00000000 */  nop
/* E2ADDC 8010359C 00000000 */  nop
/* E2ADE0 801035A0 00000000 */  nop
/* E2ADE4 801035A4 00000000 */  nop
/* E2ADE8 801035A8 00000000 */  nop
