glabel func_8003A7E0
/* 3B3E0 8003A7E0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 3B3E4 8003A7E4 3C0E8007 */  lui        $t6, 0x8007
/* 3B3E8 8003A7E8 8DCE09C0 */  lw         $t6, 0x9c0($t6)
/* 3B3EC 8003A7EC AFBF0024 */  sw         $ra, 0x24($sp)
/* 3B3F0 8003A7F0 AFA40080 */  sw         $a0, 0x80($sp)
/* 3B3F4 8003A7F4 AFA50084 */  sw         $a1, 0x84($sp)
/* 3B3F8 8003A7F8 AFA60088 */  sw         $a2, 0x88($sp)
/* 3B3FC 8003A7FC 11C00003 */  beqz       $t6, .L8003A80C
/* 3B400 8003A800 AFA00078 */   sw        $zero, 0x78($sp)
/* 3B404 8003A804 10000070 */  b          .L8003A9C8
/* 3B408 8003A808 00001025 */   or        $v0, $zero, $zero
.L8003A80C:
/* 3B40C 8003A80C 240F0001 */  addiu      $t7, $zero, 1
/* 3B410 8003A810 3C018007 */  lui        $at, 0x8007
/* 3B414 8003A814 0C00D3B4 */  jal        func_80034ED0
/* 3B418 8003A818 AC2F09C0 */   sw        $t7, 0x9c0($at)
/* 3B41C 8003A81C 3C050007 */  lui        $a1, 7
/* 3B420 8003A820 3C068007 */  lui        $a2, 0x8007
/* 3B424 8003A824 3C078007 */  lui        $a3, 0x8007
/* 3B428 8003A828 AFA20070 */  sw         $v0, 0x70($sp)
/* 3B42C 8003A82C AFA30074 */  sw         $v1, 0x74($sp)
/* 3B430 8003A830 8CE7F404 */  lw         $a3, -0xbfc($a3)
/* 3B434 8003A834 8CC6F400 */  lw         $a2, -0xc00($a2)
/* 3B438 8003A838 34A5A120 */  ori        $a1, $a1, 0xa120
/* 3B43C 8003A83C 0C00E70E */  jal        func_80039C38
/* 3B440 8003A840 24040000 */   addiu     $a0, $zero, 0
/* 3B444 8003A844 AFA20030 */  sw         $v0, 0x30($sp)
/* 3B448 8003A848 AFA30034 */  sw         $v1, 0x34($sp)
/* 3B44C 8003A84C 3C07000F */  lui        $a3, 0xf
/* 3B450 8003A850 34E74240 */  ori        $a3, $a3, 0x4240
/* 3B454 8003A854 8FA50034 */  lw         $a1, 0x34($sp)
/* 3B458 8003A858 8FA40030 */  lw         $a0, 0x30($sp)
/* 3B45C 8003A85C 0C00E6CE */  jal        func_80039B38
/* 3B460 8003A860 24060000 */   addiu     $a2, $zero, 0
/* 3B464 8003A864 8FB80070 */  lw         $t8, 0x70($sp)
/* 3B468 8003A868 8FB90074 */  lw         $t9, 0x74($sp)
/* 3B46C 8003A86C 0058082B */  sltu       $at, $v0, $t8
/* 3B470 8003A870 14200031 */  bnez       $at, .L8003A938
/* 3B474 8003A874 0302082B */   sltu      $at, $t8, $v0
/* 3B478 8003A878 14200003 */  bnez       $at, .L8003A888
/* 3B47C 8003A87C 0323082B */   sltu      $at, $t9, $v1
/* 3B480 8003A880 1020002D */  beqz       $at, .L8003A938
/* 3B484 8003A884 00000000 */   nop       
.L8003A888:
/* 3B488 8003A888 27A40038 */  addiu      $a0, $sp, 0x38
/* 3B48C 8003A88C 27A5007C */  addiu      $a1, $sp, 0x7c
/* 3B490 8003A890 0C00CFC4 */  jal        func_80033F10
/* 3B494 8003A894 24060001 */   addiu     $a2, $zero, 1
/* 3B498 8003A898 3C050007 */  lui        $a1, 7
/* 3B49C 8003A89C 3C068007 */  lui        $a2, 0x8007
/* 3B4A0 8003A8A0 3C078007 */  lui        $a3, 0x8007
/* 3B4A4 8003A8A4 8CE7F404 */  lw         $a3, -0xbfc($a3)
/* 3B4A8 8003A8A8 8CC6F400 */  lw         $a2, -0xc00($a2)
/* 3B4AC 8003A8AC 34A5A120 */  ori        $a1, $a1, 0xa120
/* 3B4B0 8003A8B0 0C00E70E */  jal        func_80039C38
/* 3B4B4 8003A8B4 24040000 */   addiu     $a0, $zero, 0
/* 3B4B8 8003A8B8 AFA20028 */  sw         $v0, 0x28($sp)
/* 3B4BC 8003A8BC AFA3002C */  sw         $v1, 0x2c($sp)
/* 3B4C0 8003A8C0 3C07000F */  lui        $a3, 0xf
/* 3B4C4 8003A8C4 34E74240 */  ori        $a3, $a3, 0x4240
/* 3B4C8 8003A8C8 8FA5002C */  lw         $a1, 0x2c($sp)
/* 3B4CC 8003A8CC 8FA40028 */  lw         $a0, 0x28($sp)
/* 3B4D0 8003A8D0 0C00E6CE */  jal        func_80039B38
/* 3B4D4 8003A8D4 24060000 */   addiu     $a2, $zero, 0
/* 3B4D8 8003A8D8 AFA20030 */  sw         $v0, 0x30($sp)
/* 3B4DC 8003A8DC AFA30034 */  sw         $v1, 0x34($sp)
/* 3B4E0 8003A8E0 8FA90034 */  lw         $t1, 0x34($sp)
/* 3B4E4 8003A8E4 8FA80030 */  lw         $t0, 0x30($sp)
/* 3B4E8 8003A8E8 8FAA0070 */  lw         $t2, 0x70($sp)
/* 3B4EC 8003A8EC 8FAB0074 */  lw         $t3, 0x74($sp)
/* 3B4F0 8003A8F0 240C0000 */  addiu      $t4, $zero, 0
/* 3B4F4 8003A8F4 240D0000 */  addiu      $t5, $zero, 0
/* 3B4F8 8003A8F8 27AE0038 */  addiu      $t6, $sp, 0x38
/* 3B4FC 8003A8FC 27AF007C */  addiu      $t7, $sp, 0x7c
/* 3B500 8003A900 010A3023 */  subu       $a2, $t0, $t2
/* 3B504 8003A904 012B082B */  sltu       $at, $t1, $t3
/* 3B508 8003A908 00C13023 */  subu       $a2, $a2, $at
/* 3B50C 8003A90C AFAF001C */  sw         $t7, 0x1c($sp)
/* 3B510 8003A910 AFAE0018 */  sw         $t6, 0x18($sp)
/* 3B514 8003A914 AFAD0014 */  sw         $t5, 0x14($sp)
/* 3B518 8003A918 AFAC0010 */  sw         $t4, 0x10($sp)
/* 3B51C 8003A91C 27A40050 */  addiu      $a0, $sp, 0x50
/* 3B520 8003A920 0C011BB8 */  jal        func_80046EE0
/* 3B524 8003A924 012B3823 */   subu      $a3, $t1, $t3
/* 3B528 8003A928 27A40038 */  addiu      $a0, $sp, 0x38
/* 3B52C 8003A92C 27A5007C */  addiu      $a1, $sp, 0x7c
/* 3B530 8003A930 0C00D008 */  jal        func_80034020
/* 3B534 8003A934 24060001 */   addiu     $a2, $zero, 1
.L8003A938:
/* 3B538 8003A938 24180004 */  addiu      $t8, $zero, 4
/* 3B53C 8003A93C 3C018009 */  lui        $at, 0x8009
/* 3B540 8003A940 A0385491 */  sb         $t8, 0x5491($at)
/* 3B544 8003A944 0C00EAAA */  jal        func_8003AAA8
/* 3B548 8003A948 00002025 */   or        $a0, $zero, $zero
/* 3B54C 8003A94C 3C058009 */  lui        $a1, 0x8009
/* 3B550 8003A950 24A55450 */  addiu      $a1, $a1, 0x5450
/* 3B554 8003A954 0C011A54 */  jal        func_80046950
/* 3B558 8003A958 24040001 */   addiu     $a0, $zero, 1
/* 3B55C 8003A95C AFA20078 */  sw         $v0, 0x78($sp)
/* 3B560 8003A960 8FA40080 */  lw         $a0, 0x80($sp)
/* 3B564 8003A964 27A5007C */  addiu      $a1, $sp, 0x7c
/* 3B568 8003A968 0C00D008 */  jal        func_80034020
/* 3B56C 8003A96C 24060001 */   addiu     $a2, $zero, 1
/* 3B570 8003A970 3C058009 */  lui        $a1, 0x8009
/* 3B574 8003A974 24A55450 */  addiu      $a1, $a1, 0x5450
/* 3B578 8003A978 0C011A54 */  jal        func_80046950
/* 3B57C 8003A97C 00002025 */   or        $a0, $zero, $zero
/* 3B580 8003A980 AFA20078 */  sw         $v0, 0x78($sp)
/* 3B584 8003A984 8FA40080 */  lw         $a0, 0x80($sp)
/* 3B588 8003A988 27A5007C */  addiu      $a1, $sp, 0x7c
/* 3B58C 8003A98C 0C00D008 */  jal        func_80034020
/* 3B590 8003A990 24060001 */   addiu     $a2, $zero, 1
/* 3B594 8003A994 8FA40084 */  lw         $a0, 0x84($sp)
/* 3B598 8003A998 0C00EA76 */  jal        func_8003A9D8
/* 3B59C 8003A99C 8FA50088 */   lw        $a1, 0x88($sp)
/* 3B5A0 8003A9A0 3C018009 */  lui        $at, 0x8009
/* 3B5A4 8003A9A4 0C0111FC */  jal        func_800447F0
/* 3B5A8 8003A9A8 A0205490 */   sb        $zero, 0x5490($at)
/* 3B5AC 8003A9AC 3C048009 */  lui        $a0, 0x8009
/* 3B5B0 8003A9B0 3C058009 */  lui        $a1, 0x8009
/* 3B5B4 8003A9B4 24A554D0 */  addiu      $a1, $a1, 0x54d0
/* 3B5B8 8003A9B8 248454B8 */  addiu      $a0, $a0, 0x54b8
/* 3B5BC 8003A9BC 0C00CFC4 */  jal        func_80033F10
/* 3B5C0 8003A9C0 24060001 */   addiu     $a2, $zero, 1
/* 3B5C4 8003A9C4 8FA20078 */  lw         $v0, 0x78($sp)
.L8003A9C8:
/* 3B5C8 8003A9C8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3B5CC 8003A9CC 27BD0080 */  addiu      $sp, $sp, 0x80
/* 3B5D0 8003A9D0 03E00008 */  jr         $ra
/* 3B5D4 8003A9D4 00000000 */   nop       

