glabel func_8003BA20
/* 3C620 8003BA20 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 3C624 8003BA24 AFA50164 */  sw         $a1, 0x164($sp)
/* 3C628 8003BA28 97AE0166 */  lhu        $t6, 0x166($sp)
/* 3C62C 8003BA2C AFBF0024 */  sw         $ra, 0x24($sp)
/* 3C630 8003BA30 AFA40160 */  sw         $a0, 0x160($sp)
/* 3C634 8003BA34 AFA60168 */  sw         $a2, 0x168($sp)
/* 3C638 8003BA38 AFA7016C */  sw         $a3, 0x16c($sp)
/* 3C63C 8003BA3C 11C00004 */  beqz       $t6, .L8003BA50
/* 3C640 8003BA40 A7A00032 */   sh        $zero, 0x32($sp)
/* 3C644 8003BA44 8FAF0168 */  lw         $t7, 0x168($sp)
/* 3C648 8003BA48 15E00003 */  bnez       $t7, .L8003BA58
/* 3C64C 8003BA4C 00000000 */   nop       
.L8003BA50:
/* 3C650 8003BA50 100000A7 */  b          .L8003BCF0
/* 3C654 8003BA54 24020005 */   addiu     $v0, $zero, 5
.L8003BA58:
/* 3C658 8003BA58 8FB80160 */  lw         $t8, 0x160($sp)
/* 3C65C 8003BA5C 8F190000 */  lw         $t9, ($t8)
/* 3C660 8003BA60 33280001 */  andi       $t0, $t9, 1
/* 3C664 8003BA64 15000003 */  bnez       $t0, .L8003BA74
/* 3C668 8003BA68 00000000 */   nop       
/* 3C66C 8003BA6C 100000A0 */  b          .L8003BCF0
/* 3C670 8003BA70 24020005 */   addiu     $v0, $zero, 5
.L8003BA74:
/* 3C674 8003BA74 0C0114F0 */  jal        func_800453C0
/* 3C678 8003BA78 8FA40160 */   lw        $a0, 0x160($sp)
/* 3C67C 8003BA7C 24010002 */  addiu      $at, $zero, 2
/* 3C680 8003BA80 14410003 */  bne        $v0, $at, .L8003BA90
/* 3C684 8003BA84 00000000 */   nop       
/* 3C688 8003BA88 10000099 */  b          .L8003BCF0
/* 3C68C 8003BA8C 24020002 */   addiu     $v0, $zero, 2
.L8003BA90:
/* 3C690 8003BA90 8FA90160 */  lw         $t1, 0x160($sp)
/* 3C694 8003BA94 912A0065 */  lbu        $t2, 0x65($t1)
/* 3C698 8003BA98 1140000A */  beqz       $t2, .L8003BAC4
/* 3C69C 8003BA9C 00000000 */   nop       
/* 3C6A0 8003BAA0 A1200065 */  sb         $zero, 0x65($t1)
/* 3C6A4 8003BAA4 0C0115F7 */  jal        func_800457DC
/* 3C6A8 8003BAA8 8FA40160 */   lw        $a0, 0x160($sp)
/* 3C6AC 8003BAAC AFA20154 */  sw         $v0, 0x154($sp)
/* 3C6B0 8003BAB0 8FAB0154 */  lw         $t3, 0x154($sp)
/* 3C6B4 8003BAB4 11600003 */  beqz       $t3, .L8003BAC4
/* 3C6B8 8003BAB8 00000000 */   nop       
/* 3C6BC 8003BABC 1000008C */  b          .L8003BCF0
/* 3C6C0 8003BAC0 01601025 */   or        $v0, $t3, $zero
.L8003BAC4:
/* 3C6C4 8003BAC4 8FAC0170 */  lw         $t4, 0x170($sp)
/* 3C6C8 8003BAC8 27AD015C */  addiu      $t5, $sp, 0x15c
/* 3C6CC 8003BACC AFAD0014 */  sw         $t5, 0x14($sp)
/* 3C6D0 8003BAD0 8FA40160 */  lw         $a0, 0x160($sp)
/* 3C6D4 8003BAD4 97A50166 */  lhu        $a1, 0x166($sp)
/* 3C6D8 8003BAD8 8FA60168 */  lw         $a2, 0x168($sp)
/* 3C6DC 8003BADC 8FA7016C */  lw         $a3, 0x16c($sp)
/* 3C6E0 8003BAE0 0C011BF0 */  jal        func_80046FC0
/* 3C6E4 8003BAE4 AFAC0010 */   sw        $t4, 0x10($sp)
/* 3C6E8 8003BAE8 AFA20154 */  sw         $v0, 0x154($sp)
/* 3C6EC 8003BAEC 8FAE0154 */  lw         $t6, 0x154($sp)
/* 3C6F0 8003BAF0 11C00003 */  beqz       $t6, .L8003BB00
/* 3C6F4 8003BAF4 00000000 */   nop       
/* 3C6F8 8003BAF8 1000007D */  b          .L8003BCF0
/* 3C6FC 8003BAFC 01C01025 */   or        $v0, $t6, $zero
.L8003BB00:
/* 3C700 8003BB00 8FAF015C */  lw         $t7, 0x15c($sp)
/* 3C704 8003BB04 2401FFFF */  addiu      $at, $zero, -1
/* 3C708 8003BB08 15E10003 */  bne        $t7, $at, .L8003BB18
/* 3C70C 8003BB0C 00000000 */   nop       
/* 3C710 8003BB10 10000077 */  b          .L8003BCF0
/* 3C714 8003BB14 24020005 */   addiu     $v0, $zero, 5
.L8003BB18:
/* 3C718 8003BB18 8FB80160 */  lw         $t8, 0x160($sp)
/* 3C71C 8003BB1C 8FA8015C */  lw         $t0, 0x15c($sp)
/* 3C720 8003BB20 27A70034 */  addiu      $a3, $sp, 0x34
/* 3C724 8003BB24 8F19005C */  lw         $t9, 0x5c($t8)
/* 3C728 8003BB28 8F040004 */  lw         $a0, 4($t8)
/* 3C72C 8003BB2C 8F050008 */  lw         $a1, 8($t8)
/* 3C730 8003BB30 0C011614 */  jal        func_80045850
/* 3C734 8003BB34 03283021 */   addu      $a2, $t9, $t0
/* 3C738 8003BB38 AFA20154 */  sw         $v0, 0x154($sp)
/* 3C73C 8003BB3C 8FAA0154 */  lw         $t2, 0x154($sp)
/* 3C740 8003BB40 11400003 */  beqz       $t2, .L8003BB50
/* 3C744 8003BB44 00000000 */   nop       
/* 3C748 8003BB48 10000069 */  b          .L8003BCF0
/* 3C74C 8003BB4C 01401025 */   or        $v0, $t2, $zero
.L8003BB50:
/* 3C750 8003BB50 93A9003B */  lbu        $t1, 0x3b($sp)
/* 3C754 8003BB54 93AB003A */  lbu        $t3, 0x3a($sp)
/* 3C758 8003BB58 8FAC0160 */  lw         $t4, 0x160($sp)
/* 3C75C 8003BB5C A3A9002F */  sb         $t1, 0x2f($sp)
/* 3C760 8003BB60 A3AB002E */  sb         $t3, 0x2e($sp)
/* 3C764 8003BB64 918D0064 */  lbu        $t5, 0x64($t4)
/* 3C768 8003BB68 016D082A */  slt        $at, $t3, $t5
/* 3C76C 8003BB6C 10200036 */  beqz       $at, .L8003BC48
/* 3C770 8003BB70 00000000 */   nop       
.L8003BB74:
/* 3C774 8003BB74 8FA40160 */  lw         $a0, 0x160($sp)
/* 3C778 8003BB78 27A50054 */  addiu      $a1, $sp, 0x54
/* 3C77C 8003BB7C 00003025 */  or         $a2, $zero, $zero
/* 3C780 8003BB80 0C01152F */  jal        func_800454BC
/* 3C784 8003BB84 93A7002E */   lbu       $a3, 0x2e($sp)
/* 3C788 8003BB88 AFA20154 */  sw         $v0, 0x154($sp)
/* 3C78C 8003BB8C 8FAE0154 */  lw         $t6, 0x154($sp)
/* 3C790 8003BB90 11C00003 */  beqz       $t6, .L8003BBA0
/* 3C794 8003BB94 00000000 */   nop       
/* 3C798 8003BB98 10000055 */  b          .L8003BCF0
/* 3C79C 8003BB9C 01C01025 */   or        $v0, $t6, $zero
.L8003BBA0:
/* 3C7A0 8003BBA0 93AF002E */  lbu        $t7, 0x2e($sp)
/* 3C7A4 8003BBA4 27B80030 */  addiu      $t8, $sp, 0x30
/* 3C7A8 8003BBA8 24190001 */  addiu      $t9, $zero, 1
/* 3C7AC 8003BBAC AFB90018 */  sw         $t9, 0x18($sp)
/* 3C7B0 8003BBB0 AFB80014 */  sw         $t8, 0x14($sp)
/* 3C7B4 8003BBB4 8FA40160 */  lw         $a0, 0x160($sp)
/* 3C7B8 8003BBB8 27A50054 */  addiu      $a1, $sp, 0x54
/* 3C7BC 8003BBBC 93A6002F */  lbu        $a2, 0x2f($sp)
/* 3C7C0 8003BBC0 27A70032 */  addiu      $a3, $sp, 0x32
/* 3C7C4 8003BBC4 0C00EF40 */  jal        func_8003BD00
/* 3C7C8 8003BBC8 AFAF0010 */   sw        $t7, 0x10($sp)
/* 3C7CC 8003BBCC AFA20154 */  sw         $v0, 0x154($sp)
/* 3C7D0 8003BBD0 8FA80154 */  lw         $t0, 0x154($sp)
/* 3C7D4 8003BBD4 11000003 */  beqz       $t0, .L8003BBE4
/* 3C7D8 8003BBD8 00000000 */   nop       
/* 3C7DC 8003BBDC 10000044 */  b          .L8003BCF0
/* 3C7E0 8003BBE0 01001025 */   or        $v0, $t0, $zero
.L8003BBE4:
/* 3C7E4 8003BBE4 8FA40160 */  lw         $a0, 0x160($sp)
/* 3C7E8 8003BBE8 27A50054 */  addiu      $a1, $sp, 0x54
/* 3C7EC 8003BBEC 24060001 */  addiu      $a2, $zero, 1
/* 3C7F0 8003BBF0 0C01152F */  jal        func_800454BC
/* 3C7F4 8003BBF4 93A7002E */   lbu       $a3, 0x2e($sp)
/* 3C7F8 8003BBF8 AFA20154 */  sw         $v0, 0x154($sp)
/* 3C7FC 8003BBFC 8FAA0154 */  lw         $t2, 0x154($sp)
/* 3C800 8003BC00 11400003 */  beqz       $t2, .L8003BC10
/* 3C804 8003BC04 00000000 */   nop       
/* 3C808 8003BC08 10000039 */  b          .L8003BCF0
/* 3C80C 8003BC0C 01401025 */   or        $v0, $t2, $zero
.L8003BC10:
/* 3C810 8003BC10 97A90030 */  lhu        $t1, 0x30($sp)
/* 3C814 8003BC14 24010001 */  addiu      $at, $zero, 1
/* 3C818 8003BC18 1121000B */  beq        $t1, $at, .L8003BC48
/* 3C81C 8003BC1C 00000000 */   nop       
/* 3C820 8003BC20 93AC0030 */  lbu        $t4, 0x30($sp)
/* 3C824 8003BC24 93AB0031 */  lbu        $t3, 0x31($sp)
/* 3C828 8003BC28 8FAE0160 */  lw         $t6, 0x160($sp)
/* 3C82C 8003BC2C A3AC002E */  sb         $t4, 0x2e($sp)
/* 3C830 8003BC30 A3AB002F */  sb         $t3, 0x2f($sp)
/* 3C834 8003BC34 93AD002E */  lbu        $t5, 0x2e($sp)
/* 3C838 8003BC38 91CF0064 */  lbu        $t7, 0x64($t6)
/* 3C83C 8003BC3C 01AF082A */  slt        $at, $t5, $t7
/* 3C840 8003BC40 1420FFCC */  bnez       $at, .L8003BB74
/* 3C844 8003BC44 00000000 */   nop       
.L8003BC48:
/* 3C848 8003BC48 8FB90160 */  lw         $t9, 0x160($sp)
/* 3C84C 8003BC4C 93B8002E */  lbu        $t8, 0x2e($sp)
/* 3C850 8003BC50 93280064 */  lbu        $t0, 0x64($t9)
/* 3C854 8003BC54 0308082A */  slt        $at, $t8, $t0
/* 3C858 8003BC58 14200003 */  bnez       $at, .L8003BC68
/* 3C85C 8003BC5C 00000000 */   nop       
/* 3C860 8003BC60 10000023 */  b          .L8003BCF0
/* 3C864 8003BC64 24020003 */   addiu     $v0, $zero, 3
.L8003BC68:
/* 3C868 8003BC68 AFA00034 */  sw         $zero, 0x34($sp)
/* 3C86C 8003BC6C A7A00038 */  sh         $zero, 0x38($sp)
/* 3C870 8003BC70 A7A0003A */  sh         $zero, 0x3a($sp)
/* 3C874 8003BC74 A7A0003E */  sh         $zero, 0x3e($sp)
/* 3C878 8003BC78 AFA00158 */  sw         $zero, 0x158($sp)
.L8003BC7C:
/* 3C87C 8003BC7C 8FAA0158 */  lw         $t2, 0x158($sp)
/* 3C880 8003BC80 03AA4821 */  addu       $t1, $sp, $t2
/* 3C884 8003BC84 A1200044 */  sb         $zero, 0x44($t1)
/* 3C888 8003BC88 8FAC0158 */  lw         $t4, 0x158($sp)
/* 3C88C 8003BC8C 258B0001 */  addiu      $t3, $t4, 1
/* 3C890 8003BC90 29610010 */  slti       $at, $t3, 0x10
/* 3C894 8003BC94 1420FFF9 */  bnez       $at, .L8003BC7C
/* 3C898 8003BC98 AFAB0158 */   sw        $t3, 0x158($sp)
/* 3C89C 8003BC9C AFA00158 */  sw         $zero, 0x158($sp)
.L8003BCA0:
/* 3C8A0 8003BCA0 8FAE0158 */  lw         $t6, 0x158($sp)
/* 3C8A4 8003BCA4 03AE6821 */  addu       $t5, $sp, $t6
/* 3C8A8 8003BCA8 A1A00040 */  sb         $zero, 0x40($t5)
/* 3C8AC 8003BCAC 8FAF0158 */  lw         $t7, 0x158($sp)
/* 3C8B0 8003BCB0 25F90001 */  addiu      $t9, $t7, 1
/* 3C8B4 8003BCB4 2B210004 */  slti       $at, $t9, 4
/* 3C8B8 8003BCB8 1420FFF9 */  bnez       $at, .L8003BCA0
/* 3C8BC 8003BCBC AFB90158 */   sw        $t9, 0x158($sp)
/* 3C8C0 8003BCC0 8FB80160 */  lw         $t8, 0x160($sp)
/* 3C8C4 8003BCC4 A3A0003C */  sb         $zero, 0x3c($sp)
/* 3C8C8 8003BCC8 8FAA015C */  lw         $t2, 0x15c($sp)
/* 3C8CC 8003BCCC 8F08005C */  lw         $t0, 0x5c($t8)
/* 3C8D0 8003BCD0 8F050008 */  lw         $a1, 8($t8)
/* 3C8D4 8003BCD4 8F040004 */  lw         $a0, 4($t8)
/* 3C8D8 8003BCD8 AFA00010 */  sw         $zero, 0x10($sp)
/* 3C8DC 8003BCDC 27A70034 */  addiu      $a3, $sp, 0x34
/* 3C8E0 8003BCE0 0C011AE0 */  jal        func_80046B80
/* 3C8E4 8003BCE4 010A3021 */   addu      $a2, $t0, $t2
/* 3C8E8 8003BCE8 AFA20154 */  sw         $v0, 0x154($sp)
/* 3C8EC 8003BCEC 8FA20154 */  lw         $v0, 0x154($sp)
.L8003BCF0:
/* 3C8F0 8003BCF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3C8F4 8003BCF4 27BD0160 */  addiu      $sp, $sp, 0x160
/* 3C8F8 8003BCF8 03E00008 */  jr         $ra
/* 3C8FC 8003BCFC 00000000 */   nop       

