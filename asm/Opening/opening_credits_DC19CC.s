.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801003AC
/* DC19CC 801003AC 0C040CEE */  jal        func_801033B8
/* DC19D0 801003B0 00000000 */   nop
/* DC19D4 801003B4 3C0C8009 */  lui        $t4, %hi(ButtonPressedFrame)
/* DC19D8 801003B8 958C2876 */  lhu        $t4, %lo(ButtonPressedFrame)($t4)
/* DC19DC 801003BC 24040001 */  addiu      $a0, $zero, 1
/* DC19E0 801003C0 240500FF */  addiu      $a1, $zero, 0xff
/* DC19E4 801003C4 318D1000 */  andi       $t5, $t4, 0x1000
/* DC19E8 801003C8 11A00009 */  beqz       $t5, .L801003F0
/* DC19EC 801003CC 00000000 */   nop
/* DC19F0 801003D0 0C0096E3 */  jal        func_80025B8C
/* DC19F4 801003D4 24060040 */   addiu     $a2, $zero, 0x40
/* DC19F8 801003D8 3C028010 */  lui        $v0, %hi(D_80106200)
/* DC19FC 801003DC 24426200 */  addiu      $v0, $v0, %lo(D_80106200)
/* DC1A00 801003E0 AC400000 */  sw         $zero, ($v0)
/* DC1A04 801003E4 240E0001 */  addiu      $t6, $zero, 1
/* DC1A08 801003E8 3C018010 */  lui        $at, %hi(D_8010620C)
/* DC1A0C 801003EC A02E620C */  sb         $t6, %lo(D_8010620C)($at)
.L801003F0:
/* DC1A10 801003F0 3C028010 */  lui        $v0, %hi(D_80106200)
/* DC1A14 801003F4 24426200 */  addiu      $v0, $v0, %lo(D_80106200)
/* DC1A18 801003F8 8C4F0000 */  lw         $t7, ($v0)
/* DC1A1C 801003FC 3C188010 */  lui        $t8, %hi(D_8010620C)
/* DC1A20 80100400 55E00088 */  bnel       $t7, $zero, .L80100624
/* DC1A24 80100404 8FA2001C */   lw        $v0, 0x1c($sp)
/* DC1A28 80100408 9318620C */  lbu        $t8, %lo(D_8010620C)($t8)
/* DC1A2C 8010040C 3C018010 */  lui        $at, %hi(D_80106220)
/* DC1A30 80100410 AC206220 */  sw         $zero, %lo(D_80106220)($at)
/* DC1A34 80100414 13000006 */  beqz       $t8, .L80100430
/* DC1A38 80100418 3C038010 */   lui       $v1, 0x8010
/* DC1A3C 8010041C 2419000A */  addiu      $t9, $zero, 0xa
/* DC1A40 80100420 24080001 */  addiu      $t0, $zero, 1
/* DC1A44 80100424 AC590000 */  sw         $t9, ($v0)
/* DC1A48 80100428 10000007 */  b          .L80100448
/* DC1A4C 8010042C AFA8001C */   sw        $t0, 0x1c($sp)
.L80100430:
/* DC1A50 80100430 8C636210 */  lw         $v1, 0x6210($v1)
/* DC1A54 80100434 2409002D */  addiu      $t1, $zero, 0x2d
/* DC1A58 80100438 AC490000 */  sw         $t1, ($v0)
/* DC1A5C 8010043C 3C018010 */  lui        $at, %hi(D_80106210)
/* DC1A60 80100440 24630001 */  addiu      $v1, $v1, 1
/* DC1A64 80100444 AC236210 */  sw         $v1, %lo(D_80106210)($at)
.L80100448:
/* DC1A68 80100448 3C018010 */  lui        $at, %hi(D_8010620C)
/* DC1A6C 8010044C 10000074 */  b          .L80100620
/* DC1A70 80100450 A020620C */   sb        $zero, %lo(D_8010620C)($at)
/* DC1A74 80100454 0C040D49 */  jal        func_80103524
/* DC1A78 80100458 00000000 */   nop
/* DC1A7C 8010045C 3C0A8009 */  lui        $t2, %hi(ButtonPressedFrame)
/* DC1A80 80100460 954A2876 */  lhu        $t2, %lo(ButtonPressedFrame)($t2)
/* DC1A84 80100464 24040001 */  addiu      $a0, $zero, 1
/* DC1A88 80100468 240500FF */  addiu      $a1, $zero, 0xff
/* DC1A8C 8010046C 314B1000 */  andi       $t3, $t2, 0x1000
/* DC1A90 80100470 11600009 */  beqz       $t3, .L80100498
/* DC1A94 80100474 00000000 */   nop
/* DC1A98 80100478 0C0096E3 */  jal        func_80025B8C
/* DC1A9C 8010047C 24060040 */   addiu     $a2, $zero, 0x40
/* DC1AA0 80100480 3C028010 */  lui        $v0, %hi(D_80106200)
/* DC1AA4 80100484 24426200 */  addiu      $v0, $v0, %lo(D_80106200)
/* DC1AA8 80100488 AC400000 */  sw         $zero, ($v0)
/* DC1AAC 8010048C 240C0001 */  addiu      $t4, $zero, 1
/* DC1AB0 80100490 3C018010 */  lui        $at, %hi(D_8010620C)
/* DC1AB4 80100494 A02C620C */  sb         $t4, %lo(D_8010620C)($at)
.L80100498:
/* DC1AB8 80100498 3C028010 */  lui        $v0, %hi(D_80106200)
/* DC1ABC 8010049C 24426200 */  addiu      $v0, $v0, %lo(D_80106200)
/* DC1AC0 801004A0 8C4D0000 */  lw         $t5, ($v0)
/* DC1AC4 801004A4 3C0E8010 */  lui        $t6, %hi(D_8010620C)
/* DC1AC8 801004A8 55A0005E */  bnel       $t5, $zero, .L80100624
/* DC1ACC 801004AC 8FA2001C */   lw        $v0, 0x1c($sp)
/* DC1AD0 801004B0 91CE620C */  lbu        $t6, %lo(D_8010620C)($t6)
/* DC1AD4 801004B4 3C018010 */  lui        $at, %hi(D_80106220)
/* DC1AD8 801004B8 AC206220 */  sw         $zero, %lo(D_80106220)($at)
/* DC1ADC 801004BC 11C00006 */  beqz       $t6, .L801004D8
/* DC1AE0 801004C0 3C038010 */   lui       $v1, 0x8010
/* DC1AE4 801004C4 240F000A */  addiu      $t7, $zero, 0xa
/* DC1AE8 801004C8 24180001 */  addiu      $t8, $zero, 1
/* DC1AEC 801004CC AC4F0000 */  sw         $t7, ($v0)
/* DC1AF0 801004D0 10000007 */  b          .L801004F0
/* DC1AF4 801004D4 AFB8001C */   sw        $t8, 0x1c($sp)
.L801004D8:
/* DC1AF8 801004D8 8C636210 */  lw         $v1, 0x6210($v1)
/* DC1AFC 801004DC 2419002D */  addiu      $t9, $zero, 0x2d
/* DC1B00 801004E0 AC590000 */  sw         $t9, ($v0)
/* DC1B04 801004E4 3C018010 */  lui        $at, %hi(D_80106210)
/* DC1B08 801004E8 24630001 */  addiu      $v1, $v1, 1
/* DC1B0C 801004EC AC236210 */  sw         $v1, %lo(D_80106210)($at)
.L801004F0:
/* DC1B10 801004F0 3C018010 */  lui        $at, %hi(D_8010620C)
/* DC1B14 801004F4 1000004A */  b          .L80100620
/* DC1B18 801004F8 A020620C */   sb        $zero, %lo(D_8010620C)($at)
/* DC1B1C 801004FC 3C028010 */  lui        $v0, %hi(D_80106200)
/* DC1B20 80100500 24426200 */  addiu      $v0, $v0, %lo(D_80106200)
/* DC1B24 80100504 8C480000 */  lw         $t0, ($v0)
/* DC1B28 80100508 24630001 */  addiu      $v1, $v1, 1
/* DC1B2C 8010050C 2404001B */  addiu      $a0, $zero, 0x1b
/* DC1B30 80100510 2509FFFF */  addiu      $t1, $t0, -1
/* DC1B34 80100514 15200042 */  bnez       $t1, .L80100620
/* DC1B38 80100518 AC490000 */   sw        $t1, ($v0)
/* DC1B3C 8010051C 3C018010 */  lui        $at, %hi(D_80106210)
/* DC1B40 80100520 0C0099EE */  jal        updateBGM
/* DC1B44 80100524 AC236210 */   sw        $v1, %lo(D_80106210)($at)
/* DC1B48 80100528 1000003E */  b          .L80100624
/* DC1B4C 8010052C 8FA2001C */   lw        $v0, 0x1c($sp)
/* DC1B50 80100530 3C078010 */  lui        $a3, %hi(D_80106204)
/* DC1B54 80100534 8CE76204 */  lw         $a3, %lo(D_80106204)($a3)
/* DC1B58 80100538 3C038008 */  lui        $v1, 0x8008
/* DC1B5C 8010053C 240B00FF */  addiu      $t3, $zero, 0xff
/* DC1B60 80100540 24E70001 */  addiu      $a3, $a3, 1
/* DC1B64 80100544 30EC0001 */  andi       $t4, $a3, 1
/* DC1B68 80100548 000C7080 */  sll        $t6, $t4, 2
/* DC1B6C 8010054C 01CC7023 */  subu       $t6, $t6, $t4
/* DC1B70 80100550 000E7100 */  sll        $t6, $t6, 4
/* DC1B74 80100554 3C018007 */  lui        $at, %hi(D_8006AC54)
/* DC1B78 80100558 01CC7023 */  subu       $t6, $t6, $t4
/* DC1B7C 8010055C 2463B2FC */  addiu      $v1, $v1, -0x4d04
/* DC1B80 80100560 A02BAC54 */  sb         $t3, %lo(D_8006AC54)($at)
/* DC1B84 80100564 000E70C0 */  sll        $t6, $t6, 3
/* DC1B88 80100568 8C6D0000 */  lw         $t5, ($v1)
/* DC1B8C 8010056C 01CC7023 */  subu       $t6, $t6, $t4
/* DC1B90 80100570 3C0F8017 */  lui        $t7, %hi(D_80169130)
/* DC1B94 80100574 25EF9130 */  addiu      $t7, $t7, %lo(D_80169130)
/* DC1B98 80100578 000E7180 */  sll        $t6, $t6, 6
/* DC1B9C 8010057C 3C018017 */  lui        $at, %hi(D_80174CB0)
/* DC1BA0 80100580 01CFC021 */  addu       $t8, $t6, $t7
/* DC1BA4 80100584 AC2D4CB0 */  sw         $t5, %lo(D_80174CB0)($at)
/* DC1BA8 80100588 AC780000 */  sw         $t8, ($v1)
/* DC1BAC 8010058C 27190008 */  addiu      $t9, $t8, 8
/* DC1BB0 80100590 AC790000 */  sw         $t9, ($v1)
/* DC1BB4 80100594 3C098010 */  lui        $t1, %hi(D_80106240)
/* DC1BB8 80100598 25296240 */  addiu      $t1, $t1, %lo(D_80106240)
/* DC1BBC 8010059C 3C080600 */  lui        $t0, 0x600
/* DC1BC0 801005A0 AF080000 */  sw         $t0, ($t8)
/* DC1BC4 801005A4 AF090004 */  sw         $t1, 4($t8)
/* DC1BC8 801005A8 3C018010 */  lui        $at, %hi(D_80106204)
/* DC1BCC 801005AC 0C04018D */  jal        func_80100634
/* DC1BD0 801005B0 AC2C6204 */   sw        $t4, %lo(D_80106204)($at)
/* DC1BD4 801005B4 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC1BD8 801005B8 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC1BDC 801005BC 3C078010 */  lui        $a3, %hi(D_80106204)
/* DC1BE0 801005C0 8CE76204 */  lw         $a3, %lo(D_80106204)($a3)
/* DC1BE4 801005C4 8C650000 */  lw         $a1, ($v1)
/* DC1BE8 801005C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* DC1BEC 801005CC 3C0AB800 */  lui        $t2, 0xb800
/* DC1BF0 801005D0 3C0B8017 */  lui        $t3, %hi(D_80174CB0)
/* DC1BF4 801005D4 00077080 */  sll        $t6, $a3, 2
/* DC1BF8 801005D8 ACAA0000 */  sw         $t2, ($a1)
/* DC1BFC 801005DC ACA00004 */  sw         $zero, 4($a1)
/* DC1C00 801005E0 8D6B4CB0 */  lw         $t3, %lo(D_80174CB0)($t3)
/* DC1C04 801005E4 01C77023 */  subu       $t6, $t6, $a3
/* DC1C08 801005E8 000E7100 */  sll        $t6, $t6, 4
/* DC1C0C 801005EC 01C77023 */  subu       $t6, $t6, $a3
/* DC1C10 801005F0 000E70C0 */  sll        $t6, $t6, 3
/* DC1C14 801005F4 3C0F8017 */  lui        $t7, 0x8017
/* DC1C18 801005F8 01C77023 */  subu       $t6, $t6, $a3
/* DC1C1C 801005FC AC6B0000 */  sw         $t3, ($v1)
/* DC1C20 80100600 256C0008 */  addiu      $t4, $t3, 8
/* DC1C24 80100604 AC6C0000 */  sw         $t4, ($v1)
/* DC1C28 80100608 000E7180 */  sll        $t6, $t6, 6
/* DC1C2C 8010060C 25EF9130 */  addiu      $t7, $t7, -0x6ed0
/* DC1C30 80100610 01CFC021 */  addu       $t8, $t6, $t7
/* DC1C34 80100614 3C0D0600 */  lui        $t5, 0x600
/* DC1C38 80100618 AD6D0000 */  sw         $t5, ($t3)
/* DC1C3C 8010061C AD780004 */  sw         $t8, 4($t3)
.L80100620:
/* DC1C40 80100620 8FA2001C */  lw         $v0, 0x1c($sp)
.L80100624:
/* DC1C44 80100624 8FBF0014 */  lw         $ra, 0x14($sp)
/* DC1C48 80100628 27BD0020 */  addiu      $sp, $sp, 0x20
/* DC1C4C 8010062C 03E00008 */  jr         $ra
/* DC1C50 80100630 00000000 */   nop