glabel func_8003A9D8
/* 3B5D8 8003A9D8 3C0F8009 */  lui        $t7, 0x8009
/* 3B5DC 8003A9DC 91EF5491 */  lbu        $t7, 0x5491($t7)
/* 3B5E0 8003A9E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3B5E4 8003A9E4 3C0E8009 */  lui        $t6, 0x8009
/* 3B5E8 8003A9E8 25CE5450 */  addiu      $t6, $t6, 0x5450
/* 3B5EC 8003A9EC A3A00007 */  sb         $zero, 7($sp)
/* 3B5F0 8003A9F0 AFAE0014 */  sw         $t6, 0x14($sp)
/* 3B5F4 8003A9F4 19E00028 */  blez       $t7, .L8003AA98
/* 3B5F8 8003A9F8 AFA00008 */   sw        $zero, 8($sp)
.L8003A9FC:
/* 3B5FC 8003A9FC 8FB90014 */  lw         $t9, 0x14($sp)
/* 3B600 8003AA00 27B8000C */  addiu      $t8, $sp, 0xc
/* 3B604 8003AA04 8B210000 */  lwl        $at, ($t9)
/* 3B608 8003AA08 9B210003 */  lwr        $at, 3($t9)
/* 3B60C 8003AA0C AF010000 */  sw         $at, ($t8)
/* 3B610 8003AA10 8B290004 */  lwl        $t1, 4($t9)
/* 3B614 8003AA14 9B290007 */  lwr        $t1, 7($t9)
/* 3B618 8003AA18 AF090004 */  sw         $t1, 4($t8)
/* 3B61C 8003AA1C 93AA000E */  lbu        $t2, 0xe($sp)
/* 3B620 8003AA20 314B00C0 */  andi       $t3, $t2, 0xc0
/* 3B624 8003AA24 000B6103 */  sra        $t4, $t3, 4
/* 3B628 8003AA28 A0AC0003 */  sb         $t4, 3($a1)
/* 3B62C 8003AA2C 90AD0003 */  lbu        $t5, 3($a1)
/* 3B630 8003AA30 15A0000E */  bnez       $t5, .L8003AA6C
/* 3B634 8003AA34 00000000 */   nop       
/* 3B638 8003AA38 93AE0011 */  lbu        $t6, 0x11($sp)
/* 3B63C 8003AA3C 93A80010 */  lbu        $t0, 0x10($sp)
/* 3B640 8003AA40 240B0001 */  addiu      $t3, $zero, 1
/* 3B644 8003AA44 000E7A00 */  sll        $t7, $t6, 8
/* 3B648 8003AA48 01E8C025 */  or         $t8, $t7, $t0
/* 3B64C 8003AA4C A4B80000 */  sh         $t8, ($a1)
/* 3B650 8003AA50 93B90012 */  lbu        $t9, 0x12($sp)
/* 3B654 8003AA54 A0B90002 */  sb         $t9, 2($a1)
/* 3B658 8003AA58 8FAA0008 */  lw         $t2, 8($sp)
/* 3B65C 8003AA5C 93A90007 */  lbu        $t1, 7($sp)
/* 3B660 8003AA60 014B6004 */  sllv       $t4, $t3, $t2
/* 3B664 8003AA64 012C6825 */  or         $t5, $t1, $t4
/* 3B668 8003AA68 A3AD0007 */  sb         $t5, 7($sp)
.L8003AA6C:
/* 3B66C 8003AA6C 8FAE0008 */  lw         $t6, 8($sp)
/* 3B670 8003AA70 3C198009 */  lui        $t9, 0x8009
/* 3B674 8003AA74 93395491 */  lbu        $t9, 0x5491($t9)
/* 3B678 8003AA78 8FA80014 */  lw         $t0, 0x14($sp)
/* 3B67C 8003AA7C 25CF0001 */  addiu      $t7, $t6, 1
/* 3B680 8003AA80 01F9082A */  slt        $at, $t7, $t9
/* 3B684 8003AA84 25180008 */  addiu      $t8, $t0, 8
/* 3B688 8003AA88 AFB80014 */  sw         $t8, 0x14($sp)
/* 3B68C 8003AA8C AFAF0008 */  sw         $t7, 8($sp)
/* 3B690 8003AA90 1420FFDA */  bnez       $at, .L8003A9FC
/* 3B694 8003AA94 24A50004 */   addiu     $a1, $a1, 4
.L8003AA98:
/* 3B698 8003AA98 93AB0007 */  lbu        $t3, 7($sp)
/* 3B69C 8003AA9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3B6A0 8003AAA0 03E00008 */  jr         $ra
/* 3B6A4 8003AAA4 A08B0000 */   sb        $t3, ($a0)

