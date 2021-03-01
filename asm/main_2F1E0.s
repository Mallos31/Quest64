.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel VOID_FUN_8002e5e0
/* 2F1E0 8002E5E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2F1E4 8002E5E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2F1E8 8002E5E8 AFB10018 */  sw         $s1, 0x18($sp)
/* 2F1EC 8002E5EC AFB00014 */  sw         $s0, 0x14($sp)
/* 2F1F0 8002E5F0 AFA40020 */  sw         $a0, 0x20($sp)
/* 2F1F4 8002E5F4 00008025 */  or         $s0, $zero, $zero
/* 2F1F8 8002E5F8 24110004 */  addiu      $s1, $zero, 4
/* 2F1FC 8002E5FC 02002025 */  or         $a0, $s0, $zero
.L8002E600:
/* 2F200 8002E600 0C00B98A */  jal        func_8002E628
/* 2F204 8002E604 00002825 */   or        $a1, $zero, $zero
/* 2F208 8002E608 26100001 */  addiu      $s0, $s0, 1
/* 2F20C 8002E60C 5611FFFC */  bnel       $s0, $s1, .L8002E600
/* 2F210 8002E610 02002025 */   or        $a0, $s0, $zero
/* 2F214 8002E614 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2F218 8002E618 8FB00014 */  lw         $s0, 0x14($sp)
/* 2F21C 8002E61C 8FB10018 */  lw         $s1, 0x18($sp)
/* 2F220 8002E620 03E00008 */  jr         $ra
/* 2F224 8002E624 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002E628
/* 2F228 8002E628 AFA50004 */  sw         $a1, 4($sp)
/* 2F22C 8002E62C 30AE00FF */  andi       $t6, $a1, 0xff
/* 2F230 8002E630 01C02825 */  or         $a1, $t6, $zero
/* 2F234 8002E634 14A00012 */  bnez       $a1, .L8002E680
/* 2F238 8002E638 240700FF */   addiu     $a3, $zero, 0xff
/* 2F23C 8002E63C 00047900 */  sll        $t7, $a0, 4
/* 2F240 8002E640 01E47821 */  addu       $t7, $t7, $a0
/* 2F244 8002E644 000F7880 */  sll        $t7, $t7, 2
/* 2F248 8002E648 01E47821 */  addu       $t7, $t7, $a0
/* 2F24C 8002E64C 000F78C0 */  sll        $t7, $t7, 3
/* 2F250 8002E650 01E47823 */  subu       $t7, $t7, $a0
/* 2F254 8002E654 3C188009 */  lui        $t8, %hi(textboxState)
/* 2F258 8002E658 271805E0 */  addiu      $t8, $t8, %lo(textboxState)
/* 2F25C 8002E65C 000F7880 */  sll        $t7, $t7, 2
/* 2F260 8002E660 01F81021 */  addu       $v0, $t7, $t8
/* 2F264 8002E664 A4400006 */  sh         $zero, 6($v0)
/* 2F268 8002E668 A440000A */  sh         $zero, 0xa($v0)
/* 2F26C 8002E66C 84590006 */  lh         $t9, 6($v0)
/* 2F270 8002E670 8448000A */  lh         $t0, 0xa($v0)
/* 2F274 8002E674 AC400000 */  sw         $zero, ($v0)
/* 2F278 8002E678 A4590004 */  sh         $t9, 4($v0)
/* 2F27C 8002E67C A4480008 */  sh         $t0, 8($v0)
.L8002E680:
/* 2F280 8002E680 00044900 */  sll        $t1, $a0, 4
/* 2F284 8002E684 01244821 */  addu       $t1, $t1, $a0
/* 2F288 8002E688 00094880 */  sll        $t1, $t1, 2
/* 2F28C 8002E68C 01244821 */  addu       $t1, $t1, $a0
/* 2F290 8002E690 000948C0 */  sll        $t1, $t1, 3
/* 2F294 8002E694 01244823 */  subu       $t1, $t1, $a0
/* 2F298 8002E698 3C0A8009 */  lui        $t2, %hi(textboxState)
/* 2F29C 8002E69C 254A05E0 */  addiu      $t2, $t2, %lo(textboxState)
/* 2F2A0 8002E6A0 00094880 */  sll        $t1, $t1, 2
/* 2F2A4 8002E6A4 012A1021 */  addu       $v0, $t1, $t2
/* 2F2A8 8002E6A8 00046100 */  sll        $t4, $a0, 4
/* 2F2AC 8002E6AC 01846021 */  addu       $t4, $t4, $a0
/* 2F2B0 8002E6B0 000C6080 */  sll        $t4, $t4, 2
/* 2F2B4 8002E6B4 01846021 */  addu       $t4, $t4, $a0
/* 2F2B8 8002E6B8 000C60C0 */  sll        $t4, $t4, 3
/* 2F2BC 8002E6BC 01846023 */  subu       $t4, $t4, $a0
/* 2F2C0 8002E6C0 3C0D8009 */  lui        $t5, %hi(textboxState)
/* 2F2C4 8002E6C4 25AD05E0 */  addiu      $t5, $t5, %lo(textboxState)
/* 2F2C8 8002E6C8 000C6080 */  sll        $t4, $t4, 2
/* 2F2CC 8002E6CC 240B0001 */  addiu      $t3, $zero, 1
/* 2F2D0 8002E6D0 018D2821 */  addu       $a1, $t4, $t5
/* 2F2D4 8002E6D4 A44B000C */  sh         $t3, 0xc($v0)
/* 2F2D8 8002E6D8 A040000E */  sb         $zero, 0xe($v0)
/* 2F2DC 8002E6DC A040000F */  sb         $zero, 0xf($v0)
/* 2F2E0 8002E6E0 A0400010 */  sb         $zero, 0x10($v0)
/* 2F2E4 8002E6E4 A4400012 */  sh         $zero, 0x12($v0)
/* 2F2E8 8002E6E8 A0470014 */  sb         $a3, 0x14($v0)
/* 2F2EC 8002E6EC A0400015 */  sb         $zero, 0x15($v0)
/* 2F2F0 8002E6F0 A0400016 */  sb         $zero, 0x16($v0)
/* 2F2F4 8002E6F4 00A03025 */  or         $a2, $a1, $zero
/* 2F2F8 8002E6F8 00001825 */  or         $v1, $zero, $zero
.L8002E6FC:
/* 2F2FC 8002E6FC 24630001 */  addiu      $v1, $v1, 1
/* 2F300 8002E700 28610020 */  slti       $at, $v1, 0x20
/* 2F304 8002E704 24C60001 */  addiu      $a2, $a2, 1
/* 2F308 8002E708 1420FFFC */  bnez       $at, .L8002E6FC
/* 2F30C 8002E70C A0C70016 */   sb        $a3, 0x16($a2)
/* 2F310 8002E710 00001825 */  or         $v1, $zero, $zero
/* 2F314 8002E714 00A03025 */  or         $a2, $a1, $zero
.L8002E718:
/* 2F318 8002E718 24630001 */  addiu      $v1, $v1, 1
/* 2F31C 8002E71C 28610400 */  slti       $at, $v1, 0x400
/* 2F320 8002E720 24C60001 */  addiu      $a2, $a2, 1
/* 2F324 8002E724 A0C7009B */  sb         $a3, 0x9b($a2)
/* 2F328 8002E728 1420FFFB */  bnez       $at, .L8002E718
/* 2F32C 8002E72C A0C7049B */   sb        $a3, 0x49b($a2)
/* 2F330 8002E730 A4400038 */  sh         $zero, 0x38($v0)
/* 2F334 8002E734 A440003A */  sh         $zero, 0x3a($v0)
/* 2F338 8002E738 24020018 */  addiu      $v0, $zero, 0x18
/* 2F33C 8002E73C 00001825 */  or         $v1, $zero, $zero
/* 2F340 8002E740 00A02025 */  or         $a0, $a1, $zero
.L8002E744:
/* 2F344 8002E744 24630001 */  addiu      $v1, $v1, 1
/* 2F348 8002E748 24840001 */  addiu      $a0, $a0, 1
/* 2F34C 8002E74C A0870053 */  sb         $a3, 0x53($a0)
/* 2F350 8002E750 A087006B */  sb         $a3, 0x6b($a0)
/* 2F354 8002E754 A0870083 */  sb         $a3, 0x83($a0)
/* 2F358 8002E758 1462FFFA */  bne        $v1, $v0, .L8002E744
/* 2F35C 8002E75C A087003B */   sb        $a3, 0x3b($a0)
/* 2F360 8002E760 03E00008 */  jr         $ra
/* 2F364 8002E764 00000000 */   nop

