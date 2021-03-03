.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osInvalICache
/* 36FE0 800363E0 18A00011 */  blez       $a1, _2_
/* 36FE4 800363E4 00000000 */   nop
/* 36FE8 800363E8 240B4000 */  addiu      $t3, $zero, 0x4000
/* 36FEC 800363EC 00AB082B */  sltu       $at, $a1, $t3
/* 36FF0 800363F0 1020000F */  beqz       $at, _3_
/* 36FF4 800363F4 00000000 */   nop
/* 36FF8 800363F8 00804025 */  or         $t0, $a0, $zero
/* 36FFC 800363FC 00854821 */  addu       $t1, $a0, $a1
/* 37000 80036400 0109082B */  sltu       $at, $t0, $t1
/* 37004 80036404 10200008 */  beqz       $at, _2_
/* 37008 80036408 00000000 */   nop
/* 3700C 8003640C 310A001F */  andi       $t2, $t0, 0x1f
/* 37010 80036410 2529FFE0 */  addiu      $t1, $t1, -0x20
/* 37014 80036414 010A4023 */  subu       $t0, $t0, $t2

glabel _1_
/* 37018 80036418 BD100000 */  cache      0x10, ($t0)
/* 3701C 8003641C 0109082B */  sltu       $at, $t0, $t1
/* 37020 80036420 1420FFFD */  bnez       $at, _1_
/* 37024 80036424 25080020 */   addiu     $t0, $t0, 0x20

glabel _2_
/* 37028 80036428 03E00008 */  jr         $ra
/* 3702C 8003642C 00000000 */   nop

glabel _3_
/* 37030 80036430 3C088000 */  lui        $t0, 0x8000
/* 37034 80036434 010B4821 */  addu       $t1, $t0, $t3
/* 37038 80036438 2529FFE0 */  addiu      $t1, $t1, -0x20

glabel _4_
/* 3703C 8003643C BD000000 */  cache      0, ($t0)
/* 37040 80036440 0109082B */  sltu       $at, $t0, $t1
/* 37044 80036444 1420FFFD */  bnez       $at, _4_
/* 37048 80036448 25080020 */   addiu     $t0, $t0, 0x20
/* 3704C 8003644C 03E00008 */  jr         $ra
/* 37050 80036450 00000000 */   nop
/* 37054 80036454 00000000 */  nop
/* 37058 80036458 00000000 */  nop
/* 3705C 8003645C 00000000 */  nop
