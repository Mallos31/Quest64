glabel func_8001D8B0
/* 1E4B0 8001D8B0 2402FFFF */  addiu      $v0, $zero, -1
/* 1E4B4 8001D8B4 10A20011 */  beq        $a1, $v0, .L8001D8FC
/* 1E4B8 8001D8B8 00000000 */   nop       
/* 1E4BC 8001D8BC 848E0052 */  lh         $t6, 0x52($a0)
/* 1E4C0 8001D8C0 50AE0008 */  beql       $a1, $t6, .L8001D8E4
/* 1E4C4 8001D8C4 A4860058 */   sh        $a2, 0x58($a0)
/* 1E4C8 8001D8C8 948F0060 */  lhu        $t7, 0x60($a0)
/* 1E4CC 8001D8CC A4850052 */  sh         $a1, 0x52($a0)
/* 1E4D0 8001D8D0 35F90400 */  ori        $t9, $t7, 0x400
/* 1E4D4 8001D8D4 A4990060 */  sh         $t9, 0x60($a0)
/* 1E4D8 8001D8D8 3328FDFF */  andi       $t0, $t9, 0xfdff
/* 1E4DC 8001D8DC A4880060 */  sh         $t0, 0x60($a0)
/* 1E4E0 8001D8E0 A4860058 */  sh         $a2, 0x58($a0)
.L8001D8E4:
/* 1E4E4 8001D8E4 97A90016 */  lhu        $t1, 0x16($sp)
/* 1E4E8 8001D8E8 312A0001 */  andi       $t2, $t1, 1
/* 1E4EC 8001D8EC 11400003 */  beqz       $t2, .L8001D8FC
/* 1E4F0 8001D8F0 00000000 */   nop       
/* 1E4F4 8001D8F4 A4800056 */  sh         $zero, 0x56($a0)
/* 1E4F8 8001D8F8 A4800054 */  sh         $zero, 0x54($a0)
.L8001D8FC:
/* 1E4FC 8001D8FC 10E20007 */  beq        $a3, $v0, .L8001D91C
/* 1E500 8001D900 00000000 */   nop       
/* 1E504 8001D904 848C005A */  lh         $t4, 0x5a($a0)
/* 1E508 8001D908 50EC0003 */  beql       $a3, $t4, .L8001D918
/* 1E50C 8001D90C 8FAD0010 */   lw        $t5, 0x10($sp)
/* 1E510 8001D910 A487005A */  sh         $a3, 0x5a($a0)
/* 1E514 8001D914 8FAD0010 */  lw         $t5, 0x10($sp)
.L8001D918:
/* 1E518 8001D918 A48D005C */  sh         $t5, 0x5c($a0)
.L8001D91C:
/* 1E51C 8001D91C 03E00008 */  jr         $ra
/* 1E520 8001D920 00000000 */   nop       