glabel UNK_calledWhenWritingToTextbox
/* 2F368 8002E768 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2F36C 8002E76C AFB00008 */  sw         $s0, 8($sp)
/* 2F370 8002E770 00808025 */  or         $s0, $a0, $zero
/* 2F374 8002E774 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2F378 8002E778 AFBE0028 */  sw         $fp, 0x28($sp)
/* 2F37C 8002E77C AFB70024 */  sw         $s7, 0x24($sp)
/* 2F380 8002E780 AFB60020 */  sw         $s6, 0x20($sp)
/* 2F384 8002E784 AFB5001C */  sw         $s5, 0x1c($sp)
/* 2F388 8002E788 AFB40018 */  sw         $s4, 0x18($sp)
/* 2F38C 8002E78C AFB30014 */  sw         $s3, 0x14($sp)
/* 2F390 8002E790 AFB20010 */  sw         $s2, 0x10($sp)
/* 2F394 8002E794 AFB1000C */  sw         $s1, 0xc($sp)
/* 2F398 8002E798 3C0A8009 */  lui        $t2, 0x8009
/* 2F39C 8002E79C 3C1E8009 */  lui        $fp, 0x8009
/* 2F3A0 8002E7A0 3C138006 */  lui        $s3, 0x8006
/* 2F3A4 8002E7A4 3C0C8008 */  lui        $t4, %hi(currNPCName)
/* 2F3A8 8002E7A8 3C0B8008 */  lui        $t3, %hi(NumberOfEnemies)
/* 2F3AC 8002E7AC 2403FFFF */  addiu      $v1, $zero, -1
/* 2F3B0 8002E7B0 256BC990 */  addiu      $t3, $t3, %lo(NumberOfEnemies)
/* 2F3B4 8002E7B4 258CC970 */  addiu      $t4, $t4, %lo(currNPCName)
/* 2F3B8 8002E7B8 2673F9F8 */  addiu      $s3, $s3, -0x608
/* 2F3BC 8002E7BC 27DE05C0 */  addiu      $fp, $fp, 0x5c0
/* 2F3C0 8002E7C0 254A05E0 */  addiu      $t2, $t2, 0x5e0
/* 2F3C4 8002E7C4 00009025 */  or         $s2, $zero, $zero
/* 2F3C8 8002E7C8 3C1F2000 */  lui        $ra, 0x2000
/* 2F3CC 8002E7CC 2417FFF8 */  addiu      $s7, $zero, -8
/* 2F3D0 8002E7D0 3C160008 */  lui        $s6, 8
/* 2F3D4 8002E7D4 24080018 */  addiu      $t0, $zero, 0x18
.L8002E7D8:
/* 2F3D8 8002E7D8 8D420000 */  lw         $v0, ($t2)
/* 2F3DC 8002E7DC 005F7024 */  and        $t6, $v0, $ra
/* 2F3E0 8002E7E0 11C0000F */  beqz       $t6, .L8002E820
/* 2F3E4 8002E7E4 30440007 */   andi      $a0, $v0, 7
/* 2F3E8 8002E7E8 2484FFFF */  addiu      $a0, $a0, -1
/* 2F3EC 8002E7EC 18800008 */  blez       $a0, .L8002E810
/* 2F3F0 8002E7F0 00577824 */   and       $t7, $v0, $s7
/* 2F3F4 8002E7F4 01E4C825 */  or         $t9, $t7, $a0
/* 2F3F8 8002E7F8 3C017FFF */  lui        $at, 0x7fff
/* 2F3FC 8002E7FC AD4F0000 */  sw         $t7, ($t2)
/* 2F400 8002E800 3421FFFF */  ori        $at, $at, 0xffff
/* 2F404 8002E804 AD590000 */  sw         $t9, ($t2)
/* 2F408 8002E808 03211024 */  and        $v0, $t9, $at
/* 2F40C 8002E80C AD420000 */  sw         $v0, ($t2)
.L8002E810:
/* 2F410 8002E810 3C010040 */  lui        $at, 0x40
/* 2F414 8002E814 0041C025 */  or         $t8, $v0, $at
/* 2F418 8002E818 10000089 */  b          .L8002EA40
/* 2F41C 8002E81C AD580000 */   sw        $t8, ($t2)
.L8002E820:
/* 2F420 8002E820 04610087 */  bgez       $v1, .L8002EA40
/* 2F424 8002E824 3C011000 */   lui       $at, 0x1000
/* 2F428 8002E828 0041C825 */  or         $t9, $v0, $at
/* 2F42C 8002E82C 06010012 */  bgez       $s0, .L8002E878
/* 2F430 8002E830 AD590000 */   sw        $t9, ($t2)
/* 2F434 8002E834 3C014000 */  lui        $at, 0x4000
/* 2F438 8002E838 03217825 */  or         $t7, $t9, $at
/* 2F43C 8002E83C 2401FFFE */  addiu      $at, $zero, -2
/* 2F440 8002E840 16010007 */  bne        $s0, $at, .L8002E860
/* 2F444 8002E844 AD4F0000 */   sw        $t7, ($t2)
/* 2F448 8002E848 01F6C825 */  or         $t9, $t7, $s6
/* 2F44C 8002E84C 3C01BFFF */  lui        $at, 0xbfff
/* 2F450 8002E850 3421FFFF */  ori        $at, $at, 0xffff
/* 2F454 8002E854 AD590000 */  sw         $t9, ($t2)
/* 2F458 8002E858 03217824 */  and        $t7, $t9, $at
/* 2F45C 8002E85C AD4F0000 */  sw         $t7, ($t2)
.L8002E860:
/* 2F460 8002E860 2401FFFD */  addiu      $at, $zero, -3
/* 2F464 8002E864 56010005 */  bnel       $s0, $at, .L8002E87C
/* 2F468 8002E868 8D4E0000 */   lw        $t6, ($t2)
/* 2F46C 8002E86C 8D580000 */  lw         $t8, ($t2)
/* 2F470 8002E870 0316C825 */  or         $t9, $t8, $s6
/* 2F474 8002E874 AD590000 */  sw         $t9, ($t2)
.L8002E878:
/* 2F478 8002E878 8D4E0000 */  lw         $t6, ($t2)
.L8002E87C:
/* 2F47C 8002E87C 0012C100 */  sll        $t8, $s2, 4
/* 2F480 8002E880 0312C021 */  addu       $t8, $t8, $s2
/* 2F484 8002E884 01D77824 */  and        $t7, $t6, $s7
/* 2F488 8002E888 AD4F0000 */  sw         $t7, ($t2)
/* 2F48C 8002E88C 35F90004 */  ori        $t9, $t7, 4
/* 2F490 8002E890 03367824 */  and        $t7, $t9, $s6
/* 2F494 8002E894 15E00060 */  bnez       $t7, .L8002EA18
/* 2F498 8002E898 AD590000 */   sw        $t9, ($t2)
/* 2F49C 8002E89C 0018C080 */  sll        $t8, $t8, 2
/* 2F4A0 8002E8A0 0312C021 */  addu       $t8, $t8, $s2
/* 2F4A4 8002E8A4 3C0E8006 */  lui        $t6, %hi(BaseMessageSpeed)
/* 2F4A8 8002E8A8 3C0F8006 */  lui        $t7, %hi(MessageSliderPos)
/* 2F4AC 8002E8AC 81EFFA00 */  lb         $t7, %lo(MessageSliderPos)($t7)
/* 2F4B0 8002E8B0 81CEF9B0 */  lb         $t6, %lo(BaseMessageSpeed)($t6)
/* 2F4B4 8002E8B4 0018C0C0 */  sll        $t8, $t8, 3
/* 2F4B8 8002E8B8 0312C023 */  subu       $t8, $t8, $s2
/* 2F4BC 8002E8BC 3C198009 */  lui        $t9, %hi(textboxState)
/* 2F4C0 8002E8C0 273905E0 */  addiu      $t9, $t9, %lo(textboxState)
/* 2F4C4 8002E8C4 0018C080 */  sll        $t8, $t8, 2
/* 2F4C8 8002E8C8 03193021 */  addu       $a2, $t8, $t9
/* 2F4CC 8002E8CC 3C038008 */  lui        $v1, 0x8008
/* 2F4D0 8002E8D0 3C0D8009 */  lui        $t5, %hi(D_800905C8)
/* 2F4D4 8002E8D4 3C148009 */  lui        $s4, %hi(D_800905CC)
/* 2F4D8 8002E8D8 01CF8821 */  addu       $s1, $t6, $t7
/* 2F4DC 8002E8DC 0220A825 */  or         $s5, $s1, $zero
/* 2F4E0 8002E8E0 8E9405CC */  lw         $s4, %lo(D_800905CC)($s4)
/* 2F4E4 8002E8E4 8DAD05C8 */  lw         $t5, %lo(D_800905C8)($t5)
/* 2F4E8 8002E8E8 2463C970 */  addiu      $v1, $v1, -0x3690
/* 2F4EC 8002E8EC 00C01025 */  or         $v0, $a2, $zero
.L8002E8F0:
/* 2F4F0 8002E8F0 90780000 */  lbu        $t8, ($v1)
/* 2F4F4 8002E8F4 24630001 */  addiu      $v1, $v1, 1
/* 2F4F8 8002E8F8 006B082B */  sltu       $at, $v1, $t3
/* 2F4FC 8002E8FC 24420001 */  addiu      $v0, $v0, 1
/* 2F500 8002E900 1420FFFB */  bnez       $at, .L8002E8F0
/* 2F504 8002E904 A0580016 */   sb        $t8, 0x16($v0)
/* 2F508 8002E908 3C038008 */  lui        $v1, %hi(UNK_TextBoxTextTbl)
/* 2F50C 8002E90C 2463C570 */  addiu      $v1, $v1, %lo(UNK_TextBoxTextTbl)
/* 2F510 8002E910 00C01025 */  or         $v0, $a2, $zero
.L8002E914:
/* 2F514 8002E914 906E0001 */  lbu        $t6, 1($v1)
/* 2F518 8002E918 906F0002 */  lbu        $t7, 2($v1)
/* 2F51C 8002E91C 90780003 */  lbu        $t8, 3($v1)
/* 2F520 8002E920 90790000 */  lbu        $t9, ($v1)
/* 2F524 8002E924 24630004 */  addiu      $v1, $v1, 4
/* 2F528 8002E928 24420004 */  addiu      $v0, $v0, 4
/* 2F52C 8002E92C A04E0099 */  sb         $t6, 0x99($v0)
/* 2F530 8002E930 A04F009A */  sb         $t7, 0x9a($v0)
/* 2F534 8002E934 A058009B */  sb         $t8, 0x9b($v0)
/* 2F538 8002E938 146CFFF6 */  bne        $v1, $t4, .L8002E914
/* 2F53C 8002E93C A0590098 */   sb        $t9, 0x98($v0)
/* 2F540 8002E940 19A00018 */  blez       $t5, .L8002E9A4
/* 2F544 8002E944 3C198009 */   lui       $t9, %hi(D_800905C8)
/* 2F548 8002E948 272505C8 */  addiu      $a1, $t9, %lo(D_800905C8)
/* 2F54C 8002E94C 000D7080 */  sll        $t6, $t5, 2
/* 2F550 8002E950 01C54821 */  addu       $t1, $t6, $a1
/* 2F554 8002E954 00C03825 */  or         $a3, $a2, $zero
.L8002E958:
/* 2F558 8002E958 8CA30008 */  lw         $v1, 8($a1)
/* 2F55C 8002E95C 00002025 */  or         $a0, $zero, $zero
/* 2F560 8002E960 00E01025 */  or         $v0, $a3, $zero
.L8002E964:
/* 2F564 8002E964 906F0000 */  lbu        $t7, ($v1)
/* 2F568 8002E968 24840004 */  addiu      $a0, $a0, 4
/* 2F56C 8002E96C 24420004 */  addiu      $v0, $v0, 4
/* 2F570 8002E970 A04F0038 */  sb         $t7, 0x38($v0)
/* 2F574 8002E974 90780001 */  lbu        $t8, 1($v1)
/* 2F578 8002E978 24630004 */  addiu      $v1, $v1, 4
/* 2F57C 8002E97C A0580039 */  sb         $t8, 0x39($v0)
/* 2F580 8002E980 906EFFFE */  lbu        $t6, -2($v1)
/* 2F584 8002E984 A04E003A */  sb         $t6, 0x3a($v0)
/* 2F588 8002E988 9079FFFF */  lbu        $t9, -1($v1)
/* 2F58C 8002E98C 1488FFF5 */  bne        $a0, $t0, .L8002E964
/* 2F590 8002E990 A059003B */   sb        $t9, 0x3b($v0)
/* 2F594 8002E994 24A50004 */  addiu      $a1, $a1, 4
/* 2F598 8002E998 00A9082B */  sltu       $at, $a1, $t1
/* 2F59C 8002E99C 1420FFEE */  bnez       $at, .L8002E958
/* 2F5A0 8002E9A0 24E70018 */   addiu     $a3, $a3, 0x18
.L8002E9A4:
/* 2F5A4 8002E9A4 A54D0038 */  sh         $t5, 0x38($t2)
/* 2F5A8 8002E9A8 0600000F */  bltz       $s0, .L8002E9E8
/* 2F5AC 8002E9AC A554003A */   sh        $s4, 0x3a($t2)
/* 2F5B0 8002E9B0 3C188006 */  lui        $t8, %hi(D_8005F9B8)
/* 2F5B4 8002E9B4 2718F9B8 */  addiu      $t8, $t8, %lo(D_8005F9B8)
/* 2F5B8 8002E9B8 001078C0 */  sll        $t7, $s0, 3
/* 2F5BC 8002E9BC 01F81021 */  addu       $v0, $t7, $t8
/* 2F5C0 8002E9C0 844E0000 */  lh         $t6, ($v0)
/* 2F5C4 8002E9C4 84590002 */  lh         $t9, 2($v0)
/* 2F5C8 8002E9C8 844F0004 */  lh         $t7, 4($v0)
/* 2F5CC 8002E9CC 84580006 */  lh         $t8, 6($v0)
/* 2F5D0 8002E9D0 A150000E */  sb         $s0, 0xe($t2)
/* 2F5D4 8002E9D4 A54E0004 */  sh         $t6, 4($t2)
/* 2F5D8 8002E9D8 A5590006 */  sh         $t9, 6($t2)
/* 2F5DC 8002E9DC A54F0008 */  sh         $t7, 8($t2)
/* 2F5E0 8002E9E0 1000000B */  b          .L8002EA10
/* 2F5E4 8002E9E4 A558000A */   sh        $t8, 0xa($t2)
.L8002E9E8:
/* 2F5E8 8002E9E8 866E0000 */  lh         $t6, ($s3)
/* 2F5EC 8002E9EC 86790002 */  lh         $t9, 2($s3)
/* 2F5F0 8002E9F0 866F0004 */  lh         $t7, 4($s3)
/* 2F5F4 8002E9F4 86780006 */  lh         $t8, 6($s3)
/* 2F5F8 8002E9F8 A54E0004 */  sh         $t6, 4($t2)
/* 2F5FC 8002E9FC 240E0080 */  addiu      $t6, $zero, 0x80
/* 2F600 8002EA00 A14E000E */  sb         $t6, 0xe($t2)
/* 2F604 8002EA04 A5590006 */  sh         $t9, 6($t2)
/* 2F608 8002EA08 A54F0008 */  sh         $t7, 8($t2)
/* 2F60C 8002EA0C A558000A */  sh         $t8, 0xa($t2)
.L8002EA10:
/* 2F610 8002EA10 A155000F */  sb         $s5, 0xf($t2)
/* 2F614 8002EA14 A1510010 */  sb         $s1, 0x10($t2)
.L8002EA18:
/* 2F618 8002EA18 8FCE0000 */  lw         $t6, ($fp)
/* 2F61C 8002EA1C 914F009D */  lbu        $t7, 0x9d($t2)
/* 2F620 8002EA20 24190001 */  addiu      $t9, $zero, 1
/* 2F624 8002EA24 A5590012 */  sh         $t9, 0x12($t2)
/* 2F628 8002EA28 241800FF */  addiu      $t8, $zero, 0xff
/* 2F62C 8002EA2C 25D90001 */  addiu      $t9, $t6, 1
/* 2F630 8002EA30 A158009D */  sb         $t8, 0x9d($t2)
/* 2F634 8002EA34 02401825 */  or         $v1, $s2, $zero
/* 2F638 8002EA38 AFD90000 */  sw         $t9, ($fp)
/* 2F63C 8002EA3C A14F0014 */  sb         $t7, 0x14($t2)
.L8002EA40:
/* 2F640 8002EA40 26520001 */  addiu      $s2, $s2, 1
/* 2F644 8002EA44 24010004 */  addiu      $at, $zero, 4
/* 2F648 8002EA48 1641FF63 */  bne        $s2, $at, .L8002E7D8
/* 2F64C 8002EA4C 254A089C */   addiu     $t2, $t2, 0x89c
/* 2F650 8002EA50 3C048008 */  lui        $a0, %hi(HUDState)
/* 2F654 8002EA54 2484B2E4 */  addiu      $a0, $a0, %lo(HUDState)
/* 2F658 8002EA58 8C8F0000 */  lw         $t7, ($a0)
/* 2F65C 8002EA5C 3C018009 */  lui        $at, %hi(D_80092850)
/* 2F660 8002EA60 00601025 */  or         $v0, $v1, $zero
/* 2F664 8002EA64 35F80002 */  ori        $t8, $t7, 2
/* 2F668 8002EA68 AC980000 */  sw         $t8, ($a0)
/* 2F66C 8002EA6C A0202850 */  sb         $zero, %lo(D_80092850)($at)
/* 2F670 8002EA70 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2F674 8002EA74 8FB00008 */  lw         $s0, 8($sp)
/* 2F678 8002EA78 8FB1000C */  lw         $s1, 0xc($sp)
/* 2F67C 8002EA7C 8FB20010 */  lw         $s2, 0x10($sp)
/* 2F680 8002EA80 8FB30014 */  lw         $s3, 0x14($sp)
/* 2F684 8002EA84 8FB40018 */  lw         $s4, 0x18($sp)
/* 2F688 8002EA88 8FB5001C */  lw         $s5, 0x1c($sp)
/* 2F68C 8002EA8C 8FB60020 */  lw         $s6, 0x20($sp)
/* 2F690 8002EA90 8FB70024 */  lw         $s7, 0x24($sp)
/* 2F694 8002EA94 8FBE0028 */  lw         $fp, 0x28($sp)
/* 2F698 8002EA98 03E00008 */  jr         $ra
/* 2F69C 8002EA9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel printText
/* 2F6A0 8002EAA0 27BDFEE8 */  addiu      $sp, $sp, -0x118
/* 2F6A4 8002EAA4 AFB60038 */  sw         $s6, 0x38($sp)
/* 2F6A8 8002EAA8 3C168008 */  lui        $s6, %hi(UNK_DisplayListCommand)
/* 2F6AC 8002EAAC 26D6B2FC */  addiu      $s6, $s6, %lo(UNK_DisplayListCommand)
/* 2F6B0 8002EAB0 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2F6B4 8002EAB4 AFBE0040 */  sw         $fp, 0x40($sp)
/* 2F6B8 8002EAB8 AFB7003C */  sw         $s7, 0x3c($sp)
/* 2F6BC 8002EABC AFB50034 */  sw         $s5, 0x34($sp)
/* 2F6C0 8002EAC0 AFB40030 */  sw         $s4, 0x30($sp)
/* 2F6C4 8002EAC4 AFB3002C */  sw         $s3, 0x2c($sp)
/* 2F6C8 8002EAC8 AFB20028 */  sw         $s2, 0x28($sp)
/* 2F6CC 8002EACC AFB10024 */  sw         $s1, 0x24($sp)
/* 2F6D0 8002EAD0 AFB00020 */  sw         $s0, 0x20($sp)
/* 2F6D4 8002EAD4 3C0E8006 */  lui        $t6, %hi(textSomething)
/* 2F6D8 8002EAD8 8DCEFA04 */  lw         $t6, %lo(textSomething)($t6)
/* 2F6DC 8002EADC AFA000E0 */  sw         $zero, 0xe0($sp)
/* 2F6E0 8002EAE0 AFA000DC */  sw         $zero, 0xdc($sp)
/* 2F6E4 8002EAE4 00004825 */  or         $t1, $zero, $zero
/* 2F6E8 8002EAE8 AFAE00EC */  sw         $t6, 0xec($sp)
/* 2F6EC 8002EAEC 8EC20000 */  lw         $v0, ($s6)
/* 2F6F0 8002EAF0 3C198006 */  lui        $t9, %hi(someDisplayList)
/* 2F6F4 8002EAF4 2739FAA0 */  addiu      $t9, $t9, %lo(someDisplayList)
/* 2F6F8 8002EAF8 244F0008 */  addiu      $t7, $v0, 8
/* 2F6FC 8002EAFC AECF0000 */  sw         $t7, ($s6)
/* 2F700 8002EB00 3C180600 */  lui        $t8, 0x600
/* 2F704 8002EB04 AC580000 */  sw         $t8, ($v0)
/* 2F708 8002EB08 AC590004 */  sw         $t9, 4($v0)
/* 2F70C 8002EB0C 8EC20000 */  lw         $v0, ($s6)
/* 2F710 8002EB10 3C0EF900 */  lui        $t6, 0xf900
/* 2F714 8002EB14 240F0001 */  addiu      $t7, $zero, 1
/* 2F718 8002EB18 244D0008 */  addiu      $t5, $v0, 8
/* 2F71C 8002EB1C AECD0000 */  sw         $t5, ($s6)
/* 2F720 8002EB20 AC4F0004 */  sw         $t7, 4($v0)
/* 2F724 8002EB24 AC4E0000 */  sw         $t6, ($v0)
/* 2F728 8002EB28 3C058009 */  lui        $a1, %hi(textboxState)
/* 2F72C 8002EB2C 8CA505E0 */  lw         $a1, %lo(textboxState)($a1)
/* 2F730 8002EB30 24060001 */  addiu      $a2, $zero, 1
/* 2F734 8002EB34 241700FF */  addiu      $s7, $zero, 0xff
/* 2F738 8002EB38 30A20007 */  andi       $v0, $a1, 7
/* 2F73C 8002EB3C 304400FF */  andi       $a0, $v0, 0xff
/* 2F740 8002EB40 10C4000D */  beq        $a2, $a0, .L8002EB78
/* 2F744 8002EB44 241500FF */   addiu     $s5, $zero, 0xff
/* 2F748 8002EB48 24070002 */  addiu      $a3, $zero, 2
/* 2F74C 8002EB4C 304300FF */  andi       $v1, $v0, 0xff
/* 2F750 8002EB50 1067000F */  beq        $v1, $a3, .L8002EB90
/* 2F754 8002EB54 24080004 */   addiu     $t0, $zero, 4
/* 2F758 8002EB58 24020003 */  addiu      $v0, $zero, 3
/* 2F75C 8002EB5C 1062000F */  beq        $v1, $v0, .L8002EB9C
/* 2F760 8002EB60 24080004 */   addiu     $t0, $zero, 4
/* 2F764 8002EB64 24080004 */  addiu      $t0, $zero, 4
/* 2F768 8002EB68 5068000F */  beql       $v1, $t0, .L8002EBA8
/* 2F76C 8002EB6C A3A000EF */   sb        $zero, 0xef($sp)
/* 2F770 8002EB70 1000000D */  b          .L8002EBA8
/* 2F774 8002EB74 00000000 */   nop
.L8002EB78:
/* 2F778 8002EB78 304300FF */  andi       $v1, $v0, 0xff
/* 2F77C 8002EB7C 24020003 */  addiu      $v0, $zero, 3
/* 2F780 8002EB80 A3A000EC */  sb         $zero, 0xec($sp)
/* 2F784 8002EB84 24080004 */  addiu      $t0, $zero, 4
/* 2F788 8002EB88 10000007 */  b          .L8002EBA8
/* 2F78C 8002EB8C 24070002 */   addiu     $a3, $zero, 2
.L8002EB90:
/* 2F790 8002EB90 A3A000ED */  sb         $zero, 0xed($sp)
/* 2F794 8002EB94 10000004 */  b          .L8002EBA8
/* 2F798 8002EB98 24020003 */   addiu     $v0, $zero, 3
.L8002EB9C:
/* 2F79C 8002EB9C 10000002 */  b          .L8002EBA8
/* 2F7A0 8002EBA0 A3A000EE */   sb        $zero, 0xee($sp)
/* 2F7A4 8002EBA4 A3A000EF */  sb         $zero, 0xef($sp)
.L8002EBA8:
/* 2F7A8 8002EBA8 10600002 */  beqz       $v1, .L8002EBB4
/* 2F7AC 8002EBAC 3C048009 */   lui       $a0, %hi(D_80090E7C)
/* 2F7B0 8002EBB0 00C04825 */  or         $t1, $a2, $zero
.L8002EBB4:
/* 2F7B4 8002EBB4 8C980E7C */  lw         $t8, %lo(D_80090E7C)($a0)
/* 2F7B8 8002EBB8 3C048009 */  lui        $a0, 0x8009
/* 2F7BC 8002EBBC 33190007 */  andi       $t9, $t8, 7
/* 2F7C0 8002EBC0 10D90009 */  beq        $a2, $t9, .L8002EBE8
/* 2F7C4 8002EBC4 03209025 */   or        $s2, $t9, $zero
/* 2F7C8 8002EBC8 13270009 */  beq        $t9, $a3, .L8002EBF0
/* 2F7CC 8002EBCC 00000000 */   nop
/* 2F7D0 8002EBD0 13220009 */  beq        $t9, $v0, .L8002EBF8
/* 2F7D4 8002EBD4 00000000 */   nop
/* 2F7D8 8002EBD8 5328000A */  beql       $t9, $t0, .L8002EC04
/* 2F7DC 8002EBDC A3A600EF */   sb        $a2, 0xef($sp)
/* 2F7E0 8002EBE0 10000008 */  b          .L8002EC04
/* 2F7E4 8002EBE4 00000000 */   nop
.L8002EBE8:
/* 2F7E8 8002EBE8 10000006 */  b          .L8002EC04
/* 2F7EC 8002EBEC A3A600EC */   sb        $a2, 0xec($sp)
.L8002EBF0:
/* 2F7F0 8002EBF0 10000004 */  b          .L8002EC04
/* 2F7F4 8002EBF4 A3A600ED */   sb        $a2, 0xed($sp)
.L8002EBF8:
/* 2F7F8 8002EBF8 10000002 */  b          .L8002EC04
/* 2F7FC 8002EBFC A3A600EE */   sb        $a2, 0xee($sp)
/* 2F800 8002EC00 A3A600EF */  sb         $a2, 0xef($sp)
.L8002EC04:
/* 2F804 8002EC04 12400002 */  beqz       $s2, .L8002EC10
/* 2F808 8002EC08 24190003 */   addiu     $t9, $zero, 3
/* 2F80C 8002EC0C 25290001 */  addiu      $t1, $t1, 1
.L8002EC10:
/* 2F810 8002EC10 8C8D1718 */  lw         $t5, 0x1718($a0)
/* 2F814 8002EC14 3C048009 */  lui        $a0, 0x8009
/* 2F818 8002EC18 31AE0007 */  andi       $t6, $t5, 7
/* 2F81C 8002EC1C 10CE0009 */  beq        $a2, $t6, .L8002EC44
/* 2F820 8002EC20 01C09025 */   or        $s2, $t6, $zero
/* 2F824 8002EC24 11C70009 */  beq        $t6, $a3, .L8002EC4C
/* 2F828 8002EC28 00000000 */   nop
/* 2F82C 8002EC2C 11C20009 */  beq        $t6, $v0, .L8002EC54
/* 2F830 8002EC30 00000000 */   nop
/* 2F834 8002EC34 51C8000A */  beql       $t6, $t0, .L8002EC60
/* 2F838 8002EC38 A3A700EF */   sb        $a3, 0xef($sp)
/* 2F83C 8002EC3C 10000008 */  b          .L8002EC60
/* 2F840 8002EC40 00000000 */   nop
.L8002EC44:
/* 2F844 8002EC44 10000006 */  b          .L8002EC60
/* 2F848 8002EC48 A3A700EC */   sb        $a3, 0xec($sp)
.L8002EC4C:
/* 2F84C 8002EC4C 10000004 */  b          .L8002EC60
/* 2F850 8002EC50 A3A700ED */   sb        $a3, 0xed($sp)
.L8002EC54:
/* 2F854 8002EC54 10000002 */  b          .L8002EC60
/* 2F858 8002EC58 A3A700EE */   sb        $a3, 0xee($sp)
/* 2F85C 8002EC5C A3A700EF */  sb         $a3, 0xef($sp)
.L8002EC60:
/* 2F860 8002EC60 12400002 */  beqz       $s2, .L8002EC6C
/* 2F864 8002EC64 00000000 */   nop
/* 2F868 8002EC68 25290001 */  addiu      $t1, $t1, 1
.L8002EC6C:
/* 2F86C 8002EC6C 8C8F1FB4 */  lw         $t7, 0x1fb4($a0)
/* 2F870 8002EC70 31F80007 */  andi       $t8, $t7, 7
/* 2F874 8002EC74 10D80009 */  beq        $a2, $t8, .L8002EC9C
/* 2F878 8002EC78 03009025 */   or        $s2, $t8, $zero
/* 2F87C 8002EC7C 13070009 */  beq        $t8, $a3, .L8002ECA4
/* 2F880 8002EC80 240D0003 */   addiu     $t5, $zero, 3
/* 2F884 8002EC84 13020009 */  beq        $t8, $v0, .L8002ECAC
/* 2F888 8002EC88 240E0003 */   addiu     $t6, $zero, 3
/* 2F88C 8002EC8C 13080009 */  beq        $t8, $t0, .L8002ECB4
/* 2F890 8002EC90 240F0003 */   addiu     $t7, $zero, 3
/* 2F894 8002EC94 10000008 */  b          .L8002ECB8
/* 2F898 8002EC98 00000000 */   nop
.L8002EC9C:
/* 2F89C 8002EC9C 10000006 */  b          .L8002ECB8
/* 2F8A0 8002ECA0 A3B900EC */   sb        $t9, 0xec($sp)
.L8002ECA4:
/* 2F8A4 8002ECA4 10000004 */  b          .L8002ECB8
/* 2F8A8 8002ECA8 A3AD00ED */   sb        $t5, 0xed($sp)
.L8002ECAC:
/* 2F8AC 8002ECAC 10000002 */  b          .L8002ECB8
/* 2F8B0 8002ECB0 A3AE00EE */   sb        $t6, 0xee($sp)
.L8002ECB4:
/* 2F8B4 8002ECB4 A3AF00EF */  sb         $t7, 0xef($sp)
.L8002ECB8:
/* 2F8B8 8002ECB8 12400002 */  beqz       $s2, .L8002ECC4
/* 2F8BC 8002ECBC 3C188006 */   lui       $t8, %hi(D_8005FB80)
/* 2F8C0 8002ECC0 25290001 */  addiu      $t1, $t1, 1
.L8002ECC4:
/* 2F8C4 8002ECC4 2718FB80 */  addiu      $t8, $t8, %lo(D_8005FB80)
/* 2F8C8 8002ECC8 27B900EC */  addiu      $t9, $sp, 0xec
/* 2F8CC 8002ECCC AFB90054 */  sw         $t9, 0x54($sp)
/* 2F8D0 8002ECD0 AFB80058 */  sw         $t8, 0x58($sp)
/* 2F8D4 8002ECD4 AFA900D8 */  sw         $t1, 0xd8($sp)
.L8002ECD8:
/* 2F8D8 8002ECD8 3C0CE700 */  lui        $t4, 0xe700
/* 2F8DC 8002ECDC 8EC20000 */  lw         $v0, ($s6)
/* 2F8E0 8002ECE0 3C0FBA00 */  lui        $t7, 0xba00
/* 2F8E4 8002ECE4 244D0008 */  addiu      $t5, $v0, 8
/* 2F8E8 8002ECE8 AECD0000 */  sw         $t5, ($s6)
/* 2F8EC 8002ECEC AC400004 */  sw         $zero, 4($v0)
/* 2F8F0 8002ECF0 AC4C0000 */  sw         $t4, ($v0)
/* 2F8F4 8002ECF4 8EC20000 */  lw         $v0, ($s6)
/* 2F8F8 8002ECF8 35EF0E02 */  ori        $t7, $t7, 0xe02
/* 2F8FC 8002ECFC 34188000 */  ori        $t8, $zero, 0x8000
/* 2F900 8002ED00 244E0008 */  addiu      $t6, $v0, 8
/* 2F904 8002ED04 AECE0000 */  sw         $t6, ($s6)
/* 2F908 8002ED08 AC580004 */  sw         $t8, 4($v0)
/* 2F90C 8002ED0C AC4F0000 */  sw         $t7, ($v0)
/* 2F910 8002ED10 8EC20000 */  lw         $v0, ($s6)
/* 2F914 8002ED14 24590008 */  addiu      $t9, $v0, 8
/* 2F918 8002ED18 AED90000 */  sw         $t9, ($s6)
/* 2F91C 8002ED1C AC400004 */  sw         $zero, 4($v0)
/* 2F920 8002ED20 AC4C0000 */  sw         $t4, ($v0)
/* 2F924 8002ED24 8EC20000 */  lw         $v0, ($s6)
/* 2F928 8002ED28 3C0EFD10 */  lui        $t6, 0xfd10
/* 2F92C 8002ED2C 244D0008 */  addiu      $t5, $v0, 8
/* 2F930 8002ED30 AECD0000 */  sw         $t5, ($s6)
/* 2F934 8002ED34 AC4E0000 */  sw         $t6, ($v0)
/* 2F938 8002ED38 8FAF0058 */  lw         $t7, 0x58($sp)
/* 2F93C 8002ED3C 3C0EF500 */  lui        $t6, 0xf500
/* 2F940 8002ED40 AC4F0004 */  sw         $t7, 4($v0)
/* 2F944 8002ED44 8EC20000 */  lw         $v0, ($s6)
/* 2F948 8002ED48 3C19E800 */  lui        $t9, 0xe800
/* 2F94C 8002ED4C 24580008 */  addiu      $t8, $v0, 8
/* 2F950 8002ED50 AED80000 */  sw         $t8, ($s6)
/* 2F954 8002ED54 AC400004 */  sw         $zero, 4($v0)
/* 2F958 8002ED58 AC590000 */  sw         $t9, ($v0)
/* 2F95C 8002ED5C 8EC20000 */  lw         $v0, ($s6)
/* 2F960 8002ED60 35CE0100 */  ori        $t6, $t6, 0x100
/* 2F964 8002ED64 3C0F0700 */  lui        $t7, 0x700
/* 2F968 8002ED68 244D0008 */  addiu      $t5, $v0, 8
/* 2F96C 8002ED6C AECD0000 */  sw         $t5, ($s6)
/* 2F970 8002ED70 AC4F0004 */  sw         $t7, 4($v0)
/* 2F974 8002ED74 AC4E0000 */  sw         $t6, ($v0)
/* 2F978 8002ED78 8EC20000 */  lw         $v0, ($s6)
/* 2F97C 8002ED7C 3C19E600 */  lui        $t9, 0xe600
/* 2F980 8002ED80 3C0EF000 */  lui        $t6, 0xf000
/* 2F984 8002ED84 24580008 */  addiu      $t8, $v0, 8
/* 2F988 8002ED88 AED80000 */  sw         $t8, ($s6)
/* 2F98C 8002ED8C AC400004 */  sw         $zero, 4($v0)
/* 2F990 8002ED90 AC590000 */  sw         $t9, ($v0)
/* 2F994 8002ED94 8EC20000 */  lw         $v0, ($s6)
/* 2F998 8002ED98 3C0F073F */  lui        $t7, 0x73f
/* 2F99C 8002ED9C 35EFC000 */  ori        $t7, $t7, 0xc000
/* 2F9A0 8002EDA0 244D0008 */  addiu      $t5, $v0, 8
/* 2F9A4 8002EDA4 AECD0000 */  sw         $t5, ($s6)
/* 2F9A8 8002EDA8 AC4F0004 */  sw         $t7, 4($v0)
/* 2F9AC 8002EDAC AC4E0000 */  sw         $t6, ($v0)
/* 2F9B0 8002EDB0 8EC20000 */  lw         $v0, ($s6)
/* 2F9B4 8002EDB4 24580008 */  addiu      $t8, $v0, 8
/* 2F9B8 8002EDB8 AED80000 */  sw         $t8, ($s6)
/* 2F9BC 8002EDBC AC400004 */  sw         $zero, 4($v0)
/* 2F9C0 8002EDC0 AC4C0000 */  sw         $t4, ($v0)
/* 2F9C4 8002EDC4 8FB90054 */  lw         $t9, 0x54($sp)
/* 2F9C8 8002EDC8 833E0000 */  lb         $fp, ($t9)
/* 2F9CC 8002EDCC 07C00319 */  bltz       $fp, .L8002FA34
/* 2F9D0 8002EDD0 001E6900 */   sll       $t5, $fp, 4
/* 2F9D4 8002EDD4 01BE6821 */  addu       $t5, $t5, $fp
/* 2F9D8 8002EDD8 000D6880 */  sll        $t5, $t5, 2
/* 2F9DC 8002EDDC 01BE6821 */  addu       $t5, $t5, $fp
/* 2F9E0 8002EDE0 000D68C0 */  sll        $t5, $t5, 3
/* 2F9E4 8002EDE4 01BE6823 */  subu       $t5, $t5, $fp
/* 2F9E8 8002EDE8 3C0E8009 */  lui        $t6, %hi(textboxState)
/* 2F9EC 8002EDEC 25CE05E0 */  addiu      $t6, $t6, %lo(textboxState)
/* 2F9F0 8002EDF0 000D6880 */  sll        $t5, $t5, 2
/* 2F9F4 8002EDF4 01AE9821 */  addu       $s3, $t5, $t6
/* 2F9F8 8002EDF8 8E620000 */  lw         $v0, ($s3)
/* 2F9FC 8002EDFC 000278C0 */  sll        $t7, $v0, 3
/* 2FA00 8002EE00 05E3000F */  bgezl      $t7, .L8002EE40
/* 2FA04 8002EE04 000279C0 */   sll       $t7, $v0, 7
/* 2FA08 8002EE08 0C00BECC */  jal        func_8002FB30
/* 2FA0C 8002EE0C 03C02025 */   or        $a0, $fp, $zero
/* 2FA10 8002EE10 04430309 */  bgezl      $v0, .L8002FA38
/* 2FA14 8002EE14 8FAD0054 */   lw        $t5, 0x54($sp)
/* 2FA18 8002EE18 8E780000 */  lw         $t8, ($s3)
/* 2FA1C 8002EE1C 3C01EFFF */  lui        $at, 0xefff
/* 2FA20 8002EE20 3421FFFF */  ori        $at, $at, 0xffff
/* 2FA24 8002EE24 0301C824 */  and        $t9, $t8, $at
/* 2FA28 8002EE28 3C01A800 */  lui        $at, 0xa800
/* 2FA2C 8002EE2C AE790000 */  sw         $t9, ($s3)
/* 2FA30 8002EE30 03217025 */  or         $t6, $t9, $at
/* 2FA34 8002EE34 100002FF */  b          .L8002FA34
/* 2FA38 8002EE38 AE6E0000 */   sw        $t6, ($s3)
/* 2FA3C 8002EE3C 000279C0 */  sll        $t7, $v0, 7
.L8002EE40:
/* 2FA40 8002EE40 05E1003F */  bgez       $t7, .L8002EF40
/* 2FA44 8002EE44 0002C080 */   sll       $t8, $v0, 2
/* 2FA48 8002EE48 0C00BECC */  jal        func_8002FB30
/* 2FA4C 8002EE4C 03C02025 */   or        $a0, $fp, $zero
/* 2FA50 8002EE50 044102F8 */  bgez       $v0, .L8002FA34
/* 2FA54 8002EE54 00008825 */   or        $s1, $zero, $zero
/* 2FA58 8002EE58 3C108009 */  lui        $s0, %hi(textboxState)
/* 2FA5C 8002EE5C AE600000 */  sw         $zero, ($s3)
/* 2FA60 8002EE60 261005E0 */  addiu      $s0, $s0, %lo(textboxState)
.L8002EE64:
/* 2FA64 8002EE64 8E020000 */  lw         $v0, ($s0)
/* 2FA68 8002EE68 2401FFF8 */  addiu      $at, $zero, -8
/* 2FA6C 8002EE6C 30580007 */  andi       $t8, $v0, 7
/* 2FA70 8002EE70 1300001E */  beqz       $t8, .L8002EEEC
/* 2FA74 8002EE74 27040001 */   addiu     $a0, $t8, 1
/* 2FA78 8002EE78 00416824 */  and        $t5, $v0, $at
/* 2FA7C 8002EE7C 309900FF */  andi       $t9, $a0, 0xff
/* 2FA80 8002EE80 AE0D0000 */  sw         $t5, ($s0)
/* 2FA84 8002EE84 01B97825 */  or         $t7, $t5, $t9
/* 2FA88 8002EE88 2B210004 */  slti       $at, $t9, 4
/* 2FA8C 8002EE8C 14200017 */  bnez       $at, .L8002EEEC
/* 2FA90 8002EE90 AE0F0000 */   sw        $t7, ($s0)
/* 2FA94 8002EE94 3C01FFBF */  lui        $at, 0xffbf
/* 2FA98 8002EE98 3421FFFF */  ori        $at, $at, 0xffff
/* 2FA9C 8002EE9C 01E1C824 */  and        $t9, $t7, $at
/* 2FAA0 8002EEA0 3C018000 */  lui        $at, 0x8000
/* 2FAA4 8002EEA4 AE190000 */  sw         $t9, ($s0)
/* 2FAA8 8002EEA8 03217025 */  or         $t6, $t9, $at
/* 2FAAC 8002EEAC AE0E0000 */  sw         $t6, ($s0)
/* 2FAB0 8002EEB0 8E6F0000 */  lw         $t7, ($s3)
/* 2FAB4 8002EEB4 02202025 */  or         $a0, $s1, $zero
/* 2FAB8 8002EEB8 000FC300 */  sll        $t8, $t7, 0xc
/* 2FABC 8002EEBC 0703000C */  bgezl      $t8, .L8002EEF0
/* 2FAC0 8002EEC0 26310001 */   addiu     $s1, $s1, 1
/* 2FAC4 8002EEC4 0C00B98A */  jal        func_8002E628
/* 2FAC8 8002EEC8 24050001 */   addiu     $a1, $zero, 1
/* 2FACC 8002EECC 8E190000 */  lw         $t9, ($s0)
/* 2FAD0 8002EED0 3C010100 */  lui        $at, 0x100
/* 2FAD4 8002EED4 03216825 */  or         $t5, $t9, $at
/* 2FAD8 8002EED8 3C017FFF */  lui        $at, 0x7fff
/* 2FADC 8002EEDC 3421FFFF */  ori        $at, $at, 0xffff
/* 2FAE0 8002EEE0 AE0D0000 */  sw         $t5, ($s0)
/* 2FAE4 8002EEE4 01A17824 */  and        $t7, $t5, $at
/* 2FAE8 8002EEE8 AE0F0000 */  sw         $t7, ($s0)
.L8002EEEC:
/* 2FAEC 8002EEEC 26310001 */  addiu      $s1, $s1, 1
.L8002EEF0:
/* 2FAF0 8002EEF0 24010004 */  addiu      $at, $zero, 4
/* 2FAF4 8002EEF4 1621FFDB */  bne        $s1, $at, .L8002EE64
/* 2FAF8 8002EEF8 2610089C */   addiu     $s0, $s0, 0x89c
/* 2FAFC 8002EEFC 03C02025 */  or         $a0, $fp, $zero
/* 2FB00 8002EF00 0C00B98A */  jal        func_8002E628
/* 2FB04 8002EF04 00002825 */   or        $a1, $zero, $zero
/* 2FB08 8002EF08 3C028009 */  lui        $v0, %hi(talkingFlag)
/* 2FB0C 8002EF0C 244205C0 */  addiu      $v0, $v0, %lo(talkingFlag)
/* 2FB10 8002EF10 8C580000 */  lw         $t8, ($v0)
/* 2FB14 8002EF14 8FAD00D8 */  lw         $t5, 0xd8($sp)
/* 2FB18 8002EF18 2719FFFF */  addiu      $t9, $t8, -1
/* 2FB1C 8002EF1C 1DA002C5 */  bgtz       $t5, .L8002FA34
/* 2FB20 8002EF20 AC590000 */   sw        $t9, ($v0)
/* 2FB24 8002EF24 3C028008 */  lui        $v0, %hi(HUDState)
/* 2FB28 8002EF28 2442B2E4 */  addiu      $v0, $v0, %lo(HUDState)
/* 2FB2C 8002EF2C 8C4E0000 */  lw         $t6, ($v0)
/* 2FB30 8002EF30 2401FFFD */  addiu      $at, $zero, -3
/* 2FB34 8002EF34 01C17824 */  and        $t7, $t6, $at
/* 2FB38 8002EF38 100002BE */  b          .L8002FA34
/* 2FB3C 8002EF3C AC4F0000 */   sw        $t7, ($v0)
.L8002EF40:
/* 2FB40 8002EF40 070302B8 */  bgezl      $t8, .L8002FA24
/* 2FB44 8002EF44 8FB900E0 */   lw        $t9, 0xe0($sp)
/* 2FB48 8002EF48 0C00BFA9 */  jal        func_8002FEA4
/* 2FB4C 8002EF4C 03C02025 */   or        $a0, $fp, $zero
/* 2FB50 8002EF50 8E620000 */  lw         $v0, ($s3)
/* 2FB54 8002EF54 0002C840 */  sll        $t9, $v0, 1
/* 2FB58 8002EF58 072100EF */  bgez       $t9, .L8002F318
/* 2FB5C 8002EF5C 0002C000 */   sll       $t8, $v0, 0
/* 2FB60 8002EF60 8EC20000 */  lw         $v0, ($s6)
/* 2FB64 8002EF64 3C0EE700 */  lui        $t6, 0xe700
/* 2FB68 8002EF68 244D0008 */  addiu      $t5, $v0, 8
/* 2FB6C 8002EF6C AECD0000 */  sw         $t5, ($s6)
/* 2FB70 8002EF70 AC400004 */  sw         $zero, 4($v0)
/* 2FB74 8002EF74 AC4E0000 */  sw         $t6, ($v0)
/* 2FB78 8002EF78 8EC20000 */  lw         $v0, ($s6)
/* 2FB7C 8002EF7C 3C18FB00 */  lui        $t8, 0xfb00
/* 2FB80 8002EF80 2419FFCC */  addiu      $t9, $zero, -0x34
/* 2FB84 8002EF84 244F0008 */  addiu      $t7, $v0, 8
/* 2FB88 8002EF88 AECF0000 */  sw         $t7, ($s6)
/* 2FB8C 8002EF8C AC590004 */  sw         $t9, 4($v0)
/* 2FB90 8002EF90 AC580000 */  sw         $t8, ($v0)
/* 2FB94 8002EF94 86630038 */  lh         $v1, 0x38($s3)
/* 2FB98 8002EF98 86740004 */  lh         $s4, 4($s3)
/* 2FB9C 8002EF9C 86720006 */  lh         $s2, 6($s3)
/* 2FBA0 8002EFA0 00008025 */  or         $s0, $zero, $zero
/* 2FBA4 8002EFA4 26940006 */  addiu      $s4, $s4, 6
/* 2FBA8 8002EFA8 18600016 */  blez       $v1, .L8002F004
/* 2FBAC 8002EFAC 26520006 */   addiu     $s2, $s2, 6
/* 2FBB0 8002EFB0 001E6900 */  sll        $t5, $fp, 4
/* 2FBB4 8002EFB4 01BE6821 */  addu       $t5, $t5, $fp
/* 2FBB8 8002EFB8 000D6880 */  sll        $t5, $t5, 2
/* 2FBBC 8002EFBC 01BE6821 */  addu       $t5, $t5, $fp
/* 2FBC0 8002EFC0 000D68C0 */  sll        $t5, $t5, 3
/* 2FBC4 8002EFC4 01BE6823 */  subu       $t5, $t5, $fp
/* 2FBC8 8002EFC8 000D6880 */  sll        $t5, $t5, 2
/* 2FBCC 8002EFCC 3C0F8009 */  lui        $t7, %hi(textboxState)
/* 2FBD0 8002EFD0 25EF05E0 */  addiu      $t7, $t7, %lo(textboxState)
/* 2FBD4 8002EFD4 25AE003C */  addiu      $t6, $t5, 0x3c
/* 2FBD8 8002EFD8 01CF8821 */  addu       $s1, $t6, $t7
.L8002EFDC:
/* 2FBDC 8002EFDC 02802025 */  or         $a0, $s4, $zero
/* 2FBE0 8002EFE0 02402825 */  or         $a1, $s2, $zero
/* 2FBE4 8002EFE4 0C00C3A8 */  jal        printTextToScreen
/* 2FBE8 8002EFE8 02203025 */   or        $a2, $s1, $zero
/* 2FBEC 8002EFEC 86630038 */  lh         $v1, 0x38($s3)
/* 2FBF0 8002EFF0 26100001 */  addiu      $s0, $s0, 1
/* 2FBF4 8002EFF4 26310018 */  addiu      $s1, $s1, 0x18
/* 2FBF8 8002EFF8 0203082A */  slt        $at, $s0, $v1
/* 2FBFC 8002EFFC 1420FFF7 */  bnez       $at, .L8002EFDC
/* 2FC00 8002F000 2652000A */   addiu     $s2, $s2, 0xa
.L8002F004:
/* 2FC04 8002F004 8E780000 */  lw         $t8, ($s3)
/* 2FC08 8002F008 3C0D8009 */  lui        $t5, %hi(ButtonPressedFrame)
/* 2FC0C 8002F00C 0018C800 */  sll        $t9, $t8, 0
/* 2FC10 8002F010 07230284 */  bgezl      $t9, .L8002FA24
/* 2FC14 8002F014 8FB900E0 */   lw        $t9, 0xe0($sp)
/* 2FC18 8002F018 95AD2876 */  lhu        $t5, %lo(ButtonPressedFrame)($t5)
/* 2FC1C 8002F01C 00003825 */  or         $a3, $zero, $zero
/* 2FC20 8002F020 31AEA000 */  andi       $t6, $t5, 0xa000
/* 2FC24 8002F024 11C0001A */  beqz       $t6, .L8002F090
/* 2FC28 8002F028 00002025 */   or        $a0, $zero, $zero
/* 2FC2C 8002F02C 24050001 */  addiu      $a1, $zero, 1
/* 2FC30 8002F030 32A600FF */  andi       $a2, $s5, 0xff
/* 2FC34 8002F034 0C009A35 */  jal        func_800268D4
/* 2FC38 8002F038 AFA00100 */   sw        $zero, 0x100($sp)
/* 2FC3C 8002F03C 8E6F0000 */  lw         $t7, ($s3)
/* 2FC40 8002F040 8FA70100 */  lw         $a3, 0x100($sp)
/* 2FC44 8002F044 03C02025 */  or         $a0, $fp, $zero
/* 2FC48 8002F048 000FC300 */  sll        $t8, $t7, 0xc
/* 2FC4C 8002F04C 07010005 */  bgez       $t8, .L8002F064
/* 2FC50 8002F050 24050001 */   addiu     $a1, $zero, 1
/* 2FC54 8002F054 82790015 */  lb         $t9, 0x15($s3)
/* 2FC58 8002F058 3C018009 */  lui        $at, %hi(D_8008FD28)
/* 2FC5C 8002F05C 10000004 */  b          .L8002F070
/* 2FC60 8002F060 A039FD28 */   sb        $t9, %lo(D_8008FD28)($at)
.L8002F064:
/* 2FC64 8002F064 826D0015 */  lb         $t5, 0x15($s3)
/* 2FC68 8002F068 3C018009 */  lui        $at, %hi(D_800905C4)
/* 2FC6C 8002F06C AC2D05C4 */  sw         $t5, %lo(D_800905C4)($at)
.L8002F070:
/* 2FC70 8002F070 0C00B98A */  jal        func_8002E628
/* 2FC74 8002F074 AFA70100 */   sw        $a3, 0x100($sp)
/* 2FC78 8002F078 8E6E0000 */  lw         $t6, ($s3)
/* 2FC7C 8002F07C 3C010100 */  lui        $at, 0x100
/* 2FC80 8002F080 8FA70100 */  lw         $a3, 0x100($sp)
/* 2FC84 8002F084 01C17825 */  or         $t7, $t6, $at
/* 2FC88 8002F088 10000032 */  b          .L8002F154
/* 2FC8C 8002F08C AE6F0000 */   sw        $t7, ($s3)
.L8002F090:
/* 2FC90 8002F090 3C028009 */  lui        $v0, %hi(JoystickY)
/* 2FC94 8002F094 80422872 */  lb         $v0, %lo(JoystickY)($v0)
/* 2FC98 8002F098 28410015 */  slti       $at, $v0, 0x15
/* 2FC9C 8002F09C 54200011 */  bnel       $at, $zero, .L8002F0E4
/* 2FCA0 8002F0A0 2841FFEC */   slti      $at, $v0, -0x14
/* 2FCA4 8002F0A4 92780016 */  lbu        $t8, 0x16($s3)
/* 2FCA8 8002F0A8 240E0001 */  addiu      $t6, $zero, 1
/* 2FCAC 8002F0AC 00002025 */  or         $a0, $zero, $zero
/* 2FCB0 8002F0B0 1700001F */  bnez       $t8, .L8002F130
/* 2FCB4 8002F0B4 00002825 */   or        $a1, $zero, $zero
/* 2FCB8 8002F0B8 82790015 */  lb         $t9, 0x15($s3)
/* 2FCBC 8002F0BC A26E0016 */  sb         $t6, 0x16($s3)
/* 2FCC0 8002F0C0 32A600FF */  andi       $a2, $s5, 0xff
/* 2FCC4 8002F0C4 272DFFFF */  addiu      $t5, $t9, -1
/* 2FCC8 8002F0C8 A26D0015 */  sb         $t5, 0x15($s3)
/* 2FCCC 8002F0CC 0C009A35 */  jal        func_800268D4
/* 2FCD0 8002F0D0 AFA70100 */   sw        $a3, 0x100($sp)
/* 2FCD4 8002F0D4 8FA70100 */  lw         $a3, 0x100($sp)
/* 2FCD8 8002F0D8 10000015 */  b          .L8002F130
/* 2FCDC 8002F0DC 86630038 */   lh        $v1, 0x38($s3)
/* 2FCE0 8002F0E0 2841FFEC */  slti       $at, $v0, -0x14
.L8002F0E4:
/* 2FCE4 8002F0E4 50200011 */  beql       $at, $zero, .L8002F12C
/* 2FCE8 8002F0E8 A2600016 */   sb        $zero, 0x16($s3)
/* 2FCEC 8002F0EC 926F0016 */  lbu        $t7, 0x16($s3)
/* 2FCF0 8002F0F0 240D0001 */  addiu      $t5, $zero, 1
/* 2FCF4 8002F0F4 00002025 */  or         $a0, $zero, $zero
/* 2FCF8 8002F0F8 15E0000D */  bnez       $t7, .L8002F130
/* 2FCFC 8002F0FC 00002825 */   or        $a1, $zero, $zero
/* 2FD00 8002F100 82780015 */  lb         $t8, 0x15($s3)
/* 2FD04 8002F104 A26D0016 */  sb         $t5, 0x16($s3)
/* 2FD08 8002F108 32A600FF */  andi       $a2, $s5, 0xff
/* 2FD0C 8002F10C 27190001 */  addiu      $t9, $t8, 1
/* 2FD10 8002F110 A2790015 */  sb         $t9, 0x15($s3)
/* 2FD14 8002F114 0C009A35 */  jal        func_800268D4
/* 2FD18 8002F118 AFA70100 */   sw        $a3, 0x100($sp)
/* 2FD1C 8002F11C 8FA70100 */  lw         $a3, 0x100($sp)
/* 2FD20 8002F120 10000003 */  b          .L8002F130
/* 2FD24 8002F124 86630038 */   lh        $v1, 0x38($s3)
/* 2FD28 8002F128 A2600016 */  sb         $zero, 0x16($s3)
.L8002F12C:
/* 2FD2C 8002F12C 86630038 */  lh         $v1, 0x38($s3)
.L8002F130:
/* 2FD30 8002F130 826C0015 */  lb         $t4, 0x15($s3)
/* 2FD34 8002F134 0183082A */  slt        $at, $t4, $v1
/* 2FD38 8002F138 14200003 */  bnez       $at, .L8002F148
/* 2FD3C 8002F13C 00000000 */   nop
/* 2FD40 8002F140 10000004 */  b          .L8002F154
/* 2FD44 8002F144 A2600015 */   sb        $zero, 0x15($s3)
.L8002F148:
/* 2FD48 8002F148 05810002 */  bgez       $t4, .L8002F154
/* 2FD4C 8002F14C 246EFFFF */   addiu     $t6, $v1, -1
/* 2FD50 8002F150 A26E0015 */  sb         $t6, 0x15($s3)
.L8002F154:
/* 2FD54 8002F154 8EC20000 */  lw         $v0, ($s6)
/* 2FD58 8002F158 3C18E700 */  lui        $t8, 0xe700
/* 2FD5C 8002F15C 244F0008 */  addiu      $t7, $v0, 8
/* 2FD60 8002F160 AECF0000 */  sw         $t7, ($s6)
/* 2FD64 8002F164 AC400004 */  sw         $zero, 4($v0)
/* 2FD68 8002F168 AC580000 */  sw         $t8, ($v0)
/* 2FD6C 8002F16C 8EC20000 */  lw         $v0, ($s6)
/* 2FD70 8002F170 3C0DFB00 */  lui        $t5, 0xfb00
/* 2FD74 8002F174 240EFFFF */  addiu      $t6, $zero, -1
/* 2FD78 8002F178 24590008 */  addiu      $t9, $v0, 8
/* 2FD7C 8002F17C AED90000 */  sw         $t9, ($s6)
/* 2FD80 8002F180 AC4E0004 */  sw         $t6, 4($v0)
/* 2FD84 8002F184 AC4D0000 */  sw         $t5, ($v0)
/* 2FD88 8002F188 826C0015 */  lb         $t4, 0x15($s3)
/* 2FD8C 8002F18C 24040002 */  addiu      $a0, $zero, 2
/* 2FD90 8002F190 000C7880 */  sll        $t7, $t4, 2
/* 2FD94 8002F194 01EC7823 */  subu       $t7, $t7, $t4
/* 2FD98 8002F198 000F78C0 */  sll        $t7, $t7, 3
/* 2FD9C 8002F19C 026FC021 */  addu       $t8, $s3, $t7
/* 2FDA0 8002F1A0 9319003C */  lbu        $t9, 0x3c($t8)
/* 2FDA4 8002F1A4 12F9000D */  beq        $s7, $t9, .L8002F1DC
/* 2FDA8 8002F1A8 000C6880 */   sll       $t5, $t4, 2
/* 2FDAC 8002F1AC 01AC6823 */  subu       $t5, $t5, $t4
/* 2FDB0 8002F1B0 000D68C0 */  sll        $t5, $t5, 3
/* 2FDB4 8002F1B4 026D1021 */  addu       $v0, $s3, $t5
/* 2FDB8 8002F1B8 9043003C */  lbu        $v1, 0x3c($v0)
/* 2FDBC 8002F1BC 28610080 */  slti       $at, $v1, 0x80
.L8002F1C0:
/* 2FDC0 8002F1C0 50200003 */  beql       $at, $zero, .L8002F1D0
/* 2FDC4 8002F1C4 9043003D */   lbu       $v1, 0x3d($v0)
/* 2FDC8 8002F1C8 24E70001 */  addiu      $a3, $a3, 1
/* 2FDCC 8002F1CC 9043003D */  lbu        $v1, 0x3d($v0)
.L8002F1D0:
/* 2FDD0 8002F1D0 24420001 */  addiu      $v0, $v0, 1
/* 2FDD4 8002F1D4 56E3FFFA */  bnel       $s7, $v1, .L8002F1C0
/* 2FDD8 8002F1D8 28610080 */   slti      $at, $v1, 0x80
.L8002F1DC:
/* 2FDDC 8002F1DC 866E0004 */  lh         $t6, 4($s3)
/* 2FDE0 8002F1E0 86780006 */  lh         $t8, 6($s3)
/* 2FDE4 8002F1E4 000CC880 */  sll        $t9, $t4, 2
/* 2FDE8 8002F1E8 032CC821 */  addu       $t9, $t9, $t4
/* 2FDEC 8002F1EC 000778C0 */  sll        $t7, $a3, 3
/* 2FDF0 8002F1F0 0019C840 */  sll        $t9, $t9, 1
/* 2FDF4 8002F1F4 01CFA021 */  addu       $s4, $t6, $t7
/* 2FDF8 8002F1F8 03199021 */  addu       $s2, $t8, $t9
/* 2FDFC 8002F1FC 2694000A */  addiu      $s4, $s4, 0xa
/* 2FE00 8002F200 26520004 */  addiu      $s2, $s2, 4
/* 2FE04 8002F204 8EC20000 */  lw         $v0, ($s6)
/* 2FE08 8002F208 3C0EE700 */  lui        $t6, 0xe700
/* 2FE0C 8002F20C 3C18BA00 */  lui        $t8, 0xba00
/* 2FE10 8002F210 244D0008 */  addiu      $t5, $v0, 8
/* 2FE14 8002F214 AECD0000 */  sw         $t5, ($s6)
/* 2FE18 8002F218 AC400004 */  sw         $zero, 4($v0)
/* 2FE1C 8002F21C AC4E0000 */  sw         $t6, ($v0)
/* 2FE20 8002F220 8EC20000 */  lw         $v0, ($s6)
/* 2FE24 8002F224 37180E02 */  ori        $t8, $t8, 0xe02
/* 2FE28 8002F228 34198000 */  ori        $t9, $zero, 0x8000
/* 2FE2C 8002F22C 244F0008 */  addiu      $t7, $v0, 8
/* 2FE30 8002F230 AECF0000 */  sw         $t7, ($s6)
/* 2FE34 8002F234 AC590004 */  sw         $t9, 4($v0)
/* 2FE38 8002F238 AC580000 */  sw         $t8, ($v0)
/* 2FE3C 8002F23C 8EC20000 */  lw         $v0, ($s6)
/* 2FE40 8002F240 3C0EE700 */  lui        $t6, 0xe700
/* 2FE44 8002F244 02802825 */  or         $a1, $s4, $zero
/* 2FE48 8002F248 244D0008 */  addiu      $t5, $v0, 8
/* 2FE4C 8002F24C AECD0000 */  sw         $t5, ($s6)
/* 2FE50 8002F250 AC400004 */  sw         $zero, 4($v0)
/* 2FE54 8002F254 AC4E0000 */  sw         $t6, ($v0)
/* 2FE58 8002F258 8EC20000 */  lw         $v0, ($s6)
/* 2FE5C 8002F25C 3C18FD10 */  lui        $t8, 0xfd10
/* 2FE60 8002F260 02403025 */  or         $a2, $s2, $zero
/* 2FE64 8002F264 244F0008 */  addiu      $t7, $v0, 8
/* 2FE68 8002F268 AECF0000 */  sw         $t7, ($s6)
/* 2FE6C 8002F26C AC580000 */  sw         $t8, ($v0)
/* 2FE70 8002F270 8FB90058 */  lw         $t9, 0x58($sp)
/* 2FE74 8002F274 3C18F500 */  lui        $t8, 0xf500
/* 2FE78 8002F278 2407000C */  addiu      $a3, $zero, 0xc
/* 2FE7C 8002F27C AC590004 */  sw         $t9, 4($v0)
/* 2FE80 8002F280 8EC20000 */  lw         $v0, ($s6)
/* 2FE84 8002F284 3C0EE800 */  lui        $t6, 0xe800
/* 2FE88 8002F288 244D0008 */  addiu      $t5, $v0, 8
/* 2FE8C 8002F28C AECD0000 */  sw         $t5, ($s6)
/* 2FE90 8002F290 AC400004 */  sw         $zero, 4($v0)
/* 2FE94 8002F294 AC4E0000 */  sw         $t6, ($v0)
/* 2FE98 8002F298 8EC20000 */  lw         $v0, ($s6)
/* 2FE9C 8002F29C 37180100 */  ori        $t8, $t8, 0x100
/* 2FEA0 8002F2A0 3C190700 */  lui        $t9, 0x700
/* 2FEA4 8002F2A4 244F0008 */  addiu      $t7, $v0, 8
/* 2FEA8 8002F2A8 AECF0000 */  sw         $t7, ($s6)
/* 2FEAC 8002F2AC AC590004 */  sw         $t9, 4($v0)
/* 2FEB0 8002F2B0 AC580000 */  sw         $t8, ($v0)
/* 2FEB4 8002F2B4 8EC20000 */  lw         $v0, ($s6)
/* 2FEB8 8002F2B8 3C0EE600 */  lui        $t6, 0xe600
/* 2FEBC 8002F2BC 3C18F000 */  lui        $t8, 0xf000
/* 2FEC0 8002F2C0 244D0008 */  addiu      $t5, $v0, 8
/* 2FEC4 8002F2C4 AECD0000 */  sw         $t5, ($s6)
/* 2FEC8 8002F2C8 AC400004 */  sw         $zero, 4($v0)
/* 2FECC 8002F2CC AC4E0000 */  sw         $t6, ($v0)
/* 2FED0 8002F2D0 8EC20000 */  lw         $v0, ($s6)
/* 2FED4 8002F2D4 3C19073F */  lui        $t9, 0x73f
/* 2FED8 8002F2D8 3739C000 */  ori        $t9, $t9, 0xc000
/* 2FEDC 8002F2DC 244F0008 */  addiu      $t7, $v0, 8
/* 2FEE0 8002F2E0 AECF0000 */  sw         $t7, ($s6)
/* 2FEE4 8002F2E4 AC590004 */  sw         $t9, 4($v0)
/* 2FEE8 8002F2E8 AC580000 */  sw         $t8, ($v0)
/* 2FEEC 8002F2EC 8EC20000 */  lw         $v0, ($s6)
/* 2FEF0 8002F2F0 3C0EE700 */  lui        $t6, 0xe700
/* 2FEF4 8002F2F4 240F000C */  addiu      $t7, $zero, 0xc
/* 2FEF8 8002F2F8 244D0008 */  addiu      $t5, $v0, 8
/* 2FEFC 8002F2FC AECD0000 */  sw         $t5, ($s6)
/* 2FF00 8002F300 AC400004 */  sw         $zero, 4($v0)
/* 2FF04 8002F304 AC4E0000 */  sw         $t6, ($v0)
/* 2FF08 8002F308 0C00C1F6 */  jal        func_800307D8
/* 2FF0C 8002F30C AFAF0010 */   sw        $t7, 0x10($sp)
/* 2FF10 8002F310 100001C4 */  b          .L8002FA24
/* 2FF14 8002F314 8FB900E0 */   lw        $t9, 0xe0($sp)
.L8002F318:
/* 2FF18 8002F318 070101BF */  bgez       $t8, .L8002FA18
/* 2FF1C 8002F31C 0002C900 */   sll       $t9, $v0, 4
/* 2FF20 8002F320 0721019A */  bgez       $t9, .L8002F98C
/* 2FF24 8002F324 00026980 */   sll       $t5, $v0, 6
/* 2FF28 8002F328 00026940 */  sll        $t5, $v0, 5
/* 2FF2C 8002F32C 05A10064 */  bgez       $t5, .L8002F4C0
/* 2FF30 8002F330 3C068006 */   lui       $a2, 0x8006
/* 2FF34 8002F334 3C0F8009 */  lui        $t7, %hi(ButtonPressedFrame)
/* 2FF38 8002F338 95EF2876 */  lhu        $t7, %lo(ButtonPressedFrame)($t7)
/* 2FF3C 8002F33C 240E0001 */  addiu      $t6, $zero, 1
/* 2FF40 8002F340 AFAE00E0 */  sw         $t6, 0xe0($sp)
/* 2FF44 8002F344 31F8A000 */  andi       $t8, $t7, 0xa000
/* 2FF48 8002F348 1300018A */  beqz       $t8, .L8002F974
/* 2FF4C 8002F34C 2405FFFF */   addiu     $a1, $zero, -1
/* 2FF50 8002F350 001E7100 */  sll        $t6, $fp, 4
/* 2FF54 8002F354 01DE7021 */  addu       $t6, $t6, $fp
/* 2FF58 8002F358 000E7080 */  sll        $t6, $t6, 2
/* 2FF5C 8002F35C 96710012 */  lhu        $s1, 0x12($s3)
/* 2FF60 8002F360 01DE7021 */  addu       $t6, $t6, $fp
/* 2FF64 8002F364 000E70C0 */  sll        $t6, $t6, 3
/* 2FF68 8002F368 92790014 */  lbu        $t9, 0x14($s3)
/* 2FF6C 8002F36C 01DE7023 */  subu       $t6, $t6, $fp
/* 2FF70 8002F370 3C0F8009 */  lui        $t7, %hi(textboxState)
/* 2FF74 8002F374 25EF05E0 */  addiu      $t7, $t7, %lo(textboxState)
/* 2FF78 8002F378 000E7080 */  sll        $t6, $t6, 2
/* 2FF7C 8002F37C 01CF4021 */  addu       $t0, $t6, $t7
/* 2FF80 8002F380 02716821 */  addu       $t5, $s3, $s1
/* 2FF84 8002F384 00003825 */  or         $a3, $zero, $zero
/* 2FF88 8002F388 02203025 */  or         $a2, $s1, $zero
/* 2FF8C 8002F38C 01114821 */  addu       $t1, $t0, $s1
/* 2FF90 8002F390 A1B9009C */  sb         $t9, 0x9c($t5)
/* 2FF94 8002F394 9124009C */  lbu        $a0, 0x9c($t1)
.L8002F398:
/* 2FF98 8002F398 24C6FFFF */  addiu      $a2, $a2, -1
/* 2FF9C 8002F39C 2529FFFF */  addiu      $t1, $t1, -1
/* 2FFA0 8002F3A0 288100C0 */  slti       $at, $a0, 0xc0
/* 2FFA4 8002F3A4 1420000B */  bnez       $at, .L8002F3D4
/* 2FFA8 8002F3A8 00809025 */   or        $s2, $a0, $zero
/* 2FFAC 8002F3AC 2A4100E0 */  slti       $at, $s2, 0xe0
/* 2FFB0 8002F3B0 10200008 */  beqz       $at, .L8002F3D4
/* 2FFB4 8002F3B4 30F80001 */   andi      $t8, $a3, 1
/* 2FFB8 8002F3B8 17000006 */  bnez       $t8, .L8002F3D4
/* 2FFBC 8002F3BC 24A20001 */   addiu     $v0, $a1, 1
/* 2FFC0 8002F3C0 0102C821 */  addu       $t9, $t0, $v0
/* 2FFC4 8002F3C4 34ED0001 */  ori        $t5, $a3, 1
/* 2FFC8 8002F3C8 A324009C */  sb         $a0, 0x9c($t9)
/* 2FFCC 8002F3CC 00402825 */  or         $a1, $v0, $zero
/* 2FFD0 8002F3D0 01A03825 */  or         $a3, $t5, $zero
.L8002F3D4:
/* 2FFD4 8002F3D4 2A410080 */  slti       $at, $s2, 0x80
/* 2FFD8 8002F3D8 1420000A */  bnez       $at, .L8002F404
/* 2FFDC 8002F3DC 2A4100A0 */   slti      $at, $s2, 0xa0
/* 2FFE0 8002F3E0 10200008 */  beqz       $at, .L8002F404
/* 2FFE4 8002F3E4 30EE0002 */   andi      $t6, $a3, 2
/* 2FFE8 8002F3E8 15C00006 */  bnez       $t6, .L8002F404
/* 2FFEC 8002F3EC 24A20001 */   addiu     $v0, $a1, 1
/* 2FFF0 8002F3F0 01027821 */  addu       $t7, $t0, $v0
/* 2FFF4 8002F3F4 34F80002 */  ori        $t8, $a3, 2
/* 2FFF8 8002F3F8 A1E4009C */  sb         $a0, 0x9c($t7)
/* 2FFFC 8002F3FC 00402825 */  or         $a1, $v0, $zero
/* 30000 8002F400 03003825 */  or         $a3, $t8, $zero
.L8002F404:
/* 30004 8002F404 2A4100A0 */  slti       $at, $s2, 0xa0
/* 30008 8002F408 1420000A */  bnez       $at, .L8002F434
/* 3000C 8002F40C 2A4100B0 */   slti      $at, $s2, 0xb0
/* 30010 8002F410 10200008 */  beqz       $at, .L8002F434
/* 30014 8002F414 30F90004 */   andi      $t9, $a3, 4
/* 30018 8002F418 17200006 */  bnez       $t9, .L8002F434
/* 3001C 8002F41C 24A20001 */   addiu     $v0, $a1, 1
/* 30020 8002F420 01026821 */  addu       $t5, $t0, $v0
/* 30024 8002F424 34EE0004 */  ori        $t6, $a3, 4
/* 30028 8002F428 A1A4009C */  sb         $a0, 0x9c($t5)
/* 3002C 8002F42C 00402825 */  or         $a1, $v0, $zero
/* 30030 8002F430 01C03825 */  or         $a3, $t6, $zero
.L8002F434:
/* 30034 8002F434 04C3FFD8 */  bgezl      $a2, .L8002F398
/* 30038 8002F438 9124009C */   lbu       $a0, 0x9c($t1)
/* 3003C 8002F43C 01112021 */  addu       $a0, $t0, $s1
/* 30040 8002F440 01053021 */  addu       $a2, $t0, $a1
.L8002F444:
/* 30044 8002F444 908F009C */  lbu        $t7, 0x9c($a0)
/* 30048 8002F448 24A20001 */  addiu      $v0, $a1, 1
/* 3004C 8002F44C 0102C021 */  addu       $t8, $t0, $v0
/* 30050 8002F450 A30F009C */  sb         $t7, 0x9c($t8)
/* 30054 8002F454 90D9009D */  lbu        $t9, 0x9d($a2)
/* 30058 8002F458 00402825 */  or         $a1, $v0, $zero
/* 3005C 8002F45C 24C60001 */  addiu      $a2, $a2, 1
/* 30060 8002F460 16F9FFF8 */  bne        $s7, $t9, .L8002F444
/* 30064 8002F464 24840001 */   addiu     $a0, $a0, 1
/* 30068 8002F468 8E6F0000 */  lw         $t7, ($s3)
/* 3006C 8002F46C 926E009D */  lbu        $t6, 0x9d($s3)
/* 30070 8002F470 3C01FBFF */  lui        $at, 0xfbff
/* 30074 8002F474 3421FFFF */  ori        $at, $at, 0xffff
/* 30078 8002F478 240D0001 */  addiu      $t5, $zero, 1
/* 3007C 8002F47C 01E1C024 */  and        $t8, $t7, $at
/* 30080 8002F480 A66D0012 */  sh         $t5, 0x12($s3)
/* 30084 8002F484 A275009D */  sb         $s5, 0x9d($s3)
/* 30088 8002F488 AE780000 */  sw         $t8, ($s3)
/* 3008C 8002F48C 00008825 */  or         $s1, $zero, $zero
/* 30090 8002F490 01002025 */  or         $a0, $t0, $zero
/* 30094 8002F494 24020400 */  addiu      $v0, $zero, 0x400
/* 30098 8002F498 A26E0014 */  sb         $t6, 0x14($s3)
.L8002F49C:
/* 3009C 8002F49C 26310004 */  addiu      $s1, $s1, 4
/* 300A0 8002F4A0 A095049D */  sb         $s5, 0x49d($a0)
/* 300A4 8002F4A4 A095049E */  sb         $s5, 0x49e($a0)
/* 300A8 8002F4A8 A095049F */  sb         $s5, 0x49f($a0)
/* 300AC 8002F4AC 24840004 */  addiu      $a0, $a0, 4
/* 300B0 8002F4B0 1622FFFA */  bne        $s1, $v0, .L8002F49C
/* 300B4 8002F4B4 A0950498 */   sb        $s5, 0x498($a0)
/* 300B8 8002F4B8 1000012E */  b          .L8002F974
/* 300BC 8002F4BC 00000000 */   nop
.L8002F4C0:
/* 300C0 8002F4C0 80C6FA00 */  lb         $a2, -0x600($a2)
/* 300C4 8002F4C4 3C010010 */  lui        $at, 0x10
/* 300C8 8002F4C8 0041C025 */  or         $t8, $v0, $at
/* 300CC 8002F4CC 10C0000E */  beqz       $a2, .L8002F508
/* 300D0 8002F4D0 03011824 */   and       $v1, $t8, $at
/* 300D4 8002F4D4 3C010010 */  lui        $at, 0x10
/* 300D8 8002F4D8 00411824 */  and        $v1, $v0, $at
/* 300DC 8002F4DC 1460000B */  bnez       $v1, .L8002F50C
/* 300E0 8002F4E0 3C198009 */   lui       $t9, %hi(ButtonPressedFrame)
/* 300E4 8002F4E4 97392876 */  lhu        $t9, %lo(ButtonPressedFrame)($t9)
/* 300E8 8002F4E8 3C010010 */  lui        $at, 0x10
/* 300EC 8002F4EC 00417025 */  or         $t6, $v0, $at
/* 300F0 8002F4F0 332DA000 */  andi       $t5, $t9, 0xa000
/* 300F4 8002F4F4 11A00005 */  beqz       $t5, .L8002F50C
/* 300F8 8002F4F8 00000000 */   nop
/* 300FC 8002F4FC AE6E0000 */  sw         $t6, ($s3)
/* 30100 8002F500 10000002 */  b          .L8002F50C
/* 30104 8002F504 01C11824 */   and       $v1, $t6, $at
.L8002F508:
/* 30108 8002F508 AE780000 */  sw         $t8, ($s3)
.L8002F50C:
/* 3010C 8002F50C 1460005C */  bnez       $v1, .L8002F680
/* 30110 8002F510 00001025 */   or        $v0, $zero, $zero
/* 30114 8002F514 826D0010 */  lb         $t5, 0x10($s3)
/* 30118 8002F518 25AEFFFF */  addiu      $t6, $t5, -1
/* 3011C 8002F51C A26E0010 */  sb         $t6, 0x10($s3)
/* 30120 8002F520 826F0010 */  lb         $t7, 0x10($s3)
/* 30124 8002F524 1DE00113 */  bgtz       $t7, .L8002F974
/* 30128 8002F528 00000000 */   nop
/* 3012C 8002F52C 96650012 */  lhu        $a1, 0x12($s3)
/* 30130 8002F530 9278000F */  lbu        $t8, 0xf($s3)
/* 30134 8002F534 926D0014 */  lbu        $t5, 0x14($s3)
/* 30138 8002F538 24B90001 */  addiu      $t9, $a1, 1
/* 3013C 8002F53C A6790012 */  sh         $t9, 0x12($s3)
/* 30140 8002F540 02657021 */  addu       $t6, $s3, $a1
/* 30144 8002F544 A2780010 */  sb         $t8, 0x10($s3)
/* 30148 8002F548 24A20001 */  addiu      $v0, $a1, 1
/* 3014C 8002F54C A1CD009C */  sb         $t5, 0x9c($t6)
/* 30150 8002F550 92720014 */  lbu        $s2, 0x14($s3)
/* 30154 8002F554 02627821 */  addu       $t7, $s3, $v0
/* 30158 8002F558 91F8009C */  lbu        $t8, 0x9c($t7)
/* 3015C 8002F55C 264DFF1F */  addiu      $t5, $s2, -0xe1
/* 30160 8002F560 0262C821 */  addu       $t9, $s3, $v0
/* 30164 8002F564 2DA1001F */  sltiu      $at, $t5, 0x1f
/* 30168 8002F568 A2780014 */  sb         $t8, 0x14($s3)
/* 3016C 8002F56C 1020002C */  beqz       $at, .L8002F620
/* 30170 8002F570 A335009C */   sb        $s5, 0x9c($t9)
/* 30174 8002F574 000D6880 */  sll        $t5, $t5, 2
/* 30178 8002F578 3C018007 */  lui        $at, %hi(D_800719D0)
/* 3017C 8002F57C 002D0821 */  addu       $at, $at, $t5
/* 30180 8002F580 8C2D19D0 */  lw         $t5, %lo(D_800719D0)($at)
/* 30184 8002F584 01A00008 */  jr         $t5
/* 30188 8002F588 00000000 */   nop
/* 3018C 8002F58C 8E6E0000 */  lw         $t6, ($s3)
/* 30190 8002F590 3C010040 */  lui        $at, 0x40
/* 30194 8002F594 24180001 */  addiu      $t8, $zero, 1
/* 30198 8002F598 01C17825 */  or         $t7, $t6, $at
/* 3019C 8002F59C AE6F0000 */  sw         $t7, ($s3)
/* 301A0 8002F5A0 AFB800DC */  sw         $t8, 0xdc($sp)
/* 301A4 8002F5A4 0C00C19A */  jal        func_80030668
/* 301A8 8002F5A8 03C02025 */   or        $a0, $fp, $zero
/* 301AC 8002F5AC 8E790000 */  lw         $t9, ($s3)
/* 301B0 8002F5B0 3C010004 */  lui        $at, 4
/* 301B4 8002F5B4 03216825 */  or         $t5, $t9, $at
/* 301B8 8002F5B8 100000EE */  b          .L8002F974
/* 301BC 8002F5BC AE6D0000 */   sw        $t5, ($s3)
/* 301C0 8002F5C0 8E6E0000 */  lw         $t6, ($s3)
/* 301C4 8002F5C4 3C010400 */  lui        $at, 0x400
/* 301C8 8002F5C8 01C17825 */  or         $t7, $t6, $at
/* 301CC 8002F5CC 100000E9 */  b          .L8002F974
/* 301D0 8002F5D0 AE6F0000 */   sw        $t7, ($s3)
/* 301D4 8002F5D4 8E780000 */  lw         $t8, ($s3)
/* 301D8 8002F5D8 3C010200 */  lui        $at, 0x200
/* 301DC 8002F5DC 0301C825 */  or         $t9, $t8, $at
/* 301E0 8002F5E0 3C01F7FF */  lui        $at, 0xf7ff
/* 301E4 8002F5E4 3421FFFF */  ori        $at, $at, 0xffff
/* 301E8 8002F5E8 AE790000 */  sw         $t9, ($s3)
/* 301EC 8002F5EC 03217024 */  and        $t6, $t9, $at
/* 301F0 8002F5F0 0C00C35C */  jal        VOID_FUN_80030d70
/* 301F4 8002F5F4 AE6E0000 */   sw        $t6, ($s3)
/* 301F8 8002F5F8 100000DE */  b          .L8002F974
/* 301FC 8002F5FC 00000000 */   nop
/* 30200 8002F600 324F0007 */  andi       $t7, $s2, 7
/* 30204 8002F604 3C188006 */  lui        $t8, %hi(BaseMessageSpeed)
/* 30208 8002F608 030FC021 */  addu       $t8, $t8, $t7
/* 3020C 8002F60C 8318F9B0 */  lb         $t8, %lo(BaseMessageSpeed)($t8)
/* 30210 8002F610 03060019 */  multu      $t8, $a2
/* 30214 8002F614 00001012 */  mflo       $v0
/* 30218 8002F618 A262000F */  sb         $v0, 0xf($s3)
/* 3021C 8002F61C A2620010 */  sb         $v0, 0x10($s3)
.L8002F620:
/* 30220 8002F620 00002025 */  or         $a0, $zero, $zero
/* 30224 8002F624 24050003 */  addiu      $a1, $zero, 3
/* 30228 8002F628 0C009A35 */  jal        func_800268D4
/* 3022C 8002F62C 32A600FF */   andi      $a2, $s5, 0xff
/* 30230 8002F630 2A410080 */  slti       $at, $s2, 0x80
/* 30234 8002F634 142000CF */  bnez       $at, .L8002F974
/* 30238 8002F638 00000000 */   nop
.L8002F63C:
/* 3023C 8002F63C 96650012 */  lhu        $a1, 0x12($s3)
/* 30240 8002F640 926D0014 */  lbu        $t5, 0x14($s3)
/* 30244 8002F644 24B90001 */  addiu      $t9, $a1, 1
/* 30248 8002F648 A6790012 */  sh         $t9, 0x12($s3)
/* 3024C 8002F64C 02657021 */  addu       $t6, $s3, $a1
/* 30250 8002F650 24A20001 */  addiu      $v0, $a1, 1
/* 30254 8002F654 A1CD009C */  sb         $t5, 0x9c($t6)
/* 30258 8002F658 02627821 */  addu       $t7, $s3, $v0
/* 3025C 8002F65C 92640014 */  lbu        $a0, 0x14($s3)
/* 30260 8002F660 91F8009C */  lbu        $t8, 0x9c($t7)
/* 30264 8002F664 0262C821 */  addu       $t9, $s3, $v0
/* 30268 8002F668 28810080 */  slti       $at, $a0, 0x80
/* 3026C 8002F66C A2780014 */  sb         $t8, 0x14($s3)
/* 30270 8002F670 1020FFF2 */  beqz       $at, .L8002F63C
/* 30274 8002F674 A335009C */   sb        $s5, 0x9c($t9)
/* 30278 8002F678 100000BE */  b          .L8002F974
/* 3027C 8002F67C 00000000 */   nop
.L8002F680:
/* 30280 8002F680 96710012 */  lhu        $s1, 0x12($s3)
/* 30284 8002F684 926D0014 */  lbu        $t5, 0x14($s3)
/* 30288 8002F688 001EC100 */  sll        $t8, $fp, 4
/* 3028C 8002F68C 02712821 */  addu       $a1, $s3, $s1
/* 30290 8002F690 A0AD009C */  sb         $t5, 0x9c($a1)
/* 30294 8002F694 86660008 */  lh         $a2, 8($s3)
/* 30298 8002F698 031EC021 */  addu       $t8, $t8, $fp
/* 3029C 8002F69C 0018C080 */  sll        $t8, $t8, 2
/* 302A0 8002F6A0 031EC021 */  addu       $t8, $t8, $fp
/* 302A4 8002F6A4 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 302A8 8002F6A8 0018C0C0 */  sll        $t8, $t8, 3
/* 302AC 8002F6AC 031EC023 */  subu       $t8, $t8, $fp
/* 302B0 8002F6B0 0018C080 */  sll        $t8, $t8, 2
/* 302B4 8002F6B4 3C0D8009 */  lui        $t5, %hi(textboxState)
/* 302B8 8002F6B8 04C10003 */  bgez       $a2, .L8002F6C8
/* 302BC 8002F6BC 000670C3 */   sra       $t6, $a2, 3
/* 302C0 8002F6C0 24C10007 */  addiu      $at, $a2, 7
/* 302C4 8002F6C4 000170C3 */  sra        $t6, $at, 3
.L8002F6C8:
/* 302C8 8002F6C8 25AD05E0 */  addiu      $t5, $t5, %lo(textboxState)
/* 302CC 8002F6CC 0311C821 */  addu       $t9, $t8, $s1
/* 302D0 8002F6D0 00003825 */  or         $a3, $zero, $zero
/* 302D4 8002F6D4 000E3080 */  sll        $a2, $t6, 2
/* 302D8 8002F6D8 032D2021 */  addu       $a0, $t9, $t5
.L8002F6DC:
/* 302DC 8002F6DC 9083009C */  lbu        $v1, 0x9c($a0)
/* 302E0 8002F6E0 240100E0 */  addiu      $at, $zero, 0xe0
/* 302E4 8002F6E4 306E0080 */  andi       $t6, $v1, 0x80
/* 302E8 8002F6E8 51C00023 */  beql       $t6, $zero, .L8002F778
/* 302EC 8002F6EC 24420001 */   addiu     $v0, $v0, 1
/* 302F0 8002F6F0 54610046 */  bnel       $v1, $at, .L8002F80C
/* 302F4 8002F6F4 240100F2 */   addiu     $at, $zero, 0xf2
/* 302F8 8002F6F8 866F0008 */  lh         $t7, 8($s3)
/* 302FC 8002F6FC 25F8FFE0 */  addiu      $t8, $t7, -0x20
/* 30300 8002F700 07010003 */  bgez       $t8, .L8002F710
/* 30304 8002F704 0018C8C3 */   sra       $t9, $t8, 3
/* 30308 8002F708 27010007 */  addiu      $at, $t8, 7
/* 3030C 8002F70C 0001C8C3 */  sra        $t9, $at, 3
.L8002F710:
/* 30310 8002F710 00F93821 */  addu       $a3, $a3, $t9
/* 30314 8002F714 00E2082A */  slt        $at, $a3, $v0
/* 30318 8002F718 10200003 */  beqz       $at, .L8002F728
/* 3031C 8002F71C 00471023 */   subu      $v0, $v0, $a3
/* 30320 8002F720 10000002 */  b          .L8002F72C
/* 30324 8002F724 00471021 */   addu      $v0, $v0, $a3
.L8002F728:
/* 30328 8002F728 00E01025 */  or         $v0, $a3, $zero
.L8002F72C:
/* 3032C 8002F72C 0046082A */  slt        $at, $v0, $a2
/* 30330 8002F730 54200036 */  bnel       $at, $zero, .L8002F80C
/* 30334 8002F734 240100F2 */   addiu     $at, $zero, 0xf2
/* 30338 8002F738 8E6D0000 */  lw         $t5, ($s3)
/* 3033C 8002F73C 3C010400 */  lui        $at, 0x400
/* 30340 8002F740 26220001 */  addiu      $v0, $s1, 1
/* 30344 8002F744 01A17025 */  or         $t6, $t5, $at
/* 30348 8002F748 AE6E0000 */  sw         $t6, ($s3)
/* 3034C 8002F74C 02627821 */  addu       $t7, $s3, $v0
/* 30350 8002F750 91F8009C */  lbu        $t8, 0x9c($t7)
/* 30354 8002F754 24A50001 */  addiu      $a1, $a1, 1
/* 30358 8002F758 24840001 */  addiu      $a0, $a0, 1
/* 3035C 8002F75C A2780014 */  sb         $t8, 0x14($s3)
/* 30360 8002F760 A0B5009C */  sb         $s5, 0x9c($a1)
/* 30364 8002F764 96790012 */  lhu        $t9, 0x12($s3)
/* 30368 8002F768 272D0001 */  addiu      $t5, $t9, 1
/* 3036C 8002F76C 10000058 */  b          .L8002F8D0
/* 30370 8002F770 A66D0012 */   sh        $t5, 0x12($s3)
/* 30374 8002F774 24420001 */  addiu      $v0, $v0, 1
.L8002F778:
/* 30378 8002F778 0046082A */  slt        $at, $v0, $a2
/* 3037C 8002F77C 54200011 */  bnel       $at, $zero, .L8002F7C4
/* 30380 8002F780 00C2082A */   slt       $at, $a2, $v0
/* 30384 8002F784 8E6E0000 */  lw         $t6, ($s3)
/* 30388 8002F788 3C010400 */  lui        $at, 0x400
/* 3038C 8002F78C 26220001 */  addiu      $v0, $s1, 1
/* 30390 8002F790 01C17825 */  or         $t7, $t6, $at
/* 30394 8002F794 AE6F0000 */  sw         $t7, ($s3)
/* 30398 8002F798 0262C021 */  addu       $t8, $s3, $v0
/* 3039C 8002F79C 9319009C */  lbu        $t9, 0x9c($t8)
/* 303A0 8002F7A0 24A50001 */  addiu      $a1, $a1, 1
/* 303A4 8002F7A4 24840001 */  addiu      $a0, $a0, 1
/* 303A8 8002F7A8 A2790014 */  sb         $t9, 0x14($s3)
/* 303AC 8002F7AC A0B5009C */  sb         $s5, 0x9c($a1)
/* 303B0 8002F7B0 966D0012 */  lhu        $t5, 0x12($s3)
/* 303B4 8002F7B4 25AE0001 */  addiu      $t6, $t5, 1
/* 303B8 8002F7B8 10000045 */  b          .L8002F8D0
/* 303BC 8002F7BC A66E0012 */   sh        $t6, 0x12($s3)
/* 303C0 8002F7C0 00C2082A */  slt        $at, $a2, $v0
.L8002F7C4:
/* 303C4 8002F7C4 50200011 */  beql       $at, $zero, .L8002F80C
/* 303C8 8002F7C8 240100F2 */   addiu     $at, $zero, 0xf2
/* 303CC 8002F7CC 26220001 */  addiu      $v0, $s1, 1
/* 303D0 8002F7D0 02627821 */  addu       $t7, $s3, $v0
/* 303D4 8002F7D4 91F8009C */  lbu        $t8, 0x9c($t7)
/* 303D8 8002F7D8 3C010400 */  lui        $at, 0x400
/* 303DC 8002F7DC 24A50001 */  addiu      $a1, $a1, 1
/* 303E0 8002F7E0 A2780014 */  sb         $t8, 0x14($s3)
/* 303E4 8002F7E4 A0B5009C */  sb         $s5, 0x9c($a1)
/* 303E8 8002F7E8 96790012 */  lhu        $t9, 0x12($s3)
/* 303EC 8002F7EC 8E6E0000 */  lw         $t6, ($s3)
/* 303F0 8002F7F0 24840001 */  addiu      $a0, $a0, 1
/* 303F4 8002F7F4 272D0001 */  addiu      $t5, $t9, 1
/* 303F8 8002F7F8 01C17825 */  or         $t7, $t6, $at
/* 303FC 8002F7FC A66D0012 */  sh         $t5, 0x12($s3)
/* 30400 8002F800 10000033 */  b          .L8002F8D0
/* 30404 8002F804 AE6F0000 */   sw        $t7, ($s3)
/* 30408 8002F808 240100F2 */  addiu      $at, $zero, 0xf2
.L8002F80C:
/* 3040C 8002F80C 5461000D */  bnel       $v1, $at, .L8002F844
/* 30410 8002F810 240100F0 */   addiu     $at, $zero, 0xf0
/* 30414 8002F814 26220001 */  addiu      $v0, $s1, 1
/* 30418 8002F818 0262C021 */  addu       $t8, $s3, $v0
/* 3041C 8002F81C 9319009C */  lbu        $t9, 0x9c($t8)
/* 30420 8002F820 24A50001 */  addiu      $a1, $a1, 1
/* 30424 8002F824 24840001 */  addiu      $a0, $a0, 1
/* 30428 8002F828 A2790014 */  sb         $t9, 0x14($s3)
/* 3042C 8002F82C A0B5009C */  sb         $s5, 0x9c($a1)
/* 30430 8002F830 966D0012 */  lhu        $t5, 0x12($s3)
/* 30434 8002F834 25AE0001 */  addiu      $t6, $t5, 1
/* 30438 8002F838 10000025 */  b          .L8002F8D0
/* 3043C 8002F83C A66E0012 */   sh        $t6, 0x12($s3)
/* 30440 8002F840 240100F0 */  addiu      $at, $zero, 0xf0
.L8002F844:
/* 30444 8002F844 14610010 */  bne        $v1, $at, .L8002F888
/* 30448 8002F848 00000000 */   nop
/* 3044C 8002F84C 26220001 */  addiu      $v0, $s1, 1
/* 30450 8002F850 02627821 */  addu       $t7, $s3, $v0
/* 30454 8002F854 91F8009C */  lbu        $t8, 0x9c($t7)
/* 30458 8002F858 3C010400 */  lui        $at, 0x400
/* 3045C 8002F85C 24A50001 */  addiu      $a1, $a1, 1
/* 30460 8002F860 A2780014 */  sb         $t8, 0x14($s3)
/* 30464 8002F864 A0B5009C */  sb         $s5, 0x9c($a1)
/* 30468 8002F868 96790012 */  lhu        $t9, 0x12($s3)
/* 3046C 8002F86C 8E6E0000 */  lw         $t6, ($s3)
/* 30470 8002F870 24840001 */  addiu      $a0, $a0, 1
/* 30474 8002F874 272D0001 */  addiu      $t5, $t9, 1
/* 30478 8002F878 01C17825 */  or         $t7, $t6, $at
/* 3047C 8002F87C A66D0012 */  sh         $t5, 0x12($s3)
/* 30480 8002F880 10000013 */  b          .L8002F8D0
/* 30484 8002F884 AE6F0000 */   sw        $t7, ($s3)
.L8002F888:
/* 30488 8002F888 56E3000B */  bnel       $s7, $v1, .L8002F8B8
/* 3048C 8002F88C 966D0012 */   lhu       $t5, 0x12($s3)
/* 30490 8002F890 26220001 */  addiu      $v0, $s1, 1
/* 30494 8002F894 0262C021 */  addu       $t8, $s3, $v0
/* 30498 8002F898 9319009C */  lbu        $t9, 0x9c($t8)
/* 3049C 8002F89C 24A50001 */  addiu      $a1, $a1, 1
/* 304A0 8002F8A0 24840001 */  addiu      $a0, $a0, 1
/* 304A4 8002F8A4 A2790014 */  sb         $t9, 0x14($s3)
/* 304A8 8002F8A8 A0B5009C */  sb         $s5, 0x9c($a1)
/* 304AC 8002F8AC 10000008 */  b          .L8002F8D0
/* 304B0 8002F8B0 A0B5009D */   sb        $s5, 0x9d($a1)
/* 304B4 8002F8B4 966D0012 */  lhu        $t5, 0x12($s3)
.L8002F8B8:
/* 304B8 8002F8B8 26310001 */  addiu      $s1, $s1, 1
/* 304BC 8002F8BC 24A50001 */  addiu      $a1, $a1, 1
/* 304C0 8002F8C0 25AE0001 */  addiu      $t6, $t5, 1
/* 304C4 8002F8C4 24840001 */  addiu      $a0, $a0, 1
/* 304C8 8002F8C8 1000FF84 */  b          .L8002F6DC
/* 304CC 8002F8CC A66E0012 */   sh        $t6, 0x12($s3)
.L8002F8D0:
/* 304D0 8002F8D0 9083009B */  lbu        $v1, 0x9b($a0)
/* 304D4 8002F8D4 240100F0 */  addiu      $at, $zero, 0xf0
/* 304D8 8002F8D8 10610013 */  beq        $v1, $at, .L8002F928
/* 304DC 8002F8DC 240100F2 */   addiu     $at, $zero, 0xf2
/* 304E0 8002F8E0 10610005 */  beq        $v1, $at, .L8002F8F8
/* 304E4 8002F8E4 03C02025 */   or        $a0, $fp, $zero
/* 304E8 8002F8E8 50770015 */  beql       $v1, $s7, .L8002F940
/* 304EC 8002F8EC 8E790000 */   lw        $t9, ($s3)
/* 304F0 8002F8F0 1000001C */  b          .L8002F964
/* 304F4 8002F8F4 8E780000 */   lw        $t8, ($s3)
.L8002F8F8:
/* 304F8 8002F8F8 8E6F0000 */  lw         $t7, ($s3)
/* 304FC 8002F8FC 3C010040 */  lui        $at, 0x40
/* 30500 8002F900 24190001 */  addiu      $t9, $zero, 1
/* 30504 8002F904 01E1C025 */  or         $t8, $t7, $at
/* 30508 8002F908 AE780000 */  sw         $t8, ($s3)
/* 3050C 8002F90C 0C00C19A */  jal        func_80030668
/* 30510 8002F910 AFB900DC */   sw        $t9, 0xdc($sp)
/* 30514 8002F914 8E6D0000 */  lw         $t5, ($s3)
/* 30518 8002F918 3C010004 */  lui        $at, 4
/* 3051C 8002F91C 01A17025 */  or         $t6, $t5, $at
/* 30520 8002F920 1000000F */  b          .L8002F960
/* 30524 8002F924 AE6E0000 */   sw        $t6, ($s3)
.L8002F928:
/* 30528 8002F928 8E6F0000 */  lw         $t7, ($s3)
/* 3052C 8002F92C 3C010400 */  lui        $at, 0x400
/* 30530 8002F930 01E1C025 */  or         $t8, $t7, $at
/* 30534 8002F934 1000000A */  b          .L8002F960
/* 30538 8002F938 AE780000 */   sw        $t8, ($s3)
/* 3053C 8002F93C 8E790000 */  lw         $t9, ($s3)
.L8002F940:
/* 30540 8002F940 3C010200 */  lui        $at, 0x200
/* 30544 8002F944 03216825 */  or         $t5, $t9, $at
/* 30548 8002F948 3C01F7FF */  lui        $at, 0xf7ff
/* 3054C 8002F94C 3421FFFF */  ori        $at, $at, 0xffff
/* 30550 8002F950 AE6D0000 */  sw         $t5, ($s3)
/* 30554 8002F954 01A17824 */  and        $t7, $t5, $at
/* 30558 8002F958 0C00C35C */  jal        VOID_FUN_80030d70
/* 3055C 8002F95C AE6F0000 */   sw        $t7, ($s3)
.L8002F960:
/* 30560 8002F960 8E780000 */  lw         $t8, ($s3)
.L8002F964:
/* 30564 8002F964 3C01FFEF */  lui        $at, 0xffef
/* 30568 8002F968 3421FFFF */  ori        $at, $at, 0xffff
/* 3056C 8002F96C 0301C824 */  and        $t9, $t8, $at
/* 30570 8002F970 AE790000 */  sw         $t9, ($s3)
.L8002F974:
/* 30574 8002F974 0C00C01A */  jal        func_80030068
/* 30578 8002F978 03C02025 */   or        $a0, $fp, $zero
/* 3057C 8002F97C 0C00BF64 */  jal        func_8002FD90
/* 30580 8002F980 03C02025 */   or        $a0, $fp, $zero
/* 30584 8002F984 10000027 */  b          .L8002FA24
/* 30588 8002F988 8FB900E0 */   lw        $t9, 0xe0($sp)
.L8002F98C:
/* 3058C 8002F98C 05A10024 */  bgez       $t5, .L8002FA20
/* 30590 8002F990 3C0E8009 */   lui       $t6, %hi(ButtonPressedFrame)
/* 30594 8002F994 95CE2876 */  lhu        $t6, %lo(ButtonPressedFrame)($t6)
/* 30598 8002F998 31CFA000 */  andi       $t7, $t6, 0xa000
/* 3059C 8002F99C 55E00005 */  bnel       $t7, $zero, .L8002F9B4
/* 305A0 8002F9A0 03C02025 */   or        $a0, $fp, $zero
/* 305A4 8002F9A4 0C00C360 */  jal        VOID_FUN_80030d80
/* 305A8 8002F9A8 00000000 */   nop
/* 305AC 8002F9AC 10400008 */  beqz       $v0, .L8002F9D0
/* 305B0 8002F9B0 03C02025 */   or        $a0, $fp, $zero
.L8002F9B4:
/* 305B4 8002F9B4 0C00B98A */  jal        func_8002E628
/* 305B8 8002F9B8 24050001 */   addiu     $a1, $zero, 1
/* 305BC 8002F9BC 8E780000 */  lw         $t8, ($s3)
/* 305C0 8002F9C0 3C010100 */  lui        $at, 0x100
/* 305C4 8002F9C4 0301C825 */  or         $t9, $t8, $at
/* 305C8 8002F9C8 10000015 */  b          .L8002FA20
/* 305CC 8002F9CC AE790000 */   sw        $t9, ($s3)
.L8002F9D0:
/* 305D0 8002F9D0 8E620000 */  lw         $v0, ($s3)
/* 305D4 8002F9D4 3C01FFFB */  lui        $at, 0xfffb
/* 305D8 8002F9D8 3421FFFF */  ori        $at, $at, 0xffff
/* 305DC 8002F9DC 00026B40 */  sll        $t5, $v0, 0xd
/* 305E0 8002F9E0 05A10009 */  bgez       $t5, .L8002FA08
/* 305E4 8002F9E4 00417024 */   and       $t6, $v0, $at
/* 305E8 8002F9E8 AE6E0000 */  sw         $t6, ($s3)
/* 305EC 8002F9EC 03C02025 */  or         $a0, $fp, $zero
/* 305F0 8002F9F0 0C00B98A */  jal        func_8002E628
/* 305F4 8002F9F4 24050001 */   addiu     $a1, $zero, 1
/* 305F8 8002F9F8 8E6F0000 */  lw         $t7, ($s3)
/* 305FC 8002F9FC 3C010100 */  lui        $at, 0x100
/* 30600 8002FA00 01E1C025 */  or         $t8, $t7, $at
/* 30604 8002FA04 AE780000 */  sw         $t8, ($s3)
.L8002FA08:
/* 30608 8002FA08 0C00BF64 */  jal        func_8002FD90
/* 3060C 8002FA0C 03C02025 */   or        $a0, $fp, $zero
/* 30610 8002FA10 10000004 */  b          .L8002FA24
/* 30614 8002FA14 8FB900E0 */   lw        $t9, 0xe0($sp)
.L8002FA18:
/* 30618 8002FA18 0C00BF64 */  jal        func_8002FD90
/* 3061C 8002FA1C 03C02025 */   or        $a0, $fp, $zero
.L8002FA20:
/* 30620 8002FA20 8FB900E0 */  lw         $t9, 0xe0($sp)
.L8002FA24:
/* 30624 8002FA24 53200004 */  beql       $t9, $zero, .L8002FA38
/* 30628 8002FA28 8FAD0054 */   lw        $t5, 0x54($sp)
/* 3062C 8002FA2C 0C00C0FA */  jal        func_800303E8
/* 30630 8002FA30 03C02025 */   or        $a0, $fp, $zero
.L8002FA34:
/* 30634 8002FA34 8FAD0054 */  lw         $t5, 0x54($sp)
.L8002FA38:
/* 30638 8002FA38 27AF00F0 */  addiu      $t7, $sp, 0xf0
/* 3063C 8002FA3C 8FB800DC */  lw         $t8, 0xdc($sp)
/* 30640 8002FA40 25AE0001 */  addiu      $t6, $t5, 1
/* 30644 8002FA44 15CFFCA4 */  bne        $t6, $t7, .L8002ECD8
/* 30648 8002FA48 AFAE0054 */   sw        $t6, 0x54($sp)
/* 3064C 8002FA4C 13000013 */  beqz       $t8, .L8002FA9C
/* 30650 8002FA50 001EC900 */   sll       $t9, $fp, 4
/* 30654 8002FA54 033EC821 */  addu       $t9, $t9, $fp
/* 30658 8002FA58 0019C880 */  sll        $t9, $t9, 2
/* 3065C 8002FA5C 033EC821 */  addu       $t9, $t9, $fp
/* 30660 8002FA60 0019C8C0 */  sll        $t9, $t9, 3
/* 30664 8002FA64 033EC823 */  subu       $t9, $t9, $fp
/* 30668 8002FA68 0019C880 */  sll        $t9, $t9, 2
/* 3066C 8002FA6C 3C0D8009 */  lui        $t5, %hi(textboxState)
/* 30670 8002FA70 01B96821 */  addu       $t5, $t5, $t9
/* 30674 8002FA74 8DAD05E0 */  lw         $t5, %lo(textboxState)($t5)
/* 30678 8002FA78 000D7300 */  sll        $t6, $t5, 0xc
/* 3067C 8002FA7C 05C10005 */  bgez       $t6, .L8002FA94
/* 30680 8002FA80 00000000 */   nop
/* 30684 8002FA84 0C00B9DA */  jal        UNK_calledWhenWritingToTextbox
/* 30688 8002FA88 2404FFFD */   addiu     $a0, $zero, -3
/* 3068C 8002FA8C 10000004 */  b          .L8002FAA0
/* 30690 8002FA90 3C07E700 */   lui       $a3, 0xe700
.L8002FA94:
/* 30694 8002FA94 0C00B9DA */  jal        UNK_calledWhenWritingToTextbox
/* 30698 8002FA98 2404FFFF */   addiu     $a0, $zero, -1
.L8002FA9C:
/* 3069C 8002FA9C 3C07E700 */  lui        $a3, 0xe700
.L8002FAA0:
/* 306A0 8002FAA0 8EC20000 */  lw         $v0, ($s6)
/* 306A4 8002FAA4 3C18BA00 */  lui        $t8, 0xba00
/* 306A8 8002FAA8 37180E02 */  ori        $t8, $t8, 0xe02
/* 306AC 8002FAAC 244F0008 */  addiu      $t7, $v0, 8
/* 306B0 8002FAB0 AECF0000 */  sw         $t7, ($s6)
/* 306B4 8002FAB4 AC400004 */  sw         $zero, 4($v0)
/* 306B8 8002FAB8 AC580000 */  sw         $t8, ($v0)
/* 306BC 8002FABC 8EC20000 */  lw         $v0, ($s6)
/* 306C0 8002FAC0 24590008 */  addiu      $t9, $v0, 8
/* 306C4 8002FAC4 AED90000 */  sw         $t9, ($s6)
/* 306C8 8002FAC8 AC400004 */  sw         $zero, 4($v0)
/* 306CC 8002FACC AC470000 */  sw         $a3, ($v0)
/* 306D0 8002FAD0 8EC20000 */  lw         $v0, ($s6)
/* 306D4 8002FAD4 3C0EF900 */  lui        $t6, 0xf900
/* 306D8 8002FAD8 240F0001 */  addiu      $t7, $zero, 1
/* 306DC 8002FADC 244D0008 */  addiu      $t5, $v0, 8
/* 306E0 8002FAE0 AECD0000 */  sw         $t5, ($s6)
/* 306E4 8002FAE4 AC4F0004 */  sw         $t7, 4($v0)
/* 306E8 8002FAE8 AC4E0000 */  sw         $t6, ($v0)
/* 306EC 8002FAEC 8EC20000 */  lw         $v0, ($s6)
/* 306F0 8002FAF0 24580008 */  addiu      $t8, $v0, 8
/* 306F4 8002FAF4 AED80000 */  sw         $t8, ($s6)
/* 306F8 8002FAF8 AC400004 */  sw         $zero, 4($v0)
/* 306FC 8002FAFC AC470000 */  sw         $a3, ($v0)
/* 30700 8002FB00 8FBF0044 */  lw         $ra, 0x44($sp)
/* 30704 8002FB04 8FB00020 */  lw         $s0, 0x20($sp)
/* 30708 8002FB08 8FB10024 */  lw         $s1, 0x24($sp)
/* 3070C 8002FB0C 8FB20028 */  lw         $s2, 0x28($sp)
/* 30710 8002FB10 8FB3002C */  lw         $s3, 0x2c($sp)
/* 30714 8002FB14 8FB40030 */  lw         $s4, 0x30($sp)
/* 30718 8002FB18 8FB50034 */  lw         $s5, 0x34($sp)
/* 3071C 8002FB1C 8FB60038 */  lw         $s6, 0x38($sp)
/* 30720 8002FB20 8FB7003C */  lw         $s7, 0x3c($sp)
/* 30724 8002FB24 8FBE0040 */  lw         $fp, 0x40($sp)
/* 30728 8002FB28 03E00008 */  jr         $ra
/* 3072C 8002FB2C 27BD0118 */   addiu     $sp, $sp, 0x118