glabel func_8003AAA8
/* 3B6A8 8003AAA8 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 3B6AC 8003AAAC 308400FF */  andi       $a0, $a0, 0xff
/* 3B6B0 8003AAB0 AFA00000 */  sw         $zero, ($sp)
.L8003AAB4:
/* 3B6B4 8003AAB4 8FAE0000 */  lw         $t6, ($sp)
/* 3B6B8 8003AAB8 8FB80000 */  lw         $t8, ($sp)
/* 3B6BC 8003AABC 3C018009 */  lui        $at, 0x8009
/* 3B6C0 8003AAC0 000E7880 */  sll        $t7, $t6, 2
/* 3B6C4 8003AAC4 002F0821 */  addu       $at, $at, $t7
/* 3B6C8 8003AAC8 AC205450 */  sw         $zero, 0x5450($at)
/* 3B6CC 8003AACC 27190001 */  addiu      $t9, $t8, 1
/* 3B6D0 8003AAD0 2B21000F */  slti       $at, $t9, 0xf
/* 3B6D4 8003AAD4 1420FFF7 */  bnez       $at, .L8003AAB4
/* 3B6D8 8003AAD8 AFB90000 */   sw        $t9, ($sp)
/* 3B6DC 8003AADC 3C198009 */  lui        $t9, 0x8009
/* 3B6E0 8003AAE0 93395491 */  lbu        $t9, 0x5491($t9)
/* 3B6E4 8003AAE4 3C098009 */  lui        $t1, 0x8009
/* 3B6E8 8003AAE8 24080001 */  addiu      $t0, $zero, 1
/* 3B6EC 8003AAEC 3C018009 */  lui        $at, 0x8009
/* 3B6F0 8003AAF0 25295450 */  addiu      $t1, $t1, 0x5450
/* 3B6F4 8003AAF4 240A00FF */  addiu      $t2, $zero, 0xff
/* 3B6F8 8003AAF8 240B0001 */  addiu      $t3, $zero, 1
/* 3B6FC 8003AAFC 240C0003 */  addiu      $t4, $zero, 3
/* 3B700 8003AB00 240D00FF */  addiu      $t5, $zero, 0xff
/* 3B704 8003AB04 240E00FF */  addiu      $t6, $zero, 0xff
/* 3B708 8003AB08 240F00FF */  addiu      $t7, $zero, 0xff
/* 3B70C 8003AB0C 241800FF */  addiu      $t8, $zero, 0xff
/* 3B710 8003AB10 AC28548C */  sw         $t0, 0x548c($at)
/* 3B714 8003AB14 AFA9000C */  sw         $t1, 0xc($sp)
/* 3B718 8003AB18 A3AA0004 */  sb         $t2, 4($sp)
/* 3B71C 8003AB1C A3AB0005 */  sb         $t3, 5($sp)
/* 3B720 8003AB20 A3AC0006 */  sb         $t4, 6($sp)
/* 3B724 8003AB24 A3A40007 */  sb         $a0, 7($sp)
/* 3B728 8003AB28 A3AD0008 */  sb         $t5, 8($sp)
/* 3B72C 8003AB2C A3AE0009 */  sb         $t6, 9($sp)
/* 3B730 8003AB30 A3AF000A */  sb         $t7, 0xa($sp)
/* 3B734 8003AB34 A3B8000B */  sb         $t8, 0xb($sp)
/* 3B738 8003AB38 1B200013 */  blez       $t9, .L8003AB88
/* 3B73C 8003AB3C AFA00000 */   sw        $zero, ($sp)
.L8003AB40:
/* 3B740 8003AB40 27A90004 */  addiu      $t1, $sp, 4
/* 3B744 8003AB44 8D210000 */  lw         $at, ($t1)
/* 3B748 8003AB48 8FA8000C */  lw         $t0, 0xc($sp)
/* 3B74C 8003AB4C 3C188009 */  lui        $t8, 0x8009
/* 3B750 8003AB50 A9010000 */  swl        $at, ($t0)
/* 3B754 8003AB54 B9010003 */  swr        $at, 3($t0)
/* 3B758 8003AB58 8D2B0004 */  lw         $t3, 4($t1)
/* 3B75C 8003AB5C A90B0004 */  swl        $t3, 4($t0)
/* 3B760 8003AB60 B90B0007 */  swr        $t3, 7($t0)
/* 3B764 8003AB64 8FAE0000 */  lw         $t6, ($sp)
/* 3B768 8003AB68 93185491 */  lbu        $t8, 0x5491($t8)
/* 3B76C 8003AB6C 8FAC000C */  lw         $t4, 0xc($sp)
/* 3B770 8003AB70 25CF0001 */  addiu      $t7, $t6, 1
/* 3B774 8003AB74 01F8082A */  slt        $at, $t7, $t8
/* 3B778 8003AB78 258D0008 */  addiu      $t5, $t4, 8
/* 3B77C 8003AB7C AFAF0000 */  sw         $t7, ($sp)
/* 3B780 8003AB80 1420FFEF */  bnez       $at, .L8003AB40
/* 3B784 8003AB84 AFAD000C */   sw        $t5, 0xc($sp)
.L8003AB88:
/* 3B788 8003AB88 8FAA000C */  lw         $t2, 0xc($sp)
/* 3B78C 8003AB8C 241900FE */  addiu      $t9, $zero, 0xfe
/* 3B790 8003AB90 27BD0010 */  addiu      $sp, $sp, 0x10
/* 3B794 8003AB94 03E00008 */  jr         $ra
/* 3B798 8003AB98 A1590000 */   sb        $t9, ($t2)
/* 3B79C 8003AB9C 00000000 */  nop        

