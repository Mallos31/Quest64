glabel func_8003AC10
/* 3B810 8003AC10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3B814 8003AC14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3B818 8003AC18 AFA40020 */  sw         $a0, 0x20($sp)
/* 3B81C 8003AC1C 0C011210 */  jal        func_80044840
/* 3B820 8003AC20 AFA0001C */   sw        $zero, 0x1c($sp)
/* 3B824 8003AC24 3C0E8009 */  lui        $t6, 0x8009
/* 3B828 8003AC28 91CE5490 */  lbu        $t6, 0x5490($t6)
/* 3B82C 8003AC2C 24010001 */  addiu      $at, $zero, 1
/* 3B830 8003AC30 11C1000C */  beq        $t6, $at, .L8003AC64
/* 3B834 8003AC34 00000000 */   nop       
/* 3B838 8003AC38 0C00EB51 */  jal        func_8003AD44
/* 3B83C 8003AC3C 00000000 */   nop       
/* 3B840 8003AC40 3C058009 */  lui        $a1, 0x8009
/* 3B844 8003AC44 24A55450 */  addiu      $a1, $a1, 0x5450
/* 3B848 8003AC48 0C011A54 */  jal        func_80046950
/* 3B84C 8003AC4C 24040001 */   addiu     $a0, $zero, 1
/* 3B850 8003AC50 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3B854 8003AC54 8FA40020 */  lw         $a0, 0x20($sp)
/* 3B858 8003AC58 00002825 */  or         $a1, $zero, $zero
/* 3B85C 8003AC5C 0C00D008 */  jal        func_80034020
/* 3B860 8003AC60 24060001 */   addiu     $a2, $zero, 1
.L8003AC64:
/* 3B864 8003AC64 3C058009 */  lui        $a1, 0x8009
/* 3B868 8003AC68 24A55450 */  addiu      $a1, $a1, 0x5450
/* 3B86C 8003AC6C 0C011A54 */  jal        func_80046950
/* 3B870 8003AC70 00002025 */   or        $a0, $zero, $zero
/* 3B874 8003AC74 240F0001 */  addiu      $t7, $zero, 1
/* 3B878 8003AC78 3C018009 */  lui        $at, 0x8009
/* 3B87C 8003AC7C AFA2001C */  sw         $v0, 0x1c($sp)
/* 3B880 8003AC80 0C011221 */  jal        func_80044884
/* 3B884 8003AC84 A02F5490 */   sb        $t7, 0x5490($at)
/* 3B888 8003AC88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3B88C 8003AC8C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 3B890 8003AC90 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3B894 8003AC94 03E00008 */  jr         $ra
/* 3B898 8003AC98 00000000 */   nop       

