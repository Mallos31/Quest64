glabel func_8003E1F0
/* 3EDF0 8003E1F0 3C0EA404 */  lui        $t6, 0xa404
/* 3EDF4 8003E1F4 03E00008 */  jr         $ra
/* 3EDF8 8003E1F8 ADC40010 */   sw        $a0, 0x10($t6)
/* 3EDFC 8003E1FC 00000000 */  nop        

glabel func_8003E200
/* 3EE00 8003E200 3C0EA404 */  lui        $t6, 0xa404
/* 3EE04 8003E204 03E00008 */  jr         $ra
/* 3EE08 8003E208 8DC20010 */   lw        $v0, 0x10($t6)
/* 3EE0C 8003E20C 00000000 */  nop        

glabel func_8003E210
/* 3EE10 8003E210 10C0001A */  beqz       $a2, .L8003E27C
/* 3EE14 8003E214 00A03825 */   or        $a3, $a1, $zero
/* 3EE18 8003E218 10850018 */  beq        $a0, $a1, .L8003E27C
/* 3EE1C 8003E21C 00A4082A */   slt       $at, $a1, $a0
/* 3EE20 8003E220 54200008 */  bnel       $at, $zero, .L8003E244
/* 3EE24 8003E224 28C10010 */   slti      $at, $a2, 0x10
/* 3EE28 8003E228 00861020 */  add        $v0, $a0, $a2
/* 3EE2C 8003E22C 00A2082A */  slt        $at, $a1, $v0
/* 3EE30 8003E230 50200004 */  beql       $at, $zero, .L8003E244
/* 3EE34 8003E234 28C10010 */   slti      $at, $a2, 0x10
/* 3EE38 8003E238 1000005B */  b          .L8003E3A8
/* 3EE3C 8003E23C 28C10010 */   slti      $at, $a2, 0x10
/* 3EE40 8003E240 28C10010 */  slti       $at, $a2, 0x10
.L8003E244:
/* 3EE44 8003E244 14200005 */  bnez       $at, .L8003E25C
/* 3EE48 8003E248 00000000 */   nop       
/* 3EE4C 8003E24C 30820003 */  andi       $v0, $a0, 3
/* 3EE50 8003E250 30A30003 */  andi       $v1, $a1, 3
/* 3EE54 8003E254 1043000B */  beq        $v0, $v1, .L8003E284
/* 3EE58 8003E258 00000000 */   nop       
.L8003E25C:
/* 3EE5C 8003E25C 10C00007 */  beqz       $a2, .L8003E27C
/* 3EE60 8003E260 00000000 */   nop       
/* 3EE64 8003E264 00861821 */  addu       $v1, $a0, $a2
.L8003E268:
/* 3EE68 8003E268 80820000 */  lb         $v0, ($a0)
/* 3EE6C 8003E26C 24840001 */  addiu      $a0, $a0, 1
/* 3EE70 8003E270 24A50001 */  addiu      $a1, $a1, 1
/* 3EE74 8003E274 1483FFFC */  bne        $a0, $v1, .L8003E268
/* 3EE78 8003E278 A0A2FFFF */   sb        $v0, -1($a1)
.L8003E27C:
/* 3EE7C 8003E27C 03E00008 */  jr         $ra
/* 3EE80 8003E280 00E01025 */   or        $v0, $a3, $zero
.L8003E284:
/* 3EE84 8003E284 10400018 */  beqz       $v0, .L8003E2E8
/* 3EE88 8003E288 24010001 */   addiu     $at, $zero, 1
/* 3EE8C 8003E28C 1041000F */  beq        $v0, $at, .L8003E2CC
/* 3EE90 8003E290 24010002 */   addiu     $at, $zero, 2
/* 3EE94 8003E294 50410008 */  beql       $v0, $at, .L8003E2B8
/* 3EE98 8003E298 84820000 */   lh        $v0, ($a0)
/* 3EE9C 8003E29C 80820000 */  lb         $v0, ($a0)
/* 3EEA0 8003E2A0 24840001 */  addiu      $a0, $a0, 1
/* 3EEA4 8003E2A4 24A50001 */  addiu      $a1, $a1, 1
/* 3EEA8 8003E2A8 24C6FFFF */  addiu      $a2, $a2, -1
/* 3EEAC 8003E2AC 1000000E */  b          .L8003E2E8
/* 3EEB0 8003E2B0 A0A2FFFF */   sb        $v0, -1($a1)
/* 3EEB4 8003E2B4 84820000 */  lh         $v0, ($a0)
.L8003E2B8:
/* 3EEB8 8003E2B8 24840002 */  addiu      $a0, $a0, 2
/* 3EEBC 8003E2BC 24A50002 */  addiu      $a1, $a1, 2
/* 3EEC0 8003E2C0 24C6FFFE */  addiu      $a2, $a2, -2
/* 3EEC4 8003E2C4 10000008 */  b          .L8003E2E8
/* 3EEC8 8003E2C8 A4A2FFFE */   sh        $v0, -2($a1)
.L8003E2CC:
/* 3EECC 8003E2CC 80820000 */  lb         $v0, ($a0)
/* 3EED0 8003E2D0 84830001 */  lh         $v1, 1($a0)
/* 3EED4 8003E2D4 24840003 */  addiu      $a0, $a0, 3
/* 3EED8 8003E2D8 24A50003 */  addiu      $a1, $a1, 3
/* 3EEDC 8003E2DC 24C6FFFD */  addiu      $a2, $a2, -3
/* 3EEE0 8003E2E0 A0A2FFFD */  sb         $v0, -3($a1)
/* 3EEE4 8003E2E4 A4A3FFFE */  sh         $v1, -2($a1)
.L8003E2E8:
/* 3EEE8 8003E2E8 28C10020 */  slti       $at, $a2, 0x20
/* 3EEEC 8003E2EC 54200016 */  bnel       $at, $zero, .L8003E348
/* 3EEF0 8003E2F0 28C10010 */   slti      $at, $a2, 0x10
/* 3EEF4 8003E2F4 8C820000 */  lw         $v0, ($a0)
/* 3EEF8 8003E2F8 8C830004 */  lw         $v1, 4($a0)
/* 3EEFC 8003E2FC 8C880008 */  lw         $t0, 8($a0)
/* 3EF00 8003E300 8C89000C */  lw         $t1, 0xc($a0)
/* 3EF04 8003E304 8C8A0010 */  lw         $t2, 0x10($a0)
/* 3EF08 8003E308 8C8B0014 */  lw         $t3, 0x14($a0)
/* 3EF0C 8003E30C 8C8C0018 */  lw         $t4, 0x18($a0)
/* 3EF10 8003E310 8C8D001C */  lw         $t5, 0x1c($a0)
/* 3EF14 8003E314 24840020 */  addiu      $a0, $a0, 0x20
/* 3EF18 8003E318 24A50020 */  addiu      $a1, $a1, 0x20
/* 3EF1C 8003E31C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 3EF20 8003E320 ACA2FFE0 */  sw         $v0, -0x20($a1)
/* 3EF24 8003E324 ACA3FFE4 */  sw         $v1, -0x1c($a1)
/* 3EF28 8003E328 ACA8FFE8 */  sw         $t0, -0x18($a1)
/* 3EF2C 8003E32C ACA9FFEC */  sw         $t1, -0x14($a1)
/* 3EF30 8003E330 ACAAFFF0 */  sw         $t2, -0x10($a1)
/* 3EF34 8003E334 ACABFFF4 */  sw         $t3, -0xc($a1)
/* 3EF38 8003E338 ACACFFF8 */  sw         $t4, -8($a1)
/* 3EF3C 8003E33C 1000FFEA */  b          .L8003E2E8
/* 3EF40 8003E340 ACADFFFC */   sw        $t5, -4($a1)
.L8003E344:
/* 3EF44 8003E344 28C10010 */  slti       $at, $a2, 0x10
.L8003E348:
/* 3EF48 8003E348 5420000E */  bnel       $at, $zero, .L8003E384
/* 3EF4C 8003E34C 28C10004 */   slti      $at, $a2, 4
/* 3EF50 8003E350 8C820000 */  lw         $v0, ($a0)
/* 3EF54 8003E354 8C830004 */  lw         $v1, 4($a0)
/* 3EF58 8003E358 8C880008 */  lw         $t0, 8($a0)
/* 3EF5C 8003E35C 8C89000C */  lw         $t1, 0xc($a0)
/* 3EF60 8003E360 24840010 */  addiu      $a0, $a0, 0x10
/* 3EF64 8003E364 24A50010 */  addiu      $a1, $a1, 0x10
/* 3EF68 8003E368 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 3EF6C 8003E36C ACA2FFF0 */  sw         $v0, -0x10($a1)
/* 3EF70 8003E370 ACA3FFF4 */  sw         $v1, -0xc($a1)
/* 3EF74 8003E374 ACA8FFF8 */  sw         $t0, -8($a1)
/* 3EF78 8003E378 1000FFF2 */  b          .L8003E344
/* 3EF7C 8003E37C ACA9FFFC */   sw        $t1, -4($a1)
.L8003E380:
/* 3EF80 8003E380 28C10004 */  slti       $at, $a2, 4
.L8003E384:
/* 3EF84 8003E384 1420FFB5 */  bnez       $at, .L8003E25C
/* 3EF88 8003E388 00000000 */   nop       
/* 3EF8C 8003E38C 8C820000 */  lw         $v0, ($a0)
/* 3EF90 8003E390 24840004 */  addiu      $a0, $a0, 4
/* 3EF94 8003E394 24A50004 */  addiu      $a1, $a1, 4
/* 3EF98 8003E398 24C6FFFC */  addiu      $a2, $a2, -4
/* 3EF9C 8003E39C 1000FFF8 */  b          .L8003E380
/* 3EFA0 8003E3A0 ACA2FFFC */   sw        $v0, -4($a1)
/* 3EFA4 8003E3A4 28C10010 */  slti       $at, $a2, 0x10
.L8003E3A8:
/* 3EFA8 8003E3A8 00862020 */  add        $a0, $a0, $a2
/* 3EFAC 8003E3AC 14200005 */  bnez       $at, .L8003E3C4
/* 3EFB0 8003E3B0 00A62820 */   add       $a1, $a1, $a2
/* 3EFB4 8003E3B4 30820003 */  andi       $v0, $a0, 3
/* 3EFB8 8003E3B8 30A30003 */  andi       $v1, $a1, 3
/* 3EFBC 8003E3BC 1043000D */  beq        $v0, $v1, .L8003E3F4
/* 3EFC0 8003E3C0 00000000 */   nop       
.L8003E3C4:
/* 3EFC4 8003E3C4 10C0FFAD */  beqz       $a2, .L8003E27C
/* 3EFC8 8003E3C8 00000000 */   nop       
/* 3EFCC 8003E3CC 2484FFFF */  addiu      $a0, $a0, -1
/* 3EFD0 8003E3D0 24A5FFFF */  addiu      $a1, $a1, -1
/* 3EFD4 8003E3D4 00861823 */  subu       $v1, $a0, $a2
.L8003E3D8:
/* 3EFD8 8003E3D8 80820000 */  lb         $v0, ($a0)
/* 3EFDC 8003E3DC 2484FFFF */  addiu      $a0, $a0, -1
/* 3EFE0 8003E3E0 24A5FFFF */  addiu      $a1, $a1, -1
/* 3EFE4 8003E3E4 1483FFFC */  bne        $a0, $v1, .L8003E3D8
/* 3EFE8 8003E3E8 A0A20001 */   sb        $v0, 1($a1)
/* 3EFEC 8003E3EC 03E00008 */  jr         $ra
/* 3EFF0 8003E3F0 00E01025 */   or        $v0, $a3, $zero
.L8003E3F4:
/* 3EFF4 8003E3F4 10400018 */  beqz       $v0, .L8003E458
/* 3EFF8 8003E3F8 24010003 */   addiu     $at, $zero, 3
/* 3EFFC 8003E3FC 1041000F */  beq        $v0, $at, .L8003E43C
/* 3F000 8003E400 24010002 */   addiu     $at, $zero, 2
/* 3F004 8003E404 50410008 */  beql       $v0, $at, .L8003E428
/* 3F008 8003E408 8482FFFE */   lh        $v0, -2($a0)
/* 3F00C 8003E40C 8082FFFF */  lb         $v0, -1($a0)
/* 3F010 8003E410 2484FFFF */  addiu      $a0, $a0, -1
/* 3F014 8003E414 24A5FFFF */  addiu      $a1, $a1, -1
/* 3F018 8003E418 24C6FFFF */  addiu      $a2, $a2, -1
/* 3F01C 8003E41C 1000000E */  b          .L8003E458
/* 3F020 8003E420 A0A20000 */   sb        $v0, ($a1)
/* 3F024 8003E424 8482FFFE */  lh         $v0, -2($a0)
.L8003E428:
/* 3F028 8003E428 2484FFFE */  addiu      $a0, $a0, -2
/* 3F02C 8003E42C 24A5FFFE */  addiu      $a1, $a1, -2
/* 3F030 8003E430 24C6FFFE */  addiu      $a2, $a2, -2
/* 3F034 8003E434 10000008 */  b          .L8003E458
/* 3F038 8003E438 A4A20000 */   sh        $v0, ($a1)
.L8003E43C:
/* 3F03C 8003E43C 8082FFFF */  lb         $v0, -1($a0)
/* 3F040 8003E440 8483FFFD */  lh         $v1, -3($a0)
/* 3F044 8003E444 2484FFFD */  addiu      $a0, $a0, -3
/* 3F048 8003E448 24A5FFFD */  addiu      $a1, $a1, -3
/* 3F04C 8003E44C 24C6FFFD */  addiu      $a2, $a2, -3
/* 3F050 8003E450 A0A20002 */  sb         $v0, 2($a1)
/* 3F054 8003E454 A4A30000 */  sh         $v1, ($a1)
.L8003E458:
/* 3F058 8003E458 28C10020 */  slti       $at, $a2, 0x20
/* 3F05C 8003E45C 54200016 */  bnel       $at, $zero, .L8003E4B8
/* 3F060 8003E460 28C10010 */   slti      $at, $a2, 0x10
/* 3F064 8003E464 8C82FFFC */  lw         $v0, -4($a0)
/* 3F068 8003E468 8C83FFF8 */  lw         $v1, -8($a0)
/* 3F06C 8003E46C 8C88FFF4 */  lw         $t0, -0xc($a0)
/* 3F070 8003E470 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 3F074 8003E474 8C8AFFEC */  lw         $t2, -0x14($a0)
/* 3F078 8003E478 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* 3F07C 8003E47C 8C8CFFE4 */  lw         $t4, -0x1c($a0)
/* 3F080 8003E480 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* 3F084 8003E484 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 3F088 8003E488 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 3F08C 8003E48C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 3F090 8003E490 ACA2001C */  sw         $v0, 0x1c($a1)
/* 3F094 8003E494 ACA30018 */  sw         $v1, 0x18($a1)
/* 3F098 8003E498 ACA80014 */  sw         $t0, 0x14($a1)
/* 3F09C 8003E49C ACA90010 */  sw         $t1, 0x10($a1)
/* 3F0A0 8003E4A0 ACAA000C */  sw         $t2, 0xc($a1)
/* 3F0A4 8003E4A4 ACAB0008 */  sw         $t3, 8($a1)
/* 3F0A8 8003E4A8 ACAC0004 */  sw         $t4, 4($a1)
/* 3F0AC 8003E4AC 1000FFEA */  b          .L8003E458
/* 3F0B0 8003E4B0 ACAD0000 */   sw        $t5, ($a1)
.L8003E4B4:
/* 3F0B4 8003E4B4 28C10010 */  slti       $at, $a2, 0x10
.L8003E4B8:
/* 3F0B8 8003E4B8 5420000E */  bnel       $at, $zero, .L8003E4F4
/* 3F0BC 8003E4BC 28C10004 */   slti      $at, $a2, 4
/* 3F0C0 8003E4C0 8C82FFFC */  lw         $v0, -4($a0)
/* 3F0C4 8003E4C4 8C83FFF8 */  lw         $v1, -8($a0)
/* 3F0C8 8003E4C8 8C88FFF4 */  lw         $t0, -0xc($a0)
/* 3F0CC 8003E4CC 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 3F0D0 8003E4D0 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 3F0D4 8003E4D4 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* 3F0D8 8003E4D8 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 3F0DC 8003E4DC ACA2000C */  sw         $v0, 0xc($a1)
/* 3F0E0 8003E4E0 ACA30008 */  sw         $v1, 8($a1)
/* 3F0E4 8003E4E4 ACA80004 */  sw         $t0, 4($a1)
/* 3F0E8 8003E4E8 1000FFF2 */  b          .L8003E4B4
/* 3F0EC 8003E4EC ACA90000 */   sw        $t1, ($a1)
.L8003E4F0:
/* 3F0F0 8003E4F0 28C10004 */  slti       $at, $a2, 4
.L8003E4F4:
/* 3F0F4 8003E4F4 1420FFB3 */  bnez       $at, .L8003E3C4
/* 3F0F8 8003E4F8 00000000 */   nop       
/* 3F0FC 8003E4FC 8C82FFFC */  lw         $v0, -4($a0)
/* 3F100 8003E500 2484FFFC */  addiu      $a0, $a0, -4
/* 3F104 8003E504 24A5FFFC */  addiu      $a1, $a1, -4
/* 3F108 8003E508 24C6FFFC */  addiu      $a2, $a2, -4
/* 3F10C 8003E50C 1000FFF8 */  b          .L8003E4F0
/* 3F110 8003E510 ACA20000 */   sw        $v0, ($a1)
/* 3F114 8003E514 00000000 */  nop        
/* 3F118 8003E518 00000000 */  nop        
/* 3F11C 8003E51C 00000000 */  nop        
/* 3F120 8003E520 3C0EA404 */  lui        $t6, 0xa404
/* 3F124 8003E524 8DC50010 */  lw         $a1, 0x10($t6)
/* 3F128 8003E528 27BDFFF8 */  addiu      $sp, $sp, -8
/* 3F12C 8003E52C 30AF0001 */  andi       $t7, $a1, 1
/* 3F130 8003E530 15E00003 */  bnez       $t7, .L8003E540
/* 3F134 8003E534 00000000 */   nop       
/* 3F138 8003E538 10000004 */  b          .L8003E54C
/* 3F13C 8003E53C 2402FFFF */   addiu     $v0, $zero, -1
.L8003E540:
/* 3F140 8003E540 3C18A408 */  lui        $t8, 0xa408
/* 3F144 8003E544 AF040000 */  sw         $a0, ($t8)
/* 3F148 8003E548 00001025 */  or         $v0, $zero, $zero
.L8003E54C:
/* 3F14C 8003E54C 03E00008 */  jr         $ra
/* 3F150 8003E550 27BD0008 */   addiu     $sp, $sp, 8
/* 3F154 8003E554 00000000 */  nop        
/* 3F158 8003E558 00000000 */  nop        
/* 3F15C 8003E55C 00000000 */  nop        
