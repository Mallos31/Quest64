.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100BA0
/* DA7490 80100BA0 27BDFC10 */  addiu      $sp, $sp, -0x3f0
/* DA7494 80100BA4 3C038010 */  lui        $v1, %hi(D_80103130)
/* DA7498 80100BA8 24633130 */  addiu      $v1, $v1, %lo(D_80103130)
/* DA749C 80100BAC 8C6E0000 */  lw         $t6, ($v1)
/* DA74A0 80100BB0 AFBF002C */  sw         $ra, 0x2c($sp)
/* DA74A4 80100BB4 AFB30028 */  sw         $s3, 0x28($sp)
/* DA74A8 80100BB8 AFB20024 */  sw         $s2, 0x24($sp)
/* DA74AC 80100BBC AFB10020 */  sw         $s1, 0x20($sp)
/* DA74B0 80100BC0 AFB0001C */  sw         $s0, 0x1c($sp)
/* DA74B4 80100BC4 15C00017 */  bnez       $t6, .L80100C24
/* DA74B8 80100BC8 AFA403F0 */   sw        $a0, 0x3f0($sp)
/* DA74BC 80100BCC 3C028008 */  lui        $v0, %hi(TitleScreenOption)
/* DA74C0 80100BD0 9042B344 */  lbu        $v0, %lo(TitleScreenOption)($v0)
/* DA74C4 80100BD4 3C018010 */  lui        $at, %hi(D_80103400)
/* DA74C8 80100BD8 AC203400 */  sw         $zero, %lo(D_80103400)($at)
/* DA74CC 80100BDC 3C018012 */  lui        $at, %hi(D_8011AD50)
/* DA74D0 80100BE0 304F00F0 */  andi       $t7, $v0, 0xf0
/* DA74D4 80100BE4 11E00007 */  beqz       $t7, .L80100C04
/* DA74D8 80100BE8 A020AD50 */   sb        $zero, %lo(D_8011AD50)($at)
/* DA74DC 80100BEC 0002C103 */  sra        $t8, $v0, 4
/* DA74E0 80100BF0 3319000F */  andi       $t9, $t8, 0xf
/* DA74E4 80100BF4 272EFFFF */  addiu      $t6, $t9, -1
/* DA74E8 80100BF8 3C018010 */  lui        $at, %hi(D_80103408)
/* DA74EC 80100BFC 10000003 */  b          .L80100C0C
/* DA74F0 80100C00 A02E3408 */   sb        $t6, %lo(D_80103408)($at)
.L80100C04:
/* DA74F4 80100C04 3C018010 */  lui        $at, %hi(D_80103408)
/* DA74F8 80100C08 A0203408 */  sb         $zero, %lo(D_80103408)($at)
.L80100C0C:
/* DA74FC 80100C0C 3C0F8010 */  lui        $t7, %hi(D_801053E8)
/* DA7500 80100C10 25EF53E8 */  addiu      $t7, $t7, %lo(D_801053E8)
/* DA7504 80100C14 3C018012 */  lui        $at, %hi(D_8011AD5C)
/* DA7508 80100C18 AC2FAD5C */  sw         $t7, %lo(D_8011AD5C)($at)
/* DA750C 80100C1C 24180001 */  addiu      $t8, $zero, 1
/* DA7510 80100C20 AC780000 */  sw         $t8, ($v1)
.L80100C24:
/* DA7514 80100C24 3C0B8008 */  lui        $t3, %hi(UNK_DisplayListCommand)
/* DA7518 80100C28 256BB2FC */  addiu      $t3, $t3, %lo(UNK_DisplayListCommand)
/* DA751C 80100C2C 8D620000 */  lw         $v0, ($t3)
/* DA7520 80100C30 3C0F8010 */  lui        $t7, %hi(D_80103190)
/* DA7524 80100C34 25EF3190 */  addiu      $t7, $t7, %lo(D_80103190)
/* DA7528 80100C38 24590008 */  addiu      $t9, $v0, 8
/* DA752C 80100C3C AD790000 */  sw         $t9, ($t3)
/* DA7530 80100C40 3C0E0600 */  lui        $t6, 0x600
/* DA7534 80100C44 AC4E0000 */  sw         $t6, ($v0)
/* DA7538 80100C48 AC4F0004 */  sw         $t7, 4($v0)
/* DA753C 80100C4C 8D620000 */  lw         $v0, ($t3)
/* DA7540 80100C50 3C19BA00 */  lui        $t9, 0xba00
/* DA7544 80100C54 37390E02 */  ori        $t9, $t9, 0xe02
/* DA7548 80100C58 24580008 */  addiu      $t8, $v0, 8
/* DA754C 80100C5C AD780000 */  sw         $t8, ($t3)
/* DA7550 80100C60 340E8000 */  ori        $t6, $zero, 0x8000
/* DA7554 80100C64 AC4E0004 */  sw         $t6, 4($v0)
/* DA7558 80100C68 AC590000 */  sw         $t9, ($v0)
/* DA755C 80100C6C 8D620000 */  lw         $v0, ($t3)
/* DA7560 80100C70 3C190050 */  lui        $t9, 0x50
/* DA7564 80100C74 3C18B900 */  lui        $t8, 0xb900
/* DA7568 80100C78 244F0008 */  addiu      $t7, $v0, 8
/* DA756C 80100C7C AD6F0000 */  sw         $t7, ($t3)
/* DA7570 80100C80 3718031D */  ori        $t8, $t8, 0x31d
/* DA7574 80100C84 37394240 */  ori        $t9, $t9, 0x4240
/* DA7578 80100C88 AC590004 */  sw         $t9, 4($v0)
/* DA757C 80100C8C AC580000 */  sw         $t8, ($v0)
/* DA7580 80100C90 8D620000 */  lw         $v0, ($t3)
/* DA7584 80100C94 3C12E700 */  lui        $s2, 0xe700
/* DA7588 80100C98 3C198011 */  lui        $t9, 0x8011
/* DA758C 80100C9C 244E0008 */  addiu      $t6, $v0, 8
/* DA7590 80100CA0 AD6E0000 */  sw         $t6, ($t3)
/* DA7594 80100CA4 AC400004 */  sw         $zero, 4($v0)
/* DA7598 80100CA8 AC520000 */  sw         $s2, ($v0)
/* DA759C 80100CAC 8D620000 */  lw         $v0, ($t3)
/* DA75A0 80100CB0 27399090 */  addiu      $t9, $t9, -0x6f70
/* DA75A4 80100CB4 3C18FD10 */  lui        $t8, 0xfd10
/* DA75A8 80100CB8 244F0008 */  addiu      $t7, $v0, 8
/* DA75AC 80100CBC AD6F0000 */  sw         $t7, ($t3)
/* DA75B0 80100CC0 AC590004 */  sw         $t9, 4($v0)
/* DA75B4 80100CC4 AC580000 */  sw         $t8, ($v0)
/* DA75B8 80100CC8 8D620000 */  lw         $v0, ($t3)
/* DA75BC 80100CCC 3C0FE800 */  lui        $t7, 0xe800
/* DA75C0 80100CD0 3C19F500 */  lui        $t9, 0xf500
/* DA75C4 80100CD4 244E0008 */  addiu      $t6, $v0, 8
/* DA75C8 80100CD8 AD6E0000 */  sw         $t6, ($t3)
/* DA75CC 80100CDC AC400004 */  sw         $zero, 4($v0)
/* DA75D0 80100CE0 AC4F0000 */  sw         $t7, ($v0)
/* DA75D4 80100CE4 8D620000 */  lw         $v0, ($t3)
/* DA75D8 80100CE8 3C0E0700 */  lui        $t6, 0x700
/* DA75DC 80100CEC 37390100 */  ori        $t9, $t9, 0x100
/* DA75E0 80100CF0 24580008 */  addiu      $t8, $v0, 8
/* DA75E4 80100CF4 AD780000 */  sw         $t8, ($t3)
/* DA75E8 80100CF8 AC4E0004 */  sw         $t6, 4($v0)
/* DA75EC 80100CFC AC590000 */  sw         $t9, ($v0)
/* DA75F0 80100D00 8D620000 */  lw         $v0, ($t3)
/* DA75F4 80100D04 3C13E600 */  lui        $s3, 0xe600
/* DA75F8 80100D08 3C0E073F */  lui        $t6, 0x73f
/* DA75FC 80100D0C 244F0008 */  addiu      $t7, $v0, 8
/* DA7600 80100D10 AD6F0000 */  sw         $t7, ($t3)
/* DA7604 80100D14 AC400004 */  sw         $zero, 4($v0)
/* DA7608 80100D18 AC530000 */  sw         $s3, ($v0)
/* DA760C 80100D1C 8D620000 */  lw         $v0, ($t3)
/* DA7610 80100D20 35CEC000 */  ori        $t6, $t6, 0xc000
/* DA7614 80100D24 3C19F000 */  lui        $t9, 0xf000
/* DA7618 80100D28 24580008 */  addiu      $t8, $v0, 8
/* DA761C 80100D2C AD780000 */  sw         $t8, ($t3)
/* DA7620 80100D30 AC4E0004 */  sw         $t6, 4($v0)
/* DA7624 80100D34 AC590000 */  sw         $t9, ($v0)
/* DA7628 80100D38 8D620000 */  lw         $v0, ($t3)
/* DA762C 80100D3C 3C188011 */  lui        $t8, %hi(D_80109290)
/* DA7630 80100D40 27189290 */  addiu      $t8, $t8, %lo(D_80109290)
/* DA7634 80100D44 244F0008 */  addiu      $t7, $v0, 8
/* DA7638 80100D48 AD6F0000 */  sw         $t7, ($t3)
/* DA763C 80100D4C 3C11F548 */  lui        $s1, 0xf548
/* DA7640 80100D50 AC400004 */  sw         $zero, 4($v0)
/* DA7644 80100D54 AC520000 */  sw         $s2, ($v0)
/* DA7648 80100D58 AFB80034 */  sw         $t8, 0x34($sp)
/* DA764C 80100D5C 36315000 */  ori        $s1, $s1, 0x5000
/* DA7650 80100D60 00008025 */  or         $s0, $zero, $zero
/* DA7654 80100D64 241F0005 */  addiu      $ra, $zero, 5
/* DA7658 80100D68 240D0006 */  addiu      $t5, $zero, 6
.L80100D6C:
/* DA765C 80100D6C 8D620000 */  lw         $v0, ($t3)
/* DA7660 80100D70 3C0EFD48 */  lui        $t6, 0xfd48
/* DA7664 80100D74 35CE013F */  ori        $t6, $t6, 0x13f
/* DA7668 80100D78 24590008 */  addiu      $t9, $v0, 8
/* DA766C 80100D7C AD790000 */  sw         $t9, ($t3)
/* DA7670 80100D80 AC4E0000 */  sw         $t6, ($v0)
/* DA7674 80100D84 8FAF0034 */  lw         $t7, 0x34($sp)
/* DA7678 80100D88 3C190700 */  lui        $t9, 0x700
/* DA767C 80100D8C 00106080 */  sll        $t4, $s0, 2
/* DA7680 80100D90 AC4F0004 */  sw         $t7, 4($v0)
/* DA7684 80100D94 8D620000 */  lw         $v0, ($t3)
/* DA7688 80100D98 3C01F400 */  lui        $at, 0xf400
/* DA768C 80100D9C 001F3880 */  sll        $a3, $ra, 2
/* DA7690 80100DA0 24580008 */  addiu      $t8, $v0, 8
/* DA7694 80100DA4 AD780000 */  sw         $t8, ($t3)
/* DA7698 80100DA8 AC590004 */  sw         $t9, 4($v0)
/* DA769C 80100DAC AC510000 */  sw         $s1, ($v0)
/* DA76A0 80100DB0 8D620000 */  lw         $v0, ($t3)
/* DA76A4 80100DB4 31980FFF */  andi       $t8, $t4, 0xfff
/* DA76A8 80100DB8 0301C825 */  or         $t9, $t8, $at
/* DA76AC 80100DBC 244E0008 */  addiu      $t6, $v0, 8
/* DA76B0 80100DC0 AD6E0000 */  sw         $t6, ($t3)
/* DA76B4 80100DC4 AC400004 */  sw         $zero, 4($v0)
/* DA76B8 80100DC8 AC530000 */  sw         $s3, ($v0)
/* DA76BC 80100DCC 8D620000 */  lw         $v0, ($t3)
/* DA76C0 80100DD0 3C01074F */  lui        $at, 0x74f
/* DA76C4 80100DD4 3421C000 */  ori        $at, $at, 0xc000
/* DA76C8 80100DD8 244F0008 */  addiu      $t7, $v0, 8
/* DA76CC 80100DDC AD6F0000 */  sw         $t7, ($t3)
/* DA76D0 80100DE0 30EE0FFF */  andi       $t6, $a3, 0xfff
/* DA76D4 80100DE4 01C17825 */  or         $t7, $t6, $at
/* DA76D8 80100DE8 AC4F0004 */  sw         $t7, 4($v0)
/* DA76DC 80100DEC AC590000 */  sw         $t9, ($v0)
/* DA76E0 80100DF0 8D620000 */  lw         $v0, ($t3)
/* DA76E4 80100DF4 03006025 */  or         $t4, $t8, $zero
/* DA76E8 80100DF8 3C01F200 */  lui        $at, 0xf200
/* DA76EC 80100DFC 24580008 */  addiu      $t8, $v0, 8
/* DA76F0 80100E00 AD780000 */  sw         $t8, ($t3)
/* DA76F4 80100E04 AC400004 */  sw         $zero, 4($v0)
/* DA76F8 80100E08 AC520000 */  sw         $s2, ($v0)
/* DA76FC 80100E0C 8D620000 */  lw         $v0, ($t3)
/* DA7700 80100E10 01817825 */  or         $t7, $t4, $at
/* DA7704 80100E14 01C03825 */  or         $a3, $t6, $zero
/* DA7708 80100E18 24590008 */  addiu      $t9, $v0, 8
/* DA770C 80100E1C AD790000 */  sw         $t9, ($t3)
/* DA7710 80100E20 AC400004 */  sw         $zero, 4($v0)
/* DA7714 80100E24 AC510000 */  sw         $s1, ($v0)
/* DA7718 80100E28 8D620000 */  lw         $v0, ($t3)
/* DA771C 80100E2C 3C01004F */  lui        $at, 0x4f
/* DA7720 80100E30 3421C000 */  ori        $at, $at, 0xc000
/* DA7724 80100E34 244E0008 */  addiu      $t6, $v0, 8
/* DA7728 80100E38 AD6E0000 */  sw         $t6, ($t3)
/* DA772C 80100E3C 00E1C025 */  or         $t8, $a3, $at
/* DA7730 80100E40 AC580004 */  sw         $t8, 4($v0)
/* DA7734 80100E44 AC4F0000 */  sw         $t7, ($v0)
/* DA7738 80100E48 8D620000 */  lw         $v0, ($t3)
/* DA773C 80100E4C 000D7080 */  sll        $t6, $t5, 2
/* DA7740 80100E50 31CF0FFF */  andi       $t7, $t6, 0xfff
/* DA7744 80100E54 24590008 */  addiu      $t9, $v0, 8
/* DA7748 80100E58 AD790000 */  sw         $t9, ($t3)
/* DA774C 80100E5C 3C01E450 */  lui        $at, 0xe450
/* DA7750 80100E60 AFA20398 */  sw         $v0, 0x398($sp)
/* DA7754 80100E64 01E1C025 */  or         $t8, $t7, $at
/* DA7758 80100E68 AC580000 */  sw         $t8, ($v0)
/* DA775C 80100E6C AC4C0004 */  sw         $t4, 4($v0)
/* DA7760 80100E70 8D620000 */  lw         $v0, ($t3)
/* DA7764 80100E74 0010C140 */  sll        $t8, $s0, 5
/* DA7768 80100E78 3319FFFF */  andi       $t9, $t8, 0xffff
/* DA776C 80100E7C 244E0008 */  addiu      $t6, $v0, 8
/* DA7770 80100E80 AD6E0000 */  sw         $t6, ($t3)
/* DA7774 80100E84 3C0FB400 */  lui        $t7, 0xb400
/* DA7778 80100E88 AC4F0000 */  sw         $t7, ($v0)
/* DA777C 80100E8C AC590004 */  sw         $t9, 4($v0)
/* DA7780 80100E90 8D620000 */  lw         $v0, ($t3)
/* DA7784 80100E94 25AD0006 */  addiu      $t5, $t5, 6
/* DA7788 80100E98 3C180400 */  lui        $t8, 0x400
/* DA778C 80100E9C 244E0008 */  addiu      $t6, $v0, 8
/* DA7790 80100EA0 29A100E4 */  slti       $at, $t5, 0xe4
/* DA7794 80100EA4 AD6E0000 */  sw         $t6, ($t3)
/* DA7798 80100EA8 37180400 */  ori        $t8, $t8, 0x400
/* DA779C 80100EAC 3C0FB300 */  lui        $t7, 0xb300
/* DA77A0 80100EB0 26100006 */  addiu      $s0, $s0, 6
/* DA77A4 80100EB4 27FF0006 */  addiu      $ra, $ra, 6
/* DA77A8 80100EB8 AC4F0000 */  sw         $t7, ($v0)
/* DA77AC 80100EBC 1420FFAB */  bnez       $at, .L80100D6C
/* DA77B0 80100EC0 AC580004 */   sw        $t8, 4($v0)
/* DA77B4 80100EC4 8D620000 */  lw         $v0, ($t3)
/* DA77B8 80100EC8 3C0EFD48 */  lui        $t6, 0xfd48
/* DA77BC 80100ECC 35CE013F */  ori        $t6, $t6, 0x13f
/* DA77C0 80100ED0 24590008 */  addiu      $t9, $v0, 8
/* DA77C4 80100ED4 AD790000 */  sw         $t9, ($t3)
/* DA77C8 80100ED8 AC4E0000 */  sw         $t6, ($v0)
/* DA77CC 80100EDC 8FAF0034 */  lw         $t7, 0x34($sp)
/* DA77D0 80100EE0 3C190700 */  lui        $t9, 0x700
/* DA77D4 80100EE4 00106080 */  sll        $t4, $s0, 2
/* DA77D8 80100EE8 AC4F0004 */  sw         $t7, 4($v0)
/* DA77DC 80100EEC 8D620000 */  lw         $v0, ($t3)
/* DA77E0 80100EF0 3C01F400 */  lui        $at, 0xf400
/* DA77E4 80100EF4 26070001 */  addiu      $a3, $s0, 1
/* DA77E8 80100EF8 24580008 */  addiu      $t8, $v0, 8
/* DA77EC 80100EFC AD780000 */  sw         $t8, ($t3)
/* DA77F0 80100F00 AC590004 */  sw         $t9, 4($v0)
/* DA77F4 80100F04 AC510000 */  sw         $s1, ($v0)
/* DA77F8 80100F08 8D620000 */  lw         $v0, ($t3)
/* DA77FC 80100F0C 31980FFF */  andi       $t8, $t4, 0xfff
/* DA7800 80100F10 0301C825 */  or         $t9, $t8, $at
/* DA7804 80100F14 244E0008 */  addiu      $t6, $v0, 8
/* DA7808 80100F18 AD6E0000 */  sw         $t6, ($t3)
/* DA780C 80100F1C AC400004 */  sw         $zero, 4($v0)
/* DA7810 80100F20 AC530000 */  sw         $s3, ($v0)
/* DA7814 80100F24 8D620000 */  lw         $v0, ($t3)
/* DA7818 80100F28 00077080 */  sll        $t6, $a3, 2
/* DA781C 80100F2C 3C01074F */  lui        $at, 0x74f
/* DA7820 80100F30 244F0008 */  addiu      $t7, $v0, 8
/* DA7824 80100F34 AD6F0000 */  sw         $t7, ($t3)
/* DA7828 80100F38 3421C000 */  ori        $at, $at, 0xc000
/* DA782C 80100F3C 31C70FFF */  andi       $a3, $t6, 0xfff
/* DA7830 80100F40 03006025 */  or         $t4, $t8, $zero
/* DA7834 80100F44 00E1C025 */  or         $t8, $a3, $at
/* DA7838 80100F48 AC580004 */  sw         $t8, 4($v0)
/* DA783C 80100F4C AC590000 */  sw         $t9, ($v0)
/* DA7840 80100F50 8D620000 */  lw         $v0, ($t3)
/* DA7844 80100F54 3C01F200 */  lui        $at, 0xf200
/* DA7848 80100F58 0181C025 */  or         $t8, $t4, $at
/* DA784C 80100F5C 24590008 */  addiu      $t9, $v0, 8
/* DA7850 80100F60 AD790000 */  sw         $t9, ($t3)
/* DA7854 80100F64 AC400004 */  sw         $zero, 4($v0)
/* DA7858 80100F68 AC520000 */  sw         $s2, ($v0)
/* DA785C 80100F6C 8D620000 */  lw         $v0, ($t3)
/* DA7860 80100F70 3C01004F */  lui        $at, 0x4f
/* DA7864 80100F74 3421C000 */  ori        $at, $at, 0xc000
/* DA7868 80100F78 244E0008 */  addiu      $t6, $v0, 8
/* DA786C 80100F7C AD6E0000 */  sw         $t6, ($t3)
/* DA7870 80100F80 AC400004 */  sw         $zero, 4($v0)
/* DA7874 80100F84 AC510000 */  sw         $s1, ($v0)
/* DA7878 80100F88 8D620000 */  lw         $v0, ($t3)
/* DA787C 80100F8C 00E1C825 */  or         $t9, $a3, $at
/* DA7880 80100F90 3C01E450 */  lui        $at, 0xe450
/* DA7884 80100F94 244F0008 */  addiu      $t7, $v0, 8
/* DA7888 80100F98 AD6F0000 */  sw         $t7, ($t3)
/* DA788C 80100F9C AC590004 */  sw         $t9, 4($v0)
/* DA7890 80100FA0 AC580000 */  sw         $t8, ($v0)
/* DA7894 80100FA4 8D620000 */  lw         $v0, ($t3)
/* DA7898 80100FA8 260F0002 */  addiu      $t7, $s0, 2
/* DA789C 80100FAC 000FC080 */  sll        $t8, $t7, 2
/* DA78A0 80100FB0 244E0008 */  addiu      $t6, $v0, 8
/* DA78A4 80100FB4 AD6E0000 */  sw         $t6, ($t3)
/* DA78A8 80100FB8 33190FFF */  andi       $t9, $t8, 0xfff
/* DA78AC 80100FBC 03217025 */  or         $t6, $t9, $at
/* DA78B0 80100FC0 AC4E0000 */  sw         $t6, ($v0)
/* DA78B4 80100FC4 AC4C0004 */  sw         $t4, 4($v0)
/* DA78B8 80100FC8 8D620000 */  lw         $v0, ($t3)
/* DA78BC 80100FCC 0010C940 */  sll        $t9, $s0, 5
/* DA78C0 80100FD0 332EFFFF */  andi       $t6, $t9, 0xffff
/* DA78C4 80100FD4 244F0008 */  addiu      $t7, $v0, 8
/* DA78C8 80100FD8 AD6F0000 */  sw         $t7, ($t3)
/* DA78CC 80100FDC 3C18B400 */  lui        $t8, 0xb400
/* DA78D0 80100FE0 AC580000 */  sw         $t8, ($v0)
/* DA78D4 80100FE4 AC4E0004 */  sw         $t6, 4($v0)
/* DA78D8 80100FE8 8D620000 */  lw         $v0, ($t3)
/* DA78DC 80100FEC 3C190400 */  lui        $t9, 0x400
/* DA78E0 80100FF0 37390400 */  ori        $t9, $t9, 0x400
/* DA78E4 80100FF4 244F0008 */  addiu      $t7, $v0, 8
/* DA78E8 80100FF8 AD6F0000 */  sw         $t7, ($t3)
/* DA78EC 80100FFC 3C18B300 */  lui        $t8, 0xb300
/* DA78F0 80101000 AC580000 */  sw         $t8, ($v0)
/* DA78F4 80101004 AC590004 */  sw         $t9, 4($v0)
/* DA78F8 80101008 8D620000 */  lw         $v0, ($t3)
/* DA78FC 8010100C 3C198010 */  lui        $t9, %hi(D_80105550)
/* DA7900 80101010 27395550 */  addiu      $t9, $t9, %lo(D_80105550)
/* DA7904 80101014 244E0008 */  addiu      $t6, $v0, 8
/* DA7908 80101018 AD6E0000 */  sw         $t6, ($t3)
/* DA790C 8010101C AC400004 */  sw         $zero, 4($v0)
/* DA7910 80101020 AC520000 */  sw         $s2, ($v0)
/* DA7914 80101024 8D620000 */  lw         $v0, ($t3)
/* DA7918 80101028 3C18FD10 */  lui        $t8, 0xfd10
/* DA791C 8010102C 00008025 */  or         $s0, $zero, $zero
/* DA7920 80101030 244F0008 */  addiu      $t7, $v0, 8
/* DA7924 80101034 AD6F0000 */  sw         $t7, ($t3)
/* DA7928 80101038 AC590004 */  sw         $t9, 4($v0)
/* DA792C 8010103C AC580000 */  sw         $t8, ($v0)
/* DA7930 80101040 8D620000 */  lw         $v0, ($t3)
/* DA7934 80101044 3C0FE800 */  lui        $t7, 0xe800
/* DA7938 80101048 3C19F500 */  lui        $t9, 0xf500
/* DA793C 8010104C 244E0008 */  addiu      $t6, $v0, 8
/* DA7940 80101050 AD6E0000 */  sw         $t6, ($t3)
/* DA7944 80101054 AC400004 */  sw         $zero, 4($v0)
/* DA7948 80101058 AC4F0000 */  sw         $t7, ($v0)
/* DA794C 8010105C 8D620000 */  lw         $v0, ($t3)
/* DA7950 80101060 3C0E0700 */  lui        $t6, 0x700
/* DA7954 80101064 37390100 */  ori        $t9, $t9, 0x100
/* DA7958 80101068 24580008 */  addiu      $t8, $v0, 8
/* DA795C 8010106C AD780000 */  sw         $t8, ($t3)
/* DA7960 80101070 AC4E0004 */  sw         $t6, 4($v0)
/* DA7964 80101074 AC590000 */  sw         $t9, ($v0)
/* DA7968 80101078 8D620000 */  lw         $v0, ($t3)
/* DA796C 8010107C 3C0E073F */  lui        $t6, 0x73f
/* DA7970 80101080 35CEC000 */  ori        $t6, $t6, 0xc000
/* DA7974 80101084 244F0008 */  addiu      $t7, $v0, 8
/* DA7978 80101088 AD6F0000 */  sw         $t7, ($t3)
/* DA797C 8010108C AC400004 */  sw         $zero, 4($v0)
/* DA7980 80101090 AC530000 */  sw         $s3, ($v0)
/* DA7984 80101094 8D620000 */  lw         $v0, ($t3)
/* DA7988 80101098 3C19F000 */  lui        $t9, 0xf000
/* DA798C 8010109C 24110053 */  addiu      $s1, $zero, 0x53
/* DA7990 801010A0 24580008 */  addiu      $t8, $v0, 8
/* DA7994 801010A4 AD780000 */  sw         $t8, ($t3)
/* DA7998 801010A8 AC4E0004 */  sw         $t6, 4($v0)
/* DA799C 801010AC AC590000 */  sw         $t9, ($v0)
/* DA79A0 801010B0 8D620000 */  lw         $v0, ($t3)
/* DA79A4 801010B4 3C198010 */  lui        $t9, %hi(D_80105750)
/* DA79A8 801010B8 27395750 */  addiu      $t9, $t9, %lo(D_80105750)
/* DA79AC 801010BC 244F0008 */  addiu      $t7, $v0, 8
/* DA79B0 801010C0 AD6F0000 */  sw         $t7, ($t3)
/* DA79B4 801010C4 AC520000 */  sw         $s2, ($v0)
/* DA79B8 801010C8 AFA2034C */  sw         $v0, 0x34c($sp)
/* DA79BC 801010CC AC400004 */  sw         $zero, 4($v0)
/* DA79C0 801010D0 AFB90034 */  sw         $t9, 0x34($sp)
/* DA79C4 801010D4 240D0007 */  addiu      $t5, $zero, 7
/* DA79C8 801010D8 241F005B */  addiu      $ra, $zero, 0x5b
.L801010DC:
/* DA79CC 801010DC 8D620000 */  lw         $v0, ($t3)
/* DA79D0 801010E0 3C0FFD48 */  lui        $t7, 0xfd48
/* DA79D4 801010E4 35EF00DD */  ori        $t7, $t7, 0xdd
/* DA79D8 801010E8 244E0008 */  addiu      $t6, $v0, 8
/* DA79DC 801010EC AD6E0000 */  sw         $t6, ($t3)
/* DA79E0 801010F0 AC4F0000 */  sw         $t7, ($v0)
/* DA79E4 801010F4 8FB80034 */  lw         $t8, 0x34($sp)
/* DA79E8 801010F8 3C0EF548 */  lui        $t6, 0xf548
/* DA79EC 801010FC 35CE3800 */  ori        $t6, $t6, 0x3800
/* DA79F0 80101100 AC580004 */  sw         $t8, 4($v0)
/* DA79F4 80101104 8D620000 */  lw         $v0, ($t3)
/* DA79F8 80101108 3C0F0700 */  lui        $t7, 0x700
/* DA79FC 8010110C 00106080 */  sll        $t4, $s0, 2
/* DA7A00 80101110 24590008 */  addiu      $t9, $v0, 8
/* DA7A04 80101114 AD790000 */  sw         $t9, ($t3)
/* DA7A08 80101118 AC4F0004 */  sw         $t7, 4($v0)
/* DA7A0C 8010111C AC4E0000 */  sw         $t6, ($v0)
/* DA7A10 80101120 8D620000 */  lw         $v0, ($t3)
/* DA7A14 80101124 318E0FFF */  andi       $t6, $t4, 0xfff
/* DA7A18 80101128 3C01F400 */  lui        $at, 0xf400
/* DA7A1C 8010112C 24580008 */  addiu      $t8, $v0, 8
/* DA7A20 80101130 AD780000 */  sw         $t8, ($t3)
/* DA7A24 80101134 AC400004 */  sw         $zero, 4($v0)
/* DA7A28 80101138 AC530000 */  sw         $s3, ($v0)
/* DA7A2C 8010113C 8D620000 */  lw         $v0, ($t3)
/* DA7A30 80101140 01C17825 */  or         $t7, $t6, $at
/* DA7A34 80101144 3C010737 */  lui        $at, 0x737
/* DA7A38 80101148 24590008 */  addiu      $t9, $v0, 8
/* DA7A3C 8010114C AD790000 */  sw         $t9, ($t3)
/* DA7A40 80101150 000D3880 */  sll        $a3, $t5, 2
/* DA7A44 80101154 30F80FFF */  andi       $t8, $a3, 0xfff
/* DA7A48 80101158 34214000 */  ori        $at, $at, 0x4000
/* DA7A4C 8010115C 0301C825 */  or         $t9, $t8, $at
/* DA7A50 80101160 AC590004 */  sw         $t9, 4($v0)
/* DA7A54 80101164 AC4F0000 */  sw         $t7, ($v0)
/* DA7A58 80101168 8D620000 */  lw         $v0, ($t3)
/* DA7A5C 8010116C 01C06025 */  or         $t4, $t6, $zero
/* DA7A60 80101170 03003825 */  or         $a3, $t8, $zero
/* DA7A64 80101174 244E0008 */  addiu      $t6, $v0, 8
/* DA7A68 80101178 AD6E0000 */  sw         $t6, ($t3)
/* DA7A6C 8010117C AC400004 */  sw         $zero, 4($v0)
/* DA7A70 80101180 AC520000 */  sw         $s2, ($v0)
/* DA7A74 80101184 8D620000 */  lw         $v0, ($t3)
/* DA7A78 80101188 3C18F548 */  lui        $t8, 0xf548
/* DA7A7C 8010118C 37183800 */  ori        $t8, $t8, 0x3800
/* DA7A80 80101190 244F0008 */  addiu      $t7, $v0, 8
/* DA7A84 80101194 AD6F0000 */  sw         $t7, ($t3)
/* DA7A88 80101198 AC400004 */  sw         $zero, 4($v0)
/* DA7A8C 8010119C AC580000 */  sw         $t8, ($v0)
/* DA7A90 801011A0 8D620000 */  lw         $v0, ($t3)
/* DA7A94 801011A4 3C01F200 */  lui        $at, 0xf200
/* DA7A98 801011A8 01817025 */  or         $t6, $t4, $at
/* DA7A9C 801011AC 24590008 */  addiu      $t9, $v0, 8
/* DA7AA0 801011B0 AD790000 */  sw         $t9, ($t3)
/* DA7AA4 801011B4 3C010037 */  lui        $at, 0x37
/* DA7AA8 801011B8 34214000 */  ori        $at, $at, 0x4000
/* DA7AAC 801011BC 00E17825 */  or         $t7, $a3, $at
/* DA7AB0 801011C0 AC4F0004 */  sw         $t7, 4($v0)
/* DA7AB4 801011C4 AC4E0000 */  sw         $t6, ($v0)
/* DA7AB8 801011C8 8D620000 */  lw         $v0, ($t3)
/* DA7ABC 801011CC 3C01E443 */  lui        $at, 0xe443
/* DA7AC0 801011D0 001FC880 */  sll        $t9, $ra, 2
/* DA7AC4 801011D4 332E0FFF */  andi       $t6, $t9, 0xfff
/* DA7AC8 801011D8 3421C000 */  ori        $at, $at, 0xc000
/* DA7ACC 801011DC 01C17825 */  or         $t7, $t6, $at
/* DA7AD0 801011E0 24580008 */  addiu      $t8, $v0, 8
/* DA7AD4 801011E4 AD780000 */  sw         $t8, ($t3)
/* DA7AD8 801011E8 3C01000C */  lui        $at, 0xc
/* DA7ADC 801011EC 0011C880 */  sll        $t9, $s1, 2
/* DA7AE0 801011F0 AFA2032C */  sw         $v0, 0x32c($sp)
/* DA7AE4 801011F4 332E0FFF */  andi       $t6, $t9, 0xfff
/* DA7AE8 801011F8 34214000 */  ori        $at, $at, 0x4000
/* DA7AEC 801011FC AC4F0000 */  sw         $t7, ($v0)
/* DA7AF0 80101200 01C17825 */  or         $t7, $t6, $at
/* DA7AF4 80101204 AC4F0004 */  sw         $t7, 4($v0)
/* DA7AF8 80101208 8D620000 */  lw         $v0, ($t3)
/* DA7AFC 8010120C 00107940 */  sll        $t7, $s0, 5
/* DA7B00 80101210 31F8FFFF */  andi       $t8, $t7, 0xffff
/* DA7B04 80101214 24590008 */  addiu      $t9, $v0, 8
/* DA7B08 80101218 AD790000 */  sw         $t9, ($t3)
/* DA7B0C 8010121C 3C0EB400 */  lui        $t6, 0xb400
/* DA7B10 80101220 AC4E0000 */  sw         $t6, ($v0)
/* DA7B14 80101224 AC580004 */  sw         $t8, 4($v0)
/* DA7B18 80101228 8D620000 */  lw         $v0, ($t3)
/* DA7B1C 8010122C 3C0F0400 */  lui        $t7, 0x400
/* DA7B20 80101230 24010093 */  addiu      $at, $zero, 0x93
/* DA7B24 80101234 24590008 */  addiu      $t9, $v0, 8
/* DA7B28 80101238 26310008 */  addiu      $s1, $s1, 8
/* DA7B2C 8010123C AD790000 */  sw         $t9, ($t3)
/* DA7B30 80101240 35EF0400 */  ori        $t7, $t7, 0x400
/* DA7B34 80101244 3C0EB300 */  lui        $t6, 0xb300
/* DA7B38 80101248 26100008 */  addiu      $s0, $s0, 8
/* DA7B3C 8010124C 27FF0008 */  addiu      $ra, $ra, 8
/* DA7B40 80101250 25AD0008 */  addiu      $t5, $t5, 8
/* DA7B44 80101254 AC4E0000 */  sw         $t6, ($v0)
/* DA7B48 80101258 1621FFA0 */  bne        $s1, $at, .L801010DC
/* DA7B4C 8010125C AC4F0004 */   sw        $t7, 4($v0)
/* DA7B50 80101260 8D620000 */  lw         $v0, ($t3)
/* DA7B54 80101264 3C19FD48 */  lui        $t9, 0xfd48
/* DA7B58 80101268 373900DD */  ori        $t9, $t9, 0xdd
/* DA7B5C 8010126C 24580008 */  addiu      $t8, $v0, 8
/* DA7B60 80101270 AD780000 */  sw         $t8, ($t3)
/* DA7B64 80101274 AC590000 */  sw         $t9, ($v0)
/* DA7B68 80101278 8FAE0034 */  lw         $t6, 0x34($sp)
/* DA7B6C 8010127C 3C18F548 */  lui        $t8, 0xf548
/* DA7B70 80101280 37183800 */  ori        $t8, $t8, 0x3800
/* DA7B74 80101284 AC4E0004 */  sw         $t6, 4($v0)
/* DA7B78 80101288 8D620000 */  lw         $v0, ($t3)
/* DA7B7C 8010128C 3C190700 */  lui        $t9, 0x700
/* DA7B80 80101290 00106080 */  sll        $t4, $s0, 2
/* DA7B84 80101294 244F0008 */  addiu      $t7, $v0, 8
/* DA7B88 80101298 AD6F0000 */  sw         $t7, ($t3)
/* DA7B8C 8010129C AC590004 */  sw         $t9, 4($v0)
/* DA7B90 801012A0 AC580000 */  sw         $t8, ($v0)
/* DA7B94 801012A4 8D620000 */  lw         $v0, ($t3)
/* DA7B98 801012A8 31980FFF */  andi       $t8, $t4, 0xfff
/* DA7B9C 801012AC 3C01F400 */  lui        $at, 0xf400
/* DA7BA0 801012B0 244E0008 */  addiu      $t6, $v0, 8
/* DA7BA4 801012B4 AD6E0000 */  sw         $t6, ($t3)
/* DA7BA8 801012B8 AC400004 */  sw         $zero, 4($v0)
/* DA7BAC 801012BC AC530000 */  sw         $s3, ($v0)
/* DA7BB0 801012C0 8D620000 */  lw         $v0, ($t3)
/* DA7BB4 801012C4 0301C825 */  or         $t9, $t8, $at
/* DA7BB8 801012C8 26070001 */  addiu      $a3, $s0, 1
/* DA7BBC 801012CC 00077080 */  sll        $t6, $a3, 2
/* DA7BC0 801012D0 3C010737 */  lui        $at, 0x737
/* DA7BC4 801012D4 244F0008 */  addiu      $t7, $v0, 8
/* DA7BC8 801012D8 AD6F0000 */  sw         $t7, ($t3)
/* DA7BCC 801012DC 34214000 */  ori        $at, $at, 0x4000
/* DA7BD0 801012E0 31C70FFF */  andi       $a3, $t6, 0xfff
/* DA7BD4 801012E4 03006025 */  or         $t4, $t8, $zero
/* DA7BD8 801012E8 00E1C025 */  or         $t8, $a3, $at
/* DA7BDC 801012EC AC580004 */  sw         $t8, 4($v0)
/* DA7BE0 801012F0 AC590000 */  sw         $t9, ($v0)
/* DA7BE4 801012F4 8D620000 */  lw         $v0, ($t3)
/* DA7BE8 801012F8 3C0FF548 */  lui        $t7, 0xf548
/* DA7BEC 801012FC 35EF3800 */  ori        $t7, $t7, 0x3800
/* DA7BF0 80101300 24590008 */  addiu      $t9, $v0, 8
/* DA7BF4 80101304 AD790000 */  sw         $t9, ($t3)
/* DA7BF8 80101308 AC400004 */  sw         $zero, 4($v0)
/* DA7BFC 8010130C AC520000 */  sw         $s2, ($v0)
/* DA7C00 80101310 8D620000 */  lw         $v0, ($t3)
/* DA7C04 80101314 3C01F200 */  lui        $at, 0xf200
/* DA7C08 80101318 0181C825 */  or         $t9, $t4, $at
/* DA7C0C 8010131C 244E0008 */  addiu      $t6, $v0, 8
/* DA7C10 80101320 AD6E0000 */  sw         $t6, ($t3)
/* DA7C14 80101324 AC400004 */  sw         $zero, 4($v0)
/* DA7C18 80101328 AC4F0000 */  sw         $t7, ($v0)
/* DA7C1C 8010132C 8D620000 */  lw         $v0, ($t3)
/* DA7C20 80101330 3C010037 */  lui        $at, 0x37
/* DA7C24 80101334 34214000 */  ori        $at, $at, 0x4000
/* DA7C28 80101338 24580008 */  addiu      $t8, $v0, 8
/* DA7C2C 8010133C AD780000 */  sw         $t8, ($t3)
/* DA7C30 80101340 00E17025 */  or         $t6, $a3, $at
/* DA7C34 80101344 AC4E0004 */  sw         $t6, 4($v0)
/* DA7C38 80101348 AC590000 */  sw         $t9, ($v0)
/* DA7C3C 8010134C 8D620000 */  lw         $v0, ($t3)
/* DA7C40 80101350 26180055 */  addiu      $t8, $s0, 0x55
/* DA7C44 80101354 0018C880 */  sll        $t9, $t8, 2
/* DA7C48 80101358 3C01E443 */  lui        $at, 0xe443
/* DA7C4C 8010135C 244F0008 */  addiu      $t7, $v0, 8
/* DA7C50 80101360 AD6F0000 */  sw         $t7, ($t3)
/* DA7C54 80101364 3421C000 */  ori        $at, $at, 0xc000
/* DA7C58 80101368 332E0FFF */  andi       $t6, $t9, 0xfff
/* DA7C5C 8010136C 01C17825 */  or         $t7, $t6, $at
/* DA7C60 80101370 3C01000C */  lui        $at, 0xc
/* DA7C64 80101374 0011C080 */  sll        $t8, $s1, 2
/* DA7C68 80101378 33190FFF */  andi       $t9, $t8, 0xfff
/* DA7C6C 8010137C 34214000 */  ori        $at, $at, 0x4000
/* DA7C70 80101380 03217025 */  or         $t6, $t9, $at
/* DA7C74 80101384 AC4E0004 */  sw         $t6, 4($v0)
/* DA7C78 80101388 AC4F0000 */  sw         $t7, ($v0)
/* DA7C7C 8010138C 8D620000 */  lw         $v0, ($t3)
/* DA7C80 80101390 0010C940 */  sll        $t9, $s0, 5
/* DA7C84 80101394 332EFFFF */  andi       $t6, $t9, 0xffff
/* DA7C88 80101398 244F0008 */  addiu      $t7, $v0, 8
/* DA7C8C 8010139C AD6F0000 */  sw         $t7, ($t3)
/* DA7C90 801013A0 3C18B400 */  lui        $t8, 0xb400
/* DA7C94 801013A4 AC580000 */  sw         $t8, ($v0)
/* DA7C98 801013A8 AC4E0004 */  sw         $t6, 4($v0)
/* DA7C9C 801013AC 8D620000 */  lw         $v0, ($t3)
/* DA7CA0 801013B0 3C190400 */  lui        $t9, 0x400
/* DA7CA4 801013B4 37390400 */  ori        $t9, $t9, 0x400
/* DA7CA8 801013B8 244F0008 */  addiu      $t7, $v0, 8
/* DA7CAC 801013BC AD6F0000 */  sw         $t7, ($t3)
/* DA7CB0 801013C0 3C18B300 */  lui        $t8, 0xb300
/* DA7CB4 801013C4 AC580000 */  sw         $t8, ($v0)
/* DA7CB8 801013C8 AC590004 */  sw         $t9, 4($v0)
/* DA7CBC 801013CC 8D620000 */  lw         $v0, ($t3)
/* DA7CC0 801013D0 3C198010 */  lui        $t9, %hi(D_80104A30)
/* DA7CC4 801013D4 27394A30 */  addiu      $t9, $t9, %lo(D_80104A30)
/* DA7CC8 801013D8 244E0008 */  addiu      $t6, $v0, 8
/* DA7CCC 801013DC AD6E0000 */  sw         $t6, ($t3)
/* DA7CD0 801013E0 AC400004 */  sw         $zero, 4($v0)
/* DA7CD4 801013E4 AC520000 */  sw         $s2, ($v0)
/* DA7CD8 801013E8 8D620000 */  lw         $v0, ($t3)
/* DA7CDC 801013EC 3C18FD10 */  lui        $t8, 0xfd10
/* DA7CE0 801013F0 3C11FD48 */  lui        $s1, 0xfd48
/* DA7CE4 801013F4 244F0008 */  addiu      $t7, $v0, 8
/* DA7CE8 801013F8 AD6F0000 */  sw         $t7, ($t3)
/* DA7CEC 801013FC AC590004 */  sw         $t9, 4($v0)
/* DA7CF0 80101400 AC580000 */  sw         $t8, ($v0)
/* DA7CF4 80101404 8D620000 */  lw         $v0, ($t3)
/* DA7CF8 80101408 3C0FE800 */  lui        $t7, 0xe800
/* DA7CFC 8010140C 3C19F500 */  lui        $t9, 0xf500
/* DA7D00 80101410 244E0008 */  addiu      $t6, $v0, 8
/* DA7D04 80101414 AD6E0000 */  sw         $t6, ($t3)
/* DA7D08 80101418 AC400004 */  sw         $zero, 4($v0)
/* DA7D0C 8010141C AC4F0000 */  sw         $t7, ($v0)
/* DA7D10 80101420 8D620000 */  lw         $v0, ($t3)
/* DA7D14 80101424 3C0E0700 */  lui        $t6, 0x700
/* DA7D18 80101428 37390100 */  ori        $t9, $t9, 0x100
/* DA7D1C 8010142C 24580008 */  addiu      $t8, $v0, 8
/* DA7D20 80101430 AD780000 */  sw         $t8, ($t3)
/* DA7D24 80101434 AC4E0004 */  sw         $t6, 4($v0)
/* DA7D28 80101438 AC590000 */  sw         $t9, ($v0)
/* DA7D2C 8010143C 8D620000 */  lw         $v0, ($t3)
/* DA7D30 80101440 3C0E0703 */  lui        $t6, 0x703
/* DA7D34 80101444 35CEC000 */  ori        $t6, $t6, 0xc000
/* DA7D38 80101448 244F0008 */  addiu      $t7, $v0, 8
/* DA7D3C 8010144C AD6F0000 */  sw         $t7, ($t3)
/* DA7D40 80101450 AC400004 */  sw         $zero, 4($v0)
/* DA7D44 80101454 AC530000 */  sw         $s3, ($v0)
/* DA7D48 80101458 8D620000 */  lw         $v0, ($t3)
/* DA7D4C 8010145C 3C19F000 */  lui        $t9, 0xf000
/* DA7D50 80101460 3C0D8010 */  lui        $t5, 0x8010
/* DA7D54 80101464 24580008 */  addiu      $t8, $v0, 8
/* DA7D58 80101468 AD780000 */  sw         $t8, ($t3)
/* DA7D5C 8010146C AC4E0004 */  sw         $t6, 4($v0)
/* DA7D60 80101470 AC590000 */  sw         $t9, ($v0)
/* DA7D64 80101474 8D620000 */  lw         $v0, ($t3)
/* DA7D68 80101478 3631004F */  ori        $s1, $s1, 0x4f
/* DA7D6C 8010147C 25AD4528 */  addiu      $t5, $t5, 0x4528
/* DA7D70 80101480 244F0008 */  addiu      $t7, $v0, 8
/* DA7D74 80101484 AD6F0000 */  sw         $t7, ($t3)
/* DA7D78 80101488 AC400004 */  sw         $zero, 4($v0)
/* DA7D7C 8010148C AC520000 */  sw         $s2, ($v0)
/* DA7D80 80101490 8D620000 */  lw         $v0, ($t3)
/* DA7D84 80101494 3C0EF548 */  lui        $t6, 0xf548
/* DA7D88 80101498 35CE1400 */  ori        $t6, $t6, 0x1400
/* DA7D8C 8010149C 24580008 */  addiu      $t8, $v0, 8
/* DA7D90 801014A0 AD780000 */  sw         $t8, ($t3)
/* DA7D94 801014A4 AC4D0004 */  sw         $t5, 4($v0)
/* DA7D98 801014A8 AC510000 */  sw         $s1, ($v0)
/* DA7D9C 801014AC 8D620000 */  lw         $v0, ($t3)
/* DA7DA0 801014B0 3C0F0700 */  lui        $t7, 0x700
/* DA7DA4 801014B4 3C038009 */  lui        $v1, 0x8009
/* DA7DA8 801014B8 24590008 */  addiu      $t9, $v0, 8
/* DA7DAC 801014BC AD790000 */  sw         $t9, ($t3)
/* DA7DB0 801014C0 AC4F0004 */  sw         $t7, 4($v0)
/* DA7DB4 801014C4 AC4E0000 */  sw         $t6, ($v0)
/* DA7DB8 801014C8 8D620000 */  lw         $v0, ($t3)
/* DA7DBC 801014CC 3C0F0712 */  lui        $t7, 0x712
/* DA7DC0 801014D0 35EF4024 */  ori        $t7, $t7, 0x4024
/* DA7DC4 801014D4 24580008 */  addiu      $t8, $v0, 8
/* DA7DC8 801014D8 AD780000 */  sw         $t8, ($t3)
/* DA7DCC 801014DC AC400004 */  sw         $zero, 4($v0)
/* DA7DD0 801014E0 AC530000 */  sw         $s3, ($v0)
/* DA7DD4 801014E4 8D620000 */  lw         $v0, ($t3)
/* DA7DD8 801014E8 3C0EF400 */  lui        $t6, 0xf400
/* DA7DDC 801014EC 00002825 */  or         $a1, $zero, $zero
/* DA7DE0 801014F0 24590008 */  addiu      $t9, $v0, 8
/* DA7DE4 801014F4 AD790000 */  sw         $t9, ($t3)
/* DA7DE8 801014F8 AC4F0004 */  sw         $t7, 4($v0)
/* DA7DEC 801014FC AC4E0000 */  sw         $t6, ($v0)
/* DA7DF0 80101500 8D620000 */  lw         $v0, ($t3)
/* DA7DF4 80101504 3C0EF540 */  lui        $t6, 0xf540
/* DA7DF8 80101508 35CE1400 */  ori        $t6, $t6, 0x1400
/* DA7DFC 8010150C 24580008 */  addiu      $t8, $v0, 8
/* DA7E00 80101510 AD780000 */  sw         $t8, ($t3)
/* DA7E04 80101514 AC400004 */  sw         $zero, 4($v0)
/* DA7E08 80101518 AC520000 */  sw         $s2, ($v0)
/* DA7E0C 8010151C 8D620000 */  lw         $v0, ($t3)
/* DA7E10 80101520 3C18F200 */  lui        $t8, 0xf200
/* DA7E14 80101524 24590008 */  addiu      $t9, $v0, 8
/* DA7E18 80101528 AD790000 */  sw         $t9, ($t3)
/* DA7E1C 8010152C AC400004 */  sw         $zero, 4($v0)
/* DA7E20 80101530 AC4E0000 */  sw         $t6, ($v0)
/* DA7E24 80101534 8D620000 */  lw         $v0, ($t3)
/* DA7E28 80101538 3C190024 */  lui        $t9, 0x24
/* DA7E2C 8010153C 37398024 */  ori        $t9, $t9, 0x8024
/* DA7E30 80101540 244F0008 */  addiu      $t7, $v0, 8
/* DA7E34 80101544 AD6F0000 */  sw         $t7, ($t3)
/* DA7E38 80101548 AC590004 */  sw         $t9, 4($v0)
/* DA7E3C 8010154C AC580000 */  sw         $t8, ($v0)
/* DA7E40 80101550 8D620000 */  lw         $v0, ($t3)
/* DA7E44 80101554 3C180015 */  lui        $t8, 0x15
/* DA7E48 80101558 3C0FE43A */  lui        $t7, 0xe43a
/* DA7E4C 8010155C 244E0008 */  addiu      $t6, $v0, 8
/* DA7E50 80101560 AD6E0000 */  sw         $t6, ($t3)
/* DA7E54 80101564 35EF02F0 */  ori        $t7, $t7, 0x2f0
/* DA7E58 80101568 371842C8 */  ori        $t8, $t8, 0x42c8
/* DA7E5C 8010156C AC580004 */  sw         $t8, 4($v0)
/* DA7E60 80101570 AC4F0000 */  sw         $t7, ($v0)
/* DA7E64 80101574 8D620000 */  lw         $v0, ($t3)
/* DA7E68 80101578 3C0EB400 */  lui        $t6, 0xb400
/* DA7E6C 8010157C 3C18B300 */  lui        $t8, 0xb300
/* DA7E70 80101580 24590008 */  addiu      $t9, $v0, 8
/* DA7E74 80101584 AD790000 */  sw         $t9, ($t3)
/* DA7E78 80101588 AC400004 */  sw         $zero, 4($v0)
/* DA7E7C 8010158C AC4E0000 */  sw         $t6, ($v0)
/* DA7E80 80101590 8D620000 */  lw         $v0, ($t3)
/* DA7E84 80101594 3C190400 */  lui        $t9, 0x400
/* DA7E88 80101598 37390400 */  ori        $t9, $t9, 0x400
/* DA7E8C 8010159C 244F0008 */  addiu      $t7, $v0, 8
/* DA7E90 801015A0 AD6F0000 */  sw         $t7, ($t3)
/* DA7E94 801015A4 AC590004 */  sw         $t9, 4($v0)
/* DA7E98 801015A8 AC580000 */  sw         $t8, ($v0)
/* DA7E9C 801015AC 8D620000 */  lw         $v0, ($t3)
/* DA7EA0 801015B0 3C18F548 */  lui        $t8, 0xf548
/* DA7EA4 801015B4 37181400 */  ori        $t8, $t8, 0x1400
/* DA7EA8 801015B8 244E0008 */  addiu      $t6, $v0, 8
/* DA7EAC 801015BC AD6E0000 */  sw         $t6, ($t3)
/* DA7EB0 801015C0 AC4D0004 */  sw         $t5, 4($v0)
/* DA7EB4 801015C4 AC510000 */  sw         $s1, ($v0)
/* DA7EB8 801015C8 8D620000 */  lw         $v0, ($t3)
/* DA7EBC 801015CC 3C190700 */  lui        $t9, 0x700
/* DA7EC0 801015D0 244F0008 */  addiu      $t7, $v0, 8
/* DA7EC4 801015D4 AD6F0000 */  sw         $t7, ($t3)
/* DA7EC8 801015D8 AC590004 */  sw         $t9, 4($v0)
/* DA7ECC 801015DC AC580000 */  sw         $t8, ($v0)
/* DA7ED0 801015E0 8D620000 */  lw         $v0, ($t3)
/* DA7ED4 801015E4 3C18F400 */  lui        $t8, 0xf400
/* DA7ED8 801015E8 3C190712 */  lui        $t9, 0x712
/* DA7EDC 801015EC 244E0008 */  addiu      $t6, $v0, 8
/* DA7EE0 801015F0 AD6E0000 */  sw         $t6, ($t3)
/* DA7EE4 801015F4 AC400004 */  sw         $zero, 4($v0)
/* DA7EE8 801015F8 AC530000 */  sw         $s3, ($v0)
/* DA7EEC 801015FC 8D620000 */  lw         $v0, ($t3)
/* DA7EF0 80101600 3739403C */  ori        $t9, $t9, 0x403c
/* DA7EF4 80101604 37180028 */  ori        $t8, $t8, 0x28
/* DA7EF8 80101608 244F0008 */  addiu      $t7, $v0, 8
/* DA7EFC 8010160C AD6F0000 */  sw         $t7, ($t3)
/* DA7F00 80101610 AC590004 */  sw         $t9, 4($v0)
/* DA7F04 80101614 AC580000 */  sw         $t8, ($v0)
/* DA7F08 80101618 8D620000 */  lw         $v0, ($t3)
/* DA7F0C 8010161C 3C18F540 */  lui        $t8, 0xf540
/* DA7F10 80101620 37181400 */  ori        $t8, $t8, 0x1400
/* DA7F14 80101624 244E0008 */  addiu      $t6, $v0, 8
/* DA7F18 80101628 AD6E0000 */  sw         $t6, ($t3)
/* DA7F1C 8010162C AC400004 */  sw         $zero, 4($v0)
/* DA7F20 80101630 AC520000 */  sw         $s2, ($v0)
/* DA7F24 80101634 8D680000 */  lw         $t0, ($t3)
/* DA7F28 80101638 3C0EF200 */  lui        $t6, 0xf200
/* DA7F2C 8010163C 35CE0028 */  ori        $t6, $t6, 0x28
/* DA7F30 80101640 250F0008 */  addiu      $t7, $t0, 8
/* DA7F34 80101644 AD6F0000 */  sw         $t7, ($t3)
/* DA7F38 80101648 AD180000 */  sw         $t8, ($t0)
/* DA7F3C 8010164C AD000004 */  sw         $zero, 4($t0)
/* DA7F40 80101650 8D620000 */  lw         $v0, ($t3)
/* DA7F44 80101654 3C0F0024 */  lui        $t7, 0x24
/* DA7F48 80101658 35EF803C */  ori        $t7, $t7, 0x803c
/* DA7F4C 8010165C 24590008 */  addiu      $t9, $v0, 8
/* DA7F50 80101660 AD790000 */  sw         $t9, ($t3)
/* DA7F54 80101664 AC4F0004 */  sw         $t7, 4($v0)
/* DA7F58 80101668 AC4E0000 */  sw         $t6, ($v0)
/* DA7F5C 8010166C 8D620000 */  lw         $v0, ($t3)
/* DA7F60 80101670 3C0E0015 */  lui        $t6, 0x15
/* DA7F64 80101674 3C19E43A */  lui        $t9, 0xe43a
/* DA7F68 80101678 24580008 */  addiu      $t8, $v0, 8
/* DA7F6C 8010167C AD780000 */  sw         $t8, ($t3)
/* DA7F70 80101680 37390308 */  ori        $t9, $t9, 0x308
/* DA7F74 80101684 35CE42F0 */  ori        $t6, $t6, 0x42f0
/* DA7F78 80101688 AC4E0004 */  sw         $t6, 4($v0)
/* DA7F7C 8010168C AC590000 */  sw         $t9, ($v0)
/* DA7F80 80101690 8D620000 */  lw         $v0, ($t3)
/* DA7F84 80101694 24190140 */  addiu      $t9, $zero, 0x140
/* DA7F88 80101698 3C18B400 */  lui        $t8, 0xb400
/* DA7F8C 8010169C 244F0008 */  addiu      $t7, $v0, 8
/* DA7F90 801016A0 AD6F0000 */  sw         $t7, ($t3)
/* DA7F94 801016A4 AC590004 */  sw         $t9, 4($v0)
/* DA7F98 801016A8 AC580000 */  sw         $t8, ($v0)
/* DA7F9C 801016AC 8D620000 */  lw         $v0, ($t3)
/* DA7FA0 801016B0 3C180400 */  lui        $t8, 0x400
/* DA7FA4 801016B4 37180400 */  ori        $t8, $t8, 0x400
/* DA7FA8 801016B8 244E0008 */  addiu      $t6, $v0, 8
/* DA7FAC 801016BC AD6E0000 */  sw         $t6, ($t3)
/* DA7FB0 801016C0 3C0FB300 */  lui        $t7, 0xb300
/* DA7FB4 801016C4 AC4F0000 */  sw         $t7, ($v0)
/* DA7FB8 801016C8 AC580004 */  sw         $t8, 4($v0)
/* DA7FBC 801016CC 80632871 */  lb         $v1, 0x2871($v1)
/* DA7FC0 801016D0 00001025 */  or         $v0, $zero, $zero
/* DA7FC4 801016D4 3C0F8012 */  lui        $t7, 0x8012
/* DA7FC8 801016D8 28610015 */  slti       $at, $v1, 0x15
/* DA7FCC 801016DC 54200004 */  bnel       $at, $zero, .L801016F0
/* DA7FD0 801016E0 2861FFEC */   slti      $at, $v1, -0x14
/* DA7FD4 801016E4 10000005 */  b          .L801016FC
/* DA7FD8 801016E8 24020008 */   addiu     $v0, $zero, 8
/* DA7FDC 801016EC 2861FFEC */  slti       $at, $v1, -0x14
.L801016F0:
/* DA7FE0 801016F0 10200002 */  beqz       $at, .L801016FC
/* DA7FE4 801016F4 00000000 */   nop
/* DA7FE8 801016F8 24020004 */  addiu      $v0, $zero, 4
.L801016FC:
/* DA7FEC 801016FC 3C038009 */  lui        $v1, %hi(JoystickY)
/* DA7FF0 80101700 80632872 */  lb         $v1, %lo(JoystickY)($v1)
/* DA7FF4 80101704 28610015 */  slti       $at, $v1, 0x15
/* DA7FF8 80101708 14200003 */  bnez       $at, .L80101718
/* DA7FFC 8010170C 34590001 */   ori       $t9, $v0, 1
/* DA8000 80101710 00197600 */  sll        $t6, $t9, 0x18
/* DA8004 80101714 000E1603 */  sra        $v0, $t6, 0x18
.L80101718:
/* DA8008 80101718 2861FFEC */  slti       $at, $v1, -0x14
/* DA800C 8010171C 10200003 */  beqz       $at, .L8010172C
/* DA8010 80101720 34580002 */   ori       $t8, $v0, 2
/* DA8014 80101724 0018CE00 */  sll        $t9, $t8, 0x18
/* DA8018 80101728 00191603 */  sra        $v0, $t9, 0x18
.L8010172C:
/* DA801C 8010172C 81EFAD58 */  lb         $t7, -0x52a8($t7)
/* DA8020 80101730 3C018012 */  lui        $at, %hi(D_8011AD58)
/* DA8024 80101734 A022AD58 */  sb         $v0, %lo(D_8011AD58)($at)
/* DA8028 80101738 004FC026 */  xor        $t8, $v0, $t7
/* DA802C 8010173C 03021824 */  and        $v1, $t8, $v0
/* DA8030 80101740 0003CE00 */  sll        $t9, $v1, 0x18
/* DA8034 80101744 00191E03 */  sra        $v1, $t9, 0x18
/* DA8038 80101748 306F0001 */  andi       $t7, $v1, 1
/* DA803C 8010174C 11E00002 */  beqz       $t7, .L80101758
/* DA8040 80101750 00002025 */   or        $a0, $zero, $zero
/* DA8044 80101754 2405FFFF */  addiu      $a1, $zero, -1
.L80101758:
/* DA8048 80101758 30780002 */  andi       $t8, $v1, 2
/* DA804C 8010175C 13000002 */  beqz       $t8, .L80101768
/* DA8050 80101760 30790004 */   andi      $t9, $v1, 4
/* DA8054 80101764 24050001 */  addiu      $a1, $zero, 1
.L80101768:
/* DA8058 80101768 13200002 */  beqz       $t9, .L80101774
/* DA805C 8010176C 306E0008 */   andi      $t6, $v1, 8
/* DA8060 80101770 2404FFFF */  addiu      $a0, $zero, -1
.L80101774:
/* DA8064 80101774 11C00002 */  beqz       $t6, .L80101780
/* DA8068 80101778 8FAF03F0 */   lw        $t7, 0x3f0($sp)
/* DA806C 8010177C 24040001 */  addiu      $a0, $zero, 1
.L80101780:
/* DA8070 80101780 3C018012 */  lui        $at, %hi(D_8011AD5A)
/* DA8074 80101784 A024AD5A */  sb         $a0, %lo(D_8011AD5A)($at)
/* DA8078 80101788 3C018012 */  lui        $at, %hi(D_8011AD59)
/* DA807C 8010178C A025AD59 */  sb         $a1, %lo(D_8011AD59)($at)
/* DA8080 80101790 2DE10010 */  sltiu      $at, $t7, 0x10
/* DA8084 80101794 1020059F */  beqz       $at, .L80102E14
/* DA8088 80101798 AFAF0034 */   sw        $t7, 0x34($sp)
/* DA808C 8010179C 000FC080 */  sll        $t8, $t7, 2
/* DA8090 801017A0 3C018012 */  lui        $at, %hi(jtbl_8011ACF0)
/* DA8094 801017A4 00380821 */  addu       $at, $at, $t8
/* DA8098 801017A8 8C38ACF0 */  lw         $t8, %lo(jtbl_8011ACF0)($at)
/* DA809C 801017AC 03000008 */  jr         $t8
/* DA80A0 801017B0 00000000 */   nop
glabel L801017B4_DA80A4
/* DA80A4 801017B4 8FB90034 */  lw         $t9, 0x34($sp)
/* DA80A8 801017B8 3C0F0600 */  lui        $t7, 0x600
/* DA80AC 801017BC 2B210002 */  slti       $at, $t9, 2
/* DA80B0 801017C0 50200595 */  beql       $at, $zero, .L80102E18
/* DA80B4 801017C4 8FBF002C */   lw        $ra, 0x2c($sp)
/* DA80B8 801017C8 8D620000 */  lw         $v0, ($t3)
/* DA80BC 801017CC 3C188010 */  lui        $t8, %hi(D_801032E0)
/* DA80C0 801017D0 271832E0 */  addiu      $t8, $t8, %lo(D_801032E0)
/* DA80C4 801017D4 244E0008 */  addiu      $t6, $v0, 8
/* DA80C8 801017D8 AD6E0000 */  sw         $t6, ($t3)
/* DA80CC 801017DC AC580004 */  sw         $t8, 4($v0)
/* DA80D0 801017E0 1000058C */  b          .L80102E14
/* DA80D4 801017E4 AC4F0000 */   sw        $t7, ($v0)
glabel L801017E8_DA80D8
/* DA80D8 801017E8 8FB90034 */  lw         $t9, 0x34($sp)
/* DA80DC 801017EC 3C018012 */  lui        $at, %hi(D_8011AD5A)
/* DA80E0 801017F0 A024AD5A */  sb         $a0, %lo(D_8011AD5A)($at)
/* DA80E4 801017F4 24010002 */  addiu      $at, $zero, 2
/* DA80E8 801017F8 17210043 */  bne        $t9, $at, .L80101908
/* DA80EC 801017FC 3C028010 */   lui       $v0, %hi(D_80103404)
/* DA80F0 80101800 80423404 */  lb         $v0, %lo(D_80103404)($v0)
/* DA80F4 80101804 3C188010 */  lui        $t8, 0x8010
/* DA80F8 80101808 24060040 */  addiu      $a2, $zero, 0x40
/* DA80FC 8010180C 00451021 */  addu       $v0, $v0, $a1
/* DA8100 80101810 00027600 */  sll        $t6, $v0, 0x18
/* DA8104 80101814 000E1603 */  sra        $v0, $t6, 0x18
/* DA8108 80101818 04410004 */  bgez       $v0, .L8010182C
/* DA810C 8010181C 28410003 */   slti      $at, $v0, 3
/* DA8110 80101820 3C018010 */  lui        $at, %hi(D_80103404)
/* DA8114 80101824 1000000C */  b          .L80101858
/* DA8118 80101828 A0203404 */   sb        $zero, %lo(D_80103404)($at)
.L8010182C:
/* DA811C 8010182C 14200005 */  bnez       $at, .L80101844
/* DA8120 80101830 00000000 */   nop
/* DA8124 80101834 24020002 */  addiu      $v0, $zero, 2
/* DA8128 80101838 3C018010 */  lui        $at, %hi(D_80103404)
/* DA812C 8010183C 10000006 */  b          .L80101858
/* DA8130 80101840 A0223404 */   sb        $v0, %lo(D_80103404)($at)
.L80101844:
/* DA8134 80101844 3C018010 */  lui        $at, %hi(D_80103404)
/* DA8138 80101848 10A00003 */  beqz       $a1, .L80101858
/* DA813C 8010184C A0223404 */   sb        $v0, %lo(D_80103404)($at)
/* DA8140 80101850 3C018010 */  lui        $at, %hi(D_80103400)
/* DA8144 80101854 AC203400 */  sw         $zero, %lo(D_80103400)($at)
.L80101858:
/* DA8148 80101858 83183408 */  lb         $t8, 0x3408($t8)
/* DA814C 8010185C 3C018010 */  lui        $at, %hi(D_80103408)
/* DA8150 80101860 0304C821 */  addu       $t9, $t8, $a0
/* DA8154 80101864 00197600 */  sll        $t6, $t9, 0x18
/* DA8158 80101868 000E7E03 */  sra        $t7, $t6, 0x18
/* DA815C 8010186C 05E10004 */  bgez       $t7, .L80101880
/* DA8160 80101870 A0393408 */   sb        $t9, %lo(D_80103408)($at)
/* DA8164 80101874 3C018010 */  lui        $at, %hi(D_80103408)
/* DA8168 80101878 1000000C */  b          .L801018AC
/* DA816C 8010187C A0203408 */   sb        $zero, %lo(D_80103408)($at)
.L80101880:
/* DA8170 80101880 3C188010 */  lui        $t8, %hi(D_80103408)
/* DA8174 80101884 83183408 */  lb         $t8, %lo(D_80103408)($t8)
/* DA8178 80101888 24190002 */  addiu      $t9, $zero, 2
/* DA817C 8010188C 2B010003 */  slti       $at, $t8, 3
/* DA8180 80101890 14200003 */  bnez       $at, .L801018A0
/* DA8184 80101894 3C018010 */   lui       $at, %hi(D_80103408)
/* DA8188 80101898 10000004 */  b          .L801018AC
/* DA818C 8010189C A0393408 */   sb        $t9, %lo(D_80103408)($at)
.L801018A0:
/* DA8190 801018A0 10800002 */  beqz       $a0, .L801018AC
/* DA8194 801018A4 3C018010 */   lui       $at, %hi(D_80103400)
/* DA8198 801018A8 AC203400 */  sw         $zero, %lo(D_80103400)($at)
.L801018AC:
/* DA819C 801018AC 3C018012 */  lui        $at, %hi(D_8011AD5A)
/* DA81A0 801018B0 1080000A */  beqz       $a0, .L801018DC
/* DA81A4 801018B4 A024AD5A */   sb        $a0, %lo(D_8011AD5A)($at)
/* DA81A8 801018B8 3C018012 */  lui        $at, %hi(D_8011AD59)
/* DA81AC 801018BC A025AD59 */  sb         $a1, %lo(D_8011AD59)($at)
/* DA81B0 801018C0 240500FF */  addiu      $a1, $zero, 0xff
/* DA81B4 801018C4 0C0096E3 */  jal        func_80025B8C
/* DA81B8 801018C8 00002025 */   or        $a0, $zero, $zero
/* DA81BC 801018CC 3C0B8008 */  lui        $t3, %hi(UNK_DisplayListCommand)
/* DA81C0 801018D0 3C058012 */  lui        $a1, %hi(D_8011AD59)
/* DA81C4 801018D4 80A5AD59 */  lb         $a1, %lo(D_8011AD59)($a1)
/* DA81C8 801018D8 256BB2FC */  addiu      $t3, $t3, %lo(UNK_DisplayListCommand)
.L801018DC:
/* DA81CC 801018DC 3C028008 */  lui        $v0, %hi(TitleScreenOption)
/* DA81D0 801018E0 2442B344 */  addiu      $v0, $v0, %lo(TitleScreenOption)
/* DA81D4 801018E4 904E0000 */  lbu        $t6, ($v0)
/* DA81D8 801018E8 3C198010 */  lui        $t9, %hi(D_80103408)
/* DA81DC 801018EC 31D8000F */  andi       $t8, $t6, 0xf
/* DA81E0 801018F0 A0580000 */  sb         $t8, ($v0)
/* DA81E4 801018F4 83393408 */  lb         $t9, %lo(D_80103408)($t9)
/* DA81E8 801018F8 272E0001 */  addiu      $t6, $t9, 1
/* DA81EC 801018FC 000E7900 */  sll        $t7, $t6, 4
/* DA81F0 80101900 030FC825 */  or         $t9, $t8, $t7
/* DA81F4 80101904 A0590000 */  sb         $t9, ($v0)
.L80101908:
glabel L80101908_DA81F8
/* DA81F8 80101908 8FAE0034 */  lw         $t6, 0x34($sp)
/* DA81FC 8010190C 3C018012 */  lui        $at, %hi(D_8011AD59)
/* DA8200 80101910 A025AD59 */  sb         $a1, %lo(D_8011AD59)($at)
/* DA8204 80101914 24010006 */  addiu      $at, $zero, 6
/* DA8208 80101918 11C10019 */  beq        $t6, $at, .L80101980
/* DA820C 8010191C 3C188012 */   lui       $t8, %hi(D_8011AD50)
/* DA8210 80101920 8318AD50 */  lb         $t8, %lo(D_8011AD50)($t8)
/* DA8214 80101924 3C018012 */  lui        $at, %hi(D_8011AD50)
/* DA8218 80101928 00002025 */  or         $a0, $zero, $zero
/* DA821C 8010192C 03057821 */  addu       $t7, $t8, $a1
/* DA8220 80101930 A02FAD50 */  sb         $t7, %lo(D_8011AD50)($at)
/* DA8224 80101934 3C018012 */  lui        $at, %hi(D_8011AD59)
/* DA8228 80101938 10A00006 */  beqz       $a1, .L80101954
/* DA822C 8010193C A025AD59 */   sb        $a1, %lo(D_8011AD59)($at)
/* DA8230 80101940 240500FF */  addiu      $a1, $zero, 0xff
/* DA8234 80101944 0C0096E3 */  jal        func_80025B8C
/* DA8238 80101948 24060040 */   addiu     $a2, $zero, 0x40
/* DA823C 8010194C 3C0B8008 */  lui        $t3, %hi(UNK_DisplayListCommand)
/* DA8240 80101950 256BB2FC */  addiu      $t3, $t3, %lo(UNK_DisplayListCommand)
.L80101954:
/* DA8244 80101954 3C028012 */  lui        $v0, %hi(D_8011AD50)
/* DA8248 80101958 8042AD50 */  lb         $v0, %lo(D_8011AD50)($v0)
/* DA824C 8010195C 04410004 */  bgez       $v0, .L80101970
/* DA8250 80101960 28410002 */   slti      $at, $v0, 2
/* DA8254 80101964 3C018012 */  lui        $at, %hi(D_8011AD50)
/* DA8258 80101968 10000005 */  b          .L80101980
/* DA825C 8010196C A020AD50 */   sb        $zero, %lo(D_8011AD50)($at)
.L80101970:
/* DA8260 80101970 14200003 */  bnez       $at, .L80101980
/* DA8264 80101974 24190001 */   addiu     $t9, $zero, 1
/* DA8268 80101978 3C018012 */  lui        $at, %hi(D_8011AD50)
/* DA826C 8010197C A039AD50 */  sb         $t9, %lo(D_8011AD50)($at)
.L80101980:
glabel L80101980_DA8270
/* DA8270 80101980 8D620000 */  lw         $v0, ($t3)
/* DA8274 80101984 3C188010 */  lui        $t8, %hi(D_801031B0)
/* DA8278 80101988 3C1F0600 */  lui        $ra, 0x600
/* DA827C 8010198C 244E0008 */  addiu      $t6, $v0, 8
/* DA8280 80101990 AD6E0000 */  sw         $t6, ($t3)
/* DA8284 80101994 271831B0 */  addiu      $t8, $t8, %lo(D_801031B0)
/* DA8288 80101998 AC580004 */  sw         $t8, 4($v0)
/* DA828C 8010199C AC5F0000 */  sw         $ra, ($v0)
/* DA8290 801019A0 8D620000 */  lw         $v0, ($t3)
/* DA8294 801019A4 3C188010 */  lui        $t8, %hi(D_80104F80)
/* DA8298 801019A8 27184F80 */  addiu      $t8, $t8, %lo(D_80104F80)
/* DA829C 801019AC 244F0008 */  addiu      $t7, $v0, 8
/* DA82A0 801019B0 AD6F0000 */  sw         $t7, ($t3)
/* DA82A4 801019B4 AC400004 */  sw         $zero, 4($v0)
/* DA82A8 801019B8 AC520000 */  sw         $s2, ($v0)
/* DA82AC 801019BC 8D620000 */  lw         $v0, ($t3)
/* DA82B0 801019C0 3C0EFD10 */  lui        $t6, 0xfd10
/* DA82B4 801019C4 3C070600 */  lui        $a3, 0x600
/* DA82B8 801019C8 24590008 */  addiu      $t9, $v0, 8
/* DA82BC 801019CC AD790000 */  sw         $t9, ($t3)
/* DA82C0 801019D0 AC580004 */  sw         $t8, 4($v0)
/* DA82C4 801019D4 AC4E0000 */  sw         $t6, ($v0)
/* DA82C8 801019D8 8D620000 */  lw         $v0, ($t3)
/* DA82CC 801019DC 3C19E800 */  lui        $t9, 0xe800
/* DA82D0 801019E0 3C18F500 */  lui        $t8, 0xf500
/* DA82D4 801019E4 244F0008 */  addiu      $t7, $v0, 8
/* DA82D8 801019E8 AD6F0000 */  sw         $t7, ($t3)
/* DA82DC 801019EC AC400004 */  sw         $zero, 4($v0)
/* DA82E0 801019F0 AC590000 */  sw         $t9, ($v0)
/* DA82E4 801019F4 8D620000 */  lw         $v0, ($t3)
/* DA82E8 801019F8 3C0F0700 */  lui        $t7, 0x700
/* DA82EC 801019FC 37180100 */  ori        $t8, $t8, 0x100
/* DA82F0 80101A00 244E0008 */  addiu      $t6, $v0, 8
/* DA82F4 80101A04 AD6E0000 */  sw         $t6, ($t3)
/* DA82F8 80101A08 AC4F0004 */  sw         $t7, 4($v0)
/* DA82FC 80101A0C AC580000 */  sw         $t8, ($v0)
/* DA8300 80101A10 8D620000 */  lw         $v0, ($t3)
/* DA8304 80101A14 3C0F0703 */  lui        $t7, 0x703
/* DA8308 80101A18 35EFC000 */  ori        $t7, $t7, 0xc000
/* DA830C 80101A1C 24590008 */  addiu      $t9, $v0, 8
/* DA8310 80101A20 AD790000 */  sw         $t9, ($t3)
/* DA8314 80101A24 AC400004 */  sw         $zero, 4($v0)
/* DA8318 80101A28 AC530000 */  sw         $s3, ($v0)
/* DA831C 80101A2C 8D620000 */  lw         $v0, ($t3)
/* DA8320 80101A30 3C18F000 */  lui        $t8, 0xf000
/* DA8324 80101A34 24010003 */  addiu      $at, $zero, 3
/* DA8328 80101A38 244E0008 */  addiu      $t6, $v0, 8
/* DA832C 80101A3C AD6E0000 */  sw         $t6, ($t3)
/* DA8330 80101A40 AC4F0004 */  sw         $t7, 4($v0)
/* DA8334 80101A44 AC580000 */  sw         $t8, ($v0)
/* DA8338 80101A48 8D620000 */  lw         $v0, ($t3)
/* DA833C 80101A4C 3C188010 */  lui        $t8, %hi(D_801031D8)
/* DA8340 80101A50 271831D8 */  addiu      $t8, $t8, %lo(D_801031D8)
/* DA8344 80101A54 24590008 */  addiu      $t9, $v0, 8
/* DA8348 80101A58 AD790000 */  sw         $t9, ($t3)
/* DA834C 80101A5C AC400004 */  sw         $zero, 4($v0)
/* DA8350 80101A60 AC520000 */  sw         $s2, ($v0)
/* DA8354 80101A64 8D620000 */  lw         $v0, ($t3)
/* DA8358 80101A68 3C198010 */  lui        $t9, %hi(D_80103230)
/* DA835C 80101A6C 27393230 */  addiu      $t9, $t9, %lo(D_80103230)
/* DA8360 80101A70 244E0008 */  addiu      $t6, $v0, 8
/* DA8364 80101A74 AD6E0000 */  sw         $t6, ($t3)
/* DA8368 80101A78 AC580004 */  sw         $t8, 4($v0)
/* DA836C 80101A7C AC5F0000 */  sw         $ra, ($v0)
/* DA8370 80101A80 8D620000 */  lw         $v0, ($t3)
/* DA8374 80101A84 3C188010 */  lui        $t8, %hi(D_80103288)
/* DA8378 80101A88 27183288 */  addiu      $t8, $t8, %lo(D_80103288)
/* DA837C 80101A8C 244F0008 */  addiu      $t7, $v0, 8
/* DA8380 80101A90 AD6F0000 */  sw         $t7, ($t3)
/* DA8384 80101A94 AC590004 */  sw         $t9, 4($v0)
/* DA8388 80101A98 AC5F0000 */  sw         $ra, ($v0)
/* DA838C 80101A9C 8D620000 */  lw         $v0, ($t3)
/* DA8390 80101AA0 8FA60034 */  lw         $a2, 0x34($sp)
/* DA8394 80101AA4 00002025 */  or         $a0, $zero, $zero
/* DA8398 80101AA8 244E0008 */  addiu      $t6, $v0, 8
/* DA839C 80101AAC AD6E0000 */  sw         $t6, ($t3)
/* DA83A0 80101AB0 AC580004 */  sw         $t8, 4($v0)
/* DA83A4 80101AB4 10C10004 */  beq        $a2, $at, .L80101AC8
/* DA83A8 80101AB8 AC470000 */   sw        $a3, ($v0)
/* DA83AC 80101ABC 24010005 */  addiu      $at, $zero, 5
/* DA83B0 80101AC0 14C10016 */  bne        $a2, $at, .L80101B1C
/* DA83B4 80101AC4 00000000 */   nop
.L80101AC8:
/* DA83B8 80101AC8 8D620000 */  lw         $v0, ($t3)
/* DA83BC 80101ACC 3C0EB900 */  lui        $t6, 0xb900
/* DA83C0 80101AD0 3C180050 */  lui        $t8, 0x50
/* DA83C4 80101AD4 244F0008 */  addiu      $t7, $v0, 8
/* DA83C8 80101AD8 AD6F0000 */  sw         $t7, ($t3)
/* DA83CC 80101ADC AC400004 */  sw         $zero, 4($v0)
/* DA83D0 80101AE0 AC520000 */  sw         $s2, ($v0)
/* DA83D4 80101AE4 8D620000 */  lw         $v0, ($t3)
/* DA83D8 80101AE8 37184240 */  ori        $t8, $t8, 0x4240
/* DA83DC 80101AEC 35CE031D */  ori        $t6, $t6, 0x31d
/* DA83E0 80101AF0 24590008 */  addiu      $t9, $v0, 8
/* DA83E4 80101AF4 AD790000 */  sw         $t9, ($t3)
/* DA83E8 80101AF8 AC580004 */  sw         $t8, 4($v0)
/* DA83EC 80101AFC AC4E0000 */  sw         $t6, ($v0)
/* DA83F0 80101B00 8D620000 */  lw         $v0, ($t3)
/* DA83F4 80101B04 3C198010 */  lui        $t9, %hi(D_80103388)
/* DA83F8 80101B08 27393388 */  addiu      $t9, $t9, %lo(D_80103388)
/* DA83FC 80101B0C 244F0008 */  addiu      $t7, $v0, 8
/* DA8400 80101B10 AD6F0000 */  sw         $t7, ($t3)
/* DA8404 80101B14 AC590004 */  sw         $t9, 4($v0)
/* DA8408 80101B18 AC470000 */  sw         $a3, ($v0)
.L80101B1C:
/* DA840C 80101B1C 3C0E8010 */  lui        $t6, %hi(D_80103400)
/* DA8410 80101B20 8DCE3400 */  lw         $t6, %lo(D_80103400)($t6)
/* DA8414 80101B24 3C018010 */  lui        $at, %hi(D_80103400)
/* DA8418 80101B28 3C0F8010 */  lui        $t7, 0x8010
/* DA841C 80101B2C 25D80001 */  addiu      $t8, $t6, 1
/* DA8420 80101B30 AC383400 */  sw         $t8, %lo(D_80103400)($at)
/* DA8424 80101B34 2B010020 */  slti       $at, $t8, 0x20
/* DA8428 80101B38 14200003 */  bnez       $at, .L80101B48
/* DA842C 80101B3C 240E0008 */   addiu     $t6, $zero, 8
/* DA8430 80101B40 3C018010 */  lui        $at, %hi(D_80103400)
/* DA8434 80101B44 AC203400 */  sw         $zero, %lo(D_80103400)($at)
.L80101B48:
/* DA8438 80101B48 8DEF3400 */  lw         $t7, 0x3400($t7)
/* DA843C 80101B4C 29E10011 */  slti       $at, $t7, 0x11
/* DA8440 80101B50 14200008 */  bnez       $at, .L80101B74
/* DA8444 80101B54 00000000 */   nop
/* DA8448 80101B58 05E10003 */  bgez       $t7, .L80101B68
/* DA844C 80101B5C 000FC883 */   sra       $t9, $t7, 2
/* DA8450 80101B60 25E10003 */  addiu      $at, $t7, 3
/* DA8454 80101B64 0001C883 */  sra        $t9, $at, 2
.L80101B68:
/* DA8458 80101B68 01D9C023 */  subu       $t8, $t6, $t9
/* DA845C 80101B6C 10000008 */  b          .L80101B90
/* DA8460 80101B70 AFB803E8 */   sw        $t8, 0x3e8($sp)
.L80101B74:
/* DA8464 80101B74 3C0F8010 */  lui        $t7, %hi(D_80103400)
/* DA8468 80101B78 8DEF3400 */  lw         $t7, %lo(D_80103400)($t7)
/* DA846C 80101B7C 05E10003 */  bgez       $t7, .L80101B8C
/* DA8470 80101B80 000F7083 */   sra       $t6, $t7, 2
/* DA8474 80101B84 25E10003 */  addiu      $at, $t7, 3
/* DA8478 80101B88 00017083 */  sra        $t6, $at, 2
.L80101B8C:
/* DA847C 80101B8C AFAE03E8 */  sw         $t6, 0x3e8($sp)
.L80101B90:
/* DA8480 80101B90 8D620000 */  lw         $v0, ($t3)
/* DA8484 80101B94 3C0E8010 */  lui        $t6, %hi(D_801051E8)
/* DA8488 80101B98 25CE51E8 */  addiu      $t6, $t6, %lo(D_801051E8)
/* DA848C 80101B9C 24590008 */  addiu      $t9, $v0, 8
/* DA8490 80101BA0 AD790000 */  sw         $t9, ($t3)
/* DA8494 80101BA4 AC400004 */  sw         $zero, 4($v0)
/* DA8498 80101BA8 AC520000 */  sw         $s2, ($v0)
/* DA849C 80101BAC 8D620000 */  lw         $v0, ($t3)
/* DA84A0 80101BB0 3C0FFD10 */  lui        $t7, 0xfd10
/* DA84A4 80101BB4 3C01E400 */  lui        $at, 0xe400
/* DA84A8 80101BB8 24580008 */  addiu      $t8, $v0, 8
/* DA84AC 80101BBC AD780000 */  sw         $t8, ($t3)
/* DA84B0 80101BC0 AC4E0004 */  sw         $t6, 4($v0)
/* DA84B4 80101BC4 AC4F0000 */  sw         $t7, ($v0)
/* DA84B8 80101BC8 8D620000 */  lw         $v0, ($t3)
/* DA84BC 80101BCC 3C18E800 */  lui        $t8, 0xe800
/* DA84C0 80101BD0 3C0EF500 */  lui        $t6, 0xf500
/* DA84C4 80101BD4 24590008 */  addiu      $t9, $v0, 8
/* DA84C8 80101BD8 AD790000 */  sw         $t9, ($t3)
/* DA84CC 80101BDC AC400004 */  sw         $zero, 4($v0)
/* DA84D0 80101BE0 AC580000 */  sw         $t8, ($v0)
/* DA84D4 80101BE4 8D620000 */  lw         $v0, ($t3)
/* DA84D8 80101BE8 3C190700 */  lui        $t9, 0x700
/* DA84DC 80101BEC 35CE0100 */  ori        $t6, $t6, 0x100
/* DA84E0 80101BF0 244F0008 */  addiu      $t7, $v0, 8
/* DA84E4 80101BF4 AD6F0000 */  sw         $t7, ($t3)
/* DA84E8 80101BF8 AC590004 */  sw         $t9, 4($v0)
/* DA84EC 80101BFC AC4E0000 */  sw         $t6, ($v0)
/* DA84F0 80101C00 8D620000 */  lw         $v0, ($t3)
/* DA84F4 80101C04 3C190703 */  lui        $t9, 0x703
/* DA84F8 80101C08 3739C000 */  ori        $t9, $t9, 0xc000
/* DA84FC 80101C0C 24580008 */  addiu      $t8, $v0, 8
/* DA8500 80101C10 AD780000 */  sw         $t8, ($t3)
/* DA8504 80101C14 AC400004 */  sw         $zero, 4($v0)
/* DA8508 80101C18 AC530000 */  sw         $s3, ($v0)
/* DA850C 80101C1C 8D620000 */  lw         $v0, ($t3)
/* DA8510 80101C20 3C0EF000 */  lui        $t6, 0xf000
/* DA8514 80101C24 244F0008 */  addiu      $t7, $v0, 8
/* DA8518 80101C28 AD6F0000 */  sw         $t7, ($t3)
/* DA851C 80101C2C AC590004 */  sw         $t9, 4($v0)
/* DA8520 80101C30 AC4E0000 */  sw         $t6, ($v0)
/* DA8524 80101C34 8D620000 */  lw         $v0, ($t3)
/* DA8528 80101C38 3C0EFD48 */  lui        $t6, 0xfd48
/* DA852C 80101C3C 3C198010 */  lui        $t9, 0x8010
/* DA8530 80101C40 24580008 */  addiu      $t8, $v0, 8
/* DA8534 80101C44 AD780000 */  sw         $t8, ($t3)
/* DA8538 80101C48 AC400004 */  sw         $zero, 4($v0)
/* DA853C 80101C4C AC520000 */  sw         $s2, ($v0)
/* DA8540 80101C50 8D620000 */  lw         $v0, ($t3)
/* DA8544 80101C54 27395188 */  addiu      $t9, $t9, 0x5188
/* DA8548 80101C58 35CE0007 */  ori        $t6, $t6, 7
/* DA854C 80101C5C 244F0008 */  addiu      $t7, $v0, 8
/* DA8550 80101C60 AD6F0000 */  sw         $t7, ($t3)
/* DA8554 80101C64 AC590004 */  sw         $t9, 4($v0)
/* DA8558 80101C68 AC4E0000 */  sw         $t6, ($v0)
/* DA855C 80101C6C 8D620000 */  lw         $v0, ($t3)
/* DA8560 80101C70 3C0FF548 */  lui        $t7, 0xf548
/* DA8564 80101C74 35EF0200 */  ori        $t7, $t7, 0x200
/* DA8568 80101C78 24580008 */  addiu      $t8, $v0, 8
/* DA856C 80101C7C AD780000 */  sw         $t8, ($t3)
/* DA8570 80101C80 3C0E0700 */  lui        $t6, 0x700
/* DA8574 80101C84 AC4E0004 */  sw         $t6, 4($v0)
/* DA8578 80101C88 AC4F0000 */  sw         $t7, ($v0)
/* DA857C 80101C8C 8D620000 */  lw         $v0, ($t3)
/* DA8580 80101C90 3C0E0701 */  lui        $t6, 0x701
/* DA8584 80101C94 35CE4028 */  ori        $t6, $t6, 0x4028
/* DA8588 80101C98 24590008 */  addiu      $t9, $v0, 8
/* DA858C 80101C9C AD790000 */  sw         $t9, ($t3)
/* DA8590 80101CA0 AC400004 */  sw         $zero, 4($v0)
/* DA8594 80101CA4 AC530000 */  sw         $s3, ($v0)
/* DA8598 80101CA8 8D620000 */  lw         $v0, ($t3)
/* DA859C 80101CAC 3C0FF400 */  lui        $t7, 0xf400
/* DA85A0 80101CB0 24580008 */  addiu      $t8, $v0, 8
/* DA85A4 80101CB4 AD780000 */  sw         $t8, ($t3)
/* DA85A8 80101CB8 AC4E0004 */  sw         $t6, 4($v0)
/* DA85AC 80101CBC AC4F0000 */  sw         $t7, ($v0)
/* DA85B0 80101CC0 8D620000 */  lw         $v0, ($t3)
/* DA85B4 80101CC4 3C0FF540 */  lui        $t7, 0xf540
/* DA85B8 80101CC8 35EF0200 */  ori        $t7, $t7, 0x200
/* DA85BC 80101CCC 24590008 */  addiu      $t9, $v0, 8
/* DA85C0 80101CD0 AD790000 */  sw         $t9, ($t3)
/* DA85C4 80101CD4 AC400004 */  sw         $zero, 4($v0)
/* DA85C8 80101CD8 AC520000 */  sw         $s2, ($v0)
/* DA85CC 80101CDC 8D620000 */  lw         $v0, ($t3)
/* DA85D0 80101CE0 3C19F200 */  lui        $t9, 0xf200
/* DA85D4 80101CE4 24580008 */  addiu      $t8, $v0, 8
/* DA85D8 80101CE8 AD780000 */  sw         $t8, ($t3)
/* DA85DC 80101CEC AC400004 */  sw         $zero, 4($v0)
/* DA85E0 80101CF0 AC4F0000 */  sw         $t7, ($v0)
/* DA85E4 80101CF4 8D620000 */  lw         $v0, ($t3)
/* DA85E8 80101CF8 3C180002 */  lui        $t8, 2
/* DA85EC 80101CFC 37188028 */  ori        $t8, $t8, 0x8028
/* DA85F0 80101D00 244E0008 */  addiu      $t6, $v0, 8
/* DA85F4 80101D04 AD6E0000 */  sw         $t6, ($t3)
/* DA85F8 80101D08 AC580004 */  sw         $t8, 4($v0)
/* DA85FC 80101D0C AC590000 */  sw         $t9, ($v0)
/* DA8600 80101D10 8D620000 */  lw         $v0, ($t3)
/* DA8604 80101D14 3C0E8010 */  lui        $t6, %hi(D_80103408)
/* DA8608 80101D18 3C188010 */  lui        $t8, %hi(D_8010340C)
/* DA860C 80101D1C 244F0008 */  addiu      $t7, $v0, 8
/* DA8610 80101D20 AD6F0000 */  sw         $t7, ($t3)
/* DA8614 80101D24 81CE3408 */  lb         $t6, %lo(D_80103408)($t6)
/* DA8618 80101D28 2718340C */  addiu      $t8, $t8, %lo(D_8010340C)
/* DA861C 80101D2C 000EC880 */  sll        $t9, $t6, 2
/* DA8620 80101D30 03381821 */  addu       $v1, $t9, $t8
/* DA8624 80101D34 846F0002 */  lh         $t7, 2($v1)
/* DA8628 80101D38 25EE000B */  addiu      $t6, $t7, 0xb
/* DA862C 80101D3C 000EC880 */  sll        $t9, $t6, 2
/* DA8630 80101D40 846E0000 */  lh         $t6, ($v1)
/* DA8634 80101D44 33380FFF */  andi       $t8, $t9, 0xfff
/* DA8638 80101D48 03017825 */  or         $t7, $t8, $at
/* DA863C 80101D4C 25D9000B */  addiu      $t9, $t6, 0xb
/* DA8640 80101D50 0019C080 */  sll        $t8, $t9, 2
/* DA8644 80101D54 330E0FFF */  andi       $t6, $t8, 0xfff
/* DA8648 80101D58 000ECB00 */  sll        $t9, $t6, 0xc
/* DA864C 80101D5C 01F9C025 */  or         $t8, $t7, $t9
/* DA8650 80101D60 AC580000 */  sw         $t8, ($v0)
/* DA8654 80101D64 846E0002 */  lh         $t6, 2($v1)
/* DA8658 80101D68 84780000 */  lh         $t8, ($v1)
/* DA865C 80101D6C 24010006 */  addiu      $at, $zero, 6
/* DA8660 80101D70 000E7880 */  sll        $t7, $t6, 2
/* DA8664 80101D74 31F90FFF */  andi       $t9, $t7, 0xfff
/* DA8668 80101D78 00187080 */  sll        $t6, $t8, 2
/* DA866C 80101D7C 31CF0FFF */  andi       $t7, $t6, 0xfff
/* DA8670 80101D80 000FC300 */  sll        $t8, $t7, 0xc
/* DA8674 80101D84 03387025 */  or         $t6, $t9, $t8
/* DA8678 80101D88 AC4E0004 */  sw         $t6, 4($v0)
/* DA867C 80101D8C 8D620000 */  lw         $v0, ($t3)
/* DA8680 80101D90 3C19B400 */  lui        $t9, 0xb400
/* DA8684 80101D94 3C0EB300 */  lui        $t6, 0xb300
/* DA8688 80101D98 244F0008 */  addiu      $t7, $v0, 8
/* DA868C 80101D9C AD6F0000 */  sw         $t7, ($t3)
/* DA8690 80101DA0 AC400004 */  sw         $zero, 4($v0)
/* DA8694 80101DA4 AC590000 */  sw         $t9, ($v0)
/* DA8698 80101DA8 8D620000 */  lw         $v0, ($t3)
/* DA869C 80101DAC 3C0F0400 */  lui        $t7, 0x400
/* DA86A0 80101DB0 35EF0400 */  ori        $t7, $t7, 0x400
/* DA86A4 80101DB4 24580008 */  addiu      $t8, $v0, 8
/* DA86A8 80101DB8 AD780000 */  sw         $t8, ($t3)
/* DA86AC 80101DBC AC4F0004 */  sw         $t7, 4($v0)
/* DA86B0 80101DC0 AC4E0000 */  sw         $t6, ($v0)
/* DA86B4 80101DC4 8FB90034 */  lw         $t9, 0x34($sp)
/* DA86B8 80101DC8 8FA20034 */  lw         $v0, 0x34($sp)
/* DA86BC 80101DCC 13210010 */  beq        $t9, $at, .L80101E10
/* DA86C0 80101DD0 24010007 */   addiu     $at, $zero, 7
/* DA86C4 80101DD4 1321000E */  beq        $t9, $at, .L80101E10
/* DA86C8 80101DD8 24010008 */   addiu     $at, $zero, 8
/* DA86CC 80101DDC 1321000C */  beq        $t9, $at, .L80101E10
/* DA86D0 80101DE0 24010009 */   addiu     $at, $zero, 9
/* DA86D4 80101DE4 1321000A */  beq        $t9, $at, .L80101E10
/* DA86D8 80101DE8 2401000A */   addiu     $at, $zero, 0xa
/* DA86DC 80101DEC 13210008 */  beq        $t9, $at, .L80101E10
/* DA86E0 80101DF0 2401000B */   addiu     $at, $zero, 0xb
/* DA86E4 80101DF4 13210006 */  beq        $t9, $at, .L80101E10
/* DA86E8 80101DF8 2401000C */   addiu     $at, $zero, 0xc
/* DA86EC 80101DFC 13210004 */  beq        $t9, $at, .L80101E10
/* DA86F0 80101E00 2401000D */   addiu     $at, $zero, 0xd
/* DA86F4 80101E04 13210002 */  beq        $t9, $at, .L80101E10
/* DA86F8 80101E08 2401000E */   addiu     $at, $zero, 0xe
/* DA86FC 80101E0C 17210401 */  bne        $t9, $at, .L80102E14
.L80101E10:
/* DA8700 80101E10 24010006 */   addiu     $at, $zero, 6
/* DA8704 80101E14 14410005 */  bne        $v0, $at, .L80101E2C
/* DA8708 80101E18 3C188010 */   lui       $t8, %hi(D_801053E8)
/* DA870C 80101E1C 271853E8 */  addiu      $t8, $t8, %lo(D_801053E8)
/* DA8710 80101E20 3C018012 */  lui        $at, %hi(D_8011AD5C)
/* DA8714 80101E24 1000001C */  b          .L80101E98
/* DA8718 80101E28 AC38AD5C */   sw        $t8, %lo(D_8011AD5C)($at)
.L80101E2C:
/* DA871C 80101E2C 24010007 */  addiu      $at, $zero, 7
/* DA8720 80101E30 14410005 */  bne        $v0, $at, .L80101E48
/* DA8724 80101E34 3C0E8010 */   lui       $t6, %hi(D_80105464)
/* DA8728 80101E38 25CE5464 */  addiu      $t6, $t6, %lo(D_80105464)
/* DA872C 80101E3C 3C018012 */  lui        $at, %hi(D_8011AD5C)
/* DA8730 80101E40 10000015 */  b          .L80101E98
/* DA8734 80101E44 AC2EAD5C */   sw        $t6, %lo(D_8011AD5C)($at)
.L80101E48:
/* DA8738 80101E48 24010008 */  addiu      $at, $zero, 8
/* DA873C 80101E4C 14410005 */  bne        $v0, $at, .L80101E64
/* DA8740 80101E50 3C0F8010 */   lui       $t7, %hi(D_80105474)
/* DA8744 80101E54 25EF5474 */  addiu      $t7, $t7, %lo(D_80105474)
/* DA8748 80101E58 3C018012 */  lui        $at, %hi(D_8011AD5C)
/* DA874C 80101E5C 1000000E */  b          .L80101E98
/* DA8750 80101E60 AC2FAD5C */   sw        $t7, %lo(D_8011AD5C)($at)
.L80101E64:
/* DA8754 80101E64 24010009 */  addiu      $at, $zero, 9
/* DA8758 80101E68 14410005 */  bne        $v0, $at, .L80101E80
/* DA875C 80101E6C 3C198010 */   lui       $t9, %hi(D_801054F0)
/* DA8760 80101E70 273954F0 */  addiu      $t9, $t9, %lo(D_801054F0)
/* DA8764 80101E74 3C018012 */  lui        $at, %hi(D_8011AD5C)
/* DA8768 80101E78 10000007 */  b          .L80101E98
/* DA876C 80101E7C AC39AD5C */   sw        $t9, %lo(D_8011AD5C)($at)
.L80101E80:
/* DA8770 80101E80 2401000A */  addiu      $at, $zero, 0xa
/* DA8774 80101E84 14410004 */  bne        $v0, $at, .L80101E98
/* DA8778 80101E88 3C188010 */   lui       $t8, %hi(D_8010552C)
/* DA877C 80101E8C 2718552C */  addiu      $t8, $t8, %lo(D_8010552C)
/* DA8780 80101E90 3C018012 */  lui        $at, %hi(D_8011AD5C)
/* DA8784 80101E94 AC38AD5C */  sw         $t8, %lo(D_8011AD5C)($at)
.L80101E98:
/* DA8788 80101E98 8D620000 */  lw         $v0, ($t3)
/* DA878C 80101E9C 3C188006 */  lui        $t8, %hi(D_8005FB80)
/* DA8790 80101EA0 2718FB80 */  addiu      $t8, $t8, %lo(D_8005FB80)
/* DA8794 80101EA4 244E0008 */  addiu      $t6, $v0, 8
/* DA8798 80101EA8 AD6E0000 */  sw         $t6, ($t3)
/* DA879C 80101EAC AC400004 */  sw         $zero, 4($v0)
/* DA87A0 80101EB0 AC520000 */  sw         $s2, ($v0)
/* DA87A4 80101EB4 8D620000 */  lw         $v0, ($t3)
/* DA87A8 80101EB8 3C19FD10 */  lui        $t9, 0xfd10
/* DA87AC 80101EBC 2405003E */  addiu      $a1, $zero, 0x3e
/* DA87B0 80101EC0 244F0008 */  addiu      $t7, $v0, 8
/* DA87B4 80101EC4 AD6F0000 */  sw         $t7, ($t3)
/* DA87B8 80101EC8 AC580004 */  sw         $t8, 4($v0)
/* DA87BC 80101ECC AC590000 */  sw         $t9, ($v0)
/* DA87C0 80101ED0 8D620000 */  lw         $v0, ($t3)
/* DA87C4 80101ED4 3C0FE800 */  lui        $t7, 0xe800
/* DA87C8 80101ED8 3C18F500 */  lui        $t8, 0xf500
/* DA87CC 80101EDC 244E0008 */  addiu      $t6, $v0, 8
/* DA87D0 80101EE0 AD6E0000 */  sw         $t6, ($t3)
/* DA87D4 80101EE4 AC400004 */  sw         $zero, 4($v0)
/* DA87D8 80101EE8 AC4F0000 */  sw         $t7, ($v0)
/* DA87DC 80101EEC 8D620000 */  lw         $v0, ($t3)
/* DA87E0 80101EF0 3C0E0700 */  lui        $t6, 0x700
/* DA87E4 80101EF4 37180100 */  ori        $t8, $t8, 0x100
/* DA87E8 80101EF8 24590008 */  addiu      $t9, $v0, 8
/* DA87EC 80101EFC AD790000 */  sw         $t9, ($t3)
/* DA87F0 80101F00 AC4E0004 */  sw         $t6, 4($v0)
/* DA87F4 80101F04 AC580000 */  sw         $t8, ($v0)
/* DA87F8 80101F08 8D620000 */  lw         $v0, ($t3)
/* DA87FC 80101F0C 3C0E073F */  lui        $t6, 0x73f
/* DA8800 80101F10 35CEC000 */  ori        $t6, $t6, 0xc000
/* DA8804 80101F14 244F0008 */  addiu      $t7, $v0, 8
/* DA8808 80101F18 AD6F0000 */  sw         $t7, ($t3)
/* DA880C 80101F1C AC400004 */  sw         $zero, 4($v0)
/* DA8810 80101F20 AC530000 */  sw         $s3, ($v0)
/* DA8814 80101F24 8D620000 */  lw         $v0, ($t3)
/* DA8818 80101F28 3C18F000 */  lui        $t8, 0xf000
/* DA881C 80101F2C 24060028 */  addiu      $a2, $zero, 0x28
/* DA8820 80101F30 24590008 */  addiu      $t9, $v0, 8
/* DA8824 80101F34 AD790000 */  sw         $t9, ($t3)
/* DA8828 80101F38 AC4E0004 */  sw         $t6, 4($v0)
/* DA882C 80101F3C AC580000 */  sw         $t8, ($v0)
/* DA8830 80101F40 8D620000 */  lw         $v0, ($t3)
/* DA8834 80101F44 3C18FB00 */  lui        $t8, 0xfb00
/* DA8838 80101F48 240E00FF */  addiu      $t6, $zero, 0xff
/* DA883C 80101F4C 244F0008 */  addiu      $t7, $v0, 8
/* DA8840 80101F50 AD6F0000 */  sw         $t7, ($t3)
/* DA8844 80101F54 AC400004 */  sw         $zero, 4($v0)
/* DA8848 80101F58 AC520000 */  sw         $s2, ($v0)
/* DA884C 80101F5C 8D620000 */  lw         $v0, ($t3)
/* DA8850 80101F60 240F0067 */  addiu      $t7, $zero, 0x67
/* DA8854 80101F64 240700C4 */  addiu      $a3, $zero, 0xc4
/* DA8858 80101F68 24590008 */  addiu      $t9, $v0, 8
/* DA885C 80101F6C AD790000 */  sw         $t9, ($t3)
/* DA8860 80101F70 AC4E0004 */  sw         $t6, 4($v0)
/* DA8864 80101F74 AC580000 */  sw         $t8, ($v0)
/* DA8868 80101F78 0C00C1F6 */  jal        func_800307D8
/* DA886C 80101F7C AFAF0010 */   sw        $t7, 0x10($sp)
/* DA8870 80101F80 24190067 */  addiu      $t9, $zero, 0x67
/* DA8874 80101F84 AFB90010 */  sw         $t9, 0x10($sp)
/* DA8878 80101F88 24040003 */  addiu      $a0, $zero, 3
/* DA887C 80101F8C 24050102 */  addiu      $a1, $zero, 0x102
/* DA8880 80101F90 2406002A */  addiu      $a2, $zero, 0x2a
/* DA8884 80101F94 0C00C1F6 */  jal        func_800307D8
/* DA8888 80101F98 24070002 */   addiu     $a3, $zero, 2
/* DA888C 80101F9C 24180002 */  addiu      $t8, $zero, 2
/* DA8890 80101FA0 AFB80010 */  sw         $t8, 0x10($sp)
/* DA8894 80101FA4 24040003 */  addiu      $a0, $zero, 3
/* DA8898 80101FA8 24050040 */  addiu      $a1, $zero, 0x40
/* DA889C 80101FAC 2406008F */  addiu      $a2, $zero, 0x8f
/* DA88A0 80101FB0 0C00C1F6 */  jal        func_800307D8
/* DA88A4 80101FB4 240700C4 */   addiu     $a3, $zero, 0xc4
/* DA88A8 80101FB8 3C0B8008 */  lui        $t3, %hi(UNK_DisplayListCommand)
/* DA88AC 80101FBC 256BB2FC */  addiu      $t3, $t3, %lo(UNK_DisplayListCommand)
/* DA88B0 80101FC0 8D620000 */  lw         $v0, ($t3)
/* DA88B4 80101FC4 240F0001 */  addiu      $t7, $zero, 1
/* DA88B8 80101FC8 24040003 */  addiu      $a0, $zero, 3
/* DA88BC 80101FCC 244E0008 */  addiu      $t6, $v0, 8
/* DA88C0 80101FD0 AD6E0000 */  sw         $t6, ($t3)
/* DA88C4 80101FD4 AC400004 */  sw         $zero, 4($v0)
/* DA88C8 80101FD8 AC520000 */  sw         $s2, ($v0)
/* DA88CC 80101FDC AFAF0010 */  sw         $t7, 0x10($sp)
/* DA88D0 80101FE0 2405003E */  addiu      $a1, $zero, 0x3e
/* DA88D4 80101FE4 24060028 */  addiu      $a2, $zero, 0x28
/* DA88D8 80101FE8 0C00C1F6 */  jal        func_800307D8
/* DA88DC 80101FEC 240700C4 */   addiu     $a3, $zero, 0xc4
/* DA88E0 80101FF0 24190001 */  addiu      $t9, $zero, 1
/* DA88E4 80101FF4 AFB90010 */  sw         $t9, 0x10($sp)
/* DA88E8 80101FF8 24040003 */  addiu      $a0, $zero, 3
/* DA88EC 80101FFC 2405003E */  addiu      $a1, $zero, 0x3e
/* DA88F0 80102000 2406008E */  addiu      $a2, $zero, 0x8e
/* DA88F4 80102004 0C00C1F6 */  jal        func_800307D8
/* DA88F8 80102008 240700C4 */   addiu     $a3, $zero, 0xc4
/* DA88FC 8010200C 24180067 */  addiu      $t8, $zero, 0x67
/* DA8900 80102010 AFB80010 */  sw         $t8, 0x10($sp)
/* DA8904 80102014 24040003 */  addiu      $a0, $zero, 3
/* DA8908 80102018 2405003E */  addiu      $a1, $zero, 0x3e
/* DA890C 8010201C 24060028 */  addiu      $a2, $zero, 0x28
/* DA8910 80102020 0C00C1F6 */  jal        func_800307D8
/* DA8914 80102024 24070001 */   addiu     $a3, $zero, 1
/* DA8918 80102028 240E0067 */  addiu      $t6, $zero, 0x67
/* DA891C 8010202C AFAE0010 */  sw         $t6, 0x10($sp)
/* DA8920 80102030 24040003 */  addiu      $a0, $zero, 3
/* DA8924 80102034 24050101 */  addiu      $a1, $zero, 0x101
/* DA8928 80102038 24060028 */  addiu      $a2, $zero, 0x28
/* DA892C 8010203C 0C00C1F6 */  jal        func_800307D8
/* DA8930 80102040 24070001 */   addiu     $a3, $zero, 1
/* DA8934 80102044 3C0B8008 */  lui        $t3, %hi(UNK_DisplayListCommand)
/* DA8938 80102048 256BB2FC */  addiu      $t3, $t3, %lo(UNK_DisplayListCommand)
/* DA893C 8010204C 8D620000 */  lw         $v0, ($t3)
/* DA8940 80102050 3C18BA00 */  lui        $t8, 0xba00
/* DA8944 80102054 37180E02 */  ori        $t8, $t8, 0xe02
/* DA8948 80102058 244F0008 */  addiu      $t7, $v0, 8
/* DA894C 8010205C AD6F0000 */  sw         $t7, ($t3)
/* DA8950 80102060 AC400004 */  sw         $zero, 4($v0)
/* DA8954 80102064 AC520000 */  sw         $s2, ($v0)
/* DA8958 80102068 8D620000 */  lw         $v0, ($t3)
/* DA895C 8010206C 340E8000 */  ori        $t6, $zero, 0x8000
/* DA8960 80102070 3C10FD48 */  lui        $s0, 0xfd48
/* DA8964 80102074 24590008 */  addiu      $t9, $v0, 8
/* DA8968 80102078 AD790000 */  sw         $t9, ($t3)
/* DA896C 8010207C AC4E0004 */  sw         $t6, 4($v0)
/* DA8970 80102080 AC580000 */  sw         $t8, ($v0)
/* DA8974 80102084 8D620000 */  lw         $v0, ($t3)
/* DA8978 80102088 3C180050 */  lui        $t8, 0x50
/* DA897C 8010208C 3C19B900 */  lui        $t9, 0xb900
/* DA8980 80102090 244F0008 */  addiu      $t7, $v0, 8
/* DA8984 80102094 AD6F0000 */  sw         $t7, ($t3)
/* DA8988 80102098 3739031D */  ori        $t9, $t9, 0x31d
/* DA898C 8010209C 37184240 */  ori        $t8, $t8, 0x4240
/* DA8990 801020A0 AC580004 */  sw         $t8, 4($v0)
/* DA8994 801020A4 AC590000 */  sw         $t9, ($v0)
/* DA8998 801020A8 8D620000 */  lw         $v0, ($t3)
/* DA899C 801020AC 3C198012 */  lui        $t9, %hi(D_8011AA98)
/* DA89A0 801020B0 2739AA98 */  addiu      $t9, $t9, %lo(D_8011AA98)
/* DA89A4 801020B4 244E0008 */  addiu      $t6, $v0, 8
/* DA89A8 801020B8 AD6E0000 */  sw         $t6, ($t3)
/* DA89AC 801020BC 3C0FFD10 */  lui        $t7, 0xfd10
/* DA89B0 801020C0 AC4F0000 */  sw         $t7, ($v0)
/* DA89B4 801020C4 AC590004 */  sw         $t9, 4($v0)
/* DA89B8 801020C8 8D620000 */  lw         $v0, ($t3)
/* DA89BC 801020CC 3C0EE800 */  lui        $t6, 0xe800
/* DA89C0 801020D0 3C19F500 */  lui        $t9, 0xf500
/* DA89C4 801020D4 24580008 */  addiu      $t8, $v0, 8
/* DA89C8 801020D8 AD780000 */  sw         $t8, ($t3)
/* DA89CC 801020DC AC400004 */  sw         $zero, 4($v0)
/* DA89D0 801020E0 AC4E0000 */  sw         $t6, ($v0)
/* DA89D4 801020E4 8D620000 */  lw         $v0, ($t3)
/* DA89D8 801020E8 3C180700 */  lui        $t8, 0x700
/* DA89DC 801020EC 37390100 */  ori        $t9, $t9, 0x100
/* DA89E0 801020F0 244F0008 */  addiu      $t7, $v0, 8
/* DA89E4 801020F4 AD6F0000 */  sw         $t7, ($t3)
/* DA89E8 801020F8 AC580004 */  sw         $t8, 4($v0)
/* DA89EC 801020FC AC590000 */  sw         $t9, ($v0)
/* DA89F0 80102100 8D620000 */  lw         $v0, ($t3)
/* DA89F4 80102104 3C18073F */  lui        $t8, 0x73f
/* DA89F8 80102108 3718C000 */  ori        $t8, $t8, 0xc000
/* DA89FC 8010210C 244E0008 */  addiu      $t6, $v0, 8
/* DA8A00 80102110 AD6E0000 */  sw         $t6, ($t3)
/* DA8A04 80102114 AC400004 */  sw         $zero, 4($v0)
/* DA8A08 80102118 AC530000 */  sw         $s3, ($v0)
/* DA8A0C 8010211C 8D620000 */  lw         $v0, ($t3)
/* DA8A10 80102120 3C19F000 */  lui        $t9, 0xf000
/* DA8A14 80102124 3C1F8012 */  lui        $ra, 0x8012
/* DA8A18 80102128 244F0008 */  addiu      $t7, $v0, 8
/* DA8A1C 8010212C AD6F0000 */  sw         $t7, ($t3)
/* DA8A20 80102130 AC580004 */  sw         $t8, 4($v0)
/* DA8A24 80102134 AC590000 */  sw         $t9, ($v0)
/* DA8A28 80102138 8D620000 */  lw         $v0, ($t3)
/* DA8A2C 8010213C 36100003 */  ori        $s0, $s0, 3
/* DA8A30 80102140 27FFACA0 */  addiu      $ra, $ra, -0x5360
/* DA8A34 80102144 244E0008 */  addiu      $t6, $v0, 8
/* DA8A38 80102148 AD6E0000 */  sw         $t6, ($t3)
/* DA8A3C 8010214C AC400004 */  sw         $zero, 4($v0)
/* DA8A40 80102150 AC520000 */  sw         $s2, ($v0)
/* DA8A44 80102154 8D620000 */  lw         $v0, ($t3)
/* DA8A48 80102158 3C110708 */  lui        $s1, 0x708
/* DA8A4C 8010215C 3C0EF548 */  lui        $t6, 0xf548
/* DA8A50 80102160 244F0008 */  addiu      $t7, $v0, 8
/* DA8A54 80102164 AD6F0000 */  sw         $t7, ($t3)
/* DA8A58 80102168 AC400004 */  sw         $zero, 4($v0)
/* DA8A5C 8010216C AC520000 */  sw         $s2, ($v0)
/* DA8A60 80102170 8D620000 */  lw         $v0, ($t3)
/* DA8A64 80102174 36310200 */  ori        $s1, $s1, 0x200
/* DA8A68 80102178 35CE0200 */  ori        $t6, $t6, 0x200
/* DA8A6C 8010217C 24590008 */  addiu      $t9, $v0, 8
/* DA8A70 80102180 AD790000 */  sw         $t9, ($t3)
/* DA8A74 80102184 AC5F0004 */  sw         $ra, 4($v0)
/* DA8A78 80102188 AC500000 */  sw         $s0, ($v0)
/* DA8A7C 8010218C 8D620000 */  lw         $v0, ($t3)
/* DA8A80 80102190 24580008 */  addiu      $t8, $v0, 8
/* DA8A84 80102194 AD780000 */  sw         $t8, ($t3)
/* DA8A88 80102198 AC510004 */  sw         $s1, 4($v0)
/* DA8A8C 8010219C AC4E0000 */  sw         $t6, ($v0)
/* DA8A90 801021A0 8D620000 */  lw         $v0, ($t3)
/* DA8A94 801021A4 3C0E0700 */  lui        $t6, 0x700
/* DA8A98 801021A8 35CEC00C */  ori        $t6, $t6, 0xc00c
/* DA8A9C 801021AC 244F0008 */  addiu      $t7, $v0, 8
/* DA8AA0 801021B0 AD6F0000 */  sw         $t7, ($t3)
/* DA8AA4 801021B4 AC400004 */  sw         $zero, 4($v0)
/* DA8AA8 801021B8 AC530000 */  sw         $s3, ($v0)
/* DA8AAC 801021BC 8D620000 */  lw         $v0, ($t3)
/* DA8AB0 801021C0 3C18F400 */  lui        $t8, 0xf400
/* DA8AB4 801021C4 24590008 */  addiu      $t9, $v0, 8
/* DA8AB8 801021C8 AD790000 */  sw         $t9, ($t3)
/* DA8ABC 801021CC AC4E0004 */  sw         $t6, 4($v0)
/* DA8AC0 801021D0 AC580000 */  sw         $t8, ($v0)
/* DA8AC4 801021D4 8D620000 */  lw         $v0, ($t3)
/* DA8AC8 801021D8 3C18F548 */  lui        $t8, 0xf548
/* DA8ACC 801021DC 3C0E0008 */  lui        $t6, 8
/* DA8AD0 801021E0 244F0008 */  addiu      $t7, $v0, 8
/* DA8AD4 801021E4 AD6F0000 */  sw         $t7, ($t3)
/* DA8AD8 801021E8 AC400004 */  sw         $zero, 4($v0)
/* DA8ADC 801021EC AC520000 */  sw         $s2, ($v0)
/* DA8AE0 801021F0 8D620000 */  lw         $v0, ($t3)
/* DA8AE4 801021F4 35CE0200 */  ori        $t6, $t6, 0x200
/* DA8AE8 801021F8 37180200 */  ori        $t8, $t8, 0x200
/* DA8AEC 801021FC 24590008 */  addiu      $t9, $v0, 8
/* DA8AF0 80102200 AD790000 */  sw         $t9, ($t3)
/* DA8AF4 80102204 AC4E0004 */  sw         $t6, 4($v0)
/* DA8AF8 80102208 AC580000 */  sw         $t8, ($v0)
/* DA8AFC 8010220C 8D620000 */  lw         $v0, ($t3)
/* DA8B00 80102210 3418C00C */  ori        $t8, $zero, 0xc00c
/* DA8B04 80102214 3C19F200 */  lui        $t9, 0xf200
/* DA8B08 80102218 244F0008 */  addiu      $t7, $v0, 8
/* DA8B0C 8010221C AD6F0000 */  sw         $t7, ($t3)
/* DA8B10 80102220 AC580004 */  sw         $t8, 4($v0)
/* DA8B14 80102224 AC590000 */  sw         $t9, ($v0)
/* DA8B18 80102228 8D620000 */  lw         $v0, ($t3)
/* DA8B1C 8010222C 3C190010 */  lui        $t9, 0x10
/* DA8B20 80102230 3C0FE440 */  lui        $t7, 0xe440
/* DA8B24 80102234 244E0008 */  addiu      $t6, $v0, 8
/* DA8B28 80102238 AD6E0000 */  sw         $t6, ($t3)
/* DA8B2C 8010223C 35EF00AC */  ori        $t7, $t7, 0xac
/* DA8B30 80102240 373900A8 */  ori        $t9, $t9, 0xa8
/* DA8B34 80102244 AC590004 */  sw         $t9, 4($v0)
/* DA8B38 80102248 AC4F0000 */  sw         $t7, ($v0)
/* DA8B3C 8010224C 8D620000 */  lw         $v0, ($t3)
/* DA8B40 80102250 3C0EB400 */  lui        $t6, 0xb400
/* DA8B44 80102254 3C19B300 */  lui        $t9, 0xb300
/* DA8B48 80102258 24580008 */  addiu      $t8, $v0, 8
/* DA8B4C 8010225C AD780000 */  sw         $t8, ($t3)
/* DA8B50 80102260 AC400004 */  sw         $zero, 4($v0)
/* DA8B54 80102264 AC4E0000 */  sw         $t6, ($v0)
/* DA8B58 80102268 8D620000 */  lw         $v0, ($t3)
/* DA8B5C 8010226C 3C180400 */  lui        $t8, 0x400
/* DA8B60 80102270 37180400 */  ori        $t8, $t8, 0x400
/* DA8B64 80102274 244F0008 */  addiu      $t7, $v0, 8
/* DA8B68 80102278 AD6F0000 */  sw         $t7, ($t3)
/* DA8B6C 8010227C AC580004 */  sw         $t8, 4($v0)
/* DA8B70 80102280 AC590000 */  sw         $t9, ($v0)
/* DA8B74 80102284 8D620000 */  lw         $v0, ($t3)
/* DA8B78 80102288 3C18F548 */  lui        $t8, 0xf548
/* DA8B7C 8010228C 37180200 */  ori        $t8, $t8, 0x200
/* DA8B80 80102290 244E0008 */  addiu      $t6, $v0, 8
/* DA8B84 80102294 AD6E0000 */  sw         $t6, ($t3)
/* DA8B88 80102298 AC400004 */  sw         $zero, 4($v0)
/* DA8B8C 8010229C AC520000 */  sw         $s2, ($v0)
/* DA8B90 801022A0 8D620000 */  lw         $v0, ($t3)
/* DA8B94 801022A4 244F0008 */  addiu      $t7, $v0, 8
/* DA8B98 801022A8 AD6F0000 */  sw         $t7, ($t3)
/* DA8B9C 801022AC AC5F0004 */  sw         $ra, 4($v0)
/* DA8BA0 801022B0 AC500000 */  sw         $s0, ($v0)
/* DA8BA4 801022B4 8D620000 */  lw         $v0, ($t3)
/* DA8BA8 801022B8 3C1F8012 */  lui        $ra, %hi(D_8011ACB8)
/* DA8BAC 801022BC 27FFACB8 */  addiu      $ra, $ra, %lo(D_8011ACB8)
/* DA8BB0 801022C0 24590008 */  addiu      $t9, $v0, 8
/* DA8BB4 801022C4 AD790000 */  sw         $t9, ($t3)
/* DA8BB8 801022C8 AC510004 */  sw         $s1, 4($v0)
/* DA8BBC 801022CC AC580000 */  sw         $t8, ($v0)
/* DA8BC0 801022D0 8D620000 */  lw         $v0, ($t3)
/* DA8BC4 801022D4 3C180700 */  lui        $t8, 0x700
/* DA8BC8 801022D8 3718C00C */  ori        $t8, $t8, 0xc00c
/* DA8BCC 801022DC 244E0008 */  addiu      $t6, $v0, 8
/* DA8BD0 801022E0 AD6E0000 */  sw         $t6, ($t3)
/* DA8BD4 801022E4 AC400004 */  sw         $zero, 4($v0)
/* DA8BD8 801022E8 AC530000 */  sw         $s3, ($v0)
/* DA8BDC 801022EC 8D620000 */  lw         $v0, ($t3)
/* DA8BE0 801022F0 3C19F400 */  lui        $t9, 0xf400
/* DA8BE4 801022F4 244F0008 */  addiu      $t7, $v0, 8
/* DA8BE8 801022F8 AD6F0000 */  sw         $t7, ($t3)
/* DA8BEC 801022FC AC580004 */  sw         $t8, 4($v0)
/* DA8BF0 80102300 AC590000 */  sw         $t9, ($v0)
/* DA8BF4 80102304 8D620000 */  lw         $v0, ($t3)
/* DA8BF8 80102308 3C19F548 */  lui        $t9, 0xf548
/* DA8BFC 8010230C 3C180008 */  lui        $t8, 8
/* DA8C00 80102310 244E0008 */  addiu      $t6, $v0, 8
/* DA8C04 80102314 AD6E0000 */  sw         $t6, ($t3)
/* DA8C08 80102318 AC400004 */  sw         $zero, 4($v0)
/* DA8C0C 8010231C AC520000 */  sw         $s2, ($v0)
/* DA8C10 80102320 8D620000 */  lw         $v0, ($t3)
/* DA8C14 80102324 37180200 */  ori        $t8, $t8, 0x200
/* DA8C18 80102328 37390200 */  ori        $t9, $t9, 0x200
/* DA8C1C 8010232C 244F0008 */  addiu      $t7, $v0, 8
/* DA8C20 80102330 AD6F0000 */  sw         $t7, ($t3)
/* DA8C24 80102334 AC580004 */  sw         $t8, 4($v0)
/* DA8C28 80102338 AC590000 */  sw         $t9, ($v0)
/* DA8C2C 8010233C 8D620000 */  lw         $v0, ($t3)
/* DA8C30 80102340 3419C00C */  ori        $t9, $zero, 0xc00c
/* DA8C34 80102344 3C0FF200 */  lui        $t7, 0xf200
/* DA8C38 80102348 244E0008 */  addiu      $t6, $v0, 8
/* DA8C3C 8010234C AD6E0000 */  sw         $t6, ($t3)
/* DA8C40 80102350 AC590004 */  sw         $t9, 4($v0)
/* DA8C44 80102354 AC4F0000 */  sw         $t7, ($v0)
/* DA8C48 80102358 8D620000 */  lw         $v0, ($t3)
/* DA8C4C 8010235C 3C0F0010 */  lui        $t7, 0x10
/* DA8C50 80102360 3C0EE410 */  lui        $t6, 0xe410
/* DA8C54 80102364 24580008 */  addiu      $t8, $v0, 8
/* DA8C58 80102368 AD780000 */  sw         $t8, ($t3)
/* DA8C5C 8010236C 35CE4230 */  ori        $t6, $t6, 0x4230
/* DA8C60 80102370 35EF00A8 */  ori        $t7, $t7, 0xa8
/* DA8C64 80102374 AC4F0004 */  sw         $t7, 4($v0)
/* DA8C68 80102378 AC4E0000 */  sw         $t6, ($v0)
/* DA8C6C 8010237C 8D620000 */  lw         $v0, ($t3)
/* DA8C70 80102380 3C18B400 */  lui        $t8, 0xb400
/* DA8C74 80102384 3C0FB300 */  lui        $t7, 0xb300
/* DA8C78 80102388 24590008 */  addiu      $t9, $v0, 8
/* DA8C7C 8010238C AD790000 */  sw         $t9, ($t3)
/* DA8C80 80102390 AC400004 */  sw         $zero, 4($v0)
/* DA8C84 80102394 AC580000 */  sw         $t8, ($v0)
/* DA8C88 80102398 8D620000 */  lw         $v0, ($t3)
/* DA8C8C 8010239C 3C190400 */  lui        $t9, 0x400
/* DA8C90 801023A0 37390400 */  ori        $t9, $t9, 0x400
/* DA8C94 801023A4 244E0008 */  addiu      $t6, $v0, 8
/* DA8C98 801023A8 AD6E0000 */  sw         $t6, ($t3)
/* DA8C9C 801023AC AC590004 */  sw         $t9, 4($v0)
/* DA8CA0 801023B0 AC4F0000 */  sw         $t7, ($v0)
/* DA8CA4 801023B4 8D620000 */  lw         $v0, ($t3)
/* DA8CA8 801023B8 3C19F548 */  lui        $t9, 0xf548
/* DA8CAC 801023BC 37390200 */  ori        $t9, $t9, 0x200
/* DA8CB0 801023C0 24580008 */  addiu      $t8, $v0, 8
/* DA8CB4 801023C4 AD780000 */  sw         $t8, ($t3)
/* DA8CB8 801023C8 AC400004 */  sw         $zero, 4($v0)
/* DA8CBC 801023CC AC520000 */  sw         $s2, ($v0)
/* DA8CC0 801023D0 8D620000 */  lw         $v0, ($t3)
/* DA8CC4 801023D4 244E0008 */  addiu      $t6, $v0, 8
/* DA8CC8 801023D8 AD6E0000 */  sw         $t6, ($t3)
/* DA8CCC 801023DC AC5F0004 */  sw         $ra, 4($v0)
/* DA8CD0 801023E0 AC500000 */  sw         $s0, ($v0)
/* DA8CD4 801023E4 8D620000 */  lw         $v0, ($t3)
/* DA8CD8 801023E8 244F0008 */  addiu      $t7, $v0, 8
/* DA8CDC 801023EC AD6F0000 */  sw         $t7, ($t3)
/* DA8CE0 801023F0 AC510004 */  sw         $s1, 4($v0)
/* DA8CE4 801023F4 AC590000 */  sw         $t9, ($v0)
/* DA8CE8 801023F8 8D620000 */  lw         $v0, ($t3)
/* DA8CEC 801023FC 3C190700 */  lui        $t9, 0x700
/* DA8CF0 80102400 3739C00C */  ori        $t9, $t9, 0xc00c
/* DA8CF4 80102404 24580008 */  addiu      $t8, $v0, 8
/* DA8CF8 80102408 AD780000 */  sw         $t8, ($t3)
/* DA8CFC 8010240C AC400004 */  sw         $zero, 4($v0)
/* DA8D00 80102410 AC530000 */  sw         $s3, ($v0)
/* DA8D04 80102414 8D680000 */  lw         $t0, ($t3)
/* DA8D08 80102418 3C0FF400 */  lui        $t7, 0xf400
/* DA8D0C 8010241C 250E0008 */  addiu      $t6, $t0, 8
/* DA8D10 80102420 AD6E0000 */  sw         $t6, ($t3)
/* DA8D14 80102424 AD0F0000 */  sw         $t7, ($t0)
/* DA8D18 80102428 AD190004 */  sw         $t9, 4($t0)
/* DA8D1C 8010242C 8D620000 */  lw         $v0, ($t3)
/* DA8D20 80102430 3C190008 */  lui        $t9, 8
/* DA8D24 80102434 3C0FF548 */  lui        $t7, 0xf548
/* DA8D28 80102438 24580008 */  addiu      $t8, $v0, 8
/* DA8D2C 8010243C AD780000 */  sw         $t8, ($t3)
/* DA8D30 80102440 AC400004 */  sw         $zero, 4($v0)
/* DA8D34 80102444 AC520000 */  sw         $s2, ($v0)
/* DA8D38 80102448 8D620000 */  lw         $v0, ($t3)
/* DA8D3C 8010244C 35EF0200 */  ori        $t7, $t7, 0x200
/* DA8D40 80102450 37390200 */  ori        $t9, $t9, 0x200
/* DA8D44 80102454 244E0008 */  addiu      $t6, $v0, 8
/* DA8D48 80102458 AD6E0000 */  sw         $t6, ($t3)
/* DA8D4C 8010245C AC590004 */  sw         $t9, 4($v0)
/* DA8D50 80102460 AC4F0000 */  sw         $t7, ($v0)
/* DA8D54 80102464 8D620000 */  lw         $v0, ($t3)
/* DA8D58 80102468 340FC00C */  ori        $t7, $zero, 0xc00c
/* DA8D5C 8010246C 3C0EF200 */  lui        $t6, 0xf200
/* DA8D60 80102470 24580008 */  addiu      $t8, $v0, 8
/* DA8D64 80102474 AD780000 */  sw         $t8, ($t3)
/* DA8D68 80102478 AC4F0004 */  sw         $t7, 4($v0)
/* DA8D6C 8010247C AC4E0000 */  sw         $t6, ($v0)
/* DA8D70 80102480 8D620000 */  lw         $v0, ($t3)
/* DA8D74 80102484 3C0E0010 */  lui        $t6, 0x10
/* DA8D78 80102488 3C18E440 */  lui        $t8, 0xe440
/* DA8D7C 8010248C 24590008 */  addiu      $t9, $v0, 8
/* DA8D80 80102490 AD790000 */  sw         $t9, ($t3)
/* DA8D84 80102494 37180238 */  ori        $t8, $t8, 0x238
/* DA8D88 80102498 35CE0234 */  ori        $t6, $t6, 0x234
/* DA8D8C 8010249C AC4E0004 */  sw         $t6, 4($v0)
/* DA8D90 801024A0 AC580000 */  sw         $t8, ($v0)
/* DA8D94 801024A4 8D620000 */  lw         $v0, ($t3)
/* DA8D98 801024A8 3C19B400 */  lui        $t9, 0xb400
/* DA8D9C 801024AC 3C0EB300 */  lui        $t6, 0xb300
/* DA8DA0 801024B0 244F0008 */  addiu      $t7, $v0, 8
/* DA8DA4 801024B4 AD6F0000 */  sw         $t7, ($t3)
/* DA8DA8 801024B8 AC400004 */  sw         $zero, 4($v0)
/* DA8DAC 801024BC AC590000 */  sw         $t9, ($v0)
/* DA8DB0 801024C0 8D620000 */  lw         $v0, ($t3)
/* DA8DB4 801024C4 3C0F0400 */  lui        $t7, 0x400
/* DA8DB8 801024C8 35EF0400 */  ori        $t7, $t7, 0x400
/* DA8DBC 801024CC 24580008 */  addiu      $t8, $v0, 8
/* DA8DC0 801024D0 AD780000 */  sw         $t8, ($t3)
/* DA8DC4 801024D4 AC4F0004 */  sw         $t7, 4($v0)
/* DA8DC8 801024D8 AC4E0000 */  sw         $t6, ($v0)
/* DA8DCC 801024DC 8D620000 */  lw         $v0, ($t3)
/* DA8DD0 801024E0 3C0FF548 */  lui        $t7, 0xf548
/* DA8DD4 801024E4 35EF0200 */  ori        $t7, $t7, 0x200
/* DA8DD8 801024E8 24590008 */  addiu      $t9, $v0, 8
/* DA8DDC 801024EC AD790000 */  sw         $t9, ($t3)
/* DA8DE0 801024F0 AC400004 */  sw         $zero, 4($v0)
/* DA8DE4 801024F4 AC520000 */  sw         $s2, ($v0)
/* DA8DE8 801024F8 8D620000 */  lw         $v0, ($t3)
/* DA8DEC 801024FC 3C068012 */  lui        $a2, 0x8012
/* DA8DF0 80102500 24040044 */  addiu      $a0, $zero, 0x44
/* DA8DF4 80102504 24580008 */  addiu      $t8, $v0, 8
/* DA8DF8 80102508 AD780000 */  sw         $t8, ($t3)
/* DA8DFC 8010250C AC5F0004 */  sw         $ra, 4($v0)
/* DA8E00 80102510 AC500000 */  sw         $s0, ($v0)
/* DA8E04 80102514 8D620000 */  lw         $v0, ($t3)
/* DA8E08 80102518 2405002E */  addiu      $a1, $zero, 0x2e
/* DA8E0C 8010251C 244E0008 */  addiu      $t6, $v0, 8
/* DA8E10 80102520 AD6E0000 */  sw         $t6, ($t3)
/* DA8E14 80102524 AC510004 */  sw         $s1, 4($v0)
/* DA8E18 80102528 AC4F0000 */  sw         $t7, ($v0)
/* DA8E1C 8010252C 8D620000 */  lw         $v0, ($t3)
/* DA8E20 80102530 3C0F0700 */  lui        $t7, 0x700
/* DA8E24 80102534 35EFC00C */  ori        $t7, $t7, 0xc00c
/* DA8E28 80102538 24590008 */  addiu      $t9, $v0, 8
/* DA8E2C 8010253C AD790000 */  sw         $t9, ($t3)
/* DA8E30 80102540 AC400004 */  sw         $zero, 4($v0)
/* DA8E34 80102544 AC530000 */  sw         $s3, ($v0)
/* DA8E38 80102548 8D620000 */  lw         $v0, ($t3)
/* DA8E3C 8010254C 3C0EF400 */  lui        $t6, 0xf400
/* DA8E40 80102550 24580008 */  addiu      $t8, $v0, 8
/* DA8E44 80102554 AD780000 */  sw         $t8, ($t3)
/* DA8E48 80102558 AC4F0004 */  sw         $t7, 4($v0)
/* DA8E4C 8010255C AC4E0000 */  sw         $t6, ($v0)
/* DA8E50 80102560 8D620000 */  lw         $v0, ($t3)
/* DA8E54 80102564 3C0EF548 */  lui        $t6, 0xf548
/* DA8E58 80102568 3C0F0008 */  lui        $t7, 8
/* DA8E5C 8010256C 24590008 */  addiu      $t9, $v0, 8
/* DA8E60 80102570 AD790000 */  sw         $t9, ($t3)
/* DA8E64 80102574 AC400004 */  sw         $zero, 4($v0)
/* DA8E68 80102578 AC520000 */  sw         $s2, ($v0)
/* DA8E6C 8010257C 8D620000 */  lw         $v0, ($t3)
/* DA8E70 80102580 35EF0200 */  ori        $t7, $t7, 0x200
/* DA8E74 80102584 35CE0200 */  ori        $t6, $t6, 0x200
/* DA8E78 80102588 24580008 */  addiu      $t8, $v0, 8
/* DA8E7C 8010258C AD780000 */  sw         $t8, ($t3)
/* DA8E80 80102590 AC4F0004 */  sw         $t7, 4($v0)
/* DA8E84 80102594 AC4E0000 */  sw         $t6, ($v0)
/* DA8E88 80102598 8D620000 */  lw         $v0, ($t3)
/* DA8E8C 8010259C 340EC00C */  ori        $t6, $zero, 0xc00c
/* DA8E90 801025A0 3C18F200 */  lui        $t8, 0xf200
/* DA8E94 801025A4 24590008 */  addiu      $t9, $v0, 8
/* DA8E98 801025A8 AD790000 */  sw         $t9, ($t3)
/* DA8E9C 801025AC AC4E0004 */  sw         $t6, 4($v0)
/* DA8EA0 801025B0 AC580000 */  sw         $t8, ($v0)
/* DA8EA4 801025B4 8D620000 */  lw         $v0, ($t3)
/* DA8EA8 801025B8 3C180040 */  lui        $t8, 0x40
/* DA8EAC 801025BC 3C19E440 */  lui        $t9, 0xe440
/* DA8EB0 801025C0 244F0008 */  addiu      $t7, $v0, 8
/* DA8EB4 801025C4 AD6F0000 */  sw         $t7, ($t3)
/* DA8EB8 801025C8 37394238 */  ori        $t9, $t9, 0x4238
/* DA8EBC 801025CC 371800A8 */  ori        $t8, $t8, 0xa8
/* DA8EC0 801025D0 AC580004 */  sw         $t8, 4($v0)
/* DA8EC4 801025D4 AC590000 */  sw         $t9, ($v0)
/* DA8EC8 801025D8 8D620000 */  lw         $v0, ($t3)
/* DA8ECC 801025DC 3C0FB400 */  lui        $t7, 0xb400
/* DA8ED0 801025E0 3C18B300 */  lui        $t8, 0xb300
/* DA8ED4 801025E4 244E0008 */  addiu      $t6, $v0, 8
/* DA8ED8 801025E8 AD6E0000 */  sw         $t6, ($t3)
/* DA8EDC 801025EC AC400004 */  sw         $zero, 4($v0)
/* DA8EE0 801025F0 AC4F0000 */  sw         $t7, ($v0)
/* DA8EE4 801025F4 8D620000 */  lw         $v0, ($t3)
/* DA8EE8 801025F8 3C0E0400 */  lui        $t6, 0x400
/* DA8EEC 801025FC 35CE0400 */  ori        $t6, $t6, 0x400
/* DA8EF0 80102600 24590008 */  addiu      $t9, $v0, 8
/* DA8EF4 80102604 AD790000 */  sw         $t9, ($t3)
/* DA8EF8 80102608 AC4E0004 */  sw         $t6, 4($v0)
/* DA8EFC 8010260C AC580000 */  sw         $t8, ($v0)
/* DA8F00 80102610 8D620000 */  lw         $v0, ($t3)
/* DA8F04 80102614 3C18FB00 */  lui        $t8, 0xfb00
/* DA8F08 80102618 240E00FF */  addiu      $t6, $zero, 0xff
/* DA8F0C 8010261C 244F0008 */  addiu      $t7, $v0, 8
/* DA8F10 80102620 AD6F0000 */  sw         $t7, ($t3)
/* DA8F14 80102624 AC400004 */  sw         $zero, 4($v0)
/* DA8F18 80102628 AC520000 */  sw         $s2, ($v0)
/* DA8F1C 8010262C 8D620000 */  lw         $v0, ($t3)
/* DA8F20 80102630 24590008 */  addiu      $t9, $v0, 8
/* DA8F24 80102634 AD790000 */  sw         $t9, ($t3)
/* DA8F28 80102638 AC4E0004 */  sw         $t6, 4($v0)
/* DA8F2C 8010263C AC580000 */  sw         $t8, ($v0)
/* DA8F30 80102640 0C00C3A8 */  jal        printTextToScreen
/* DA8F34 80102644 8CC6AD5C */   lw        $a2, -0x52a4($a2)
/* DA8F38 80102648 8FA20034 */  lw         $v0, 0x34($sp)
/* DA8F3C 8010264C 24010008 */  addiu      $at, $zero, 8
/* DA8F40 80102650 24040094 */  addiu      $a0, $zero, 0x94
/* DA8F44 80102654 1041000B */  beq        $v0, $at, .L80102684
/* DA8F48 80102658 24050073 */   addiu     $a1, $zero, 0x73
/* DA8F4C 8010265C 24010007 */  addiu      $at, $zero, 7
/* DA8F50 80102660 10410008 */  beq        $v0, $at, .L80102684
/* DA8F54 80102664 2401000B */   addiu     $at, $zero, 0xb
/* DA8F58 80102668 10410006 */  beq        $v0, $at, .L80102684
/* DA8F5C 8010266C 2401000C */   addiu     $at, $zero, 0xc
/* DA8F60 80102670 10410004 */  beq        $v0, $at, .L80102684
/* DA8F64 80102674 2401000D */   addiu     $at, $zero, 0xd
/* DA8F68 80102678 10410002 */  beq        $v0, $at, .L80102684
/* DA8F6C 8010267C 2401000E */   addiu     $at, $zero, 0xe
/* DA8F70 80102680 144101E4 */  bne        $v0, $at, .L80102E14
.L80102684:
/* DA8F74 80102684 3C068010 */   lui       $a2, %hi(D_80105538)
/* DA8F78 80102688 3C108010 */  lui        $s0, %hi(D_80103388)
/* DA8F7C 8010268C 26103388 */  addiu      $s0, $s0, %lo(D_80103388)
/* DA8F80 80102690 0C00C3A8 */  jal        printTextToScreen
/* DA8F84 80102694 24C65538 */   addiu     $a2, $a2, %lo(D_80105538)
/* DA8F88 80102698 3C068010 */  lui        $a2, %hi(D_80105540)
/* DA8F8C 8010269C 24C65540 */  addiu      $a2, $a2, %lo(D_80105540)
/* DA8F90 801026A0 24040094 */  addiu      $a0, $zero, 0x94
/* DA8F94 801026A4 0C00C3A8 */  jal        printTextToScreen
/* DA8F98 801026A8 24050080 */   addiu     $a1, $zero, 0x80
/* DA8F9C 801026AC 8FAF0034 */  lw         $t7, 0x34($sp)
/* DA8FA0 801026B0 3C0B8008 */  lui        $t3, %hi(UNK_DisplayListCommand)
/* DA8FA4 801026B4 2401000B */  addiu      $at, $zero, 0xb
/* DA8FA8 801026B8 11E10008 */  beq        $t7, $at, .L801026DC
/* DA8FAC 801026BC 256BB2FC */   addiu     $t3, $t3, %lo(UNK_DisplayListCommand)
/* DA8FB0 801026C0 2401000C */  addiu      $at, $zero, 0xc
/* DA8FB4 801026C4 11E10005 */  beq        $t7, $at, .L801026DC
/* DA8FB8 801026C8 2401000D */   addiu     $at, $zero, 0xd
/* DA8FBC 801026CC 11E10003 */  beq        $t7, $at, .L801026DC
/* DA8FC0 801026D0 2401000E */   addiu     $at, $zero, 0xe
/* DA8FC4 801026D4 55E1001F */  bnel       $t7, $at, .L80102754
/* DA8FC8 801026D8 8D620000 */   lw        $v0, ($t3)
.L801026DC:
/* DA8FCC 801026DC 8D620000 */  lw         $v0, ($t3)
/* DA8FD0 801026E0 3C0EB900 */  lui        $t6, 0xb900
/* DA8FD4 801026E4 3C0F0050 */  lui        $t7, 0x50
/* DA8FD8 801026E8 24590008 */  addiu      $t9, $v0, 8
/* DA8FDC 801026EC AD790000 */  sw         $t9, ($t3)
/* DA8FE0 801026F0 AC400004 */  sw         $zero, 4($v0)
/* DA8FE4 801026F4 AC520000 */  sw         $s2, ($v0)
/* DA8FE8 801026F8 8D620000 */  lw         $v0, ($t3)
/* DA8FEC 801026FC 35EF4240 */  ori        $t7, $t7, 0x4240
/* DA8FF0 80102700 35CE031D */  ori        $t6, $t6, 0x31d
/* DA8FF4 80102704 24580008 */  addiu      $t8, $v0, 8
/* DA8FF8 80102708 AD780000 */  sw         $t8, ($t3)
/* DA8FFC 8010270C AC4F0004 */  sw         $t7, 4($v0)
/* DA9000 80102710 AC4E0000 */  sw         $t6, ($v0)
/* DA9004 80102714 8D620000 */  lw         $v0, ($t3)
/* DA9008 80102718 3C180600 */  lui        $t8, 0x600
/* DA900C 8010271C 3C0FFB00 */  lui        $t7, 0xfb00
/* DA9010 80102720 24590008 */  addiu      $t9, $v0, 8
/* DA9014 80102724 AD790000 */  sw         $t9, ($t3)
/* DA9018 80102728 AC500004 */  sw         $s0, 4($v0)
/* DA901C 8010272C AC580000 */  sw         $t8, ($v0)
/* DA9020 80102730 8D620000 */  lw         $v0, ($t3)
/* DA9024 80102734 3C198012 */  lui        $t9, %hi(D_8011AD54)
/* DA9028 80102738 244E0008 */  addiu      $t6, $v0, 8
/* DA902C 8010273C AD6E0000 */  sw         $t6, ($t3)
/* DA9030 80102740 AC4F0000 */  sw         $t7, ($v0)
/* DA9034 80102744 8F39AD54 */  lw         $t9, %lo(D_8011AD54)($t9)
/* DA9038 80102748 333800FF */  andi       $t8, $t9, 0xff
/* DA903C 8010274C AC580004 */  sw         $t8, 4($v0)
/* DA9040 80102750 8D620000 */  lw         $v0, ($t3)
.L80102754:
/* DA9044 80102754 3C190600 */  lui        $t9, 0x600
/* DA9048 80102758 3C11FD48 */  lui        $s1, 0xfd48
/* DA904C 8010275C 244E0008 */  addiu      $t6, $v0, 8
/* DA9050 80102760 AD6E0000 */  sw         $t6, ($t3)
/* DA9054 80102764 AC400004 */  sw         $zero, 4($v0)
/* DA9058 80102768 AC520000 */  sw         $s2, ($v0)
/* DA905C 8010276C 8D620000 */  lw         $v0, ($t3)
/* DA9060 80102770 3C0EBA00 */  lui        $t6, 0xba00
/* DA9064 80102774 35CE0E02 */  ori        $t6, $t6, 0xe02
/* DA9068 80102778 244F0008 */  addiu      $t7, $v0, 8
/* DA906C 8010277C AD6F0000 */  sw         $t7, ($t3)
/* DA9070 80102780 AC500004 */  sw         $s0, 4($v0)
/* DA9074 80102784 AC590000 */  sw         $t9, ($v0)
/* DA9078 80102788 8D620000 */  lw         $v0, ($t3)
/* DA907C 8010278C 340F8000 */  ori        $t7, $zero, 0x8000
/* DA9080 80102790 3C108010 */  lui        $s0, 0x8010
/* DA9084 80102794 24580008 */  addiu      $t8, $v0, 8
/* DA9088 80102798 AD780000 */  sw         $t8, ($t3)
/* DA908C 8010279C AC4F0004 */  sw         $t7, 4($v0)
/* DA9090 801027A0 AC4E0000 */  sw         $t6, ($v0)
/* DA9094 801027A4 8D620000 */  lw         $v0, ($t3)
/* DA9098 801027A8 3C0E0050 */  lui        $t6, 0x50
/* DA909C 801027AC 3C18B900 */  lui        $t8, 0xb900
/* DA90A0 801027B0 24590008 */  addiu      $t9, $v0, 8
/* DA90A4 801027B4 AD790000 */  sw         $t9, ($t3)
/* DA90A8 801027B8 3718031D */  ori        $t8, $t8, 0x31d
/* DA90AC 801027BC 35CE4240 */  ori        $t6, $t6, 0x4240
/* DA90B0 801027C0 AC4E0004 */  sw         $t6, 4($v0)
/* DA90B4 801027C4 AC580000 */  sw         $t8, ($v0)
/* DA90B8 801027C8 8D620000 */  lw         $v0, ($t3)
/* DA90BC 801027CC 3C188010 */  lui        $t8, %hi(D_80103440)
/* DA90C0 801027D0 27183440 */  addiu      $t8, $t8, %lo(D_80103440)
/* DA90C4 801027D4 244F0008 */  addiu      $t7, $v0, 8
/* DA90C8 801027D8 AD6F0000 */  sw         $t7, ($t3)
/* DA90CC 801027DC 3C19FD10 */  lui        $t9, 0xfd10
/* DA90D0 801027E0 AC590000 */  sw         $t9, ($v0)
/* DA90D4 801027E4 AC580004 */  sw         $t8, 4($v0)
/* DA90D8 801027E8 8D620000 */  lw         $v0, ($t3)
/* DA90DC 801027EC 3C0FE800 */  lui        $t7, 0xe800
/* DA90E0 801027F0 3C18F500 */  lui        $t8, 0xf500
/* DA90E4 801027F4 244E0008 */  addiu      $t6, $v0, 8
/* DA90E8 801027F8 AD6E0000 */  sw         $t6, ($t3)
/* DA90EC 801027FC AC400004 */  sw         $zero, 4($v0)
/* DA90F0 80102800 AC4F0000 */  sw         $t7, ($v0)
/* DA90F4 80102804 8D620000 */  lw         $v0, ($t3)
/* DA90F8 80102808 3C0E0700 */  lui        $t6, 0x700
/* DA90FC 8010280C 37180100 */  ori        $t8, $t8, 0x100
/* DA9100 80102810 24590008 */  addiu      $t9, $v0, 8
/* DA9104 80102814 AD790000 */  sw         $t9, ($t3)
/* DA9108 80102818 AC4E0004 */  sw         $t6, 4($v0)
/* DA910C 8010281C AC580000 */  sw         $t8, ($v0)
/* DA9110 80102820 8D620000 */  lw         $v0, ($t3)
/* DA9114 80102824 3C0E073F */  lui        $t6, 0x73f
/* DA9118 80102828 35CEC000 */  ori        $t6, $t6, 0xc000
/* DA911C 8010282C 244F0008 */  addiu      $t7, $v0, 8
/* DA9120 80102830 AD6F0000 */  sw         $t7, ($t3)
/* DA9124 80102834 AC400004 */  sw         $zero, 4($v0)
/* DA9128 80102838 AC530000 */  sw         $s3, ($v0)
/* DA912C 8010283C 8D620000 */  lw         $v0, ($t3)
/* DA9130 80102840 3C18F000 */  lui        $t8, 0xf000
/* DA9134 80102844 3631007F */  ori        $s1, $s1, 0x7f
/* DA9138 80102848 24590008 */  addiu      $t9, $v0, 8
/* DA913C 8010284C AD790000 */  sw         $t9, ($t3)
/* DA9140 80102850 AC4E0004 */  sw         $t6, 4($v0)
/* DA9144 80102854 AC580000 */  sw         $t8, ($v0)
/* DA9148 80102858 8D620000 */  lw         $v0, ($t3)
/* DA914C 8010285C 26103640 */  addiu      $s0, $s0, 0x3640
/* DA9150 80102860 3C1FF548 */  lui        $ra, 0xf548
/* DA9154 80102864 244F0008 */  addiu      $t7, $v0, 8
/* DA9158 80102868 AD6F0000 */  sw         $t7, ($t3)
/* DA915C 8010286C AC400004 */  sw         $zero, 4($v0)
/* DA9160 80102870 AC520000 */  sw         $s2, ($v0)
/* DA9164 80102874 8D620000 */  lw         $v0, ($t3)
/* DA9168 80102878 37FF0400 */  ori        $ra, $ra, 0x400
/* DA916C 8010287C 3C0E0700 */  lui        $t6, 0x700
/* DA9170 80102880 24590008 */  addiu      $t9, $v0, 8
/* DA9174 80102884 AD790000 */  sw         $t9, ($t3)
/* DA9178 80102888 AC500004 */  sw         $s0, 4($v0)
/* DA917C 8010288C AC510000 */  sw         $s1, ($v0)
/* DA9180 80102890 8D620000 */  lw         $v0, ($t3)
/* DA9184 80102894 2403000C */  addiu      $v1, $zero, 0xc
/* DA9188 80102898 3C01E400 */  lui        $at, 0xe400
/* DA918C 8010289C 24580008 */  addiu      $t8, $v0, 8
/* DA9190 801028A0 AD780000 */  sw         $t8, ($t3)
/* DA9194 801028A4 AC4E0004 */  sw         $t6, 4($v0)
/* DA9198 801028A8 AC5F0000 */  sw         $ra, ($v0)
/* DA919C 801028AC 8D620000 */  lw         $v0, ($t3)
/* DA91A0 801028B0 3C0E071C */  lui        $t6, 0x71c
/* DA91A4 801028B4 35CE4024 */  ori        $t6, $t6, 0x4024
/* DA91A8 801028B8 244F0008 */  addiu      $t7, $v0, 8
/* DA91AC 801028BC AD6F0000 */  sw         $t7, ($t3)
/* DA91B0 801028C0 AC400004 */  sw         $zero, 4($v0)
/* DA91B4 801028C4 AC530000 */  sw         $s3, ($v0)
/* DA91B8 801028C8 8D620000 */  lw         $v0, ($t3)
/* DA91BC 801028CC 3C18F419 */  lui        $t8, 0xf419
/* DA91C0 801028D0 24590008 */  addiu      $t9, $v0, 8
/* DA91C4 801028D4 AD790000 */  sw         $t9, ($t3)
/* DA91C8 801028D8 AC4E0004 */  sw         $t6, 4($v0)
/* DA91CC 801028DC AC580000 */  sw         $t8, ($v0)
/* DA91D0 801028E0 8D620000 */  lw         $v0, ($t3)
/* DA91D4 801028E4 3C0EF219 */  lui        $t6, 0xf219
/* DA91D8 801028E8 244F0008 */  addiu      $t7, $v0, 8
/* DA91DC 801028EC AD6F0000 */  sw         $t7, ($t3)
/* DA91E0 801028F0 AC400004 */  sw         $zero, 4($v0)
/* DA91E4 801028F4 AC520000 */  sw         $s2, ($v0)
/* DA91E8 801028F8 8D620000 */  lw         $v0, ($t3)
/* DA91EC 801028FC 3C0F001C */  lui        $t7, 0x1c
/* DA91F0 80102900 35EF4024 */  ori        $t7, $t7, 0x4024
/* DA91F4 80102904 24590008 */  addiu      $t9, $v0, 8
/* DA91F8 80102908 AD790000 */  sw         $t9, ($t3)
/* DA91FC 8010290C AC400004 */  sw         $zero, 4($v0)
/* DA9200 80102910 AC5F0000 */  sw         $ra, ($v0)
/* DA9204 80102914 8D620000 */  lw         $v0, ($t3)
/* DA9208 80102918 24580008 */  addiu      $t8, $v0, 8
/* DA920C 8010291C AD780000 */  sw         $t8, ($t3)
/* DA9210 80102920 AC4F0004 */  sw         $t7, 4($v0)
/* DA9214 80102924 AC4E0000 */  sw         $t6, ($v0)
/* DA9218 80102928 8D620000 */  lw         $v0, ($t3)
/* DA921C 8010292C 8FB803E8 */  lw         $t8, 0x3e8($sp)
/* DA9220 80102930 24590008 */  addiu      $t9, $v0, 8
/* DA9224 80102934 270E0089 */  addiu      $t6, $t8, 0x89
/* DA9228 80102938 000E7880 */  sll        $t7, $t6, 2
/* DA922C 8010293C AD790000 */  sw         $t9, ($t3)
/* DA9230 80102940 31F90FFF */  andi       $t9, $t7, 0xfff
/* DA9234 80102944 3C0F8012 */  lui        $t7, %hi(D_8011AD50)
/* DA9238 80102948 81EFAD50 */  lb         $t7, %lo(D_8011AD50)($t7)
/* DA923C 8010294C 0019C300 */  sll        $t8, $t9, 0xc
/* DA9240 80102950 03017025 */  or         $t6, $t8, $at
/* DA9244 80102954 01E30019 */  multu      $t7, $v1
/* DA9248 80102958 3C01E41E */  lui        $at, 0xe41e
/* DA924C 8010295C 34214000 */  ori        $at, $at, 0x4000
/* DA9250 80102960 0000C812 */  mflo       $t9
/* DA9254 80102964 2738007F */  addiu      $t8, $t9, 0x7f
/* DA9258 80102968 00187880 */  sll        $t7, $t8, 2
/* DA925C 8010296C 31F90FFF */  andi       $t9, $t7, 0xfff
/* DA9260 80102970 01D9C025 */  or         $t8, $t6, $t9
/* DA9264 80102974 AC580000 */  sw         $t8, ($v0)
/* DA9268 80102978 8FAF03E8 */  lw         $t7, 0x3e8($sp)
/* DA926C 8010297C 25EE007B */  addiu      $t6, $t7, 0x7b
/* DA9270 80102980 000EC880 */  sll        $t9, $t6, 2
/* DA9274 80102984 3C0E8012 */  lui        $t6, %hi(D_8011AD50)
/* DA9278 80102988 81CEAD50 */  lb         $t6, %lo(D_8011AD50)($t6)
/* DA927C 8010298C 33380FFF */  andi       $t8, $t9, 0xfff
/* DA9280 80102990 00187B00 */  sll        $t7, $t8, 0xc
/* DA9284 80102994 01C30019 */  multu      $t6, $v1
/* DA9288 80102998 0000C812 */  mflo       $t9
/* DA928C 8010299C 27380075 */  addiu      $t8, $t9, 0x75
/* DA9290 801029A0 00187080 */  sll        $t6, $t8, 2
/* DA9294 801029A4 31D90FFF */  andi       $t9, $t6, 0xfff
/* DA9298 801029A8 01F9C025 */  or         $t8, $t7, $t9
/* DA929C 801029AC AC580004 */  sw         $t8, 4($v0)
/* DA92A0 801029B0 8D620000 */  lw         $v0, ($t3)
/* DA92A4 801029B4 3C190C80 */  lui        $t9, 0xc80
/* DA92A8 801029B8 3C0FB400 */  lui        $t7, 0xb400
/* DA92AC 801029BC 244E0008 */  addiu      $t6, $v0, 8
/* DA92B0 801029C0 AD6E0000 */  sw         $t6, ($t3)
/* DA92B4 801029C4 AC590004 */  sw         $t9, 4($v0)
/* DA92B8 801029C8 AC4F0000 */  sw         $t7, ($v0)
/* DA92BC 801029CC 8D620000 */  lw         $v0, ($t3)
/* DA92C0 801029D0 3C0F0400 */  lui        $t7, 0x400
/* DA92C4 801029D4 35EF0400 */  ori        $t7, $t7, 0x400
/* DA92C8 801029D8 24580008 */  addiu      $t8, $v0, 8
/* DA92CC 801029DC AD780000 */  sw         $t8, ($t3)
/* DA92D0 801029E0 3C0EB300 */  lui        $t6, 0xb300
/* DA92D4 801029E4 AC4E0000 */  sw         $t6, ($v0)
/* DA92D8 801029E8 AC4F0004 */  sw         $t7, 4($v0)
/* DA92DC 801029EC 8D620000 */  lw         $v0, ($t3)
/* DA92E0 801029F0 3C0EF548 */  lui        $t6, 0xf548
/* DA92E4 801029F4 35CE0200 */  ori        $t6, $t6, 0x200
/* DA92E8 801029F8 24590008 */  addiu      $t9, $v0, 8
/* DA92EC 801029FC AD790000 */  sw         $t9, ($t3)
/* DA92F0 80102A00 AC500004 */  sw         $s0, 4($v0)
/* DA92F4 80102A04 AC510000 */  sw         $s1, ($v0)
/* DA92F8 80102A08 8D620000 */  lw         $v0, ($t3)
/* DA92FC 80102A0C 3C0F0700 */  lui        $t7, 0x700
/* DA9300 80102A10 24580008 */  addiu      $t8, $v0, 8
/* DA9304 80102A14 AD780000 */  sw         $t8, ($t3)
/* DA9308 80102A18 AC4F0004 */  sw         $t7, 4($v0)
/* DA930C 80102A1C AC4E0000 */  sw         $t6, ($v0)
/* DA9310 80102A20 8D620000 */  lw         $v0, ($t3)
/* DA9314 80102A24 3C0EF40C */  lui        $t6, 0xf40c
/* DA9318 80102A28 3C0F070E */  lui        $t7, 0x70e
/* DA931C 80102A2C 24590008 */  addiu      $t9, $v0, 8
/* DA9320 80102A30 AD790000 */  sw         $t9, ($t3)
/* DA9324 80102A34 AC400004 */  sw         $zero, 4($v0)
/* DA9328 80102A38 AC530000 */  sw         $s3, ($v0)
/* DA932C 80102A3C 8D620000 */  lw         $v0, ($t3)
/* DA9330 80102A40 35EF4018 */  ori        $t7, $t7, 0x4018
/* DA9334 80102A44 35CEC000 */  ori        $t6, $t6, 0xc000
/* DA9338 80102A48 24580008 */  addiu      $t8, $v0, 8
/* DA933C 80102A4C AD780000 */  sw         $t8, ($t3)
/* DA9340 80102A50 AC4F0004 */  sw         $t7, 4($v0)
/* DA9344 80102A54 AC4E0000 */  sw         $t6, ($v0)
/* DA9348 80102A58 8D620000 */  lw         $v0, ($t3)
/* DA934C 80102A5C 3C0EF548 */  lui        $t6, 0xf548
/* DA9350 80102A60 35CE0200 */  ori        $t6, $t6, 0x200
/* DA9354 80102A64 24590008 */  addiu      $t9, $v0, 8
/* DA9358 80102A68 AD790000 */  sw         $t9, ($t3)
/* DA935C 80102A6C AC400004 */  sw         $zero, 4($v0)
/* DA9360 80102A70 AC520000 */  sw         $s2, ($v0)
/* DA9364 80102A74 8D620000 */  lw         $v0, ($t3)
/* DA9368 80102A78 3C19F20C */  lui        $t9, 0xf20c
/* DA936C 80102A7C 3739C000 */  ori        $t9, $t9, 0xc000
/* DA9370 80102A80 24580008 */  addiu      $t8, $v0, 8
/* DA9374 80102A84 AD780000 */  sw         $t8, ($t3)
/* DA9378 80102A88 AC400004 */  sw         $zero, 4($v0)
/* DA937C 80102A8C AC4E0000 */  sw         $t6, ($v0)
/* DA9380 80102A90 8D620000 */  lw         $v0, ($t3)
/* DA9384 80102A94 3C18000E */  lui        $t8, 0xe
/* DA9388 80102A98 37184018 */  ori        $t8, $t8, 0x4018
/* DA938C 80102A9C 244F0008 */  addiu      $t7, $v0, 8
/* DA9390 80102AA0 AD6F0000 */  sw         $t7, ($t3)
/* DA9394 80102AA4 AC580004 */  sw         $t8, 4($v0)
/* DA9398 80102AA8 AC590000 */  sw         $t9, ($v0)
/* DA939C 80102AAC 8D620000 */  lw         $v0, ($t3)
/* DA93A0 80102AB0 3C0F8012 */  lui        $t7, %hi(D_8011AD50)
/* DA93A4 80102AB4 244E0008 */  addiu      $t6, $v0, 8
/* DA93A8 80102AB8 AD6E0000 */  sw         $t6, ($t3)
/* DA93AC 80102ABC 81EFAD50 */  lb         $t7, %lo(D_8011AD50)($t7)
/* DA93B0 80102AC0 01E30019 */  multu      $t7, $v1
/* DA93B4 80102AC4 0000C812 */  mflo       $t9
/* DA93B8 80102AC8 2738007E */  addiu      $t8, $t9, 0x7e
/* DA93BC 80102ACC 00187080 */  sll        $t6, $t8, 2
/* DA93C0 80102AD0 31CF0FFF */  andi       $t7, $t6, 0xfff
/* DA93C4 80102AD4 01E1C825 */  or         $t9, $t7, $at
/* DA93C8 80102AD8 3C188012 */  lui        $t8, %hi(D_8011AD50)
/* DA93CC 80102ADC AC590000 */  sw         $t9, ($v0)
/* DA93D0 80102AE0 8318AD50 */  lb         $t8, %lo(D_8011AD50)($t8)
/* DA93D4 80102AE4 3C01001C */  lui        $at, 0x1c
/* DA93D8 80102AE8 34218000 */  ori        $at, $at, 0x8000
/* DA93DC 80102AEC 03030019 */  multu      $t8, $v1
/* DA93E0 80102AF0 00007012 */  mflo       $t6
/* DA93E4 80102AF4 25CF0077 */  addiu      $t7, $t6, 0x77
/* DA93E8 80102AF8 000FC880 */  sll        $t9, $t7, 2
/* DA93EC 80102AFC 33380FFF */  andi       $t8, $t9, 0xfff
/* DA93F0 80102B00 03017025 */  or         $t6, $t8, $at
/* DA93F4 80102B04 AC4E0004 */  sw         $t6, 4($v0)
/* DA93F8 80102B08 8D7F0000 */  lw         $ra, ($t3)
/* DA93FC 80102B0C 3C19B400 */  lui        $t9, 0xb400
/* DA9400 80102B10 3C180660 */  lui        $t8, 0x660
/* DA9404 80102B14 27EF0008 */  addiu      $t7, $ra, 8
/* DA9408 80102B18 AD6F0000 */  sw         $t7, ($t3)
/* DA940C 80102B1C AFF90000 */  sw         $t9, ($ra)
/* DA9410 80102B20 AFF80004 */  sw         $t8, 4($ra)
/* DA9414 80102B24 8D620000 */  lw         $v0, ($t3)
/* DA9418 80102B28 3C190400 */  lui        $t9, 0x400
/* DA941C 80102B2C 37390400 */  ori        $t9, $t9, 0x400
/* DA9420 80102B30 244E0008 */  addiu      $t6, $v0, 8
/* DA9424 80102B34 AD6E0000 */  sw         $t6, ($t3)
/* DA9428 80102B38 3C0FB300 */  lui        $t7, 0xb300
/* DA942C 80102B3C AC4F0000 */  sw         $t7, ($v0)
/* DA9430 80102B40 AC590004 */  sw         $t9, 4($v0)
/* DA9434 80102B44 8D620000 */  lw         $v0, ($t3)
/* DA9438 80102B48 3C1FF548 */  lui        $ra, 0xf548
/* DA943C 80102B4C 37FF0400 */  ori        $ra, $ra, 0x400
/* DA9440 80102B50 24580008 */  addiu      $t8, $v0, 8
/* DA9444 80102B54 AD780000 */  sw         $t8, ($t3)
/* DA9448 80102B58 AC500004 */  sw         $s0, 4($v0)
/* DA944C 80102B5C AC510000 */  sw         $s1, ($v0)
/* DA9450 80102B60 8D620000 */  lw         $v0, ($t3)
/* DA9454 80102B64 3C0F0700 */  lui        $t7, 0x700
/* DA9458 80102B68 3C01E400 */  lui        $at, 0xe400
/* DA945C 80102B6C 244E0008 */  addiu      $t6, $v0, 8
/* DA9460 80102B70 AD6E0000 */  sw         $t6, ($t3)
/* DA9464 80102B74 AC4F0004 */  sw         $t7, 4($v0)
/* DA9468 80102B78 AC5F0000 */  sw         $ra, ($v0)
/* DA946C 80102B7C 8D620000 */  lw         $v0, ($t3)
/* DA9470 80102B80 3C0F0715 */  lui        $t7, 0x715
/* DA9474 80102B84 35EF4034 */  ori        $t7, $t7, 0x4034
/* DA9478 80102B88 24590008 */  addiu      $t9, $v0, 8
/* DA947C 80102B8C AD790000 */  sw         $t9, ($t3)
/* DA9480 80102B90 AC400004 */  sw         $zero, 4($v0)
/* DA9484 80102B94 AC530000 */  sw         $s3, ($v0)
/* DA9488 80102B98 8D620000 */  lw         $v0, ($t3)
/* DA948C 80102B9C 3C0EF412 */  lui        $t6, 0xf412
/* DA9490 80102BA0 24580008 */  addiu      $t8, $v0, 8
/* DA9494 80102BA4 AD780000 */  sw         $t8, ($t3)
/* DA9498 80102BA8 AC4F0004 */  sw         $t7, 4($v0)
/* DA949C 80102BAC AC4E0000 */  sw         $t6, ($v0)
/* DA94A0 80102BB0 8D620000 */  lw         $v0, ($t3)
/* DA94A4 80102BB4 3C0FF212 */  lui        $t7, 0xf212
/* DA94A8 80102BB8 24590008 */  addiu      $t9, $v0, 8
/* DA94AC 80102BBC AD790000 */  sw         $t9, ($t3)
/* DA94B0 80102BC0 AC400004 */  sw         $zero, 4($v0)
/* DA94B4 80102BC4 AC520000 */  sw         $s2, ($v0)
/* DA94B8 80102BC8 8D620000 */  lw         $v0, ($t3)
/* DA94BC 80102BCC 3C190015 */  lui        $t9, 0x15
/* DA94C0 80102BD0 37394034 */  ori        $t9, $t9, 0x4034
/* DA94C4 80102BD4 24580008 */  addiu      $t8, $v0, 8
/* DA94C8 80102BD8 AD780000 */  sw         $t8, ($t3)
/* DA94CC 80102BDC AC400004 */  sw         $zero, 4($v0)
/* DA94D0 80102BE0 AC5F0000 */  sw         $ra, ($v0)
/* DA94D4 80102BE4 8D620000 */  lw         $v0, ($t3)
/* DA94D8 80102BE8 244E0008 */  addiu      $t6, $v0, 8
/* DA94DC 80102BEC AD6E0000 */  sw         $t6, ($t3)
/* DA94E0 80102BF0 AC590004 */  sw         $t9, 4($v0)
/* DA94E4 80102BF4 AC4F0000 */  sw         $t7, ($v0)
/* DA94E8 80102BF8 8D620000 */  lw         $v0, ($t3)
/* DA94EC 80102BFC 8FAE03E8 */  lw         $t6, 0x3e8($sp)
/* DA94F0 80102C00 24580008 */  addiu      $t8, $v0, 8
/* DA94F4 80102C04 25CF0088 */  addiu      $t7, $t6, 0x88
/* DA94F8 80102C08 000FC880 */  sll        $t9, $t7, 2
/* DA94FC 80102C0C AD780000 */  sw         $t8, ($t3)
/* DA9500 80102C10 33380FFF */  andi       $t8, $t9, 0xfff
/* DA9504 80102C14 3C198012 */  lui        $t9, %hi(D_8011AD50)
/* DA9508 80102C18 8339AD50 */  lb         $t9, %lo(D_8011AD50)($t9)
/* DA950C 80102C1C 00187300 */  sll        $t6, $t8, 0xc
/* DA9510 80102C20 01C17825 */  or         $t7, $t6, $at
/* DA9514 80102C24 03230019 */  multu      $t9, $v1
/* DA9518 80102C28 3C01E41E */  lui        $at, 0xe41e
/* DA951C 80102C2C 34214000 */  ori        $at, $at, 0x4000
/* DA9520 80102C30 0000C012 */  mflo       $t8
/* DA9524 80102C34 270E0081 */  addiu      $t6, $t8, 0x81
/* DA9528 80102C38 000EC880 */  sll        $t9, $t6, 2
/* DA952C 80102C3C 33380FFF */  andi       $t8, $t9, 0xfff
/* DA9530 80102C40 01F87025 */  or         $t6, $t7, $t8
/* DA9534 80102C44 AC4E0000 */  sw         $t6, ($v0)
/* DA9538 80102C48 8FB903E8 */  lw         $t9, 0x3e8($sp)
/* DA953C 80102C4C 272F007A */  addiu      $t7, $t9, 0x7a
/* DA9540 80102C50 000FC080 */  sll        $t8, $t7, 2
/* DA9544 80102C54 3C0F8012 */  lui        $t7, %hi(D_8011AD50)
/* DA9548 80102C58 81EFAD50 */  lb         $t7, %lo(D_8011AD50)($t7)
/* DA954C 80102C5C 330E0FFF */  andi       $t6, $t8, 0xfff
/* DA9550 80102C60 000ECB00 */  sll        $t9, $t6, 0xc
/* DA9554 80102C64 01E30019 */  multu      $t7, $v1
/* DA9558 80102C68 0000C012 */  mflo       $t8
/* DA955C 80102C6C 270E0073 */  addiu      $t6, $t8, 0x73
/* DA9560 80102C70 000E7880 */  sll        $t7, $t6, 2
/* DA9564 80102C74 31F80FFF */  andi       $t8, $t7, 0xfff
/* DA9568 80102C78 03387025 */  or         $t6, $t9, $t8
/* DA956C 80102C7C AC4E0004 */  sw         $t6, 4($v0)
/* DA9570 80102C80 8D620000 */  lw         $v0, ($t3)
/* DA9574 80102C84 3C180900 */  lui        $t8, 0x900
/* DA9578 80102C88 3C19B400 */  lui        $t9, 0xb400
/* DA957C 80102C8C 244F0008 */  addiu      $t7, $v0, 8
/* DA9580 80102C90 AD6F0000 */  sw         $t7, ($t3)
/* DA9584 80102C94 AC580004 */  sw         $t8, 4($v0)
/* DA9588 80102C98 AC590000 */  sw         $t9, ($v0)
/* DA958C 80102C9C 8D620000 */  lw         $v0, ($t3)
/* DA9590 80102CA0 3C190400 */  lui        $t9, 0x400
/* DA9594 80102CA4 37390400 */  ori        $t9, $t9, 0x400
/* DA9598 80102CA8 244E0008 */  addiu      $t6, $v0, 8
/* DA959C 80102CAC AD6E0000 */  sw         $t6, ($t3)
/* DA95A0 80102CB0 3C0FB300 */  lui        $t7, 0xb300
/* DA95A4 80102CB4 AC4F0000 */  sw         $t7, ($v0)
/* DA95A8 80102CB8 AC590004 */  sw         $t9, 4($v0)
/* DA95AC 80102CBC 8D620000 */  lw         $v0, ($t3)
/* DA95B0 80102CC0 3C0FF548 */  lui        $t7, 0xf548
/* DA95B4 80102CC4 35EF0200 */  ori        $t7, $t7, 0x200
/* DA95B8 80102CC8 24580008 */  addiu      $t8, $v0, 8
/* DA95BC 80102CCC AD780000 */  sw         $t8, ($t3)
/* DA95C0 80102CD0 AC500004 */  sw         $s0, 4($v0)
/* DA95C4 80102CD4 AC510000 */  sw         $s1, ($v0)
/* DA95C8 80102CD8 8D620000 */  lw         $v0, ($t3)
/* DA95CC 80102CDC 3C190700 */  lui        $t9, 0x700
/* DA95D0 80102CE0 244E0008 */  addiu      $t6, $v0, 8
/* DA95D4 80102CE4 AD6E0000 */  sw         $t6, ($t3)
/* DA95D8 80102CE8 AC590004 */  sw         $t9, 4($v0)
/* DA95DC 80102CEC AC4F0000 */  sw         $t7, ($v0)
/* DA95E0 80102CF0 8D620000 */  lw         $v0, ($t3)
/* DA95E4 80102CF4 3C0FF405 */  lui        $t7, 0xf405
/* DA95E8 80102CF8 3C190707 */  lui        $t9, 0x707
/* DA95EC 80102CFC 24580008 */  addiu      $t8, $v0, 8
/* DA95F0 80102D00 AD780000 */  sw         $t8, ($t3)
/* DA95F4 80102D04 AC400004 */  sw         $zero, 4($v0)
/* DA95F8 80102D08 AC530000 */  sw         $s3, ($v0)
/* DA95FC 80102D0C 8D620000 */  lw         $v0, ($t3)
/* DA9600 80102D10 37390018 */  ori        $t9, $t9, 0x18
/* DA9604 80102D14 35EF8000 */  ori        $t7, $t7, 0x8000
/* DA9608 80102D18 244E0008 */  addiu      $t6, $v0, 8
/* DA960C 80102D1C AD6E0000 */  sw         $t6, ($t3)
/* DA9610 80102D20 AC590004 */  sw         $t9, 4($v0)
/* DA9614 80102D24 AC4F0000 */  sw         $t7, ($v0)
/* DA9618 80102D28 8D620000 */  lw         $v0, ($t3)
/* DA961C 80102D2C 3C0FF548 */  lui        $t7, 0xf548
/* DA9620 80102D30 35EF0200 */  ori        $t7, $t7, 0x200
/* DA9624 80102D34 24580008 */  addiu      $t8, $v0, 8
/* DA9628 80102D38 AD780000 */  sw         $t8, ($t3)
/* DA962C 80102D3C AC400004 */  sw         $zero, 4($v0)
/* DA9630 80102D40 AC520000 */  sw         $s2, ($v0)
/* DA9634 80102D44 8D620000 */  lw         $v0, ($t3)
/* DA9638 80102D48 3C18F205 */  lui        $t8, 0xf205
/* DA963C 80102D4C 37188000 */  ori        $t8, $t8, 0x8000
/* DA9640 80102D50 244E0008 */  addiu      $t6, $v0, 8
/* DA9644 80102D54 AD6E0000 */  sw         $t6, ($t3)
/* DA9648 80102D58 AC400004 */  sw         $zero, 4($v0)
/* DA964C 80102D5C AC4F0000 */  sw         $t7, ($v0)
/* DA9650 80102D60 8D620000 */  lw         $v0, ($t3)
/* DA9654 80102D64 3C0E0007 */  lui        $t6, 7
/* DA9658 80102D68 35CE0018 */  ori        $t6, $t6, 0x18
/* DA965C 80102D6C 24590008 */  addiu      $t9, $v0, 8
/* DA9660 80102D70 AD790000 */  sw         $t9, ($t3)
/* DA9664 80102D74 AC4E0004 */  sw         $t6, 4($v0)
/* DA9668 80102D78 AC580000 */  sw         $t8, ($v0)
/* DA966C 80102D7C 8D620000 */  lw         $v0, ($t3)
/* DA9670 80102D80 3C198012 */  lui        $t9, %hi(D_8011AD50)
/* DA9674 80102D84 244F0008 */  addiu      $t7, $v0, 8
/* DA9678 80102D88 AD6F0000 */  sw         $t7, ($t3)
/* DA967C 80102D8C 8339AD50 */  lb         $t9, %lo(D_8011AD50)($t9)
/* DA9680 80102D90 03230019 */  multu      $t9, $v1
/* DA9684 80102D94 0000C012 */  mflo       $t8
/* DA9688 80102D98 270E007C */  addiu      $t6, $t8, 0x7c
/* DA968C 80102D9C 000E7880 */  sll        $t7, $t6, 2
/* DA9690 80102DA0 31F90FFF */  andi       $t9, $t7, 0xfff
/* DA9694 80102DA4 0321C025 */  or         $t8, $t9, $at
/* DA9698 80102DA8 3C0E8012 */  lui        $t6, %hi(D_8011AD50)
/* DA969C 80102DAC AC580000 */  sw         $t8, ($v0)
/* DA96A0 80102DB0 81CEAD50 */  lb         $t6, %lo(D_8011AD50)($t6)
/* DA96A4 80102DB4 3C01001C */  lui        $at, 0x1c
/* DA96A8 80102DB8 34218000 */  ori        $at, $at, 0x8000
/* DA96AC 80102DBC 01C30019 */  multu      $t6, $v1
/* DA96B0 80102DC0 00007812 */  mflo       $t7
/* DA96B4 80102DC4 25F90075 */  addiu      $t9, $t7, 0x75
/* DA96B8 80102DC8 0019C080 */  sll        $t8, $t9, 2
/* DA96BC 80102DCC 330E0FFF */  andi       $t6, $t8, 0xfff
/* DA96C0 80102DD0 01C17825 */  or         $t7, $t6, $at
/* DA96C4 80102DD4 AC4F0004 */  sw         $t7, 4($v0)
/* DA96C8 80102DD8 8D620000 */  lw         $v0, ($t3)
/* DA96CC 80102DDC 3C0E02C0 */  lui        $t6, 0x2c0
/* DA96D0 80102DE0 3C18B400 */  lui        $t8, 0xb400
/* DA96D4 80102DE4 24590008 */  addiu      $t9, $v0, 8
/* DA96D8 80102DE8 AD790000 */  sw         $t9, ($t3)
/* DA96DC 80102DEC AC4E0004 */  sw         $t6, 4($v0)
/* DA96E0 80102DF0 AC580000 */  sw         $t8, ($v0)
/* DA96E4 80102DF4 8D620000 */  lw         $v0, ($t3)
/* DA96E8 80102DF8 3C180400 */  lui        $t8, 0x400
/* DA96EC 80102DFC 37180400 */  ori        $t8, $t8, 0x400
/* DA96F0 80102E00 244F0008 */  addiu      $t7, $v0, 8
/* DA96F4 80102E04 AD6F0000 */  sw         $t7, ($t3)
/* DA96F8 80102E08 3C19B300 */  lui        $t9, 0xb300
/* DA96FC 80102E0C AC590000 */  sw         $t9, ($v0)
/* DA9700 80102E10 AC580004 */  sw         $t8, 4($v0)
.L80102E14:
/* DA9704 80102E14 8FBF002C */  lw         $ra, 0x2c($sp)
.L80102E18:
/* DA9708 80102E18 8FB0001C */  lw         $s0, 0x1c($sp)
/* DA970C 80102E1C 8FB10020 */  lw         $s1, 0x20($sp)
/* DA9710 80102E20 8FB20024 */  lw         $s2, 0x24($sp)
/* DA9714 80102E24 8FB30028 */  lw         $s3, 0x28($sp)
/* DA9718 80102E28 03E00008 */  jr         $ra
/* DA971C 80102E2C 27BD03F0 */   addiu     $sp, $sp, 0x3f0