glabel func_8003AC9C
/* 3B89C 8003AC9C 3C0F8009 */  lui        $t7, 0x8009
/* 3B8A0 8003ACA0 91EF5491 */  lbu        $t7, 0x5491($t7)
/* 3B8A4 8003ACA4 3C0E8009 */  lui        $t6, 0x8009
/* 3B8A8 8003ACA8 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 3B8AC 8003ACAC 25CE5450 */  addiu      $t6, $t6, 0x5450
/* 3B8B0 8003ACB0 AFAE000C */  sw         $t6, 0xc($sp)
/* 3B8B4 8003ACB4 19E00021 */  blez       $t7, .L8003AD3C
/* 3B8B8 8003ACB8 AFA00000 */   sw        $zero, ($sp)
.L8003ACBC:
/* 3B8BC 8003ACBC 8FB9000C */  lw         $t9, 0xc($sp)
/* 3B8C0 8003ACC0 27B80004 */  addiu      $t8, $sp, 4
/* 3B8C4 8003ACC4 8B210000 */  lwl        $at, ($t9)
/* 3B8C8 8003ACC8 9B210003 */  lwr        $at, 3($t9)
/* 3B8CC 8003ACCC AF010000 */  sw         $at, ($t8)
/* 3B8D0 8003ACD0 8B290004 */  lwl        $t1, 4($t9)
/* 3B8D4 8003ACD4 9B290007 */  lwr        $t1, 7($t9)
/* 3B8D8 8003ACD8 AF090004 */  sw         $t1, 4($t8)
/* 3B8DC 8003ACDC 93AA0006 */  lbu        $t2, 6($sp)
/* 3B8E0 8003ACE0 314B00C0 */  andi       $t3, $t2, 0xc0
/* 3B8E4 8003ACE4 000B6103 */  sra        $t4, $t3, 4
/* 3B8E8 8003ACE8 A08C0004 */  sb         $t4, 4($a0)
/* 3B8EC 8003ACEC 908D0004 */  lbu        $t5, 4($a0)
/* 3B8F0 8003ACF0 15A00007 */  bnez       $t5, .L8003AD10
/* 3B8F4 8003ACF4 00000000 */   nop       
/* 3B8F8 8003ACF8 97AE0008 */  lhu        $t6, 8($sp)
/* 3B8FC 8003ACFC A48E0000 */  sh         $t6, ($a0)
/* 3B900 8003AD00 83AF000A */  lb         $t7, 0xa($sp)
/* 3B904 8003AD04 A08F0002 */  sb         $t7, 2($a0)
/* 3B908 8003AD08 83A8000B */  lb         $t0, 0xb($sp)
/* 3B90C 8003AD0C A0880003 */  sb         $t0, 3($a0)
.L8003AD10:
/* 3B910 8003AD10 8FB80000 */  lw         $t8, ($sp)
/* 3B914 8003AD14 3C0B8009 */  lui        $t3, 0x8009
/* 3B918 8003AD18 916B5491 */  lbu        $t3, 0x5491($t3)
/* 3B91C 8003AD1C 8FA9000C */  lw         $t1, 0xc($sp)
/* 3B920 8003AD20 27190001 */  addiu      $t9, $t8, 1
/* 3B924 8003AD24 032B082A */  slt        $at, $t9, $t3
/* 3B928 8003AD28 252A0008 */  addiu      $t2, $t1, 8
/* 3B92C 8003AD2C AFAA000C */  sw         $t2, 0xc($sp)
/* 3B930 8003AD30 AFB90000 */  sw         $t9, ($sp)
/* 3B934 8003AD34 1420FFE1 */  bnez       $at, .L8003ACBC
/* 3B938 8003AD38 24840006 */   addiu     $a0, $a0, 6
.L8003AD3C:
/* 3B93C 8003AD3C 03E00008 */  jr         $ra
/* 3B940 8003AD40 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8003AD44
/* 3B944 8003AD44 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 3B948 8003AD48 3C0E8009 */  lui        $t6, 0x8009
/* 3B94C 8003AD4C 25CE5450 */  addiu      $t6, $t6, 0x5450
/* 3B950 8003AD50 AFAE000C */  sw         $t6, 0xc($sp)
/* 3B954 8003AD54 AFA00000 */  sw         $zero, ($sp)
.L8003AD58:
/* 3B958 8003AD58 8FAF0000 */  lw         $t7, ($sp)
/* 3B95C 8003AD5C 8FB90000 */  lw         $t9, ($sp)
/* 3B960 8003AD60 3C018009 */  lui        $at, 0x8009
/* 3B964 8003AD64 000FC080 */  sll        $t8, $t7, 2
/* 3B968 8003AD68 00380821 */  addu       $at, $at, $t8
/* 3B96C 8003AD6C AC205450 */  sw         $zero, 0x5450($at)
/* 3B970 8003AD70 27280001 */  addiu      $t0, $t9, 1
/* 3B974 8003AD74 2901000F */  slti       $at, $t0, 0xf
/* 3B978 8003AD78 1420FFF7 */  bnez       $at, .L8003AD58
/* 3B97C 8003AD7C AFA80000 */   sw        $t0, ($sp)
/* 3B980 8003AD80 3C198009 */  lui        $t9, 0x8009
/* 3B984 8003AD84 93395491 */  lbu        $t9, 0x5491($t9)
/* 3B988 8003AD88 24090001 */  addiu      $t1, $zero, 1
/* 3B98C 8003AD8C 3C018009 */  lui        $at, 0x8009
/* 3B990 8003AD90 240A00FF */  addiu      $t2, $zero, 0xff
/* 3B994 8003AD94 240B0001 */  addiu      $t3, $zero, 1
/* 3B998 8003AD98 240C0004 */  addiu      $t4, $zero, 4
/* 3B99C 8003AD9C 240D0001 */  addiu      $t5, $zero, 1
/* 3B9A0 8003ADA0 340EFFFF */  ori        $t6, $zero, 0xffff
/* 3B9A4 8003ADA4 240FFFFF */  addiu      $t7, $zero, -1
/* 3B9A8 8003ADA8 2418FFFF */  addiu      $t8, $zero, -1
/* 3B9AC 8003ADAC AC29548C */  sw         $t1, 0x548c($at)
/* 3B9B0 8003ADB0 A3AA0004 */  sb         $t2, 4($sp)
/* 3B9B4 8003ADB4 A3AB0005 */  sb         $t3, 5($sp)
/* 3B9B8 8003ADB8 A3AC0006 */  sb         $t4, 6($sp)
/* 3B9BC 8003ADBC A3AD0007 */  sb         $t5, 7($sp)
/* 3B9C0 8003ADC0 A7AE0008 */  sh         $t6, 8($sp)
/* 3B9C4 8003ADC4 A3AF000A */  sb         $t7, 0xa($sp)
/* 3B9C8 8003ADC8 A3B8000B */  sb         $t8, 0xb($sp)
/* 3B9CC 8003ADCC 1B200013 */  blez       $t9, .L8003AE1C
/* 3B9D0 8003ADD0 AFA00000 */   sw        $zero, ($sp)
.L8003ADD4:
/* 3B9D4 8003ADD4 27A90004 */  addiu      $t1, $sp, 4
/* 3B9D8 8003ADD8 8D210000 */  lw         $at, ($t1)
/* 3B9DC 8003ADDC 8FA8000C */  lw         $t0, 0xc($sp)
/* 3B9E0 8003ADE0 3C188009 */  lui        $t8, 0x8009
/* 3B9E4 8003ADE4 A9010000 */  swl        $at, ($t0)
/* 3B9E8 8003ADE8 B9010003 */  swr        $at, 3($t0)
/* 3B9EC 8003ADEC 8D2B0004 */  lw         $t3, 4($t1)
/* 3B9F0 8003ADF0 A90B0004 */  swl        $t3, 4($t0)
/* 3B9F4 8003ADF4 B90B0007 */  swr        $t3, 7($t0)
/* 3B9F8 8003ADF8 8FAE0000 */  lw         $t6, ($sp)
/* 3B9FC 8003ADFC 93185491 */  lbu        $t8, 0x5491($t8)
/* 3BA00 8003AE00 8FAC000C */  lw         $t4, 0xc($sp)
/* 3BA04 8003AE04 25CF0001 */  addiu      $t7, $t6, 1
/* 3BA08 8003AE08 01F8082A */  slt        $at, $t7, $t8
/* 3BA0C 8003AE0C 258D0008 */  addiu      $t5, $t4, 8
/* 3BA10 8003AE10 AFAF0000 */  sw         $t7, ($sp)
/* 3BA14 8003AE14 1420FFEF */  bnez       $at, .L8003ADD4
/* 3BA18 8003AE18 AFAD000C */   sw        $t5, 0xc($sp)
.L8003AE1C:
/* 3BA1C 8003AE1C 8FAA000C */  lw         $t2, 0xc($sp)
/* 3BA20 8003AE20 241900FE */  addiu      $t9, $zero, 0xfe
/* 3BA24 8003AE24 27BD0010 */  addiu      $sp, $sp, 0x10
/* 3BA28 8003AE28 03E00008 */  jr         $ra
/* 3BA2C 8003AE2C A1590000 */   sb        $t9, ($t2)