glabel func_8001D924
/* 1E524 8001D924 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 1E528 8001D928 AFB00018 */  sw         $s0, 0x18($sp)
/* 1E52C 8001D92C 44866000 */  mtc1       $a2, $f12
/* 1E530 8001D930 00808025 */  or         $s0, $a0, $zero
/* 1E534 8001D934 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1E538 8001D938 84A30000 */  lh         $v1, ($a1)
/* 1E53C 8001D93C 96080054 */  lhu        $t0, 0x54($s0)
/* 1E540 8001D940 8CA70004 */  lw         $a3, 4($a1)
/* 1E544 8001D944 1860000B */  blez       $v1, .L8001D974
/* 1E548 8001D948 00001025 */   or        $v0, $zero, $zero
/* 1E54C 8001D94C 80EE0014 */  lb         $t6, 0x14($a3)
/* 1E550 8001D950 51C00009 */  beql       $t6, $zero, .L8001D978
/* 1E554 8001D954 94E60006 */   lhu       $a2, 6($a3)
/* 1E558 8001D958 24420001 */  addiu      $v0, $v0, 1
.L8001D95C:
/* 1E55C 8001D95C 0043082A */  slt        $at, $v0, $v1
/* 1E560 8001D960 10200004 */  beqz       $at, .L8001D974
/* 1E564 8001D964 24E70020 */   addiu     $a3, $a3, 0x20
/* 1E568 8001D968 80EF0014 */  lb         $t7, 0x14($a3)
/* 1E56C 8001D96C 55E0FFFB */  bnel       $t7, $zero, .L8001D95C
/* 1E570 8001D970 24420001 */   addiu     $v0, $v0, 1
.L8001D974:
/* 1E574 8001D974 94E60006 */  lhu        $a2, 6($a3)
.L8001D978:
/* 1E578 8001D978 00E02025 */  or         $a0, $a3, $zero
/* 1E57C 8001D97C 27A5002C */  addiu      $a1, $sp, 0x2c
/* 1E580 8001D980 50C0000F */  beql       $a2, $zero, .L8001D9C0
/* 1E584 8001D984 00003025 */   or        $a2, $zero, $zero
/* 1E588 8001D988 0106001A */  div        $zero, $t0, $a2
/* 1E58C 8001D98C 14C00002 */  bnez       $a2, .L8001D998
/* 1E590 8001D990 00000000 */   nop       
/* 1E594 8001D994 0007000D */  break      7
.L8001D998:
/* 1E598 8001D998 2401FFFF */   addiu     $at, $zero, -1
/* 1E59C 8001D99C 14C10004 */  bne        $a2, $at, .L8001D9B0
/* 1E5A0 8001D9A0 3C018000 */   lui       $at, 0x8000
/* 1E5A4 8001D9A4 15010002 */  bne        $t0, $at, .L8001D9B0
/* 1E5A8 8001D9A8 00000000 */   nop       
/* 1E5AC 8001D9AC 0006000D */  break      6
.L8001D9B0:
/* 1E5B0 8001D9B0 00003010 */   mfhi      $a2
/* 1E5B4 8001D9B4 10000003 */  b          .L8001D9C4
/* 1E5B8 8001D9B8 AFA70028 */   sw        $a3, 0x28($sp)
/* 1E5BC 8001D9BC 00003025 */  or         $a2, $zero, $zero
.L8001D9C0:
/* 1E5C0 8001D9C0 AFA70028 */  sw         $a3, 0x28($sp)
.L8001D9C4:
/* 1E5C4 8001D9C4 0C008AD0 */  jal        func_80022B40
/* 1E5C8 8001D9C8 E7AC0070 */   swc1      $f12, 0x70($sp)
/* 1E5CC 8001D9CC 96020060 */  lhu        $v0, 0x60($s0)
/* 1E5D0 8001D9D0 8FA70028 */  lw         $a3, 0x28($sp)
/* 1E5D4 8001D9D4 C7AC0070 */  lwc1       $f12, 0x70($sp)
/* 1E5D8 8001D9D8 30580200 */  andi       $t8, $v0, 0x200
/* 1E5DC 8001D9DC 13000029 */  beqz       $t8, .L8001DA84
/* 1E5E0 8001D9E0 304A0400 */   andi      $t2, $v0, 0x400
/* 1E5E4 8001D9E4 8CE20000 */  lw         $v0, ($a3)
/* 1E5E8 8001D9E8 94E60006 */  lhu        $a2, 6($a3)
/* 1E5EC 8001D9EC C7A4002C */  lwc1       $f4, 0x2c($sp)
/* 1E5F0 8001D9F0 94590032 */  lhu        $t9, 0x32($v0)
/* 1E5F4 8001D9F4 50D90006 */  beql       $a2, $t9, .L8001DA10
/* 1E5F8 8001D9F8 C4400000 */   lwc1      $f0, ($v0)
/* 1E5FC 8001D9FC 94490066 */  lhu        $t1, 0x66($v0)
.L8001DA00:
/* 1E600 8001DA00 24420034 */  addiu      $v0, $v0, 0x34
/* 1E604 8001DA04 54C9FFFE */  bnel       $a2, $t1, .L8001DA00
/* 1E608 8001DA08 94490066 */   lhu       $t1, 0x66($v0)
/* 1E60C 8001DA0C C4400000 */  lwc1       $f0, ($v0)
.L8001DA10:
/* 1E610 8001DA10 C60A0038 */  lwc1       $f10, 0x38($s0)
/* 1E614 8001DA14 C4420004 */  lwc1       $f2, 4($v0)
/* 1E618 8001DA18 46002180 */  add.s      $f6, $f4, $f0
/* 1E61C 8001DA1C C44E0008 */  lwc1       $f14, 8($v0)
/* 1E620 8001DA20 460C3202 */  mul.s      $f8, $f6, $f12
/* 1E624 8001DA24 460A4401 */  sub.s      $f16, $f8, $f10
/* 1E628 8001DA28 C608003C */  lwc1       $f8, 0x3c($s0)
/* 1E62C 8001DA2C E6100044 */  swc1       $f16, 0x44($s0)
/* 1E630 8001DA30 C7B20030 */  lwc1       $f18, 0x30($sp)
/* 1E634 8001DA34 46029100 */  add.s      $f4, $f18, $f2
/* 1E638 8001DA38 460C2182 */  mul.s      $f6, $f4, $f12
/* 1E63C 8001DA3C 46083281 */  sub.s      $f10, $f6, $f8
/* 1E640 8001DA40 C6060040 */  lwc1       $f6, 0x40($s0)
/* 1E644 8001DA44 E60A0048 */  swc1       $f10, 0x48($s0)
/* 1E648 8001DA48 C7B00034 */  lwc1       $f16, 0x34($sp)
/* 1E64C 8001DA4C 460E8480 */  add.s      $f18, $f16, $f14
/* 1E650 8001DA50 460C9102 */  mul.s      $f4, $f18, $f12
/* 1E654 8001DA54 46062201 */  sub.s      $f8, $f4, $f6
/* 1E658 8001DA58 E608004C */  swc1       $f8, 0x4c($s0)
/* 1E65C 8001DA5C C7AA002C */  lwc1       $f10, 0x2c($sp)
/* 1E660 8001DA60 460C5402 */  mul.s      $f16, $f10, $f12
/* 1E664 8001DA64 E6100038 */  swc1       $f16, 0x38($s0)
/* 1E668 8001DA68 C7B20030 */  lwc1       $f18, 0x30($sp)
/* 1E66C 8001DA6C 460C9102 */  mul.s      $f4, $f18, $f12
/* 1E670 8001DA70 E604003C */  swc1       $f4, 0x3c($s0)
/* 1E674 8001DA74 C7A60034 */  lwc1       $f6, 0x34($sp)
/* 1E678 8001DA78 460C3202 */  mul.s      $f8, $f6, $f12
/* 1E67C 8001DA7C 10000029 */  b          .L8001DB24
/* 1E680 8001DA80 E6080040 */   swc1      $f8, 0x40($s0)
.L8001DA84:
/* 1E684 8001DA84 11400010 */  beqz       $t2, .L8001DAC8
/* 1E688 8001DA88 C7AA002C */   lwc1      $f10, 0x2c($sp)
/* 1E68C 8001DA8C 44800000 */  mtc1       $zero, $f0
/* 1E690 8001DA90 00000000 */  nop        
/* 1E694 8001DA94 E6000044 */  swc1       $f0, 0x44($s0)
/* 1E698 8001DA98 E6000048 */  swc1       $f0, 0x48($s0)
/* 1E69C 8001DA9C E600004C */  swc1       $f0, 0x4c($s0)
/* 1E6A0 8001DAA0 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* 1E6A4 8001DAA4 460C5402 */  mul.s      $f16, $f10, $f12
/* 1E6A8 8001DAA8 E6100038 */  swc1       $f16, 0x38($s0)
/* 1E6AC 8001DAAC C7B20030 */  lwc1       $f18, 0x30($sp)
/* 1E6B0 8001DAB0 460C9102 */  mul.s      $f4, $f18, $f12
/* 1E6B4 8001DAB4 E604003C */  swc1       $f4, 0x3c($s0)
/* 1E6B8 8001DAB8 C7A60034 */  lwc1       $f6, 0x34($sp)
/* 1E6BC 8001DABC 460C3202 */  mul.s      $f8, $f6, $f12
/* 1E6C0 8001DAC0 10000018 */  b          .L8001DB24
/* 1E6C4 8001DAC4 E6080040 */   swc1      $f8, 0x40($s0)
.L8001DAC8:
/* 1E6C8 8001DAC8 460C5402 */  mul.s      $f16, $f10, $f12
/* 1E6CC 8001DACC C6120038 */  lwc1       $f18, 0x38($s0)
/* 1E6D0 8001DAD0 C60A003C */  lwc1       $f10, 0x3c($s0)
/* 1E6D4 8001DAD4 46128101 */  sub.s      $f4, $f16, $f18
/* 1E6D8 8001DAD8 E6040044 */  swc1       $f4, 0x44($s0)
/* 1E6DC 8001DADC C7A60030 */  lwc1       $f6, 0x30($sp)
/* 1E6E0 8001DAE0 460C3202 */  mul.s      $f8, $f6, $f12
/* 1E6E4 8001DAE4 C6060040 */  lwc1       $f6, 0x40($s0)
/* 1E6E8 8001DAE8 460A4401 */  sub.s      $f16, $f8, $f10
/* 1E6EC 8001DAEC E6100048 */  swc1       $f16, 0x48($s0)
/* 1E6F0 8001DAF0 C7B20034 */  lwc1       $f18, 0x34($sp)
/* 1E6F4 8001DAF4 460C9102 */  mul.s      $f4, $f18, $f12
/* 1E6F8 8001DAF8 46062201 */  sub.s      $f8, $f4, $f6
/* 1E6FC 8001DAFC E608004C */  swc1       $f8, 0x4c($s0)
/* 1E700 8001DB00 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* 1E704 8001DB04 460C5402 */  mul.s      $f16, $f10, $f12
/* 1E708 8001DB08 E6100038 */  swc1       $f16, 0x38($s0)
/* 1E70C 8001DB0C C7B20030 */  lwc1       $f18, 0x30($sp)
/* 1E710 8001DB10 460C9102 */  mul.s      $f4, $f18, $f12
/* 1E714 8001DB14 E604003C */  swc1       $f4, 0x3c($s0)
/* 1E718 8001DB18 C7A60034 */  lwc1       $f6, 0x34($sp)
/* 1E71C 8001DB1C 460C3202 */  mul.s      $f8, $f6, $f12
/* 1E720 8001DB20 E6080040 */  swc1       $f8, 0x40($s0)
.L8001DB24:
/* 1E724 8001DB24 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1E728 8001DB28 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E72C 8001DB2C 27BD0068 */  addiu      $sp, $sp, 0x68
/* 1E730 8001DB30 03E00008 */  jr         $ra
/* 1E734 8001DB34 00000000 */   nop       