glabel func_8003BD00
/* 3C900 8003BD00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3C904 8003BD04 AFA60030 */  sw         $a2, 0x30($sp)
/* 3C908 8003BD08 93B80033 */  lbu        $t8, 0x33($sp)
/* 3C90C 8003BD0C AFA5002C */  sw         $a1, 0x2c($sp)
/* 3C910 8003BD10 8FAF002C */  lw         $t7, 0x2c($sp)
/* 3C914 8003BD14 0018C840 */  sll        $t9, $t8, 1
/* 3C918 8003BD18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3C91C 8003BD1C AFA40028 */  sw         $a0, 0x28($sp)
/* 3C920 8003BD20 AFA70034 */  sw         $a3, 0x34($sp)
/* 3C924 8003BD24 AFA0001C */  sw         $zero, 0x1c($sp)
/* 3C928 8003BD28 01F94021 */  addu       $t0, $t7, $t9
/* 3C92C 8003BD2C 95010000 */  lhu        $at, ($t0)
/* 3C930 8003BD30 27AE0024 */  addiu      $t6, $sp, 0x24
/* 3C934 8003BD34 A5C10000 */  sh         $at, ($t6)
/* 3C938 8003BD38 97AC0024 */  lhu        $t4, 0x24($sp)
/* 3C93C 8003BD3C 24010001 */  addiu      $at, $zero, 1
/* 3C940 8003BD40 1181000B */  beq        $t4, $at, .L8003BD70
/* 3C944 8003BD44 00000000 */   nop       
/* 3C948 8003BD48 93AD0024 */  lbu        $t5, 0x24($sp)
/* 3C94C 8003BD4C 19A00004 */  blez       $t5, .L8003BD60
/* 3C950 8003BD50 00000000 */   nop       
/* 3C954 8003BD54 24180001 */  addiu      $t8, $zero, 1
/* 3C958 8003BD58 1000000E */  b          .L8003BD94
/* 3C95C 8003BD5C AFB80018 */   sw        $t8, 0x18($sp)
.L8003BD60:
/* 3C960 8003BD60 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3C964 8003BD64 8DF90060 */  lw         $t9, 0x60($t7)
/* 3C968 8003BD68 1000000A */  b          .L8003BD94
/* 3C96C 8003BD6C AFB90018 */   sw        $t9, 0x18($sp)
.L8003BD70:
/* 3C970 8003BD70 93AA003B */  lbu        $t2, 0x3b($sp)
/* 3C974 8003BD74 19400004 */  blez       $t2, .L8003BD88
/* 3C978 8003BD78 00000000 */   nop       
/* 3C97C 8003BD7C 24090001 */  addiu      $t1, $zero, 1
/* 3C980 8003BD80 10000004 */  b          .L8003BD94
/* 3C984 8003BD84 AFA90018 */   sw        $t1, 0x18($sp)
.L8003BD88:
/* 3C988 8003BD88 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3C98C 8003BD8C 8DC80060 */  lw         $t0, 0x60($t6)
/* 3C990 8003BD90 AFA80018 */  sw         $t0, 0x18($sp)
.L8003BD94:
/* 3C994 8003BD94 93AB0025 */  lbu        $t3, 0x25($sp)
/* 3C998 8003BD98 8FAC0018 */  lw         $t4, 0x18($sp)
/* 3C99C 8003BD9C 016C082A */  slt        $at, $t3, $t4
/* 3C9A0 8003BDA0 10200007 */  beqz       $at, .L8003BDC0
/* 3C9A4 8003BDA4 00000000 */   nop       
/* 3C9A8 8003BDA8 97AD0024 */  lhu        $t5, 0x24($sp)
/* 3C9AC 8003BDAC 24010001 */  addiu      $at, $zero, 1
/* 3C9B0 8003BDB0 11A10003 */  beq        $t5, $at, .L8003BDC0
/* 3C9B4 8003BDB4 00000000 */   nop       
/* 3C9B8 8003BDB8 1000005B */  b          .L8003BF28
/* 3C9BC 8003BDBC 24020003 */   addiu     $v0, $zero, 3
.L8003BDC0:
/* 3C9C0 8003BDC0 27AF0024 */  addiu      $t7, $sp, 0x24
/* 3C9C4 8003BDC4 95E10000 */  lhu        $at, ($t7)
/* 3C9C8 8003BDC8 8FB8003C */  lw         $t8, 0x3c($sp)
/* 3C9CC 8003BDCC A7010000 */  sh         $at, ($t8)
/* 3C9D0 8003BDD0 8FA90040 */  lw         $t1, 0x40($sp)
/* 3C9D4 8003BDD4 24010001 */  addiu      $at, $zero, 1
/* 3C9D8 8003BDD8 15210007 */  bne        $t1, $at, .L8003BDF8
/* 3C9DC 8003BDDC 00000000 */   nop       
/* 3C9E0 8003BDE0 93AB0033 */  lbu        $t3, 0x33($sp)
/* 3C9E4 8003BDE4 8FA8002C */  lw         $t0, 0x2c($sp)
/* 3C9E8 8003BDE8 240E0003 */  addiu      $t6, $zero, 3
/* 3C9EC 8003BDEC 000B6040 */  sll        $t4, $t3, 1
/* 3C9F0 8003BDF0 010C6821 */  addu       $t5, $t0, $t4
/* 3C9F4 8003BDF4 A5AE0000 */  sh         $t6, ($t5)
.L8003BDF8:
/* 3C9F8 8003BDF8 8FA40028 */  lw         $a0, 0x28($sp)
/* 3C9FC 8003BDFC 93A50033 */  lbu        $a1, 0x33($sp)
/* 3CA00 8003BE00 8FA60034 */  lw         $a2, 0x34($sp)
/* 3CA04 8003BE04 0C00EFCE */  jal        func_8003BF38
/* 3CA08 8003BE08 93A7003B */   lbu       $a3, 0x3b($sp)
/* 3CA0C 8003BE0C AFA2001C */  sw         $v0, 0x1c($sp)
/* 3CA10 8003BE10 8FB9001C */  lw         $t9, 0x1c($sp)
/* 3CA14 8003BE14 13200003 */  beqz       $t9, .L8003BE24
/* 3CA18 8003BE18 00000000 */   nop       
/* 3CA1C 8003BE1C 10000042 */  b          .L8003BF28
/* 3CA20 8003BE20 03201025 */   or        $v0, $t9, $zero
.L8003BE24:
/* 3CA24 8003BE24 97B80024 */  lhu        $t8, 0x24($sp)
/* 3CA28 8003BE28 24010001 */  addiu      $at, $zero, 1
/* 3CA2C 8003BE2C 17010003 */  bne        $t8, $at, .L8003BE3C
/* 3CA30 8003BE30 00000000 */   nop       
/* 3CA34 8003BE34 1000003C */  b          .L8003BF28
/* 3CA38 8003BE38 00001025 */   or        $v0, $zero, $zero
.L8003BE3C:
/* 3CA3C 8003BE3C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 3CA40 8003BE40 97AF0024 */  lhu        $t7, 0x24($sp)
/* 3CA44 8003BE44 8D490060 */  lw         $t1, 0x60($t2)
/* 3CA48 8003BE48 01E9082A */  slt        $at, $t7, $t1
/* 3CA4C 8003BE4C 14200025 */  bnez       $at, .L8003BEE4
/* 3CA50 8003BE50 00000000 */   nop       
.L8003BE54:
/* 3CA54 8003BE54 93AE0025 */  lbu        $t6, 0x25($sp)
/* 3CA58 8003BE58 97AB0024 */  lhu        $t3, 0x24($sp)
/* 3CA5C 8003BE5C 8FAC002C */  lw         $t4, 0x2c($sp)
/* 3CA60 8003BE60 000E6840 */  sll        $t5, $t6, 1
/* 3CA64 8003BE64 A7AB0020 */  sh         $t3, 0x20($sp)
/* 3CA68 8003BE68 018DC821 */  addu       $t9, $t4, $t5
/* 3CA6C 8003BE6C 97210000 */  lhu        $at, ($t9)
/* 3CA70 8003BE70 27A80024 */  addiu      $t0, $sp, 0x24
/* 3CA74 8003BE74 240F0003 */  addiu      $t7, $zero, 3
/* 3CA78 8003BE78 A5010000 */  sh         $at, ($t0)
/* 3CA7C 8003BE7C 93AB0021 */  lbu        $t3, 0x21($sp)
/* 3CA80 8003BE80 8FA9002C */  lw         $t1, 0x2c($sp)
/* 3CA84 8003BE84 000B7040 */  sll        $t6, $t3, 1
/* 3CA88 8003BE88 012E6021 */  addu       $t4, $t1, $t6
/* 3CA8C 8003BE8C A58F0000 */  sh         $t7, ($t4)
/* 3CA90 8003BE90 93A7003B */  lbu        $a3, 0x3b($sp)
/* 3CA94 8003BE94 8FA60034 */  lw         $a2, 0x34($sp)
/* 3CA98 8003BE98 93A50021 */  lbu        $a1, 0x21($sp)
/* 3CA9C 8003BE9C 0C00EFCE */  jal        func_8003BF38
/* 3CAA0 8003BEA0 8FA40028 */   lw        $a0, 0x28($sp)
/* 3CAA4 8003BEA4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3CAA8 8003BEA8 8FAD001C */  lw         $t5, 0x1c($sp)
/* 3CAAC 8003BEAC 11A00003 */  beqz       $t5, .L8003BEBC
/* 3CAB0 8003BEB0 00000000 */   nop       
/* 3CAB4 8003BEB4 1000001C */  b          .L8003BF28
/* 3CAB8 8003BEB8 01A01025 */   or        $v0, $t5, $zero
.L8003BEBC:
/* 3CABC 8003BEBC 93B80024 */  lbu        $t8, 0x24($sp)
/* 3CAC0 8003BEC0 93A8003B */  lbu        $t0, 0x3b($sp)
/* 3CAC4 8003BEC4 17080007 */  bne        $t8, $t0, .L8003BEE4
/* 3CAC8 8003BEC8 00000000 */   nop       
/* 3CACC 8003BECC 8FAA0028 */  lw         $t2, 0x28($sp)
/* 3CAD0 8003BED0 97B90024 */  lhu        $t9, 0x24($sp)
/* 3CAD4 8003BED4 8D4B0060 */  lw         $t3, 0x60($t2)
/* 3CAD8 8003BED8 032B082A */  slt        $at, $t9, $t3
/* 3CADC 8003BEDC 1020FFDD */  beqz       $at, .L8003BE54
/* 3CAE0 8003BEE0 00000000 */   nop       
.L8003BEE4:
/* 3CAE4 8003BEE4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3CAE8 8003BEE8 97A90024 */  lhu        $t1, 0x24($sp)
/* 3CAEC 8003BEEC 8DCF0060 */  lw         $t7, 0x60($t6)
/* 3CAF0 8003BEF0 012F082A */  slt        $at, $t1, $t7
/* 3CAF4 8003BEF4 14200007 */  bnez       $at, .L8003BF14
/* 3CAF8 8003BEF8 00000000 */   nop       
/* 3CAFC 8003BEFC 93B80025 */  lbu        $t8, 0x25($sp)
/* 3CB00 8003BF00 8FAD002C */  lw         $t5, 0x2c($sp)
/* 3CB04 8003BF04 240C0003 */  addiu      $t4, $zero, 3
/* 3CB08 8003BF08 00184040 */  sll        $t0, $t8, 1
/* 3CB0C 8003BF0C 01A85021 */  addu       $t2, $t5, $t0
/* 3CB10 8003BF10 A54C0000 */  sh         $t4, ($t2)
.L8003BF14:
/* 3CB14 8003BF14 27AB0024 */  addiu      $t3, $sp, 0x24
/* 3CB18 8003BF18 95610000 */  lhu        $at, ($t3)
/* 3CB1C 8003BF1C 8FB9003C */  lw         $t9, 0x3c($sp)
/* 3CB20 8003BF20 00001025 */  or         $v0, $zero, $zero
/* 3CB24 8003BF24 A7210000 */  sh         $at, ($t9)
.L8003BF28:
/* 3CB28 8003BF28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3CB2C 8003BF2C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3CB30 8003BF30 03E00008 */  jr         $ra
/* 3CB34 8003BF34 00000000 */   nop       

