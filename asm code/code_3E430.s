glabel func_8003D830
/* 3E430 8003D830 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3E434 8003D834 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3E438 8003D838 AFA40028 */  sw         $a0, 0x28($sp)
/* 3E43C 8003D83C AFA5002C */  sw         $a1, 0x2c($sp)
/* 3E440 8003D840 0C00F534 */  jal        func_8003D4D0
/* 3E444 8003D844 AFB00018 */   sw        $s0, 0x18($sp)
/* 3E448 8003D848 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3E44C 8003D84C 00408025 */  or         $s0, $v0, $zero
/* 3E450 8003D850 15C00004 */  bnez       $t6, .L8003D864
/* 3E454 8003D854 00000000 */   nop       
/* 3E458 8003D858 3C0F8007 */  lui        $t7, 0x8007
/* 3E45C 8003D85C 8DEF0A00 */  lw         $t7, 0xa00($t7)
/* 3E460 8003D860 AFAF0028 */  sw         $t7, 0x28($sp)
.L8003D864:
/* 3E464 8003D864 8FB80028 */  lw         $t8, 0x28($sp)
/* 3E468 8003D868 8FA8002C */  lw         $t0, 0x2c($sp)
/* 3E46C 8003D86C 8F190004 */  lw         $t9, 4($t8)
/* 3E470 8003D870 13280020 */  beq        $t9, $t0, .L8003D8F4
/* 3E474 8003D874 00000000 */   nop       
/* 3E478 8003D878 AF080004 */  sw         $t0, 4($t8)
/* 3E47C 8003D87C 3C0A8007 */  lui        $t2, 0x8007
/* 3E480 8003D880 8D4A0A00 */  lw         $t2, 0xa00($t2)
/* 3E484 8003D884 8FA90028 */  lw         $t1, 0x28($sp)
/* 3E488 8003D888 112A000C */  beq        $t1, $t2, .L8003D8BC
/* 3E48C 8003D88C 00000000 */   nop       
/* 3E490 8003D890 952B0010 */  lhu        $t3, 0x10($t1)
/* 3E494 8003D894 24010001 */  addiu      $at, $zero, 1
/* 3E498 8003D898 11610008 */  beq        $t3, $at, .L8003D8BC
/* 3E49C 8003D89C 00000000 */   nop       
/* 3E4A0 8003D8A0 8D240008 */  lw         $a0, 8($t1)
/* 3E4A4 8003D8A4 0C00F544 */  jal        func_8003D510
/* 3E4A8 8003D8A8 01202825 */   or        $a1, $t1, $zero
/* 3E4AC 8003D8AC 8FAC0028 */  lw         $t4, 0x28($sp)
/* 3E4B0 8003D8B0 8D840008 */  lw         $a0, 8($t4)
/* 3E4B4 8003D8B4 0C00F463 */  jal        func_8003D18C
/* 3E4B8 8003D8B8 01802825 */   or        $a1, $t4, $zero
.L8003D8BC:
/* 3E4BC 8003D8BC 3C0D8007 */  lui        $t5, 0x8007
/* 3E4C0 8003D8C0 3C0F8007 */  lui        $t7, 0x8007
/* 3E4C4 8003D8C4 8DEF09F8 */  lw         $t7, 0x9f8($t7)
/* 3E4C8 8003D8C8 8DAD0A00 */  lw         $t5, 0xa00($t5)
/* 3E4CC 8003D8CC 8DF90004 */  lw         $t9, 4($t7)
/* 3E4D0 8003D8D0 8DAE0004 */  lw         $t6, 4($t5)
/* 3E4D4 8003D8D4 01D9082A */  slt        $at, $t6, $t9
/* 3E4D8 8003D8D8 10200006 */  beqz       $at, .L8003D8F4
/* 3E4DC 8003D8DC 00000000 */   nop       
/* 3E4E0 8003D8E0 24080002 */  addiu      $t0, $zero, 2
/* 3E4E4 8003D8E4 3C048007 */  lui        $a0, 0x8007
/* 3E4E8 8003D8E8 A5A80010 */  sh         $t0, 0x10($t5)
/* 3E4EC 8003D8EC 0C00F423 */  jal        func_8003D08C
/* 3E4F0 8003D8F0 248409F8 */   addiu     $a0, $a0, 0x9f8
.L8003D8F4:
/* 3E4F4 8003D8F4 0C00F53C */  jal        func_8003D4F0
/* 3E4F8 8003D8F8 02002025 */   or        $a0, $s0, $zero
/* 3E4FC 8003D8FC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3E500 8003D900 8FB00018 */  lw         $s0, 0x18($sp)
/* 3E504 8003D904 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3E508 8003D908 03E00008 */  jr         $ra
/* 3E50C 8003D90C 00000000 */   nop       

