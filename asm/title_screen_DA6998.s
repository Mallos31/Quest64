.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801000A8
/* DA6998 801000A8 3C028010 */  lui        $v0, %hi(D_80103120)
/* DA699C 801000AC 90423120 */  lbu        $v0, %lo(D_80103120)($v0)
/* DA69A0 801000B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA69A4 801000B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* DA69A8 801000B8 14400010 */  bnez       $v0, .L801000FC
/* DA69AC 801000BC 3C048012 */   lui       $a0, %hi(D_8011AD34)
/* DA69B0 801000C0 3C068012 */  lui        $a2, %hi(D_8011AD44)
/* DA69B4 801000C4 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA69B8 801000C8 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA69BC 801000CC 24C6AD44 */  addiu      $a2, $a2, %lo(D_8011AD44)
/* DA69C0 801000D0 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
/* DA69C4 801000D4 240A0001 */  addiu      $t2, $zero, 1
/* DA69C8 801000D8 240E0003 */  addiu      $t6, $zero, 3
/* DA69CC 801000DC ACEE0000 */  sw         $t6, ($a3)
/* DA69D0 801000E0 AC8A0000 */  sw         $t2, ($a0)
/* DA69D4 801000E4 ACC00000 */  sw         $zero, ($a2)
/* DA69D8 801000E8 3C018007 */  lui        $at, %hi(D_8006AC60)
/* DA69DC 801000EC A020AC60 */  sb         $zero, %lo(D_8006AC60)($at)
/* DA69E0 801000F0 3C018010 */  lui        $at, %hi(D_80103120)
/* DA69E4 801000F4 244F0001 */  addiu      $t7, $v0, 1
/* DA69E8 801000F8 A02F3120 */  sb         $t7, %lo(D_80103120)($at)
.L801000FC:
/* DA69EC 801000FC 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA69F0 80100100 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA69F4 80100104 8CE20000 */  lw         $v0, ($a3)
/* DA69F8 80100108 3C048012 */  lui        $a0, %hi(D_8011AD34)
/* DA69FC 8010010C 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
/* DA6A00 80100110 2458FFFD */  addiu      $t8, $v0, -3
/* DA6A04 80100114 2F010006 */  sltiu      $at, $t8, 6
/* DA6A08 80100118 10200164 */  beqz       $at, .L801006AC
/* DA6A0C 8010011C 0018C080 */   sll       $t8, $t8, 2
/* DA6A10 80100120 3C018012 */  lui        $at, %hi(jtbl_8011ACD0)
/* DA6A14 80100124 00380821 */  addu       $at, $at, $t8
/* DA6A18 80100128 8C38ACD0 */  lw         $t8, %lo(jtbl_8011ACD0)($at)
/* DA6A1C 8010012C 03000008 */  jr         $t8
/* DA6A20 80100130 00000000 */   nop
glabel L80100134_DA6A24
/* DA6A24 80100134 8C990000 */  lw         $t9, ($a0)
/* DA6A28 80100138 272DFFFF */  addiu      $t5, $t9, -1
/* DA6A2C 8010013C 15A0015B */  bnez       $t5, .L801006AC
/* DA6A30 80100140 AC8D0000 */   sw        $t5, ($a0)
/* DA6A34 80100144 240F1518 */  addiu      $t7, $zero, 0x1518
/* DA6A38 80100148 24580001 */  addiu      $t8, $v0, 1
/* DA6A3C 8010014C AC8F0000 */  sw         $t7, ($a0)
/* DA6A40 80100150 ACF80000 */  sw         $t8, ($a3)
/* DA6A44 80100154 24190014 */  addiu      $t9, $zero, 0x14
/* DA6A48 80100158 3C018010 */  lui        $at, %hi(D_80103424)
/* DA6A4C 8010015C AC393424 */  sw         $t9, %lo(D_80103424)($at)
/* DA6A50 80100160 240B0002 */  addiu      $t3, $zero, 2
/* DA6A54 80100164 3C018010 */  lui        $at, %hi(D_80103420)
/* DA6A58 80100168 10000150 */  b          .L801006AC
/* DA6A5C 8010016C AC2B3420 */   sw        $t3, %lo(D_80103420)($at)
glabel L80100170_DA6A60
/* DA6A60 80100170 0C0401B6 */  jal        func_801006D8
/* DA6A64 80100174 00000000 */   nop
/* DA6A68 80100178 3C0D8010 */  lui        $t5, %hi(D_80103420)
/* DA6A6C 8010017C 8DAD3420 */  lw         $t5, %lo(D_80103420)($t5)
/* DA6A70 80100180 3C048012 */  lui        $a0, 0x8012
/* DA6A74 80100184 3C068012 */  lui        $a2, %hi(D_8011AD44)
/* DA6A78 80100188 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA6A7C 8010018C 240B0002 */  addiu      $t3, $zero, 2
/* DA6A80 80100190 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA6A84 80100194 24C6AD44 */  addiu      $a2, $a2, %lo(D_8011AD44)
/* DA6A88 80100198 2484AD34 */  addiu      $a0, $a0, -0x52cc
/* DA6A8C 8010019C 156D000B */  bne        $t3, $t5, .L801001CC
/* DA6A90 801001A0 240A0001 */   addiu     $t2, $zero, 1
/* DA6A94 801001A4 0C040B8C */  jal        func_80102E30
/* DA6A98 801001A8 00000000 */   nop
/* DA6A9C 801001AC 3C048012 */  lui        $a0, %hi(D_8011AD34)
/* DA6AA0 801001B0 3C068012 */  lui        $a2, %hi(D_8011AD44)
/* DA6AA4 801001B4 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA6AA8 801001B8 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA6AAC 801001BC 24C6AD44 */  addiu      $a2, $a2, %lo(D_8011AD44)
/* DA6AB0 801001C0 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
/* DA6AB4 801001C4 240A0001 */  addiu      $t2, $zero, 1
/* DA6AB8 801001C8 240B0002 */  addiu      $t3, $zero, 2
.L801001CC:
/* DA6ABC 801001CC 8C8E0000 */  lw         $t6, ($a0)
/* DA6AC0 801001D0 15C00010 */  bnez       $t6, .L80100214
/* DA6AC4 801001D4 00000000 */   nop
/* DA6AC8 801001D8 8CCF0000 */  lw         $t7, ($a2)
/* DA6ACC 801001DC 3C038010 */  lui        $v1, %hi(D_80103110)
/* DA6AD0 801001E0 24633110 */  addiu      $v1, $v1, %lo(D_80103110)
/* DA6AD4 801001E4 15E0000B */  bnez       $t7, .L80100214
/* DA6AD8 801001E8 00000000 */   nop
/* DA6ADC 801001EC 8C780000 */  lw         $t8, ($v1)
/* DA6AE0 801001F0 2408003C */  addiu      $t0, $zero, 0x3c
/* DA6AE4 801001F4 3C018010 */  lui        $at, %hi(D_80103424)
/* DA6AE8 801001F8 17000006 */  bnez       $t8, .L80100214
/* DA6AEC 801001FC 00000000 */   nop
/* DA6AF0 80100200 AC6A0000 */  sw         $t2, ($v1)
/* DA6AF4 80100204 AC283424 */  sw         $t0, %lo(D_80103424)($at)
/* DA6AF8 80100208 3C018010 */  lui        $at, %hi(D_80103420)
/* DA6AFC 8010020C AC2A3420 */  sw         $t2, %lo(D_80103420)($at)
/* DA6B00 80100210 AC880000 */  sw         $t0, ($a0)
.L80100214:
/* DA6B04 80100214 3C038010 */  lui        $v1, %hi(D_80103110)
/* DA6B08 80100218 24633110 */  addiu      $v1, $v1, %lo(D_80103110)
/* DA6B0C 8010021C 8C790000 */  lw         $t9, ($v1)
/* DA6B10 80100220 5559001A */  bnel       $t2, $t9, .L8010028C
/* DA6B14 80100224 8C8F0000 */   lw        $t7, ($a0)
/* DA6B18 80100228 0C040B8C */  jal        func_80102E30
/* DA6B1C 8010022C 00000000 */   nop
/* DA6B20 80100230 3C0D8010 */  lui        $t5, %hi(D_80103420)
/* DA6B24 80100234 8DAD3420 */  lw         $t5, %lo(D_80103420)($t5)
/* DA6B28 80100238 3C038010 */  lui        $v1, 0x8010
/* DA6B2C 8010023C 3C048012 */  lui        $a0, %hi(D_8011AD34)
/* DA6B30 80100240 3C068012 */  lui        $a2, %hi(D_8011AD44)
/* DA6B34 80100244 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA6B38 80100248 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA6B3C 8010024C 24C6AD44 */  addiu      $a2, $a2, %lo(D_8011AD44)
/* DA6B40 80100250 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
/* DA6B44 80100254 24633110 */  addiu      $v1, $v1, 0x3110
/* DA6B48 80100258 240A0001 */  addiu      $t2, $zero, 1
/* DA6B4C 8010025C 15A0000A */  bnez       $t5, .L80100288
/* DA6B50 80100260 240B0002 */   addiu     $t3, $zero, 2
/* DA6B54 80100264 3C018012 */  lui        $at, %hi(D_8011AD3C)
/* DA6B58 80100268 AC20AD3C */  sw         $zero, %lo(D_8011AD3C)($at)
/* DA6B5C 8010026C 3C018012 */  lui        $at, %hi(D_8011AD40)
/* DA6B60 80100270 240E0008 */  addiu      $t6, $zero, 8
/* DA6B64 80100274 AC2EAD40 */  sw         $t6, %lo(D_8011AD40)($at)
/* DA6B68 80100278 AC800000 */  sw         $zero, ($a0)
/* DA6B6C 8010027C ACE00000 */  sw         $zero, ($a3)
/* DA6B70 80100280 AC600000 */  sw         $zero, ($v1)
/* DA6B74 80100284 ACC00000 */  sw         $zero, ($a2)
.L80100288:
/* DA6B78 80100288 8C8F0000 */  lw         $t7, ($a0)
.L8010028C:
/* DA6B7C 8010028C 55E00108 */  bnel       $t7, $zero, .L801006B0
/* DA6B80 80100290 8C830000 */   lw        $v1, ($a0)
/* DA6B84 80100294 8CD80000 */  lw         $t8, ($a2)
/* DA6B88 80100298 55580105 */  bnel       $t2, $t8, .L801006B0
/* DA6B8C 8010029C 8C830000 */   lw        $v1, ($a0)
/* DA6B90 801002A0 8CF90000 */  lw         $t9, ($a3)
/* DA6B94 801002A4 ACCB0000 */  sw         $t3, ($a2)
/* DA6B98 801002A8 AC8B0000 */  sw         $t3, ($a0)
/* DA6B9C 801002AC 272D0001 */  addiu      $t5, $t9, 1
/* DA6BA0 801002B0 100000FE */  b          .L801006AC
/* DA6BA4 801002B4 ACED0000 */   sw        $t5, ($a3)
glabel L801002B8_DA6BA8
/* DA6BA8 801002B8 0C0401B6 */  jal        func_801006D8
/* DA6BAC 801002BC 00000000 */   nop
/* DA6BB0 801002C0 3C0E8010 */  lui        $t6, %hi(D_8010311C)
/* DA6BB4 801002C4 95CE311C */  lhu        $t6, %lo(D_8010311C)($t6)
/* DA6BB8 801002C8 3C048012 */  lui        $a0, %hi(D_8011AD34)
/* DA6BBC 801002CC 3C068012 */  lui        $a2, %hi(D_8011AD44)
/* DA6BC0 801002D0 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA6BC4 801002D4 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA6BC8 801002D8 24C6AD44 */  addiu      $a2, $a2, %lo(D_8011AD44)
/* DA6BCC 801002DC 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
/* DA6BD0 801002E0 240A0001 */  addiu      $t2, $zero, 1
/* DA6BD4 801002E4 15C00005 */  bnez       $t6, .L801002FC
/* DA6BD8 801002E8 240C0003 */   addiu     $t4, $zero, 3
/* DA6BDC 801002EC 3C058010 */  lui        $a1, %hi(D_80103118)
/* DA6BE0 801002F0 8CA53118 */  lw         $a1, %lo(D_80103118)($a1)
/* DA6BE4 801002F4 10000002 */  b          .L80100300
/* DA6BE8 801002F8 24A50001 */   addiu     $a1, $a1, 1
.L801002FC:
/* DA6BEC 801002FC 00002825 */  or         $a1, $zero, $zero
.L80100300:
/* DA6BF0 80100300 3C0F8009 */  lui        $t7, %hi(ButtonPressedFrame)
/* DA6BF4 80100304 95EF2876 */  lhu        $t7, %lo(ButtonPressedFrame)($t7)
/* DA6BF8 80100308 3C028009 */  lui        $v0, %hi(JoystickX)
/* DA6BFC 8010030C 24190001 */  addiu      $t9, $zero, 1
/* DA6C00 80100310 31F8F000 */  andi       $t8, $t7, 0xf000
/* DA6C04 80100314 1700000F */  bnez       $t8, .L80100354
/* DA6C08 80100318 3C038010 */   lui       $v1, 0x8010
/* DA6C0C 8010031C 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* DA6C10 80100320 2841FFED */  slti       $at, $v0, -0x13
/* DA6C14 80100324 1420000B */  bnez       $at, .L80100354
/* DA6C18 80100328 28410014 */   slti      $at, $v0, 0x14
/* DA6C1C 8010032C 10200009 */  beqz       $at, .L80100354
/* DA6C20 80100330 3C028009 */   lui       $v0, %hi(JoystickY)
/* DA6C24 80100334 80422872 */  lb         $v0, %lo(JoystickY)($v0)
/* DA6C28 80100338 2841FFED */  slti       $at, $v0, -0x13
/* DA6C2C 8010033C 14200005 */  bnez       $at, .L80100354
/* DA6C30 80100340 28410014 */   slti      $at, $v0, 0x14
/* DA6C34 80100344 10200003 */  beqz       $at, .L80100354
/* DA6C38 80100348 3C018010 */   lui       $at, %hi(D_8010311C)
/* DA6C3C 8010034C 10000003 */  b          .L8010035C
/* DA6C40 80100350 A420311C */   sh        $zero, %lo(D_8010311C)($at)
.L80100354:
/* DA6C44 80100354 3C018010 */  lui        $at, %hi(D_8010311C)
/* DA6C48 80100358 A439311C */  sh         $t9, %lo(D_8010311C)($at)
.L8010035C:
/* DA6C4C 8010035C 3C018010 */  lui        $at, %hi(D_80103118)
/* DA6C50 80100360 AC253118 */  sw         $a1, %lo(D_80103118)($at)
/* DA6C54 80100364 2CA11C21 */  sltiu      $at, $a1, 0x1c21
/* DA6C58 80100368 1420000A */  bnez       $at, .L80100394
/* DA6C5C 8010036C 24633110 */   addiu     $v1, $v1, 0x3110
/* DA6C60 80100370 3C018010 */  lui        $at, %hi(D_8010311C)
/* DA6C64 80100374 A420311C */  sh         $zero, %lo(D_8010311C)($at)
/* DA6C68 80100378 24080004 */  addiu      $t0, $zero, 4
/* DA6C6C 8010037C 240B0002 */  addiu      $t3, $zero, 2
/* DA6C70 80100380 ACC80000 */  sw         $t0, ($a2)
/* DA6C74 80100384 AC6A0000 */  sw         $t2, ($v1)
/* DA6C78 80100388 AC8B0000 */  sw         $t3, ($a0)
/* DA6C7C 8010038C 3C018010 */  lui        $at, %hi(D_80103118)
/* DA6C80 80100390 AC203118 */  sw         $zero, %lo(D_80103118)($at)
.L80100394:
/* DA6C84 80100394 3C038010 */  lui        $v1, %hi(D_80103110)
/* DA6C88 80100398 24633110 */  addiu      $v1, $v1, %lo(D_80103110)
/* DA6C8C 8010039C 8C6D0000 */  lw         $t5, ($v1)
/* DA6C90 801003A0 24080004 */  addiu      $t0, $zero, 4
/* DA6C94 801003A4 240B0002 */  addiu      $t3, $zero, 2
/* DA6C98 801003A8 15A00002 */  bnez       $t5, .L801003B4
/* DA6C9C 801003AC 240E0014 */   addiu     $t6, $zero, 0x14
/* DA6CA0 801003B0 AC8E0000 */  sw         $t6, ($a0)
.L801003B4:
/* DA6CA4 801003B4 8C8F0000 */  lw         $t7, ($a0)
/* DA6CA8 801003B8 55E0001C */  bnel       $t7, $zero, .L8010042C
/* DA6CAC 801003BC 8C6E0000 */   lw        $t6, ($v1)
/* DA6CB0 801003C0 8CC20000 */  lw         $v0, ($a2)
/* DA6CB4 801003C4 11820003 */  beq        $t4, $v0, .L801003D4
/* DA6CB8 801003C8 00000000 */   nop
/* DA6CBC 801003CC 55020017 */  bnel       $t0, $v0, .L8010042C
/* DA6CC0 801003D0 8C6E0000 */   lw        $t6, ($v1)
.L801003D4:
/* DA6CC4 801003D4 15020006 */  bne        $t0, $v0, .L801003F0
/* DA6CC8 801003D8 3C018010 */   lui       $at, %hi(D_80103424)
/* DA6CCC 801003DC 2408003C */  addiu      $t0, $zero, 0x3c
/* DA6CD0 801003E0 AC6B0000 */  sw         $t3, ($v1)
/* DA6CD4 801003E4 AC283424 */  sw         $t0, %lo(D_80103424)($at)
/* DA6CD8 801003E8 3C018010 */  lui        $at, %hi(D_80103420)
/* DA6CDC 801003EC AC2A3420 */  sw         $t2, %lo(D_80103420)($at)
.L801003F0:
/* DA6CE0 801003F0 2408003C */  addiu      $t0, $zero, 0x3c
/* DA6CE4 801003F4 1582000C */  bne        $t4, $v0, .L80100428
/* DA6CE8 801003F8 AC880000 */   sw        $t0, ($a0)
/* DA6CEC 801003FC 8CF80000 */  lw         $t8, ($a3)
/* DA6CF0 80100400 24090005 */  addiu      $t1, $zero, 5
/* DA6CF4 80100404 ACC90000 */  sw         $t1, ($a2)
/* DA6CF8 80100408 27190001 */  addiu      $t9, $t8, 1
/* DA6CFC 8010040C ACF90000 */  sw         $t9, ($a3)
/* DA6D00 80100410 240D00FF */  addiu      $t5, $zero, 0xff
/* DA6D04 80100414 3C018012 */  lui        $at, %hi(D_8011AD3C)
/* DA6D08 80100418 AC2DAD3C */  sw         $t5, %lo(D_8011AD3C)($at)
/* DA6D0C 8010041C 3C018012 */  lui        $at, %hi(D_8011AD40)
/* DA6D10 80100420 AC20AD40 */  sw         $zero, %lo(D_8011AD40)($at)
/* DA6D14 80100424 AC600000 */  sw         $zero, ($v1)
.L80100428:
/* DA6D18 80100428 8C6E0000 */  lw         $t6, ($v1)
.L8010042C:
/* DA6D1C 8010042C 556E00A0 */  bnel       $t3, $t6, .L801006B0
/* DA6D20 80100430 8C830000 */   lw        $v1, ($a0)
/* DA6D24 80100434 0C040B8C */  jal        func_80102E30
/* DA6D28 80100438 00000000 */   nop
/* DA6D2C 8010043C 3C0F8010 */  lui        $t7, %hi(D_80103420)
/* DA6D30 80100440 8DEF3420 */  lw         $t7, %lo(D_80103420)($t7)
/* DA6D34 80100444 3C038010 */  lui        $v1, 0x8010
/* DA6D38 80100448 3C048012 */  lui        $a0, %hi(D_8011AD34)
/* DA6D3C 8010044C 3C068012 */  lui        $a2, %hi(D_8011AD44)
/* DA6D40 80100450 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA6D44 80100454 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA6D48 80100458 24C6AD44 */  addiu      $a2, $a2, %lo(D_8011AD44)
/* DA6D4C 8010045C 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
/* DA6D50 80100460 24633110 */  addiu      $v1, $v1, 0x3110
/* DA6D54 80100464 15E00091 */  bnez       $t7, .L801006AC
/* DA6D58 80100468 240C0003 */   addiu     $t4, $zero, 3
/* DA6D5C 8010046C 3C018012 */  lui        $at, %hi(D_8011AD3C)
/* DA6D60 80100470 AC20AD3C */  sw         $zero, %lo(D_8011AD3C)($at)
/* DA6D64 80100474 3C018012 */  lui        $at, %hi(D_8011AD40)
/* DA6D68 80100478 24180008 */  addiu      $t8, $zero, 8
/* DA6D6C 8010047C AC38AD40 */  sw         $t8, %lo(D_8011AD40)($at)
/* DA6D70 80100480 AC800000 */  sw         $zero, ($a0)
/* DA6D74 80100484 3C018012 */  lui        $at, %hi(D_8011AD38)
/* DA6D78 80100488 AC20AD38 */  sw         $zero, %lo(D_8011AD38)($at)
/* DA6D7C 8010048C ACEC0000 */  sw         $t4, ($a3)
/* DA6D80 80100490 ACC00000 */  sw         $zero, ($a2)
/* DA6D84 80100494 10000085 */  b          .L801006AC
/* DA6D88 80100498 AC600000 */   sw        $zero, ($v1)
glabel L8010049C_DA6D8C
/* DA6D8C 8010049C 0C0401B6 */  jal        func_801006D8
/* DA6D90 801004A0 00000000 */   nop
/* DA6D94 801004A4 3C028010 */  lui        $v0, %hi(D_80103114)
/* DA6D98 801004A8 90423114 */  lbu        $v0, %lo(D_80103114)($v0)
/* DA6D9C 801004AC 3C048012 */  lui        $a0, %hi(D_8011AD34)
/* DA6DA0 801004B0 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA6DA4 801004B4 28410002 */  slti       $at, $v0, 2
/* DA6DA8 801004B8 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA6DAC 801004BC 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
/* DA6DB0 801004C0 10200005 */  beqz       $at, .L801004D8
/* DA6DB4 801004C4 240A0001 */   addiu     $t2, $zero, 1
/* DA6DB8 801004C8 24590001 */  addiu      $t9, $v0, 1
/* DA6DBC 801004CC 3C018010 */  lui        $at, %hi(D_80103114)
/* DA6DC0 801004D0 10000076 */  b          .L801006AC
/* DA6DC4 801004D4 A0393114 */   sb        $t9, %lo(D_80103114)($at)
.L801004D8:
/* DA6DC8 801004D8 3C0D8008 */  lui        $t5, %hi(TitleScreenOption)
/* DA6DCC 801004DC 91ADB344 */  lbu        $t5, %lo(TitleScreenOption)($t5)
/* DA6DD0 801004E0 24010010 */  addiu      $at, $zero, 0x10
/* DA6DD4 801004E4 2408003C */  addiu      $t0, $zero, 0x3c
/* DA6DD8 801004E8 31AE00F0 */  andi       $t6, $t5, 0xf0
/* DA6DDC 801004EC 15C10009 */  bne        $t6, $at, .L80100514
/* DA6DE0 801004F0 24180008 */   addiu     $t8, $zero, 8
/* DA6DE4 801004F4 240F0008 */  addiu      $t7, $zero, 8
/* DA6DE8 801004F8 2408003C */  addiu      $t0, $zero, 0x3c
/* DA6DEC 801004FC ACEF0000 */  sw         $t7, ($a3)
/* DA6DF0 80100500 3C018010 */  lui        $at, %hi(D_80103424)
/* DA6DF4 80100504 AC283424 */  sw         $t0, %lo(D_80103424)($at)
/* DA6DF8 80100508 3C018010 */  lui        $at, %hi(D_80103420)
/* DA6DFC 8010050C 10000067 */  b          .L801006AC
/* DA6E00 80100510 AC2A3420 */   sw        $t2, %lo(D_80103420)($at)
.L80100514:
/* DA6E04 80100514 ACF80000 */  sw         $t8, ($a3)
/* DA6E08 80100518 3C018010 */  lui        $at, %hi(D_80103424)
/* DA6E0C 8010051C AC283424 */  sw         $t0, %lo(D_80103424)($at)
/* DA6E10 80100520 3C018010 */  lui        $at, %hi(D_80103420)
/* DA6E14 80100524 10000061 */  b          .L801006AC
/* DA6E18 80100528 AC2A3420 */   sw        $t2, %lo(D_80103420)($at)
glabel L8010052C_DA6E1C
/* DA6E1C 8010052C 0C0401B6 */  jal        func_801006D8
/* DA6E20 80100530 00000000 */   nop
/* DA6E24 80100534 3C038010 */  lui        $v1, %hi(D_80103110)
/* DA6E28 80100538 24633110 */  addiu      $v1, $v1, %lo(D_80103110)
/* DA6E2C 8010053C 8C790000 */  lw         $t9, ($v1)
/* DA6E30 80100540 3C048012 */  lui        $a0, %hi(D_8011AD34)
/* DA6E34 80100544 3C068012 */  lui        $a2, %hi(D_8011AD44)
/* DA6E38 80100548 3C078012 */  lui        $a3, %hi(D_8011AD30)
/* DA6E3C 8010054C 24E7AD30 */  addiu      $a3, $a3, %lo(D_8011AD30)
/* DA6E40 80100550 24C6AD44 */  addiu      $a2, $a2, %lo(D_8011AD44)
/* DA6E44 80100554 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
/* DA6E48 80100558 17200003 */  bnez       $t9, .L80100568
/* DA6E4C 8010055C 240A0001 */   addiu     $t2, $zero, 1
/* DA6E50 80100560 240D0014 */  addiu      $t5, $zero, 0x14
/* DA6E54 80100564 AC8D0000 */  sw         $t5, ($a0)
.L80100568:
/* DA6E58 80100568 8CC20000 */  lw         $v0, ($a2)
/* DA6E5C 8010056C 240B0002 */  addiu      $t3, $zero, 2
/* DA6E60 80100570 24090005 */  addiu      $t1, $zero, 5
/* DA6E64 80100574 15620002 */  bne        $t3, $v0, .L80100580
/* DA6E68 80100578 240C000B */   addiu     $t4, $zero, 0xb
/* DA6E6C 8010057C ACE90000 */  sw         $t1, ($a3)
.L80100580:
/* DA6E70 80100580 8C8E0000 */  lw         $t6, ($a0)
/* DA6E74 80100584 24090005 */  addiu      $t1, $zero, 5
/* DA6E78 80100588 55C00049 */  bnel       $t6, $zero, .L801006B0
/* DA6E7C 8010058C 8C830000 */   lw        $v1, ($a0)
/* DA6E80 80100590 1182000A */  beq        $t4, $v0, .L801005BC
/* DA6E84 80100594 2401000C */   addiu     $at, $zero, 0xc
/* DA6E88 80100598 10410008 */  beq        $v0, $at, .L801005BC
/* DA6E8C 8010059C 2401000D */   addiu     $at, $zero, 0xd
/* DA6E90 801005A0 10410006 */  beq        $v0, $at, .L801005BC
/* DA6E94 801005A4 2401000E */   addiu     $at, $zero, 0xe
/* DA6E98 801005A8 10410004 */  beq        $v0, $at, .L801005BC
/* DA6E9C 801005AC 24080009 */   addiu     $t0, $zero, 9
/* DA6EA0 801005B0 11020002 */  beq        $t0, $v0, .L801005BC
/* DA6EA4 801005B4 2405000A */   addiu     $a1, $zero, 0xa
/* DA6EA8 801005B8 14A2003C */  bne        $a1, $v0, .L801006AC
.L801005BC:
/* DA6EAC 801005BC 24080009 */   addiu     $t0, $zero, 9
/* DA6EB0 801005C0 15020006 */  bne        $t0, $v0, .L801005DC
/* DA6EB4 801005C4 2405000A */   addiu     $a1, $zero, 0xa
/* DA6EB8 801005C8 AC850000 */  sw         $a1, ($a0)
/* DA6EBC 801005CC ACE90000 */  sw         $t1, ($a3)
/* DA6EC0 801005D0 AC600000 */  sw         $zero, ($v1)
/* DA6EC4 801005D4 ACCB0000 */  sw         $t3, ($a2)
/* DA6EC8 801005D8 01601025 */  or         $v0, $t3, $zero
.L801005DC:
/* DA6ECC 801005DC 14A20006 */  bne        $a1, $v0, .L801005F8
/* DA6ED0 801005E0 2401000C */   addiu     $at, $zero, 0xc
/* DA6ED4 801005E4 AC850000 */  sw         $a1, ($a0)
/* DA6ED8 801005E8 ACE90000 */  sw         $t1, ($a3)
/* DA6EDC 801005EC AC600000 */  sw         $zero, ($v1)
/* DA6EE0 801005F0 ACCB0000 */  sw         $t3, ($a2)
/* DA6EE4 801005F4 01601025 */  or         $v0, $t3, $zero
.L801005F8:
/* DA6EE8 801005F8 14410005 */  bne        $v0, $at, .L80100610
/* DA6EEC 801005FC 2419000F */   addiu     $t9, $zero, 0xf
/* DA6EF0 80100600 AC890000 */  sw         $t1, ($a0)
/* DA6EF4 80100604 ACC80000 */  sw         $t0, ($a2)
/* DA6EF8 80100608 AC600000 */  sw         $zero, ($v1)
/* DA6EFC 8010060C 01001025 */  or         $v0, $t0, $zero
.L80100610:
/* DA6F00 80100610 15820011 */  bne        $t4, $v0, .L80100658
/* DA6F04 80100614 2408003C */   addiu     $t0, $zero, 0x3c
/* DA6F08 80100618 8CEF0000 */  lw         $t7, ($a3)
/* DA6F0C 8010061C AC880000 */  sw         $t0, ($a0)
/* DA6F10 80100620 ACD90000 */  sw         $t9, ($a2)
/* DA6F14 80100624 25F80001 */  addiu      $t8, $t7, 1
/* DA6F18 80100628 ACF80000 */  sw         $t8, ($a3)
/* DA6F1C 8010062C 3C018012 */  lui        $at, %hi(D_8011AD3C)
/* DA6F20 80100630 AC20AD3C */  sw         $zero, %lo(D_8011AD3C)($at)
/* DA6F24 80100634 3C018012 */  lui        $at, %hi(D_8011AD40)
/* DA6F28 80100638 240D0100 */  addiu      $t5, $zero, 0x100
/* DA6F2C 8010063C AC2DAD40 */  sw         $t5, %lo(D_8011AD40)($at)
/* DA6F30 80100640 3C018010 */  lui        $at, %hi(D_80103424)
/* DA6F34 80100644 AC283424 */  sw         $t0, %lo(D_80103424)($at)
/* DA6F38 80100648 3C018010 */  lui        $at, %hi(D_80103420)
/* DA6F3C 8010064C AC2A3420 */  sw         $t2, %lo(D_80103420)($at)
/* DA6F40 80100650 8CC20000 */  lw         $v0, ($a2)
/* DA6F44 80100654 AC600000 */  sw         $zero, ($v1)
.L80100658:
/* DA6F48 80100658 2401000D */  addiu      $at, $zero, 0xd
/* DA6F4C 8010065C 54410006 */  bnel       $v0, $at, .L80100678
/* DA6F50 80100660 2401000E */   addiu     $at, $zero, 0xe
/* DA6F54 80100664 AC890000 */  sw         $t1, ($a0)
/* DA6F58 80100668 ACC50000 */  sw         $a1, ($a2)
/* DA6F5C 8010066C AC600000 */  sw         $zero, ($v1)
/* DA6F60 80100670 00A01025 */  or         $v0, $a1, $zero
/* DA6F64 80100674 2401000E */  addiu      $at, $zero, 0xe
.L80100678:
/* DA6F68 80100678 5441000D */  bnel       $v0, $at, .L801006B0
/* DA6F6C 8010067C 8C830000 */   lw        $v1, ($a0)
/* DA6F70 80100680 AC850000 */  sw         $a1, ($a0)
/* DA6F74 80100684 ACE90000 */  sw         $t1, ($a3)
/* DA6F78 80100688 ACCB0000 */  sw         $t3, ($a2)
/* DA6F7C 8010068C 10000007 */  b          .L801006AC
/* DA6F80 80100690 AC600000 */   sw        $zero, ($v1)
glabel L80100694_DA6F84
/* DA6F84 80100694 0C0402C5 */  jal        func_80100B14
/* DA6F88 80100698 00000000 */   nop
/* DA6F8C 8010069C 0C040B8C */  jal        func_80102E30
/* DA6F90 801006A0 00000000 */   nop
/* DA6F94 801006A4 3C048012 */  lui        $a0, %hi(D_8011AD34)
/* DA6F98 801006A8 2484AD34 */  addiu      $a0, $a0, %lo(D_8011AD34)
.L801006AC:
/* DA6F9C 801006AC 8C830000 */  lw         $v1, ($a0)
.L801006B0:
/* DA6FA0 801006B0 14600004 */  bnez       $v1, .L801006C4
/* DA6FA4 801006B4 3C018010 */   lui       $at, %hi(D_8010311C)
/* DA6FA8 801006B8 A420311C */  sh         $zero, %lo(D_8010311C)($at)
/* DA6FAC 801006BC 3C018010 */  lui        $at, %hi(D_80103118)
/* DA6FB0 801006C0 AC203118 */  sw         $zero, %lo(D_80103118)($at)
.L801006C4:
/* DA6FB4 801006C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* DA6FB8 801006C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* DA6FBC 801006CC 00601025 */  or         $v0, $v1, $zero
/* DA6FC0 801006D0 03E00008 */  jr         $ra
/* DA6FC4 801006D4 00000000 */   nop
