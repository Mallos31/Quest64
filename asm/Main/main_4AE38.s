.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A238
/* 4AE38 8004A238 9739031E */  lhu        $t9, 0x31e($t9)
/* 4AE3C 8004A23C 8F39001C */  lw         $t9, 0x1c($t9)
/* 4AE40 8004A240 0338C822 */  sub        $t9, $t9, $t8
/* 4AE44 8004A244 1F20FF65 */  bgtz       $t9, .L80049FDC
/* 4AE48 8004A248 8FB8FFFC */   lw        $t8, -4($sp)
/* 4AE4C 8004A24C 090005C2 */  j          .L84001708
/* 4AE50 8004A250 8FA20004 */   lw        $v0, 4($sp)
/* 4AE54 8004A254 00581025 */  or         $v0, $v0, $t8
/* 4AE58 8004A258 09000427 */  j          .L8400109C
/* 4AE5C 8004A25C AFA20004 */   sw        $v0, 4($sp)
/* 4AE60 8004A260 8FA20004 */  lw         $v0, 4($sp)
/* 4AE64 8004A264 03001827 */  not        $v1, $t8
/* 4AE68 8004A268 00431024 */  and        $v0, $v0, $v1
/* 4AE6C 8004A26C 09000427 */  j          .L8400109C
/* 4AE70 8004A270 AFA20004 */   sw        $v0, 4($sp)
/* 4AE74 8004A274 9362FFF9 */  lbu        $v0, -7($k1)
/* 4AE78 8004A278 9723031E */  lhu        $v1, 0x31e($t9)
/* 4AE7C 8004A27C 00621820 */  add        $v1, $v1, $v0
/* 4AE80 8004A280 09000427 */  j          .L8400109C
/* 4AE84 8004A284 AC780000 */   sw        $t8, ($v1)
/* 4AE88 8004A288 0900042B */  j          .L840010AC
/* 4AE8C 8004A28C AFB8FFFC */   sw        $t8, -4($sp)
/* 4AE90 8004A290 090004DD */  j          .L84001374
/* 4AE94 8004A294 8FB9FFFC */   lw        $t9, -4($sp)
/* 4AE98 8004A298 00191603 */  sra        $v0, $t9, 0x18
/* 4AE9C 8004A29C 20420003 */  addi       $v0, $v0, 3
/* 4AEA0 8004A2A0 04400004 */  bltz       $v0, .L8004A2B4
/* 4AEA4 8004A2A4 20420018 */   addi      $v0, $v0, 0x18
/* 4AEA8 8004A2A8 0D000443 */  jal        func_8400110C
/* 4AEAC 8004A2AC 03009820 */   add       $s3, $t8, $zero
/* 4AEB0 8004A2B0 0260C020 */  add        $t8, $s3, $zero
.L8004A2B4:
/* 4AEB4 8004A2B4 AEF90000 */  sw         $t9, ($s7)
/* 4AEB8 8004A2B8 AEF80004 */  sw         $t8, 4($s7)
/* 4AEBC 8004A2BC 0D00044A */  jal        func_84001128
/* 4AEC0 8004A2C0 22F70008 */   addi      $s7, $s7, 8
/* 4AEC4 8004A2C4 1C40FF45 */  bgtz       $v0, .L80049FDC
/* 4AEC8 8004A2C8 00000000 */   nop
/* 4AECC 8004A2CC 0900042B */  j          .L840010AC
/* 4AED0 8004A2D0 304201FE */   andi      $v0, $v0, 0x1fe
/* 4AED4 8004A2D4 844200C0 */  lh         $v0, 0xc0($v0)
/* 4AED8 8004A2D8 0D0007F1 */  jal        func_84001FC4
/* 4AEDC 8004A2DC 9361FFF9 */   lbu       $at, -7($k1)
/* 4AEE0 8004A2E0 00400008 */  jr         $v0
/* 4AEE4 8004A2E4 3026000F */   andi      $a2, $at, 0xf
/* 4AEE8 8004A2E8 840800BA */  lh         $t0, 0xba($zero)
/* 4AEEC 8004A2EC A4080106 */  sh         $t0, 0x106($zero)
/* 4AEF0 8004A2F0 9369FFFA */  lbu        $t1, -6($k1)
/* 4AEF4 8004A2F4 CAC21800 */  bbit0      $s6, 2, .L800502F8
/* 4AEF8 8004A2F8 CAC21C02 */   bbit0     $s6, 2, .L80051304
/* 4AEFC 8004A2FC 00094882 */   srl       $t1, $t1, 2
/* 4AF00 8004A300 0D000598 */  jal        func_84001660
/* 4AF04 8004A304 9427031E */   lhu       $a3, 0x31e($at)
/* 4AF08 8004A308 CBB11005 */  bbit0      $sp, 0x11, .L8004E320
/* 4AF0C 8004A30C 0D0005A2 */   jal       func_84001688
/* 4AF10 8004A310 CBB11405 */   bbit0     $sp, 0x11, .L8004F328
.L8004A314:
/* 4AF14 8004A314 4A826706 */   .byte     0x4a, 0x82, 0x67, 0x06
/* 4AF18 8004A318 CAD21002 */  bbit0      $s6, 0x12, .L8004E324
/* 4AF1C 8004A31C 4A82470F */   .byte     0x4a, 0x82, 0x47, 0x0f
/* 4AF20 8004A320 8ECF000C */  lw         $t7, 0xc($s6)
/* 4AF24 8004A324 4AA26F0E */  .byte      0x4a, 0xa2, 0x6f, 0x0e
/* 4AF28 8004A328 8ED0001C */  lw         $s0, 0x1c($s6)
/* 4AF2C 8004A32C 4AA24F0F */  .byte      0x4a, 0xa2, 0x4f, 0x0f
/* 4AF30 8004A330 30610002 */  andi       $at, $v1, 2
/* 4AF34 8004A334 4AC2770E */  .byte      0x4a, 0xc2, 0x77, 0x0e
/* 4AF38 8004A338 4AC2570F */  .byte      0x4a, 0xc2, 0x57, 0x0f
/* 4AF3C 8004A33C 4B3F7F0E */  .byte      0x4b, 0x3f, 0x7f, 0x0e
/* 4AF40 8004A340 CAD21406 */  bbit0      $s6, 0x12, .L8004F35C
/* 4AF44 8004A344 4B3F5F4F */   .byte     0x4b, 0x3f, 0x5f, 0x4f
/* 4AF48 8004A348 142000C8 */  bnez       $at, .L8004A66C
/* 4AF4C 8004A34C 22D60020 */   addi      $s6, $s6, 0x20
/* 4AF50 8004A350 4A119485 */  .byte      0x4a, 0x11, 0x94, 0x85
/* 4AF54 8004A354 C815083B */  bbit0      $zero, 0x15, .L8004C444
/* 4AF58 8004A358 4B15E506 */   .byte     0x4b, 0x15, 0xe5, 0x06
/* 4AF5C 8004A35C 4B15ED4F */  .byte      0x4b, 0x15, 0xed, 0x4f
/* 4AF60 8004A360 4AFDE8E5 */  .byte      0x4a, 0xfd, 0xe8, 0xe5
/* 4AF64 8004A364 4AFCE0E4 */  .byte      0x4a, 0xfc, 0xe0, 0xe4
/* 4AF68 8004A368 484D0800 */  .byte      0x48, 0x4d, 0x08, 0x00
/* 4AF6C 8004A36C 4AF5E8E5 */  .byte      0x4a, 0xf5, 0xe8, 0xe5
/* 4AF70 8004A370 4AF4E0E4 */  .byte      0x4a, 0xf4, 0xe0, 0xe4
/* 4AF74 8004A374 31A80707 */  andi       $t0, $t5, 0x707
/* 4AF78 8004A378 31AD7070 */  andi       $t5, $t5, 0x7070
/* 4AF7C 8004A37C 00084100 */  sll        $t0, $t0, 4
/* 4AF80 8004A380 000D6C00 */  sll        $t5, $t5, 0x10
/* 4AF84 8004A384 01A86825 */  or         $t5, $t5, $t0
/* 4AF88 8004A388 484E0800 */  .byte      0x48, 0x4e, 0x08, 0x00
/* 4AF8C 8004A38C 31C80707 */  andi       $t0, $t6, 0x707
/* 4AF90 8004A390 4B1FED50 */  .byte      0x4b, 0x1f, 0xed, 0x50
/* 4AF94 8004A394 31CE7070 */  andi       $t6, $t6, 0x7070
/* 4AF98 8004A398 4B1FE510 */  .byte      0x4b, 0x1f, 0xe5, 0x10
/* 4AF9C 8004A39C 000E7300 */  sll        $t6, $t6, 0xc
/* 4AFA0 8004A3A0 4B13E704 */  .byte      0x4b, 0x13, 0xe7, 0x04
/* 4AFA4 8004A3A4 010E4025 */  or         $t0, $t0, $t6
/* 4AFA8 8004A3A8 4B13EF4D */  .byte      0x4b, 0x13, 0xef, 0x4d
/* 4AFAC 8004A3AC 010D4025 */  or         $t0, $t0, $t5
/* 4AFB0 8004A3B0 4B1FFF0E */  .byte      0x4b, 0x1f, 0xff, 0x0e
/* 4AFB4 8004A3B4 0D000400 */  jal        func_84001000
/* 4AFB8 8004A3B8 A4E80024 */   sh        $t0, 0x24($a3)
/* 4AFBC 8004A3BC 4B1FD9A3 */  .byte      0x4b, 0x1f, 0xd9, 0xa3
/* 4AFC0 8004A3C0 E8F51800 */  bbit1      $a3, 0x15, .L800503C4
/* 4AFC4 8004A3C4 4B1ED9A7 */   .byte     0x4b, 0x1e, 0xd9, 0xa7
/* 4AFC8 8004A3C8 E8F41801 */  bbit1      $a3, 0x14, .L800503D0
/* 4AFCC 8004A3CC 4AFAA144 */   .byte     0x4a, 0xfa, 0xa1, 0x44
/* 4AFD0 8004A3D0 4AFAA94D */  .byte      0x4a, 0xfa, 0xa9, 0x4d
/* 4AFD4 8004A3D4 4AE6A14E */  .byte      0x4a, 0xe6, 0xa1, 0x4e
/* 4AFD8 8004A3D8 4AE6A90F */  .byte      0x4a, 0xe6, 0xa9, 0x0f
/* 4AFDC 8004A3DC 2129FFFE */  addi       $t1, $t1, -2
/* 4AFE0 8004A3E0 4B132944 */  .byte      0x4b, 0x13, 0x29, 0x44
/* 4AFE4 8004A3E4 4B13210D */  .byte      0x4b, 0x13, 0x21, 0x0d
/* 4AFE8 8004A3E8 4B1FF94E */  .byte      0x4b, 0x1f, 0xf9, 0x4e
/* 4AFEC 8004A3EC 306C0001 */  andi       $t4, $v1, 1
/* 4AFF0 8004A3F0 CAC21800 */  bbit0      $s6, 2, .L800503F4
/* 4AFF4 8004A3F4 4B3F09C7 */   .byte     0x4b, 0x3f, 0x09, 0xc7
/* 4AFF8 8004A3F8 CAC21C02 */  bbit0      $s6, 2, .L80051404
/* 4AFFC 8004A3FC 4A0029CE */   .byte     0x4a, 0x00, 0x29, 0xce
/* 4B000 8004A400 C81D1805 */  bbit0      $zero, 0x1d, .L80050418
/* 4B004 8004A404 4A00218F */   .byte     0x4a, 0x00, 0x21, 0x8f
/* 4B008 8004A408 C81D1C05 */  bbit0      $zero, 0x1d, .L80051420
/* 4B00C 8004A40C 4B1FF9CE */   .byte     0x4b, 0x1f, 0xf9, 0xce
/* 4B010 8004A410 4A7D31A3 */  .byte      0x4a, 0x7d, 0x31, 0xa3
/* 4B014 8004A414 ACEF0010 */  sw         $t7, 0x10($a3)
/* 4B018 8004A418 1180000B */  beqz       $t4, .L8004A448
/* 4B01C 8004A41C 4A5D31A0 */   .byte     0x4a, 0x5d, 0x31, 0xa0
/* 4B020 8004A420 C8032039 */  bbit0      $zero, 3, .L80052508
/* 4B024 8004A424 4B032946 */   .byte     0x4b, 0x03, 0x29, 0x46
/* 4B028 8004A428 4B03210F */  .byte      0x4b, 0x03, 0x21, 0x0f
/* 4B02C 8004A42C 4B232110 */  .byte      0x4b, 0x23, 0x21, 0x10
/* 4B030 8004A430 4B1F2123 */  .byte      0x4b, 0x1f, 0x21, 0x23
/* 4B034 8004A434 4B432120 */  .byte      0x4b, 0x43, 0x21, 0x20
/* 4B038 8004A438 E8E40293 */  bbit1      $a3, 4, .L8004AE88
/* 4B03C 8004A43C ACF00018 */   sw        $s0, 0x18($a3)
/* 4B040 8004A440 E8E4069B */  bbit1      $a3, 4, .L8004BEB0
/* 4B044 8004A444 8CF00018 */   lw        $s0, 0x18($a3)
.L8004A448:
/* 4B048 8004A448 E8F21005 */  bbit1      $a3, 0x12, .L8004E460
/* 4B04C 8004A44C E8E61803 */   bbit1     $a3, 6, .L8005045C
/* 4B050 8004A450 E8E70A0F */   bbit1     $a3, 7, .L8004CC90
/* 4B054 8004A454 E8FB0B10 */   bbit1     $a3, 0x1b, .L8004D098
/* 4B058 8004A458 0520000C */   bltz      $t1, .L8004A48C
/* 4B05C 8004A45C E8FA0B11 */   bbit1     $a3, 0x1a, .L8004D0A4
/* 4B060 8004A460 E8F51C05 */   bbit1     $a3, 0x15, .L80051478
/* 4B064 8004A464 E8F41C06 */   bbit1     $a3, 0x14, .L80051480
/* 4B068 8004A468 E8F2140F */   bbit1     $a3, 0x12, .L8004F4A8
/* 4B06C 8004A46C ACF00038 */   sw        $s0, 0x38($a3)
/* 4B070 8004A470 E8E61C08 */  bbit1      $a3, 6, .L80051494
/* 4B074 8004A474 E8E70E23 */   bbit1     $a3, 7, .L8004DD04
/* 4B078 8004A478 E8FB0F24 */   bbit1     $a3, 0x1b, .L8004E10C
/* 4B07C 8004A47C E8FA0F25 */   bbit1     $a3, 0x1a, .L8004E114
/* 4B080 8004A480 ACE8004C */   sw        $t0, 0x4c($a3)
/* 4B084 8004A484 20E70050 */  addi       $a3, $a3, 0x50
/* 4B088 8004A488 1D20FFA2 */  bgtz       $t1, .L8004A314
.L8004A48C:
/* 4B08C 8004A48C 84080106 */   lh        $t0, 0x106($zero)
/* 4B090 8004A490 01000008 */  jr         $t0
/* 4B094 8004A494 30280001 */   andi      $t0, $at, 1