glabel func_8003ABA0
/* 3B7A0 8003ABA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3B7A4 8003ABA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3B7A8 8003ABA8 AFA40020 */  sw         $a0, 0x20($sp)
/* 3B7AC 8003ABAC 0C011210 */  jal        func_80044840
/* 3B7B0 8003ABB0 AFA0001C */   sw        $zero, 0x1c($sp)
/* 3B7B4 8003ABB4 93AE0023 */  lbu        $t6, 0x23($sp)
/* 3B7B8 8003ABB8 29C10005 */  slti       $at, $t6, 5
/* 3B7BC 8003ABBC 14200005 */  bnez       $at, .L8003ABD4
/* 3B7C0 8003ABC0 00000000 */   nop       
/* 3B7C4 8003ABC4 240F0004 */  addiu      $t7, $zero, 4
/* 3B7C8 8003ABC8 3C018009 */  lui        $at, 0x8009
/* 3B7CC 8003ABCC 10000004 */  b          .L8003ABE0
/* 3B7D0 8003ABD0 A02F5491 */   sb        $t7, 0x5491($at)
.L8003ABD4:
/* 3B7D4 8003ABD4 93B80023 */  lbu        $t8, 0x23($sp)
/* 3B7D8 8003ABD8 3C018009 */  lui        $at, 0x8009
/* 3B7DC 8003ABDC A0385491 */  sb         $t8, 0x5491($at)
.L8003ABE0:
/* 3B7E0 8003ABE0 241900FE */  addiu      $t9, $zero, 0xfe
/* 3B7E4 8003ABE4 3C018009 */  lui        $at, 0x8009
/* 3B7E8 8003ABE8 0C011221 */  jal        func_80044884
/* 3B7EC 8003ABEC A0395490 */   sb        $t9, 0x5490($at)
/* 3B7F0 8003ABF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3B7F4 8003ABF4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 3B7F8 8003ABF8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3B7FC 8003ABFC 03E00008 */  jr         $ra
/* 3B800 8003AC00 00000000 */   nop       
/* 3B804 8003AC04 00000000 */  nop        
/* 3B808 8003AC08 00000000 */  nop        
/* 3B80C 8003AC0C 00000000 */  nop        
