glabel func_8003E5F0
/* 3F1F0 8003E5F0 3C0EA404 */  lui        $t6, 0xa404
/* 3F1F4 8003E5F4 8DC40010 */  lw         $a0, 0x10($t6)
/* 3F1F8 8003E5F8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 3F1FC 8003E5FC 308F001C */  andi       $t7, $a0, 0x1c
/* 3F200 8003E600 11E00003 */  beqz       $t7, .L8003E610
/* 3F204 8003E604 00000000 */   nop       
/* 3F208 8003E608 10000002 */  b          .L8003E614
/* 3F20C 8003E60C 24020001 */   addiu     $v0, $zero, 1
.L8003E610:
/* 3F210 8003E610 00001025 */  or         $v0, $zero, $zero
.L8003E614:
/* 3F214 8003E614 03E00008 */  jr         $ra
/* 3F218 8003E618 27BD0008 */   addiu     $sp, $sp, 8
/* 3F21C 8003E61C 00000000 */  nop        

glabel func_8003E620
/* 3F220 8003E620 3C018009 */  lui        $at, 0x8009
/* 3F224 8003E624 240E0000 */  addiu      $t6, $zero, 0
/* 3F228 8003E628 240F0000 */  addiu      $t7, $zero, 0
/* 3F22C 8003E62C AC2F5624 */  sw         $t7, 0x5624($at)
/* 3F230 8003E630 AC2E5620 */  sw         $t6, 0x5620($at)
/* 3F234 8003E634 3C018009 */  lui        $at, 0x8009
/* 3F238 8003E638 3C188007 */  lui        $t8, 0x8007
/* 3F23C 8003E63C 8F180A90 */  lw         $t8, 0xa90($t8)
/* 3F240 8003E640 AC205628 */  sw         $zero, 0x5628($at)
/* 3F244 8003E644 3C018009 */  lui        $at, 0x8009
/* 3F248 8003E648 AC20562C */  sw         $zero, 0x562c($at)
/* 3F24C 8003E64C 3C198007 */  lui        $t9, 0x8007
/* 3F250 8003E650 AF180004 */  sw         $t8, 4($t8)
/* 3F254 8003E654 8F390A90 */  lw         $t9, 0xa90($t9)
/* 3F258 8003E658 3C098007 */  lui        $t1, 0x8007
/* 3F25C 8003E65C 240A0000 */  addiu      $t2, $zero, 0
/* 3F260 8003E660 8F280004 */  lw         $t0, 4($t9)
/* 3F264 8003E664 240B0000 */  addiu      $t3, $zero, 0
/* 3F268 8003E668 3C0C8007 */  lui        $t4, 0x8007
/* 3F26C 8003E66C AF280000 */  sw         $t0, ($t9)
/* 3F270 8003E670 8D290A90 */  lw         $t1, 0xa90($t1)
/* 3F274 8003E674 3C0D8007 */  lui        $t5, 0x8007
/* 3F278 8003E678 3C188007 */  lui        $t8, 0x8007
/* 3F27C 8003E67C AD2A0010 */  sw         $t2, 0x10($t1)
/* 3F280 8003E680 AD2B0014 */  sw         $t3, 0x14($t1)
/* 3F284 8003E684 8D8C0A90 */  lw         $t4, 0xa90($t4)
/* 3F288 8003E688 8D8E0010 */  lw         $t6, 0x10($t4)
/* 3F28C 8003E68C 8D8F0014 */  lw         $t7, 0x14($t4)
/* 3F290 8003E690 AD8E0008 */  sw         $t6, 8($t4)
/* 3F294 8003E694 AD8F000C */  sw         $t7, 0xc($t4)
/* 3F298 8003E698 8DAD0A90 */  lw         $t5, 0xa90($t5)
/* 3F29C 8003E69C ADA00018 */  sw         $zero, 0x18($t5)
/* 3F2A0 8003E6A0 8F180A90 */  lw         $t8, 0xa90($t8)
/* 3F2A4 8003E6A4 03E00008 */  jr         $ra
/* 3F2A8 8003E6A8 AF00001C */   sw        $zero, 0x1c($t8)