glabel func_8001DB38
/* 1E738 8001DB38 27BDFF38 */  addiu      $sp, $sp, -0xc8
/* 1E73C 8001DB3C AFBE0058 */  sw         $fp, 0x58($sp)
/* 1E740 8001DB40 AFB70054 */  sw         $s7, 0x54($sp)
/* 1E744 8001DB44 AFB20040 */  sw         $s2, 0x40($sp)
/* 1E748 8001DB48 AFB00038 */  sw         $s0, 0x38($sp)
/* 1E74C 8001DB4C 00A08025 */  or         $s0, $a1, $zero
/* 1E750 8001DB50 00C09025 */  or         $s2, $a2, $zero
/* 1E754 8001DB54 0080B825 */  or         $s7, $a0, $zero
/* 1E758 8001DB58 00E0F025 */  or         $fp, $a3, $zero
/* 1E75C 8001DB5C AFBF005C */  sw         $ra, 0x5c($sp)
/* 1E760 8001DB60 AFB60050 */  sw         $s6, 0x50($sp)
/* 1E764 8001DB64 AFB5004C */  sw         $s5, 0x4c($sp)
/* 1E768 8001DB68 AFB40048 */  sw         $s4, 0x48($sp)
/* 1E76C 8001DB6C AFB30044 */  sw         $s3, 0x44($sp)
/* 1E770 8001DB70 AFB1003C */  sw         $s1, 0x3c($sp)
/* 1E774 8001DB74 3C018009 */  lui        $at, 0x8009
/* 1E778 8001DB78 AC20C5E0 */  sw         $zero, -0x3a20($at)
/* 1E77C 8001DB7C C6040024 */  lwc1       $f4, 0x24($s0)
/* 1E780 8001DB80 8E070014 */  lw         $a3, 0x14($s0)
/* 1E784 8001DB84 8E060010 */  lw         $a2, 0x10($s0)
/* 1E788 8001DB88 8E05000C */  lw         $a1, 0xc($s0)
/* 1E78C 8001DB8C E7A40010 */  swc1       $f4, 0x10($sp)
/* 1E790 8001DB90 C6060000 */  lwc1       $f6, ($s0)
/* 1E794 8001DB94 27A40078 */  addiu      $a0, $sp, 0x78
/* 1E798 8001DB98 E7A60014 */  swc1       $f6, 0x14($sp)
/* 1E79C 8001DB9C C6080004 */  lwc1       $f8, 4($s0)
/* 1E7A0 8001DBA0 E7A80018 */  swc1       $f8, 0x18($sp)
/* 1E7A4 8001DBA4 C60A0008 */  lwc1       $f10, 8($s0)
/* 1E7A8 8001DBA8 0C008CD8 */  jal        func_80023360
/* 1E7AC 8001DBAC E7AA001C */   swc1      $f10, 0x1c($sp)
/* 1E7B0 8001DBB0 C6100024 */  lwc1       $f16, 0x24($s0)
/* 1E7B4 8001DBB4 00008825 */  or         $s1, $zero, $zero
/* 1E7B8 8001DBB8 27B3006C */  addiu      $s3, $sp, 0x6c
/* 1E7BC 8001DBBC E7B0006C */  swc1       $f16, 0x6c($sp)
/* 1E7C0 8001DBC0 C6120024 */  lwc1       $f18, 0x24($s0)
/* 1E7C4 8001DBC4 E7B20070 */  swc1       $f18, 0x70($sp)
/* 1E7C8 8001DBC8 C6040024 */  lwc1       $f4, 0x24($s0)
/* 1E7CC 8001DBCC E7A40074 */  swc1       $f4, 0x74($sp)
/* 1E7D0 8001DBD0 86420000 */  lh         $v0, ($s2)
/* 1E7D4 8001DBD4 8E540004 */  lw         $s4, 4($s2)
/* 1E7D8 8001DBD8 96150054 */  lhu        $s5, 0x54($s0)
/* 1E7DC 8001DBDC 1840001A */  blez       $v0, .L8001DC48
/* 1E7E0 8001DBE0 96160056 */   lhu       $s6, 0x56($s0)
/* 1E7E4 8001DBE4 02808025 */  or         $s0, $s4, $zero
.L8001DBE8:
/* 1E7E8 8001DBE8 820E0014 */  lb         $t6, 0x14($s0)
/* 1E7EC 8001DBEC 55C00013 */  bnel       $t6, $zero, .L8001DC3C
/* 1E7F0 8001DBF0 26310001 */   addiu     $s1, $s1, 1
/* 1E7F4 8001DBF4 8E610000 */  lw         $at, ($s3)
/* 1E7F8 8001DBF8 27A40078 */  addiu      $a0, $sp, 0x78
/* 1E7FC 8001DBFC AFA10004 */  sw         $at, 4($sp)
/* 1E800 8001DC00 8E660004 */  lw         $a2, 4($s3)
/* 1E804 8001DC04 8FA50004 */  lw         $a1, 4($sp)
/* 1E808 8001DC08 AFA60008 */  sw         $a2, 8($sp)
/* 1E80C 8001DC0C 8E670008 */  lw         $a3, 8($s3)
/* 1E810 8001DC10 AFBE0028 */  sw         $fp, 0x28($sp)
/* 1E814 8001DC14 AFB40024 */  sw         $s4, 0x24($sp)
/* 1E818 8001DC18 AFB20020 */  sw         $s2, 0x20($sp)
/* 1E81C 8001DC1C AFB6001C */  sw         $s6, 0x1c($sp)
/* 1E820 8001DC20 AFB50018 */  sw         $s5, 0x18($sp)
/* 1E824 8001DC24 AFB10014 */  sw         $s1, 0x14($sp)
/* 1E828 8001DC28 AFB70010 */  sw         $s7, 0x10($sp)
/* 1E82C 8001DC2C 0C00771E */  jal        func_8001DC78
/* 1E830 8001DC30 AFA7000C */   sw        $a3, 0xc($sp)
/* 1E834 8001DC34 86420000 */  lh         $v0, ($s2)
/* 1E838 8001DC38 26310001 */  addiu      $s1, $s1, 1
.L8001DC3C:
/* 1E83C 8001DC3C 0222082A */  slt        $at, $s1, $v0
/* 1E840 8001DC40 1420FFE9 */  bnez       $at, .L8001DBE8
/* 1E844 8001DC44 26100020 */   addiu     $s0, $s0, 0x20
.L8001DC48:
/* 1E848 8001DC48 8FBF005C */  lw         $ra, 0x5c($sp)
/* 1E84C 8001DC4C 8FB00038 */  lw         $s0, 0x38($sp)
/* 1E850 8001DC50 8FB1003C */  lw         $s1, 0x3c($sp)
/* 1E854 8001DC54 8FB20040 */  lw         $s2, 0x40($sp)
/* 1E858 8001DC58 8FB30044 */  lw         $s3, 0x44($sp)
/* 1E85C 8001DC5C 8FB40048 */  lw         $s4, 0x48($sp)
/* 1E860 8001DC60 8FB5004C */  lw         $s5, 0x4c($sp)
/* 1E864 8001DC64 8FB60050 */  lw         $s6, 0x50($sp)
/* 1E868 8001DC68 8FB70054 */  lw         $s7, 0x54($sp)
/* 1E86C 8001DC6C 8FBE0058 */  lw         $fp, 0x58($sp)
/* 1E870 8001DC70 03E00008 */  jr         $ra
/* 1E874 8001DC74 27BD00C8 */   addiu     $sp, $sp, 0xc8

