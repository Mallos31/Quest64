glabel func_00001000
/* 001000 00001000 3C088007 */  lui   $t0, 0x8007
/* 001004 00001004 3C090002 */  lui   $t1, 2
/* 001008 00001008 25082E90 */  addiu $t0, $t0, 0x2e90
/* 00100C 0000100C 352939C0 */  ori   $t1, $t1, 0x39c0
.L00001010:
/* 001010 00001010 2129FFF8 */  addi  $t1, $t1, -8
/* 001014 00001014 AD000000 */  sw    $zero, ($t0)
/* 001018 00001018 AD000004 */  sw    $zero, 4($t0)
/* 00101C 0000101C 1520FFFC */  bnez  $t1, .L00001010
/* 001020 00001020 21080008 */   addi  $t0, $t0, 8
/* 001024 00001024 3C0A8000 */  lui   $t2, 0x8000
/* 001028 00001028 3C1D8007 */  lui   $sp, 0x8007
/* 00102C 0000102C 254A0450 */  addiu $t2, $t2, 0x450
/* 001030 00001030 01400008 */  jr    $t2
/* 001034 00001034 27BD4E90 */   addiu $sp, $sp, 0x4e90
/* 001038 00001038 00000000 */  nop   
/* 00103C 0000103C 00000000 */  nop   
/* 001040 00001040 00000000 */  nop   
/* 001044 00001044 00000000 */  nop   
/* 001048 00001048 00000000 */  nop   
/* 00104C 0000104C 00000000 */  nop
