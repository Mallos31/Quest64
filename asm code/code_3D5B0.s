glabel func_8003C9B0
/* 3D5B0 8003C9B0 4442F800 */  cfc1       $v0, $31
/* 3D5B4 8003C9B4 44C4F800 */  ctc1       $a0, $31
/* 3D5B8 8003C9B8 03E00008 */  jr         $ra
/* 3D5BC 8003C9BC 00000000 */   nop       

glabel func_8003C9C0
/* 3D5C0 8003C9C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3D5C4 8003C9C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D5C8 8003C9C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 3D5CC 8003C9CC 0C011C60 */  jal        func_80047180
/* 3D5D0 8003C9D0 AFA5001C */   sw        $a1, 0x1c($sp)
/* 3D5D4 8003C9D4 10400003 */  beqz       $v0, .L8003C9E4
/* 3D5D8 8003C9D8 00000000 */   nop       
/* 3D5DC 8003C9DC 10000008 */  b          .L8003CA00
/* 3D5E0 8003C9E0 2402FFFF */   addiu     $v0, $zero, -1
.L8003C9E4:
/* 3D5E4 8003C9E4 8FAE0018 */  lw         $t6, 0x18($sp)
/* 3D5E8 8003C9E8 3C01A000 */  lui        $at, 0xa000
/* 3D5EC 8003C9EC 8FB9001C */  lw         $t9, 0x1c($sp)
/* 3D5F0 8003C9F0 01C17825 */  or         $t7, $t6, $at
/* 3D5F4 8003C9F4 8DF80000 */  lw         $t8, ($t7)
/* 3D5F8 8003C9F8 00001025 */  or         $v0, $zero, $zero
/* 3D5FC 8003C9FC AF380000 */  sw         $t8, ($t9)
.L8003CA00:
/* 3D600 8003CA00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D604 8003CA04 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3D608 8003CA08 03E00008 */  jr         $ra
/* 3D60C 8003CA0C 00000000 */   nop       

glabel func_8003CA10
/* 3D610 8003CA10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3D614 8003CA14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D618 8003CA18 AFA40018 */  sw         $a0, 0x18($sp)
/* 3D61C 8003CA1C 0C011C60 */  jal        func_80047180
/* 3D620 8003CA20 AFA5001C */   sw        $a1, 0x1c($sp)
/* 3D624 8003CA24 10400003 */  beqz       $v0, .L8003CA34
/* 3D628 8003CA28 00000000 */   nop       
/* 3D62C 8003CA2C 10000007 */  b          .L8003CA4C
/* 3D630 8003CA30 2402FFFF */   addiu     $v0, $zero, -1
.L8003CA34:
/* 3D634 8003CA34 8FAF0018 */  lw         $t7, 0x18($sp)
/* 3D638 8003CA38 8FAE001C */  lw         $t6, 0x1c($sp)
/* 3D63C 8003CA3C 3C01A000 */  lui        $at, 0xa000
/* 3D640 8003CA40 01E1C025 */  or         $t8, $t7, $at
/* 3D644 8003CA44 00001025 */  or         $v0, $zero, $zero
/* 3D648 8003CA48 AF0E0000 */  sw         $t6, ($t8)
.L8003CA4C:
/* 3D64C 8003CA4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D650 8003CA50 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3D654 8003CA54 03E00008 */  jr         $ra
/* 3D658 8003CA58 00000000 */   nop       
/* 3D65C 8003CA5C 00000000 */  nop        
