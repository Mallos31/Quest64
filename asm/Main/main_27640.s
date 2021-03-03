.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel VOID_FUN_80026a40
/* 27640 80026A40 340E8000 */  ori        $t6, $zero, 0x8000
/* 27644 80026A44 3C018009 */  lui        $at, %hi(flags_DAT_8008fd0c)
/* 27648 80026A48 A42EFD0C */  sh         $t6, %lo(flags_DAT_8008fd0c)($at)
/* 2764C 80026A4C 3C018009 */  lui        $at, %hi(flags_DAT_8008fd20)
/* 27650 80026A50 A420FD20 */  sh         $zero, %lo(flags_DAT_8008fd20)($at)
/* 27654 80026A54 3C018009 */  lui        $at, %hi(UNK_Not_Read_3)
/* 27658 80026A58 240F0001 */  addiu      $t7, $zero, 1
/* 2765C 80026A5C 24180002 */  addiu      $t8, $zero, 2
/* 27660 80026A60 24190003 */  addiu      $t9, $zero, 3
/* 27664 80026A64 A039FD03 */  sb         $t9, %lo(UNK_Not_Read_3)($at)
/* 27668 80026A68 A038FD02 */  sb         $t8, -0x2fe($at)
/* 2766C 80026A6C A02FFD01 */  sb         $t7, -0x2ff($at)
/* 27670 80026A70 A020FD00 */  sb         $zero, -0x300($at)
/* 27674 80026A74 03E00008 */  jr         $ra
/* 27678 80026A78 00000000 */   nop

glabel openPauseMenuOrSaveLoad
/* 2767C 80026A7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 27680 80026A80 3C058008 */  lui        $a1, %hi(UNK_DisplayListCommand)
/* 27684 80026A84 24A5B2FC */  addiu      $a1, $a1, %lo(UNK_DisplayListCommand)
/* 27688 80026A88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2768C 80026A8C AFA40018 */  sw         $a0, 0x18($sp)
/* 27690 80026A90 8CA20000 */  lw         $v0, ($a1)
/* 27694 80026A94 3C188006 */  lui        $t8, %hi(someDisplayList)
/* 27698 80026A98 2718FAA0 */  addiu      $t8, $t8, %lo(someDisplayList)
/* 2769C 80026A9C 244E0008 */  addiu      $t6, $v0, 8
/* 276A0 80026AA0 ACAE0000 */  sw         $t6, ($a1)
/* 276A4 80026AA4 3C0F0600 */  lui        $t7, 0x600
/* 276A8 80026AA8 AC4F0000 */  sw         $t7, ($v0)
/* 276AC 80026AAC AC580004 */  sw         $t8, 4($v0)
/* 276B0 80026AB0 8CA20000 */  lw         $v0, ($a1)
/* 276B4 80026AB4 3C0ABA00 */  lui        $t2, 0xba00
/* 276B8 80026AB8 354A0E02 */  ori        $t2, $t2, 0xe02
/* 276BC 80026ABC 24590008 */  addiu      $t9, $v0, 8
/* 276C0 80026AC0 ACB90000 */  sw         $t9, ($a1)
/* 276C4 80026AC4 340B8000 */  ori        $t3, $zero, 0x8000
/* 276C8 80026AC8 AC4B0004 */  sw         $t3, 4($v0)
/* 276CC 80026ACC AC4A0000 */  sw         $t2, ($v0)
/* 276D0 80026AD0 0C00A99A */  jal        VOID_FUN_8002a668
/* 276D4 80026AD4 00000000 */   nop
/* 276D8 80026AD8 3C028009 */  lui        $v0, %hi(D_8008FD10)
/* 276DC 80026ADC 3C098009 */  lui        $t1, %hi(flags_DAT_8008fd0c)
/* 276E0 80026AE0 2529FD0C */  addiu      $t1, $t1, %lo(flags_DAT_8008fd0c)
/* 276E4 80026AE4 2442FD10 */  addiu      $v0, $v0, %lo(D_8008FD10)
/* 276E8 80026AE8 8C4C0000 */  lw         $t4, ($v0)
/* 276EC 80026AEC 95230000 */  lhu        $v1, ($t1)
/* 276F0 80026AF0 258D0001 */  addiu      $t5, $t4, 1
/* 276F4 80026AF4 306E4000 */  andi       $t6, $v1, 0x4000
/* 276F8 80026AF8 11C00008 */  beqz       $t6, .L80026B1C
/* 276FC 80026AFC AC4D0000 */   sw        $t5, ($v0)
/* 27700 80026B00 0C00AD5F */  jal        VOID_FUN_8002b57c
/* 27704 80026B04 00000000 */   nop
/* 27708 80026B08 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd0c)
/* 2770C 80026B0C 3C098009 */  lui        $t1, %hi(flags_DAT_8008fd0c)
/* 27710 80026B10 2529FD0C */  addiu      $t1, $t1, %lo(flags_DAT_8008fd0c)
/* 27714 80026B14 10000030 */  b          .L80026BD8
/* 27718 80026B18 9463FD0C */   lhu       $v1, %lo(flags_DAT_8008fd0c)($v1)
.L80026B1C:
/* 2771C 80026B1C 306F2000 */  andi       $t7, $v1, 0x2000
/* 27720 80026B20 11E00008 */  beqz       $t7, .L80026B44
/* 27724 80026B24 30780003 */   andi      $t8, $v1, 3
/* 27728 80026B28 0C009B47 */  jal        VOID_FUN_80026d1c
/* 2772C 80026B2C 00000000 */   nop
/* 27730 80026B30 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd0c)
/* 27734 80026B34 3C098009 */  lui        $t1, %hi(flags_DAT_8008fd0c)
/* 27738 80026B38 2529FD0C */  addiu      $t1, $t1, %lo(flags_DAT_8008fd0c)
/* 2773C 80026B3C 10000026 */  b          .L80026BD8
/* 27740 80026B40 9463FD0C */   lhu       $v1, %lo(flags_DAT_8008fd0c)($v1)
.L80026B44:
/* 27744 80026B44 13000009 */  beqz       $t8, .L80026B6C
/* 27748 80026B48 24010001 */   addiu     $at, $zero, 1
/* 2774C 80026B4C 1301000E */  beq        $t8, $at, .L80026B88
/* 27750 80026B50 24010002 */   addiu     $at, $zero, 2
/* 27754 80026B54 13010013 */  beq        $t8, $at, .L80026BA4
/* 27758 80026B58 24010003 */   addiu     $at, $zero, 3
/* 2775C 80026B5C 13010018 */  beq        $t8, $at, .L80026BC0
/* 27760 80026B60 00000000 */   nop
/* 27764 80026B64 1000001C */  b          .L80026BD8
/* 27768 80026B68 00000000 */   nop
.L80026B6C:
/* 2776C 80026B6C 0C009BCD */  jal        UNK_Interface
/* 27770 80026B70 00002025 */   or        $a0, $zero, $zero
/* 27774 80026B74 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd0c)
/* 27778 80026B78 3C098009 */  lui        $t1, %hi(flags_DAT_8008fd0c)
/* 2777C 80026B7C 2529FD0C */  addiu      $t1, $t1, %lo(flags_DAT_8008fd0c)
/* 27780 80026B80 10000015 */  b          .L80026BD8
/* 27784 80026B84 9463FD0C */   lhu       $v1, %lo(flags_DAT_8008fd0c)($v1)
.L80026B88:
/* 27788 80026B88 0C009E2C */  jal        func_800278B0
/* 2778C 80026B8C 00002025 */   or        $a0, $zero, $zero
/* 27790 80026B90 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd0c)
/* 27794 80026B94 3C098009 */  lui        $t1, %hi(flags_DAT_8008fd0c)
/* 27798 80026B98 2529FD0C */  addiu      $t1, $t1, %lo(flags_DAT_8008fd0c)
/* 2779C 80026B9C 1000000E */  b          .L80026BD8
/* 277A0 80026BA0 9463FD0C */   lhu       $v1, %lo(flags_DAT_8008fd0c)($v1)
.L80026BA4:
/* 277A4 80026BA4 0C00A189 */  jal        func_80028624
/* 277A8 80026BA8 00002025 */   or        $a0, $zero, $zero
/* 277AC 80026BAC 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd0c)
/* 277B0 80026BB0 3C098009 */  lui        $t1, %hi(flags_DAT_8008fd0c)
/* 277B4 80026BB4 2529FD0C */  addiu      $t1, $t1, %lo(flags_DAT_8008fd0c)
/* 277B8 80026BB8 10000007 */  b          .L80026BD8
/* 277BC 80026BBC 9463FD0C */   lhu       $v1, %lo(flags_DAT_8008fd0c)($v1)
.L80026BC0:
/* 277C0 80026BC0 0C00A512 */  jal        func_80029448
/* 277C4 80026BC4 00002025 */   or        $a0, $zero, $zero
/* 277C8 80026BC8 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd0c)
/* 277CC 80026BCC 3C098009 */  lui        $t1, %hi(flags_DAT_8008fd0c)
/* 277D0 80026BD0 2529FD0C */  addiu      $t1, $t1, %lo(flags_DAT_8008fd0c)
/* 277D4 80026BD4 9463FD0C */  lhu        $v1, %lo(flags_DAT_8008fd0c)($v1)
.L80026BD8:
/* 277D8 80026BD8 3C088008 */  lui        $t0, %hi(UNK_DisplayListCommand)
/* 277DC 80026BDC 3079FFEF */  andi       $t9, $v1, 0xffef
/* 277E0 80026BE0 2508B2FC */  addiu      $t0, $t0, %lo(UNK_DisplayListCommand)
/* 277E4 80026BE4 24070001 */  addiu      $a3, $zero, 1
/* 277E8 80026BE8 A5390000 */  sh         $t9, ($t1)
/* 277EC 80026BEC 8D020000 */  lw         $v0, ($t0)
/* 277F0 80026BF0 3C0BBA00 */  lui        $t3, 0xba00
/* 277F4 80026BF4 356B0E02 */  ori        $t3, $t3, 0xe02
/* 277F8 80026BF8 244A0008 */  addiu      $t2, $v0, 8
/* 277FC 80026BFC AD0A0000 */  sw         $t2, ($t0)
/* 27800 80026C00 AC400004 */  sw         $zero, 4($v0)
/* 27804 80026C04 AC4B0000 */  sw         $t3, ($v0)
/* 27808 80026C08 8D020000 */  lw         $v0, ($t0)
/* 2780C 80026C0C 3C0DF900 */  lui        $t5, 0xf900
/* 27810 80026C10 3C068009 */  lui        $a2, %hi(ButtonPressedFrame)
/* 27814 80026C14 244C0008 */  addiu      $t4, $v0, 8
/* 27818 80026C18 AD0C0000 */  sw         $t4, ($t0)
/* 2781C 80026C1C AC470004 */  sw         $a3, 4($v0)
/* 27820 80026C20 AC4D0000 */  sw         $t5, ($v0)
/* 27824 80026C24 94C62876 */  lhu        $a2, %lo(ButtonPressedFrame)($a2)
/* 27828 80026C28 30CE4000 */  andi       $t6, $a2, 0x4000
/* 2782C 80026C2C 15C00003 */  bnez       $t6, .L80026C3C
/* 27830 80026C30 30CF1000 */   andi      $t7, $a2, 0x1000
/* 27834 80026C34 51E0000E */  beql       $t7, $zero, .L80026C70
/* 27838 80026C38 95230000 */   lhu       $v1, ($t1)
.L80026C3C:
/* 2783C 80026C3C 95230000 */  lhu        $v1, ($t1)
/* 27840 80026C40 00002025 */  or         $a0, $zero, $zero
/* 27844 80026C44 24050001 */  addiu      $a1, $zero, 1
/* 27848 80026C48 30784000 */  andi       $t8, $v1, 0x4000
/* 2784C 80026C4C 17000007 */  bnez       $t8, .L80026C6C
/* 27850 80026C50 30797FFF */   andi      $t9, $v1, 0x7fff
/* 27854 80026C54 A5390000 */  sh         $t9, ($t1)
/* 27858 80026C58 0C009A35 */  jal        func_800268D4
/* 2785C 80026C5C 240600FF */   addiu     $a2, $zero, 0xff
/* 27860 80026C60 3C098009 */  lui        $t1, %hi(flags_DAT_8008fd0c)
/* 27864 80026C64 2529FD0C */  addiu      $t1, $t1, %lo(flags_DAT_8008fd0c)
/* 27868 80026C68 24070001 */  addiu      $a3, $zero, 1
.L80026C6C:
/* 2786C 80026C6C 95230000 */  lhu        $v1, ($t1)
.L80026C70:
/* 27870 80026C70 306A8000 */  andi       $t2, $v1, 0x8000
/* 27874 80026C74 15400025 */  bnez       $t2, .L80026D0C
/* 27878 80026C78 306B4000 */   andi      $t3, $v1, 0x4000
/* 2787C 80026C7C 11600020 */  beqz       $t3, .L80026D00
/* 27880 80026C80 3C018008 */   lui       $at, 0x8008
/* 27884 80026C84 306C000C */  andi       $t4, $v1, 0xc
/* 27888 80026C88 11800008 */  beqz       $t4, .L80026CAC
/* 2788C 80026C8C 3C0D8009 */   lui       $t5, 0x8009
/* 27890 80026C90 24010004 */  addiu      $at, $zero, 4
/* 27894 80026C94 11810017 */  beq        $t4, $at, .L80026CF4
/* 27898 80026C98 24010008 */   addiu     $at, $zero, 8
/* 2789C 80026C9C 11810012 */  beq        $t4, $at, .L80026CE8
/* 278A0 80026CA0 24190003 */   addiu     $t9, $zero, 3
/* 278A4 80026CA4 10000017 */  b          .L80026D04
/* 278A8 80026CA8 00000000 */   nop
.L80026CAC:
/* 278AC 80026CAC 95ADFD20 */  lhu        $t5, -0x2e0($t5)
/* 278B0 80026CB0 240F0001 */  addiu      $t7, $zero, 1
/* 278B4 80026CB4 24180003 */  addiu      $t8, $zero, 3
/* 278B8 80026CB8 31AE0080 */  andi       $t6, $t5, 0x80
/* 278BC 80026CBC 11C00006 */  beqz       $t6, .L80026CD8
/* 278C0 80026CC0 3C018008 */   lui       $at, 0x8008
/* 278C4 80026CC4 3C018008 */  lui        $at, %hi(GameMode)
/* 278C8 80026CC8 A427B2E0 */  sh         $a3, %lo(GameMode)($at)
/* 278CC 80026CCC 3C018009 */  lui        $at, %hi(D_8008FD0E)
/* 278D0 80026CD0 1000000C */  b          .L80026D04
/* 278D4 80026CD4 A02FFD0E */   sb        $t7, %lo(D_8008FD0E)($at)
.L80026CD8:
/* 278D8 80026CD8 A438B2E0 */  sh         $t8, -0x4d20($at)
/* 278DC 80026CDC 3C018009 */  lui        $at, %hi(D_8008FD0E)
/* 278E0 80026CE0 10000008 */  b          .L80026D04
/* 278E4 80026CE4 A020FD0E */   sb        $zero, %lo(D_8008FD0E)($at)
.L80026CE8:
/* 278E8 80026CE8 3C018008 */  lui        $at, %hi(GameMode)
/* 278EC 80026CEC 10000005 */  b          .L80026D04
/* 278F0 80026CF0 A439B2E0 */   sh        $t9, %lo(GameMode)($at)
.L80026CF4:
/* 278F4 80026CF4 3C018008 */  lui        $at, %hi(GameMode)
/* 278F8 80026CF8 10000002 */  b          .L80026D04
/* 278FC 80026CFC A427B2E0 */   sh        $a3, %lo(GameMode)($at)
.L80026D00:
/* 27900 80026D00 A427B2E0 */  sh         $a3, -0x4d20($at)
.L80026D04:
/* 27904 80026D04 0C009A90 */  jal        VOID_FUN_80026a40
/* 27908 80026D08 00000000 */   nop
.L80026D0C:
/* 2790C 80026D0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 27910 80026D10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 27914 80026D14 03E00008 */  jr         $ra
/* 27918 80026D18 00000000 */   nop

glabel VOID_FUN_80026d1c
/* 2791C 80026D1C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 27920 80026D20 AFB00018 */  sw         $s0, 0x18($sp)
/* 27924 80026D24 3C108009 */  lui        $s0, %hi(flags_DAT_8008fd0c)
/* 27928 80026D28 2610FD0C */  addiu      $s0, $s0, %lo(flags_DAT_8008fd0c)
/* 2792C 80026D2C AFBF001C */  sw         $ra, 0x1c($sp)
/* 27930 80026D30 96040000 */  lhu        $a0, ($s0)
/* 27934 80026D34 3C028009 */  lui        $v0, %hi(UNK_MenuScrollCounter)
/* 27938 80026D38 AFA00028 */  sw         $zero, 0x28($sp)
/* 2793C 80026D3C 308E1000 */  andi       $t6, $a0, 0x1000
/* 27940 80026D40 11C0000F */  beqz       $t6, .L80026D80
/* 27944 80026D44 2445FD04 */   addiu     $a1, $v0, %lo(UNK_MenuScrollCounter)
/* 27948 80026D48 3C028009 */  lui        $v0, %hi(UNK_MenuScrollCounter)
/* 2794C 80026D4C 2446FD04 */  addiu      $a2, $v0, %lo(UNK_MenuScrollCounter)
/* 27950 80026D50 8CCF0000 */  lw         $t7, ($a2)
/* 27954 80026D54 3C038009 */  lui        $v1, %hi(D_8008FD08)
/* 27958 80026D58 2465FD08 */  addiu      $a1, $v1, %lo(D_8008FD08)
/* 2795C 80026D5C 25F80008 */  addiu      $t8, $t7, 8
/* 27960 80026D60 ACD80000 */  sw         $t8, ($a2)
/* 27964 80026D64 8CB90000 */  lw         $t9, ($a1)
/* 27968 80026D68 240AFFFF */  addiu      $t2, $zero, -1
/* 2796C 80026D6C 27280008 */  addiu      $t0, $t9, 8
/* 27970 80026D70 1500000E */  bnez       $t0, .L80026DAC
/* 27974 80026D74 ACA80000 */   sw        $t0, ($a1)
/* 27978 80026D78 1000000C */  b          .L80026DAC
/* 2797C 80026D7C AFAA0028 */   sw        $t2, 0x28($sp)
.L80026D80:
/* 27980 80026D80 8CAB0000 */  lw         $t3, ($a1)
/* 27984 80026D84 3C038009 */  lui        $v1, %hi(D_8008FD08)
/* 27988 80026D88 2466FD08 */  addiu      $a2, $v1, %lo(D_8008FD08)
/* 2798C 80026D8C 256CFFF8 */  addiu      $t4, $t3, -8
/* 27990 80026D90 ACAC0000 */  sw         $t4, ($a1)
/* 27994 80026D94 8CCD0000 */  lw         $t5, ($a2)
/* 27998 80026D98 24180001 */  addiu      $t8, $zero, 1
/* 2799C 80026D9C 25AEFFF8 */  addiu      $t6, $t5, -8
/* 279A0 80026DA0 15800002 */  bnez       $t4, .L80026DAC
/* 279A4 80026DA4 ACCE0000 */   sw        $t6, ($a2)
/* 279A8 80026DA8 AFB80028 */  sw         $t8, 0x28($sp)
.L80026DAC:
/* 279AC 80026DAC 30820003 */  andi       $v0, $a0, 3
/* 279B0 80026DB0 10400009 */  beqz       $v0, .L80026DD8
/* 279B4 80026DB4 24010001 */   addiu     $at, $zero, 1
/* 279B8 80026DB8 10410018 */  beq        $v0, $at, .L80026E1C
/* 279BC 80026DBC 24010002 */   addiu     $at, $zero, 2
/* 279C0 80026DC0 10410027 */  beq        $v0, $at, .L80026E60
/* 279C4 80026DC4 24010003 */   addiu     $at, $zero, 3
/* 279C8 80026DC8 50410037 */  beql       $v0, $at, .L80026EA8
/* 279CC 80026DCC 8CC40000 */   lw        $a0, ($a2)
/* 279D0 80026DD0 10000045 */  b          .L80026EE8
/* 279D4 80026DD4 8FAF0028 */   lw        $t7, 0x28($sp)
.L80026DD8:
/* 279D8 80026DD8 8CC40000 */  lw         $a0, ($a2)
/* 279DC 80026DDC AFA50020 */  sw         $a1, 0x20($sp)
/* 279E0 80026DE0 0C009BCD */  jal        UNK_Interface
/* 279E4 80026DE4 AFA2002C */   sw        $v0, 0x2c($sp)
/* 279E8 80026DE8 96190000 */  lhu        $t9, ($s0)
/* 279EC 80026DEC 8FA50020 */  lw         $a1, 0x20($sp)
/* 279F0 80026DF0 33281000 */  andi       $t0, $t9, 0x1000
/* 279F4 80026DF4 11000005 */  beqz       $t0, .L80026E0C
/* 279F8 80026DF8 00000000 */   nop
/* 279FC 80026DFC 0C00A512 */  jal        func_80029448
/* 27A00 80026E00 8CA40000 */   lw        $a0, ($a1)
/* 27A04 80026E04 10000003 */  b          .L80026E14
/* 27A08 80026E08 00000000 */   nop
.L80026E0C:
/* 27A0C 80026E0C 0C009E2C */  jal        func_800278B0
/* 27A10 80026E10 8CA40000 */   lw        $a0, ($a1)
.L80026E14:
/* 27A14 80026E14 10000033 */  b          .L80026EE4
/* 27A18 80026E18 8FA2002C */   lw        $v0, 0x2c($sp)
.L80026E1C:
/* 27A1C 80026E1C 8CC40000 */  lw         $a0, ($a2)
/* 27A20 80026E20 AFA50020 */  sw         $a1, 0x20($sp)
/* 27A24 80026E24 0C009E2C */  jal        func_800278B0
/* 27A28 80026E28 AFA2002C */   sw        $v0, 0x2c($sp)
/* 27A2C 80026E2C 96090000 */  lhu        $t1, ($s0)
/* 27A30 80026E30 8FA50020 */  lw         $a1, 0x20($sp)
/* 27A34 80026E34 312A1000 */  andi       $t2, $t1, 0x1000
/* 27A38 80026E38 11400005 */  beqz       $t2, .L80026E50
/* 27A3C 80026E3C 00000000 */   nop
/* 27A40 80026E40 0C009BCD */  jal        UNK_Interface
/* 27A44 80026E44 8CA40000 */   lw        $a0, ($a1)
/* 27A48 80026E48 10000003 */  b          .L80026E58
/* 27A4C 80026E4C 00000000 */   nop
.L80026E50:
/* 27A50 80026E50 0C00A189 */  jal        func_80028624
/* 27A54 80026E54 8CA40000 */   lw        $a0, ($a1)
.L80026E58:
/* 27A58 80026E58 10000022 */  b          .L80026EE4
/* 27A5C 80026E5C 8FA2002C */   lw        $v0, 0x2c($sp)
.L80026E60:
/* 27A60 80026E60 8CC40000 */  lw         $a0, ($a2)
/* 27A64 80026E64 AFA50020 */  sw         $a1, 0x20($sp)
/* 27A68 80026E68 0C00A189 */  jal        func_80028624
/* 27A6C 80026E6C AFA2002C */   sw        $v0, 0x2c($sp)
/* 27A70 80026E70 960B0000 */  lhu        $t3, ($s0)
/* 27A74 80026E74 8FA50020 */  lw         $a1, 0x20($sp)
/* 27A78 80026E78 316C1000 */  andi       $t4, $t3, 0x1000
/* 27A7C 80026E7C 11800005 */  beqz       $t4, .L80026E94
/* 27A80 80026E80 00000000 */   nop
/* 27A84 80026E84 0C009E2C */  jal        func_800278B0
/* 27A88 80026E88 8CA40000 */   lw        $a0, ($a1)
/* 27A8C 80026E8C 10000003 */  b          .L80026E9C
/* 27A90 80026E90 00000000 */   nop
.L80026E94:
/* 27A94 80026E94 0C00A512 */  jal        func_80029448
/* 27A98 80026E98 8CA40000 */   lw        $a0, ($a1)
.L80026E9C:
/* 27A9C 80026E9C 10000011 */  b          .L80026EE4
/* 27AA0 80026EA0 8FA2002C */   lw        $v0, 0x2c($sp)
/* 27AA4 80026EA4 8CC40000 */  lw         $a0, ($a2)
.L80026EA8:
/* 27AA8 80026EA8 AFA50020 */  sw         $a1, 0x20($sp)
/* 27AAC 80026EAC 0C00A512 */  jal        func_80029448
/* 27AB0 80026EB0 AFA2002C */   sw        $v0, 0x2c($sp)
/* 27AB4 80026EB4 960D0000 */  lhu        $t5, ($s0)
/* 27AB8 80026EB8 8FA50020 */  lw         $a1, 0x20($sp)
/* 27ABC 80026EBC 31AE1000 */  andi       $t6, $t5, 0x1000
/* 27AC0 80026EC0 11C00005 */  beqz       $t6, .L80026ED8
/* 27AC4 80026EC4 00000000 */   nop
/* 27AC8 80026EC8 0C00A189 */  jal        func_80028624
/* 27ACC 80026ECC 8CA40000 */   lw        $a0, ($a1)
/* 27AD0 80026ED0 10000004 */  b          .L80026EE4
/* 27AD4 80026ED4 8FA2002C */   lw        $v0, 0x2c($sp)
.L80026ED8:
/* 27AD8 80026ED8 0C009BCD */  jal        UNK_Interface
/* 27ADC 80026EDC 8CA40000 */   lw        $a0, ($a1)
/* 27AE0 80026EE0 8FA2002C */  lw         $v0, 0x2c($sp)
.L80026EE4:
/* 27AE4 80026EE4 8FAF0028 */  lw         $t7, 0x28($sp)
.L80026EE8:
/* 27AE8 80026EE8 51E0000E */  beql       $t7, $zero, .L80026F24
/* 27AEC 80026EEC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 27AF0 80026EF0 96180000 */  lhu        $t8, ($s0)
/* 27AF4 80026EF4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 27AF8 80026EF8 3308DFFF */  andi       $t0, $t8, 0xdfff
/* 27AFC 80026EFC 310BEFFF */  andi       $t3, $t0, 0xefff
/* 27B00 80026F00 A6080000 */  sh         $t0, ($s0)
/* 27B04 80026F04 316DFFFC */  andi       $t5, $t3, 0xfffc
/* 27B08 80026F08 004A1021 */  addu       $v0, $v0, $t2
/* 27B0C 80026F0C A60B0000 */  sh         $t3, ($s0)
/* 27B10 80026F10 304E0003 */  andi       $t6, $v0, 3
/* 27B14 80026F14 A60D0000 */  sh         $t5, ($s0)
/* 27B18 80026F18 01AE7825 */  or         $t7, $t5, $t6
/* 27B1C 80026F1C A60F0000 */  sh         $t7, ($s0)
/* 27B20 80026F20 8FBF001C */  lw         $ra, 0x1c($sp)
.L80026F24:
/* 27B24 80026F24 8FB00018 */  lw         $s0, 0x18($sp)
/* 27B28 80026F28 27BD0030 */  addiu      $sp, $sp, 0x30
/* 27B2C 80026F2C 03E00008 */  jr         $ra
/* 27B30 80026F30 00000000 */   nop

glabel UNK_Interface
/* 27B34 80026F34 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 27B38 80026F38 AFB20028 */  sw         $s2, 0x28($sp)
/* 27B3C 80026F3C 3C098008 */  lui        $t1, %hi(UNK_DisplayListCommand)
/* 27B40 80026F40 2529B2FC */  addiu      $t1, $t1, %lo(UNK_DisplayListCommand)
/* 27B44 80026F44 00809025 */  or         $s2, $a0, $zero
/* 27B48 80026F48 AFBF002C */  sw         $ra, 0x2c($sp)
/* 27B4C 80026F4C AFB10024 */  sw         $s1, 0x24($sp)
/* 27B50 80026F50 AFB00020 */  sw         $s0, 0x20($sp)
/* 27B54 80026F54 8D220000 */  lw         $v0, ($t1)
/* 27B58 80026F58 3C0FE700 */  lui        $t7, 0xe700
/* 27B5C 80026F5C 00002025 */  or         $a0, $zero, $zero
/* 27B60 80026F60 244E0008 */  addiu      $t6, $v0, 8
/* 27B64 80026F64 AD2E0000 */  sw         $t6, ($t1)
/* 27B68 80026F68 AC400004 */  sw         $zero, 4($v0)
/* 27B6C 80026F6C AC4F0000 */  sw         $t7, ($v0)
/* 27B70 80026F70 8D220000 */  lw         $v0, ($t1)
/* 27B74 80026F74 3C19FB00 */  lui        $t9, 0xfb00
/* 27B78 80026F78 240AFFFF */  addiu      $t2, $zero, -1
/* 27B7C 80026F7C 24580008 */  addiu      $t8, $v0, 8
/* 27B80 80026F80 AD380000 */  sw         $t8, ($t1)
/* 27B84 80026F84 AC4A0004 */  sw         $t2, 4($v0)
/* 27B88 80026F88 AC590000 */  sw         $t9, ($v0)
/* 27B8C 80026F8C 240B0098 */  addiu      $t3, $zero, 0x98
/* 27B90 80026F90 AFAB0010 */  sw         $t3, 0x10($sp)
/* 27B94 80026F94 26450028 */  addiu      $a1, $s2, 0x28
/* 27B98 80026F98 2406001E */  addiu      $a2, $zero, 0x1e
/* 27B9C 80026F9C 0C00A6D6 */  jal        drawMenues
/* 27BA0 80026FA0 240700F0 */   addiu     $a3, $zero, 0xf0
/* 27BA4 80026FA4 240C0003 */  addiu      $t4, $zero, 3
/* 27BA8 80026FA8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 27BAC 80026FAC 24040037 */  addiu      $a0, $zero, 0x37
/* 27BB0 80026FB0 2645002B */  addiu      $a1, $s2, 0x2b
/* 27BB4 80026FB4 240600B7 */  addiu      $a2, $zero, 0xb7
/* 27BB8 80026FB8 0C00A6D6 */  jal        drawMenues
/* 27BBC 80026FBC 240700F0 */   addiu     $a3, $zero, 0xf0
/* 27BC0 80026FC0 240D0096 */  addiu      $t5, $zero, 0x96
/* 27BC4 80026FC4 AFAD0010 */  sw         $t5, 0x10($sp)
/* 27BC8 80026FC8 24040037 */  addiu      $a0, $zero, 0x37
/* 27BCC 80026FCC 26450119 */  addiu      $a1, $s2, 0x119
/* 27BD0 80026FD0 24060024 */  addiu      $a2, $zero, 0x24
/* 27BD4 80026FD4 0C00A6D6 */  jal        drawMenues
/* 27BD8 80026FD8 24070002 */   addiu     $a3, $zero, 2
/* 27BDC 80026FDC 26500027 */  addiu      $s0, $s2, 0x27
/* 27BE0 80026FE0 240E0001 */  addiu      $t6, $zero, 1
/* 27BE4 80026FE4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 27BE8 80026FE8 02002825 */  or         $a1, $s0, $zero
/* 27BEC 80026FEC 24040037 */  addiu      $a0, $zero, 0x37
/* 27BF0 80026FF0 2406001D */  addiu      $a2, $zero, 0x1d
/* 27BF4 80026FF4 0C00A6D6 */  jal        drawMenues
/* 27BF8 80026FF8 240700F2 */   addiu     $a3, $zero, 0xf2
/* 27BFC 80026FFC 240F0001 */  addiu      $t7, $zero, 1
/* 27C00 80027000 AFAF0010 */  sw         $t7, 0x10($sp)
/* 27C04 80027004 24040037 */  addiu      $a0, $zero, 0x37
/* 27C08 80027008 02002825 */  or         $a1, $s0, $zero
/* 27C0C 8002700C 240600B6 */  addiu      $a2, $zero, 0xb6
/* 27C10 80027010 0C00A6D6 */  jal        drawMenues
/* 27C14 80027014 240700F2 */   addiu     $a3, $zero, 0xf2
/* 27C18 80027018 2418009A */  addiu      $t8, $zero, 0x9a
/* 27C1C 8002701C AFB80010 */  sw         $t8, 0x10($sp)
/* 27C20 80027020 24040037 */  addiu      $a0, $zero, 0x37
/* 27C24 80027024 02002825 */  or         $a1, $s0, $zero
/* 27C28 80027028 2406001D */  addiu      $a2, $zero, 0x1d
/* 27C2C 8002702C 0C00A6D6 */  jal        drawMenues
/* 27C30 80027030 24070001 */   addiu     $a3, $zero, 1
/* 27C34 80027034 2419009A */  addiu      $t9, $zero, 0x9a
/* 27C38 80027038 AFB90010 */  sw         $t9, 0x10($sp)
/* 27C3C 8002703C 24040037 */  addiu      $a0, $zero, 0x37
/* 27C40 80027040 26450118 */  addiu      $a1, $s2, 0x118
/* 27C44 80027044 2406001D */  addiu      $a2, $zero, 0x1d
/* 27C48 80027048 0C00A6D6 */  jal        drawMenues
/* 27C4C 8002704C 24070001 */   addiu     $a3, $zero, 1
/* 27C50 80027050 26500029 */  addiu      $s0, $s2, 0x29
/* 27C54 80027054 240A0001 */  addiu      $t2, $zero, 1
/* 27C58 80027058 AFAA0010 */  sw         $t2, 0x10($sp)
/* 27C5C 8002705C 02002825 */  or         $a1, $s0, $zero
/* 27C60 80027060 24040038 */  addiu      $a0, $zero, 0x38
/* 27C64 80027064 2406001F */  addiu      $a2, $zero, 0x1f
/* 27C68 80027068 0C00A6D6 */  jal        drawMenues
/* 27C6C 8002706C 240700ED */   addiu     $a3, $zero, 0xed
/* 27C70 80027070 240B0095 */  addiu      $t3, $zero, 0x95
/* 27C74 80027074 AFAB0010 */  sw         $t3, 0x10($sp)
/* 27C78 80027078 24040038 */  addiu      $a0, $zero, 0x38
/* 27C7C 8002707C 02002825 */  or         $a1, $s0, $zero
/* 27C80 80027080 2406001F */  addiu      $a2, $zero, 0x1f
/* 27C84 80027084 0C00A6D6 */  jal        drawMenues
/* 27C88 80027088 24070001 */   addiu     $a3, $zero, 1
/* 27C8C 8002708C 240C0001 */  addiu      $t4, $zero, 1
/* 27C90 80027090 AFAC0010 */  sw         $t4, 0x10($sp)
/* 27C94 80027094 24040039 */  addiu      $a0, $zero, 0x39
/* 27C98 80027098 02002825 */  or         $a1, $s0, $zero
/* 27C9C 8002709C 240600B4 */  addiu      $a2, $zero, 0xb4
/* 27CA0 800270A0 0C00A6D6 */  jal        drawMenues
/* 27CA4 800270A4 240700EE */   addiu     $a3, $zero, 0xee
/* 27CA8 800270A8 240D0096 */  addiu      $t5, $zero, 0x96
/* 27CAC 800270AC AFAD0010 */  sw         $t5, 0x10($sp)
/* 27CB0 800270B0 24040039 */  addiu      $a0, $zero, 0x39
/* 27CB4 800270B4 26450116 */  addiu      $a1, $s2, 0x116
/* 27CB8 800270B8 2406001F */  addiu      $a2, $zero, 0x1f
/* 27CBC 800270BC 0C00A6D6 */  jal        drawMenues
/* 27CC0 800270C0 24070001 */   addiu     $a3, $zero, 1
/* 27CC4 800270C4 240E0098 */  addiu      $t6, $zero, 0x98
/* 27CC8 800270C8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 27CCC 800270CC 2404003C */  addiu      $a0, $zero, 0x3c
/* 27CD0 800270D0 2645003A */  addiu      $a1, $s2, 0x3a
/* 27CD4 800270D4 2406001E */  addiu      $a2, $zero, 0x1e
/* 27CD8 800270D8 0C00A6D6 */  jal        drawMenues
/* 27CDC 800270DC 24070015 */   addiu     $a3, $zero, 0x15
/* 27CE0 800270E0 2645005D */  addiu      $a1, $s2, 0x5d
/* 27CE4 800270E4 2410004B */  addiu      $s0, $zero, 0x4b
/* 27CE8 800270E8 AFA50038 */  sw         $a1, 0x38($sp)
/* 27CEC 800270EC 00008825 */  or         $s1, $zero, $zero
.L800270F0:
/* 27CF0 800270F0 240F0002 */  addiu      $t7, $zero, 2
/* 27CF4 800270F4 8FA50038 */  lw         $a1, 0x38($sp)
/* 27CF8 800270F8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 27CFC 800270FC 2404003D */  addiu      $a0, $zero, 0x3d
/* 27D00 80027100 02003025 */  or         $a2, $s0, $zero
/* 27D04 80027104 0C00A6D6 */  jal        drawMenues
/* 27D08 80027108 240700A7 */   addiu     $a3, $zero, 0xa7
/* 27D0C 8002710C 26310001 */  addiu      $s1, $s1, 1
/* 27D10 80027110 2A210003 */  slti       $at, $s1, 3
/* 27D14 80027114 1420FFF6 */  bnez       $at, .L800270F0
/* 27D18 80027118 26100021 */   addiu     $s0, $s0, 0x21
/* 27D1C 8002711C 26450063 */  addiu      $a1, $s2, 0x63
/* 27D20 80027120 24100040 */  addiu      $s0, $zero, 0x40
/* 27D24 80027124 AFA50038 */  sw         $a1, 0x38($sp)
/* 27D28 80027128 00008825 */  or         $s1, $zero, $zero
.L8002712C:
/* 27D2C 8002712C 24180007 */  addiu      $t8, $zero, 7
/* 27D30 80027130 8FA50038 */  lw         $a1, 0x38($sp)
/* 27D34 80027134 AFB80010 */  sw         $t8, 0x10($sp)
/* 27D38 80027138 24040032 */  addiu      $a0, $zero, 0x32
/* 27D3C 8002713C 02003025 */  or         $a2, $s0, $zero
/* 27D40 80027140 0C00A6D6 */  jal        drawMenues
/* 27D44 80027144 2407003C */   addiu     $a3, $zero, 0x3c
/* 27D48 80027148 26310001 */  addiu      $s1, $s1, 1
/* 27D4C 8002714C 2A210004 */  slti       $at, $s1, 4
/* 27D50 80027150 1420FFF6 */  bnez       $at, .L8002712C
/* 27D54 80027154 26100021 */   addiu     $s0, $s0, 0x21
/* 27D58 80027158 264500C3 */  addiu      $a1, $s2, 0xc3
/* 27D5C 8002715C 2410003C */  addiu      $s0, $zero, 0x3c
/* 27D60 80027160 AFA50038 */  sw         $a1, 0x38($sp)
/* 27D64 80027164 00008825 */  or         $s1, $zero, $zero
.L80027168:
/* 27D68 80027168 2419000B */  addiu      $t9, $zero, 0xb
/* 27D6C 8002716C 8FA50038 */  lw         $a1, 0x38($sp)
/* 27D70 80027170 AFB90010 */  sw         $t9, 0x10($sp)
/* 27D74 80027174 24040020 */  addiu      $a0, $zero, 0x20
/* 27D78 80027178 02003025 */  or         $a2, $s0, $zero
/* 27D7C 8002717C 0C00A6D6 */  jal        drawMenues
/* 27D80 80027180 24070013 */   addiu     $a3, $zero, 0x13
/* 27D84 80027184 26310001 */  addiu      $s1, $s1, 1
/* 27D88 80027188 2A210004 */  slti       $at, $s1, 4
/* 27D8C 8002718C 1420FFF6 */  bnez       $at, .L80027168
/* 27D90 80027190 26100021 */   addiu     $s0, $s0, 0x21
/* 27D94 80027194 240A000E */  addiu      $t2, $zero, 0xe
/* 27D98 80027198 AFAA0010 */  sw         $t2, 0x10($sp)
/* 27D9C 8002719C 2404001B */  addiu      $a0, $zero, 0x1b
/* 27DA0 800271A0 26450038 */  addiu      $a1, $s2, 0x38
/* 27DA4 800271A4 24060034 */  addiu      $a2, $zero, 0x34
/* 27DA8 800271A8 0C00A6D6 */  jal        drawMenues
/* 27DAC 800271AC 24070018 */   addiu     $a3, $zero, 0x18
/* 27DB0 800271B0 240B000D */  addiu      $t3, $zero, 0xd
/* 27DB4 800271B4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 27DB8 800271B8 2404001C */  addiu      $a0, $zero, 0x1c
/* 27DBC 800271BC 26450037 */  addiu      $a1, $s2, 0x37
/* 27DC0 800271C0 24060054 */  addiu      $a2, $zero, 0x54
/* 27DC4 800271C4 0C00A6D6 */  jal        drawMenues
/* 27DC8 800271C8 2407001C */   addiu     $a3, $zero, 0x1c
/* 27DCC 800271CC 26500035 */  addiu      $s0, $s2, 0x35
/* 27DD0 800271D0 240C000F */  addiu      $t4, $zero, 0xf
/* 27DD4 800271D4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 27DD8 800271D8 02002825 */  or         $a1, $s0, $zero
/* 27DDC 800271DC 2404001D */  addiu      $a0, $zero, 0x1d
/* 27DE0 800271E0 24060078 */  addiu      $a2, $zero, 0x78
/* 27DE4 800271E4 0C00A6D6 */  jal        drawMenues
/* 27DE8 800271E8 24070024 */   addiu     $a3, $zero, 0x24
/* 27DEC 800271EC 240D000E */  addiu      $t5, $zero, 0xe
/* 27DF0 800271F0 AFAD0010 */  sw         $t5, 0x10($sp)
/* 27DF4 800271F4 2404001E */  addiu      $a0, $zero, 0x1e
/* 27DF8 800271F8 02002825 */  or         $a1, $s0, $zero
/* 27DFC 800271FC 24060099 */  addiu      $a2, $zero, 0x99
/* 27E00 80027200 0C00A6D6 */  jal        drawMenues
/* 27E04 80027204 2407001C */   addiu     $a3, $zero, 0x1c
/* 27E08 80027208 240E0008 */  addiu      $t6, $zero, 8
/* 27E0C 8002720C AFAE0010 */  sw         $t6, 0x10($sp)
/* 27E10 80027210 24040005 */  addiu      $a0, $zero, 5
/* 27E14 80027214 26450045 */  addiu      $a1, $s2, 0x45
/* 27E18 80027218 2406001C */  addiu      $a2, $zero, 0x1c
/* 27E1C 8002721C 0C00A6D6 */  jal        drawMenues
/* 27E20 80027220 24070008 */   addiu     $a3, $zero, 8
/* 27E24 80027224 240F0008 */  addiu      $t7, $zero, 8
/* 27E28 80027228 AFAF0010 */  sw         $t7, 0x10($sp)
/* 27E2C 8002722C 24040005 */  addiu      $a0, $zero, 5
/* 27E30 80027230 264500F3 */  addiu      $a1, $s2, 0xf3
/* 27E34 80027234 2406001C */  addiu      $a2, $zero, 0x1c
/* 27E38 80027238 0C00A6D6 */  jal        drawMenues
/* 27E3C 8002723C 24070008 */   addiu     $a3, $zero, 8
/* 27E40 80027240 3C118009 */  lui        $s1, %hi(D_8008FD10)
/* 27E44 80027244 8E31FD10 */  lw         $s1, %lo(D_8008FD10)($s1)
/* 27E48 80027248 3C018006 */  lui        $at, %hi(D_8005F0C0)
/* 27E4C 8002724C 240A000B */  addiu      $t2, $zero, 0xb
/* 27E50 80027250 0011C083 */  sra        $t8, $s1, 2
/* 27E54 80027254 3319000F */  andi       $t9, $t8, 0xf
/* 27E58 80027258 00390821 */  addu       $at, $at, $t9
/* 27E5C 8002725C 8031F0C0 */  lb         $s1, %lo(D_8005F0C0)($at)
/* 27E60 80027260 AFAA0010 */  sw         $t2, 0x10($sp)
/* 27E64 80027264 24040006 */  addiu      $a0, $zero, 6
/* 27E68 80027268 02512821 */  addu       $a1, $s2, $s1
/* 27E6C 8002726C 24A50036 */  addiu      $a1, $a1, 0x36
/* 27E70 80027270 2406001A */  addiu      $a2, $zero, 0x1a
/* 27E74 80027274 0C00A6D6 */  jal        drawMenues
/* 27E78 80027278 2407000E */   addiu     $a3, $zero, 0xe
/* 27E7C 8002727C 02512823 */  subu       $a1, $s2, $s1
/* 27E80 80027280 240B000B */  addiu      $t3, $zero, 0xb
/* 27E84 80027284 AFAB0010 */  sw         $t3, 0x10($sp)
/* 27E88 80027288 24A500FB */  addiu      $a1, $a1, 0xfb
/* 27E8C 8002728C 24040007 */  addiu      $a0, $zero, 7
/* 27E90 80027290 2406001A */  addiu      $a2, $zero, 0x1a
/* 27E94 80027294 0C00A6D6 */  jal        drawMenues
/* 27E98 80027298 2407000E */   addiu     $a3, $zero, 0xe
/* 27E9C 8002729C 26500079 */  addiu      $s0, $s2, 0x79
/* 27EA0 800272A0 240C000A */  addiu      $t4, $zero, 0xa
/* 27EA4 800272A4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 27EA8 800272A8 02002825 */  or         $a1, $s0, $zero
/* 27EAC 800272AC 24040014 */  addiu      $a0, $zero, 0x14
/* 27EB0 800272B0 24060035 */  addiu      $a2, $zero, 0x35
/* 27EB4 800272B4 0C00A6D6 */  jal        drawMenues
/* 27EB8 800272B8 24070008 */   addiu     $a3, $zero, 8
/* 27EBC 800272BC 240D000A */  addiu      $t5, $zero, 0xa
/* 27EC0 800272C0 AFAD0010 */  sw         $t5, 0x10($sp)
/* 27EC4 800272C4 24040014 */  addiu      $a0, $zero, 0x14
/* 27EC8 800272C8 02002825 */  or         $a1, $s0, $zero
/* 27ECC 800272CC 24060056 */  addiu      $a2, $zero, 0x56
/* 27ED0 800272D0 0C00A6D6 */  jal        drawMenues
/* 27ED4 800272D4 24070008 */   addiu     $a3, $zero, 8
/* 27ED8 800272D8 3C118008 */  lui        $s1, %hi(BrianMaxHP)
/* 27EDC 800272DC 26500080 */  addiu      $s0, $s2, 0x80
/* 27EE0 800272E0 240E000A */  addiu      $t6, $zero, 0xa
/* 27EE4 800272E4 9627BA86 */  lhu        $a3, %lo(BrianMaxHP)($s1)
/* 27EE8 800272E8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 27EEC 800272EC 02002825 */  or         $a1, $s0, $zero
/* 27EF0 800272F0 24040003 */  addiu      $a0, $zero, 3
/* 27EF4 800272F4 0C00AAD9 */  jal        drawSaveNumber_
/* 27EF8 800272F8 24060035 */   addiu     $a2, $zero, 0x35
/* 27EFC 800272FC 3C118008 */  lui        $s1, %hi(BrianMaxMP)
/* 27F00 80027300 240F000A */  addiu      $t7, $zero, 0xa
/* 27F04 80027304 9627BA8A */  lhu        $a3, %lo(BrianMaxMP)($s1)
/* 27F08 80027308 AFAF0010 */  sw         $t7, 0x10($sp)
/* 27F0C 8002730C 24040003 */  addiu      $a0, $zero, 3
/* 27F10 80027310 02002825 */  or         $a1, $s0, $zero
/* 27F14 80027314 0C00AAD9 */  jal        drawSaveNumber_
/* 27F18 80027318 24060056 */   addiu     $a2, $zero, 0x56
/* 27F1C 8002731C 3C118008 */  lui        $s1, %hi(BrianCurrentHP)
/* 27F20 80027320 26450064 */  addiu      $a1, $s2, 0x64
/* 27F24 80027324 2418000A */  addiu      $t8, $zero, 0xa
/* 27F28 80027328 9627BA84 */  lhu        $a3, %lo(BrianCurrentHP)($s1)
/* 27F2C 8002732C AFB80010 */  sw         $t8, 0x10($sp)
/* 27F30 80027330 AFA50034 */  sw         $a1, 0x34($sp)
/* 27F34 80027334 24040003 */  addiu      $a0, $zero, 3
/* 27F38 80027338 0C00AAD9 */  jal        drawSaveNumber_
/* 27F3C 8002733C 24060035 */   addiu     $a2, $zero, 0x35
/* 27F40 80027340 3C118008 */  lui        $s1, %hi(BrianCurrentMP)
/* 27F44 80027344 2419000A */  addiu      $t9, $zero, 0xa
/* 27F48 80027348 9627BA88 */  lhu        $a3, %lo(BrianCurrentMP)($s1)
/* 27F4C 8002734C AFB90010 */  sw         $t9, 0x10($sp)
/* 27F50 80027350 24040003 */  addiu      $a0, $zero, 3
/* 27F54 80027354 8FA50034 */  lw         $a1, 0x34($sp)
/* 27F58 80027358 0C00AAD9 */  jal        drawSaveNumber_
/* 27F5C 8002735C 24060056 */   addiu     $a2, $zero, 0x56
/* 27F60 80027360 3C118008 */  lui        $s1, %hi(BrianDefense)
/* 27F64 80027364 240A000A */  addiu      $t2, $zero, 0xa
/* 27F68 80027368 9627BA8E */  lhu        $a3, %lo(BrianDefense)($s1)
/* 27F6C 8002736C AFAA0010 */  sw         $t2, 0x10($sp)
/* 27F70 80027370 24040003 */  addiu      $a0, $zero, 3
/* 27F74 80027374 02002825 */  or         $a1, $s0, $zero
/* 27F78 80027378 0C00AAD9 */  jal        drawSaveNumber_
/* 27F7C 8002737C 24060077 */   addiu     $a2, $zero, 0x77
/* 27F80 80027380 3C118008 */  lui        $s1, %hi(BrianAgility)
/* 27F84 80027384 240B000A */  addiu      $t3, $zero, 0xa
/* 27F88 80027388 9627BA8C */  lhu        $a3, %lo(BrianAgility)($s1)
/* 27F8C 8002738C AFAB0010 */  sw         $t3, 0x10($sp)
/* 27F90 80027390 24040003 */  addiu      $a0, $zero, 3
/* 27F94 80027394 02002825 */  or         $a1, $s0, $zero
/* 27F98 80027398 0C00AAD9 */  jal        drawSaveNumber_
/* 27F9C 8002739C 24060098 */   addiu     $a2, $zero, 0x98
/* 27FA0 800273A0 3C0E8008 */  lui        $t6, %hi(HPXP_)
/* 27FA4 800273A4 95CEBAA8 */  lhu        $t6, %lo(HPXP_)($t6)
/* 27FA8 800273A8 3C0C8008 */  lui        $t4, %hi(HPLvl)
/* 27FAC 800273AC 918CBAB0 */  lbu        $t4, %lo(HPLvl)($t4)
/* 27FB0 800273B0 000E7880 */  sll        $t7, $t6, 2
/* 27FB4 800273B4 01EE7823 */  subu       $t7, $t7, $t6
/* 27FB8 800273B8 3C118005 */  lui        $s1, %hi(D_80053ECC)
/* 27FBC 800273BC 000F78C0 */  sll        $t7, $t7, 3
/* 27FC0 800273C0 000C6840 */  sll        $t5, $t4, 1
/* 27FC4 800273C4 022D8821 */  addu       $s1, $s1, $t5
/* 27FC8 800273C8 01EE7821 */  addu       $t7, $t7, $t6
/* 27FCC 800273CC 96313ECC */  lhu        $s1, %lo(D_80053ECC)($s1)
/* 27FD0 800273D0 000F7880 */  sll        $t7, $t7, 2
/* 27FD4 800273D4 265000DA */  addiu      $s0, $s2, 0xda
/* 27FD8 800273D8 01F1001A */  div        $zero, $t7, $s1
/* 27FDC 800273DC 00003812 */  mflo       $a3
/* 27FE0 800273E0 2418000A */  addiu      $t8, $zero, 0xa
/* 27FE4 800273E4 AFB80010 */  sw         $t8, 0x10($sp)
/* 27FE8 800273E8 02002825 */  or         $a1, $s0, $zero
/* 27FEC 800273EC 24040003 */  addiu      $a0, $zero, 3
/* 27FF0 800273F0 2406003B */  addiu      $a2, $zero, 0x3b
/* 27FF4 800273F4 16200002 */  bnez       $s1, .L80027400
/* 27FF8 800273F8 00000000 */   nop
/* 27FFC 800273FC 0007000D */  break      7
.L80027400:
/* 28000 80027400 2401FFFF */   addiu     $at, $zero, -1
/* 28004 80027404 16210004 */  bne        $s1, $at, .L80027418
/* 28008 80027408 3C018000 */   lui       $at, 0x8000
/* 2800C 8002740C 15E10002 */  bne        $t7, $at, .L80027418
/* 28010 80027410 00000000 */   nop
/* 28014 80027414 0006000D */  break      6
.L80027418:
/* 28018 80027418 0C00AAD9 */   jal       drawSaveNumber_
/* 2801C 8002741C 00000000 */   nop
/* 28020 80027420 3C198008 */  lui        $t9, %hi(MPLvl)
/* 28024 80027424 9339BAB1 */  lbu        $t9, %lo(MPLvl)($t9)
/* 28028 80027428 3C0C8008 */  lui        $t4, %hi(MPXP_)
/* 2802C 8002742C 958CBAAA */  lhu        $t4, %lo(MPXP_)($t4)
/* 28030 80027430 3C118005 */  lui        $s1, %hi(D_80053ECC)
/* 28034 80027434 00195040 */  sll        $t2, $t9, 1
/* 28038 80027438 022A8821 */  addu       $s1, $s1, $t2
/* 2803C 8002743C 96313ECC */  lhu        $s1, %lo(D_80053ECC)($s1)
/* 28040 80027440 000C6880 */  sll        $t5, $t4, 2
/* 28044 80027444 01AC6823 */  subu       $t5, $t5, $t4
/* 28048 80027448 000D68C0 */  sll        $t5, $t5, 3
/* 2804C 8002744C 01AC6821 */  addu       $t5, $t5, $t4
/* 28050 80027450 00115880 */  sll        $t3, $s1, 2
/* 28054 80027454 000D6880 */  sll        $t5, $t5, 2
/* 28058 80027458 01AB001A */  div        $zero, $t5, $t3
/* 2805C 8002745C 01608825 */  or         $s1, $t3, $zero
/* 28060 80027460 00003812 */  mflo       $a3
/* 28064 80027464 240E000A */  addiu      $t6, $zero, 0xa
/* 28068 80027468 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2806C 8002746C 24040003 */  addiu      $a0, $zero, 3
/* 28070 80027470 02002825 */  or         $a1, $s0, $zero
/* 28074 80027474 2406005C */  addiu      $a2, $zero, 0x5c
/* 28078 80027478 16200002 */  bnez       $s1, .L80027484
/* 2807C 8002747C 00000000 */   nop
/* 28080 80027480 0007000D */  break      7
.L80027484:
/* 28084 80027484 2401FFFF */   addiu     $at, $zero, -1
/* 28088 80027488 16210004 */  bne        $s1, $at, .L8002749C
/* 2808C 8002748C 3C018000 */   lui       $at, 0x8000
/* 28090 80027490 15A10002 */  bne        $t5, $at, .L8002749C
/* 28094 80027494 00000000 */   nop
/* 28098 80027498 0006000D */  break      6
.L8002749C:
/* 2809C 8002749C 0C00AAD9 */   jal       drawSaveNumber_
/* 280A0 800274A0 00000000 */   nop
/* 280A4 800274A4 3C0F8008 */  lui        $t7, %hi(DefLvl)
/* 280A8 800274A8 91EFBAB3 */  lbu        $t7, %lo(DefLvl)($t7)
/* 280AC 800274AC 3C0A8008 */  lui        $t2, %hi(DefenseXP_)
/* 280B0 800274B0 954ABAAE */  lhu        $t2, %lo(DefenseXP_)($t2)
/* 280B4 800274B4 3C118005 */  lui        $s1, %hi(D_80053ECC)
/* 280B8 800274B8 000FC040 */  sll        $t8, $t7, 1
/* 280BC 800274BC 02388821 */  addu       $s1, $s1, $t8
/* 280C0 800274C0 96313ECC */  lhu        $s1, %lo(D_80053ECC)($s1)
/* 280C4 800274C4 000A5880 */  sll        $t3, $t2, 2
/* 280C8 800274C8 016A5823 */  subu       $t3, $t3, $t2
/* 280CC 800274CC 000B58C0 */  sll        $t3, $t3, 3
/* 280D0 800274D0 016A5821 */  addu       $t3, $t3, $t2
/* 280D4 800274D4 0011C840 */  sll        $t9, $s1, 1
/* 280D8 800274D8 000B5880 */  sll        $t3, $t3, 2
/* 280DC 800274DC 0179001A */  div        $zero, $t3, $t9
/* 280E0 800274E0 03208825 */  or         $s1, $t9, $zero
/* 280E4 800274E4 00003812 */  mflo       $a3
/* 280E8 800274E8 240C000A */  addiu      $t4, $zero, 0xa
/* 280EC 800274EC AFAC0010 */  sw         $t4, 0x10($sp)
/* 280F0 800274F0 24040003 */  addiu      $a0, $zero, 3
/* 280F4 800274F4 02002825 */  or         $a1, $s0, $zero
/* 280F8 800274F8 2406007D */  addiu      $a2, $zero, 0x7d
/* 280FC 800274FC 16200002 */  bnez       $s1, .L80027508
/* 28100 80027500 00000000 */   nop
/* 28104 80027504 0007000D */  break      7
.L80027508:
/* 28108 80027508 2401FFFF */   addiu     $at, $zero, -1
/* 2810C 8002750C 16210004 */  bne        $s1, $at, .L80027520
/* 28110 80027510 3C018000 */   lui       $at, 0x8000
/* 28114 80027514 15610002 */  bne        $t3, $at, .L80027520
/* 28118 80027518 00000000 */   nop
/* 2811C 8002751C 0006000D */  break      6
.L80027520:
/* 28120 80027520 0C00AAD9 */   jal       drawSaveNumber_
/* 28124 80027524 00000000 */   nop
/* 28128 80027528 3C0F8008 */  lui        $t7, %hi(AgilityXP_)
/* 2812C 8002752C 95EFBAAC */  lhu        $t7, %lo(AgilityXP_)($t7)
/* 28130 80027530 3C0D8008 */  lui        $t5, %hi(AgilLvl)
/* 28134 80027534 91ADBAB2 */  lbu        $t5, %lo(AgilLvl)($t5)
/* 28138 80027538 000FC080 */  sll        $t8, $t7, 2
/* 2813C 8002753C 030FC023 */  subu       $t8, $t8, $t7
/* 28140 80027540 3C118005 */  lui        $s1, %hi(D_80053ECC)
/* 28144 80027544 0018C0C0 */  sll        $t8, $t8, 3
/* 28148 80027548 000D7040 */  sll        $t6, $t5, 1
/* 2814C 8002754C 022E8821 */  addu       $s1, $s1, $t6
/* 28150 80027550 030FC021 */  addu       $t8, $t8, $t7
/* 28154 80027554 96313ECC */  lhu        $s1, %lo(D_80053ECC)($s1)
/* 28158 80027558 0018C080 */  sll        $t8, $t8, 2
/* 2815C 8002755C 2419000A */  addiu      $t9, $zero, 0xa
/* 28160 80027560 0311001A */  div        $zero, $t8, $s1
/* 28164 80027564 00003812 */  mflo       $a3
/* 28168 80027568 AFB90010 */  sw         $t9, 0x10($sp)
/* 2816C 8002756C 24040003 */  addiu      $a0, $zero, 3
/* 28170 80027570 02002825 */  or         $a1, $s0, $zero
/* 28174 80027574 2406009E */  addiu      $a2, $zero, 0x9e
/* 28178 80027578 16200002 */  bnez       $s1, .L80027584
/* 2817C 8002757C 00000000 */   nop
/* 28180 80027580 0007000D */  break      7
.L80027584:
/* 28184 80027584 2401FFFF */   addiu     $at, $zero, -1
/* 28188 80027588 16210004 */  bne        $s1, $at, .L8002759C
/* 2818C 8002758C 3C018000 */   lui       $at, 0x8000
/* 28190 80027590 17010002 */  bne        $t8, $at, .L8002759C
/* 28194 80027594 00000000 */   nop
/* 28198 80027598 0006000D */  break      6
.L8002759C:
/* 2819C 8002759C 0C00AAD9 */   jal       drawSaveNumber_
/* 281A0 800275A0 00000000 */   nop
/* 281A4 800275A4 3C0A8008 */  lui        $t2, %hi(BrianCurrentHP)
/* 281A8 800275A8 954ABA84 */  lhu        $t2, %lo(BrianCurrentHP)($t2)
/* 281AC 800275AC 3C0B8008 */  lui        $t3, 0x8008
/* 281B0 800275B0 448A2000 */  mtc1       $t2, $f4
/* 281B4 800275B4 05410005 */  bgez       $t2, .L800275CC
/* 281B8 800275B8 46802020 */   cvt.s.w   $f0, $f4
/* 281BC 800275BC 3C014F80 */  lui        $at, 0x4f80
/* 281C0 800275C0 44813000 */  mtc1       $at, $f6
/* 281C4 800275C4 00000000 */  nop
/* 281C8 800275C8 46060000 */  add.s      $f0, $f0, $f6
.L800275CC:
/* 281CC 800275CC 956BBA86 */  lhu        $t3, -0x457a($t3)
/* 281D0 800275D0 448B4000 */  mtc1       $t3, $f8
/* 281D4 800275D4 05610005 */  bgez       $t3, .L800275EC
/* 281D8 800275D8 468042A0 */   cvt.s.w   $f10, $f8
/* 281DC 800275DC 3C014F80 */  lui        $at, 0x4f80
/* 281E0 800275E0 44818000 */  mtc1       $at, $f16
/* 281E4 800275E4 00000000 */  nop
/* 281E8 800275E8 46105280 */  add.s      $f10, $f10, $f16
.L800275EC:
/* 281EC 800275EC 460A0003 */  div.s      $f0, $f0, $f10
/* 281F0 800275F0 3C014248 */  lui        $at, 0x4248
/* 281F4 800275F4 44819000 */  mtc1       $at, $f18
/* 281F8 800275F8 240D0003 */  addiu      $t5, $zero, 3
/* 281FC 800275FC AFAD0010 */  sw         $t5, 0x10($sp)
/* 28200 80027600 24040033 */  addiu      $a0, $zero, 0x33
/* 28204 80027604 8FA50034 */  lw         $a1, 0x34($sp)
/* 28208 80027608 24060041 */  addiu      $a2, $zero, 0x41
/* 2820C 8002760C 46120002 */  mul.s      $f0, $f0, $f18
/* 28210 80027610 4600010D */  trunc.w.s  $f4, $f0
/* 28214 80027614 44072000 */  mfc1       $a3, $f4
/* 28218 80027618 0C00A6D6 */  jal        drawMenues
/* 2821C 8002761C 00000000 */   nop
/* 28220 80027620 3C0E8008 */  lui        $t6, %hi(BrianCurrentMP)
/* 28224 80027624 95CEBA88 */  lhu        $t6, %lo(BrianCurrentMP)($t6)
/* 28228 80027628 3C0F8008 */  lui        $t7, 0x8008
/* 2822C 8002762C 448E3000 */  mtc1       $t6, $f6
/* 28230 80027630 05C10005 */  bgez       $t6, .L80027648
/* 28234 80027634 46803020 */   cvt.s.w   $f0, $f6
/* 28238 80027638 3C014F80 */  lui        $at, 0x4f80
/* 2823C 8002763C 44814000 */  mtc1       $at, $f8
/* 28240 80027640 00000000 */  nop
/* 28244 80027644 46080000 */  add.s      $f0, $f0, $f8
.L80027648:
/* 28248 80027648 95EFBA8A */  lhu        $t7, -0x4576($t7)
/* 2824C 8002764C 448F8000 */  mtc1       $t7, $f16
/* 28250 80027650 05E10005 */  bgez       $t7, .L80027668
/* 28254 80027654 468082A0 */   cvt.s.w   $f10, $f16
/* 28258 80027658 3C014F80 */  lui        $at, 0x4f80
/* 2825C 8002765C 44819000 */  mtc1       $at, $f18
/* 28260 80027660 00000000 */  nop
/* 28264 80027664 46125280 */  add.s      $f10, $f10, $f18
.L80027668:
/* 28268 80027668 460A0003 */  div.s      $f0, $f0, $f10
/* 2826C 8002766C 3C014248 */  lui        $at, 0x4248
/* 28270 80027670 44812000 */  mtc1       $at, $f4
/* 28274 80027674 24190003 */  addiu      $t9, $zero, 3
/* 28278 80027678 AFB90010 */  sw         $t9, 0x10($sp)
/* 2827C 8002767C 24040033 */  addiu      $a0, $zero, 0x33
/* 28280 80027680 8FA50034 */  lw         $a1, 0x34($sp)
/* 28284 80027684 24060062 */  addiu      $a2, $zero, 0x62
/* 28288 80027688 46040002 */  mul.s      $f0, $f0, $f4
/* 2828C 8002768C 4600018D */  trunc.w.s  $f6, $f0
/* 28290 80027690 44073000 */  mfc1       $a3, $f6
/* 28294 80027694 0C00A6D6 */  jal        drawMenues
/* 28298 80027698 00000000 */   nop
/* 2829C 8002769C 3C0A8008 */  lui        $t2, %hi(BrianDefense)
/* 282A0 800276A0 954ABA8E */  lhu        $t2, %lo(BrianDefense)($t2)
/* 282A4 800276A4 3C014F80 */  lui        $at, 0x4f80
/* 282A8 800276A8 448A4000 */  mtc1       $t2, $f8
/* 282AC 800276AC 05410004 */  bgez       $t2, .L800276C0
/* 282B0 800276B0 46804020 */   cvt.s.w   $f0, $f8
/* 282B4 800276B4 44818000 */  mtc1       $at, $f16
/* 282B8 800276B8 00000000 */  nop
/* 282BC 800276BC 46100000 */  add.s      $f0, $f0, $f16
.L800276C0:
/* 282C0 800276C0 3C01437F */  lui        $at, 0x437f
/* 282C4 800276C4 44819000 */  mtc1       $at, $f18
/* 282C8 800276C8 3C014248 */  lui        $at, 0x4248
/* 282CC 800276CC 44815000 */  mtc1       $at, $f10
/* 282D0 800276D0 46120003 */  div.s      $f0, $f0, $f18
/* 282D4 800276D4 240C0003 */  addiu      $t4, $zero, 3
/* 282D8 800276D8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 282DC 800276DC 24040033 */  addiu      $a0, $zero, 0x33
/* 282E0 800276E0 8FA50034 */  lw         $a1, 0x34($sp)
/* 282E4 800276E4 24060083 */  addiu      $a2, $zero, 0x83
/* 282E8 800276E8 460A0002 */  mul.s      $f0, $f0, $f10
/* 282EC 800276EC 4600010D */  trunc.w.s  $f4, $f0
/* 282F0 800276F0 44072000 */  mfc1       $a3, $f4
/* 282F4 800276F4 0C00A6D6 */  jal        drawMenues
/* 282F8 800276F8 00000000 */   nop
/* 282FC 800276FC 3C0D8008 */  lui        $t5, %hi(BrianAgility)
/* 28300 80027700 95ADBA8C */  lhu        $t5, %lo(BrianAgility)($t5)
/* 28304 80027704 3C014F80 */  lui        $at, 0x4f80
/* 28308 80027708 448D3000 */  mtc1       $t5, $f6
/* 2830C 8002770C 05A10004 */  bgez       $t5, .L80027720
/* 28310 80027710 46803020 */   cvt.s.w   $f0, $f6
/* 28314 80027714 44814000 */  mtc1       $at, $f8
/* 28318 80027718 00000000 */  nop
/* 2831C 8002771C 46080000 */  add.s      $f0, $f0, $f8
.L80027720:
/* 28320 80027720 3C01437F */  lui        $at, 0x437f
/* 28324 80027724 44818000 */  mtc1       $at, $f16
/* 28328 80027728 3C014248 */  lui        $at, 0x4248
/* 2832C 8002772C 44819000 */  mtc1       $at, $f18
/* 28330 80027730 46100003 */  div.s      $f0, $f0, $f16
/* 28334 80027734 240F0003 */  addiu      $t7, $zero, 3
/* 28338 80027738 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2833C 8002773C 24040033 */  addiu      $a0, $zero, 0x33
/* 28340 80027740 8FA50034 */  lw         $a1, 0x34($sp)
/* 28344 80027744 240600A4 */  addiu      $a2, $zero, 0xa4
/* 28348 80027748 46120002 */  mul.s      $f0, $f0, $f18
/* 2834C 8002774C 4600028D */  trunc.w.s  $f10, $f0
/* 28350 80027750 44075000 */  mfc1       $a3, $f10
/* 28354 80027754 0C00A6D6 */  jal        drawMenues
/* 28358 80027758 00000000 */   nop
/* 2835C 8002775C 265000F6 */  addiu      $s0, $s2, 0xf6
/* 28360 80027760 2418000A */  addiu      $t8, $zero, 0xa
/* 28364 80027764 AFB80010 */  sw         $t8, 0x10($sp)
/* 28368 80027768 02002825 */  or         $a1, $s0, $zero
/* 2836C 8002776C 24040015 */  addiu      $a0, $zero, 0x15
/* 28370 80027770 2406003B */  addiu      $a2, $zero, 0x3b
/* 28374 80027774 0C00A6D6 */  jal        drawMenues
/* 28378 80027778 24070008 */   addiu     $a3, $zero, 8
/* 2837C 8002777C 2419000A */  addiu      $t9, $zero, 0xa
/* 28380 80027780 AFB90010 */  sw         $t9, 0x10($sp)
/* 28384 80027784 24040015 */  addiu      $a0, $zero, 0x15
/* 28388 80027788 02002825 */  or         $a1, $s0, $zero
/* 2838C 8002778C 2406005C */  addiu      $a2, $zero, 0x5c
/* 28390 80027790 0C00A6D6 */  jal        drawMenues
/* 28394 80027794 24070008 */   addiu     $a3, $zero, 8
/* 28398 80027798 240A000A */  addiu      $t2, $zero, 0xa
/* 2839C 8002779C AFAA0010 */  sw         $t2, 0x10($sp)
/* 283A0 800277A0 24040015 */  addiu      $a0, $zero, 0x15
/* 283A4 800277A4 02002825 */  or         $a1, $s0, $zero
/* 283A8 800277A8 2406007D */  addiu      $a2, $zero, 0x7d
/* 283AC 800277AC 0C00A6D6 */  jal        drawMenues
/* 283B0 800277B0 24070008 */   addiu     $a3, $zero, 8
/* 283B4 800277B4 240B000A */  addiu      $t3, $zero, 0xa
/* 283B8 800277B8 AFAB0010 */  sw         $t3, 0x10($sp)
/* 283BC 800277BC 24040015 */  addiu      $a0, $zero, 0x15
/* 283C0 800277C0 02002825 */  or         $a1, $s0, $zero
/* 283C4 800277C4 2406009E */  addiu      $a2, $zero, 0x9e
/* 283C8 800277C8 0C00A6D6 */  jal        drawMenues
/* 283CC 800277CC 24070008 */   addiu     $a3, $zero, 8
/* 283D0 800277D0 240C0012 */  addiu      $t4, $zero, 0x12
/* 283D4 800277D4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 283D8 800277D8 2404001A */  addiu      $a0, $zero, 0x1a
/* 283DC 800277DC 26450087 */  addiu      $a1, $s2, 0x87
/* 283E0 800277E0 24060019 */  addiu      $a2, $zero, 0x19
/* 283E4 800277E4 0C00A6D6 */  jal        drawMenues
/* 283E8 800277E8 24070034 */   addiu     $a3, $zero, 0x34
/* 283EC 800277EC 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 283F0 800277F0 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 283F4 800277F4 95070000 */  lhu        $a3, ($t0)
/* 283F8 800277F8 3C028009 */  lui        $v0, %hi(JoystickX)
/* 283FC 800277FC 30ED2000 */  andi       $t5, $a3, 0x2000
/* 28400 80027800 55A00026 */  bnel       $t5, $zero, .L8002789C
/* 28404 80027804 8FBF002C */   lw        $ra, 0x2c($sp)
/* 28408 80027808 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 2840C 8002780C 3C038009 */  lui        $v1, %hi(ButtonPressedFrame)
/* 28410 80027810 240F0140 */  addiu      $t7, $zero, 0x140
/* 28414 80027814 28410015 */  slti       $at, $v0, 0x15
/* 28418 80027818 10200006 */  beqz       $at, .L80027834
/* 2841C 8002781C 34F82000 */   ori       $t8, $a3, 0x2000
/* 28420 80027820 94632876 */  lhu        $v1, %lo(ButtonPressedFrame)($v1)
/* 28424 80027824 2841FFEC */  slti       $at, $v0, -0x14
/* 28428 80027828 306E0010 */  andi       $t6, $v1, 0x10
/* 2842C 8002782C 11C0000C */  beqz       $t6, .L80027860
/* 28430 80027830 00000000 */   nop
.L80027834:
/* 28434 80027834 3C018009 */  lui        $at, %hi(UNK_MenuScrollCounter)
/* 28438 80027838 AC2FFD04 */  sw         $t7, %lo(UNK_MenuScrollCounter)($at)
/* 2843C 8002783C 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 28440 80027840 AC20FD08 */  sw         $zero, %lo(D_8008FD08)($at)
/* 28444 80027844 A5180000 */  sh         $t8, ($t0)
/* 28448 80027848 00002025 */  or         $a0, $zero, $zero
/* 2844C 8002784C 00002825 */  or         $a1, $zero, $zero
/* 28450 80027850 0C009A35 */  jal        func_800268D4
/* 28454 80027854 240600FF */   addiu     $a2, $zero, 0xff
/* 28458 80027858 10000010 */  b          .L8002789C
/* 2845C 8002785C 8FBF002C */   lw        $ra, 0x2c($sp)
.L80027860:
/* 28460 80027860 14200002 */  bnez       $at, .L8002786C
/* 28464 80027864 30792000 */   andi      $t9, $v1, 0x2000
/* 28468 80027868 1320000B */  beqz       $t9, .L80027898
.L8002786C:
/* 2846C 8002786C 3C018009 */   lui       $at, %hi(UNK_MenuScrollCounter)
/* 28470 80027870 AC20FD04 */  sw         $zero, %lo(UNK_MenuScrollCounter)($at)
/* 28474 80027874 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 28478 80027878 240AFEC0 */  addiu      $t2, $zero, -0x140
/* 2847C 8002787C AC2AFD08 */  sw         $t2, %lo(D_8008FD08)($at)
/* 28480 80027880 34EB3000 */  ori        $t3, $a3, 0x3000
/* 28484 80027884 A50B0000 */  sh         $t3, ($t0)
/* 28488 80027888 00002025 */  or         $a0, $zero, $zero
/* 2848C 8002788C 00002825 */  or         $a1, $zero, $zero
/* 28490 80027890 0C009A35 */  jal        func_800268D4
/* 28494 80027894 240600FF */   addiu     $a2, $zero, 0xff
.L80027898:
/* 28498 80027898 8FBF002C */  lw         $ra, 0x2c($sp)
.L8002789C:
/* 2849C 8002789C 8FB00020 */  lw         $s0, 0x20($sp)
/* 284A0 800278A0 8FB10024 */  lw         $s1, 0x24($sp)
/* 284A4 800278A4 8FB20028 */  lw         $s2, 0x28($sp)
/* 284A8 800278A8 03E00008 */  jr         $ra
/* 284AC 800278AC 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_800278B0
/* 284B0 800278B0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 284B4 800278B4 3C028006 */  lui        $v0, %hi(MessageSliderPos)
/* 284B8 800278B8 2442FA00 */  addiu      $v0, $v0, %lo(MessageSliderPos)
/* 284BC 800278BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 284C0 800278C0 AFA40048 */  sw         $a0, 0x48($sp)
/* 284C4 800278C4 3C0F8006 */  lui        $t7, %hi(D_8005F8F0)
/* 284C8 800278C8 25EFF8F0 */  addiu      $t7, $t7, %lo(D_8005F8F0)
/* 284CC 800278CC 99E10002 */  lwr        $at, 2($t7)
/* 284D0 800278D0 27AE0038 */  addiu      $t6, $sp, 0x38
/* 284D4 800278D4 240D0004 */  addiu      $t5, $zero, 4
/* 284D8 800278D8 B9C10002 */  swr        $at, 2($t6)
/* 284DC 800278DC 804C0000 */  lb         $t4, ($v0)
/* 284E0 800278E0 8FA50048 */  lw         $a1, 0x48($sp)
/* 284E4 800278E4 2418006C */  addiu      $t8, $zero, 0x6c
/* 284E8 800278E8 01ACC823 */  subu       $t9, $t5, $t4
/* 284EC 800278EC A0590000 */  sb         $t9, ($v0)
/* 284F0 800278F0 AFB80010 */  sw         $t8, 0x10($sp)
/* 284F4 800278F4 00002025 */  or         $a0, $zero, $zero
/* 284F8 800278F8 2406001E */  addiu      $a2, $zero, 0x1e
/* 284FC 800278FC 240700F0 */  addiu      $a3, $zero, 0xf0
/* 28500 80027900 0C00A6D6 */  jal        drawMenues
/* 28504 80027904 24A50028 */   addiu     $a1, $a1, 0x28
/* 28508 80027908 8FA50048 */  lw         $a1, 0x48($sp)
/* 2850C 8002790C 240E0003 */  addiu      $t6, $zero, 3
/* 28510 80027910 AFAE0010 */  sw         $t6, 0x10($sp)
/* 28514 80027914 24040037 */  addiu      $a0, $zero, 0x37
/* 28518 80027918 2406008B */  addiu      $a2, $zero, 0x8b
/* 2851C 8002791C 240700F0 */  addiu      $a3, $zero, 0xf0
/* 28520 80027920 0C00A6D6 */  jal        drawMenues
/* 28524 80027924 24A5002B */   addiu     $a1, $a1, 0x2b
/* 28528 80027928 8FA50048 */  lw         $a1, 0x48($sp)
/* 2852C 8002792C 240F0068 */  addiu      $t7, $zero, 0x68
/* 28530 80027930 AFAF0010 */  sw         $t7, 0x10($sp)
/* 28534 80027934 24040037 */  addiu      $a0, $zero, 0x37
/* 28538 80027938 24060024 */  addiu      $a2, $zero, 0x24
/* 2853C 8002793C 24070002 */  addiu      $a3, $zero, 2
/* 28540 80027940 0C00A6D6 */  jal        drawMenues
/* 28544 80027944 24A50119 */   addiu     $a1, $a1, 0x119
/* 28548 80027948 8FA50048 */  lw         $a1, 0x48($sp)
/* 2854C 8002794C 240B0001 */  addiu      $t3, $zero, 1
/* 28550 80027950 AFAB0010 */  sw         $t3, 0x10($sp)
/* 28554 80027954 24A50027 */  addiu      $a1, $a1, 0x27
/* 28558 80027958 AFA50030 */  sw         $a1, 0x30($sp)
/* 2855C 8002795C 24040037 */  addiu      $a0, $zero, 0x37
/* 28560 80027960 2406001D */  addiu      $a2, $zero, 0x1d
/* 28564 80027964 0C00A6D6 */  jal        drawMenues
/* 28568 80027968 240700F2 */   addiu     $a3, $zero, 0xf2
/* 2856C 8002796C 240D0001 */  addiu      $t5, $zero, 1
/* 28570 80027970 AFAD0010 */  sw         $t5, 0x10($sp)
/* 28574 80027974 24040037 */  addiu      $a0, $zero, 0x37
/* 28578 80027978 8FA50030 */  lw         $a1, 0x30($sp)
/* 2857C 8002797C 2406008A */  addiu      $a2, $zero, 0x8a
/* 28580 80027980 0C00A6D6 */  jal        drawMenues
/* 28584 80027984 240700F2 */   addiu     $a3, $zero, 0xf2
/* 28588 80027988 240C006D */  addiu      $t4, $zero, 0x6d
/* 2858C 8002798C AFAC0010 */  sw         $t4, 0x10($sp)
/* 28590 80027990 24040037 */  addiu      $a0, $zero, 0x37
/* 28594 80027994 8FA50030 */  lw         $a1, 0x30($sp)
/* 28598 80027998 2406001E */  addiu      $a2, $zero, 0x1e
/* 2859C 8002799C 0C00A6D6 */  jal        drawMenues
/* 285A0 800279A0 24070001 */   addiu     $a3, $zero, 1
/* 285A4 800279A4 8FA50048 */  lw         $a1, 0x48($sp)
/* 285A8 800279A8 2419006D */  addiu      $t9, $zero, 0x6d
/* 285AC 800279AC AFB90010 */  sw         $t9, 0x10($sp)
/* 285B0 800279B0 24040037 */  addiu      $a0, $zero, 0x37
/* 285B4 800279B4 2406001E */  addiu      $a2, $zero, 0x1e
/* 285B8 800279B8 24070001 */  addiu      $a3, $zero, 1
/* 285BC 800279BC 0C00A6D6 */  jal        drawMenues
/* 285C0 800279C0 24A50118 */   addiu     $a1, $a1, 0x118
/* 285C4 800279C4 8FA50048 */  lw         $a1, 0x48($sp)
/* 285C8 800279C8 24180001 */  addiu      $t8, $zero, 1
/* 285CC 800279CC AFB80010 */  sw         $t8, 0x10($sp)
/* 285D0 800279D0 24A50029 */  addiu      $a1, $a1, 0x29
/* 285D4 800279D4 AFA50030 */  sw         $a1, 0x30($sp)
/* 285D8 800279D8 24040038 */  addiu      $a0, $zero, 0x38
/* 285DC 800279DC 2406001F */  addiu      $a2, $zero, 0x1f
/* 285E0 800279E0 0C00A6D6 */  jal        drawMenues
/* 285E4 800279E4 240700ED */   addiu     $a3, $zero, 0xed
/* 285E8 800279E8 240E0068 */  addiu      $t6, $zero, 0x68
/* 285EC 800279EC AFAE0010 */  sw         $t6, 0x10($sp)
/* 285F0 800279F0 24040038 */  addiu      $a0, $zero, 0x38
/* 285F4 800279F4 8FA50030 */  lw         $a1, 0x30($sp)
/* 285F8 800279F8 24060020 */  addiu      $a2, $zero, 0x20
/* 285FC 800279FC 0C00A6D6 */  jal        drawMenues
/* 28600 80027A00 24070001 */   addiu     $a3, $zero, 1
/* 28604 80027A04 240F0001 */  addiu      $t7, $zero, 1
/* 28608 80027A08 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2860C 80027A0C 24040039 */  addiu      $a0, $zero, 0x39
/* 28610 80027A10 8FA50030 */  lw         $a1, 0x30($sp)
/* 28614 80027A14 24060088 */  addiu      $a2, $zero, 0x88
/* 28618 80027A18 0C00A6D6 */  jal        drawMenues
/* 2861C 80027A1C 240700EE */   addiu     $a3, $zero, 0xee
/* 28620 80027A20 8FA50048 */  lw         $a1, 0x48($sp)
/* 28624 80027A24 240B0069 */  addiu      $t3, $zero, 0x69
/* 28628 80027A28 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2862C 80027A2C 24040039 */  addiu      $a0, $zero, 0x39
/* 28630 80027A30 2406001F */  addiu      $a2, $zero, 0x1f
/* 28634 80027A34 24070001 */  addiu      $a3, $zero, 1
/* 28638 80027A38 0C00A6D6 */  jal        drawMenues
/* 2863C 80027A3C 24A50116 */   addiu     $a1, $a1, 0x116
/* 28640 80027A40 8FA50048 */  lw         $a1, 0x48($sp)
/* 28644 80027A44 240D006C */  addiu      $t5, $zero, 0x6c
/* 28648 80027A48 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2864C 80027A4C 2404003C */  addiu      $a0, $zero, 0x3c
/* 28650 80027A50 2406001E */  addiu      $a2, $zero, 0x1e
/* 28654 80027A54 24070015 */  addiu      $a3, $zero, 0x15
/* 28658 80027A58 0C00A6D6 */  jal        drawMenues
/* 2865C 80027A5C 24A5003A */   addiu     $a1, $a1, 0x3a
/* 28660 80027A60 8FA50048 */  lw         $a1, 0x48($sp)
/* 28664 80027A64 240C0002 */  addiu      $t4, $zero, 2
/* 28668 80027A68 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2866C 80027A6C 2404003D */  addiu      $a0, $zero, 0x3d
/* 28670 80027A70 24060056 */  addiu      $a2, $zero, 0x56
/* 28674 80027A74 240700A7 */  addiu      $a3, $zero, 0xa7
/* 28678 80027A78 0C00A6D6 */  jal        drawMenues
/* 2867C 80027A7C 24A5005D */   addiu     $a1, $a1, 0x5d
/* 28680 80027A80 8FA50048 */  lw         $a1, 0x48($sp)
/* 28684 80027A84 24190007 */  addiu      $t9, $zero, 7
/* 28688 80027A88 AFB90010 */  sw         $t9, 0x10($sp)
/* 2868C 80027A8C 24A5008D */  addiu      $a1, $a1, 0x8d
/* 28690 80027A90 AFA50030 */  sw         $a1, 0x30($sp)
/* 28694 80027A94 24040024 */  addiu      $a0, $zero, 0x24
/* 28698 80027A98 2406003E */  addiu      $a2, $zero, 0x3e
/* 2869C 80027A9C 0C00A6D6 */  jal        drawMenues
/* 286A0 80027AA0 24070054 */   addiu     $a3, $zero, 0x54
/* 286A4 80027AA4 24180007 */  addiu      $t8, $zero, 7
/* 286A8 80027AA8 8FA50030 */  lw         $a1, 0x30($sp)
/* 286AC 80027AAC AFB80010 */  sw         $t8, 0x10($sp)
/* 286B0 80027AB0 24040024 */  addiu      $a0, $zero, 0x24
/* 286B4 80027AB4 2406006C */  addiu      $a2, $zero, 0x6c
/* 286B8 80027AB8 0C00A6D6 */  jal        drawMenues
/* 286BC 80027ABC 24070054 */   addiu     $a3, $zero, 0x54
/* 286C0 80027AC0 8FA50048 */  lw         $a1, 0x48($sp)
/* 286C4 80027AC4 240E0008 */  addiu      $t6, $zero, 8
/* 286C8 80027AC8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 286CC 80027ACC 24A500EA */  addiu      $a1, $a1, 0xea
/* 286D0 80027AD0 AFA50030 */  sw         $a1, 0x30($sp)
/* 286D4 80027AD4 24040029 */  addiu      $a0, $zero, 0x29
/* 286D8 80027AD8 2406003A */  addiu      $a2, $zero, 0x3a
/* 286DC 80027ADC 0C00A6D6 */  jal        drawMenues
/* 286E0 80027AE0 24070018 */   addiu     $a3, $zero, 0x18
/* 286E4 80027AE4 8FA50048 */  lw         $a1, 0x48($sp)
/* 286E8 80027AE8 240F000B */  addiu      $t7, $zero, 0xb
/* 286EC 80027AEC AFAF0010 */  sw         $t7, 0x10($sp)
/* 286F0 80027AF0 24A5006C */  addiu      $a1, $a1, 0x6c
/* 286F4 80027AF4 AFA5002C */  sw         $a1, 0x2c($sp)
/* 286F8 80027AF8 2404002A */  addiu      $a0, $zero, 0x2a
/* 286FC 80027AFC 2406003D */  addiu      $a2, $zero, 0x3d
/* 28700 80027B00 0C00A6D6 */  jal        drawMenues
/* 28704 80027B04 24070014 */   addiu     $a3, $zero, 0x14
/* 28708 80027B08 240B0008 */  addiu      $t3, $zero, 8
/* 2870C 80027B0C AFAB0010 */  sw         $t3, 0x10($sp)
/* 28710 80027B10 24040029 */  addiu      $a0, $zero, 0x29
/* 28714 80027B14 8FA50030 */  lw         $a1, 0x30($sp)
/* 28718 80027B18 2406006B */  addiu      $a2, $zero, 0x6b
/* 2871C 80027B1C 0C00A6D6 */  jal        drawMenues
/* 28720 80027B20 24070018 */   addiu     $a3, $zero, 0x18
/* 28724 80027B24 240D000B */  addiu      $t5, $zero, 0xb
/* 28728 80027B28 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2872C 80027B2C 2404002A */  addiu      $a0, $zero, 0x2a
/* 28730 80027B30 8FA5002C */  lw         $a1, 0x2c($sp)
/* 28734 80027B34 24060068 */  addiu      $a2, $zero, 0x68
/* 28738 80027B38 0C00A6D6 */  jal        drawMenues
/* 2873C 80027B3C 24070014 */   addiu     $a3, $zero, 0x14
/* 28740 80027B40 8FA50048 */  lw         $a1, 0x48($sp)
/* 28744 80027B44 240C000C */  addiu      $t4, $zero, 0xc
/* 28748 80027B48 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2874C 80027B4C 24040022 */  addiu      $a0, $zero, 0x22
/* 28750 80027B50 2406003B */  addiu      $a2, $zero, 0x3b
/* 28754 80027B54 24070034 */  addiu      $a3, $zero, 0x34
/* 28758 80027B58 0C00A6D6 */  jal        drawMenues
/* 2875C 80027B5C 24A50031 */   addiu     $a1, $a1, 0x31
/* 28760 80027B60 8FA50048 */  lw         $a1, 0x48($sp)
/* 28764 80027B64 24190010 */  addiu      $t9, $zero, 0x10
/* 28768 80027B68 AFB90010 */  sw         $t9, 0x10($sp)
/* 2876C 80027B6C 24040023 */  addiu      $a0, $zero, 0x23
/* 28770 80027B70 24060065 */  addiu      $a2, $zero, 0x65
/* 28774 80027B74 2407002C */  addiu      $a3, $zero, 0x2c
/* 28778 80027B78 0C00A6D6 */  jal        drawMenues
/* 2877C 80027B7C 24A50035 */   addiu     $a1, $a1, 0x35
/* 28780 80027B80 8FA50048 */  lw         $a1, 0x48($sp)
/* 28784 80027B84 24180007 */  addiu      $t8, $zero, 7
/* 28788 80027B88 AFB80010 */  sw         $t8, 0x10($sp)
/* 2878C 80027B8C 24040005 */  addiu      $a0, $zero, 5
/* 28790 80027B90 2406001C */  addiu      $a2, $zero, 0x1c
/* 28794 80027B94 24070007 */  addiu      $a3, $zero, 7
/* 28798 80027B98 0C00A6D6 */  jal        drawMenues
/* 2879C 80027B9C 24A50045 */   addiu     $a1, $a1, 0x45
/* 287A0 80027BA0 8FA50048 */  lw         $a1, 0x48($sp)
/* 287A4 80027BA4 240E0007 */  addiu      $t6, $zero, 7
/* 287A8 80027BA8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 287AC 80027BAC 24040005 */  addiu      $a0, $zero, 5
/* 287B0 80027BB0 2406001C */  addiu      $a2, $zero, 0x1c
/* 287B4 80027BB4 24070007 */  addiu      $a3, $zero, 7
/* 287B8 80027BB8 0C00A6D6 */  jal        drawMenues
/* 287BC 80027BBC 24A500F3 */   addiu     $a1, $a1, 0xf3
/* 287C0 80027BC0 3C098009 */  lui        $t1, %hi(D_8008FD10)
/* 287C4 80027BC4 8D29FD10 */  lw         $t1, %lo(D_8008FD10)($t1)
/* 287C8 80027BC8 3C018006 */  lui        $at, %hi(D_8005F0C0)
/* 287CC 80027BCC 8FAD0048 */  lw         $t5, 0x48($sp)
/* 287D0 80027BD0 00097883 */  sra        $t7, $t1, 2
/* 287D4 80027BD4 31EB000F */  andi       $t3, $t7, 0xf
/* 287D8 80027BD8 002B0821 */  addu       $at, $at, $t3
/* 287DC 80027BDC 8029F0C0 */  lb         $t1, %lo(D_8005F0C0)($at)
/* 287E0 80027BE0 240C000B */  addiu      $t4, $zero, 0xb
/* 287E4 80027BE4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 287E8 80027BE8 01A92821 */  addu       $a1, $t5, $t1
/* 287EC 80027BEC 24A50036 */  addiu      $a1, $a1, 0x36
/* 287F0 80027BF0 24040006 */  addiu      $a0, $zero, 6
/* 287F4 80027BF4 2406001A */  addiu      $a2, $zero, 0x1a
/* 287F8 80027BF8 2407000E */  addiu      $a3, $zero, 0xe
/* 287FC 80027BFC 0C00A6D6 */  jal        drawMenues
/* 28800 80027C00 AFA90044 */   sw        $t1, 0x44($sp)
/* 28804 80027C04 8FA90044 */  lw         $t1, 0x44($sp)
/* 28808 80027C08 8FB90048 */  lw         $t9, 0x48($sp)
/* 2880C 80027C0C 2418000B */  addiu      $t8, $zero, 0xb
/* 28810 80027C10 AFB80010 */  sw         $t8, 0x10($sp)
/* 28814 80027C14 03292823 */  subu       $a1, $t9, $t1
/* 28818 80027C18 24A500FB */  addiu      $a1, $a1, 0xfb
/* 2881C 80027C1C 24040007 */  addiu      $a0, $zero, 7
/* 28820 80027C20 2406001A */  addiu      $a2, $zero, 0x1a
/* 28824 80027C24 0C00A6D6 */  jal        drawMenues
/* 28828 80027C28 2407000E */   addiu     $a3, $zero, 0xe
/* 2882C 80027C2C 8FA50048 */  lw         $a1, 0x48($sp)
/* 28830 80027C30 240E0010 */  addiu      $t6, $zero, 0x10
/* 28834 80027C34 AFAE0010 */  sw         $t6, 0x10($sp)
/* 28838 80027C38 24040021 */  addiu      $a0, $zero, 0x21
/* 2883C 80027C3C 2406001A */  addiu      $a2, $zero, 0x1a
/* 28840 80027C40 24070050 */  addiu      $a3, $zero, 0x50
/* 28844 80027C44 0C00A6D6 */  jal        drawMenues
/* 28848 80027C48 24A50077 */   addiu     $a1, $a1, 0x77
/* 2884C 80027C4C 8FA50048 */  lw         $a1, 0x48($sp)
/* 28850 80027C50 240F0003 */  addiu      $t7, $zero, 3
/* 28854 80027C54 AFAF0010 */  sw         $t7, 0x10($sp)
/* 28858 80027C58 24A5008E */  addiu      $a1, $a1, 0x8e
/* 2885C 80027C5C AFA50030 */  sw         $a1, 0x30($sp)
/* 28860 80027C60 24040025 */  addiu      $a0, $zero, 0x25
/* 28864 80027C64 2406003F */  addiu      $a2, $zero, 0x3f
/* 28868 80027C68 0C00A6D6 */  jal        drawMenues
/* 2886C 80027C6C 24070050 */   addiu     $a3, $zero, 0x50
/* 28870 80027C70 240B0003 */  addiu      $t3, $zero, 3
/* 28874 80027C74 8FA50030 */  lw         $a1, 0x30($sp)
/* 28878 80027C78 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2887C 80027C7C 24040025 */  addiu      $a0, $zero, 0x25
/* 28880 80027C80 2406006D */  addiu      $a2, $zero, 0x6d
/* 28884 80027C84 0C00A6D6 */  jal        drawMenues
/* 28888 80027C88 24070050 */   addiu     $a3, $zero, 0x50
/* 2888C 80027C8C 8FA50048 */  lw         $a1, 0x48($sp)
/* 28890 80027C90 240D000B */  addiu      $t5, $zero, 0xb
/* 28894 80027C94 AFAD0010 */  sw         $t5, 0x10($sp)
/* 28898 80027C98 24A500B3 */  addiu      $a1, $a1, 0xb3
/* 2889C 80027C9C AFA50030 */  sw         $a1, 0x30($sp)
/* 288A0 80027CA0 24040027 */  addiu      $a0, $zero, 0x27
/* 288A4 80027CA4 24060039 */  addiu      $a2, $zero, 0x39
/* 288A8 80027CA8 0C00A6D6 */  jal        drawMenues
/* 288AC 80027CAC 24070008 */   addiu     $a3, $zero, 8
/* 288B0 80027CB0 240C000B */  addiu      $t4, $zero, 0xb
/* 288B4 80027CB4 8FA50030 */  lw         $a1, 0x30($sp)
/* 288B8 80027CB8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 288BC 80027CBC 24040027 */  addiu      $a0, $zero, 0x27
/* 288C0 80027CC0 24060067 */  addiu      $a2, $zero, 0x67
/* 288C4 80027CC4 0C00A6D6 */  jal        drawMenues
/* 288C8 80027CC8 24070008 */   addiu     $a3, $zero, 8
/* 288CC 80027CCC 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 288D0 80027CD0 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 288D4 80027CD4 95070000 */  lhu        $a3, ($t0)
/* 288D8 80027CD8 3C0F8006 */  lui        $t7, %hi(D_8005F914)
/* 288DC 80027CDC 25EFF914 */  addiu      $t7, $t7, %lo(D_8005F914)
/* 288E0 80027CE0 30F90200 */  andi       $t9, $a3, 0x200
/* 288E4 80027CE4 13200031 */  beqz       $t9, .L80027DAC
/* 288E8 80027CE8 3C188006 */   lui       $t8, 0x8006
/* 288EC 80027CEC 30E20100 */  andi       $v0, $a3, 0x100
/* 288F0 80027CF0 10400006 */  beqz       $v0, .L80027D0C
/* 288F4 80027CF4 3C188006 */   lui       $t8, 0x8006
/* 288F8 80027CF8 24010100 */  addiu      $at, $zero, 0x100
/* 288FC 80027CFC 10410017 */  beq        $v0, $at, .L80027D5C
/* 28900 80027D00 3C188006 */   lui       $t8, %hi(BGMSliderPos)
/* 28904 80027D04 1000004C */  b          .L80027E38
/* 28908 80027D08 30F82000 */   andi      $t8, $a3, 0x2000
.L80027D0C:
/* 2890C 80027D0C 8318F010 */  lb         $t8, %lo(BGMSliderPos)($t8)
/* 28910 80027D10 3C0F8006 */  lui        $t7, %hi(D_8005F914)
/* 28914 80027D14 25EFF914 */  addiu      $t7, $t7, %lo(D_8005F914)
/* 28918 80027D18 00187080 */  sll        $t6, $t8, 2
/* 2891C 80027D1C 01CF1821 */  addu       $v1, $t6, $t7
/* 28920 80027D20 846B0002 */  lh         $t3, 2($v1)
/* 28924 80027D24 846D0000 */  lh         $t5, ($v1)
/* 28928 80027D28 8FAC0048 */  lw         $t4, 0x48($sp)
/* 2892C 80027D2C 03AB2021 */  addu       $a0, $sp, $t3
/* 28930 80027D30 90840038 */  lbu        $a0, 0x38($a0)
/* 28934 80027D34 2419000B */  addiu      $t9, $zero, 0xb
/* 28938 80027D38 AFB90010 */  sw         $t9, 0x10($sp)
/* 2893C 80027D3C 24060067 */  addiu      $a2, $zero, 0x67
/* 28940 80027D40 24070008 */  addiu      $a3, $zero, 8
/* 28944 80027D44 0C00A6D6 */  jal        drawMenues
/* 28948 80027D48 01AC2821 */   addu      $a1, $t5, $t4
/* 2894C 80027D4C 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 28950 80027D50 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 28954 80027D54 10000037 */  b          .L80027E34
/* 28958 80027D58 95070000 */   lhu       $a3, ($t0)
.L80027D5C:
/* 2895C 80027D5C 8318FA00 */  lb         $t8, -0x600($t8)
/* 28960 80027D60 3C0F8006 */  lui        $t7, %hi(D_8005F8F4)
/* 28964 80027D64 25EFF8F4 */  addiu      $t7, $t7, %lo(D_8005F8F4)
/* 28968 80027D68 00187080 */  sll        $t6, $t8, 2
/* 2896C 80027D6C 01CF1821 */  addu       $v1, $t6, $t7
/* 28970 80027D70 846B0002 */  lh         $t3, 2($v1)
/* 28974 80027D74 846D0000 */  lh         $t5, ($v1)
/* 28978 80027D78 8FAC0048 */  lw         $t4, 0x48($sp)
/* 2897C 80027D7C 03AB2021 */  addu       $a0, $sp, $t3
/* 28980 80027D80 90840038 */  lbu        $a0, 0x38($a0)
/* 28984 80027D84 2419000B */  addiu      $t9, $zero, 0xb
/* 28988 80027D88 AFB90010 */  sw         $t9, 0x10($sp)
/* 2898C 80027D8C 24060039 */  addiu      $a2, $zero, 0x39
/* 28990 80027D90 24070008 */  addiu      $a3, $zero, 8
/* 28994 80027D94 0C00A6D6 */  jal        drawMenues
/* 28998 80027D98 01AC2821 */   addu      $a1, $t5, $t4
/* 2899C 80027D9C 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 289A0 80027DA0 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 289A4 80027DA4 10000023 */  b          .L80027E34
/* 289A8 80027DA8 95070000 */   lhu       $a3, ($t0)
.L80027DAC:
/* 289AC 80027DAC 8318F010 */  lb         $t8, -0xff0($t8)
/* 289B0 80027DB0 8FAC0048 */  lw         $t4, 0x48($sp)
/* 289B4 80027DB4 2419000B */  addiu      $t9, $zero, 0xb
/* 289B8 80027DB8 00187080 */  sll        $t6, $t8, 2
/* 289BC 80027DBC 01CF1821 */  addu       $v1, $t6, $t7
/* 289C0 80027DC0 846B0002 */  lh         $t3, 2($v1)
/* 289C4 80027DC4 846D0000 */  lh         $t5, ($v1)
/* 289C8 80027DC8 24060067 */  addiu      $a2, $zero, 0x67
/* 289CC 80027DCC 03AB2021 */  addu       $a0, $sp, $t3
/* 289D0 80027DD0 90840038 */  lbu        $a0, 0x38($a0)
/* 289D4 80027DD4 AFB90010 */  sw         $t9, 0x10($sp)
/* 289D8 80027DD8 24070008 */  addiu      $a3, $zero, 8
/* 289DC 80027DDC 0C00A6D6 */  jal        drawMenues
/* 289E0 80027DE0 01AC2821 */   addu      $a1, $t5, $t4
/* 289E4 80027DE4 3C188006 */  lui        $t8, %hi(MessageSliderPos)
/* 289E8 80027DE8 8318FA00 */  lb         $t8, %lo(MessageSliderPos)($t8)
/* 289EC 80027DEC 3C0F8006 */  lui        $t7, %hi(D_8005F8F4)
/* 289F0 80027DF0 25EFF8F4 */  addiu      $t7, $t7, %lo(D_8005F8F4)
/* 289F4 80027DF4 00187080 */  sll        $t6, $t8, 2
/* 289F8 80027DF8 01CF1821 */  addu       $v1, $t6, $t7
/* 289FC 80027DFC 846B0002 */  lh         $t3, 2($v1)
/* 28A00 80027E00 846D0000 */  lh         $t5, ($v1)
/* 28A04 80027E04 8FAC0048 */  lw         $t4, 0x48($sp)
/* 28A08 80027E08 03AB2021 */  addu       $a0, $sp, $t3
/* 28A0C 80027E0C 90840038 */  lbu        $a0, 0x38($a0)
/* 28A10 80027E10 2419000B */  addiu      $t9, $zero, 0xb
/* 28A14 80027E14 AFB90010 */  sw         $t9, 0x10($sp)
/* 28A18 80027E18 24060039 */  addiu      $a2, $zero, 0x39
/* 28A1C 80027E1C 24070008 */  addiu      $a3, $zero, 8
/* 28A20 80027E20 0C00A6D6 */  jal        drawMenues
/* 28A24 80027E24 01AC2821 */   addu      $a1, $t5, $t4
/* 28A28 80027E28 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 28A2C 80027E2C 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 28A30 80027E30 95070000 */  lhu        $a3, ($t0)
.L80027E34:
/* 28A34 80027E34 30F82000 */  andi       $t8, $a3, 0x2000
.L80027E38:
/* 28A38 80027E38 13000007 */  beqz       $t8, .L80027E58
/* 28A3C 80027E3C 3C028006 */   lui       $v0, %hi(MessageSliderPos)
/* 28A40 80027E40 2442FA00 */  addiu      $v0, $v0, %lo(MessageSliderPos)
/* 28A44 80027E44 804E0000 */  lb         $t6, ($v0)
/* 28A48 80027E48 240F0004 */  addiu      $t7, $zero, 4
/* 28A4C 80027E4C 01EE5823 */  subu       $t3, $t7, $t6
/* 28A50 80027E50 100001F0 */  b          .L80028614
/* 28A54 80027E54 A04B0000 */   sb        $t3, ($v0)
.L80027E58:
/* 28A58 80027E58 30ED0800 */  andi       $t5, $a3, 0x800
/* 28A5C 80027E5C 15A00038 */  bnez       $t5, .L80027F40
/* 28A60 80027E60 3C028009 */   lui       $v0, %hi(JoystickX)
/* 28A64 80027E64 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 28A68 80027E68 3C038009 */  lui        $v1, %hi(ButtonPressedFrame)
/* 28A6C 80027E6C 24190140 */  addiu      $t9, $zero, 0x140
/* 28A70 80027E70 28410015 */  slti       $at, $v0, 0x15
/* 28A74 80027E74 10200006 */  beqz       $at, .L80027E90
/* 28A78 80027E78 34F82000 */   ori       $t8, $a3, 0x2000
/* 28A7C 80027E7C 94632876 */  lhu        $v1, %lo(ButtonPressedFrame)($v1)
/* 28A80 80027E80 2841FFEC */  slti       $at, $v0, -0x14
/* 28A84 80027E84 306C0010 */  andi       $t4, $v1, 0x10
/* 28A88 80027E88 1180000F */  beqz       $t4, .L80027EC8
/* 28A8C 80027E8C 00000000 */   nop
.L80027E90:
/* 28A90 80027E90 3C018009 */  lui        $at, %hi(UNK_MenuScrollCounter)
/* 28A94 80027E94 AC39FD04 */  sw         $t9, %lo(UNK_MenuScrollCounter)($at)
/* 28A98 80027E98 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 28A9C 80027E9C AC20FD08 */  sw         $zero, %lo(D_8008FD08)($at)
/* 28AA0 80027EA0 A5180000 */  sh         $t8, ($t0)
/* 28AA4 80027EA4 00002025 */  or         $a0, $zero, $zero
/* 28AA8 80027EA8 00002825 */  or         $a1, $zero, $zero
/* 28AAC 80027EAC 0C009A35 */  jal        func_800268D4
/* 28AB0 80027EB0 240600FF */   addiu     $a2, $zero, 0xff
/* 28AB4 80027EB4 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 28AB8 80027EB8 3C038009 */  lui        $v1, %hi(ButtonPressedFrame)
/* 28ABC 80027EBC 94632876 */  lhu        $v1, %lo(ButtonPressedFrame)($v1)
/* 28AC0 80027EC0 10000013 */  b          .L80027F10
/* 28AC4 80027EC4 2508FD0C */   addiu     $t0, $t0, %lo(flags_DAT_8008fd0c)
.L80027EC8:
/* 28AC8 80027EC8 14200002 */  bnez       $at, .L80027ED4
/* 28ACC 80027ECC 306F2000 */   andi      $t7, $v1, 0x2000
/* 28AD0 80027ED0 11E0000F */  beqz       $t7, .L80027F10
.L80027ED4:
/* 28AD4 80027ED4 3C018009 */   lui       $at, %hi(UNK_MenuScrollCounter)
/* 28AD8 80027ED8 AC20FD04 */  sw         $zero, %lo(UNK_MenuScrollCounter)($at)
/* 28ADC 80027EDC 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 28AE0 80027EE0 240EFEC0 */  addiu      $t6, $zero, -0x140
/* 28AE4 80027EE4 AC2EFD08 */  sw         $t6, %lo(D_8008FD08)($at)
/* 28AE8 80027EE8 34EB3000 */  ori        $t3, $a3, 0x3000
/* 28AEC 80027EEC A50B0000 */  sh         $t3, ($t0)
/* 28AF0 80027EF0 00002025 */  or         $a0, $zero, $zero
/* 28AF4 80027EF4 00002825 */  or         $a1, $zero, $zero
/* 28AF8 80027EF8 0C009A35 */  jal        func_800268D4
/* 28AFC 80027EFC 240600FF */   addiu     $a2, $zero, 0xff
/* 28B00 80027F00 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 28B04 80027F04 3C038009 */  lui        $v1, %hi(ButtonPressedFrame)
/* 28B08 80027F08 94632876 */  lhu        $v1, %lo(ButtonPressedFrame)($v1)
/* 28B0C 80027F0C 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
.L80027F10:
/* 28B10 80027F10 306D8000 */  andi       $t5, $v1, 0x8000
/* 28B14 80027F14 11A001B9 */  beqz       $t5, .L800285FC
/* 28B18 80027F18 00002025 */   or        $a0, $zero, $zero
/* 28B1C 80027F1C 950C0000 */  lhu        $t4, ($t0)
/* 28B20 80027F20 24050001 */  addiu      $a1, $zero, 1
/* 28B24 80027F24 240600FF */  addiu      $a2, $zero, 0xff
/* 28B28 80027F28 35980800 */  ori        $t8, $t4, 0x800
/* 28B2C 80027F2C A5180000 */  sh         $t8, ($t0)
/* 28B30 80027F30 0C009A35 */  jal        func_800268D4
/* 28B34 80027F34 A5180000 */   sh        $t8, ($t0)
/* 28B38 80027F38 100001B0 */  b          .L800285FC
/* 28B3C 80027F3C 00000000 */   nop
.L80027F40:
/* 28B40 80027F40 3C0F8009 */  lui        $t7, %hi(ButtonPressedFrame)
/* 28B44 80027F44 95EF2876 */  lhu        $t7, %lo(ButtonPressedFrame)($t7)
/* 28B48 80027F48 30E40200 */  andi       $a0, $a3, 0x200
/* 28B4C 80027F4C 31EE8000 */  andi       $t6, $t7, 0x8000
/* 28B50 80027F50 11C00011 */  beqz       $t6, .L80027F98
/* 28B54 80027F54 00000000 */   nop
/* 28B58 80027F58 1480000F */  bnez       $a0, .L80027F98
/* 28B5C 80027F5C 30EDFEFF */   andi      $t5, $a3, 0xfeff
/* 28B60 80027F60 A50D0000 */  sh         $t5, ($t0)
/* 28B64 80027F64 31ACF7FF */  andi       $t4, $t5, 0xf7ff
/* 28B68 80027F68 A50C0000 */  sh         $t4, ($t0)
/* 28B6C 80027F6C 00002025 */  or         $a0, $zero, $zero
/* 28B70 80027F70 24050002 */  addiu      $a1, $zero, 2
/* 28B74 80027F74 0C009A35 */  jal        func_800268D4
/* 28B78 80027F78 240600FF */   addiu     $a2, $zero, 0xff
/* 28B7C 80027F7C 3C028006 */  lui        $v0, %hi(MessageSliderPos)
/* 28B80 80027F80 2442FA00 */  addiu      $v0, $v0, %lo(MessageSliderPos)
/* 28B84 80027F84 80590000 */  lb         $t9, ($v0)
/* 28B88 80027F88 24180004 */  addiu      $t8, $zero, 4
/* 28B8C 80027F8C 03197823 */  subu       $t7, $t8, $t9
/* 28B90 80027F90 100001A0 */  b          .L80028614
/* 28B94 80027F94 A04F0000 */   sb        $t7, ($v0)
.L80027F98:
/* 28B98 80027F98 3C098009 */  lui        $t1, %hi(D_8008FD10)
/* 28B9C 80027F9C 8D29FD10 */  lw         $t1, %lo(D_8008FD10)($t1)
/* 28BA0 80027FA0 3C018006 */  lui        $at, 0x8006
/* 28BA4 80027FA4 30EE0100 */  andi       $t6, $a3, 0x100
/* 28BA8 80027FA8 00095843 */  sra        $t3, $t1, 1
/* 28BAC 80027FAC 316D000F */  andi       $t5, $t3, 0xf
/* 28BB0 80027FB0 002D0821 */  addu       $at, $at, $t5
/* 28BB4 80027FB4 AFAE0040 */  sw         $t6, 0x40($sp)
/* 28BB8 80027FB8 10800064 */  beqz       $a0, .L8002814C
/* 28BBC 80027FBC 8029F0C0 */   lb        $t1, -0xf40($at)
/* 28BC0 80027FC0 11C00006 */  beqz       $t6, .L80027FDC
/* 28BC4 80027FC4 3C0A8009 */   lui       $t2, 0x8009
/* 28BC8 80027FC8 24010100 */  addiu      $at, $zero, 0x100
/* 28BCC 80027FCC 11C10031 */  beq        $t6, $at, .L80028094
/* 28BD0 80027FD0 3C0A8009 */   lui       $t2, 0x8009
/* 28BD4 80027FD4 1000005D */  b          .L8002814C
/* 28BD8 80027FD8 00000000 */   nop
.L80027FDC:
/* 28BDC 80027FDC 3C188006 */  lui        $t8, %hi(MessageSliderPos)
/* 28BE0 80027FE0 8318FA00 */  lb         $t8, %lo(MessageSliderPos)($t8)
/* 28BE4 80027FE4 3C0F8006 */  lui        $t7, %hi(D_8005F8F4)
/* 28BE8 80027FE8 25EFF8F4 */  addiu      $t7, $t7, %lo(D_8005F8F4)
/* 28BEC 80027FEC 0018C880 */  sll        $t9, $t8, 2
/* 28BF0 80027FF0 032F1821 */  addu       $v1, $t9, $t7
/* 28BF4 80027FF4 8D4AFD14 */  lw         $t2, -0x2ec($t2)
/* 28BF8 80027FF8 84620000 */  lh         $v0, ($v1)
/* 28BFC 80027FFC 0142082A */  slt        $at, $t2, $v0
/* 28C00 80028000 14200052 */  bnez       $at, .L8002814C
/* 28C04 80028004 004A082A */   slt       $at, $v0, $t2
/* 28C08 80028008 14200050 */  bnez       $at, .L8002814C
/* 28C0C 8002800C 30EBFDFF */   andi      $t3, $a3, 0xfdff
/* 28C10 80028010 846C0002 */  lh         $t4, 2($v1)
/* 28C14 80028014 A50B0000 */  sh         $t3, ($t0)
/* 28C18 80028018 316DFBFF */  andi       $t5, $t3, 0xfbff
/* 28C1C 8002801C A50D0000 */  sh         $t5, ($t0)
/* 28C20 80028020 3C028009 */  lui        $v0, %hi(JoystickX)
/* 28C24 80028024 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 28C28 80028028 03ACC021 */  addu       $t8, $sp, $t4
/* 28C2C 8002802C 93180038 */  lbu        $t8, 0x38($t8)
/* 28C30 80028030 28410014 */  slti       $at, $v0, 0x14
/* 28C34 80028034 10200011 */  beqz       $at, .L8002807C
/* 28C38 80028038 AFB80040 */   sw        $t8, 0x40($sp)
/* 28C3C 8002803C 2841FFED */  slti       $at, $v0, -0x13
/* 28C40 80028040 1420000E */  bnez       $at, .L8002807C
/* 28C44 80028044 03002025 */   or        $a0, $t8, $zero
/* 28C48 80028048 8FB90048 */  lw         $t9, 0x48($sp)
/* 28C4C 8002804C 240F000B */  addiu      $t7, $zero, 0xb
/* 28C50 80028050 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 28C54 80028054 AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 28C58 80028058 AFAF0010 */  sw         $t7, 0x10($sp)
/* 28C5C 8002805C 24060039 */  addiu      $a2, $zero, 0x39
/* 28C60 80028060 24070008 */  addiu      $a3, $zero, 8
/* 28C64 80028064 AFA90044 */  sw         $t1, 0x44($sp)
/* 28C68 80028068 0C00A6D6 */  jal        drawMenues
/* 28C6C 8002806C 01592821 */   addu      $a1, $t2, $t9
/* 28C70 80028070 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 28C74 80028074 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 28C78 80028078 8FA90044 */  lw         $t1, 0x44($sp)
.L8002807C:
/* 28C7C 8002807C 95070000 */  lhu        $a3, ($t0)
/* 28C80 80028080 240E003A */  addiu      $t6, $zero, 0x3a
/* 28C84 80028084 AFAE003C */  sw         $t6, 0x3c($sp)
/* 28C88 80028088 AFA00040 */  sw         $zero, 0x40($sp)
/* 28C8C 8002808C 1000002F */  b          .L8002814C
/* 28C90 80028090 30E40200 */   andi      $a0, $a3, 0x200
.L80028094:
/* 28C94 80028094 3C0B8006 */  lui        $t3, %hi(BGMSliderPos)
/* 28C98 80028098 816BF010 */  lb         $t3, %lo(BGMSliderPos)($t3)
/* 28C9C 8002809C 3C0C8006 */  lui        $t4, %hi(D_8005F914)
/* 28CA0 800280A0 258CF914 */  addiu      $t4, $t4, %lo(D_8005F914)
/* 28CA4 800280A4 000B6880 */  sll        $t5, $t3, 2
/* 28CA8 800280A8 01AC1821 */  addu       $v1, $t5, $t4
/* 28CAC 800280AC 8D4AFD14 */  lw         $t2, -0x2ec($t2)
/* 28CB0 800280B0 84620000 */  lh         $v0, ($v1)
/* 28CB4 800280B4 0142082A */  slt        $at, $t2, $v0
/* 28CB8 800280B8 14200024 */  bnez       $at, .L8002814C
/* 28CBC 800280BC 004A082A */   slt       $at, $v0, $t2
/* 28CC0 800280C0 14200022 */  bnez       $at, .L8002814C
/* 28CC4 800280C4 30F9FDFF */   andi      $t9, $a3, 0xfdff
/* 28CC8 800280C8 846E0002 */  lh         $t6, 2($v1)
/* 28CCC 800280CC A5190000 */  sh         $t9, ($t0)
/* 28CD0 800280D0 332FFBFF */  andi       $t7, $t9, 0xfbff
/* 28CD4 800280D4 A50F0000 */  sh         $t7, ($t0)
/* 28CD8 800280D8 3C028009 */  lui        $v0, %hi(JoystickX)
/* 28CDC 800280DC 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 28CE0 800280E0 03AE5821 */  addu       $t3, $sp, $t6
/* 28CE4 800280E4 916B0038 */  lbu        $t3, 0x38($t3)
/* 28CE8 800280E8 28410014 */  slti       $at, $v0, 0x14
/* 28CEC 800280EC 10200011 */  beqz       $at, .L80028134
/* 28CF0 800280F0 AFAB0040 */   sw        $t3, 0x40($sp)
/* 28CF4 800280F4 2841FFED */  slti       $at, $v0, -0x13
/* 28CF8 800280F8 1420000E */  bnez       $at, .L80028134
/* 28CFC 800280FC 01602025 */   or        $a0, $t3, $zero
/* 28D00 80028100 8FAD0048 */  lw         $t5, 0x48($sp)
/* 28D04 80028104 240C000B */  addiu      $t4, $zero, 0xb
/* 28D08 80028108 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 28D0C 8002810C AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 28D10 80028110 AFAC0010 */  sw         $t4, 0x10($sp)
/* 28D14 80028114 24060067 */  addiu      $a2, $zero, 0x67
/* 28D18 80028118 24070008 */  addiu      $a3, $zero, 8
/* 28D1C 8002811C AFA90044 */  sw         $t1, 0x44($sp)
/* 28D20 80028120 0C00A6D6 */  jal        drawMenues
/* 28D24 80028124 014D2821 */   addu      $a1, $t2, $t5
/* 28D28 80028128 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 28D2C 8002812C 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 28D30 80028130 8FA90044 */  lw         $t1, 0x44($sp)
.L80028134:
/* 28D34 80028134 95070000 */  lhu        $a3, ($t0)
/* 28D38 80028138 24180065 */  addiu      $t8, $zero, 0x65
/* 28D3C 8002813C 24190100 */  addiu      $t9, $zero, 0x100
/* 28D40 80028140 AFB8003C */  sw         $t8, 0x3c($sp)
/* 28D44 80028144 AFB90040 */  sw         $t9, 0x40($sp)
/* 28D48 80028148 30E40200 */  andi       $a0, $a3, 0x200
.L8002814C:
/* 28D4C 8002814C 3C0A8009 */  lui        $t2, %hi(D_8008FD14)
/* 28D50 80028150 148000B2 */  bnez       $a0, .L8002841C
/* 28D54 80028154 8D4AFD14 */   lw        $t2, %lo(D_8008FD14)($t2)
/* 28D58 80028158 8FAF0040 */  lw         $t7, 0x40($sp)
/* 28D5C 8002815C 24010100 */  addiu      $at, $zero, 0x100
/* 28D60 80028160 3C028009 */  lui        $v0, 0x8009
/* 28D64 80028164 11E00005 */  beqz       $t7, .L8002817C
/* 28D68 80028168 00000000 */   nop
/* 28D6C 8002816C 11E10056 */  beq        $t7, $at, .L800282C8
/* 28D70 80028170 3C028009 */   lui       $v0, %hi(JoystickY)
/* 28D74 80028174 100000A9 */  b          .L8002841C
/* 28D78 80028178 00000000 */   nop
.L8002817C:
/* 28D7C 8002817C 80422872 */  lb         $v0, %lo(JoystickY)($v0)
/* 28D80 80028180 240E003A */  addiu      $t6, $zero, 0x3a
/* 28D84 80028184 AFAE003C */  sw         $t6, 0x3c($sp)
/* 28D88 80028188 2841FFE2 */  slti       $at, $v0, -0x1e
/* 28D8C 8002818C 14200004 */  bnez       $at, .L800281A0
/* 28D90 80028190 30EB0400 */   andi      $t3, $a3, 0x400
/* 28D94 80028194 2841001F */  slti       $at, $v0, 0x1f
/* 28D98 80028198 14200015 */  bnez       $at, .L800281F0
/* 28D9C 8002819C 3C028009 */   lui       $v0, 0x8009
.L800281A0:
/* 28DA0 800281A0 1560009E */  bnez       $t3, .L8002841C
/* 28DA4 800281A4 30ECFEFF */   andi      $t4, $a3, 0xfeff
/* 28DA8 800281A8 35990100 */  ori        $t9, $t4, 0x100
/* 28DAC 800281AC A50C0000 */  sh         $t4, ($t0)
/* 28DB0 800281B0 A5190000 */  sh         $t9, ($t0)
/* 28DB4 800281B4 372F0400 */  ori        $t7, $t9, 0x400
/* 28DB8 800281B8 A50F0000 */  sh         $t7, ($t0)
/* 28DBC 800281BC 00002025 */  or         $a0, $zero, $zero
/* 28DC0 800281C0 00002825 */  or         $a1, $zero, $zero
/* 28DC4 800281C4 240600FF */  addiu      $a2, $zero, 0xff
/* 28DC8 800281C8 0C009A35 */  jal        func_800268D4
/* 28DCC 800281CC AFA90044 */   sw        $t1, 0x44($sp)
/* 28DD0 800281D0 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 28DD4 800281D4 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 28DD8 800281D8 95070000 */  lhu        $a3, ($t0)
/* 28DDC 800281DC 3C0A8009 */  lui        $t2, %hi(D_8008FD14)
/* 28DE0 800281E0 8D4AFD14 */  lw         $t2, %lo(D_8008FD14)($t2)
/* 28DE4 800281E4 8FA90044 */  lw         $t1, 0x44($sp)
/* 28DE8 800281E8 1000008C */  b          .L8002841C
/* 28DEC 800281EC 30E40200 */   andi      $a0, $a3, 0x200
.L800281F0:
/* 28DF0 800281F0 80422871 */  lb         $v0, 0x2871($v0)
/* 28DF4 800281F4 30EE0400 */  andi       $t6, $a3, 0x400
/* 28DF8 800281F8 2841FFEC */  slti       $at, $v0, -0x14
/* 28DFC 800281FC 50200016 */  beql       $at, $zero, .L80028258
/* 28E00 80028200 28410015 */   slti      $at, $v0, 0x15
/* 28E04 80028204 15C00085 */  bnez       $t6, .L8002841C
/* 28E08 80028208 3C028006 */   lui       $v0, %hi(MessageSliderPos)
/* 28E0C 8002820C 8042FA00 */  lb         $v0, %lo(MessageSliderPos)($v0)
/* 28E10 80028210 3C018006 */  lui        $at, %hi(MessageSliderPos)
/* 28E14 80028214 3C0C8006 */  lui        $t4, %hi(MessageSliderPos)
/* 28E18 80028218 244DFFFF */  addiu      $t5, $v0, -1
/* 28E1C 8002821C A02DFA00 */  sb         $t5, %lo(MessageSliderPos)($at)
/* 28E20 80028220 818CFA00 */  lb         $t4, %lo(MessageSliderPos)($t4)
/* 28E24 80028224 3C0A8006 */  lui        $t2, %hi(D_8005F8F4)
/* 28E28 80028228 00025880 */  sll        $t3, $v0, 2
/* 28E2C 8002822C 014B5021 */  addu       $t2, $t2, $t3
/* 28E30 80028230 05810003 */  bgez       $t4, .L80028240
/* 28E34 80028234 854AF8F4 */   lh        $t2, %lo(D_8005F8F4)($t2)
/* 28E38 80028238 3C018006 */  lui        $at, %hi(MessageSliderPos)
/* 28E3C 8002823C A020FA00 */  sb         $zero, %lo(MessageSliderPos)($at)
.L80028240:
/* 28E40 80028240 34F80600 */  ori        $t8, $a3, 0x600
/* 28E44 80028244 3307FFFF */  andi       $a3, $t8, 0xffff
/* 28E48 80028248 30E40200 */  andi       $a0, $a3, 0x200
/* 28E4C 8002824C 10000073 */  b          .L8002841C
/* 28E50 80028250 A5180000 */   sh        $t8, ($t0)
/* 28E54 80028254 28410015 */  slti       $at, $v0, 0x15
.L80028258:
/* 28E58 80028258 14200016 */  bnez       $at, .L800282B4
/* 28E5C 8002825C 30F90400 */   andi      $t9, $a3, 0x400
/* 28E60 80028260 17200012 */  bnez       $t9, .L800282AC
/* 28E64 80028264 3C038006 */   lui       $v1, %hi(MessageSliderPos)
/* 28E68 80028268 2463FA00 */  addiu      $v1, $v1, %lo(MessageSliderPos)
/* 28E6C 8002826C 80620000 */  lb         $v0, ($v1)
/* 28E70 80028270 3C0A8006 */  lui        $t2, %hi(D_8005F8F4)
/* 28E74 80028274 34EC0600 */  ori        $t4, $a3, 0x600
/* 28E78 80028278 00027880 */  sll        $t7, $v0, 2
/* 28E7C 8002827C 014F5021 */  addu       $t2, $t2, $t7
/* 28E80 80028280 854AF8F4 */  lh         $t2, %lo(D_8005F8F4)($t2)
/* 28E84 80028284 244E0001 */  addiu      $t6, $v0, 1
/* 28E88 80028288 A06E0000 */  sb         $t6, ($v1)
/* 28E8C 8002828C 806B0000 */  lb         $t3, ($v1)
/* 28E90 80028290 3187FFFF */  andi       $a3, $t4, 0xffff
/* 28E94 80028294 240D0004 */  addiu      $t5, $zero, 4
/* 28E98 80028298 29610005 */  slti       $at, $t3, 5
/* 28E9C 8002829C 14200002 */  bnez       $at, .L800282A8
/* 28EA0 800282A0 30E40200 */   andi      $a0, $a3, 0x200
/* 28EA4 800282A4 A06D0000 */  sb         $t5, ($v1)
.L800282A8:
/* 28EA8 800282A8 A50C0000 */  sh         $t4, ($t0)
.L800282AC:
/* 28EAC 800282AC 1000005B */  b          .L8002841C
/* 28EB0 800282B0 00000000 */   nop
.L800282B4:
/* 28EB4 800282B4 30F8FBFF */  andi       $t8, $a3, 0xfbff
/* 28EB8 800282B8 3307FFFF */  andi       $a3, $t8, 0xffff
/* 28EBC 800282BC 30E40200 */  andi       $a0, $a3, 0x200
/* 28EC0 800282C0 10000056 */  b          .L8002841C
/* 28EC4 800282C4 A5180000 */   sh        $t8, ($t0)
.L800282C8:
/* 28EC8 800282C8 80422872 */  lb         $v0, 0x2872($v0)
/* 28ECC 800282CC 24190065 */  addiu      $t9, $zero, 0x65
/* 28ED0 800282D0 AFB9003C */  sw         $t9, 0x3c($sp)
/* 28ED4 800282D4 2841FFE2 */  slti       $at, $v0, -0x1e
/* 28ED8 800282D8 14200004 */  bnez       $at, .L800282EC
/* 28EDC 800282DC 30EF0400 */   andi      $t7, $a3, 0x400
/* 28EE0 800282E0 2841001F */  slti       $at, $v0, 0x1f
/* 28EE4 800282E4 14200014 */  bnez       $at, .L80028338
/* 28EE8 800282E8 3C028009 */   lui       $v0, 0x8009
.L800282EC:
/* 28EEC 800282EC 15E0004B */  bnez       $t7, .L8002841C
/* 28EF0 800282F0 30EDFEFF */   andi      $t5, $a3, 0xfeff
/* 28EF4 800282F4 A50D0000 */  sh         $t5, ($t0)
/* 28EF8 800282F8 A50D0000 */  sh         $t5, ($t0)
/* 28EFC 800282FC 35AC0400 */  ori        $t4, $t5, 0x400
/* 28F00 80028300 A50C0000 */  sh         $t4, ($t0)
/* 28F04 80028304 00002025 */  or         $a0, $zero, $zero
/* 28F08 80028308 00002825 */  or         $a1, $zero, $zero
/* 28F0C 8002830C 240600FF */  addiu      $a2, $zero, 0xff
/* 28F10 80028310 0C009A35 */  jal        func_800268D4
/* 28F14 80028314 AFA90044 */   sw        $t1, 0x44($sp)
/* 28F18 80028318 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 28F1C 8002831C 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 28F20 80028320 95070000 */  lhu        $a3, ($t0)
/* 28F24 80028324 3C0A8009 */  lui        $t2, %hi(D_8008FD14)
/* 28F28 80028328 8D4AFD14 */  lw         $t2, %lo(D_8008FD14)($t2)
/* 28F2C 8002832C 8FA90044 */  lw         $t1, 0x44($sp)
/* 28F30 80028330 1000003A */  b          .L8002841C
/* 28F34 80028334 30E40200 */   andi      $a0, $a3, 0x200
.L80028338:
/* 28F38 80028338 80422871 */  lb         $v0, 0x2871($v0)
/* 28F3C 8002833C 30F80400 */  andi       $t8, $a3, 0x400
/* 28F40 80028340 2841FFEC */  slti       $at, $v0, -0x14
/* 28F44 80028344 50200018 */  beql       $at, $zero, .L800283A8
/* 28F48 80028348 28410015 */   slti      $at, $v0, 0x15
/* 28F4C 8002834C 17000033 */  bnez       $t8, .L8002841C
/* 28F50 80028350 3C028006 */   lui       $v0, %hi(BGMSliderPos)
/* 28F54 80028354 8042F010 */  lb         $v0, %lo(BGMSliderPos)($v0)
/* 28F58 80028358 3C018006 */  lui        $at, %hi(BGMSliderPos)
/* 28F5C 8002835C 3C0E8006 */  lui        $t6, %hi(BGMSliderPos)
/* 28F60 80028360 244FFFFF */  addiu      $t7, $v0, -1
/* 28F64 80028364 A02FF010 */  sb         $t7, %lo(BGMSliderPos)($at)
/* 28F68 80028368 81CEF010 */  lb         $t6, %lo(BGMSliderPos)($t6)
/* 28F6C 8002836C 3C0A8006 */  lui        $t2, %hi(D_8005F914)
/* 28F70 80028370 0002C880 */  sll        $t9, $v0, 2
/* 28F74 80028374 01595021 */  addu       $t2, $t2, $t9
/* 28F78 80028378 05C10003 */  bgez       $t6, .L80028388
/* 28F7C 8002837C 854AF914 */   lh        $t2, %lo(D_8005F914)($t2)
/* 28F80 80028380 3C018006 */  lui        $at, %hi(BGMSliderPos)
/* 28F84 80028384 A020F010 */  sb         $zero, %lo(BGMSliderPos)($at)
.L80028388:
/* 28F88 80028388 34ED0400 */  ori        $t5, $a3, 0x400
/* 28F8C 8002838C 35AC0200 */  ori        $t4, $t5, 0x200
/* 28F90 80028390 A50D0000 */  sh         $t5, ($t0)
/* 28F94 80028394 3187FFFF */  andi       $a3, $t4, 0xffff
/* 28F98 80028398 30E40200 */  andi       $a0, $a3, 0x200
/* 28F9C 8002839C 1000001F */  b          .L8002841C
/* 28FA0 800283A0 A50C0000 */   sh        $t4, ($t0)
/* 28FA4 800283A4 28410015 */  slti       $at, $v0, 0x15
.L800283A8:
/* 28FA8 800283A8 14200018 */  bnez       $at, .L8002840C
/* 28FAC 800283AC 30F80400 */   andi      $t8, $a3, 0x400
/* 28FB0 800283B0 17000014 */  bnez       $t8, .L80028404
/* 28FB4 800283B4 3C038006 */   lui       $v1, %hi(BGMSliderPos)
/* 28FB8 800283B8 2463F010 */  addiu      $v1, $v1, %lo(BGMSliderPos)
/* 28FBC 800283BC 80620000 */  lb         $v0, ($v1)
/* 28FC0 800283C0 3C0A8006 */  lui        $t2, %hi(D_8005F914)
/* 28FC4 800283C4 34EC0400 */  ori        $t4, $a3, 0x400
/* 28FC8 800283C8 0002C880 */  sll        $t9, $v0, 2
/* 28FCC 800283CC 01595021 */  addu       $t2, $t2, $t9
/* 28FD0 800283D0 854AF914 */  lh         $t2, %lo(D_8005F914)($t2)
/* 28FD4 800283D4 244F0001 */  addiu      $t7, $v0, 1
/* 28FD8 800283D8 A06F0000 */  sb         $t7, ($v1)
/* 28FDC 800283DC 806E0000 */  lb         $t6, ($v1)
/* 28FE0 800283E0 35980200 */  ori        $t8, $t4, 0x200
/* 28FE4 800283E4 3307FFFF */  andi       $a3, $t8, 0xffff
/* 28FE8 800283E8 29C10005 */  slti       $at, $t6, 5
/* 28FEC 800283EC 14200003 */  bnez       $at, .L800283FC
/* 28FF0 800283F0 30E40200 */   andi      $a0, $a3, 0x200
/* 28FF4 800283F4 240B0004 */  addiu      $t3, $zero, 4
/* 28FF8 800283F8 A06B0000 */  sb         $t3, ($v1)
.L800283FC:
/* 28FFC 800283FC A50C0000 */  sh         $t4, ($t0)
/* 29000 80028400 A5180000 */  sh         $t8, ($t0)
.L80028404:
/* 29004 80028404 10000005 */  b          .L8002841C
/* 29008 80028408 00000000 */   nop
.L8002840C:
/* 2900C 8002840C 30F9FBFF */  andi       $t9, $a3, 0xfbff
/* 29010 80028410 3327FFFF */  andi       $a3, $t9, 0xffff
/* 29014 80028414 30E40200 */  andi       $a0, $a3, 0x200
/* 29018 80028418 A5190000 */  sh         $t9, ($t0)
.L8002841C:
/* 2901C 8002841C 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 29020 80028420 1080006D */  beqz       $a0, .L800285D8
/* 29024 80028424 AC2AFD14 */   sw        $t2, %lo(D_8008FD14)($at)
/* 29028 80028428 8FAF0040 */  lw         $t7, 0x40($sp)
/* 2902C 8002842C 3C0E8006 */  lui        $t6, 0x8006
/* 29030 80028430 3C0D8006 */  lui        $t5, 0x8006
/* 29034 80028434 11E00007 */  beqz       $t7, .L80028454
/* 29038 80028438 24060039 */   addiu     $a2, $zero, 0x39
/* 2903C 8002843C 24010100 */  addiu      $at, $zero, 0x100
/* 29040 80028440 11E10034 */  beq        $t7, $at, .L80028514
/* 29044 80028444 3C0B8006 */   lui       $t3, 0x8006
/* 29048 80028448 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 2904C 8002844C 10000062 */  b          .L800285D8
/* 29050 80028450 AC2AFD14 */   sw        $t2, %lo(D_8008FD14)($at)
.L80028454:
/* 29054 80028454 81CEFA00 */  lb         $t6, -0x600($t6)
/* 29058 80028458 25ADF8F4 */  addiu      $t5, $t5, -0x70c
/* 2905C 8002845C 8FAC0048 */  lw         $t4, 0x48($sp)
/* 29060 80028460 000E5880 */  sll        $t3, $t6, 2
/* 29064 80028464 016D1821 */  addu       $v1, $t3, $t5
/* 29068 80028468 84620000 */  lh         $v0, ($v1)
/* 2906C 8002846C 2418003A */  addiu      $t8, $zero, 0x3a
/* 29070 80028470 AFB8003C */  sw         $t8, 0x3c($sp)
/* 29074 80028474 0142082A */  slt        $at, $t2, $v0
/* 29078 80028478 1020000A */  beqz       $at, .L800284A4
/* 2907C 8002847C 014C2821 */   addu      $a1, $t2, $t4
/* 29080 80028480 8479FFFE */  lh         $t9, -2($v1)
/* 29084 80028484 254A0001 */  addiu      $t2, $t2, 1
/* 29088 80028488 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 2908C 8002848C 03B97821 */  addu       $t7, $sp, $t9
/* 29090 80028490 91EF0038 */  lbu        $t7, 0x38($t7)
/* 29094 80028494 24A50001 */  addiu      $a1, $a1, 1
/* 29098 80028498 AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 2909C 8002849C 10000015 */  b          .L800284F4
/* 290A0 800284A0 AFAF0040 */   sw        $t7, 0x40($sp)
.L800284A4:
/* 290A4 800284A4 004A082A */  slt        $at, $v0, $t2
/* 290A8 800284A8 1020000A */  beqz       $at, .L800284D4
/* 290AC 800284AC 00000000 */   nop
/* 290B0 800284B0 846E0006 */  lh         $t6, 6($v1)
/* 290B4 800284B4 254AFFFF */  addiu      $t2, $t2, -1
/* 290B8 800284B8 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 290BC 800284BC 03AE5821 */  addu       $t3, $sp, $t6
/* 290C0 800284C0 916B0038 */  lbu        $t3, 0x38($t3)
/* 290C4 800284C4 24A5FFFF */  addiu      $a1, $a1, -1
/* 290C8 800284C8 AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 290CC 800284CC 10000009 */  b          .L800284F4
/* 290D0 800284D0 AFAB0040 */   sw        $t3, 0x40($sp)
.L800284D4:
/* 290D4 800284D4 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 290D8 800284D8 AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 290DC 800284DC 846C0002 */  lh         $t4, 2($v1)
/* 290E0 800284E0 30EDFBFF */  andi       $t5, $a3, 0xfbff
/* 290E4 800284E4 A50D0000 */  sh         $t5, ($t0)
/* 290E8 800284E8 03ACC021 */  addu       $t8, $sp, $t4
/* 290EC 800284EC 93180038 */  lbu        $t8, 0x38($t8)
/* 290F0 800284F0 AFB80040 */  sw         $t8, 0x40($sp)
.L800284F4:
/* 290F4 800284F4 2419000B */  addiu      $t9, $zero, 0xb
/* 290F8 800284F8 AFB90010 */  sw         $t9, 0x10($sp)
/* 290FC 800284FC 8FA40040 */  lw         $a0, 0x40($sp)
/* 29100 80028500 24070008 */  addiu      $a3, $zero, 8
/* 29104 80028504 0C00A6D6 */  jal        drawMenues
/* 29108 80028508 AFA90044 */   sw        $t1, 0x44($sp)
/* 2910C 8002850C 10000032 */  b          .L800285D8
/* 29110 80028510 8FA90044 */   lw        $t1, 0x44($sp)
.L80028514:
/* 29114 80028514 3C0F8006 */  lui        $t7, %hi(BGMSliderPos)
/* 29118 80028518 81EFF010 */  lb         $t7, %lo(BGMSliderPos)($t7)
/* 2911C 8002851C 256BF914 */  addiu      $t3, $t3, -0x6ec
/* 29120 80028520 8FAD0048 */  lw         $t5, 0x48($sp)
/* 29124 80028524 000F7080 */  sll        $t6, $t7, 2
/* 29128 80028528 01CB1821 */  addu       $v1, $t6, $t3
/* 2912C 8002852C 84620000 */  lh         $v0, ($v1)
/* 29130 80028530 240C0065 */  addiu      $t4, $zero, 0x65
/* 29134 80028534 AFAC003C */  sw         $t4, 0x3c($sp)
/* 29138 80028538 0142082A */  slt        $at, $t2, $v0
/* 2913C 8002853C 1020000A */  beqz       $at, .L80028568
/* 29140 80028540 014D2821 */   addu      $a1, $t2, $t5
/* 29144 80028544 8478FFFE */  lh         $t8, -2($v1)
/* 29148 80028548 254A0001 */  addiu      $t2, $t2, 1
/* 2914C 8002854C 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 29150 80028550 03B8C821 */  addu       $t9, $sp, $t8
/* 29154 80028554 93390038 */  lbu        $t9, 0x38($t9)
/* 29158 80028558 24A50001 */  addiu      $a1, $a1, 1
/* 2915C 8002855C AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 29160 80028560 10000015 */  b          .L800285B8
/* 29164 80028564 AFB90040 */   sw        $t9, 0x40($sp)
.L80028568:
/* 29168 80028568 004A082A */  slt        $at, $v0, $t2
/* 2916C 8002856C 1020000A */  beqz       $at, .L80028598
/* 29170 80028570 00000000 */   nop
/* 29174 80028574 846F0006 */  lh         $t7, 6($v1)
/* 29178 80028578 254AFFFF */  addiu      $t2, $t2, -1
/* 2917C 8002857C 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 29180 80028580 03AF7021 */  addu       $t6, $sp, $t7
/* 29184 80028584 91CE0038 */  lbu        $t6, 0x38($t6)
/* 29188 80028588 24A5FFFF */  addiu      $a1, $a1, -1
/* 2918C 8002858C AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 29190 80028590 10000009 */  b          .L800285B8
/* 29194 80028594 AFAE0040 */   sw        $t6, 0x40($sp)
.L80028598:
/* 29198 80028598 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 2919C 8002859C AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 291A0 800285A0 846D0002 */  lh         $t5, 2($v1)
/* 291A4 800285A4 30EBFBFF */  andi       $t3, $a3, 0xfbff
/* 291A8 800285A8 A50B0000 */  sh         $t3, ($t0)
/* 291AC 800285AC 03AD6021 */  addu       $t4, $sp, $t5
/* 291B0 800285B0 918C0038 */  lbu        $t4, 0x38($t4)
/* 291B4 800285B4 AFAC0040 */  sw         $t4, 0x40($sp)
.L800285B8:
/* 291B8 800285B8 2418000B */  addiu      $t8, $zero, 0xb
/* 291BC 800285BC AFB80010 */  sw         $t8, 0x10($sp)
/* 291C0 800285C0 8FA40040 */  lw         $a0, 0x40($sp)
/* 291C4 800285C4 24060067 */  addiu      $a2, $zero, 0x67
/* 291C8 800285C8 24070008 */  addiu      $a3, $zero, 8
/* 291CC 800285CC 0C00A6D6 */  jal        drawMenues
/* 291D0 800285D0 AFA90044 */   sw        $t1, 0x44($sp)
/* 291D4 800285D4 8FA90044 */  lw         $t1, 0x44($sp)
.L800285D8:
/* 291D8 800285D8 8FB90048 */  lw         $t9, 0x48($sp)
/* 291DC 800285DC 240F000D */  addiu      $t7, $zero, 0xd
/* 291E0 800285E0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 291E4 800285E4 03292823 */  subu       $a1, $t9, $t1
/* 291E8 800285E8 24A5001E */  addiu      $a1, $a1, 0x1e
/* 291EC 800285EC 24040001 */  addiu      $a0, $zero, 1
/* 291F0 800285F0 8FA6003C */  lw         $a2, 0x3c($sp)
/* 291F4 800285F4 0C00A6D6 */  jal        drawMenues
/* 291F8 800285F8 24070010 */   addiu     $a3, $zero, 0x10
.L800285FC:
/* 291FC 800285FC 3C028006 */  lui        $v0, %hi(MessageSliderPos)
/* 29200 80028600 2442FA00 */  addiu      $v0, $v0, %lo(MessageSliderPos)
/* 29204 80028604 804E0000 */  lb         $t6, ($v0)
/* 29208 80028608 240B0004 */  addiu      $t3, $zero, 4
/* 2920C 8002860C 016E6823 */  subu       $t5, $t3, $t6
/* 29210 80028610 A04D0000 */  sb         $t5, ($v0)
.L80028614:
/* 29214 80028614 8FBF001C */  lw         $ra, 0x1c($sp)
/* 29218 80028618 27BD0048 */  addiu      $sp, $sp, 0x48
/* 2921C 8002861C 03E00008 */  jr         $ra
/* 29220 80028620 00000000 */   nop

glabel func_80028624
/* 29224 80028624 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 29228 80028628 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2922C 8002862C AFB50030 */  sw         $s5, 0x30($sp)
/* 29230 80028630 AFB4002C */  sw         $s4, 0x2c($sp)
/* 29234 80028634 AFB30028 */  sw         $s3, 0x28($sp)
/* 29238 80028638 AFB20024 */  sw         $s2, 0x24($sp)
/* 2923C 8002863C AFB10020 */  sw         $s1, 0x20($sp)
/* 29240 80028640 AFB0001C */  sw         $s0, 0x1c($sp)
/* 29244 80028644 AFA40130 */  sw         $a0, 0x130($sp)
/* 29248 80028648 2409FFF8 */  addiu      $t1, $zero, -8
/* 2924C 8002864C 3C0E8006 */  lui        $t6, %hi(D_8005F278)
/* 29250 80028650 81CEF278 */  lb         $t6, %lo(D_8005F278)($t6)
/* 29254 80028654 AFA0011C */  sw         $zero, 0x11c($sp)
/* 29258 80028658 0000A025 */  or         $s4, $zero, $zero
/* 2925C 8002865C 112E0022 */  beq        $t1, $t6, .L800286E8
/* 29260 80028660 2415FFFF */   addiu     $s5, $zero, -1
/* 29264 80028664 3C0F8006 */  lui        $t7, %hi(D_8005F278)
/* 29268 80028668 25E2F278 */  addiu      $v0, $t7, %lo(D_8005F278)
/* 2926C 8002866C 3C058008 */  lui        $a1, %hi(nextMap)
/* 29270 80028670 3C088008 */  lui        $t0, %hi(nextSubmap)
/* 29274 80028674 25084EE8 */  addiu      $t0, $t0, %lo(nextSubmap)
/* 29278 80028678 8CA54EE4 */  lw         $a1, %lo(nextMap)($a1)
/* 2927C 8002867C 80430000 */  lb         $v1, ($v0)
/* 29280 80028680 2407FFFF */  addiu      $a3, $zero, -1
/* 29284 80028684 2406FFFE */  addiu      $a2, $zero, -2
.L80028688:
/* 29288 80028688 50660006 */  beql       $v1, $a2, .L800286A4
/* 2928C 8002868C 24420002 */   addiu     $v0, $v0, 2
/* 29290 80028690 50670008 */  beql       $v1, $a3, .L800286B4
/* 29294 80028694 24420002 */   addiu     $v0, $v0, 2
/* 29298 80028698 10000009 */  b          .L800286C0
/* 2929C 8002869C 00000000 */   nop
/* 292A0 800286A0 24420002 */  addiu      $v0, $v0, 2
.L800286A4:
/* 292A4 800286A4 26B50001 */  addiu      $s5, $s5, 1
/* 292A8 800286A8 10000005 */  b          .L800286C0
/* 292AC 800286AC 80430000 */   lb        $v1, ($v0)
/* 292B0 800286B0 24420002 */  addiu      $v0, $v0, 2
.L800286B4:
/* 292B4 800286B4 26940001 */  addiu      $s4, $s4, 1
/* 292B8 800286B8 00E0A825 */  or         $s5, $a3, $zero
/* 292BC 800286BC 80430000 */  lb         $v1, ($v0)
.L800286C0:
/* 292C0 800286C0 54A30006 */  bnel       $a1, $v1, .L800286DC
/* 292C4 800286C4 80430002 */   lb        $v1, 2($v0)
/* 292C8 800286C8 8D180000 */  lw         $t8, ($t0)
/* 292CC 800286CC 80590001 */  lb         $t9, 1($v0)
/* 292D0 800286D0 53190006 */  beql       $t8, $t9, .L800286EC
/* 292D4 800286D4 2A810006 */   slti      $at, $s4, 6
/* 292D8 800286D8 80430002 */  lb         $v1, 2($v0)
.L800286DC:
/* 292DC 800286DC 24420002 */  addiu      $v0, $v0, 2
/* 292E0 800286E0 1523FFE9 */  bne        $t1, $v1, .L80028688
/* 292E4 800286E4 00000000 */   nop
.L800286E8:
/* 292E8 800286E8 2A810006 */  slti       $at, $s4, 6
.L800286EC:
/* 292EC 800286EC 102000DF */  beqz       $at, .L80028A6C
/* 292F0 800286F0 00002025 */   or        $a0, $zero, $zero
/* 292F4 800286F4 3C0E8006 */  lui        $t6, %hi(D_8005F928)
/* 292F8 800286F8 8DCEF928 */  lw         $t6, %lo(D_8005F928)($t6)
/* 292FC 800286FC 00147880 */  sll        $t7, $s4, 2
/* 29300 80028700 01F47823 */  subu       $t7, $t7, $s4
/* 29304 80028704 128E000B */  beq        $s4, $t6, .L80028734
/* 29308 80028708 000F7880 */   sll       $t7, $t7, 2
/* 2930C 8002870C 3C188006 */  lui        $t8, %hi(D_8005F82C)
/* 29310 80028710 2718F82C */  addiu      $t8, $t8, %lo(D_8005F82C)
/* 29314 80028714 01F81021 */  addu       $v0, $t7, $t8
/* 29318 80028718 8C440004 */  lw         $a0, 4($v0)
/* 2931C 8002871C 8C590008 */  lw         $t9, 8($v0)
/* 29320 80028720 8C450000 */  lw         $a1, ($v0)
/* 29324 80028724 0C009098 */  jal        loadData
/* 29328 80028728 03243023 */   subu      $a2, $t9, $a0
/* 2932C 8002872C 3C018006 */  lui        $at, %hi(D_8005F928)
/* 29330 80028730 AC34F928 */  sw         $s4, %lo(D_8005F928)($at)
.L80028734:
/* 29334 80028734 8FB00130 */  lw         $s0, 0x130($sp)
/* 29338 80028738 240800F4 */  addiu      $t0, $zero, 0xf4
/* 2933C 8002873C 24120008 */  addiu      $s2, $zero, 8
/* 29340 80028740 26100027 */  addiu      $s0, $s0, 0x27
/* 29344 80028744 02001025 */  or         $v0, $s0, $zero
/* 29348 80028748 0601000C */  bgez       $s0, .L8002877C
/* 2934C 8002874C 2413001D */   addiu     $s3, $zero, 0x1d
/* 29350 80028750 260E00F4 */  addiu      $t6, $s0, 0xf4
/* 29354 80028754 05C10003 */  bgez       $t6, .L80028764
/* 29358 80028758 00027823 */   negu      $t7, $v0
/* 2935C 8002875C 10000007 */  b          .L8002877C
/* 29360 80028760 00009025 */   or        $s2, $zero, $zero
.L80028764:
/* 29364 80028764 AFAF011C */  sw         $t7, 0x11c($sp)
/* 29368 80028768 241900F4 */  addiu      $t9, $zero, 0xf4
/* 2936C 8002876C 000F7140 */  sll        $t6, $t7, 5
/* 29370 80028770 00001025 */  or         $v0, $zero, $zero
/* 29374 80028774 032F4023 */  subu       $t0, $t9, $t7
/* 29378 80028778 AFAE011C */  sw         $t6, 0x11c($sp)
.L8002877C:
/* 2937C 8002877C 28410141 */  slti       $at, $v0, 0x141
/* 29380 80028780 14200003 */  bnez       $at, .L80028790
/* 29384 80028784 00487821 */   addu      $t7, $v0, $t0
/* 29388 80028788 10000007 */  b          .L800287A8
/* 2938C 8002878C 00009025 */   or        $s2, $zero, $zero
.L80028790:
/* 29390 80028790 29E10141 */  slti       $at, $t7, 0x141
/* 29394 80028794 14200004 */  bnez       $at, .L800287A8
/* 29398 80028798 0102C823 */   subu      $t9, $t0, $v0
/* 2939C 8002879C 03284023 */  subu       $t0, $t9, $t0
/* 293A0 800287A0 25080140 */  addiu      $t0, $t0, 0x140
/* 293A4 800287A4 AFA0011C */  sw         $zero, 0x11c($sp)
.L800287A8:
/* 293A8 800287A8 12400277 */  beqz       $s2, .L80029188
/* 293AC 800287AC AFA20124 */   sw        $v0, 0x124($sp)
/* 293B0 800287B0 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 293B4 800287B4 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 293B8 800287B8 0040F825 */  or         $ra, $v0, $zero
/* 293BC 800287BC 3C11E700 */  lui        $s1, 0xe700
/* 293C0 800287C0 8C620000 */  lw         $v0, ($v1)
/* 293C4 800287C4 3C0FFD10 */  lui        $t7, 0xfd10
/* 293C8 800287C8 0014C880 */  sll        $t9, $s4, 2
/* 293CC 800287CC 24580008 */  addiu      $t8, $v0, 8
/* 293D0 800287D0 AC780000 */  sw         $t8, ($v1)
/* 293D4 800287D4 AC400004 */  sw         $zero, 4($v0)
/* 293D8 800287D8 AC510000 */  sw         $s1, ($v0)
/* 293DC 800287DC 8C620000 */  lw         $v0, ($v1)
/* 293E0 800287E0 3C188006 */  lui        $t8, %hi(D_8005F5A4)
/* 293E4 800287E4 0319C021 */  addu       $t8, $t8, $t9
/* 293E8 800287E8 244E0008 */  addiu      $t6, $v0, 8
/* 293EC 800287EC AC6E0000 */  sw         $t6, ($v1)
/* 293F0 800287F0 AC4F0000 */  sw         $t7, ($v0)
/* 293F4 800287F4 8F18F5A4 */  lw         $t8, %lo(D_8005F5A4)($t8)
/* 293F8 800287F8 00006025 */  or         $t4, $zero, $zero
/* 293FC 800287FC 3C01E400 */  lui        $at, 0xe400
/* 29400 80028800 AC580004 */  sw         $t8, 4($v0)
/* 29404 80028804 8C620000 */  lw         $v0, ($v1)
/* 29408 80028808 3C0FE800 */  lui        $t7, 0xe800
/* 2940C 8002880C 3C18F500 */  lui        $t8, 0xf500
/* 29410 80028810 244E0008 */  addiu      $t6, $v0, 8
/* 29414 80028814 AC6E0000 */  sw         $t6, ($v1)
/* 29418 80028818 AC400004 */  sw         $zero, 4($v0)
/* 2941C 8002881C AC4F0000 */  sw         $t7, ($v0)
/* 29420 80028820 8C620000 */  lw         $v0, ($v1)
/* 29424 80028824 37180100 */  ori        $t8, $t8, 0x100
/* 29428 80028828 3C0E0700 */  lui        $t6, 0x700
/* 2942C 8002882C 24590008 */  addiu      $t9, $v0, 8
/* 29430 80028830 AC790000 */  sw         $t9, ($v1)
/* 29434 80028834 AC4E0004 */  sw         $t6, 4($v0)
/* 29438 80028838 AC580000 */  sw         $t8, ($v0)
/* 2943C 8002883C 8C620000 */  lw         $v0, ($v1)
/* 29440 80028840 3C19E600 */  lui        $t9, 0xe600
/* 29444 80028844 3C0EF000 */  lui        $t6, 0xf000
/* 29448 80028848 244F0008 */  addiu      $t7, $v0, 8
/* 2944C 8002884C AC6F0000 */  sw         $t7, ($v1)
/* 29450 80028850 AC400004 */  sw         $zero, 4($v0)
/* 29454 80028854 AC590000 */  sw         $t9, ($v0)
/* 29458 80028858 8C620000 */  lw         $v0, ($v1)
/* 2945C 8002885C 3C0F073F */  lui        $t7, 0x73f
/* 29460 80028860 35EFC000 */  ori        $t7, $t7, 0xc000
/* 29464 80028864 24580008 */  addiu      $t8, $v0, 8
/* 29468 80028868 AC780000 */  sw         $t8, ($v1)
/* 2946C 8002886C AC4F0004 */  sw         $t7, 4($v0)
/* 29470 80028870 AC4E0000 */  sw         $t6, ($v0)
/* 29474 80028874 8C620000 */  lw         $v0, ($v1)
/* 29478 80028878 0014C080 */  sll        $t8, $s4, 2
/* 2947C 8002887C 0314C023 */  subu       $t8, $t8, $s4
/* 29480 80028880 24590008 */  addiu      $t9, $v0, 8
/* 29484 80028884 AC790000 */  sw         $t9, ($v1)
/* 29488 80028888 AC400004 */  sw         $zero, 4($v0)
/* 2948C 8002888C AC510000 */  sw         $s1, ($v0)
/* 29490 80028890 3C0E8006 */  lui        $t6, %hi(D_8005F5BC)
/* 29494 80028894 25CEF5BC */  addiu      $t6, $t6, %lo(D_8005F5BC)
/* 29498 80028898 0018C140 */  sll        $t8, $t8, 5
/* 2949C 8002889C 03E87821 */  addu       $t7, $ra, $t0
/* 294A0 800288A0 000FC880 */  sll        $t9, $t7, 2
/* 294A4 800288A4 030E6821 */  addu       $t5, $t8, $t6
/* 294A8 800288A8 33380FFF */  andi       $t8, $t9, 0xfff
/* 294AC 800288AC 00187300 */  sll        $t6, $t8, 0xc
/* 294B0 800288B0 001FC880 */  sll        $t9, $ra, 2
/* 294B4 800288B4 33380FFF */  andi       $t8, $t9, 0xfff
/* 294B8 800288B8 8FB9011C */  lw         $t9, 0x11c($sp)
/* 294BC 800288BC 01C17825 */  or         $t7, $t6, $at
/* 294C0 800288C0 00187300 */  sll        $t6, $t8, 0xc
/* 294C4 800288C4 0019C400 */  sll        $t8, $t9, 0x10
/* 294C8 800288C8 AFB80038 */  sw         $t8, 0x38($sp)
/* 294CC 800288CC AFAE003C */  sw         $t6, 0x3c($sp)
/* 294D0 800288D0 AFAF0044 */  sw         $t7, 0x44($sp)
.L800288D4:
/* 294D4 800288D4 2401005C */  addiu      $at, $zero, 0x5c
/* 294D8 800288D8 55810003 */  bnel       $t4, $at, .L800288E8
/* 294DC 800288DC 8C620000 */   lw        $v0, ($v1)
/* 294E0 800288E0 24120001 */  addiu      $s2, $zero, 1
/* 294E4 800288E4 8C620000 */  lw         $v0, ($v1)
.L800288E8:
/* 294E8 800288E8 3C0FFD48 */  lui        $t7, 0xfd48
/* 294EC 800288EC 35EF00F3 */  ori        $t7, $t7, 0xf3
/* 294F0 800288F0 244E0008 */  addiu      $t6, $v0, 8
/* 294F4 800288F4 AC6E0000 */  sw         $t6, ($v1)
/* 294F8 800288F8 AC4F0000 */  sw         $t7, ($v0)
/* 294FC 800288FC 8DB90000 */  lw         $t9, ($t5)
/* 29500 80028900 3C0EF548 */  lui        $t6, 0xf548
/* 29504 80028904 2648FFFF */  addiu      $t0, $s2, -1
/* 29508 80028908 AC590004 */  sw         $t9, 4($v0)
/* 2950C 8002890C 8C620000 */  lw         $v0, ($v1)
/* 29510 80028910 35CE3E00 */  ori        $t6, $t6, 0x3e00
/* 29514 80028914 3C0F0700 */  lui        $t7, 0x700
/* 29518 80028918 24580008 */  addiu      $t8, $v0, 8
/* 2951C 8002891C AC780000 */  sw         $t8, ($v1)
/* 29520 80028920 AC4F0004 */  sw         $t7, 4($v0)
/* 29524 80028924 AC4E0000 */  sw         $t6, ($v0)
/* 29528 80028928 8C620000 */  lw         $v0, ($v1)
/* 2952C 8002892C 3C18E600 */  lui        $t8, 0xe600
/* 29530 80028930 3C0FF400 */  lui        $t7, 0xf400
/* 29534 80028934 24590008 */  addiu      $t9, $v0, 8
/* 29538 80028938 AC790000 */  sw         $t9, ($v1)
/* 2953C 8002893C AC400004 */  sw         $zero, 4($v0)
/* 29540 80028940 AC580000 */  sw         $t8, ($v0)
/* 29544 80028944 8C620000 */  lw         $v0, ($v1)
/* 29548 80028948 0008C880 */  sll        $t9, $t0, 2
/* 2954C 8002894C 3C01073C */  lui        $at, 0x73c
/* 29550 80028950 244E0008 */  addiu      $t6, $v0, 8
/* 29554 80028954 AC6E0000 */  sw         $t6, ($v1)
/* 29558 80028958 3421C000 */  ori        $at, $at, 0xc000
/* 2955C 8002895C 33280FFF */  andi       $t0, $t9, 0xfff
/* 29560 80028960 01017025 */  or         $t6, $t0, $at
/* 29564 80028964 AC4E0004 */  sw         $t6, 4($v0)
/* 29568 80028968 AC4F0000 */  sw         $t7, ($v0)
/* 2956C 8002896C 8C620000 */  lw         $v0, ($v1)
/* 29570 80028970 3C01003C */  lui        $at, 0x3c
/* 29574 80028974 3421C000 */  ori        $at, $at, 0xc000
/* 29578 80028978 244F0008 */  addiu      $t7, $v0, 8
/* 2957C 8002897C AC6F0000 */  sw         $t7, ($v1)
/* 29580 80028980 AC400004 */  sw         $zero, 4($v0)
/* 29584 80028984 AC510000 */  sw         $s1, ($v0)
/* 29588 80028988 8C620000 */  lw         $v0, ($v1)
/* 2958C 8002898C 3C18F548 */  lui        $t8, 0xf548
/* 29590 80028990 37183E00 */  ori        $t8, $t8, 0x3e00
/* 29594 80028994 24590008 */  addiu      $t9, $v0, 8
/* 29598 80028998 AC790000 */  sw         $t9, ($v1)
/* 2959C 8002899C AC400004 */  sw         $zero, 4($v0)
/* 295A0 800289A0 AC580000 */  sw         $t8, ($v0)
/* 295A4 800289A4 8C620000 */  lw         $v0, ($v1)
/* 295A8 800289A8 3C0FF200 */  lui        $t7, 0xf200
/* 295AC 800289AC 0101C825 */  or         $t9, $t0, $at
/* 295B0 800289B0 244E0008 */  addiu      $t6, $v0, 8
/* 295B4 800289B4 AC6E0000 */  sw         $t6, ($v1)
/* 295B8 800289B8 AC590004 */  sw         $t9, 4($v0)
/* 295BC 800289BC AC4F0000 */  sw         $t7, ($v0)
/* 295C0 800289C0 8C620000 */  lw         $v0, ($v1)
/* 295C4 800289C4 8FAE0044 */  lw         $t6, 0x44($sp)
/* 295C8 800289C8 02728021 */  addu       $s0, $s3, $s2
/* 295CC 800289CC 00107880 */  sll        $t7, $s0, 2
/* 295D0 800289D0 24580008 */  addiu      $t8, $v0, 8
/* 295D4 800289D4 AC780000 */  sw         $t8, ($v1)
/* 295D8 800289D8 31F90FFF */  andi       $t9, $t7, 0xfff
/* 295DC 800289DC 01D9C025 */  or         $t8, $t6, $t9
/* 295E0 800289E0 AC580000 */  sw         $t8, ($v0)
/* 295E4 800289E4 8FAF003C */  lw         $t7, 0x3c($sp)
/* 295E8 800289E8 00137080 */  sll        $t6, $s3, 2
/* 295EC 800289EC 31D90FFF */  andi       $t9, $t6, 0xfff
/* 295F0 800289F0 01F9C025 */  or         $t8, $t7, $t9
/* 295F4 800289F4 AC580004 */  sw         $t8, 4($v0)
/* 295F8 800289F8 8C620000 */  lw         $v0, ($v1)
/* 295FC 800289FC 3C0FB400 */  lui        $t7, 0xb400
/* 29600 80028A00 258C0004 */  addiu      $t4, $t4, 4
/* 29604 80028A04 244E0008 */  addiu      $t6, $v0, 8
/* 29608 80028A08 AC6E0000 */  sw         $t6, ($v1)
/* 2960C 80028A0C AC4F0000 */  sw         $t7, ($v0)
/* 29610 80028A10 8FB90038 */  lw         $t9, 0x38($sp)
/* 29614 80028A14 3C0EB300 */  lui        $t6, 0xb300
/* 29618 80028A18 02009825 */  or         $s3, $s0, $zero
/* 2961C 80028A1C AC590004 */  sw         $t9, 4($v0)
/* 29620 80028A20 8C620000 */  lw         $v0, ($v1)
/* 29624 80028A24 3C0F0400 */  lui        $t7, 0x400
/* 29628 80028A28 35EF0400 */  ori        $t7, $t7, 0x400
/* 2962C 80028A2C 24580008 */  addiu      $t8, $v0, 8
/* 29630 80028A30 AC780000 */  sw         $t8, ($v1)
/* 29634 80028A34 AC4F0004 */  sw         $t7, 4($v0)
/* 29638 80028A38 AC4E0000 */  sw         $t6, ($v0)
/* 2963C 80028A3C 8C620000 */  lw         $v0, ($v1)
/* 29640 80028A40 24010060 */  addiu      $at, $zero, 0x60
/* 29644 80028A44 24590008 */  addiu      $t9, $v0, 8
/* 29648 80028A48 AC790000 */  sw         $t9, ($v1)
/* 2964C 80028A4C AC400004 */  sw         $zero, 4($v0)
/* 29650 80028A50 AC510000 */  sw         $s1, ($v0)
/* 29654 80028A54 1581FF9F */  bne        $t4, $at, .L800288D4
/* 29658 80028A58 25AD0004 */   addiu     $t5, $t5, 4
/* 2965C 80028A5C 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 29660 80028A60 00000000 */   nop
/* 29664 80028A64 100001C9 */  b          .L8002918C
/* 29668 80028A68 8FA50130 */   lw        $a1, 0x130($sp)
.L80028A6C:
/* 2966C 80028A6C 8FA50130 */  lw         $a1, 0x130($sp)
/* 29670 80028A70 241800B4 */  addiu      $t8, $zero, 0xb4
/* 29674 80028A74 AFB80010 */  sw         $t8, 0x10($sp)
/* 29678 80028A78 2406001E */  addiu      $a2, $zero, 0x1e
/* 2967C 80028A7C 240700F0 */  addiu      $a3, $zero, 0xf0
/* 29680 80028A80 0C00A6D6 */  jal        drawMenues
/* 29684 80028A84 24A50028 */   addiu     $a1, $a1, 0x28
/* 29688 80028A88 8FB00130 */  lw         $s0, 0x130($sp)
/* 2968C 80028A8C 240E0001 */  addiu      $t6, $zero, 1
/* 29690 80028A90 AFAE0010 */  sw         $t6, 0x10($sp)
/* 29694 80028A94 26100029 */  addiu      $s0, $s0, 0x29
/* 29698 80028A98 02002825 */  or         $a1, $s0, $zero
/* 2969C 80028A9C 24040038 */  addiu      $a0, $zero, 0x38
/* 296A0 80028AA0 2406001F */  addiu      $a2, $zero, 0x1f
/* 296A4 80028AA4 0C00A6D6 */  jal        drawMenues
/* 296A8 80028AA8 240700ED */   addiu     $a3, $zero, 0xed
/* 296AC 80028AAC 240F00B1 */  addiu      $t7, $zero, 0xb1
/* 296B0 80028AB0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 296B4 80028AB4 24040038 */  addiu      $a0, $zero, 0x38
/* 296B8 80028AB8 02002825 */  or         $a1, $s0, $zero
/* 296BC 80028ABC 24060020 */  addiu      $a2, $zero, 0x20
/* 296C0 80028AC0 0C00A6D6 */  jal        drawMenues
/* 296C4 80028AC4 24070001 */   addiu     $a3, $zero, 1
/* 296C8 80028AC8 24190001 */  addiu      $t9, $zero, 1
/* 296CC 80028ACC AFB90010 */  sw         $t9, 0x10($sp)
/* 296D0 80028AD0 24040039 */  addiu      $a0, $zero, 0x39
/* 296D4 80028AD4 02002825 */  or         $a1, $s0, $zero
/* 296D8 80028AD8 240600D0 */  addiu      $a2, $zero, 0xd0
/* 296DC 80028ADC 0C00A6D6 */  jal        drawMenues
/* 296E0 80028AE0 240700EE */   addiu     $a3, $zero, 0xee
/* 296E4 80028AE4 8FA50130 */  lw         $a1, 0x130($sp)
/* 296E8 80028AE8 241800B2 */  addiu      $t8, $zero, 0xb2
/* 296EC 80028AEC AFB80010 */  sw         $t8, 0x10($sp)
/* 296F0 80028AF0 24040039 */  addiu      $a0, $zero, 0x39
/* 296F4 80028AF4 2406001F */  addiu      $a2, $zero, 0x1f
/* 296F8 80028AF8 24070001 */  addiu      $a3, $zero, 1
/* 296FC 80028AFC 0C00A6D6 */  jal        drawMenues
/* 29700 80028B00 24A50117 */   addiu     $a1, $a1, 0x117
/* 29704 80028B04 8FA50130 */  lw         $a1, 0x130($sp)
/* 29708 80028B08 240E0003 */  addiu      $t6, $zero, 3
/* 2970C 80028B0C AFAE0010 */  sw         $t6, 0x10($sp)
/* 29710 80028B10 24040037 */  addiu      $a0, $zero, 0x37
/* 29714 80028B14 240600D4 */  addiu      $a2, $zero, 0xd4
/* 29718 80028B18 240700F0 */  addiu      $a3, $zero, 0xf0
/* 2971C 80028B1C 0C00A6D6 */  jal        drawMenues
/* 29720 80028B20 24A5002C */   addiu     $a1, $a1, 0x2c
/* 29724 80028B24 8FA50130 */  lw         $a1, 0x130($sp)
/* 29728 80028B28 240F00B2 */  addiu      $t7, $zero, 0xb2
/* 2972C 80028B2C AFAF0010 */  sw         $t7, 0x10($sp)
/* 29730 80028B30 24040037 */  addiu      $a0, $zero, 0x37
/* 29734 80028B34 24060025 */  addiu      $a2, $zero, 0x25
/* 29738 80028B38 24070002 */  addiu      $a3, $zero, 2
/* 2973C 80028B3C 0C00A6D6 */  jal        drawMenues
/* 29740 80028B40 24A5011A */   addiu     $a1, $a1, 0x11a
/* 29744 80028B44 8FB00130 */  lw         $s0, 0x130($sp)
/* 29748 80028B48 24190001 */  addiu      $t9, $zero, 1
/* 2974C 80028B4C AFB90010 */  sw         $t9, 0x10($sp)
/* 29750 80028B50 26100027 */  addiu      $s0, $s0, 0x27
/* 29754 80028B54 02002825 */  or         $a1, $s0, $zero
/* 29758 80028B58 24040037 */  addiu      $a0, $zero, 0x37
/* 2975C 80028B5C 2406001D */  addiu      $a2, $zero, 0x1d
/* 29760 80028B60 0C00A6D6 */  jal        drawMenues
/* 29764 80028B64 240700F2 */   addiu     $a3, $zero, 0xf2
/* 29768 80028B68 24180001 */  addiu      $t8, $zero, 1
/* 2976C 80028B6C AFB80010 */  sw         $t8, 0x10($sp)
/* 29770 80028B70 24040037 */  addiu      $a0, $zero, 0x37
/* 29774 80028B74 02002825 */  or         $a1, $s0, $zero
/* 29778 80028B78 240600D3 */  addiu      $a2, $zero, 0xd3
/* 2977C 80028B7C 0C00A6D6 */  jal        drawMenues
/* 29780 80028B80 240700F2 */   addiu     $a3, $zero, 0xf2
/* 29784 80028B84 240E00B3 */  addiu      $t6, $zero, 0xb3
/* 29788 80028B88 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2978C 80028B8C 24040037 */  addiu      $a0, $zero, 0x37
/* 29790 80028B90 02002825 */  or         $a1, $s0, $zero
/* 29794 80028B94 2406001E */  addiu      $a2, $zero, 0x1e
/* 29798 80028B98 0C00A6D6 */  jal        drawMenues
/* 2979C 80028B9C 24070001 */   addiu     $a3, $zero, 1
/* 297A0 80028BA0 8FA50130 */  lw         $a1, 0x130($sp)
/* 297A4 80028BA4 240F00B3 */  addiu      $t7, $zero, 0xb3
/* 297A8 80028BA8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 297AC 80028BAC 24040037 */  addiu      $a0, $zero, 0x37
/* 297B0 80028BB0 2406001E */  addiu      $a2, $zero, 0x1e
/* 297B4 80028BB4 24070001 */  addiu      $a3, $zero, 1
/* 297B8 80028BB8 0C00A6D6 */  jal        drawMenues
/* 297BC 80028BBC 24A50119 */   addiu     $a1, $a1, 0x119
/* 297C0 80028BC0 3C198006 */  lui        $t9, %hi(D_8005F928)
/* 297C4 80028BC4 8F39F928 */  lw         $t9, %lo(D_8005F928)($t9)
/* 297C8 80028BC8 0014C080 */  sll        $t8, $s4, 2
/* 297CC 80028BCC 0314C023 */  subu       $t8, $t8, $s4
/* 297D0 80028BD0 1299000B */  beq        $s4, $t9, .L80028C00
/* 297D4 80028BD4 0018C080 */   sll       $t8, $t8, 2
/* 297D8 80028BD8 3C0E8006 */  lui        $t6, %hi(D_8005F82C)
/* 297DC 80028BDC 25CEF82C */  addiu      $t6, $t6, %lo(D_8005F82C)
/* 297E0 80028BE0 030E1021 */  addu       $v0, $t8, $t6
/* 297E4 80028BE4 8C440004 */  lw         $a0, 4($v0)
/* 297E8 80028BE8 8C4F0008 */  lw         $t7, 8($v0)
/* 297EC 80028BEC 8C450000 */  lw         $a1, ($v0)
/* 297F0 80028BF0 0C009098 */  jal        loadData
/* 297F4 80028BF4 01E43023 */   subu      $a2, $t7, $a0
/* 297F8 80028BF8 3C018006 */  lui        $at, %hi(D_8005F928)
/* 297FC 80028BFC AC34F928 */  sw         $s4, %lo(D_8005F928)($at)
.L80028C00:
/* 29800 80028C00 0014C880 */  sll        $t9, $s4, 2
/* 29804 80028C04 3C188006 */  lui        $t8, %hi(D_8005F8D4)
/* 29808 80028C08 2718F8D4 */  addiu      $t8, $t8, %lo(D_8005F8D4)
/* 2980C 80028C0C 0334C823 */  subu       $t9, $t9, $s4
/* 29810 80028C10 3C0F8006 */  lui        $t7, %hi(D_8005F8E0)
/* 29814 80028C14 03381021 */  addu       $v0, $t9, $t8
/* 29818 80028C18 25EFF8E0 */  addiu      $t7, $t7, %lo(D_8005F8E0)
/* 2981C 80028C1C 00147080 */  sll        $t6, $s4, 2
/* 29820 80028C20 01CF1821 */  addu       $v1, $t6, $t7
/* 29824 80028C24 8479FFE8 */  lh         $t9, -0x18($v1)
/* 29828 80028C28 8FB80130 */  lw         $t8, 0x130($sp)
/* 2982C 80028C2C 9048FFEE */  lbu        $t0, -0x12($v0)
/* 29830 80028C30 9052FFEF */  lbu        $s2, -0x11($v0)
/* 29834 80028C34 03382021 */  addu       $a0, $t9, $t8
/* 29838 80028C38 0481000B */  bgez       $a0, .L80028C68
/* 2983C 80028C3C 8473FFEA */   lh        $s3, -0x16($v1)
/* 29840 80028C40 00887021 */  addu       $t6, $a0, $t0
/* 29844 80028C44 05C10003 */  bgez       $t6, .L80028C54
/* 29848 80028C48 00047823 */   negu      $t7, $a0
/* 2984C 80028C4C 10000006 */  b          .L80028C68
/* 29850 80028C50 00009025 */   or        $s2, $zero, $zero
.L80028C54:
/* 29854 80028C54 AFAF011C */  sw         $t7, 0x11c($sp)
/* 29858 80028C58 000FC140 */  sll        $t8, $t7, 5
/* 2985C 80028C5C 00002025 */  or         $a0, $zero, $zero
/* 29860 80028C60 010F4023 */  subu       $t0, $t0, $t7
/* 29864 80028C64 AFB8011C */  sw         $t8, 0x11c($sp)
.L80028C68:
/* 29868 80028C68 28810141 */  slti       $at, $a0, 0x141
/* 2986C 80028C6C 14200003 */  bnez       $at, .L80028C7C
/* 29870 80028C70 00887021 */   addu      $t6, $a0, $t0
/* 29874 80028C74 10000007 */  b          .L80028C94
/* 29878 80028C78 00009025 */   or        $s2, $zero, $zero
.L80028C7C:
/* 2987C 80028C7C 29C10141 */  slti       $at, $t6, 0x141
/* 29880 80028C80 14200004 */  bnez       $at, .L80028C94
/* 29884 80028C84 01047823 */   subu      $t7, $t0, $a0
/* 29888 80028C88 01E84023 */  subu       $t0, $t7, $t0
/* 2988C 80028C8C 25080140 */  addiu      $t0, $t0, 0x140
/* 29890 80028C90 AFA0011C */  sw         $zero, 0x11c($sp)
.L80028C94:
/* 29894 80028C94 1240013C */  beqz       $s2, .L80029188
/* 29898 80028C98 AFA40124 */   sw        $a0, 0x124($sp)
/* 2989C 80028C9C 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 298A0 80028CA0 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 298A4 80028CA4 3C11E700 */  lui        $s1, 0xe700
/* 298A8 80028CA8 8C620000 */  lw         $v0, ($v1)
/* 298AC 80028CAC 2685FFFA */  addiu      $a1, $s4, -6
/* 298B0 80028CB0 00057080 */  sll        $t6, $a1, 2
/* 298B4 80028CB4 24590008 */  addiu      $t9, $v0, 8
/* 298B8 80028CB8 AC790000 */  sw         $t9, ($v1)
/* 298BC 80028CBC 3C18FD10 */  lui        $t8, 0xfd10
/* 298C0 80028CC0 3C0F8006 */  lui        $t7, %hi(D_8005F8A4)
/* 298C4 80028CC4 01EE7821 */  addu       $t7, $t7, $t6
/* 298C8 80028CC8 AC580000 */  sw         $t8, ($v0)
/* 298CC 80028CCC 8DEFF8A4 */  lw         $t7, %lo(D_8005F8A4)($t7)
/* 298D0 80028CD0 AC4F0004 */  sw         $t7, 4($v0)
/* 298D4 80028CD4 8C620000 */  lw         $v0, ($v1)
/* 298D8 80028CD8 3C18E800 */  lui        $t8, 0xe800
/* 298DC 80028CDC 3C0FF500 */  lui        $t7, 0xf500
/* 298E0 80028CE0 24590008 */  addiu      $t9, $v0, 8
/* 298E4 80028CE4 AC790000 */  sw         $t9, ($v1)
/* 298E8 80028CE8 AC400004 */  sw         $zero, 4($v0)
/* 298EC 80028CEC AC580000 */  sw         $t8, ($v0)
/* 298F0 80028CF0 8C620000 */  lw         $v0, ($v1)
/* 298F4 80028CF4 35EF0100 */  ori        $t7, $t7, 0x100
/* 298F8 80028CF8 3C190700 */  lui        $t9, 0x700
/* 298FC 80028CFC 244E0008 */  addiu      $t6, $v0, 8
/* 29900 80028D00 AC6E0000 */  sw         $t6, ($v1)
/* 29904 80028D04 AC590004 */  sw         $t9, 4($v0)
/* 29908 80028D08 AC4F0000 */  sw         $t7, ($v0)
/* 2990C 80028D0C 8C620000 */  lw         $v0, ($v1)
/* 29910 80028D10 3C0EE600 */  lui        $t6, 0xe600
/* 29914 80028D14 3C19F000 */  lui        $t9, 0xf000
/* 29918 80028D18 24580008 */  addiu      $t8, $v0, 8
/* 2991C 80028D1C AC780000 */  sw         $t8, ($v1)
/* 29920 80028D20 AC400004 */  sw         $zero, 4($v0)
/* 29924 80028D24 AC4E0000 */  sw         $t6, ($v0)
/* 29928 80028D28 8C620000 */  lw         $v0, ($v1)
/* 2992C 80028D2C 3C18073F */  lui        $t8, 0x73f
/* 29930 80028D30 3718C000 */  ori        $t8, $t8, 0xc000
/* 29934 80028D34 244F0008 */  addiu      $t7, $v0, 8
/* 29938 80028D38 AC6F0000 */  sw         $t7, ($v1)
/* 2993C 80028D3C AC580004 */  sw         $t8, 4($v0)
/* 29940 80028D40 AC590000 */  sw         $t9, ($v0)
/* 29944 80028D44 8C620000 */  lw         $v0, ($v1)
/* 29948 80028D48 3C0F8009 */  lui        $t7, %hi(flags_DAT_8008fd0c)
/* 2994C 80028D4C 244E0008 */  addiu      $t6, $v0, 8
/* 29950 80028D50 AC6E0000 */  sw         $t6, ($v1)
/* 29954 80028D54 AC400004 */  sw         $zero, 4($v0)
/* 29958 80028D58 AC510000 */  sw         $s1, ($v0)
/* 2995C 80028D5C 95EFFD0C */  lhu        $t7, %lo(flags_DAT_8008fd0c)($t7)
/* 29960 80028D60 3C018009 */  lui        $at, %hi(flags_DAT_8008fd0c)
/* 29964 80028D64 00057080 */  sll        $t6, $a1, 2
/* 29968 80028D68 31F9FFEF */  andi       $t9, $t7, 0xffef
/* 2996C 80028D6C A439FD0C */  sh         $t9, %lo(flags_DAT_8008fd0c)($at)
/* 29970 80028D70 3C0F8006 */  lui        $t7, %hi(D_8005F8D4)
/* 29974 80028D74 8C620000 */  lw         $v0, ($v1)
/* 29978 80028D78 25EFF8D4 */  addiu      $t7, $t7, %lo(D_8005F8D4)
/* 2997C 80028D7C 01C57023 */  subu       $t6, $t6, $a1
/* 29980 80028D80 01CF2021 */  addu       $a0, $t6, $t7
/* 29984 80028D84 90990000 */  lbu        $t9, ($a0)
/* 29988 80028D88 24580008 */  addiu      $t8, $v0, 8
/* 2998C 80028D8C AC780000 */  sw         $t8, ($v1)
/* 29990 80028D90 2738FFFF */  addiu      $t8, $t9, -1
/* 29994 80028D94 330E0FFF */  andi       $t6, $t8, 0xfff
/* 29998 80028D98 3C188006 */  lui        $t8, %hi(D_8005F8B4)
/* 2999C 80028D9C 3C01FD48 */  lui        $at, 0xfd48
/* 299A0 80028DA0 01C17825 */  or         $t7, $t6, $at
/* 299A4 80028DA4 2718F8B4 */  addiu      $t8, $t8, %lo(D_8005F8B4)
/* 299A8 80028DA8 0005C8C0 */  sll        $t9, $a1, 3
/* 299AC 80028DAC 03388021 */  addu       $s0, $t9, $t8
/* 299B0 80028DB0 AC4F0000 */  sw         $t7, ($v0)
/* 299B4 80028DB4 8E0E0000 */  lw         $t6, ($s0)
/* 299B8 80028DB8 AC4E0004 */  sw         $t6, 4($v0)
/* 299BC 80028DBC 8C620000 */  lw         $v0, ($v1)
/* 299C0 80028DC0 90990000 */  lbu        $t9, ($a0)
/* 299C4 80028DC4 3C01F548 */  lui        $at, 0xf548
/* 299C8 80028DC8 244F0008 */  addiu      $t7, $v0, 8
/* 299CC 80028DCC 27380007 */  addiu      $t8, $t9, 7
/* 299D0 80028DD0 001870C3 */  sra        $t6, $t8, 3
/* 299D4 80028DD4 AC6F0000 */  sw         $t7, ($v1)
/* 299D8 80028DD8 31CF01FF */  andi       $t7, $t6, 0x1ff
/* 299DC 80028DDC 000FCA40 */  sll        $t9, $t7, 9
/* 299E0 80028DE0 0321C025 */  or         $t8, $t9, $at
/* 299E4 80028DE4 3C0E0700 */  lui        $t6, 0x700
/* 299E8 80028DE8 AC4E0004 */  sw         $t6, 4($v0)
/* 299EC 80028DEC AC580000 */  sw         $t8, ($v0)
/* 299F0 80028DF0 8FAF0124 */  lw         $t7, 0x124($sp)
/* 299F4 80028DF4 3C1FF548 */  lui        $ra, 0xf548
/* 299F8 80028DF8 01E8C821 */  addu       $t9, $t7, $t0
/* 299FC 80028DFC AFB9004C */  sw         $t9, 0x4c($sp)
/* 29A00 80028E00 8C620000 */  lw         $v0, ($v1)
/* 29A04 80028E04 3C0EE600 */  lui        $t6, 0xe600
/* 29A08 80028E08 24580008 */  addiu      $t8, $v0, 8
/* 29A0C 80028E0C AC780000 */  sw         $t8, ($v1)
/* 29A10 80028E10 AC400004 */  sw         $zero, 4($v0)
/* 29A14 80028E14 AC4E0000 */  sw         $t6, ($v0)
/* 29A18 80028E18 8C620000 */  lw         $v0, ($v1)
/* 29A1C 80028E1C 3C19F400 */  lui        $t9, 0xf400
/* 29A20 80028E20 3C010700 */  lui        $at, 0x700
/* 29A24 80028E24 244F0008 */  addiu      $t7, $v0, 8
/* 29A28 80028E28 AC6F0000 */  sw         $t7, ($v1)
/* 29A2C 80028E2C AC590000 */  sw         $t9, ($v0)
/* 29A30 80028E30 90980001 */  lbu        $t8, 1($a0)
/* 29A34 80028E34 270EFFFF */  addiu      $t6, $t8, -1
/* 29A38 80028E38 000E7880 */  sll        $t7, $t6, 2
/* 29A3C 80028E3C 908E0000 */  lbu        $t6, ($a0)
/* 29A40 80028E40 31F90FFF */  andi       $t9, $t7, 0xfff
/* 29A44 80028E44 0321C025 */  or         $t8, $t9, $at
/* 29A48 80028E48 25CFFFFF */  addiu      $t7, $t6, -1
/* 29A4C 80028E4C 000FC880 */  sll        $t9, $t7, 2
/* 29A50 80028E50 332E0FFF */  andi       $t6, $t9, 0xfff
/* 29A54 80028E54 000E7B00 */  sll        $t7, $t6, 0xc
/* 29A58 80028E58 030FC825 */  or         $t9, $t8, $t7
/* 29A5C 80028E5C AC590004 */  sw         $t9, 4($v0)
/* 29A60 80028E60 8C620000 */  lw         $v0, ($v1)
/* 29A64 80028E64 244E0008 */  addiu      $t6, $v0, 8
/* 29A68 80028E68 AC6E0000 */  sw         $t6, ($v1)
/* 29A6C 80028E6C AC400004 */  sw         $zero, 4($v0)
/* 29A70 80028E70 AC510000 */  sw         $s1, ($v0)
/* 29A74 80028E74 8C620000 */  lw         $v0, ($v1)
/* 29A78 80028E78 908F0000 */  lbu        $t7, ($a0)
/* 29A7C 80028E7C 24580008 */  addiu      $t8, $v0, 8
/* 29A80 80028E80 25F90007 */  addiu      $t9, $t7, 7
/* 29A84 80028E84 001970C3 */  sra        $t6, $t9, 3
/* 29A88 80028E88 AC780000 */  sw         $t8, ($v1)
/* 29A8C 80028E8C 31D801FF */  andi       $t8, $t6, 0x1ff
/* 29A90 80028E90 00187A40 */  sll        $t7, $t8, 9
/* 29A94 80028E94 01FFC825 */  or         $t9, $t7, $ra
/* 29A98 80028E98 AC590000 */  sw         $t9, ($v0)
/* 29A9C 80028E9C AC400004 */  sw         $zero, 4($v0)
/* 29AA0 80028EA0 8C620000 */  lw         $v0, ($v1)
/* 29AA4 80028EA4 3C18F200 */  lui        $t8, 0xf200
/* 29AA8 80028EA8 244E0008 */  addiu      $t6, $v0, 8
/* 29AAC 80028EAC AC6E0000 */  sw         $t6, ($v1)
/* 29AB0 80028EB0 AC580000 */  sw         $t8, ($v0)
/* 29AB4 80028EB4 908F0001 */  lbu        $t7, 1($a0)
/* 29AB8 80028EB8 25F9FFFF */  addiu      $t9, $t7, -1
/* 29ABC 80028EBC 908F0000 */  lbu        $t7, ($a0)
/* 29AC0 80028EC0 00197080 */  sll        $t6, $t9, 2
/* 29AC4 80028EC4 31D80FFF */  andi       $t8, $t6, 0xfff
/* 29AC8 80028EC8 25F9FFFF */  addiu      $t9, $t7, -1
/* 29ACC 80028ECC 00197080 */  sll        $t6, $t9, 2
/* 29AD0 80028ED0 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 29AD4 80028ED4 000FCB00 */  sll        $t9, $t7, 0xc
/* 29AD8 80028ED8 03197025 */  or         $t6, $t8, $t9
/* 29ADC 80028EDC AC4E0004 */  sw         $t6, 4($v0)
/* 29AE0 80028EE0 8C620000 */  lw         $v0, ($v1)
/* 29AE4 80028EE4 244F0008 */  addiu      $t7, $v0, 8
/* 29AE8 80028EE8 AC6F0000 */  sw         $t7, ($v1)
/* 29AEC 80028EEC AC400004 */  sw         $zero, 4($v0)
/* 29AF0 80028EF0 AC510000 */  sw         $s1, ($v0)
/* 29AF4 80028EF4 8FAB004C */  lw         $t3, 0x4c($sp)
/* 29AF8 80028EF8 8C620000 */  lw         $v0, ($v1)
/* 29AFC 80028EFC 3C01E400 */  lui        $at, 0xe400
/* 29B00 80028F00 000BC880 */  sll        $t9, $t3, 2
/* 29B04 80028F04 332E0FFF */  andi       $t6, $t9, 0xfff
/* 29B08 80028F08 000E5B00 */  sll        $t3, $t6, 0xc
/* 29B0C 80028F0C 0272C821 */  addu       $t9, $s3, $s2
/* 29B10 80028F10 24580008 */  addiu      $t8, $v0, 8
/* 29B14 80028F14 AC780000 */  sw         $t8, ($v1)
/* 29B18 80028F18 00197080 */  sll        $t6, $t9, 2
/* 29B1C 80028F1C 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 29B20 80028F20 0161C025 */  or         $t8, $t3, $at
/* 29B24 80028F24 030FC825 */  or         $t9, $t8, $t7
/* 29B28 80028F28 AC590000 */  sw         $t9, ($v0)
/* 29B2C 80028F2C 8FAE0124 */  lw         $t6, 0x124($sp)
/* 29B30 80028F30 000EC080 */  sll        $t8, $t6, 2
/* 29B34 80028F34 330F0FFF */  andi       $t7, $t8, 0xfff
/* 29B38 80028F38 000FCB00 */  sll        $t9, $t7, 0xc
/* 29B3C 80028F3C 00137080 */  sll        $t6, $s3, 2
/* 29B40 80028F40 31D80FFF */  andi       $t8, $t6, 0xfff
/* 29B44 80028F44 03387825 */  or         $t7, $t9, $t8
/* 29B48 80028F48 AFB9003C */  sw         $t9, 0x3c($sp)
/* 29B4C 80028F4C AC4F0004 */  sw         $t7, 4($v0)
/* 29B50 80028F50 8C620000 */  lw         $v0, ($v1)
/* 29B54 80028F54 3C19B400 */  lui        $t9, 0xb400
/* 29B58 80028F58 3C18B300 */  lui        $t8, 0xb300
/* 29B5C 80028F5C 244E0008 */  addiu      $t6, $v0, 8
/* 29B60 80028F60 AC6E0000 */  sw         $t6, ($v1)
/* 29B64 80028F64 AC590000 */  sw         $t9, ($v0)
/* 29B68 80028F68 8FAF011C */  lw         $t7, 0x11c($sp)
/* 29B6C 80028F6C 000F7400 */  sll        $t6, $t7, 0x10
/* 29B70 80028F70 AFAE0038 */  sw         $t6, 0x38($sp)
/* 29B74 80028F74 AC4E0004 */  sw         $t6, 4($v0)
/* 29B78 80028F78 8C620000 */  lw         $v0, ($v1)
/* 29B7C 80028F7C 3C0F0400 */  lui        $t7, 0x400
/* 29B80 80028F80 35EF0400 */  ori        $t7, $t7, 0x400
/* 29B84 80028F84 24590008 */  addiu      $t9, $v0, 8
/* 29B88 80028F88 AC790000 */  sw         $t9, ($v1)
/* 29B8C 80028F8C AC4F0004 */  sw         $t7, 4($v0)
/* 29B90 80028F90 AC580000 */  sw         $t8, ($v0)
/* 29B94 80028F94 8C620000 */  lw         $v0, ($v1)
/* 29B98 80028F98 244E0008 */  addiu      $t6, $v0, 8
/* 29B9C 80028F9C AC6E0000 */  sw         $t6, ($v1)
/* 29BA0 80028FA0 AC400004 */  sw         $zero, 4($v0)
/* 29BA4 80028FA4 AC510000 */  sw         $s1, ($v0)
/* 29BA8 80028FA8 8C620000 */  lw         $v0, ($v1)
/* 29BAC 80028FAC 90980000 */  lbu        $t8, ($a0)
/* 29BB0 80028FB0 3C01FD48 */  lui        $at, 0xfd48
/* 29BB4 80028FB4 24590008 */  addiu      $t9, $v0, 8
/* 29BB8 80028FB8 270FFFFF */  addiu      $t7, $t8, -1
/* 29BBC 80028FBC 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 29BC0 80028FC0 AC790000 */  sw         $t9, ($v1)
/* 29BC4 80028FC4 01C1C825 */  or         $t9, $t6, $at
/* 29BC8 80028FC8 AC590000 */  sw         $t9, ($v0)
/* 29BCC 80028FCC 8E180004 */  lw         $t8, 4($s0)
/* 29BD0 80028FD0 AC580004 */  sw         $t8, 4($v0)
/* 29BD4 80028FD4 8C620000 */  lw         $v0, ($v1)
/* 29BD8 80028FD8 908E0000 */  lbu        $t6, ($a0)
/* 29BDC 80028FDC 244F0008 */  addiu      $t7, $v0, 8
/* 29BE0 80028FE0 25D90007 */  addiu      $t9, $t6, 7
/* 29BE4 80028FE4 0019C0C3 */  sra        $t8, $t9, 3
/* 29BE8 80028FE8 AC6F0000 */  sw         $t7, ($v1)
/* 29BEC 80028FEC 330F01FF */  andi       $t7, $t8, 0x1ff
/* 29BF0 80028FF0 000F7240 */  sll        $t6, $t7, 9
/* 29BF4 80028FF4 01DFC825 */  or         $t9, $t6, $ra
/* 29BF8 80028FF8 3C180700 */  lui        $t8, 0x700
/* 29BFC 80028FFC AC580004 */  sw         $t8, 4($v0)
/* 29C00 80029000 AC590000 */  sw         $t9, ($v0)
/* 29C04 80029004 8C620000 */  lw         $v0, ($v1)
/* 29C08 80029008 3C0EE600 */  lui        $t6, 0xe600
/* 29C0C 8002900C 244F0008 */  addiu      $t7, $v0, 8
/* 29C10 80029010 AC6F0000 */  sw         $t7, ($v1)
/* 29C14 80029014 AC400004 */  sw         $zero, 4($v0)
/* 29C18 80029018 AC4E0000 */  sw         $t6, ($v0)
/* 29C1C 8002901C 8C620000 */  lw         $v0, ($v1)
/* 29C20 80029020 3C18F400 */  lui        $t8, 0xf400
/* 29C24 80029024 3C010700 */  lui        $at, 0x700
/* 29C28 80029028 24590008 */  addiu      $t9, $v0, 8
/* 29C2C 8002902C AC790000 */  sw         $t9, ($v1)
/* 29C30 80029030 AC580000 */  sw         $t8, ($v0)
/* 29C34 80029034 908F0002 */  lbu        $t7, 2($a0)
/* 29C38 80029038 25EEFFFF */  addiu      $t6, $t7, -1
/* 29C3C 8002903C 000EC880 */  sll        $t9, $t6, 2
/* 29C40 80029040 908E0000 */  lbu        $t6, ($a0)
/* 29C44 80029044 33380FFF */  andi       $t8, $t9, 0xfff
/* 29C48 80029048 03017825 */  or         $t7, $t8, $at
/* 29C4C 8002904C 25D9FFFF */  addiu      $t9, $t6, -1
/* 29C50 80029050 0019C080 */  sll        $t8, $t9, 2
/* 29C54 80029054 330E0FFF */  andi       $t6, $t8, 0xfff
/* 29C58 80029058 000ECB00 */  sll        $t9, $t6, 0xc
/* 29C5C 8002905C 01F9C025 */  or         $t8, $t7, $t9
/* 29C60 80029060 AC580004 */  sw         $t8, 4($v0)
/* 29C64 80029064 8C620000 */  lw         $v0, ($v1)
/* 29C68 80029068 244E0008 */  addiu      $t6, $v0, 8
/* 29C6C 8002906C AC6E0000 */  sw         $t6, ($v1)
/* 29C70 80029070 AC400004 */  sw         $zero, 4($v0)
/* 29C74 80029074 AC510000 */  sw         $s1, ($v0)
/* 29C78 80029078 8C620000 */  lw         $v0, ($v1)
/* 29C7C 8002907C 90990000 */  lbu        $t9, ($a0)
/* 29C80 80029080 244F0008 */  addiu      $t7, $v0, 8
/* 29C84 80029084 27380007 */  addiu      $t8, $t9, 7
/* 29C88 80029088 001870C3 */  sra        $t6, $t8, 3
/* 29C8C 8002908C AC6F0000 */  sw         $t7, ($v1)
/* 29C90 80029090 31CF01FF */  andi       $t7, $t6, 0x1ff
/* 29C94 80029094 000FCA40 */  sll        $t9, $t7, 9
/* 29C98 80029098 033FC025 */  or         $t8, $t9, $ra
/* 29C9C 8002909C AC580000 */  sw         $t8, ($v0)
/* 29CA0 800290A0 AC400004 */  sw         $zero, 4($v0)
/* 29CA4 800290A4 8C620000 */  lw         $v0, ($v1)
/* 29CA8 800290A8 3C0FF200 */  lui        $t7, 0xf200
/* 29CAC 800290AC 244E0008 */  addiu      $t6, $v0, 8
/* 29CB0 800290B0 AC6E0000 */  sw         $t6, ($v1)
/* 29CB4 800290B4 AC4F0000 */  sw         $t7, ($v0)
/* 29CB8 800290B8 90990002 */  lbu        $t9, 2($a0)
/* 29CBC 800290BC 2738FFFF */  addiu      $t8, $t9, -1
/* 29CC0 800290C0 90990000 */  lbu        $t9, ($a0)
/* 29CC4 800290C4 00187080 */  sll        $t6, $t8, 2
/* 29CC8 800290C8 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 29CCC 800290CC 2738FFFF */  addiu      $t8, $t9, -1
/* 29CD0 800290D0 00187080 */  sll        $t6, $t8, 2
/* 29CD4 800290D4 31D90FFF */  andi       $t9, $t6, 0xfff
/* 29CD8 800290D8 0019C300 */  sll        $t8, $t9, 0xc
/* 29CDC 800290DC 01F87025 */  or         $t6, $t7, $t8
/* 29CE0 800290E0 AC4E0004 */  sw         $t6, 4($v0)
/* 29CE4 800290E4 8C620000 */  lw         $v0, ($v1)
/* 29CE8 800290E8 24590008 */  addiu      $t9, $v0, 8
/* 29CEC 800290EC AC790000 */  sw         $t9, ($v1)
/* 29CF0 800290F0 AC400004 */  sw         $zero, 4($v0)
/* 29CF4 800290F4 AC510000 */  sw         $s1, ($v0)
/* 29CF8 800290F8 8C620000 */  lw         $v0, ($v1)
/* 29CFC 800290FC 90980002 */  lbu        $t8, 2($a0)
/* 29D00 80029100 3C01E400 */  lui        $at, 0xe400
/* 29D04 80029104 244F0008 */  addiu      $t7, $v0, 8
/* 29D08 80029108 03137021 */  addu       $t6, $t8, $s3
/* 29D0C 8002910C 01D2C821 */  addu       $t9, $t6, $s2
/* 29D10 80029110 AC6F0000 */  sw         $t7, ($v1)
/* 29D14 80029114 00197880 */  sll        $t7, $t9, 2
/* 29D18 80029118 31F80FFF */  andi       $t8, $t7, 0xfff
/* 29D1C 8002911C 03017025 */  or         $t6, $t8, $at
/* 29D20 80029120 01CBC825 */  or         $t9, $t6, $t3
/* 29D24 80029124 AC590000 */  sw         $t9, ($v0)
/* 29D28 80029128 908F0001 */  lbu        $t7, 1($a0)
/* 29D2C 8002912C 01F3C021 */  addu       $t8, $t7, $s3
/* 29D30 80029130 8FAF003C */  lw         $t7, 0x3c($sp)
/* 29D34 80029134 00187080 */  sll        $t6, $t8, 2
/* 29D38 80029138 31D90FFF */  andi       $t9, $t6, 0xfff
/* 29D3C 8002913C 032FC025 */  or         $t8, $t9, $t7
/* 29D40 80029140 AC580004 */  sw         $t8, 4($v0)
/* 29D44 80029144 8C620000 */  lw         $v0, ($v1)
/* 29D48 80029148 3C19B400 */  lui        $t9, 0xb400
/* 29D4C 8002914C 244E0008 */  addiu      $t6, $v0, 8
/* 29D50 80029150 AC6E0000 */  sw         $t6, ($v1)
/* 29D54 80029154 AC590000 */  sw         $t9, ($v0)
/* 29D58 80029158 8FAF0038 */  lw         $t7, 0x38($sp)
/* 29D5C 8002915C 3C0EB300 */  lui        $t6, 0xb300
/* 29D60 80029160 AC4F0004 */  sw         $t7, 4($v0)
/* 29D64 80029164 8C620000 */  lw         $v0, ($v1)
/* 29D68 80029168 3C190400 */  lui        $t9, 0x400
/* 29D6C 8002916C 37390400 */  ori        $t9, $t9, 0x400
/* 29D70 80029170 24580008 */  addiu      $t8, $v0, 8
/* 29D74 80029174 AC780000 */  sw         $t8, ($v1)
/* 29D78 80029178 AC590004 */  sw         $t9, 4($v0)
/* 29D7C 8002917C AC4E0000 */  sw         $t6, ($v0)
/* 29D80 80029180 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 29D84 80029184 00000000 */   nop
.L80029188:
/* 29D88 80029188 8FA50130 */  lw         $a1, 0x130($sp)
.L8002918C:
/* 29D8C 8002918C 240F0007 */  addiu      $t7, $zero, 7
/* 29D90 80029190 AFAF0010 */  sw         $t7, 0x10($sp)
/* 29D94 80029194 24040005 */  addiu      $a0, $zero, 5
/* 29D98 80029198 2406001C */  addiu      $a2, $zero, 0x1c
/* 29D9C 8002919C 24070007 */  addiu      $a3, $zero, 7
/* 29DA0 800291A0 0C00A6D6 */  jal        drawMenues
/* 29DA4 800291A4 24A50045 */   addiu     $a1, $a1, 0x45
/* 29DA8 800291A8 8FA50130 */  lw         $a1, 0x130($sp)
/* 29DAC 800291AC 24180007 */  addiu      $t8, $zero, 7
/* 29DB0 800291B0 AFB80010 */  sw         $t8, 0x10($sp)
/* 29DB4 800291B4 24040005 */  addiu      $a0, $zero, 5
/* 29DB8 800291B8 2406001C */  addiu      $a2, $zero, 0x1c
/* 29DBC 800291BC 24070007 */  addiu      $a3, $zero, 7
/* 29DC0 800291C0 0C00A6D6 */  jal        drawMenues
/* 29DC4 800291C4 24A500F3 */   addiu     $a1, $a1, 0xf3
/* 29DC8 800291C8 3C118009 */  lui        $s1, %hi(D_8008FD10)
/* 29DCC 800291CC 2631FD10 */  addiu      $s1, $s1, %lo(D_8008FD10)
/* 29DD0 800291D0 8E300000 */  lw         $s0, ($s1)
/* 29DD4 800291D4 3C018006 */  lui        $at, %hi(D_8005F0C0)
/* 29DD8 800291D8 8FAF0130 */  lw         $t7, 0x130($sp)
/* 29DDC 800291DC 00107083 */  sra        $t6, $s0, 2
/* 29DE0 800291E0 31D9000F */  andi       $t9, $t6, 0xf
/* 29DE4 800291E4 00390821 */  addu       $at, $at, $t9
/* 29DE8 800291E8 8030F0C0 */  lb         $s0, %lo(D_8005F0C0)($at)
/* 29DEC 800291EC 2418000B */  addiu      $t8, $zero, 0xb
/* 29DF0 800291F0 AFB80010 */  sw         $t8, 0x10($sp)
/* 29DF4 800291F4 01F02821 */  addu       $a1, $t7, $s0
/* 29DF8 800291F8 24A50036 */  addiu      $a1, $a1, 0x36
/* 29DFC 800291FC 24040006 */  addiu      $a0, $zero, 6
/* 29E00 80029200 2406001A */  addiu      $a2, $zero, 0x1a
/* 29E04 80029204 0C00A6D6 */  jal        drawMenues
/* 29E08 80029208 2407000E */   addiu     $a3, $zero, 0xe
/* 29E0C 8002920C 8FAE0130 */  lw         $t6, 0x130($sp)
/* 29E10 80029210 2419000B */  addiu      $t9, $zero, 0xb
/* 29E14 80029214 AFB90010 */  sw         $t9, 0x10($sp)
/* 29E18 80029218 01D02823 */  subu       $a1, $t6, $s0
/* 29E1C 8002921C 24A500FB */  addiu      $a1, $a1, 0xfb
/* 29E20 80029220 24040007 */  addiu      $a0, $zero, 7
/* 29E24 80029224 2406001A */  addiu      $a2, $zero, 0x1a
/* 29E28 80029228 0C00A6D6 */  jal        drawMenues
/* 29E2C 8002922C 2407000E */   addiu     $a3, $zero, 0xe
/* 29E30 80029230 8FA50130 */  lw         $a1, 0x130($sp)
/* 29E34 80029234 240F0010 */  addiu      $t7, $zero, 0x10
/* 29E38 80029238 AFAF0010 */  sw         $t7, 0x10($sp)
/* 29E3C 8002923C 2404002B */  addiu      $a0, $zero, 0x2b
/* 29E40 80029240 24060019 */  addiu      $a2, $zero, 0x19
/* 29E44 80029244 24070024 */  addiu      $a3, $zero, 0x24
/* 29E48 80029248 0C00A6D6 */  jal        drawMenues
/* 29E4C 8002924C 24A5008E */   addiu     $a1, $a1, 0x8e
/* 29E50 80029250 2A810006 */  slti       $at, $s4, 6
/* 29E54 80029254 10200049 */  beqz       $at, .L8002937C
/* 29E58 80029258 00000000 */   nop
/* 29E5C 8002925C 8E380000 */  lw         $t8, ($s1)
/* 29E60 80029260 330E0020 */  andi       $t6, $t8, 0x20
/* 29E64 80029264 11C00045 */  beqz       $t6, .L8002937C
/* 29E68 80029268 00000000 */   nop
/* 29E6C 8002926C 06A1002E */  bgez       $s5, .L80029328
/* 29E70 80029270 3C058008 */   lui       $a1, %hi(brianAction)
/* 29E74 80029274 24A5BAB8 */  addiu      $a1, $a1, %lo(brianAction)
/* 29E78 80029278 C4A40014 */  lwc1       $f4, 0x14($a1)
/* 29E7C 8002927C 3C0F8006 */  lui        $t7, %hi(D_8005F7FC)
/* 29E80 80029280 25EFF7FC */  addiu      $t7, $t7, %lo(D_8005F7FC)
/* 29E84 80029284 00141040 */  sll        $v0, $s4, 1
/* 29E88 80029288 4600218D */  trunc.w.s  $f6, $f4
/* 29E8C 8002928C 004F1821 */  addu       $v1, $v0, $t7
/* 29E90 80029290 84780000 */  lh         $t8, ($v1)
/* 29E94 80029294 C4A8001C */  lwc1       $f8, 0x1c($a1)
/* 29E98 80029298 44083000 */  mfc1       $t0, $f6
/* 29E9C 8002929C 3C0E8006 */  lui        $t6, 0x8006
/* 29EA0 800292A0 4600428D */  trunc.w.s  $f10, $f8
/* 29EA4 800292A4 0118001A */  div        $zero, $t0, $t8
/* 29EA8 800292A8 44125000 */  mfc1       $s2, $f10
/* 29EAC 800292AC 17000002 */  bnez       $t8, .L800292B8
/* 29EB0 800292B0 00000000 */   nop
/* 29EB4 800292B4 0007000D */  break      7
.L800292B8:
/* 29EB8 800292B8 2401FFFF */   addiu     $at, $zero, -1
/* 29EBC 800292BC 17010004 */  bne        $t8, $at, .L800292D0
/* 29EC0 800292C0 3C018000 */   lui       $at, 0x8000
/* 29EC4 800292C4 15010002 */  bne        $t0, $at, .L800292D0
/* 29EC8 800292C8 00000000 */   nop
/* 29ECC 800292CC 0006000D */  break      6
.L800292D0:
/* 29ED0 800292D0 8478000C */   lh        $t8, 0xc($v1)
/* 29ED4 800292D4 00004012 */  mflo       $t0
/* 29ED8 800292D8 25CEF814 */  addiu      $t6, $t6, -0x7ec
/* 29EDC 800292DC 004E2021 */  addu       $a0, $v0, $t6
/* 29EE0 800292E0 0258001A */  div        $zero, $s2, $t8
/* 29EE4 800292E4 84990000 */  lh         $t9, ($a0)
/* 29EE8 800292E8 848E000C */  lh         $t6, 0xc($a0)
/* 29EEC 800292EC 01194021 */  addu       $t0, $t0, $t9
/* 29EF0 800292F0 2508FFFC */  addiu      $t0, $t0, -4
/* 29EF4 800292F4 17000002 */  bnez       $t8, .L80029300
/* 29EF8 800292F8 00000000 */   nop
/* 29EFC 800292FC 0007000D */  break      7
.L80029300:
/* 29F00 80029300 2401FFFF */   addiu     $at, $zero, -1
/* 29F04 80029304 17010004 */  bne        $t8, $at, .L80029318
/* 29F08 80029308 3C018000 */   lui       $at, 0x8000
/* 29F0C 8002930C 16410002 */  bne        $s2, $at, .L80029318
/* 29F10 80029310 00000000 */   nop
/* 29F14 80029314 0006000D */  break      6
.L80029318:
/* 29F18 80029318 00009012 */   mflo      $s2
/* 29F1C 8002931C 024E9021 */  addu       $s2, $s2, $t6
/* 29F20 80029320 1000000D */  b          .L80029358
/* 29F24 80029324 2652FFF0 */   addiu     $s2, $s2, -0x10
.L80029328:
/* 29F28 80029328 0014C8C0 */  sll        $t9, $s4, 3
/* 29F2C 8002932C 0334C821 */  addu       $t9, $t9, $s4
/* 29F30 80029330 0019C880 */  sll        $t9, $t9, 2
/* 29F34 80029334 00157880 */  sll        $t7, $s5, 2
/* 29F38 80029338 3C0E8006 */  lui        $t6, %hi(D_8005F4CC)
/* 29F3C 8002933C 25CEF4CC */  addiu      $t6, $t6, %lo(D_8005F4CC)
/* 29F40 80029340 032FC021 */  addu       $t8, $t9, $t7
/* 29F44 80029344 030E1021 */  addu       $v0, $t8, $t6
/* 29F48 80029348 84480000 */  lh         $t0, ($v0)
/* 29F4C 8002934C 84520002 */  lh         $s2, 2($v0)
/* 29F50 80029350 2508FFFC */  addiu      $t0, $t0, -4
/* 29F54 80029354 2652FFF0 */  addiu      $s2, $s2, -0x10
.L80029358:
/* 29F58 80029358 8FB90130 */  lw         $t9, 0x130($sp)
/* 29F5C 8002935C 240F0010 */  addiu      $t7, $zero, 0x10
/* 29F60 80029360 AFAF0010 */  sw         $t7, 0x10($sp)
/* 29F64 80029364 01192821 */  addu       $a1, $t0, $t9
/* 29F68 80029368 24A50027 */  addiu      $a1, $a1, 0x27
/* 29F6C 8002936C 2404002C */  addiu      $a0, $zero, 0x2c
/* 29F70 80029370 2646001D */  addiu      $a2, $s2, 0x1d
/* 29F74 80029374 0C00A6D6 */  jal        drawMenues
/* 29F78 80029378 2407000C */   addiu     $a3, $zero, 0xc
.L8002937C:
/* 29F7C 8002937C 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 29F80 80029380 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 29F84 80029384 95070000 */  lhu        $a3, ($t0)
/* 29F88 80029388 30F82000 */  andi       $t8, $a3, 0x2000
/* 29F8C 8002938C 17000025 */  bnez       $t8, .L80029424
/* 29F90 80029390 3C028009 */   lui       $v0, %hi(JoystickX)
/* 29F94 80029394 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 29F98 80029398 3C038009 */  lui        $v1, %hi(ButtonPressedFrame)
/* 29F9C 8002939C 24190140 */  addiu      $t9, $zero, 0x140
/* 29FA0 800293A0 28410015 */  slti       $at, $v0, 0x15
/* 29FA4 800293A4 10200006 */  beqz       $at, .L800293C0
/* 29FA8 800293A8 34EF2000 */   ori       $t7, $a3, 0x2000
/* 29FAC 800293AC 94632876 */  lhu        $v1, %lo(ButtonPressedFrame)($v1)
/* 29FB0 800293B0 2841FFEC */  slti       $at, $v0, -0x14
/* 29FB4 800293B4 306E0010 */  andi       $t6, $v1, 0x10
/* 29FB8 800293B8 11C0000C */  beqz       $t6, .L800293EC
/* 29FBC 800293BC 00000000 */   nop
.L800293C0:
/* 29FC0 800293C0 3C018009 */  lui        $at, %hi(UNK_MenuScrollCounter)
/* 29FC4 800293C4 AC39FD04 */  sw         $t9, %lo(UNK_MenuScrollCounter)($at)
/* 29FC8 800293C8 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 29FCC 800293CC AC20FD08 */  sw         $zero, %lo(D_8008FD08)($at)
/* 29FD0 800293D0 A50F0000 */  sh         $t7, ($t0)
/* 29FD4 800293D4 00002025 */  or         $a0, $zero, $zero
/* 29FD8 800293D8 00002825 */  or         $a1, $zero, $zero
/* 29FDC 800293DC 0C009A35 */  jal        func_800268D4
/* 29FE0 800293E0 240600FF */   addiu     $a2, $zero, 0xff
/* 29FE4 800293E4 10000010 */  b          .L80029428
/* 29FE8 800293E8 8FBF0034 */   lw        $ra, 0x34($sp)
.L800293EC:
/* 29FEC 800293EC 14200002 */  bnez       $at, .L800293F8
/* 29FF0 800293F0 30782000 */   andi      $t8, $v1, 0x2000
/* 29FF4 800293F4 1300000B */  beqz       $t8, .L80029424
.L800293F8:
/* 29FF8 800293F8 3C018009 */   lui       $at, %hi(UNK_MenuScrollCounter)
/* 29FFC 800293FC AC20FD04 */  sw         $zero, %lo(UNK_MenuScrollCounter)($at)
/* 2A000 80029400 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 2A004 80029404 240EFEC0 */  addiu      $t6, $zero, -0x140
/* 2A008 80029408 AC2EFD08 */  sw         $t6, %lo(D_8008FD08)($at)
/* 2A00C 8002940C 34F93000 */  ori        $t9, $a3, 0x3000
/* 2A010 80029410 A5190000 */  sh         $t9, ($t0)
/* 2A014 80029414 00002025 */  or         $a0, $zero, $zero
/* 2A018 80029418 00002825 */  or         $a1, $zero, $zero
/* 2A01C 8002941C 0C009A35 */  jal        func_800268D4
/* 2A020 80029420 240600FF */   addiu     $a2, $zero, 0xff
.L80029424:
/* 2A024 80029424 8FBF0034 */  lw         $ra, 0x34($sp)
.L80029428:
/* 2A028 80029428 8FB0001C */  lw         $s0, 0x1c($sp)
/* 2A02C 8002942C 8FB10020 */  lw         $s1, 0x20($sp)
/* 2A030 80029430 8FB20024 */  lw         $s2, 0x24($sp)
/* 2A034 80029434 8FB30028 */  lw         $s3, 0x28($sp)
/* 2A038 80029438 8FB4002C */  lw         $s4, 0x2c($sp)
/* 2A03C 8002943C 8FB50030 */  lw         $s5, 0x30($sp)
/* 2A040 80029440 03E00008 */  jr         $ra
/* 2A044 80029444 27BD0130 */   addiu     $sp, $sp, 0x130

glabel func_80029448
/* 2A048 80029448 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2A04C 8002944C AFB10020 */  sw         $s1, 0x20($sp)
/* 2A050 80029450 00808825 */  or         $s1, $a0, $zero
/* 2A054 80029454 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2A058 80029458 AFB0001C */  sw         $s0, 0x1c($sp)
/* 2A05C 8002945C 240E009F */  addiu      $t6, $zero, 0x9f
/* 2A060 80029460 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2A064 80029464 00002025 */  or         $a0, $zero, $zero
/* 2A068 80029468 26250028 */  addiu      $a1, $s1, 0x28
/* 2A06C 8002946C 2406001E */  addiu      $a2, $zero, 0x1e
/* 2A070 80029470 0C00A6D6 */  jal        drawMenues
/* 2A074 80029474 240700F0 */   addiu     $a3, $zero, 0xf0
/* 2A078 80029478 240F0003 */  addiu      $t7, $zero, 3
/* 2A07C 8002947C AFAF0010 */  sw         $t7, 0x10($sp)
/* 2A080 80029480 24040037 */  addiu      $a0, $zero, 0x37
/* 2A084 80029484 2625002B */  addiu      $a1, $s1, 0x2b
/* 2A088 80029488 240600BE */  addiu      $a2, $zero, 0xbe
/* 2A08C 8002948C 0C00A6D6 */  jal        drawMenues
/* 2A090 80029490 240700F0 */   addiu     $a3, $zero, 0xf0
/* 2A094 80029494 2418009A */  addiu      $t8, $zero, 0x9a
/* 2A098 80029498 AFB80010 */  sw         $t8, 0x10($sp)
/* 2A09C 8002949C 24040037 */  addiu      $a0, $zero, 0x37
/* 2A0A0 800294A0 26250119 */  addiu      $a1, $s1, 0x119
/* 2A0A4 800294A4 24060024 */  addiu      $a2, $zero, 0x24
/* 2A0A8 800294A8 0C00A6D6 */  jal        drawMenues
/* 2A0AC 800294AC 24070002 */   addiu     $a3, $zero, 2
/* 2A0B0 800294B0 26300027 */  addiu      $s0, $s1, 0x27
/* 2A0B4 800294B4 24190001 */  addiu      $t9, $zero, 1
/* 2A0B8 800294B8 AFB90010 */  sw         $t9, 0x10($sp)
/* 2A0BC 800294BC 02002825 */  or         $a1, $s0, $zero
/* 2A0C0 800294C0 24040037 */  addiu      $a0, $zero, 0x37
/* 2A0C4 800294C4 2406001D */  addiu      $a2, $zero, 0x1d
/* 2A0C8 800294C8 0C00A6D6 */  jal        drawMenues
/* 2A0CC 800294CC 240700F2 */   addiu     $a3, $zero, 0xf2
/* 2A0D0 800294D0 24090001 */  addiu      $t1, $zero, 1
/* 2A0D4 800294D4 AFA90010 */  sw         $t1, 0x10($sp)
/* 2A0D8 800294D8 24040037 */  addiu      $a0, $zero, 0x37
/* 2A0DC 800294DC 02002825 */  or         $a1, $s0, $zero
/* 2A0E0 800294E0 240600BD */  addiu      $a2, $zero, 0xbd
/* 2A0E4 800294E4 0C00A6D6 */  jal        drawMenues
/* 2A0E8 800294E8 240700F2 */   addiu     $a3, $zero, 0xf2
/* 2A0EC 800294EC 240A009F */  addiu      $t2, $zero, 0x9f
/* 2A0F0 800294F0 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2A0F4 800294F4 24040037 */  addiu      $a0, $zero, 0x37
/* 2A0F8 800294F8 02002825 */  or         $a1, $s0, $zero
/* 2A0FC 800294FC 2406001E */  addiu      $a2, $zero, 0x1e
/* 2A100 80029500 0C00A6D6 */  jal        drawMenues
/* 2A104 80029504 24070001 */   addiu     $a3, $zero, 1
/* 2A108 80029508 240B009F */  addiu      $t3, $zero, 0x9f
/* 2A10C 8002950C AFAB0010 */  sw         $t3, 0x10($sp)
/* 2A110 80029510 24040037 */  addiu      $a0, $zero, 0x37
/* 2A114 80029514 26250118 */  addiu      $a1, $s1, 0x118
/* 2A118 80029518 2406001E */  addiu      $a2, $zero, 0x1e
/* 2A11C 8002951C 0C00A6D6 */  jal        drawMenues
/* 2A120 80029520 24070001 */   addiu     $a3, $zero, 1
/* 2A124 80029524 26300029 */  addiu      $s0, $s1, 0x29
/* 2A128 80029528 240C0001 */  addiu      $t4, $zero, 1
/* 2A12C 8002952C AFAC0010 */  sw         $t4, 0x10($sp)
/* 2A130 80029530 02002825 */  or         $a1, $s0, $zero
/* 2A134 80029534 24040038 */  addiu      $a0, $zero, 0x38
/* 2A138 80029538 2406001F */  addiu      $a2, $zero, 0x1f
/* 2A13C 8002953C 0C00A6D6 */  jal        drawMenues
/* 2A140 80029540 240700ED */   addiu     $a3, $zero, 0xed
/* 2A144 80029544 240D009B */  addiu      $t5, $zero, 0x9b
/* 2A148 80029548 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2A14C 8002954C 24040038 */  addiu      $a0, $zero, 0x38
/* 2A150 80029550 02002825 */  or         $a1, $s0, $zero
/* 2A154 80029554 24060020 */  addiu      $a2, $zero, 0x20
/* 2A158 80029558 0C00A6D6 */  jal        drawMenues
/* 2A15C 8002955C 24070001 */   addiu     $a3, $zero, 1
/* 2A160 80029560 240E0001 */  addiu      $t6, $zero, 1
/* 2A164 80029564 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2A168 80029568 24040039 */  addiu      $a0, $zero, 0x39
/* 2A16C 8002956C 02002825 */  or         $a1, $s0, $zero
/* 2A170 80029570 240600BB */  addiu      $a2, $zero, 0xbb
/* 2A174 80029574 0C00A6D6 */  jal        drawMenues
/* 2A178 80029578 240700EE */   addiu     $a3, $zero, 0xee
/* 2A17C 8002957C 240F009C */  addiu      $t7, $zero, 0x9c
/* 2A180 80029580 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2A184 80029584 24040039 */  addiu      $a0, $zero, 0x39
/* 2A188 80029588 26250116 */  addiu      $a1, $s1, 0x116
/* 2A18C 8002958C 2406001F */  addiu      $a2, $zero, 0x1f
/* 2A190 80029590 0C00A6D6 */  jal        drawMenues
/* 2A194 80029594 24070001 */   addiu     $a3, $zero, 1
/* 2A198 80029598 24180007 */  addiu      $t8, $zero, 7
/* 2A19C 8002959C AFB80010 */  sw         $t8, 0x10($sp)
/* 2A1A0 800295A0 24040005 */  addiu      $a0, $zero, 5
/* 2A1A4 800295A4 26250045 */  addiu      $a1, $s1, 0x45
/* 2A1A8 800295A8 2406001C */  addiu      $a2, $zero, 0x1c
/* 2A1AC 800295AC 0C00A6D6 */  jal        drawMenues
/* 2A1B0 800295B0 24070007 */   addiu     $a3, $zero, 7
/* 2A1B4 800295B4 24190007 */  addiu      $t9, $zero, 7
/* 2A1B8 800295B8 AFB90010 */  sw         $t9, 0x10($sp)
/* 2A1BC 800295BC 24040005 */  addiu      $a0, $zero, 5
/* 2A1C0 800295C0 262500F3 */  addiu      $a1, $s1, 0xf3
/* 2A1C4 800295C4 2406001C */  addiu      $a2, $zero, 0x1c
/* 2A1C8 800295C8 0C00A6D6 */  jal        drawMenues
/* 2A1CC 800295CC 24070007 */   addiu     $a3, $zero, 7
/* 2A1D0 800295D0 3C108009 */  lui        $s0, %hi(D_8008FD10)
/* 2A1D4 800295D4 8E10FD10 */  lw         $s0, %lo(D_8008FD10)($s0)
/* 2A1D8 800295D8 3C018006 */  lui        $at, %hi(D_8005F0C0)
/* 2A1DC 800295DC 240B000B */  addiu      $t3, $zero, 0xb
/* 2A1E0 800295E0 00104883 */  sra        $t1, $s0, 2
/* 2A1E4 800295E4 312A000F */  andi       $t2, $t1, 0xf
/* 2A1E8 800295E8 002A0821 */  addu       $at, $at, $t2
/* 2A1EC 800295EC 8030F0C0 */  lb         $s0, %lo(D_8005F0C0)($at)
/* 2A1F0 800295F0 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2A1F4 800295F4 24040006 */  addiu      $a0, $zero, 6
/* 2A1F8 800295F8 02302821 */  addu       $a1, $s1, $s0
/* 2A1FC 800295FC 24A50036 */  addiu      $a1, $a1, 0x36
/* 2A200 80029600 2406001A */  addiu      $a2, $zero, 0x1a
/* 2A204 80029604 0C00A6D6 */  jal        drawMenues
/* 2A208 80029608 2407000E */   addiu     $a3, $zero, 0xe
/* 2A20C 8002960C 02302823 */  subu       $a1, $s1, $s0
/* 2A210 80029610 240C000B */  addiu      $t4, $zero, 0xb
/* 2A214 80029614 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2A218 80029618 24A500FB */  addiu      $a1, $a1, 0xfb
/* 2A21C 8002961C 24040007 */  addiu      $a0, $zero, 7
/* 2A220 80029620 2406001A */  addiu      $a2, $zero, 0x1a
/* 2A224 80029624 0C00A6D6 */  jal        drawMenues
/* 2A228 80029628 2407000E */   addiu     $a3, $zero, 0xe
/* 2A22C 8002962C 240D0010 */  addiu      $t5, $zero, 0x10
/* 2A230 80029630 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2A234 80029634 2404002D */  addiu      $a0, $zero, 0x2d
/* 2A238 80029638 26250081 */  addiu      $a1, $s1, 0x81
/* 2A23C 8002963C 24060019 */  addiu      $a2, $zero, 0x19
/* 2A240 80029640 0C00A6D6 */  jal        drawMenues
/* 2A244 80029644 2407003A */   addiu     $a3, $zero, 0x3a
/* 2A248 80029648 263000A5 */  addiu      $s0, $s1, 0xa5
/* 2A24C 8002964C 240E0006 */  addiu      $t6, $zero, 6
/* 2A250 80029650 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2A254 80029654 02002825 */  or         $a1, $s0, $zero
/* 2A258 80029658 24040032 */  addiu      $a0, $zero, 0x32
/* 2A25C 8002965C 24060035 */  addiu      $a2, $zero, 0x35
/* 2A260 80029660 0C00A6D6 */  jal        drawMenues
/* 2A264 80029664 24070035 */   addiu     $a3, $zero, 0x35
/* 2A268 80029668 240F0006 */  addiu      $t7, $zero, 6
/* 2A26C 8002966C AFAF0010 */  sw         $t7, 0x10($sp)
/* 2A270 80029670 24040032 */  addiu      $a0, $zero, 0x32
/* 2A274 80029674 26250031 */  addiu      $a1, $s1, 0x31
/* 2A278 80029678 24060078 */  addiu      $a2, $zero, 0x78
/* 2A27C 8002967C 0C00A6D6 */  jal        drawMenues
/* 2A280 80029680 24070035 */   addiu     $a3, $zero, 0x35
/* 2A284 80029684 24180006 */  addiu      $t8, $zero, 6
/* 2A288 80029688 AFB80010 */  sw         $t8, 0x10($sp)
/* 2A28C 8002968C 24040032 */  addiu      $a0, $zero, 0x32
/* 2A290 80029690 262500D9 */  addiu      $a1, $s1, 0xd9
/* 2A294 80029694 24060078 */  addiu      $a2, $zero, 0x78
/* 2A298 80029698 0C00A6D6 */  jal        drawMenues
/* 2A29C 8002969C 24070035 */   addiu     $a3, $zero, 0x35
/* 2A2A0 800296A0 24190006 */  addiu      $t9, $zero, 6
/* 2A2A4 800296A4 AFB90010 */  sw         $t9, 0x10($sp)
/* 2A2A8 800296A8 24040032 */  addiu      $a0, $zero, 0x32
/* 2A2AC 800296AC 02002825 */  or         $a1, $s0, $zero
/* 2A2B0 800296B0 240600AE */  addiu      $a2, $zero, 0xae
/* 2A2B4 800296B4 0C00A6D6 */  jal        drawMenues
/* 2A2B8 800296B8 24070035 */   addiu     $a3, $zero, 0x35
/* 2A2BC 800296BC 26300086 */  addiu      $s0, $s1, 0x86
/* 2A2C0 800296C0 2409000A */  addiu      $t1, $zero, 0xa
/* 2A2C4 800296C4 AFA90010 */  sw         $t1, 0x10($sp)
/* 2A2C8 800296C8 02002825 */  or         $a1, $s0, $zero
/* 2A2CC 800296CC 24040014 */  addiu      $a0, $zero, 0x14
/* 2A2D0 800296D0 24060034 */  addiu      $a2, $zero, 0x34
/* 2A2D4 800296D4 0C00A6D6 */  jal        drawMenues
/* 2A2D8 800296D8 24070008 */   addiu     $a3, $zero, 8
/* 2A2DC 800296DC 240A000A */  addiu      $t2, $zero, 0xa
/* 2A2E0 800296E0 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2A2E4 800296E4 24040014 */  addiu      $a0, $zero, 0x14
/* 2A2E8 800296E8 26250047 */  addiu      $a1, $s1, 0x47
/* 2A2EC 800296EC 2406006B */  addiu      $a2, $zero, 0x6b
/* 2A2F0 800296F0 0C00A6D6 */  jal        drawMenues
/* 2A2F4 800296F4 24070008 */   addiu     $a3, $zero, 8
/* 2A2F8 800296F8 240B000A */  addiu      $t3, $zero, 0xa
/* 2A2FC 800296FC AFAB0010 */  sw         $t3, 0x10($sp)
/* 2A300 80029700 24040014 */  addiu      $a0, $zero, 0x14
/* 2A304 80029704 262500F0 */  addiu      $a1, $s1, 0xf0
/* 2A308 80029708 2406006B */  addiu      $a2, $zero, 0x6b
/* 2A30C 8002970C 0C00A6D6 */  jal        drawMenues
/* 2A310 80029710 24070008 */   addiu     $a3, $zero, 8
/* 2A314 80029714 240C000A */  addiu      $t4, $zero, 0xa
/* 2A318 80029718 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2A31C 8002971C 24040014 */  addiu      $a0, $zero, 0x14
/* 2A320 80029720 02002825 */  or         $a1, $s0, $zero
/* 2A324 80029724 240600AD */  addiu      $a2, $zero, 0xad
/* 2A328 80029728 0C00A6D6 */  jal        drawMenues
/* 2A32C 8002972C 24070008 */   addiu     $a3, $zero, 8
/* 2A330 80029730 2630009A */  addiu      $s0, $s1, 0x9a
/* 2A334 80029734 240D000C */  addiu      $t5, $zero, 0xc
/* 2A338 80029738 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2A33C 8002973C 02002825 */  or         $a1, $s0, $zero
/* 2A340 80029740 2404002E */  addiu      $a0, $zero, 0x2e
/* 2A344 80029744 2406003D */  addiu      $a2, $zero, 0x3d
/* 2A348 80029748 0C00A6D6 */  jal        drawMenues
/* 2A34C 8002974C 2407000C */   addiu     $a3, $zero, 0xc
/* 2A350 80029750 240E000C */  addiu      $t6, $zero, 0xc
/* 2A354 80029754 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2A358 80029758 2404002F */  addiu      $a0, $zero, 0x2f
/* 2A35C 8002975C 26250067 */  addiu      $a1, $s1, 0x67
/* 2A360 80029760 2406006F */  addiu      $a2, $zero, 0x6f
/* 2A364 80029764 0C00A6D6 */  jal        drawMenues
/* 2A368 80029768 2407000C */   addiu     $a3, $zero, 0xc
/* 2A36C 8002976C 240F000C */  addiu      $t7, $zero, 0xc
/* 2A370 80029770 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2A374 80029774 24040030 */  addiu      $a0, $zero, 0x30
/* 2A378 80029778 262500CC */  addiu      $a1, $s1, 0xcc
/* 2A37C 8002977C 2406006F */  addiu      $a2, $zero, 0x6f
/* 2A380 80029780 0C00A6D6 */  jal        drawMenues
/* 2A384 80029784 2407000C */   addiu     $a3, $zero, 0xc
/* 2A388 80029788 2418000C */  addiu      $t8, $zero, 0xc
/* 2A38C 8002978C AFB80010 */  sw         $t8, 0x10($sp)
/* 2A390 80029790 24040031 */  addiu      $a0, $zero, 0x31
/* 2A394 80029794 02002825 */  or         $a1, $s0, $zero
/* 2A398 80029798 240600A1 */  addiu      $a2, $zero, 0xa1
/* 2A39C 8002979C 0C00A6D6 */  jal        drawMenues
/* 2A3A0 800297A0 2407000C */   addiu     $a3, $zero, 0xc
/* 2A3A4 800297A4 2419000A */  addiu      $t9, $zero, 0xa
/* 2A3A8 800297A8 AFB90010 */  sw         $t9, 0x10($sp)
/* 2A3AC 800297AC 24040015 */  addiu      $a0, $zero, 0x15
/* 2A3B0 800297B0 262500A7 */  addiu      $a1, $s1, 0xa7
/* 2A3B4 800297B4 24060092 */  addiu      $a2, $zero, 0x92
/* 2A3B8 800297B8 0C00A6D6 */  jal        drawMenues
/* 2A3BC 800297BC 24070008 */   addiu     $a3, $zero, 8
/* 2A3C0 800297C0 2630008D */  addiu      $s0, $s1, 0x8d
/* 2A3C4 800297C4 2409000A */  addiu      $t1, $zero, 0xa
/* 2A3C8 800297C8 AFA90010 */  sw         $t1, 0x10($sp)
/* 2A3CC 800297CC 02002825 */  or         $a1, $s0, $zero
/* 2A3D0 800297D0 24040002 */  addiu      $a0, $zero, 2
/* 2A3D4 800297D4 24060034 */  addiu      $a2, $zero, 0x34
/* 2A3D8 800297D8 0C00AAD9 */  jal        drawSaveNumber_
/* 2A3DC 800297DC 24070032 */   addiu     $a3, $zero, 0x32
/* 2A3E0 800297E0 240A000A */  addiu      $t2, $zero, 0xa
/* 2A3E4 800297E4 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2A3E8 800297E8 24040002 */  addiu      $a0, $zero, 2
/* 2A3EC 800297EC 2625004E */  addiu      $a1, $s1, 0x4e
/* 2A3F0 800297F0 2406006B */  addiu      $a2, $zero, 0x6b
/* 2A3F4 800297F4 0C00AAD9 */  jal        drawSaveNumber_
/* 2A3F8 800297F8 24070032 */   addiu     $a3, $zero, 0x32
/* 2A3FC 800297FC 240B000A */  addiu      $t3, $zero, 0xa
/* 2A400 80029800 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2A404 80029804 24040002 */  addiu      $a0, $zero, 2
/* 2A408 80029808 262500F7 */  addiu      $a1, $s1, 0xf7
/* 2A40C 8002980C 2406006B */  addiu      $a2, $zero, 0x6b
/* 2A410 80029810 0C00AAD9 */  jal        drawSaveNumber_
/* 2A414 80029814 24070032 */   addiu     $a3, $zero, 0x32
/* 2A418 80029818 240C000A */  addiu      $t4, $zero, 0xa
/* 2A41C 8002981C AFAC0010 */  sw         $t4, 0x10($sp)
/* 2A420 80029820 24040002 */  addiu      $a0, $zero, 2
/* 2A424 80029824 02002825 */  or         $a1, $s0, $zero
/* 2A428 80029828 240600AD */  addiu      $a2, $zero, 0xad
/* 2A42C 8002982C 0C00AAD9 */  jal        drawSaveNumber_
/* 2A430 80029830 24070032 */   addiu     $a3, $zero, 0x32
/* 2A434 80029834 3C108008 */  lui        $s0, %hi(numFireSpirits)
/* 2A438 80029838 26250078 */  addiu      $a1, $s1, 0x78
/* 2A43C 8002983C 240D000A */  addiu      $t5, $zero, 0xa
/* 2A440 80029840 9207BAA4 */  lbu        $a3, %lo(numFireSpirits)($s0)
/* 2A444 80029844 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2A448 80029848 AFA50028 */  sw         $a1, 0x28($sp)
/* 2A44C 8002984C 24040002 */  addiu      $a0, $zero, 2
/* 2A450 80029850 0C00AAD9 */  jal        drawSaveNumber_
/* 2A454 80029854 24060034 */   addiu     $a2, $zero, 0x34
/* 2A458 80029858 3C108008 */  lui        $s0, %hi(numEarthSpirits)
/* 2A45C 8002985C 240E000A */  addiu      $t6, $zero, 0xa
/* 2A460 80029860 9207BAA5 */  lbu        $a3, %lo(numEarthSpirits)($s0)
/* 2A464 80029864 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2A468 80029868 24040002 */  addiu      $a0, $zero, 2
/* 2A46C 8002986C 26250039 */  addiu      $a1, $s1, 0x39
/* 2A470 80029870 0C00AAD9 */  jal        drawSaveNumber_
/* 2A474 80029874 2406006B */   addiu     $a2, $zero, 0x6b
/* 2A478 80029878 3C108008 */  lui        $s0, %hi(numWindSpirits)
/* 2A47C 8002987C 240F000A */  addiu      $t7, $zero, 0xa
/* 2A480 80029880 9207BAA7 */  lbu        $a3, %lo(numWindSpirits)($s0)
/* 2A484 80029884 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2A488 80029888 24040002 */  addiu      $a0, $zero, 2
/* 2A48C 8002988C 262500E2 */  addiu      $a1, $s1, 0xe2
/* 2A490 80029890 0C00AAD9 */  jal        drawSaveNumber_
/* 2A494 80029894 2406006B */   addiu     $a2, $zero, 0x6b
/* 2A498 80029898 3C108008 */  lui        $s0, %hi(numWaterSpirits)
/* 2A49C 8002989C 2418000A */  addiu      $t8, $zero, 0xa
/* 2A4A0 800298A0 9207BAA6 */  lbu        $a3, %lo(numWaterSpirits)($s0)
/* 2A4A4 800298A4 AFB80010 */  sw         $t8, 0x10($sp)
/* 2A4A8 800298A8 24040002 */  addiu      $a0, $zero, 2
/* 2A4AC 800298AC 8FA50028 */  lw         $a1, 0x28($sp)
/* 2A4B0 800298B0 0C00AAD9 */  jal        drawSaveNumber_
/* 2A4B4 800298B4 240600AD */   addiu     $a2, $zero, 0xad
/* 2A4B8 800298B8 3C198008 */  lui        $t9, %hi(numFireSpirits)
/* 2A4BC 800298BC 9339BAA4 */  lbu        $t9, %lo(numFireSpirits)($t9)
/* 2A4C0 800298C0 3C014248 */  lui        $at, 0x4248
/* 2A4C4 800298C4 44811000 */  mtc1       $at, $f2
/* 2A4C8 800298C8 44992000 */  mtc1       $t9, $f4
/* 2A4CC 800298CC 07210005 */  bgez       $t9, .L800298E4
/* 2A4D0 800298D0 46802020 */   cvt.s.w   $f0, $f4
/* 2A4D4 800298D4 3C014F80 */  lui        $at, 0x4f80
/* 2A4D8 800298D8 44813000 */  mtc1       $at, $f6
/* 2A4DC 800298DC 00000000 */  nop
/* 2A4E0 800298E0 46060000 */  add.s      $f0, $f0, $f6
.L800298E4:
/* 2A4E4 800298E4 46020003 */  div.s      $f0, $f0, $f2
/* 2A4E8 800298E8 263000A6 */  addiu      $s0, $s1, 0xa6
/* 2A4EC 800298EC 240A0003 */  addiu      $t2, $zero, 3
/* 2A4F0 800298F0 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2A4F4 800298F4 02002825 */  or         $a1, $s0, $zero
/* 2A4F8 800298F8 24040033 */  addiu      $a0, $zero, 0x33
/* 2A4FC 800298FC 24060036 */  addiu      $a2, $zero, 0x36
/* 2A500 80029900 46020002 */  mul.s      $f0, $f0, $f2
/* 2A504 80029904 4600020D */  trunc.w.s  $f8, $f0
/* 2A508 80029908 44074000 */  mfc1       $a3, $f8
/* 2A50C 8002990C 0C00A6D6 */  jal        drawMenues
/* 2A510 80029910 00000000 */   nop
/* 2A514 80029914 3C0B8008 */  lui        $t3, %hi(numEarthSpirits)
/* 2A518 80029918 916BBAA5 */  lbu        $t3, %lo(numEarthSpirits)($t3)
/* 2A51C 8002991C 3C014248 */  lui        $at, 0x4248
/* 2A520 80029920 44811000 */  mtc1       $at, $f2
/* 2A524 80029924 448B5000 */  mtc1       $t3, $f10
/* 2A528 80029928 3C014F80 */  lui        $at, 0x4f80
/* 2A52C 8002992C 05610004 */  bgez       $t3, .L80029940
/* 2A530 80029930 46805020 */   cvt.s.w   $f0, $f10
/* 2A534 80029934 44818000 */  mtc1       $at, $f16
/* 2A538 80029938 00000000 */  nop
/* 2A53C 8002993C 46100000 */  add.s      $f0, $f0, $f16
.L80029940:
/* 2A540 80029940 46020003 */  div.s      $f0, $f0, $f2
/* 2A544 80029944 240D0003 */  addiu      $t5, $zero, 3
/* 2A548 80029948 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2A54C 8002994C 24040033 */  addiu      $a0, $zero, 0x33
/* 2A550 80029950 26250032 */  addiu      $a1, $s1, 0x32
/* 2A554 80029954 24060079 */  addiu      $a2, $zero, 0x79
/* 2A558 80029958 46020002 */  mul.s      $f0, $f0, $f2
/* 2A55C 8002995C 4600048D */  trunc.w.s  $f18, $f0
/* 2A560 80029960 44079000 */  mfc1       $a3, $f18
/* 2A564 80029964 0C00A6D6 */  jal        drawMenues
/* 2A568 80029968 00000000 */   nop
/* 2A56C 8002996C 3C0E8008 */  lui        $t6, %hi(numWindSpirits)
/* 2A570 80029970 91CEBAA7 */  lbu        $t6, %lo(numWindSpirits)($t6)
/* 2A574 80029974 3C014248 */  lui        $at, 0x4248
/* 2A578 80029978 44811000 */  mtc1       $at, $f2
/* 2A57C 8002997C 448E2000 */  mtc1       $t6, $f4
/* 2A580 80029980 3C014F80 */  lui        $at, 0x4f80
/* 2A584 80029984 05C10004 */  bgez       $t6, .L80029998
/* 2A588 80029988 46802020 */   cvt.s.w   $f0, $f4
/* 2A58C 8002998C 44813000 */  mtc1       $at, $f6
/* 2A590 80029990 00000000 */  nop
/* 2A594 80029994 46060000 */  add.s      $f0, $f0, $f6
.L80029998:
/* 2A598 80029998 46020003 */  div.s      $f0, $f0, $f2
/* 2A59C 8002999C 24180003 */  addiu      $t8, $zero, 3
/* 2A5A0 800299A0 AFB80010 */  sw         $t8, 0x10($sp)
/* 2A5A4 800299A4 24040033 */  addiu      $a0, $zero, 0x33
/* 2A5A8 800299A8 262500DA */  addiu      $a1, $s1, 0xda
/* 2A5AC 800299AC 24060079 */  addiu      $a2, $zero, 0x79
/* 2A5B0 800299B0 46020002 */  mul.s      $f0, $f0, $f2
/* 2A5B4 800299B4 4600020D */  trunc.w.s  $f8, $f0
/* 2A5B8 800299B8 44074000 */  mfc1       $a3, $f8
/* 2A5BC 800299BC 0C00A6D6 */  jal        drawMenues
/* 2A5C0 800299C0 00000000 */   nop
/* 2A5C4 800299C4 3C198008 */  lui        $t9, %hi(numWaterSpirits)
/* 2A5C8 800299C8 9339BAA6 */  lbu        $t9, %lo(numWaterSpirits)($t9)
/* 2A5CC 800299CC 3C014248 */  lui        $at, 0x4248
/* 2A5D0 800299D0 44811000 */  mtc1       $at, $f2
/* 2A5D4 800299D4 44995000 */  mtc1       $t9, $f10
/* 2A5D8 800299D8 3C014F80 */  lui        $at, 0x4f80
/* 2A5DC 800299DC 07210004 */  bgez       $t9, .L800299F0
/* 2A5E0 800299E0 46805020 */   cvt.s.w   $f0, $f10
/* 2A5E4 800299E4 44818000 */  mtc1       $at, $f16
/* 2A5E8 800299E8 00000000 */  nop
/* 2A5EC 800299EC 46100000 */  add.s      $f0, $f0, $f16
.L800299F0:
/* 2A5F0 800299F0 46020003 */  div.s      $f0, $f0, $f2
/* 2A5F4 800299F4 240A0003 */  addiu      $t2, $zero, 3
/* 2A5F8 800299F8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2A5FC 800299FC 24040033 */  addiu      $a0, $zero, 0x33
/* 2A600 80029A00 02002825 */  or         $a1, $s0, $zero
/* 2A604 80029A04 240600AF */  addiu      $a2, $zero, 0xaf
/* 2A608 80029A08 46020002 */  mul.s      $f0, $f0, $f2
/* 2A60C 80029A0C 4600048D */  trunc.w.s  $f18, $f0
/* 2A610 80029A10 44079000 */  mfc1       $a3, $f18
/* 2A614 80029A14 0C00A6D6 */  jal        drawMenues
/* 2A618 80029A18 00000000 */   nop
/* 2A61C 80029A1C 3C0B8008 */  lui        $t3, %hi(CombatXP)
/* 2A620 80029A20 3C0D8008 */  lui        $t5, %hi(Combat_ele_lvl)
/* 2A624 80029A24 91ADBAB4 */  lbu        $t5, %lo(Combat_ele_lvl)($t5)
/* 2A628 80029A28 8D6BBA90 */  lw         $t3, %lo(CombatXP)($t3)
/* 2A62C 80029A2C 3C0F8005 */  lui        $t7, %hi(D_80053D3C)
/* 2A630 80029A30 000D7080 */  sll        $t6, $t5, 2
/* 2A634 80029A34 000B6080 */  sll        $t4, $t3, 2
/* 2A638 80029A38 01EE7821 */  addu       $t7, $t7, $t6
/* 2A63C 80029A3C 018B6023 */  subu       $t4, $t4, $t3
/* 2A640 80029A40 8DEF3D3C */  lw         $t7, %lo(D_80053D3C)($t7)
/* 2A644 80029A44 000C60C0 */  sll        $t4, $t4, 3
/* 2A648 80029A48 018B6021 */  addu       $t4, $t4, $t3
/* 2A64C 80029A4C 000C6080 */  sll        $t4, $t4, 2
/* 2A650 80029A50 018F001B */  divu       $zero, $t4, $t7
/* 2A654 80029A54 00008012 */  mflo       $s0
/* 2A658 80029A58 2A010065 */  slti       $at, $s0, 0x65
/* 2A65C 80029A5C 15E00002 */  bnez       $t7, .L80029A68
/* 2A660 80029A60 00000000 */   nop
/* 2A664 80029A64 0007000D */  break      7
.L80029A68:
/* 2A668 80029A68 24040003 */   addiu     $a0, $zero, 3
/* 2A66C 80029A6C 14200002 */  bnez       $at, .L80029A78
/* 2A670 80029A70 26250091 */   addiu     $a1, $s1, 0x91
/* 2A674 80029A74 24100064 */  addiu      $s0, $zero, 0x64
.L80029A78:
/* 2A678 80029A78 2418000A */  addiu      $t8, $zero, 0xa
/* 2A67C 80029A7C AFB80010 */  sw         $t8, 0x10($sp)
/* 2A680 80029A80 24060092 */  addiu      $a2, $zero, 0x92
/* 2A684 80029A84 0C00AAD9 */  jal        drawSaveNumber_
/* 2A688 80029A88 02003825 */   or        $a3, $s0, $zero
/* 2A68C 80029A8C 02002025 */  or         $a0, $s0, $zero
/* 2A690 80029A90 0C00A82E */  jal        func_8002A0B8
/* 2A694 80029A94 02202825 */   or        $a1, $s1, $zero
/* 2A698 80029A98 3C088009 */  lui        $t0, %hi(flags_DAT_8008fd0c)
/* 2A69C 80029A9C 2508FD0C */  addiu      $t0, $t0, %lo(flags_DAT_8008fd0c)
/* 2A6A0 80029AA0 95070000 */  lhu        $a3, ($t0)
/* 2A6A4 80029AA4 3C028009 */  lui        $v0, %hi(JoystickX)
/* 2A6A8 80029AA8 30F92000 */  andi       $t9, $a3, 0x2000
/* 2A6AC 80029AAC 57200026 */  bnel       $t9, $zero, .L80029B48
/* 2A6B0 80029AB0 8FBF0024 */   lw        $ra, 0x24($sp)
/* 2A6B4 80029AB4 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 2A6B8 80029AB8 3C038009 */  lui        $v1, %hi(ButtonPressedFrame)
/* 2A6BC 80029ABC 240A0140 */  addiu      $t2, $zero, 0x140
/* 2A6C0 80029AC0 28410015 */  slti       $at, $v0, 0x15
/* 2A6C4 80029AC4 10200006 */  beqz       $at, .L80029AE0
/* 2A6C8 80029AC8 34EB2000 */   ori       $t3, $a3, 0x2000
/* 2A6CC 80029ACC 94632876 */  lhu        $v1, %lo(ButtonPressedFrame)($v1)
/* 2A6D0 80029AD0 2841FFEC */  slti       $at, $v0, -0x14
/* 2A6D4 80029AD4 30690010 */  andi       $t1, $v1, 0x10
/* 2A6D8 80029AD8 1120000C */  beqz       $t1, .L80029B0C
/* 2A6DC 80029ADC 00000000 */   nop
.L80029AE0:
/* 2A6E0 80029AE0 3C018009 */  lui        $at, %hi(UNK_MenuScrollCounter)
/* 2A6E4 80029AE4 AC2AFD04 */  sw         $t2, %lo(UNK_MenuScrollCounter)($at)
/* 2A6E8 80029AE8 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 2A6EC 80029AEC AC20FD08 */  sw         $zero, %lo(D_8008FD08)($at)
/* 2A6F0 80029AF0 A50B0000 */  sh         $t3, ($t0)
/* 2A6F4 80029AF4 00002025 */  or         $a0, $zero, $zero
/* 2A6F8 80029AF8 00002825 */  or         $a1, $zero, $zero
/* 2A6FC 80029AFC 0C009A35 */  jal        func_800268D4
/* 2A700 80029B00 240600FF */   addiu     $a2, $zero, 0xff
/* 2A704 80029B04 10000010 */  b          .L80029B48
/* 2A708 80029B08 8FBF0024 */   lw        $ra, 0x24($sp)
.L80029B0C:
/* 2A70C 80029B0C 14200002 */  bnez       $at, .L80029B18
/* 2A710 80029B10 306D2000 */   andi      $t5, $v1, 0x2000
/* 2A714 80029B14 11A0000B */  beqz       $t5, .L80029B44
.L80029B18:
/* 2A718 80029B18 3C018009 */   lui       $at, %hi(UNK_MenuScrollCounter)
/* 2A71C 80029B1C AC20FD04 */  sw         $zero, %lo(UNK_MenuScrollCounter)($at)
/* 2A720 80029B20 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 2A724 80029B24 240EFEC0 */  addiu      $t6, $zero, -0x140
/* 2A728 80029B28 AC2EFD08 */  sw         $t6, %lo(D_8008FD08)($at)
/* 2A72C 80029B2C 34EC3000 */  ori        $t4, $a3, 0x3000
/* 2A730 80029B30 A50C0000 */  sh         $t4, ($t0)
/* 2A734 80029B34 00002025 */  or         $a0, $zero, $zero
/* 2A738 80029B38 00002825 */  or         $a1, $zero, $zero
/* 2A73C 80029B3C 0C009A35 */  jal        func_800268D4
/* 2A740 80029B40 240600FF */   addiu     $a2, $zero, 0xff
.L80029B44:
/* 2A744 80029B44 8FBF0024 */  lw         $ra, 0x24($sp)
.L80029B48:
/* 2A748 80029B48 8FB0001C */  lw         $s0, 0x1c($sp)
/* 2A74C 80029B4C 8FB10020 */  lw         $s1, 0x20($sp)
/* 2A750 80029B50 03E00008 */  jr         $ra
/* 2A754 80029B54 27BD0038 */   addiu     $sp, $sp, 0x38

glabel drawMenues
/* 2A758 80029B58 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* 2A75C 80029B5C AFB00004 */  sw         $s0, 4($sp)
/* 2A760 80029B60 00A08025 */  or         $s0, $a1, $zero
/* 2A764 80029B64 AFA600E0 */  sw         $a2, 0xe0($sp)
/* 2A768 80029B68 AFA700E4 */  sw         $a3, 0xe4($sp)
/* 2A76C 80029B6C 00047080 */  sll        $t6, $a0, 2
/* 2A770 80029B70 3C0F8006 */  lui        $t7, %hi(D_8005F0D0)
/* 2A774 80029B74 01EE7821 */  addu       $t7, $t7, $t6
/* 2A778 80029B78 3C198006 */  lui        $t9, %hi(D_8005F014)
/* 2A77C 80029B7C 8DEFF0D0 */  lw         $t7, %lo(D_8005F0D0)($t7)
/* 2A780 80029B80 2739F014 */  addiu      $t9, $t9, %lo(D_8005F014)
/* 2A784 80029B84 0004C040 */  sll        $t8, $a0, 1
/* 2A788 80029B88 03191821 */  addu       $v1, $t8, $t9
/* 2A78C 80029B8C 90690000 */  lbu        $t1, ($v1)
/* 2A790 80029B90 AFAF0098 */  sw         $t7, 0x98($sp)
/* 2A794 80029B94 906F0001 */  lbu        $t7, 1($v1)
/* 2A798 80029B98 252EFFFF */  addiu      $t6, $t1, -1
/* 2A79C 80029B9C AFAE00A0 */  sw         $t6, 0xa0($sp)
/* 2A7A0 80029BA0 240E0400 */  addiu      $t6, $zero, 0x400
/* 2A7A4 80029BA4 24190400 */  addiu      $t9, $zero, 0x400
/* 2A7A8 80029BA8 25F8FFFF */  addiu      $t8, $t7, -1
/* 2A7AC 80029BAC 00004025 */  or         $t0, $zero, $zero
/* 2A7B0 80029BB0 00001025 */  or         $v0, $zero, $zero
/* 2A7B4 80029BB4 AFB8009C */  sw         $t8, 0x9c($sp)
/* 2A7B8 80029BB8 00005025 */  or         $t2, $zero, $zero
/* 2A7BC 80029BBC 00005825 */  or         $t3, $zero, $zero
/* 2A7C0 80029BC0 00006825 */  or         $t5, $zero, $zero
/* 2A7C4 80029BC4 AFA000B8 */  sw         $zero, 0xb8($sp)
/* 2A7C8 80029BC8 AFB900AC */  sw         $t9, 0xac($sp)
/* 2A7CC 80029BCC AFAE00B0 */  sw         $t6, 0xb0($sp)
/* 2A7D0 80029BD0 1880000A */  blez       $a0, .L80029BFC
/* 2A7D4 80029BD4 AFA90094 */   sw        $t1, 0x94($sp)
/* 2A7D8 80029BD8 248FFFC9 */  addiu      $t7, $a0, -0x37
/* 2A7DC 80029BDC 2DE10008 */  sltiu      $at, $t7, 8
/* 2A7E0 80029BE0 1020001A */  beqz       $at, .L80029C4C
/* 2A7E4 80029BE4 000F7880 */   sll       $t7, $t7, 2
/* 2A7E8 80029BE8 3C018007 */  lui        $at, %hi(D_80071730)
/* 2A7EC 80029BEC 002F0821 */  addu       $at, $at, $t7
/* 2A7F0 80029BF0 8C2F1730 */  lw         $t7, %lo(D_80071730)($at)
/* 2A7F4 80029BF4 01E00008 */  jr         $t7
/* 2A7F8 80029BF8 00000000 */   nop
.L80029BFC:
/* 2A7FC 80029BFC 14800013 */  bnez       $a0, .L80029C4C
/* 2A800 80029C00 3218000F */   andi      $t8, $s0, 0xf
/* 2A804 80029C04 8FAD00E0 */  lw         $t5, 0xe0($sp)
/* 2A808 80029C08 0018C940 */  sll        $t9, $t8, 5
/* 2A80C 80029C0C 240A0004 */  addiu      $t2, $zero, 4
/* 2A810 80029C10 31AE000F */  andi       $t6, $t5, 0xf
/* 2A814 80029C14 240B0004 */  addiu      $t3, $zero, 4
/* 2A818 80029C18 AFB900B8 */  sw         $t9, 0xb8($sp)
/* 2A81C 80029C1C 1000000B */  b          .L80029C4C
/* 2A820 80029C20 000E6940 */   sll       $t5, $t6, 5
/* 2A824 80029C24 2408FF80 */  addiu      $t0, $zero, -0x80
/* 2A828 80029C28 AFA000AC */  sw         $zero, 0xac($sp)
/* 2A82C 80029C2C 10000007 */  b          .L80029C4C
/* 2A830 80029C30 AFA000B0 */   sw        $zero, 0xb0($sp)
/* 2A834 80029C34 10000005 */  b          .L80029C4C
/* 2A838 80029C38 24080050 */   addiu     $t0, $zero, 0x50
/* 2A83C 80029C3C AFA000AC */  sw         $zero, 0xac($sp)
/* 2A840 80029C40 10000002 */  b          .L80029C4C
/* 2A844 80029C44 AFA000B0 */   sw        $zero, 0xb0($sp)
/* 2A848 80029C48 AFA000B0 */  sw         $zero, 0xb0($sp)
.L80029C4C:
/* 2A84C 80029C4C 0601000E */  bgez       $s0, .L80029C88
/* 2A850 80029C50 8FB800E4 */   lw        $t8, 0xe4($sp)
/* 2A854 80029C54 0218C821 */  addu       $t9, $s0, $t8
/* 2A858 80029C58 07210003 */  bgez       $t9, .L80029C68
/* 2A85C 80029C5C 00101823 */   negu      $v1, $s0
/* 2A860 80029C60 10000009 */  b          .L80029C88
/* 2A864 80029C64 2402FFFF */   addiu     $v0, $zero, -1
.L80029C68:
/* 2A868 80029C68 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 2A86C 80029C6C 8FB800B8 */  lw         $t8, 0xb8($sp)
/* 2A870 80029C70 0003C940 */  sll        $t9, $v1, 5
/* 2A874 80029C74 01C37823 */  subu       $t7, $t6, $v1
/* 2A878 80029C78 03197021 */  addu       $t6, $t8, $t9
/* 2A87C 80029C7C 00008025 */  or         $s0, $zero, $zero
/* 2A880 80029C80 AFAF00E4 */  sw         $t7, 0xe4($sp)
/* 2A884 80029C84 AFAE00B8 */  sw         $t6, 0xb8($sp)
.L80029C88:
/* 2A888 80029C88 2A010141 */  slti       $at, $s0, 0x141
/* 2A88C 80029C8C 14200003 */  bnez       $at, .L80029C9C
/* 2A890 80029C90 8FAF00E4 */   lw        $t7, 0xe4($sp)
/* 2A894 80029C94 10000007 */  b          .L80029CB4
/* 2A898 80029C98 2402FFFF */   addiu     $v0, $zero, -1
.L80029C9C:
/* 2A89C 80029C9C 020F6021 */  addu       $t4, $s0, $t7
/* 2A8A0 80029CA0 29810141 */  slti       $at, $t4, 0x141
/* 2A8A4 80029CA4 14200003 */  bnez       $at, .L80029CB4
/* 2A8A8 80029CA8 01ECC023 */   subu      $t8, $t7, $t4
/* 2A8AC 80029CAC 27190140 */  addiu      $t9, $t8, 0x140
/* 2A8B0 80029CB0 AFB900E4 */  sw         $t9, 0xe4($sp)
.L80029CB4:
/* 2A8B4 80029CB4 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 2A8B8 80029CB8 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 2A8BC 80029CBC 8FAF00E8 */  lw         $t7, 0xe8($sp)
/* 2A8C0 80029CC0 19C00003 */  blez       $t6, .L80029CD0
/* 2A8C4 80029CC4 2463B2FC */   addiu     $v1, $v1, %lo(UNK_DisplayListCommand)
/* 2A8C8 80029CC8 5DE00003 */  bgtzl      $t7, .L80029CD8
/* 2A8CC 80029CCC AFAA00C4 */   sw        $t2, 0xc4($sp)
.L80029CD0:
/* 2A8D0 80029CD0 2402FFFF */  addiu      $v0, $zero, -1
/* 2A8D4 80029CD4 AFAA00C4 */  sw         $t2, 0xc4($sp)
.L80029CD8:
/* 2A8D8 80029CD8 AFAB00C8 */  sw         $t3, 0xc8($sp)
/* 2A8DC 80029CDC 044000F3 */  bltz       $v0, .L8002A0AC
/* 2A8E0 80029CE0 AFAD00B4 */   sw        $t5, 0xb4($sp)
/* 2A8E4 80029CE4 3C0BE700 */  lui        $t3, 0xe700
/* 2A8E8 80029CE8 8C620000 */  lw         $v0, ($v1)
/* 2A8EC 80029CEC 3C0EB900 */  lui        $t6, 0xb900
/* 2A8F0 80029CF0 35CE031D */  ori        $t6, $t6, 0x31d
/* 2A8F4 80029CF4 24580008 */  addiu      $t8, $v0, 8
/* 2A8F8 80029CF8 AC780000 */  sw         $t8, ($v1)
/* 2A8FC 80029CFC AC400004 */  sw         $zero, 4($v0)
/* 2A900 80029D00 AC4B0000 */  sw         $t3, ($v0)
/* 2A904 80029D04 8C620000 */  lw         $v0, ($v1)
/* 2A908 80029D08 3C0F0050 */  lui        $t7, 0x50
/* 2A90C 80029D0C 35EF4240 */  ori        $t7, $t7, 0x4240
/* 2A910 80029D10 24590008 */  addiu      $t9, $v0, 8
/* 2A914 80029D14 AC790000 */  sw         $t9, ($v1)
/* 2A918 80029D18 AC4F0004 */  sw         $t7, 4($v0)
/* 2A91C 80029D1C AC4E0000 */  sw         $t6, ($v0)
/* 2A920 80029D20 8C620000 */  lw         $v0, ($v1)
/* 2A924 80029D24 3C19BA00 */  lui        $t9, 0xba00
/* 2A928 80029D28 37390C02 */  ori        $t9, $t9, 0xc02
/* 2A92C 80029D2C 24580008 */  addiu      $t8, $v0, 8
/* 2A930 80029D30 AC780000 */  sw         $t8, ($v1)
/* 2A934 80029D34 240E2000 */  addiu      $t6, $zero, 0x2000
/* 2A938 80029D38 AC4E0004 */  sw         $t6, 4($v0)
/* 2A93C 80029D3C AC590000 */  sw         $t9, ($v0)
/* 2A940 80029D40 8C620000 */  lw         $v0, ($v1)
/* 2A944 80029D44 3C0D8009 */  lui        $t5, %hi(flags_DAT_8008fd0c)
/* 2A948 80029D48 25ADFD0C */  addiu      $t5, $t5, %lo(flags_DAT_8008fd0c)
/* 2A94C 80029D4C 244F0008 */  addiu      $t7, $v0, 8
/* 2A950 80029D50 AC6F0000 */  sw         $t7, ($v1)
/* 2A954 80029D54 AC400004 */  sw         $zero, 4($v0)
/* 2A958 80029D58 AC4B0000 */  sw         $t3, ($v0)
/* 2A95C 80029D5C 8FB800E4 */  lw         $t8, 0xe4($sp)
/* 2A960 80029D60 1500000B */  bnez       $t0, .L80029D90
/* 2A964 80029D64 02186021 */   addu      $t4, $s0, $t8
/* 2A968 80029D68 8C620000 */  lw         $v0, ($v1)
/* 2A96C 80029D6C 3C0F8006 */  lui        $t7, %hi(D_8005F228)
/* 2A970 80029D70 25EFF228 */  addiu      $t7, $t7, %lo(D_8005F228)
/* 2A974 80029D74 24590008 */  addiu      $t9, $v0, 8
/* 2A978 80029D78 AC790000 */  sw         $t9, ($v1)
/* 2A97C 80029D7C 3C0E0600 */  lui        $t6, 0x600
/* 2A980 80029D80 AC4E0000 */  sw         $t6, ($v0)
/* 2A984 80029D84 AC4F0004 */  sw         $t7, 4($v0)
/* 2A988 80029D88 10000018 */  b          .L80029DEC
/* 2A98C 80029D8C 95B80000 */   lhu       $t8, ($t5)
.L80029D90:
/* 2A990 80029D90 8C620000 */  lw         $v0, ($v1)
/* 2A994 80029D94 3C0E8006 */  lui        $t6, %hi(D_8005F240)
/* 2A998 80029D98 25CEF240 */  addiu      $t6, $t6, %lo(D_8005F240)
/* 2A99C 80029D9C 24580008 */  addiu      $t8, $v0, 8
/* 2A9A0 80029DA0 AC780000 */  sw         $t8, ($v1)
/* 2A9A4 80029DA4 3C190600 */  lui        $t9, 0x600
/* 2A9A8 80029DA8 AC590000 */  sw         $t9, ($v0)
/* 2A9AC 80029DAC AC4E0004 */  sw         $t6, 4($v0)
/* 2A9B0 80029DB0 8C620000 */  lw         $v0, ($v1)
/* 2A9B4 80029DB4 3C19FB00 */  lui        $t9, 0xfb00
/* 2A9B8 80029DB8 310E00FF */  andi       $t6, $t0, 0xff
/* 2A9BC 80029DBC 244F0008 */  addiu      $t7, $v0, 8
/* 2A9C0 80029DC0 AC6F0000 */  sw         $t7, ($v1)
/* 2A9C4 80029DC4 AC400004 */  sw         $zero, 4($v0)
/* 2A9C8 80029DC8 AC4B0000 */  sw         $t3, ($v0)
/* 2A9CC 80029DCC 8C620000 */  lw         $v0, ($v1)
/* 2A9D0 80029DD0 2401FF00 */  addiu      $at, $zero, -0x100
/* 2A9D4 80029DD4 01C17825 */  or         $t7, $t6, $at
/* 2A9D8 80029DD8 24580008 */  addiu      $t8, $v0, 8
/* 2A9DC 80029DDC AC780000 */  sw         $t8, ($v1)
/* 2A9E0 80029DE0 AC4F0004 */  sw         $t7, 4($v0)
/* 2A9E4 80029DE4 AC590000 */  sw         $t9, ($v0)
/* 2A9E8 80029DE8 95B80000 */  lhu        $t8, ($t5)
.L80029DEC:
/* 2A9EC 80029DEC 33190010 */  andi       $t9, $t8, 0x10
/* 2A9F0 80029DF0 57200033 */  bnel       $t9, $zero, .L80029EC0
/* 2A9F4 80029DF4 8C620000 */   lw        $v0, ($v1)
/* 2A9F8 80029DF8 8C620000 */  lw         $v0, ($v1)
/* 2A9FC 80029DFC 3C18FD10 */  lui        $t8, 0xfd10
/* 2AA00 80029E00 244E0008 */  addiu      $t6, $v0, 8
/* 2AA04 80029E04 AC6E0000 */  sw         $t6, ($v1)
/* 2AA08 80029E08 AC400004 */  sw         $zero, 4($v0)
/* 2AA0C 80029E0C AC4B0000 */  sw         $t3, ($v0)
/* 2AA10 80029E10 8C620000 */  lw         $v0, ($v1)
/* 2AA14 80029E14 3C198006 */  lui        $t9, %hi(D_80060138)
/* 2AA18 80029E18 27390138 */  addiu      $t9, $t9, %lo(D_80060138)
/* 2AA1C 80029E1C 244F0008 */  addiu      $t7, $v0, 8
/* 2AA20 80029E20 AC6F0000 */  sw         $t7, ($v1)
/* 2AA24 80029E24 AC590004 */  sw         $t9, 4($v0)
/* 2AA28 80029E28 AC580000 */  sw         $t8, ($v0)
/* 2AA2C 80029E2C 8C620000 */  lw         $v0, ($v1)
/* 2AA30 80029E30 3C0FE800 */  lui        $t7, 0xe800
/* 2AA34 80029E34 3C19F500 */  lui        $t9, 0xf500
/* 2AA38 80029E38 244E0008 */  addiu      $t6, $v0, 8
/* 2AA3C 80029E3C AC6E0000 */  sw         $t6, ($v1)
/* 2AA40 80029E40 AC400004 */  sw         $zero, 4($v0)
/* 2AA44 80029E44 AC4F0000 */  sw         $t7, ($v0)
/* 2AA48 80029E48 8C620000 */  lw         $v0, ($v1)
/* 2AA4C 80029E4C 37390100 */  ori        $t9, $t9, 0x100
/* 2AA50 80029E50 3C0E0700 */  lui        $t6, 0x700
/* 2AA54 80029E54 24580008 */  addiu      $t8, $v0, 8
/* 2AA58 80029E58 AC780000 */  sw         $t8, ($v1)
/* 2AA5C 80029E5C AC4E0004 */  sw         $t6, 4($v0)
/* 2AA60 80029E60 AC590000 */  sw         $t9, ($v0)
/* 2AA64 80029E64 8C620000 */  lw         $v0, ($v1)
/* 2AA68 80029E68 3C18E600 */  lui        $t8, 0xe600
/* 2AA6C 80029E6C 3C0EF000 */  lui        $t6, 0xf000
/* 2AA70 80029E70 244F0008 */  addiu      $t7, $v0, 8
/* 2AA74 80029E74 AC6F0000 */  sw         $t7, ($v1)
/* 2AA78 80029E78 AC400004 */  sw         $zero, 4($v0)
/* 2AA7C 80029E7C AC580000 */  sw         $t8, ($v0)
/* 2AA80 80029E80 8C620000 */  lw         $v0, ($v1)
/* 2AA84 80029E84 3C0F073F */  lui        $t7, 0x73f
/* 2AA88 80029E88 35EFC000 */  ori        $t7, $t7, 0xc000
/* 2AA8C 80029E8C 24590008 */  addiu      $t9, $v0, 8
/* 2AA90 80029E90 AC790000 */  sw         $t9, ($v1)
/* 2AA94 80029E94 AC4F0004 */  sw         $t7, 4($v0)
/* 2AA98 80029E98 AC4E0000 */  sw         $t6, ($v0)
/* 2AA9C 80029E9C 8C620000 */  lw         $v0, ($v1)
/* 2AAA0 80029EA0 24580008 */  addiu      $t8, $v0, 8
/* 2AAA4 80029EA4 AC780000 */  sw         $t8, ($v1)
/* 2AAA8 80029EA8 AC400004 */  sw         $zero, 4($v0)
/* 2AAAC 80029EAC AC4B0000 */  sw         $t3, ($v0)
/* 2AAB0 80029EB0 95B90000 */  lhu        $t9, ($t5)
/* 2AAB4 80029EB4 372E0010 */  ori        $t6, $t9, 0x10
/* 2AAB8 80029EB8 A5AE0000 */  sh         $t6, ($t5)
/* 2AABC 80029EBC 8C620000 */  lw         $v0, ($v1)
.L80029EC0:
/* 2AAC0 80029EC0 8FB80094 */  lw         $t8, 0x94($sp)
/* 2AAC4 80029EC4 3C01FD48 */  lui        $at, 0xfd48
/* 2AAC8 80029EC8 244F0008 */  addiu      $t7, $v0, 8
/* 2AACC 80029ECC 2719FFFF */  addiu      $t9, $t8, -1
/* 2AAD0 80029ED0 332E0FFF */  andi       $t6, $t9, 0xfff
/* 2AAD4 80029ED4 AC6F0000 */  sw         $t7, ($v1)
/* 2AAD8 80029ED8 01C17825 */  or         $t7, $t6, $at
/* 2AADC 80029EDC AC4F0000 */  sw         $t7, ($v0)
/* 2AAE0 80029EE0 8FB80098 */  lw         $t8, 0x98($sp)
/* 2AAE4 80029EE4 AC580004 */  sw         $t8, 4($v0)
/* 2AAE8 80029EE8 8C620000 */  lw         $v0, ($v1)
/* 2AAEC 80029EEC 8FAE00A0 */  lw         $t6, 0xa0($sp)
/* 2AAF0 80029EF0 3C01F548 */  lui        $at, 0xf548
/* 2AAF4 80029EF4 24590008 */  addiu      $t9, $v0, 8
/* 2AAF8 80029EF8 25CF0008 */  addiu      $t7, $t6, 8
/* 2AAFC 80029EFC 000FC0C3 */  sra        $t8, $t7, 3
/* 2AB00 80029F00 AC790000 */  sw         $t9, ($v1)
/* 2AB04 80029F04 331901FF */  andi       $t9, $t8, 0x1ff
/* 2AB08 80029F08 00197240 */  sll        $t6, $t9, 9
/* 2AB0C 80029F0C 01C17825 */  or         $t7, $t6, $at
/* 2AB10 80029F10 AFAF0008 */  sw         $t7, 8($sp)
/* 2AB14 80029F14 AC4F0000 */  sw         $t7, ($v0)
/* 2AB18 80029F18 8FA800C4 */  lw         $t0, 0xc4($sp)
/* 2AB1C 80029F1C 8FA900C8 */  lw         $t1, 0xc8($sp)
/* 2AB20 80029F20 3C010700 */  lui        $at, 0x700
/* 2AB24 80029F24 3118000F */  andi       $t8, $t0, 0xf
/* 2AB28 80029F28 00184380 */  sll        $t0, $t8, 0xe
/* 2AB2C 80029F2C 312E000F */  andi       $t6, $t1, 0xf
/* 2AB30 80029F30 000E4900 */  sll        $t1, $t6, 4
/* 2AB34 80029F34 0101C025 */  or         $t8, $t0, $at
/* 2AB38 80029F38 0309C825 */  or         $t9, $t8, $t1
/* 2AB3C 80029F3C AC590004 */  sw         $t9, 4($v0)
/* 2AB40 80029F40 8C620000 */  lw         $v0, ($v1)
/* 2AB44 80029F44 3C0FE600 */  lui        $t7, 0xe600
/* 2AB48 80029F48 244E0008 */  addiu      $t6, $v0, 8
/* 2AB4C 80029F4C AC6E0000 */  sw         $t6, ($v1)
/* 2AB50 80029F50 AC400004 */  sw         $zero, 4($v0)
/* 2AB54 80029F54 AC4F0000 */  sw         $t7, ($v0)
/* 2AB58 80029F58 8C620000 */  lw         $v0, ($v1)
/* 2AB5C 80029F5C 3C19F400 */  lui        $t9, 0xf400
/* 2AB60 80029F60 3C010700 */  lui        $at, 0x700
/* 2AB64 80029F64 24580008 */  addiu      $t8, $v0, 8
/* 2AB68 80029F68 AC780000 */  sw         $t8, ($v1)
/* 2AB6C 80029F6C AC590000 */  sw         $t9, ($v0)
/* 2AB70 80029F70 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 2AB74 80029F74 8FAD009C */  lw         $t5, 0x9c($sp)
/* 2AB78 80029F78 000A7080 */  sll        $t6, $t2, 2
/* 2AB7C 80029F7C 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2AB80 80029F80 000F5300 */  sll        $t2, $t7, 0xc
/* 2AB84 80029F84 000DC880 */  sll        $t9, $t5, 2
/* 2AB88 80029F88 332D0FFF */  andi       $t5, $t9, 0xfff
/* 2AB8C 80029F8C 01417825 */  or         $t7, $t2, $at
/* 2AB90 80029F90 01EDC025 */  or         $t8, $t7, $t5
/* 2AB94 80029F94 AC580004 */  sw         $t8, 4($v0)
/* 2AB98 80029F98 8C620000 */  lw         $v0, ($v1)
/* 2AB9C 80029F9C 3C01E400 */  lui        $at, 0xe400
/* 2ABA0 80029FA0 24590008 */  addiu      $t9, $v0, 8
/* 2ABA4 80029FA4 AC790000 */  sw         $t9, ($v1)
/* 2ABA8 80029FA8 AC400004 */  sw         $zero, 4($v0)
/* 2ABAC 80029FAC AC4B0000 */  sw         $t3, ($v0)
/* 2ABB0 80029FB0 8C620000 */  lw         $v0, ($v1)
/* 2ABB4 80029FB4 8FAF0008 */  lw         $t7, 8($sp)
/* 2ABB8 80029FB8 0109C025 */  or         $t8, $t0, $t1
/* 2ABBC 80029FBC 244E0008 */  addiu      $t6, $v0, 8
/* 2ABC0 80029FC0 AC6E0000 */  sw         $t6, ($v1)
/* 2ABC4 80029FC4 AC580004 */  sw         $t8, 4($v0)
/* 2ABC8 80029FC8 AC4F0000 */  sw         $t7, ($v0)
/* 2ABCC 80029FCC 8C620000 */  lw         $v0, ($v1)
/* 2ABD0 80029FD0 3C0EF200 */  lui        $t6, 0xf200
/* 2ABD4 80029FD4 014D7825 */  or         $t7, $t2, $t5
/* 2ABD8 80029FD8 24590008 */  addiu      $t9, $v0, 8
/* 2ABDC 80029FDC AC790000 */  sw         $t9, ($v1)
/* 2ABE0 80029FE0 AC4F0004 */  sw         $t7, 4($v0)
/* 2ABE4 80029FE4 AC4E0000 */  sw         $t6, ($v0)
/* 2ABE8 80029FE8 8C620000 */  lw         $v0, ($v1)
/* 2ABEC 80029FEC 8FB900E0 */  lw         $t9, 0xe0($sp)
/* 2ABF0 80029FF0 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* 2ABF4 80029FF4 24580008 */  addiu      $t8, $v0, 8
/* 2ABF8 80029FF8 AC780000 */  sw         $t8, ($v1)
/* 2ABFC 80029FFC 032E7821 */  addu       $t7, $t9, $t6
/* 2AC00 8002A000 000FC080 */  sll        $t8, $t7, 2
/* 2AC04 8002A004 000C7080 */  sll        $t6, $t4, 2
/* 2AC08 8002A008 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2AC0C 8002A00C 33190FFF */  andi       $t9, $t8, 0xfff
/* 2AC10 8002A010 000FC300 */  sll        $t8, $t7, 0xc
/* 2AC14 8002A014 03017025 */  or         $t6, $t8, $at
/* 2AC18 8002A018 01D97825 */  or         $t7, $t6, $t9
/* 2AC1C 8002A01C AC4F0000 */  sw         $t7, ($v0)
/* 2AC20 8002A020 8FAF00E0 */  lw         $t7, 0xe0($sp)
/* 2AC24 8002A024 0010C080 */  sll        $t8, $s0, 2
/* 2AC28 8002A028 330E0FFF */  andi       $t6, $t8, 0xfff
/* 2AC2C 8002A02C 000ECB00 */  sll        $t9, $t6, 0xc
/* 2AC30 8002A030 000FC080 */  sll        $t8, $t7, 2
/* 2AC34 8002A034 330E0FFF */  andi       $t6, $t8, 0xfff
/* 2AC38 8002A038 032E7825 */  or         $t7, $t9, $t6
/* 2AC3C 8002A03C AC4F0004 */  sw         $t7, 4($v0)
/* 2AC40 8002A040 8C620000 */  lw         $v0, ($v1)
/* 2AC44 8002A044 3C19B400 */  lui        $t9, 0xb400
/* 2AC48 8002A048 24580008 */  addiu      $t8, $v0, 8
/* 2AC4C 8002A04C AC780000 */  sw         $t8, ($v1)
/* 2AC50 8002A050 AC590000 */  sw         $t9, ($v0)
/* 2AC54 8002A054 8FB900B4 */  lw         $t9, 0xb4($sp)
/* 2AC58 8002A058 8FAF00B8 */  lw         $t7, 0xb8($sp)
/* 2AC5C 8002A05C 332EFFFF */  andi       $t6, $t9, 0xffff
/* 2AC60 8002A060 000FC400 */  sll        $t8, $t7, 0x10
/* 2AC64 8002A064 030E7825 */  or         $t7, $t8, $t6
/* 2AC68 8002A068 AC4F0004 */  sw         $t7, 4($v0)
/* 2AC6C 8002A06C 8C620000 */  lw         $v0, ($v1)
/* 2AC70 8002A070 3C18B300 */  lui        $t8, 0xb300
/* 2AC74 8002A074 24590008 */  addiu      $t9, $v0, 8
/* 2AC78 8002A078 AC790000 */  sw         $t9, ($v1)
/* 2AC7C 8002A07C AC580000 */  sw         $t8, ($v0)
/* 2AC80 8002A080 8FB800AC */  lw         $t8, 0xac($sp)
/* 2AC84 8002A084 8FAF00B0 */  lw         $t7, 0xb0($sp)
/* 2AC88 8002A088 330EFFFF */  andi       $t6, $t8, 0xffff
/* 2AC8C 8002A08C 000FCC00 */  sll        $t9, $t7, 0x10
/* 2AC90 8002A090 032E7825 */  or         $t7, $t9, $t6
/* 2AC94 8002A094 AC4F0004 */  sw         $t7, 4($v0)
/* 2AC98 8002A098 8C620000 */  lw         $v0, ($v1)
/* 2AC9C 8002A09C 24580008 */  addiu      $t8, $v0, 8
/* 2ACA0 8002A0A0 AC780000 */  sw         $t8, ($v1)
/* 2ACA4 8002A0A4 AC400004 */  sw         $zero, 4($v0)
/* 2ACA8 8002A0A8 AC4B0000 */  sw         $t3, ($v0)
.L8002A0AC:
/* 2ACAC 8002A0AC 8FB00004 */  lw         $s0, 4($sp)
/* 2ACB0 8002A0B0 03E00008 */  jr         $ra
/* 2ACB4 8002A0B4 27BD00D8 */   addiu     $sp, $sp, 0xd8

glabel func_8002A0B8
/* 2ACB8 8002A0B8 27BDFEE8 */  addiu      $sp, $sp, -0x118
/* 2ACBC 8002A0BC AFBF002C */  sw         $ra, 0x2c($sp)
/* 2ACC0 8002A0C0 AFBE0028 */  sw         $fp, 0x28($sp)
/* 2ACC4 8002A0C4 AFB70024 */  sw         $s7, 0x24($sp)
/* 2ACC8 8002A0C8 AFB60020 */  sw         $s6, 0x20($sp)
/* 2ACCC 8002A0CC AFB5001C */  sw         $s5, 0x1c($sp)
/* 2ACD0 8002A0D0 AFB40018 */  sw         $s4, 0x18($sp)
/* 2ACD4 8002A0D4 AFB30014 */  sw         $s3, 0x14($sp)
/* 2ACD8 8002A0D8 AFB20010 */  sw         $s2, 0x10($sp)
/* 2ACDC 8002A0DC AFB1000C */  sw         $s1, 0xc($sp)
/* 2ACE0 8002A0E0 AFB00008 */  sw         $s0, 8($sp)
/* 2ACE4 8002A0E4 AFA40118 */  sw         $a0, 0x118($sp)
/* 2ACE8 8002A0E8 AFA5011C */  sw         $a1, 0x11c($sp)
/* 2ACEC 8002A0EC 3C0F8006 */  lui        $t7, %hi(D_8005F92C)
/* 2ACF0 8002A0F0 25EFF92C */  addiu      $t7, $t7, %lo(D_8005F92C)
/* 2ACF4 8002A0F4 8DE10000 */  lw         $at, ($t7)
/* 2ACF8 8002A0F8 8DF90004 */  lw         $t9, 4($t7)
/* 2ACFC 8002A0FC 27AE00FC */  addiu      $t6, $sp, 0xfc
/* 2AD00 8002A100 ADC10000 */  sw         $at, ($t6)
/* 2AD04 8002A104 ADD90004 */  sw         $t9, 4($t6)
/* 2AD08 8002A108 8DF9000C */  lw         $t9, 0xc($t7)
/* 2AD0C 8002A10C 8DE10008 */  lw         $at, 8($t7)
/* 2AD10 8002A110 27B800DC */  addiu      $t8, $sp, 0xdc
/* 2AD14 8002A114 ADD9000C */  sw         $t9, 0xc($t6)
/* 2AD18 8002A118 ADC10008 */  sw         $at, 8($t6)
/* 2AD1C 8002A11C 3C0E8006 */  lui        $t6, %hi(D_8005F93C)
/* 2AD20 8002A120 25CEF93C */  addiu      $t6, $t6, %lo(D_8005F93C)
/* 2AD24 8002A124 8DC10000 */  lw         $at, ($t6)
/* 2AD28 8002A128 8DD90004 */  lw         $t9, 4($t6)
/* 2AD2C 8002A12C 27AF00FC */  addiu      $t7, $sp, 0xfc
/* 2AD30 8002A130 AF010000 */  sw         $at, ($t8)
/* 2AD34 8002A134 AF190004 */  sw         $t9, 4($t8)
/* 2AD38 8002A138 8DD9000C */  lw         $t9, 0xc($t6)
/* 2AD3C 8002A13C 8DC10008 */  lw         $at, 8($t6)
/* 2AD40 8002A140 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 2AD44 8002A144 AF19000C */  sw         $t9, 0xc($t8)
/* 2AD48 8002A148 AF010008 */  sw         $at, 8($t8)
/* 2AD4C 8002A14C 8DC10010 */  lw         $at, 0x10($t6)
/* 2AD50 8002A150 8DD90014 */  lw         $t9, 0x14($t6)
/* 2AD54 8002A154 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 2AD58 8002A158 AF010010 */  sw         $at, 0x10($t8)
/* 2AD5C 8002A15C AF190014 */  sw         $t9, 0x14($t8)
/* 2AD60 8002A160 8DD9001C */  lw         $t9, 0x1c($t6)
/* 2AD64 8002A164 8DC10018 */  lw         $at, 0x18($t6)
/* 2AD68 8002A168 AF19001C */  sw         $t9, 0x1c($t8)
/* 2AD6C 8002A16C AF010018 */  sw         $at, 0x18($t8)
/* 2AD70 8002A170 AFAF0044 */  sw         $t7, 0x44($sp)
/* 2AD74 8002A174 AFA00114 */  sw         $zero, 0x114($sp)
.L8002A178:
/* 2AD78 8002A178 3C08E700 */  lui        $t0, 0xe700
/* 2AD7C 8002A17C 8C620000 */  lw         $v0, ($v1)
/* 2AD80 8002A180 3C19B900 */  lui        $t9, 0xb900
/* 2AD84 8002A184 3739031D */  ori        $t9, $t9, 0x31d
/* 2AD88 8002A188 24580008 */  addiu      $t8, $v0, 8
/* 2AD8C 8002A18C AC780000 */  sw         $t8, ($v1)
/* 2AD90 8002A190 AC400004 */  sw         $zero, 4($v0)
/* 2AD94 8002A194 AC480000 */  sw         $t0, ($v0)
/* 2AD98 8002A198 8C620000 */  lw         $v0, ($v1)
/* 2AD9C 8002A19C 3C0F0050 */  lui        $t7, 0x50
/* 2ADA0 8002A1A0 35EF4240 */  ori        $t7, $t7, 0x4240
/* 2ADA4 8002A1A4 244E0008 */  addiu      $t6, $v0, 8
/* 2ADA8 8002A1A8 AC6E0000 */  sw         $t6, ($v1)
/* 2ADAC 8002A1AC AC4F0004 */  sw         $t7, 4($v0)
/* 2ADB0 8002A1B0 AC590000 */  sw         $t9, ($v0)
/* 2ADB4 8002A1B4 8C620000 */  lw         $v0, ($v1)
/* 2ADB8 8002A1B8 3C0EBA00 */  lui        $t6, 0xba00
/* 2ADBC 8002A1BC 35CE0C02 */  ori        $t6, $t6, 0xc02
/* 2ADC0 8002A1C0 24580008 */  addiu      $t8, $v0, 8
/* 2ADC4 8002A1C4 AC780000 */  sw         $t8, ($v1)
/* 2ADC8 8002A1C8 24192000 */  addiu      $t9, $zero, 0x2000
/* 2ADCC 8002A1CC AC590004 */  sw         $t9, 4($v0)
/* 2ADD0 8002A1D0 AC4E0000 */  sw         $t6, ($v0)
/* 2ADD4 8002A1D4 8C620000 */  lw         $v0, ($v1)
/* 2ADD8 8002A1D8 24010001 */  addiu      $at, $zero, 1
/* 2ADDC 8002A1DC 3C0BE700 */  lui        $t3, 0xe700
/* 2ADE0 8002A1E0 244F0008 */  addiu      $t7, $v0, 8
/* 2ADE4 8002A1E4 AC6F0000 */  sw         $t7, ($v1)
/* 2ADE8 8002A1E8 AC400004 */  sw         $zero, 4($v0)
/* 2ADEC 8002A1EC AC480000 */  sw         $t0, ($v0)
/* 2ADF0 8002A1F0 8FB80114 */  lw         $t8, 0x114($sp)
/* 2ADF4 8002A1F4 1301000B */  beq        $t8, $at, .L8002A224
/* 2ADF8 8002A1F8 0000B025 */   or        $s6, $zero, $zero
/* 2ADFC 8002A1FC 8C620000 */  lw         $v0, ($v1)
/* 2AE00 8002A200 3C0F8006 */  lui        $t7, %hi(D_8005F228)
/* 2AE04 8002A204 25EFF228 */  addiu      $t7, $t7, %lo(D_8005F228)
/* 2AE08 8002A208 244E0008 */  addiu      $t6, $v0, 8
/* 2AE0C 8002A20C AC6E0000 */  sw         $t6, ($v1)
/* 2AE10 8002A210 3C190600 */  lui        $t9, 0x600
/* 2AE14 8002A214 AC590000 */  sw         $t9, ($v0)
/* 2AE18 8002A218 AC4F0004 */  sw         $t7, 4($v0)
/* 2AE1C 8002A21C 10000010 */  b          .L8002A260
/* 2AE20 8002A220 00000000 */   nop
.L8002A224:
/* 2AE24 8002A224 8C620000 */  lw         $v0, ($v1)
/* 2AE28 8002A228 3C198006 */  lui        $t9, %hi(D_8005F240)
/* 2AE2C 8002A22C 2739F240 */  addiu      $t9, $t9, %lo(D_8005F240)
/* 2AE30 8002A230 24580008 */  addiu      $t8, $v0, 8
/* 2AE34 8002A234 AC780000 */  sw         $t8, ($v1)
/* 2AE38 8002A238 3C0E0600 */  lui        $t6, 0x600
/* 2AE3C 8002A23C AC4E0000 */  sw         $t6, ($v0)
/* 2AE40 8002A240 AC590004 */  sw         $t9, 4($v0)
/* 2AE44 8002A244 8C620000 */  lw         $v0, ($v1)
/* 2AE48 8002A248 3C18FB00 */  lui        $t8, 0xfb00
/* 2AE4C 8002A24C 240EFF80 */  addiu      $t6, $zero, -0x80
/* 2AE50 8002A250 244F0008 */  addiu      $t7, $v0, 8
/* 2AE54 8002A254 AC6F0000 */  sw         $t7, ($v1)
/* 2AE58 8002A258 AC4E0004 */  sw         $t6, 4($v0)
/* 2AE5C 8002A25C AC580000 */  sw         $t8, ($v0)
.L8002A260:
/* 2AE60 8002A260 8C620000 */  lw         $v0, ($v1)
/* 2AE64 8002A264 24590008 */  addiu      $t9, $v0, 8
/* 2AE68 8002A268 AC790000 */  sw         $t9, ($v1)
/* 2AE6C 8002A26C AC400004 */  sw         $zero, 4($v0)
/* 2AE70 8002A270 AC4B0000 */  sw         $t3, ($v0)
/* 2AE74 8002A274 8C620000 */  lw         $v0, ($v1)
/* 2AE78 8002A278 3C18FD10 */  lui        $t8, 0xfd10
/* 2AE7C 8002A27C 244F0008 */  addiu      $t7, $v0, 8
/* 2AE80 8002A280 AC6F0000 */  sw         $t7, ($v1)
/* 2AE84 8002A284 AC580000 */  sw         $t8, ($v0)
/* 2AE88 8002A288 8FAE0044 */  lw         $t6, 0x44($sp)
/* 2AE8C 8002A28C 8DD90000 */  lw         $t9, ($t6)
/* 2AE90 8002A290 AC590004 */  sw         $t9, 4($v0)
/* 2AE94 8002A294 8C620000 */  lw         $v0, ($v1)
/* 2AE98 8002A298 3C18E800 */  lui        $t8, 0xe800
/* 2AE9C 8002A29C 3C19F500 */  lui        $t9, 0xf500
/* 2AEA0 8002A2A0 244F0008 */  addiu      $t7, $v0, 8
/* 2AEA4 8002A2A4 AC6F0000 */  sw         $t7, ($v1)
/* 2AEA8 8002A2A8 AC400004 */  sw         $zero, 4($v0)
/* 2AEAC 8002A2AC AC580000 */  sw         $t8, ($v0)
/* 2AEB0 8002A2B0 8C620000 */  lw         $v0, ($v1)
/* 2AEB4 8002A2B4 37390100 */  ori        $t9, $t9, 0x100
/* 2AEB8 8002A2B8 3C0F0700 */  lui        $t7, 0x700
/* 2AEBC 8002A2BC 244E0008 */  addiu      $t6, $v0, 8
/* 2AEC0 8002A2C0 AC6E0000 */  sw         $t6, ($v1)
/* 2AEC4 8002A2C4 AC4F0004 */  sw         $t7, 4($v0)
/* 2AEC8 8002A2C8 AC590000 */  sw         $t9, ($v0)
/* 2AECC 8002A2CC 8C620000 */  lw         $v0, ($v1)
/* 2AED0 8002A2D0 3C0EE600 */  lui        $t6, 0xe600
/* 2AED4 8002A2D4 3C0FF000 */  lui        $t7, 0xf000
/* 2AED8 8002A2D8 24580008 */  addiu      $t8, $v0, 8
/* 2AEDC 8002A2DC AC780000 */  sw         $t8, ($v1)
/* 2AEE0 8002A2E0 AC400004 */  sw         $zero, 4($v0)
/* 2AEE4 8002A2E4 AC4E0000 */  sw         $t6, ($v0)
/* 2AEE8 8002A2E8 8C620000 */  lw         $v0, ($v1)
/* 2AEEC 8002A2EC 3C18073F */  lui        $t8, 0x73f
/* 2AEF0 8002A2F0 3718C000 */  ori        $t8, $t8, 0xc000
/* 2AEF4 8002A2F4 24590008 */  addiu      $t9, $v0, 8
/* 2AEF8 8002A2F8 AC790000 */  sw         $t9, ($v1)
/* 2AEFC 8002A2FC AC580004 */  sw         $t8, 4($v0)
/* 2AF00 8002A300 AC4F0000 */  sw         $t7, ($v0)
/* 2AF04 8002A304 8C620000 */  lw         $v0, ($v1)
/* 2AF08 8002A308 244E0008 */  addiu      $t6, $v0, 8
/* 2AF0C 8002A30C AC6E0000 */  sw         $t6, ($v1)
/* 2AF10 8002A310 AC400004 */  sw         $zero, 4($v0)
/* 2AF14 8002A314 AC4B0000 */  sw         $t3, ($v0)
/* 2AF18 8002A318 8FB90114 */  lw         $t9, 0x114($sp)
.L8002A31C:
/* 2AF1C 8002A31C 24010002 */  addiu      $at, $zero, 2
/* 2AF20 8002A320 AFA000B8 */  sw         $zero, 0xb8($sp)
/* 2AF24 8002A324 1321000D */  beq        $t9, $at, .L8002A35C
/* 2AF28 8002A328 8FAC011C */   lw        $t4, 0x11c($sp)
/* 2AF2C 8002A32C 24010003 */  addiu      $at, $zero, 3
/* 2AF30 8002A330 0000F025 */  or         $fp, $zero, $zero
/* 2AF34 8002A334 13210019 */  beq        $t9, $at, .L8002A39C
/* 2AF38 8002A338 AFA000B4 */   sw        $zero, 0xb4($sp)
/* 2AF3C 8002A33C 8FAC011C */  lw         $t4, 0x11c($sp)
/* 2AF40 8002A340 24140052 */  addiu      $s4, $zero, 0x52
/* 2AF44 8002A344 24100019 */  addiu      $s0, $zero, 0x19
/* 2AF48 8002A348 24170032 */  addiu      $s7, $zero, 0x32
/* 2AF4C 8002A34C 24150019 */  addiu      $s5, $zero, 0x19
/* 2AF50 8002A350 241F0032 */  addiu      $ra, $zero, 0x32
/* 2AF54 8002A354 10000018 */  b          .L8002A3B8
/* 2AF58 8002A358 258C0087 */   addiu     $t4, $t4, 0x87
.L8002A35C:
/* 2AF5C 8002A35C 8FAF0118 */  lw         $t7, 0x118($sp)
/* 2AF60 8002A360 240E0032 */  addiu      $t6, $zero, 0x32
/* 2AF64 8002A364 258C0087 */  addiu      $t4, $t4, 0x87
/* 2AF68 8002A368 05E10003 */  bgez       $t7, .L8002A378
/* 2AF6C 8002A36C 000FC043 */   sra       $t8, $t7, 1
/* 2AF70 8002A370 25E10001 */  addiu      $at, $t7, 1
/* 2AF74 8002A374 0001C043 */  sra        $t8, $at, 1
.L8002A378:
/* 2AF78 8002A378 01D8F023 */  subu       $fp, $t6, $t8
/* 2AF7C 8002A37C 001EC940 */  sll        $t9, $fp, 5
/* 2AF80 8002A380 27D40052 */  addiu      $s4, $fp, 0x52
/* 2AF84 8002A384 24100019 */  addiu      $s0, $zero, 0x19
/* 2AF88 8002A388 24170032 */  addiu      $s7, $zero, 0x32
/* 2AF8C 8002A38C 24150019 */  addiu      $s5, $zero, 0x19
/* 2AF90 8002A390 241F0032 */  addiu      $ra, $zero, 0x32
/* 2AF94 8002A394 10000008 */  b          .L8002A3B8
/* 2AF98 8002A398 AFB900B4 */   sw        $t9, 0xb4($sp)
.L8002A39C:
/* 2AF9C 8002A39C 8FAC011C */  lw         $t4, 0x11c($sp)
/* 2AFA0 8002A3A0 2414004F */  addiu      $s4, $zero, 0x4f
/* 2AFA4 8002A3A4 2410001C */  addiu      $s0, $zero, 0x1c
/* 2AFA8 8002A3A8 24170038 */  addiu      $s7, $zero, 0x38
/* 2AFAC 8002A3AC 2415001C */  addiu      $s5, $zero, 0x1c
/* 2AFB0 8002A3B0 241F0038 */  addiu      $ra, $zero, 0x38
/* 2AFB4 8002A3B4 258C0084 */  addiu      $t4, $t4, 0x84
.L8002A3B8:
/* 2AFB8 8002A3B8 02160019 */  multu      $s0, $s6
/* 2AFBC 8002A3BC 26A5FFFF */  addiu      $a1, $s5, -1
/* 2AFC0 8002A3C0 00059080 */  sll        $s2, $a1, 2
/* 2AFC4 8002A3C4 26A70007 */  addiu      $a3, $s5, 7
/* 2AFC8 8002A3C8 001E8880 */  sll        $s1, $fp, 2
/* 2AFCC 8002A3CC 27F3FFFF */  addiu      $s3, $ra, -1
/* 2AFD0 8002A3D0 00007812 */  mflo       $t7
/* 2AFD4 8002A3D4 018F6021 */  addu       $t4, $t4, $t7
/* 2AFD8 8002A3D8 05810007 */  bgez       $t4, .L8002A3F8
/* 2AFDC 8002A3DC 01907021 */   addu      $t6, $t4, $s0
/* 2AFE0 8002A3E0 05C00005 */  bltz       $t6, .L8002A3F8
/* 2AFE4 8002A3E4 000C1023 */   negu      $v0, $t4
/* 2AFE8 8002A3E8 0002C140 */  sll        $t8, $v0, 5
/* 2AFEC 8002A3EC 00006025 */  or         $t4, $zero, $zero
/* 2AFF0 8002A3F0 02028023 */  subu       $s0, $s0, $v0
/* 2AFF4 8002A3F4 AFB800B8 */  sw         $t8, 0xb8($sp)
.L8002A3F8:
/* 2AFF8 8002A3F8 29810141 */  slti       $at, $t4, 0x141
/* 2AFFC 8002A3FC 14200003 */  bnez       $at, .L8002A40C
/* 2B000 8002A400 01906821 */   addu      $t5, $t4, $s0
/* 2B004 8002A404 10000006 */  b          .L8002A420
/* 2B008 8002A408 2402FFFF */   addiu     $v0, $zero, -1
.L8002A40C:
/* 2B00C 8002A40C 29A10141 */  slti       $at, $t5, 0x141
/* 2B010 8002A410 14200003 */  bnez       $at, .L8002A420
/* 2B014 8002A414 00001025 */   or        $v0, $zero, $zero
/* 2B018 8002A418 020D8023 */  subu       $s0, $s0, $t5
/* 2B01C 8002A41C 26100140 */  addiu      $s0, $s0, 0x140
.L8002A420:
/* 2B020 8002A420 1E000002 */  bgtz       $s0, .L8002A42C
/* 2B024 8002A424 30AF0FFF */   andi      $t7, $a1, 0xfff
/* 2B028 8002A428 2402FFFF */  addiu      $v0, $zero, -1
.L8002A42C:
/* 2B02C 8002A42C 04420072 */  bltzl      $v0, .L8002A5F8
/* 2B030 8002A430 26D60001 */   addiu     $s6, $s6, 1
/* 2B034 8002A434 8C620000 */  lw         $v0, ($v1)
/* 2B038 8002A438 3C01FD48 */  lui        $at, 0xfd48
/* 2B03C 8002A43C 01E17025 */  or         $t6, $t7, $at
/* 2B040 8002A440 24590008 */  addiu      $t9, $v0, 8
/* 2B044 8002A444 AC790000 */  sw         $t9, ($v1)
/* 2B048 8002A448 AC4E0000 */  sw         $t6, ($v0)
/* 2B04C 8002A44C 8FB80114 */  lw         $t8, 0x114($sp)
/* 2B050 8002A450 00167880 */  sll        $t7, $s6, 2
/* 2B054 8002A454 3C01F548 */  lui        $at, 0xf548
/* 2B058 8002A458 0018C8C0 */  sll        $t9, $t8, 3
/* 2B05C 8002A45C 032F7021 */  addu       $t6, $t9, $t7
/* 2B060 8002A460 03AEC021 */  addu       $t8, $sp, $t6
/* 2B064 8002A464 8F1800DC */  lw         $t8, 0xdc($t8)
/* 2B068 8002A468 000778C3 */  sra        $t7, $a3, 3
/* 2B06C 8002A46C 31EE01FF */  andi       $t6, $t7, 0x1ff
/* 2B070 8002A470 AC580004 */  sw         $t8, 4($v0)
/* 2B074 8002A474 8C620000 */  lw         $v0, ($v1)
/* 2B078 8002A478 000EC240 */  sll        $t8, $t6, 9
/* 2B07C 8002A47C 03013825 */  or         $a3, $t8, $at
/* 2B080 8002A480 24590008 */  addiu      $t9, $v0, 8
/* 2B084 8002A484 AC790000 */  sw         $t9, ($v1)
/* 2B088 8002A488 3C0F0700 */  lui        $t7, 0x700
/* 2B08C 8002A48C AC4F0004 */  sw         $t7, 4($v0)
/* 2B090 8002A490 AC470000 */  sw         $a3, ($v0)
/* 2B094 8002A494 8C620000 */  lw         $v0, ($v1)
/* 2B098 8002A498 3C18E600 */  lui        $t8, 0xe600
/* 2B09C 8002A49C 322F0FFF */  andi       $t7, $s1, 0xfff
/* 2B0A0 8002A4A0 244E0008 */  addiu      $t6, $v0, 8
/* 2B0A4 8002A4A4 AC6E0000 */  sw         $t6, ($v1)
/* 2B0A8 8002A4A8 AC400004 */  sw         $zero, 4($v0)
/* 2B0AC 8002A4AC AC580000 */  sw         $t8, ($v0)
/* 2B0B0 8002A4B0 8C620000 */  lw         $v0, ($v1)
/* 2B0B4 8002A4B4 3C01F400 */  lui        $at, 0xf400
/* 2B0B8 8002A4B8 01E17025 */  or         $t6, $t7, $at
/* 2B0BC 8002A4BC 01E08825 */  or         $s1, $t7, $zero
/* 2B0C0 8002A4C0 32580FFF */  andi       $t8, $s2, 0xfff
/* 2B0C4 8002A4C4 24590008 */  addiu      $t9, $v0, 8
/* 2B0C8 8002A4C8 AC790000 */  sw         $t9, ($v1)
/* 2B0CC 8002A4CC 00189300 */  sll        $s2, $t8, 0xc
/* 2B0D0 8002A4D0 00137880 */  sll        $t7, $s3, 2
/* 2B0D4 8002A4D4 3C010700 */  lui        $at, 0x700
/* 2B0D8 8002A4D8 0241C025 */  or         $t8, $s2, $at
/* 2B0DC 8002A4DC 31F30FFF */  andi       $s3, $t7, 0xfff
/* 2B0E0 8002A4E0 0313C825 */  or         $t9, $t8, $s3
/* 2B0E4 8002A4E4 AC590004 */  sw         $t9, 4($v0)
/* 2B0E8 8002A4E8 AC4E0000 */  sw         $t6, ($v0)
/* 2B0EC 8002A4EC 8C620000 */  lw         $v0, ($v1)
/* 2B0F0 8002A4F0 3C0EE700 */  lui        $t6, 0xe700
/* 2B0F4 8002A4F4 3C01F200 */  lui        $at, 0xf200
/* 2B0F8 8002A4F8 244F0008 */  addiu      $t7, $v0, 8
/* 2B0FC 8002A4FC AC6F0000 */  sw         $t7, ($v1)
/* 2B100 8002A500 AC400004 */  sw         $zero, 4($v0)
/* 2B104 8002A504 AC4E0000 */  sw         $t6, ($v0)
/* 2B108 8002A508 8C620000 */  lw         $v0, ($v1)
/* 2B10C 8002A50C 01906821 */  addu       $t5, $t4, $s0
/* 2B110 8002A510 24580008 */  addiu      $t8, $v0, 8
/* 2B114 8002A514 AC780000 */  sw         $t8, ($v1)
/* 2B118 8002A518 AC400004 */  sw         $zero, 4($v0)
/* 2B11C 8002A51C AC470000 */  sw         $a3, ($v0)
/* 2B120 8002A520 8C620000 */  lw         $v0, ($v1)
/* 2B124 8002A524 02217825 */  or         $t7, $s1, $at
/* 2B128 8002A528 02537025 */  or         $t6, $s2, $s3
/* 2B12C 8002A52C 24590008 */  addiu      $t9, $v0, 8
/* 2B130 8002A530 AC790000 */  sw         $t9, ($v1)
/* 2B134 8002A534 AC4E0004 */  sw         $t6, 4($v0)
/* 2B138 8002A538 AC4F0000 */  sw         $t7, ($v0)
/* 2B13C 8002A53C 8C620000 */  lw         $v0, ($v1)
/* 2B140 8002A540 000DC880 */  sll        $t9, $t5, 2
/* 2B144 8002A544 332F0FFF */  andi       $t7, $t9, 0xfff
/* 2B148 8002A548 000F7300 */  sll        $t6, $t7, 0xc
/* 2B14C 8002A54C 24580008 */  addiu      $t8, $v0, 8
/* 2B150 8002A550 AC780000 */  sw         $t8, ($v1)
/* 2B154 8002A554 0297C821 */  addu       $t9, $s4, $s7
/* 2B158 8002A558 3C01E400 */  lui        $at, 0xe400
/* 2B15C 8002A55C 01C1C025 */  or         $t8, $t6, $at
/* 2B160 8002A560 033E7823 */  subu       $t7, $t9, $fp
/* 2B164 8002A564 000F7080 */  sll        $t6, $t7, 2
/* 2B168 8002A568 31D90FFF */  andi       $t9, $t6, 0xfff
/* 2B16C 8002A56C 03197825 */  or         $t7, $t8, $t9
/* 2B170 8002A570 000C7080 */  sll        $t6, $t4, 2
/* 2B174 8002A574 31D80FFF */  andi       $t8, $t6, 0xfff
/* 2B178 8002A578 AC4F0000 */  sw         $t7, ($v0)
/* 2B17C 8002A57C 00147880 */  sll        $t7, $s4, 2
/* 2B180 8002A580 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 2B184 8002A584 0018CB00 */  sll        $t9, $t8, 0xc
/* 2B188 8002A588 032EC025 */  or         $t8, $t9, $t6
/* 2B18C 8002A58C AC580004 */  sw         $t8, 4($v0)
/* 2B190 8002A590 8C620000 */  lw         $v0, ($v1)
/* 2B194 8002A594 3C19B400 */  lui        $t9, 0xb400
/* 2B198 8002A598 244F0008 */  addiu      $t7, $v0, 8
/* 2B19C 8002A59C AC6F0000 */  sw         $t7, ($v1)
/* 2B1A0 8002A5A0 AC590000 */  sw         $t9, ($v0)
/* 2B1A4 8002A5A4 8FB900B4 */  lw         $t9, 0xb4($sp)
/* 2B1A8 8002A5A8 8FB800B8 */  lw         $t8, 0xb8($sp)
/* 2B1AC 8002A5AC 332EFFFF */  andi       $t6, $t9, 0xffff
/* 2B1B0 8002A5B0 00187C00 */  sll        $t7, $t8, 0x10
/* 2B1B4 8002A5B4 01EEC025 */  or         $t8, $t7, $t6
/* 2B1B8 8002A5B8 AC580004 */  sw         $t8, 4($v0)
/* 2B1BC 8002A5BC 8C620000 */  lw         $v0, ($v1)
/* 2B1C0 8002A5C0 3C0E0400 */  lui        $t6, 0x400
/* 2B1C4 8002A5C4 35CE0400 */  ori        $t6, $t6, 0x400
/* 2B1C8 8002A5C8 24590008 */  addiu      $t9, $v0, 8
/* 2B1CC 8002A5CC AC790000 */  sw         $t9, ($v1)
/* 2B1D0 8002A5D0 3C0FB300 */  lui        $t7, 0xb300
/* 2B1D4 8002A5D4 AC4F0000 */  sw         $t7, ($v0)
/* 2B1D8 8002A5D8 AC4E0004 */  sw         $t6, 4($v0)
/* 2B1DC 8002A5DC 8C620000 */  lw         $v0, ($v1)
/* 2B1E0 8002A5E0 3C19E700 */  lui        $t9, 0xe700
/* 2B1E4 8002A5E4 24580008 */  addiu      $t8, $v0, 8
/* 2B1E8 8002A5E8 AC780000 */  sw         $t8, ($v1)
/* 2B1EC 8002A5EC AC400004 */  sw         $zero, 4($v0)
/* 2B1F0 8002A5F0 AC590000 */  sw         $t9, ($v0)
/* 2B1F4 8002A5F4 26D60001 */  addiu      $s6, $s6, 1
.L8002A5F8:
/* 2B1F8 8002A5F8 24010002 */  addiu      $at, $zero, 2
/* 2B1FC 8002A5FC 56C1FF47 */  bnel       $s6, $at, .L8002A31C
/* 2B200 8002A600 8FB90114 */   lw        $t9, 0x114($sp)
/* 2B204 8002A604 8FAF0044 */  lw         $t7, 0x44($sp)
/* 2B208 8002A608 8FA20114 */  lw         $v0, 0x114($sp)
/* 2B20C 8002A60C 24010004 */  addiu      $at, $zero, 4
/* 2B210 8002A610 25EE0004 */  addiu      $t6, $t7, 4
/* 2B214 8002A614 24420001 */  addiu      $v0, $v0, 1
/* 2B218 8002A618 AFA20114 */  sw         $v0, 0x114($sp)
/* 2B21C 8002A61C 1441FED6 */  bne        $v0, $at, .L8002A178
/* 2B220 8002A620 AFAE0044 */   sw        $t6, 0x44($sp)
/* 2B224 8002A624 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd0c)
/* 2B228 8002A628 2442FD0C */  addiu      $v0, $v0, %lo(flags_DAT_8008fd0c)
/* 2B22C 8002A62C 94580000 */  lhu        $t8, ($v0)
/* 2B230 8002A630 3319FFEF */  andi       $t9, $t8, 0xffef
/* 2B234 8002A634 A4590000 */  sh         $t9, ($v0)
/* 2B238 8002A638 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2B23C 8002A63C 8FB00008 */  lw         $s0, 8($sp)
/* 2B240 8002A640 8FB1000C */  lw         $s1, 0xc($sp)
/* 2B244 8002A644 8FB20010 */  lw         $s2, 0x10($sp)
/* 2B248 8002A648 8FB30014 */  lw         $s3, 0x14($sp)
/* 2B24C 8002A64C 8FB40018 */  lw         $s4, 0x18($sp)
/* 2B250 8002A650 8FB5001C */  lw         $s5, 0x1c($sp)
/* 2B254 8002A654 8FB60020 */  lw         $s6, 0x20($sp)
/* 2B258 8002A658 8FB70024 */  lw         $s7, 0x24($sp)
/* 2B25C 8002A65C 8FBE0028 */  lw         $fp, 0x28($sp)
/* 2B260 8002A660 03E00008 */  jr         $ra
/* 2B264 8002A664 27BD0118 */   addiu     $sp, $sp, 0x118

glabel VOID_FUN_8002a668
/* 2B268 8002A668 27BDFF10 */  addiu      $sp, $sp, -0xf0
/* 2B26C 8002A66C AFB30014 */  sw         $s3, 0x14($sp)
/* 2B270 8002A670 3C138009 */  lui        $s3, 0x8009
/* 2B274 8002A674 AFB40018 */  sw         $s4, 0x18($sp)
/* 2B278 8002A678 AFB20010 */  sw         $s2, 0x10($sp)
/* 2B27C 8002A67C 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 2B280 8002A680 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 2B284 8002A684 3C12E700 */  lui        $s2, 0xe700
/* 2B288 8002A688 3C14E600 */  lui        $s4, 0xe600
/* 2B28C 8002A68C 2673FD0C */  addiu      $s3, $s3, -0x2f4
/* 2B290 8002A690 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2B294 8002A694 AFBE0028 */  sw         $fp, 0x28($sp)
/* 2B298 8002A698 AFB70024 */  sw         $s7, 0x24($sp)
/* 2B29C 8002A69C AFB60020 */  sw         $s6, 0x20($sp)
/* 2B2A0 8002A6A0 AFB5001C */  sw         $s5, 0x1c($sp)
/* 2B2A4 8002A6A4 AFB1000C */  sw         $s1, 0xc($sp)
/* 2B2A8 8002A6A8 AFB00008 */  sw         $s0, 8($sp)
/* 2B2AC 8002A6AC 3C0F8006 */  lui        $t7, %hi(D_8005F95C)
/* 2B2B0 8002A6B0 25EFF95C */  addiu      $t7, $t7, %lo(D_8005F95C)
/* 2B2B4 8002A6B4 8DE10000 */  lw         $at, ($t7)
/* 2B2B8 8002A6B8 8DF90004 */  lw         $t9, 4($t7)
/* 2B2BC 8002A6BC 27AE00D8 */  addiu      $t6, $sp, 0xd8
/* 2B2C0 8002A6C0 ADC10000 */  sw         $at, ($t6)
/* 2B2C4 8002A6C4 ADD90004 */  sw         $t9, 4($t6)
/* 2B2C8 8002A6C8 8DF9000C */  lw         $t9, 0xc($t7)
/* 2B2CC 8002A6CC 8DE10008 */  lw         $at, 8($t7)
/* 2B2D0 8002A6D0 27B800C8 */  addiu      $t8, $sp, 0xc8
/* 2B2D4 8002A6D4 ADD9000C */  sw         $t9, 0xc($t6)
/* 2B2D8 8002A6D8 ADC10008 */  sw         $at, 8($t6)
/* 2B2DC 8002A6DC 3C0E8006 */  lui        $t6, %hi(D_8005F96C)
/* 2B2E0 8002A6E0 25CEF96C */  addiu      $t6, $t6, %lo(D_8005F96C)
/* 2B2E4 8002A6E4 8DC10000 */  lw         $at, ($t6)
/* 2B2E8 8002A6E8 8DD90004 */  lw         $t9, 4($t6)
/* 2B2EC 8002A6EC 27AF00B8 */  addiu      $t7, $sp, 0xb8
/* 2B2F0 8002A6F0 AF010000 */  sw         $at, ($t8)
/* 2B2F4 8002A6F4 AF190004 */  sw         $t9, 4($t8)
/* 2B2F8 8002A6F8 8DD9000C */  lw         $t9, 0xc($t6)
/* 2B2FC 8002A6FC 8DC10008 */  lw         $at, 8($t6)
/* 2B300 8002A700 240D0016 */  addiu      $t5, $zero, 0x16
/* 2B304 8002A704 AF19000C */  sw         $t9, 0xc($t8)
/* 2B308 8002A708 AF010008 */  sw         $at, 8($t8)
/* 2B30C 8002A70C 3C188006 */  lui        $t8, %hi(D_8005F97C)
/* 2B310 8002A710 2718F97C */  addiu      $t8, $t8, %lo(D_8005F97C)
/* 2B314 8002A714 8F010000 */  lw         $at, ($t8)
/* 2B318 8002A718 8F190004 */  lw         $t9, 4($t8)
/* 2B31C 8002A71C 27B000B8 */  addiu      $s0, $sp, 0xb8
/* 2B320 8002A720 ADE10000 */  sw         $at, ($t7)
/* 2B324 8002A724 ADF90004 */  sw         $t9, 4($t7)
/* 2B328 8002A728 8F19000C */  lw         $t9, 0xc($t8)
/* 2B32C 8002A72C 8F010008 */  lw         $at, 8($t8)
/* 2B330 8002A730 3C18FD10 */  lui        $t8, 0xfd10
/* 2B334 8002A734 ADF9000C */  sw         $t9, 0xc($t7)
/* 2B338 8002A738 ADE10008 */  sw         $at, 8($t7)
/* 2B33C 8002A73C 8C620000 */  lw         $v0, ($v1)
/* 2B340 8002A740 27A500D8 */  addiu      $a1, $sp, 0xd8
/* 2B344 8002A744 27A400C8 */  addiu      $a0, $sp, 0xc8
/* 2B348 8002A748 244E0008 */  addiu      $t6, $v0, 8
/* 2B34C 8002A74C AC6E0000 */  sw         $t6, ($v1)
/* 2B350 8002A750 AC400004 */  sw         $zero, 4($v0)
/* 2B354 8002A754 AC520000 */  sw         $s2, ($v0)
/* 2B358 8002A758 8C620000 */  lw         $v0, ($v1)
/* 2B35C 8002A75C 3C198006 */  lui        $t9, %hi(D_80064D58)
/* 2B360 8002A760 27394D58 */  addiu      $t9, $t9, %lo(D_80064D58)
/* 2B364 8002A764 244F0008 */  addiu      $t7, $v0, 8
/* 2B368 8002A768 AC6F0000 */  sw         $t7, ($v1)
/* 2B36C 8002A76C AC590004 */  sw         $t9, 4($v0)
/* 2B370 8002A770 AC580000 */  sw         $t8, ($v0)
/* 2B374 8002A774 8C620000 */  lw         $v0, ($v1)
/* 2B378 8002A778 3C0FE800 */  lui        $t7, 0xe800
/* 2B37C 8002A77C 3C19F500 */  lui        $t9, 0xf500
/* 2B380 8002A780 244E0008 */  addiu      $t6, $v0, 8
/* 2B384 8002A784 AC6E0000 */  sw         $t6, ($v1)
/* 2B388 8002A788 AC400004 */  sw         $zero, 4($v0)
/* 2B38C 8002A78C AC4F0000 */  sw         $t7, ($v0)
/* 2B390 8002A790 8C620000 */  lw         $v0, ($v1)
/* 2B394 8002A794 37390100 */  ori        $t9, $t9, 0x100
/* 2B398 8002A798 3C0E0700 */  lui        $t6, 0x700
/* 2B39C 8002A79C 24580008 */  addiu      $t8, $v0, 8
/* 2B3A0 8002A7A0 AC780000 */  sw         $t8, ($v1)
/* 2B3A4 8002A7A4 AC4E0004 */  sw         $t6, 4($v0)
/* 2B3A8 8002A7A8 AC590000 */  sw         $t9, ($v0)
/* 2B3AC 8002A7AC 8C620000 */  lw         $v0, ($v1)
/* 2B3B0 8002A7B0 3C19F000 */  lui        $t9, 0xf000
/* 2B3B4 8002A7B4 3C1F0001 */  lui        $ra, 1
/* 2B3B8 8002A7B8 244F0008 */  addiu      $t7, $v0, 8
/* 2B3BC 8002A7BC AC6F0000 */  sw         $t7, ($v1)
/* 2B3C0 8002A7C0 AC400004 */  sw         $zero, 4($v0)
/* 2B3C4 8002A7C4 AC540000 */  sw         $s4, ($v0)
/* 2B3C8 8002A7C8 8C620000 */  lw         $v0, ($v1)
/* 2B3CC 8002A7CC 3C0E073F */  lui        $t6, 0x73f
/* 2B3D0 8002A7D0 35CEC000 */  ori        $t6, $t6, 0xc000
/* 2B3D4 8002A7D4 24580008 */  addiu      $t8, $v0, 8
/* 2B3D8 8002A7D8 AC780000 */  sw         $t8, ($v1)
/* 2B3DC 8002A7DC AC4E0004 */  sw         $t6, 4($v0)
/* 2B3E0 8002A7E0 AC590000 */  sw         $t9, ($v0)
/* 2B3E4 8002A7E4 8C620000 */  lw         $v0, ($v1)
/* 2B3E8 8002A7E8 37FF4160 */  ori        $ra, $ra, 0x4160
/* 2B3EC 8002A7EC 3C1E070F */  lui        $fp, 0x70f
/* 2B3F0 8002A7F0 244F0008 */  addiu      $t7, $v0, 8
/* 2B3F4 8002A7F4 AC6F0000 */  sw         $t7, ($v1)
/* 2B3F8 8002A7F8 AC400004 */  sw         $zero, 4($v0)
/* 2B3FC 8002A7FC AC520000 */  sw         $s2, ($v0)
/* 2B400 8002A800 96780000 */  lhu        $t8, ($s3)
/* 2B404 8002A804 3C160701 */  lui        $s6, 0x701
/* 2B408 8002A808 3C15FD48 */  lui        $s5, 0xfd48
/* 2B40C 8002A80C 3319FFEF */  andi       $t9, $t8, 0xffef
/* 2B410 8002A810 A6790000 */  sh         $t9, ($s3)
/* 2B414 8002A814 3C13F548 */  lui        $s3, 0xf548
/* 2B418 8002A818 36731000 */  ori        $s3, $s3, 0x1000
/* 2B41C 8002A81C 36B5003F */  ori        $s5, $s5, 0x3f
/* 2B420 8002A820 36D64160 */  ori        $s6, $s6, 0x4160
/* 2B424 8002A824 37DEC000 */  ori        $fp, $fp, 0xc000
/* 2B428 8002A828 3C17F400 */  lui        $s7, 0xf400
.L8002A82C:
/* 2B42C 8002A82C 8C620000 */  lw         $v0, ($v1)
/* 2B430 8002A830 26100004 */  addiu      $s0, $s0, 4
/* 2B434 8002A834 244E0008 */  addiu      $t6, $v0, 8
/* 2B438 8002A838 AC6E0000 */  sw         $t6, ($v1)
/* 2B43C 8002A83C AC550000 */  sw         $s5, ($v0)
/* 2B440 8002A840 8E0FFFFC */  lw         $t7, -4($s0)
/* 2B444 8002A844 AC4F0004 */  sw         $t7, 4($v0)
/* 2B448 8002A848 8C620000 */  lw         $v0, ($v1)
/* 2B44C 8002A84C 24580008 */  addiu      $t8, $v0, 8
/* 2B450 8002A850 AC780000 */  sw         $t8, ($v1)
/* 2B454 8002A854 AC560004 */  sw         $s6, 4($v0)
/* 2B458 8002A858 AC530000 */  sw         $s3, ($v0)
/* 2B45C 8002A85C 8C620000 */  lw         $v0, ($v1)
/* 2B460 8002A860 24590008 */  addiu      $t9, $v0, 8
/* 2B464 8002A864 AC790000 */  sw         $t9, ($v1)
/* 2B468 8002A868 AC400004 */  sw         $zero, 4($v0)
/* 2B46C 8002A86C AC540000 */  sw         $s4, ($v0)
/* 2B470 8002A870 8C620000 */  lw         $v0, ($v1)
/* 2B474 8002A874 244E0008 */  addiu      $t6, $v0, 8
/* 2B478 8002A878 AC6E0000 */  sw         $t6, ($v1)
/* 2B47C 8002A87C AC570000 */  sw         $s7, ($v0)
/* 2B480 8002A880 8CAF0000 */  lw         $t7, ($a1)
/* 2B484 8002A884 25F8FFFF */  addiu      $t8, $t7, -1
/* 2B488 8002A888 0018C880 */  sll        $t9, $t8, 2
/* 2B48C 8002A88C 332E0FFF */  andi       $t6, $t9, 0xfff
/* 2B490 8002A890 01DE7825 */  or         $t7, $t6, $fp
/* 2B494 8002A894 AC4F0004 */  sw         $t7, 4($v0)
/* 2B498 8002A898 8C620000 */  lw         $v0, ($v1)
/* 2B49C 8002A89C 24580008 */  addiu      $t8, $v0, 8
/* 2B4A0 8002A8A0 AC780000 */  sw         $t8, ($v1)
/* 2B4A4 8002A8A4 AC400004 */  sw         $zero, 4($v0)
/* 2B4A8 8002A8A8 AC520000 */  sw         $s2, ($v0)
/* 2B4AC 8002A8AC 8C620000 */  lw         $v0, ($v1)
/* 2B4B0 8002A8B0 24590008 */  addiu      $t9, $v0, 8
/* 2B4B4 8002A8B4 AC790000 */  sw         $t9, ($v1)
/* 2B4B8 8002A8B8 AC5F0004 */  sw         $ra, 4($v0)
/* 2B4BC 8002A8BC AC530000 */  sw         $s3, ($v0)
/* 2B4C0 8002A8C0 8C620000 */  lw         $v0, ($v1)
/* 2B4C4 8002A8C4 3C0FF200 */  lui        $t7, 0xf200
/* 2B4C8 8002A8C8 3C01000F */  lui        $at, 0xf
/* 2B4CC 8002A8CC 244E0008 */  addiu      $t6, $v0, 8
/* 2B4D0 8002A8D0 AC6E0000 */  sw         $t6, ($v1)
/* 2B4D4 8002A8D4 AC4F0000 */  sw         $t7, ($v0)
/* 2B4D8 8002A8D8 8CB80000 */  lw         $t8, ($a1)
/* 2B4DC 8002A8DC 3421C000 */  ori        $at, $at, 0xc000
/* 2B4E0 8002A8E0 24A50004 */  addiu      $a1, $a1, 4
/* 2B4E4 8002A8E4 2719FFFF */  addiu      $t9, $t8, -1
/* 2B4E8 8002A8E8 00197080 */  sll        $t6, $t9, 2
/* 2B4EC 8002A8EC 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2B4F0 8002A8F0 01E1C025 */  or         $t8, $t7, $at
/* 2B4F4 8002A8F4 AC580004 */  sw         $t8, 4($v0)
/* 2B4F8 8002A8F8 8C620000 */  lw         $v0, ($v1)
/* 2B4FC 8002A8FC 8C8E0000 */  lw         $t6, ($a0)
/* 2B500 8002A900 3C01E44A */  lui        $at, 0xe44a
/* 2B504 8002A904 24590008 */  addiu      $t9, $v0, 8
/* 2B508 8002A908 01CD7821 */  addu       $t7, $t6, $t5
/* 2B50C 8002A90C 000FC080 */  sll        $t8, $t7, 2
/* 2B510 8002A910 AC790000 */  sw         $t9, ($v1)
/* 2B514 8002A914 33190FFF */  andi       $t9, $t8, 0xfff
/* 2B518 8002A918 34214000 */  ori        $at, $at, 0x4000
/* 2B51C 8002A91C 03217025 */  or         $t6, $t9, $at
/* 2B520 8002A920 3C010005 */  lui        $at, 5
/* 2B524 8002A924 000D7880 */  sll        $t7, $t5, 2
/* 2B528 8002A928 31F80FFF */  andi       $t8, $t7, 0xfff
/* 2B52C 8002A92C 3421C000 */  ori        $at, $at, 0xc000
/* 2B530 8002A930 0301C825 */  or         $t9, $t8, $at
/* 2B534 8002A934 AC590004 */  sw         $t9, 4($v0)
/* 2B538 8002A938 AC4E0000 */  sw         $t6, ($v0)
/* 2B53C 8002A93C 8C620000 */  lw         $v0, ($v1)
/* 2B540 8002A940 3C0FB400 */  lui        $t7, 0xb400
/* 2B544 8002A944 3C19B300 */  lui        $t9, 0xb300
/* 2B548 8002A948 244E0008 */  addiu      $t6, $v0, 8
/* 2B54C 8002A94C AC6E0000 */  sw         $t6, ($v1)
/* 2B550 8002A950 AC400004 */  sw         $zero, 4($v0)
/* 2B554 8002A954 AC4F0000 */  sw         $t7, ($v0)
/* 2B558 8002A958 8C620000 */  lw         $v0, ($v1)
/* 2B55C 8002A95C 3C0E04A8 */  lui        $t6, 0x4a8
/* 2B560 8002A960 35CE04E6 */  ori        $t6, $t6, 0x4e6
/* 2B564 8002A964 24580008 */  addiu      $t8, $v0, 8
/* 2B568 8002A968 AC780000 */  sw         $t8, ($v1)
/* 2B56C 8002A96C AC4E0004 */  sw         $t6, 4($v0)
/* 2B570 8002A970 AC590000 */  sw         $t9, ($v0)
/* 2B574 8002A974 8C620000 */  lw         $v0, ($v1)
/* 2B578 8002A978 27B900D8 */  addiu      $t9, $sp, 0xd8
/* 2B57C 8002A97C 244F0008 */  addiu      $t7, $v0, 8
/* 2B580 8002A980 AC6F0000 */  sw         $t7, ($v1)
/* 2B584 8002A984 AC400004 */  sw         $zero, 4($v0)
/* 2B588 8002A988 AC520000 */  sw         $s2, ($v0)
/* 2B58C 8002A98C 8C980000 */  lw         $t8, ($a0)
/* 2B590 8002A990 24840004 */  addiu      $a0, $a0, 4
/* 2B594 8002A994 0099082B */  sltu       $at, $a0, $t9
/* 2B598 8002A998 1420FFA4 */  bnez       $at, .L8002A82C
/* 2B59C 8002A99C 01B86821 */   addu      $t5, $t5, $t8
/* 2B5A0 8002A9A0 240D0078 */  addiu      $t5, $zero, 0x78
/* 2B5A4 8002A9A4 27B000C4 */  addiu      $s0, $sp, 0xc4
/* 2B5A8 8002A9A8 27A500E4 */  addiu      $a1, $sp, 0xe4
/* 2B5AC 8002A9AC 27A400D4 */  addiu      $a0, $sp, 0xd4
.L8002A9B0:
/* 2B5B0 8002A9B0 8C620000 */  lw         $v0, ($v1)
/* 2B5B4 8002A9B4 2610FFFC */  addiu      $s0, $s0, -4
/* 2B5B8 8002A9B8 244E0008 */  addiu      $t6, $v0, 8
/* 2B5BC 8002A9BC AC6E0000 */  sw         $t6, ($v1)
/* 2B5C0 8002A9C0 AC550000 */  sw         $s5, ($v0)
/* 2B5C4 8002A9C4 8E0F0004 */  lw         $t7, 4($s0)
/* 2B5C8 8002A9C8 AC4F0004 */  sw         $t7, 4($v0)
/* 2B5CC 8002A9CC 8C620000 */  lw         $v0, ($v1)
/* 2B5D0 8002A9D0 24580008 */  addiu      $t8, $v0, 8
/* 2B5D4 8002A9D4 AC780000 */  sw         $t8, ($v1)
/* 2B5D8 8002A9D8 AC560004 */  sw         $s6, 4($v0)
/* 2B5DC 8002A9DC AC530000 */  sw         $s3, ($v0)
/* 2B5E0 8002A9E0 8C620000 */  lw         $v0, ($v1)
/* 2B5E4 8002A9E4 24590008 */  addiu      $t9, $v0, 8
/* 2B5E8 8002A9E8 AC790000 */  sw         $t9, ($v1)
/* 2B5EC 8002A9EC AC400004 */  sw         $zero, 4($v0)
/* 2B5F0 8002A9F0 AC540000 */  sw         $s4, ($v0)
/* 2B5F4 8002A9F4 8C620000 */  lw         $v0, ($v1)
/* 2B5F8 8002A9F8 244E0008 */  addiu      $t6, $v0, 8
/* 2B5FC 8002A9FC AC6E0000 */  sw         $t6, ($v1)
/* 2B600 8002AA00 AC570000 */  sw         $s7, ($v0)
/* 2B604 8002AA04 8CAF0000 */  lw         $t7, ($a1)
/* 2B608 8002AA08 25F8FFFF */  addiu      $t8, $t7, -1
/* 2B60C 8002AA0C 0018C880 */  sll        $t9, $t8, 2
/* 2B610 8002AA10 332E0FFF */  andi       $t6, $t9, 0xfff
/* 2B614 8002AA14 01DE7825 */  or         $t7, $t6, $fp
/* 2B618 8002AA18 AC4F0004 */  sw         $t7, 4($v0)
/* 2B61C 8002AA1C 8C620000 */  lw         $v0, ($v1)
/* 2B620 8002AA20 24580008 */  addiu      $t8, $v0, 8
/* 2B624 8002AA24 AC780000 */  sw         $t8, ($v1)
/* 2B628 8002AA28 AC400004 */  sw         $zero, 4($v0)
/* 2B62C 8002AA2C AC520000 */  sw         $s2, ($v0)
/* 2B630 8002AA30 8C620000 */  lw         $v0, ($v1)
/* 2B634 8002AA34 24590008 */  addiu      $t9, $v0, 8
/* 2B638 8002AA38 AC790000 */  sw         $t9, ($v1)
/* 2B63C 8002AA3C AC5F0004 */  sw         $ra, 4($v0)
/* 2B640 8002AA40 AC530000 */  sw         $s3, ($v0)
/* 2B644 8002AA44 8C620000 */  lw         $v0, ($v1)
/* 2B648 8002AA48 3C0FF200 */  lui        $t7, 0xf200
/* 2B64C 8002AA4C 3C01000F */  lui        $at, 0xf
/* 2B650 8002AA50 244E0008 */  addiu      $t6, $v0, 8
/* 2B654 8002AA54 AC6E0000 */  sw         $t6, ($v1)
/* 2B658 8002AA58 AC4F0000 */  sw         $t7, ($v0)
/* 2B65C 8002AA5C 8CB80000 */  lw         $t8, ($a1)
/* 2B660 8002AA60 3421C000 */  ori        $at, $at, 0xc000
/* 2B664 8002AA64 2719FFFF */  addiu      $t9, $t8, -1
/* 2B668 8002AA68 00197080 */  sll        $t6, $t9, 2
/* 2B66C 8002AA6C 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2B670 8002AA70 01E1C025 */  or         $t8, $t7, $at
/* 2B674 8002AA74 AC580004 */  sw         $t8, 4($v0)
/* 2B678 8002AA78 8C620000 */  lw         $v0, ($v1)
/* 2B67C 8002AA7C 8C8E0000 */  lw         $t6, ($a0)
/* 2B680 8002AA80 3C01E44A */  lui        $at, 0xe44a
/* 2B684 8002AA84 24590008 */  addiu      $t9, $v0, 8
/* 2B688 8002AA88 01CD7821 */  addu       $t7, $t6, $t5
/* 2B68C 8002AA8C 000FC080 */  sll        $t8, $t7, 2
/* 2B690 8002AA90 AC790000 */  sw         $t9, ($v1)
/* 2B694 8002AA94 33190FFF */  andi       $t9, $t8, 0xfff
/* 2B698 8002AA98 34214000 */  ori        $at, $at, 0x4000
/* 2B69C 8002AA9C 03217025 */  or         $t6, $t9, $at
/* 2B6A0 8002AAA0 3C010005 */  lui        $at, 5
/* 2B6A4 8002AAA4 000D7880 */  sll        $t7, $t5, 2
/* 2B6A8 8002AAA8 31F80FFF */  andi       $t8, $t7, 0xfff
/* 2B6AC 8002AAAC 3421C000 */  ori        $at, $at, 0xc000
/* 2B6B0 8002AAB0 0301C825 */  or         $t9, $t8, $at
/* 2B6B4 8002AAB4 AC590004 */  sw         $t9, 4($v0)
/* 2B6B8 8002AAB8 AC4E0000 */  sw         $t6, ($v0)
/* 2B6BC 8002AABC 8C620000 */  lw         $v0, ($v1)
/* 2B6C0 8002AAC0 3C0FB400 */  lui        $t7, 0xb400
/* 2B6C4 8002AAC4 24A5FFFC */  addiu      $a1, $a1, -4
/* 2B6C8 8002AAC8 244E0008 */  addiu      $t6, $v0, 8
/* 2B6CC 8002AACC AC6E0000 */  sw         $t6, ($v1)
/* 2B6D0 8002AAD0 AC4F0000 */  sw         $t7, ($v0)
/* 2B6D4 8002AAD4 8CB80004 */  lw         $t8, 4($a1)
/* 2B6D8 8002AAD8 2719FFFF */  addiu      $t9, $t8, -1
/* 2B6DC 8002AADC 00197140 */  sll        $t6, $t9, 5
/* 2B6E0 8002AAE0 31CFFFFF */  andi       $t7, $t6, 0xffff
/* 2B6E4 8002AAE4 AC4F0004 */  sw         $t7, 4($v0)
/* 2B6E8 8002AAE8 8C620000 */  lw         $v0, ($v1)
/* 2B6EC 8002AAEC 3C0E04A8 */  lui        $t6, 0x4a8
/* 2B6F0 8002AAF0 35CEFB1A */  ori        $t6, $t6, 0xfb1a
/* 2B6F4 8002AAF4 24580008 */  addiu      $t8, $v0, 8
/* 2B6F8 8002AAF8 AC780000 */  sw         $t8, ($v1)
/* 2B6FC 8002AAFC 3C19B300 */  lui        $t9, 0xb300
/* 2B700 8002AB00 AC590000 */  sw         $t9, ($v0)
/* 2B704 8002AB04 AC4E0004 */  sw         $t6, 4($v0)
/* 2B708 8002AB08 8C620000 */  lw         $v0, ($v1)
/* 2B70C 8002AB0C 27B900C8 */  addiu      $t9, $sp, 0xc8
/* 2B710 8002AB10 244F0008 */  addiu      $t7, $v0, 8
/* 2B714 8002AB14 AC6F0000 */  sw         $t7, ($v1)
/* 2B718 8002AB18 AC400004 */  sw         $zero, 4($v0)
/* 2B71C 8002AB1C AC520000 */  sw         $s2, ($v0)
/* 2B720 8002AB20 8C980000 */  lw         $t8, ($a0)
/* 2B724 8002AB24 2484FFFC */  addiu      $a0, $a0, -4
/* 2B728 8002AB28 0099082B */  sltu       $at, $a0, $t9
/* 2B72C 8002AB2C 1020FFA0 */  beqz       $at, .L8002A9B0
/* 2B730 8002AB30 01B86821 */   addu      $t5, $t5, $t8
/* 2B734 8002AB34 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2B738 8002AB38 8FB00008 */  lw         $s0, 8($sp)
/* 2B73C 8002AB3C 8FB1000C */  lw         $s1, 0xc($sp)
/* 2B740 8002AB40 8FB20010 */  lw         $s2, 0x10($sp)
/* 2B744 8002AB44 8FB30014 */  lw         $s3, 0x14($sp)
/* 2B748 8002AB48 8FB40018 */  lw         $s4, 0x18($sp)
/* 2B74C 8002AB4C 8FB5001C */  lw         $s5, 0x1c($sp)
/* 2B750 8002AB50 8FB60020 */  lw         $s6, 0x20($sp)
/* 2B754 8002AB54 8FB70024 */  lw         $s7, 0x24($sp)
/* 2B758 8002AB58 8FBE0028 */  lw         $fp, 0x28($sp)
/* 2B75C 8002AB5C 03E00008 */  jr         $ra
/* 2B760 8002AB60 27BD00F0 */   addiu     $sp, $sp, 0xf0

glabel drawSaveNumber_
/* 2B764 8002AB64 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* 2B768 8002AB68 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2B76C 8002AB6C AFB20020 */  sw         $s2, 0x20($sp)
/* 2B770 8002AB70 00809025 */  or         $s2, $a0, $zero
/* 2B774 8002AB74 00C0A825 */  or         $s5, $a2, $zero
/* 2B778 8002AB78 AFBF003C */  sw         $ra, 0x3c($sp)
/* 2B77C 8002AB7C AFBE0038 */  sw         $fp, 0x38($sp)
/* 2B780 8002AB80 AFB70034 */  sw         $s7, 0x34($sp)
/* 2B784 8002AB84 AFB60030 */  sw         $s6, 0x30($sp)
/* 2B788 8002AB88 AFB40028 */  sw         $s4, 0x28($sp)
/* 2B78C 8002AB8C AFB30024 */  sw         $s3, 0x24($sp)
/* 2B790 8002AB90 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2B794 8002AB94 AFB00018 */  sw         $s0, 0x18($sp)
/* 2B798 8002AB98 AFA500D4 */  sw         $a1, 0xd4($sp)
/* 2B79C 8002AB9C 3C0F3B9A */  lui        $t7, 0x3b9a
/* 2B7A0 8002ABA0 35EFCA00 */  ori        $t7, $t7, 0xca00
/* 2B7A4 8002ABA4 240E0000 */  addiu      $t6, $zero, 0
/* 2B7A8 8002ABA8 24180000 */  addiu      $t8, $zero, 0
/* 2B7AC 8002ABAC 2A41000A */  slti       $at, $s2, 0xa
/* 2B7B0 8002ABB0 AFAE00C0 */  sw         $t6, 0xc0($sp)
/* 2B7B4 8002ABB4 AFAF00C4 */  sw         $t7, 0xc4($sp)
/* 2B7B8 8002ABB8 AFB800B8 */  sw         $t8, 0xb8($sp)
/* 2B7BC 8002ABBC AFA700BC */  sw         $a3, 0xbc($sp)
/* 2B7C0 8002ABC0 00009825 */  or         $s3, $zero, $zero
/* 2B7C4 8002ABC4 14200002 */  bnez       $at, .L8002ABD0
/* 2B7C8 8002ABC8 24020009 */   addiu     $v0, $zero, 9
/* 2B7CC 8002ABCC 24120009 */  addiu      $s2, $zero, 9
.L8002ABD0:
/* 2B7D0 8002ABD0 27AE00AC */  addiu      $t6, $sp, 0xac
/* 2B7D4 8002ABD4 004E8821 */  addu       $s1, $v0, $t6
/* 2B7D8 8002ABD8 00008025 */  or         $s0, $zero, $zero
.L8002ABDC:
/* 2B7DC 8002ABDC 00001025 */  or         $v0, $zero, $zero
.L8002ABE0:
/* 2B7E0 8002ABE0 8FB900BC */  lw         $t9, 0xbc($sp)
/* 2B7E4 8002ABE4 8FAF00C4 */  lw         $t7, 0xc4($sp)
/* 2B7E8 8002ABE8 8FB800B8 */  lw         $t8, 0xb8($sp)
/* 2B7EC 8002ABEC 8FAE00C0 */  lw         $t6, 0xc0($sp)
/* 2B7F0 8002ABF0 032F082B */  sltu       $at, $t9, $t7
/* 2B7F4 8002ABF4 032FC823 */  subu       $t9, $t9, $t7
/* 2B7F8 8002ABF8 030EC023 */  subu       $t8, $t8, $t6
/* 2B7FC 8002ABFC 0301C023 */  subu       $t8, $t8, $at
/* 2B800 8002AC00 AFB800B8 */  sw         $t8, 0xb8($sp)
/* 2B804 8002AC04 1F00000C */  bgtz       $t8, .L8002AC38
/* 2B808 8002AC08 AFB900BC */   sw        $t9, 0xbc($sp)
/* 2B80C 8002AC0C 07020004 */  bltzl      $t8, .L8002AC20
/* 2B810 8002AC10 032FC821 */   addu      $t9, $t9, $t7
/* 2B814 8002AC14 1000FFF2 */  b          .L8002ABE0
/* 2B818 8002AC18 24420001 */   addiu     $v0, $v0, 1
/* 2B81C 8002AC1C 032FC821 */  addu       $t9, $t9, $t7
.L8002AC20:
/* 2B820 8002AC20 032F082B */  sltu       $at, $t9, $t7
/* 2B824 8002AC24 0038C021 */  addu       $t8, $at, $t8
/* 2B828 8002AC28 030EC021 */  addu       $t8, $t8, $t6
/* 2B82C 8002AC2C AFB800B8 */  sw         $t8, 0xb8($sp)
/* 2B830 8002AC30 10000003 */  b          .L8002AC40
/* 2B834 8002AC34 AFB900BC */   sw        $t9, 0xbc($sp)
.L8002AC38:
/* 2B838 8002AC38 1000FFE9 */  b          .L8002ABE0
/* 2B83C 8002AC3C 24420001 */   addiu     $v0, $v0, 1
.L8002AC40:
/* 2B840 8002AC40 A2220000 */  sb         $v0, ($s1)
/* 2B844 8002AC44 2631FFFF */  addiu      $s1, $s1, -1
/* 2B848 8002AC48 8FA500C4 */  lw         $a1, 0xc4($sp)
/* 2B84C 8002AC4C 8FA400C0 */  lw         $a0, 0xc0($sp)
/* 2B850 8002AC50 24060000 */  addiu      $a2, $zero, 0
/* 2B854 8002AC54 0C00E6CE */  jal        func_80039B38
/* 2B858 8002AC58 2407000A */   addiu     $a3, $zero, 0xa
/* 2B85C 8002AC5C 26100001 */  addiu      $s0, $s0, 1
/* 2B860 8002AC60 2A010009 */  slti       $at, $s0, 9
/* 2B864 8002AC64 AFA200C0 */  sw         $v0, 0xc0($sp)
/* 2B868 8002AC68 1420FFDC */  bnez       $at, .L8002ABDC
/* 2B86C 8002AC6C AFA300C4 */   sw        $v1, 0xc4($sp)
/* 2B870 8002AC70 3C0B8009 */  lui        $t3, %hi(flags_DAT_8008fd0c)
/* 2B874 8002AC74 256BFD0C */  addiu      $t3, $t3, %lo(flags_DAT_8008fd0c)
/* 2B878 8002AC78 95790000 */  lhu        $t9, ($t3)
/* 2B87C 8002AC7C 8FAF00BC */  lw         $t7, 0xbc($sp)
/* 2B880 8002AC80 00008025 */  or         $s0, $zero, $zero
/* 2B884 8002AC84 332E0010 */  andi       $t6, $t9, 0x10
/* 2B888 8002AC88 15C00035 */  bnez       $t6, .L8002AD60
/* 2B88C 8002AC8C A3AF00AC */   sb        $t7, 0xac($sp)
/* 2B890 8002AC90 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 2B894 8002AC94 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 2B898 8002AC98 3C11E700 */  lui        $s1, 0xe700
/* 2B89C 8002AC9C 8C620000 */  lw         $v0, ($v1)
/* 2B8A0 8002ACA0 3C19FD10 */  lui        $t9, 0xfd10
/* 2B8A4 8002ACA4 244F0008 */  addiu      $t7, $v0, 8
/* 2B8A8 8002ACA8 AC6F0000 */  sw         $t7, ($v1)
/* 2B8AC 8002ACAC AC400004 */  sw         $zero, 4($v0)
/* 2B8B0 8002ACB0 AC510000 */  sw         $s1, ($v0)
/* 2B8B4 8002ACB4 8C620000 */  lw         $v0, ($v1)
/* 2B8B8 8002ACB8 3C0E8006 */  lui        $t6, %hi(D_80060138)
/* 2B8BC 8002ACBC 25CE0138 */  addiu      $t6, $t6, %lo(D_80060138)
/* 2B8C0 8002ACC0 24580008 */  addiu      $t8, $v0, 8
/* 2B8C4 8002ACC4 AC780000 */  sw         $t8, ($v1)
/* 2B8C8 8002ACC8 AC4E0004 */  sw         $t6, 4($v0)
/* 2B8CC 8002ACCC AC590000 */  sw         $t9, ($v0)
/* 2B8D0 8002ACD0 8C620000 */  lw         $v0, ($v1)
/* 2B8D4 8002ACD4 3C18E800 */  lui        $t8, 0xe800
/* 2B8D8 8002ACD8 3C0EF500 */  lui        $t6, 0xf500
/* 2B8DC 8002ACDC 244F0008 */  addiu      $t7, $v0, 8
/* 2B8E0 8002ACE0 AC6F0000 */  sw         $t7, ($v1)
/* 2B8E4 8002ACE4 AC400004 */  sw         $zero, 4($v0)
/* 2B8E8 8002ACE8 AC580000 */  sw         $t8, ($v0)
/* 2B8EC 8002ACEC 8C620000 */  lw         $v0, ($v1)
/* 2B8F0 8002ACF0 35CE0100 */  ori        $t6, $t6, 0x100
/* 2B8F4 8002ACF4 3C0F0700 */  lui        $t7, 0x700
/* 2B8F8 8002ACF8 24590008 */  addiu      $t9, $v0, 8
/* 2B8FC 8002ACFC AC790000 */  sw         $t9, ($v1)
/* 2B900 8002AD00 AC4F0004 */  sw         $t7, 4($v0)
/* 2B904 8002AD04 AC4E0000 */  sw         $t6, ($v0)
/* 2B908 8002AD08 8C620000 */  lw         $v0, ($v1)
/* 2B90C 8002AD0C 3C19E600 */  lui        $t9, 0xe600
/* 2B910 8002AD10 3C0FF000 */  lui        $t7, 0xf000
/* 2B914 8002AD14 24580008 */  addiu      $t8, $v0, 8
/* 2B918 8002AD18 AC780000 */  sw         $t8, ($v1)
/* 2B91C 8002AD1C AC400004 */  sw         $zero, 4($v0)
/* 2B920 8002AD20 AC590000 */  sw         $t9, ($v0)
/* 2B924 8002AD24 8C620000 */  lw         $v0, ($v1)
/* 2B928 8002AD28 3C18073F */  lui        $t8, 0x73f
/* 2B92C 8002AD2C 3718C000 */  ori        $t8, $t8, 0xc000
/* 2B930 8002AD30 244E0008 */  addiu      $t6, $v0, 8
/* 2B934 8002AD34 AC6E0000 */  sw         $t6, ($v1)
/* 2B938 8002AD38 AC580004 */  sw         $t8, 4($v0)
/* 2B93C 8002AD3C AC4F0000 */  sw         $t7, ($v0)
/* 2B940 8002AD40 8C620000 */  lw         $v0, ($v1)
/* 2B944 8002AD44 24590008 */  addiu      $t9, $v0, 8
/* 2B948 8002AD48 AC790000 */  sw         $t9, ($v1)
/* 2B94C 8002AD4C AC400004 */  sw         $zero, 4($v0)
/* 2B950 8002AD50 AC510000 */  sw         $s1, ($v0)
/* 2B954 8002AD54 956E0000 */  lhu        $t6, ($t3)
/* 2B958 8002AD58 35CF0010 */  ori        $t7, $t6, 0x10
/* 2B95C 8002AD5C A56F0000 */  sh         $t7, ($t3)
.L8002AD60:
/* 2B960 8002AD60 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 2B964 8002AD64 2644FFFF */  addiu      $a0, $s2, -1
/* 2B968 8002AD68 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 2B96C 8002AD6C 04800074 */  bltz       $a0, .L8002AF40
/* 2B970 8002AD70 3C11E700 */   lui       $s1, 0xe700
/* 2B974 8002AD74 27B800AC */  addiu      $t8, $sp, 0xac
/* 2B978 8002AD78 3C1E8006 */  lui        $fp, %hi(D_8005F0D0)
/* 2B97C 8002AD7C 3C17FD48 */  lui        $s7, 0xfd48
/* 2B980 8002AD80 3C12F548 */  lui        $s2, 0xf548
/* 2B984 8002AD84 36520200 */  ori        $s2, $s2, 0x200
/* 2B988 8002AD88 36F70007 */  ori        $s7, $s7, 7
/* 2B98C 8002AD8C 27DEF0D0 */  addiu      $fp, $fp, %lo(D_8005F0D0)
/* 2B990 8002AD90 00985821 */  addu       $t3, $a0, $t8
/* 2B994 8002AD94 27B600AC */  addiu      $s6, $sp, 0xac
/* 2B998 8002AD98 8FB400E0 */  lw         $s4, 0xe0($sp)
.L8002AD9C:
/* 2B99C 8002AD9C 81790000 */  lb         $t9, ($t3)
/* 2B9A0 8002ADA0 3C01E400 */  lui        $at, 0xe400
/* 2B9A4 8002ADA4 02198021 */  addu       $s0, $s0, $t9
/* 2B9A8 8002ADA8 56000004 */  bnel       $s0, $zero, .L8002ADBC
/* 2B9AC 8002ADAC 8C620000 */   lw        $v0, ($v1)
/* 2B9B0 8002ADB0 5576005F */  bnel       $t3, $s6, .L8002AF30
/* 2B9B4 8002ADB4 256BFFFF */   addiu     $t3, $t3, -1
/* 2B9B8 8002ADB8 8C620000 */  lw         $v0, ($v1)
.L8002ADBC:
/* 2B9BC 8002ADBC 244E0008 */  addiu      $t6, $v0, 8
/* 2B9C0 8002ADC0 AC6E0000 */  sw         $t6, ($v1)
/* 2B9C4 8002ADC4 AC570000 */  sw         $s7, ($v0)
/* 2B9C8 8002ADC8 816F0000 */  lb         $t7, ($t3)
/* 2B9CC 8002ADCC 00147080 */  sll        $t6, $s4, 2
/* 2B9D0 8002ADD0 000FC080 */  sll        $t8, $t7, 2
/* 2B9D4 8002ADD4 03D8C821 */  addu       $t9, $fp, $t8
/* 2B9D8 8002ADD8 032E7821 */  addu       $t7, $t9, $t6
/* 2B9DC 8002ADDC 8DF80000 */  lw         $t8, ($t7)
/* 2B9E0 8002ADE0 AC580004 */  sw         $t8, 4($v0)
/* 2B9E4 8002ADE4 8C620000 */  lw         $v0, ($v1)
/* 2B9E8 8002ADE8 3C0E0701 */  lui        $t6, 0x701
/* 2B9EC 8002ADEC 35CE0030 */  ori        $t6, $t6, 0x30
/* 2B9F0 8002ADF0 24590008 */  addiu      $t9, $v0, 8
/* 2B9F4 8002ADF4 AC790000 */  sw         $t9, ($v1)
/* 2B9F8 8002ADF8 AC4E0004 */  sw         $t6, 4($v0)
/* 2B9FC 8002ADFC AC520000 */  sw         $s2, ($v0)
/* 2BA00 8002AE00 8C620000 */  lw         $v0, ($v1)
/* 2BA04 8002AE04 3C18E600 */  lui        $t8, 0xe600
/* 2BA08 8002AE08 3C0EF400 */  lui        $t6, 0xf400
/* 2BA0C 8002AE0C 244F0008 */  addiu      $t7, $v0, 8
/* 2BA10 8002AE10 AC6F0000 */  sw         $t7, ($v1)
/* 2BA14 8002AE14 AC400004 */  sw         $zero, 4($v0)
/* 2BA18 8002AE18 AC580000 */  sw         $t8, ($v0)
/* 2BA1C 8002AE1C 8C620000 */  lw         $v0, ($v1)
/* 2BA20 8002AE20 3C0F0701 */  lui        $t7, 0x701
/* 2BA24 8002AE24 35EFC024 */  ori        $t7, $t7, 0xc024
/* 2BA28 8002AE28 24590008 */  addiu      $t9, $v0, 8
/* 2BA2C 8002AE2C AC790000 */  sw         $t9, ($v1)
/* 2BA30 8002AE30 AC4F0004 */  sw         $t7, 4($v0)
/* 2BA34 8002AE34 AC4E0000 */  sw         $t6, ($v0)
/* 2BA38 8002AE38 8C620000 */  lw         $v0, ($v1)
/* 2BA3C 8002AE3C 24580008 */  addiu      $t8, $v0, 8
/* 2BA40 8002AE40 AC780000 */  sw         $t8, ($v1)
/* 2BA44 8002AE44 AC400004 */  sw         $zero, 4($v0)
/* 2BA48 8002AE48 AC510000 */  sw         $s1, ($v0)
/* 2BA4C 8002AE4C 8C620000 */  lw         $v0, ($v1)
/* 2BA50 8002AE50 3C0E0001 */  lui        $t6, 1
/* 2BA54 8002AE54 35CE0030 */  ori        $t6, $t6, 0x30
/* 2BA58 8002AE58 24590008 */  addiu      $t9, $v0, 8
/* 2BA5C 8002AE5C AC790000 */  sw         $t9, ($v1)
/* 2BA60 8002AE60 AC4E0004 */  sw         $t6, 4($v0)
/* 2BA64 8002AE64 AC520000 */  sw         $s2, ($v0)
/* 2BA68 8002AE68 8C620000 */  lw         $v0, ($v1)
/* 2BA6C 8002AE6C 3C190001 */  lui        $t9, 1
/* 2BA70 8002AE70 3739C024 */  ori        $t9, $t9, 0xc024
/* 2BA74 8002AE74 244F0008 */  addiu      $t7, $v0, 8
/* 2BA78 8002AE78 AC6F0000 */  sw         $t7, ($v1)
/* 2BA7C 8002AE7C 3C18F200 */  lui        $t8, 0xf200
/* 2BA80 8002AE80 AC580000 */  sw         $t8, ($v0)
/* 2BA84 8002AE84 AC590004 */  sw         $t9, 4($v0)
/* 2BA88 8002AE88 8FAF00D4 */  lw         $t7, 0xd4($sp)
/* 2BA8C 8002AE8C 8C620000 */  lw         $v0, ($v1)
/* 2BA90 8002AE90 0015F880 */  sll        $ra, $s5, 2
/* 2BA94 8002AE94 01F36821 */  addu       $t5, $t7, $s3
/* 2BA98 8002AE98 25B80008 */  addiu      $t8, $t5, 8
/* 2BA9C 8002AE9C 244E0008 */  addiu      $t6, $v0, 8
/* 2BAA0 8002AEA0 AC6E0000 */  sw         $t6, ($v1)
/* 2BAA4 8002AEA4 0018C880 */  sll        $t9, $t8, 2
/* 2BAA8 8002AEA8 332E0FFF */  andi       $t6, $t9, 0xfff
/* 2BAAC 8002AEAC 000E7B00 */  sll        $t7, $t6, 0xc
/* 2BAB0 8002AEB0 26B9000A */  addiu      $t9, $s5, 0xa
/* 2BAB4 8002AEB4 00197080 */  sll        $t6, $t9, 2
/* 2BAB8 8002AEB8 01E1C025 */  or         $t8, $t7, $at
/* 2BABC 8002AEBC 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2BAC0 8002AEC0 030FC825 */  or         $t9, $t8, $t7
/* 2BAC4 8002AEC4 000DC080 */  sll        $t8, $t5, 2
/* 2BAC8 8002AEC8 330F0FFF */  andi       $t7, $t8, 0xfff
/* 2BACC 8002AECC AC590000 */  sw         $t9, ($v0)
/* 2BAD0 8002AED0 000FCB00 */  sll        $t9, $t7, 0xc
/* 2BAD4 8002AED4 33EE0FFF */  andi       $t6, $ra, 0xfff
/* 2BAD8 8002AED8 032E7025 */  or         $t6, $t9, $t6
/* 2BADC 8002AEDC AC4E0004 */  sw         $t6, 4($v0)
/* 2BAE0 8002AEE0 8C620000 */  lw         $v0, ($v1)
/* 2BAE4 8002AEE4 3C0FB400 */  lui        $t7, 0xb400
/* 2BAE8 8002AEE8 3C0EB300 */  lui        $t6, 0xb300
/* 2BAEC 8002AEEC 24580008 */  addiu      $t8, $v0, 8
/* 2BAF0 8002AEF0 AC780000 */  sw         $t8, ($v1)
/* 2BAF4 8002AEF4 AC400004 */  sw         $zero, 4($v0)
/* 2BAF8 8002AEF8 AC4F0000 */  sw         $t7, ($v0)
/* 2BAFC 8002AEFC 8C620000 */  lw         $v0, ($v1)
/* 2BB00 8002AF00 3C180400 */  lui        $t8, 0x400
/* 2BB04 8002AF04 37180400 */  ori        $t8, $t8, 0x400
/* 2BB08 8002AF08 24590008 */  addiu      $t9, $v0, 8
/* 2BB0C 8002AF0C AC790000 */  sw         $t9, ($v1)
/* 2BB10 8002AF10 AC580004 */  sw         $t8, 4($v0)
/* 2BB14 8002AF14 AC4E0000 */  sw         $t6, ($v0)
/* 2BB18 8002AF18 8C620000 */  lw         $v0, ($v1)
/* 2BB1C 8002AF1C 244F0008 */  addiu      $t7, $v0, 8
/* 2BB20 8002AF20 AC6F0000 */  sw         $t7, ($v1)
/* 2BB24 8002AF24 AC400004 */  sw         $zero, 4($v0)
/* 2BB28 8002AF28 AC510000 */  sw         $s1, ($v0)
/* 2BB2C 8002AF2C 256BFFFF */  addiu      $t3, $t3, -1
.L8002AF30:
/* 2BB30 8002AF30 27B900AC */  addiu      $t9, $sp, 0xac
/* 2BB34 8002AF34 0179082B */  sltu       $at, $t3, $t9
/* 2BB38 8002AF38 1020FF98 */  beqz       $at, .L8002AD9C
/* 2BB3C 8002AF3C 26730007 */   addiu     $s3, $s3, 7
.L8002AF40:
/* 2BB40 8002AF40 8FBF003C */  lw         $ra, 0x3c($sp)
/* 2BB44 8002AF44 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BB48 8002AF48 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2BB4C 8002AF4C 8FB20020 */  lw         $s2, 0x20($sp)
/* 2BB50 8002AF50 8FB30024 */  lw         $s3, 0x24($sp)
/* 2BB54 8002AF54 8FB40028 */  lw         $s4, 0x28($sp)
/* 2BB58 8002AF58 8FB5002C */  lw         $s5, 0x2c($sp)
/* 2BB5C 8002AF5C 8FB60030 */  lw         $s6, 0x30($sp)
/* 2BB60 8002AF60 8FB70034 */  lw         $s7, 0x34($sp)
/* 2BB64 8002AF64 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2BB68 8002AF68 03E00008 */  jr         $ra
/* 2BB6C 8002AF6C 27BD00D0 */   addiu     $sp, $sp, 0xd0

glabel drawSaveTime_
/* 2BB70 8002AF70 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* 2BB74 8002AF74 AFB60030 */  sw         $s6, 0x30($sp)
/* 2BB78 8002AF78 AFB40028 */  sw         $s4, 0x28($sp)
/* 2BB7C 8002AF7C AFB20020 */  sw         $s2, 0x20($sp)
/* 2BB80 8002AF80 00809025 */  or         $s2, $a0, $zero
/* 2BB84 8002AF84 00C0A025 */  or         $s4, $a2, $zero
/* 2BB88 8002AF88 00A0B025 */  or         $s6, $a1, $zero
/* 2BB8C 8002AF8C AFBF003C */  sw         $ra, 0x3c($sp)
/* 2BB90 8002AF90 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2BB94 8002AF94 AFB70034 */  sw         $s7, 0x34($sp)
/* 2BB98 8002AF98 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2BB9C 8002AF9C AFB30024 */  sw         $s3, 0x24($sp)
/* 2BBA0 8002AFA0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2BBA4 8002AFA4 AFB00018 */  sw         $s0, 0x18($sp)
/* 2BBA8 8002AFA8 3C0F3B9A */  lui        $t7, 0x3b9a
/* 2BBAC 8002AFAC 35EFCA00 */  ori        $t7, $t7, 0xca00
/* 2BBB0 8002AFB0 240E0000 */  addiu      $t6, $zero, 0
/* 2BBB4 8002AFB4 24180000 */  addiu      $t8, $zero, 0
/* 2BBB8 8002AFB8 2A41000A */  slti       $at, $s2, 0xa
/* 2BBBC 8002AFBC AFAE00C8 */  sw         $t6, 0xc8($sp)
/* 2BBC0 8002AFC0 AFAF00CC */  sw         $t7, 0xcc($sp)
/* 2BBC4 8002AFC4 AFB800C0 */  sw         $t8, 0xc0($sp)
/* 2BBC8 8002AFC8 AFA700C4 */  sw         $a3, 0xc4($sp)
/* 2BBCC 8002AFCC 0000A825 */  or         $s5, $zero, $zero
/* 2BBD0 8002AFD0 14200002 */  bnez       $at, .L8002AFDC
/* 2BBD4 8002AFD4 24020009 */   addiu     $v0, $zero, 9
/* 2BBD8 8002AFD8 24120009 */  addiu      $s2, $zero, 9
.L8002AFDC:
/* 2BBDC 8002AFDC 27AE00B4 */  addiu      $t6, $sp, 0xb4
/* 2BBE0 8002AFE0 004E8821 */  addu       $s1, $v0, $t6
/* 2BBE4 8002AFE4 00008025 */  or         $s0, $zero, $zero
.L8002AFE8:
/* 2BBE8 8002AFE8 00001025 */  or         $v0, $zero, $zero
.L8002AFEC:
/* 2BBEC 8002AFEC 8FB900C4 */  lw         $t9, 0xc4($sp)
/* 2BBF0 8002AFF0 8FAF00CC */  lw         $t7, 0xcc($sp)
/* 2BBF4 8002AFF4 8FB800C0 */  lw         $t8, 0xc0($sp)
/* 2BBF8 8002AFF8 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* 2BBFC 8002AFFC 032F082B */  sltu       $at, $t9, $t7
/* 2BC00 8002B000 032FC823 */  subu       $t9, $t9, $t7
/* 2BC04 8002B004 030EC023 */  subu       $t8, $t8, $t6
/* 2BC08 8002B008 0301C023 */  subu       $t8, $t8, $at
/* 2BC0C 8002B00C AFB800C0 */  sw         $t8, 0xc0($sp)
/* 2BC10 8002B010 1F00000C */  bgtz       $t8, .L8002B044
/* 2BC14 8002B014 AFB900C4 */   sw        $t9, 0xc4($sp)
/* 2BC18 8002B018 07020004 */  bltzl      $t8, .L8002B02C
/* 2BC1C 8002B01C 032FC821 */   addu      $t9, $t9, $t7
/* 2BC20 8002B020 1000FFF2 */  b          .L8002AFEC
/* 2BC24 8002B024 24420001 */   addiu     $v0, $v0, 1
/* 2BC28 8002B028 032FC821 */  addu       $t9, $t9, $t7
.L8002B02C:
/* 2BC2C 8002B02C 032F082B */  sltu       $at, $t9, $t7
/* 2BC30 8002B030 0038C021 */  addu       $t8, $at, $t8
/* 2BC34 8002B034 030EC021 */  addu       $t8, $t8, $t6
/* 2BC38 8002B038 AFB800C0 */  sw         $t8, 0xc0($sp)
/* 2BC3C 8002B03C 10000003 */  b          .L8002B04C
/* 2BC40 8002B040 AFB900C4 */   sw        $t9, 0xc4($sp)
.L8002B044:
/* 2BC44 8002B044 1000FFE9 */  b          .L8002AFEC
/* 2BC48 8002B048 24420001 */   addiu     $v0, $v0, 1
.L8002B04C:
/* 2BC4C 8002B04C A2220000 */  sb         $v0, ($s1)
/* 2BC50 8002B050 2631FFFF */  addiu      $s1, $s1, -1
/* 2BC54 8002B054 8FA500CC */  lw         $a1, 0xcc($sp)
/* 2BC58 8002B058 8FA400C8 */  lw         $a0, 0xc8($sp)
/* 2BC5C 8002B05C 24060000 */  addiu      $a2, $zero, 0
/* 2BC60 8002B060 0C00E6CE */  jal        func_80039B38
/* 2BC64 8002B064 2407000A */   addiu     $a3, $zero, 0xa
/* 2BC68 8002B068 26100001 */  addiu      $s0, $s0, 1
/* 2BC6C 8002B06C 2A010009 */  slti       $at, $s0, 9
/* 2BC70 8002B070 AFA200C8 */  sw         $v0, 0xc8($sp)
/* 2BC74 8002B074 1420FFDC */  bnez       $at, .L8002AFE8
/* 2BC78 8002B078 AFA300CC */   sw        $v1, 0xcc($sp)
/* 2BC7C 8002B07C 3C0B8009 */  lui        $t3, %hi(flags_DAT_8008fd0c)
/* 2BC80 8002B080 256BFD0C */  addiu      $t3, $t3, %lo(flags_DAT_8008fd0c)
/* 2BC84 8002B084 95790000 */  lhu        $t9, ($t3)
/* 2BC88 8002B088 8FAF00C4 */  lw         $t7, 0xc4($sp)
/* 2BC8C 8002B08C 2644FFFF */  addiu      $a0, $s2, -1
/* 2BC90 8002B090 332E0010 */  andi       $t6, $t9, 0x10
/* 2BC94 8002B094 15C00035 */  bnez       $t6, .L8002B16C
/* 2BC98 8002B098 A3AF00B4 */   sb        $t7, 0xb4($sp)
/* 2BC9C 8002B09C 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 2BCA0 8002B0A0 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 2BCA4 8002B0A4 3C13E700 */  lui        $s3, 0xe700
/* 2BCA8 8002B0A8 8C620000 */  lw         $v0, ($v1)
/* 2BCAC 8002B0AC 3C19FD10 */  lui        $t9, 0xfd10
/* 2BCB0 8002B0B0 244F0008 */  addiu      $t7, $v0, 8
/* 2BCB4 8002B0B4 AC6F0000 */  sw         $t7, ($v1)
/* 2BCB8 8002B0B8 AC400004 */  sw         $zero, 4($v0)
/* 2BCBC 8002B0BC AC530000 */  sw         $s3, ($v0)
/* 2BCC0 8002B0C0 8C620000 */  lw         $v0, ($v1)
/* 2BCC4 8002B0C4 3C0E8006 */  lui        $t6, %hi(D_80060138)
/* 2BCC8 8002B0C8 25CE0138 */  addiu      $t6, $t6, %lo(D_80060138)
/* 2BCCC 8002B0CC 24580008 */  addiu      $t8, $v0, 8
/* 2BCD0 8002B0D0 AC780000 */  sw         $t8, ($v1)
/* 2BCD4 8002B0D4 AC4E0004 */  sw         $t6, 4($v0)
/* 2BCD8 8002B0D8 AC590000 */  sw         $t9, ($v0)
/* 2BCDC 8002B0DC 8C620000 */  lw         $v0, ($v1)
/* 2BCE0 8002B0E0 3C18E800 */  lui        $t8, 0xe800
/* 2BCE4 8002B0E4 3C0EF500 */  lui        $t6, 0xf500
/* 2BCE8 8002B0E8 244F0008 */  addiu      $t7, $v0, 8
/* 2BCEC 8002B0EC AC6F0000 */  sw         $t7, ($v1)
/* 2BCF0 8002B0F0 AC400004 */  sw         $zero, 4($v0)
/* 2BCF4 8002B0F4 AC580000 */  sw         $t8, ($v0)
/* 2BCF8 8002B0F8 8C620000 */  lw         $v0, ($v1)
/* 2BCFC 8002B0FC 35CE0100 */  ori        $t6, $t6, 0x100
/* 2BD00 8002B100 3C0F0700 */  lui        $t7, 0x700
/* 2BD04 8002B104 24590008 */  addiu      $t9, $v0, 8
/* 2BD08 8002B108 AC790000 */  sw         $t9, ($v1)
/* 2BD0C 8002B10C AC4F0004 */  sw         $t7, 4($v0)
/* 2BD10 8002B110 AC4E0000 */  sw         $t6, ($v0)
/* 2BD14 8002B114 8C620000 */  lw         $v0, ($v1)
/* 2BD18 8002B118 3C19E600 */  lui        $t9, 0xe600
/* 2BD1C 8002B11C 3C0FF000 */  lui        $t7, 0xf000
/* 2BD20 8002B120 24580008 */  addiu      $t8, $v0, 8
/* 2BD24 8002B124 AC780000 */  sw         $t8, ($v1)
/* 2BD28 8002B128 AC400004 */  sw         $zero, 4($v0)
/* 2BD2C 8002B12C AC590000 */  sw         $t9, ($v0)
/* 2BD30 8002B130 8C620000 */  lw         $v0, ($v1)
/* 2BD34 8002B134 3C18073F */  lui        $t8, 0x73f
/* 2BD38 8002B138 3718C000 */  ori        $t8, $t8, 0xc000
/* 2BD3C 8002B13C 244E0008 */  addiu      $t6, $v0, 8
/* 2BD40 8002B140 AC6E0000 */  sw         $t6, ($v1)
/* 2BD44 8002B144 AC580004 */  sw         $t8, 4($v0)
/* 2BD48 8002B148 AC4F0000 */  sw         $t7, ($v0)
/* 2BD4C 8002B14C 8C620000 */  lw         $v0, ($v1)
/* 2BD50 8002B150 24590008 */  addiu      $t9, $v0, 8
/* 2BD54 8002B154 AC790000 */  sw         $t9, ($v1)
/* 2BD58 8002B158 AC400004 */  sw         $zero, 4($v0)
/* 2BD5C 8002B15C AC530000 */  sw         $s3, ($v0)
/* 2BD60 8002B160 956E0000 */  lhu        $t6, ($t3)
/* 2BD64 8002B164 35CF0010 */  ori        $t7, $t6, 0x10
/* 2BD68 8002B168 A56F0000 */  sh         $t7, ($t3)
.L8002B16C:
/* 2BD6C 8002B16C 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* 2BD70 8002B170 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* 2BD74 8002B174 0480006F */  bltz       $a0, .L8002B334
/* 2BD78 8002B178 3C13E700 */   lui       $s3, 0xe700
/* 2BD7C 8002B17C 8FB000E8 */  lw         $s0, 0xe8($sp)
/* 2BD80 8002B180 27B800B4 */  addiu      $t8, $sp, 0xb4
/* 2BD84 8002B184 02D56021 */  addu       $t4, $s6, $s5
/* 2BD88 8002B188 2691000A */  addiu      $s1, $s4, 0xa
/* 2BD8C 8002B18C 00149080 */  sll        $s2, $s4, 2
/* 2BD90 8002B190 00985821 */  addu       $t3, $a0, $t8
/* 2BD94 8002B194 32580FFF */  andi       $t8, $s2, 0xfff
/* 2BD98 8002B198 3C14F548 */  lui        $s4, 0xf548
/* 2BD9C 8002B19C 00117080 */  sll        $t6, $s1, 2
/* 2BDA0 8002B1A0 3C15FD48 */  lui        $s5, 0xfd48
/* 2BDA4 8002B1A4 3C168006 */  lui        $s6, %hi(D_8005F0D0)
/* 2BDA8 8002B1A8 3C170701 */  lui        $s7, 0x701
/* 2BDAC 8002B1AC 0010C880 */  sll        $t9, $s0, 2
/* 2BDB0 8002B1B0 03208025 */  or         $s0, $t9, $zero
/* 2BDB4 8002B1B4 36F70030 */  ori        $s7, $s7, 0x30
/* 2BDB8 8002B1B8 26D6F0D0 */  addiu      $s6, $s6, %lo(D_8005F0D0)
/* 2BDBC 8002B1BC 36B50007 */  ori        $s5, $s5, 7
/* 2BDC0 8002B1C0 31D10FFF */  andi       $s1, $t6, 0xfff
/* 2BDC4 8002B1C4 36940200 */  ori        $s4, $s4, 0x200
/* 2BDC8 8002B1C8 03009025 */  or         $s2, $t8, $zero
/* 2BDCC 8002B1CC 258D0008 */  addiu      $t5, $t4, 8
/* 2BDD0 8002B1D0 3C1EF400 */  lui        $fp, 0xf400
.L8002B1D4:
/* 2BDD4 8002B1D4 8C620000 */  lw         $v0, ($v1)
/* 2BDD8 8002B1D8 256BFFFF */  addiu      $t3, $t3, -1
/* 2BDDC 8002B1DC 3C01E400 */  lui        $at, 0xe400
/* 2BDE0 8002B1E0 24590008 */  addiu      $t9, $v0, 8
/* 2BDE4 8002B1E4 AC790000 */  sw         $t9, ($v1)
/* 2BDE8 8002B1E8 AC550000 */  sw         $s5, ($v0)
/* 2BDEC 8002B1EC 816E0001 */  lb         $t6, 1($t3)
/* 2BDF0 8002B1F0 000E7880 */  sll        $t7, $t6, 2
/* 2BDF4 8002B1F4 02CFC021 */  addu       $t8, $s6, $t7
/* 2BDF8 8002B1F8 0310C821 */  addu       $t9, $t8, $s0
/* 2BDFC 8002B1FC 8F2E0000 */  lw         $t6, ($t9)
/* 2BE00 8002B200 AC4E0004 */  sw         $t6, 4($v0)
/* 2BE04 8002B204 8C620000 */  lw         $v0, ($v1)
/* 2BE08 8002B208 244F0008 */  addiu      $t7, $v0, 8
/* 2BE0C 8002B20C AC6F0000 */  sw         $t7, ($v1)
/* 2BE10 8002B210 AC570004 */  sw         $s7, 4($v0)
/* 2BE14 8002B214 AC540000 */  sw         $s4, ($v0)
/* 2BE18 8002B218 8C620000 */  lw         $v0, ($v1)
/* 2BE1C 8002B21C 3C19E600 */  lui        $t9, 0xe600
/* 2BE20 8002B220 24580008 */  addiu      $t8, $v0, 8
/* 2BE24 8002B224 AC780000 */  sw         $t8, ($v1)
/* 2BE28 8002B228 AC400004 */  sw         $zero, 4($v0)
/* 2BE2C 8002B22C AC590000 */  sw         $t9, ($v0)
/* 2BE30 8002B230 8C620000 */  lw         $v0, ($v1)
/* 2BE34 8002B234 3C0F0701 */  lui        $t7, 0x701
/* 2BE38 8002B238 35EFC024 */  ori        $t7, $t7, 0xc024
/* 2BE3C 8002B23C 244E0008 */  addiu      $t6, $v0, 8
/* 2BE40 8002B240 AC6E0000 */  sw         $t6, ($v1)
/* 2BE44 8002B244 AC4F0004 */  sw         $t7, 4($v0)
/* 2BE48 8002B248 AC5E0000 */  sw         $fp, ($v0)
/* 2BE4C 8002B24C 8C620000 */  lw         $v0, ($v1)
/* 2BE50 8002B250 24580008 */  addiu      $t8, $v0, 8
/* 2BE54 8002B254 AC780000 */  sw         $t8, ($v1)
/* 2BE58 8002B258 AC400004 */  sw         $zero, 4($v0)
/* 2BE5C 8002B25C AC530000 */  sw         $s3, ($v0)
/* 2BE60 8002B260 8C620000 */  lw         $v0, ($v1)
/* 2BE64 8002B264 3C0E0001 */  lui        $t6, 1
/* 2BE68 8002B268 35CE0030 */  ori        $t6, $t6, 0x30
/* 2BE6C 8002B26C 24590008 */  addiu      $t9, $v0, 8
/* 2BE70 8002B270 AC790000 */  sw         $t9, ($v1)
/* 2BE74 8002B274 AC4E0004 */  sw         $t6, 4($v0)
/* 2BE78 8002B278 AC540000 */  sw         $s4, ($v0)
/* 2BE7C 8002B27C 8C620000 */  lw         $v0, ($v1)
/* 2BE80 8002B280 3C190001 */  lui        $t9, 1
/* 2BE84 8002B284 3739C024 */  ori        $t9, $t9, 0xc024
/* 2BE88 8002B288 244F0008 */  addiu      $t7, $v0, 8
/* 2BE8C 8002B28C AC6F0000 */  sw         $t7, ($v1)
/* 2BE90 8002B290 3C18F200 */  lui        $t8, 0xf200
/* 2BE94 8002B294 AC580000 */  sw         $t8, ($v0)
/* 2BE98 8002B298 AC590004 */  sw         $t9, 4($v0)
/* 2BE9C 8002B29C 8C620000 */  lw         $v0, ($v1)
/* 2BEA0 8002B2A0 000D7880 */  sll        $t7, $t5, 2
/* 2BEA4 8002B2A4 31F80FFF */  andi       $t8, $t7, 0xfff
/* 2BEA8 8002B2A8 244E0008 */  addiu      $t6, $v0, 8
/* 2BEAC 8002B2AC AC6E0000 */  sw         $t6, ($v1)
/* 2BEB0 8002B2B0 0018CB00 */  sll        $t9, $t8, 0xc
/* 2BEB4 8002B2B4 03217025 */  or         $t6, $t9, $at
/* 2BEB8 8002B2B8 01D17825 */  or         $t7, $t6, $s1
/* 2BEBC 8002B2BC 000CC080 */  sll        $t8, $t4, 2
/* 2BEC0 8002B2C0 33190FFF */  andi       $t9, $t8, 0xfff
/* 2BEC4 8002B2C4 00197300 */  sll        $t6, $t9, 0xc
/* 2BEC8 8002B2C8 AC4F0000 */  sw         $t7, ($v0)
/* 2BECC 8002B2CC 01D27825 */  or         $t7, $t6, $s2
/* 2BED0 8002B2D0 AC4F0004 */  sw         $t7, 4($v0)
/* 2BED4 8002B2D4 8C620000 */  lw         $v0, ($v1)
/* 2BED8 8002B2D8 3C19B400 */  lui        $t9, 0xb400
/* 2BEDC 8002B2DC 3C0FB300 */  lui        $t7, 0xb300
/* 2BEE0 8002B2E0 24580008 */  addiu      $t8, $v0, 8
/* 2BEE4 8002B2E4 AC780000 */  sw         $t8, ($v1)
/* 2BEE8 8002B2E8 AC400004 */  sw         $zero, 4($v0)
/* 2BEEC 8002B2EC AC590000 */  sw         $t9, ($v0)
/* 2BEF0 8002B2F0 8C620000 */  lw         $v0, ($v1)
/* 2BEF4 8002B2F4 3C180400 */  lui        $t8, 0x400
/* 2BEF8 8002B2F8 37180400 */  ori        $t8, $t8, 0x400
/* 2BEFC 8002B2FC 244E0008 */  addiu      $t6, $v0, 8
/* 2BF00 8002B300 AC6E0000 */  sw         $t6, ($v1)
/* 2BF04 8002B304 AC580004 */  sw         $t8, 4($v0)
/* 2BF08 8002B308 AC4F0000 */  sw         $t7, ($v0)
/* 2BF0C 8002B30C 8C620000 */  lw         $v0, ($v1)
/* 2BF10 8002B310 27AE00B4 */  addiu      $t6, $sp, 0xb4
/* 2BF14 8002B314 258C0007 */  addiu      $t4, $t4, 7
/* 2BF18 8002B318 24590008 */  addiu      $t9, $v0, 8
/* 2BF1C 8002B31C AC790000 */  sw         $t9, ($v1)
/* 2BF20 8002B320 AC400004 */  sw         $zero, 4($v0)
/* 2BF24 8002B324 AC530000 */  sw         $s3, ($v0)
/* 2BF28 8002B328 016E082B */  sltu       $at, $t3, $t6
/* 2BF2C 8002B32C 1020FFA9 */  beqz       $at, .L8002B1D4
/* 2BF30 8002B330 25AD0007 */   addiu     $t5, $t5, 7
.L8002B334:
/* 2BF34 8002B334 8FBF003C */  lw         $ra, 0x3c($sp)
/* 2BF38 8002B338 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BF3C 8002B33C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2BF40 8002B340 8FB20020 */  lw         $s2, 0x20($sp)
/* 2BF44 8002B344 8FB30024 */  lw         $s3, 0x24($sp)
/* 2BF48 8002B348 8FB40028 */  lw         $s4, 0x28($sp)
/* 2BF4C 8002B34C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 2BF50 8002B350 8FB60030 */  lw         $s6, 0x30($sp)
/* 2BF54 8002B354 8FB70034 */  lw         $s7, 0x34($sp)
/* 2BF58 8002B358 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2BF5C 8002B35C 03E00008 */  jr         $ra
/* 2BF60 8002B360 27BD00D8 */   addiu     $sp, $sp, 0xd8

glabel drawSaveHPMPValue_
/* 2BF64 8002B364 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 2BF68 8002B368 AFB60030 */  sw         $s6, 0x30($sp)
/* 2BF6C 8002B36C AFB5002C */  sw         $s5, 0x2c($sp)
/* 2BF70 8002B370 AFB30024 */  sw         $s3, 0x24($sp)
/* 2BF74 8002B374 AFB20020 */  sw         $s2, 0x20($sp)
/* 2BF78 8002B378 00A09025 */  or         $s2, $a1, $zero
/* 2BF7C 8002B37C 00809825 */  or         $s3, $a0, $zero
/* 2BF80 8002B380 00C0A825 */  or         $s5, $a2, $zero
/* 2BF84 8002B384 27B60050 */  addiu      $s6, $sp, 0x50
/* 2BF88 8002B388 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2BF8C 8002B38C AFB40028 */  sw         $s4, 0x28($sp)
/* 2BF90 8002B390 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2BF94 8002B394 AFB00018 */  sw         $s0, 0x18($sp)
/* 2BF98 8002B398 3C0F3B9A */  lui        $t7, 0x3b9a
/* 2BF9C 8002B39C 35EFCA00 */  ori        $t7, $t7, 0xca00
/* 2BFA0 8002B3A0 240E0000 */  addiu      $t6, $zero, 0
/* 2BFA4 8002B3A4 24180000 */  addiu      $t8, $zero, 0
/* 2BFA8 8002B3A8 3C088006 */  lui        $t0, %hi(D_8005F98C)
/* 2BFAC 8002B3AC AFAE0070 */  sw         $t6, 0x70($sp)
/* 2BFB0 8002B3B0 AFAF0074 */  sw         $t7, 0x74($sp)
/* 2BFB4 8002B3B4 AFB80068 */  sw         $t8, 0x68($sp)
/* 2BFB8 8002B3B8 AFA7006C */  sw         $a3, 0x6c($sp)
/* 2BFBC 8002B3BC 2508F98C */  addiu      $t0, $t0, %lo(D_8005F98C)
/* 2BFC0 8002B3C0 8D010000 */  lw         $at, ($t0)
/* 2BFC4 8002B3C4 24020009 */  addiu      $v0, $zero, 9
/* 2BFC8 8002B3C8 27AC005C */  addiu      $t4, $sp, 0x5c
/* 2BFCC 8002B3CC AEC10000 */  sw         $at, ($s6)
/* 2BFD0 8002B3D0 91010004 */  lbu        $at, 4($t0)
/* 2BFD4 8002B3D4 004C8021 */  addu       $s0, $v0, $t4
/* 2BFD8 8002B3D8 00008825 */  or         $s1, $zero, $zero
/* 2BFDC 8002B3DC A2C10004 */  sb         $at, 4($s6)
/* 2BFE0 8002B3E0 2A61000A */  slti       $at, $s3, 0xa
/* 2BFE4 8002B3E4 14200002 */  bnez       $at, .L8002B3F0
/* 2BFE8 8002B3E8 00000000 */   nop
/* 2BFEC 8002B3EC 24130009 */  addiu      $s3, $zero, 9
.L8002B3F0:
/* 2BFF0 8002B3F0 00001025 */  or         $v0, $zero, $zero
.L8002B3F4:
/* 2BFF4 8002B3F4 8FAE0068 */  lw         $t6, 0x68($sp)
/* 2BFF8 8002B3F8 8FAF006C */  lw         $t7, 0x6c($sp)
/* 2BFFC 8002B3FC 8FB80070 */  lw         $t8, 0x70($sp)
/* 2C000 8002B400 8FB90074 */  lw         $t9, 0x74($sp)
/* 2C004 8002B404 01D85023 */  subu       $t2, $t6, $t8
/* 2C008 8002B408 01F9082B */  sltu       $at, $t7, $t9
/* 2C00C 8002B40C 01415023 */  subu       $t2, $t2, $at
/* 2C010 8002B410 01F95823 */  subu       $t3, $t7, $t9
/* 2C014 8002B414 AFAB006C */  sw         $t3, 0x6c($sp)
/* 2C018 8002B418 1D40000C */  bgtz       $t2, .L8002B44C
/* 2C01C 8002B41C AFAA0068 */   sw        $t2, 0x68($sp)
/* 2C020 8002B420 05420004 */  bltzl      $t2, .L8002B434
/* 2C024 8002B424 01794821 */   addu      $t1, $t3, $t9
/* 2C028 8002B428 1000FFF2 */  b          .L8002B3F4
/* 2C02C 8002B42C 24420001 */   addiu     $v0, $v0, 1
/* 2C030 8002B430 01794821 */  addu       $t1, $t3, $t9
.L8002B434:
/* 2C034 8002B434 0139082B */  sltu       $at, $t1, $t9
/* 2C038 8002B438 002A4021 */  addu       $t0, $at, $t2
/* 2C03C 8002B43C 01184021 */  addu       $t0, $t0, $t8
/* 2C040 8002B440 AFA80068 */  sw         $t0, 0x68($sp)
/* 2C044 8002B444 10000003 */  b          .L8002B454
/* 2C048 8002B448 AFA9006C */   sw        $t1, 0x6c($sp)
.L8002B44C:
/* 2C04C 8002B44C 1000FFE9 */  b          .L8002B3F4
/* 2C050 8002B450 24420001 */   addiu     $v0, $v0, 1
.L8002B454:
/* 2C054 8002B454 A2020000 */  sb         $v0, ($s0)
/* 2C058 8002B458 2610FFFF */  addiu      $s0, $s0, -1
/* 2C05C 8002B45C 8FA50074 */  lw         $a1, 0x74($sp)
/* 2C060 8002B460 8FA40070 */  lw         $a0, 0x70($sp)
/* 2C064 8002B464 24060000 */  addiu      $a2, $zero, 0
/* 2C068 8002B468 0C00E6CE */  jal        func_80039B38
/* 2C06C 8002B46C 2407000A */   addiu     $a3, $zero, 0xa
/* 2C070 8002B470 26310001 */  addiu      $s1, $s1, 1
/* 2C074 8002B474 2A210009 */  slti       $at, $s1, 9
/* 2C078 8002B478 AFA20070 */  sw         $v0, 0x70($sp)
/* 2C07C 8002B47C 1420FFDC */  bnez       $at, .L8002B3F0
/* 2C080 8002B480 AFA30074 */   sw        $v1, 0x74($sp)
/* 2C084 8002B484 8FAD006C */  lw         $t5, 0x6c($sp)
/* 2C088 8002B488 2663FFFF */  addiu      $v1, $s3, -1
/* 2C08C 8002B48C 00008825 */  or         $s1, $zero, $zero
/* 2C090 8002B490 04600013 */  bltz       $v1, .L8002B4E0
/* 2C094 8002B494 A3AD005C */   sb        $t5, 0x5c($sp)
/* 2C098 8002B498 27AF005C */  addiu      $t7, $sp, 0x5c
/* 2C09C 8002B49C 27B3005C */  addiu      $s3, $sp, 0x5c
/* 2C0A0 8002B4A0 0260A025 */  or         $s4, $s3, $zero
/* 2C0A4 8002B4A4 006F8021 */  addu       $s0, $v1, $t7
.L8002B4A8:
/* 2C0A8 8002B4A8 82020000 */  lb         $v0, ($s0)
/* 2C0AC 8002B4AC 02402025 */  or         $a0, $s2, $zero
/* 2C0B0 8002B4B0 02A02825 */  or         $a1, $s5, $zero
/* 2C0B4 8002B4B4 02228821 */  addu       $s1, $s1, $v0
/* 2C0B8 8002B4B8 16200003 */  bnez       $s1, .L8002B4C8
/* 2C0BC 8002B4BC 02C03025 */   or        $a2, $s6, $zero
/* 2C0C0 8002B4C0 56130004 */  bnel       $s0, $s3, .L8002B4D4
/* 2C0C4 8002B4C4 2610FFFF */   addiu     $s0, $s0, -1
.L8002B4C8:
/* 2C0C8 8002B4C8 0C00C3A8 */  jal        printTextToScreen
/* 2C0CC 8002B4CC A3A20053 */   sb        $v0, 0x53($sp)
/* 2C0D0 8002B4D0 2610FFFF */  addiu      $s0, $s0, -1
.L8002B4D4:
/* 2C0D4 8002B4D4 0214082B */  sltu       $at, $s0, $s4
/* 2C0D8 8002B4D8 1020FFF3 */  beqz       $at, .L8002B4A8
/* 2C0DC 8002B4DC 2652000A */   addiu     $s2, $s2, 0xa
.L8002B4E0:
/* 2C0E0 8002B4E0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2C0E4 8002B4E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 2C0E8 8002B4E8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2C0EC 8002B4EC 8FB20020 */  lw         $s2, 0x20($sp)
/* 2C0F0 8002B4F0 8FB30024 */  lw         $s3, 0x24($sp)
/* 2C0F4 8002B4F4 8FB40028 */  lw         $s4, 0x28($sp)
/* 2C0F8 8002B4F8 8FB5002C */  lw         $s5, 0x2c($sp)
/* 2C0FC 8002B4FC 8FB60030 */  lw         $s6, 0x30($sp)
/* 2C100 8002B500 03E00008 */  jr         $ra
/* 2C104 8002B504 27BD0080 */   addiu     $sp, $sp, 0x80
/* 2C108 8002B508 00000000 */  nop
/* 2C10C 8002B50C 00000000 */  nop