glabel func_8003AE30
/* 3BA30 8003AE30 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 3BA34 8003AE34 AFA40150 */  sw         $a0, 0x150($sp)
/* 3BA38 8003AE38 8FAF0150 */  lw         $t7, 0x150($sp)
/* 3BA3C 8003AE3C AFA50154 */  sw         $a1, 0x154($sp)
/* 3BA40 8003AE40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BA44 8003AE44 AFA60158 */  sw         $a2, 0x158($sp)
/* 3BA48 8003AE48 8FAE0154 */  lw         $t6, 0x154($sp)
/* 3BA4C 8003AE4C 8DF80050 */  lw         $t8, 0x50($t7)
/* 3BA50 8003AE50 01D8082A */  slt        $at, $t6, $t8
/* 3BA54 8003AE54 10200003 */  beqz       $at, .L8003AE64
/* 3BA58 8003AE58 00000000 */   nop       
/* 3BA5C 8003AE5C 05C10003 */  bgez       $t6, .L8003AE6C
/* 3BA60 8003AE60 00000000 */   nop       
.L8003AE64:
/* 3BA64 8003AE64 100000AA */  b          .L8003B110
/* 3BA68 8003AE68 24020005 */   addiu     $v0, $zero, 5
.L8003AE6C:
/* 3BA6C 8003AE6C 8FB90150 */  lw         $t9, 0x150($sp)
/* 3BA70 8003AE70 8F280000 */  lw         $t0, ($t9)
/* 3BA74 8003AE74 31090001 */  andi       $t1, $t0, 1
/* 3BA78 8003AE78 15200003 */  bnez       $t1, .L8003AE88
/* 3BA7C 8003AE7C 00000000 */   nop       
/* 3BA80 8003AE80 100000A3 */  b          .L8003B110
/* 3BA84 8003AE84 24020005 */   addiu     $v0, $zero, 5
.L8003AE88:
/* 3BA88 8003AE88 0C0114F0 */  jal        func_800453C0
/* 3BA8C 8003AE8C 8FA40150 */   lw        $a0, 0x150($sp)
/* 3BA90 8003AE90 24010002 */  addiu      $at, $zero, 2
/* 3BA94 8003AE94 14410003 */  bne        $v0, $at, .L8003AEA4
/* 3BA98 8003AE98 00000000 */   nop       
/* 3BA9C 8003AE9C 1000009C */  b          .L8003B110
/* 3BAA0 8003AEA0 24020002 */   addiu     $v0, $zero, 2
.L8003AEA4:
/* 3BAA4 8003AEA4 8FAA0150 */  lw         $t2, 0x150($sp)
/* 3BAA8 8003AEA8 914B0065 */  lbu        $t3, 0x65($t2)
/* 3BAAC 8003AEAC 1160000A */  beqz       $t3, .L8003AED8
/* 3BAB0 8003AEB0 00000000 */   nop       
/* 3BAB4 8003AEB4 A1400065 */  sb         $zero, 0x65($t2)
/* 3BAB8 8003AEB8 0C0115F7 */  jal        func_800457DC
/* 3BABC 8003AEBC 8FA40150 */   lw        $a0, 0x150($sp)
/* 3BAC0 8003AEC0 AFA2014C */  sw         $v0, 0x14c($sp)
/* 3BAC4 8003AEC4 8FAC014C */  lw         $t4, 0x14c($sp)
/* 3BAC8 8003AEC8 11800003 */  beqz       $t4, .L8003AED8
/* 3BACC 8003AECC 00000000 */   nop       
/* 3BAD0 8003AED0 1000008F */  b          .L8003B110
/* 3BAD4 8003AED4 01801025 */   or        $v0, $t4, $zero
.L8003AED8:
/* 3BAD8 8003AED8 8FAD0150 */  lw         $t5, 0x150($sp)
/* 3BADC 8003AEDC 8FB80154 */  lw         $t8, 0x154($sp)
/* 3BAE0 8003AEE0 27A70028 */  addiu      $a3, $sp, 0x28
/* 3BAE4 8003AEE4 8DAF005C */  lw         $t7, 0x5c($t5)
/* 3BAE8 8003AEE8 8DA40004 */  lw         $a0, 4($t5)
/* 3BAEC 8003AEEC 8DA50008 */  lw         $a1, 8($t5)
/* 3BAF0 8003AEF0 0C011614 */  jal        func_80045850
/* 3BAF4 8003AEF4 01F83021 */   addu      $a2, $t7, $t8
/* 3BAF8 8003AEF8 AFA2014C */  sw         $v0, 0x14c($sp)
/* 3BAFC 8003AEFC 8FAE014C */  lw         $t6, 0x14c($sp)
/* 3BB00 8003AF00 11C00003 */  beqz       $t6, .L8003AF10
/* 3BB04 8003AF04 00000000 */   nop       
/* 3BB08 8003AF08 10000081 */  b          .L8003B110
/* 3BB0C 8003AF0C 01C01025 */   or        $v0, $t6, $zero
.L8003AF10:
/* 3BB10 8003AF10 97B9002C */  lhu        $t9, 0x2c($sp)
/* 3BB14 8003AF14 13200004 */  beqz       $t9, .L8003AF28
/* 3BB18 8003AF18 00000000 */   nop       
/* 3BB1C 8003AF1C 8FA80028 */  lw         $t0, 0x28($sp)
/* 3BB20 8003AF20 15000003 */  bnez       $t0, .L8003AF30
/* 3BB24 8003AF24 00000000 */   nop       
.L8003AF28:
/* 3BB28 8003AF28 10000079 */  b          .L8003B110
/* 3BB2C 8003AF2C 24020005 */   addiu     $v0, $zero, 5
.L8003AF30:
/* 3BB30 8003AF30 8FAB0150 */  lw         $t3, 0x150($sp)
/* 3BB34 8003AF34 97A9002E */  lhu        $t1, 0x2e($sp)
/* 3BB38 8003AF38 8D6A0060 */  lw         $t2, 0x60($t3)
/* 3BB3C 8003AF3C 012A082A */  slt        $at, $t1, $t2
/* 3BB40 8003AF40 10200003 */  beqz       $at, .L8003AF50
/* 3BB44 8003AF44 00000000 */   nop       
/* 3BB48 8003AF48 10000071 */  b          .L8003B110
/* 3BB4C 8003AF4C 24020003 */   addiu     $v0, $zero, 3
.L8003AF50:
/* 3BB50 8003AF50 93AC002F */  lbu        $t4, 0x2f($sp)
/* 3BB54 8003AF54 93AD002E */  lbu        $t5, 0x2e($sp)
/* 3BB58 8003AF58 8FAF0150 */  lw         $t7, 0x150($sp)
/* 3BB5C 8003AF5C AFA00148 */  sw         $zero, 0x148($sp)
/* 3BB60 8003AF60 A3AC001E */  sb         $t4, 0x1e($sp)
/* 3BB64 8003AF64 A3AD001F */  sb         $t5, 0x1f($sp)
/* 3BB68 8003AF68 91F80064 */  lbu        $t8, 0x64($t7)
/* 3BB6C 8003AF6C 01B8082A */  slt        $at, $t5, $t8
/* 3BB70 8003AF70 1020003E */  beqz       $at, .L8003B06C
/* 3BB74 8003AF74 00000000 */   nop       
.L8003AF78:
/* 3BB78 8003AF78 8FA40150 */  lw         $a0, 0x150($sp)
/* 3BB7C 8003AF7C 27A50048 */  addiu      $a1, $sp, 0x48
/* 3BB80 8003AF80 00003025 */  or         $a2, $zero, $zero
/* 3BB84 8003AF84 0C01152F */  jal        func_800454BC
/* 3BB88 8003AF88 93A7001F */   lbu       $a3, 0x1f($sp)
/* 3BB8C 8003AF8C AFA2014C */  sw         $v0, 0x14c($sp)
/* 3BB90 8003AF90 8FAE014C */  lw         $t6, 0x14c($sp)
/* 3BB94 8003AF94 11C00003 */  beqz       $t6, .L8003AFA4
/* 3BB98 8003AF98 00000000 */   nop       
/* 3BB9C 8003AF9C 1000005C */  b          .L8003B110
/* 3BBA0 8003AFA0 01C01025 */   or        $v0, $t6, $zero
.L8003AFA4:
/* 3BBA4 8003AFA4 93A8001E */  lbu        $t0, 0x1e($sp)
/* 3BBA8 8003AFA8 27A90048 */  addiu      $t1, $sp, 0x48
/* 3BBAC 8003AFAC 27B90024 */  addiu      $t9, $sp, 0x24
/* 3BBB0 8003AFB0 00085840 */  sll        $t3, $t0, 1
/* 3BBB4 8003AFB4 01695021 */  addu       $t2, $t3, $t1
/* 3BBB8 8003AFB8 95410000 */  lhu        $at, ($t2)
/* 3BBBC 8003AFBC A7210000 */  sh         $at, ($t9)
/* 3BBC0 8003AFC0 8FAD0148 */  lw         $t5, 0x148($sp)
/* 3BBC4 8003AFC4 8FA80150 */  lw         $t0, 0x150($sp)
/* 3BBC8 8003AFC8 97AE0024 */  lhu        $t6, 0x24($sp)
/* 3BBCC 8003AFCC 25B80001 */  addiu      $t8, $t5, 1
/* 3BBD0 8003AFD0 AFB80148 */  sw         $t8, 0x148($sp)
/* 3BBD4 8003AFD4 8D0B0060 */  lw         $t3, 0x60($t0)
/* 3BBD8 8003AFD8 01CB082A */  slt        $at, $t6, $t3
/* 3BBDC 8003AFDC 14200019 */  bnez       $at, .L8003B044
/* 3BBE0 8003AFE0 00000000 */   nop       
.L8003AFE4:
/* 3BBE4 8003AFE4 8FA90148 */  lw         $t1, 0x148($sp)
/* 3BBE8 8003AFE8 93AA0025 */  lbu        $t2, 0x25($sp)
/* 3BBEC 8003AFEC 27AD0048 */  addiu      $t5, $sp, 0x48
/* 3BBF0 8003AFF0 252C0001 */  addiu      $t4, $t1, 1
/* 3BBF4 8003AFF4 000A7840 */  sll        $t7, $t2, 1
/* 3BBF8 8003AFF8 AFAC0148 */  sw         $t4, 0x148($sp)
/* 3BBFC 8003AFFC 01EDC021 */  addu       $t8, $t7, $t5
/* 3BC00 8003B000 97010000 */  lhu        $at, ($t8)
/* 3BC04 8003B004 27B90024 */  addiu      $t9, $sp, 0x24
/* 3BC08 8003B008 A7210000 */  sh         $at, ($t9)
/* 3BC0C 8003B00C 93AC001F */  lbu        $t4, 0x1f($sp)
/* 3BC10 8003B010 93A90024 */  lbu        $t1, 0x24($sp)
/* 3BC14 8003B014 112C0005 */  beq        $t1, $t4, .L8003B02C
/* 3BC18 8003B018 00000000 */   nop       
/* 3BC1C 8003B01C 93AA0025 */  lbu        $t2, 0x25($sp)
/* 3BC20 8003B020 A3A9001F */  sb         $t1, 0x1f($sp)
/* 3BC24 8003B024 10000007 */  b          .L8003B044
/* 3BC28 8003B028 A3AA001E */   sb        $t2, 0x1e($sp)
.L8003B02C:
/* 3BC2C 8003B02C 8FAD0150 */  lw         $t5, 0x150($sp)
/* 3BC30 8003B030 97AF0024 */  lhu        $t7, 0x24($sp)
/* 3BC34 8003B034 8DAE0060 */  lw         $t6, 0x60($t5)
/* 3BC38 8003B038 01EE082A */  slt        $at, $t7, $t6
/* 3BC3C 8003B03C 1020FFE9 */  beqz       $at, .L8003AFE4
/* 3BC40 8003B040 00000000 */   nop       
.L8003B044:
/* 3BC44 8003B044 97A80024 */  lhu        $t0, 0x24($sp)
/* 3BC48 8003B048 24010001 */  addiu      $at, $zero, 1
/* 3BC4C 8003B04C 11010007 */  beq        $t0, $at, .L8003B06C
/* 3BC50 8003B050 00000000 */   nop       
/* 3BC54 8003B054 8FB80150 */  lw         $t8, 0x150($sp)
/* 3BC58 8003B058 93B9001F */  lbu        $t9, 0x1f($sp)
/* 3BC5C 8003B05C 930B0064 */  lbu        $t3, 0x64($t8)
/* 3BC60 8003B060 032B082A */  slt        $at, $t9, $t3
/* 3BC64 8003B064 1420FFC4 */  bnez       $at, .L8003AF78
/* 3BC68 8003B068 00000000 */   nop       
.L8003B06C:
/* 3BC6C 8003B06C 97AC0024 */  lhu        $t4, 0x24($sp)
/* 3BC70 8003B070 24010001 */  addiu      $at, $zero, 1
/* 3BC74 8003B074 11810003 */  beq        $t4, $at, .L8003B084
/* 3BC78 8003B078 00000000 */   nop       
/* 3BC7C 8003B07C 10000024 */  b          .L8003B110
/* 3BC80 8003B080 24020003 */   addiu     $v0, $zero, 3
.L8003B084:
/* 3BC84 8003B084 8FA90148 */  lw         $t1, 0x148($sp)
/* 3BC88 8003B088 8FAD0158 */  lw         $t5, 0x158($sp)
/* 3BC8C 8003B08C 00095200 */  sll        $t2, $t1, 8
/* 3BC90 8003B090 ADAA0000 */  sw         $t2, ($t5)
/* 3BC94 8003B094 8FAE0158 */  lw         $t6, 0x158($sp)
/* 3BC98 8003B098 97AF002C */  lhu        $t7, 0x2c($sp)
/* 3BC9C 8003B09C A5CF0008 */  sh         $t7, 8($t6)
/* 3BCA0 8003B0A0 8FB80158 */  lw         $t8, 0x158($sp)
/* 3BCA4 8003B0A4 8FA80028 */  lw         $t0, 0x28($sp)
/* 3BCA8 8003B0A8 AF080004 */  sw         $t0, 4($t8)
/* 3BCAC 8003B0AC AFA00020 */  sw         $zero, 0x20($sp)
.L8003B0B0:
/* 3BCB0 8003B0B0 8FB90020 */  lw         $t9, 0x20($sp)
/* 3BCB4 8003B0B4 8FAC0158 */  lw         $t4, 0x158($sp)
/* 3BCB8 8003B0B8 03B95821 */  addu       $t3, $sp, $t9
/* 3BCBC 8003B0BC 916B0038 */  lbu        $t3, 0x38($t3)
/* 3BCC0 8003B0C0 01994821 */  addu       $t1, $t4, $t9
/* 3BCC4 8003B0C4 A12B000E */  sb         $t3, 0xe($t1)
/* 3BCC8 8003B0C8 8FAA0020 */  lw         $t2, 0x20($sp)
/* 3BCCC 8003B0CC 254D0001 */  addiu      $t5, $t2, 1
/* 3BCD0 8003B0D0 29A10010 */  slti       $at, $t5, 0x10
/* 3BCD4 8003B0D4 1420FFF6 */  bnez       $at, .L8003B0B0
/* 3BCD8 8003B0D8 AFAD0020 */   sw        $t5, 0x20($sp)
/* 3BCDC 8003B0DC AFA00020 */  sw         $zero, 0x20($sp)
.L8003B0E0:
/* 3BCE0 8003B0E0 8FAF0020 */  lw         $t7, 0x20($sp)
/* 3BCE4 8003B0E4 8FA80158 */  lw         $t0, 0x158($sp)
/* 3BCE8 8003B0E8 03AF7021 */  addu       $t6, $sp, $t7
/* 3BCEC 8003B0EC 91CE0034 */  lbu        $t6, 0x34($t6)
/* 3BCF0 8003B0F0 010FC021 */  addu       $t8, $t0, $t7
/* 3BCF4 8003B0F4 A30E000A */  sb         $t6, 0xa($t8)
/* 3BCF8 8003B0F8 8FAC0020 */  lw         $t4, 0x20($sp)
/* 3BCFC 8003B0FC 25990001 */  addiu      $t9, $t4, 1
/* 3BD00 8003B100 2B210004 */  slti       $at, $t9, 4
/* 3BD04 8003B104 1420FFF6 */  bnez       $at, .L8003B0E0
/* 3BD08 8003B108 AFB90020 */   sw        $t9, 0x20($sp)
/* 3BD0C 8003B10C 00001025 */  or         $v0, $zero, $zero
.L8003B110:
/* 3BD10 8003B110 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BD14 8003B114 27BD0150 */  addiu      $sp, $sp, 0x150
/* 3BD18 8003B118 03E00008 */  jr         $ra
/* 3BD1C 8003B11C 00000000 */   nop       