glabel func_8001DC78
/* 1E878 8001DC78 27BDFF10 */  addiu      $sp, $sp, -0xf0
/* 1E87C 8001DC7C AFBE0058 */  sw         $fp, 0x58($sp)
/* 1E880 8001DC80 AFB40048 */  sw         $s4, 0x48($sp)
/* 1E884 8001DC84 AFB00038 */  sw         $s0, 0x38($sp)
/* 1E888 8001DC88 00808025 */  or         $s0, $a0, $zero
/* 1E88C 8001DC8C 8FB40104 */  lw         $s4, 0x104($sp)
/* 1E890 8001DC90 8FBE0114 */  lw         $fp, 0x114($sp)
/* 1E894 8001DC94 AFBF005C */  sw         $ra, 0x5c($sp)
/* 1E898 8001DC98 AFB70054 */  sw         $s7, 0x54($sp)
/* 1E89C 8001DC9C AFB60050 */  sw         $s6, 0x50($sp)
/* 1E8A0 8001DCA0 AFB5004C */  sw         $s5, 0x4c($sp)
/* 1E8A4 8001DCA4 AFB30044 */  sw         $s3, 0x44($sp)
/* 1E8A8 8001DCA8 AFB20040 */  sw         $s2, 0x40($sp)
/* 1E8AC 8001DCAC AFB1003C */  sw         $s1, 0x3c($sp)
/* 1E8B0 8001DCB0 AFA500F4 */  sw         $a1, 0xf4($sp)
/* 1E8B4 8001DCB4 AFA600F8 */  sw         $a2, 0xf8($sp)
/* 1E8B8 8001DCB8 AFA700FC */  sw         $a3, 0xfc($sp)
/* 1E8BC 8001DCBC 00147140 */  sll        $t6, $s4, 5
/* 1E8C0 8001DCC0 01DE9021 */  addu       $s2, $t6, $fp
/* 1E8C4 8001DCC4 96460006 */  lhu        $a2, 6($s2)
/* 1E8C8 8001DCC8 8FAF0108 */  lw         $t7, 0x108($sp)
/* 1E8CC 8001DCCC 02402025 */  or         $a0, $s2, $zero
/* 1E8D0 8001DCD0 50C0000F */  beql       $a2, $zero, .L8001DD10
/* 1E8D4 8001DCD4 00003025 */   or        $a2, $zero, $zero
/* 1E8D8 8001DCD8 01E6001A */  div        $zero, $t7, $a2
/* 1E8DC 8001DCDC 14C00002 */  bnez       $a2, .L8001DCE8
/* 1E8E0 8001DCE0 00000000 */   nop       
/* 1E8E4 8001DCE4 0007000D */  break      7
.L8001DCE8:
/* 1E8E8 8001DCE8 2401FFFF */   addiu     $at, $zero, -1
/* 1E8EC 8001DCEC 14C10004 */  bne        $a2, $at, .L8001DD00
/* 1E8F0 8001DCF0 3C018000 */   lui       $at, 0x8000
/* 1E8F4 8001DCF4 15E10002 */  bne        $t7, $at, .L8001DD00
/* 1E8F8 8001DCF8 00000000 */   nop       
/* 1E8FC 8001DCFC 0006000D */  break      6
.L8001DD00:
/* 1E900 8001DD00 00003010 */   mfhi      $a2
/* 1E904 8001DD04 10000002 */  b          .L8001DD10
/* 1E908 8001DD08 00000000 */   nop       
/* 1E90C 8001DD0C 00003025 */  or         $a2, $zero, $zero
.L8001DD10:
/* 1E910 8001DD10 0C008AD0 */  jal        func_80022B40
/* 1E914 8001DD14 27A5007C */   addiu     $a1, $sp, 0x7c
/* 1E918 8001DD18 82580014 */  lb         $t8, 0x14($s2)
/* 1E91C 8001DD1C 27B500A0 */  addiu      $s5, $sp, 0xa0
/* 1E920 8001DD20 8FB70100 */  lw         $s7, 0x100($sp)
/* 1E924 8001DD24 1700000C */  bnez       $t8, .L8001DD58
/* 1E928 8001DD28 02A02025 */   or        $a0, $s5, $zero
/* 1E92C 8001DD2C 32F90001 */  andi       $t9, $s7, 1
/* 1E930 8001DD30 13200005 */  beqz       $t9, .L8001DD48
/* 1E934 8001DD34 32E80002 */   andi      $t0, $s7, 2
/* 1E938 8001DD38 44800000 */  mtc1       $zero, $f0
/* 1E93C 8001DD3C 00000000 */  nop        
/* 1E940 8001DD40 E7A0007C */  swc1       $f0, 0x7c($sp)
/* 1E944 8001DD44 E7A00084 */  swc1       $f0, 0x84($sp)
.L8001DD48:
/* 1E948 8001DD48 44800000 */  mtc1       $zero, $f0
/* 1E94C 8001DD4C 51000003 */  beql       $t0, $zero, .L8001DD5C
/* 1E950 8001DD50 C7A4008C */   lwc1      $f4, 0x8c($sp)
/* 1E954 8001DD54 E7A00080 */  swc1       $f0, 0x80($sp)
.L8001DD58:
/* 1E958 8001DD58 C7A4008C */  lwc1       $f4, 0x8c($sp)
.L8001DD5C:
/* 1E95C 8001DD5C C7A60088 */  lwc1       $f6, 0x88($sp)
/* 1E960 8001DD60 C7A80090 */  lwc1       $f8, 0x90($sp)
/* 1E964 8001DD64 C7AA0094 */  lwc1       $f10, 0x94($sp)
/* 1E968 8001DD68 C7B00098 */  lwc1       $f16, 0x98($sp)
/* 1E96C 8001DD6C C7B2009C */  lwc1       $f18, 0x9c($sp)
/* 1E970 8001DD70 8FB70100 */  lw         $s7, 0x100($sp)
/* 1E974 8001DD74 8FA5007C */  lw         $a1, 0x7c($sp)
/* 1E978 8001DD78 8FA60080 */  lw         $a2, 0x80($sp)
/* 1E97C 8001DD7C 8FA70084 */  lw         $a3, 0x84($sp)
/* 1E980 8001DD80 E7A40010 */  swc1       $f4, 0x10($sp)
/* 1E984 8001DD84 E7A60014 */  swc1       $f6, 0x14($sp)
/* 1E988 8001DD88 E7A80018 */  swc1       $f8, 0x18($sp)
/* 1E98C 8001DD8C E7AA001C */  swc1       $f10, 0x1c($sp)
/* 1E990 8001DD90 E7B00020 */  swc1       $f16, 0x20($sp)
/* 1E994 8001DD94 0C008F07 */  jal        func_80023C1C
/* 1E998 8001DD98 E7B20024 */   swc1      $f18, 0x24($sp)
/* 1E99C 8001DD9C 02A02025 */  or         $a0, $s5, $zero
/* 1E9A0 8001DDA0 0C00784E */  jal        func_8001E138
/* 1E9A4 8001DDA4 02402825 */   or        $a1, $s2, $zero
/* 1E9A8 8001DDA8 C7A400F4 */  lwc1       $f4, 0xf4($sp)
/* 1E9AC 8001DDAC C7A60094 */  lwc1       $f6, 0x94($sp)
/* 1E9B0 8001DDB0 C7AA00F8 */  lwc1       $f10, 0xf8($sp)
/* 1E9B4 8001DDB4 C7B00098 */  lwc1       $f16, 0x98($sp)
/* 1E9B8 8001DDB8 46062202 */  mul.s      $f8, $f4, $f6
/* 1E9BC 8001DDBC C7A6009C */  lwc1       $f6, 0x9c($sp)
/* 1E9C0 8001DDC0 C7A400FC */  lwc1       $f4, 0xfc($sp)
/* 1E9C4 8001DDC4 46105482 */  mul.s      $f18, $f10, $f16
/* 1E9C8 8001DDC8 02002025 */  or         $a0, $s0, $zero
/* 1E9CC 8001DDCC 02A02825 */  or         $a1, $s5, $zero
/* 1E9D0 8001DDD0 E7A800F4 */  swc1       $f8, 0xf4($sp)
/* 1E9D4 8001DDD4 46062202 */  mul.s      $f8, $f4, $f6
/* 1E9D8 8001DDD8 E7B200F8 */  swc1       $f18, 0xf8($sp)
/* 1E9DC 8001DDDC E7A800FC */  swc1       $f8, 0xfc($sp)
/* 1E9E0 8001DDE0 92490016 */  lbu        $t1, 0x16($s2)
/* 1E9E4 8001DDE4 312A0001 */  andi       $t2, $t1, 1
/* 1E9E8 8001DDE8 51400023 */  beql       $t2, $zero, .L8001DE78
/* 1E9EC 8001DDEC 02002025 */   or        $a0, $s0, $zero
/* 1E9F0 8001DDF0 0C008FA0 */  jal        func_80023E80
/* 1E9F4 8001DDF4 02A03025 */   or        $a2, $s5, $zero
/* 1E9F8 8001DDF8 3C028008 */  lui        $v0, 0x8008
/* 1E9FC 8001DDFC 24426DC0 */  addiu      $v0, $v0, 0x6dc0
/* 1EA00 8001DE00 C44A000C */  lwc1       $f10, 0xc($v0)
/* 1EA04 8001DE04 C4500010 */  lwc1       $f16, 0x10($v0)
/* 1EA08 8001DE08 C4520014 */  lwc1       $f18, 0x14($v0)
/* 1EA0C 8001DE0C 3C118009 */  lui        $s1, 0x8009
/* 1EA10 8001DE10 2631C5E8 */  addiu      $s1, $s1, -0x3a18
/* 1EA14 8001DE14 02202025 */  or         $a0, $s1, $zero
/* 1EA18 8001DE18 8FA500D0 */  lw         $a1, 0xd0($sp)
/* 1EA1C 8001DE1C 8FA600D4 */  lw         $a2, 0xd4($sp)
/* 1EA20 8001DE20 8FA700D8 */  lw         $a3, 0xd8($sp)
/* 1EA24 8001DE24 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 1EA28 8001DE28 E7B00014 */  swc1       $f16, 0x14($sp)
/* 1EA2C 8001DE2C 0C008DC7 */  jal        func_8002371C
/* 1EA30 8001DE30 E7B20018 */   swc1      $f18, 0x18($sp)
/* 1EA34 8001DE34 02202025 */  or         $a0, $s1, $zero
/* 1EA38 8001DE38 8FA500F4 */  lw         $a1, 0xf4($sp)
/* 1EA3C 8001DE3C 8FA600F8 */  lw         $a2, 0xf8($sp)
/* 1EA40 8001DE40 0C008F7D */  jal        func_80023DF4
/* 1EA44 8001DE44 8FA700FC */   lw        $a3, 0xfc($sp)
/* 1EA48 8001DE48 3C108008 */  lui        $s0, 0x8008
/* 1EA4C 8001DE4C 2610B2F8 */  addiu      $s0, $s0, -0x4d08
/* 1EA50 8001DE50 8E0B0000 */  lw         $t3, ($s0)
/* 1EA54 8001DE54 8FB60118 */  lw         $s6, 0x118($sp)
/* 1EA58 8001DE58 02202025 */  or         $a0, $s1, $zero
/* 1EA5C 8001DE5C 000B6180 */  sll        $t4, $t3, 6
/* 1EA60 8001DE60 02CC2821 */  addu       $a1, $s6, $t4
/* 1EA64 8001DE64 0C00D480 */  jal        func_80035200
/* 1EA68 8001DE68 24A500C0 */   addiu     $a1, $a1, 0xc0
/* 1EA6C 8001DE6C 1000000E */  b          .L8001DEA8
/* 1EA70 8001DE70 00000000 */   nop       
/* 1EA74 8001DE74 02002025 */  or         $a0, $s0, $zero
.L8001DE78:
/* 1EA78 8001DE78 02A02825 */  or         $a1, $s5, $zero
/* 1EA7C 8001DE7C 0C008FA0 */  jal        func_80023E80
/* 1EA80 8001DE80 02A03025 */   or        $a2, $s5, $zero
/* 1EA84 8001DE84 3C108008 */  lui        $s0, 0x8008
/* 1EA88 8001DE88 2610B2F8 */  addiu      $s0, $s0, -0x4d08
/* 1EA8C 8001DE8C 8E0D0000 */  lw         $t5, ($s0)
/* 1EA90 8001DE90 8FB60118 */  lw         $s6, 0x118($sp)
/* 1EA94 8001DE94 02A02025 */  or         $a0, $s5, $zero
/* 1EA98 8001DE98 000D7180 */  sll        $t6, $t5, 6
/* 1EA9C 8001DE9C 02CE2821 */  addu       $a1, $s6, $t6
/* 1EAA0 8001DEA0 0C00D480 */  jal        func_80035200
/* 1EAA4 8001DEA4 24A500C0 */   addiu     $a1, $a1, 0xc0
.L8001DEA8:
/* 1EAA8 8001DEA8 3C048008 */  lui        $a0, 0x8008
/* 1EAAC 8001DEAC 2484B2FC */  addiu      $a0, $a0, -0x4d04
/* 1EAB0 8001DEB0 8C820000 */  lw         $v0, ($a0)
/* 1EAB4 8001DEB4 3C180102 */  lui        $t8, 0x102
/* 1EAB8 8001DEB8 37180040 */  ori        $t8, $t8, 0x40
/* 1EABC 8001DEBC 244F0008 */  addiu      $t7, $v0, 8
/* 1EAC0 8001DEC0 AC8F0000 */  sw         $t7, ($a0)
/* 1EAC4 8001DEC4 AC580000 */  sw         $t8, ($v0)
/* 1EAC8 8001DEC8 8E190000 */  lw         $t9, ($s0)
/* 1EACC 8001DECC 3C0A0200 */  lui        $t2, 0x200
/* 1EAD0 8001DED0 254A0000 */  addiu      $t2, $t2, 0
/* 1EAD4 8001DED4 00194180 */  sll        $t0, $t9, 6
/* 1EAD8 8001DED8 250900C0 */  addiu      $t1, $t0, 0xc0
/* 1EADC 8001DEDC 012A5821 */  addu       $t3, $t1, $t2
/* 1EAE0 8001DEE0 AC4B0004 */  sw         $t3, 4($v0)
/* 1EAE4 8001DEE4 8E0C0000 */  lw         $t4, ($s0)
/* 1EAE8 8001DEE8 3C058009 */  lui        $a1, 0x8009
/* 1EAEC 8001DEEC 24A5C5E0 */  addiu      $a1, $a1, -0x3a20
/* 1EAF0 8001DEF0 258D0001 */  addiu      $t5, $t4, 1
/* 1EAF4 8001DEF4 AE0D0000 */  sw         $t5, ($s0)
/* 1EAF8 8001DEF8 924E0016 */  lbu        $t6, 0x16($s2)
/* 1EAFC 8001DEFC 3C198009 */  lui        $t9, 0x8009
/* 1EB00 8001DF00 2739C5B0 */  addiu      $t9, $t9, -0x3a50
/* 1EB04 8001DF04 31CF0002 */  andi       $t7, $t6, 2
/* 1EB08 8001DF08 11E0000E */  beqz       $t7, .L8001DF44
/* 1EB0C 8001DF0C 03C08025 */   or        $s0, $fp, $zero
/* 1EB10 8001DF10 8CA30000 */  lw         $v1, ($a1)
/* 1EB14 8001DF14 C7A400D0 */  lwc1       $f4, 0xd0($sp)
/* 1EB18 8001DF18 C7A600D4 */  lwc1       $f6, 0xd4($sp)
/* 1EB1C 8001DF1C 0003C080 */  sll        $t8, $v1, 2
/* 1EB20 8001DF20 0303C023 */  subu       $t8, $t8, $v1
/* 1EB24 8001DF24 0018C080 */  sll        $t8, $t8, 2
/* 1EB28 8001DF28 C7A800D8 */  lwc1       $f8, 0xd8($sp)
/* 1EB2C 8001DF2C 03191021 */  addu       $v0, $t8, $t9
/* 1EB30 8001DF30 24680001 */  addiu      $t0, $v1, 1
/* 1EB34 8001DF34 ACA80000 */  sw         $t0, ($a1)
/* 1EB38 8001DF38 E4440000 */  swc1       $f4, ($v0)
/* 1EB3C 8001DF3C E4460004 */  swc1       $f6, 4($v0)
/* 1EB40 8001DF40 E4480008 */  swc1       $f8, 8($v0)
.L8001DF44:
/* 1EB44 8001DF44 8E460018 */  lw         $a2, 0x18($s2)
/* 1EB48 8001DF48 8FB30110 */  lw         $s3, 0x110($sp)
/* 1EB4C 8001DF4C 14C00012 */  bnez       $a2, .L8001DF98
/* 1EB50 8001DF50 8E650008 */   lw        $a1, 8($s3)
/* 1EB54 8001DF54 82510015 */  lb         $s1, 0x15($s2)
/* 1EB58 8001DF58 2401FFFF */  addiu      $at, $zero, -1
/* 1EB5C 8001DF5C 12210028 */  beq        $s1, $at, .L8001E000
/* 1EB60 8001DF60 00114880 */   sll       $t1, $s1, 2
/* 1EB64 8001DF64 00A93021 */  addu       $a2, $a1, $t1
/* 1EB68 8001DF68 8CCA0000 */  lw         $t2, ($a2)
/* 1EB6C 8001DF6C 51400025 */  beql       $t2, $zero, .L8001E004
/* 1EB70 8001DF70 86620000 */   lh        $v0, ($s3)
/* 1EB74 8001DF74 8C820000 */  lw         $v0, ($a0)
/* 1EB78 8001DF78 3C0C0600 */  lui        $t4, 0x600
/* 1EB7C 8001DF7C 244B0008 */  addiu      $t3, $v0, 8
/* 1EB80 8001DF80 AC8B0000 */  sw         $t3, ($a0)
/* 1EB84 8001DF84 AC4C0000 */  sw         $t4, ($v0)
/* 1EB88 8001DF88 8CCD0000 */  lw         $t5, ($a2)
/* 1EB8C 8001DF8C AC4D0004 */  sw         $t5, 4($v0)
/* 1EB90 8001DF90 1000001C */  b          .L8001E004
/* 1EB94 8001DF94 86620000 */   lh        $v0, ($s3)
.L8001DF98:
/* 1EB98 8001DF98 8C820000 */  lw         $v0, ($a0)
/* 1EB9C 8001DF9C 3C0F0600 */  lui        $t7, 0x600
/* 1EBA0 8001DFA0 244E0008 */  addiu      $t6, $v0, 8
/* 1EBA4 8001DFA4 AC8E0000 */  sw         $t6, ($a0)
/* 1EBA8 8001DFA8 AC4F0000 */  sw         $t7, ($v0)
/* 1EBAC 8001DFAC 9659001C */  lhu        $t9, 0x1c($s2)
/* 1EBB0 8001DFB0 8FB8010C */  lw         $t8, 0x10c($sp)
/* 1EBB4 8001DFB4 00401825 */  or         $v1, $v0, $zero
/* 1EBB8 8001DFB8 0319001A */  div        $zero, $t8, $t9
/* 1EBBC 8001DFBC 00004010 */  mfhi       $t0
/* 1EBC0 8001DFC0 00084880 */  sll        $t1, $t0, 2
/* 1EBC4 8001DFC4 00C95021 */  addu       $t2, $a2, $t1
/* 1EBC8 8001DFC8 8D4B0000 */  lw         $t3, ($t2)
/* 1EBCC 8001DFCC 17200002 */  bnez       $t9, .L8001DFD8
/* 1EBD0 8001DFD0 00000000 */   nop       
/* 1EBD4 8001DFD4 0007000D */  break      7
.L8001DFD8:
/* 1EBD8 8001DFD8 2401FFFF */   addiu     $at, $zero, -1
/* 1EBDC 8001DFDC 17210004 */  bne        $t9, $at, .L8001DFF0
/* 1EBE0 8001DFE0 3C018000 */   lui       $at, 0x8000
/* 1EBE4 8001DFE4 17010002 */  bne        $t8, $at, .L8001DFF0
/* 1EBE8 8001DFE8 00000000 */   nop       
/* 1EBEC 8001DFEC 0006000D */  break      6
.L8001DFF0:
/* 1EBF0 8001DFF0 000B6080 */   sll       $t4, $t3, 2
/* 1EBF4 8001DFF4 00AC6821 */  addu       $t5, $a1, $t4
/* 1EBF8 8001DFF8 8DAE0000 */  lw         $t6, ($t5)
/* 1EBFC 8001DFFC AC6E0004 */  sw         $t6, 4($v1)
.L8001E000:
/* 1EC00 8001E000 86620000 */  lh         $v0, ($s3)
.L8001E004:
/* 1EC04 8001E004 26920001 */  addiu      $s2, $s4, 1
/* 1EC08 8001E008 27B400F4 */  addiu      $s4, $sp, 0xf4
/* 1EC0C 8001E00C 1840001B */  blez       $v0, .L8001E07C
/* 1EC10 8001E010 00008825 */   or        $s1, $zero, $zero
.L8001E014:
/* 1EC14 8001E014 820F0014 */  lb         $t7, 0x14($s0)
/* 1EC18 8001E018 564F0015 */  bnel       $s2, $t7, .L8001E070
/* 1EC1C 8001E01C 26310001 */   addiu     $s1, $s1, 1
/* 1EC20 8001E020 8E810000 */  lw         $at, ($s4)
/* 1EC24 8001E024 8FA80108 */  lw         $t0, 0x108($sp)
/* 1EC28 8001E028 8FA9010C */  lw         $t1, 0x10c($sp)
/* 1EC2C 8001E02C AFA10004 */  sw         $at, 4($sp)
/* 1EC30 8001E030 8E860004 */  lw         $a2, 4($s4)
/* 1EC34 8001E034 8FA50004 */  lw         $a1, 4($sp)
/* 1EC38 8001E038 02A02025 */  or         $a0, $s5, $zero
/* 1EC3C 8001E03C AFA60008 */  sw         $a2, 8($sp)
/* 1EC40 8001E040 8E870008 */  lw         $a3, 8($s4)
/* 1EC44 8001E044 AFB60028 */  sw         $s6, 0x28($sp)
/* 1EC48 8001E048 AFBE0024 */  sw         $fp, 0x24($sp)
/* 1EC4C 8001E04C AFB30020 */  sw         $s3, 0x20($sp)
/* 1EC50 8001E050 AFB10014 */  sw         $s1, 0x14($sp)
/* 1EC54 8001E054 AFB70010 */  sw         $s7, 0x10($sp)
/* 1EC58 8001E058 AFA80018 */  sw         $t0, 0x18($sp)
/* 1EC5C 8001E05C AFA9001C */  sw         $t1, 0x1c($sp)
/* 1EC60 8001E060 0C00771E */  jal        func_8001DC78
/* 1EC64 8001E064 AFA7000C */   sw        $a3, 0xc($sp)
/* 1EC68 8001E068 86620000 */  lh         $v0, ($s3)
/* 1EC6C 8001E06C 26310001 */  addiu      $s1, $s1, 1
.L8001E070:
/* 1EC70 8001E070 0222082A */  slt        $at, $s1, $v0
/* 1EC74 8001E074 1420FFE7 */  bnez       $at, .L8001E014
/* 1EC78 8001E078 26100020 */   addiu     $s0, $s0, 0x20
.L8001E07C:
/* 1EC7C 8001E07C 8FBF005C */  lw         $ra, 0x5c($sp)
/* 1EC80 8001E080 8FB00038 */  lw         $s0, 0x38($sp)
/* 1EC84 8001E084 8FB1003C */  lw         $s1, 0x3c($sp)
/* 1EC88 8001E088 8FB20040 */  lw         $s2, 0x40($sp)
/* 1EC8C 8001E08C 8FB30044 */  lw         $s3, 0x44($sp)
/* 1EC90 8001E090 8FB40048 */  lw         $s4, 0x48($sp)
/* 1EC94 8001E094 8FB5004C */  lw         $s5, 0x4c($sp)
/* 1EC98 8001E098 8FB60050 */  lw         $s6, 0x50($sp)
/* 1EC9C 8001E09C 8FB70054 */  lw         $s7, 0x54($sp)
/* 1ECA0 8001E0A0 8FBE0058 */  lw         $fp, 0x58($sp)
/* 1ECA4 8001E0A4 03E00008 */  jr         $ra
/* 1ECA8 8001E0A8 27BD00F0 */   addiu     $sp, $sp, 0xf0

