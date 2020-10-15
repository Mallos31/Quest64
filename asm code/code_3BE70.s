glabel func_8003B270
/* 3BE70 8003B270 27BDFD88 */  addiu      $sp, $sp, -0x278
/* 3BE74 8003B274 AFA5027C */  sw         $a1, 0x27c($sp)
/* 3BE78 8003B278 97AE027E */  lhu        $t6, 0x27e($sp)
/* 3BE7C 8003B27C AFBF0024 */  sw         $ra, 0x24($sp)
/* 3BE80 8003B280 AFA40278 */  sw         $a0, 0x278($sp)
/* 3BE84 8003B284 AFA60280 */  sw         $a2, 0x280($sp)
/* 3BE88 8003B288 AFA70284 */  sw         $a3, 0x284($sp)
/* 3BE8C 8003B28C AFA00268 */  sw         $zero, 0x268($sp)
/* 3BE90 8003B290 AFA00260 */  sw         $zero, 0x260($sp)
/* 3BE94 8003B294 A3A0003A */  sb         $zero, 0x3a($sp)
/* 3BE98 8003B298 11C00004 */  beqz       $t6, .L8003B2AC
/* 3BE9C 8003B29C AFA00034 */   sw        $zero, 0x34($sp)
/* 3BEA0 8003B2A0 8FAF0280 */  lw         $t7, 0x280($sp)
/* 3BEA4 8003B2A4 15E00003 */  bnez       $t7, .L8003B2B4
/* 3BEA8 8003B2A8 00000000 */   nop       
.L8003B2AC:
/* 3BEAC 8003B2AC 1000010D */  b          .L8003B6E4
/* 3BEB0 8003B2B0 24020005 */   addiu     $v0, $zero, 5
.L8003B2B4:
/* 3BEB4 8003B2B4 8FB8028C */  lw         $t8, 0x28c($sp)
/* 3BEB8 8003B2B8 8FA90278 */  lw         $t1, 0x278($sp)
/* 3BEBC 8003B2BC 271900FF */  addiu      $t9, $t8, 0xff
/* 3BEC0 8003B2C0 07210003 */  bgez       $t9, .L8003B2D0
/* 3BEC4 8003B2C4 00194203 */   sra       $t0, $t9, 8
/* 3BEC8 8003B2C8 272100FF */  addiu      $at, $t9, 0xff
/* 3BECC 8003B2CC 00014203 */  sra        $t0, $at, 8
.L8003B2D0:
/* 3BED0 8003B2D0 AFA8025C */  sw         $t0, 0x25c($sp)
/* 3BED4 8003B2D4 8D2A0000 */  lw         $t2, ($t1)
/* 3BED8 8003B2D8 314B0001 */  andi       $t3, $t2, 1
/* 3BEDC 8003B2DC 15600003 */  bnez       $t3, .L8003B2EC
/* 3BEE0 8003B2E0 00000000 */   nop       
/* 3BEE4 8003B2E4 100000FF */  b          .L8003B6E4
/* 3BEE8 8003B2E8 24020005 */   addiu     $v0, $zero, 5
.L8003B2EC:
/* 3BEEC 8003B2EC 0C0114F0 */  jal        func_800453C0
/* 3BEF0 8003B2F0 8FA40278 */   lw        $a0, 0x278($sp)
/* 3BEF4 8003B2F4 24010002 */  addiu      $at, $zero, 2
/* 3BEF8 8003B2F8 14410003 */  bne        $v0, $at, .L8003B308
/* 3BEFC 8003B2FC 00000000 */   nop       
/* 3BF00 8003B300 100000F8 */  b          .L8003B6E4
/* 3BF04 8003B304 24020002 */   addiu     $v0, $zero, 2
.L8003B308:
/* 3BF08 8003B308 8FAC0288 */  lw         $t4, 0x288($sp)
/* 3BF0C 8003B30C 8FAD0290 */  lw         $t5, 0x290($sp)
/* 3BF10 8003B310 8FA40278 */  lw         $a0, 0x278($sp)
/* 3BF14 8003B314 97A5027E */  lhu        $a1, 0x27e($sp)
/* 3BF18 8003B318 8FA60280 */  lw         $a2, 0x280($sp)
/* 3BF1C 8003B31C 8FA70284 */  lw         $a3, 0x284($sp)
/* 3BF20 8003B320 AFAC0010 */  sw         $t4, 0x10($sp)
/* 3BF24 8003B324 0C011BF0 */  jal        func_80046FC0
/* 3BF28 8003B328 AFAD0014 */   sw        $t5, 0x14($sp)
/* 3BF2C 8003B32C AFA20260 */  sw         $v0, 0x260($sp)
/* 3BF30 8003B330 8FAE0260 */  lw         $t6, 0x260($sp)
/* 3BF34 8003B334 11C00005 */  beqz       $t6, .L8003B34C
/* 3BF38 8003B338 24010005 */   addiu     $at, $zero, 5
/* 3BF3C 8003B33C 11C10003 */  beq        $t6, $at, .L8003B34C
/* 3BF40 8003B340 00000000 */   nop       
/* 3BF44 8003B344 100000E7 */  b          .L8003B6E4
/* 3BF48 8003B348 01C01025 */   or        $v0, $t6, $zero
.L8003B34C:
/* 3BF4C 8003B34C 8FAF0290 */  lw         $t7, 0x290($sp)
/* 3BF50 8003B350 2401FFFF */  addiu      $at, $zero, -1
/* 3BF54 8003B354 8DF80000 */  lw         $t8, ($t7)
/* 3BF58 8003B358 13010003 */  beq        $t8, $at, .L8003B368
/* 3BF5C 8003B35C 00000000 */   nop       
/* 3BF60 8003B360 100000E0 */  b          .L8003B6E4
/* 3BF64 8003B364 24020009 */   addiu     $v0, $zero, 9
.L8003B368:
/* 3BF68 8003B368 8FA40278 */  lw         $a0, 0x278($sp)
/* 3BF6C 8003B36C 0C00EC48 */  jal        func_8003B120
/* 3BF70 8003B370 27A50030 */   addiu     $a1, $sp, 0x30
/* 3BF74 8003B374 8FB9028C */  lw         $t9, 0x28c($sp)
/* 3BF78 8003B378 8FA80030 */  lw         $t0, 0x30($sp)
/* 3BF7C 8003B37C AFA20260 */  sw         $v0, 0x260($sp)
/* 3BF80 8003B380 0119082A */  slt        $at, $t0, $t9
/* 3BF84 8003B384 10200003 */  beqz       $at, .L8003B394
/* 3BF88 8003B388 00000000 */   nop       
/* 3BF8C 8003B38C 100000D5 */  b          .L8003B6E4
/* 3BF90 8003B390 24020007 */   addiu     $v0, $zero, 7
.L8003B394:
/* 3BF94 8003B394 8FA9025C */  lw         $t1, 0x25c($sp)
/* 3BF98 8003B398 112000D1 */  beqz       $t1, .L8003B6E0
/* 3BF9C 8003B39C 00000000 */   nop       
/* 3BFA0 8003B3A0 8FAA0290 */  lw         $t2, 0x290($sp)
/* 3BFA4 8003B3A4 8FA40278 */  lw         $a0, 0x278($sp)
/* 3BFA8 8003B3A8 00002825 */  or         $a1, $zero, $zero
/* 3BFAC 8003B3AC 00003025 */  or         $a2, $zero, $zero
/* 3BFB0 8003B3B0 00003825 */  or         $a3, $zero, $zero
/* 3BFB4 8003B3B4 AFA00010 */  sw         $zero, 0x10($sp)
/* 3BFB8 8003B3B8 0C011BF0 */  jal        func_80046FC0
/* 3BFBC 8003B3BC AFAA0014 */   sw        $t2, 0x14($sp)
/* 3BFC0 8003B3C0 AFA20260 */  sw         $v0, 0x260($sp)
/* 3BFC4 8003B3C4 8FAB0260 */  lw         $t3, 0x260($sp)
/* 3BFC8 8003B3C8 11600005 */  beqz       $t3, .L8003B3E0
/* 3BFCC 8003B3CC 24010005 */   addiu     $at, $zero, 5
/* 3BFD0 8003B3D0 11610003 */  beq        $t3, $at, .L8003B3E0
/* 3BFD4 8003B3D4 00000000 */   nop       
/* 3BFD8 8003B3D8 100000C2 */  b          .L8003B6E4
/* 3BFDC 8003B3DC 01601025 */   or        $v0, $t3, $zero
.L8003B3E0:
/* 3BFE0 8003B3E0 8FAC0290 */  lw         $t4, 0x290($sp)
/* 3BFE4 8003B3E4 2401FFFF */  addiu      $at, $zero, -1
/* 3BFE8 8003B3E8 8D8D0000 */  lw         $t5, ($t4)
/* 3BFEC 8003B3EC 15A10003 */  bne        $t5, $at, .L8003B3FC
/* 3BFF0 8003B3F0 00000000 */   nop       
/* 3BFF4 8003B3F4 100000BB */  b          .L8003B6E4
/* 3BFF8 8003B3F8 24020008 */   addiu     $v0, $zero, 8
.L8003B3FC:
/* 3BFFC 8003B3FC 8FAE0278 */  lw         $t6, 0x278($sp)
/* 3C000 8003B400 A3A0003B */  sb         $zero, 0x3b($sp)
/* 3C004 8003B404 91CF0064 */  lbu        $t7, 0x64($t6)
/* 3C008 8003B408 19E00062 */  blez       $t7, .L8003B594
/* 3C00C 8003B40C 00000000 */   nop       
.L8003B410:
/* 3C010 8003B410 8FA40278 */  lw         $a0, 0x278($sp)
/* 3C014 8003B414 27A5015C */  addiu      $a1, $sp, 0x15c
/* 3C018 8003B418 00003025 */  or         $a2, $zero, $zero
/* 3C01C 8003B41C 0C01152F */  jal        func_800454BC
/* 3C020 8003B420 93A7003B */   lbu       $a3, 0x3b($sp)
/* 3C024 8003B424 AFA20260 */  sw         $v0, 0x260($sp)
/* 3C028 8003B428 8FB80260 */  lw         $t8, 0x260($sp)
/* 3C02C 8003B42C 13000003 */  beqz       $t8, .L8003B43C
/* 3C030 8003B430 00000000 */   nop       
/* 3C034 8003B434 100000AB */  b          .L8003B6E4
/* 3C038 8003B438 03001025 */   or        $v0, $t8, $zero
.L8003B43C:
/* 3C03C 8003B43C 93B9003B */  lbu        $t9, 0x3b($sp)
/* 3C040 8003B440 27A80270 */  addiu      $t0, $sp, 0x270
/* 3C044 8003B444 27A9026C */  addiu      $t1, $sp, 0x26c
/* 3C048 8003B448 AFA90018 */  sw         $t1, 0x18($sp)
/* 3C04C 8003B44C AFA80014 */  sw         $t0, 0x14($sp)
/* 3C050 8003B450 8FA40278 */  lw         $a0, 0x278($sp)
/* 3C054 8003B454 27A5015C */  addiu      $a1, $sp, 0x15c
/* 3C058 8003B458 8FA6025C */  lw         $a2, 0x25c($sp)
/* 3C05C 8003B45C 27A70274 */  addiu      $a3, $sp, 0x274
/* 3C060 8003B460 0C00EDBD */  jal        func_8003B6F4
/* 3C064 8003B464 AFB90010 */   sw        $t9, 0x10($sp)
/* 3C068 8003B468 AFA20260 */  sw         $v0, 0x260($sp)
/* 3C06C 8003B46C 8FAA0260 */  lw         $t2, 0x260($sp)
/* 3C070 8003B470 11400003 */  beqz       $t2, .L8003B480
/* 3C074 8003B474 00000000 */   nop       
/* 3C078 8003B478 1000009A */  b          .L8003B6E4
/* 3C07C 8003B47C 01401025 */   or        $v0, $t2, $zero
.L8003B480:
/* 3C080 8003B480 8FAB0274 */  lw         $t3, 0x274($sp)
/* 3C084 8003B484 2401FFFF */  addiu      $at, $zero, -1
/* 3C088 8003B488 11610039 */  beq        $t3, $at, .L8003B570
/* 3C08C 8003B48C 00000000 */   nop       
/* 3C090 8003B490 8FAC0034 */  lw         $t4, 0x34($sp)
/* 3C094 8003B494 15800005 */  bnez       $t4, .L8003B4AC
/* 3C098 8003B498 00000000 */   nop       
/* 3C09C 8003B49C 93AD003B */  lbu        $t5, 0x3b($sp)
/* 3C0A0 8003B4A0 A3AB002D */  sb         $t3, 0x2d($sp)
/* 3C0A4 8003B4A4 10000016 */  b          .L8003B500
/* 3C0A8 8003B4A8 A3AD002C */   sb        $t5, 0x2c($sp)
.L8003B4AC:
/* 3C0AC 8003B4AC 8FAF0268 */  lw         $t7, 0x268($sp)
/* 3C0B0 8003B4B0 93AE003B */  lbu        $t6, 0x3b($sp)
/* 3C0B4 8003B4B4 27A5005C */  addiu      $a1, $sp, 0x5c
/* 3C0B8 8003B4B8 000FC040 */  sll        $t8, $t7, 1
/* 3C0BC 8003B4BC 03B8C821 */  addu       $t9, $sp, $t8
/* 3C0C0 8003B4C0 A32E005C */  sb         $t6, 0x5c($t9)
/* 3C0C4 8003B4C4 8FA90268 */  lw         $t1, 0x268($sp)
/* 3C0C8 8003B4C8 8FA80274 */  lw         $t0, 0x274($sp)
/* 3C0CC 8003B4CC 24060001 */  addiu      $a2, $zero, 1
/* 3C0D0 8003B4D0 00095040 */  sll        $t2, $t1, 1
/* 3C0D4 8003B4D4 03AA6021 */  addu       $t4, $sp, $t2
/* 3C0D8 8003B4D8 A188005D */  sb         $t0, 0x5d($t4)
/* 3C0DC 8003B4DC 93A7003A */  lbu        $a3, 0x3a($sp)
/* 3C0E0 8003B4E0 0C01152F */  jal        func_800454BC
/* 3C0E4 8003B4E4 8FA40278 */   lw        $a0, 0x278($sp)
/* 3C0E8 8003B4E8 AFA20260 */  sw         $v0, 0x260($sp)
/* 3C0EC 8003B4EC 8FAB0260 */  lw         $t3, 0x260($sp)
/* 3C0F0 8003B4F0 11600003 */  beqz       $t3, .L8003B500
/* 3C0F4 8003B4F4 00000000 */   nop       
/* 3C0F8 8003B4F8 1000007A */  b          .L8003B6E4
/* 3C0FC 8003B4FC 01601025 */   or        $v0, $t3, $zero
.L8003B500:
/* 3C100 8003B500 AFA00264 */  sw         $zero, 0x264($sp)
.L8003B504:
/* 3C104 8003B504 8FAD0264 */  lw         $t5, 0x264($sp)
/* 3C108 8003B508 000D7840 */  sll        $t7, $t5, 1
/* 3C10C 8003B50C 03AF7021 */  addu       $t6, $sp, $t7
/* 3C110 8003B510 95CE015C */  lhu        $t6, 0x15c($t6)
/* 3C114 8003B514 03AFC021 */  addu       $t8, $sp, $t7
/* 3C118 8003B518 A70E005C */  sh         $t6, 0x5c($t8)
/* 3C11C 8003B51C 8FB90264 */  lw         $t9, 0x264($sp)
/* 3C120 8003B520 27290001 */  addiu      $t1, $t9, 1
/* 3C124 8003B524 29210080 */  slti       $at, $t1, 0x80
/* 3C128 8003B528 1420FFF6 */  bnez       $at, .L8003B504
/* 3C12C 8003B52C AFA90264 */   sw        $t1, 0x264($sp)
/* 3C130 8003B530 8FAC0034 */  lw         $t4, 0x34($sp)
/* 3C134 8003B534 8FAD025C */  lw         $t5, 0x25c($sp)
/* 3C138 8003B538 8FAE0270 */  lw         $t6, 0x270($sp)
/* 3C13C 8003B53C 8FA8026C */  lw         $t0, 0x26c($sp)
/* 3C140 8003B540 93AA003B */  lbu        $t2, 0x3b($sp)
/* 3C144 8003B544 258B0001 */  addiu      $t3, $t4, 1
/* 3C148 8003B548 01CD082A */  slt        $at, $t6, $t5
/* 3C14C 8003B54C AFAB0034 */  sw         $t3, 0x34($sp)
/* 3C150 8003B550 AFA80268 */  sw         $t0, 0x268($sp)
/* 3C154 8003B554 10200004 */  beqz       $at, .L8003B568
/* 3C158 8003B558 A3AA003A */   sb        $t2, 0x3a($sp)
/* 3C15C 8003B55C 01AE7823 */  subu       $t7, $t5, $t6
/* 3C160 8003B560 10000003 */  b          .L8003B570
/* 3C164 8003B564 AFAF025C */   sw        $t7, 0x25c($sp)
.L8003B568:
/* 3C168 8003B568 1000000A */  b          .L8003B594
/* 3C16C 8003B56C AFA0025C */   sw        $zero, 0x25c($sp)
.L8003B570:
/* 3C170 8003B570 93B8003B */  lbu        $t8, 0x3b($sp)
/* 3C174 8003B574 8FA80278 */  lw         $t0, 0x278($sp)
/* 3C178 8003B578 27190001 */  addiu      $t9, $t8, 1
/* 3C17C 8003B57C A3B9003B */  sb         $t9, 0x3b($sp)
/* 3C180 8003B580 910A0064 */  lbu        $t2, 0x64($t0)
/* 3C184 8003B584 332900FF */  andi       $t1, $t9, 0xff
/* 3C188 8003B588 012A082A */  slt        $at, $t1, $t2
/* 3C18C 8003B58C 1420FFA0 */  bnez       $at, .L8003B410
/* 3C190 8003B590 00000000 */   nop       
.L8003B594:
/* 3C194 8003B594 8FAC025C */  lw         $t4, 0x25c($sp)
/* 3C198 8003B598 1D800005 */  bgtz       $t4, .L8003B5B0
/* 3C19C 8003B59C 00000000 */   nop       
/* 3C1A0 8003B5A0 8FAB0274 */  lw         $t3, 0x274($sp)
/* 3C1A4 8003B5A4 2401FFFF */  addiu      $at, $zero, -1
/* 3C1A8 8003B5A8 15610003 */  bne        $t3, $at, .L8003B5B8
/* 3C1AC 8003B5AC 00000000 */   nop       
.L8003B5B0:
/* 3C1B0 8003B5B0 1000004C */  b          .L8003B6E4
/* 3C1B4 8003B5B4 24020003 */   addiu     $v0, $zero, 3
.L8003B5B8:
/* 3C1B8 8003B5B8 8FAE0268 */  lw         $t6, 0x268($sp)
/* 3C1BC 8003B5BC 93AD003B */  lbu        $t5, 0x3b($sp)
/* 3C1C0 8003B5C0 27A5005C */  addiu      $a1, $sp, 0x5c
/* 3C1C4 8003B5C4 000E7840 */  sll        $t7, $t6, 1
/* 3C1C8 8003B5C8 03AFC021 */  addu       $t8, $sp, $t7
/* 3C1CC 8003B5CC A30D005C */  sb         $t5, 0x5c($t8)
/* 3C1D0 8003B5D0 8FA80268 */  lw         $t0, 0x268($sp)
/* 3C1D4 8003B5D4 8FB90274 */  lw         $t9, 0x274($sp)
/* 3C1D8 8003B5D8 24060001 */  addiu      $a2, $zero, 1
/* 3C1DC 8003B5DC 00084840 */  sll        $t1, $t0, 1
/* 3C1E0 8003B5E0 03A95021 */  addu       $t2, $sp, $t1
/* 3C1E4 8003B5E4 A159005D */  sb         $t9, 0x5d($t2)
/* 3C1E8 8003B5E8 93A7003A */  lbu        $a3, 0x3a($sp)
/* 3C1EC 8003B5EC 0C01152F */  jal        func_800454BC
/* 3C1F0 8003B5F0 8FA40278 */   lw        $a0, 0x278($sp)
/* 3C1F4 8003B5F4 AFA20260 */  sw         $v0, 0x260($sp)
/* 3C1F8 8003B5F8 8FAC0260 */  lw         $t4, 0x260($sp)
/* 3C1FC 8003B5FC 11800003 */  beqz       $t4, .L8003B60C
/* 3C200 8003B600 00000000 */   nop       
/* 3C204 8003B604 10000037 */  b          .L8003B6E4
/* 3C208 8003B608 01801025 */   or        $v0, $t4, $zero
.L8003B60C:
/* 3C20C 8003B60C 97AB002C */  lhu        $t3, 0x2c($sp)
/* 3C210 8003B610 97AE027E */  lhu        $t6, 0x27e($sp)
/* 3C214 8003B614 8FAD0280 */  lw         $t5, 0x280($sp)
/* 3C218 8003B618 A7A00046 */  sh         $zero, 0x46($sp)
/* 3C21C 8003B61C AFA00264 */  sw         $zero, 0x264($sp)
/* 3C220 8003B620 A7AB0042 */  sh         $t3, 0x42($sp)
/* 3C224 8003B624 A7AE0040 */  sh         $t6, 0x40($sp)
/* 3C228 8003B628 AFAD003C */  sw         $t5, 0x3c($sp)
.L8003B62C:
/* 3C22C 8003B62C 8FAF0284 */  lw         $t7, 0x284($sp)
/* 3C230 8003B630 8FA80264 */  lw         $t0, 0x264($sp)
/* 3C234 8003B634 91F80000 */  lbu        $t8, ($t7)
/* 3C238 8003B638 03A8C821 */  addu       $t9, $sp, $t0
/* 3C23C 8003B63C A338004C */  sb         $t8, 0x4c($t9)
/* 3C240 8003B640 8FAC0264 */  lw         $t4, 0x264($sp)
/* 3C244 8003B644 8FA90284 */  lw         $t1, 0x284($sp)
/* 3C248 8003B648 258B0001 */  addiu      $t3, $t4, 1
/* 3C24C 8003B64C 29610010 */  slti       $at, $t3, 0x10
/* 3C250 8003B650 252A0001 */  addiu      $t2, $t1, 1
/* 3C254 8003B654 AFAB0264 */  sw         $t3, 0x264($sp)
/* 3C258 8003B658 1420FFF4 */  bnez       $at, .L8003B62C
/* 3C25C 8003B65C AFAA0284 */   sw        $t2, 0x284($sp)
/* 3C260 8003B660 AFA00264 */  sw         $zero, 0x264($sp)
.L8003B664:
/* 3C264 8003B664 8FAE0288 */  lw         $t6, 0x288($sp)
/* 3C268 8003B668 8FAF0264 */  lw         $t7, 0x264($sp)
/* 3C26C 8003B66C 91CD0000 */  lbu        $t5, ($t6)
/* 3C270 8003B670 03AFC021 */  addu       $t8, $sp, $t7
/* 3C274 8003B674 A30D0048 */  sb         $t5, 0x48($t8)
/* 3C278 8003B678 8FA90264 */  lw         $t1, 0x264($sp)
/* 3C27C 8003B67C 8FA80288 */  lw         $t0, 0x288($sp)
/* 3C280 8003B680 252A0001 */  addiu      $t2, $t1, 1
/* 3C284 8003B684 29410004 */  slti       $at, $t2, 4
/* 3C288 8003B688 25190001 */  addiu      $t9, $t0, 1
/* 3C28C 8003B68C AFAA0264 */  sw         $t2, 0x264($sp)
/* 3C290 8003B690 1420FFF4 */  bnez       $at, .L8003B664
/* 3C294 8003B694 AFB90288 */   sw        $t9, 0x288($sp)
/* 3C298 8003B698 8FAC0278 */  lw         $t4, 0x278($sp)
/* 3C29C 8003B69C 8FAB0290 */  lw         $t3, 0x290($sp)
/* 3C2A0 8003B6A0 27A7003C */  addiu      $a3, $sp, 0x3c
/* 3C2A4 8003B6A4 8D8D005C */  lw         $t5, 0x5c($t4)
/* 3C2A8 8003B6A8 8D6E0000 */  lw         $t6, ($t3)
/* 3C2AC 8003B6AC 8D840004 */  lw         $a0, 4($t4)
/* 3C2B0 8003B6B0 8D850008 */  lw         $a1, 8($t4)
/* 3C2B4 8003B6B4 AFA00010 */  sw         $zero, 0x10($sp)
/* 3C2B8 8003B6B8 0C011AE0 */  jal        func_80046B80
/* 3C2BC 8003B6BC 01CD3021 */   addu      $a2, $t6, $t5
/* 3C2C0 8003B6C0 AFA20260 */  sw         $v0, 0x260($sp)
/* 3C2C4 8003B6C4 8FAF0260 */  lw         $t7, 0x260($sp)
/* 3C2C8 8003B6C8 11E00003 */  beqz       $t7, .L8003B6D8
/* 3C2CC 8003B6CC 00000000 */   nop       
/* 3C2D0 8003B6D0 10000004 */  b          .L8003B6E4
/* 3C2D4 8003B6D4 01E01025 */   or        $v0, $t7, $zero
.L8003B6D8:
/* 3C2D8 8003B6D8 10000002 */  b          .L8003B6E4
/* 3C2DC 8003B6DC 8FA20260 */   lw        $v0, 0x260($sp)
.L8003B6E0:
/* 3C2E0 8003B6E0 24020005 */  addiu      $v0, $zero, 5
.L8003B6E4:
/* 3C2E4 8003B6E4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3C2E8 8003B6E8 27BD0278 */  addiu      $sp, $sp, 0x278
/* 3C2EC 8003B6EC 03E00008 */  jr         $ra
/* 3C2F0 8003B6F0 00000000 */   nop       