glabel func_8002FB30
/* 30730 8002FB30 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 30734 8002FB34 AFBF0034 */  sw         $ra, 0x34($sp)
/* 30738 8002FB38 AFB40030 */  sw         $s4, 0x30($sp)
/* 3073C 8002FB3C AFB3002C */  sw         $s3, 0x2c($sp)
/* 30740 8002FB40 AFB20028 */  sw         $s2, 0x28($sp)
/* 30744 8002FB44 AFB10024 */  sw         $s1, 0x24($sp)
/* 30748 8002FB48 AFB00020 */  sw         $s0, 0x20($sp)
/* 3074C 8002FB4C 00047100 */  sll        $t6, $a0, 4
/* 30750 8002FB50 01C47021 */  addu       $t6, $t6, $a0
/* 30754 8002FB54 000E7080 */  sll        $t6, $t6, 2
/* 30758 8002FB58 01C47021 */  addu       $t6, $t6, $a0
/* 3075C 8002FB5C 000E70C0 */  sll        $t6, $t6, 3
/* 30760 8002FB60 01C47023 */  subu       $t6, $t6, $a0
/* 30764 8002FB64 3C0F8009 */  lui        $t7, %hi(textboxState)
/* 30768 8002FB68 25EF05E0 */  addiu      $t7, $t7, %lo(textboxState)
/* 3076C 8002FB6C 000E7080 */  sll        $t6, $t6, 2
/* 30770 8002FB70 01CF9021 */  addu       $s2, $t6, $t7
/* 30774 8002FB74 86430008 */  lh         $v1, 8($s2)
/* 30778 8002FB78 86580004 */  lh         $t8, 4($s2)
/* 3077C 8002FB7C 8645000A */  lh         $a1, 0xa($s2)
/* 30780 8002FB80 864C0006 */  lh         $t4, 6($s2)
/* 30784 8002FB84 0003C843 */  sra        $t9, $v1, 1
/* 30788 8002FB88 03194021 */  addu       $t0, $t8, $t9
/* 3078C 8002FB8C 8E580000 */  lw         $t8, ($s2)
/* 30790 8002FB90 00056843 */  sra        $t5, $a1, 1
/* 30794 8002FB94 018D4821 */  addu       $t1, $t4, $t5
/* 30798 8002FB98 00085400 */  sll        $t2, $t0, 0x10
/* 3079C 8002FB9C 00097400 */  sll        $t6, $t1, 0x10
/* 307A0 8002FBA0 3C011000 */  lui        $at, 0x1000
/* 307A4 8002FBA4 000A5C03 */  sra        $t3, $t2, 0x10
/* 307A8 8002FBA8 000E7C03 */  sra        $t7, $t6, 0x10
/* 307AC 8002FBAC 0301C824 */  and        $t9, $t8, $at
/* 307B0 8002FBB0 AFA00068 */  sw         $zero, 0x68($sp)
/* 307B4 8002FBB4 01604025 */  or         $t0, $t3, $zero
/* 307B8 8002FBB8 13200016 */  beqz       $t9, .L8002FC14
/* 307BC 8002FBBC 01E04825 */   or        $t1, $t7, $zero
/* 307C0 8002FBC0 2404000C */  addiu      $a0, $zero, 0xc
/* 307C4 8002FBC4 0064001B */  divu       $zero, $v1, $a0
/* 307C8 8002FBC8 00008012 */  mflo       $s0
/* 307CC 8002FBCC 8642000C */  lh         $v0, 0xc($s2)
/* 307D0 8002FBD0 AFA40050 */  sw         $a0, 0x50($sp)
/* 307D4 8002FBD4 14800002 */  bnez       $a0, .L8002FBE0
/* 307D8 8002FBD8 00000000 */   nop
/* 307DC 8002FBDC 0007000D */  break      7
.L8002FBE0:
/* 307E0 8002FBE0 00500019 */   multu     $v0, $s0
/* 307E4 8002FBE4 00008012 */  mflo       $s0
/* 307E8 8002FBE8 00000000 */  nop
/* 307EC 8002FBEC 00000000 */  nop
/* 307F0 8002FBF0 00A4001B */  divu       $zero, $a1, $a0
/* 307F4 8002FBF4 00008812 */  mflo       $s1
/* 307F8 8002FBF8 14800002 */  bnez       $a0, .L8002FC04
/* 307FC 8002FBFC 00000000 */   nop
/* 30800 8002FC00 0007000D */  break      7
.L8002FC04:
/* 30804 8002FC04 00510019 */   multu     $v0, $s1
/* 30808 8002FC08 00008812 */  mflo       $s1
/* 3080C 8002FC0C 10000019 */  b          .L8002FC74
/* 30810 8002FC10 00106043 */   sra       $t4, $s0, 1
.L8002FC14:
/* 30814 8002FC14 2404000A */  addiu      $a0, $zero, 0xa
/* 30818 8002FC18 0064001B */  divu       $zero, $v1, $a0
/* 3081C 8002FC1C 864A000C */  lh         $t2, 0xc($s2)
/* 30820 8002FC20 00008012 */  mflo       $s0
/* 30824 8002FC24 240B000B */  addiu      $t3, $zero, 0xb
/* 30828 8002FC28 016A1023 */  subu       $v0, $t3, $t2
/* 3082C 8002FC2C 00500019 */  multu      $v0, $s0
/* 30830 8002FC30 AFA40050 */  sw         $a0, 0x50($sp)
/* 30834 8002FC34 14800002 */  bnez       $a0, .L8002FC40
/* 30838 8002FC38 00000000 */   nop
/* 3083C 8002FC3C 0007000D */  break      7
.L8002FC40:
/* 30840 8002FC40 00008012 */   mflo      $s0
/* 30844 8002FC44 00000000 */  nop
/* 30848 8002FC48 00000000 */  nop
/* 3084C 8002FC4C 00A4001B */  divu       $zero, $a1, $a0
/* 30850 8002FC50 00008812 */  mflo       $s1
/* 30854 8002FC54 14800002 */  bnez       $a0, .L8002FC60
/* 30858 8002FC58 00000000 */   nop
/* 3085C 8002FC5C 0007000D */  break      7
.L8002FC60:
/* 30860 8002FC60 00510019 */   multu     $v0, $s1
/* 30864 8002FC64 00008812 */  mflo       $s1
/* 30868 8002FC68 00000000 */  nop
/* 3086C 8002FC6C 00000000 */  nop
/* 30870 8002FC70 00106043 */  sra        $t4, $s0, 1
.L8002FC74:
/* 30874 8002FC74 00116843 */  sra        $t5, $s1, 1
/* 30878 8002FC78 012DA023 */  subu       $s4, $t1, $t5
/* 3087C 8002FC7C 010C9823 */  subu       $s3, $t0, $t4
/* 30880 8002FC80 02602825 */  or         $a1, $s3, $zero
/* 30884 8002FC84 02803025 */  or         $a2, $s4, $zero
/* 30888 8002FC88 00002025 */  or         $a0, $zero, $zero
/* 3088C 8002FC8C 02003825 */  or         $a3, $s0, $zero
/* 30890 8002FC90 0C00C1F6 */  jal        func_800307D8
/* 30894 8002FC94 AFB10010 */   sw        $s1, 0x10($sp)
/* 30898 8002FC98 02702821 */  addu       $a1, $s3, $s0
/* 3089C 8002FC9C AFA50040 */  sw         $a1, 0x40($sp)
/* 308A0 8002FCA0 24040003 */  addiu      $a0, $zero, 3
/* 308A4 8002FCA4 26860003 */  addiu      $a2, $s4, 3
/* 308A8 8002FCA8 24070003 */  addiu      $a3, $zero, 3
/* 308AC 8002FCAC 0C00C1F6 */  jal        func_800307D8
/* 308B0 8002FCB0 AFB10010 */   sw        $s1, 0x10($sp)
/* 308B4 8002FCB4 02913021 */  addu       $a2, $s4, $s1
/* 308B8 8002FCB8 240E0003 */  addiu      $t6, $zero, 3
/* 308BC 8002FCBC AFAE0010 */  sw         $t6, 0x10($sp)
/* 308C0 8002FCC0 AFA6003C */  sw         $a2, 0x3c($sp)
/* 308C4 8002FCC4 24040003 */  addiu      $a0, $zero, 3
/* 308C8 8002FCC8 26650003 */  addiu      $a1, $s3, 3
/* 308CC 8002FCCC 0C00C1F6 */  jal        func_800307D8
/* 308D0 8002FCD0 02003825 */   or        $a3, $s0, $zero
/* 308D4 8002FCD4 240F0001 */  addiu      $t7, $zero, 1
/* 308D8 8002FCD8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 308DC 8002FCDC 24040003 */  addiu      $a0, $zero, 3
/* 308E0 8002FCE0 02602825 */  or         $a1, $s3, $zero
/* 308E4 8002FCE4 02803025 */  or         $a2, $s4, $zero
/* 308E8 8002FCE8 0C00C1F6 */  jal        func_800307D8
/* 308EC 8002FCEC 02003825 */   or        $a3, $s0, $zero
/* 308F0 8002FCF0 8FA6003C */  lw         $a2, 0x3c($sp)
/* 308F4 8002FCF4 24180001 */  addiu      $t8, $zero, 1
/* 308F8 8002FCF8 AFB80010 */  sw         $t8, 0x10($sp)
/* 308FC 8002FCFC 24040003 */  addiu      $a0, $zero, 3
/* 30900 8002FD00 02602825 */  or         $a1, $s3, $zero
/* 30904 8002FD04 02003825 */  or         $a3, $s0, $zero
/* 30908 8002FD08 0C00C1F6 */  jal        func_800307D8
/* 3090C 8002FD0C 24C6FFFF */   addiu     $a2, $a2, -1
/* 30910 8002FD10 24040003 */  addiu      $a0, $zero, 3
/* 30914 8002FD14 02602825 */  or         $a1, $s3, $zero
/* 30918 8002FD18 02803025 */  or         $a2, $s4, $zero
/* 3091C 8002FD1C 24070001 */  addiu      $a3, $zero, 1
/* 30920 8002FD20 0C00C1F6 */  jal        func_800307D8
/* 30924 8002FD24 AFB10010 */   sw        $s1, 0x10($sp)
/* 30928 8002FD28 8FA50040 */  lw         $a1, 0x40($sp)
/* 3092C 8002FD2C 24040003 */  addiu      $a0, $zero, 3
/* 30930 8002FD30 02803025 */  or         $a2, $s4, $zero
/* 30934 8002FD34 24070001 */  addiu      $a3, $zero, 1
/* 30938 8002FD38 AFB10010 */  sw         $s1, 0x10($sp)
/* 3093C 8002FD3C 0C00C1F6 */  jal        func_800307D8
/* 30940 8002FD40 24A5FFFF */   addiu     $a1, $a1, -1
/* 30944 8002FD44 8659000C */  lh         $t9, 0xc($s2)
/* 30948 8002FD48 8FAA0050 */  lw         $t2, 0x50($sp)
/* 3094C 8002FD4C 240DFFFF */  addiu      $t5, $zero, -1
/* 30950 8002FD50 272B0001 */  addiu      $t3, $t9, 1
/* 30954 8002FD54 A64B000C */  sh         $t3, 0xc($s2)
/* 30958 8002FD58 864C000C */  lh         $t4, 0xc($s2)
/* 3095C 8002FD5C 014C082B */  sltu       $at, $t2, $t4
/* 30960 8002FD60 50200003 */  beql       $at, $zero, .L8002FD70
/* 30964 8002FD64 8FA20068 */   lw        $v0, 0x68($sp)
/* 30968 8002FD68 AFAD0068 */  sw         $t5, 0x68($sp)
/* 3096C 8002FD6C 8FA20068 */  lw         $v0, 0x68($sp)
.L8002FD70:
/* 30970 8002FD70 8FBF0034 */  lw         $ra, 0x34($sp)
/* 30974 8002FD74 8FB00020 */  lw         $s0, 0x20($sp)
/* 30978 8002FD78 8FB10024 */  lw         $s1, 0x24($sp)
/* 3097C 8002FD7C 8FB20028 */  lw         $s2, 0x28($sp)
/* 30980 8002FD80 8FB3002C */  lw         $s3, 0x2c($sp)
/* 30984 8002FD84 8FB40030 */  lw         $s4, 0x30($sp)
/* 30988 8002FD88 03E00008 */  jr         $ra
/* 3098C 8002FD8C 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002FD90
/* 30990 8002FD90 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 30994 8002FD94 3C078008 */  lui        $a3, %hi(UNK_DisplayListCommand)
/* 30998 8002FD98 24E7B2FC */  addiu      $a3, $a3, %lo(UNK_DisplayListCommand)
/* 3099C 8002FD9C AFBF0024 */  sw         $ra, 0x24($sp)
/* 309A0 8002FDA0 AFB10020 */  sw         $s1, 0x20($sp)
/* 309A4 8002FDA4 AFB0001C */  sw         $s0, 0x1c($sp)
/* 309A8 8002FDA8 8CE30000 */  lw         $v1, ($a3)
/* 309AC 8002FDAC 3C0FE700 */  lui        $t7, 0xe700
/* 309B0 8002FDB0 00044900 */  sll        $t1, $a0, 4
/* 309B4 8002FDB4 246E0008 */  addiu      $t6, $v1, 8
/* 309B8 8002FDB8 ACEE0000 */  sw         $t6, ($a3)
/* 309BC 8002FDBC AC600004 */  sw         $zero, 4($v1)
/* 309C0 8002FDC0 AC6F0000 */  sw         $t7, ($v1)
/* 309C4 8002FDC4 8CE30000 */  lw         $v1, ($a3)
/* 309C8 8002FDC8 3C19FB00 */  lui        $t9, 0xfb00
/* 309CC 8002FDCC 2408FFCC */  addiu      $t0, $zero, -0x34
/* 309D0 8002FDD0 24780008 */  addiu      $t8, $v1, 8
/* 309D4 8002FDD4 ACF80000 */  sw         $t8, ($a3)
/* 309D8 8002FDD8 AC680004 */  sw         $t0, 4($v1)
/* 309DC 8002FDDC AC790000 */  sw         $t9, ($v1)
/* 309E0 8002FDE0 01244821 */  addu       $t1, $t1, $a0
/* 309E4 8002FDE4 00094880 */  sll        $t1, $t1, 2
/* 309E8 8002FDE8 01244821 */  addu       $t1, $t1, $a0
/* 309EC 8002FDEC 000948C0 */  sll        $t1, $t1, 3
/* 309F0 8002FDF0 01244823 */  subu       $t1, $t1, $a0
/* 309F4 8002FDF4 3C0A8009 */  lui        $t2, %hi(textboxState)
/* 309F8 8002FDF8 254A05E0 */  addiu      $t2, $t2, %lo(textboxState)
/* 309FC 8002FDFC 00094880 */  sll        $t1, $t1, 2
/* 30A00 8002FE00 012A1021 */  addu       $v0, $t1, $t2
/* 30A04 8002FE04 904B0017 */  lbu        $t3, 0x17($v0)
/* 30A08 8002FE08 240100FF */  addiu      $at, $zero, 0xff
/* 30A0C 8002FE0C 24040001 */  addiu      $a0, $zero, 1
/* 30A10 8002FE10 11610019 */  beq        $t3, $at, .L8002FE78
/* 30A14 8002FE14 24070028 */   addiu     $a3, $zero, 0x28
/* 30A18 8002FE18 84500004 */  lh         $s0, 4($v0)
/* 30A1C 8002FE1C 84510006 */  lh         $s1, 6($v0)
/* 30A20 8002FE20 240C000D */  addiu      $t4, $zero, 0xd
/* 30A24 8002FE24 AFAC0010 */  sw         $t4, 0x10($sp)
/* 30A28 8002FE28 AFA2002C */  sw         $v0, 0x2c($sp)
/* 30A2C 8002FE2C 2605001B */  addiu      $a1, $s0, 0x1b
/* 30A30 8002FE30 0C00C1F6 */  jal        func_800307D8
/* 30A34 8002FE34 26260004 */   addiu     $a2, $s1, 4
/* 30A38 8002FE38 8FA2002C */  lw         $v0, 0x2c($sp)
/* 30A3C 8002FE3C 84500004 */  lh         $s0, 4($v0)
/* 30A40 8002FE40 84510006 */  lh         $s1, 6($v0)
/* 30A44 8002FE44 24460017 */  addiu      $a2, $v0, 0x17
/* 30A48 8002FE48 26040049 */  addiu      $a0, $s0, 0x49
/* 30A4C 8002FE4C 0C00C3A8 */  jal        printTextToScreen
/* 30A50 8002FE50 26250004 */   addiu     $a1, $s1, 4
/* 30A54 8002FE54 8FA2002C */  lw         $v0, 0x2c($sp)
/* 30A58 8002FE58 84500004 */  lh         $s0, 4($v0)
/* 30A5C 8002FE5C 84510006 */  lh         $s1, 6($v0)
/* 30A60 8002FE60 2446049C */  addiu      $a2, $v0, 0x49c
/* 30A64 8002FE64 26040010 */  addiu      $a0, $s0, 0x10
/* 30A68 8002FE68 0C00C3A8 */  jal        printTextToScreen
/* 30A6C 8002FE6C 26250014 */   addiu     $a1, $s1, 0x14
/* 30A70 8002FE70 10000008 */  b          .L8002FE94
/* 30A74 8002FE74 8FBF0024 */   lw        $ra, 0x24($sp)
.L8002FE78:
/* 30A78 8002FE78 84500004 */  lh         $s0, 4($v0)
/* 30A7C 8002FE7C 84510006 */  lh         $s1, 6($v0)
/* 30A80 8002FE80 2446049C */  addiu      $a2, $v0, 0x49c
/* 30A84 8002FE84 26040006 */  addiu      $a0, $s0, 6
/* 30A88 8002FE88 0C00C3A8 */  jal        printTextToScreen
/* 30A8C 8002FE8C 26250006 */   addiu     $a1, $s1, 6
/* 30A90 8002FE90 8FBF0024 */  lw         $ra, 0x24($sp)
.L8002FE94:
/* 30A94 8002FE94 8FB0001C */  lw         $s0, 0x1c($sp)
/* 30A98 8002FE98 8FB10020 */  lw         $s1, 0x20($sp)
/* 30A9C 8002FE9C 03E00008 */  jr         $ra
/* 30AA0 8002FEA0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8002FEA4
/* 30AA4 8002FEA4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 30AA8 8002FEA8 AFB10024 */  sw         $s1, 0x24($sp)
/* 30AAC 8002FEAC 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 30AB0 8002FEB0 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 30AB4 8002FEB4 00808825 */  or         $s1, $a0, $zero
/* 30AB8 8002FEB8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 30ABC 8002FEBC AFB20028 */  sw         $s2, 0x28($sp)
/* 30AC0 8002FEC0 AFB00020 */  sw         $s0, 0x20($sp)
/* 30AC4 8002FEC4 8C620000 */  lw         $v0, ($v1)
/* 30AC8 8002FEC8 3C0FE700 */  lui        $t7, 0xe700
/* 30ACC 8002FECC 00002025 */  or         $a0, $zero, $zero
/* 30AD0 8002FED0 244E0008 */  addiu      $t6, $v0, 8
/* 30AD4 8002FED4 AC6E0000 */  sw         $t6, ($v1)
/* 30AD8 8002FED8 AC400004 */  sw         $zero, 4($v0)
/* 30ADC 8002FEDC AC4F0000 */  sw         $t7, ($v0)
/* 30AE0 8002FEE0 8C620000 */  lw         $v0, ($v1)
/* 30AE4 8002FEE4 3C19FB00 */  lui        $t9, 0xfb00
/* 30AE8 8002FEE8 240AFFCC */  addiu      $t2, $zero, -0x34
/* 30AEC 8002FEEC 24580008 */  addiu      $t8, $v0, 8
/* 30AF0 8002FEF0 AC780000 */  sw         $t8, ($v1)
/* 30AF4 8002FEF4 AC4A0004 */  sw         $t2, 4($v0)
/* 30AF8 8002FEF8 AC590000 */  sw         $t9, ($v0)
/* 30AFC 8002FEFC 00115900 */  sll        $t3, $s1, 4
/* 30B00 8002FF00 01715821 */  addu       $t3, $t3, $s1
/* 30B04 8002FF04 000B5880 */  sll        $t3, $t3, 2
/* 30B08 8002FF08 01715821 */  addu       $t3, $t3, $s1
/* 30B0C 8002FF0C 000B58C0 */  sll        $t3, $t3, 3
/* 30B10 8002FF10 01715823 */  subu       $t3, $t3, $s1
/* 30B14 8002FF14 3C0C8009 */  lui        $t4, %hi(textboxState)
/* 30B18 8002FF18 258C05E0 */  addiu      $t4, $t4, %lo(textboxState)
/* 30B1C 8002FF1C 000B5880 */  sll        $t3, $t3, 2
/* 30B20 8002FF20 016C8021 */  addu       $s0, $t3, $t4
/* 30B24 8002FF24 860D000A */  lh         $t5, 0xa($s0)
/* 30B28 8002FF28 86050004 */  lh         $a1, 4($s0)
/* 30B2C 8002FF2C 86060006 */  lh         $a2, 6($s0)
/* 30B30 8002FF30 86070008 */  lh         $a3, 8($s0)
/* 30B34 8002FF34 0C00C1F6 */  jal        func_800307D8
/* 30B38 8002FF38 AFAD0010 */   sw        $t5, 0x10($sp)
/* 30B3C 8002FF3C 860E0008 */  lh         $t6, 8($s0)
/* 30B40 8002FF40 860F0004 */  lh         $t7, 4($s0)
/* 30B44 8002FF44 86060006 */  lh         $a2, 6($s0)
/* 30B48 8002FF48 8618000A */  lh         $t8, 0xa($s0)
/* 30B4C 8002FF4C 24040003 */  addiu      $a0, $zero, 3
/* 30B50 8002FF50 24070002 */  addiu      $a3, $zero, 2
/* 30B54 8002FF54 01CF2821 */  addu       $a1, $t6, $t7
/* 30B58 8002FF58 24C60002 */  addiu      $a2, $a2, 2
/* 30B5C 8002FF5C 0C00C1F6 */  jal        func_800307D8
/* 30B60 8002FF60 AFB80010 */   sw        $t8, 0x10($sp)
/* 30B64 8002FF64 86050004 */  lh         $a1, 4($s0)
/* 30B68 8002FF68 8619000A */  lh         $t9, 0xa($s0)
/* 30B6C 8002FF6C 860A0006 */  lh         $t2, 6($s0)
/* 30B70 8002FF70 240B0002 */  addiu      $t3, $zero, 2
/* 30B74 8002FF74 AFAB0010 */  sw         $t3, 0x10($sp)
/* 30B78 8002FF78 24040003 */  addiu      $a0, $zero, 3
/* 30B7C 8002FF7C 86070008 */  lh         $a3, 8($s0)
/* 30B80 8002FF80 24A50002 */  addiu      $a1, $a1, 2
/* 30B84 8002FF84 0C00C1F6 */  jal        func_800307D8
/* 30B88 8002FF88 032A3021 */   addu      $a2, $t9, $t2
/* 30B8C 8002FF8C 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 30B90 8002FF90 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 30B94 8002FF94 8C620000 */  lw         $v0, ($v1)
/* 30B98 8002FF98 3C0DE700 */  lui        $t5, 0xe700
/* 30B9C 8002FF9C 24040003 */  addiu      $a0, $zero, 3
/* 30BA0 8002FFA0 244C0008 */  addiu      $t4, $v0, 8
/* 30BA4 8002FFA4 AC6C0000 */  sw         $t4, ($v1)
/* 30BA8 8002FFA8 AC400004 */  sw         $zero, 4($v0)
/* 30BAC 8002FFAC AC4D0000 */  sw         $t5, ($v0)
/* 30BB0 8002FFB0 8C620000 */  lw         $v0, ($v1)
/* 30BB4 8002FFB4 3C0FFB00 */  lui        $t7, 0xfb00
/* 30BB8 8002FFB8 2418FFFF */  addiu      $t8, $zero, -1
/* 30BBC 8002FFBC 244E0008 */  addiu      $t6, $v0, 8
/* 30BC0 8002FFC0 AC6E0000 */  sw         $t6, ($v1)
/* 30BC4 8002FFC4 AC580004 */  sw         $t8, 4($v0)
/* 30BC8 8002FFC8 AC4F0000 */  sw         $t7, ($v0)
/* 30BCC 8002FFCC 86110004 */  lh         $s1, 4($s0)
/* 30BD0 8002FFD0 86120006 */  lh         $s2, 6($s0)
/* 30BD4 8002FFD4 24190001 */  addiu      $t9, $zero, 1
/* 30BD8 8002FFD8 AFB90010 */  sw         $t9, 0x10($sp)
/* 30BDC 8002FFDC 86070008 */  lh         $a3, 8($s0)
/* 30BE0 8002FFE0 02202825 */  or         $a1, $s1, $zero
/* 30BE4 8002FFE4 0C00C1F6 */  jal        func_800307D8
/* 30BE8 8002FFE8 02403025 */   or        $a2, $s2, $zero
/* 30BEC 8002FFEC 860A000A */  lh         $t2, 0xa($s0)
/* 30BF0 8002FFF0 240B0001 */  addiu      $t3, $zero, 1
/* 30BF4 8002FFF4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 30BF8 8002FFF8 01523021 */  addu       $a2, $t2, $s2
/* 30BFC 8002FFFC 24C6FFFF */  addiu      $a2, $a2, -1
/* 30C00 80030000 24040003 */  addiu      $a0, $zero, 3
/* 30C04 80030004 02202825 */  or         $a1, $s1, $zero
/* 30C08 80030008 0C00C1F6 */  jal        func_800307D8
/* 30C0C 8003000C 86070008 */   lh        $a3, 8($s0)
/* 30C10 80030010 860C000A */  lh         $t4, 0xa($s0)
/* 30C14 80030014 24040003 */  addiu      $a0, $zero, 3
/* 30C18 80030018 02202825 */  or         $a1, $s1, $zero
/* 30C1C 8003001C 02403025 */  or         $a2, $s2, $zero
/* 30C20 80030020 24070001 */  addiu      $a3, $zero, 1
/* 30C24 80030024 0C00C1F6 */  jal        func_800307D8
/* 30C28 80030028 AFAC0010 */   sw        $t4, 0x10($sp)
/* 30C2C 8003002C 860D0008 */  lh         $t5, 8($s0)
/* 30C30 80030030 860E000A */  lh         $t6, 0xa($s0)
/* 30C34 80030034 24040003 */  addiu      $a0, $zero, 3
/* 30C38 80030038 01B12821 */  addu       $a1, $t5, $s1
/* 30C3C 8003003C 24A5FFFF */  addiu      $a1, $a1, -1
/* 30C40 80030040 02403025 */  or         $a2, $s2, $zero
/* 30C44 80030044 24070001 */  addiu      $a3, $zero, 1
/* 30C48 80030048 0C00C1F6 */  jal        func_800307D8
/* 30C4C 8003004C AFAE0010 */   sw        $t6, 0x10($sp)
/* 30C50 80030050 8FBF002C */  lw         $ra, 0x2c($sp)
/* 30C54 80030054 8FB00020 */  lw         $s0, 0x20($sp)
/* 30C58 80030058 8FB10024 */  lw         $s1, 0x24($sp)
/* 30C5C 8003005C 8FB20028 */  lw         $s2, 0x28($sp)
/* 30C60 80030060 03E00008 */  jr         $ra
/* 30C64 80030064 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80030068
/* 30C68 80030068 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 30C6C 8003006C AFBF0024 */  sw         $ra, 0x24($sp)
/* 30C70 80030070 AFB20020 */  sw         $s2, 0x20($sp)
/* 30C74 80030074 AFB1001C */  sw         $s1, 0x1c($sp)
/* 30C78 80030078 AFB00018 */  sw         $s0, 0x18($sp)
/* 30C7C 8003007C AFA40048 */  sw         $a0, 0x48($sp)
/* 30C80 80030080 8FAE0048 */  lw         $t6, 0x48($sp)
/* 30C84 80030084 3C188009 */  lui        $t8, %hi(textboxState)
/* 30C88 80030088 271805E0 */  addiu      $t8, $t8, %lo(textboxState)
/* 30C8C 8003008C 000E7900 */  sll        $t7, $t6, 4
/* 30C90 80030090 01EE7821 */  addu       $t7, $t7, $t6
/* 30C94 80030094 000F7880 */  sll        $t7, $t7, 2
/* 30C98 80030098 01EE7821 */  addu       $t7, $t7, $t6
/* 30C9C 8003009C 000F78C0 */  sll        $t7, $t7, 3
/* 30CA0 800300A0 01EE7823 */  subu       $t7, $t7, $t6
/* 30CA4 800300A4 000F7880 */  sll        $t7, $t7, 2
/* 30CA8 800300A8 01F89021 */  addu       $s2, $t7, $t8
/* 30CAC 800300AC 864D0008 */  lh         $t5, 8($s2)
/* 30CB0 800300B0 864F000A */  lh         $t7, 0xa($s2)
/* 30CB4 800300B4 240BFFFF */  addiu      $t3, $zero, -1
/* 30CB8 800300B8 25ADFFE0 */  addiu      $t5, $t5, -0x20
/* 30CBC 800300BC 05A10003 */  bgez       $t5, .L800300CC
/* 30CC0 800300C0 000DC8C3 */   sra       $t9, $t5, 3
/* 30CC4 800300C4 25A10007 */  addiu      $at, $t5, 7
/* 30CC8 800300C8 0001C8C3 */  sra        $t9, $at, 3
.L800300CC:
/* 30CCC 800300CC 03206825 */  or         $t5, $t9, $zero
/* 30CD0 800300D0 2401000A */  addiu      $at, $zero, 0xa
/* 30CD4 800300D4 25F9FFEC */  addiu      $t9, $t7, -0x14
/* 30CD8 800300D8 0321001A */  div        $zero, $t9, $at
/* 30CDC 800300DC 00007812 */  mflo       $t7
/* 30CE0 800300E0 AFAF0028 */  sw         $t7, 0x28($sp)
/* 30CE4 800300E4 240AFFFF */  addiu      $t2, $zero, -1
/* 30CE8 800300E8 19E0008B */  blez       $t7, .L80030318
/* 30CEC 800300EC 24110001 */   addiu     $s1, $zero, 1
/* 30CF0 800300F0 000EC900 */  sll        $t9, $t6, 4
/* 30CF4 800300F4 032EC821 */  addu       $t9, $t9, $t6
/* 30CF8 800300F8 0019C880 */  sll        $t9, $t9, 2
/* 30CFC 800300FC 032EC821 */  addu       $t9, $t9, $t6
/* 30D00 80030100 0019C8C0 */  sll        $t9, $t9, 3
/* 30D04 80030104 032EC823 */  subu       $t9, $t9, $t6
/* 30D08 80030108 0019C880 */  sll        $t9, $t9, 2
/* 30D0C 8003010C 03383821 */  addu       $a3, $t9, $t8
/* 30D10 80030110 24E8FFFF */  addiu      $t0, $a3, -1
/* 30D14 80030114 241000F0 */  addiu      $s0, $zero, 0xf0
/* 30D18 80030118 241F00FF */  addiu      $ra, $zero, 0xff
/* 30D1C 8003011C 240C00E0 */  addiu      $t4, $zero, 0xe0
.L80030120:
/* 30D20 80030120 19A00019 */  blez       $t5, .L80030188
/* 30D24 80030124 00004825 */   or        $t1, $zero, $zero
/* 30D28 80030128 25450001 */  addiu      $a1, $t2, 1
.L8003012C:
/* 30D2C 8003012C 00E57821 */  addu       $t7, $a3, $a1
/* 30D30 80030130 91EE009C */  lbu        $t6, 0x9c($t7)
/* 30D34 80030134 25620001 */  addiu      $v0, $t3, 1
/* 30D38 80030138 00E2C821 */  addu       $t9, $a3, $v0
/* 30D3C 8003013C A32E049C */  sb         $t6, 0x49c($t9)
/* 30D40 80030140 9106049D */  lbu        $a2, 0x49d($t0)
/* 30D44 80030144 00405825 */  or         $t3, $v0, $zero
/* 30D48 80030148 00A05025 */  or         $t2, $a1, $zero
/* 30D4C 8003014C 30D80080 */  andi       $t8, $a2, 0x80
/* 30D50 80030150 13000009 */  beqz       $t8, .L80030178
/* 30D54 80030154 25080001 */   addiu     $t0, $t0, 1
/* 30D58 80030158 5186000C */  beql       $t4, $a2, .L8003018C
/* 30D5C 8003015C 9106049C */   lbu       $a2, 0x49c($t0)
/* 30D60 80030160 53E6000A */  beql       $ra, $a2, .L8003018C
/* 30D64 80030164 9106049C */   lbu       $a2, 0x49c($t0)
/* 30D68 80030168 56060005 */  bnel       $s0, $a2, .L80030180
/* 30D6C 8003016C 012D082A */   slt       $at, $t1, $t5
/* 30D70 80030170 10000006 */  b          .L8003018C
/* 30D74 80030174 9106049C */   lbu       $a2, 0x49c($t0)
.L80030178:
/* 30D78 80030178 25290001 */  addiu      $t1, $t1, 1
/* 30D7C 8003017C 012D082A */  slt        $at, $t1, $t5
.L80030180:
/* 30D80 80030180 5420FFEA */  bnel       $at, $zero, .L8003012C
/* 30D84 80030184 25450001 */   addiu     $a1, $t2, 1
.L80030188:
/* 30D88 80030188 9106049C */  lbu        $a2, 0x49c($t0)
.L8003018C:
/* 30D8C 8003018C 53E60063 */  beql       $ra, $a2, .L8003031C
/* 30D90 80030190 8FAF0048 */   lw        $t7, 0x48($sp)
/* 30D94 80030194 16060006 */  bne        $s0, $a2, .L800301B0
/* 30D98 80030198 00000000 */   nop
/* 30D9C 8003019C 8E4F0000 */  lw         $t7, ($s2)
/* 30DA0 800301A0 3C010400 */  lui        $at, 0x400
/* 30DA4 800301A4 01E17025 */  or         $t6, $t7, $at
/* 30DA8 800301A8 1000005B */  b          .L80030318
/* 30DAC 800301AC AE4E0000 */   sw        $t6, ($s2)
.L800301B0:
/* 30DB0 800301B0 51860056 */  beql       $t4, $a2, .L8003030C
/* 30DB4 800301B4 8FB80028 */   lw        $t8, 0x28($sp)
/* 30DB8 800301B8 11860053 */  beq        $t4, $a2, .L80030308
/* 30DBC 800301BC 00EAC821 */   addu      $t9, $a3, $t2
/* 30DC0 800301C0 9338009D */  lbu        $t8, 0x9d($t9)
/* 30DC4 800301C4 25450001 */  addiu      $a1, $t2, 1
/* 30DC8 800301C8 2406FFFF */  addiu      $a2, $zero, -1
/* 30DCC 800301CC 2B010080 */  slti       $at, $t8, 0x80
/* 30DD0 800301D0 14200046 */  bnez       $at, .L800302EC
/* 30DD4 800301D4 00A04825 */   or        $t1, $a1, $zero
/* 30DD8 800301D8 00E51821 */  addu       $v1, $a3, $a1
/* 30DDC 800301DC 906F009C */  lbu        $t7, 0x9c($v1)
.L800301E0:
/* 30DE0 800301E0 25220001 */  addiu      $v0, $t1, 1
/* 30DE4 800301E4 00E2C021 */  addu       $t8, $a3, $v0
/* 30DE8 800301E8 558F003B */  bnel       $t4, $t7, .L800302D8
/* 30DEC 800301EC 930F009C */   lbu       $t7, 0x9c($t8)
/* 30DF0 800301F0 012A1023 */  subu       $v0, $t1, $t2
/* 30DF4 800301F4 1840002D */  blez       $v0, .L800302AC
/* 30DF8 800301F8 00403025 */   or        $a2, $v0, $zero
/* 30DFC 800301FC 30430003 */  andi       $v1, $v0, 3
/* 30E00 80030200 00031823 */  negu       $v1, $v1
/* 30E04 80030204 1060000D */  beqz       $v1, .L8003023C
/* 30E08 80030208 00624821 */   addu      $t1, $v1, $v0
.L8003020C:
/* 30E0C 8003020C 25450001 */  addiu      $a1, $t2, 1
/* 30E10 80030210 00E57021 */  addu       $t6, $a3, $a1
/* 30E14 80030214 91D9009C */  lbu        $t9, 0x9c($t6)
/* 30E18 80030218 25620001 */  addiu      $v0, $t3, 1
/* 30E1C 8003021C 00E2C021 */  addu       $t8, $a3, $v0
/* 30E20 80030220 24C6FFFF */  addiu      $a2, $a2, -1
/* 30E24 80030224 00405825 */  or         $t3, $v0, $zero
/* 30E28 80030228 00A05025 */  or         $t2, $a1, $zero
/* 30E2C 8003022C 25080001 */  addiu      $t0, $t0, 1
/* 30E30 80030230 1526FFF6 */  bne        $t1, $a2, .L8003020C
/* 30E34 80030234 A319049C */   sb        $t9, 0x49c($t8)
/* 30E38 80030238 10C0001B */  beqz       $a2, .L800302A8
.L8003023C:
/* 30E3C 8003023C 25450001 */   addiu     $a1, $t2, 1
/* 30E40 80030240 00E57821 */  addu       $t7, $a3, $a1
/* 30E44 80030244 91EE009C */  lbu        $t6, 0x9c($t7)
/* 30E48 80030248 25620001 */  addiu      $v0, $t3, 1
/* 30E4C 8003024C 24A50001 */  addiu      $a1, $a1, 1
/* 30E50 80030250 00E2C821 */  addu       $t9, $a3, $v0
/* 30E54 80030254 00E5C021 */  addu       $t8, $a3, $a1
/* 30E58 80030258 A32E049C */  sb         $t6, 0x49c($t9)
/* 30E5C 8003025C 930F009C */  lbu        $t7, 0x9c($t8)
/* 30E60 80030260 24420001 */  addiu      $v0, $v0, 1
/* 30E64 80030264 00E27021 */  addu       $t6, $a3, $v0
/* 30E68 80030268 24A50001 */  addiu      $a1, $a1, 1
/* 30E6C 8003026C 00E5C821 */  addu       $t9, $a3, $a1
/* 30E70 80030270 A1CF049C */  sb         $t7, 0x49c($t6)
/* 30E74 80030274 9338009C */  lbu        $t8, 0x9c($t9)
/* 30E78 80030278 24420001 */  addiu      $v0, $v0, 1
/* 30E7C 8003027C 00E27821 */  addu       $t7, $a3, $v0
/* 30E80 80030280 24AA0001 */  addiu      $t2, $a1, 1
/* 30E84 80030284 00EA7021 */  addu       $t6, $a3, $t2
/* 30E88 80030288 A1F8049C */  sb         $t8, 0x49c($t7)
/* 30E8C 8003028C 91D9009C */  lbu        $t9, 0x9c($t6)
/* 30E90 80030290 244B0001 */  addiu      $t3, $v0, 1
/* 30E94 80030294 00EBC021 */  addu       $t8, $a3, $t3
/* 30E98 80030298 24C6FFFC */  addiu      $a2, $a2, -4
/* 30E9C 8003029C 25080004 */  addiu      $t0, $t0, 4
/* 30EA0 800302A0 14C0FFE6 */  bnez       $a2, .L8003023C
/* 30EA4 800302A4 A319049C */   sb        $t9, 0x49c($t8)
.L800302A8:
/* 30EA8 800302A8 25450001 */  addiu      $a1, $t2, 1
.L800302AC:
/* 30EAC 800302AC 00E57821 */  addu       $t7, $a3, $a1
/* 30EB0 800302B0 91EE009C */  lbu        $t6, 0x9c($t7)
/* 30EB4 800302B4 25620001 */  addiu      $v0, $t3, 1
/* 30EB8 800302B8 00E2C821 */  addu       $t9, $a3, $v0
/* 30EBC 800302BC 00405825 */  or         $t3, $v0, $zero
/* 30EC0 800302C0 25080001 */  addiu      $t0, $t0, 1
/* 30EC4 800302C4 00A05025 */  or         $t2, $a1, $zero
/* 30EC8 800302C8 00003025 */  or         $a2, $zero, $zero
/* 30ECC 800302CC 10000007 */  b          .L800302EC
/* 30ED0 800302D0 A32E049C */   sb        $t6, 0x49c($t9)
/* 30ED4 800302D4 930F009C */  lbu        $t7, 0x9c($t8)
.L800302D8:
/* 30ED8 800302D8 00404825 */  or         $t1, $v0, $zero
/* 30EDC 800302DC 24630001 */  addiu      $v1, $v1, 1
/* 30EE0 800302E0 29E10080 */  slti       $at, $t7, 0x80
/* 30EE4 800302E4 5020FFBE */  beql       $at, $zero, .L800301E0
/* 30EE8 800302E8 906F009C */   lbu       $t7, 0x9c($v1)
.L800302EC:
/* 30EEC 800302EC 10C00006 */  beqz       $a2, .L80030308
/* 30EF0 800302F0 25620001 */   addiu     $v0, $t3, 1
/* 30EF4 800302F4 240E00E0 */  addiu      $t6, $zero, 0xe0
/* 30EF8 800302F8 00E2C821 */  addu       $t9, $a3, $v0
/* 30EFC 800302FC A32E049C */  sb         $t6, 0x49c($t9)
/* 30F00 80030300 00405825 */  or         $t3, $v0, $zero
/* 30F04 80030304 25080001 */  addiu      $t0, $t0, 1
.L80030308:
/* 30F08 80030308 8FB80028 */  lw         $t8, 0x28($sp)
.L8003030C:
/* 30F0C 8003030C 0238202A */  slt        $a0, $s1, $t8
/* 30F10 80030310 1480FF83 */  bnez       $a0, .L80030120
/* 30F14 80030314 26310001 */   addiu     $s1, $s1, 1
.L80030318:
/* 30F18 80030318 8FAF0048 */  lw         $t7, 0x48($sp)
.L8003031C:
/* 30F1C 8003031C 3C068009 */  lui        $a2, 0x8009
/* 30F20 80030320 241F00FF */  addiu      $ra, $zero, 0xff
/* 30F24 80030324 000F7100 */  sll        $t6, $t7, 4
/* 30F28 80030328 01CF7021 */  addu       $t6, $t6, $t7
/* 30F2C 8003032C 000E7080 */  sll        $t6, $t6, 2
/* 30F30 80030330 01CF7021 */  addu       $t6, $t6, $t7
/* 30F34 80030334 000E70C0 */  sll        $t6, $t6, 3
/* 30F38 80030338 01CF7023 */  subu       $t6, $t6, $t7
/* 30F3C 8003033C 000E7080 */  sll        $t6, $t6, 2
/* 30F40 80030340 01CBC821 */  addu       $t9, $t6, $t3
/* 30F44 80030344 00D93021 */  addu       $a2, $a2, $t9
/* 30F48 80030348 90C60A7C */  lbu        $a2, 0xa7c($a2)
/* 30F4C 8003034C 241000F0 */  addiu      $s0, $zero, 0xf0
/* 30F50 80030350 53E60020 */  beql       $ra, $a2, .L800303D4
/* 30F54 80030354 8FBF0024 */   lw        $ra, 0x24($sp)
/* 30F58 80030358 1206001D */  beq        $s0, $a2, .L800303D0
/* 30F5C 8003035C 240400FF */   addiu     $a0, $zero, 0xff
/* 30F60 80030360 8E580000 */  lw         $t8, ($s2)
/* 30F64 80030364 3C010400 */  lui        $at, 0x400
/* 30F68 80030368 024B7021 */  addu       $t6, $s2, $t3
/* 30F6C 8003036C 03017825 */  or         $t7, $t8, $at
/* 30F70 80030370 AE4F0000 */  sw         $t7, ($s2)
/* 30F74 80030374 A1C4049D */  sb         $a0, 0x49d($t6)
/* 30F78 80030378 92430014 */  lbu        $v1, 0x14($s2)
/* 30F7C 8003037C 53E3000C */  beql       $ra, $v1, .L800303B0
/* 30F80 80030380 8E4E0000 */   lw        $t6, ($s2)
/* 30F84 80030384 964B0012 */  lhu        $t3, 0x12($s2)
/* 30F88 80030388 25580001 */  addiu      $t8, $t2, 1
/* 30F8C 8003038C 024A1021 */  addu       $v0, $s2, $t2
/* 30F90 80030390 024BC821 */  addu       $t9, $s2, $t3
/* 30F94 80030394 A323009C */  sb         $v1, 0x9c($t9)
/* 30F98 80030398 A6580012 */  sh         $t8, 0x12($s2)
/* 30F9C 8003039C 904F009D */  lbu        $t7, 0x9d($v0)
/* 30FA0 800303A0 A24F0014 */  sb         $t7, 0x14($s2)
/* 30FA4 800303A4 1000000A */  b          .L800303D0
/* 30FA8 800303A8 A044009D */   sb        $a0, 0x9d($v0)
/* 30FAC 800303AC 8E4E0000 */  lw         $t6, ($s2)
.L800303B0:
/* 30FB0 800303B0 3C010200 */  lui        $at, 0x200
/* 30FB4 800303B4 01C1C825 */  or         $t9, $t6, $at
/* 30FB8 800303B8 3C01F7FF */  lui        $at, 0xf7ff
/* 30FBC 800303BC 3421FFFF */  ori        $at, $at, 0xffff
/* 30FC0 800303C0 AE590000 */  sw         $t9, ($s2)
/* 30FC4 800303C4 03217824 */  and        $t7, $t9, $at
/* 30FC8 800303C8 0C00C35C */  jal        VOID_FUN_80030d70
/* 30FCC 800303CC AE4F0000 */   sw        $t7, ($s2)
.L800303D0:
/* 30FD0 800303D0 8FBF0024 */  lw         $ra, 0x24($sp)
.L800303D4:
/* 30FD4 800303D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 30FD8 800303D8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 30FDC 800303DC 8FB20020 */  lw         $s2, 0x20($sp)
/* 30FE0 800303E0 03E00008 */  jr         $ra
/* 30FE4 800303E4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800303E8
/* 30FE8 800303E8 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 30FEC 800303EC 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 30FF0 800303F0 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 30FF4 800303F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 30FF8 800303F8 AFA40078 */  sw         $a0, 0x78($sp)
/* 30FFC 800303FC 3C0F8006 */  lui        $t7, %hi(D_8005FA08)
/* 31000 80030400 25EFFA08 */  addiu      $t7, $t7, %lo(D_8005FA08)
/* 31004 80030404 8DE10000 */  lw         $at, ($t7)
/* 31008 80030408 8DF90004 */  lw         $t9, 4($t7)
/* 3100C 8003040C 27AE0064 */  addiu      $t6, $sp, 0x64
/* 31010 80030410 ADC10000 */  sw         $at, ($t6)
/* 31014 80030414 ADD90004 */  sw         $t9, 4($t6)
/* 31018 80030418 3C0E8006 */  lui        $t6, %hi(D_8005FA10)
/* 3101C 8003041C 25CEFA10 */  addiu      $t6, $t6, %lo(D_8005FA10)
/* 31020 80030420 8DC10000 */  lw         $at, ($t6)
/* 31024 80030424 8DD90004 */  lw         $t9, 4($t6)
/* 31028 80030428 27B8005C */  addiu      $t8, $sp, 0x5c
/* 3102C 8003042C AF010000 */  sw         $at, ($t8)
/* 31030 80030430 AF190004 */  sw         $t9, 4($t8)
/* 31034 80030434 3C188006 */  lui        $t8, %hi(D_8005FA18)
/* 31038 80030438 2718FA18 */  addiu      $t8, $t8, %lo(D_8005FA18)
/* 3103C 8003043C 8F010000 */  lw         $at, ($t8)
/* 31040 80030440 8F190004 */  lw         $t9, 4($t8)
/* 31044 80030444 27AF0054 */  addiu      $t7, $sp, 0x54
/* 31048 80030448 ADE10000 */  sw         $at, ($t7)
/* 3104C 8003044C ADF90004 */  sw         $t9, 4($t7)
/* 31050 80030450 8C620000 */  lw         $v0, ($v1)
/* 31054 80030454 3C0FE700 */  lui        $t7, 0xe700
/* 31058 80030458 244E0008 */  addiu      $t6, $v0, 8
/* 3105C 8003045C AC6E0000 */  sw         $t6, ($v1)
/* 31060 80030460 AC400004 */  sw         $zero, 4($v0)
/* 31064 80030464 AC4F0000 */  sw         $t7, ($v0)
/* 31068 80030468 8C620000 */  lw         $v0, ($v1)
/* 3106C 8003046C 3C19FB00 */  lui        $t9, 0xfb00
/* 31070 80030470 240EFFFF */  addiu      $t6, $zero, -1
/* 31074 80030474 24580008 */  addiu      $t8, $v0, 8
/* 31078 80030478 AC780000 */  sw         $t8, ($v1)
/* 3107C 8003047C AC4E0004 */  sw         $t6, 4($v0)
/* 31080 80030480 AC590000 */  sw         $t9, ($v0)
/* 31084 80030484 8C620000 */  lw         $v0, ($v1)
/* 31088 80030488 3C18E700 */  lui        $t8, 0xe700
/* 3108C 8003048C 3C0EBA00 */  lui        $t6, 0xba00
/* 31090 80030490 244F0008 */  addiu      $t7, $v0, 8
/* 31094 80030494 AC6F0000 */  sw         $t7, ($v1)
/* 31098 80030498 AC400004 */  sw         $zero, 4($v0)
/* 3109C 8003049C AC580000 */  sw         $t8, ($v0)
/* 310A0 800304A0 8C620000 */  lw         $v0, ($v1)
/* 310A4 800304A4 35CE0E02 */  ori        $t6, $t6, 0xe02
/* 310A8 800304A8 340F8000 */  ori        $t7, $zero, 0x8000
/* 310AC 800304AC 24590008 */  addiu      $t9, $v0, 8
/* 310B0 800304B0 AC790000 */  sw         $t9, ($v1)
/* 310B4 800304B4 AC4F0004 */  sw         $t7, 4($v0)
/* 310B8 800304B8 AC4E0000 */  sw         $t6, ($v0)
/* 310BC 800304BC 8C620000 */  lw         $v0, ($v1)
/* 310C0 800304C0 3C19E700 */  lui        $t9, 0xe700
/* 310C4 800304C4 3C0FFD10 */  lui        $t7, 0xfd10
/* 310C8 800304C8 24580008 */  addiu      $t8, $v0, 8
/* 310CC 800304CC AC780000 */  sw         $t8, ($v1)
/* 310D0 800304D0 AC400004 */  sw         $zero, 4($v0)
/* 310D4 800304D4 AC590000 */  sw         $t9, ($v0)
/* 310D8 800304D8 8C620000 */  lw         $v0, ($v1)
/* 310DC 800304DC 3C188006 */  lui        $t8, %hi(D_8005FB80)
/* 310E0 800304E0 2718FB80 */  addiu      $t8, $t8, %lo(D_8005FB80)
/* 310E4 800304E4 244E0008 */  addiu      $t6, $v0, 8
/* 310E8 800304E8 AC6E0000 */  sw         $t6, ($v1)
/* 310EC 800304EC AC580004 */  sw         $t8, 4($v0)
/* 310F0 800304F0 AC4F0000 */  sw         $t7, ($v0)
/* 310F4 800304F4 8C620000 */  lw         $v0, ($v1)
/* 310F8 800304F8 3C0EE800 */  lui        $t6, 0xe800
/* 310FC 800304FC 3C18F500 */  lui        $t8, 0xf500
/* 31100 80030500 24590008 */  addiu      $t9, $v0, 8
/* 31104 80030504 AC790000 */  sw         $t9, ($v1)
/* 31108 80030508 AC400004 */  sw         $zero, 4($v0)
/* 3110C 8003050C AC4E0000 */  sw         $t6, ($v0)
/* 31110 80030510 8C620000 */  lw         $v0, ($v1)
/* 31114 80030514 37180100 */  ori        $t8, $t8, 0x100
/* 31118 80030518 3C190700 */  lui        $t9, 0x700
/* 3111C 8003051C 244F0008 */  addiu      $t7, $v0, 8
/* 31120 80030520 AC6F0000 */  sw         $t7, ($v1)
/* 31124 80030524 AC590004 */  sw         $t9, 4($v0)
/* 31128 80030528 AC580000 */  sw         $t8, ($v0)
/* 3112C 8003052C 8C620000 */  lw         $v0, ($v1)
/* 31130 80030530 3C0FE600 */  lui        $t7, 0xe600
/* 31134 80030534 3C19F000 */  lui        $t9, 0xf000
/* 31138 80030538 244E0008 */  addiu      $t6, $v0, 8
/* 3113C 8003053C AC6E0000 */  sw         $t6, ($v1)
/* 31140 80030540 AC400004 */  sw         $zero, 4($v0)
/* 31144 80030544 AC4F0000 */  sw         $t7, ($v0)
/* 31148 80030548 8C620000 */  lw         $v0, ($v1)
/* 3114C 8003054C 3C0E073F */  lui        $t6, 0x73f
/* 31150 80030550 35CEC000 */  ori        $t6, $t6, 0xc000
/* 31154 80030554 24580008 */  addiu      $t8, $v0, 8
/* 31158 80030558 AC780000 */  sw         $t8, ($v1)
/* 3115C 8003055C AC4E0004 */  sw         $t6, 4($v0)
/* 31160 80030560 AC590000 */  sw         $t9, ($v0)
/* 31164 80030564 8C620000 */  lw         $v0, ($v1)
/* 31168 80030568 3C18E700 */  lui        $t8, 0xe700
/* 3116C 8003056C 244F0008 */  addiu      $t7, $v0, 8
/* 31170 80030570 AC6F0000 */  sw         $t7, ($v1)
/* 31174 80030574 AC400004 */  sw         $zero, 4($v0)
/* 31178 80030578 AC580000 */  sw         $t8, ($v0)
/* 3117C 8003057C 8FB90078 */  lw         $t9, 0x78($sp)
/* 31180 80030580 3C0F8009 */  lui        $t7, %hi(textboxState)
/* 31184 80030584 25EF05E0 */  addiu      $t7, $t7, %lo(textboxState)
/* 31188 80030588 00197100 */  sll        $t6, $t9, 4
/* 3118C 8003058C 01D97021 */  addu       $t6, $t6, $t9
/* 31190 80030590 000E7080 */  sll        $t6, $t6, 2
/* 31194 80030594 01D97021 */  addu       $t6, $t6, $t9
/* 31198 80030598 000E70C0 */  sll        $t6, $t6, 3
/* 3119C 8003059C 01D97023 */  subu       $t6, $t6, $t9
/* 311A0 800305A0 000E7080 */  sll        $t6, $t6, 2
/* 311A4 800305A4 01CF4021 */  addu       $t0, $t6, $t7
/* 311A8 800305A8 8518000C */  lh         $t8, 0xc($t0)
/* 311AC 800305AC 850F0006 */  lh         $t7, 6($t0)
/* 311B0 800305B0 24040003 */  addiu      $a0, $zero, 3
/* 311B4 800305B4 27190001 */  addiu      $t9, $t8, 1
/* 311B8 800305B8 A519000C */  sh         $t9, 0xc($t0)
/* 311BC 800305BC 850A000C */  lh         $t2, 0xc($t0)
/* 311C0 800305C0 85190004 */  lh         $t9, 4($t0)
/* 311C4 800305C4 85180008 */  lh         $t8, 8($t0)
/* 311C8 800305C8 000A7043 */  sra        $t6, $t2, 1
/* 311CC 800305CC 31CA0007 */  andi       $t2, $t6, 7
/* 311D0 800305D0 03192821 */  addu       $a1, $t8, $t9
/* 311D4 800305D4 850E000A */  lh         $t6, 0xa($t0)
/* 311D8 800305D8 03AAC021 */  addu       $t8, $sp, $t2
/* 311DC 800305DC 93180054 */  lbu        $t8, 0x54($t8)
/* 311E0 800305E0 03AA3821 */  addu       $a3, $sp, $t2
/* 311E4 800305E4 90E7005C */  lbu        $a3, 0x5c($a3)
/* 311E8 800305E8 24A5FFF5 */  addiu      $a1, $a1, -0xb
/* 311EC 800305EC 24190001 */  addiu      $t9, $zero, 1
/* 311F0 800305F0 01CF3021 */  addu       $a2, $t6, $t7
/* 311F4 800305F4 24C6FFFD */  addiu      $a2, $a2, -3
/* 311F8 800305F8 AFB90010 */  sw         $t9, 0x10($sp)
/* 311FC 800305FC AFAA006C */  sw         $t2, 0x6c($sp)
/* 31200 80030600 AFA80024 */  sw         $t0, 0x24($sp)
/* 31204 80030604 0C00C1F6 */  jal        func_800307D8
/* 31208 80030608 00B82823 */   subu      $a1, $a1, $t8
/* 3120C 8003060C 8FA80024 */  lw         $t0, 0x24($sp)
/* 31210 80030610 8FAA006C */  lw         $t2, 0x6c($sp)
/* 31214 80030614 24040002 */  addiu      $a0, $zero, 2
/* 31218 80030618 850E0008 */  lh         $t6, 8($t0)
/* 3121C 8003061C 850F0004 */  lh         $t7, 4($t0)
/* 31220 80030620 8518000A */  lh         $t8, 0xa($t0)
/* 31224 80030624 85190006 */  lh         $t9, 6($t0)
/* 31228 80030628 03AA1021 */  addu       $v0, $sp, $t2
/* 3122C 8003062C 90420064 */  lbu        $v0, 0x64($v0)
/* 31230 80030630 01CF2821 */  addu       $a1, $t6, $t7
/* 31234 80030634 03193021 */  addu       $a2, $t8, $t9
/* 31238 80030638 24A5FFF4 */  addiu      $a1, $a1, -0xc
/* 3123C 8003063C 24C6FFF1 */  addiu      $a2, $a2, -0xf
/* 31240 80030640 240E000C */  addiu      $t6, $zero, 0xc
/* 31244 80030644 AFAE0010 */  sw         $t6, 0x10($sp)
/* 31248 80030648 2407000C */  addiu      $a3, $zero, 0xc
/* 3124C 8003064C 00452821 */  addu       $a1, $v0, $a1
/* 31250 80030650 0C00C1F6 */  jal        func_800307D8
/* 31254 80030654 00C23023 */   subu      $a2, $a2, $v0
/* 31258 80030658 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3125C 8003065C 27BD0078 */  addiu      $sp, $sp, 0x78
/* 31260 80030660 03E00008 */  jr         $ra
/* 31264 80030664 00000000 */   nop

