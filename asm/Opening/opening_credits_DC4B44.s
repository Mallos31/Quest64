.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80103524
/* DC4B44 80103524 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC4B48 80103528 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC4B4C 8010352C 8C620000 */  lw         $v0, ($v1)
/* DC4B50 80103530 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DC4B54 80103534 AFBF0014 */  sw         $ra, 0x14($sp)
/* DC4B58 80103538 244E0008 */  addiu      $t6, $v0, 8
/* DC4B5C 8010353C AC6E0000 */  sw         $t6, ($v1)
/* DC4B60 80103540 3C188010 */  lui        $t8, %hi(D_80106240)
/* DC4B64 80103544 27186240 */  addiu      $t8, $t8, %lo(D_80106240)
/* DC4B68 80103548 3C0F0600 */  lui        $t7, 0x600
/* DC4B6C 8010354C AC4F0000 */  sw         $t7, ($v0)
/* DC4B70 80103550 AC580004 */  sw         $t8, 4($v0)
/* DC4B74 80103554 8C620000 */  lw         $v0, ($v1)
/* DC4B78 80103558 3C09FCFF */  lui        $t1, 0xfcff
/* DC4B7C 8010355C 3C0AFFFC */  lui        $t2, 0xfffc
/* DC4B80 80103560 24590008 */  addiu      $t9, $v0, 8
/* DC4B84 80103564 AC790000 */  sw         $t9, ($v1)
/* DC4B88 80103568 354AFA7D */  ori        $t2, $t2, 0xfa7d
/* DC4B8C 8010356C 3529FFFF */  ori        $t1, $t1, 0xffff
/* DC4B90 80103570 AC490000 */  sw         $t1, ($v0)
/* DC4B94 80103574 AC4A0004 */  sw         $t2, 4($v0)
/* DC4B98 80103578 8C620000 */  lw         $v0, ($v1)
/* DC4B9C 8010357C 3C0CB900 */  lui        $t4, 0xb900
/* DC4BA0 80103580 3C0D0050 */  lui        $t5, 0x50
/* DC4BA4 80103584 244B0008 */  addiu      $t3, $v0, 8
/* DC4BA8 80103588 AC6B0000 */  sw         $t3, ($v1)
/* DC4BAC 8010358C 35AD4240 */  ori        $t5, $t5, 0x4240
/* DC4BB0 80103590 358C031D */  ori        $t4, $t4, 0x31d
/* DC4BB4 80103594 AC4C0000 */  sw         $t4, ($v0)
/* DC4BB8 80103598 AC4D0004 */  sw         $t5, 4($v0)
/* DC4BBC 8010359C 8C620000 */  lw         $v0, ($v1)
/* DC4BC0 801035A0 3C088010 */  lui        $t0, %hi(D_80106220)
/* DC4BC4 801035A4 3C0FFB00 */  lui        $t7, 0xfb00
/* DC4BC8 801035A8 244E0008 */  addiu      $t6, $v0, 8
/* DC4BCC 801035AC AC6E0000 */  sw         $t6, ($v1)
/* DC4BD0 801035B0 25086220 */  addiu      $t0, $t0, %lo(D_80106220)
/* DC4BD4 801035B4 AC4F0000 */  sw         $t7, ($v0)
/* DC4BD8 801035B8 8D180000 */  lw         $t8, ($t0)
/* DC4BDC 801035BC 331900FF */  andi       $t9, $t8, 0xff
/* DC4BE0 801035C0 0C041087 */  jal        func_8010421C
/* DC4BE4 801035C4 AC590004 */   sw        $t9, 4($v0)
/* DC4BE8 801035C8 3C038010 */  lui        $v1, %hi(D_80106200)
/* DC4BEC 801035CC 24636200 */  addiu      $v1, $v1, %lo(D_80106200)
/* DC4BF0 801035D0 3C058010 */  lui        $a1, %hi(D_80106224)
/* DC4BF4 801035D4 8C690000 */  lw         $t1, ($v1)
/* DC4BF8 801035D8 24A56224 */  addiu      $a1, $a1, %lo(D_80106224)
/* DC4BFC 801035DC 8CA40000 */  lw         $a0, ($a1)
/* DC4C00 801035E0 3C088010 */  lui        $t0, %hi(D_80106220)
/* DC4C04 801035E4 252AFFFF */  addiu      $t2, $t1, -1
/* DC4C08 801035E8 25086220 */  addiu      $t0, $t0, %lo(D_80106220)
/* DC4C0C 801035EC AC6A0000 */  sw         $t2, ($v1)
/* DC4C10 801035F0 10800008 */  beqz       $a0, .L80103614
/* DC4C14 801035F4 00801025 */   or        $v0, $a0, $zero
/* DC4C18 801035F8 24010001 */  addiu      $at, $zero, 1
/* DC4C1C 801035FC 10410011 */  beq        $v0, $at, .L80103644
/* DC4C20 80103600 24010002 */   addiu     $at, $zero, 2
/* DC4C24 80103604 50410018 */  beql       $v0, $at, .L80103668
/* DC4C28 80103608 8D0B0000 */   lw        $t3, ($t0)
/* DC4C2C 8010360C 1000001D */  b          .L80103684
/* DC4C30 80103610 8FBF0014 */   lw        $ra, 0x14($sp)
.L80103614:
/* DC4C34 80103614 8D0B0000 */  lw         $t3, ($t0)
/* DC4C38 80103618 240E00FF */  addiu      $t6, $zero, 0xff
/* DC4C3C 8010361C 248F0001 */  addiu      $t7, $a0, 1
/* DC4C40 80103620 256C0008 */  addiu      $t4, $t3, 8
/* DC4C44 80103624 29810100 */  slti       $at, $t4, 0x100
/* DC4C48 80103628 14200015 */  bnez       $at, .L80103680
/* DC4C4C 8010362C AD0C0000 */   sw        $t4, ($t0)
/* DC4C50 80103630 24180073 */  addiu      $t8, $zero, 0x73
/* DC4C54 80103634 AD0E0000 */  sw         $t6, ($t0)
/* DC4C58 80103638 ACAF0000 */  sw         $t7, ($a1)
/* DC4C5C 8010363C 10000010 */  b          .L80103680
/* DC4C60 80103640 AC780000 */   sw        $t8, ($v1)
.L80103644:
/* DC4C64 80103644 8C790000 */  lw         $t9, ($v1)
/* DC4C68 80103648 24890001 */  addiu      $t1, $a0, 1
/* DC4C6C 8010364C 240A0020 */  addiu      $t2, $zero, 0x20
/* DC4C70 80103650 5720000C */  bnel       $t9, $zero, .L80103684
/* DC4C74 80103654 8FBF0014 */   lw        $ra, 0x14($sp)
/* DC4C78 80103658 ACA90000 */  sw         $t1, ($a1)
/* DC4C7C 8010365C 10000008 */  b          .L80103680
/* DC4C80 80103660 AC6A0000 */   sw        $t2, ($v1)
/* DC4C84 80103664 8D0B0000 */  lw         $t3, ($t0)
.L80103668:
/* DC4C88 80103668 256CFFF8 */  addiu      $t4, $t3, -8
/* DC4C8C 8010366C 05810004 */  bgez       $t4, .L80103680
/* DC4C90 80103670 AD0C0000 */   sw        $t4, ($t0)
/* DC4C94 80103674 AD000000 */  sw         $zero, ($t0)
/* DC4C98 80103678 ACA00000 */  sw         $zero, ($a1)
/* DC4C9C 8010367C AC600000 */  sw         $zero, ($v1)
.L80103680:
/* DC4CA0 80103680 8FBF0014 */  lw         $ra, 0x14($sp)
.L80103684:
/* DC4CA4 80103684 27BD0018 */  addiu      $sp, $sp, 0x18
/* DC4CA8 80103688 03E00008 */  jr         $ra
/* DC4CAC 8010368C 00000000 */   nop