glabel func_8003E6AC
/* 3F2AC 8003E6AC 3C0E8007 */  lui        $t6, 0x8007
/* 3F2B0 8003E6B0 8DCE0A90 */  lw         $t6, 0xa90($t6)
/* 3F2B4 8003E6B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F2B8 8003E6B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F2BC 8003E6BC 8DCF0000 */  lw         $t7, ($t6)
/* 3F2C0 8003E6C0 11EE0054 */  beq        $t7, $t6, .L8003E814
/* 3F2C4 8003E6C4 00000000 */   nop       
.L8003E6C8:
/* 3F2C8 8003E6C8 3C188007 */  lui        $t8, 0x8007
/* 3F2CC 8003E6CC 8F180A90 */  lw         $t8, 0xa90($t8)
/* 3F2D0 8003E6D0 8F190000 */  lw         $t9, ($t8)
/* 3F2D4 8003E6D4 17380006 */  bne        $t9, $t8, .L8003E6F0
/* 3F2D8 8003E6D8 AFB90024 */   sw        $t9, 0x24($sp)
/* 3F2DC 8003E6DC 0C011F34 */  jal        func_80047CD0
/* 3F2E0 8003E6E0 00002025 */   or        $a0, $zero, $zero
/* 3F2E4 8003E6E4 3C018009 */  lui        $at, 0x8009
/* 3F2E8 8003E6E8 1000004A */  b          .L8003E814
/* 3F2EC 8003E6EC AC205630 */   sw        $zero, 0x5630($at)
.L8003E6F0:
/* 3F2F0 8003E6F0 0C00FB64 */  jal        func_8003ED90
/* 3F2F4 8003E6F4 00000000 */   nop       
/* 3F2F8 8003E6F8 AFA20020 */  sw         $v0, 0x20($sp)
/* 3F2FC 8003E6FC 3C098009 */  lui        $t1, 0x8009
/* 3F300 8003E700 8D295630 */  lw         $t1, 0x5630($t1)
/* 3F304 8003E704 8FA80020 */  lw         $t0, 0x20($sp)
/* 3F308 8003E708 8FAF0024 */  lw         $t7, 0x24($sp)
/* 3F30C 8003E70C 3C018009 */  lui        $at, 0x8009
/* 3F310 8003E710 01095023 */  subu       $t2, $t0, $t1
/* 3F314 8003E714 AFAA001C */  sw         $t2, 0x1c($sp)
/* 3F318 8003E718 AC285630 */  sw         $t0, 0x5630($at)
/* 3F31C 8003E71C 8DEE0010 */  lw         $t6, 0x10($t7)
/* 3F320 8003E720 8FAB001C */  lw         $t3, 0x1c($sp)
/* 3F324 8003E724 240C0000 */  addiu      $t4, $zero, 0
/* 3F328 8003E728 01E0C825 */  or         $t9, $t7, $zero
/* 3F32C 8003E72C 01CC082B */  sltu       $at, $t6, $t4
/* 3F330 8003E730 8DEF0014 */  lw         $t7, 0x14($t7)
/* 3F334 8003E734 14200016 */  bnez       $at, .L8003E790
/* 3F338 8003E738 01606825 */   or        $t5, $t3, $zero
/* 3F33C 8003E73C 018E082B */  sltu       $at, $t4, $t6
/* 3F340 8003E740 14200003 */  bnez       $at, .L8003E750
/* 3F344 8003E744 01AF082B */   sltu      $at, $t5, $t7
/* 3F348 8003E748 10200011 */  beqz       $at, .L8003E790
/* 3F34C 8003E74C 00000000 */   nop       
.L8003E750:
/* 3F350 8003E750 27380010 */  addiu      $t8, $t9, 0x10
/* 3F354 8003E754 AFB80018 */  sw         $t8, 0x18($sp)
/* 3F358 8003E758 8F2B0014 */  lw         $t3, 0x14($t9)
/* 3F35C 8003E75C 8F2A0010 */  lw         $t2, 0x10($t9)
/* 3F360 8003E760 016D082B */  sltu       $at, $t3, $t5
/* 3F364 8003E764 014C4023 */  subu       $t0, $t2, $t4
/* 3F368 8003E768 01014023 */  subu       $t0, $t0, $at
/* 3F36C 8003E76C 016D4823 */  subu       $t1, $t3, $t5
/* 3F370 8003E770 AF290014 */  sw         $t1, 0x14($t9)
/* 3F374 8003E774 AF280010 */  sw         $t0, 0x10($t9)
/* 3F378 8003E778 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3F37C 8003E77C 8DC40010 */  lw         $a0, 0x10($t6)
/* 3F380 8003E780 0C00FA09 */  jal        func_8003E824
/* 3F384 8003E784 8DC50014 */   lw        $a1, 0x14($t6)
/* 3F388 8003E788 10000022 */  b          .L8003E814
/* 3F38C 8003E78C 00000000 */   nop       
.L8003E790:
/* 3F390 8003E790 8FAF0024 */  lw         $t7, 0x24($sp)
/* 3F394 8003E794 8DF80000 */  lw         $t8, ($t7)
/* 3F398 8003E798 8DEA0004 */  lw         $t2, 4($t7)
/* 3F39C 8003E79C AD580000 */  sw         $t8, ($t2)
/* 3F3A0 8003E7A0 8FAB0024 */  lw         $t3, 0x24($sp)
/* 3F3A4 8003E7A4 8D6C0004 */  lw         $t4, 4($t3)
/* 3F3A8 8003E7A8 8D6D0000 */  lw         $t5, ($t3)
/* 3F3AC 8003E7AC ADAC0004 */  sw         $t4, 4($t5)
/* 3F3B0 8003E7B0 8FA80024 */  lw         $t0, 0x24($sp)
/* 3F3B4 8003E7B4 AD000000 */  sw         $zero, ($t0)
/* 3F3B8 8003E7B8 8FA90024 */  lw         $t1, 0x24($sp)
/* 3F3BC 8003E7BC AD200004 */  sw         $zero, 4($t1)
/* 3F3C0 8003E7C0 8FB90024 */  lw         $t9, 0x24($sp)
/* 3F3C4 8003E7C4 8F2E0018 */  lw         $t6, 0x18($t9)
/* 3F3C8 8003E7C8 11C00005 */  beqz       $t6, .L8003E7E0
/* 3F3CC 8003E7CC 00000000 */   nop       
/* 3F3D0 8003E7D0 01C02025 */  or         $a0, $t6, $zero
/* 3F3D4 8003E7D4 8F25001C */  lw         $a1, 0x1c($t9)
/* 3F3D8 8003E7D8 0C00D080 */  jal        func_80034200
/* 3F3DC 8003E7DC 00003025 */   or        $a2, $zero, $zero
.L8003E7E0:
/* 3F3E0 8003E7E0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 3F3E4 8003E7E4 8DF80008 */  lw         $t8, 8($t7)
/* 3F3E8 8003E7E8 8DF9000C */  lw         $t9, 0xc($t7)
/* 3F3EC 8003E7EC 17000003 */  bnez       $t8, .L8003E7FC
/* 3F3F0 8003E7F0 00000000 */   nop       
/* 3F3F4 8003E7F4 1320FFB4 */  beqz       $t9, .L8003E6C8
/* 3F3F8 8003E7F8 00000000 */   nop       
.L8003E7FC:
/* 3F3FC 8003E7FC ADF80010 */  sw         $t8, 0x10($t7)
/* 3F400 8003E800 ADF90014 */  sw         $t9, 0x14($t7)
/* 3F404 8003E804 0C00FA26 */  jal        func_8003E898
/* 3F408 8003E808 8FA40024 */   lw        $a0, 0x24($sp)
/* 3F40C 8003E80C 1000FFAE */  b          .L8003E6C8
/* 3F410 8003E810 00000000 */   nop       
.L8003E814:
/* 3F414 8003E814 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F418 8003E818 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3F41C 8003E81C 03E00008 */  jr         $ra
/* 3F420 8003E820 00000000 */   nop       

