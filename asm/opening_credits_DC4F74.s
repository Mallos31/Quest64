.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80103954
/* DC4F74 80103954 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* DC4F78 80103958 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC4F7C 8010395C 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC4F80 80103960 8C620000 */  lw         $v0, ($v1)
/* DC4F84 80103964 AFB30014 */  sw         $s3, 0x14($sp)
/* DC4F88 80103968 AFBF002C */  sw         $ra, 0x2c($sp)
/* DC4F8C 8010396C 244E0008 */  addiu      $t6, $v0, 8
/* DC4F90 80103970 AFBE0028 */  sw         $fp, 0x28($sp)
/* DC4F94 80103974 AFB70024 */  sw         $s7, 0x24($sp)
/* DC4F98 80103978 AFB60020 */  sw         $s6, 0x20($sp)
/* DC4F9C 8010397C AFB5001C */  sw         $s5, 0x1c($sp)
/* DC4FA0 80103980 AFB40018 */  sw         $s4, 0x18($sp)
/* DC4FA4 80103984 AFB20010 */  sw         $s2, 0x10($sp)
/* DC4FA8 80103988 AFB1000C */  sw         $s1, 0xc($sp)
/* DC4FAC 8010398C AFB00008 */  sw         $s0, 8($sp)
/* DC4FB0 80103990 AC6E0000 */  sw         $t6, ($v1)
/* DC4FB4 80103994 3C13E700 */  lui        $s3, 0xe700
/* DC4FB8 80103998 AC530000 */  sw         $s3, ($v0)
/* DC4FBC 8010399C AC400004 */  sw         $zero, 4($v0)
/* DC4FC0 801039A0 8C620000 */  lw         $v0, ($v1)
/* DC4FC4 801039A4 3C18BA00 */  lui        $t8, 0xba00
/* DC4FC8 801039A8 37180E02 */  ori        $t8, $t8, 0xe02
/* DC4FCC 801039AC 244F0008 */  addiu      $t7, $v0, 8
/* DC4FD0 801039B0 AC6F0000 */  sw         $t7, ($v1)
/* DC4FD4 801039B4 34198000 */  ori        $t9, $zero, 0x8000
/* DC4FD8 801039B8 AC590004 */  sw         $t9, 4($v0)
/* DC4FDC 801039BC AC580000 */  sw         $t8, ($v0)
/* DC4FE0 801039C0 8C620000 */  lw         $v0, ($v1)
/* DC4FE4 801039C4 3C188016 */  lui        $t8, %hi(D_801621F8)
/* DC4FE8 801039C8 271821F8 */  addiu      $t8, $t8, %lo(D_801621F8)
/* DC4FEC 801039CC 244E0008 */  addiu      $t6, $v0, 8
/* DC4FF0 801039D0 AC6E0000 */  sw         $t6, ($v1)
/* DC4FF4 801039D4 3C0FFD10 */  lui        $t7, 0xfd10
/* DC4FF8 801039D8 AC4F0000 */  sw         $t7, ($v0)
/* DC4FFC 801039DC AC580004 */  sw         $t8, 4($v0)
/* DC5000 801039E0 8C620000 */  lw         $v0, ($v1)
/* DC5004 801039E4 3C0EE800 */  lui        $t6, 0xe800
/* DC5008 801039E8 3C18F500 */  lui        $t8, 0xf500
/* DC500C 801039EC 24590008 */  addiu      $t9, $v0, 8
/* DC5010 801039F0 AC790000 */  sw         $t9, ($v1)
/* DC5014 801039F4 AC400004 */  sw         $zero, 4($v0)
/* DC5018 801039F8 AC4E0000 */  sw         $t6, ($v0)
/* DC501C 801039FC 8C620000 */  lw         $v0, ($v1)
/* DC5020 80103A00 3C110700 */  lui        $s1, 0x700
/* DC5024 80103A04 37180100 */  ori        $t8, $t8, 0x100
/* DC5028 80103A08 244F0008 */  addiu      $t7, $v0, 8
/* DC502C 80103A0C AC6F0000 */  sw         $t7, ($v1)
/* DC5030 80103A10 AC510004 */  sw         $s1, 4($v0)
/* DC5034 80103A14 AC580000 */  sw         $t8, ($v0)
/* DC5038 80103A18 8C620000 */  lw         $v0, ($v1)
/* DC503C 80103A1C 3C14E600 */  lui        $s4, 0xe600
/* DC5040 80103A20 3C180703 */  lui        $t8, 0x703
/* DC5044 80103A24 24590008 */  addiu      $t9, $v0, 8
/* DC5048 80103A28 AC790000 */  sw         $t9, ($v1)
/* DC504C 80103A2C AC400004 */  sw         $zero, 4($v0)
/* DC5050 80103A30 AC540000 */  sw         $s4, ($v0)
/* DC5054 80103A34 8C620000 */  lw         $v0, ($v1)
/* DC5058 80103A38 3718C000 */  ori        $t8, $t8, 0xc000
/* DC505C 80103A3C 3C0FF000 */  lui        $t7, 0xf000
/* DC5060 80103A40 244E0008 */  addiu      $t6, $v0, 8
/* DC5064 80103A44 AC6E0000 */  sw         $t6, ($v1)
/* DC5068 80103A48 AC580004 */  sw         $t8, 4($v0)
/* DC506C 80103A4C AC4F0000 */  sw         $t7, ($v0)
/* DC5070 80103A50 8C620000 */  lw         $v0, ($v1)
/* DC5074 80103A54 3C128016 */  lui        $s2, 0x8016
/* DC5078 80103A58 3C15FD48 */  lui        $s5, 0xfd48
/* DC507C 80103A5C 24590008 */  addiu      $t9, $v0, 8
/* DC5080 80103A60 AC790000 */  sw         $t9, ($v1)
/* DC5084 80103A64 00002025 */  or         $a0, $zero, $zero
/* DC5088 80103A68 240C0008 */  addiu      $t4, $zero, 8
/* DC508C 80103A6C 36B50057 */  ori        $s5, $s5, 0x57
/* DC5090 80103A70 26520250 */  addiu      $s2, $s2, 0x250
/* DC5094 80103A74 3C16F548 */  lui        $s6, 0xf548
/* DC5098 80103A78 3C17F400 */  lui        $s7, 0xf400
/* DC509C 80103A7C 3C1EF540 */  lui        $fp, 0xf540
/* DC50A0 80103A80 3C1FF200 */  lui        $ra, 0xf200
/* DC50A4 80103A84 AC400004 */  sw         $zero, 4($v0)
/* DC50A8 80103A88 AC530000 */  sw         $s3, ($v0)
.L80103A8C:
/* DC50AC 80103A8C 8C620000 */  lw         $v0, ($v1)
/* DC50B0 80103A90 00843823 */  subu       $a3, $a0, $a0
/* DC50B4 80103A94 24E70014 */  addiu      $a3, $a3, 0x14
/* DC50B8 80103A98 244E0008 */  addiu      $t6, $v0, 8
/* DC50BC 80103A9C AC6E0000 */  sw         $t6, ($v1)
/* DC50C0 80103AA0 AC520004 */  sw         $s2, 4($v0)
/* DC50C4 80103AA4 AC550000 */  sw         $s5, ($v0)
/* DC50C8 80103AA8 8C620000 */  lw         $v0, ($v1)
/* DC50CC 80103AAC 0007C043 */  sra        $t8, $a3, 1
/* DC50D0 80103AB0 27070007 */  addiu      $a3, $t8, 7
/* DC50D4 80103AB4 0007C8C3 */  sra        $t9, $a3, 3
/* DC50D8 80103AB8 332E01FF */  andi       $t6, $t9, 0x1ff
/* DC50DC 80103ABC 244F0008 */  addiu      $t7, $v0, 8
/* DC50E0 80103AC0 AC6F0000 */  sw         $t7, ($v1)
/* DC50E4 80103AC4 000E3A40 */  sll        $a3, $t6, 9
/* DC50E8 80103AC8 00F6C025 */  or         $t8, $a3, $s6
/* DC50EC 80103ACC AC580000 */  sw         $t8, ($v0)
/* DC50F0 80103AD0 AC510004 */  sw         $s1, 4($v0)
/* DC50F4 80103AD4 8C620000 */  lw         $v0, ($v1)
/* DC50F8 80103AD8 00047840 */  sll        $t7, $a0, 1
/* DC50FC 80103ADC 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC5100 80103AE0 24590008 */  addiu      $t9, $v0, 8
/* DC5104 80103AE4 AC790000 */  sw         $t9, ($v1)
/* DC5108 80103AE8 AC400004 */  sw         $zero, 4($v0)
/* DC510C 80103AEC AC540000 */  sw         $s4, ($v0)
/* DC5110 80103AF0 8C620000 */  lw         $v0, ($v1)
/* DC5114 80103AF4 0018CB00 */  sll        $t9, $t8, 0xc
/* DC5118 80103AF8 248D0013 */  addiu      $t5, $a0, 0x13
/* DC511C 80103AFC 244E0008 */  addiu      $t6, $v0, 8
/* DC5120 80103B00 AC6E0000 */  sw         $t6, ($v1)
/* DC5124 80103B04 03377025 */  or         $t6, $t9, $s7
/* DC5128 80103B08 000D7840 */  sll        $t7, $t5, 1
/* DC512C 80103B0C 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC5130 80103B10 0018CB00 */  sll        $t9, $t8, 0xc
/* DC5134 80103B14 AC4E0000 */  sw         $t6, ($v0)
/* DC5138 80103B18 03317025 */  or         $t6, $t9, $s1
/* DC513C 80103B1C 35CF016C */  ori        $t7, $t6, 0x16c
/* DC5140 80103B20 AC4F0004 */  sw         $t7, 4($v0)
/* DC5144 80103B24 8C620000 */  lw         $v0, ($v1)
/* DC5148 80103B28 00FE7025 */  or         $t6, $a3, $fp
/* DC514C 80103B2C 2488004B */  addiu      $t0, $a0, 0x4b
/* DC5150 80103B30 24580008 */  addiu      $t8, $v0, 8
/* DC5154 80103B34 AC780000 */  sw         $t8, ($v1)
/* DC5158 80103B38 AC400004 */  sw         $zero, 4($v0)
/* DC515C 80103B3C AC530000 */  sw         $s3, ($v0)
/* DC5160 80103B40 8C620000 */  lw         $v0, ($v1)
/* DC5164 80103B44 0004C080 */  sll        $t8, $a0, 2
/* DC5168 80103B48 3C01E400 */  lui        $at, 0xe400
/* DC516C 80103B4C 24590008 */  addiu      $t9, $v0, 8
/* DC5170 80103B50 AC790000 */  sw         $t9, ($v1)
/* DC5174 80103B54 AC400004 */  sw         $zero, 4($v0)
/* DC5178 80103B58 AC4E0000 */  sw         $t6, ($v0)
/* DC517C 80103B5C 8C620000 */  lw         $v0, ($v1)
/* DC5180 80103B60 33190FFF */  andi       $t9, $t8, 0xfff
/* DC5184 80103B64 00197300 */  sll        $t6, $t9, 0xc
/* DC5188 80103B68 244F0008 */  addiu      $t7, $v0, 8
/* DC518C 80103B6C AC6F0000 */  sw         $t7, ($v1)
/* DC5190 80103B70 01DF7825 */  or         $t7, $t6, $ra
/* DC5194 80103B74 000DC080 */  sll        $t8, $t5, 2
/* DC5198 80103B78 33190FFF */  andi       $t9, $t8, 0xfff
/* DC519C 80103B7C 00197300 */  sll        $t6, $t9, 0xc
/* DC51A0 80103B80 AC4F0000 */  sw         $t7, ($v0)
/* DC51A4 80103B84 35CF016C */  ori        $t7, $t6, 0x16c
/* DC51A8 80103B88 AC4F0004 */  sw         $t7, 4($v0)
/* DC51AC 80103B8C 8C620000 */  lw         $v0, ($v1)
/* DC51B0 80103B90 25190014 */  addiu      $t9, $t0, 0x14
/* DC51B4 80103B94 00197080 */  sll        $t6, $t9, 2
/* DC51B8 80103B98 24580008 */  addiu      $t8, $v0, 8
/* DC51BC 80103B9C AC780000 */  sw         $t8, ($v1)
/* DC51C0 80103BA0 31CF0FFF */  andi       $t7, $t6, 0xfff
/* DC51C4 80103BA4 000FC300 */  sll        $t8, $t7, 0xc
/* DC51C8 80103BA8 0301C825 */  or         $t9, $t8, $at
/* DC51CC 80103BAC 372E0294 */  ori        $t6, $t9, 0x294
/* DC51D0 80103BB0 00087880 */  sll        $t7, $t0, 2
/* DC51D4 80103BB4 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC51D8 80103BB8 0018CB00 */  sll        $t9, $t8, 0xc
/* DC51DC 80103BBC AC4E0000 */  sw         $t6, ($v0)
/* DC51E0 80103BC0 372E0124 */  ori        $t6, $t9, 0x124
/* DC51E4 80103BC4 AC4E0004 */  sw         $t6, 4($v0)
/* DC51E8 80103BC8 8C620000 */  lw         $v0, ($v1)
/* DC51EC 80103BCC 3C18B400 */  lui        $t8, 0xb400
/* DC51F0 80103BD0 3C0E0400 */  lui        $t6, 0x400
/* DC51F4 80103BD4 244F0008 */  addiu      $t7, $v0, 8
/* DC51F8 80103BD8 AC6F0000 */  sw         $t7, ($v1)
/* DC51FC 80103BDC 00047D40 */  sll        $t7, $a0, 0x15
/* DC5200 80103BE0 AC4F0004 */  sw         $t7, 4($v0)
/* DC5204 80103BE4 AC580000 */  sw         $t8, ($v0)
/* DC5208 80103BE8 8C620000 */  lw         $v0, ($v1)
/* DC520C 80103BEC 35CE0400 */  ori        $t6, $t6, 0x400
/* DC5210 80103BF0 3C19B300 */  lui        $t9, 0xb300
/* DC5214 80103BF4 24580008 */  addiu      $t8, $v0, 8
/* DC5218 80103BF8 AC780000 */  sw         $t8, ($v1)
/* DC521C 80103BFC 258CFFFF */  addiu      $t4, $t4, -1
/* DC5220 80103C00 24840014 */  addiu      $a0, $a0, 0x14
/* DC5224 80103C04 AC4E0004 */  sw         $t6, 4($v0)
/* DC5228 80103C08 1580FFA0 */  bnez       $t4, .L80103A8C
/* DC522C 80103C0C AC590000 */   sw        $t9, ($v0)
/* DC5230 80103C10 8C620000 */  lw         $v0, ($v1)
/* DC5234 80103C14 00843823 */  subu       $a3, $a0, $a0
/* DC5238 80103C18 24E70008 */  addiu      $a3, $a3, 8
/* DC523C 80103C1C 244F0008 */  addiu      $t7, $v0, 8
/* DC5240 80103C20 AC6F0000 */  sw         $t7, ($v1)
/* DC5244 80103C24 AC520004 */  sw         $s2, 4($v0)
/* DC5248 80103C28 AC550000 */  sw         $s5, ($v0)
/* DC524C 80103C2C 8C620000 */  lw         $v0, ($v1)
/* DC5250 80103C30 0007C843 */  sra        $t9, $a3, 1
/* DC5254 80103C34 27270007 */  addiu      $a3, $t9, 7
/* DC5258 80103C38 000770C3 */  sra        $t6, $a3, 3
/* DC525C 80103C3C 31CF01FF */  andi       $t7, $t6, 0x1ff
/* DC5260 80103C40 24580008 */  addiu      $t8, $v0, 8
/* DC5264 80103C44 AC780000 */  sw         $t8, ($v1)
/* DC5268 80103C48 000F3A40 */  sll        $a3, $t7, 9
/* DC526C 80103C4C 00F6C825 */  or         $t9, $a3, $s6
/* DC5270 80103C50 AC590000 */  sw         $t9, ($v0)
/* DC5274 80103C54 AC510004 */  sw         $s1, 4($v0)
/* DC5278 80103C58 8C620000 */  lw         $v0, ($v1)
/* DC527C 80103C5C 0004C040 */  sll        $t8, $a0, 1
/* DC5280 80103C60 33190FFF */  andi       $t9, $t8, 0xfff
/* DC5284 80103C64 244E0008 */  addiu      $t6, $v0, 8
/* DC5288 80103C68 AC6E0000 */  sw         $t6, ($v1)
/* DC528C 80103C6C AC400004 */  sw         $zero, 4($v0)
/* DC5290 80103C70 AC540000 */  sw         $s4, ($v0)
/* DC5294 80103C74 8C620000 */  lw         $v0, ($v1)
/* DC5298 80103C78 00197300 */  sll        $t6, $t9, 0xc
/* DC529C 80103C7C 248C0007 */  addiu      $t4, $a0, 7
/* DC52A0 80103C80 244F0008 */  addiu      $t7, $v0, 8
/* DC52A4 80103C84 AC6F0000 */  sw         $t7, ($v1)
/* DC52A8 80103C88 01D77825 */  or         $t7, $t6, $s7
/* DC52AC 80103C8C 000CC040 */  sll        $t8, $t4, 1
/* DC52B0 80103C90 33190FFF */  andi       $t9, $t8, 0xfff
/* DC52B4 80103C94 00197300 */  sll        $t6, $t9, 0xc
/* DC52B8 80103C98 AC4F0000 */  sw         $t7, ($v0)
/* DC52BC 80103C9C 01D17825 */  or         $t7, $t6, $s1
/* DC52C0 80103CA0 35F8016C */  ori        $t8, $t7, 0x16c
/* DC52C4 80103CA4 AC580004 */  sw         $t8, 4($v0)
/* DC52C8 80103CA8 8C620000 */  lw         $v0, ($v1)
/* DC52CC 80103CAC 00FE7825 */  or         $t7, $a3, $fp
/* DC52D0 80103CB0 2488004B */  addiu      $t0, $a0, 0x4b
/* DC52D4 80103CB4 24590008 */  addiu      $t9, $v0, 8
/* DC52D8 80103CB8 AC790000 */  sw         $t9, ($v1)
/* DC52DC 80103CBC AC400004 */  sw         $zero, 4($v0)
/* DC52E0 80103CC0 AC530000 */  sw         $s3, ($v0)
/* DC52E4 80103CC4 8C620000 */  lw         $v0, ($v1)
/* DC52E8 80103CC8 0004C880 */  sll        $t9, $a0, 2
/* DC52EC 80103CCC 3C01E400 */  lui        $at, 0xe400
/* DC52F0 80103CD0 244E0008 */  addiu      $t6, $v0, 8
/* DC52F4 80103CD4 AC6E0000 */  sw         $t6, ($v1)
/* DC52F8 80103CD8 AC400004 */  sw         $zero, 4($v0)
/* DC52FC 80103CDC AC4F0000 */  sw         $t7, ($v0)
/* DC5300 80103CE0 8C620000 */  lw         $v0, ($v1)
/* DC5304 80103CE4 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC5308 80103CE8 000E7B00 */  sll        $t7, $t6, 0xc
/* DC530C 80103CEC 24580008 */  addiu      $t8, $v0, 8
/* DC5310 80103CF0 AC780000 */  sw         $t8, ($v1)
/* DC5314 80103CF4 01FFC025 */  or         $t8, $t7, $ra
/* DC5318 80103CF8 000CC880 */  sll        $t9, $t4, 2
/* DC531C 80103CFC 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC5320 80103D00 000E7B00 */  sll        $t7, $t6, 0xc
/* DC5324 80103D04 AC580000 */  sw         $t8, ($v0)
/* DC5328 80103D08 35F8016C */  ori        $t8, $t7, 0x16c
/* DC532C 80103D0C AC580004 */  sw         $t8, 4($v0)
/* DC5330 80103D10 8C620000 */  lw         $v0, ($v1)
/* DC5334 80103D14 250E0008 */  addiu      $t6, $t0, 8
/* DC5338 80103D18 000E7880 */  sll        $t7, $t6, 2
/* DC533C 80103D1C 24590008 */  addiu      $t9, $v0, 8
/* DC5340 80103D20 AC790000 */  sw         $t9, ($v1)
/* DC5344 80103D24 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC5348 80103D28 0018CB00 */  sll        $t9, $t8, 0xc
/* DC534C 80103D2C 03217025 */  or         $t6, $t9, $at
/* DC5350 80103D30 35CF0294 */  ori        $t7, $t6, 0x294
/* DC5354 80103D34 0008C080 */  sll        $t8, $t0, 2
/* DC5358 80103D38 33190FFF */  andi       $t9, $t8, 0xfff
/* DC535C 80103D3C 00197300 */  sll        $t6, $t9, 0xc
/* DC5360 80103D40 AC4F0000 */  sw         $t7, ($v0)
/* DC5364 80103D44 35CF0124 */  ori        $t7, $t6, 0x124
/* DC5368 80103D48 AC4F0004 */  sw         $t7, 4($v0)
/* DC536C 80103D4C 8C620000 */  lw         $v0, ($v1)
/* DC5370 80103D50 3C19B400 */  lui        $t9, 0xb400
/* DC5374 80103D54 3C0F0400 */  lui        $t7, 0x400
/* DC5378 80103D58 24580008 */  addiu      $t8, $v0, 8
/* DC537C 80103D5C AC780000 */  sw         $t8, ($v1)
/* DC5380 80103D60 0004C540 */  sll        $t8, $a0, 0x15
/* DC5384 80103D64 AC580004 */  sw         $t8, 4($v0)
/* DC5388 80103D68 AC590000 */  sw         $t9, ($v0)
/* DC538C 80103D6C 8C620000 */  lw         $v0, ($v1)
/* DC5390 80103D70 35EF0400 */  ori        $t7, $t7, 0x400
/* DC5394 80103D74 3C0EB300 */  lui        $t6, 0xb300
/* DC5398 80103D78 24590008 */  addiu      $t9, $v0, 8
/* DC539C 80103D7C AC790000 */  sw         $t9, ($v1)
/* DC53A0 80103D80 AC4F0004 */  sw         $t7, 4($v0)
/* DC53A4 80103D84 AC4E0000 */  sw         $t6, ($v0)
/* DC53A8 80103D88 8FBF002C */  lw         $ra, 0x2c($sp)
/* DC53AC 80103D8C 8FBE0028 */  lw         $fp, 0x28($sp)
/* DC53B0 80103D90 8FB70024 */  lw         $s7, 0x24($sp)
/* DC53B4 80103D94 8FB60020 */  lw         $s6, 0x20($sp)
/* DC53B8 80103D98 8FB5001C */  lw         $s5, 0x1c($sp)
/* DC53BC 80103D9C 8FB40018 */  lw         $s4, 0x18($sp)
/* DC53C0 80103DA0 8FB30014 */  lw         $s3, 0x14($sp)
/* DC53C4 80103DA4 8FB20010 */  lw         $s2, 0x10($sp)
/* DC53C8 80103DA8 8FB1000C */  lw         $s1, 0xc($sp)
/* DC53CC 80103DAC 8FB00008 */  lw         $s0, 8($sp)
/* DC53D0 80103DB0 03E00008 */  jr         $ra
/* DC53D4 80103DB4 27BD0030 */   addiu     $sp, $sp, 0x30
