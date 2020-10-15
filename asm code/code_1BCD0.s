.late_rodata
glabel jtbl_800715f0
	.word L8001b50c
	.word L8001b70c
	.word L8001b910
	.word L8001bb1c
	.word L8001bd28
	.word L8001bf2c
	.word L8001c130
	.word L8001c338

.text
glabel func_8001B0D0
/* 1BCD0 8001B0D0 3C028009 */  lui        $v0, 0x8009
/* 1BCD4 8001B0D4 24428428 */  addiu      $v0, $v0, -0x7bd8
/* 1BCD8 8001B0D8 24030100 */  addiu      $v1, $zero, 0x100
.L8001B0DC:
/* 1BCDC 8001B0DC 2463FFFC */  addiu      $v1, $v1, -4
/* 1BCE0 8001B0E0 A4400000 */  sh         $zero, ($v0)
/* 1BCE4 8001B0E4 A4400040 */  sh         $zero, 0x40($v0)
/* 1BCE8 8001B0E8 A4400080 */  sh         $zero, 0x80($v0)
/* 1BCEC 8001B0EC A44000C0 */  sh         $zero, 0xc0($v0)
/* 1BCF0 8001B0F0 1460FFFA */  bnez       $v1, .L8001B0DC
/* 1BCF4 8001B0F4 24420100 */   addiu     $v0, $v0, 0x100
/* 1BCF8 8001B0F8 3C018009 */  lui        $at, 0x8009
/* 1BCFC 8001B0FC AC208420 */  sw         $zero, -0x7be0($at)
/* 1BD00 8001B100 03E00008 */  jr         $ra
/* 1BD04 8001B104 00000000 */   nop       

glabel func_8001B108
/* 1BD08 8001B108 3C0E8009 */  lui        $t6, 0x8009
/* 1BD0C 8001B10C 95CE8428 */  lhu        $t6, -0x7bd8($t6)
/* 1BD10 8001B110 3C038009 */  lui        $v1, 0x8009
/* 1BD14 8001B114 24638428 */  addiu      $v1, $v1, -0x7bd8
/* 1BD18 8001B118 11C00007 */  beqz       $t6, .L8001B138
/* 1BD1C 8001B11C 24020100 */   addiu     $v0, $zero, 0x100
/* 1BD20 8001B120 2442FFFF */  addiu      $v0, $v0, -1
.L8001B124:
/* 1BD24 8001B124 10400004 */  beqz       $v0, .L8001B138
/* 1BD28 8001B128 24630040 */   addiu     $v1, $v1, 0x40
/* 1BD2C 8001B12C 946F0000 */  lhu        $t7, ($v1)
/* 1BD30 8001B130 55E0FFFC */  bnel       $t7, $zero, .L8001B124
/* 1BD34 8001B134 2442FFFF */   addiu     $v0, $v0, -1
.L8001B138:
/* 1BD38 8001B138 10400014 */  beqz       $v0, .L8001B18C
/* 1BD3C 8001B13C 00804025 */   or        $t0, $a0, $zero
/* 1BD40 8001B140 3C028009 */  lui        $v0, 0x8009
/* 1BD44 8001B144 24428420 */  addiu      $v0, $v0, -0x7be0
/* 1BD48 8001B148 00604825 */  or         $t1, $v1, $zero
/* 1BD4C 8001B14C 2499003C */  addiu      $t9, $a0, 0x3c
.L8001B150:
/* 1BD50 8001B150 8D010000 */  lw         $at, ($t0)
/* 1BD54 8001B154 2508000C */  addiu      $t0, $t0, 0xc
/* 1BD58 8001B158 2529000C */  addiu      $t1, $t1, 0xc
/* 1BD5C 8001B15C AD21FFF4 */  sw         $at, -0xc($t1)
/* 1BD60 8001B160 8D01FFF8 */  lw         $at, -8($t0)
/* 1BD64 8001B164 AD21FFF8 */  sw         $at, -8($t1)
/* 1BD68 8001B168 8D01FFFC */  lw         $at, -4($t0)
/* 1BD6C 8001B16C 1519FFF8 */  bne        $t0, $t9, .L8001B150
/* 1BD70 8001B170 AD21FFFC */   sw        $at, -4($t1)
/* 1BD74 8001B174 8D010000 */  lw         $at, ($t0)
/* 1BD78 8001B178 AD210000 */  sw         $at, ($t1)
/* 1BD7C 8001B17C 8C4A0000 */  lw         $t2, ($v0)
/* 1BD80 8001B180 254B0001 */  addiu      $t3, $t2, 1
/* 1BD84 8001B184 10000002 */  b          .L8001B190
/* 1BD88 8001B188 AC4B0000 */   sw        $t3, ($v0)
.L8001B18C:
/* 1BD8C 8001B18C 00001825 */  or         $v1, $zero, $zero
.L8001B190:
/* 1BD90 8001B190 00601025 */  or         $v0, $v1, $zero
/* 1BD94 8001B194 03E00008 */  jr         $ra
/* 1BD98 8001B198 00000000 */   nop       

glabel func_8001B19C
/* 1BD9C 8001B19C 27BDFF00 */  addiu      $sp, $sp, -0x100
/* 1BDA0 8001B1A0 AFBF005C */  sw         $ra, 0x5c($sp)
/* 1BDA4 8001B1A4 AFBE0058 */  sw         $fp, 0x58($sp)
/* 1BDA8 8001B1A8 AFB70054 */  sw         $s7, 0x54($sp)
/* 1BDAC 8001B1AC AFB60050 */  sw         $s6, 0x50($sp)
/* 1BDB0 8001B1B0 AFB5004C */  sw         $s5, 0x4c($sp)
/* 1BDB4 8001B1B4 AFB40048 */  sw         $s4, 0x48($sp)
/* 1BDB8 8001B1B8 AFB30044 */  sw         $s3, 0x44($sp)
/* 1BDBC 8001B1BC AFB20040 */  sw         $s2, 0x40($sp)
/* 1BDC0 8001B1C0 AFB1003C */  sw         $s1, 0x3c($sp)
/* 1BDC4 8001B1C4 AFB00038 */  sw         $s0, 0x38($sp)
/* 1BDC8 8001B1C8 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 1BDCC 8001B1CC F7B40028 */  sdc1       $f20, 0x28($sp)
/* 1BDD0 8001B1D0 AFA40100 */  sw         $a0, 0x100($sp)
/* 1BDD4 8001B1D4 3C158009 */  lui        $s5, 0x8009
/* 1BDD8 8001B1D8 8EB58420 */  lw         $s5, -0x7be0($s5)
/* 1BDDC 8001B1DC 3C108009 */  lui        $s0, 0x8009
/* 1BDE0 8001B1E0 0000B025 */  or         $s6, $zero, $zero
/* 1BDE4 8001B1E4 12A0008A */  beqz       $s5, .L8001B410
/* 1BDE8 8001B1E8 26108428 */   addiu     $s0, $s0, -0x7bd8
/* 1BDEC 8001B1EC 3C013F80 */  lui        $at, 0x3f80
/* 1BDF0 8001B1F0 3C148008 */  lui        $s4, 0x8008
/* 1BDF4 8001B1F4 3C138008 */  lui        $s3, 0x8008
/* 1BDF8 8001B1F8 3C128008 */  lui        $s2, 0x8008
/* 1BDFC 8001B1FC 4481B000 */  mtc1       $at, $f22
/* 1BE00 8001B200 4480A000 */  mtc1       $zero, $f20
/* 1BE04 8001B204 2652B2FC */  addiu      $s2, $s2, -0x4d04
/* 1BE08 8001B208 2673B2F8 */  addiu      $s3, $s3, -0x4d08
/* 1BE0C 8001B20C 26946DC0 */  addiu      $s4, $s4, 0x6dc0
/* 1BE10 8001B210 27BE0074 */  addiu      $fp, $sp, 0x74
/* 1BE14 8001B214 3C170600 */  lui        $s7, 0x600
/* 1BE18 8001B218 27B100B4 */  addiu      $s1, $sp, 0xb4
.L8001B21C:
/* 1BE1C 8001B21C 96020000 */  lhu        $v0, ($s0)
/* 1BE20 8001B220 10400079 */  beqz       $v0, .L8001B408
/* 1BE24 8001B224 00000000 */   nop       
/* 1BE28 8001B228 8E030010 */  lw         $v1, 0x10($s0)
/* 1BE2C 8001B22C 244EFFFF */  addiu      $t6, $v0, -1
/* 1BE30 8001B230 A60E0000 */  sh         $t6, ($s0)
/* 1BE34 8001B234 12C3000A */  beq        $s6, $v1, .L8001B260
/* 1BE38 8001B238 00602825 */   or        $a1, $v1, $zero
/* 1BE3C 8001B23C 920F000B */  lbu        $t7, 0xb($s0)
/* 1BE40 8001B240 92040008 */  lbu        $a0, 8($s0)
/* 1BE44 8001B244 92060009 */  lbu        $a2, 9($s0)
/* 1BE48 8001B248 9207000A */  lbu        $a3, 0xa($s0)
/* 1BE4C 8001B24C AFAF0010 */  sw         $t7, 0x10($sp)
/* 1BE50 8001B250 9218000C */  lbu        $t8, 0xc($s0)
/* 1BE54 8001B254 0060B025 */  or         $s6, $v1, $zero
/* 1BE58 8001B258 0C006D12 */  jal        func_8001B448
/* 1BE5C 8001B25C AFB80014 */   sw        $t8, 0x14($sp)
.L8001B260:
/* 1BE60 8001B260 8E020004 */  lw         $v0, 4($s0)
/* 1BE64 8001B264 50400006 */  beql       $v0, $zero, .L8001B280
/* 1BE68 8001B268 8E420000 */   lw        $v0, ($s2)
/* 1BE6C 8001B26C 0040F809 */  jalr       $v0
/* 1BE70 8001B270 02002025 */   or        $a0, $s0, $zero
/* 1BE74 8001B274 10000009 */  b          .L8001B29C
/* 1BE78 8001B278 92090002 */   lbu       $t1, 2($s0)
/* 1BE7C 8001B27C 8E420000 */  lw         $v0, ($s2)
.L8001B280:
/* 1BE80 8001B280 3C088005 */  lui        $t0, 0x8005
/* 1BE84 8001B284 2508D050 */  addiu      $t0, $t0, -0x2fb0
/* 1BE88 8001B288 24590008 */  addiu      $t9, $v0, 8
/* 1BE8C 8001B28C AE590000 */  sw         $t9, ($s2)
/* 1BE90 8001B290 AC480004 */  sw         $t0, 4($v0)
/* 1BE94 8001B294 AC570000 */  sw         $s7, ($v0)
/* 1BE98 8001B298 92090002 */  lbu        $t1, 2($s0)
.L8001B29C:
/* 1BE9C 8001B29C 02202025 */  or         $a0, $s1, $zero
/* 1BEA0 8001B2A0 312A0001 */  andi       $t2, $t1, 1
/* 1BEA4 8001B2A4 51400016 */  beql       $t2, $zero, .L8001B300
/* 1BEA8 8001B2A8 C68A000C */   lwc1      $f10, 0xc($s4)
/* 1BEAC 8001B2AC 02202025 */  or         $a0, $s1, $zero
/* 1BEB0 8001B2B0 8E050030 */  lw         $a1, 0x30($s0)
/* 1BEB4 8001B2B4 8E060034 */  lw         $a2, 0x34($s0)
/* 1BEB8 8001B2B8 0C008E82 */  jal        func_80023A08
/* 1BEBC 8001B2BC 8E070038 */   lw        $a3, 0x38($s0)
/* 1BEC0 8001B2C0 C6040018 */  lwc1       $f4, 0x18($s0)
/* 1BEC4 8001B2C4 02202025 */  or         $a0, $s1, $zero
/* 1BEC8 8001B2C8 E7A400E4 */  swc1       $f4, 0xe4($sp)
/* 1BECC 8001B2CC C606001C */  lwc1       $f6, 0x1c($s0)
/* 1BED0 8001B2D0 E7A600E8 */  swc1       $f6, 0xe8($sp)
/* 1BED4 8001B2D4 C6080020 */  lwc1       $f8, 0x20($s0)
/* 1BED8 8001B2D8 E7A800EC */  swc1       $f8, 0xec($sp)
/* 1BEDC 8001B2DC C6000028 */  lwc1       $f0, 0x28($s0)
/* 1BEE0 8001B2E0 44050000 */  mfc1       $a1, $f0
/* 1BEE4 8001B2E4 44060000 */  mfc1       $a2, $f0
/* 1BEE8 8001B2E8 44070000 */  mfc1       $a3, $f0
/* 1BEEC 8001B2EC 0C008F7D */  jal        func_80023DF4
/* 1BEF0 8001B2F0 00000000 */   nop       
/* 1BEF4 8001B2F4 1000001F */  b          .L8001B374
/* 1BEF8 8001B2F8 8E6C0000 */   lw        $t4, ($s3)
/* 1BEFC 8001B2FC C68A000C */  lwc1       $f10, 0xc($s4)
.L8001B300:
/* 1BF00 8001B300 C6900010 */  lwc1       $f16, 0x10($s4)
/* 1BF04 8001B304 C6920014 */  lwc1       $f18, 0x14($s4)
/* 1BF08 8001B308 8E050018 */  lw         $a1, 0x18($s0)
/* 1BF0C 8001B30C 8E06001C */  lw         $a2, 0x1c($s0)
/* 1BF10 8001B310 8E070020 */  lw         $a3, 0x20($s0)
/* 1BF14 8001B314 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 1BF18 8001B318 E7B00014 */  swc1       $f16, 0x14($sp)
/* 1BF1C 8001B31C 0C008DC7 */  jal        func_8002371C
/* 1BF20 8001B320 E7B20018 */   swc1      $f18, 0x18($sp)
/* 1BF24 8001B324 C6000024 */  lwc1       $f0, 0x24($s0)
/* 1BF28 8001B328 4600A032 */  c.eq.s     $f20, $f0
/* 1BF2C 8001B32C 00000000 */  nop        
/* 1BF30 8001B330 4503000B */  bc1tl      .L8001B360
/* 1BF34 8001B334 4407B000 */   mfc1      $a3, $f22
/* 1BF38 8001B338 4405A000 */  mfc1       $a1, $f20
/* 1BF3C 8001B33C 4406A000 */  mfc1       $a2, $f20
/* 1BF40 8001B340 44070000 */  mfc1       $a3, $f0
/* 1BF44 8001B344 0C008D5C */  jal        func_80023570
/* 1BF48 8001B348 03C02025 */   or        $a0, $fp, $zero
/* 1BF4C 8001B34C 03C02025 */  or         $a0, $fp, $zero
/* 1BF50 8001B350 02202825 */  or         $a1, $s1, $zero
/* 1BF54 8001B354 0C00D544 */  jal        func_80035510
/* 1BF58 8001B358 02203025 */   or        $a2, $s1, $zero
/* 1BF5C 8001B35C 4407B000 */  mfc1       $a3, $f22
.L8001B360:
/* 1BF60 8001B360 02202025 */  or         $a0, $s1, $zero
/* 1BF64 8001B364 8E050028 */  lw         $a1, 0x28($s0)
/* 1BF68 8001B368 0C008F7D */  jal        func_80023DF4
/* 1BF6C 8001B36C 8E06002C */   lw        $a2, 0x2c($s0)
/* 1BF70 8001B370 8E6C0000 */  lw         $t4, ($s3)
.L8001B374:
/* 1BF74 8001B374 8FAB0100 */  lw         $t3, 0x100($sp)
/* 1BF78 8001B378 02202025 */  or         $a0, $s1, $zero
/* 1BF7C 8001B37C 000C6980 */  sll        $t5, $t4, 6
/* 1BF80 8001B380 016D2821 */  addu       $a1, $t3, $t5
/* 1BF84 8001B384 0C00D480 */  jal        func_80035200
/* 1BF88 8001B388 24A500C0 */   addiu     $a1, $a1, 0xc0
/* 1BF8C 8001B38C 8E420000 */  lw         $v0, ($s2)
/* 1BF90 8001B390 3C0F0102 */  lui        $t7, 0x102
/* 1BF94 8001B394 35EF0040 */  ori        $t7, $t7, 0x40
/* 1BF98 8001B398 244E0008 */  addiu      $t6, $v0, 8
/* 1BF9C 8001B39C AE4E0000 */  sw         $t6, ($s2)
/* 1BFA0 8001B3A0 AC4F0000 */  sw         $t7, ($v0)
/* 1BFA4 8001B3A4 8E780000 */  lw         $t8, ($s3)
/* 1BFA8 8001B3A8 3C090200 */  lui        $t1, 0x200
/* 1BFAC 8001B3AC 25290000 */  addiu      $t1, $t1, 0
/* 1BFB0 8001B3B0 0018C980 */  sll        $t9, $t8, 6
/* 1BFB4 8001B3B4 272800C0 */  addiu      $t0, $t9, 0xc0
/* 1BFB8 8001B3B8 01095021 */  addu       $t2, $t0, $t1
/* 1BFBC 8001B3BC AC4A0004 */  sw         $t2, 4($v0)
/* 1BFC0 8001B3C0 8E6C0000 */  lw         $t4, ($s3)
/* 1BFC4 8001B3C4 3C188009 */  lui        $t8, 0x8009
/* 1BFC8 8001B3C8 26B5FFFF */  addiu      $s5, $s5, -1
/* 1BFCC 8001B3CC 258B0001 */  addiu      $t3, $t4, 1
/* 1BFD0 8001B3D0 AE6B0000 */  sw         $t3, ($s3)
/* 1BFD4 8001B3D4 8E420000 */  lw         $v0, ($s2)
/* 1BFD8 8001B3D8 244D0008 */  addiu      $t5, $v0, 8
/* 1BFDC 8001B3DC AE4D0000 */  sw         $t5, ($s2)
/* 1BFE0 8001B3E0 AC570000 */  sw         $s7, ($v0)
/* 1BFE4 8001B3E4 8E0E0014 */  lw         $t6, 0x14($s0)
/* 1BFE8 8001B3E8 AC4E0004 */  sw         $t6, 4($v0)
/* 1BFEC 8001B3EC 960F0000 */  lhu        $t7, ($s0)
/* 1BFF0 8001B3F0 15E00005 */  bnez       $t7, .L8001B408
/* 1BFF4 8001B3F4 00000000 */   nop       
/* 1BFF8 8001B3F8 8F188420 */  lw         $t8, -0x7be0($t8)
/* 1BFFC 8001B3FC 3C018009 */  lui        $at, 0x8009
/* 1C000 8001B400 2719FFFF */  addiu      $t9, $t8, -1
/* 1C004 8001B404 AC398420 */  sw         $t9, -0x7be0($at)
.L8001B408:
/* 1C008 8001B408 16A0FF84 */  bnez       $s5, .L8001B21C
/* 1C00C 8001B40C 26100040 */   addiu     $s0, $s0, 0x40
.L8001B410:
/* 1C010 8001B410 8FBF005C */  lw         $ra, 0x5c($sp)
/* 1C014 8001B414 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 1C018 8001B418 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 1C01C 8001B41C 8FB00038 */  lw         $s0, 0x38($sp)
/* 1C020 8001B420 8FB1003C */  lw         $s1, 0x3c($sp)
/* 1C024 8001B424 8FB20040 */  lw         $s2, 0x40($sp)
/* 1C028 8001B428 8FB30044 */  lw         $s3, 0x44($sp)
/* 1C02C 8001B42C 8FB40048 */  lw         $s4, 0x48($sp)
/* 1C030 8001B430 8FB5004C */  lw         $s5, 0x4c($sp)
/* 1C034 8001B434 8FB60050 */  lw         $s6, 0x50($sp)
/* 1C038 8001B438 8FB70054 */  lw         $s7, 0x54($sp)
/* 1C03C 8001B43C 8FBE0058 */  lw         $fp, 0x58($sp)
/* 1C040 8001B440 03E00008 */  jr         $ra
/* 1C044 8001B444 27BD0100 */   addiu     $sp, $sp, 0x100

