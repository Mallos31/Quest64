glabel func_8003D430
/* 3E030 8003D430 28A1000C */  slti       $at, $a1, 0xc
/* 3E034 8003D434 1420001D */  bnez       $at, .L8003D4AC
/* 3E038 8003D438 00041823 */   negu      $v1, $a0
/* 3E03C 8003D43C 30630003 */  andi       $v1, $v1, 3
/* 3E040 8003D440 10600003 */  beqz       $v1, .L8003D450
/* 3E044 8003D444 00A32823 */   subu      $a1, $a1, $v1
/* 3E048 8003D448 A8800000 */  swl        $zero, ($a0)
/* 3E04C 8003D44C 00832021 */  addu       $a0, $a0, $v1
.L8003D450:
/* 3E050 8003D450 2401FFE0 */  addiu      $at, $zero, -0x20
/* 3E054 8003D454 00A13824 */  and        $a3, $a1, $at
/* 3E058 8003D458 10E0000C */  beqz       $a3, .L8003D48C
/* 3E05C 8003D45C 00A72823 */   subu      $a1, $a1, $a3
/* 3E060 8003D460 00E43821 */  addu       $a3, $a3, $a0
.L8003D464:
/* 3E064 8003D464 24840020 */  addiu      $a0, $a0, 0x20
/* 3E068 8003D468 AC80FFE0 */  sw         $zero, -0x20($a0)
/* 3E06C 8003D46C AC80FFE4 */  sw         $zero, -0x1c($a0)
/* 3E070 8003D470 AC80FFE8 */  sw         $zero, -0x18($a0)
/* 3E074 8003D474 AC80FFEC */  sw         $zero, -0x14($a0)
/* 3E078 8003D478 AC80FFF0 */  sw         $zero, -0x10($a0)
/* 3E07C 8003D47C AC80FFF4 */  sw         $zero, -0xc($a0)
/* 3E080 8003D480 AC80FFF8 */  sw         $zero, -8($a0)
/* 3E084 8003D484 1487FFF7 */  bne        $a0, $a3, .L8003D464
/* 3E088 8003D488 AC80FFFC */   sw        $zero, -4($a0)
.L8003D48C:
/* 3E08C 8003D48C 2401FFFC */  addiu      $at, $zero, -4
/* 3E090 8003D490 00A13824 */  and        $a3, $a1, $at
/* 3E094 8003D494 10E00005 */  beqz       $a3, .L8003D4AC
/* 3E098 8003D498 00A72823 */   subu      $a1, $a1, $a3
/* 3E09C 8003D49C 00E43821 */  addu       $a3, $a3, $a0
.L8003D4A0:
/* 3E0A0 8003D4A0 24840004 */  addiu      $a0, $a0, 4
/* 3E0A4 8003D4A4 1487FFFE */  bne        $a0, $a3, .L8003D4A0
/* 3E0A8 8003D4A8 AC80FFFC */   sw        $zero, -4($a0)
.L8003D4AC:
/* 3E0AC 8003D4AC 18A00005 */  blez       $a1, .L8003D4C4
/* 3E0B0 8003D4B0 00000000 */   nop       
/* 3E0B4 8003D4B4 00A42821 */  addu       $a1, $a1, $a0
.L8003D4B8:
/* 3E0B8 8003D4B8 24840001 */  addiu      $a0, $a0, 1
/* 3E0BC 8003D4BC 1485FFFE */  bne        $a0, $a1, .L8003D4B8
/* 3E0C0 8003D4C0 A080FFFF */   sb        $zero, -1($a0)
.L8003D4C4:
/* 3E0C4 8003D4C4 03E00008 */  jr         $ra
/* 3E0C8 8003D4C8 00000000 */   nop       
/* 3E0CC 8003D4CC 00000000 */  nop        