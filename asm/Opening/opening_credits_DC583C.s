.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010421C
/* DC583C 8010421C 27BDFF08 */  addiu      $sp, $sp, -0xf8
/* DC5840 80104220 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC5844 80104224 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC5848 80104228 8C620000 */  lw         $v0, ($v1)
/* DC584C 8010422C AFB40018 */  sw         $s4, 0x18($sp)
/* DC5850 80104230 AFBF002C */  sw         $ra, 0x2c($sp)
/* DC5854 80104234 244E0008 */  addiu      $t6, $v0, 8
/* DC5858 80104238 AFBE0028 */  sw         $fp, 0x28($sp)
/* DC585C 8010423C AFB70024 */  sw         $s7, 0x24($sp)
/* DC5860 80104240 AFB60020 */  sw         $s6, 0x20($sp)
/* DC5864 80104244 AFB5001C */  sw         $s5, 0x1c($sp)
/* DC5868 80104248 AFB30014 */  sw         $s3, 0x14($sp)
/* DC586C 8010424C AFB20010 */  sw         $s2, 0x10($sp)
/* DC5870 80104250 AFB1000C */  sw         $s1, 0xc($sp)
/* DC5874 80104254 AFB00008 */  sw         $s0, 8($sp)
/* DC5878 80104258 AC6E0000 */  sw         $t6, ($v1)
/* DC587C 8010425C 3C14E700 */  lui        $s4, 0xe700
/* DC5880 80104260 AC540000 */  sw         $s4, ($v0)
/* DC5884 80104264 AC400004 */  sw         $zero, 4($v0)
/* DC5888 80104268 8C620000 */  lw         $v0, ($v1)
/* DC588C 8010426C 3C18BA00 */  lui        $t8, 0xba00
/* DC5890 80104270 37180E02 */  ori        $t8, $t8, 0xe02
/* DC5894 80104274 244F0008 */  addiu      $t7, $v0, 8
/* DC5898 80104278 AC6F0000 */  sw         $t7, ($v1)
/* DC589C 8010427C 34198000 */  ori        $t9, $zero, 0x8000
/* DC58A0 80104280 AC590004 */  sw         $t9, 4($v0)
/* DC58A4 80104284 AC580000 */  sw         $t8, ($v0)
/* DC58A8 80104288 8C620000 */  lw         $v0, ($v1)
/* DC58AC 8010428C 3C188016 */  lui        $t8, %hi(D_80164E18)
/* DC58B0 80104290 27184E18 */  addiu      $t8, $t8, %lo(D_80164E18)
/* DC58B4 80104294 244E0008 */  addiu      $t6, $v0, 8
/* DC58B8 80104298 AC6E0000 */  sw         $t6, ($v1)
/* DC58BC 8010429C 3C0FFD10 */  lui        $t7, 0xfd10
/* DC58C0 801042A0 AC4F0000 */  sw         $t7, ($v0)
/* DC58C4 801042A4 AC580004 */  sw         $t8, 4($v0)
/* DC58C8 801042A8 8C620000 */  lw         $v0, ($v1)
/* DC58CC 801042AC 3C0EE800 */  lui        $t6, 0xe800
/* DC58D0 801042B0 3C18F500 */  lui        $t8, 0xf500
/* DC58D4 801042B4 24590008 */  addiu      $t9, $v0, 8
/* DC58D8 801042B8 AC790000 */  sw         $t9, ($v1)
/* DC58DC 801042BC AC400004 */  sw         $zero, 4($v0)
/* DC58E0 801042C0 AC4E0000 */  sw         $t6, ($v0)
/* DC58E4 801042C4 8C620000 */  lw         $v0, ($v1)
/* DC58E8 801042C8 3C150700 */  lui        $s5, 0x700
/* DC58EC 801042CC 37180100 */  ori        $t8, $t8, 0x100
/* DC58F0 801042D0 244F0008 */  addiu      $t7, $v0, 8
/* DC58F4 801042D4 AC6F0000 */  sw         $t7, ($v1)
/* DC58F8 801042D8 AC550004 */  sw         $s5, 4($v0)
/* DC58FC 801042DC AC580000 */  sw         $t8, ($v0)
/* DC5900 801042E0 8C620000 */  lw         $v0, ($v1)
/* DC5904 801042E4 3C16E600 */  lui        $s6, 0xe600
/* DC5908 801042E8 3C180703 */  lui        $t8, 0x703
/* DC590C 801042EC 24590008 */  addiu      $t9, $v0, 8
/* DC5910 801042F0 AC790000 */  sw         $t9, ($v1)
/* DC5914 801042F4 AC400004 */  sw         $zero, 4($v0)
/* DC5918 801042F8 AC560000 */  sw         $s6, ($v0)
/* DC591C 801042FC 8C620000 */  lw         $v0, ($v1)
/* DC5920 80104300 3718C000 */  ori        $t8, $t8, 0xc000
/* DC5924 80104304 3C0FF000 */  lui        $t7, 0xf000
/* DC5928 80104308 244E0008 */  addiu      $t6, $v0, 8
/* DC592C 8010430C AC6E0000 */  sw         $t6, ($v1)
/* DC5930 80104310 AC580004 */  sw         $t8, 4($v0)
/* DC5934 80104314 AC4F0000 */  sw         $t7, ($v0)
/* DC5938 80104318 8C620000 */  lw         $v0, ($v1)
/* DC593C 8010431C 3C0E8016 */  lui        $t6, %hi(D_80163638)
/* DC5940 80104320 25CE3638 */  addiu      $t6, $t6, %lo(D_80163638)
/* DC5944 80104324 24590008 */  addiu      $t9, $v0, 8
/* DC5948 80104328 AC790000 */  sw         $t9, ($v1)
/* DC594C 8010432C AC400004 */  sw         $zero, 4($v0)
/* DC5950 80104330 AC540000 */  sw         $s4, ($v0)
/* DC5954 80104334 AFAE0034 */  sw         $t6, 0x34($sp)
/* DC5958 80104338 24100011 */  addiu      $s0, $zero, 0x11
/* DC595C 8010433C 00009025 */  or         $s2, $zero, $zero
/* DC5960 80104340 2413002E */  addiu      $s3, $zero, 0x2e
/* DC5964 80104344 3C17F400 */  lui        $s7, 0xf400
/* DC5968 80104348 3C1EF200 */  lui        $fp, 0xf200
/* DC596C 8010434C 3C1FB400 */  lui        $ra, 0xb400
/* DC5970 80104350 240C0040 */  addiu      $t4, $zero, 0x40
.L80104354:
/* DC5974 80104354 8C620000 */  lw         $v0, ($v1)
/* DC5978 80104358 3C18FD48 */  lui        $t8, 0xfd48
/* DC597C 8010435C 37180037 */  ori        $t8, $t8, 0x37
/* DC5980 80104360 244F0008 */  addiu      $t7, $v0, 8
/* DC5984 80104364 AC6F0000 */  sw         $t7, ($v1)
/* DC5988 80104368 AC580000 */  sw         $t8, ($v0)
/* DC598C 8010436C 8FB90034 */  lw         $t9, 0x34($sp)
/* DC5990 80104370 3C0FF548 */  lui        $t7, 0xf548
/* DC5994 80104374 35EF0E00 */  ori        $t7, $t7, 0xe00
/* DC5998 80104378 AC590004 */  sw         $t9, 4($v0)
/* DC599C 8010437C 8C620000 */  lw         $v0, ($v1)
/* DC59A0 80104380 00126880 */  sll        $t5, $s2, 2
/* DC59A4 80104384 00104080 */  sll        $t0, $s0, 2
/* DC59A8 80104388 244E0008 */  addiu      $t6, $v0, 8
/* DC59AC 8010438C AC6E0000 */  sw         $t6, ($v1)
/* DC59B0 80104390 AC550004 */  sw         $s5, 4($v0)
/* DC59B4 80104394 AC4F0000 */  sw         $t7, ($v0)
/* DC59B8 80104398 8C620000 */  lw         $v0, ($v1)
/* DC59BC 8010439C 31AE0FFF */  andi       $t6, $t5, 0xfff
/* DC59C0 801043A0 3C01070E */  lui        $at, 0x70e
/* DC59C4 801043A4 24580008 */  addiu      $t8, $v0, 8
/* DC59C8 801043A8 AC780000 */  sw         $t8, ($v1)
/* DC59CC 801043AC AC400004 */  sw         $zero, 4($v0)
/* DC59D0 801043B0 AC560000 */  sw         $s6, ($v0)
/* DC59D4 801043B4 8C620000 */  lw         $v0, ($v1)
/* DC59D8 801043B8 31180FFF */  andi       $t8, $t0, 0xfff
/* DC59DC 801043BC 01D77825 */  or         $t7, $t6, $s7
/* DC59E0 801043C0 24590008 */  addiu      $t9, $v0, 8
/* DC59E4 801043C4 AC790000 */  sw         $t9, ($v1)
/* DC59E8 801043C8 0301C825 */  or         $t9, $t8, $at
/* DC59EC 801043CC AC590004 */  sw         $t9, 4($v0)
/* DC59F0 801043D0 AC4F0000 */  sw         $t7, ($v0)
/* DC59F4 801043D4 8C620000 */  lw         $v0, ($v1)
/* DC59F8 801043D8 01C06825 */  or         $t5, $t6, $zero
/* DC59FC 801043DC 03004025 */  or         $t0, $t8, $zero
/* DC5A00 801043E0 244E0008 */  addiu      $t6, $v0, 8
/* DC5A04 801043E4 AC6E0000 */  sw         $t6, ($v1)
/* DC5A08 801043E8 AC400004 */  sw         $zero, 4($v0)
/* DC5A0C 801043EC AC540000 */  sw         $s4, ($v0)
/* DC5A10 801043F0 8C620000 */  lw         $v0, ($v1)
/* DC5A14 801043F4 3C18F540 */  lui        $t8, 0xf540
/* DC5A18 801043F8 37180E00 */  ori        $t8, $t8, 0xe00
/* DC5A1C 801043FC 244F0008 */  addiu      $t7, $v0, 8
/* DC5A20 80104400 AC6F0000 */  sw         $t7, ($v1)
/* DC5A24 80104404 AC400004 */  sw         $zero, 4($v0)
/* DC5A28 80104408 AC580000 */  sw         $t8, ($v0)
/* DC5A2C 8010440C 8C620000 */  lw         $v0, ($v1)
/* DC5A30 80104410 3C01001C */  lui        $at, 0x1c
/* DC5A34 80104414 01017825 */  or         $t7, $t0, $at
/* DC5A38 80104418 24590008 */  addiu      $t9, $v0, 8
/* DC5A3C 8010441C AC790000 */  sw         $t9, ($v1)
/* DC5A40 80104420 01BE7025 */  or         $t6, $t5, $fp
/* DC5A44 80104424 AC4E0000 */  sw         $t6, ($v0)
/* DC5A48 80104428 AC4F0004 */  sw         $t7, 4($v0)
/* DC5A4C 8010442C 8C620000 */  lw         $v0, ($v1)
/* DC5A50 80104430 000CC880 */  sll        $t9, $t4, 2
/* DC5A54 80104434 3C01E436 */  lui        $at, 0xe436
/* DC5A58 80104438 34218000 */  ori        $at, $at, 0x8000
/* DC5A5C 8010443C 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC5A60 80104440 24580008 */  addiu      $t8, $v0, 8
/* DC5A64 80104444 AC780000 */  sw         $t8, ($v1)
/* DC5A68 80104448 01C17825 */  or         $t7, $t6, $at
/* DC5A6C 8010444C 3C01001A */  lui        $at, 0x1a
/* DC5A70 80104450 0013C080 */  sll        $t8, $s3, 2
/* DC5A74 80104454 33190FFF */  andi       $t9, $t8, 0xfff
/* DC5A78 80104458 3421C000 */  ori        $at, $at, 0xc000
/* DC5A7C 8010445C 03217025 */  or         $t6, $t9, $at
/* DC5A80 80104460 AC4E0004 */  sw         $t6, 4($v0)
/* DC5A84 80104464 AC4F0000 */  sw         $t7, ($v0)
/* DC5A88 80104468 8C620000 */  lw         $v0, ($v1)
/* DC5A8C 8010446C 0012C140 */  sll        $t8, $s2, 5
/* DC5A90 80104470 3319FFFF */  andi       $t9, $t8, 0xffff
/* DC5A94 80104474 244F0008 */  addiu      $t7, $v0, 8
/* DC5A98 80104478 AC6F0000 */  sw         $t7, ($v1)
/* DC5A9C 8010447C AC590004 */  sw         $t9, 4($v0)
/* DC5AA0 80104480 AC5F0000 */  sw         $ra, ($v0)
/* DC5AA4 80104484 8C620000 */  lw         $v0, ($v1)
/* DC5AA8 80104488 258C0012 */  addiu      $t4, $t4, 0x12
/* DC5AAC 8010448C 3C180400 */  lui        $t8, 0x400
/* DC5AB0 80104490 244E0008 */  addiu      $t6, $v0, 8
/* DC5AB4 80104494 298100AC */  slti       $at, $t4, 0xac
/* DC5AB8 80104498 AC6E0000 */  sw         $t6, ($v1)
/* DC5ABC 8010449C 37180400 */  ori        $t8, $t8, 0x400
/* DC5AC0 801044A0 3C0FB300 */  lui        $t7, 0xb300
/* DC5AC4 801044A4 26520012 */  addiu      $s2, $s2, 0x12
/* DC5AC8 801044A8 26730012 */  addiu      $s3, $s3, 0x12
/* DC5ACC 801044AC 26100012 */  addiu      $s0, $s0, 0x12
/* DC5AD0 801044B0 AC4F0000 */  sw         $t7, ($v0)
/* DC5AD4 801044B4 1420FFA7 */  bnez       $at, .L80104354
/* DC5AD8 801044B8 AC580004 */   sw        $t8, 4($v0)
/* DC5ADC 801044BC 8C620000 */  lw         $v0, ($v1)
/* DC5AE0 801044C0 3C0EFD48 */  lui        $t6, 0xfd48
/* DC5AE4 801044C4 35CE0037 */  ori        $t6, $t6, 0x37
/* DC5AE8 801044C8 24590008 */  addiu      $t9, $v0, 8
/* DC5AEC 801044CC AC790000 */  sw         $t9, ($v1)
/* DC5AF0 801044D0 AC4E0000 */  sw         $t6, ($v0)
/* DC5AF4 801044D4 8FAF0034 */  lw         $t7, 0x34($sp)
/* DC5AF8 801044D8 3C19F548 */  lui        $t9, 0xf548
/* DC5AFC 801044DC 37390E00 */  ori        $t9, $t9, 0xe00
/* DC5B00 801044E0 AC4F0004 */  sw         $t7, 4($v0)
/* DC5B04 801044E4 8C620000 */  lw         $v0, ($v1)
/* DC5B08 801044E8 00126880 */  sll        $t5, $s2, 2
/* DC5B0C 801044EC 26480001 */  addiu      $t0, $s2, 1
/* DC5B10 801044F0 24580008 */  addiu      $t8, $v0, 8
/* DC5B14 801044F4 AC780000 */  sw         $t8, ($v1)
/* DC5B18 801044F8 AC550004 */  sw         $s5, 4($v0)
/* DC5B1C 801044FC AC590000 */  sw         $t9, ($v0)
/* DC5B20 80104500 8C620000 */  lw         $v0, ($v1)
/* DC5B24 80104504 31B80FFF */  andi       $t8, $t5, 0xfff
/* DC5B28 80104508 03006825 */  or         $t5, $t8, $zero
/* DC5B2C 8010450C 244E0008 */  addiu      $t6, $v0, 8
/* DC5B30 80104510 AC6E0000 */  sw         $t6, ($v1)
/* DC5B34 80104514 AC400004 */  sw         $zero, 4($v0)
/* DC5B38 80104518 AC560000 */  sw         $s6, ($v0)
/* DC5B3C 8010451C 8C620000 */  lw         $v0, ($v1)
/* DC5B40 80104520 00087080 */  sll        $t6, $t0, 2
/* DC5B44 80104524 31C80FFF */  andi       $t0, $t6, 0xfff
/* DC5B48 80104528 244F0008 */  addiu      $t7, $v0, 8
/* DC5B4C 8010452C AC6F0000 */  sw         $t7, ($v1)
/* DC5B50 80104530 0317C825 */  or         $t9, $t8, $s7
/* DC5B54 80104534 3C01070E */  lui        $at, 0x70e
/* DC5B58 80104538 0101C025 */  or         $t8, $t0, $at
/* DC5B5C 8010453C AC580004 */  sw         $t8, 4($v0)
/* DC5B60 80104540 AC590000 */  sw         $t9, ($v0)
/* DC5B64 80104544 8C620000 */  lw         $v0, ($v1)
/* DC5B68 80104548 3C0FF540 */  lui        $t7, 0xf540
/* DC5B6C 8010454C 35EF0E00 */  ori        $t7, $t7, 0xe00
/* DC5B70 80104550 24590008 */  addiu      $t9, $v0, 8
/* DC5B74 80104554 AC790000 */  sw         $t9, ($v1)
/* DC5B78 80104558 AC400004 */  sw         $zero, 4($v0)
/* DC5B7C 8010455C AC540000 */  sw         $s4, ($v0)
/* DC5B80 80104560 8C620000 */  lw         $v0, ($v1)
/* DC5B84 80104564 3C01001C */  lui        $at, 0x1c
/* DC5B88 80104568 01BEC825 */  or         $t9, $t5, $fp
/* DC5B8C 8010456C 244E0008 */  addiu      $t6, $v0, 8
/* DC5B90 80104570 AC6E0000 */  sw         $t6, ($v1)
/* DC5B94 80104574 AC400004 */  sw         $zero, 4($v0)
/* DC5B98 80104578 AC4F0000 */  sw         $t7, ($v0)
/* DC5B9C 8010457C 8C620000 */  lw         $v0, ($v1)
/* DC5BA0 80104580 01017025 */  or         $t6, $t0, $at
/* DC5BA4 80104584 3C01E436 */  lui        $at, 0xe436
/* DC5BA8 80104588 24580008 */  addiu      $t8, $v0, 8
/* DC5BAC 8010458C AC780000 */  sw         $t8, ($v1)
/* DC5BB0 80104590 AC4E0004 */  sw         $t6, 4($v0)
/* DC5BB4 80104594 AC590000 */  sw         $t9, ($v0)
/* DC5BB8 80104598 8C620000 */  lw         $v0, ($v1)
/* DC5BBC 8010459C 26780001 */  addiu      $t8, $s3, 1
/* DC5BC0 801045A0 0018C880 */  sll        $t9, $t8, 2
/* DC5BC4 801045A4 244F0008 */  addiu      $t7, $v0, 8
/* DC5BC8 801045A8 AC6F0000 */  sw         $t7, ($v1)
/* DC5BCC 801045AC 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC5BD0 801045B0 3421C000 */  ori        $at, $at, 0xc000
/* DC5BD4 801045B4 01C17825 */  or         $t7, $t6, $at
/* DC5BD8 801045B8 3C01001A */  lui        $at, 0x1a
/* DC5BDC 801045BC 0013C080 */  sll        $t8, $s3, 2
/* DC5BE0 801045C0 33190FFF */  andi       $t9, $t8, 0xfff
/* DC5BE4 801045C4 3421C000 */  ori        $at, $at, 0xc000
/* DC5BE8 801045C8 03217025 */  or         $t6, $t9, $at
/* DC5BEC 801045CC AC4E0004 */  sw         $t6, 4($v0)
/* DC5BF0 801045D0 AC4F0000 */  sw         $t7, ($v0)
/* DC5BF4 801045D4 8C620000 */  lw         $v0, ($v1)
/* DC5BF8 801045D8 0012C140 */  sll        $t8, $s2, 5
/* DC5BFC 801045DC 3319FFFF */  andi       $t9, $t8, 0xffff
/* DC5C00 801045E0 244F0008 */  addiu      $t7, $v0, 8
/* DC5C04 801045E4 AC6F0000 */  sw         $t7, ($v1)
/* DC5C08 801045E8 AC590004 */  sw         $t9, 4($v0)
/* DC5C0C 801045EC AC5F0000 */  sw         $ra, ($v0)
/* DC5C10 801045F0 8C620000 */  lw         $v0, ($v1)
/* DC5C14 801045F4 3C180400 */  lui        $t8, 0x400
/* DC5C18 801045F8 37180400 */  ori        $t8, $t8, 0x400
/* DC5C1C 801045FC 244E0008 */  addiu      $t6, $v0, 8
/* DC5C20 80104600 AC6E0000 */  sw         $t6, ($v1)
/* DC5C24 80104604 3C0FB300 */  lui        $t7, 0xb300
/* DC5C28 80104608 AC4F0000 */  sw         $t7, ($v0)
/* DC5C2C 8010460C AC580004 */  sw         $t8, 4($v0)
/* DC5C30 80104610 8C620000 */  lw         $v0, ($v1)
/* DC5C34 80104614 3C188016 */  lui        $t8, %hi(D_80165FE8)
/* DC5C38 80104618 27185FE8 */  addiu      $t8, $t8, %lo(D_80165FE8)
/* DC5C3C 8010461C 24590008 */  addiu      $t9, $v0, 8
/* DC5C40 80104620 AC790000 */  sw         $t9, ($v1)
/* DC5C44 80104624 AC400004 */  sw         $zero, 4($v0)
/* DC5C48 80104628 AC540000 */  sw         $s4, ($v0)
/* DC5C4C 8010462C 8C620000 */  lw         $v0, ($v1)
/* DC5C50 80104630 3C0FFD10 */  lui        $t7, 0xfd10
/* DC5C54 80104634 241200A2 */  addiu      $s2, $zero, 0xa2
/* DC5C58 80104638 244E0008 */  addiu      $t6, $v0, 8
/* DC5C5C 8010463C AC6E0000 */  sw         $t6, ($v1)
/* DC5C60 80104640 AC580004 */  sw         $t8, 4($v0)
/* DC5C64 80104644 AC4F0000 */  sw         $t7, ($v0)
/* DC5C68 80104648 8C620000 */  lw         $v0, ($v1)
/* DC5C6C 8010464C 3C0EE800 */  lui        $t6, 0xe800
/* DC5C70 80104650 3C18F500 */  lui        $t8, 0xf500
/* DC5C74 80104654 24590008 */  addiu      $t9, $v0, 8
/* DC5C78 80104658 AC790000 */  sw         $t9, ($v1)
/* DC5C7C 8010465C AC400004 */  sw         $zero, 4($v0)
/* DC5C80 80104660 AC4E0000 */  sw         $t6, ($v0)
/* DC5C84 80104664 8C620000 */  lw         $v0, ($v1)
/* DC5C88 80104668 37180100 */  ori        $t8, $t8, 0x100
/* DC5C8C 8010466C 00006825 */  or         $t5, $zero, $zero
/* DC5C90 80104670 244F0008 */  addiu      $t7, $v0, 8
/* DC5C94 80104674 AC6F0000 */  sw         $t7, ($v1)
/* DC5C98 80104678 AC550004 */  sw         $s5, 4($v0)
/* DC5C9C 8010467C AC580000 */  sw         $t8, ($v0)
/* DC5CA0 80104680 8C620000 */  lw         $v0, ($v1)
/* DC5CA4 80104684 3C180703 */  lui        $t8, 0x703
/* DC5CA8 80104688 3718C000 */  ori        $t8, $t8, 0xc000
/* DC5CAC 8010468C 24590008 */  addiu      $t9, $v0, 8
/* DC5CB0 80104690 AC790000 */  sw         $t9, ($v1)
/* DC5CB4 80104694 AC400004 */  sw         $zero, 4($v0)
/* DC5CB8 80104698 AC560000 */  sw         $s6, ($v0)
/* DC5CBC 8010469C 8C620000 */  lw         $v0, ($v1)
/* DC5CC0 801046A0 3C0FF000 */  lui        $t7, 0xf000
/* DC5CC4 801046A4 24110014 */  addiu      $s1, $zero, 0x14
/* DC5CC8 801046A8 244E0008 */  addiu      $t6, $v0, 8
/* DC5CCC 801046AC AC6E0000 */  sw         $t6, ($v1)
/* DC5CD0 801046B0 AC580004 */  sw         $t8, 4($v0)
/* DC5CD4 801046B4 AC4F0000 */  sw         $t7, ($v0)
/* DC5CD8 801046B8 8C620000 */  lw         $v0, ($v1)
/* DC5CDC 801046BC 3C0E8016 */  lui        $t6, %hi(D_80165020)
/* DC5CE0 801046C0 25CE5020 */  addiu      $t6, $t6, %lo(D_80165020)
/* DC5CE4 801046C4 24590008 */  addiu      $t9, $v0, 8
/* DC5CE8 801046C8 AC790000 */  sw         $t9, ($v1)
/* DC5CEC 801046CC AC400004 */  sw         $zero, 4($v0)
/* DC5CF0 801046D0 AC540000 */  sw         $s4, ($v0)
/* DC5CF4 801046D4 AFAE0034 */  sw         $t6, 0x34($sp)
/* DC5CF8 801046D8 241000B7 */  addiu      $s0, $zero, 0xb7
.L801046DC:
/* DC5CFC 801046DC 8C620000 */  lw         $v0, ($v1)
/* DC5D00 801046E0 3C18FD48 */  lui        $t8, 0xfd48
/* DC5D04 801046E4 3718005F */  ori        $t8, $t8, 0x5f
/* DC5D08 801046E8 244F0008 */  addiu      $t7, $v0, 8
/* DC5D0C 801046EC AC6F0000 */  sw         $t7, ($v1)
/* DC5D10 801046F0 AC580000 */  sw         $t8, ($v0)
/* DC5D14 801046F4 8FB90034 */  lw         $t9, 0x34($sp)
/* DC5D18 801046F8 3C0FF548 */  lui        $t7, 0xf548
/* DC5D1C 801046FC 35EF1800 */  ori        $t7, $t7, 0x1800
/* DC5D20 80104700 AC590004 */  sw         $t9, 4($v0)
/* DC5D24 80104704 8C620000 */  lw         $v0, ($v1)
/* DC5D28 80104708 000D4080 */  sll        $t0, $t5, 2
/* DC5D2C 8010470C 00114880 */  sll        $t1, $s1, 2
/* DC5D30 80104710 244E0008 */  addiu      $t6, $v0, 8
/* DC5D34 80104714 AC6E0000 */  sw         $t6, ($v1)
/* DC5D38 80104718 AC550004 */  sw         $s5, 4($v0)
/* DC5D3C 8010471C AC4F0000 */  sw         $t7, ($v0)
/* DC5D40 80104720 8C620000 */  lw         $v0, ($v1)
/* DC5D44 80104724 310E0FFF */  andi       $t6, $t0, 0xfff
/* DC5D48 80104728 3C010718 */  lui        $at, 0x718
/* DC5D4C 8010472C 24580008 */  addiu      $t8, $v0, 8
/* DC5D50 80104730 AC780000 */  sw         $t8, ($v1)
/* DC5D54 80104734 AC400004 */  sw         $zero, 4($v0)
/* DC5D58 80104738 AC560000 */  sw         $s6, ($v0)
/* DC5D5C 8010473C 8C620000 */  lw         $v0, ($v1)
/* DC5D60 80104740 31380FFF */  andi       $t8, $t1, 0xfff
/* DC5D64 80104744 01D77825 */  or         $t7, $t6, $s7
/* DC5D68 80104748 24590008 */  addiu      $t9, $v0, 8
/* DC5D6C 8010474C AC790000 */  sw         $t9, ($v1)
/* DC5D70 80104750 0301C825 */  or         $t9, $t8, $at
/* DC5D74 80104754 AC590004 */  sw         $t9, 4($v0)
/* DC5D78 80104758 AC4F0000 */  sw         $t7, ($v0)
/* DC5D7C 8010475C 8C620000 */  lw         $v0, ($v1)
/* DC5D80 80104760 01C04025 */  or         $t0, $t6, $zero
/* DC5D84 80104764 03004825 */  or         $t1, $t8, $zero
/* DC5D88 80104768 244E0008 */  addiu      $t6, $v0, 8
/* DC5D8C 8010476C AC6E0000 */  sw         $t6, ($v1)
/* DC5D90 80104770 AC400004 */  sw         $zero, 4($v0)
/* DC5D94 80104774 AC540000 */  sw         $s4, ($v0)
/* DC5D98 80104778 8C620000 */  lw         $v0, ($v1)
/* DC5D9C 8010477C 3C18F540 */  lui        $t8, 0xf540
/* DC5DA0 80104780 37181800 */  ori        $t8, $t8, 0x1800
/* DC5DA4 80104784 244F0008 */  addiu      $t7, $v0, 8
/* DC5DA8 80104788 AC6F0000 */  sw         $t7, ($v1)
/* DC5DAC 8010478C AC400004 */  sw         $zero, 4($v0)
/* DC5DB0 80104790 AC580000 */  sw         $t8, ($v0)
/* DC5DB4 80104794 8C620000 */  lw         $v0, ($v1)
/* DC5DB8 80104798 3C010030 */  lui        $at, 0x30
/* DC5DBC 8010479C 01217825 */  or         $t7, $t1, $at
/* DC5DC0 801047A0 24590008 */  addiu      $t9, $v0, 8
/* DC5DC4 801047A4 AC790000 */  sw         $t9, ($v1)
/* DC5DC8 801047A8 011E7025 */  or         $t6, $t0, $fp
/* DC5DCC 801047AC AC4E0000 */  sw         $t6, ($v0)
/* DC5DD0 801047B0 AC4F0004 */  sw         $t7, 4($v0)
/* DC5DD4 801047B4 8C620000 */  lw         $v0, ($v1)
/* DC5DD8 801047B8 0010C880 */  sll        $t9, $s0, 2
/* DC5DDC 801047BC 3C01E441 */  lui        $at, 0xe441
/* DC5DE0 801047C0 34214000 */  ori        $at, $at, 0x4000
/* DC5DE4 801047C4 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC5DE8 801047C8 24580008 */  addiu      $t8, $v0, 8
/* DC5DEC 801047CC AC780000 */  sw         $t8, ($v1)
/* DC5DF0 801047D0 01C17825 */  or         $t7, $t6, $at
/* DC5DF4 801047D4 3C010011 */  lui        $at, 0x11
/* DC5DF8 801047D8 0012C080 */  sll        $t8, $s2, 2
/* DC5DFC 801047DC 33190FFF */  andi       $t9, $t8, 0xfff
/* DC5E00 801047E0 34214000 */  ori        $at, $at, 0x4000
/* DC5E04 801047E4 03217025 */  or         $t6, $t9, $at
/* DC5E08 801047E8 AC4E0004 */  sw         $t6, 4($v0)
/* DC5E0C 801047EC AC4F0000 */  sw         $t7, ($v0)
/* DC5E10 801047F0 8C620000 */  lw         $v0, ($v1)
/* DC5E14 801047F4 000DC140 */  sll        $t8, $t5, 5
/* DC5E18 801047F8 3319FFFF */  andi       $t9, $t8, 0xffff
/* DC5E1C 801047FC 244F0008 */  addiu      $t7, $v0, 8
/* DC5E20 80104800 AC6F0000 */  sw         $t7, ($v1)
/* DC5E24 80104804 AC590004 */  sw         $t9, 4($v0)
/* DC5E28 80104808 AC5F0000 */  sw         $ra, ($v0)
/* DC5E2C 8010480C 8C620000 */  lw         $v0, ($v1)
/* DC5E30 80104810 3C180400 */  lui        $t8, 0x400
/* DC5E34 80104814 240100E1 */  addiu      $at, $zero, 0xe1
/* DC5E38 80104818 244E0008 */  addiu      $t6, $v0, 8
/* DC5E3C 8010481C 26100015 */  addiu      $s0, $s0, 0x15
/* DC5E40 80104820 AC6E0000 */  sw         $t6, ($v1)
/* DC5E44 80104824 37180400 */  ori        $t8, $t8, 0x400
/* DC5E48 80104828 3C0FB300 */  lui        $t7, 0xb300
/* DC5E4C 8010482C 25AD0015 */  addiu      $t5, $t5, 0x15
/* DC5E50 80104830 26520015 */  addiu      $s2, $s2, 0x15
/* DC5E54 80104834 26310015 */  addiu      $s1, $s1, 0x15
/* DC5E58 80104838 AC4F0000 */  sw         $t7, ($v0)
/* DC5E5C 8010483C 1601FFA7 */  bne        $s0, $at, .L801046DC
/* DC5E60 80104840 AC580004 */   sw        $t8, 4($v0)
/* DC5E64 80104844 8FBF002C */  lw         $ra, 0x2c($sp)
/* DC5E68 80104848 8FB00008 */  lw         $s0, 8($sp)
/* DC5E6C 8010484C 8FB1000C */  lw         $s1, 0xc($sp)
/* DC5E70 80104850 8FB20010 */  lw         $s2, 0x10($sp)
/* DC5E74 80104854 8FB30014 */  lw         $s3, 0x14($sp)
/* DC5E78 80104858 8FB40018 */  lw         $s4, 0x18($sp)
/* DC5E7C 8010485C 8FB5001C */  lw         $s5, 0x1c($sp)
/* DC5E80 80104860 8FB60020 */  lw         $s6, 0x20($sp)
/* DC5E84 80104864 8FB70024 */  lw         $s7, 0x24($sp)
/* DC5E88 80104868 8FBE0028 */  lw         $fp, 0x28($sp)
/* DC5E8C 8010486C 03E00008 */  jr         $ra
/* DC5E90 80104870 27BD00F8 */   addiu     $sp, $sp, 0xf8
