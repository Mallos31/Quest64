glabel func_80039960
/* 3A560 80039960 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3A564 80039964 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A568 80039968 8C820040 */  lw         $v0, 0x40($a0)
/* 3A56C 8003996C 240E0001 */  addiu      $t6, $zero, 1
/* 3A570 80039970 A7AE0020 */  sh         $t6, 0x20($sp)
/* 3A574 80039974 8C8F003C */  lw         $t7, 0x3c($a0)
/* 3A578 80039978 27A50020 */  addiu      $a1, $sp, 0x20
/* 3A57C 8003997C 24840014 */  addiu      $a0, $a0, 0x14
/* 3A580 80039980 000FC080 */  sll        $t8, $t7, 2
/* 3A584 80039984 030FC023 */  subu       $t8, $t8, $t7
/* 3A588 80039988 0018C100 */  sll        $t8, $t8, 4
/* 3A58C 8003998C 0302C821 */  addu       $t9, $t8, $v0
/* 3A590 80039990 AFB90024 */  sw         $t9, 0x24($sp)
/* 3A594 80039994 0C00FF9B */  jal        func_8003FE6C
/* 3A598 80039998 00003025 */   or        $a2, $zero, $zero
/* 3A59C 8003999C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A5A0 800399A0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3A5A4 800399A4 03E00008 */  jr         $ra
/* 3A5A8 800399A8 00000000 */   nop       
/* 3A5AC 800399AC 00000000 */  nop        
