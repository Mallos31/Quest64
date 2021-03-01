.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osDequeueThread
/* 3E110 8003D510 00803025 */  or         $a2, $a0, $zero
/* 3E114 8003D514 8CC70000 */  lw         $a3, ($a2)
/* 3E118 8003D518 27BDFFF8 */  addiu      $sp, $sp, -8
/* 3E11C 8003D51C 10E0000A */  beqz       $a3, .L8003D548
/* 3E120 8003D520 00000000 */   nop
.L8003D524:
/* 3E124 8003D524 14E50004 */  bne        $a3, $a1, .L8003D538
/* 3E128 8003D528 00000000 */   nop
/* 3E12C 8003D52C 8CAE0000 */  lw         $t6, ($a1)
/* 3E130 8003D530 10000005 */  b          .L8003D548
/* 3E134 8003D534 ACCE0000 */   sw        $t6, ($a2)
.L8003D538:
/* 3E138 8003D538 00E03025 */  or         $a2, $a3, $zero
/* 3E13C 8003D53C 8CC70000 */  lw         $a3, ($a2)
/* 3E140 8003D540 14E0FFF8 */  bnez       $a3, .L8003D524
/* 3E144 8003D544 00000000 */   nop
.L8003D548:
/* 3E148 8003D548 03E00008 */  jr         $ra
/* 3E14C 8003D54C 27BD0008 */   addiu     $sp, $sp, 8

glabel osCartRomInit
/* 3E150 8003D550 3C0E8009 */  lui        $t6, %hi(CartRomHandle_baseAddress)
/* 3E154 8003D554 8DCE54EC */  lw         $t6, %lo(CartRomHandle_baseAddress)($t6)
/* 3E158 8003D558 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E15C 8003D55C 3C01B000 */  lui        $at, 0xb000
/* 3E160 8003D560 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E164 8003D564 15C10004 */  bne        $t6, $at, .L8003D578
/* 3E168 8003D568 AFA0001C */   sw        $zero, 0x1c($sp)
/* 3E16C 8003D56C 3C028009 */  lui        $v0, %hi(CartRomHandle)
/* 3E170 8003D570 10000030 */  b          .L8003D634
/* 3E174 8003D574 244254E0 */   addiu     $v0, $v0, %lo(CartRomHandle)
.L8003D578:
/* 3E178 8003D578 3C018009 */  lui        $at, %hi(CartRomHandle4)
/* 3E17C 8003D57C A02054E4 */  sb         $zero, %lo(CartRomHandle4)($at)
/* 3E180 8003D580 3C018009 */  lui        $at, %hi(CartRomHandle_baseAddress)
/* 3E184 8003D584 3C0FB000 */  lui        $t7, 0xb000
/* 3E188 8003D588 AC2F54EC */  sw         $t7, %lo(CartRomHandle_baseAddress)($at)
/* 3E18C 8003D58C 00002025 */  or         $a0, $zero, $zero
/* 3E190 8003D590 0C00F4F4 */  jal        osPiRawReadIo
/* 3E194 8003D594 27A5001C */   addiu     $a1, $sp, 0x1c
/* 3E198 8003D598 8FB8001C */  lw         $t8, 0x1c($sp)
/* 3E19C 8003D59C 3C018009 */  lui        $at, %hi(CartRomHandle_latency)
/* 3E1A0 8003D5A0 3C048009 */  lui        $a0, 0x8009
/* 3E1A4 8003D5A4 331900FF */  andi       $t9, $t8, 0xff
/* 3E1A8 8003D5A8 A03954E5 */  sb         $t9, %lo(CartRomHandle_latency)($at)
/* 3E1AC 8003D5AC 00184202 */  srl        $t0, $t8, 8
/* 3E1B0 8003D5B0 310900FF */  andi       $t1, $t0, 0xff
/* 3E1B4 8003D5B4 3C018009 */  lui        $at, %hi(CartRomHandle_pulse)
/* 3E1B8 8003D5B8 A02954E8 */  sb         $t1, %lo(CartRomHandle_pulse)($at)
/* 3E1BC 8003D5BC 3C018009 */  lui        $at, %hi(CartRomHandle_pageSize)
/* 3E1C0 8003D5C0 00185402 */  srl        $t2, $t8, 0x10
/* 3E1C4 8003D5C4 00186502 */  srl        $t4, $t8, 0x14
/* 3E1C8 8003D5C8 314B000F */  andi       $t3, $t2, 0xf
/* 3E1CC 8003D5CC 318D000F */  andi       $t5, $t4, 0xf
/* 3E1D0 8003D5D0 A02B54E6 */  sb         $t3, %lo(CartRomHandle_pageSize)($at)
/* 3E1D4 8003D5D4 A02D54E7 */  sb         $t5, 0x54e7($at)
/* 3E1D8 8003D5D8 3C018009 */  lui        $at, %hi(CartRomHandle_domain)
/* 3E1DC 8003D5DC A02054E9 */  sb         $zero, %lo(CartRomHandle_domain)($at)
/* 3E1E0 8003D5E0 3C018009 */  lui        $at, %hi(CartRomHandle_speed)
/* 3E1E4 8003D5E4 248454E0 */  addiu      $a0, $a0, 0x54e0
/* 3E1E8 8003D5E8 AC2054F0 */  sw         $zero, %lo(CartRomHandle_speed)($at)
/* 3E1EC 8003D5EC 24840014 */  addiu      $a0, $a0, 0x14
/* 3E1F0 8003D5F0 0C00F50C */  jal        bzero
/* 3E1F4 8003D5F4 24050060 */   addiu     $a1, $zero, 0x60
/* 3E1F8 8003D5F8 0C00F534 */  jal        __osDisableInt
/* 3E1FC 8003D5FC 00000000 */   nop
/* 3E200 8003D600 3C0E8007 */  lui        $t6, %hi(__osPiTable)
/* 3E204 8003D604 8DCEF43C */  lw         $t6, %lo(__osPiTable)($t6)
/* 3E208 8003D608 3C018009 */  lui        $at, %hi(CartRomHandle)
/* 3E20C 8003D60C 3C0F8009 */  lui        $t7, %hi(CartRomHandle)
/* 3E210 8003D610 AC2E54E0 */  sw         $t6, %lo(CartRomHandle)($at)
/* 3E214 8003D614 AFA20018 */  sw         $v0, 0x18($sp)
/* 3E218 8003D618 3C018007 */  lui        $at, %hi(__osPiTable)
/* 3E21C 8003D61C 25EF54E0 */  addiu      $t7, $t7, %lo(CartRomHandle)
/* 3E220 8003D620 AC2FF43C */  sw         $t7, %lo(__osPiTable)($at)
/* 3E224 8003D624 0C00F53C */  jal        __osRestoreInt
/* 3E228 8003D628 8FA40018 */   lw        $a0, 0x18($sp)
/* 3E22C 8003D62C 3C028009 */  lui        $v0, %hi(CartRomHandle)
/* 3E230 8003D630 244254E0 */  addiu      $v0, $v0, %lo(CartRomHandle)
.L8003D634:
/* 3E234 8003D634 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E238 8003D638 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3E23C 8003D63C 03E00008 */  jr         $ra
/* 3E240 8003D640 00000000 */   nop
/* 3E244 8003D644 00000000 */  nop
/* 3E248 8003D648 00000000 */  nop
/* 3E24C 8003D64C 00000000 */  nop