glabel func_8003D910
/* 3E510 8003D910 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3E514 8003D914 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3E518 8003D918 AFA40028 */  sw         $a0, 0x28($sp)
/* 3E51C 8003D91C AFA5002C */  sw         $a1, 0x2c($sp)
/* 3E520 8003D920 AFA60030 */  sw         $a2, 0x30($sp)
/* 3E524 8003D924 AFA70034 */  sw         $a3, 0x34($sp)
/* 3E528 8003D928 AFB10018 */  sw         $s1, 0x18($sp)
/* 3E52C 8003D92C AFB00014 */  sw         $s0, 0x14($sp)
/* 3E530 8003D930 3C0EA460 */  lui        $t6, 0xa460
/* 3E534 8003D934 8DD00010 */  lw         $s0, 0x10($t6)
/* 3E538 8003D938 320F0003 */  andi       $t7, $s0, 3
/* 3E53C 8003D93C 11E00006 */  beqz       $t7, .L8003D958
/* 3E540 8003D940 00000000 */   nop       
.L8003D944:
/* 3E544 8003D944 3C18A460 */  lui        $t8, 0xa460
/* 3E548 8003D948 8F100010 */  lw         $s0, 0x10($t8)
/* 3E54C 8003D94C 32190003 */  andi       $t9, $s0, 3
/* 3E550 8003D950 1720FFFC */  bnez       $t9, .L8003D944
/* 3E554 8003D954 00000000 */   nop       
.L8003D958:
/* 3E558 8003D958 0C00D374 */  jal        func_80034DD0
/* 3E55C 8003D95C 8FA40030 */   lw        $a0, 0x30($sp)
/* 3E560 8003D960 3C08A460 */  lui        $t0, 0xa460
/* 3E564 8003D964 AD020000 */  sw         $v0, ($t0)
/* 3E568 8003D968 3C098000 */  lui        $t1, 0x8000
/* 3E56C 8003D96C 8D290308 */  lw         $t1, 0x308($t1)
/* 3E570 8003D970 8FAA002C */  lw         $t2, 0x2c($sp)
/* 3E574 8003D974 3C011FFF */  lui        $at, 0x1fff
/* 3E578 8003D978 3421FFFF */  ori        $at, $at, 0xffff
/* 3E57C 8003D97C 012A5825 */  or         $t3, $t1, $t2
/* 3E580 8003D980 01616024 */  and        $t4, $t3, $at
/* 3E584 8003D984 3C0DA460 */  lui        $t5, 0xa460
/* 3E588 8003D988 ADAC0004 */  sw         $t4, 4($t5)
/* 3E58C 8003D98C 8FB10028 */  lw         $s1, 0x28($sp)
/* 3E590 8003D990 12200005 */  beqz       $s1, .L8003D9A8
/* 3E594 8003D994 24010001 */   addiu     $at, $zero, 1
/* 3E598 8003D998 12210008 */  beq        $s1, $at, .L8003D9BC
/* 3E59C 8003D99C 00000000 */   nop       
/* 3E5A0 8003D9A0 1000000B */  b          .L8003D9D0
/* 3E5A4 8003D9A4 00000000 */   nop       
.L8003D9A8:
/* 3E5A8 8003D9A8 8FAE0034 */  lw         $t6, 0x34($sp)
/* 3E5AC 8003D9AC 3C18A460 */  lui        $t8, 0xa460
/* 3E5B0 8003D9B0 25CFFFFF */  addiu      $t7, $t6, -1
/* 3E5B4 8003D9B4 10000008 */  b          .L8003D9D8
/* 3E5B8 8003D9B8 AF0F000C */   sw        $t7, 0xc($t8)
.L8003D9BC:
/* 3E5BC 8003D9BC 8FB90034 */  lw         $t9, 0x34($sp)
/* 3E5C0 8003D9C0 3C09A460 */  lui        $t1, 0xa460
/* 3E5C4 8003D9C4 2728FFFF */  addiu      $t0, $t9, -1
/* 3E5C8 8003D9C8 10000003 */  b          .L8003D9D8
/* 3E5CC 8003D9CC AD280008 */   sw        $t0, 8($t1)
.L8003D9D0:
/* 3E5D0 8003D9D0 10000002 */  b          .L8003D9DC
/* 3E5D4 8003D9D4 2402FFFF */   addiu     $v0, $zero, -1
.L8003D9D8:
/* 3E5D8 8003D9D8 00001025 */  or         $v0, $zero, $zero
.L8003D9DC:
/* 3E5DC 8003D9DC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3E5E0 8003D9E0 8FB00014 */  lw         $s0, 0x14($sp)
/* 3E5E4 8003D9E4 8FB10018 */  lw         $s1, 0x18($sp)
/* 3E5E8 8003D9E8 03E00008 */  jr         $ra
/* 3E5EC 8003D9EC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003D9F0
/* 3E5F0 8003D9F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3E5F4 8003D9F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3E5F8 8003D9F8 AFA40030 */  sw         $a0, 0x30($sp)
/* 3E5FC 8003D9FC AFA50034 */  sw         $a1, 0x34($sp)
/* 3E600 8003DA00 AFA60038 */  sw         $a2, 0x38($sp)
/* 3E604 8003DA04 AFA7003C */  sw         $a3, 0x3c($sp)
/* 3E608 8003DA08 AFB00018 */  sw         $s0, 0x18($sp)
/* 3E60C 8003DA0C 3C0EA460 */  lui        $t6, 0xa460
/* 3E610 8003DA10 8DCF0010 */  lw         $t7, 0x10($t6)
/* 3E614 8003DA14 31F80003 */  andi       $t8, $t7, 3
/* 3E618 8003DA18 13000008 */  beqz       $t8, .L8003DA3C
/* 3E61C 8003DA1C AFAF002C */   sw        $t7, 0x2c($sp)
.L8003DA20:
/* 3E620 8003DA20 3C19A460 */  lui        $t9, 0xa460
/* 3E624 8003DA24 8F280010 */  lw         $t0, 0x10($t9)
/* 3E628 8003DA28 AFA8002C */  sw         $t0, 0x2c($sp)
/* 3E62C 8003DA2C 8FA9002C */  lw         $t1, 0x2c($sp)
/* 3E630 8003DA30 312A0003 */  andi       $t2, $t1, 3
/* 3E634 8003DA34 1540FFFA */  bnez       $t2, .L8003DA20
/* 3E638 8003DA38 00000000 */   nop       
.L8003DA3C:
/* 3E63C 8003DA3C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 3E640 8003DA40 3C0E8007 */  lui        $t6, 0x8007
/* 3E644 8003DA44 916C0009 */  lbu        $t4, 9($t3)
/* 3E648 8003DA48 000C6880 */  sll        $t5, $t4, 2
/* 3E64C 8003DA4C 01CD7021 */  addu       $t6, $t6, $t5
/* 3E650 8003DA50 8DCEF440 */  lw         $t6, -0xbc0($t6)
/* 3E654 8003DA54 AFAC0028 */  sw         $t4, 0x28($sp)
/* 3E658 8003DA58 11CB0048 */  beq        $t6, $t3, .L8003DB7C
/* 3E65C 8003DA5C 00000000 */   nop       
/* 3E660 8003DA60 15800020 */  bnez       $t4, .L8003DAE4
/* 3E664 8003DA64 AFAE0024 */   sw        $t6, 0x24($sp)
/* 3E668 8003DA68 91CF0005 */  lbu        $t7, 5($t6)
/* 3E66C 8003DA6C 91780005 */  lbu        $t8, 5($t3)
/* 3E670 8003DA70 11F80003 */  beq        $t7, $t8, .L8003DA80
/* 3E674 8003DA74 00000000 */   nop       
/* 3E678 8003DA78 3C19A460 */  lui        $t9, 0xa460
/* 3E67C 8003DA7C AF380014 */  sw         $t8, 0x14($t9)
.L8003DA80:
/* 3E680 8003DA80 8FA80024 */  lw         $t0, 0x24($sp)
/* 3E684 8003DA84 8FAA0030 */  lw         $t2, 0x30($sp)
/* 3E688 8003DA88 91090006 */  lbu        $t1, 6($t0)
/* 3E68C 8003DA8C 914D0006 */  lbu        $t5, 6($t2)
/* 3E690 8003DA90 112D0003 */  beq        $t1, $t5, .L8003DAA0
/* 3E694 8003DA94 00000000 */   nop       
/* 3E698 8003DA98 3C0CA460 */  lui        $t4, 0xa460
/* 3E69C 8003DA9C AD8D001C */  sw         $t5, 0x1c($t4)
.L8003DAA0:
/* 3E6A0 8003DAA0 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3E6A4 8003DAA4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 3E6A8 8003DAA8 91CB0007 */  lbu        $t3, 7($t6)
/* 3E6AC 8003DAAC 91F80007 */  lbu        $t8, 7($t7)
/* 3E6B0 8003DAB0 11780003 */  beq        $t3, $t8, .L8003DAC0
/* 3E6B4 8003DAB4 00000000 */   nop       
/* 3E6B8 8003DAB8 3C19A460 */  lui        $t9, 0xa460
/* 3E6BC 8003DABC AF380020 */  sw         $t8, 0x20($t9)
.L8003DAC0:
/* 3E6C0 8003DAC0 8FA80024 */  lw         $t0, 0x24($sp)
/* 3E6C4 8003DAC4 8FA90030 */  lw         $t1, 0x30($sp)
/* 3E6C8 8003DAC8 910A0008 */  lbu        $t2, 8($t0)
/* 3E6CC 8003DACC 912D0008 */  lbu        $t5, 8($t1)
/* 3E6D0 8003DAD0 114D0024 */  beq        $t2, $t5, .L8003DB64
/* 3E6D4 8003DAD4 00000000 */   nop       
/* 3E6D8 8003DAD8 3C0CA460 */  lui        $t4, 0xa460
/* 3E6DC 8003DADC 10000021 */  b          .L8003DB64
/* 3E6E0 8003DAE0 AD8D0018 */   sw        $t5, 0x18($t4)
.L8003DAE4:
/* 3E6E4 8003DAE4 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3E6E8 8003DAE8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 3E6EC 8003DAEC 91CF0005 */  lbu        $t7, 5($t6)
/* 3E6F0 8003DAF0 91780005 */  lbu        $t8, 5($t3)
/* 3E6F4 8003DAF4 11F80003 */  beq        $t7, $t8, .L8003DB04
/* 3E6F8 8003DAF8 00000000 */   nop       
/* 3E6FC 8003DAFC 3C19A460 */  lui        $t9, 0xa460
/* 3E700 8003DB00 AF380024 */  sw         $t8, 0x24($t9)
.L8003DB04:
/* 3E704 8003DB04 8FA80024 */  lw         $t0, 0x24($sp)
/* 3E708 8003DB08 8FAA0030 */  lw         $t2, 0x30($sp)
/* 3E70C 8003DB0C 91090006 */  lbu        $t1, 6($t0)
/* 3E710 8003DB10 914D0006 */  lbu        $t5, 6($t2)
/* 3E714 8003DB14 112D0003 */  beq        $t1, $t5, .L8003DB24
/* 3E718 8003DB18 00000000 */   nop       
/* 3E71C 8003DB1C 3C0CA460 */  lui        $t4, 0xa460
/* 3E720 8003DB20 AD8D002C */  sw         $t5, 0x2c($t4)
.L8003DB24:
/* 3E724 8003DB24 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3E728 8003DB28 8FAF0030 */  lw         $t7, 0x30($sp)
/* 3E72C 8003DB2C 91CB0007 */  lbu        $t3, 7($t6)
/* 3E730 8003DB30 91F80007 */  lbu        $t8, 7($t7)
/* 3E734 8003DB34 11780003 */  beq        $t3, $t8, .L8003DB44
/* 3E738 8003DB38 00000000 */   nop       
/* 3E73C 8003DB3C 3C19A460 */  lui        $t9, 0xa460
/* 3E740 8003DB40 AF380030 */  sw         $t8, 0x30($t9)
.L8003DB44:
/* 3E744 8003DB44 8FA80024 */  lw         $t0, 0x24($sp)
/* 3E748 8003DB48 8FA90030 */  lw         $t1, 0x30($sp)
/* 3E74C 8003DB4C 910A0008 */  lbu        $t2, 8($t0)
/* 3E750 8003DB50 912D0008 */  lbu        $t5, 8($t1)
/* 3E754 8003DB54 114D0003 */  beq        $t2, $t5, .L8003DB64
/* 3E758 8003DB58 00000000 */   nop       
/* 3E75C 8003DB5C 3C0CA460 */  lui        $t4, 0xa460
/* 3E760 8003DB60 AD8D0028 */  sw         $t5, 0x28($t4)
.L8003DB64:
/* 3E764 8003DB64 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3E768 8003DB68 8FAE0030 */  lw         $t6, 0x30($sp)
/* 3E76C 8003DB6C 3C018007 */  lui        $at, 0x8007
/* 3E770 8003DB70 000F5880 */  sll        $t3, $t7, 2
/* 3E774 8003DB74 002B0821 */  addu       $at, $at, $t3
/* 3E778 8003DB78 AC2EF440 */  sw         $t6, -0xbc0($at)
.L8003DB7C:
/* 3E77C 8003DB7C 0C00D374 */  jal        func_80034DD0
/* 3E780 8003DB80 8FA4003C */   lw        $a0, 0x3c($sp)
/* 3E784 8003DB84 3C18A460 */  lui        $t8, 0xa460
/* 3E788 8003DB88 AF020000 */  sw         $v0, ($t8)
/* 3E78C 8003DB8C 8FB90030 */  lw         $t9, 0x30($sp)
/* 3E790 8003DB90 8FA90038 */  lw         $t1, 0x38($sp)
/* 3E794 8003DB94 3C011FFF */  lui        $at, 0x1fff
/* 3E798 8003DB98 8F28000C */  lw         $t0, 0xc($t9)
/* 3E79C 8003DB9C 3421FFFF */  ori        $at, $at, 0xffff
/* 3E7A0 8003DBA0 3C0CA460 */  lui        $t4, 0xa460
/* 3E7A4 8003DBA4 01095025 */  or         $t2, $t0, $t1
/* 3E7A8 8003DBA8 01416824 */  and        $t5, $t2, $at
/* 3E7AC 8003DBAC AD8D0004 */  sw         $t5, 4($t4)
/* 3E7B0 8003DBB0 8FB00034 */  lw         $s0, 0x34($sp)
/* 3E7B4 8003DBB4 12000005 */  beqz       $s0, .L8003DBCC
/* 3E7B8 8003DBB8 24010001 */   addiu     $at, $zero, 1
/* 3E7BC 8003DBBC 12010008 */  beq        $s0, $at, .L8003DBE0
/* 3E7C0 8003DBC0 00000000 */   nop       
/* 3E7C4 8003DBC4 1000000B */  b          .L8003DBF4
/* 3E7C8 8003DBC8 00000000 */   nop       
.L8003DBCC:
/* 3E7CC 8003DBCC 8FAF0040 */  lw         $t7, 0x40($sp)
/* 3E7D0 8003DBD0 3C0BA460 */  lui        $t3, 0xa460
/* 3E7D4 8003DBD4 25EEFFFF */  addiu      $t6, $t7, -1
/* 3E7D8 8003DBD8 10000008 */  b          .L8003DBFC
/* 3E7DC 8003DBDC AD6E000C */   sw        $t6, 0xc($t3)
.L8003DBE0:
/* 3E7E0 8003DBE0 8FB80040 */  lw         $t8, 0x40($sp)
/* 3E7E4 8003DBE4 3C08A460 */  lui        $t0, 0xa460
/* 3E7E8 8003DBE8 2719FFFF */  addiu      $t9, $t8, -1
/* 3E7EC 8003DBEC 10000003 */  b          .L8003DBFC
/* 3E7F0 8003DBF0 AD190008 */   sw        $t9, 8($t0)
.L8003DBF4:
/* 3E7F4 8003DBF4 10000002 */  b          .L8003DC00
/* 3E7F8 8003DBF8 2402FFFF */   addiu     $v0, $zero, -1
.L8003DBFC:
/* 3E7FC 8003DBFC 00001025 */  or         $v0, $zero, $zero
.L8003DC00:
/* 3E800 8003DC00 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3E804 8003DC04 8FB00018 */  lw         $s0, 0x18($sp)
/* 3E808 8003DC08 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3E80C 8003DC0C 03E00008 */  jr         $ra
/* 3E810 8003DC10 00000000 */   nop       
/* 3E814 8003DC14 00000000 */  nop        
/* 3E818 8003DC18 00000000 */  nop        
/* 3E81C 8003DC1C 00000000 */  nop        