glabel func_8003E824
/* 3F424 8003E824 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F428 8003E828 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F42C 8003E82C AFA40028 */  sw         $a0, 0x28($sp)
/* 3F430 8003E830 0C00F534 */  jal        func_8003D4D0
/* 3F434 8003E834 AFA5002C */   sw        $a1, 0x2c($sp)
/* 3F438 8003E838 0C00FB64 */  jal        func_8003ED90
/* 3F43C 8003E83C AFA2001C */   sw        $v0, 0x1c($sp)
/* 3F440 8003E840 3C018009 */  lui        $at, 0x8009
/* 3F444 8003E844 AC225630 */  sw         $v0, 0x5630($at)
/* 3F448 8003E848 3C0E8009 */  lui        $t6, 0x8009
/* 3F44C 8003E84C 8DCE5630 */  lw         $t6, 0x5630($t6)
/* 3F450 8003E850 8FA9002C */  lw         $t1, 0x2c($sp)
/* 3F454 8003E854 8FA80028 */  lw         $t0, 0x28($sp)
/* 3F458 8003E858 01C0C825 */  or         $t9, $t6, $zero
/* 3F45C 8003E85C 03295821 */  addu       $t3, $t9, $t1
/* 3F460 8003E860 24180000 */  addiu      $t8, $zero, 0
/* 3F464 8003E864 0169082B */  sltu       $at, $t3, $t1
/* 3F468 8003E868 00385021 */  addu       $t2, $at, $t8
/* 3F46C 8003E86C 01485021 */  addu       $t2, $t2, $t0
/* 3F470 8003E870 AFAA0020 */  sw         $t2, 0x20($sp)
/* 3F474 8003E874 AFAB0024 */  sw         $t3, 0x24($sp)
/* 3F478 8003E878 0C011F34 */  jal        func_80047CD0
/* 3F47C 8003E87C 01602025 */   or        $a0, $t3, $zero
/* 3F480 8003E880 0C00F53C */  jal        func_8003D4F0
/* 3F484 8003E884 8FA4001C */   lw        $a0, 0x1c($sp)
/* 3F488 8003E888 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F48C 8003E88C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3F490 8003E890 03E00008 */  jr         $ra
/* 3F494 8003E894 00000000 */   nop       