glabel func_8003BF38
/* 3CB38 8003BF38 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 3CB3C 8003BF3C AFA40040 */  sw         $a0, 0x40($sp)
/* 3CB40 8003BF40 AFA7004C */  sw         $a3, 0x4c($sp)
/* 3CB44 8003BF44 93AE004F */  lbu        $t6, 0x4f($sp)
/* 3CB48 8003BF48 8FAF0040 */  lw         $t7, 0x40($sp)
/* 3CB4C 8003BF4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3CB50 8003BF50 AFA50044 */  sw         $a1, 0x44($sp)
/* 3CB54 8003BF54 AFA60048 */  sw         $a2, 0x48($sp)
/* 3CB58 8003BF58 AFA00038 */  sw         $zero, 0x38($sp)
/* 3CB5C 8003BF5C A1EE0065 */  sb         $t6, 0x65($t7)
/* 3CB60 8003BF60 0C0115F7 */  jal        func_800457DC
/* 3CB64 8003BF64 8FA40040 */   lw        $a0, 0x40($sp)
/* 3CB68 8003BF68 AFA20038 */  sw         $v0, 0x38($sp)
/* 3CB6C 8003BF6C 8FB80038 */  lw         $t8, 0x38($sp)
/* 3CB70 8003BF70 13000003 */  beqz       $t8, .L8003BF80
/* 3CB74 8003BF74 00000000 */   nop       
/* 3CB78 8003BF78 10000027 */  b          .L8003C018
/* 3CB7C 8003BF7C 03001025 */   or        $v0, $t8, $zero
.L8003BF80:
/* 3CB80 8003BF80 AFA0003C */  sw         $zero, 0x3c($sp)
.L8003BF84:
/* 3CB84 8003BF84 93A80047 */  lbu        $t0, 0x47($sp)
/* 3CB88 8003BF88 8FB90040 */  lw         $t9, 0x40($sp)
/* 3CB8C 8003BF8C 8FAA003C */  lw         $t2, 0x3c($sp)
/* 3CB90 8003BF90 000848C0 */  sll        $t1, $t0, 3
/* 3CB94 8003BF94 27A70018 */  addiu      $a3, $sp, 0x18
/* 3CB98 8003BF98 8F240004 */  lw         $a0, 4($t9)
/* 3CB9C 8003BF9C 8F250008 */  lw         $a1, 8($t9)
/* 3CBA0 8003BFA0 0C011614 */  jal        func_80045850
/* 3CBA4 8003BFA4 012A3021 */   addu      $a2, $t1, $t2
/* 3CBA8 8003BFA8 AFA20038 */  sw         $v0, 0x38($sp)
/* 3CBAC 8003BFAC 8FAB0038 */  lw         $t3, 0x38($sp)
/* 3CBB0 8003BFB0 11600007 */  beqz       $t3, .L8003BFD0
/* 3CBB4 8003BFB4 00000000 */   nop       
/* 3CBB8 8003BFB8 8FAC0040 */  lw         $t4, 0x40($sp)
/* 3CBBC 8003BFBC A1800065 */  sb         $zero, 0x65($t4)
/* 3CBC0 8003BFC0 0C0115F7 */  jal        func_800457DC
/* 3CBC4 8003BFC4 8FA40040 */   lw        $a0, 0x40($sp)
/* 3CBC8 8003BFC8 10000013 */  b          .L8003C018
/* 3CBCC 8003BFCC 8FA20038 */   lw        $v0, 0x38($sp)
.L8003BFD0:
/* 3CBD0 8003BFD0 27A40018 */  addiu      $a0, $sp, 0x18
/* 3CBD4 8003BFD4 0C0112BC */  jal        func_80044AF0
/* 3CBD8 8003BFD8 24050020 */   addiu     $a1, $zero, 0x20
/* 3CBDC 8003BFDC 8FAD0048 */  lw         $t5, 0x48($sp)
/* 3CBE0 8003BFE0 95AE0000 */  lhu        $t6, ($t5)
/* 3CBE4 8003BFE4 004E7821 */  addu       $t7, $v0, $t6
/* 3CBE8 8003BFE8 A5AF0000 */  sh         $t7, ($t5)
/* 3CBEC 8003BFEC 8FB8003C */  lw         $t8, 0x3c($sp)
/* 3CBF0 8003BFF0 27190001 */  addiu      $t9, $t8, 1
/* 3CBF4 8003BFF4 2B210008 */  slti       $at, $t9, 8
/* 3CBF8 8003BFF8 1420FFE2 */  bnez       $at, .L8003BF84
/* 3CBFC 8003BFFC AFB9003C */   sw        $t9, 0x3c($sp)
/* 3CC00 8003C000 8FA80040 */  lw         $t0, 0x40($sp)
/* 3CC04 8003C004 A1000065 */  sb         $zero, 0x65($t0)
/* 3CC08 8003C008 0C0115F7 */  jal        func_800457DC
/* 3CC0C 8003C00C 8FA40040 */   lw        $a0, 0x40($sp)
/* 3CC10 8003C010 AFA20038 */  sw         $v0, 0x38($sp)
/* 3CC14 8003C014 8FA20038 */  lw         $v0, 0x38($sp)
.L8003C018:
/* 3CC18 8003C018 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3CC1C 8003C01C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 3CC20 8003C020 03E00008 */  jr         $ra
/* 3CC24 8003C024 00000000 */   nop       
/* 3CC28 8003C028 00000000 */  nop        
/* 3CC2C 8003C02C 00000000 */  nop        
