.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80102074
/* DC3694 80102074 27BDF9B8 */  addiu      $sp, $sp, -0x648
/* DC3698 80102078 3C038016 */  lui        $v1, 0x8016
/* DC369C 8010207C AFBF003C */  sw         $ra, 0x3c($sp)
/* DC36A0 80102080 AFBE0038 */  sw         $fp, 0x38($sp)
/* DC36A4 80102084 AFB70034 */  sw         $s7, 0x34($sp)
/* DC36A8 80102088 AFB60030 */  sw         $s6, 0x30($sp)
/* DC36AC 8010208C AFB5002C */  sw         $s5, 0x2c($sp)
/* DC36B0 80102090 AFB40028 */  sw         $s4, 0x28($sp)
/* DC36B4 80102094 AFB30024 */  sw         $s3, 0x24($sp)
/* DC36B8 80102098 AFB20020 */  sw         $s2, 0x20($sp)
/* DC36BC 8010209C AFB1001C */  sw         $s1, 0x1c($sp)
/* DC36C0 801020A0 AFB00018 */  sw         $s0, 0x18($sp)
/* DC36C4 801020A4 AFA40648 */  sw         $a0, 0x648($sp)
/* DC36C8 801020A8 24636250 */  addiu      $v1, $v1, 0x6250
/* DC36CC 801020AC 27A20138 */  addiu      $v0, $sp, 0x138
/* DC36D0 801020B0 00003825 */  or         $a3, $zero, $zero
.L801020B4:
/* DC36D4 801020B4 A4470004 */  sh         $a3, 4($v0)
/* DC36D8 801020B8 8C6E003C */  lw         $t6, 0x3c($v1)
/* DC36DC 801020BC 24E70001 */  addiu      $a3, $a3, 1
/* DC36E0 801020C0 28E10096 */  slti       $at, $a3, 0x96
/* DC36E4 801020C4 24420008 */  addiu      $v0, $v0, 8
/* DC36E8 801020C8 24630050 */  addiu      $v1, $v1, 0x50
/* DC36EC 801020CC 1420FFF9 */  bnez       $at, .L801020B4
/* DC36F0 801020D0 AC4EFFF8 */   sw        $t6, -8($v0)
/* DC36F4 801020D4 00003825 */  or         $a3, $zero, $zero
/* DC36F8 801020D8 24080095 */  addiu      $t0, $zero, 0x95
/* DC36FC 801020DC 27A50130 */  addiu      $a1, $sp, 0x130
/* DC3700 801020E0 01073023 */  subu       $a2, $t0, $a3
.L801020E4:
/* DC3704 801020E4 18C00014 */  blez       $a2, .L80102138
/* DC3708 801020E8 00002025 */   or        $a0, $zero, $zero
/* DC370C 801020EC 27A20138 */  addiu      $v0, $sp, 0x138
.L801020F0:
/* DC3710 801020F0 8C4F0008 */  lw         $t7, 8($v0)
/* DC3714 801020F4 8C580000 */  lw         $t8, ($v0)
/* DC3718 801020F8 24840001 */  addiu      $a0, $a0, 1
/* DC371C 801020FC 24430008 */  addiu      $v1, $v0, 8
/* DC3720 80102100 01F8082B */  sltu       $at, $t7, $t8
/* DC3724 80102104 1020000A */  beqz       $at, .L80102130
/* DC3728 80102108 00000000 */   nop
/* DC372C 8010210C 8C610000 */  lw         $at, ($v1)
/* DC3730 80102110 8C4B0004 */  lw         $t3, 4($v0)
/* DC3734 80102114 ACB80000 */  sw         $t8, ($a1)
/* DC3738 80102118 AC410000 */  sw         $at, ($v0)
/* DC373C 8010211C 8C6D0004 */  lw         $t5, 4($v1)
/* DC3740 80102120 ACAB0004 */  sw         $t3, 4($a1)
/* DC3744 80102124 AC4D0004 */  sw         $t5, 4($v0)
/* DC3748 80102128 AC780000 */  sw         $t8, ($v1)
/* DC374C 8010212C AC6B0004 */  sw         $t3, 4($v1)
.L80102130:
/* DC3750 80102130 1486FFEF */  bne        $a0, $a2, .L801020F0
/* DC3754 80102134 24420008 */   addiu     $v0, $v0, 8
.L80102138:
/* DC3758 80102138 24E70001 */  addiu      $a3, $a3, 1
/* DC375C 8010213C 28E10095 */  slti       $at, $a3, 0x95
/* DC3760 80102140 5420FFE8 */  bnel       $at, $zero, .L801020E4
/* DC3764 80102144 01073023 */   subu      $a2, $t0, $a3
/* DC3768 80102148 3C108008 */  lui        $s0, %hi(UNK_DisplayListCommand)
/* DC376C 8010214C 2610B2FC */  addiu      $s0, $s0, %lo(UNK_DisplayListCommand)
/* DC3770 80102150 8E020000 */  lw         $v0, ($s0)
/* DC3774 80102154 3C17E700 */  lui        $s7, 0xe700
/* DC3778 80102158 3C0BB900 */  lui        $t3, 0xb900
/* DC377C 8010215C 24580008 */  addiu      $t8, $v0, 8
/* DC3780 80102160 AE180000 */  sw         $t8, ($s0)
/* DC3784 80102164 AC400004 */  sw         $zero, 4($v0)
/* DC3788 80102168 AC570000 */  sw         $s7, ($v0)
/* DC378C 8010216C 8E020000 */  lw         $v0, ($s0)
/* DC3790 80102170 3C0C0050 */  lui        $t4, 0x50
/* DC3794 80102174 358C4240 */  ori        $t4, $t4, 0x4240
/* DC3798 80102178 24590008 */  addiu      $t9, $v0, 8
/* DC379C 8010217C AE190000 */  sw         $t9, ($s0)
/* DC37A0 80102180 356B031D */  ori        $t3, $t3, 0x31d
/* DC37A4 80102184 AC4B0000 */  sw         $t3, ($v0)
/* DC37A8 80102188 AC4C0004 */  sw         $t4, 4($v0)
/* DC37AC 8010218C 8E020000 */  lw         $v0, ($s0)
/* DC37B0 80102190 3C0EBA00 */  lui        $t6, 0xba00
/* DC37B4 80102194 35CE0C02 */  ori        $t6, $t6, 0xc02
/* DC37B8 80102198 244D0008 */  addiu      $t5, $v0, 8
/* DC37BC 8010219C AE0D0000 */  sw         $t5, ($s0)
/* DC37C0 801021A0 240F2000 */  addiu      $t7, $zero, 0x2000
/* DC37C4 801021A4 27B80138 */  addiu      $t8, $sp, 0x138
/* DC37C8 801021A8 AC4F0004 */  sw         $t7, 4($v0)
/* DC37CC 801021AC AC4E0000 */  sw         $t6, ($v0)
/* DC37D0 801021B0 AFB8005C */  sw         $t8, 0x5c($sp)
/* DC37D4 801021B4 3C1EE600 */  lui        $fp, 0xe600
/* DC37D8 801021B8 3C150700 */  lui        $s5, 0x700
.L801021BC:
/* DC37DC 801021BC 8FB9005C */  lw         $t9, 0x5c($sp)
/* DC37E0 801021C0 3C0C8016 */  lui        $t4, %hi(D_80166250)
/* DC37E4 801021C4 258C6250 */  addiu      $t4, $t4, %lo(D_80166250)
/* DC37E8 801021C8 97330004 */  lhu        $s3, 4($t9)
/* DC37EC 801021CC 0000B025 */  or         $s6, $zero, $zero
/* DC37F0 801021D0 0000A025 */  or         $s4, $zero, $zero
/* DC37F4 801021D4 00135880 */  sll        $t3, $s3, 2
/* DC37F8 801021D8 01735821 */  addu       $t3, $t3, $s3
/* DC37FC 801021DC 000B5900 */  sll        $t3, $t3, 4
/* DC3800 801021E0 016C9021 */  addu       $s2, $t3, $t4
/* DC3804 801021E4 8E430000 */  lw         $v1, ($s2)
/* DC3808 801021E8 8FAE0648 */  lw         $t6, 0x648($sp)
/* DC380C 801021EC 24010001 */  addiu      $at, $zero, 1
/* DC3810 801021F0 00036800 */  sll        $t5, $v1, 0
/* DC3814 801021F4 05A303A8 */  bgezl      $t5, .L80103098
/* DC3818 801021F8 8FAB005C */   lw        $t3, 0x5c($sp)
/* DC381C 801021FC 15C10006 */  bne        $t6, $at, .L80102218
/* DC3820 80102200 8FB80648 */   lw        $t8, 0x648($sp)
/* DC3824 80102204 00037A00 */  sll        $t7, $v1, 8
/* DC3828 80102208 05E20007 */  bltzl      $t7, .L80102228
/* DC382C 8010220C 306B0800 */   andi      $t3, $v1, 0x800
/* DC3830 80102210 100003A1 */  b          .L80103098
/* DC3834 80102214 8FAB005C */   lw        $t3, 0x5c($sp)
.L80102218:
/* DC3838 80102218 17000002 */  bnez       $t8, .L80102224
/* DC383C 8010221C 0003CA00 */   sll       $t9, $v1, 8
/* DC3840 80102220 0720039C */  bltz       $t9, .L80103094
.L80102224:
/* DC3844 80102224 306B0800 */   andi      $t3, $v1, 0x800
.L80102228:
/* DC3848 80102228 11600008 */  beqz       $t3, .L8010224C
/* DC384C 8010222C 00608825 */   or        $s1, $v1, $zero
/* DC3850 80102230 02602025 */  or         $a0, $s3, $zero
/* DC3854 80102234 0C040697 */  jal        func_80101A5C
/* DC3858 80102238 00602825 */   or        $a1, $v1, $zero
/* DC385C 8010223C 10400003 */  beqz       $v0, .L8010224C
/* DC3860 80102240 2401F7FF */   addiu     $at, $zero, -0x801
/* DC3864 80102244 02216024 */  and        $t4, $s1, $at
/* DC3868 80102248 01808825 */  or         $s1, $t4, $zero
.L8010224C:
/* DC386C 8010224C 322D4000 */  andi       $t5, $s1, 0x4000
/* DC3870 80102250 11A00007 */  beqz       $t5, .L80102270
/* DC3874 80102254 02602025 */   or        $a0, $s3, $zero
/* DC3878 80102258 0C040743 */  jal        func_80101D0C
/* DC387C 8010225C 02202825 */   or        $a1, $s1, $zero
/* DC3880 80102260 10400003 */  beqz       $v0, .L80102270
/* DC3884 80102264 2401BFFF */   addiu     $at, $zero, -0x4001
/* DC3888 80102268 02217024 */  and        $t6, $s1, $at
/* DC388C 8010226C 01C08825 */  or         $s1, $t6, $zero
.L80102270:
/* DC3890 80102270 322F8000 */  andi       $t7, $s1, 0x8000
/* DC3894 80102274 11E00008 */  beqz       $t7, .L80102298
/* DC3898 80102278 02602025 */   or        $a0, $s3, $zero
/* DC389C 8010227C 0C0407A3 */  jal        func_80101E8C
/* DC38A0 80102280 02202825 */   or        $a1, $s1, $zero
/* DC38A4 80102284 10400004 */  beqz       $v0, .L80102298
/* DC38A8 80102288 3C01FFFF */   lui       $at, 0xffff
/* DC38AC 8010228C 34217FFF */  ori        $at, $at, 0x7fff
/* DC38B0 80102290 0221C024 */  and        $t8, $s1, $at
/* DC38B4 80102294 03008825 */  or         $s1, $t8, $zero
.L80102298:
/* DC38B8 80102298 86590004 */  lh         $t9, 4($s2)
/* DC38BC 8010229C 02602025 */  or         $a0, $s3, $zero
/* DC38C0 801022A0 02202825 */  or         $a1, $s1, $zero
/* DC38C4 801022A4 AFB9060C */  sw         $t9, 0x60c($sp)
/* DC38C8 801022A8 864B0006 */  lh         $t3, 6($s2)
/* DC38CC 801022AC AFAB0610 */  sw         $t3, 0x610($sp)
/* DC38D0 801022B0 864C000C */  lh         $t4, 0xc($s2)
/* DC38D4 801022B4 240B0400 */  addiu      $t3, $zero, 0x400
/* DC38D8 801022B8 AFAC0614 */  sw         $t4, 0x614($sp)
/* DC38DC 801022BC 864D000E */  lh         $t5, 0xe($s2)
/* DC38E0 801022C0 240C0400 */  addiu      $t4, $zero, 0x400
/* DC38E4 801022C4 AFAD0618 */  sw         $t5, 0x618($sp)
/* DC38E8 801022C8 864E0008 */  lh         $t6, 8($s2)
/* DC38EC 801022CC 8FAD0614 */  lw         $t5, 0x614($sp)
/* DC38F0 801022D0 AFAE061C */  sw         $t6, 0x61c($sp)
/* DC38F4 801022D4 864F000A */  lh         $t7, 0xa($s2)
/* DC38F8 801022D8 000D7140 */  sll        $t6, $t5, 5
/* DC38FC 801022DC AFAF0620 */  sw         $t7, 0x620($sp)
/* DC3900 801022E0 86580008 */  lh         $t8, 8($s2)
/* DC3904 801022E4 8FAF0618 */  lw         $t7, 0x618($sp)
/* DC3908 801022E8 AFB80624 */  sw         $t8, 0x624($sp)
/* DC390C 801022EC 8659000A */  lh         $t9, 0xa($s2)
/* DC3910 801022F0 000FC140 */  sll        $t8, $t7, 5
/* DC3914 801022F4 AFAB062C */  sw         $t3, 0x62c($sp)
/* DC3918 801022F8 AFB90628 */  sw         $t9, 0x628($sp)
/* DC391C 801022FC 0011C880 */  sll        $t9, $s1, 2
/* DC3920 80102300 AFAC0630 */  sw         $t4, 0x630($sp)
/* DC3924 80102304 AFAE0634 */  sw         $t6, 0x634($sp)
/* DC3928 80102308 07210008 */  bgez       $t9, .L8010232C
/* DC392C 8010230C AFB80638 */   sw        $t8, 0x638($sp)
/* DC3930 80102310 0C040556 */  jal        func_80101558
/* DC3934 80102314 27A6060C */   addiu     $a2, $sp, 0x60c
/* DC3938 80102318 10400004 */  beqz       $v0, .L8010232C
/* DC393C 8010231C 3C01DFFF */   lui       $at, 0xdfff
/* DC3940 80102320 3421FEFF */  ori        $at, $at, 0xfeff
/* DC3944 80102324 02215824 */  and        $t3, $s1, $at
/* DC3948 80102328 01608825 */  or         $s1, $t3, $zero
.L8010232C:
/* DC394C 8010232C 00116040 */  sll        $t4, $s1, 1
/* DC3950 80102330 05810009 */  bgez       $t4, .L80102358
/* DC3954 80102334 02602025 */   or        $a0, $s3, $zero
/* DC3958 80102338 02202825 */  or         $a1, $s1, $zero
/* DC395C 8010233C 0C0405AF */  jal        func_801016BC
/* DC3960 80102340 27A6060C */   addiu     $a2, $sp, 0x60c
/* DC3964 80102344 10400004 */  beqz       $v0, .L80102358
/* DC3968 80102348 3C01BFFF */   lui       $at, 0xbfff
/* DC396C 8010234C 3421FBFF */  ori        $at, $at, 0xfbff
/* DC3970 80102350 02216824 */  and        $t5, $s1, $at
/* DC3974 80102354 01A08825 */  or         $s1, $t5, $zero
.L80102358:
/* DC3978 80102358 322E0010 */  andi       $t6, $s1, 0x10
/* DC397C 8010235C 11C00009 */  beqz       $t6, .L80102384
/* DC3980 80102360 02602025 */   or        $a0, $s3, $zero
/* DC3984 80102364 24140010 */  addiu      $s4, $zero, 0x10
/* DC3988 80102368 0C040615 */  jal        func_80101854
/* DC398C 8010236C 00002825 */   or        $a1, $zero, $zero
/* DC3990 80102370 10400004 */  beqz       $v0, .L80102384
/* DC3994 80102374 2401FFEF */   addiu     $at, $zero, -0x11
/* DC3998 80102378 02217824 */  and        $t7, $s1, $at
/* DC399C 8010237C 01E08825 */  or         $s1, $t7, $zero
/* DC39A0 80102380 24160001 */  addiu      $s6, $zero, 1
.L80102384:
/* DC39A4 80102384 32380020 */  andi       $t8, $s1, 0x20
/* DC39A8 80102388 1300000A */  beqz       $t8, .L801023B4
/* DC39AC 8010238C 36990020 */   ori       $t9, $s4, 0x20
/* DC39B0 80102390 0320A025 */  or         $s4, $t9, $zero
/* DC39B4 80102394 02602025 */  or         $a0, $s3, $zero
/* DC39B8 80102398 0C040615 */  jal        func_80101854
/* DC39BC 8010239C 24050001 */   addiu     $a1, $zero, 1
/* DC39C0 801023A0 10400004 */  beqz       $v0, .L801023B4
/* DC39C4 801023A4 2401FFDF */   addiu     $at, $zero, -0x21
/* DC39C8 801023A8 02215824 */  and        $t3, $s1, $at
/* DC39CC 801023AC 01608825 */  or         $s1, $t3, $zero
/* DC39D0 801023B0 24160001 */  addiu      $s6, $zero, 1
.L801023B4:
/* DC39D4 801023B4 322C0040 */  andi       $t4, $s1, 0x40
/* DC39D8 801023B8 1180000A */  beqz       $t4, .L801023E4
/* DC39DC 801023BC 368D0040 */   ori       $t5, $s4, 0x40
/* DC39E0 801023C0 01A0A025 */  or         $s4, $t5, $zero
/* DC39E4 801023C4 02602025 */  or         $a0, $s3, $zero
/* DC39E8 801023C8 0C040656 */  jal        func_80101958
/* DC39EC 801023CC 00002825 */   or        $a1, $zero, $zero
/* DC39F0 801023D0 10400004 */  beqz       $v0, .L801023E4
/* DC39F4 801023D4 2401FFBF */   addiu     $at, $zero, -0x41
/* DC39F8 801023D8 02217024 */  and        $t6, $s1, $at
/* DC39FC 801023DC 01C08825 */  or         $s1, $t6, $zero
/* DC3A00 801023E0 24160001 */  addiu      $s6, $zero, 1
.L801023E4:
/* DC3A04 801023E4 322F0080 */  andi       $t7, $s1, 0x80
/* DC3A08 801023E8 11E0000A */  beqz       $t7, .L80102414
/* DC3A0C 801023EC 36980080 */   ori       $t8, $s4, 0x80
/* DC3A10 801023F0 0300A025 */  or         $s4, $t8, $zero
/* DC3A14 801023F4 02602025 */  or         $a0, $s3, $zero
/* DC3A18 801023F8 0C040656 */  jal        func_80101958
/* DC3A1C 801023FC 24050001 */   addiu     $a1, $zero, 1
/* DC3A20 80102400 10400004 */  beqz       $v0, .L80102414
/* DC3A24 80102404 2401FF7F */   addiu     $at, $zero, -0x81
/* DC3A28 80102408 0221C824 */  and        $t9, $s1, $at
/* DC3A2C 8010240C 03208825 */  or         $s1, $t9, $zero
/* DC3A30 80102410 24160001 */  addiu      $s6, $zero, 1
.L80102414:
/* DC3A34 80102414 322B1000 */  andi       $t3, $s1, 0x1000
/* DC3A38 80102418 51600008 */  beql       $t3, $zero, .L8010243C
/* DC3A3C 8010241C 001168C0 */   sll       $t5, $s1, 3
/* DC3A40 80102420 0C040803 */  jal        func_8010200C
/* DC3A44 80102424 02602025 */   or        $a0, $s3, $zero
/* DC3A48 80102428 10400003 */  beqz       $v0, .L80102438
/* DC3A4C 8010242C 2401EFFF */   addiu     $at, $zero, -0x1001
/* DC3A50 80102430 02216024 */  and        $t4, $s1, $at
/* DC3A54 80102434 01808825 */  or         $s1, $t4, $zero
.L80102438:
/* DC3A58 80102438 001168C0 */  sll        $t5, $s1, 3
.L8010243C:
/* DC3A5C 8010243C 05A1000A */  bgez       $t5, .L80102468
/* DC3A60 80102440 3C058016 */   lui       $a1, 0x8016
/* DC3A64 80102444 0C040803 */  jal        func_8010200C
/* DC3A68 80102448 02602025 */   or        $a0, $s3, $zero
/* DC3A6C 8010244C 10400004 */  beqz       $v0, .L80102460
/* DC3A70 80102450 3C01EFFF */   lui       $at, 0xefff
/* DC3A74 80102454 3421FFFF */  ori        $at, $at, 0xffff
/* DC3A78 80102458 02217024 */  and        $t6, $s1, $at
/* DC3A7C 8010245C 01C08825 */  or         $s1, $t6, $zero
.L80102460:
/* DC3A80 80102460 1000030C */  b          .L80103094
/* DC3A84 80102464 AE510000 */   sw        $s1, ($s2)
.L80102468:
/* DC3A88 80102468 8CA56220 */  lw         $a1, 0x6220($a1)
/* DC3A8C 8010246C 8FAF060C */  lw         $t7, 0x60c($sp)
/* DC3A90 80102470 3C028016 */  lui        $v0, %hi(D_80166224)
/* DC3A94 80102474 8FB80610 */  lw         $t8, 0x610($sp)
/* DC3A98 80102478 01E5082A */  slt        $at, $t7, $a1
/* DC3A9C 8010247C 50200017 */  beql       $at, $zero, .L801024DC
/* DC3AA0 80102480 8FAB060C */   lw        $t3, 0x60c($sp)
/* DC3AA4 80102484 8C426224 */  lw         $v0, %lo(D_80166224)($v0)
/* DC3AA8 80102488 3C198016 */  lui        $t9, %hi(D_80166228)
/* DC3AAC 8010248C 8FAC061C */  lw         $t4, 0x61c($sp)
/* DC3AB0 80102490 0302082A */  slt        $at, $t8, $v0
/* DC3AB4 80102494 50200011 */  beql       $at, $zero, .L801024DC
/* DC3AB8 80102498 8FAB060C */   lw        $t3, 0x60c($sp)
/* DC3ABC 8010249C 8F396228 */  lw         $t9, %lo(D_80166228)($t9)
/* DC3AC0 801024A0 01EC6821 */  addu       $t5, $t7, $t4
/* DC3AC4 801024A4 8FAF0620 */  lw         $t7, 0x620($sp)
/* DC3AC8 801024A8 00B95821 */  addu       $t3, $a1, $t9
/* DC3ACC 801024AC 016D082A */  slt        $at, $t3, $t5
/* DC3AD0 801024B0 10200009 */  beqz       $at, .L801024D8
/* DC3AD4 801024B4 3C0E8016 */   lui       $t6, %hi(D_8016622C)
/* DC3AD8 801024B8 8DCE622C */  lw         $t6, %lo(D_8016622C)($t6)
/* DC3ADC 801024BC 030F6021 */  addu       $t4, $t8, $t7
/* DC3AE0 801024C0 004EC821 */  addu       $t9, $v0, $t6
/* DC3AE4 801024C4 032C082A */  slt        $at, $t9, $t4
/* DC3AE8 801024C8 50200004 */  beql       $at, $zero, .L801024DC
/* DC3AEC 801024CC 8FAB060C */   lw        $t3, 0x60c($sp)
/* DC3AF0 801024D0 100002F0 */  b          .L80103094
/* DC3AF4 801024D4 AE510000 */   sw        $s1, ($s2)
.L801024D8:
/* DC3AF8 801024D8 8FAB060C */  lw         $t3, 0x60c($sp)
.L801024DC:
/* DC3AFC 801024DC 8FAD061C */  lw         $t5, 0x61c($sp)
/* DC3B00 801024E0 8FAE0610 */  lw         $t6, 0x610($sp)
/* DC3B04 801024E4 8FB80620 */  lw         $t8, 0x620($sp)
/* DC3B08 801024E8 016D3021 */  addu       $a2, $t3, $t5
/* DC3B0C 801024EC 00C5082A */  slt        $at, $a2, $a1
/* DC3B10 801024F0 14200007 */  bnez       $at, .L80102510
/* DC3B14 801024F4 3C028016 */   lui       $v0, %hi(D_80166224)
/* DC3B18 801024F8 8C426224 */  lw         $v0, %lo(D_80166224)($v0)
/* DC3B1C 801024FC 01D83821 */  addu       $a3, $t6, $t8
/* DC3B20 80102500 3C0F8016 */  lui        $t7, 0x8016
/* DC3B24 80102504 00E2082A */  slt        $at, $a3, $v0
/* DC3B28 80102508 10200003 */  beqz       $at, .L80102518
/* DC3B2C 8010250C 00000000 */   nop
.L80102510:
/* DC3B30 80102510 100002E0 */  b          .L80103094
/* DC3B34 80102514 AE510000 */   sw        $s1, ($s2)
.L80102518:
/* DC3B38 80102518 8DEF6228 */  lw         $t7, 0x6228($t7)
/* DC3B3C 8010251C 8FB9060C */  lw         $t9, 0x60c($sp)
/* DC3B40 80102520 3C0C8016 */  lui        $t4, %hi(D_8016622C)
/* DC3B44 80102524 00AF1821 */  addu       $v1, $a1, $t7
/* DC3B48 80102528 0079082A */  slt        $at, $v1, $t9
/* DC3B4C 8010252C 14200007 */  bnez       $at, .L8010254C
/* DC3B50 80102530 00000000 */   nop
/* DC3B54 80102534 8D8C622C */  lw         $t4, %lo(D_8016622C)($t4)
/* DC3B58 80102538 8FAB0610 */  lw         $t3, 0x610($sp)
/* DC3B5C 8010253C 004C2021 */  addu       $a0, $v0, $t4
/* DC3B60 80102540 008B082A */  slt        $at, $a0, $t3
/* DC3B64 80102544 50200004 */  beql       $at, $zero, .L80102558
/* DC3B68 80102548 0066082A */   slt       $at, $v1, $a2
.L8010254C:
/* DC3B6C 8010254C 100002D1 */  b          .L80103094
/* DC3B70 80102550 AE510000 */   sw        $s1, ($s2)
/* DC3B74 80102554 0066082A */  slt        $at, $v1, $a2
.L80102558:
/* DC3B78 80102558 10200003 */  beqz       $at, .L80102568
/* DC3B7C 8010255C 8FAD060C */   lw        $t5, 0x60c($sp)
/* DC3B80 80102560 006D7023 */  subu       $t6, $v1, $t5
/* DC3B84 80102564 AFAE061C */  sw         $t6, 0x61c($sp)
.L80102568:
/* DC3B88 80102568 0087082A */  slt        $at, $a0, $a3
/* DC3B8C 8010256C 10200003 */  beqz       $at, .L8010257C
/* DC3B90 80102570 8FB80610 */   lw        $t8, 0x610($sp)
/* DC3B94 80102574 00987823 */  subu       $t7, $a0, $t8
/* DC3B98 80102578 AFAF0620 */  sw         $t7, 0x620($sp)
.L8010257C:
/* DC3B9C 8010257C 8FB9060C */  lw         $t9, 0x60c($sp)
/* DC3BA0 80102580 8FAC061C */  lw         $t4, 0x61c($sp)
/* DC3BA4 80102584 0325082A */  slt        $at, $t9, $a1
/* DC3BA8 80102588 1020000B */  beqz       $at, .L801025B8
/* DC3BAC 8010258C 01995821 */   addu      $t3, $t4, $t9
/* DC3BB0 80102590 01656823 */  subu       $t5, $t3, $a1
/* DC3BB4 80102594 8FAC0634 */  lw         $t4, 0x634($sp)
/* DC3BB8 80102598 AFAD061C */  sw         $t5, 0x61c($sp)
/* DC3BBC 8010259C 864E000C */  lh         $t6, 0xc($s2)
/* DC3BC0 801025A0 00B9C023 */  subu       $t8, $a1, $t9
/* DC3BC4 801025A4 00187940 */  sll        $t7, $t8, 5
/* DC3BC8 801025A8 01EC5821 */  addu       $t3, $t7, $t4
/* DC3BCC 801025AC AFAB0634 */  sw         $t3, 0x634($sp)
/* DC3BD0 801025B0 AFA5060C */  sw         $a1, 0x60c($sp)
/* DC3BD4 801025B4 AFAE0614 */  sw         $t6, 0x614($sp)
.L801025B8:
/* DC3BD8 801025B8 864D0006 */  lh         $t5, 6($s2)
/* DC3BDC 801025BC 8FAE0620 */  lw         $t6, 0x620($sp)
/* DC3BE0 801025C0 8FB90610 */  lw         $t9, 0x610($sp)
/* DC3BE4 801025C4 01A2082A */  slt        $at, $t5, $v0
/* DC3BE8 801025C8 1020000B */  beqz       $at, .L801025F8
/* DC3BEC 801025CC 01D9C021 */   addu      $t8, $t6, $t9
/* DC3BF0 801025D0 03027823 */  subu       $t7, $t8, $v0
/* DC3BF4 801025D4 8FAE0638 */  lw         $t6, 0x638($sp)
/* DC3BF8 801025D8 AFAF0620 */  sw         $t7, 0x620($sp)
/* DC3BFC 801025DC 864C000E */  lh         $t4, 0xe($s2)
/* DC3C00 801025E0 00595823 */  subu       $t3, $v0, $t9
/* DC3C04 801025E4 000B6940 */  sll        $t5, $t3, 5
/* DC3C08 801025E8 01AEC021 */  addu       $t8, $t5, $t6
/* DC3C0C 801025EC AFB80638 */  sw         $t8, 0x638($sp)
/* DC3C10 801025F0 AFA20610 */  sw         $v0, 0x610($sp)
/* DC3C14 801025F4 AFAC0618 */  sw         $t4, 0x618($sp)
.L801025F8:
/* DC3C18 801025F8 16800006 */  bnez       $s4, .L80102614
/* DC3C1C 801025FC 32990030 */   andi      $t9, $s4, 0x30
/* DC3C20 80102600 240F00FF */  addiu      $t7, $zero, 0xff
/* DC3C24 80102604 240C00FF */  addiu      $t4, $zero, 0xff
/* DC3C28 80102608 AFAF0640 */  sw         $t7, 0x640($sp)
/* DC3C2C 8010260C 1000000E */  b          .L80102648
/* DC3C30 80102610 AFAC063C */   sw        $t4, 0x63c($sp)
.L80102614:
/* DC3C34 80102614 13200006 */  beqz       $t9, .L80102630
/* DC3C38 80102618 328E00C0 */   andi      $t6, $s4, 0xc0
/* DC3C3C 8010261C 240B00FF */  addiu      $t3, $zero, 0xff
/* DC3C40 80102620 AFAB0640 */  sw         $t3, 0x640($sp)
/* DC3C44 80102624 864D004E */  lh         $t5, 0x4e($s2)
/* DC3C48 80102628 10000007 */  b          .L80102648
/* DC3C4C 8010262C AFAD063C */   sw        $t5, 0x63c($sp)
.L80102630:
/* DC3C50 80102630 51C00006 */  beql       $t6, $zero, .L8010264C
/* DC3C54 80102634 8E020000 */   lw        $v0, ($s0)
/* DC3C58 80102638 8658004E */  lh         $t8, 0x4e($s2)
/* DC3C5C 8010263C 240F00FF */  addiu      $t7, $zero, 0xff
/* DC3C60 80102640 AFAF063C */  sw         $t7, 0x63c($sp)
/* DC3C64 80102644 AFB80640 */  sw         $t8, 0x640($sp)
.L80102648:
/* DC3C68 80102648 8E020000 */  lw         $v0, ($s0)
.L8010264C:
/* DC3C6C 8010264C 323900F0 */  andi       $t9, $s1, 0xf0
/* DC3C70 80102650 3C0D0600 */  lui        $t5, 0x600
/* DC3C74 80102654 244C0008 */  addiu      $t4, $v0, 8
/* DC3C78 80102658 AE0C0000 */  sw         $t4, ($s0)
/* DC3C7C 8010265C AC400004 */  sw         $zero, 4($v0)
/* DC3C80 80102660 17200003 */  bnez       $t9, .L80102670
/* DC3C84 80102664 AC570000 */   sw        $s7, ($v0)
/* DC3C88 80102668 12C00019 */  beqz       $s6, .L801026D0
/* DC3C8C 8010266C 3C0E8010 */   lui       $t6, 0x8010
.L80102670:
/* DC3C90 80102670 8E020000 */  lw         $v0, ($s0)
/* DC3C94 80102674 3C0E8010 */  lui        $t6, %hi(D_801062B0)
/* DC3C98 80102678 25CE62B0 */  addiu      $t6, $t6, %lo(D_801062B0)
/* DC3C9C 8010267C 244B0008 */  addiu      $t3, $v0, 8
/* DC3CA0 80102680 AE0B0000 */  sw         $t3, ($s0)
/* DC3CA4 80102684 AC4E0004 */  sw         $t6, 4($v0)
/* DC3CA8 80102688 AC4D0000 */  sw         $t5, ($v0)
/* DC3CAC 8010268C 8E020000 */  lw         $v0, ($s0)
/* DC3CB0 80102690 3C0FFB00 */  lui        $t7, 0xfb00
/* DC3CB4 80102694 24580008 */  addiu      $t8, $v0, 8
/* DC3CB8 80102698 AE180000 */  sw         $t8, ($s0)
/* DC3CBC 8010269C AC4F0000 */  sw         $t7, ($v0)
/* DC3CC0 801026A0 8FA30640 */  lw         $v1, 0x640($sp)
/* DC3CC4 801026A4 8FAF063C */  lw         $t7, 0x63c($sp)
/* DC3CC8 801026A8 306C00FF */  andi       $t4, $v1, 0xff
/* DC3CCC 801026AC 000CCE00 */  sll        $t9, $t4, 0x18
/* DC3CD0 801026B0 000C5C00 */  sll        $t3, $t4, 0x10
/* DC3CD4 801026B4 000C7200 */  sll        $t6, $t4, 8
/* DC3CD8 801026B8 032B6825 */  or         $t5, $t9, $t3
/* DC3CDC 801026BC 01AEC025 */  or         $t8, $t5, $t6
/* DC3CE0 801026C0 31EC00FF */  andi       $t4, $t7, 0xff
/* DC3CE4 801026C4 030CC825 */  or         $t9, $t8, $t4
/* DC3CE8 801026C8 10000008 */  b          .L801026EC
/* DC3CEC 801026CC AC590004 */   sw        $t9, 4($v0)
.L801026D0:
/* DC3CF0 801026D0 8E020000 */  lw         $v0, ($s0)
/* DC3CF4 801026D4 3C0D0600 */  lui        $t5, 0x600
/* DC3CF8 801026D8 25CE6298 */  addiu      $t6, $t6, 0x6298
/* DC3CFC 801026DC 244B0008 */  addiu      $t3, $v0, 8
/* DC3D00 801026E0 AE0B0000 */  sw         $t3, ($s0)
/* DC3D04 801026E4 AC4E0004 */  sw         $t6, 4($v0)
/* DC3D08 801026E8 AC4D0000 */  sw         $t5, ($v0)
.L801026EC:
/* DC3D0C 801026EC 8E020000 */  lw         $v0, ($s0)
/* DC3D10 801026F0 3C010C00 */  lui        $at, 0xc00
/* DC3D14 801026F4 3C0BBA00 */  lui        $t3, 0xba00
/* DC3D18 801026F8 244F0008 */  addiu      $t7, $v0, 8
/* DC3D1C 801026FC AE0F0000 */  sw         $t7, ($s0)
/* DC3D20 80102700 AC400004 */  sw         $zero, 4($v0)
/* DC3D24 80102704 AC570000 */  sw         $s7, ($v0)
/* DC3D28 80102708 8E580000 */  lw         $t8, ($s2)
/* DC3D2C 8010270C 03016024 */  and        $t4, $t8, $at
/* DC3D30 80102710 5180013E */  beql       $t4, $zero, .L80102C0C
/* DC3D34 80102714 8E020000 */   lw        $v0, ($s0)
/* DC3D38 80102718 8E020000 */  lw         $v0, ($s0)
/* DC3D3C 8010271C 356B0E02 */  ori        $t3, $t3, 0xe02
/* DC3D40 80102720 340D8000 */  ori        $t5, $zero, 0x8000
/* DC3D44 80102724 24590008 */  addiu      $t9, $v0, 8
/* DC3D48 80102728 AE190000 */  sw         $t9, ($s0)
/* DC3D4C 8010272C AC4D0004 */  sw         $t5, 4($v0)
/* DC3D50 80102730 AC4B0000 */  sw         $t3, ($v0)
/* DC3D54 80102734 8E430000 */  lw         $v1, ($s2)
/* DC3D58 80102738 00037100 */  sll        $t6, $v1, 4
/* DC3D5C 8010273C 05C10097 */  bgez       $t6, .L8010299C
/* DC3D60 80102740 0003C140 */   sll       $t8, $v1, 5
/* DC3D64 80102744 8E020000 */  lw         $v0, ($s0)
/* DC3D68 80102748 3C18FD10 */  lui        $t8, 0xfd10
/* DC3D6C 8010274C 3C0BE800 */  lui        $t3, 0xe800
/* DC3D70 80102750 244F0008 */  addiu      $t7, $v0, 8
/* DC3D74 80102754 AE0F0000 */  sw         $t7, ($s0)
/* DC3D78 80102758 AC580000 */  sw         $t8, ($v0)
/* DC3D7C 8010275C 8E4C0014 */  lw         $t4, 0x14($s2)
/* DC3D80 80102760 3C0EF500 */  lui        $t6, 0xf500
/* DC3D84 80102764 35CE0100 */  ori        $t6, $t6, 0x100
/* DC3D88 80102768 AC4C0004 */  sw         $t4, 4($v0)
/* DC3D8C 8010276C 8E020000 */  lw         $v0, ($s0)
/* DC3D90 80102770 3C0CF000 */  lui        $t4, 0xf000
/* DC3D94 80102774 3C01FD48 */  lui        $at, 0xfd48
/* DC3D98 80102778 24590008 */  addiu      $t9, $v0, 8
/* DC3D9C 8010277C AE190000 */  sw         $t9, ($s0)
/* DC3DA0 80102780 AC400004 */  sw         $zero, 4($v0)
/* DC3DA4 80102784 AC4B0000 */  sw         $t3, ($v0)
/* DC3DA8 80102788 8E020000 */  lw         $v0, ($s0)
/* DC3DAC 8010278C 3C19073F */  lui        $t9, 0x73f
/* DC3DB0 80102790 3739C000 */  ori        $t9, $t9, 0xc000
/* DC3DB4 80102794 244D0008 */  addiu      $t5, $v0, 8
/* DC3DB8 80102798 AE0D0000 */  sw         $t5, ($s0)
/* DC3DBC 8010279C AC550004 */  sw         $s5, 4($v0)
/* DC3DC0 801027A0 AC4E0000 */  sw         $t6, ($v0)
/* DC3DC4 801027A4 8E020000 */  lw         $v0, ($s0)
/* DC3DC8 801027A8 244F0008 */  addiu      $t7, $v0, 8
/* DC3DCC 801027AC AE0F0000 */  sw         $t7, ($s0)
/* DC3DD0 801027B0 AC400004 */  sw         $zero, 4($v0)
/* DC3DD4 801027B4 AC5E0000 */  sw         $fp, ($v0)
/* DC3DD8 801027B8 8E020000 */  lw         $v0, ($s0)
/* DC3DDC 801027BC 24580008 */  addiu      $t8, $v0, 8
/* DC3DE0 801027C0 AE180000 */  sw         $t8, ($s0)
/* DC3DE4 801027C4 AC590004 */  sw         $t9, 4($v0)
/* DC3DE8 801027C8 AC4C0000 */  sw         $t4, ($v0)
/* DC3DEC 801027CC 8E020000 */  lw         $v0, ($s0)
/* DC3DF0 801027D0 244B0008 */  addiu      $t3, $v0, 8
/* DC3DF4 801027D4 AE0B0000 */  sw         $t3, ($s0)
/* DC3DF8 801027D8 AC400004 */  sw         $zero, 4($v0)
/* DC3DFC 801027DC AC570000 */  sw         $s7, ($v0)
/* DC3E00 801027E0 8E020000 */  lw         $v0, ($s0)
/* DC3E04 801027E4 244D0008 */  addiu      $t5, $v0, 8
/* DC3E08 801027E8 AE0D0000 */  sw         $t5, ($s0)
/* DC3E0C 801027EC 864E0010 */  lh         $t6, 0x10($s2)
/* DC3E10 801027F0 25CFFFFF */  addiu      $t7, $t6, -1
/* DC3E14 801027F4 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC3E18 801027F8 03016025 */  or         $t4, $t8, $at
/* DC3E1C 801027FC AC4C0000 */  sw         $t4, ($v0)
/* DC3E20 80102800 8E590018 */  lw         $t9, 0x18($s2)
/* DC3E24 80102804 3C01F548 */  lui        $at, 0xf548
/* DC3E28 80102808 AC590004 */  sw         $t9, 4($v0)
/* DC3E2C 8010280C 8FAE0624 */  lw         $t6, 0x624($sp)
/* DC3E30 80102810 8FAD0614 */  lw         $t5, 0x614($sp)
/* DC3E34 80102814 8E020000 */  lw         $v0, ($s0)
/* DC3E38 80102818 01AE7821 */  addu       $t7, $t5, $t6
/* DC3E3C 8010281C 01EDC023 */  subu       $t8, $t7, $t5
/* DC3E40 80102820 270C0007 */  addiu      $t4, $t8, 7
/* DC3E44 80102824 244B0008 */  addiu      $t3, $v0, 8
/* DC3E48 80102828 AE0B0000 */  sw         $t3, ($s0)
/* DC3E4C 8010282C 000CC8C3 */  sra        $t9, $t4, 3
/* DC3E50 80102830 332B01FF */  andi       $t3, $t9, 0x1ff
/* DC3E54 80102834 000B7240 */  sll        $t6, $t3, 9
/* DC3E58 80102838 01C17825 */  or         $t7, $t6, $at
/* DC3E5C 8010283C AC4F0000 */  sw         $t7, ($v0)
/* DC3E60 80102840 AC550004 */  sw         $s5, 4($v0)
/* DC3E64 80102844 8E020000 */  lw         $v0, ($s0)
/* DC3E68 80102848 3C01F400 */  lui        $at, 0xf400
/* DC3E6C 8010284C 244D0008 */  addiu      $t5, $v0, 8
/* DC3E70 80102850 AE0D0000 */  sw         $t5, ($s0)
/* DC3E74 80102854 AC400004 */  sw         $zero, 4($v0)
/* DC3E78 80102858 AC5E0000 */  sw         $fp, ($v0)
/* DC3E7C 8010285C 8FAC0614 */  lw         $t4, 0x614($sp)
/* DC3E80 80102860 8E020000 */  lw         $v0, ($s0)
/* DC3E84 80102864 8FAD0618 */  lw         $t5, 0x618($sp)
/* DC3E88 80102868 000CC880 */  sll        $t9, $t4, 2
/* DC3E8C 8010286C 24580008 */  addiu      $t8, $v0, 8
/* DC3E90 80102870 AE180000 */  sw         $t8, ($s0)
/* DC3E94 80102874 332B0FFF */  andi       $t3, $t9, 0xfff
/* DC3E98 80102878 000B7300 */  sll        $t6, $t3, 0xc
/* DC3E9C 8010287C 000DC080 */  sll        $t8, $t5, 2
/* DC3EA0 80102880 330C0FFF */  andi       $t4, $t8, 0xfff
/* DC3EA4 80102884 01C17825 */  or         $t7, $t6, $at
/* DC3EA8 80102888 01ECC825 */  or         $t9, $t7, $t4
/* DC3EAC 8010288C AC590000 */  sw         $t9, ($v0)
/* DC3EB0 80102890 8FAE0624 */  lw         $t6, 0x624($sp)
/* DC3EB4 80102894 8FAB0614 */  lw         $t3, 0x614($sp)
/* DC3EB8 80102898 3C01F548 */  lui        $at, 0xf548
/* DC3EBC 8010289C 016E6821 */  addu       $t5, $t3, $t6
/* DC3EC0 801028A0 25B8FFFF */  addiu      $t8, $t5, -1
/* DC3EC4 801028A4 8FAD0628 */  lw         $t5, 0x628($sp)
/* DC3EC8 801028A8 8FAE0618 */  lw         $t6, 0x618($sp)
/* DC3ECC 801028AC 00187880 */  sll        $t7, $t8, 2
/* DC3ED0 801028B0 31EC0FFF */  andi       $t4, $t7, 0xfff
/* DC3ED4 801028B4 000CCB00 */  sll        $t9, $t4, 0xc
/* DC3ED8 801028B8 01CDC021 */  addu       $t8, $t6, $t5
/* DC3EDC 801028BC 270FFFFF */  addiu      $t7, $t8, -1
/* DC3EE0 801028C0 000F6080 */  sll        $t4, $t7, 2
/* DC3EE4 801028C4 03355825 */  or         $t3, $t9, $s5
/* DC3EE8 801028C8 31990FFF */  andi       $t9, $t4, 0xfff
/* DC3EEC 801028CC 01797025 */  or         $t6, $t3, $t9
/* DC3EF0 801028D0 AC4E0004 */  sw         $t6, 4($v0)
/* DC3EF4 801028D4 8E020000 */  lw         $v0, ($s0)
/* DC3EF8 801028D8 244D0008 */  addiu      $t5, $v0, 8
/* DC3EFC 801028DC AE0D0000 */  sw         $t5, ($s0)
/* DC3F00 801028E0 AC400004 */  sw         $zero, 4($v0)
/* DC3F04 801028E4 AC570000 */  sw         $s7, ($v0)
/* DC3F08 801028E8 8FAC0624 */  lw         $t4, 0x624($sp)
/* DC3F0C 801028EC 8FAF0614 */  lw         $t7, 0x614($sp)
/* DC3F10 801028F0 8E020000 */  lw         $v0, ($s0)
/* DC3F14 801028F4 01EC5821 */  addu       $t3, $t7, $t4
/* DC3F18 801028F8 016FC823 */  subu       $t9, $t3, $t7
/* DC3F1C 801028FC 272E0007 */  addiu      $t6, $t9, 7
/* DC3F20 80102900 24580008 */  addiu      $t8, $v0, 8
/* DC3F24 80102904 AE180000 */  sw         $t8, ($s0)
/* DC3F28 80102908 000E68C3 */  sra        $t5, $t6, 3
/* DC3F2C 8010290C 31B801FF */  andi       $t8, $t5, 0x1ff
/* DC3F30 80102910 00186240 */  sll        $t4, $t8, 9
/* DC3F34 80102914 01815825 */  or         $t3, $t4, $at
/* DC3F38 80102918 AC4B0000 */  sw         $t3, ($v0)
/* DC3F3C 8010291C AC400004 */  sw         $zero, 4($v0)
/* DC3F40 80102920 8FB90614 */  lw         $t9, 0x614($sp)
/* DC3F44 80102924 8E020000 */  lw         $v0, ($s0)
/* DC3F48 80102928 8FAB0618 */  lw         $t3, 0x618($sp)
/* DC3F4C 8010292C 00197080 */  sll        $t6, $t9, 2
/* DC3F50 80102930 244F0008 */  addiu      $t7, $v0, 8
/* DC3F54 80102934 AE0F0000 */  sw         $t7, ($s0)
/* DC3F58 80102938 31CD0FFF */  andi       $t5, $t6, 0xfff
/* DC3F5C 8010293C 000DC300 */  sll        $t8, $t5, 0xc
/* DC3F60 80102940 3C01F200 */  lui        $at, 0xf200
/* DC3F64 80102944 000B7880 */  sll        $t7, $t3, 2
/* DC3F68 80102948 31F90FFF */  andi       $t9, $t7, 0xfff
/* DC3F6C 8010294C 03016025 */  or         $t4, $t8, $at
/* DC3F70 80102950 01997025 */  or         $t6, $t4, $t9
/* DC3F74 80102954 AC4E0000 */  sw         $t6, ($v0)
/* DC3F78 80102958 8FB80624 */  lw         $t8, 0x624($sp)
/* DC3F7C 8010295C 8FAD0614 */  lw         $t5, 0x614($sp)
/* DC3F80 80102960 01B85821 */  addu       $t3, $t5, $t8
/* DC3F84 80102964 8FB80628 */  lw         $t8, 0x628($sp)
/* DC3F88 80102968 8FAD0618 */  lw         $t5, 0x618($sp)
/* DC3F8C 8010296C 256FFFFF */  addiu      $t7, $t3, -1
/* DC3F90 80102970 000F6080 */  sll        $t4, $t7, 2
/* DC3F94 80102974 31990FFF */  andi       $t9, $t4, 0xfff
/* DC3F98 80102978 01B85821 */  addu       $t3, $t5, $t8
/* DC3F9C 8010297C 256FFFFF */  addiu      $t7, $t3, -1
/* DC3FA0 80102980 000F6080 */  sll        $t4, $t7, 2
/* DC3FA4 80102984 00197300 */  sll        $t6, $t9, 0xc
/* DC3FA8 80102988 31990FFF */  andi       $t9, $t4, 0xfff
/* DC3FAC 8010298C 01D96825 */  or         $t5, $t6, $t9
/* DC3FB0 80102990 AC4D0004 */  sw         $t5, 4($v0)
/* DC3FB4 80102994 10000114 */  b          .L80102DE8
/* DC3FB8 80102998 8E430000 */   lw        $v1, ($s2)
.L8010299C:
/* DC3FBC 8010299C 07030113 */  bgezl      $t8, .L80102DEC
/* DC3FC0 801029A0 3C010006 */   lui       $at, 6
/* DC3FC4 801029A4 8E020000 */  lw         $v0, ($s0)
/* DC3FC8 801029A8 3C0FFD10 */  lui        $t7, 0xfd10
/* DC3FCC 801029AC 3C19E800 */  lui        $t9, 0xe800
/* DC3FD0 801029B0 244B0008 */  addiu      $t3, $v0, 8
/* DC3FD4 801029B4 AE0B0000 */  sw         $t3, ($s0)
/* DC3FD8 801029B8 AC4F0000 */  sw         $t7, ($v0)
/* DC3FDC 801029BC 8E4C0014 */  lw         $t4, 0x14($s2)
/* DC3FE0 801029C0 3C18F500 */  lui        $t8, 0xf500
/* DC3FE4 801029C4 37180100 */  ori        $t8, $t8, 0x100
/* DC3FE8 801029C8 AC4C0004 */  sw         $t4, 4($v0)
/* DC3FEC 801029CC 8E020000 */  lw         $v0, ($s0)
/* DC3FF0 801029D0 3C0CF000 */  lui        $t4, 0xf000
/* DC3FF4 801029D4 3C01FD48 */  lui        $at, 0xfd48
/* DC3FF8 801029D8 244E0008 */  addiu      $t6, $v0, 8
/* DC3FFC 801029DC AE0E0000 */  sw         $t6, ($s0)
/* DC4000 801029E0 AC400004 */  sw         $zero, 4($v0)
/* DC4004 801029E4 AC590000 */  sw         $t9, ($v0)
/* DC4008 801029E8 8E020000 */  lw         $v0, ($s0)
/* DC400C 801029EC 3C0E0703 */  lui        $t6, 0x703
/* DC4010 801029F0 35CEC000 */  ori        $t6, $t6, 0xc000
/* DC4014 801029F4 244D0008 */  addiu      $t5, $v0, 8
/* DC4018 801029F8 AE0D0000 */  sw         $t5, ($s0)
/* DC401C 801029FC AC550004 */  sw         $s5, 4($v0)
/* DC4020 80102A00 AC580000 */  sw         $t8, ($v0)
/* DC4024 80102A04 8E020000 */  lw         $v0, ($s0)
/* DC4028 80102A08 244B0008 */  addiu      $t3, $v0, 8
/* DC402C 80102A0C AE0B0000 */  sw         $t3, ($s0)
/* DC4030 80102A10 AC400004 */  sw         $zero, 4($v0)
/* DC4034 80102A14 AC5E0000 */  sw         $fp, ($v0)
/* DC4038 80102A18 8E020000 */  lw         $v0, ($s0)
/* DC403C 80102A1C 244F0008 */  addiu      $t7, $v0, 8
/* DC4040 80102A20 AE0F0000 */  sw         $t7, ($s0)
/* DC4044 80102A24 AC4E0004 */  sw         $t6, 4($v0)
/* DC4048 80102A28 AC4C0000 */  sw         $t4, ($v0)
/* DC404C 80102A2C 8E020000 */  lw         $v0, ($s0)
/* DC4050 80102A30 24590008 */  addiu      $t9, $v0, 8
/* DC4054 80102A34 AE190000 */  sw         $t9, ($s0)
/* DC4058 80102A38 AC400004 */  sw         $zero, 4($v0)
/* DC405C 80102A3C AC570000 */  sw         $s7, ($v0)
/* DC4060 80102A40 8E020000 */  lw         $v0, ($s0)
/* DC4064 80102A44 244D0008 */  addiu      $t5, $v0, 8
/* DC4068 80102A48 AE0D0000 */  sw         $t5, ($s0)
/* DC406C 80102A4C 86580010 */  lh         $t8, 0x10($s2)
/* DC4070 80102A50 00185843 */  sra        $t3, $t8, 1
/* DC4074 80102A54 256FFFFF */  addiu      $t7, $t3, -1
/* DC4078 80102A58 31EC0FFF */  andi       $t4, $t7, 0xfff
/* DC407C 80102A5C 01817025 */  or         $t6, $t4, $at
/* DC4080 80102A60 AC4E0000 */  sw         $t6, ($v0)
/* DC4084 80102A64 8E590018 */  lw         $t9, 0x18($s2)
/* DC4088 80102A68 3C01F548 */  lui        $at, 0xf548
/* DC408C 80102A6C AC590004 */  sw         $t9, 4($v0)
/* DC4090 80102A70 8FAB0624 */  lw         $t3, 0x624($sp)
/* DC4094 80102A74 8FB80614 */  lw         $t8, 0x614($sp)
/* DC4098 80102A78 8E020000 */  lw         $v0, ($s0)
/* DC409C 80102A7C 030B7821 */  addu       $t7, $t8, $t3
/* DC40A0 80102A80 01F86023 */  subu       $t4, $t7, $t8
/* DC40A4 80102A84 000C7043 */  sra        $t6, $t4, 1
/* DC40A8 80102A88 244D0008 */  addiu      $t5, $v0, 8
/* DC40AC 80102A8C AE0D0000 */  sw         $t5, ($s0)
/* DC40B0 80102A90 25D90007 */  addiu      $t9, $t6, 7
/* DC40B4 80102A94 001968C3 */  sra        $t5, $t9, 3
/* DC40B8 80102A98 31AB01FF */  andi       $t3, $t5, 0x1ff
/* DC40BC 80102A9C 000B7A40 */  sll        $t7, $t3, 9
/* DC40C0 80102AA0 01E1C025 */  or         $t8, $t7, $at
/* DC40C4 80102AA4 AC580000 */  sw         $t8, ($v0)
/* DC40C8 80102AA8 AC550004 */  sw         $s5, 4($v0)
/* DC40CC 80102AAC 8E020000 */  lw         $v0, ($s0)
/* DC40D0 80102AB0 3C01F400 */  lui        $at, 0xf400
/* DC40D4 80102AB4 244C0008 */  addiu      $t4, $v0, 8
/* DC40D8 80102AB8 AE0C0000 */  sw         $t4, ($s0)
/* DC40DC 80102ABC AC400004 */  sw         $zero, 4($v0)
/* DC40E0 80102AC0 AC5E0000 */  sw         $fp, ($v0)
/* DC40E4 80102AC4 8FB90614 */  lw         $t9, 0x614($sp)
/* DC40E8 80102AC8 8E020000 */  lw         $v0, ($s0)
/* DC40EC 80102ACC 8FAC0618 */  lw         $t4, 0x618($sp)
/* DC40F0 80102AD0 00196840 */  sll        $t5, $t9, 1
/* DC40F4 80102AD4 244E0008 */  addiu      $t6, $v0, 8
/* DC40F8 80102AD8 AE0E0000 */  sw         $t6, ($s0)
/* DC40FC 80102ADC 31AB0FFF */  andi       $t3, $t5, 0xfff
/* DC4100 80102AE0 000B7B00 */  sll        $t7, $t3, 0xc
/* DC4104 80102AE4 000C7080 */  sll        $t6, $t4, 2
/* DC4108 80102AE8 31D90FFF */  andi       $t9, $t6, 0xfff
/* DC410C 80102AEC 01E1C025 */  or         $t8, $t7, $at
/* DC4110 80102AF0 03196825 */  or         $t5, $t8, $t9
/* DC4114 80102AF4 AC4D0000 */  sw         $t5, ($v0)
/* DC4118 80102AF8 8FAF0624 */  lw         $t7, 0x624($sp)
/* DC411C 80102AFC 8FAB0614 */  lw         $t3, 0x614($sp)
/* DC4120 80102B00 3C01F540 */  lui        $at, 0xf540
/* DC4124 80102B04 016F6021 */  addu       $t4, $t3, $t7
/* DC4128 80102B08 258EFFFF */  addiu      $t6, $t4, -1
/* DC412C 80102B0C 8FAC0628 */  lw         $t4, 0x628($sp)
/* DC4130 80102B10 8FAF0618 */  lw         $t7, 0x618($sp)
/* DC4134 80102B14 000EC040 */  sll        $t8, $t6, 1
/* DC4138 80102B18 33190FFF */  andi       $t9, $t8, 0xfff
/* DC413C 80102B1C 00196B00 */  sll        $t5, $t9, 0xc
/* DC4140 80102B20 01EC7021 */  addu       $t6, $t7, $t4
/* DC4144 80102B24 25D8FFFF */  addiu      $t8, $t6, -1
/* DC4148 80102B28 0018C880 */  sll        $t9, $t8, 2
/* DC414C 80102B2C 01B55825 */  or         $t3, $t5, $s5
/* DC4150 80102B30 332D0FFF */  andi       $t5, $t9, 0xfff
/* DC4154 80102B34 016D7825 */  or         $t7, $t3, $t5
/* DC4158 80102B38 AC4F0004 */  sw         $t7, 4($v0)
/* DC415C 80102B3C 8E020000 */  lw         $v0, ($s0)
/* DC4160 80102B40 244C0008 */  addiu      $t4, $v0, 8
/* DC4164 80102B44 AE0C0000 */  sw         $t4, ($s0)
/* DC4168 80102B48 AC400004 */  sw         $zero, 4($v0)
/* DC416C 80102B4C AC570000 */  sw         $s7, ($v0)
/* DC4170 80102B50 8FB90624 */  lw         $t9, 0x624($sp)
/* DC4174 80102B54 8FB80614 */  lw         $t8, 0x614($sp)
/* DC4178 80102B58 8E020000 */  lw         $v0, ($s0)
/* DC417C 80102B5C 03195821 */  addu       $t3, $t8, $t9
/* DC4180 80102B60 01786823 */  subu       $t5, $t3, $t8
/* DC4184 80102B64 000D7843 */  sra        $t7, $t5, 1
/* DC4188 80102B68 244E0008 */  addiu      $t6, $v0, 8
/* DC418C 80102B6C AE0E0000 */  sw         $t6, ($s0)
/* DC4190 80102B70 25EC0007 */  addiu      $t4, $t7, 7
/* DC4194 80102B74 000C70C3 */  sra        $t6, $t4, 3
/* DC4198 80102B78 31D901FF */  andi       $t9, $t6, 0x1ff
/* DC419C 80102B7C 00195A40 */  sll        $t3, $t9, 9
/* DC41A0 80102B80 0161C025 */  or         $t8, $t3, $at
/* DC41A4 80102B84 AC580000 */  sw         $t8, ($v0)
/* DC41A8 80102B88 AC400004 */  sw         $zero, 4($v0)
/* DC41AC 80102B8C 8FAF0614 */  lw         $t7, 0x614($sp)
/* DC41B0 80102B90 8E020000 */  lw         $v0, ($s0)
/* DC41B4 80102B94 8FB80618 */  lw         $t8, 0x618($sp)
/* DC41B8 80102B98 000F6080 */  sll        $t4, $t7, 2
/* DC41BC 80102B9C 244D0008 */  addiu      $t5, $v0, 8
/* DC41C0 80102BA0 AE0D0000 */  sw         $t5, ($s0)
/* DC41C4 80102BA4 318E0FFF */  andi       $t6, $t4, 0xfff
/* DC41C8 80102BA8 000ECB00 */  sll        $t9, $t6, 0xc
/* DC41CC 80102BAC 3C01F200 */  lui        $at, 0xf200
/* DC41D0 80102BB0 00186880 */  sll        $t5, $t8, 2
/* DC41D4 80102BB4 31AF0FFF */  andi       $t7, $t5, 0xfff
/* DC41D8 80102BB8 03215825 */  or         $t3, $t9, $at
/* DC41DC 80102BBC 016F6025 */  or         $t4, $t3, $t7
/* DC41E0 80102BC0 AC4C0000 */  sw         $t4, ($v0)
/* DC41E4 80102BC4 8FB90624 */  lw         $t9, 0x624($sp)
/* DC41E8 80102BC8 8FAE0614 */  lw         $t6, 0x614($sp)
/* DC41EC 80102BCC 01D9C021 */  addu       $t8, $t6, $t9
/* DC41F0 80102BD0 8FB90628 */  lw         $t9, 0x628($sp)
/* DC41F4 80102BD4 8FAE0618 */  lw         $t6, 0x618($sp)
/* DC41F8 80102BD8 270DFFFF */  addiu      $t5, $t8, -1
/* DC41FC 80102BDC 000D5880 */  sll        $t3, $t5, 2
/* DC4200 80102BE0 316F0FFF */  andi       $t7, $t3, 0xfff
/* DC4204 80102BE4 01D9C021 */  addu       $t8, $t6, $t9
/* DC4208 80102BE8 270DFFFF */  addiu      $t5, $t8, -1
/* DC420C 80102BEC 000D5880 */  sll        $t3, $t5, 2
/* DC4210 80102BF0 000F6300 */  sll        $t4, $t7, 0xc
/* DC4214 80102BF4 316F0FFF */  andi       $t7, $t3, 0xfff
/* DC4218 80102BF8 018F7025 */  or         $t6, $t4, $t7
/* DC421C 80102BFC AC4E0004 */  sw         $t6, 4($v0)
/* DC4220 80102C00 10000079 */  b          .L80102DE8
/* DC4224 80102C04 8E430000 */   lw        $v1, ($s2)
/* DC4228 80102C08 8E020000 */  lw         $v0, ($s0)
.L80102C0C:
/* DC422C 80102C0C 3C18BA00 */  lui        $t8, 0xba00
/* DC4230 80102C10 37180E02 */  ori        $t8, $t8, 0xe02
/* DC4234 80102C14 24590008 */  addiu      $t9, $v0, 8
/* DC4238 80102C18 AE190000 */  sw         $t9, ($s0)
/* DC423C 80102C1C AC400004 */  sw         $zero, 4($v0)
/* DC4240 80102C20 AC580000 */  sw         $t8, ($v0)
/* DC4244 80102C24 8E020000 */  lw         $v0, ($s0)
/* DC4248 80102C28 3C01FD10 */  lui        $at, 0xfd10
/* DC424C 80102C2C 244D0008 */  addiu      $t5, $v0, 8
/* DC4250 80102C30 AE0D0000 */  sw         $t5, ($s0)
/* DC4254 80102C34 864B0010 */  lh         $t3, 0x10($s2)
/* DC4258 80102C38 256CFFFF */  addiu      $t4, $t3, -1
/* DC425C 80102C3C 318F0FFF */  andi       $t7, $t4, 0xfff
/* DC4260 80102C40 01E17025 */  or         $t6, $t7, $at
/* DC4264 80102C44 AC4E0000 */  sw         $t6, ($v0)
/* DC4268 80102C48 8E590018 */  lw         $t9, 0x18($s2)
/* DC426C 80102C4C 3C01F510 */  lui        $at, 0xf510
/* DC4270 80102C50 AC590004 */  sw         $t9, 4($v0)
/* DC4274 80102C54 8FAB0624 */  lw         $t3, 0x624($sp)
/* DC4278 80102C58 8FAD0614 */  lw         $t5, 0x614($sp)
/* DC427C 80102C5C 8E020000 */  lw         $v0, ($s0)
/* DC4280 80102C60 01AB6021 */  addu       $t4, $t5, $t3
/* DC4284 80102C64 018D7823 */  subu       $t7, $t4, $t5
/* DC4288 80102C68 000F7040 */  sll        $t6, $t7, 1
/* DC428C 80102C6C 24580008 */  addiu      $t8, $v0, 8
/* DC4290 80102C70 AE180000 */  sw         $t8, ($s0)
/* DC4294 80102C74 25D90007 */  addiu      $t9, $t6, 7
/* DC4298 80102C78 0019C0C3 */  sra        $t8, $t9, 3
/* DC429C 80102C7C 330B01FF */  andi       $t3, $t8, 0x1ff
/* DC42A0 80102C80 000B6240 */  sll        $t4, $t3, 9
/* DC42A4 80102C84 01816825 */  or         $t5, $t4, $at
/* DC42A8 80102C88 AC4D0000 */  sw         $t5, ($v0)
/* DC42AC 80102C8C AC550004 */  sw         $s5, 4($v0)
/* DC42B0 80102C90 8E020000 */  lw         $v0, ($s0)
/* DC42B4 80102C94 3C01F400 */  lui        $at, 0xf400
/* DC42B8 80102C98 244F0008 */  addiu      $t7, $v0, 8
/* DC42BC 80102C9C AE0F0000 */  sw         $t7, ($s0)
/* DC42C0 80102CA0 AC400004 */  sw         $zero, 4($v0)
/* DC42C4 80102CA4 AC5E0000 */  sw         $fp, ($v0)
/* DC42C8 80102CA8 8FB90614 */  lw         $t9, 0x614($sp)
/* DC42CC 80102CAC 8E020000 */  lw         $v0, ($s0)
/* DC42D0 80102CB0 8FAF0618 */  lw         $t7, 0x618($sp)
/* DC42D4 80102CB4 0019C080 */  sll        $t8, $t9, 2
/* DC42D8 80102CB8 244E0008 */  addiu      $t6, $v0, 8
/* DC42DC 80102CBC AE0E0000 */  sw         $t6, ($s0)
/* DC42E0 80102CC0 330B0FFF */  andi       $t3, $t8, 0xfff
/* DC42E4 80102CC4 000B6300 */  sll        $t4, $t3, 0xc
/* DC42E8 80102CC8 000F7080 */  sll        $t6, $t7, 2
/* DC42EC 80102CCC 31D90FFF */  andi       $t9, $t6, 0xfff
/* DC42F0 80102CD0 01816825 */  or         $t5, $t4, $at
/* DC42F4 80102CD4 01B9C025 */  or         $t8, $t5, $t9
/* DC42F8 80102CD8 AC580000 */  sw         $t8, ($v0)
/* DC42FC 80102CDC 8FAC0624 */  lw         $t4, 0x624($sp)
/* DC4300 80102CE0 8FAB0614 */  lw         $t3, 0x614($sp)
/* DC4304 80102CE4 3C01F510 */  lui        $at, 0xf510
/* DC4308 80102CE8 016C7821 */  addu       $t7, $t3, $t4
/* DC430C 80102CEC 25EEFFFF */  addiu      $t6, $t7, -1
/* DC4310 80102CF0 8FAF0628 */  lw         $t7, 0x628($sp)
/* DC4314 80102CF4 8FAC0618 */  lw         $t4, 0x618($sp)
/* DC4318 80102CF8 000E6880 */  sll        $t5, $t6, 2
/* DC431C 80102CFC 31B90FFF */  andi       $t9, $t5, 0xfff
/* DC4320 80102D00 0019C300 */  sll        $t8, $t9, 0xc
/* DC4324 80102D04 018F7021 */  addu       $t6, $t4, $t7
/* DC4328 80102D08 25CDFFFF */  addiu      $t5, $t6, -1
/* DC432C 80102D0C 000DC880 */  sll        $t9, $t5, 2
/* DC4330 80102D10 03155825 */  or         $t3, $t8, $s5
/* DC4334 80102D14 33380FFF */  andi       $t8, $t9, 0xfff
/* DC4338 80102D18 01786025 */  or         $t4, $t3, $t8
/* DC433C 80102D1C AC4C0004 */  sw         $t4, 4($v0)
/* DC4340 80102D20 8E020000 */  lw         $v0, ($s0)
/* DC4344 80102D24 244F0008 */  addiu      $t7, $v0, 8
/* DC4348 80102D28 AE0F0000 */  sw         $t7, ($s0)
/* DC434C 80102D2C AC400004 */  sw         $zero, 4($v0)
/* DC4350 80102D30 AC570000 */  sw         $s7, ($v0)
/* DC4354 80102D34 8FB90624 */  lw         $t9, 0x624($sp)
/* DC4358 80102D38 8FAD0614 */  lw         $t5, 0x614($sp)
/* DC435C 80102D3C 8E020000 */  lw         $v0, ($s0)
/* DC4360 80102D40 01B95821 */  addu       $t3, $t5, $t9
/* DC4364 80102D44 016DC023 */  subu       $t8, $t3, $t5
/* DC4368 80102D48 00186040 */  sll        $t4, $t8, 1
/* DC436C 80102D4C 244E0008 */  addiu      $t6, $v0, 8
/* DC4370 80102D50 AE0E0000 */  sw         $t6, ($s0)
/* DC4374 80102D54 258F0007 */  addiu      $t7, $t4, 7
/* DC4378 80102D58 000F70C3 */  sra        $t6, $t7, 3
/* DC437C 80102D5C 31D901FF */  andi       $t9, $t6, 0x1ff
/* DC4380 80102D60 00195A40 */  sll        $t3, $t9, 9
/* DC4384 80102D64 01616825 */  or         $t5, $t3, $at
/* DC4388 80102D68 AC4D0000 */  sw         $t5, ($v0)
/* DC438C 80102D6C AC400004 */  sw         $zero, 4($v0)
/* DC4390 80102D70 8FAC0614 */  lw         $t4, 0x614($sp)
/* DC4394 80102D74 8E020000 */  lw         $v0, ($s0)
/* DC4398 80102D78 8FAD0618 */  lw         $t5, 0x618($sp)
/* DC439C 80102D7C 000C7880 */  sll        $t7, $t4, 2
/* DC43A0 80102D80 24580008 */  addiu      $t8, $v0, 8
/* DC43A4 80102D84 AE180000 */  sw         $t8, ($s0)
/* DC43A8 80102D88 31EE0FFF */  andi       $t6, $t7, 0xfff
/* DC43AC 80102D8C 000ECB00 */  sll        $t9, $t6, 0xc
/* DC43B0 80102D90 3C01F200 */  lui        $at, 0xf200
/* DC43B4 80102D94 000DC080 */  sll        $t8, $t5, 2
/* DC43B8 80102D98 330C0FFF */  andi       $t4, $t8, 0xfff
/* DC43BC 80102D9C 03215825 */  or         $t3, $t9, $at
/* DC43C0 80102DA0 016C7825 */  or         $t7, $t3, $t4
/* DC43C4 80102DA4 AC4F0000 */  sw         $t7, ($v0)
/* DC43C8 80102DA8 8FB90624 */  lw         $t9, 0x624($sp)
/* DC43CC 80102DAC 8FAE0614 */  lw         $t6, 0x614($sp)
/* DC43D0 80102DB0 01D96821 */  addu       $t5, $t6, $t9
/* DC43D4 80102DB4 8FB90628 */  lw         $t9, 0x628($sp)
/* DC43D8 80102DB8 8FAE0618 */  lw         $t6, 0x618($sp)
/* DC43DC 80102DBC 25B8FFFF */  addiu      $t8, $t5, -1
/* DC43E0 80102DC0 00185880 */  sll        $t3, $t8, 2
/* DC43E4 80102DC4 316C0FFF */  andi       $t4, $t3, 0xfff
/* DC43E8 80102DC8 01D96821 */  addu       $t5, $t6, $t9
/* DC43EC 80102DCC 25B8FFFF */  addiu      $t8, $t5, -1
/* DC43F0 80102DD0 00185880 */  sll        $t3, $t8, 2
/* DC43F4 80102DD4 000C7B00 */  sll        $t7, $t4, 0xc
/* DC43F8 80102DD8 316C0FFF */  andi       $t4, $t3, 0xfff
/* DC43FC 80102DDC 01EC7025 */  or         $t6, $t7, $t4
/* DC4400 80102DE0 AC4E0004 */  sw         $t6, 4($v0)
/* DC4404 80102DE4 8E430000 */  lw         $v1, ($s2)
.L80102DE8:
/* DC4408 80102DE8 3C010006 */  lui        $at, 6
.L80102DEC:
/* DC440C 80102DEC 0061C824 */  and        $t9, $v1, $at
/* DC4410 80102DF0 13200073 */  beqz       $t9, .L80102FC0
/* DC4414 80102DF4 00036B80 */   sll       $t5, $v1, 0xe
/* DC4418 80102DF8 05A10037 */  bgez       $t5, .L80102ED8
/* DC441C 80102DFC 2418FC00 */   addiu     $t8, $zero, -0x400
/* DC4420 80102E00 8FAF060C */  lw         $t7, 0x60c($sp)
/* DC4424 80102E04 8FAC061C */  lw         $t4, 0x61c($sp)
/* DC4428 80102E08 8E020000 */  lw         $v0, ($s0)
/* DC442C 80102E0C AFB8062C */  sw         $t8, 0x62c($sp)
/* DC4430 80102E10 01EC7021 */  addu       $t6, $t7, $t4
/* DC4434 80102E14 8FAC0620 */  lw         $t4, 0x620($sp)
/* DC4438 80102E18 8FAF0610 */  lw         $t7, 0x610($sp)
/* DC443C 80102E1C 000EC880 */  sll        $t9, $t6, 2
/* DC4440 80102E20 332D0FFF */  andi       $t5, $t9, 0xfff
/* DC4444 80102E24 000DC300 */  sll        $t8, $t5, 0xc
/* DC4448 80102E28 244B0008 */  addiu      $t3, $v0, 8
/* DC444C 80102E2C 01EC7021 */  addu       $t6, $t7, $t4
/* DC4450 80102E30 000EC880 */  sll        $t9, $t6, 2
/* DC4454 80102E34 AE0B0000 */  sw         $t3, ($s0)
/* DC4458 80102E38 3C01E400 */  lui        $at, 0xe400
/* DC445C 80102E3C 03015825 */  or         $t3, $t8, $at
/* DC4460 80102E40 332D0FFF */  andi       $t5, $t9, 0xfff
/* DC4464 80102E44 016DC025 */  or         $t8, $t3, $t5
/* DC4468 80102E48 AC580000 */  sw         $t8, ($v0)
/* DC446C 80102E4C 8FAF060C */  lw         $t7, 0x60c($sp)
/* DC4470 80102E50 8FAB0610 */  lw         $t3, 0x610($sp)
/* DC4474 80102E54 000F6080 */  sll        $t4, $t7, 2
/* DC4478 80102E58 318E0FFF */  andi       $t6, $t4, 0xfff
/* DC447C 80102E5C 000B6880 */  sll        $t5, $t3, 2
/* DC4480 80102E60 31B80FFF */  andi       $t8, $t5, 0xfff
/* DC4484 80102E64 000ECB00 */  sll        $t9, $t6, 0xc
/* DC4488 80102E68 03387825 */  or         $t7, $t9, $t8
/* DC448C 80102E6C AC4F0004 */  sw         $t7, 4($v0)
/* DC4490 80102E70 8E020000 */  lw         $v0, ($s0)
/* DC4494 80102E74 3C0EB400 */  lui        $t6, 0xb400
/* DC4498 80102E78 3C0FB300 */  lui        $t7, 0xb300
/* DC449C 80102E7C 244C0008 */  addiu      $t4, $v0, 8
/* DC44A0 80102E80 AE0C0000 */  sw         $t4, ($s0)
/* DC44A4 80102E84 AC4E0000 */  sw         $t6, ($v0)
/* DC44A8 80102E88 8FAD0624 */  lw         $t5, 0x624($sp)
/* DC44AC 80102E8C 8FAB0614 */  lw         $t3, 0x614($sp)
/* DC44B0 80102E90 016DC821 */  addu       $t9, $t3, $t5
/* DC44B4 80102E94 8FAB0638 */  lw         $t3, 0x638($sp)
/* DC44B8 80102E98 272CFFFF */  addiu      $t4, $t9, -1
/* DC44BC 80102E9C 000C7540 */  sll        $t6, $t4, 0x15
/* DC44C0 80102EA0 316DFFFF */  andi       $t5, $t3, 0xffff
/* DC44C4 80102EA4 01CDC825 */  or         $t9, $t6, $t5
/* DC44C8 80102EA8 AC590004 */  sw         $t9, 4($v0)
/* DC44CC 80102EAC 8E020000 */  lw         $v0, ($s0)
/* DC44D0 80102EB0 24580008 */  addiu      $t8, $v0, 8
/* DC44D4 80102EB4 AE180000 */  sw         $t8, ($s0)
/* DC44D8 80102EB8 AC4F0000 */  sw         $t7, ($v0)
/* DC44DC 80102EBC 8FB90630 */  lw         $t9, 0x630($sp)
/* DC44E0 80102EC0 8FAE062C */  lw         $t6, 0x62c($sp)
/* DC44E4 80102EC4 3338FFFF */  andi       $t8, $t9, 0xffff
/* DC44E8 80102EC8 000E6C00 */  sll        $t5, $t6, 0x10
/* DC44EC 80102ECC 01B87825 */  or         $t7, $t5, $t8
/* DC44F0 80102ED0 AC4F0004 */  sw         $t7, 4($v0)
/* DC44F4 80102ED4 8E430000 */  lw         $v1, ($s2)
.L80102ED8:
/* DC44F8 80102ED8 00036340 */  sll        $t4, $v1, 0xd
/* DC44FC 80102EDC 05810069 */  bgez       $t4, .L80103084
/* DC4500 80102EE0 240BFC00 */   addiu     $t3, $zero, -0x400
/* DC4504 80102EE4 8FB9060C */  lw         $t9, 0x60c($sp)
/* DC4508 80102EE8 8FAD061C */  lw         $t5, 0x61c($sp)
/* DC450C 80102EEC 8E020000 */  lw         $v0, ($s0)
/* DC4510 80102EF0 AFAB0630 */  sw         $t3, 0x630($sp)
/* DC4514 80102EF4 032DC021 */  addu       $t8, $t9, $t5
/* DC4518 80102EF8 8FAD0620 */  lw         $t5, 0x620($sp)
/* DC451C 80102EFC 8FB90610 */  lw         $t9, 0x610($sp)
/* DC4520 80102F00 00187880 */  sll        $t7, $t8, 2
/* DC4524 80102F04 31EC0FFF */  andi       $t4, $t7, 0xfff
/* DC4528 80102F08 000C5B00 */  sll        $t3, $t4, 0xc
/* DC452C 80102F0C 244E0008 */  addiu      $t6, $v0, 8
/* DC4530 80102F10 032DC021 */  addu       $t8, $t9, $t5
/* DC4534 80102F14 00187880 */  sll        $t7, $t8, 2
/* DC4538 80102F18 AE0E0000 */  sw         $t6, ($s0)
/* DC453C 80102F1C 3C01E400 */  lui        $at, 0xe400
/* DC4540 80102F20 01617025 */  or         $t6, $t3, $at
/* DC4544 80102F24 31EC0FFF */  andi       $t4, $t7, 0xfff
/* DC4548 80102F28 01CC5825 */  or         $t3, $t6, $t4
/* DC454C 80102F2C AC4B0000 */  sw         $t3, ($v0)
/* DC4550 80102F30 8FB9060C */  lw         $t9, 0x60c($sp)
/* DC4554 80102F34 8FAE0610 */  lw         $t6, 0x610($sp)
/* DC4558 80102F38 00196880 */  sll        $t5, $t9, 2
/* DC455C 80102F3C 31B80FFF */  andi       $t8, $t5, 0xfff
/* DC4560 80102F40 000E6080 */  sll        $t4, $t6, 2
/* DC4564 80102F44 318B0FFF */  andi       $t3, $t4, 0xfff
/* DC4568 80102F48 00187B00 */  sll        $t7, $t8, 0xc
/* DC456C 80102F4C 01EBC825 */  or         $t9, $t7, $t3
/* DC4570 80102F50 AC590004 */  sw         $t9, 4($v0)
/* DC4574 80102F54 8E020000 */  lw         $v0, ($s0)
/* DC4578 80102F58 3C18B400 */  lui        $t8, 0xb400
/* DC457C 80102F5C 244D0008 */  addiu      $t5, $v0, 8
/* DC4580 80102F60 AE0D0000 */  sw         $t5, ($s0)
/* DC4584 80102F64 AC580000 */  sw         $t8, ($v0)
/* DC4588 80102F68 8FAC0628 */  lw         $t4, 0x628($sp)
/* DC458C 80102F6C 8FAE0618 */  lw         $t6, 0x618($sp)
/* DC4590 80102F70 01CC7821 */  addu       $t7, $t6, $t4
/* DC4594 80102F74 8FAE0634 */  lw         $t6, 0x634($sp)
/* DC4598 80102F78 25EBFFFF */  addiu      $t3, $t7, -1
/* DC459C 80102F7C 000BC940 */  sll        $t9, $t3, 5
/* DC45A0 80102F80 332DFFFF */  andi       $t5, $t9, 0xffff
/* DC45A4 80102F84 000E6400 */  sll        $t4, $t6, 0x10
/* DC45A8 80102F88 018D7825 */  or         $t7, $t4, $t5
/* DC45AC 80102F8C AC4F0004 */  sw         $t7, 4($v0)
/* DC45B0 80102F90 8E020000 */  lw         $v0, ($s0)
/* DC45B4 80102F94 3C19B300 */  lui        $t9, 0xb300
/* DC45B8 80102F98 244B0008 */  addiu      $t3, $v0, 8
/* DC45BC 80102F9C AE0B0000 */  sw         $t3, ($s0)
/* DC45C0 80102FA0 AC590000 */  sw         $t9, ($v0)
/* DC45C4 80102FA4 8FAF0630 */  lw         $t7, 0x630($sp)
/* DC45C8 80102FA8 8FAE062C */  lw         $t6, 0x62c($sp)
/* DC45CC 80102FAC 31EBFFFF */  andi       $t3, $t7, 0xffff
/* DC45D0 80102FB0 000E6400 */  sll        $t4, $t6, 0x10
/* DC45D4 80102FB4 018BC825 */  or         $t9, $t4, $t3
/* DC45D8 80102FB8 10000032 */  b          .L80103084
/* DC45DC 80102FBC AC590004 */   sw        $t9, 4($v0)
.L80102FC0:
/* DC45E0 80102FC0 8FAE060C */  lw         $t6, 0x60c($sp)
/* DC45E4 80102FC4 8FAD061C */  lw         $t5, 0x61c($sp)
/* DC45E8 80102FC8 8E020000 */  lw         $v0, ($s0)
/* DC45EC 80102FCC 3C01E400 */  lui        $at, 0xe400
/* DC45F0 80102FD0 01CD7821 */  addu       $t7, $t6, $t5
/* DC45F4 80102FD4 8FAD0620 */  lw         $t5, 0x620($sp)
/* DC45F8 80102FD8 8FAE0610 */  lw         $t6, 0x610($sp)
/* DC45FC 80102FDC 000F6080 */  sll        $t4, $t7, 2
/* DC4600 80102FE0 318B0FFF */  andi       $t3, $t4, 0xfff
/* DC4604 80102FE4 000BCB00 */  sll        $t9, $t3, 0xc
/* DC4608 80102FE8 24580008 */  addiu      $t8, $v0, 8
/* DC460C 80102FEC 01CD7821 */  addu       $t7, $t6, $t5
/* DC4610 80102FF0 000F6080 */  sll        $t4, $t7, 2
/* DC4614 80102FF4 AE180000 */  sw         $t8, ($s0)
/* DC4618 80102FF8 0321C025 */  or         $t8, $t9, $at
/* DC461C 80102FFC 318B0FFF */  andi       $t3, $t4, 0xfff
/* DC4620 80103000 030BC825 */  or         $t9, $t8, $t3
/* DC4624 80103004 AC590000 */  sw         $t9, ($v0)
/* DC4628 80103008 8FAE060C */  lw         $t6, 0x60c($sp)
/* DC462C 8010300C 8FB80610 */  lw         $t8, 0x610($sp)
/* DC4630 80103010 000E6880 */  sll        $t5, $t6, 2
/* DC4634 80103014 31AF0FFF */  andi       $t7, $t5, 0xfff
/* DC4638 80103018 00185880 */  sll        $t3, $t8, 2
/* DC463C 8010301C 31790FFF */  andi       $t9, $t3, 0xfff
/* DC4640 80103020 000F6300 */  sll        $t4, $t7, 0xc
/* DC4644 80103024 01997025 */  or         $t6, $t4, $t9
/* DC4648 80103028 AC4E0004 */  sw         $t6, 4($v0)
/* DC464C 8010302C 8E020000 */  lw         $v0, ($s0)
/* DC4650 80103030 3C0FB400 */  lui        $t7, 0xb400
/* DC4654 80103034 3C18B300 */  lui        $t8, 0xb300
/* DC4658 80103038 244D0008 */  addiu      $t5, $v0, 8
/* DC465C 8010303C AE0D0000 */  sw         $t5, ($s0)
/* DC4660 80103040 AC4F0000 */  sw         $t7, ($v0)
/* DC4664 80103044 8FB90638 */  lw         $t9, 0x638($sp)
/* DC4668 80103048 8FAB0634 */  lw         $t3, 0x634($sp)
/* DC466C 8010304C 332EFFFF */  andi       $t6, $t9, 0xffff
/* DC4670 80103050 000B6400 */  sll        $t4, $t3, 0x10
/* DC4674 80103054 018E6825 */  or         $t5, $t4, $t6
/* DC4678 80103058 AC4D0004 */  sw         $t5, 4($v0)
/* DC467C 8010305C 8E020000 */  lw         $v0, ($s0)
/* DC4680 80103060 244F0008 */  addiu      $t7, $v0, 8
/* DC4684 80103064 AE0F0000 */  sw         $t7, ($s0)
/* DC4688 80103068 AC580000 */  sw         $t8, ($v0)
/* DC468C 8010306C 8FAE0630 */  lw         $t6, 0x630($sp)
/* DC4690 80103070 8FB9062C */  lw         $t9, 0x62c($sp)
/* DC4694 80103074 31CDFFFF */  andi       $t5, $t6, 0xffff
/* DC4698 80103078 00196400 */  sll        $t4, $t9, 0x10
/* DC469C 8010307C 018D7825 */  or         $t7, $t4, $t5
/* DC46A0 80103080 AC4F0004 */  sw         $t7, 4($v0)
.L80103084:
/* DC46A4 80103084 12C00002 */  beqz       $s6, .L80103090
/* DC46A8 80103088 241800FF */   addiu     $t8, $zero, 0xff
/* DC46AC 8010308C A658004E */  sh         $t8, 0x4e($s2)
.L80103090:
/* DC46B0 80103090 AE510000 */  sw         $s1, ($s2)
.L80103094:
/* DC46B4 80103094 8FAB005C */  lw         $t3, 0x5c($sp)
.L80103098:
/* DC46B8 80103098 27AE05E8 */  addiu      $t6, $sp, 0x5e8
/* DC46BC 8010309C 25790008 */  addiu      $t9, $t3, 8
/* DC46C0 801030A0 172EFC46 */  bne        $t9, $t6, .L801021BC
/* DC46C4 801030A4 AFB9005C */   sw        $t9, 0x5c($sp)
/* DC46C8 801030A8 8FBF003C */  lw         $ra, 0x3c($sp)
/* DC46CC 801030AC 8FB00018 */  lw         $s0, 0x18($sp)
/* DC46D0 801030B0 8FB1001C */  lw         $s1, 0x1c($sp)
/* DC46D4 801030B4 8FB20020 */  lw         $s2, 0x20($sp)
/* DC46D8 801030B8 8FB30024 */  lw         $s3, 0x24($sp)
/* DC46DC 801030BC 8FB40028 */  lw         $s4, 0x28($sp)
/* DC46E0 801030C0 8FB5002C */  lw         $s5, 0x2c($sp)
/* DC46E4 801030C4 8FB60030 */  lw         $s6, 0x30($sp)
/* DC46E8 801030C8 8FB70034 */  lw         $s7, 0x34($sp)
/* DC46EC 801030CC 8FBE0038 */  lw         $fp, 0x38($sp)
/* DC46F0 801030D0 03E00008 */  jr         $ra
/* DC46F4 801030D4 27BD0648 */   addiu     $sp, $sp, 0x648
/* DC46F8 801030D8 00000000 */  nop
/* DC46FC 801030DC 00000000 */  nop