glabel func_8003E898
/* 3F498 8003E898 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3F49C 8003E89C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F4A0 8003E8A0 0C00F534 */  jal        func_8003D4D0
/* 3F4A4 8003E8A4 AFA40038 */   sw        $a0, 0x38($sp)
/* 3F4A8 8003E8A8 3C0E8007 */  lui        $t6, 0x8007
/* 3F4AC 8003E8AC 8DCE0A90 */  lw         $t6, 0xa90($t6)
/* 3F4B0 8003E8B0 AFA20024 */  sw         $v0, 0x24($sp)
/* 3F4B4 8003E8B4 8FB80038 */  lw         $t8, 0x38($sp)
/* 3F4B8 8003E8B8 8DCF0000 */  lw         $t7, ($t6)
/* 3F4BC 8003E8BC AFAF0034 */  sw         $t7, 0x34($sp)
/* 3F4C0 8003E8C0 8F090014 */  lw         $t1, 0x14($t8)
/* 3F4C4 8003E8C4 8F080010 */  lw         $t0, 0x10($t8)
/* 3F4C8 8003E8C8 AFA9002C */  sw         $t1, 0x2c($sp)
/* 3F4CC 8003E8CC 11EE0029 */  beq        $t7, $t6, .L8003E974
/* 3F4D0 8003E8D0 AFA80028 */   sw        $t0, 0x28($sp)
/* 3F4D4 8003E8D4 8DEA0010 */  lw         $t2, 0x10($t7)
/* 3F4D8 8003E8D8 8DEB0014 */  lw         $t3, 0x14($t7)
/* 3F4DC 8003E8DC 010A082B */  sltu       $at, $t0, $t2
/* 3F4E0 8003E8E0 14200024 */  bnez       $at, .L8003E974
/* 3F4E4 8003E8E4 0148082B */   sltu      $at, $t2, $t0
/* 3F4E8 8003E8E8 14200003 */  bnez       $at, .L8003E8F8
/* 3F4EC 8003E8EC 0169082B */   sltu      $at, $t3, $t1
/* 3F4F0 8003E8F0 10200020 */  beqz       $at, .L8003E974
/* 3F4F4 8003E8F4 00000000 */   nop       
.L8003E8F8:
/* 3F4F8 8003E8F8 27B90028 */  addiu      $t9, $sp, 0x28
/* 3F4FC 8003E8FC 8FB80034 */  lw         $t8, 0x34($sp)
/* 3F500 8003E900 AFB90020 */  sw         $t9, 0x20($sp)
/* 3F504 8003E904 8F2D0004 */  lw         $t5, 4($t9)
/* 3F508 8003E908 8F2C0000 */  lw         $t4, ($t9)
/* 3F50C 8003E90C 8F0F0014 */  lw         $t7, 0x14($t8)
/* 3F510 8003E910 8F0E0010 */  lw         $t6, 0x10($t8)
/* 3F514 8003E914 3C188007 */  lui        $t8, 0x8007
/* 3F518 8003E918 01AF082B */  sltu       $at, $t5, $t7
/* 3F51C 8003E91C 018E4023 */  subu       $t0, $t4, $t6
/* 3F520 8003E920 01014023 */  subu       $t0, $t0, $at
/* 3F524 8003E924 01AF4823 */  subu       $t1, $t5, $t7
/* 3F528 8003E928 AF290004 */  sw         $t1, 4($t9)
/* 3F52C 8003E92C AF280000 */  sw         $t0, ($t9)
/* 3F530 8003E930 8FAA0034 */  lw         $t2, 0x34($sp)
/* 3F534 8003E934 8F180A90 */  lw         $t8, 0xa90($t8)
/* 3F538 8003E938 8D4B0000 */  lw         $t3, ($t2)
/* 3F53C 8003E93C 1178000D */  beq        $t3, $t8, .L8003E974
/* 3F540 8003E940 AFAB0034 */   sw        $t3, 0x34($sp)
/* 3F544 8003E944 8FAC0028 */  lw         $t4, 0x28($sp)
/* 3F548 8003E948 8D6E0010 */  lw         $t6, 0x10($t3)
/* 3F54C 8003E94C 8FAD002C */  lw         $t5, 0x2c($sp)
/* 3F550 8003E950 8D6F0014 */  lw         $t7, 0x14($t3)
/* 3F554 8003E954 01CC082B */  sltu       $at, $t6, $t4
/* 3F558 8003E958 1420FFE7 */  bnez       $at, .L8003E8F8
/* 3F55C 8003E95C 00000000 */   nop       
/* 3F560 8003E960 018E082B */  sltu       $at, $t4, $t6
/* 3F564 8003E964 14200003 */  bnez       $at, .L8003E974
/* 3F568 8003E968 01ED082B */   sltu      $at, $t7, $t5
/* 3F56C 8003E96C 1420FFE2 */  bnez       $at, .L8003E8F8
/* 3F570 8003E970 00000000 */   nop       
.L8003E974:
/* 3F574 8003E974 8FB90038 */  lw         $t9, 0x38($sp)
/* 3F578 8003E978 8FA80028 */  lw         $t0, 0x28($sp)
/* 3F57C 8003E97C 8FA9002C */  lw         $t1, 0x2c($sp)
/* 3F580 8003E980 3C188007 */  lui        $t8, 0x8007
/* 3F584 8003E984 AF280010 */  sw         $t0, 0x10($t9)
/* 3F588 8003E988 AF290014 */  sw         $t1, 0x14($t9)
/* 3F58C 8003E98C 8F180A90 */  lw         $t8, 0xa90($t8)
/* 3F590 8003E990 8FAA0034 */  lw         $t2, 0x34($sp)
/* 3F594 8003E994 1158000D */  beq        $t2, $t8, .L8003E9CC
/* 3F598 8003E998 00000000 */   nop       
/* 3F59C 8003E99C 254B0010 */  addiu      $t3, $t2, 0x10
/* 3F5A0 8003E9A0 AFAB001C */  sw         $t3, 0x1c($sp)
/* 3F5A4 8003E9A4 8D4D0014 */  lw         $t5, 0x14($t2)
/* 3F5A8 8003E9A8 8D4C0010 */  lw         $t4, 0x10($t2)
/* 3F5AC 8003E9AC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3F5B0 8003E9B0 8FAF002C */  lw         $t7, 0x2c($sp)
/* 3F5B4 8003E9B4 018E4023 */  subu       $t0, $t4, $t6
/* 3F5B8 8003E9B8 01AF082B */  sltu       $at, $t5, $t7
/* 3F5BC 8003E9BC 01014023 */  subu       $t0, $t0, $at
/* 3F5C0 8003E9C0 01AF4823 */  subu       $t1, $t5, $t7
/* 3F5C4 8003E9C4 AD490014 */  sw         $t1, 0x14($t2)
/* 3F5C8 8003E9C8 AD480010 */  sw         $t0, 0x10($t2)
.L8003E9CC:
/* 3F5CC 8003E9CC 8FB90034 */  lw         $t9, 0x34($sp)
/* 3F5D0 8003E9D0 8FB80038 */  lw         $t8, 0x38($sp)
/* 3F5D4 8003E9D4 AF190000 */  sw         $t9, ($t8)
/* 3F5D8 8003E9D8 8FAB0034 */  lw         $t3, 0x34($sp)
/* 3F5DC 8003E9DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* 3F5E0 8003E9E0 8D6C0004 */  lw         $t4, 4($t3)
/* 3F5E4 8003E9E4 ADAC0004 */  sw         $t4, 4($t5)
/* 3F5E8 8003E9E8 8FAF0034 */  lw         $t7, 0x34($sp)
/* 3F5EC 8003E9EC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 3F5F0 8003E9F0 8DE80004 */  lw         $t0, 4($t7)
/* 3F5F4 8003E9F4 AD0E0000 */  sw         $t6, ($t0)
/* 3F5F8 8003E9F8 8FAA0034 */  lw         $t2, 0x34($sp)
/* 3F5FC 8003E9FC 8FA90038 */  lw         $t1, 0x38($sp)
/* 3F600 8003EA00 AD490004 */  sw         $t1, 4($t2)
/* 3F604 8003EA04 0C00F53C */  jal        func_8003D4F0
/* 3F608 8003EA08 8FA40024 */   lw        $a0, 0x24($sp)
/* 3F60C 8003EA0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F610 8003EA10 8FA20028 */  lw         $v0, 0x28($sp)
/* 3F614 8003EA14 8FA3002C */  lw         $v1, 0x2c($sp)
/* 3F618 8003EA18 03E00008 */  jr         $ra
/* 3F61C 8003EA1C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003EA20
/* 3F620 8003EA20 3C028007 */  lui        $v0, 0x8007
/* 3F624 8003EA24 03E00008 */  jr         $ra
/* 3F628 8003EA28 8C420A80 */   lw        $v0, 0xa80($v0)
/* 3F62C 8003EA2C 00000000 */  nop        