glabel func_80030668
/* 31268 80030668 3C0A8006 */  lui        $t2, %hi(D_8005F9F8)
/* 3126C 8003066C 254AF9F8 */  addiu      $t2, $t2, %lo(D_8005F9F8)
/* 31270 80030670 00047100 */  sll        $t6, $a0, 4
/* 31274 80030674 01C47021 */  addu       $t6, $t6, $a0
/* 31278 80030678 000E7080 */  sll        $t6, $t6, 2
/* 3127C 8003067C 01C47021 */  addu       $t6, $t6, $a0
/* 31280 80030680 000E70C0 */  sll        $t6, $t6, 3
/* 31284 80030684 01C47023 */  subu       $t6, $t6, $a0
/* 31288 80030688 000E7080 */  sll        $t6, $t6, 2
/* 3128C 8003068C 3C038009 */  lui        $v1, %hi(D_80090618)
/* 31290 80030690 006E1821 */  addu       $v1, $v1, $t6
/* 31294 80030694 84630618 */  lh         $v1, %lo(D_80090618)($v1)
/* 31298 80030698 00001025 */  or         $v0, $zero, $zero
/* 3129C 8003069C 00002825 */  or         $a1, $zero, $zero
/* 312A0 800306A0 00037880 */  sll        $t7, $v1, 2
/* 312A4 800306A4 01E37821 */  addu       $t7, $t7, $v1
/* 312A8 800306A8 000F7840 */  sll        $t7, $t7, 1
/* 312AC 800306AC 25F8000C */  addiu      $t8, $t7, 0xc
/* 312B0 800306B0 18600023 */  blez       $v1, .L80030740
/* 312B4 800306B4 A5580006 */   sh        $t8, 6($t2)
/* 312B8 800306B8 0004C900 */  sll        $t9, $a0, 4
/* 312BC 800306BC 0324C821 */  addu       $t9, $t9, $a0
/* 312C0 800306C0 0019C880 */  sll        $t9, $t9, 2
/* 312C4 800306C4 0324C821 */  addu       $t9, $t9, $a0
/* 312C8 800306C8 0019C8C0 */  sll        $t9, $t9, 3
/* 312CC 800306CC 0324C823 */  subu       $t9, $t9, $a0
/* 312D0 800306D0 3C0C8009 */  lui        $t4, %hi(textboxState)
/* 312D4 800306D4 258C05E0 */  addiu      $t4, $t4, %lo(textboxState)
/* 312D8 800306D8 0019C880 */  sll        $t9, $t9, 2
/* 312DC 800306DC 032C3821 */  addu       $a3, $t9, $t4
/* 312E0 800306E0 00E04025 */  or         $t0, $a3, $zero
/* 312E4 800306E4 240B00FF */  addiu      $t3, $zero, 0xff
.L800306E8:
/* 312E8 800306E8 910D003C */  lbu        $t5, 0x3c($t0)
/* 312EC 800306EC 00057080 */  sll        $t6, $a1, 2
/* 312F0 800306F0 00003025 */  or         $a2, $zero, $zero
/* 312F4 800306F4 116D000C */  beq        $t3, $t5, .L80030728
/* 312F8 800306F8 01C57023 */   subu      $t6, $t6, $a1
/* 312FC 800306FC 000E70C0 */  sll        $t6, $t6, 3
/* 31300 80030700 00EE2021 */  addu       $a0, $a3, $t6
/* 31304 80030704 9089003C */  lbu        $t1, 0x3c($a0)
/* 31308 80030708 29210080 */  slti       $at, $t1, 0x80
.L8003070C:
/* 3130C 8003070C 50200003 */  beql       $at, $zero, .L8003071C
/* 31310 80030710 9089003D */   lbu       $t1, 0x3d($a0)
/* 31314 80030714 24C60001 */  addiu      $a2, $a2, 1
/* 31318 80030718 9089003D */  lbu        $t1, 0x3d($a0)
.L8003071C:
/* 3131C 8003071C 24840001 */  addiu      $a0, $a0, 1
/* 31320 80030720 5569FFFA */  bnel       $t3, $t1, .L8003070C
/* 31324 80030724 29210080 */   slti      $at, $t1, 0x80
.L80030728:
/* 31328 80030728 0046082A */  slt        $at, $v0, $a2
/* 3132C 8003072C 10200002 */  beqz       $at, .L80030738
/* 31330 80030730 24A50001 */   addiu     $a1, $a1, 1
/* 31334 80030734 00C01025 */  or         $v0, $a2, $zero
.L80030738:
/* 31338 80030738 14A3FFEB */  bne        $a1, $v1, .L800306E8
/* 3133C 8003073C 25080018 */   addiu     $t0, $t0, 0x18
.L80030740:
/* 31340 80030740 000278C0 */  sll        $t7, $v0, 3
/* 31344 80030744 25F8001C */  addiu      $t8, $t7, 0x1c
/* 31348 80030748 A5580004 */  sh         $t8, 4($t2)
/* 3134C 8003074C 03E00008 */  jr         $ra
/* 31350 80030750 00000000 */   nop