glabel func_8003B6F4
/* 3C2F4 8003B6F4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 3C2F8 8003B6F8 93AE0063 */  lbu        $t6, 0x63($sp)
/* 3C2FC 8003B6FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 3C300 8003B700 AFA40050 */  sw         $a0, 0x50($sp)
/* 3C304 8003B704 AFA50054 */  sw         $a1, 0x54($sp)
/* 3C308 8003B708 AFA60058 */  sw         $a2, 0x58($sp)
/* 3C30C 8003B70C AFA7005C */  sw         $a3, 0x5c($sp)
/* 3C310 8003B710 19C00004 */  blez       $t6, .L8003B724
/* 3C314 8003B714 AFA0001C */   sw        $zero, 0x1c($sp)
/* 3C318 8003B718 240F0001 */  addiu      $t7, $zero, 1
/* 3C31C 8003B71C 10000004 */  b          .L8003B730
/* 3C320 8003B720 AFAF0018 */   sw        $t7, 0x18($sp)
.L8003B724:
/* 3C324 8003B724 8FB80050 */  lw         $t8, 0x50($sp)
/* 3C328 8003B728 8F190060 */  lw         $t9, 0x60($t8)
/* 3C32C 8003B72C AFB90018 */  sw         $t9, 0x18($sp)
.L8003B730:
/* 3C330 8003B730 8FA80018 */  lw         $t0, 0x18($sp)
/* 3C334 8003B734 29010080 */  slti       $at, $t0, 0x80
/* 3C338 8003B738 1020000E */  beqz       $at, .L8003B774
/* 3C33C 8003B73C AFA8004C */   sw        $t0, 0x4c($sp)
.L8003B740:
/* 3C340 8003B740 8FAA004C */  lw         $t2, 0x4c($sp)
/* 3C344 8003B744 8FA90054 */  lw         $t1, 0x54($sp)
/* 3C348 8003B748 24010003 */  addiu      $at, $zero, 3
/* 3C34C 8003B74C 000A5840 */  sll        $t3, $t2, 1
/* 3C350 8003B750 012B6021 */  addu       $t4, $t1, $t3
/* 3C354 8003B754 958D0000 */  lhu        $t5, ($t4)
/* 3C358 8003B758 11A10006 */  beq        $t5, $at, .L8003B774
/* 3C35C 8003B75C 00000000 */   nop       
/* 3C360 8003B760 8FAE004C */  lw         $t6, 0x4c($sp)
/* 3C364 8003B764 25CF0001 */  addiu      $t7, $t6, 1
/* 3C368 8003B768 29E10080 */  slti       $at, $t7, 0x80
/* 3C36C 8003B76C 1420FFF4 */  bnez       $at, .L8003B740
/* 3C370 8003B770 AFAF004C */   sw        $t7, 0x4c($sp)
.L8003B774:
/* 3C374 8003B774 8FB8004C */  lw         $t8, 0x4c($sp)
/* 3C378 8003B778 24010080 */  addiu      $at, $zero, 0x80
/* 3C37C 8003B77C 17010006 */  bne        $t8, $at, .L8003B798
/* 3C380 8003B780 00000000 */   nop       
/* 3C384 8003B784 8FA8005C */  lw         $t0, 0x5c($sp)
/* 3C388 8003B788 2419FFFF */  addiu      $t9, $zero, -1
/* 3C38C 8003B78C AD190000 */  sw         $t9, ($t0)
/* 3C390 8003B790 1000006D */  b          .L8003B948
/* 3C394 8003B794 8FA2001C */   lw        $v0, 0x1c($sp)
.L8003B798:
/* 3C398 8003B798 AFA00020 */  sw         $zero, 0x20($sp)
.L8003B79C:
/* 3C39C 8003B79C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 3C3A0 8003B7A0 03AA4821 */  addu       $t1, $sp, $t2
/* 3C3A4 8003B7A4 A1200024 */  sb         $zero, 0x24($t1)
/* 3C3A8 8003B7A8 8FAB0020 */  lw         $t3, 0x20($sp)
/* 3C3AC 8003B7AC 256C0001 */  addiu      $t4, $t3, 1
/* 3C3B0 8003B7B0 29810020 */  slti       $at, $t4, 0x20
/* 3C3B4 8003B7B4 1420FFF9 */  bnez       $at, .L8003B79C
/* 3C3B8 8003B7B8 AFAC0020 */   sw        $t4, 0x20($sp)
/* 3C3BC 8003B7BC 8FAD004C */  lw         $t5, 0x4c($sp)
/* 3C3C0 8003B7C0 8FAF0064 */  lw         $t7, 0x64($sp)
/* 3C3C4 8003B7C4 240E0001 */  addiu      $t6, $zero, 1
/* 3C3C8 8003B7C8 AFAD0048 */  sw         $t5, 0x48($sp)
/* 3C3CC 8003B7CC ADEE0000 */  sw         $t6, ($t7)
/* 3C3D0 8003B7D0 8FB8004C */  lw         $t8, 0x4c($sp)
/* 3C3D4 8003B7D4 8FAA0064 */  lw         $t2, 0x64($sp)
/* 3C3D8 8003B7D8 8FA80058 */  lw         $t0, 0x58($sp)
/* 3C3DC 8003B7DC 27190001 */  addiu      $t9, $t8, 1
/* 3C3E0 8003B7E0 AFB9004C */  sw         $t9, 0x4c($sp)
/* 3C3E4 8003B7E4 AFB80044 */  sw         $t8, 0x44($sp)
/* 3C3E8 8003B7E8 8D490000 */  lw         $t1, ($t2)
/* 3C3EC 8003B7EC 0128082A */  slt        $at, $t1, $t0
/* 3C3F0 8003B7F0 10200034 */  beqz       $at, .L8003B8C4
/* 3C3F4 8003B7F4 2B210080 */   slti      $at, $t9, 0x80
/* 3C3F8 8003B7F8 10200032 */  beqz       $at, .L8003B8C4
/* 3C3FC 8003B7FC 00000000 */   nop       
.L8003B800:
/* 3C400 8003B800 8FAC004C */  lw         $t4, 0x4c($sp)
/* 3C404 8003B804 8FAB0054 */  lw         $t3, 0x54($sp)
/* 3C408 8003B808 24010003 */  addiu      $at, $zero, 3
/* 3C40C 8003B80C 000C6840 */  sll        $t5, $t4, 1
/* 3C410 8003B810 016D7021 */  addu       $t6, $t3, $t5
/* 3C414 8003B814 95CF0000 */  lhu        $t7, ($t6)
/* 3C418 8003B818 15E1001D */  bne        $t7, $at, .L8003B890
/* 3C41C 8003B81C 00000000 */   nop       
/* 3C420 8003B820 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3C424 8003B824 93B80063 */  lbu        $t8, 0x63($sp)
/* 3C428 8003B828 27A60024 */  addiu      $a2, $sp, 0x24
/* 3C42C 8003B82C 000A4040 */  sll        $t0, $t2, 1
/* 3C430 8003B830 01684821 */  addu       $t1, $t3, $t0
/* 3C434 8003B834 A1380000 */  sb         $t8, ($t1)
/* 3C438 8003B838 8FAD0044 */  lw         $t5, 0x44($sp)
/* 3C43C 8003B83C 8FAC0054 */  lw         $t4, 0x54($sp)
/* 3C440 8003B840 8FB9004C */  lw         $t9, 0x4c($sp)
/* 3C444 8003B844 000D7040 */  sll        $t6, $t5, 1
/* 3C448 8003B848 018E7821 */  addu       $t7, $t4, $t6
/* 3C44C 8003B84C A1F90001 */  sb         $t9, 1($t7)
/* 3C450 8003B850 93A70063 */  lbu        $a3, 0x63($sp)
/* 3C454 8003B854 8FA50044 */  lw         $a1, 0x44($sp)
/* 3C458 8003B858 0C00EE56 */  jal        func_8003B958
/* 3C45C 8003B85C 8FA40050 */   lw        $a0, 0x50($sp)
/* 3C460 8003B860 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3C464 8003B864 8FAA001C */  lw         $t2, 0x1c($sp)
/* 3C468 8003B868 11400003 */  beqz       $t2, .L8003B878
/* 3C46C 8003B86C 00000000 */   nop       
/* 3C470 8003B870 10000035 */  b          .L8003B948
/* 3C474 8003B874 01401025 */   or        $v0, $t2, $zero
.L8003B878:
/* 3C478 8003B878 8FAB004C */  lw         $t3, 0x4c($sp)
/* 3C47C 8003B87C 8FA80064 */  lw         $t0, 0x64($sp)
/* 3C480 8003B880 AFAB0044 */  sw         $t3, 0x44($sp)
/* 3C484 8003B884 8D180000 */  lw         $t8, ($t0)
/* 3C488 8003B888 27090001 */  addiu      $t1, $t8, 1
/* 3C48C 8003B88C AD090000 */  sw         $t1, ($t0)
.L8003B890:
/* 3C490 8003B890 8FAD004C */  lw         $t5, 0x4c($sp)
/* 3C494 8003B894 8FB90064 */  lw         $t9, 0x64($sp)
/* 3C498 8003B898 8FAE0058 */  lw         $t6, 0x58($sp)
/* 3C49C 8003B89C 25AC0001 */  addiu      $t4, $t5, 1
/* 3C4A0 8003B8A0 AFAC004C */  sw         $t4, 0x4c($sp)
/* 3C4A4 8003B8A4 8F2F0000 */  lw         $t7, ($t9)
/* 3C4A8 8003B8A8 01EE082A */  slt        $at, $t7, $t6
/* 3C4AC 8003B8AC 10200005 */  beqz       $at, .L8003B8C4
/* 3C4B0 8003B8B0 00000000 */   nop       
/* 3C4B4 8003B8B4 8FAA004C */  lw         $t2, 0x4c($sp)
/* 3C4B8 8003B8B8 29410080 */  slti       $at, $t2, 0x80
/* 3C4BC 8003B8BC 1420FFD0 */  bnez       $at, .L8003B800
/* 3C4C0 8003B8C0 00000000 */   nop       
.L8003B8C4:
/* 3C4C4 8003B8C4 8FAB0048 */  lw         $t3, 0x48($sp)
/* 3C4C8 8003B8C8 8FB8005C */  lw         $t8, 0x5c($sp)
/* 3C4CC 8003B8CC 24010080 */  addiu      $at, $zero, 0x80
/* 3C4D0 8003B8D0 AF0B0000 */  sw         $t3, ($t8)
/* 3C4D4 8003B8D4 8FA9004C */  lw         $t1, 0x4c($sp)
/* 3C4D8 8003B8D8 1521000C */  bne        $t1, $at, .L8003B90C
/* 3C4DC 8003B8DC 00000000 */   nop       
/* 3C4E0 8003B8E0 8FAD0064 */  lw         $t5, 0x64($sp)
/* 3C4E4 8003B8E4 8FA80058 */  lw         $t0, 0x58($sp)
/* 3C4E8 8003B8E8 8DAC0000 */  lw         $t4, ($t5)
/* 3C4EC 8003B8EC 0188082A */  slt        $at, $t4, $t0
/* 3C4F0 8003B8F0 10200006 */  beqz       $at, .L8003B90C
/* 3C4F4 8003B8F4 00000000 */   nop       
/* 3C4F8 8003B8F8 8FB90044 */  lw         $t9, 0x44($sp)
/* 3C4FC 8003B8FC 8FAE0068 */  lw         $t6, 0x68($sp)
/* 3C500 8003B900 ADD90000 */  sw         $t9, ($t6)
/* 3C504 8003B904 10000010 */  b          .L8003B948
/* 3C508 8003B908 8FA2001C */   lw        $v0, 0x1c($sp)
.L8003B90C:
/* 3C50C 8003B90C 8FAB0044 */  lw         $t3, 0x44($sp)
/* 3C510 8003B910 8FAA0054 */  lw         $t2, 0x54($sp)
/* 3C514 8003B914 240F0001 */  addiu      $t7, $zero, 1
/* 3C518 8003B918 000BC040 */  sll        $t8, $t3, 1
/* 3C51C 8003B91C 01584821 */  addu       $t1, $t2, $t8
/* 3C520 8003B920 A52F0000 */  sh         $t7, ($t1)
/* 3C524 8003B924 93A70063 */  lbu        $a3, 0x63($sp)
/* 3C528 8003B928 8FA50044 */  lw         $a1, 0x44($sp)
/* 3C52C 8003B92C 8FA40050 */  lw         $a0, 0x50($sp)
/* 3C530 8003B930 0C00EE56 */  jal        func_8003B958
/* 3C534 8003B934 27A60024 */   addiu     $a2, $sp, 0x24
/* 3C538 8003B938 8FAD0068 */  lw         $t5, 0x68($sp)
/* 3C53C 8003B93C AFA2001C */  sw         $v0, 0x1c($sp)
/* 3C540 8003B940 ADA00000 */  sw         $zero, ($t5)
/* 3C544 8003B944 8FA2001C */  lw         $v0, 0x1c($sp)
.L8003B948:
/* 3C548 8003B948 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3C54C 8003B94C 27BD0050 */  addiu      $sp, $sp, 0x50
/* 3C550 8003B950 03E00008 */  jr         $ra
/* 3C554 8003B954 00000000 */   nop       