glabel func_8003B120
/* 3BD20 8003B120 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 3BD24 8003B124 AFA40130 */  sw         $a0, 0x130($sp)
/* 3BD28 8003B128 8FAE0130 */  lw         $t6, 0x130($sp)
/* 3BD2C 8003B12C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BD30 8003B130 AFA50134 */  sw         $a1, 0x134($sp)
/* 3BD34 8003B134 AFA00128 */  sw         $zero, 0x128($sp)
/* 3BD38 8003B138 AFA00024 */  sw         $zero, 0x24($sp)
/* 3BD3C 8003B13C 8DCF0000 */  lw         $t7, ($t6)
/* 3BD40 8003B140 31F80001 */  andi       $t8, $t7, 1
/* 3BD44 8003B144 17000003 */  bnez       $t8, .L8003B154
/* 3BD48 8003B148 00000000 */   nop       
/* 3BD4C 8003B14C 10000043 */  b          .L8003B25C
/* 3BD50 8003B150 24020005 */   addiu     $v0, $zero, 5
.L8003B154:
/* 3BD54 8003B154 0C0114F0 */  jal        func_800453C0
/* 3BD58 8003B158 8FA40130 */   lw        $a0, 0x130($sp)
/* 3BD5C 8003B15C 24010002 */  addiu      $at, $zero, 2
/* 3BD60 8003B160 14410003 */  bne        $v0, $at, .L8003B170
/* 3BD64 8003B164 00000000 */   nop       
/* 3BD68 8003B168 1000003C */  b          .L8003B25C
/* 3BD6C 8003B16C 24020002 */   addiu     $v0, $zero, 2
.L8003B170:
/* 3BD70 8003B170 8FB90130 */  lw         $t9, 0x130($sp)
/* 3BD74 8003B174 A3A00023 */  sb         $zero, 0x23($sp)
/* 3BD78 8003B178 93280064 */  lbu        $t0, 0x64($t9)
/* 3BD7C 8003B17C 19000031 */  blez       $t0, .L8003B244
/* 3BD80 8003B180 00000000 */   nop       
.L8003B184:
/* 3BD84 8003B184 8FA40130 */  lw         $a0, 0x130($sp)
/* 3BD88 8003B188 27A50028 */  addiu      $a1, $sp, 0x28
/* 3BD8C 8003B18C 00003025 */  or         $a2, $zero, $zero
/* 3BD90 8003B190 0C01152F */  jal        func_800454BC
/* 3BD94 8003B194 93A70023 */   lbu       $a3, 0x23($sp)
/* 3BD98 8003B198 AFA20024 */  sw         $v0, 0x24($sp)
/* 3BD9C 8003B19C 8FA90024 */  lw         $t1, 0x24($sp)
/* 3BDA0 8003B1A0 11200003 */  beqz       $t1, .L8003B1B0
/* 3BDA4 8003B1A4 00000000 */   nop       
/* 3BDA8 8003B1A8 1000002C */  b          .L8003B25C
/* 3BDAC 8003B1AC 01201025 */   or        $v0, $t1, $zero
.L8003B1B0:
/* 3BDB0 8003B1B0 93AA0023 */  lbu        $t2, 0x23($sp)
/* 3BDB4 8003B1B4 19400004 */  blez       $t2, .L8003B1C8
/* 3BDB8 8003B1B8 00000000 */   nop       
/* 3BDBC 8003B1BC 240B0001 */  addiu      $t3, $zero, 1
/* 3BDC0 8003B1C0 10000004 */  b          .L8003B1D4
/* 3BDC4 8003B1C4 AFAB001C */   sw        $t3, 0x1c($sp)
.L8003B1C8:
/* 3BDC8 8003B1C8 8FAC0130 */  lw         $t4, 0x130($sp)
/* 3BDCC 8003B1CC 8D8D0060 */  lw         $t5, 0x60($t4)
/* 3BDD0 8003B1D0 AFAD001C */  sw         $t5, 0x1c($sp)
.L8003B1D4:
/* 3BDD4 8003B1D4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 3BDD8 8003B1D8 29C10080 */  slti       $at, $t6, 0x80
/* 3BDDC 8003B1DC 10200010 */  beqz       $at, .L8003B220
/* 3BDE0 8003B1E0 AFAE012C */   sw        $t6, 0x12c($sp)
.L8003B1E4:
/* 3BDE4 8003B1E4 8FAF012C */  lw         $t7, 0x12c($sp)
/* 3BDE8 8003B1E8 24010003 */  addiu      $at, $zero, 3
/* 3BDEC 8003B1EC 000FC040 */  sll        $t8, $t7, 1
/* 3BDF0 8003B1F0 03B8C821 */  addu       $t9, $sp, $t8
/* 3BDF4 8003B1F4 97390028 */  lhu        $t9, 0x28($t9)
/* 3BDF8 8003B1F8 17210004 */  bne        $t9, $at, .L8003B20C
/* 3BDFC 8003B1FC 00000000 */   nop       
/* 3BE00 8003B200 8FA80128 */  lw         $t0, 0x128($sp)
/* 3BE04 8003B204 25090001 */  addiu      $t1, $t0, 1
/* 3BE08 8003B208 AFA90128 */  sw         $t1, 0x128($sp)
.L8003B20C:
/* 3BE0C 8003B20C 8FAA012C */  lw         $t2, 0x12c($sp)
/* 3BE10 8003B210 254B0001 */  addiu      $t3, $t2, 1
/* 3BE14 8003B214 29610080 */  slti       $at, $t3, 0x80
/* 3BE18 8003B218 1420FFF2 */  bnez       $at, .L8003B1E4
/* 3BE1C 8003B21C AFAB012C */   sw        $t3, 0x12c($sp)
.L8003B220:
/* 3BE20 8003B220 93AC0023 */  lbu        $t4, 0x23($sp)
/* 3BE24 8003B224 8FAF0130 */  lw         $t7, 0x130($sp)
/* 3BE28 8003B228 258D0001 */  addiu      $t5, $t4, 1
/* 3BE2C 8003B22C A3AD0023 */  sb         $t5, 0x23($sp)
/* 3BE30 8003B230 91F80064 */  lbu        $t8, 0x64($t7)
/* 3BE34 8003B234 31AE00FF */  andi       $t6, $t5, 0xff
/* 3BE38 8003B238 01D8082A */  slt        $at, $t6, $t8
/* 3BE3C 8003B23C 1420FFD1 */  bnez       $at, .L8003B184
/* 3BE40 8003B240 00000000 */   nop       
.L8003B244:
/* 3BE44 8003B244 8FB90128 */  lw         $t9, 0x128($sp)
/* 3BE48 8003B248 8FAA0134 */  lw         $t2, 0x134($sp)
/* 3BE4C 8003B24C 00001025 */  or         $v0, $zero, $zero
/* 3BE50 8003B250 001940C0 */  sll        $t0, $t9, 3
/* 3BE54 8003B254 00084940 */  sll        $t1, $t0, 5
/* 3BE58 8003B258 AD490000 */  sw         $t1, ($t2)
.L8003B25C:
/* 3BE5C 8003B25C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BE60 8003B260 27BD0130 */  addiu      $sp, $sp, 0x130
/* 3BE64 8003B264 03E00008 */  jr         $ra
/* 3BE68 8003B268 00000000 */   nop       
/* 3BE6C 8003B26C 00000000 */  nop        