glabel func_80030754
/* 31354 80030754 00A03025 */  or         $a2, $a1, $zero
/* 31358 80030758 0480000F */  bltz       $a0, .L80030798
/* 3135C 8003075C 2403FFFF */   addiu     $v1, $zero, -1
/* 31360 80030760 3C058009 */  lui        $a1, %hi(textboxState)
/* 31364 80030764 24A505E0 */  addiu      $a1, $a1, %lo(textboxState)
/* 31368 80030768 00001025 */  or         $v0, $zero, $zero
/* 3136C 8003076C 24070004 */  addiu      $a3, $zero, 4
.L80030770:
/* 31370 80030770 90AE000E */  lbu        $t6, 0xe($a1)
/* 31374 80030774 548E0004 */  bnel       $a0, $t6, .L80030788
/* 31378 80030778 24420001 */   addiu     $v0, $v0, 1
/* 3137C 8003077C 10000013 */  b          .L800307CC
/* 31380 80030780 00401825 */   or        $v1, $v0, $zero
/* 31384 80030784 24420001 */  addiu      $v0, $v0, 1
.L80030788:
/* 31388 80030788 1447FFF9 */  bne        $v0, $a3, .L80030770
/* 3138C 8003078C 24A5089C */   addiu     $a1, $a1, 0x89c
/* 31390 80030790 1000000F */  b          .L800307D0
/* 31394 80030794 00601025 */   or        $v0, $v1, $zero
.L80030798:
/* 31398 80030798 3C058009 */  lui        $a1, %hi(textboxState)
/* 3139C 8003079C 24A505E0 */  addiu      $a1, $a1, %lo(textboxState)
/* 313A0 800307A0 00001025 */  or         $v0, $zero, $zero
/* 313A4 800307A4 24070004 */  addiu      $a3, $zero, 4
.L800307A8:
/* 313A8 800307A8 8CAF0000 */  lw         $t7, ($a1)
/* 313AC 800307AC 31F80007 */  andi       $t8, $t7, 7
/* 313B0 800307B0 54D80004 */  bnel       $a2, $t8, .L800307C4
/* 313B4 800307B4 24420001 */   addiu     $v0, $v0, 1
/* 313B8 800307B8 10000004 */  b          .L800307CC
/* 313BC 800307BC 00401825 */   or        $v1, $v0, $zero
/* 313C0 800307C0 24420001 */  addiu      $v0, $v0, 1
.L800307C4:
/* 313C4 800307C4 1447FFF8 */  bne        $v0, $a3, .L800307A8
/* 313C8 800307C8 24A5089C */   addiu     $a1, $a1, 0x89c
.L800307CC:
/* 313CC 800307CC 00601025 */  or         $v0, $v1, $zero
.L800307D0:
/* 313D0 800307D0 03E00008 */  jr         $ra
/* 313D4 800307D4 00000000 */   nop