glabel func_8003EA30
/* 3F630 8003EA30 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3F634 8003EA34 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3F638 8003EA38 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3F63C 8003EA3C AFB20020 */  sw         $s2, 0x20($sp)
/* 3F640 8003EA40 AFB00018 */  sw         $s0, 0x18($sp)
/* 3F644 8003EA44 AFA00030 */  sw         $zero, 0x30($sp)
/* 3F648 8003EA48 3C118007 */  lui        $s1, 0x8007
/* 3F64C 8003EA4C 3C0EA440 */  lui        $t6, 0xa440
/* 3F650 8003EA50 8E310A84 */  lw         $s1, 0xa84($s1)
/* 3F654 8003EA54 8DCF0010 */  lw         $t7, 0x10($t6)
/* 3F658 8003EA58 8E300008 */  lw         $s0, 8($s1)
/* 3F65C 8003EA5C 31F80001 */  andi       $t8, $t7, 1
/* 3F660 8003EA60 AFB80030 */  sw         $t8, 0x30($sp)
/* 3F664 8003EA64 0C00D374 */  jal        func_80034DD0
/* 3F668 8003EA68 8E240004 */   lw        $a0, 4($s1)
/* 3F66C 8003EA6C 8FB90030 */  lw         $t9, 0x30($sp)
/* 3F670 8003EA70 00409025 */  or         $s2, $v0, $zero
/* 3F674 8003EA74 00194080 */  sll        $t0, $t9, 2
/* 3F678 8003EA78 01194021 */  addu       $t0, $t0, $t9
/* 3F67C 8003EA7C 00084080 */  sll        $t0, $t0, 2
/* 3F680 8003EA80 02084821 */  addu       $t1, $s0, $t0
/* 3F684 8003EA84 8D2A0028 */  lw         $t2, 0x28($t1)
/* 3F688 8003EA88 01525821 */  addu       $t3, $t2, $s2
/* 3F68C 8003EA8C AFAB003C */  sw         $t3, 0x3c($sp)
/* 3F690 8003EA90 962C0000 */  lhu        $t4, ($s1)
/* 3F694 8003EA94 318D0002 */  andi       $t5, $t4, 2
/* 3F698 8003EA98 11A00008 */  beqz       $t5, .L8003EABC
/* 3F69C 8003EA9C 00000000 */   nop       
/* 3F6A0 8003EAA0 8E0F0020 */  lw         $t7, 0x20($s0)
/* 3F6A4 8003EAA4 8E2E0020 */  lw         $t6, 0x20($s1)
/* 3F6A8 8003EAA8 2401F000 */  addiu      $at, $zero, -0x1000
/* 3F6AC 8003EAAC 01E1C024 */  and        $t8, $t7, $at
/* 3F6B0 8003EAB0 01D8C825 */  or         $t9, $t6, $t8
/* 3F6B4 8003EAB4 10000003 */  b          .L8003EAC4
/* 3F6B8 8003EAB8 AE390020 */   sw        $t9, 0x20($s1)
.L8003EABC:
/* 3F6BC 8003EABC 8E080020 */  lw         $t0, 0x20($s0)
/* 3F6C0 8003EAC0 AE280020 */  sw         $t0, 0x20($s1)
.L8003EAC4:
/* 3F6C4 8003EAC4 96290000 */  lhu        $t1, ($s1)
/* 3F6C8 8003EAC8 312A0004 */  andi       $t2, $t1, 4
/* 3F6CC 8003EACC 11400041 */  beqz       $t2, .L8003EBD4
/* 3F6D0 8003EAD0 00000000 */   nop       
/* 3F6D4 8003EAD4 8FAB0030 */  lw         $t3, 0x30($sp)
/* 3F6D8 8003EAD8 000B6080 */  sll        $t4, $t3, 2
/* 3F6DC 8003EADC 018B6021 */  addu       $t4, $t4, $t3
/* 3F6E0 8003EAE0 000C6080 */  sll        $t4, $t4, 2
/* 3F6E4 8003EAE4 020C6821 */  addu       $t5, $s0, $t4
/* 3F6E8 8003EAE8 8DAF002C */  lw         $t7, 0x2c($t5)
/* 3F6EC 8003EAEC 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 3F6F0 8003EAF0 448E3000 */  mtc1       $t6, $f6
/* 3F6F4 8003EAF4 AFAE0034 */  sw         $t6, 0x34($sp)
/* 3F6F8 8003EAF8 C6240024 */  lwc1       $f4, 0x24($s1)
/* 3F6FC 8003EAFC 05C10005 */  bgez       $t6, .L8003EB14
/* 3F700 8003EB00 46803220 */   cvt.s.w   $f8, $f6
/* 3F704 8003EB04 3C014F80 */  lui        $at, 0x4f80
/* 3F708 8003EB08 44815000 */  mtc1       $at, $f10
/* 3F70C 8003EB0C 00000000 */  nop        
/* 3F710 8003EB10 460A4200 */  add.s      $f8, $f8, $f10
.L8003EB14:
/* 3F714 8003EB14 46082402 */  mul.s      $f16, $f4, $f8
/* 3F718 8003EB18 24190001 */  addiu      $t9, $zero, 1
/* 3F71C 8003EB1C 4458F800 */  cfc1       $t8, $31
/* 3F720 8003EB20 44D9F800 */  ctc1       $t9, $31
/* 3F724 8003EB24 00000000 */  nop        
/* 3F728 8003EB28 460084A4 */  cvt.w.s    $f18, $f16
/* 3F72C 8003EB2C 4459F800 */  cfc1       $t9, $31
/* 3F730 8003EB30 00000000 */  nop        
/* 3F734 8003EB34 33210004 */  andi       $at, $t9, 4
/* 3F738 8003EB38 33390078 */  andi       $t9, $t9, 0x78
/* 3F73C 8003EB3C 13200013 */  beqz       $t9, .L8003EB8C
/* 3F740 8003EB40 3C014F00 */   lui       $at, 0x4f00
/* 3F744 8003EB44 44819000 */  mtc1       $at, $f18
/* 3F748 8003EB48 24190001 */  addiu      $t9, $zero, 1
/* 3F74C 8003EB4C 46128481 */  sub.s      $f18, $f16, $f18
/* 3F750 8003EB50 44D9F800 */  ctc1       $t9, $31
/* 3F754 8003EB54 00000000 */  nop        
/* 3F758 8003EB58 460094A4 */  cvt.w.s    $f18, $f18
/* 3F75C 8003EB5C 4459F800 */  cfc1       $t9, $31
/* 3F760 8003EB60 00000000 */  nop        
/* 3F764 8003EB64 33210004 */  andi       $at, $t9, 4
/* 3F768 8003EB68 33390078 */  andi       $t9, $t9, 0x78
/* 3F76C 8003EB6C 17200005 */  bnez       $t9, .L8003EB84
/* 3F770 8003EB70 00000000 */   nop       
/* 3F774 8003EB74 44199000 */  mfc1       $t9, $f18
/* 3F778 8003EB78 3C018000 */  lui        $at, 0x8000
/* 3F77C 8003EB7C 10000007 */  b          .L8003EB9C
/* 3F780 8003EB80 0321C825 */   or        $t9, $t9, $at
.L8003EB84:
/* 3F784 8003EB84 10000005 */  b          .L8003EB9C
/* 3F788 8003EB88 2419FFFF */   addiu     $t9, $zero, -1
.L8003EB8C:
/* 3F78C 8003EB8C 44199000 */  mfc1       $t9, $f18
/* 3F790 8003EB90 00000000 */  nop        
/* 3F794 8003EB94 0720FFFB */  bltz       $t9, .L8003EB84
/* 3F798 8003EB98 00000000 */   nop       
.L8003EB9C:
/* 3F79C 8003EB9C AE39002C */  sw         $t9, 0x2c($s1)
/* 3F7A0 8003EBA0 8FA90030 */  lw         $t1, 0x30($sp)
/* 3F7A4 8003EBA4 8E28002C */  lw         $t0, 0x2c($s1)
/* 3F7A8 8003EBA8 2401F000 */  addiu      $at, $zero, -0x1000
/* 3F7AC 8003EBAC 00095080 */  sll        $t2, $t1, 2
/* 3F7B0 8003EBB0 01495021 */  addu       $t2, $t2, $t1
/* 3F7B4 8003EBB4 000A5080 */  sll        $t2, $t2, 2
/* 3F7B8 8003EBB8 020A5821 */  addu       $t3, $s0, $t2
/* 3F7BC 8003EBBC 8D6C002C */  lw         $t4, 0x2c($t3)
/* 3F7C0 8003EBC0 44D8F800 */  ctc1       $t8, $31
/* 3F7C4 8003EBC4 01816824 */  and        $t5, $t4, $at
/* 3F7C8 8003EBC8 010D7825 */  or         $t7, $t0, $t5
/* 3F7CC 8003EBCC 10000008 */  b          .L8003EBF0
/* 3F7D0 8003EBD0 AE2F002C */   sw        $t7, 0x2c($s1)
.L8003EBD4:
/* 3F7D4 8003EBD4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 3F7D8 8003EBD8 000EC080 */  sll        $t8, $t6, 2
/* 3F7DC 8003EBDC 030EC021 */  addu       $t8, $t8, $t6
/* 3F7E0 8003EBE0 0018C080 */  sll        $t8, $t8, 2
/* 3F7E4 8003EBE4 0218C821 */  addu       $t9, $s0, $t8
/* 3F7E8 8003EBE8 8F29002C */  lw         $t1, 0x2c($t9)
/* 3F7EC 8003EBEC AE29002C */  sw         $t1, 0x2c($s1)
.L8003EBF0:
/* 3F7F0 8003EBF0 8E0A001C */  lw         $t2, 0x1c($s0)
/* 3F7F4 8003EBF4 AFAA0038 */  sw         $t2, 0x38($sp)
/* 3F7F8 8003EBF8 962B0000 */  lhu        $t3, ($s1)
/* 3F7FC 8003EBFC 316C0020 */  andi       $t4, $t3, 0x20
/* 3F800 8003EC00 11800002 */  beqz       $t4, .L8003EC0C
/* 3F804 8003EC04 00000000 */   nop       
/* 3F808 8003EC08 AFA00038 */  sw         $zero, 0x38($sp)
.L8003EC0C:
/* 3F80C 8003EC0C 96280000 */  lhu        $t0, ($s1)
/* 3F810 8003EC10 310D0040 */  andi       $t5, $t0, 0x40
/* 3F814 8003EC14 11A00005 */  beqz       $t5, .L8003EC2C
/* 3F818 8003EC18 00000000 */   nop       
/* 3F81C 8003EC1C AE20002C */  sw         $zero, 0x2c($s1)
/* 3F820 8003EC20 0C00D374 */  jal        func_80034DD0
/* 3F824 8003EC24 8E240004 */   lw        $a0, 4($s1)
/* 3F828 8003EC28 AFA2003C */  sw         $v0, 0x3c($sp)
.L8003EC2C:
/* 3F82C 8003EC2C 962F0000 */  lhu        $t7, ($s1)
/* 3F830 8003EC30 31EE0080 */  andi       $t6, $t7, 0x80
/* 3F834 8003EC34 11C00009 */  beqz       $t6, .L8003EC5C
/* 3F838 8003EC38 00000000 */   nop       
/* 3F83C 8003EC3C 96380028 */  lhu        $t8, 0x28($s1)
/* 3F840 8003EC40 3C0103FF */  lui        $at, 0x3ff
/* 3F844 8003EC44 8E240004 */  lw         $a0, 4($s1)
/* 3F848 8003EC48 0018CC00 */  sll        $t9, $t8, 0x10
/* 3F84C 8003EC4C 03214824 */  and        $t1, $t9, $at
/* 3F850 8003EC50 0C00D374 */  jal        func_80034DD0
/* 3F854 8003EC54 AE29002C */   sw        $t1, 0x2c($s1)
/* 3F858 8003EC58 AFA2003C */  sw         $v0, 0x3c($sp)
.L8003EC5C:
/* 3F85C 8003EC5C 8FAA003C */  lw         $t2, 0x3c($sp)
/* 3F860 8003EC60 3C0BA440 */  lui        $t3, 0xa440
/* 3F864 8003EC64 3C08A440 */  lui        $t0, 0xa440
/* 3F868 8003EC68 AD6A0004 */  sw         $t2, 4($t3)
/* 3F86C 8003EC6C 8E0C0008 */  lw         $t4, 8($s0)
/* 3F870 8003EC70 3C0FA440 */  lui        $t7, 0xa440
/* 3F874 8003EC74 3C18A440 */  lui        $t8, 0xa440
/* 3F878 8003EC78 AD0C0008 */  sw         $t4, 8($t0)
/* 3F87C 8003EC7C 8E0D000C */  lw         $t5, 0xc($s0)
/* 3F880 8003EC80 3C09A440 */  lui        $t1, 0xa440
/* 3F884 8003EC84 3C018007 */  lui        $at, 0x8007
/* 3F888 8003EC88 ADED0014 */  sw         $t5, 0x14($t7)
/* 3F88C 8003EC8C 8E0E0010 */  lw         $t6, 0x10($s0)
/* 3F890 8003EC90 AF0E0018 */  sw         $t6, 0x18($t8)
/* 3F894 8003EC94 8E190014 */  lw         $t9, 0x14($s0)
/* 3F898 8003EC98 AD39001C */  sw         $t9, 0x1c($t1)
/* 3F89C 8003EC9C 8E0A0018 */  lw         $t2, 0x18($s0)
/* 3F8A0 8003ECA0 3C19A440 */  lui        $t9, 0xa440
/* 3F8A4 8003ECA4 AD6A0020 */  sw         $t2, 0x20($t3)
/* 3F8A8 8003ECA8 8FAC0038 */  lw         $t4, 0x38($sp)
/* 3F8AC 8003ECAC AD0C0024 */  sw         $t4, 0x24($t0)
/* 3F8B0 8003ECB0 8FAD0030 */  lw         $t5, 0x30($sp)
/* 3F8B4 8003ECB4 000D7880 */  sll        $t7, $t5, 2
/* 3F8B8 8003ECB8 01ED7821 */  addu       $t7, $t7, $t5
/* 3F8BC 8003ECBC 000F7880 */  sll        $t7, $t7, 2
/* 3F8C0 8003ECC0 020F7021 */  addu       $t6, $s0, $t7
/* 3F8C4 8003ECC4 8DD80030 */  lw         $t8, 0x30($t6)
/* 3F8C8 8003ECC8 AF380028 */  sw         $t8, 0x28($t9)
/* 3F8CC 8003ECCC 8FA90030 */  lw         $t1, 0x30($sp)
/* 3F8D0 8003ECD0 00095080 */  sll        $t2, $t1, 2
/* 3F8D4 8003ECD4 01495021 */  addu       $t2, $t2, $t1
/* 3F8D8 8003ECD8 000A5080 */  sll        $t2, $t2, 2
/* 3F8DC 8003ECDC 020A5821 */  addu       $t3, $s0, $t2
/* 3F8E0 8003ECE0 8D6C0034 */  lw         $t4, 0x34($t3)
/* 3F8E4 8003ECE4 3C0AA440 */  lui        $t2, 0xa440
/* 3F8E8 8003ECE8 AD0C002C */  sw         $t4, 0x2c($t0)
/* 3F8EC 8003ECEC 8FAD0030 */  lw         $t5, 0x30($sp)
/* 3F8F0 8003ECF0 3C0CA440 */  lui        $t4, 0xa440
/* 3F8F4 8003ECF4 000D7880 */  sll        $t7, $t5, 2
/* 3F8F8 8003ECF8 01ED7821 */  addu       $t7, $t7, $t5
/* 3F8FC 8003ECFC 000F7880 */  sll        $t7, $t7, 2
/* 3F900 8003ED00 020F7021 */  addu       $t6, $s0, $t7
/* 3F904 8003ED04 8DD80038 */  lw         $t8, 0x38($t6)
/* 3F908 8003ED08 3C0DA440 */  lui        $t5, 0xa440
/* 3F90C 8003ED0C 3C0F8007 */  lui        $t7, 0x8007
/* 3F910 8003ED10 AF38000C */  sw         $t8, 0xc($t9)
/* 3F914 8003ED14 8E290020 */  lw         $t1, 0x20($s1)
/* 3F918 8003ED18 3C188007 */  lui        $t8, 0x8007
/* 3F91C 8003ED1C 3C0E8007 */  lui        $t6, 0x8007
/* 3F920 8003ED20 AD490030 */  sw         $t1, 0x30($t2)
/* 3F924 8003ED24 8E2B002C */  lw         $t3, 0x2c($s1)
/* 3F928 8003ED28 AD8B0034 */  sw         $t3, 0x34($t4)
/* 3F92C 8003ED2C 8E28000C */  lw         $t0, 0xc($s1)
/* 3F930 8003ED30 ADA80000 */  sw         $t0, ($t5)
/* 3F934 8003ED34 8DEF0A80 */  lw         $t7, 0xa80($t7)
/* 3F938 8003ED38 AC2F0A84 */  sw         $t7, 0xa84($at)
/* 3F93C 8003ED3C 3C018007 */  lui        $at, 0x8007
/* 3F940 8003ED40 AC310A80 */  sw         $s1, 0xa80($at)
/* 3F944 8003ED44 8F180A80 */  lw         $t8, 0xa80($t8)
/* 3F948 8003ED48 8DCE0A84 */  lw         $t6, 0xa84($t6)
/* 3F94C 8003ED4C 270A0030 */  addiu      $t2, $t8, 0x30
.L8003ED50:
/* 3F950 8003ED50 8F010000 */  lw         $at, ($t8)
/* 3F954 8003ED54 2718000C */  addiu      $t8, $t8, 0xc
/* 3F958 8003ED58 25CE000C */  addiu      $t6, $t6, 0xc
/* 3F95C 8003ED5C ADC1FFF4 */  sw         $at, -0xc($t6)
/* 3F960 8003ED60 8F01FFF8 */  lw         $at, -8($t8)
/* 3F964 8003ED64 ADC1FFF8 */  sw         $at, -8($t6)
/* 3F968 8003ED68 8F01FFFC */  lw         $at, -4($t8)
/* 3F96C 8003ED6C 170AFFF8 */  bne        $t8, $t2, .L8003ED50
/* 3F970 8003ED70 ADC1FFFC */   sw        $at, -4($t6)
/* 3F974 8003ED74 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3F978 8003ED78 8FB00018 */  lw         $s0, 0x18($sp)
/* 3F97C 8003ED7C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3F980 8003ED80 8FB20020 */  lw         $s2, 0x20($sp)
/* 3F984 8003ED84 03E00008 */  jr         $ra
/* 3F988 8003ED88 27BD0048 */   addiu     $sp, $sp, 0x48
/* 3F98C 8003ED8C 00000000 */  nop        

glabel func_8003ED90
/* 3F990 8003ED90 40024800 */  mfc0       $v0, $9
/* 3F994 8003ED94 03E00008 */  jr         $ra
/* 3F998 8003ED98 00000000 */   nop       
/* 3F99C 8003ED9C 00000000 */  nop        
