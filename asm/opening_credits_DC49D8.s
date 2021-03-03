.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801033B8
/* DC49D8 801033B8 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC49DC 801033BC 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC49E0 801033C0 8C620000 */  lw         $v0, ($v1)
/* DC49E4 801033C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DC49E8 801033C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DC49EC 801033CC 244E0008 */  addiu      $t6, $v0, 8
/* DC49F0 801033D0 AC6E0000 */  sw         $t6, ($v1)
/* DC49F4 801033D4 3C188010 */  lui        $t8, %hi(D_80106240)
/* DC49F8 801033D8 27186240 */  addiu      $t8, $t8, %lo(D_80106240)
/* DC49FC 801033DC 3C0F0600 */  lui        $t7, 0x600
/* DC4A00 801033E0 AC4F0000 */  sw         $t7, ($v0)
/* DC4A04 801033E4 AC580004 */  sw         $t8, 4($v0)
/* DC4A08 801033E8 8C620000 */  lw         $v0, ($v1)
/* DC4A0C 801033EC 3C09FCFF */  lui        $t1, 0xfcff
/* DC4A10 801033F0 3C0AFFFC */  lui        $t2, 0xfffc
/* DC4A14 801033F4 24590008 */  addiu      $t9, $v0, 8
/* DC4A18 801033F8 AC790000 */  sw         $t9, ($v1)
/* DC4A1C 801033FC 354AFA7D */  ori        $t2, $t2, 0xfa7d
/* DC4A20 80103400 3529FFFF */  ori        $t1, $t1, 0xffff
/* DC4A24 80103404 AC490000 */  sw         $t1, ($v0)
/* DC4A28 80103408 AC4A0004 */  sw         $t2, 4($v0)
/* DC4A2C 8010340C 8C620000 */  lw         $v0, ($v1)
/* DC4A30 80103410 3C0CB900 */  lui        $t4, 0xb900
/* DC4A34 80103414 3C0D0050 */  lui        $t5, 0x50
/* DC4A38 80103418 244B0008 */  addiu      $t3, $v0, 8
/* DC4A3C 8010341C AC6B0000 */  sw         $t3, ($v1)
/* DC4A40 80103420 35AD4240 */  ori        $t5, $t5, 0x4240
/* DC4A44 80103424 358C031D */  ori        $t4, $t4, 0x31d
/* DC4A48 80103428 AC4C0000 */  sw         $t4, ($v0)
/* DC4A4C 8010342C AC4D0004 */  sw         $t5, 4($v0)
/* DC4A50 80103430 8C620000 */  lw         $v0, ($v1)
/* DC4A54 80103434 3C088010 */  lui        $t0, %hi(D_80106220)
/* DC4A58 80103438 3C0FFB00 */  lui        $t7, 0xfb00
/* DC4A5C 8010343C 244E0008 */  addiu      $t6, $v0, 8
/* DC4A60 80103440 AC6E0000 */  sw         $t6, ($v1)
/* DC4A64 80103444 25086220 */  addiu      $t0, $t0, %lo(D_80106220)
/* DC4A68 80103448 AC4F0000 */  sw         $t7, ($v0)
/* DC4A6C 8010344C 8D180000 */  lw         $t8, ($t0)
/* DC4A70 80103450 331900FF */  andi       $t9, $t8, 0xff
/* DC4A74 80103454 0C040F6E */  jal        func_80103DB8
/* DC4A78 80103458 AC590004 */   sw        $t9, 4($v0)
/* DC4A7C 8010345C 3C038010 */  lui        $v1, %hi(D_80106200)
/* DC4A80 80103460 24636200 */  addiu      $v1, $v1, %lo(D_80106200)
/* DC4A84 80103464 3C058010 */  lui        $a1, %hi(D_80106224)
/* DC4A88 80103468 8C690000 */  lw         $t1, ($v1)
/* DC4A8C 8010346C 24A56224 */  addiu      $a1, $a1, %lo(D_80106224)
/* DC4A90 80103470 8CA40000 */  lw         $a0, ($a1)
/* DC4A94 80103474 3C088010 */  lui        $t0, %hi(D_80106220)
/* DC4A98 80103478 252AFFFF */  addiu      $t2, $t1, -1
/* DC4A9C 8010347C 25086220 */  addiu      $t0, $t0, %lo(D_80106220)
/* DC4AA0 80103480 AC6A0000 */  sw         $t2, ($v1)
/* DC4AA4 80103484 10800008 */  beqz       $a0, .L801034A8
/* DC4AA8 80103488 00801025 */   or        $v0, $a0, $zero
/* DC4AAC 8010348C 24010001 */  addiu      $at, $zero, 1
/* DC4AB0 80103490 10410011 */  beq        $v0, $at, .L801034D8
/* DC4AB4 80103494 24010002 */   addiu     $at, $zero, 2
/* DC4AB8 80103498 50410018 */  beql       $v0, $at, .L801034FC
/* DC4ABC 8010349C 8D0B0000 */   lw        $t3, ($t0)
/* DC4AC0 801034A0 1000001D */  b          .L80103518
/* DC4AC4 801034A4 8FBF0014 */   lw        $ra, 0x14($sp)
.L801034A8:
/* DC4AC8 801034A8 8D0B0000 */  lw         $t3, ($t0)
/* DC4ACC 801034AC 240E00FF */  addiu      $t6, $zero, 0xff
/* DC4AD0 801034B0 248F0001 */  addiu      $t7, $a0, 1
/* DC4AD4 801034B4 256C0008 */  addiu      $t4, $t3, 8
/* DC4AD8 801034B8 29810100 */  slti       $at, $t4, 0x100
/* DC4ADC 801034BC 14200015 */  bnez       $at, .L80103514
/* DC4AE0 801034C0 AD0C0000 */   sw        $t4, ($t0)
/* DC4AE4 801034C4 24180078 */  addiu      $t8, $zero, 0x78
/* DC4AE8 801034C8 AD0E0000 */  sw         $t6, ($t0)
/* DC4AEC 801034CC ACAF0000 */  sw         $t7, ($a1)
/* DC4AF0 801034D0 10000010 */  b          .L80103514
/* DC4AF4 801034D4 AC780000 */   sw        $t8, ($v1)
.L801034D8:
/* DC4AF8 801034D8 8C790000 */  lw         $t9, ($v1)
/* DC4AFC 801034DC 24890001 */  addiu      $t1, $a0, 1
/* DC4B00 801034E0 240A0020 */  addiu      $t2, $zero, 0x20
/* DC4B04 801034E4 5720000C */  bnel       $t9, $zero, .L80103518
/* DC4B08 801034E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* DC4B0C 801034EC ACA90000 */  sw         $t1, ($a1)
/* DC4B10 801034F0 10000008 */  b          .L80103514
/* DC4B14 801034F4 AC6A0000 */   sw        $t2, ($v1)
/* DC4B18 801034F8 8D0B0000 */  lw         $t3, ($t0)
.L801034FC:
/* DC4B1C 801034FC 256CFFF8 */  addiu      $t4, $t3, -8
/* DC4B20 80103500 05810004 */  bgez       $t4, .L80103514
/* DC4B24 80103504 AD0C0000 */   sw        $t4, ($t0)
/* DC4B28 80103508 AD000000 */  sw         $zero, ($t0)
/* DC4B2C 8010350C ACA00000 */  sw         $zero, ($a1)
/* DC4B30 80103510 AC600000 */  sw         $zero, ($v1)
.L80103514:
/* DC4B34 80103514 8FBF0014 */  lw         $ra, 0x14($sp)
.L80103518:
/* DC4B38 80103518 27BD0018 */  addiu      $sp, $sp, 0x18
/* DC4B3C 8010351C 03E00008 */  jr         $ra
/* DC4B40 80103520 00000000 */   nop
