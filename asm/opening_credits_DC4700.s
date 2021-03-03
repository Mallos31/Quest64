.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801030E0
/* DC4700 801030E0 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC4704 801030E4 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC4708 801030E8 8C620000 */  lw         $v0, ($v1)
/* DC470C 801030EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DC4710 801030F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* DC4714 801030F4 244E0008 */  addiu      $t6, $v0, 8
/* DC4718 801030F8 AC6E0000 */  sw         $t6, ($v1)
/* DC471C 801030FC 3C188010 */  lui        $t8, %hi(D_80106240)
/* DC4720 80103100 27186240 */  addiu      $t8, $t8, %lo(D_80106240)
/* DC4724 80103104 3C0F0600 */  lui        $t7, 0x600
/* DC4728 80103108 AC4F0000 */  sw         $t7, ($v0)
/* DC472C 8010310C AC580004 */  sw         $t8, 4($v0)
/* DC4730 80103110 8C620000 */  lw         $v0, ($v1)
/* DC4734 80103114 3C09B900 */  lui        $t1, 0xb900
/* DC4738 80103118 3C0A0050 */  lui        $t2, 0x50
/* DC473C 8010311C 24590008 */  addiu      $t9, $v0, 8
/* DC4740 80103120 AC790000 */  sw         $t9, ($v1)
/* DC4744 80103124 354A4240 */  ori        $t2, $t2, 0x4240
/* DC4748 80103128 3529031D */  ori        $t1, $t1, 0x31d
/* DC474C 8010312C AC490000 */  sw         $t1, ($v0)
/* DC4750 80103130 AC4A0004 */  sw         $t2, 4($v0)
/* DC4754 80103134 8C620000 */  lw         $v0, ($v1)
/* DC4758 80103138 3C0CFCFF */  lui        $t4, 0xfcff
/* DC475C 8010313C 3C0DFFFC */  lui        $t5, 0xfffc
/* DC4760 80103140 244B0008 */  addiu      $t3, $v0, 8
/* DC4764 80103144 AC6B0000 */  sw         $t3, ($v1)
/* DC4768 80103148 35ADFA7D */  ori        $t5, $t5, 0xfa7d
/* DC476C 8010314C 358CFFFF */  ori        $t4, $t4, 0xffff
/* DC4770 80103150 AC4C0000 */  sw         $t4, ($v0)
/* DC4774 80103154 AC4D0004 */  sw         $t5, 4($v0)
/* DC4778 80103158 8C620000 */  lw         $v0, ($v1)
/* DC477C 8010315C 3C088010 */  lui        $t0, %hi(D_80106220)
/* DC4780 80103160 3C0FFB00 */  lui        $t7, 0xfb00
/* DC4784 80103164 244E0008 */  addiu      $t6, $v0, 8
/* DC4788 80103168 AC6E0000 */  sw         $t6, ($v1)
/* DC478C 8010316C 25086220 */  addiu      $t0, $t0, %lo(D_80106220)
/* DC4790 80103170 AC4F0000 */  sw         $t7, ($v0)
/* DC4794 80103174 8D180000 */  lw         $t8, ($t0)
/* DC4798 80103178 331900FF */  andi       $t9, $t8, 0xff
/* DC479C 8010317C 0C040DA4 */  jal        func_80103690
/* DC47A0 80103180 AC590004 */   sw        $t9, 4($v0)
/* DC47A4 80103184 3C038010 */  lui        $v1, %hi(D_80106200)
/* DC47A8 80103188 24636200 */  addiu      $v1, $v1, %lo(D_80106200)
/* DC47AC 8010318C 3C058010 */  lui        $a1, %hi(D_80106224)
/* DC47B0 80103190 8C690000 */  lw         $t1, ($v1)
/* DC47B4 80103194 24A56224 */  addiu      $a1, $a1, %lo(D_80106224)
/* DC47B8 80103198 8CA40000 */  lw         $a0, ($a1)
/* DC47BC 8010319C 3C088010 */  lui        $t0, %hi(D_80106220)
/* DC47C0 801031A0 252AFFFF */  addiu      $t2, $t1, -1
/* DC47C4 801031A4 25086220 */  addiu      $t0, $t0, %lo(D_80106220)
/* DC47C8 801031A8 AC6A0000 */  sw         $t2, ($v1)
/* DC47CC 801031AC 10800008 */  beqz       $a0, .L801031D0
/* DC47D0 801031B0 00801025 */   or        $v0, $a0, $zero
/* DC47D4 801031B4 24010001 */  addiu      $at, $zero, 1
/* DC47D8 801031B8 10410011 */  beq        $v0, $at, .L80103200
/* DC47DC 801031BC 24010002 */   addiu     $at, $zero, 2
/* DC47E0 801031C0 50410018 */  beql       $v0, $at, .L80103224
/* DC47E4 801031C4 8D0B0000 */   lw        $t3, ($t0)
/* DC47E8 801031C8 1000001D */  b          .L80103240
/* DC47EC 801031CC 8FBF0014 */   lw        $ra, 0x14($sp)
.L801031D0:
/* DC47F0 801031D0 8D0B0000 */  lw         $t3, ($t0)
/* DC47F4 801031D4 240E00FF */  addiu      $t6, $zero, 0xff
/* DC47F8 801031D8 248F0001 */  addiu      $t7, $a0, 1
/* DC47FC 801031DC 256C0010 */  addiu      $t4, $t3, 0x10
/* DC4800 801031E0 29810100 */  slti       $at, $t4, 0x100
/* DC4804 801031E4 14200015 */  bnez       $at, .L8010323C
/* DC4808 801031E8 AD0C0000 */   sw        $t4, ($t0)
/* DC480C 801031EC 2418005A */  addiu      $t8, $zero, 0x5a
/* DC4810 801031F0 AD0E0000 */  sw         $t6, ($t0)
/* DC4814 801031F4 ACAF0000 */  sw         $t7, ($a1)
/* DC4818 801031F8 10000010 */  b          .L8010323C
/* DC481C 801031FC AC780000 */   sw        $t8, ($v1)
.L80103200:
/* DC4820 80103200 8C790000 */  lw         $t9, ($v1)
/* DC4824 80103204 24890001 */  addiu      $t1, $a0, 1
/* DC4828 80103208 240A0020 */  addiu      $t2, $zero, 0x20
/* DC482C 8010320C 5720000C */  bnel       $t9, $zero, .L80103240
/* DC4830 80103210 8FBF0014 */   lw        $ra, 0x14($sp)
/* DC4834 80103214 ACA90000 */  sw         $t1, ($a1)
/* DC4838 80103218 10000008 */  b          .L8010323C
/* DC483C 8010321C AC6A0000 */   sw        $t2, ($v1)
/* DC4840 80103220 8D0B0000 */  lw         $t3, ($t0)
.L80103224:
/* DC4844 80103224 256CFFF0 */  addiu      $t4, $t3, -0x10
/* DC4848 80103228 05810004 */  bgez       $t4, .L8010323C
/* DC484C 8010322C AD0C0000 */   sw        $t4, ($t0)
/* DC4850 80103230 AD000000 */  sw         $zero, ($t0)
/* DC4854 80103234 ACA00000 */  sw         $zero, ($a1)
/* DC4858 80103238 AC600000 */  sw         $zero, ($v1)
.L8010323C:
/* DC485C 8010323C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80103240:
/* DC4860 80103240 27BD0018 */  addiu      $sp, $sp, 0x18
/* DC4864 80103244 03E00008 */  jr         $ra
/* DC4868 80103248 00000000 */   nop
