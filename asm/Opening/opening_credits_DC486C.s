.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010324C
/* DC486C 8010324C 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC4870 80103250 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC4874 80103254 8C620000 */  lw         $v0, ($v1)
/* DC4878 80103258 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DC487C 8010325C AFBF0014 */  sw         $ra, 0x14($sp)
/* DC4880 80103260 244E0008 */  addiu      $t6, $v0, 8
/* DC4884 80103264 AC6E0000 */  sw         $t6, ($v1)
/* DC4888 80103268 3C188010 */  lui        $t8, %hi(D_80106240)
/* DC488C 8010326C 27186240 */  addiu      $t8, $t8, %lo(D_80106240)
/* DC4890 80103270 3C0F0600 */  lui        $t7, 0x600
/* DC4894 80103274 AC4F0000 */  sw         $t7, ($v0)
/* DC4898 80103278 AC580004 */  sw         $t8, 4($v0)
/* DC489C 8010327C 8C620000 */  lw         $v0, ($v1)
/* DC48A0 80103280 3C09B900 */  lui        $t1, 0xb900
/* DC48A4 80103284 3C0A0050 */  lui        $t2, 0x50
/* DC48A8 80103288 24590008 */  addiu      $t9, $v0, 8
/* DC48AC 8010328C AC790000 */  sw         $t9, ($v1)
/* DC48B0 80103290 354A4240 */  ori        $t2, $t2, 0x4240
/* DC48B4 80103294 3529031D */  ori        $t1, $t1, 0x31d
/* DC48B8 80103298 AC490000 */  sw         $t1, ($v0)
/* DC48BC 8010329C AC4A0004 */  sw         $t2, 4($v0)
/* DC48C0 801032A0 8C620000 */  lw         $v0, ($v1)
/* DC48C4 801032A4 3C0CFCFF */  lui        $t4, 0xfcff
/* DC48C8 801032A8 3C0DFFFC */  lui        $t5, 0xfffc
/* DC48CC 801032AC 244B0008 */  addiu      $t3, $v0, 8
/* DC48D0 801032B0 AC6B0000 */  sw         $t3, ($v1)
/* DC48D4 801032B4 35ADFA7D */  ori        $t5, $t5, 0xfa7d
/* DC48D8 801032B8 358CFFFF */  ori        $t4, $t4, 0xffff
/* DC48DC 801032BC AC4C0000 */  sw         $t4, ($v0)
/* DC48E0 801032C0 AC4D0004 */  sw         $t5, 4($v0)
/* DC48E4 801032C4 8C620000 */  lw         $v0, ($v1)
/* DC48E8 801032C8 3C088010 */  lui        $t0, %hi(D_80106220)
/* DC48EC 801032CC 3C0FFB00 */  lui        $t7, 0xfb00
/* DC48F0 801032D0 244E0008 */  addiu      $t6, $v0, 8
/* DC48F4 801032D4 AC6E0000 */  sw         $t6, ($v1)
/* DC48F8 801032D8 25086220 */  addiu      $t0, $t0, %lo(D_80106220)
/* DC48FC 801032DC AC4F0000 */  sw         $t7, ($v0)
/* DC4900 801032E0 8D180000 */  lw         $t8, ($t0)
/* DC4904 801032E4 331900FF */  andi       $t9, $t8, 0xff
/* DC4908 801032E8 0C040E55 */  jal        func_80103954
/* DC490C 801032EC AC590004 */   sw        $t9, 4($v0)
/* DC4910 801032F0 3C038010 */  lui        $v1, %hi(D_80106200)
/* DC4914 801032F4 24636200 */  addiu      $v1, $v1, %lo(D_80106200)
/* DC4918 801032F8 3C058010 */  lui        $a1, %hi(D_80106224)
/* DC491C 801032FC 8C690000 */  lw         $t1, ($v1)
/* DC4920 80103300 24A56224 */  addiu      $a1, $a1, %lo(D_80106224)
/* DC4924 80103304 8CA40000 */  lw         $a0, ($a1)
/* DC4928 80103308 3C088010 */  lui        $t0, %hi(D_80106220)
/* DC492C 8010330C 252AFFFF */  addiu      $t2, $t1, -1
/* DC4930 80103310 25086220 */  addiu      $t0, $t0, %lo(D_80106220)
/* DC4934 80103314 AC6A0000 */  sw         $t2, ($v1)
/* DC4938 80103318 10800008 */  beqz       $a0, .L8010333C
/* DC493C 8010331C 00801025 */   or        $v0, $a0, $zero
/* DC4940 80103320 24010001 */  addiu      $at, $zero, 1
/* DC4944 80103324 10410011 */  beq        $v0, $at, .L8010336C
/* DC4948 80103328 24010002 */   addiu     $at, $zero, 2
/* DC494C 8010332C 50410018 */  beql       $v0, $at, .L80103390
/* DC4950 80103330 8D0B0000 */   lw        $t3, ($t0)
/* DC4954 80103334 1000001D */  b          .L801033AC
/* DC4958 80103338 8FBF0014 */   lw        $ra, 0x14($sp)
.L8010333C:
/* DC495C 8010333C 8D0B0000 */  lw         $t3, ($t0)
/* DC4960 80103340 240E00FF */  addiu      $t6, $zero, 0xff
/* DC4964 80103344 248F0001 */  addiu      $t7, $a0, 1
/* DC4968 80103348 256C0008 */  addiu      $t4, $t3, 8
/* DC496C 8010334C 29810100 */  slti       $at, $t4, 0x100
/* DC4970 80103350 14200015 */  bnez       $at, .L801033A8
/* DC4974 80103354 AD0C0000 */   sw        $t4, ($t0)
/* DC4978 80103358 24180064 */  addiu      $t8, $zero, 0x64
/* DC497C 8010335C AD0E0000 */  sw         $t6, ($t0)
/* DC4980 80103360 ACAF0000 */  sw         $t7, ($a1)
/* DC4984 80103364 10000010 */  b          .L801033A8
/* DC4988 80103368 AC780000 */   sw        $t8, ($v1)
.L8010336C:
/* DC498C 8010336C 8C790000 */  lw         $t9, ($v1)
/* DC4990 80103370 24890001 */  addiu      $t1, $a0, 1
/* DC4994 80103374 240A0020 */  addiu      $t2, $zero, 0x20
/* DC4998 80103378 5720000C */  bnel       $t9, $zero, .L801033AC
/* DC499C 8010337C 8FBF0014 */   lw        $ra, 0x14($sp)
/* DC49A0 80103380 ACA90000 */  sw         $t1, ($a1)
/* DC49A4 80103384 10000008 */  b          .L801033A8
/* DC49A8 80103388 AC6A0000 */   sw        $t2, ($v1)
/* DC49AC 8010338C 8D0B0000 */  lw         $t3, ($t0)
.L80103390:
/* DC49B0 80103390 256CFFF8 */  addiu      $t4, $t3, -8
/* DC49B4 80103394 05810004 */  bgez       $t4, .L801033A8
/* DC49B8 80103398 AD0C0000 */   sw        $t4, ($t0)
/* DC49BC 8010339C AD000000 */  sw         $zero, ($t0)
/* DC49C0 801033A0 ACA00000 */  sw         $zero, ($a1)
/* DC49C4 801033A4 AC600000 */  sw         $zero, ($v1)
.L801033A8:
/* DC49C8 801033A8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801033AC:
/* DC49CC 801033AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* DC49D0 801033B0 03E00008 */  jr         $ra
/* DC49D4 801033B4 00000000 */   nop