glabel func_8001E0AC
/* 1ECAC 8001E0AC 94AE0054 */  lhu        $t6, 0x54($a1)
/* 1ECB0 8001E0B0 01C47821 */  addu       $t7, $t6, $a0
/* 1ECB4 8001E0B4 A4AF0054 */  sh         $t7, 0x54($a1)
/* 1ECB8 8001E0B8 84C30002 */  lh         $v1, 2($a2)
/* 1ECBC 8001E0BC 31E2FFFF */  andi       $v0, $t7, 0xffff
/* 1ECC0 8001E0C0 0043082A */  slt        $at, $v0, $v1
/* 1ECC4 8001E0C4 54200015 */  bnel       $at, $zero, .L8001E11C
/* 1ECC8 8001E0C8 94AD0060 */   lhu       $t5, 0x60($a1)
/* 1ECCC 8001E0CC 84A4005A */  lh         $a0, 0x5a($a1)
/* 1ECD0 8001E0D0 84B80052 */  lh         $t8, 0x52($a1)
/* 1ECD4 8001E0D4 5098000B */  beql       $a0, $t8, .L8001E104
/* 1ECD8 8001E0D8 94AB0060 */   lhu       $t3, 0x60($a1)
/* 1ECDC 8001E0DC 94A80060 */  lhu        $t0, 0x60($a1)
/* 1ECE0 8001E0E0 94B9005C */  lhu        $t9, 0x5c($a1)
/* 1ECE4 8001E0E4 A4A40052 */  sh         $a0, 0x52($a1)
/* 1ECE8 8001E0E8 35090400 */  ori        $t1, $t0, 0x400
/* 1ECEC 8001E0EC A4A00054 */  sh         $zero, 0x54($a1)
/* 1ECF0 8001E0F0 A4A00056 */  sh         $zero, 0x56($a1)
/* 1ECF4 8001E0F4 A4A90060 */  sh         $t1, 0x60($a1)
/* 1ECF8 8001E0F8 1000000A */  b          .L8001E124
/* 1ECFC 8001E0FC A4B90058 */   sh        $t9, 0x58($a1)
/* 1ED00 8001E100 94AB0060 */  lhu        $t3, 0x60($a1)
.L8001E104:
/* 1ED04 8001E104 00435023 */  subu       $t2, $v0, $v1
/* 1ED08 8001E108 A4AA0054 */  sh         $t2, 0x54($a1)
/* 1ED0C 8001E10C 356C0200 */  ori        $t4, $t3, 0x200
/* 1ED10 8001E110 10000004 */  b          .L8001E124
/* 1ED14 8001E114 A4AC0060 */   sh        $t4, 0x60($a1)
/* 1ED18 8001E118 94AD0060 */  lhu        $t5, 0x60($a1)
.L8001E11C:
/* 1ED1C 8001E11C 31AEF9FF */  andi       $t6, $t5, 0xf9ff
/* 1ED20 8001E120 A4AE0060 */  sh         $t6, 0x60($a1)
.L8001E124:
/* 1ED24 8001E124 94AF0056 */  lhu        $t7, 0x56($a1)
/* 1ED28 8001E128 25F80001 */  addiu      $t8, $t7, 1
/* 1ED2C 8001E12C A4B80056 */  sh         $t8, 0x56($a1)
/* 1ED30 8001E130 03E00008 */  jr         $ra
/* 1ED34 8001E134 00000000 */   nop       