glabel func_800307D8
/* 313D8 800307D8 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* 313DC 800307DC AFB1000C */  sw         $s1, 0xc($sp)
/* 313E0 800307E0 AFB00008 */  sw         $s0, 8($sp)
/* 313E4 800307E4 00A08025 */  or         $s0, $a1, $zero
/* 313E8 800307E8 00C08825 */  or         $s1, $a2, $zero
/* 313EC 800307EC AFA400D0 */  sw         $a0, 0xd0($sp)
/* 313F0 800307F0 AFA700DC */  sw         $a3, 0xdc($sp)
/* 313F4 800307F4 3C0F8006 */  lui        $t7, %hi(D_8005FA20)
/* 313F8 800307F8 25EFFA20 */  addiu      $t7, $t7, %lo(D_8005FA20)
/* 313FC 800307FC 8DE10000 */  lw         $at, ($t7)
/* 31400 80030800 8DF90004 */  lw         $t9, 4($t7)
/* 31404 80030804 27AE00BC */  addiu      $t6, $sp, 0xbc
/* 31408 80030808 ADC10000 */  sw         $at, ($t6)
/* 3140C 8003080C ADD90004 */  sw         $t9, 4($t6)
/* 31410 80030810 8DF9000C */  lw         $t9, 0xc($t7)
/* 31414 80030814 8DE10008 */  lw         $at, 8($t7)
/* 31418 80030818 27B8005C */  addiu      $t8, $sp, 0x5c
/* 3141C 8003081C ADD9000C */  sw         $t9, 0xc($t6)
/* 31420 80030820 ADC10008 */  sw         $at, 8($t6)
/* 31424 80030824 3C0E8006 */  lui        $t6, %hi(D_8005FA30)
/* 31428 80030828 25CEFA30 */  addiu      $t6, $t6, %lo(D_8005FA30)
/* 3142C 8003082C 25D90060 */  addiu      $t9, $t6, 0x60
.L80030830:
/* 31430 80030830 8DC10000 */  lw         $at, ($t6)
/* 31434 80030834 25CE000C */  addiu      $t6, $t6, 0xc
/* 31438 80030838 2718000C */  addiu      $t8, $t8, 0xc
/* 3143C 8003083C AF01FFF4 */  sw         $at, -0xc($t8)
/* 31440 80030840 8DC1FFF8 */  lw         $at, -8($t6)
/* 31444 80030844 AF01FFF8 */  sw         $at, -8($t8)
/* 31448 80030848 8DC1FFFC */  lw         $at, -4($t6)
/* 3144C 8003084C 15D9FFF8 */  bne        $t6, $t9, .L80030830
/* 31450 80030850 AF01FFFC */   sw        $at, -4($t8)
/* 31454 80030854 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* 31458 80030858 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 3145C 8003085C 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 31460 80030860 29E10003 */  slti       $at, $t7, 3
/* 31464 80030864 14200003 */  bnez       $at, .L80030874
/* 31468 80030868 3C0CE700 */   lui       $t4, 0xe700
/* 3146C 8003086C 10000002 */  b          .L80030878
/* 31470 80030870 240A0003 */   addiu     $t2, $zero, 3
.L80030874:
/* 31474 80030874 8FAA00D0 */  lw         $t2, 0xd0($sp)
.L80030878:
/* 31478 80030878 3C0D0700 */  lui        $t5, 0x700
/* 3147C 8003087C 8C620000 */  lw         $v0, ($v1)
/* 31480 80030880 000AC080 */  sll        $t8, $t2, 2
/* 31484 80030884 030AC023 */  subu       $t8, $t8, $t2
/* 31488 80030888 24590008 */  addiu      $t9, $v0, 8
/* 3148C 8003088C AC790000 */  sw         $t9, ($v1)
/* 31490 80030890 AC400004 */  sw         $zero, 4($v0)
/* 31494 80030894 AC4C0000 */  sw         $t4, ($v0)
/* 31498 80030898 8C620000 */  lw         $v0, ($v1)
/* 3149C 8003089C 0018C0C0 */  sll        $t8, $t8, 3
/* 314A0 800308A0 27AF005C */  addiu      $t7, $sp, 0x5c
/* 314A4 800308A4 030F2021 */  addu       $a0, $t8, $t7
/* 314A8 800308A8 8C990000 */  lw         $t9, ($a0)
/* 314AC 800308AC 244E0008 */  addiu      $t6, $v0, 8
/* 314B0 800308B0 AC6E0000 */  sw         $t6, ($v1)
/* 314B4 800308B4 272EFFFF */  addiu      $t6, $t9, -1
/* 314B8 800308B8 31D80FFF */  andi       $t8, $t6, 0xfff
/* 314BC 800308BC 3C01FD48 */  lui        $at, 0xfd48
/* 314C0 800308C0 03017825 */  or         $t7, $t8, $at
/* 314C4 800308C4 000AC880 */  sll        $t9, $t2, 2
/* 314C8 800308C8 03B97021 */  addu       $t6, $sp, $t9
/* 314CC 800308CC AC4F0000 */  sw         $t7, ($v0)
/* 314D0 800308D0 8DCE00BC */  lw         $t6, 0xbc($t6)
/* 314D4 800308D4 AC4E0004 */  sw         $t6, 4($v0)
/* 314D8 800308D8 8C620000 */  lw         $v0, ($v1)
/* 314DC 800308DC 8C8F0000 */  lw         $t7, ($a0)
/* 314E0 800308E0 3C01F548 */  lui        $at, 0xf548
/* 314E4 800308E4 24580008 */  addiu      $t8, $v0, 8
/* 314E8 800308E8 25F90007 */  addiu      $t9, $t7, 7
/* 314EC 800308EC 001970C3 */  sra        $t6, $t9, 3
/* 314F0 800308F0 AC780000 */  sw         $t8, ($v1)
/* 314F4 800308F4 31D801FF */  andi       $t8, $t6, 0x1ff
/* 314F8 800308F8 00187A40 */  sll        $t7, $t8, 9
/* 314FC 800308FC 01E1C825 */  or         $t9, $t7, $at
/* 31500 80030900 AC590000 */  sw         $t9, ($v0)
/* 31504 80030904 8C8E0010 */  lw         $t6, 0x10($a0)
/* 31508 80030908 31D8000F */  andi       $t8, $t6, 0xf
/* 3150C 8003090C 8C8E000C */  lw         $t6, 0xc($a0)
/* 31510 80030910 00187900 */  sll        $t7, $t8, 4
/* 31514 80030914 01EDC825 */  or         $t9, $t7, $t5
/* 31518 80030918 31D80003 */  andi       $t8, $t6, 3
/* 3151C 8003091C 00187C80 */  sll        $t7, $t8, 0x12
/* 31520 80030920 8C980014 */  lw         $t8, 0x14($a0)
/* 31524 80030924 032F7025 */  or         $t6, $t9, $t7
/* 31528 80030928 3319000F */  andi       $t9, $t8, 0xf
/* 3152C 8003092C 00197B80 */  sll        $t7, $t9, 0xe
/* 31530 80030930 8C990008 */  lw         $t9, 8($a0)
/* 31534 80030934 01CFC025 */  or         $t8, $t6, $t7
/* 31538 80030938 332E0003 */  andi       $t6, $t9, 3
/* 3153C 8003093C 000E7A00 */  sll        $t7, $t6, 8
/* 31540 80030940 030FC825 */  or         $t9, $t8, $t7
/* 31544 80030944 AC590004 */  sw         $t9, 4($v0)
/* 31548 80030948 8C620000 */  lw         $v0, ($v1)
/* 3154C 8003094C 3C18E600 */  lui        $t8, 0xe600
/* 31550 80030950 244E0008 */  addiu      $t6, $v0, 8
/* 31554 80030954 AC6E0000 */  sw         $t6, ($v1)
/* 31558 80030958 AC400004 */  sw         $zero, 4($v0)
/* 3155C 8003095C AC580000 */  sw         $t8, ($v0)
/* 31560 80030960 8C620000 */  lw         $v0, ($v1)
/* 31564 80030964 3C19F400 */  lui        $t9, 0xf400
/* 31568 80030968 244F0008 */  addiu      $t7, $v0, 8
/* 3156C 8003096C AC6F0000 */  sw         $t7, ($v1)
/* 31570 80030970 AC590000 */  sw         $t9, ($v0)
/* 31574 80030974 8C8E0004 */  lw         $t6, 4($a0)
/* 31578 80030978 25D8FFFF */  addiu      $t8, $t6, -1
/* 3157C 8003097C 00187880 */  sll        $t7, $t8, 2
/* 31580 80030980 8C980000 */  lw         $t8, ($a0)
/* 31584 80030984 31F90FFF */  andi       $t9, $t7, 0xfff
/* 31588 80030988 032D7025 */  or         $t6, $t9, $t5
/* 3158C 8003098C 270FFFFF */  addiu      $t7, $t8, -1
/* 31590 80030990 000FC880 */  sll        $t9, $t7, 2
/* 31594 80030994 33380FFF */  andi       $t8, $t9, 0xfff
/* 31598 80030998 00187B00 */  sll        $t7, $t8, 0xc
/* 3159C 8003099C 01CFC825 */  or         $t9, $t6, $t7
/* 315A0 800309A0 AC590004 */  sw         $t9, 4($v0)
/* 315A4 800309A4 8C620000 */  lw         $v0, ($v1)
/* 315A8 800309A8 24580008 */  addiu      $t8, $v0, 8
/* 315AC 800309AC AC780000 */  sw         $t8, ($v1)
/* 315B0 800309B0 AC400004 */  sw         $zero, 4($v0)
/* 315B4 800309B4 AC4C0000 */  sw         $t4, ($v0)
/* 315B8 800309B8 8C620000 */  lw         $v0, ($v1)
/* 315BC 800309BC 8C8F0000 */  lw         $t7, ($a0)
/* 315C0 800309C0 3C01F548 */  lui        $at, 0xf548
/* 315C4 800309C4 244E0008 */  addiu      $t6, $v0, 8
/* 315C8 800309C8 25F90007 */  addiu      $t9, $t7, 7
/* 315CC 800309CC 0019C0C3 */  sra        $t8, $t9, 3
/* 315D0 800309D0 AC6E0000 */  sw         $t6, ($v1)
/* 315D4 800309D4 330E01FF */  andi       $t6, $t8, 0x1ff
/* 315D8 800309D8 000E7A40 */  sll        $t7, $t6, 9
/* 315DC 800309DC 01E1C825 */  or         $t9, $t7, $at
/* 315E0 800309E0 AC590000 */  sw         $t9, ($v0)
/* 315E4 800309E4 8C980010 */  lw         $t8, 0x10($a0)
/* 315E8 800309E8 8C99000C */  lw         $t9, 0xc($a0)
/* 315EC 800309EC 330E000F */  andi       $t6, $t8, 0xf
/* 315F0 800309F0 000E7900 */  sll        $t7, $t6, 4
/* 315F4 800309F4 33380003 */  andi       $t8, $t9, 3
/* 315F8 800309F8 00187480 */  sll        $t6, $t8, 0x12
/* 315FC 800309FC 8C980014 */  lw         $t8, 0x14($a0)
/* 31600 80030A00 01EEC825 */  or         $t9, $t7, $t6
/* 31604 80030A04 330F000F */  andi       $t7, $t8, 0xf
/* 31608 80030A08 000F7380 */  sll        $t6, $t7, 0xe
/* 3160C 80030A0C 8C8F0008 */  lw         $t7, 8($a0)
/* 31610 80030A10 032EC025 */  or         $t8, $t9, $t6
/* 31614 80030A14 31F90003 */  andi       $t9, $t7, 3
/* 31618 80030A18 00197200 */  sll        $t6, $t9, 8
/* 3161C 80030A1C 030E7825 */  or         $t7, $t8, $t6
/* 31620 80030A20 AC4F0004 */  sw         $t7, 4($v0)
/* 31624 80030A24 8C620000 */  lw         $v0, ($v1)
/* 31628 80030A28 3C18F200 */  lui        $t8, 0xf200
/* 3162C 80030A2C 24590008 */  addiu      $t9, $v0, 8
/* 31630 80030A30 AC790000 */  sw         $t9, ($v1)
/* 31634 80030A34 AC580000 */  sw         $t8, ($v0)
/* 31638 80030A38 8C8E0004 */  lw         $t6, 4($a0)
/* 3163C 80030A3C 25CFFFFF */  addiu      $t7, $t6, -1
/* 31640 80030A40 8C8E0000 */  lw         $t6, ($a0)
/* 31644 80030A44 000FC880 */  sll        $t9, $t7, 2
/* 31648 80030A48 33380FFF */  andi       $t8, $t9, 0xfff
/* 3164C 80030A4C 25CFFFFF */  addiu      $t7, $t6, -1
/* 31650 80030A50 000FC880 */  sll        $t9, $t7, 2
/* 31654 80030A54 332E0FFF */  andi       $t6, $t9, 0xfff
/* 31658 80030A58 000E7B00 */  sll        $t7, $t6, 0xc
/* 3165C 80030A5C 030FC825 */  or         $t9, $t8, $t7
/* 31660 80030A60 AC590004 */  sw         $t9, 4($v0)
/* 31664 80030A64 8C620000 */  lw         $v0, ($v1)
/* 31668 80030A68 244E0008 */  addiu      $t6, $v0, 8
/* 3166C 80030A6C AC6E0000 */  sw         $t6, ($v1)
/* 31670 80030A70 AC400004 */  sw         $zero, 4($v0)
/* 31674 80030A74 AC4C0000 */  sw         $t4, ($v0)
/* 31678 80030A78 8FB800D0 */  lw         $t8, 0xd0($sp)
/* 3167C 80030A7C 5700002F */  bnel       $t8, $zero, .L80030B3C
/* 31680 80030A80 8C620000 */   lw        $v0, ($v1)
/* 31684 80030A84 8C620000 */  lw         $v0, ($v1)
/* 31688 80030A88 8FB900DC */  lw         $t9, 0xdc($sp)
/* 3168C 80030A8C 3C01E400 */  lui        $at, 0xe400
/* 31690 80030A90 244F0008 */  addiu      $t7, $v0, 8
/* 31694 80030A94 02197021 */  addu       $t6, $s0, $t9
/* 31698 80030A98 000EC080 */  sll        $t8, $t6, 2
/* 3169C 80030A9C AC6F0000 */  sw         $t7, ($v1)
/* 316A0 80030AA0 330F0FFF */  andi       $t7, $t8, 0xfff
/* 316A4 80030AA4 8FB800E0 */  lw         $t8, 0xe0($sp)
/* 316A8 80030AA8 000FCB00 */  sll        $t9, $t7, 0xc
/* 316AC 80030AAC 03217025 */  or         $t6, $t9, $at
/* 316B0 80030AB0 02387821 */  addu       $t7, $s1, $t8
/* 316B4 80030AB4 000FC880 */  sll        $t9, $t7, 2
/* 316B8 80030AB8 33380FFF */  andi       $t8, $t9, 0xfff
/* 316BC 80030ABC 01D87825 */  or         $t7, $t6, $t8
/* 316C0 80030AC0 0010C880 */  sll        $t9, $s0, 2
/* 316C4 80030AC4 332E0FFF */  andi       $t6, $t9, 0xfff
/* 316C8 80030AC8 AC4F0000 */  sw         $t7, ($v0)
/* 316CC 80030ACC 00117880 */  sll        $t7, $s1, 2
/* 316D0 80030AD0 31F90FFF */  andi       $t9, $t7, 0xfff
/* 316D4 80030AD4 000EC300 */  sll        $t8, $t6, 0xc
/* 316D8 80030AD8 03197025 */  or         $t6, $t8, $t9
/* 316DC 80030ADC AC4E0004 */  sw         $t6, 4($v0)
/* 316E0 80030AE0 8C620000 */  lw         $v0, ($v1)
/* 316E4 80030AE4 3C18B400 */  lui        $t8, 0xb400
/* 316E8 80030AE8 3239000F */  andi       $t9, $s1, 0xf
/* 316EC 80030AEC 244F0008 */  addiu      $t7, $v0, 8
/* 316F0 80030AF0 AC6F0000 */  sw         $t7, ($v1)
/* 316F4 80030AF4 320F000F */  andi       $t7, $s0, 0xf
/* 316F8 80030AF8 AC580000 */  sw         $t8, ($v0)
/* 316FC 80030AFC 000FC540 */  sll        $t8, $t7, 0x15
/* 31700 80030B00 00197140 */  sll        $t6, $t9, 5
/* 31704 80030B04 31CFFFFF */  andi       $t7, $t6, 0xffff
/* 31708 80030B08 030FC825 */  or         $t9, $t8, $t7
/* 3170C 80030B0C AC590004 */  sw         $t9, 4($v0)
/* 31710 80030B10 8C620000 */  lw         $v0, ($v1)
/* 31714 80030B14 3C0F0400 */  lui        $t7, 0x400
/* 31718 80030B18 35EF0400 */  ori        $t7, $t7, 0x400
/* 3171C 80030B1C 244E0008 */  addiu      $t6, $v0, 8
/* 31720 80030B20 AC6E0000 */  sw         $t6, ($v1)
/* 31724 80030B24 3C18B300 */  lui        $t8, 0xb300
/* 31728 80030B28 AC580000 */  sw         $t8, ($v0)
/* 3172C 80030B2C AC4F0004 */  sw         $t7, 4($v0)
/* 31730 80030B30 10000027 */  b          .L80030BD0
/* 31734 80030B34 8C620000 */   lw        $v0, ($v1)
/* 31738 80030B38 8C620000 */  lw         $v0, ($v1)
.L80030B3C:
/* 3173C 80030B3C 8FAE00DC */  lw         $t6, 0xdc($sp)
/* 31740 80030B40 3C01E400 */  lui        $at, 0xe400
/* 31744 80030B44 24590008 */  addiu      $t9, $v0, 8
/* 31748 80030B48 020EC021 */  addu       $t8, $s0, $t6
/* 3174C 80030B4C 00187880 */  sll        $t7, $t8, 2
/* 31750 80030B50 AC790000 */  sw         $t9, ($v1)
/* 31754 80030B54 31F90FFF */  andi       $t9, $t7, 0xfff
/* 31758 80030B58 8FAF00E0 */  lw         $t7, 0xe0($sp)
/* 3175C 80030B5C 00197300 */  sll        $t6, $t9, 0xc
/* 31760 80030B60 01C1C025 */  or         $t8, $t6, $at
/* 31764 80030B64 022FC821 */  addu       $t9, $s1, $t7
/* 31768 80030B68 00197080 */  sll        $t6, $t9, 2
/* 3176C 80030B6C 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 31770 80030B70 030FC825 */  or         $t9, $t8, $t7
/* 31774 80030B74 00107080 */  sll        $t6, $s0, 2
/* 31778 80030B78 31D80FFF */  andi       $t8, $t6, 0xfff
/* 3177C 80030B7C AC590000 */  sw         $t9, ($v0)
/* 31780 80030B80 0011C880 */  sll        $t9, $s1, 2
/* 31784 80030B84 332E0FFF */  andi       $t6, $t9, 0xfff
/* 31788 80030B88 00187B00 */  sll        $t7, $t8, 0xc
/* 3178C 80030B8C 01EEC025 */  or         $t8, $t7, $t6
/* 31790 80030B90 AC580004 */  sw         $t8, 4($v0)
/* 31794 80030B94 8C620000 */  lw         $v0, ($v1)
/* 31798 80030B98 3C0FB400 */  lui        $t7, 0xb400
/* 3179C 80030B9C 3C18B300 */  lui        $t8, 0xb300
/* 317A0 80030BA0 24590008 */  addiu      $t9, $v0, 8
/* 317A4 80030BA4 AC790000 */  sw         $t9, ($v1)
/* 317A8 80030BA8 AC400004 */  sw         $zero, 4($v0)
/* 317AC 80030BAC AC4F0000 */  sw         $t7, ($v0)
/* 317B0 80030BB0 8C620000 */  lw         $v0, ($v1)
/* 317B4 80030BB4 3C190400 */  lui        $t9, 0x400
/* 317B8 80030BB8 37390400 */  ori        $t9, $t9, 0x400
/* 317BC 80030BBC 244E0008 */  addiu      $t6, $v0, 8
/* 317C0 80030BC0 AC6E0000 */  sw         $t6, ($v1)
/* 317C4 80030BC4 AC590004 */  sw         $t9, 4($v0)
/* 317C8 80030BC8 AC580000 */  sw         $t8, ($v0)
/* 317CC 80030BCC 8C620000 */  lw         $v0, ($v1)
.L80030BD0:
/* 317D0 80030BD0 244F0008 */  addiu      $t7, $v0, 8
/* 317D4 80030BD4 AC6F0000 */  sw         $t7, ($v1)
/* 317D8 80030BD8 AC400004 */  sw         $zero, 4($v0)
/* 317DC 80030BDC AC4C0000 */  sw         $t4, ($v0)
/* 317E0 80030BE0 8FB00008 */  lw         $s0, 8($sp)
/* 317E4 80030BE4 8FB1000C */  lw         $s1, 0xc($sp)
/* 317E8 80030BE8 03E00008 */  jr         $ra
/* 317EC 80030BEC 27BD00D0 */   addiu     $sp, $sp, 0xd0