glabel func_8001B448
/* 1C048 8001B448 27BDFEF0 */  addiu      $sp, $sp, -0x110
/* 1C04C 8001B44C AFB30014 */  sw         $s3, 0x14($sp)
/* 1C050 8001B450 AFB00008 */  sw         $s0, 8($sp)
/* 1C054 8001B454 AFA40110 */  sw         $a0, 0x110($sp)	/*a0 = sp[110]*/
/* 1C058 8001B458 308E00FF */  andi       $t6, $a0, 0xff	/*t6 = a0&ff*/
/* 1C05C 8001B45C 01C02025 */  or         $a0, $t6, $zero	/*a0 = t6*/
/* 1C060 8001B460 00C08025 */  or         $s0, $a2, $zero
/* 1C064 8001B464 00E09825 */  or         $s3, $a3, $zero
/* 1C068 8001B468 AFB20010 */  sw         $s2, 0x10($sp)
/* 1C06C 8001B46C AFB1000C */  sw         $s1, 0xc($sp)
/* 1C070 8001B470 AFA50114 */  sw         $a1, 0x114($sp)
/* 1C074 8001B474 3C028005 */  lui        $v0, 0x8005
/* 1C078 8001B478 2442D090 */  addiu      $v0, $v0, -0x2f70
/* 1C07C 8001B47C 00004025 */  or         $t0, $zero, $zero
.L8001B480:
/* 1C080 8001B480 00487821 */  addu       $t7, $v0, $t0
/* 1C084 8001B484 91F80000 */  lbu        $t8, ($t7)
/* 1C088 8001B488 0310082A */  slt        $at, $t8, $s0
/* 1C08C 8001B48C 50200007 */  beql       $at, $zero, .L8001B4AC
/* 1C090 8001B490 25080001 */   addiu     $t0, $t0, 1
/* 1C094 8001B494 25080001 */  addiu      $t0, $t0, 1
/* 1C098 8001B498 311900FF */  andi       $t9, $t0, 0xff
/* 1C09C 8001B49C 2F210007 */  sltiu      $at, $t9, 7
/* 1C0A0 8001B4A0 1420FFF7 */  bnez       $at, .L8001B480
/* 1C0A4 8001B4A4 03204025 */   or        $t0, $t9, $zero
/* 1C0A8 8001B4A8 25080001 */  addiu      $t0, $t0, 1
.L8001B4AC:
/* 1C0AC 8001B4AC 310E00FF */  andi       $t6, $t0, 0xff
/* 1C0B0 8001B4B0 01C04025 */  or         $t0, $t6, $zero
/* 1C0B4 8001B4B4 00001825 */  or         $v1, $zero, $zero
.L8001B4B8:
/* 1C0B8 8001B4B8 00437821 */  addu       $t7, $v0, $v1
/* 1C0BC 8001B4BC 91F80000 */  lbu        $t8, ($t7)
/* 1C0C0 8001B4C0 0313082A */  slt        $at, $t8, $s3
/* 1C0C4 8001B4C4 50200007 */  beql       $at, $zero, .L8001B4E4
/* 1C0C8 8001B4C8 24630001 */   addiu     $v1, $v1, 1
/* 1C0CC 8001B4CC 24630001 */  addiu      $v1, $v1, 1
/* 1C0D0 8001B4D0 307900FF */  andi       $t9, $v1, 0xff
/* 1C0D4 8001B4D4 2F210007 */  sltiu      $at, $t9, 7
/* 1C0D8 8001B4D8 1420FFF7 */  bnez       $at, .L8001B4B8
/* 1C0DC 8001B4DC 03201825 */   or        $v1, $t9, $zero
/* 1C0E0 8001B4E0 24630001 */  addiu      $v1, $v1, 1
.L8001B4E4:
/* 1C0E4 8001B4E4 306E00FF */  andi       $t6, $v1, 0xff
/* 1C0E8 8001B4E8 2C810008 */  sltiu      $at, $a0, 8		
/* 1C0EC 8001B4EC 10200414 */  beqz       $at, .L8001C540
/* 1C0F0 8001B4F0 01C01825 */   or        $v1, $t6, $zero
/* 1C0F4 8001B4F4 00047880 */  sll        $t7, $a0, 2		/*t7 = a0<<2*/
/* 1C0F8 8001B4F8 3C018007 */  lui        $at, %hi(jtbl_800715f0)
/* 1C0FC 8001B4FC 002F0821 */  addu       $at, $at, $t7		/*at = 8007xxt7*/
/* 1C100 8001B500 8C2F15F0 */  lw         $t7, %lo(jtbl_800715f0)($at)	/*t7 = at[0x15f0]*/
/* 1C104 8001B504 01E00008 */  jr         $t7			/* */
/* 1C108 8001B508 00000000 */   nop
.L8001b50c:       
/* 1C10C 8001B50C 3C048008 */  lui        $a0, 0x8008
/* 1C110 8001B510 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1C114 8001B514 8C820000 */  lw         $v0, ($a0)
/* 1C118 8001B518 3C19FD10 */  lui        $t9, 0xfd10
/* 1C11C 8001B51C 306D000F */  andi       $t5, $v1, 0xf
/* 1C120 8001B520 24580008 */  addiu      $t8, $v0, 8
/* 1C124 8001B524 AC980000 */  sw         $t8, ($a0)
/* 1C128 8001B528 AC590000 */  sw         $t9, ($v0)
/* 1C12C 8001B52C 8FAE0114 */  lw         $t6, 0x114($sp)
/* 1C130 8001B530 3C18F510 */  lui        $t8, 0xf510
/* 1C134 8001B534 3112000F */  andi       $s2, $t0, 0xf
/* 1C138 8001B538 AC4E0004 */  sw         $t6, 4($v0)
/* 1C13C 8001B53C 8C860000 */  lw         $a2, ($a0)
/* 1C140 8001B540 3C010700 */  lui        $at, 0x700
/* 1C144 8001B544 00127100 */  sll        $t6, $s2, 4
/* 1C148 8001B548 24CF0008 */  addiu      $t7, $a2, 8
/* 1C14C 8001B54C AC8F0000 */  sw         $t7, ($a0)
/* 1C150 8001B550 ACD80000 */  sw         $t8, ($a2)
/* 1C154 8001B554 93AC0127 */  lbu        $t4, 0x127($sp)
/* 1C158 8001B558 93B10123 */  lbu        $s1, 0x123($sp)
/* 1C15C 8001B55C 000D7B80 */  sll        $t7, $t5, 0xe
/* 1C160 8001B560 31990003 */  andi       $t9, $t4, 3
/* 1C164 8001B564 00196480 */  sll        $t4, $t9, 0x12
/* 1C168 8001B568 01E06825 */  or         $t5, $t7, $zero
/* 1C16C 8001B56C 32380003 */  andi       $t8, $s1, 3
/* 1C170 8001B570 00188A00 */  sll        $s1, $t8, 8
/* 1C174 8001B574 01817825 */  or         $t7, $t4, $at
/* 1C178 8001B578 01EDC025 */  or         $t8, $t7, $t5
/* 1C17C 8001B57C 0311C825 */  or         $t9, $t8, $s1
/* 1C180 8001B580 01C09025 */  or         $s2, $t6, $zero
/* 1C184 8001B584 032E7025 */  or         $t6, $t9, $t6
/* 1C188 8001B588 ACCE0004 */  sw         $t6, 4($a2)
/* 1C18C 8001B58C 8C870000 */  lw         $a3, ($a0)
/* 1C190 8001B590 3C18E600 */  lui        $t8, 0xe600
/* 1C194 8001B594 00102840 */  sll        $a1, $s0, 1
/* 1C198 8001B598 24EF0008 */  addiu      $t7, $a3, 8
/* 1C19C 8001B59C AC8F0000 */  sw         $t7, ($a0)
/* 1C1A0 8001B5A0 ACE00004 */  sw         $zero, 4($a3)
/* 1C1A4 8001B5A4 ACF80000 */  sw         $t8, ($a3)
/* 1C1A8 8001B5A8 02130019 */  multu      $s0, $s3
/* 1C1AC 8001B5AC 8C8A0000 */  lw         $t2, ($a0)
/* 1C1B0 8001B5B0 3C0EF300 */  lui        $t6, 0xf300
/* 1C1B4 8001B5B4 240B07FF */  addiu      $t3, $zero, 0x7ff
/* 1C1B8 8001B5B8 25590008 */  addiu      $t9, $t2, 8
/* 1C1BC 8001B5BC AC990000 */  sw         $t9, ($a0)
/* 1C1C0 8001B5C0 AD4E0000 */  sw         $t6, ($t2)
/* 1C1C4 8001B5C4 00004812 */  mflo       $t1
/* 1C1C8 8001B5C8 2529FFFF */  addiu      $t1, $t1, -1
/* 1C1CC 8001B5CC 292107FF */  slti       $at, $t1, 0x7ff
/* 1C1D0 8001B5D0 10200003 */  beqz       $at, .L8001B5E0
/* 1C1D4 8001B5D4 00000000 */   nop       
/* 1C1D8 8001B5D8 10000001 */  b          .L8001B5E0
/* 1C1DC 8001B5DC 01205825 */   or        $t3, $t1, $zero
.L8001B5E0:
/* 1C1E0 8001B5E0 04A10003 */  bgez       $a1, .L8001B5F0
/* 1C1E4 8001B5E4 000510C3 */   sra       $v0, $a1, 3
/* 1C1E8 8001B5E8 24A10007 */  addiu      $at, $a1, 7
/* 1C1EC 8001B5EC 000110C3 */  sra        $v0, $at, 3
.L8001B5F0:
/* 1C1F0 8001B5F0 1C400003 */  bgtz       $v0, .L8001B600
/* 1C1F4 8001B5F4 00404825 */   or        $t1, $v0, $zero
/* 1C1F8 8001B5F8 10000001 */  b          .L8001B600
/* 1C1FC 8001B5FC 24090001 */   addiu     $t1, $zero, 1
.L8001B600:
/* 1C200 8001B600 1C400003 */  bgtz       $v0, .L8001B610
/* 1C204 8001B604 252F07FF */   addiu     $t7, $t1, 0x7ff
/* 1C208 8001B608 10000002 */  b          .L8001B614
/* 1C20C 8001B60C 24030001 */   addiu     $v1, $zero, 1
.L8001B610:
/* 1C210 8001B610 00401825 */  or         $v1, $v0, $zero
.L8001B614:
/* 1C214 8001B614 01E3001A */  div        $zero, $t7, $v1
/* 1C218 8001B618 14600002 */  bnez       $v1, .L8001B624
/* 1C21C 8001B61C 00000000 */   nop       
/* 1C220 8001B620 0007000D */  break      7
.L8001B624:
/* 1C224 8001B624 2401FFFF */   addiu     $at, $zero, -1
/* 1C228 8001B628 14610004 */  bne        $v1, $at, .L8001B63C
/* 1C22C 8001B62C 3C018000 */   lui       $at, 0x8000
/* 1C230 8001B630 15E10002 */  bne        $t7, $at, .L8001B63C
/* 1C234 8001B634 00000000 */   nop       
/* 1C238 8001B638 0006000D */  break      6
.L8001B63C:
/* 1C23C 8001B63C 0000C012 */   mflo      $t8
/* 1C240 8001B640 33190FFF */  andi       $t9, $t8, 0xfff
/* 1C244 8001B644 3C010700 */  lui        $at, 0x700
/* 1C248 8001B648 316F0FFF */  andi       $t7, $t3, 0xfff
/* 1C24C 8001B64C 000FC300 */  sll        $t8, $t7, 0xc
/* 1C250 8001B650 03217025 */  or         $t6, $t9, $at
/* 1C254 8001B654 01D8C825 */  or         $t9, $t6, $t8
/* 1C258 8001B658 AD590004 */  sw         $t9, 4($t2)
/* 1C25C 8001B65C 8C820000 */  lw         $v0, ($a0)
/* 1C260 8001B660 3C0EE700 */  lui        $t6, 0xe700
/* 1C264 8001B664 24B90007 */  addiu      $t9, $a1, 7
/* 1C268 8001B668 244F0008 */  addiu      $t7, $v0, 8
/* 1C26C 8001B66C AC8F0000 */  sw         $t7, ($a0)
/* 1C270 8001B670 AC400004 */  sw         $zero, 4($v0)
/* 1C274 8001B674 AC4E0000 */  sw         $t6, ($v0)
/* 1C278 8001B678 8C820000 */  lw         $v0, ($a0)
/* 1C27C 8001B67C 001978C3 */  sra        $t7, $t9, 3
/* 1C280 8001B680 31EE01FF */  andi       $t6, $t7, 0x1ff
/* 1C284 8001B684 24580008 */  addiu      $t8, $v0, 8
/* 1C288 8001B688 AC980000 */  sw         $t8, ($a0)
/* 1C28C 8001B68C 000EC240 */  sll        $t8, $t6, 9
/* 1C290 8001B690 018D7825 */  or         $t7, $t4, $t5
/* 1C294 8001B694 3C01F510 */  lui        $at, 0xf510
/* 1C298 8001B698 0301C825 */  or         $t9, $t8, $at
/* 1C29C 8001B69C 01F17025 */  or         $t6, $t7, $s1
/* 1C2A0 8001B6A0 01D2C025 */  or         $t8, $t6, $s2
/* 1C2A4 8001B6A4 AC580004 */  sw         $t8, 4($v0)
/* 1C2A8 8001B6A8 AC590000 */  sw         $t9, ($v0)
/* 1C2AC 8001B6AC 8C820000 */  lw         $v0, ($a0)
/* 1C2B0 8001B6B0 260EFFFF */  addiu      $t6, $s0, -1
/* 1C2B4 8001B6B4 000EC080 */  sll        $t8, $t6, 2
/* 1C2B8 8001B6B8 24590008 */  addiu      $t9, $v0, 8
/* 1C2BC 8001B6BC AC990000 */  sw         $t9, ($a0)
/* 1C2C0 8001B6C0 33190FFF */  andi       $t9, $t8, 0xfff
/* 1C2C4 8001B6C4 3C0FF200 */  lui        $t7, 0xf200
/* 1C2C8 8001B6C8 266EFFFF */  addiu      $t6, $s3, -1
/* 1C2CC 8001B6CC AC4F0000 */  sw         $t7, ($v0)
/* 1C2D0 8001B6D0 00197B00 */  sll        $t7, $t9, 0xc
/* 1C2D4 8001B6D4 000EC080 */  sll        $t8, $t6, 2
/* 1C2D8 8001B6D8 33190FFF */  andi       $t9, $t8, 0xfff
/* 1C2DC 8001B6DC 01F97025 */  or         $t6, $t7, $t9
/* 1C2E0 8001B6E0 AC4E0004 */  sw         $t6, 4($v0)
/* 1C2E4 8001B6E4 8C820000 */  lw         $v0, ($a0)
/* 1C2E8 8001B6E8 3C0FBA00 */  lui        $t7, 0xba00
/* 1C2EC 8001B6EC 35EF0E02 */  ori        $t7, $t7, 0xe02
/* 1C2F0 8001B6F0 24580008 */  addiu      $t8, $v0, 8
/* 1C2F4 8001B6F4 AC980000 */  sw         $t8, ($a0)
/* 1C2F8 8001B6F8 AFA200EC */  sw         $v0, 0xec($sp)
/* 1C2FC 8001B6FC AC400004 */  sw         $zero, 4($v0)
/* 1C300 8001B700 AC4F0000 */  sw         $t7, ($v0)
/* 1C304 8001B704 1000038F */  b          .L8001C544
/* 1C308 8001B708 8FB00008 */   lw        $s0, 8($sp)
.L8001b70c:
/* 1C30C 8001B70C 3C048008 */  lui        $a0, 0x8008
/* 1C310 8001B710 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1C314 8001B714 8C850000 */  lw         $a1, ($a0)
/* 1C318 8001B718 3C18FD18 */  lui        $t8, 0xfd18
/* 1C31C 8001B71C 306D000F */  andi       $t5, $v1, 0xf
/* 1C320 8001B720 24AE0008 */  addiu      $t6, $a1, 8
/* 1C324 8001B724 AC8E0000 */  sw         $t6, ($a0)
/* 1C328 8001B728 ACB80000 */  sw         $t8, ($a1)
/* 1C32C 8001B72C 8FAF0114 */  lw         $t7, 0x114($sp)
/* 1C330 8001B730 3C0EF518 */  lui        $t6, 0xf518
/* 1C334 8001B734 3112000F */  andi       $s2, $t0, 0xf
/* 1C338 8001B738 ACAF0004 */  sw         $t7, 4($a1)
/* 1C33C 8001B73C 8C860000 */  lw         $a2, ($a0)
/* 1C340 8001B740 3C010700 */  lui        $at, 0x700
/* 1C344 8001B744 00127900 */  sll        $t7, $s2, 4
/* 1C348 8001B748 24D90008 */  addiu      $t9, $a2, 8
/* 1C34C 8001B74C AC990000 */  sw         $t9, ($a0)
/* 1C350 8001B750 ACCE0000 */  sw         $t6, ($a2)
/* 1C354 8001B754 93AC0127 */  lbu        $t4, 0x127($sp)
/* 1C358 8001B758 93B10123 */  lbu        $s1, 0x123($sp)
/* 1C35C 8001B75C 000DCB80 */  sll        $t9, $t5, 0xe
/* 1C360 8001B760 31980003 */  andi       $t8, $t4, 3
/* 1C364 8001B764 00186480 */  sll        $t4, $t8, 0x12
/* 1C368 8001B768 03206825 */  or         $t5, $t9, $zero
/* 1C36C 8001B76C 322E0003 */  andi       $t6, $s1, 3
/* 1C370 8001B770 000E8A00 */  sll        $s1, $t6, 8
/* 1C374 8001B774 0181C825 */  or         $t9, $t4, $at
/* 1C378 8001B778 032D7025 */  or         $t6, $t9, $t5
/* 1C37C 8001B77C 01D1C025 */  or         $t8, $t6, $s1
/* 1C380 8001B780 01E09025 */  or         $s2, $t7, $zero
/* 1C384 8001B784 030F7825 */  or         $t7, $t8, $t7
/* 1C388 8001B788 ACCF0004 */  sw         $t7, 4($a2)
/* 1C38C 8001B78C 8C870000 */  lw         $a3, ($a0)
/* 1C390 8001B790 3C0EE600 */  lui        $t6, 0xe600
/* 1C394 8001B794 00101080 */  sll        $v0, $s0, 2
/* 1C398 8001B798 24F90008 */  addiu      $t9, $a3, 8
/* 1C39C 8001B79C AC990000 */  sw         $t9, ($a0)
/* 1C3A0 8001B7A0 ACE00004 */  sw         $zero, 4($a3)
/* 1C3A4 8001B7A4 ACEE0000 */  sw         $t6, ($a3)
/* 1C3A8 8001B7A8 02130019 */  multu      $s0, $s3
/* 1C3AC 8001B7AC 8C8A0000 */  lw         $t2, ($a0)
/* 1C3B0 8001B7B0 3C0FF300 */  lui        $t7, 0xf300
/* 1C3B4 8001B7B4 240B07FF */  addiu      $t3, $zero, 0x7ff
/* 1C3B8 8001B7B8 25580008 */  addiu      $t8, $t2, 8
/* 1C3BC 8001B7BC AC980000 */  sw         $t8, ($a0)
/* 1C3C0 8001B7C0 AD4F0000 */  sw         $t7, ($t2)
/* 1C3C4 8001B7C4 00004812 */  mflo       $t1
/* 1C3C8 8001B7C8 2529FFFF */  addiu      $t1, $t1, -1
/* 1C3CC 8001B7CC 292107FF */  slti       $at, $t1, 0x7ff
/* 1C3D0 8001B7D0 10200003 */  beqz       $at, .L8001B7E0
/* 1C3D4 8001B7D4 00000000 */   nop       
/* 1C3D8 8001B7D8 10000001 */  b          .L8001B7E0
/* 1C3DC 8001B7DC 01205825 */   or        $t3, $t1, $zero
.L8001B7E0:
/* 1C3E0 8001B7E0 04410003 */  bgez       $v0, .L8001B7F0
/* 1C3E4 8001B7E4 0002C8C3 */   sra       $t9, $v0, 3
/* 1C3E8 8001B7E8 24410007 */  addiu      $at, $v0, 7
/* 1C3EC 8001B7EC 0001C8C3 */  sra        $t9, $at, 3
.L8001B7F0:
/* 1C3F0 8001B7F0 1F200003 */  bgtz       $t9, .L8001B800
/* 1C3F4 8001B7F4 03201025 */   or        $v0, $t9, $zero
/* 1C3F8 8001B7F8 10000002 */  b          .L8001B804
/* 1C3FC 8001B7FC 24090001 */   addiu     $t1, $zero, 1
.L8001B800:
/* 1C400 8001B800 00404825 */  or         $t1, $v0, $zero
.L8001B804:
/* 1C404 8001B804 1C400003 */  bgtz       $v0, .L8001B814
/* 1C408 8001B808 252E07FF */   addiu     $t6, $t1, 0x7ff
/* 1C40C 8001B80C 10000002 */  b          .L8001B818
/* 1C410 8001B810 24030001 */   addiu     $v1, $zero, 1
.L8001B814:
/* 1C414 8001B814 00401825 */  or         $v1, $v0, $zero
.L8001B818:
/* 1C418 8001B818 01C3001A */  div        $zero, $t6, $v1
/* 1C41C 8001B81C 14600002 */  bnez       $v1, .L8001B828
/* 1C420 8001B820 00000000 */   nop       
/* 1C424 8001B824 0007000D */  break      7
.L8001B828:
/* 1C428 8001B828 2401FFFF */   addiu     $at, $zero, -1
/* 1C42C 8001B82C 14610004 */  bne        $v1, $at, .L8001B840
/* 1C430 8001B830 3C018000 */   lui       $at, 0x8000
/* 1C434 8001B834 15C10002 */  bne        $t6, $at, .L8001B840
/* 1C438 8001B838 00000000 */   nop       
/* 1C43C 8001B83C 0006000D */  break      6
.L8001B840:
/* 1C440 8001B840 0000C012 */   mflo      $t8
/* 1C444 8001B844 330F0FFF */  andi       $t7, $t8, 0xfff
/* 1C448 8001B848 3C010700 */  lui        $at, 0x700
/* 1C44C 8001B84C 316E0FFF */  andi       $t6, $t3, 0xfff
/* 1C450 8001B850 000EC300 */  sll        $t8, $t6, 0xc
/* 1C454 8001B854 01E1C825 */  or         $t9, $t7, $at
/* 1C458 8001B858 03387825 */  or         $t7, $t9, $t8
/* 1C45C 8001B85C AD4F0004 */  sw         $t7, 4($t2)
/* 1C460 8001B860 8C820000 */  lw         $v0, ($a0)
/* 1C464 8001B864 3C19E700 */  lui        $t9, 0xe700
/* 1C468 8001B868 00107840 */  sll        $t7, $s0, 1
/* 1C46C 8001B86C 244E0008 */  addiu      $t6, $v0, 8
/* 1C470 8001B870 AC8E0000 */  sw         $t6, ($a0)
/* 1C474 8001B874 AC400004 */  sw         $zero, 4($v0)
/* 1C478 8001B878 AC590000 */  sw         $t9, ($v0)
/* 1C47C 8001B87C 8C820000 */  lw         $v0, ($a0)
/* 1C480 8001B880 25EE0007 */  addiu      $t6, $t7, 7
/* 1C484 8001B884 000EC8C3 */  sra        $t9, $t6, 3
/* 1C488 8001B888 24580008 */  addiu      $t8, $v0, 8
/* 1C48C 8001B88C AC980000 */  sw         $t8, ($a0)
/* 1C490 8001B890 333801FF */  andi       $t8, $t9, 0x1ff
/* 1C494 8001B894 00187A40 */  sll        $t7, $t8, 9
/* 1C498 8001B898 018DC825 */  or         $t9, $t4, $t5
/* 1C49C 8001B89C 3C01F518 */  lui        $at, 0xf518
/* 1C4A0 8001B8A0 01E17025 */  or         $t6, $t7, $at
/* 1C4A4 8001B8A4 0331C025 */  or         $t8, $t9, $s1
/* 1C4A8 8001B8A8 03127825 */  or         $t7, $t8, $s2
/* 1C4AC 8001B8AC AC4F0004 */  sw         $t7, 4($v0)
/* 1C4B0 8001B8B0 AC4E0000 */  sw         $t6, ($v0)
/* 1C4B4 8001B8B4 8C820000 */  lw         $v0, ($a0)
/* 1C4B8 8001B8B8 2618FFFF */  addiu      $t8, $s0, -1
/* 1C4BC 8001B8BC 00187880 */  sll        $t7, $t8, 2
/* 1C4C0 8001B8C0 244E0008 */  addiu      $t6, $v0, 8
/* 1C4C4 8001B8C4 AC8E0000 */  sw         $t6, ($a0)
/* 1C4C8 8001B8C8 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1C4CC 8001B8CC 3C19F200 */  lui        $t9, 0xf200
/* 1C4D0 8001B8D0 2678FFFF */  addiu      $t8, $s3, -1
/* 1C4D4 8001B8D4 AC590000 */  sw         $t9, ($v0)
/* 1C4D8 8001B8D8 000ECB00 */  sll        $t9, $t6, 0xc
/* 1C4DC 8001B8DC 00187880 */  sll        $t7, $t8, 2
/* 1C4E0 8001B8E0 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1C4E4 8001B8E4 032EC025 */  or         $t8, $t9, $t6
/* 1C4E8 8001B8E8 AC580004 */  sw         $t8, 4($v0)
/* 1C4EC 8001B8EC 8C820000 */  lw         $v0, ($a0)
/* 1C4F0 8001B8F0 3C19BA00 */  lui        $t9, 0xba00
/* 1C4F4 8001B8F4 37390E02 */  ori        $t9, $t9, 0xe02
/* 1C4F8 8001B8F8 244F0008 */  addiu      $t7, $v0, 8
/* 1C4FC 8001B8FC AC8F0000 */  sw         $t7, ($a0)
/* 1C500 8001B900 AC400004 */  sw         $zero, 4($v0)
/* 1C504 8001B904 AC590000 */  sw         $t9, ($v0)
/* 1C508 8001B908 1000030E */  b          .L8001C544
/* 1C50C 8001B90C 8FB00008 */   lw        $s0, 8($sp)
.L8001b910:
/* 1C510 8001B910 3C048008 */  lui        $a0, 0x8008
/* 1C514 8001B914 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1C518 8001B918 8C850000 */  lw         $a1, ($a0)
/* 1C51C 8001B91C 3C18FD90 */  lui        $t8, 0xfd90
/* 1C520 8001B920 306D000F */  andi       $t5, $v1, 0xf
/* 1C524 8001B924 24AE0008 */  addiu      $t6, $a1, 8
/* 1C528 8001B928 AC8E0000 */  sw         $t6, ($a0)
/* 1C52C 8001B92C ACB80000 */  sw         $t8, ($a1)
/* 1C530 8001B930 8FAF0114 */  lw         $t7, 0x114($sp)
/* 1C534 8001B934 3C0EF590 */  lui        $t6, 0xf590
/* 1C538 8001B938 3112000F */  andi       $s2, $t0, 0xf
/* 1C53C 8001B93C ACAF0004 */  sw         $t7, 4($a1)
/* 1C540 8001B940 8C860000 */  lw         $a2, ($a0)
/* 1C544 8001B944 3C010700 */  lui        $at, 0x700
/* 1C548 8001B948 00127900 */  sll        $t7, $s2, 4
/* 1C54C 8001B94C 24D90008 */  addiu      $t9, $a2, 8
/* 1C550 8001B950 AC990000 */  sw         $t9, ($a0)
/* 1C554 8001B954 ACCE0000 */  sw         $t6, ($a2)
/* 1C558 8001B958 93AC0127 */  lbu        $t4, 0x127($sp)
/* 1C55C 8001B95C 93B10123 */  lbu        $s1, 0x123($sp)
/* 1C560 8001B960 000DCB80 */  sll        $t9, $t5, 0xe
/* 1C564 8001B964 31980003 */  andi       $t8, $t4, 3
/* 1C568 8001B968 00186480 */  sll        $t4, $t8, 0x12
/* 1C56C 8001B96C 03206825 */  or         $t5, $t9, $zero
/* 1C570 8001B970 322E0003 */  andi       $t6, $s1, 3
/* 1C574 8001B974 000E8A00 */  sll        $s1, $t6, 8
/* 1C578 8001B978 0181C825 */  or         $t9, $t4, $at
/* 1C57C 8001B97C 032D7025 */  or         $t6, $t9, $t5
/* 1C580 8001B980 01D1C025 */  or         $t8, $t6, $s1
/* 1C584 8001B984 01E09025 */  or         $s2, $t7, $zero
/* 1C588 8001B988 030F7825 */  or         $t7, $t8, $t7
/* 1C58C 8001B98C ACCF0004 */  sw         $t7, 4($a2)
/* 1C590 8001B990 8C870000 */  lw         $a3, ($a0)
/* 1C594 8001B994 3C0EE600 */  lui        $t6, 0xe600
/* 1C598 8001B998 02005025 */  or         $t2, $s0, $zero
/* 1C59C 8001B99C 24F90008 */  addiu      $t9, $a3, 8
/* 1C5A0 8001B9A0 AC990000 */  sw         $t9, ($a0)
/* 1C5A4 8001B9A4 ACE00004 */  sw         $zero, 4($a3)
/* 1C5A8 8001B9A8 ACEE0000 */  sw         $t6, ($a3)
/* 1C5AC 8001B9AC 02130019 */  multu      $s0, $s3
/* 1C5B0 8001B9B0 8C820000 */  lw         $v0, ($a0)
/* 1C5B4 8001B9B4 3C0FF300 */  lui        $t7, 0xf300
/* 1C5B8 8001B9B8 240B07FF */  addiu      $t3, $zero, 0x7ff
/* 1C5BC 8001B9BC 24580008 */  addiu      $t8, $v0, 8
/* 1C5C0 8001B9C0 AC980000 */  sw         $t8, ($a0)
/* 1C5C4 8001B9C4 AC4F0000 */  sw         $t7, ($v0)
/* 1C5C8 8001B9C8 AFA200BC */  sw         $v0, 0xbc($sp)
/* 1C5CC 8001B9CC 00004812 */  mflo       $t1
/* 1C5D0 8001B9D0 25290001 */  addiu      $t1, $t1, 1
/* 1C5D4 8001B9D4 0009C843 */  sra        $t9, $t1, 1
/* 1C5D8 8001B9D8 2729FFFF */  addiu      $t1, $t9, -1
/* 1C5DC 8001B9DC 292107FF */  slti       $at, $t1, 0x7ff
/* 1C5E0 8001B9E0 10200003 */  beqz       $at, .L8001B9F0
/* 1C5E4 8001B9E4 00000000 */   nop       
/* 1C5E8 8001B9E8 10000001 */  b          .L8001B9F0
/* 1C5EC 8001B9EC 01205825 */   or        $t3, $t1, $zero
.L8001B9F0:
/* 1C5F0 8001B9F0 05410003 */  bgez       $t2, .L8001BA00
/* 1C5F4 8001B9F4 000A10C3 */   sra       $v0, $t2, 3
/* 1C5F8 8001B9F8 25410007 */  addiu      $at, $t2, 7
/* 1C5FC 8001B9FC 000110C3 */  sra        $v0, $at, 3
.L8001BA00:
/* 1C600 8001BA00 1C400003 */  bgtz       $v0, .L8001BA10
/* 1C604 8001BA04 00404825 */   or        $t1, $v0, $zero
/* 1C608 8001BA08 10000001 */  b          .L8001BA10
/* 1C60C 8001BA0C 24090001 */   addiu     $t1, $zero, 1
.L8001BA10:
/* 1C610 8001BA10 1C400003 */  bgtz       $v0, .L8001BA20
/* 1C614 8001BA14 252E07FF */   addiu     $t6, $t1, 0x7ff
/* 1C618 8001BA18 10000002 */  b          .L8001BA24
/* 1C61C 8001BA1C 24030001 */   addiu     $v1, $zero, 1
.L8001BA20:
/* 1C620 8001BA20 00401825 */  or         $v1, $v0, $zero
.L8001BA24:
/* 1C624 8001BA24 01C3001A */  div        $zero, $t6, $v1
/* 1C628 8001BA28 14600002 */  bnez       $v1, .L8001BA34
/* 1C62C 8001BA2C 00000000 */   nop       
/* 1C630 8001BA30 0007000D */  break      7
.L8001BA34:
/* 1C634 8001BA34 2401FFFF */   addiu     $at, $zero, -1
/* 1C638 8001BA38 14610004 */  bne        $v1, $at, .L8001BA4C
/* 1C63C 8001BA3C 3C018000 */   lui       $at, 0x8000
/* 1C640 8001BA40 15C10002 */  bne        $t6, $at, .L8001BA4C
/* 1C644 8001BA44 00000000 */   nop       
/* 1C648 8001BA48 0006000D */  break      6
.L8001BA4C:
/* 1C64C 8001BA4C 0000C012 */   mflo      $t8
/* 1C650 8001BA50 330F0FFF */  andi       $t7, $t8, 0xfff
/* 1C654 8001BA54 316E0FFF */  andi       $t6, $t3, 0xfff
/* 1C658 8001BA58 000EC300 */  sll        $t8, $t6, 0xc
/* 1C65C 8001BA5C 8FAE00BC */  lw         $t6, 0xbc($sp)
/* 1C660 8001BA60 3C010700 */  lui        $at, 0x700
/* 1C664 8001BA64 01E1C825 */  or         $t9, $t7, $at
/* 1C668 8001BA68 03387825 */  or         $t7, $t9, $t8
/* 1C66C 8001BA6C ADCF0004 */  sw         $t7, 4($t6)
/* 1C670 8001BA70 8C820000 */  lw         $v0, ($a0)
/* 1C674 8001BA74 3C18E700 */  lui        $t8, 0xe700
/* 1C678 8001BA78 254E0007 */  addiu      $t6, $t2, 7
/* 1C67C 8001BA7C 24590008 */  addiu      $t9, $v0, 8
/* 1C680 8001BA80 AC990000 */  sw         $t9, ($a0)
/* 1C684 8001BA84 AC400004 */  sw         $zero, 4($v0)
/* 1C688 8001BA88 AC580000 */  sw         $t8, ($v0)
/* 1C68C 8001BA8C 8C820000 */  lw         $v0, ($a0)
/* 1C690 8001BA90 000EC8C3 */  sra        $t9, $t6, 3
/* 1C694 8001BA94 333801FF */  andi       $t8, $t9, 0x1ff
/* 1C698 8001BA98 244F0008 */  addiu      $t7, $v0, 8
/* 1C69C 8001BA9C AC8F0000 */  sw         $t7, ($a0)
/* 1C6A0 8001BAA0 00187A40 */  sll        $t7, $t8, 9
/* 1C6A4 8001BAA4 018DC825 */  or         $t9, $t4, $t5
/* 1C6A8 8001BAA8 3C01F588 */  lui        $at, 0xf588
/* 1C6AC 8001BAAC 01E17025 */  or         $t6, $t7, $at
/* 1C6B0 8001BAB0 0331C025 */  or         $t8, $t9, $s1
/* 1C6B4 8001BAB4 03127825 */  or         $t7, $t8, $s2
/* 1C6B8 8001BAB8 AC4F0004 */  sw         $t7, 4($v0)
/* 1C6BC 8001BABC AC4E0000 */  sw         $t6, ($v0)
/* 1C6C0 8001BAC0 8C820000 */  lw         $v0, ($a0)
/* 1C6C4 8001BAC4 2618FFFF */  addiu      $t8, $s0, -1
/* 1C6C8 8001BAC8 00187880 */  sll        $t7, $t8, 2
/* 1C6CC 8001BACC 244E0008 */  addiu      $t6, $v0, 8
/* 1C6D0 8001BAD0 AC8E0000 */  sw         $t6, ($a0)
/* 1C6D4 8001BAD4 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1C6D8 8001BAD8 3C19F200 */  lui        $t9, 0xf200
/* 1C6DC 8001BADC 2678FFFF */  addiu      $t8, $s3, -1
/* 1C6E0 8001BAE0 AC590000 */  sw         $t9, ($v0)
/* 1C6E4 8001BAE4 000ECB00 */  sll        $t9, $t6, 0xc
/* 1C6E8 8001BAE8 00187880 */  sll        $t7, $t8, 2
/* 1C6EC 8001BAEC 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1C6F0 8001BAF0 032EC025 */  or         $t8, $t9, $t6
/* 1C6F4 8001BAF4 AC580004 */  sw         $t8, 4($v0)
/* 1C6F8 8001BAF8 8C820000 */  lw         $v0, ($a0)
/* 1C6FC 8001BAFC 3C19BA00 */  lui        $t9, 0xba00
/* 1C700 8001BB00 37390E02 */  ori        $t9, $t9, 0xe02
/* 1C704 8001BB04 244F0008 */  addiu      $t7, $v0, 8
/* 1C708 8001BB08 AC8F0000 */  sw         $t7, ($a0)
/* 1C70C 8001BB0C AC400004 */  sw         $zero, 4($v0)
/* 1C710 8001BB10 AC590000 */  sw         $t9, ($v0)
/* 1C714 8001BB14 1000028B */  b          .L8001C544
/* 1C718 8001BB18 8FB00008 */   lw        $s0, 8($sp)
.L8001bb1c:
/* 1C71C 8001BB1C 3C048008 */  lui        $a0, 0x8008
/* 1C720 8001BB20 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1C724 8001BB24 8C850000 */  lw         $a1, ($a0)
/* 1C728 8001BB28 3C18FD70 */  lui        $t8, 0xfd70
/* 1C72C 8001BB2C 306D000F */  andi       $t5, $v1, 0xf
/* 1C730 8001BB30 24AE0008 */  addiu      $t6, $a1, 8
/* 1C734 8001BB34 AC8E0000 */  sw         $t6, ($a0)
/* 1C738 8001BB38 ACB80000 */  sw         $t8, ($a1)
/* 1C73C 8001BB3C 8FAF0114 */  lw         $t7, 0x114($sp)
/* 1C740 8001BB40 3C0EF570 */  lui        $t6, 0xf570
/* 1C744 8001BB44 3112000F */  andi       $s2, $t0, 0xf
/* 1C748 8001BB48 ACAF0004 */  sw         $t7, 4($a1)
/* 1C74C 8001BB4C 8C860000 */  lw         $a2, ($a0)
/* 1C750 8001BB50 3C010700 */  lui        $at, 0x700
/* 1C754 8001BB54 00127900 */  sll        $t7, $s2, 4
/* 1C758 8001BB58 24D90008 */  addiu      $t9, $a2, 8
/* 1C75C 8001BB5C AC990000 */  sw         $t9, ($a0)
/* 1C760 8001BB60 ACCE0000 */  sw         $t6, ($a2)
/* 1C764 8001BB64 93AC0127 */  lbu        $t4, 0x127($sp)
/* 1C768 8001BB68 93B10123 */  lbu        $s1, 0x123($sp)
/* 1C76C 8001BB6C 000DCB80 */  sll        $t9, $t5, 0xe
/* 1C770 8001BB70 31980003 */  andi       $t8, $t4, 3
/* 1C774 8001BB74 00186480 */  sll        $t4, $t8, 0x12
/* 1C778 8001BB78 03206825 */  or         $t5, $t9, $zero
/* 1C77C 8001BB7C 322E0003 */  andi       $t6, $s1, 3
/* 1C780 8001BB80 000E8A00 */  sll        $s1, $t6, 8
/* 1C784 8001BB84 0181C825 */  or         $t9, $t4, $at
/* 1C788 8001BB88 032D7025 */  or         $t6, $t9, $t5
/* 1C78C 8001BB8C 01D1C025 */  or         $t8, $t6, $s1
/* 1C790 8001BB90 01E09025 */  or         $s2, $t7, $zero
/* 1C794 8001BB94 030F7825 */  or         $t7, $t8, $t7
/* 1C798 8001BB98 ACCF0004 */  sw         $t7, 4($a2)
/* 1C79C 8001BB9C 8C870000 */  lw         $a3, ($a0)
/* 1C7A0 8001BBA0 3C0EE600 */  lui        $t6, 0xe600
/* 1C7A4 8001BBA4 02005025 */  or         $t2, $s0, $zero
/* 1C7A8 8001BBA8 24F90008 */  addiu      $t9, $a3, 8
/* 1C7AC 8001BBAC AC990000 */  sw         $t9, ($a0)
/* 1C7B0 8001BBB0 ACE00004 */  sw         $zero, 4($a3)
/* 1C7B4 8001BBB4 ACEE0000 */  sw         $t6, ($a3)
/* 1C7B8 8001BBB8 02130019 */  multu      $s0, $s3
/* 1C7BC 8001BBBC 8C820000 */  lw         $v0, ($a0)
/* 1C7C0 8001BBC0 3C0FF300 */  lui        $t7, 0xf300
/* 1C7C4 8001BBC4 240B07FF */  addiu      $t3, $zero, 0x7ff
/* 1C7C8 8001BBC8 24580008 */  addiu      $t8, $v0, 8
/* 1C7CC 8001BBCC AC980000 */  sw         $t8, ($a0)
/* 1C7D0 8001BBD0 AC4F0000 */  sw         $t7, ($v0)
/* 1C7D4 8001BBD4 AFA2009C */  sw         $v0, 0x9c($sp)
/* 1C7D8 8001BBD8 00004812 */  mflo       $t1
/* 1C7DC 8001BBDC 25290001 */  addiu      $t1, $t1, 1
/* 1C7E0 8001BBE0 0009C843 */  sra        $t9, $t1, 1
/* 1C7E4 8001BBE4 2729FFFF */  addiu      $t1, $t9, -1
/* 1C7E8 8001BBE8 292107FF */  slti       $at, $t1, 0x7ff
/* 1C7EC 8001BBEC 10200003 */  beqz       $at, .L8001BBFC
/* 1C7F0 8001BBF0 00000000 */   nop       
/* 1C7F4 8001BBF4 10000001 */  b          .L8001BBFC
/* 1C7F8 8001BBF8 01205825 */   or        $t3, $t1, $zero
.L8001BBFC:
/* 1C7FC 8001BBFC 05410003 */  bgez       $t2, .L8001BC0C
/* 1C800 8001BC00 000A10C3 */   sra       $v0, $t2, 3
/* 1C804 8001BC04 25410007 */  addiu      $at, $t2, 7
/* 1C808 8001BC08 000110C3 */  sra        $v0, $at, 3
.L8001BC0C:
/* 1C80C 8001BC0C 1C400003 */  bgtz       $v0, .L8001BC1C
/* 1C810 8001BC10 00404825 */   or        $t1, $v0, $zero
/* 1C814 8001BC14 10000001 */  b          .L8001BC1C
/* 1C818 8001BC18 24090001 */   addiu     $t1, $zero, 1
.L8001BC1C:
/* 1C81C 8001BC1C 1C400003 */  bgtz       $v0, .L8001BC2C
/* 1C820 8001BC20 252E07FF */   addiu     $t6, $t1, 0x7ff
/* 1C824 8001BC24 10000002 */  b          .L8001BC30
/* 1C828 8001BC28 24030001 */   addiu     $v1, $zero, 1
.L8001BC2C:
/* 1C82C 8001BC2C 00401825 */  or         $v1, $v0, $zero
.L8001BC30:
/* 1C830 8001BC30 01C3001A */  div        $zero, $t6, $v1
/* 1C834 8001BC34 14600002 */  bnez       $v1, .L8001BC40
/* 1C838 8001BC38 00000000 */   nop       
/* 1C83C 8001BC3C 0007000D */  break      7
.L8001BC40:
/* 1C840 8001BC40 2401FFFF */   addiu     $at, $zero, -1
/* 1C844 8001BC44 14610004 */  bne        $v1, $at, .L8001BC58
/* 1C848 8001BC48 3C018000 */   lui       $at, 0x8000
/* 1C84C 8001BC4C 15C10002 */  bne        $t6, $at, .L8001BC58
/* 1C850 8001BC50 00000000 */   nop       
/* 1C854 8001BC54 0006000D */  break      6
.L8001BC58:
/* 1C858 8001BC58 0000C012 */   mflo      $t8
/* 1C85C 8001BC5C 330F0FFF */  andi       $t7, $t8, 0xfff
/* 1C860 8001BC60 316E0FFF */  andi       $t6, $t3, 0xfff
/* 1C864 8001BC64 000EC300 */  sll        $t8, $t6, 0xc
/* 1C868 8001BC68 8FAE009C */  lw         $t6, 0x9c($sp)
/* 1C86C 8001BC6C 3C010700 */  lui        $at, 0x700
/* 1C870 8001BC70 01E1C825 */  or         $t9, $t7, $at
/* 1C874 8001BC74 03387825 */  or         $t7, $t9, $t8
/* 1C878 8001BC78 ADCF0004 */  sw         $t7, 4($t6)
/* 1C87C 8001BC7C 8C820000 */  lw         $v0, ($a0)
/* 1C880 8001BC80 3C18E700 */  lui        $t8, 0xe700
/* 1C884 8001BC84 254E0007 */  addiu      $t6, $t2, 7
/* 1C888 8001BC88 24590008 */  addiu      $t9, $v0, 8
/* 1C88C 8001BC8C AC990000 */  sw         $t9, ($a0)
/* 1C890 8001BC90 AC400004 */  sw         $zero, 4($v0)
/* 1C894 8001BC94 AC580000 */  sw         $t8, ($v0)
/* 1C898 8001BC98 8C820000 */  lw         $v0, ($a0)
/* 1C89C 8001BC9C 000EC8C3 */  sra        $t9, $t6, 3
/* 1C8A0 8001BCA0 333801FF */  andi       $t8, $t9, 0x1ff
/* 1C8A4 8001BCA4 244F0008 */  addiu      $t7, $v0, 8
/* 1C8A8 8001BCA8 AC8F0000 */  sw         $t7, ($a0)
/* 1C8AC 8001BCAC 00187A40 */  sll        $t7, $t8, 9
/* 1C8B0 8001BCB0 018DC825 */  or         $t9, $t4, $t5
/* 1C8B4 8001BCB4 3C01F568 */  lui        $at, 0xf568
/* 1C8B8 8001BCB8 01E17025 */  or         $t6, $t7, $at
/* 1C8BC 8001BCBC 0331C025 */  or         $t8, $t9, $s1
/* 1C8C0 8001BCC0 03127825 */  or         $t7, $t8, $s2
/* 1C8C4 8001BCC4 AC4F0004 */  sw         $t7, 4($v0)
/* 1C8C8 8001BCC8 AC4E0000 */  sw         $t6, ($v0)
/* 1C8CC 8001BCCC 8C820000 */  lw         $v0, ($a0)
/* 1C8D0 8001BCD0 2618FFFF */  addiu      $t8, $s0, -1
/* 1C8D4 8001BCD4 00187880 */  sll        $t7, $t8, 2
/* 1C8D8 8001BCD8 244E0008 */  addiu      $t6, $v0, 8
/* 1C8DC 8001BCDC AC8E0000 */  sw         $t6, ($a0)
/* 1C8E0 8001BCE0 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1C8E4 8001BCE4 3C19F200 */  lui        $t9, 0xf200
/* 1C8E8 8001BCE8 2678FFFF */  addiu      $t8, $s3, -1
/* 1C8EC 8001BCEC AC590000 */  sw         $t9, ($v0)
/* 1C8F0 8001BCF0 000ECB00 */  sll        $t9, $t6, 0xc
/* 1C8F4 8001BCF4 00187880 */  sll        $t7, $t8, 2
/* 1C8F8 8001BCF8 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1C8FC 8001BCFC 032EC025 */  or         $t8, $t9, $t6
/* 1C900 8001BD00 AC580004 */  sw         $t8, 4($v0)
/* 1C904 8001BD04 8C820000 */  lw         $v0, ($a0)
/* 1C908 8001BD08 3C19BA00 */  lui        $t9, 0xba00
/* 1C90C 8001BD0C 37390E02 */  ori        $t9, $t9, 0xe02
/* 1C910 8001BD10 244F0008 */  addiu      $t7, $v0, 8
/* 1C914 8001BD14 AC8F0000 */  sw         $t7, ($a0)
/* 1C918 8001BD18 AC400004 */  sw         $zero, 4($v0)
/* 1C91C 8001BD1C AC590000 */  sw         $t9, ($v0)
/* 1C920 8001BD20 10000208 */  b          .L8001C544
/* 1C924 8001BD24 8FB00008 */   lw        $s0, 8($sp)
.L8001bd28:
/* 1C928 8001BD28 3C048008 */  lui        $a0, 0x8008
/* 1C92C 8001BD2C 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1C930 8001BD30 8C850000 */  lw         $a1, ($a0)
/* 1C934 8001BD34 3C18FD90 */  lui        $t8, 0xfd90
/* 1C938 8001BD38 306D000F */  andi       $t5, $v1, 0xf
/* 1C93C 8001BD3C 24AE0008 */  addiu      $t6, $a1, 8
/* 1C940 8001BD40 AC8E0000 */  sw         $t6, ($a0)
/* 1C944 8001BD44 ACB80000 */  sw         $t8, ($a1)
/* 1C948 8001BD48 8FAF0114 */  lw         $t7, 0x114($sp)
/* 1C94C 8001BD4C 3C0EF590 */  lui        $t6, 0xf590
/* 1C950 8001BD50 3112000F */  andi       $s2, $t0, 0xf
/* 1C954 8001BD54 ACAF0004 */  sw         $t7, 4($a1)
/* 1C958 8001BD58 8C860000 */  lw         $a2, ($a0)
/* 1C95C 8001BD5C 3C010700 */  lui        $at, 0x700
/* 1C960 8001BD60 00127900 */  sll        $t7, $s2, 4
/* 1C964 8001BD64 24D90008 */  addiu      $t9, $a2, 8
/* 1C968 8001BD68 AC990000 */  sw         $t9, ($a0)
/* 1C96C 8001BD6C ACCE0000 */  sw         $t6, ($a2)
/* 1C970 8001BD70 93AC0127 */  lbu        $t4, 0x127($sp)
/* 1C974 8001BD74 93B10123 */  lbu        $s1, 0x123($sp)
/* 1C978 8001BD78 000DCB80 */  sll        $t9, $t5, 0xe
/* 1C97C 8001BD7C 31980003 */  andi       $t8, $t4, 3
/* 1C980 8001BD80 00186480 */  sll        $t4, $t8, 0x12
/* 1C984 8001BD84 03206825 */  or         $t5, $t9, $zero
/* 1C988 8001BD88 322E0003 */  andi       $t6, $s1, 3
/* 1C98C 8001BD8C 000E8A00 */  sll        $s1, $t6, 8
/* 1C990 8001BD90 0181C825 */  or         $t9, $t4, $at
/* 1C994 8001BD94 032D7025 */  or         $t6, $t9, $t5
/* 1C998 8001BD98 01D1C025 */  or         $t8, $t6, $s1
/* 1C99C 8001BD9C 01E09025 */  or         $s2, $t7, $zero
/* 1C9A0 8001BDA0 030F7825 */  or         $t7, $t8, $t7
/* 1C9A4 8001BDA4 ACCF0004 */  sw         $t7, 4($a2)
/* 1C9A8 8001BDA8 8C870000 */  lw         $a3, ($a0)
/* 1C9AC 8001BDAC 3C0EE600 */  lui        $t6, 0xe600
/* 1C9B0 8001BDB0 240B07FF */  addiu      $t3, $zero, 0x7ff
/* 1C9B4 8001BDB4 24F90008 */  addiu      $t9, $a3, 8
/* 1C9B8 8001BDB8 AC990000 */  sw         $t9, ($a0)
/* 1C9BC 8001BDBC ACE00004 */  sw         $zero, 4($a3)
/* 1C9C0 8001BDC0 ACEE0000 */  sw         $t6, ($a3)
/* 1C9C4 8001BDC4 02130019 */  multu      $s0, $s3
/* 1C9C8 8001BDC8 8C8A0000 */  lw         $t2, ($a0)
/* 1C9CC 8001BDCC 3C0FF300 */  lui        $t7, 0xf300
/* 1C9D0 8001BDD0 25580008 */  addiu      $t8, $t2, 8
/* 1C9D4 8001BDD4 AC980000 */  sw         $t8, ($a0)
/* 1C9D8 8001BDD8 AD4F0000 */  sw         $t7, ($t2)
/* 1C9DC 8001BDDC 00004812 */  mflo       $t1
/* 1C9E0 8001BDE0 25290003 */  addiu      $t1, $t1, 3
/* 1C9E4 8001BDE4 0009C883 */  sra        $t9, $t1, 2
/* 1C9E8 8001BDE8 2729FFFF */  addiu      $t1, $t9, -1
/* 1C9EC 8001BDEC 292107FF */  slti       $at, $t1, 0x7ff
/* 1C9F0 8001BDF0 10200003 */  beqz       $at, .L8001BE00
/* 1C9F4 8001BDF4 00000000 */   nop       
/* 1C9F8 8001BDF8 10000001 */  b          .L8001BE00
/* 1C9FC 8001BDFC 01205825 */   or        $t3, $t1, $zero
.L8001BE00:
/* 1CA00 8001BE00 06010003 */  bgez       $s0, .L8001BE10
/* 1CA04 8001BE04 00101103 */   sra       $v0, $s0, 4
/* 1CA08 8001BE08 2601000F */  addiu      $at, $s0, 0xf
/* 1CA0C 8001BE0C 00011103 */  sra        $v0, $at, 4
.L8001BE10:
/* 1CA10 8001BE10 1C400003 */  bgtz       $v0, .L8001BE20
/* 1CA14 8001BE14 00404825 */   or        $t1, $v0, $zero
/* 1CA18 8001BE18 10000001 */  b          .L8001BE20
/* 1CA1C 8001BE1C 24090001 */   addiu     $t1, $zero, 1
.L8001BE20:
/* 1CA20 8001BE20 1C400003 */  bgtz       $v0, .L8001BE30
/* 1CA24 8001BE24 252E07FF */   addiu     $t6, $t1, 0x7ff
/* 1CA28 8001BE28 10000002 */  b          .L8001BE34
/* 1CA2C 8001BE2C 24030001 */   addiu     $v1, $zero, 1
.L8001BE30:
/* 1CA30 8001BE30 00401825 */  or         $v1, $v0, $zero
.L8001BE34:
/* 1CA34 8001BE34 01C3001A */  div        $zero, $t6, $v1
/* 1CA38 8001BE38 14600002 */  bnez       $v1, .L8001BE44
/* 1CA3C 8001BE3C 00000000 */   nop       
/* 1CA40 8001BE40 0007000D */  break      7
.L8001BE44:
/* 1CA44 8001BE44 2401FFFF */   addiu     $at, $zero, -1
/* 1CA48 8001BE48 14610004 */  bne        $v1, $at, .L8001BE5C
/* 1CA4C 8001BE4C 3C018000 */   lui       $at, 0x8000
/* 1CA50 8001BE50 15C10002 */  bne        $t6, $at, .L8001BE5C
/* 1CA54 8001BE54 00000000 */   nop       
/* 1CA58 8001BE58 0006000D */  break      6
.L8001BE5C:
/* 1CA5C 8001BE5C 0000C012 */   mflo      $t8
/* 1CA60 8001BE60 330F0FFF */  andi       $t7, $t8, 0xfff
/* 1CA64 8001BE64 3C010700 */  lui        $at, 0x700
/* 1CA68 8001BE68 316E0FFF */  andi       $t6, $t3, 0xfff
/* 1CA6C 8001BE6C 000EC300 */  sll        $t8, $t6, 0xc
/* 1CA70 8001BE70 01E1C825 */  or         $t9, $t7, $at
/* 1CA74 8001BE74 03387825 */  or         $t7, $t9, $t8
/* 1CA78 8001BE78 AD4F0004 */  sw         $t7, 4($t2)
/* 1CA7C 8001BE7C 8C820000 */  lw         $v0, ($a0)
/* 1CA80 8001BE80 3C19E700 */  lui        $t9, 0xe700
/* 1CA84 8001BE84 00107843 */  sra        $t7, $s0, 1
/* 1CA88 8001BE88 244E0008 */  addiu      $t6, $v0, 8
/* 1CA8C 8001BE8C AC8E0000 */  sw         $t6, ($a0)
/* 1CA90 8001BE90 AC400004 */  sw         $zero, 4($v0)
/* 1CA94 8001BE94 AC590000 */  sw         $t9, ($v0)
/* 1CA98 8001BE98 8C820000 */  lw         $v0, ($a0)
/* 1CA9C 8001BE9C 25EE0007 */  addiu      $t6, $t7, 7
/* 1CAA0 8001BEA0 000EC8C3 */  sra        $t9, $t6, 3
/* 1CAA4 8001BEA4 24580008 */  addiu      $t8, $v0, 8
/* 1CAA8 8001BEA8 AC980000 */  sw         $t8, ($a0)
/* 1CAAC 8001BEAC 333801FF */  andi       $t8, $t9, 0x1ff
/* 1CAB0 8001BEB0 00187A40 */  sll        $t7, $t8, 9
/* 1CAB4 8001BEB4 018DC825 */  or         $t9, $t4, $t5
/* 1CAB8 8001BEB8 3C01F580 */  lui        $at, 0xf580
/* 1CABC 8001BEBC 01E17025 */  or         $t6, $t7, $at
/* 1CAC0 8001BEC0 0331C025 */  or         $t8, $t9, $s1
/* 1CAC4 8001BEC4 03127825 */  or         $t7, $t8, $s2
/* 1CAC8 8001BEC8 AC4F0004 */  sw         $t7, 4($v0)
/* 1CACC 8001BECC AC4E0000 */  sw         $t6, ($v0)
/* 1CAD0 8001BED0 8C820000 */  lw         $v0, ($a0)
/* 1CAD4 8001BED4 2618FFFF */  addiu      $t8, $s0, -1
/* 1CAD8 8001BED8 00187880 */  sll        $t7, $t8, 2
/* 1CADC 8001BEDC 244E0008 */  addiu      $t6, $v0, 8
/* 1CAE0 8001BEE0 AC8E0000 */  sw         $t6, ($a0)
/* 1CAE4 8001BEE4 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1CAE8 8001BEE8 3C19F200 */  lui        $t9, 0xf200
/* 1CAEC 8001BEEC 2678FFFF */  addiu      $t8, $s3, -1
/* 1CAF0 8001BEF0 AC590000 */  sw         $t9, ($v0)
/* 1CAF4 8001BEF4 000ECB00 */  sll        $t9, $t6, 0xc
/* 1CAF8 8001BEF8 00187880 */  sll        $t7, $t8, 2
/* 1CAFC 8001BEFC 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1CB00 8001BF00 032EC025 */  or         $t8, $t9, $t6
/* 1CB04 8001BF04 AC580004 */  sw         $t8, 4($v0)
/* 1CB08 8001BF08 8C820000 */  lw         $v0, ($a0)
/* 1CB0C 8001BF0C 3C19BA00 */  lui        $t9, 0xba00
/* 1CB10 8001BF10 37390E02 */  ori        $t9, $t9, 0xe02
/* 1CB14 8001BF14 244F0008 */  addiu      $t7, $v0, 8
/* 1CB18 8001BF18 AC8F0000 */  sw         $t7, ($a0)
/* 1CB1C 8001BF1C AC400004 */  sw         $zero, 4($v0)
/* 1CB20 8001BF20 AC590000 */  sw         $t9, ($v0)
/* 1CB24 8001BF24 10000187 */  b          .L8001C544
/* 1CB28 8001BF28 8FB00008 */   lw        $s0, 8($sp)
.L8001bf2c:
/* 1CB2C 8001BF2C 3C048008 */  lui        $a0, 0x8008
/* 1CB30 8001BF30 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1CB34 8001BF34 8C850000 */  lw         $a1, ($a0)
/* 1CB38 8001BF38 3C18FD70 */  lui        $t8, 0xfd70
/* 1CB3C 8001BF3C 306D000F */  andi       $t5, $v1, 0xf
/* 1CB40 8001BF40 24AE0008 */  addiu      $t6, $a1, 8
/* 1CB44 8001BF44 AC8E0000 */  sw         $t6, ($a0)
/* 1CB48 8001BF48 ACB80000 */  sw         $t8, ($a1)
/* 1CB4C 8001BF4C 8FAF0114 */  lw         $t7, 0x114($sp)
/* 1CB50 8001BF50 3C0EF570 */  lui        $t6, 0xf570
/* 1CB54 8001BF54 3112000F */  andi       $s2, $t0, 0xf
/* 1CB58 8001BF58 ACAF0004 */  sw         $t7, 4($a1)
/* 1CB5C 8001BF5C 8C860000 */  lw         $a2, ($a0)
/* 1CB60 8001BF60 3C010700 */  lui        $at, 0x700
/* 1CB64 8001BF64 00127900 */  sll        $t7, $s2, 4
/* 1CB68 8001BF68 24D90008 */  addiu      $t9, $a2, 8
/* 1CB6C 8001BF6C AC990000 */  sw         $t9, ($a0)
/* 1CB70 8001BF70 ACCE0000 */  sw         $t6, ($a2)
/* 1CB74 8001BF74 93AC0127 */  lbu        $t4, 0x127($sp)
/* 1CB78 8001BF78 93B10123 */  lbu        $s1, 0x123($sp)
/* 1CB7C 8001BF7C 000DCB80 */  sll        $t9, $t5, 0xe
/* 1CB80 8001BF80 31980003 */  andi       $t8, $t4, 3
/* 1CB84 8001BF84 00186480 */  sll        $t4, $t8, 0x12
/* 1CB88 8001BF88 03206825 */  or         $t5, $t9, $zero
/* 1CB8C 8001BF8C 322E0003 */  andi       $t6, $s1, 3
/* 1CB90 8001BF90 000E8A00 */  sll        $s1, $t6, 8
/* 1CB94 8001BF94 0181C825 */  or         $t9, $t4, $at
/* 1CB98 8001BF98 032D7025 */  or         $t6, $t9, $t5
/* 1CB9C 8001BF9C 01D1C025 */  or         $t8, $t6, $s1
/* 1CBA0 8001BFA0 01E09025 */  or         $s2, $t7, $zero
/* 1CBA4 8001BFA4 030F7825 */  or         $t7, $t8, $t7
/* 1CBA8 8001BFA8 ACCF0004 */  sw         $t7, 4($a2)
/* 1CBAC 8001BFAC 8C870000 */  lw         $a3, ($a0)
/* 1CBB0 8001BFB0 3C0EE600 */  lui        $t6, 0xe600
/* 1CBB4 8001BFB4 240B07FF */  addiu      $t3, $zero, 0x7ff
/* 1CBB8 8001BFB8 24F90008 */  addiu      $t9, $a3, 8
/* 1CBBC 8001BFBC AC990000 */  sw         $t9, ($a0)
/* 1CBC0 8001BFC0 ACE00004 */  sw         $zero, 4($a3)
/* 1CBC4 8001BFC4 ACEE0000 */  sw         $t6, ($a3)
/* 1CBC8 8001BFC8 02130019 */  multu      $s0, $s3
/* 1CBCC 8001BFCC 8C8A0000 */  lw         $t2, ($a0)
/* 1CBD0 8001BFD0 3C0FF300 */  lui        $t7, 0xf300
/* 1CBD4 8001BFD4 25580008 */  addiu      $t8, $t2, 8
/* 1CBD8 8001BFD8 AC980000 */  sw         $t8, ($a0)
/* 1CBDC 8001BFDC AD4F0000 */  sw         $t7, ($t2)
/* 1CBE0 8001BFE0 00004812 */  mflo       $t1
/* 1CBE4 8001BFE4 25290003 */  addiu      $t1, $t1, 3
/* 1CBE8 8001BFE8 0009C883 */  sra        $t9, $t1, 2
/* 1CBEC 8001BFEC 2729FFFF */  addiu      $t1, $t9, -1
/* 1CBF0 8001BFF0 292107FF */  slti       $at, $t1, 0x7ff
/* 1CBF4 8001BFF4 10200003 */  beqz       $at, .L8001C004
/* 1CBF8 8001BFF8 00000000 */   nop       
/* 1CBFC 8001BFFC 10000001 */  b          .L8001C004
/* 1CC00 8001C000 01205825 */   or        $t3, $t1, $zero
.L8001C004:
/* 1CC04 8001C004 06010003 */  bgez       $s0, .L8001C014
/* 1CC08 8001C008 00101103 */   sra       $v0, $s0, 4
/* 1CC0C 8001C00C 2601000F */  addiu      $at, $s0, 0xf
/* 1CC10 8001C010 00011103 */  sra        $v0, $at, 4
.L8001C014:
/* 1CC14 8001C014 1C400003 */  bgtz       $v0, .L8001C024
/* 1CC18 8001C018 00404825 */   or        $t1, $v0, $zero
/* 1CC1C 8001C01C 10000001 */  b          .L8001C024
/* 1CC20 8001C020 24090001 */   addiu     $t1, $zero, 1
.L8001C024:
/* 1CC24 8001C024 1C400003 */  bgtz       $v0, .L8001C034
/* 1CC28 8001C028 252E07FF */   addiu     $t6, $t1, 0x7ff
/* 1CC2C 8001C02C 10000002 */  b          .L8001C038
/* 1CC30 8001C030 24030001 */   addiu     $v1, $zero, 1
.L8001C034:
/* 1CC34 8001C034 00401825 */  or         $v1, $v0, $zero
.L8001C038:
/* 1CC38 8001C038 01C3001A */  div        $zero, $t6, $v1
/* 1CC3C 8001C03C 14600002 */  bnez       $v1, .L8001C048
/* 1CC40 8001C040 00000000 */   nop       
/* 1CC44 8001C044 0007000D */  break      7
.L8001C048:
/* 1CC48 8001C048 2401FFFF */   addiu     $at, $zero, -1
/* 1CC4C 8001C04C 14610004 */  bne        $v1, $at, .L8001C060
/* 1CC50 8001C050 3C018000 */   lui       $at, 0x8000
/* 1CC54 8001C054 15C10002 */  bne        $t6, $at, .L8001C060
/* 1CC58 8001C058 00000000 */   nop       
/* 1CC5C 8001C05C 0006000D */  break      6
.L8001C060:
/* 1CC60 8001C060 0000C012 */   mflo      $t8
/* 1CC64 8001C064 330F0FFF */  andi       $t7, $t8, 0xfff
/* 1CC68 8001C068 3C010700 */  lui        $at, 0x700
/* 1CC6C 8001C06C 316E0FFF */  andi       $t6, $t3, 0xfff
/* 1CC70 8001C070 000EC300 */  sll        $t8, $t6, 0xc
/* 1CC74 8001C074 01E1C825 */  or         $t9, $t7, $at
/* 1CC78 8001C078 03387825 */  or         $t7, $t9, $t8
/* 1CC7C 8001C07C AD4F0004 */  sw         $t7, 4($t2)
/* 1CC80 8001C080 8C820000 */  lw         $v0, ($a0)
/* 1CC84 8001C084 3C19E700 */  lui        $t9, 0xe700
/* 1CC88 8001C088 00107843 */  sra        $t7, $s0, 1
/* 1CC8C 8001C08C 244E0008 */  addiu      $t6, $v0, 8
/* 1CC90 8001C090 AC8E0000 */  sw         $t6, ($a0)
/* 1CC94 8001C094 AC400004 */  sw         $zero, 4($v0)
/* 1CC98 8001C098 AC590000 */  sw         $t9, ($v0)
/* 1CC9C 8001C09C 8C820000 */  lw         $v0, ($a0)
/* 1CCA0 8001C0A0 25EE0007 */  addiu      $t6, $t7, 7
/* 1CCA4 8001C0A4 000EC8C3 */  sra        $t9, $t6, 3
/* 1CCA8 8001C0A8 24580008 */  addiu      $t8, $v0, 8
/* 1CCAC 8001C0AC AC980000 */  sw         $t8, ($a0)
/* 1CCB0 8001C0B0 333801FF */  andi       $t8, $t9, 0x1ff
/* 1CCB4 8001C0B4 00187A40 */  sll        $t7, $t8, 9
/* 1CCB8 8001C0B8 018DC825 */  or         $t9, $t4, $t5
/* 1CCBC 8001C0BC 3C01F560 */  lui        $at, 0xf560
/* 1CCC0 8001C0C0 01E17025 */  or         $t6, $t7, $at
/* 1CCC4 8001C0C4 0331C025 */  or         $t8, $t9, $s1
/* 1CCC8 8001C0C8 03127825 */  or         $t7, $t8, $s2
/* 1CCCC 8001C0CC AC4F0004 */  sw         $t7, 4($v0)
/* 1CCD0 8001C0D0 AC4E0000 */  sw         $t6, ($v0)
/* 1CCD4 8001C0D4 8C820000 */  lw         $v0, ($a0)
/* 1CCD8 8001C0D8 2618FFFF */  addiu      $t8, $s0, -1
/* 1CCDC 8001C0DC 00187880 */  sll        $t7, $t8, 2
/* 1CCE0 8001C0E0 244E0008 */  addiu      $t6, $v0, 8
/* 1CCE4 8001C0E4 AC8E0000 */  sw         $t6, ($a0)
/* 1CCE8 8001C0E8 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1CCEC 8001C0EC 3C19F200 */  lui        $t9, 0xf200
/* 1CCF0 8001C0F0 2678FFFF */  addiu      $t8, $s3, -1
/* 1CCF4 8001C0F4 AC590000 */  sw         $t9, ($v0)
/* 1CCF8 8001C0F8 000ECB00 */  sll        $t9, $t6, 0xc
/* 1CCFC 8001C0FC 00187880 */  sll        $t7, $t8, 2
/* 1CD00 8001C100 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1CD04 8001C104 032EC025 */  or         $t8, $t9, $t6
/* 1CD08 8001C108 AC580004 */  sw         $t8, 4($v0)
/* 1CD0C 8001C10C 8C820000 */  lw         $v0, ($a0)
/* 1CD10 8001C110 3C19BA00 */  lui        $t9, 0xba00
/* 1CD14 8001C114 37390E02 */  ori        $t9, $t9, 0xe02
/* 1CD18 8001C118 244F0008 */  addiu      $t7, $v0, 8
/* 1CD1C 8001C11C AC8F0000 */  sw         $t7, ($a0)
/* 1CD20 8001C120 AC400004 */  sw         $zero, 4($v0)
/* 1CD24 8001C124 AC590000 */  sw         $t9, ($v0)
/* 1CD28 8001C128 10000106 */  b          .L8001C544
/* 1CD2C 8001C12C 8FB00008 */   lw        $s0, 8($sp)
.L8001c130:
/* 1CD30 8001C130 3C048008 */  lui        $a0, 0x8008
/* 1CD34 8001C134 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1CD38 8001C138 8C850000 */  lw         $a1, ($a0)
/* 1CD3C 8001C13C 3C18FD50 */  lui        $t8, 0xfd50
/* 1CD40 8001C140 306D000F */  andi       $t5, $v1, 0xf
/* 1CD44 8001C144 24AE0008 */  addiu      $t6, $a1, 8
/* 1CD48 8001C148 AC8E0000 */  sw         $t6, ($a0)
/* 1CD4C 8001C14C ACB80000 */  sw         $t8, ($a1)
/* 1CD50 8001C150 8FAF0114 */  lw         $t7, 0x114($sp)
/* 1CD54 8001C154 3C0EF550 */  lui        $t6, 0xf550
/* 1CD58 8001C158 3112000F */  andi       $s2, $t0, 0xf
/* 1CD5C 8001C15C ACAF0004 */  sw         $t7, 4($a1)
/* 1CD60 8001C160 8C860000 */  lw         $a2, ($a0)
/* 1CD64 8001C164 3C010700 */  lui        $at, 0x700
/* 1CD68 8001C168 00127900 */  sll        $t7, $s2, 4
/* 1CD6C 8001C16C 24D90008 */  addiu      $t9, $a2, 8
/* 1CD70 8001C170 AC990000 */  sw         $t9, ($a0)
/* 1CD74 8001C174 ACCE0000 */  sw         $t6, ($a2)
/* 1CD78 8001C178 93AC0127 */  lbu        $t4, 0x127($sp)
/* 1CD7C 8001C17C 93B10123 */  lbu        $s1, 0x123($sp)
/* 1CD80 8001C180 000DCB80 */  sll        $t9, $t5, 0xe
/* 1CD84 8001C184 31980003 */  andi       $t8, $t4, 3
/* 1CD88 8001C188 00186480 */  sll        $t4, $t8, 0x12
/* 1CD8C 8001C18C 03206825 */  or         $t5, $t9, $zero
/* 1CD90 8001C190 322E0003 */  andi       $t6, $s1, 3
/* 1CD94 8001C194 000E8A00 */  sll        $s1, $t6, 8
/* 1CD98 8001C198 0181C825 */  or         $t9, $t4, $at
/* 1CD9C 8001C19C 032D7025 */  or         $t6, $t9, $t5
/* 1CDA0 8001C1A0 01D1C025 */  or         $t8, $t6, $s1
/* 1CDA4 8001C1A4 01E09025 */  or         $s2, $t7, $zero
/* 1CDA8 8001C1A8 030F7825 */  or         $t7, $t8, $t7
/* 1CDAC 8001C1AC ACCF0004 */  sw         $t7, 4($a2)
/* 1CDB0 8001C1B0 8C870000 */  lw         $a3, ($a0)
/* 1CDB4 8001C1B4 3C0EE600 */  lui        $t6, 0xe600
/* 1CDB8 8001C1B8 240B07FF */  addiu      $t3, $zero, 0x7ff
/* 1CDBC 8001C1BC 24F90008 */  addiu      $t9, $a3, 8
/* 1CDC0 8001C1C0 AC990000 */  sw         $t9, ($a0)
/* 1CDC4 8001C1C4 ACE00004 */  sw         $zero, 4($a3)
/* 1CDC8 8001C1C8 ACEE0000 */  sw         $t6, ($a3)
/* 1CDCC 8001C1CC 02130019 */  multu      $s0, $s3
/* 1CDD0 8001C1D0 8C8A0000 */  lw         $t2, ($a0)
/* 1CDD4 8001C1D4 3C0FF300 */  lui        $t7, 0xf300
/* 1CDD8 8001C1D8 25580008 */  addiu      $t8, $t2, 8
/* 1CDDC 8001C1DC AC980000 */  sw         $t8, ($a0)
/* 1CDE0 8001C1E0 AD4F0000 */  sw         $t7, ($t2)
/* 1CDE4 8001C1E4 00004812 */  mflo       $t1
/* 1CDE8 8001C1E8 25290003 */  addiu      $t1, $t1, 3
/* 1CDEC 8001C1EC 0009C883 */  sra        $t9, $t1, 2
/* 1CDF0 8001C1F0 2729FFFF */  addiu      $t1, $t9, -1
/* 1CDF4 8001C1F4 292107FF */  slti       $at, $t1, 0x7ff
/* 1CDF8 8001C1F8 10200003 */  beqz       $at, .L8001C208
/* 1CDFC 8001C1FC 00000000 */   nop       
/* 1CE00 8001C200 10000001 */  b          .L8001C208
/* 1CE04 8001C204 01205825 */   or        $t3, $t1, $zero
.L8001C208:
/* 1CE08 8001C208 06010003 */  bgez       $s0, .L8001C218
/* 1CE0C 8001C20C 00101103 */   sra       $v0, $s0, 4
/* 1CE10 8001C210 2601000F */  addiu      $at, $s0, 0xf
/* 1CE14 8001C214 00011103 */  sra        $v0, $at, 4
.L8001C218:
/* 1CE18 8001C218 1C400003 */  bgtz       $v0, .L8001C228
/* 1CE1C 8001C21C 00404825 */   or        $t1, $v0, $zero
/* 1CE20 8001C220 10000001 */  b          .L8001C228
/* 1CE24 8001C224 24090001 */   addiu     $t1, $zero, 1
.L8001C228:
/* 1CE28 8001C228 1C400003 */  bgtz       $v0, .L8001C238
/* 1CE2C 8001C22C 252E07FF */   addiu     $t6, $t1, 0x7ff
/* 1CE30 8001C230 10000002 */  b          .L8001C23C
/* 1CE34 8001C234 24030001 */   addiu     $v1, $zero, 1
.L8001C238:
/* 1CE38 8001C238 00401825 */  or         $v1, $v0, $zero
.L8001C23C:
/* 1CE3C 8001C23C 01C3001A */  div        $zero, $t6, $v1
/* 1CE40 8001C240 14600002 */  bnez       $v1, .L8001C24C
/* 1CE44 8001C244 00000000 */   nop       
/* 1CE48 8001C248 0007000D */  break      7
.L8001C24C:
/* 1CE4C 8001C24C 2401FFFF */   addiu     $at, $zero, -1
/* 1CE50 8001C250 14610004 */  bne        $v1, $at, .L8001C264
/* 1CE54 8001C254 3C018000 */   lui       $at, 0x8000
/* 1CE58 8001C258 15C10002 */  bne        $t6, $at, .L8001C264
/* 1CE5C 8001C25C 00000000 */   nop       
/* 1CE60 8001C260 0006000D */  break      6
.L8001C264:
/* 1CE64 8001C264 0000C012 */   mflo      $t8
/* 1CE68 8001C268 330F0FFF */  andi       $t7, $t8, 0xfff
/* 1CE6C 8001C26C 3C010700 */  lui        $at, 0x700
/* 1CE70 8001C270 316E0FFF */  andi       $t6, $t3, 0xfff
/* 1CE74 8001C274 000EC300 */  sll        $t8, $t6, 0xc
/* 1CE78 8001C278 01E1C825 */  or         $t9, $t7, $at
/* 1CE7C 8001C27C 03387825 */  or         $t7, $t9, $t8
/* 1CE80 8001C280 AD4F0004 */  sw         $t7, 4($t2)
/* 1CE84 8001C284 8C820000 */  lw         $v0, ($a0)
/* 1CE88 8001C288 3C19E700 */  lui        $t9, 0xe700
/* 1CE8C 8001C28C 00107843 */  sra        $t7, $s0, 1
/* 1CE90 8001C290 244E0008 */  addiu      $t6, $v0, 8
/* 1CE94 8001C294 AC8E0000 */  sw         $t6, ($a0)
/* 1CE98 8001C298 AC400004 */  sw         $zero, 4($v0)
/* 1CE9C 8001C29C AC590000 */  sw         $t9, ($v0)
/* 1CEA0 8001C2A0 8C820000 */  lw         $v0, ($a0)
/* 1CEA4 8001C2A4 25EE0007 */  addiu      $t6, $t7, 7
/* 1CEA8 8001C2A8 000EC8C3 */  sra        $t9, $t6, 3
/* 1CEAC 8001C2AC 24580008 */  addiu      $t8, $v0, 8
/* 1CEB0 8001C2B0 AC980000 */  sw         $t8, ($a0)
/* 1CEB4 8001C2B4 333801FF */  andi       $t8, $t9, 0x1ff
/* 1CEB8 8001C2B8 00187A40 */  sll        $t7, $t8, 9
/* 1CEBC 8001C2BC 018DC825 */  or         $t9, $t4, $t5
/* 1CEC0 8001C2C0 3C01F540 */  lui        $at, 0xf540
/* 1CEC4 8001C2C4 01E17025 */  or         $t6, $t7, $at
/* 1CEC8 8001C2C8 0331C025 */  or         $t8, $t9, $s1
/* 1CECC 8001C2CC 03127825 */  or         $t7, $t8, $s2
/* 1CED0 8001C2D0 AC4F0004 */  sw         $t7, 4($v0)
/* 1CED4 8001C2D4 AC4E0000 */  sw         $t6, ($v0)
/* 1CED8 8001C2D8 8C820000 */  lw         $v0, ($a0)
/* 1CEDC 8001C2DC 2618FFFF */  addiu      $t8, $s0, -1
/* 1CEE0 8001C2E0 00187880 */  sll        $t7, $t8, 2
/* 1CEE4 8001C2E4 244E0008 */  addiu      $t6, $v0, 8
/* 1CEE8 8001C2E8 AC8E0000 */  sw         $t6, ($a0)
/* 1CEEC 8001C2EC 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1CEF0 8001C2F0 3C19F200 */  lui        $t9, 0xf200
/* 1CEF4 8001C2F4 2678FFFF */  addiu      $t8, $s3, -1
/* 1CEF8 8001C2F8 AC590000 */  sw         $t9, ($v0)
/* 1CEFC 8001C2FC 000ECB00 */  sll        $t9, $t6, 0xc
/* 1CF00 8001C300 00187880 */  sll        $t7, $t8, 2
/* 1CF04 8001C304 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1CF08 8001C308 032EC025 */  or         $t8, $t9, $t6
/* 1CF0C 8001C30C AC580004 */  sw         $t8, 4($v0)
/* 1CF10 8001C310 8C820000 */  lw         $v0, ($a0)
/* 1CF14 8001C314 3C19BA00 */  lui        $t9, 0xba00
/* 1CF18 8001C318 37390E02 */  ori        $t9, $t9, 0xe02
/* 1CF1C 8001C31C 244F0008 */  addiu      $t7, $v0, 8
/* 1CF20 8001C320 AC8F0000 */  sw         $t7, ($a0)
/* 1CF24 8001C324 340E8000 */  ori        $t6, $zero, 0x8000
/* 1CF28 8001C328 AC4E0004 */  sw         $t6, 4($v0)
/* 1CF2C 8001C32C AC590000 */  sw         $t9, ($v0)
/* 1CF30 8001C330 10000084 */  b          .L8001C544
/* 1CF34 8001C334 8FB00008 */   lw        $s0, 8($sp)
.L8001c338:
/* 1CF38 8001C338 3C048008 */  lui        $a0, 0x8008
/* 1CF3C 8001C33C 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1CF40 8001C340 8C850000 */  lw         $a1, ($a0)
/* 1CF44 8001C344 3C0FFD50 */  lui        $t7, 0xfd50
/* 1CF48 8001C348 306D000F */  andi       $t5, $v1, 0xf
/* 1CF4C 8001C34C 24B80008 */  addiu      $t8, $a1, 8
/* 1CF50 8001C350 AC980000 */  sw         $t8, ($a0)
/* 1CF54 8001C354 ACAF0000 */  sw         $t7, ($a1)
/* 1CF58 8001C358 8FB90114 */  lw         $t9, 0x114($sp)
/* 1CF5C 8001C35C 3C18F550 */  lui        $t8, 0xf550
/* 1CF60 8001C360 3112000F */  andi       $s2, $t0, 0xf
/* 1CF64 8001C364 ACB90004 */  sw         $t9, 4($a1)
/* 1CF68 8001C368 8C860000 */  lw         $a2, ($a0)
/* 1CF6C 8001C36C 3C010700 */  lui        $at, 0x700
/* 1CF70 8001C370 0012C900 */  sll        $t9, $s2, 4
/* 1CF74 8001C374 24CE0008 */  addiu      $t6, $a2, 8
/* 1CF78 8001C378 AC8E0000 */  sw         $t6, ($a0)
/* 1CF7C 8001C37C ACD80000 */  sw         $t8, ($a2)
/* 1CF80 8001C380 93AC0127 */  lbu        $t4, 0x127($sp)
/* 1CF84 8001C384 93B10123 */  lbu        $s1, 0x123($sp)
/* 1CF88 8001C388 000D7380 */  sll        $t6, $t5, 0xe
/* 1CF8C 8001C38C 318F0003 */  andi       $t7, $t4, 3
/* 1CF90 8001C390 000F6480 */  sll        $t4, $t7, 0x12
/* 1CF94 8001C394 01C06825 */  or         $t5, $t6, $zero
/* 1CF98 8001C398 32380003 */  andi       $t8, $s1, 3
/* 1CF9C 8001C39C 00188A00 */  sll        $s1, $t8, 8
/* 1CFA0 8001C3A0 01817025 */  or         $t6, $t4, $at
/* 1CFA4 8001C3A4 01CDC025 */  or         $t8, $t6, $t5
/* 1CFA8 8001C3A8 03117825 */  or         $t7, $t8, $s1
/* 1CFAC 8001C3AC 03209025 */  or         $s2, $t9, $zero
/* 1CFB0 8001C3B0 01F9C825 */  or         $t9, $t7, $t9
/* 1CFB4 8001C3B4 ACD90004 */  sw         $t9, 4($a2)
/* 1CFB8 8001C3B8 8C870000 */  lw         $a3, ($a0)
/* 1CFBC 8001C3BC 3C18E600 */  lui        $t8, 0xe600
/* 1CFC0 8001C3C0 02005025 */  or         $t2, $s0, $zero
/* 1CFC4 8001C3C4 24EE0008 */  addiu      $t6, $a3, 8
/* 1CFC8 8001C3C8 AC8E0000 */  sw         $t6, ($a0)
/* 1CFCC 8001C3CC ACE00004 */  sw         $zero, 4($a3)
/* 1CFD0 8001C3D0 ACF80000 */  sw         $t8, ($a3)
/* 1CFD4 8001C3D4 02130019 */  multu      $s0, $s3
/* 1CFD8 8001C3D8 8C820000 */  lw         $v0, ($a0)
/* 1CFDC 8001C3DC 3C19F300 */  lui        $t9, 0xf300
/* 1CFE0 8001C3E0 240B07FF */  addiu      $t3, $zero, 0x7ff
/* 1CFE4 8001C3E4 244F0008 */  addiu      $t7, $v0, 8
/* 1CFE8 8001C3E8 AC8F0000 */  sw         $t7, ($a0)
/* 1CFEC 8001C3EC AC590000 */  sw         $t9, ($v0)
/* 1CFF0 8001C3F0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 1CFF4 8001C3F4 00004812 */  mflo       $t1
/* 1CFF8 8001C3F8 25290001 */  addiu      $t1, $t1, 1
/* 1CFFC 8001C3FC 00097043 */  sra        $t6, $t1, 1
/* 1D000 8001C400 25C9FFFF */  addiu      $t1, $t6, -1
/* 1D004 8001C404 292107FF */  slti       $at, $t1, 0x7ff
/* 1D008 8001C408 10200003 */  beqz       $at, .L8001C418
/* 1D00C 8001C40C 00000000 */   nop       
/* 1D010 8001C410 10000001 */  b          .L8001C418
/* 1D014 8001C414 01205825 */   or        $t3, $t1, $zero
.L8001C418:
/* 1D018 8001C418 05410003 */  bgez       $t2, .L8001C428
/* 1D01C 8001C41C 000A10C3 */   sra       $v0, $t2, 3
/* 1D020 8001C420 25410007 */  addiu      $at, $t2, 7
/* 1D024 8001C424 000110C3 */  sra        $v0, $at, 3
.L8001C428:
/* 1D028 8001C428 1C400003 */  bgtz       $v0, .L8001C438
/* 1D02C 8001C42C 00404825 */   or        $t1, $v0, $zero
/* 1D030 8001C430 10000001 */  b          .L8001C438
/* 1D034 8001C434 24090001 */   addiu     $t1, $zero, 1
.L8001C438:
/* 1D038 8001C438 1C400003 */  bgtz       $v0, .L8001C448
/* 1D03C 8001C43C 253807FF */   addiu     $t8, $t1, 0x7ff
/* 1D040 8001C440 10000002 */  b          .L8001C44C
/* 1D044 8001C444 24030001 */   addiu     $v1, $zero, 1
.L8001C448:
/* 1D048 8001C448 00401825 */  or         $v1, $v0, $zero
.L8001C44C:
/* 1D04C 8001C44C 0303001A */  div        $zero, $t8, $v1
/* 1D050 8001C450 14600002 */  bnez       $v1, .L8001C45C
/* 1D054 8001C454 00000000 */   nop       
/* 1D058 8001C458 0007000D */  break      7
.L8001C45C:
/* 1D05C 8001C45C 2401FFFF */   addiu     $at, $zero, -1
/* 1D060 8001C460 14610004 */  bne        $v1, $at, .L8001C474
/* 1D064 8001C464 3C018000 */   lui       $at, 0x8000
/* 1D068 8001C468 17010002 */  bne        $t8, $at, .L8001C474
/* 1D06C 8001C46C 00000000 */   nop       
/* 1D070 8001C470 0006000D */  break      6
.L8001C474:
/* 1D074 8001C474 00007812 */   mflo      $t7
/* 1D078 8001C478 31F90FFF */  andi       $t9, $t7, 0xfff
/* 1D07C 8001C47C 31780FFF */  andi       $t8, $t3, 0xfff
/* 1D080 8001C480 00187B00 */  sll        $t7, $t8, 0xc
/* 1D084 8001C484 8FB8001C */  lw         $t8, 0x1c($sp)
/* 1D088 8001C488 3C010700 */  lui        $at, 0x700
/* 1D08C 8001C48C 03217025 */  or         $t6, $t9, $at
/* 1D090 8001C490 01CFC825 */  or         $t9, $t6, $t7
/* 1D094 8001C494 AF190004 */  sw         $t9, 4($t8)
/* 1D098 8001C498 8C820000 */  lw         $v0, ($a0)
/* 1D09C 8001C49C 3C0FE700 */  lui        $t7, 0xe700
/* 1D0A0 8001C4A0 25580007 */  addiu      $t8, $t2, 7
/* 1D0A4 8001C4A4 244E0008 */  addiu      $t6, $v0, 8
/* 1D0A8 8001C4A8 AC8E0000 */  sw         $t6, ($a0)
/* 1D0AC 8001C4AC AC400004 */  sw         $zero, 4($v0)
/* 1D0B0 8001C4B0 AC4F0000 */  sw         $t7, ($v0)
/* 1D0B4 8001C4B4 8C820000 */  lw         $v0, ($a0)
/* 1D0B8 8001C4B8 001870C3 */  sra        $t6, $t8, 3
/* 1D0BC 8001C4BC 31CF01FF */  andi       $t7, $t6, 0x1ff
/* 1D0C0 8001C4C0 24590008 */  addiu      $t9, $v0, 8
/* 1D0C4 8001C4C4 AC990000 */  sw         $t9, ($a0)
/* 1D0C8 8001C4C8 000FCA40 */  sll        $t9, $t7, 9
/* 1D0CC 8001C4CC 018D7025 */  or         $t6, $t4, $t5
/* 1D0D0 8001C4D0 3C01F548 */  lui        $at, 0xf548
/* 1D0D4 8001C4D4 0321C025 */  or         $t8, $t9, $at
/* 1D0D8 8001C4D8 01D17825 */  or         $t7, $t6, $s1
/* 1D0DC 8001C4DC 01F2C825 */  or         $t9, $t7, $s2
/* 1D0E0 8001C4E0 AC590004 */  sw         $t9, 4($v0)
/* 1D0E4 8001C4E4 AC580000 */  sw         $t8, ($v0)
/* 1D0E8 8001C4E8 8C820000 */  lw         $v0, ($a0)
/* 1D0EC 8001C4EC 260FFFFF */  addiu      $t7, $s0, -1
/* 1D0F0 8001C4F0 000FC880 */  sll        $t9, $t7, 2
/* 1D0F4 8001C4F4 24580008 */  addiu      $t8, $v0, 8
/* 1D0F8 8001C4F8 AC980000 */  sw         $t8, ($a0)
/* 1D0FC 8001C4FC 33380FFF */  andi       $t8, $t9, 0xfff
/* 1D100 8001C500 3C0EF200 */  lui        $t6, 0xf200
/* 1D104 8001C504 266FFFFF */  addiu      $t7, $s3, -1
/* 1D108 8001C508 AC4E0000 */  sw         $t6, ($v0)
/* 1D10C 8001C50C 00187300 */  sll        $t6, $t8, 0xc
/* 1D110 8001C510 000FC880 */  sll        $t9, $t7, 2
/* 1D114 8001C514 33380FFF */  andi       $t8, $t9, 0xfff
/* 1D118 8001C518 01D87825 */  or         $t7, $t6, $t8
/* 1D11C 8001C51C AC4F0004 */  sw         $t7, 4($v0)
/* 1D120 8001C520 8C820000 */  lw         $v0, ($a0)
/* 1D124 8001C524 3C0EBA00 */  lui        $t6, 0xba00
/* 1D128 8001C528 35CE0E02 */  ori        $t6, $t6, 0xe02
/* 1D12C 8001C52C 24590008 */  addiu      $t9, $v0, 8
/* 1D130 8001C530 AC990000 */  sw         $t9, ($a0)
/* 1D134 8001C534 34188000 */  ori        $t8, $zero, 0x8000
/* 1D138 8001C538 AC580004 */  sw         $t8, 4($v0)
/* 1D13C 8001C53C AC4E0000 */  sw         $t6, ($v0)
.L8001C540:
/* 1D140 8001C540 8FB00008 */  lw         $s0, 8($sp)
.L8001C544:
/* 1D144 8001C544 8FB1000C */  lw         $s1, 0xc($sp)
/* 1D148 8001C548 8FB20010 */  lw         $s2, 0x10($sp)
/* 1D14C 8001C54C 8FB30014 */  lw         $s3, 0x14($sp)
/* 1D150 8001C550 03E00008 */  jr         $ra
/* 1D154 8001C554 27BD0110 */   addiu     $sp, $sp, 0x110
/* 1D158 8001C558 00000000 */  nop        
/* 1D15C 8001C55C 00000000 */  nop        
