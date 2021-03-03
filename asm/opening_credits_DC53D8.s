.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80103DB8
/* DC53D8 80103DB8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* DC53DC 80103DBC 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC53E0 80103DC0 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC53E4 80103DC4 8C620000 */  lw         $v0, ($v1)
/* DC53E8 80103DC8 AFB30014 */  sw         $s3, 0x14($sp)
/* DC53EC 80103DCC AFBF002C */  sw         $ra, 0x2c($sp)
/* DC53F0 80103DD0 244E0008 */  addiu      $t6, $v0, 8
/* DC53F4 80103DD4 AFBE0028 */  sw         $fp, 0x28($sp)
/* DC53F8 80103DD8 AFB70024 */  sw         $s7, 0x24($sp)
/* DC53FC 80103DDC AFB60020 */  sw         $s6, 0x20($sp)
/* DC5400 80103DE0 AFB5001C */  sw         $s5, 0x1c($sp)
/* DC5404 80103DE4 AFB40018 */  sw         $s4, 0x18($sp)
/* DC5408 80103DE8 AFB20010 */  sw         $s2, 0x10($sp)
/* DC540C 80103DEC AFB1000C */  sw         $s1, 0xc($sp)
/* DC5410 80103DF0 AFB00008 */  sw         $s0, 8($sp)
/* DC5414 80103DF4 AC6E0000 */  sw         $t6, ($v1)
/* DC5418 80103DF8 3C13E700 */  lui        $s3, 0xe700
/* DC541C 80103DFC AC530000 */  sw         $s3, ($v0)
/* DC5420 80103E00 AC400004 */  sw         $zero, 4($v0)
/* DC5424 80103E04 8C620000 */  lw         $v0, ($v1)
/* DC5428 80103E08 3C18BA00 */  lui        $t8, 0xba00
/* DC542C 80103E0C 37180E02 */  ori        $t8, $t8, 0xe02
/* DC5430 80103E10 244F0008 */  addiu      $t7, $v0, 8
/* DC5434 80103E14 AC6F0000 */  sw         $t7, ($v1)
/* DC5438 80103E18 34198000 */  ori        $t9, $zero, 0x8000
/* DC543C 80103E1C AC590004 */  sw         $t9, 4($v0)
/* DC5440 80103E20 AC580000 */  sw         $t8, ($v0)
/* DC5444 80103E24 8C620000 */  lw         $v0, ($v1)
/* DC5448 80103E28 3C188016 */  lui        $t8, %hi(D_801631C8)
/* DC544C 80103E2C 271831C8 */  addiu      $t8, $t8, %lo(D_801631C8)
/* DC5450 80103E30 244E0008 */  addiu      $t6, $v0, 8
/* DC5454 80103E34 AC6E0000 */  sw         $t6, ($v1)
/* DC5458 80103E38 3C0FFD10 */  lui        $t7, 0xfd10
/* DC545C 80103E3C AC4F0000 */  sw         $t7, ($v0)
/* DC5460 80103E40 AC580004 */  sw         $t8, 4($v0)
/* DC5464 80103E44 8C620000 */  lw         $v0, ($v1)
/* DC5468 80103E48 3C0EE800 */  lui        $t6, 0xe800
/* DC546C 80103E4C 3C18F500 */  lui        $t8, 0xf500
/* DC5470 80103E50 24590008 */  addiu      $t9, $v0, 8
/* DC5474 80103E54 AC790000 */  sw         $t9, ($v1)
/* DC5478 80103E58 AC400004 */  sw         $zero, 4($v0)
/* DC547C 80103E5C AC4E0000 */  sw         $t6, ($v0)
/* DC5480 80103E60 8C620000 */  lw         $v0, ($v1)
/* DC5484 80103E64 3C110700 */  lui        $s1, 0x700
/* DC5488 80103E68 37180100 */  ori        $t8, $t8, 0x100
/* DC548C 80103E6C 244F0008 */  addiu      $t7, $v0, 8
/* DC5490 80103E70 AC6F0000 */  sw         $t7, ($v1)
/* DC5494 80103E74 AC510004 */  sw         $s1, 4($v0)
/* DC5498 80103E78 AC580000 */  sw         $t8, ($v0)
/* DC549C 80103E7C 8C620000 */  lw         $v0, ($v1)
/* DC54A0 80103E80 3C14E600 */  lui        $s4, 0xe600
/* DC54A4 80103E84 3C180703 */  lui        $t8, 0x703
/* DC54A8 80103E88 24590008 */  addiu      $t9, $v0, 8
/* DC54AC 80103E8C AC790000 */  sw         $t9, ($v1)
/* DC54B0 80103E90 AC400004 */  sw         $zero, 4($v0)
/* DC54B4 80103E94 AC540000 */  sw         $s4, ($v0)
/* DC54B8 80103E98 8C620000 */  lw         $v0, ($v1)
/* DC54BC 80103E9C 3718C000 */  ori        $t8, $t8, 0xc000
/* DC54C0 80103EA0 3C0FF000 */  lui        $t7, 0xf000
/* DC54C4 80103EA4 244E0008 */  addiu      $t6, $v0, 8
/* DC54C8 80103EA8 AC6E0000 */  sw         $t6, ($v1)
/* DC54CC 80103EAC AC580004 */  sw         $t8, 4($v0)
/* DC54D0 80103EB0 AC4F0000 */  sw         $t7, ($v0)
/* DC54D4 80103EB4 8C620000 */  lw         $v0, ($v1)
/* DC54D8 80103EB8 3C128016 */  lui        $s2, 0x8016
/* DC54DC 80103EBC 3C15FD48 */  lui        $s5, 0xfd48
/* DC54E0 80103EC0 24590008 */  addiu      $t9, $v0, 8
/* DC54E4 80103EC4 AC790000 */  sw         $t9, ($v1)
/* DC54E8 80103EC8 00002025 */  or         $a0, $zero, $zero
/* DC54EC 80103ECC 240C0003 */  addiu      $t4, $zero, 3
/* DC54F0 80103ED0 36B50057 */  ori        $s5, $s5, 0x57
/* DC54F4 80103ED4 26522400 */  addiu      $s2, $s2, 0x2400
/* DC54F8 80103ED8 3C16F548 */  lui        $s6, 0xf548
/* DC54FC 80103EDC 3C17F400 */  lui        $s7, 0xf400
/* DC5500 80103EE0 3C1EF540 */  lui        $fp, 0xf540
/* DC5504 80103EE4 3C1FF200 */  lui        $ra, 0xf200
/* DC5508 80103EE8 AC400004 */  sw         $zero, 4($v0)
/* DC550C 80103EEC AC530000 */  sw         $s3, ($v0)
.L80103EF0:
/* DC5510 80103EF0 8C620000 */  lw         $v0, ($v1)
/* DC5514 80103EF4 00843823 */  subu       $a3, $a0, $a0
/* DC5518 80103EF8 24E70030 */  addiu      $a3, $a3, 0x30
/* DC551C 80103EFC 244E0008 */  addiu      $t6, $v0, 8
/* DC5520 80103F00 AC6E0000 */  sw         $t6, ($v1)
/* DC5524 80103F04 AC520004 */  sw         $s2, 4($v0)
/* DC5528 80103F08 AC550000 */  sw         $s5, ($v0)
/* DC552C 80103F0C 8C620000 */  lw         $v0, ($v1)
/* DC5530 80103F10 0007C043 */  sra        $t8, $a3, 1
/* DC5534 80103F14 27070007 */  addiu      $a3, $t8, 7
/* DC5538 80103F18 0007C8C3 */  sra        $t9, $a3, 3
/* DC553C 80103F1C 332E01FF */  andi       $t6, $t9, 0x1ff
/* DC5540 80103F20 244F0008 */  addiu      $t7, $v0, 8
/* DC5544 80103F24 AC6F0000 */  sw         $t7, ($v1)
/* DC5548 80103F28 000E3A40 */  sll        $a3, $t6, 9
/* DC554C 80103F2C 00F6C025 */  or         $t8, $a3, $s6
/* DC5550 80103F30 AC580000 */  sw         $t8, ($v0)
/* DC5554 80103F34 AC510004 */  sw         $s1, 4($v0)
/* DC5558 80103F38 8C620000 */  lw         $v0, ($v1)
/* DC555C 80103F3C 00047840 */  sll        $t7, $a0, 1
/* DC5560 80103F40 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC5564 80103F44 24590008 */  addiu      $t9, $v0, 8
/* DC5568 80103F48 AC790000 */  sw         $t9, ($v1)
/* DC556C 80103F4C AC400004 */  sw         $zero, 4($v0)
/* DC5570 80103F50 AC540000 */  sw         $s4, ($v0)
/* DC5574 80103F54 8C620000 */  lw         $v0, ($v1)
/* DC5578 80103F58 0018CB00 */  sll        $t9, $t8, 0xc
/* DC557C 80103F5C 248D002F */  addiu      $t5, $a0, 0x2f
/* DC5580 80103F60 244E0008 */  addiu      $t6, $v0, 8
/* DC5584 80103F64 AC6E0000 */  sw         $t6, ($v1)
/* DC5588 80103F68 03377025 */  or         $t6, $t9, $s7
/* DC558C 80103F6C 000D7840 */  sll        $t7, $t5, 1
/* DC5590 80103F70 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC5594 80103F74 0018CB00 */  sll        $t9, $t8, 0xc
/* DC5598 80103F78 AC4E0000 */  sw         $t6, ($v0)
/* DC559C 80103F7C 03317025 */  or         $t6, $t9, $s1
/* DC55A0 80103F80 35CF009C */  ori        $t7, $t6, 0x9c
/* DC55A4 80103F84 AC4F0004 */  sw         $t7, 4($v0)
/* DC55A8 80103F88 8C620000 */  lw         $v0, ($v1)
/* DC55AC 80103F8C 00FE7025 */  or         $t6, $a3, $fp
/* DC55B0 80103F90 2488004B */  addiu      $t0, $a0, 0x4b
/* DC55B4 80103F94 24580008 */  addiu      $t8, $v0, 8
/* DC55B8 80103F98 AC780000 */  sw         $t8, ($v1)
/* DC55BC 80103F9C AC400004 */  sw         $zero, 4($v0)
/* DC55C0 80103FA0 AC530000 */  sw         $s3, ($v0)
/* DC55C4 80103FA4 8C620000 */  lw         $v0, ($v1)
/* DC55C8 80103FA8 0004C080 */  sll        $t8, $a0, 2
/* DC55CC 80103FAC 3C01E400 */  lui        $at, 0xe400
/* DC55D0 80103FB0 24590008 */  addiu      $t9, $v0, 8
/* DC55D4 80103FB4 AC790000 */  sw         $t9, ($v1)
/* DC55D8 80103FB8 AC400004 */  sw         $zero, 4($v0)
/* DC55DC 80103FBC AC4E0000 */  sw         $t6, ($v0)
/* DC55E0 80103FC0 8C620000 */  lw         $v0, ($v1)
/* DC55E4 80103FC4 33190FFF */  andi       $t9, $t8, 0xfff
/* DC55E8 80103FC8 00197300 */  sll        $t6, $t9, 0xc
/* DC55EC 80103FCC 244F0008 */  addiu      $t7, $v0, 8
/* DC55F0 80103FD0 AC6F0000 */  sw         $t7, ($v1)
/* DC55F4 80103FD4 01DF7825 */  or         $t7, $t6, $ra
/* DC55F8 80103FD8 000DC080 */  sll        $t8, $t5, 2
/* DC55FC 80103FDC 33190FFF */  andi       $t9, $t8, 0xfff
/* DC5600 80103FE0 00197300 */  sll        $t6, $t9, 0xc
/* DC5604 80103FE4 AC4F0000 */  sw         $t7, ($v0)
/* DC5608 80103FE8 35CF009C */  ori        $t7, $t6, 0x9c
/* DC560C 80103FEC AC4F0004 */  sw         $t7, 4($v0)
/* DC5610 80103FF0 8C620000 */  lw         $v0, ($v1)
/* DC5614 80103FF4 25190030 */  addiu      $t9, $t0, 0x30
/* DC5618 80103FF8 00197080 */  sll        $t6, $t9, 2
/* DC561C 80103FFC 24580008 */  addiu      $t8, $v0, 8
/* DC5620 80104000 AC780000 */  sw         $t8, ($v1)
/* DC5624 80104004 31CF0FFF */  andi       $t7, $t6, 0xfff
/* DC5628 80104008 000FC300 */  sll        $t8, $t7, 0xc
/* DC562C 8010400C 0301C825 */  or         $t9, $t8, $at
/* DC5630 80104010 372E022C */  ori        $t6, $t9, 0x22c
/* DC5634 80104014 00087880 */  sll        $t7, $t0, 2
/* DC5638 80104018 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC563C 8010401C 0018CB00 */  sll        $t9, $t8, 0xc
/* DC5640 80104020 AC4E0000 */  sw         $t6, ($v0)
/* DC5644 80104024 372E018C */  ori        $t6, $t9, 0x18c
/* DC5648 80104028 AC4E0004 */  sw         $t6, 4($v0)
/* DC564C 8010402C 8C620000 */  lw         $v0, ($v1)
/* DC5650 80104030 3C18B400 */  lui        $t8, 0xb400
/* DC5654 80104034 3C0E0400 */  lui        $t6, 0x400
/* DC5658 80104038 244F0008 */  addiu      $t7, $v0, 8
/* DC565C 8010403C AC6F0000 */  sw         $t7, ($v1)
/* DC5660 80104040 00047D40 */  sll        $t7, $a0, 0x15
/* DC5664 80104044 AC4F0004 */  sw         $t7, 4($v0)
/* DC5668 80104048 AC580000 */  sw         $t8, ($v0)
/* DC566C 8010404C 8C620000 */  lw         $v0, ($v1)
/* DC5670 80104050 35CE0400 */  ori        $t6, $t6, 0x400
/* DC5674 80104054 3C19B300 */  lui        $t9, 0xb300
/* DC5678 80104058 24580008 */  addiu      $t8, $v0, 8
/* DC567C 8010405C AC780000 */  sw         $t8, ($v1)
/* DC5680 80104060 258CFFFF */  addiu      $t4, $t4, -1
/* DC5684 80104064 24840030 */  addiu      $a0, $a0, 0x30
/* DC5688 80104068 AC4E0004 */  sw         $t6, 4($v0)
/* DC568C 8010406C 1580FFA0 */  bnez       $t4, .L80103EF0
/* DC5690 80104070 AC590000 */   sw        $t9, ($v0)
/* DC5694 80104074 8C620000 */  lw         $v0, ($v1)
/* DC5698 80104078 00843823 */  subu       $a3, $a0, $a0
/* DC569C 8010407C 24E70018 */  addiu      $a3, $a3, 0x18
/* DC56A0 80104080 244F0008 */  addiu      $t7, $v0, 8
/* DC56A4 80104084 AC6F0000 */  sw         $t7, ($v1)
/* DC56A8 80104088 AC520004 */  sw         $s2, 4($v0)
/* DC56AC 8010408C AC550000 */  sw         $s5, ($v0)
/* DC56B0 80104090 8C620000 */  lw         $v0, ($v1)
/* DC56B4 80104094 0007C843 */  sra        $t9, $a3, 1
/* DC56B8 80104098 27270007 */  addiu      $a3, $t9, 7
/* DC56BC 8010409C 000770C3 */  sra        $t6, $a3, 3
/* DC56C0 801040A0 31CF01FF */  andi       $t7, $t6, 0x1ff
/* DC56C4 801040A4 24580008 */  addiu      $t8, $v0, 8
/* DC56C8 801040A8 AC780000 */  sw         $t8, ($v1)
/* DC56CC 801040AC 000F3A40 */  sll        $a3, $t7, 9
/* DC56D0 801040B0 00F6C825 */  or         $t9, $a3, $s6
/* DC56D4 801040B4 AC590000 */  sw         $t9, ($v0)
/* DC56D8 801040B8 AC510004 */  sw         $s1, 4($v0)
/* DC56DC 801040BC 8C620000 */  lw         $v0, ($v1)
/* DC56E0 801040C0 0004C040 */  sll        $t8, $a0, 1
/* DC56E4 801040C4 33190FFF */  andi       $t9, $t8, 0xfff
/* DC56E8 801040C8 244E0008 */  addiu      $t6, $v0, 8
/* DC56EC 801040CC AC6E0000 */  sw         $t6, ($v1)
/* DC56F0 801040D0 AC400004 */  sw         $zero, 4($v0)
/* DC56F4 801040D4 AC540000 */  sw         $s4, ($v0)
/* DC56F8 801040D8 8C620000 */  lw         $v0, ($v1)
/* DC56FC 801040DC 00197300 */  sll        $t6, $t9, 0xc
/* DC5700 801040E0 248C0017 */  addiu      $t4, $a0, 0x17
/* DC5704 801040E4 244F0008 */  addiu      $t7, $v0, 8
/* DC5708 801040E8 AC6F0000 */  sw         $t7, ($v1)
/* DC570C 801040EC 01D77825 */  or         $t7, $t6, $s7
/* DC5710 801040F0 000CC040 */  sll        $t8, $t4, 1
/* DC5714 801040F4 33190FFF */  andi       $t9, $t8, 0xfff
/* DC5718 801040F8 00197300 */  sll        $t6, $t9, 0xc
/* DC571C 801040FC AC4F0000 */  sw         $t7, ($v0)
/* DC5720 80104100 01D17825 */  or         $t7, $t6, $s1
/* DC5724 80104104 35F8009C */  ori        $t8, $t7, 0x9c
/* DC5728 80104108 AC580004 */  sw         $t8, 4($v0)
/* DC572C 8010410C 8C620000 */  lw         $v0, ($v1)
/* DC5730 80104110 00FE7825 */  or         $t7, $a3, $fp
/* DC5734 80104114 2488004B */  addiu      $t0, $a0, 0x4b
/* DC5738 80104118 24590008 */  addiu      $t9, $v0, 8
/* DC573C 8010411C AC790000 */  sw         $t9, ($v1)
/* DC5740 80104120 AC400004 */  sw         $zero, 4($v0)
/* DC5744 80104124 AC530000 */  sw         $s3, ($v0)
/* DC5748 80104128 8C620000 */  lw         $v0, ($v1)
/* DC574C 8010412C 0004C880 */  sll        $t9, $a0, 2
/* DC5750 80104130 3C01E400 */  lui        $at, 0xe400
/* DC5754 80104134 244E0008 */  addiu      $t6, $v0, 8
/* DC5758 80104138 AC6E0000 */  sw         $t6, ($v1)
/* DC575C 8010413C AC400004 */  sw         $zero, 4($v0)
/* DC5760 80104140 AC4F0000 */  sw         $t7, ($v0)
/* DC5764 80104144 8C620000 */  lw         $v0, ($v1)
/* DC5768 80104148 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC576C 8010414C 000E7B00 */  sll        $t7, $t6, 0xc
/* DC5770 80104150 24580008 */  addiu      $t8, $v0, 8
/* DC5774 80104154 AC780000 */  sw         $t8, ($v1)
/* DC5778 80104158 01FFC025 */  or         $t8, $t7, $ra
/* DC577C 8010415C 000CC880 */  sll        $t9, $t4, 2
/* DC5780 80104160 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC5784 80104164 000E7B00 */  sll        $t7, $t6, 0xc
/* DC5788 80104168 AC580000 */  sw         $t8, ($v0)
/* DC578C 8010416C 35F8009C */  ori        $t8, $t7, 0x9c
/* DC5790 80104170 AC580004 */  sw         $t8, 4($v0)
/* DC5794 80104174 8C620000 */  lw         $v0, ($v1)
/* DC5798 80104178 250E0018 */  addiu      $t6, $t0, 0x18
/* DC579C 8010417C 000E7880 */  sll        $t7, $t6, 2
/* DC57A0 80104180 24590008 */  addiu      $t9, $v0, 8
/* DC57A4 80104184 AC790000 */  sw         $t9, ($v1)
/* DC57A8 80104188 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC57AC 8010418C 0018CB00 */  sll        $t9, $t8, 0xc
/* DC57B0 80104190 03217025 */  or         $t6, $t9, $at
/* DC57B4 80104194 35CF022C */  ori        $t7, $t6, 0x22c
/* DC57B8 80104198 0008C080 */  sll        $t8, $t0, 2
/* DC57BC 8010419C 33190FFF */  andi       $t9, $t8, 0xfff
/* DC57C0 801041A0 00197300 */  sll        $t6, $t9, 0xc
/* DC57C4 801041A4 AC4F0000 */  sw         $t7, ($v0)
/* DC57C8 801041A8 35CF018C */  ori        $t7, $t6, 0x18c
/* DC57CC 801041AC AC4F0004 */  sw         $t7, 4($v0)
/* DC57D0 801041B0 8C620000 */  lw         $v0, ($v1)
/* DC57D4 801041B4 3C19B400 */  lui        $t9, 0xb400
/* DC57D8 801041B8 3C0F0400 */  lui        $t7, 0x400
/* DC57DC 801041BC 24580008 */  addiu      $t8, $v0, 8
/* DC57E0 801041C0 AC780000 */  sw         $t8, ($v1)
/* DC57E4 801041C4 0004C540 */  sll        $t8, $a0, 0x15
/* DC57E8 801041C8 AC580004 */  sw         $t8, 4($v0)
/* DC57EC 801041CC AC590000 */  sw         $t9, ($v0)
/* DC57F0 801041D0 8C620000 */  lw         $v0, ($v1)
/* DC57F4 801041D4 35EF0400 */  ori        $t7, $t7, 0x400
/* DC57F8 801041D8 3C0EB300 */  lui        $t6, 0xb300
/* DC57FC 801041DC 24590008 */  addiu      $t9, $v0, 8
/* DC5800 801041E0 AC790000 */  sw         $t9, ($v1)
/* DC5804 801041E4 AC4F0004 */  sw         $t7, 4($v0)
/* DC5808 801041E8 AC4E0000 */  sw         $t6, ($v0)
/* DC580C 801041EC 8FBF002C */  lw         $ra, 0x2c($sp)
/* DC5810 801041F0 8FBE0028 */  lw         $fp, 0x28($sp)
/* DC5814 801041F4 8FB70024 */  lw         $s7, 0x24($sp)
/* DC5818 801041F8 8FB60020 */  lw         $s6, 0x20($sp)
/* DC581C 801041FC 8FB5001C */  lw         $s5, 0x1c($sp)
/* DC5820 80104200 8FB40018 */  lw         $s4, 0x18($sp)
/* DC5824 80104204 8FB30014 */  lw         $s3, 0x14($sp)
/* DC5828 80104208 8FB20010 */  lw         $s2, 0x10($sp)
/* DC582C 8010420C 8FB1000C */  lw         $s1, 0xc($sp)
/* DC5830 80104210 8FB00008 */  lw         $s0, 8($sp)
/* DC5834 80104214 03E00008 */  jr         $ra
/* DC5838 80104218 27BD0030 */   addiu     $sp, $sp, 0x30