glabel func_8001E138
/* 1ED38 8001E138 C4800000 */  lwc1       $f0, ($a0)
/* 1ED3C 8001E13C C4A40008 */  lwc1       $f4, 8($a1)
/* 1ED40 8001E140 C4820010 */  lwc1       $f2, 0x10($a0)
/* 1ED44 8001E144 C4A8000C */  lwc1       $f8, 0xc($a1)
/* 1ED48 8001E148 46040182 */  mul.s      $f6, $f0, $f4
/* 1ED4C 8001E14C C48C0020 */  lwc1       $f12, 0x20($a0)
/* 1ED50 8001E150 C4B20010 */  lwc1       $f18, 0x10($a1)
/* 1ED54 8001E154 46081282 */  mul.s      $f10, $f2, $f8
/* 1ED58 8001E158 C4800004 */  lwc1       $f0, 4($a0)
/* 1ED5C 8001E15C C4820014 */  lwc1       $f2, 0x14($a0)
/* 1ED60 8001E160 46126102 */  mul.s      $f4, $f12, $f18
/* 1ED64 8001E164 C48C0024 */  lwc1       $f12, 0x24($a0)
/* 1ED68 8001E168 460A3400 */  add.s      $f16, $f6, $f10
/* 1ED6C 8001E16C C4860030 */  lwc1       $f6, 0x30($a0)
/* 1ED70 8001E170 46048200 */  add.s      $f8, $f16, $f4
/* 1ED74 8001E174 46083281 */  sub.s      $f10, $f6, $f8
/* 1ED78 8001E178 E48A0030 */  swc1       $f10, 0x30($a0)
/* 1ED7C 8001E17C C4B20008 */  lwc1       $f18, 8($a1)
/* 1ED80 8001E180 C4A4000C */  lwc1       $f4, 0xc($a1)
/* 1ED84 8001E184 C4AA0010 */  lwc1       $f10, 0x10($a1)
/* 1ED88 8001E188 46120402 */  mul.s      $f16, $f0, $f18
/* 1ED8C 8001E18C C4800008 */  lwc1       $f0, 8($a0)
/* 1ED90 8001E190 46041182 */  mul.s      $f6, $f2, $f4
/* 1ED94 8001E194 C4820018 */  lwc1       $f2, 0x18($a0)
/* 1ED98 8001E198 460A6482 */  mul.s      $f18, $f12, $f10
/* 1ED9C 8001E19C C48C0028 */  lwc1       $f12, 0x28($a0)
/* 1EDA0 8001E1A0 46068200 */  add.s      $f8, $f16, $f6
/* 1EDA4 8001E1A4 C4900034 */  lwc1       $f16, 0x34($a0)
/* 1EDA8 8001E1A8 46124100 */  add.s      $f4, $f8, $f18
/* 1EDAC 8001E1AC 46048181 */  sub.s      $f6, $f16, $f4
/* 1EDB0 8001E1B0 E4860034 */  swc1       $f6, 0x34($a0)
/* 1EDB4 8001E1B4 C4AA0008 */  lwc1       $f10, 8($a1)
/* 1EDB8 8001E1B8 C4B2000C */  lwc1       $f18, 0xc($a1)
/* 1EDBC 8001E1BC C4A60010 */  lwc1       $f6, 0x10($a1)
/* 1EDC0 8001E1C0 460A0202 */  mul.s      $f8, $f0, $f10
/* 1EDC4 8001E1C4 00000000 */  nop        
/* 1EDC8 8001E1C8 46121402 */  mul.s      $f16, $f2, $f18
/* 1EDCC 8001E1CC 46104100 */  add.s      $f4, $f8, $f16
/* 1EDD0 8001E1D0 46066282 */  mul.s      $f10, $f12, $f6
/* 1EDD4 8001E1D4 C4880038 */  lwc1       $f8, 0x38($a0)
/* 1EDD8 8001E1D8 460A2480 */  add.s      $f18, $f4, $f10
/* 1EDDC 8001E1DC 46124401 */  sub.s      $f16, $f8, $f18
/* 1EDE0 8001E1E0 E4900038 */  swc1       $f16, 0x38($a0)
/* 1EDE4 8001E1E4 03E00008 */  jr         $ra
/* 1EDE8 8001E1E8 00000000 */   nop       
/* 1EDEC 8001E1EC 00000000 */  nop        
