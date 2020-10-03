glabel func_2a758
/* 02A758 0002A758 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 02A75C 0002A75C AFB00004 */  sw    $s0, 4($sp)
/* 02A760 0002A760 00A08025 */  move  $s0, $a1
/* 02A764 0002A764 AFA600E0 */  sw    $a2, 0xe0($sp)
/* 02A768 0002A768 AFA700E4 */  sw    $a3, 0xe4($sp)
/* 02A76C 0002A76C 00047080 */  sll   $t6, $a0, 2
/* 02A770 0002A770 3C0F8006 */  lui   $t7, 0x8006
/* 02A774 0002A774 01EE7821 */  addu  $t7, $t7, $t6
/* 02A778 0002A778 3C198006 */  lui   $t9, 0x8006
/* 02A77C 0002A77C 8DEFF0D0 */  lw    $t7, -0xf30($t7)
/* 02A780 0002A780 2739F014 */  addiu $t9, $t9, -0xfec
/* 02A784 0002A784 0004C040 */  sll   $t8, $a0, 1
/* 02A788 0002A788 03191821 */  addu  $v1, $t8, $t9
/* 02A78C 0002A78C 90690000 */  lbu   $t1, ($v1)
/* 02A790 0002A790 AFAF0098 */  sw    $t7, 0x98($sp)
/* 02A794 0002A794 906F0001 */  lbu   $t7, 1($v1)
/* 02A798 0002A798 252EFFFF */  addiu $t6, $t1, -1
/* 02A79C 0002A79C AFAE00A0 */  sw    $t6, 0xa0($sp)
/* 02A7A0 0002A7A0 240E0400 */  addiu $t6, $zero, 0x400
/* 02A7A4 0002A7A4 24190400 */  addiu $t9, $zero, 0x400
/* 02A7A8 0002A7A8 25F8FFFF */  addiu $t8, $t7, -1
/* 02A7AC 0002A7AC 00004025 */  move  $t0, $zero
/* 02A7B0 0002A7B0 00001025 */  move  $v0, $zero
/* 02A7B4 0002A7B4 AFB8009C */  sw    $t8, 0x9c($sp)
/* 02A7B8 0002A7B8 00005025 */  move  $t2, $zero
/* 02A7BC 0002A7BC 00005825 */  move  $t3, $zero
/* 02A7C0 0002A7C0 00006825 */  move  $t5, $zero
/* 02A7C4 0002A7C4 AFA000B8 */  sw    $zero, 0xb8($sp)
/* 02A7C8 0002A7C8 AFB900AC */  sw    $t9, 0xac($sp)
/* 02A7CC 0002A7CC AFAE00B0 */  sw    $t6, 0xb0($sp)
/* 02A7D0 0002A7D0 1880000A */  blez  $a0, .L0002A7FC
/* 02A7D4 0002A7D4 AFA90094 */   sw    $t1, 0x94($sp)
/* 02A7D8 0002A7D8 248FFFC9 */  addiu $t7, $a0, -0x37
/* 02A7DC 0002A7DC 2DE10008 */  sltiu $at, $t7, 8
/* 02A7E0 0002A7E0 1020001A */  beqz  $at, .L0002A84C
/* 02A7E4 0002A7E4 000F7880 */   sll   $t7, $t7, 2
/* 02A7E8 0002A7E8 3C018007 */  lui   $at, 0x8007
/* 02A7EC 0002A7EC 002F0821 */  addu  $at, $at, $t7
/* 02A7F0 0002A7F0 8C2F1730 */  lw    $t7, 0x1730($at)
/* 02A7F4 0002A7F4 01E00008 */  jr    $t7
/* 02A7F8 0002A7F8 00000000 */   nop   
.L0002A7FC:
/* 02A7FC 0002A7FC 14800013 */  bnez  $a0, .L0002A84C
/* 02A800 0002A800 3218000F */   andi  $t8, $s0, 0xf
/* 02A804 0002A804 8FAD00E0 */  lw    $t5, 0xe0($sp)
/* 02A808 0002A808 0018C940 */  sll   $t9, $t8, 5
/* 02A80C 0002A80C 240A0004 */  addiu $t2, $zero, 4
/* 02A810 0002A810 31AE000F */  andi  $t6, $t5, 0xf
/* 02A814 0002A814 240B0004 */  addiu $t3, $zero, 4
/* 02A818 0002A818 AFB900B8 */  sw    $t9, 0xb8($sp)
/* 02A81C 0002A81C 1000000B */  b     .L0002A84C
/* 02A820 0002A820 000E6940 */   sll   $t5, $t6, 5
/* 02A824 0002A824 2408FF80 */  addiu $t0, $zero, -0x80
/* 02A828 0002A828 AFA000AC */  sw    $zero, 0xac($sp)
/* 02A82C 0002A82C 10000007 */  b     .L0002A84C
/* 02A830 0002A830 AFA000B0 */   sw    $zero, 0xb0($sp)
/* 02A834 0002A834 10000005 */  b     .L0002A84C
/* 02A838 0002A838 24080050 */   addiu $t0, $zero, 0x50
/* 02A83C 0002A83C AFA000AC */  sw    $zero, 0xac($sp)
/* 02A840 0002A840 10000002 */  b     .L0002A84C
/* 02A844 0002A844 AFA000B0 */   sw    $zero, 0xb0($sp)
/* 02A848 0002A848 AFA000B0 */  sw    $zero, 0xb0($sp)
.L0002A84C:
/* 02A84C 0002A84C 0601000E */  bgez  $s0, .L0002A888
/* 02A850 0002A850 8FB800E4 */   lw    $t8, 0xe4($sp)
/* 02A854 0002A854 0218C821 */  addu  $t9, $s0, $t8
/* 02A858 0002A858 07210003 */  bgez  $t9, .L0002A868
/* 02A85C 0002A85C 00101823 */   negu  $v1, $s0
/* 02A860 0002A860 10000009 */  b     .L0002A888
/* 02A864 0002A864 2402FFFF */   addiu $v0, $zero, -1
.L0002A868:
/* 02A868 0002A868 8FAE00E4 */  lw    $t6, 0xe4($sp)
/* 02A86C 0002A86C 8FB800B8 */  lw    $t8, 0xb8($sp)
/* 02A870 0002A870 0003C940 */  sll   $t9, $v1, 5
/* 02A874 0002A874 01C37823 */  subu  $t7, $t6, $v1
/* 02A878 0002A878 03197021 */  addu  $t6, $t8, $t9
/* 02A87C 0002A87C 00008025 */  move  $s0, $zero
/* 02A880 0002A880 AFAF00E4 */  sw    $t7, 0xe4($sp)
/* 02A884 0002A884 AFAE00B8 */  sw    $t6, 0xb8($sp)
.L0002A888:
/* 02A888 0002A888 2A010141 */  slti  $at, $s0, 0x141
/* 02A88C 0002A88C 14200003 */  bnez  $at, .L0002A89C
/* 02A890 0002A890 8FAF00E4 */   lw    $t7, 0xe4($sp)
/* 02A894 0002A894 10000007 */  b     .L0002A8B4
/* 02A898 0002A898 2402FFFF */   addiu $v0, $zero, -1
.L0002A89C:
/* 02A89C 0002A89C 020F6021 */  addu  $t4, $s0, $t7
/* 02A8A0 0002A8A0 29810141 */  slti  $at, $t4, 0x141
/* 02A8A4 0002A8A4 14200003 */  bnez  $at, .L0002A8B4
/* 02A8A8 0002A8A8 01ECC023 */   subu  $t8, $t7, $t4
/* 02A8AC 0002A8AC 27190140 */  addiu $t9, $t8, 0x140
/* 02A8B0 0002A8B0 AFB900E4 */  sw    $t9, 0xe4($sp)
.L0002A8B4:
/* 02A8B4 0002A8B4 8FAE00E4 */  lw    $t6, 0xe4($sp)
/* 02A8B8 0002A8B8 3C038008 */  lui   $v1, 0x8008
/* 02A8BC 0002A8BC 8FAF00E8 */  lw    $t7, 0xe8($sp)
/* 02A8C0 0002A8C0 19C00003 */  blez  $t6, .L0002A8D0
/* 02A8C4 0002A8C4 2463B2FC */   addiu $v1, $v1, -0x4d04
/* 02A8C8 0002A8C8 5DE00003 */  bgtzl $t7, .L0002A8D8
/* 02A8CC 0002A8CC AFAA00C4 */   sw    $t2, 0xc4($sp)
.L0002A8D0:
/* 02A8D0 0002A8D0 2402FFFF */  addiu $v0, $zero, -1
/* 02A8D4 0002A8D4 AFAA00C4 */  sw    $t2, 0xc4($sp)
.L0002A8D8:
/* 02A8D8 0002A8D8 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* 02A8DC 0002A8DC 044000F3 */  bltz  $v0, .L0002ACAC
/* 02A8E0 0002A8E0 AFAD00B4 */   sw    $t5, 0xb4($sp)
/* 02A8E4 0002A8E4 3C0BE700 */  lui   $t3, 0xe700
/* 02A8E8 0002A8E8 8C620000 */  lw    $v0, ($v1)
/* 02A8EC 0002A8EC 3C0EB900 */  lui   $t6, 0xb900
/* 02A8F0 0002A8F0 35CE031D */  ori   $t6, $t6, 0x31d
/* 02A8F4 0002A8F4 24580008 */  addiu $t8, $v0, 8
/* 02A8F8 0002A8F8 AC780000 */  sw    $t8, ($v1)
/* 02A8FC 0002A8FC AC400004 */  sw    $zero, 4($v0)
/* 02A900 0002A900 AC4B0000 */  sw    $t3, ($v0)
/* 02A904 0002A904 8C620000 */  lw    $v0, ($v1)
/* 02A908 0002A908 3C0F0050 */  lui   $t7, 0x50
/* 02A90C 0002A90C 35EF4240 */  ori   $t7, $t7, 0x4240
/* 02A910 0002A910 24590008 */  addiu $t9, $v0, 8
/* 02A914 0002A914 AC790000 */  sw    $t9, ($v1)
/* 02A918 0002A918 AC4F0004 */  sw    $t7, 4($v0)
/* 02A91C 0002A91C AC4E0000 */  sw    $t6, ($v0)
/* 02A920 0002A920 8C620000 */  lw    $v0, ($v1)
/* 02A924 0002A924 3C19BA00 */  lui   $t9, 0xba00
/* 02A928 0002A928 37390C02 */  ori   $t9, $t9, 0xc02
/* 02A92C 0002A92C 24580008 */  addiu $t8, $v0, 8
/* 02A930 0002A930 AC780000 */  sw    $t8, ($v1)
/* 02A934 0002A934 240E2000 */  addiu $t6, $zero, 0x2000
/* 02A938 0002A938 AC4E0004 */  sw    $t6, 4($v0)
/* 02A93C 0002A93C AC590000 */  sw    $t9, ($v0)
/* 02A940 0002A940 8C620000 */  lw    $v0, ($v1)
/* 02A944 0002A944 3C0D8009 */  lui   $t5, 0x8009
/* 02A948 0002A948 25ADFD0C */  addiu $t5, $t5, -0x2f4
/* 02A94C 0002A94C 244F0008 */  addiu $t7, $v0, 8
/* 02A950 0002A950 AC6F0000 */  sw    $t7, ($v1)
/* 02A954 0002A954 AC400004 */  sw    $zero, 4($v0)
/* 02A958 0002A958 AC4B0000 */  sw    $t3, ($v0)
/* 02A95C 0002A95C 8FB800E4 */  lw    $t8, 0xe4($sp)
/* 02A960 0002A960 1500000B */  bnez  $t0, .L0002A990
/* 02A964 0002A964 02186021 */   addu  $t4, $s0, $t8
/* 02A968 0002A968 8C620000 */  lw    $v0, ($v1)
/* 02A96C 0002A96C 3C0F8006 */  lui   $t7, 0x8006
/* 02A970 0002A970 25EFF228 */  addiu $t7, $t7, -0xdd8
/* 02A974 0002A974 24590008 */  addiu $t9, $v0, 8
/* 02A978 0002A978 AC790000 */  sw    $t9, ($v1)
/* 02A97C 0002A97C 3C0E0600 */  lui   $t6, 0x600
/* 02A980 0002A980 AC4E0000 */  sw    $t6, ($v0)
/* 02A984 0002A984 AC4F0004 */  sw    $t7, 4($v0)
/* 02A988 0002A988 10000018 */  b     .L0002A9EC
/* 02A98C 0002A98C 95B80000 */   lhu   $t8, ($t5)
.L0002A990:
/* 02A990 0002A990 8C620000 */  lw    $v0, ($v1)
/* 02A994 0002A994 3C0E8006 */  lui   $t6, 0x8006
/* 02A998 0002A998 25CEF240 */  addiu $t6, $t6, -0xdc0
/* 02A99C 0002A99C 24580008 */  addiu $t8, $v0, 8
/* 02A9A0 0002A9A0 AC780000 */  sw    $t8, ($v1)
/* 02A9A4 0002A9A4 3C190600 */  lui   $t9, 0x600
/* 02A9A8 0002A9A8 AC590000 */  sw    $t9, ($v0)
/* 02A9AC 0002A9AC AC4E0004 */  sw    $t6, 4($v0)
/* 02A9B0 0002A9B0 8C620000 */  lw    $v0, ($v1)
/* 02A9B4 0002A9B4 3C19FB00 */  lui   $t9, 0xfb00
/* 02A9B8 0002A9B8 310E00FF */  andi  $t6, $t0, 0xff
/* 02A9BC 0002A9BC 244F0008 */  addiu $t7, $v0, 8
/* 02A9C0 0002A9C0 AC6F0000 */  sw    $t7, ($v1)
/* 02A9C4 0002A9C4 AC400004 */  sw    $zero, 4($v0)
/* 02A9C8 0002A9C8 AC4B0000 */  sw    $t3, ($v0)
/* 02A9CC 0002A9CC 8C620000 */  lw    $v0, ($v1)
/* 02A9D0 0002A9D0 2401FF00 */  addiu $at, $zero, -0x100
/* 02A9D4 0002A9D4 01C17825 */  or    $t7, $t6, $at
/* 02A9D8 0002A9D8 24580008 */  addiu $t8, $v0, 8
/* 02A9DC 0002A9DC AC780000 */  sw    $t8, ($v1)
/* 02A9E0 0002A9E0 AC4F0004 */  sw    $t7, 4($v0)
/* 02A9E4 0002A9E4 AC590000 */  sw    $t9, ($v0)
/* 02A9E8 0002A9E8 95B80000 */  lhu   $t8, ($t5)
.L0002A9EC:
/* 02A9EC 0002A9EC 33190010 */  andi  $t9, $t8, 0x10
/* 02A9F0 0002A9F0 57200033 */  bnezl $t9, .L0002AAC0
/* 02A9F4 0002A9F4 8C620000 */   lw    $v0, ($v1)
/* 02A9F8 0002A9F8 8C620000 */  lw    $v0, ($v1)
/* 02A9FC 0002A9FC 3C18FD10 */  lui   $t8, 0xfd10
/* 02AA00 0002AA00 244E0008 */  addiu $t6, $v0, 8
/* 02AA04 0002AA04 AC6E0000 */  sw    $t6, ($v1)
/* 02AA08 0002AA08 AC400004 */  sw    $zero, 4($v0)
/* 02AA0C 0002AA0C AC4B0000 */  sw    $t3, ($v0)
/* 02AA10 0002AA10 8C620000 */  lw    $v0, ($v1)
/* 02AA14 0002AA14 3C198006 */  lui   $t9, 0x8006
/* 02AA18 0002AA18 27390138 */  addiu $t9, $t9, 0x138
/* 02AA1C 0002AA1C 244F0008 */  addiu $t7, $v0, 8
/* 02AA20 0002AA20 AC6F0000 */  sw    $t7, ($v1)
/* 02AA24 0002AA24 AC590004 */  sw    $t9, 4($v0)
/* 02AA28 0002AA28 AC580000 */  sw    $t8, ($v0)
/* 02AA2C 0002AA2C 8C620000 */  lw    $v0, ($v1)
/* 02AA30 0002AA30 3C0FE800 */  lui   $t7, 0xe800
/* 02AA34 0002AA34 3C19F500 */  lui   $t9, 0xf500
/* 02AA38 0002AA38 244E0008 */  addiu $t6, $v0, 8
/* 02AA3C 0002AA3C AC6E0000 */  sw    $t6, ($v1)
/* 02AA40 0002AA40 AC400004 */  sw    $zero, 4($v0)
/* 02AA44 0002AA44 AC4F0000 */  sw    $t7, ($v0)
/* 02AA48 0002AA48 8C620000 */  lw    $v0, ($v1)
/* 02AA4C 0002AA4C 37390100 */  ori   $t9, $t9, 0x100
/* 02AA50 0002AA50 3C0E0700 */  lui   $t6, 0x700
/* 02AA54 0002AA54 24580008 */  addiu $t8, $v0, 8
/* 02AA58 0002AA58 AC780000 */  sw    $t8, ($v1)
/* 02AA5C 0002AA5C AC4E0004 */  sw    $t6, 4($v0)
/* 02AA60 0002AA60 AC590000 */  sw    $t9, ($v0)
/* 02AA64 0002AA64 8C620000 */  lw    $v0, ($v1)
/* 02AA68 0002AA68 3C18E600 */  lui   $t8, 0xe600
/* 02AA6C 0002AA6C 3C0EF000 */  lui   $t6, 0xf000
/* 02AA70 0002AA70 244F0008 */  addiu $t7, $v0, 8
/* 02AA74 0002AA74 AC6F0000 */  sw    $t7, ($v1)
/* 02AA78 0002AA78 AC400004 */  sw    $zero, 4($v0)
/* 02AA7C 0002AA7C AC580000 */  sw    $t8, ($v0)
/* 02AA80 0002AA80 8C620000 */  lw    $v0, ($v1)
/* 02AA84 0002AA84 3C0F073F */  lui   $t7, 0x73f
/* 02AA88 0002AA88 35EFC000 */  ori   $t7, $t7, 0xc000
/* 02AA8C 0002AA8C 24590008 */  addiu $t9, $v0, 8
/* 02AA90 0002AA90 AC790000 */  sw    $t9, ($v1)
/* 02AA94 0002AA94 AC4F0004 */  sw    $t7, 4($v0)
/* 02AA98 0002AA98 AC4E0000 */  sw    $t6, ($v0)
/* 02AA9C 0002AA9C 8C620000 */  lw    $v0, ($v1)
/* 02AAA0 0002AAA0 24580008 */  addiu $t8, $v0, 8
/* 02AAA4 0002AAA4 AC780000 */  sw    $t8, ($v1)
/* 02AAA8 0002AAA8 AC400004 */  sw    $zero, 4($v0)
/* 02AAAC 0002AAAC AC4B0000 */  sw    $t3, ($v0)
/* 02AAB0 0002AAB0 95B90000 */  lhu   $t9, ($t5)
/* 02AAB4 0002AAB4 372E0010 */  ori   $t6, $t9, 0x10
/* 02AAB8 0002AAB8 A5AE0000 */  sh    $t6, ($t5)
/* 02AABC 0002AABC 8C620000 */  lw    $v0, ($v1)
.L0002AAC0:
/* 02AAC0 0002AAC0 8FB80094 */  lw    $t8, 0x94($sp)
/* 02AAC4 0002AAC4 3C01FD48 */  lui   $at, 0xfd48
/* 02AAC8 0002AAC8 244F0008 */  addiu $t7, $v0, 8
/* 02AACC 0002AACC 2719FFFF */  addiu $t9, $t8, -1
/* 02AAD0 0002AAD0 332E0FFF */  andi  $t6, $t9, 0xfff
/* 02AAD4 0002AAD4 AC6F0000 */  sw    $t7, ($v1)
/* 02AAD8 0002AAD8 01C17825 */  or    $t7, $t6, $at
/* 02AADC 0002AADC AC4F0000 */  sw    $t7, ($v0)
/* 02AAE0 0002AAE0 8FB80098 */  lw    $t8, 0x98($sp)
/* 02AAE4 0002AAE4 AC580004 */  sw    $t8, 4($v0)
/* 02AAE8 0002AAE8 8C620000 */  lw    $v0, ($v1)
/* 02AAEC 0002AAEC 8FAE00A0 */  lw    $t6, 0xa0($sp)
/* 02AAF0 0002AAF0 3C01F548 */  lui   $at, 0xf548
/* 02AAF4 0002AAF4 24590008 */  addiu $t9, $v0, 8
/* 02AAF8 0002AAF8 25CF0008 */  addiu $t7, $t6, 8
/* 02AAFC 0002AAFC 000FC0C3 */  sra   $t8, $t7, 3
/* 02AB00 0002AB00 AC790000 */  sw    $t9, ($v1)
/* 02AB04 0002AB04 331901FF */  andi  $t9, $t8, 0x1ff
/* 02AB08 0002AB08 00197240 */  sll   $t6, $t9, 9
/* 02AB0C 0002AB0C 01C17825 */  or    $t7, $t6, $at
/* 02AB10 0002AB10 AFAF0008 */  sw    $t7, 8($sp)
/* 02AB14 0002AB14 AC4F0000 */  sw    $t7, ($v0)
/* 02AB18 0002AB18 8FA800C4 */  lw    $t0, 0xc4($sp)
/* 02AB1C 0002AB1C 8FA900C8 */  lw    $t1, 0xc8($sp)
/* 02AB20 0002AB20 3C010700 */  lui   $at, 0x700
/* 02AB24 0002AB24 3118000F */  andi  $t8, $t0, 0xf
/* 02AB28 0002AB28 00184380 */  sll   $t0, $t8, 0xe
/* 02AB2C 0002AB2C 312E000F */  andi  $t6, $t1, 0xf
/* 02AB30 0002AB30 000E4900 */  sll   $t1, $t6, 4
/* 02AB34 0002AB34 0101C025 */  or    $t8, $t0, $at
/* 02AB38 0002AB38 0309C825 */  or    $t9, $t8, $t1
/* 02AB3C 0002AB3C AC590004 */  sw    $t9, 4($v0)
/* 02AB40 0002AB40 8C620000 */  lw    $v0, ($v1)
/* 02AB44 0002AB44 3C0FE600 */  lui   $t7, 0xe600
/* 02AB48 0002AB48 244E0008 */  addiu $t6, $v0, 8
/* 02AB4C 0002AB4C AC6E0000 */  sw    $t6, ($v1)
/* 02AB50 0002AB50 AC400004 */  sw    $zero, 4($v0)
/* 02AB54 0002AB54 AC4F0000 */  sw    $t7, ($v0)
/* 02AB58 0002AB58 8C620000 */  lw    $v0, ($v1)
/* 02AB5C 0002AB5C 3C19F400 */  lui   $t9, 0xf400
/* 02AB60 0002AB60 3C010700 */  lui   $at, 0x700
.L0002AB64:
/* 02AB64 0002AB64 24580008 */  addiu $t8, $v0, 8
/* 02AB68 0002AB68 AC780000 */  sw    $t8, ($v1)
/* 02AB6C 0002AB6C AC590000 */  sw    $t9, ($v0)
/* 02AB70 0002AB70 8FAA00A0 */  lw    $t2, 0xa0($sp)
/* 02AB74 0002AB74 8FAD009C */  lw    $t5, 0x9c($sp)
/* 02AB78 0002AB78 000A7080 */  sll   $t6, $t2, 2
/* 02AB7C 0002AB7C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 02AB80 0002AB80 000F5300 */  sll   $t2, $t7, 0xc
/* 02AB84 0002AB84 000DC880 */  sll   $t9, $t5, 2
/* 02AB88 0002AB88 332D0FFF */  andi  $t5, $t9, 0xfff
/* 02AB8C 0002AB8C 01417825 */  or    $t7, $t2, $at
/* 02AB90 0002AB90 01EDC025 */  or    $t8, $t7, $t5
/* 02AB94 0002AB94 AC580004 */  sw    $t8, 4($v0)
/* 02AB98 0002AB98 8C620000 */  lw    $v0, ($v1)
/* 02AB9C 0002AB9C 3C01E400 */  lui   $at, 0xe400
/* 02ABA0 0002ABA0 24590008 */  addiu $t9, $v0, 8
/* 02ABA4 0002ABA4 AC790000 */  sw    $t9, ($v1)
/* 02ABA8 0002ABA8 AC400004 */  sw    $zero, 4($v0)
/* 02ABAC 0002ABAC AC4B0000 */  sw    $t3, ($v0)
/* 02ABB0 0002ABB0 8C620000 */  lw    $v0, ($v1)
/* 02ABB4 0002ABB4 8FAF0008 */  lw    $t7, 8($sp)
/* 02ABB8 0002ABB8 0109C025 */  or    $t8, $t0, $t1
/* 02ABBC 0002ABBC 244E0008 */  addiu $t6, $v0, 8
/* 02ABC0 0002ABC0 AC6E0000 */  sw    $t6, ($v1)
/* 02ABC4 0002ABC4 AC580004 */  sw    $t8, 4($v0)
/* 02ABC8 0002ABC8 AC4F0000 */  sw    $t7, ($v0)
/* 02ABCC 0002ABCC 8C620000 */  lw    $v0, ($v1)
/* 02ABD0 0002ABD0 3C0EF200 */  lui   $t6, 0xf200
/* 02ABD4 0002ABD4 014D7825 */  or    $t7, $t2, $t5
/* 02ABD8 0002ABD8 24590008 */  addiu $t9, $v0, 8
/* 02ABDC 0002ABDC AC790000 */  sw    $t9, ($v1)
/* 02ABE0 0002ABE0 AC4F0004 */  sw    $t7, 4($v0)
/* 02ABE4 0002ABE4 AC4E0000 */  sw    $t6, ($v0)
/* 02ABE8 0002ABE8 8C620000 */  lw    $v0, ($v1)
/* 02ABEC 0002ABEC 8FB900E0 */  lw    $t9, 0xe0($sp)
/* 02ABF0 0002ABF0 8FAE00E8 */  lw    $t6, 0xe8($sp)
/* 02ABF4 0002ABF4 24580008 */  addiu $t8, $v0, 8
/* 02ABF8 0002ABF8 AC780000 */  sw    $t8, ($v1)
/* 02ABFC 0002ABFC 032E7821 */  addu  $t7, $t9, $t6
/* 02AC00 0002AC00 000FC080 */  sll   $t8, $t7, 2
/* 02AC04 0002AC04 000C7080 */  sll   $t6, $t4, 2
/* 02AC08 0002AC08 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 02AC0C 0002AC0C 33190FFF */  andi  $t9, $t8, 0xfff
/* 02AC10 0002AC10 000FC300 */  sll   $t8, $t7, 0xc
/* 02AC14 0002AC14 03017025 */  or    $t6, $t8, $at
/* 02AC18 0002AC18 01D97825 */  or    $t7, $t6, $t9
/* 02AC1C 0002AC1C AC4F0000 */  sw    $t7, ($v0)
/* 02AC20 0002AC20 8FAF00E0 */  lw    $t7, 0xe0($sp)
/* 02AC24 0002AC24 0010C080 */  sll   $t8, $s0, 2
/* 02AC28 0002AC28 330E0FFF */  andi  $t6, $t8, 0xfff
/* 02AC2C 0002AC2C 000ECB00 */  sll   $t9, $t6, 0xc
/* 02AC30 0002AC30 000FC080 */  sll   $t8, $t7, 2
/* 02AC34 0002AC34 330E0FFF */  andi  $t6, $t8, 0xfff
/* 02AC38 0002AC38 032E7825 */  or    $t7, $t9, $t6
/* 02AC3C 0002AC3C AC4F0004 */  sw    $t7, 4($v0)
/* 02AC40 0002AC40 8C620000 */  lw    $v0, ($v1)
/* 02AC44 0002AC44 3C19B400 */  lui   $t9, 0xb400
/* 02AC48 0002AC48 24580008 */  addiu $t8, $v0, 8
/* 02AC4C 0002AC4C AC780000 */  sw    $t8, ($v1)
/* 02AC50 0002AC50 AC590000 */  sw    $t9, ($v0)
/* 02AC54 0002AC54 8FB900B4 */  lw    $t9, 0xb4($sp)
/* 02AC58 0002AC58 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* 02AC5C 0002AC5C 332EFFFF */  andi  $t6, $t9, 0xffff
/* 02AC60 0002AC60 000FC400 */  sll   $t8, $t7, 0x10
/* 02AC64 0002AC64 030E7825 */  or    $t7, $t8, $t6
/* 02AC68 0002AC68 AC4F0004 */  sw    $t7, 4($v0)
/* 02AC6C 0002AC6C 8C620000 */  lw    $v0, ($v1)
/* 02AC70 0002AC70 3C18B300 */  lui   $t8, 0xb300
/* 02AC74 0002AC74 24590008 */  addiu $t9, $v0, 8
/* 02AC78 0002AC78 AC790000 */  sw    $t9, ($v1)
/* 02AC7C 0002AC7C AC580000 */  sw    $t8, ($v0)
/* 02AC80 0002AC80 8FB800AC */  lw    $t8, 0xac($sp)
/* 02AC84 0002AC84 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* 02AC88 0002AC88 330EFFFF */  andi  $t6, $t8, 0xffff
/* 02AC8C 0002AC8C 000FCC00 */  sll   $t9, $t7, 0x10
/* 02AC90 0002AC90 032E7825 */  or    $t7, $t9, $t6
/* 02AC94 0002AC94 AC4F0004 */  sw    $t7, 4($v0)
/* 02AC98 0002AC98 8C620000 */  lw    $v0, ($v1)
/* 02AC9C 0002AC9C 24580008 */  addiu $t8, $v0, 8
/* 02ACA0 0002ACA0 AC780000 */  sw    $t8, ($v1)
/* 02ACA4 0002ACA4 AC400004 */  sw    $zero, 4($v0)
/* 02ACA8 0002ACA8 AC4B0000 */  sw    $t3, ($v0)
.L0002ACAC:
/* 02ACAC 0002ACAC 8FB00004 */  lw    $s0, 4($sp)
/* 02ACB0 0002ACB0 03E00008 */  jr    $ra
/* 02ACB4 0002ACB4 27BD00D8 */   addiu $sp, $sp, 0xd8