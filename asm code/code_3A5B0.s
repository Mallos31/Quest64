glabel func_800399B0
/* 3A5B0 800399B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3A5B4 800399B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A5B8 800399B8 8C820040 */  lw         $v0, 0x40($a0)
/* 3A5BC 800399BC 240E0004 */  addiu      $t6, $zero, 4
/* 3A5C0 800399C0 A7AE0020 */  sh         $t6, 0x20($sp)
/* 3A5C4 800399C4 8C8F003C */  lw         $t7, 0x3c($a0)
/* 3A5C8 800399C8 44856000 */  mtc1       $a1, $f12
/* 3A5CC 800399CC 27A50020 */  addiu      $a1, $sp, 0x20
/* 3A5D0 800399D0 000FC080 */  sll        $t8, $t7, 2
/* 3A5D4 800399D4 030FC023 */  subu       $t8, $t8, $t7
/* 3A5D8 800399D8 0018C100 */  sll        $t8, $t8, 4
/* 3A5DC 800399DC 0302C821 */  addu       $t9, $t8, $v0
/* 3A5E0 800399E0 AFB90024 */  sw         $t9, 0x24($sp)
/* 3A5E4 800399E4 24840014 */  addiu      $a0, $a0, 0x14
/* 3A5E8 800399E8 00003025 */  or         $a2, $zero, $zero
/* 3A5EC 800399EC 0C00FF9B */  jal        func_8003FE6C
/* 3A5F0 800399F0 E7AC0028 */   swc1      $f12, 0x28($sp)
/* 3A5F4 800399F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A5F8 800399F8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3A5FC 800399FC 03E00008 */  jr         $ra
/* 3A600 80039A00 00000000 */   nop       
/* 3A604 80039A04 00000000 */  nop        
/* 3A608 80039A08 00000000 */  nop        
/* 3A60C 80039A0C 00000000 */  nop        
