glabel func_80034ED0
/* 35AD0 80034ED0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 35AD4 80034ED4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 35AD8 80034ED8 0C00F534 */  jal        func_8003D4D0
/* 35ADC 80034EDC AFB00018 */   sw        $s0, 0x18($sp)
/* 35AE0 80034EE0 0C00FB64 */  jal        func_8003ED90
/* 35AE4 80034EE4 00408025 */   or        $s0, $v0, $zero
/* 35AE8 80034EE8 AFA20034 */  sw         $v0, 0x34($sp)
/* 35AEC 80034EEC 3C0F8009 */  lui        $t7, 0x8009
/* 35AF0 80034EF0 8DEF5628 */  lw         $t7, 0x5628($t7)
/* 35AF4 80034EF4 8FAE0034 */  lw         $t6, 0x34($sp)
/* 35AF8 80034EF8 3C088009 */  lui        $t0, 0x8009
/* 35AFC 80034EFC 3C098009 */  lui        $t1, 0x8009
/* 35B00 80034F00 8D295624 */  lw         $t1, 0x5624($t1)
/* 35B04 80034F04 8D085620 */  lw         $t0, 0x5620($t0)
/* 35B08 80034F08 01CFC023 */  subu       $t8, $t6, $t7
/* 35B0C 80034F0C AFB80030 */  sw         $t8, 0x30($sp)
/* 35B10 80034F10 02002025 */  or         $a0, $s0, $zero
/* 35B14 80034F14 AFA9002C */  sw         $t1, 0x2c($sp)
/* 35B18 80034F18 0C00F53C */  jal        func_8003D4F0
/* 35B1C 80034F1C AFA80028 */   sw        $t0, 0x28($sp)
/* 35B20 80034F20 8FB90030 */  lw         $t9, 0x30($sp)
/* 35B24 80034F24 8FAD002C */  lw         $t5, 0x2c($sp)
/* 35B28 80034F28 8FBF001C */  lw         $ra, 0x1c($sp)
/* 35B2C 80034F2C 03205825 */  or         $t3, $t9, $zero
/* 35B30 80034F30 016D1821 */  addu       $v1, $t3, $t5
/* 35B34 80034F34 8FAC0028 */  lw         $t4, 0x28($sp)
/* 35B38 80034F38 240A0000 */  addiu      $t2, $zero, 0
/* 35B3C 80034F3C 006D082B */  sltu       $at, $v1, $t5
/* 35B40 80034F40 002A1021 */  addu       $v0, $at, $t2
/* 35B44 80034F44 8FB00018 */  lw         $s0, 0x18($sp)
/* 35B48 80034F48 27BD0038 */  addiu      $sp, $sp, 0x38
/* 35B4C 80034F4C 03E00008 */  jr         $ra
/* 35B50 80034F50 004C1021 */   addu      $v0, $v0, $t4
/* 35B54 80034F54 00000000 */  nop        
/* 35B58 80034F58 00000000 */  nop        
/* 35B5C 80034F5C 00000000 */  nop        