glabel func_80030BF0
/* 317F0 80030BF0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 317F4 80030BF4 AFB30028 */  sw         $s3, 0x28($sp)
/* 317F8 80030BF8 AFB20024 */  sw         $s2, 0x24($sp)
/* 317FC 80030BFC AFB10020 */  sw         $s1, 0x20($sp)
/* 31800 80030C00 AFB0001C */  sw         $s0, 0x1c($sp)
/* 31804 80030C04 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 31808 80030C08 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 3180C 80030C0C 00C08025 */  or         $s0, $a2, $zero
/* 31810 80030C10 00808825 */  or         $s1, $a0, $zero
/* 31814 80030C14 00A09025 */  or         $s2, $a1, $zero
/* 31818 80030C18 00E09825 */  or         $s3, $a3, $zero
/* 3181C 80030C1C AFBF002C */  sw         $ra, 0x2c($sp)
/* 31820 80030C20 8C620000 */  lw         $v0, ($v1)
/* 31824 80030C24 3C0FE700 */  lui        $t7, 0xe700
/* 31828 80030C28 00002025 */  or         $a0, $zero, $zero
/* 3182C 80030C2C 244E0008 */  addiu      $t6, $v0, 8
/* 31830 80030C30 AC6E0000 */  sw         $t6, ($v1)
/* 31834 80030C34 AC400004 */  sw         $zero, 4($v0)
/* 31838 80030C38 AC4F0000 */  sw         $t7, ($v0)
/* 3183C 80030C3C 8C620000 */  lw         $v0, ($v1)
/* 31840 80030C40 3C19FB00 */  lui        $t9, 0xfb00
/* 31844 80030C44 240AFFCC */  addiu      $t2, $zero, -0x34
/* 31848 80030C48 24580008 */  addiu      $t8, $v0, 8
/* 3184C 80030C4C AC780000 */  sw         $t8, ($v1)
/* 31850 80030C50 AC4A0004 */  sw         $t2, 4($v0)
/* 31854 80030C54 AC590000 */  sw         $t9, ($v0)
/* 31858 80030C58 02202825 */  or         $a1, $s1, $zero
/* 3185C 80030C5C 02403025 */  or         $a2, $s2, $zero
/* 31860 80030C60 02003825 */  or         $a3, $s0, $zero
/* 31864 80030C64 0C00C1F6 */  jal        func_800307D8
/* 31868 80030C68 AFB30010 */   sw        $s3, 0x10($sp)
/* 3186C 80030C6C 02302821 */  addu       $a1, $s1, $s0
/* 31870 80030C70 AFA50034 */  sw         $a1, 0x34($sp)
/* 31874 80030C74 24040003 */  addiu      $a0, $zero, 3
/* 31878 80030C78 26460002 */  addiu      $a2, $s2, 2
/* 3187C 80030C7C 24070002 */  addiu      $a3, $zero, 2
/* 31880 80030C80 0C00C1F6 */  jal        func_800307D8
/* 31884 80030C84 AFB30010 */   sw        $s3, 0x10($sp)
/* 31888 80030C88 02533021 */  addu       $a2, $s2, $s3
/* 3188C 80030C8C 240B0002 */  addiu      $t3, $zero, 2
/* 31890 80030C90 AFAB0010 */  sw         $t3, 0x10($sp)
/* 31894 80030C94 AFA60030 */  sw         $a2, 0x30($sp)
/* 31898 80030C98 24040003 */  addiu      $a0, $zero, 3
/* 3189C 80030C9C 26250002 */  addiu      $a1, $s1, 2
/* 318A0 80030CA0 0C00C1F6 */  jal        func_800307D8
/* 318A4 80030CA4 02003825 */   or        $a3, $s0, $zero
/* 318A8 80030CA8 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 318AC 80030CAC 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 318B0 80030CB0 8C620000 */  lw         $v0, ($v1)
/* 318B4 80030CB4 3C0DE700 */  lui        $t5, 0xe700
/* 318B8 80030CB8 24040003 */  addiu      $a0, $zero, 3
/* 318BC 80030CBC 244C0008 */  addiu      $t4, $v0, 8
/* 318C0 80030CC0 AC6C0000 */  sw         $t4, ($v1)
/* 318C4 80030CC4 AC400004 */  sw         $zero, 4($v0)
/* 318C8 80030CC8 AC4D0000 */  sw         $t5, ($v0)
/* 318CC 80030CCC 8C620000 */  lw         $v0, ($v1)
/* 318D0 80030CD0 3C0FFB00 */  lui        $t7, 0xfb00
/* 318D4 80030CD4 2418FFFF */  addiu      $t8, $zero, -1
/* 318D8 80030CD8 244E0008 */  addiu      $t6, $v0, 8
/* 318DC 80030CDC AC6E0000 */  sw         $t6, ($v1)
/* 318E0 80030CE0 AC580004 */  sw         $t8, 4($v0)
/* 318E4 80030CE4 AC4F0000 */  sw         $t7, ($v0)
/* 318E8 80030CE8 24190001 */  addiu      $t9, $zero, 1
/* 318EC 80030CEC AFB90010 */  sw         $t9, 0x10($sp)
/* 318F0 80030CF0 02202825 */  or         $a1, $s1, $zero
/* 318F4 80030CF4 02403025 */  or         $a2, $s2, $zero
/* 318F8 80030CF8 0C00C1F6 */  jal        func_800307D8
/* 318FC 80030CFC 02003825 */   or        $a3, $s0, $zero
/* 31900 80030D00 8FA60030 */  lw         $a2, 0x30($sp)
/* 31904 80030D04 240A0001 */  addiu      $t2, $zero, 1
/* 31908 80030D08 AFAA0010 */  sw         $t2, 0x10($sp)
/* 3190C 80030D0C 24040003 */  addiu      $a0, $zero, 3
/* 31910 80030D10 02202825 */  or         $a1, $s1, $zero
/* 31914 80030D14 02003825 */  or         $a3, $s0, $zero
/* 31918 80030D18 0C00C1F6 */  jal        func_800307D8
/* 3191C 80030D1C 24C6FFFF */   addiu     $a2, $a2, -1
/* 31920 80030D20 24040003 */  addiu      $a0, $zero, 3
/* 31924 80030D24 02202825 */  or         $a1, $s1, $zero
/* 31928 80030D28 02403025 */  or         $a2, $s2, $zero
/* 3192C 80030D2C 24070001 */  addiu      $a3, $zero, 1
/* 31930 80030D30 0C00C1F6 */  jal        func_800307D8
/* 31934 80030D34 AFB30010 */   sw        $s3, 0x10($sp)
/* 31938 80030D38 8FA50034 */  lw         $a1, 0x34($sp)
/* 3193C 80030D3C 24040003 */  addiu      $a0, $zero, 3
/* 31940 80030D40 02403025 */  or         $a2, $s2, $zero
/* 31944 80030D44 24070001 */  addiu      $a3, $zero, 1
/* 31948 80030D48 AFB30010 */  sw         $s3, 0x10($sp)
/* 3194C 80030D4C 0C00C1F6 */  jal        func_800307D8
/* 31950 80030D50 24A5FFFF */   addiu     $a1, $a1, -1
/* 31954 80030D54 8FBF002C */  lw         $ra, 0x2c($sp)
/* 31958 80030D58 8FB0001C */  lw         $s0, 0x1c($sp)
/* 3195C 80030D5C 8FB10020 */  lw         $s1, 0x20($sp)
/* 31960 80030D60 8FB20024 */  lw         $s2, 0x24($sp)
/* 31964 80030D64 8FB30028 */  lw         $s3, 0x28($sp)
/* 31968 80030D68 03E00008 */  jr         $ra
/* 3196C 80030D6C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel VOID_FUN_80030d70
/* 31970 80030D70 3C018009 */  lui        $at, %hi(D_80092852)
/* 31974 80030D74 A4202852 */  sh         $zero, %lo(D_80092852)($at)
/* 31978 80030D78 03E00008 */  jr         $ra
/* 3197C 80030D7C 00000000 */   nop