glabel func_8003B958
/* 3C558 8003B958 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3C55C 8003B95C AFA40028 */  sw         $a0, 0x28($sp)
/* 3C560 8003B960 AFA70034 */  sw         $a3, 0x34($sp)
/* 3C564 8003B964 93AE0037 */  lbu        $t6, 0x37($sp)
/* 3C568 8003B968 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3C56C 8003B96C AFBF001C */  sw         $ra, 0x1c($sp)
/* 3C570 8003B970 AFA5002C */  sw         $a1, 0x2c($sp)
/* 3C574 8003B974 AFA60030 */  sw         $a2, 0x30($sp)
/* 3C578 8003B978 AFA00020 */  sw         $zero, 0x20($sp)
/* 3C57C 8003B97C A1EE0065 */  sb         $t6, 0x65($t7)
/* 3C580 8003B980 0C0115F7 */  jal        func_800457DC
/* 3C584 8003B984 8FA40028 */   lw        $a0, 0x28($sp)
/* 3C588 8003B988 AFA20020 */  sw         $v0, 0x20($sp)
/* 3C58C 8003B98C 8FB80020 */  lw         $t8, 0x20($sp)
/* 3C590 8003B990 13000003 */  beqz       $t8, .L8003B9A0
/* 3C594 8003B994 00000000 */   nop       
/* 3C598 8003B998 1000001B */  b          .L8003BA08
/* 3C59C 8003B99C 03001025 */   or        $v0, $t8, $zero
.L8003B9A0:
/* 3C5A0 8003B9A0 AFA00024 */  sw         $zero, 0x24($sp)
.L8003B9A4:
/* 3C5A4 8003B9A4 8FB90028 */  lw         $t9, 0x28($sp)
/* 3C5A8 8003B9A8 8FA8002C */  lw         $t0, 0x2c($sp)
/* 3C5AC 8003B9AC 8FAA0024 */  lw         $t2, 0x24($sp)
/* 3C5B0 8003B9B0 8F240004 */  lw         $a0, 4($t9)
/* 3C5B4 8003B9B4 8F250008 */  lw         $a1, 8($t9)
/* 3C5B8 8003B9B8 000848C0 */  sll        $t1, $t0, 3
/* 3C5BC 8003B9BC AFA00010 */  sw         $zero, 0x10($sp)
/* 3C5C0 8003B9C0 8FA70030 */  lw         $a3, 0x30($sp)
/* 3C5C4 8003B9C4 0C011AE0 */  jal        func_80046B80
/* 3C5C8 8003B9C8 012A3021 */   addu      $a2, $t1, $t2
/* 3C5CC 8003B9CC AFA20020 */  sw         $v0, 0x20($sp)
/* 3C5D0 8003B9D0 8FAB0020 */  lw         $t3, 0x20($sp)
/* 3C5D4 8003B9D4 15600006 */  bnez       $t3, .L8003B9F0
/* 3C5D8 8003B9D8 00000000 */   nop       
/* 3C5DC 8003B9DC 8FAC0024 */  lw         $t4, 0x24($sp)
/* 3C5E0 8003B9E0 258D0001 */  addiu      $t5, $t4, 1
/* 3C5E4 8003B9E4 29A10008 */  slti       $at, $t5, 8
/* 3C5E8 8003B9E8 1420FFEE */  bnez       $at, .L8003B9A4
/* 3C5EC 8003B9EC AFAD0024 */   sw        $t5, 0x24($sp)
.L8003B9F0:
/* 3C5F0 8003B9F0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3C5F4 8003B9F4 A1C00065 */  sb         $zero, 0x65($t6)
/* 3C5F8 8003B9F8 0C0115F7 */  jal        func_800457DC
/* 3C5FC 8003B9FC 8FA40028 */   lw        $a0, 0x28($sp)
/* 3C600 8003BA00 AFA20020 */  sw         $v0, 0x20($sp)
/* 3C604 8003BA04 8FA20020 */  lw         $v0, 0x20($sp)
.L8003BA08:
/* 3C608 8003BA08 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3C60C 8003BA0C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3C610 8003BA10 03E00008 */  jr         $ra
/* 3C614 8003BA14 00000000 */   nop       
/* 3C618 8003BA18 00000000 */  nop        
/* 3C61C 8003BA1C 00000000 */  nop        
