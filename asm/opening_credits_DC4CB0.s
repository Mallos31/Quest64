.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80103690
/* DC4CB0 80103690 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* DC4CB4 80103694 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC4CB8 80103698 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC4CBC 8010369C 8C620000 */  lw         $v0, ($v1)
/* DC4CC0 801036A0 AFB5001C */  sw         $s5, 0x1c($sp)
/* DC4CC4 801036A4 AFBF002C */  sw         $ra, 0x2c($sp)
/* DC4CC8 801036A8 244E0008 */  addiu      $t6, $v0, 8
/* DC4CCC 801036AC AFBE0028 */  sw         $fp, 0x28($sp)
/* DC4CD0 801036B0 AFB70024 */  sw         $s7, 0x24($sp)
/* DC4CD4 801036B4 AFB60020 */  sw         $s6, 0x20($sp)
/* DC4CD8 801036B8 AFB40018 */  sw         $s4, 0x18($sp)
/* DC4CDC 801036BC AFB30014 */  sw         $s3, 0x14($sp)
/* DC4CE0 801036C0 AFB20010 */  sw         $s2, 0x10($sp)
/* DC4CE4 801036C4 AFB1000C */  sw         $s1, 0xc($sp)
/* DC4CE8 801036C8 AFB00008 */  sw         $s0, 8($sp)
/* DC4CEC 801036CC AC6E0000 */  sw         $t6, ($v1)
/* DC4CF0 801036D0 3C15E700 */  lui        $s5, 0xe700
/* DC4CF4 801036D4 AC550000 */  sw         $s5, ($v0)
/* DC4CF8 801036D8 AC400004 */  sw         $zero, 4($v0)
/* DC4CFC 801036DC 8C620000 */  lw         $v0, ($v1)
/* DC4D00 801036E0 3C18BA00 */  lui        $t8, 0xba00
/* DC4D04 801036E4 37180E02 */  ori        $t8, $t8, 0xe02
/* DC4D08 801036E8 244F0008 */  addiu      $t7, $v0, 8
/* DC4D0C 801036EC AC6F0000 */  sw         $t7, ($v1)
/* DC4D10 801036F0 34198000 */  ori        $t9, $zero, 0x8000
/* DC4D14 801036F4 AC590004 */  sw         $t9, 4($v0)
/* DC4D18 801036F8 AC580000 */  sw         $t8, ($v0)
/* DC4D1C 801036FC 8C620000 */  lw         $v0, ($v1)
/* DC4D20 80103700 3C188016 */  lui        $t8, %hi(D_80160048)
/* DC4D24 80103704 27180048 */  addiu      $t8, $t8, %lo(D_80160048)
/* DC4D28 80103708 244E0008 */  addiu      $t6, $v0, 8
/* DC4D2C 8010370C AC6E0000 */  sw         $t6, ($v1)
/* DC4D30 80103710 3C0FFD10 */  lui        $t7, 0xfd10
/* DC4D34 80103714 AC4F0000 */  sw         $t7, ($v0)
/* DC4D38 80103718 AC580004 */  sw         $t8, 4($v0)
/* DC4D3C 8010371C 8C620000 */  lw         $v0, ($v1)
/* DC4D40 80103720 3C0EE800 */  lui        $t6, 0xe800
/* DC4D44 80103724 3C18F500 */  lui        $t8, 0xf500
/* DC4D48 80103728 24590008 */  addiu      $t9, $v0, 8
/* DC4D4C 8010372C AC790000 */  sw         $t9, ($v1)
/* DC4D50 80103730 AC400004 */  sw         $zero, 4($v0)
/* DC4D54 80103734 AC4E0000 */  sw         $t6, ($v0)
/* DC4D58 80103738 8C620000 */  lw         $v0, ($v1)
/* DC4D5C 8010373C 3C160700 */  lui        $s6, 0x700
/* DC4D60 80103740 37180100 */  ori        $t8, $t8, 0x100
/* DC4D64 80103744 244F0008 */  addiu      $t7, $v0, 8
/* DC4D68 80103748 AC6F0000 */  sw         $t7, ($v1)
/* DC4D6C 8010374C AC560004 */  sw         $s6, 4($v0)
/* DC4D70 80103750 AC580000 */  sw         $t8, ($v0)
/* DC4D74 80103754 8C620000 */  lw         $v0, ($v1)
/* DC4D78 80103758 3C17E600 */  lui        $s7, 0xe600
/* DC4D7C 8010375C 3C180703 */  lui        $t8, 0x703
/* DC4D80 80103760 24590008 */  addiu      $t9, $v0, 8
/* DC4D84 80103764 AC790000 */  sw         $t9, ($v1)
/* DC4D88 80103768 AC400004 */  sw         $zero, 4($v0)
/* DC4D8C 8010376C AC570000 */  sw         $s7, ($v0)
/* DC4D90 80103770 8C620000 */  lw         $v0, ($v1)
/* DC4D94 80103774 3718C000 */  ori        $t8, $t8, 0xc000
/* DC4D98 80103778 3C0FF000 */  lui        $t7, 0xf000
/* DC4D9C 8010377C 244E0008 */  addiu      $t6, $v0, 8
/* DC4DA0 80103780 AC6E0000 */  sw         $t6, ($v1)
/* DC4DA4 80103784 AC580004 */  sw         $t8, 4($v0)
/* DC4DA8 80103788 AC4F0000 */  sw         $t7, ($v0)
/* DC4DAC 8010378C 8C620000 */  lw         $v0, ($v1)
/* DC4DB0 80103790 3C148016 */  lui        $s4, 0x8016
/* DC4DB4 80103794 3C1EFD48 */  lui        $fp, 0xfd48
/* DC4DB8 80103798 24590008 */  addiu      $t9, $v0, 8
/* DC4DBC 8010379C AC790000 */  sw         $t9, ($v1)
/* DC4DC0 801037A0 3C1FF548 */  lui        $ra, 0xf548
/* DC4DC4 801037A4 37FF1A00 */  ori        $ra, $ra, 0x1a00
/* DC4DC8 801037A8 37DE0067 */  ori        $fp, $fp, 0x67
/* DC4DCC 801037AC 2694F8F0 */  addiu      $s4, $s4, -0x710
/* DC4DD0 801037B0 24100078 */  addiu      $s0, $zero, 0x78
/* DC4DD4 801037B4 24110008 */  addiu      $s1, $zero, 8
/* DC4DD8 801037B8 2412006F */  addiu      $s2, $zero, 0x6f
/* DC4DDC 801037BC 00006825 */  or         $t5, $zero, $zero
/* DC4DE0 801037C0 AC400004 */  sw         $zero, 4($v0)
/* DC4DE4 801037C4 AC550000 */  sw         $s5, ($v0)
.L801037C8:
/* DC4DE8 801037C8 8C620000 */  lw         $v0, ($v1)
/* DC4DEC 801037CC 000D4080 */  sll        $t0, $t5, 2
/* DC4DF0 801037D0 3C01F400 */  lui        $at, 0xf400
/* DC4DF4 801037D4 244E0008 */  addiu      $t6, $v0, 8
/* DC4DF8 801037D8 AC6E0000 */  sw         $t6, ($v1)
/* DC4DFC 801037DC AC540004 */  sw         $s4, 4($v0)
/* DC4E00 801037E0 AC5E0000 */  sw         $fp, ($v0)
/* DC4E04 801037E4 8C620000 */  lw         $v0, ($v1)
/* DC4E08 801037E8 310E0FFF */  andi       $t6, $t0, 0xfff
/* DC4E0C 801037EC 00114880 */  sll        $t1, $s1, 2
/* DC4E10 801037F0 244F0008 */  addiu      $t7, $v0, 8
/* DC4E14 801037F4 AC6F0000 */  sw         $t7, ($v1)
/* DC4E18 801037F8 AC560004 */  sw         $s6, 4($v0)
/* DC4E1C 801037FC AC5F0000 */  sw         $ra, ($v0)
/* DC4E20 80103800 8C620000 */  lw         $v0, ($v1)
/* DC4E24 80103804 01C17825 */  or         $t7, $t6, $at
/* DC4E28 80103808 3C010719 */  lui        $at, 0x719
/* DC4E2C 8010380C 24580008 */  addiu      $t8, $v0, 8
/* DC4E30 80103810 AC780000 */  sw         $t8, ($v1)
/* DC4E34 80103814 AC400004 */  sw         $zero, 4($v0)
/* DC4E38 80103818 AC570000 */  sw         $s7, ($v0)
/* DC4E3C 8010381C 8C620000 */  lw         $v0, ($v1)
/* DC4E40 80103820 31380FFF */  andi       $t8, $t1, 0xfff
/* DC4E44 80103824 01C04025 */  or         $t0, $t6, $zero
/* DC4E48 80103828 24590008 */  addiu      $t9, $v0, 8
/* DC4E4C 8010382C AC790000 */  sw         $t9, ($v1)
/* DC4E50 80103830 0301C825 */  or         $t9, $t8, $at
/* DC4E54 80103834 AC590004 */  sw         $t9, 4($v0)
/* DC4E58 80103838 AC4F0000 */  sw         $t7, ($v0)
/* DC4E5C 8010383C 8C620000 */  lw         $v0, ($v1)
/* DC4E60 80103840 03004825 */  or         $t1, $t8, $zero
/* DC4E64 80103844 3C18F540 */  lui        $t8, 0xf540
/* DC4E68 80103848 244E0008 */  addiu      $t6, $v0, 8
/* DC4E6C 8010384C AC6E0000 */  sw         $t6, ($v1)
/* DC4E70 80103850 AC400004 */  sw         $zero, 4($v0)
/* DC4E74 80103854 AC550000 */  sw         $s5, ($v0)
/* DC4E78 80103858 8C620000 */  lw         $v0, ($v1)
/* DC4E7C 8010385C 37181A00 */  ori        $t8, $t8, 0x1a00
/* DC4E80 80103860 3C01F200 */  lui        $at, 0xf200
/* DC4E84 80103864 244F0008 */  addiu      $t7, $v0, 8
/* DC4E88 80103868 AC6F0000 */  sw         $t7, ($v1)
/* DC4E8C 8010386C AC400004 */  sw         $zero, 4($v0)
/* DC4E90 80103870 AC580000 */  sw         $t8, ($v0)
/* DC4E94 80103874 8C620000 */  lw         $v0, ($v1)
/* DC4E98 80103878 01017025 */  or         $t6, $t0, $at
/* DC4E9C 8010387C 3C010032 */  lui        $at, 0x32
/* DC4EA0 80103880 24590008 */  addiu      $t9, $v0, 8
/* DC4EA4 80103884 AC790000 */  sw         $t9, ($v1)
/* DC4EA8 80103888 01217825 */  or         $t7, $t1, $at
/* DC4EAC 8010388C AC4F0004 */  sw         $t7, 4($v0)
/* DC4EB0 80103890 AC4E0000 */  sw         $t6, ($v0)
/* DC4EB4 80103894 8C620000 */  lw         $v0, ($v1)
/* DC4EB8 80103898 3C01E441 */  lui        $at, 0xe441
/* DC4EBC 8010389C 0010C880 */  sll        $t9, $s0, 2
/* DC4EC0 801038A0 24580008 */  addiu      $t8, $v0, 8
/* DC4EC4 801038A4 AC780000 */  sw         $t8, ($v1)
/* DC4EC8 801038A8 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC4ECC 801038AC 34214000 */  ori        $at, $at, 0x4000
/* DC4ED0 801038B0 01C17825 */  or         $t7, $t6, $at
/* DC4ED4 801038B4 0012C080 */  sll        $t8, $s2, 2
/* DC4ED8 801038B8 33190FFF */  andi       $t9, $t8, 0xfff
/* DC4EDC 801038BC 3C01000F */  lui        $at, 0xf
/* DC4EE0 801038C0 03217025 */  or         $t6, $t9, $at
/* DC4EE4 801038C4 AC4E0004 */  sw         $t6, 4($v0)
/* DC4EE8 801038C8 AC4F0000 */  sw         $t7, ($v0)
/* DC4EEC 801038CC 8C620000 */  lw         $v0, ($v1)
/* DC4EF0 801038D0 000DC940 */  sll        $t9, $t5, 5
/* DC4EF4 801038D4 332EFFFF */  andi       $t6, $t9, 0xffff
/* DC4EF8 801038D8 244F0008 */  addiu      $t7, $v0, 8
/* DC4EFC 801038DC AC6F0000 */  sw         $t7, ($v1)
/* DC4F00 801038E0 3C18B400 */  lui        $t8, 0xb400
/* DC4F04 801038E4 AC580000 */  sw         $t8, ($v0)
/* DC4F08 801038E8 AC4E0004 */  sw         $t6, 4($v0)
/* DC4F0C 801038EC 8C620000 */  lw         $v0, ($v1)
/* DC4F10 801038F0 3C190400 */  lui        $t9, 0x400
/* DC4F14 801038F4 2401008A */  addiu      $at, $zero, 0x8a
/* DC4F18 801038F8 244F0008 */  addiu      $t7, $v0, 8
/* DC4F1C 801038FC 26100009 */  addiu      $s0, $s0, 9
/* DC4F20 80103900 AC6F0000 */  sw         $t7, ($v1)
/* DC4F24 80103904 37390400 */  ori        $t9, $t9, 0x400
/* DC4F28 80103908 3C18B300 */  lui        $t8, 0xb300
/* DC4F2C 8010390C 25AD0009 */  addiu      $t5, $t5, 9
/* DC4F30 80103910 26520009 */  addiu      $s2, $s2, 9
/* DC4F34 80103914 26310009 */  addiu      $s1, $s1, 9
/* DC4F38 80103918 AC580000 */  sw         $t8, ($v0)
/* DC4F3C 8010391C 1601FFAA */  bne        $s0, $at, .L801037C8
/* DC4F40 80103920 AC590004 */   sw        $t9, 4($v0)
/* DC4F44 80103924 8FBF002C */  lw         $ra, 0x2c($sp)
/* DC4F48 80103928 8FB00008 */  lw         $s0, 8($sp)
/* DC4F4C 8010392C 8FB1000C */  lw         $s1, 0xc($sp)
/* DC4F50 80103930 8FB20010 */  lw         $s2, 0x10($sp)
/* DC4F54 80103934 8FB30014 */  lw         $s3, 0x14($sp)
/* DC4F58 80103938 8FB40018 */  lw         $s4, 0x18($sp)
/* DC4F5C 8010393C 8FB5001C */  lw         $s5, 0x1c($sp)
/* DC4F60 80103940 8FB60020 */  lw         $s6, 0x20($sp)
/* DC4F64 80103944 8FB70024 */  lw         $s7, 0x24($sp)
/* DC4F68 80103948 8FBE0028 */  lw         $fp, 0x28($sp)
/* DC4F6C 8010394C 03E00008 */  jr         $ra
/* DC4F70 80103950 27BD0030 */   addiu     $sp, $sp, 0x30