glabel VOID_FUN_80030d80
/* 31980 80030D80 3C0E8009 */  lui        $t6, %hi(D_80092850)
/* 31984 80030D84 91CE2850 */  lbu        $t6, %lo(D_80092850)($t6)
/* 31988 80030D88 00001825 */  or         $v1, $zero, $zero
/* 3198C 80030D8C 3C048009 */  lui        $a0, %hi(JoystickX)
/* 31990 80030D90 51C0001B */  beql       $t6, $zero, .L80030E00
/* 31994 80030D94 00601025 */   or        $v0, $v1, $zero
/* 31998 80030D98 80842871 */  lb         $a0, %lo(JoystickX)($a0)
/* 3199C 80030D9C 3C058009 */  lui        $a1, %hi(JoystickY)
/* 319A0 80030DA0 80A52872 */  lb         $a1, %lo(JoystickY)($a1)
/* 319A4 80030DA4 00840019 */  multu      $a0, $a0
/* 319A8 80030DA8 00007812 */  mflo       $t7
/* 319AC 80030DAC 00000000 */  nop
/* 319B0 80030DB0 00000000 */  nop
/* 319B4 80030DB4 00A50019 */  multu      $a1, $a1
/* 319B8 80030DB8 0000C012 */  mflo       $t8
/* 319BC 80030DBC 01F81021 */  addu       $v0, $t7, $t8
/* 319C0 80030DC0 2C410E11 */  sltiu      $at, $v0, 0xe11
/* 319C4 80030DC4 1420000B */  bnez       $at, .L80030DF4
/* 319C8 80030DC8 3C028009 */   lui       $v0, 0x8009
/* 319CC 80030DCC 3C028009 */  lui        $v0, %hi(D_80092852)
/* 319D0 80030DD0 24422852 */  addiu      $v0, $v0, %lo(D_80092852)
/* 319D4 80030DD4 94590000 */  lhu        $t9, ($v0)
/* 319D8 80030DD8 27280001 */  addiu      $t0, $t9, 1
/* 319DC 80030DDC 3109FFFF */  andi       $t1, $t0, 0xffff
/* 319E0 80030DE0 29210005 */  slti       $at, $t1, 5
/* 319E4 80030DE4 14200005 */  bnez       $at, .L80030DFC
/* 319E8 80030DE8 A4480000 */   sh        $t0, ($v0)
/* 319EC 80030DEC 10000003 */  b          .L80030DFC
/* 319F0 80030DF0 24030001 */   addiu     $v1, $zero, 1
.L80030DF4:
/* 319F4 80030DF4 24422852 */  addiu      $v0, $v0, 0x2852
/* 319F8 80030DF8 A4400000 */  sh         $zero, ($v0)
.L80030DFC:
/* 319FC 80030DFC 00601025 */  or         $v0, $v1, $zero
.L80030E00:
/* 31A00 80030E00 03E00008 */  jr         $ra
/* 31A04 80030E04 00000000 */   nop
/* 31A08 80030E08 00000000 */  nop
/* 31A0C 80030E0C 00000000 */  nop
