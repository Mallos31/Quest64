glabel func_80036360
/* 36F60 80036360 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36F64 80036364 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36F68 80036368 0C00FEC8 */  jal        func_8003FB20
/* 36F6C 8003636C AFA60020 */   sw        $a2, 0x20($sp)
/* 36F70 80036370 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36F74 80036374 8FAE0020 */  lw         $t6, 0x20($sp)
/* 36F78 80036378 27BD0018 */  addiu      $sp, $sp, 0x18
/* 36F7C 8003637C 03E00008 */  jr         $ra
/* 36F80 80036380 004E1021 */   addu      $v0, $v0, $t6

glabel func_80036384
/* 36F84 80036384 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 36F88 80036388 AFA40020 */  sw         $a0, 0x20($sp)
/* 36F8C 8003638C AFBF0014 */  sw         $ra, 0x14($sp)
/* 36F90 80036390 AFA50024 */  sw         $a1, 0x24($sp)
/* 36F94 80036394 AFA60028 */  sw         $a2, 0x28($sp)
/* 36F98 80036398 AFA7002C */  sw         $a3, 0x2c($sp)
/* 36F9C 8003639C 3C048003 */  lui        $a0, 0x8003
/* 36FA0 800363A0 24846360 */  addiu      $a0, $a0, 0x6360
/* 36FA4 800363A4 27A70028 */  addiu      $a3, $sp, 0x28
/* 36FA8 800363A8 8FA60024 */  lw         $a2, 0x24($sp)
/* 36FAC 800363AC 0C00FD34 */  jal        func_8003F4D0
/* 36FB0 800363B0 8FA50020 */   lw        $a1, 0x20($sp)
/* 36FB4 800363B4 04400004 */  bltz       $v0, .L800363C8
/* 36FB8 800363B8 00401825 */   or        $v1, $v0, $zero
/* 36FBC 800363BC 8FAE0020 */  lw         $t6, 0x20($sp)
/* 36FC0 800363C0 01C27821 */  addu       $t7, $t6, $v0
/* 36FC4 800363C4 A1E00000 */  sb         $zero, ($t7)
.L800363C8:
/* 36FC8 800363C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36FCC 800363CC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 36FD0 800363D0 00601025 */  or         $v0, $v1, $zero
/* 36FD4 800363D4 03E00008 */  jr         $ra
/* 36FD8 800363D8 00000000 */   nop       
/* 36FDC 800363DC 00000000 */  nop        
