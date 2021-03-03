.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010541C
/* DC6A3C 8010541C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DC6A40 80105420 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC6A44 80105424 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC6A48 80105428 8C620000 */  lw         $v0, ($v1)
/* DC6A4C 8010542C AFBF002C */  sw         $ra, 0x2c($sp)
/* DC6A50 80105430 AFBE0028 */  sw         $fp, 0x28($sp)
/* DC6A54 80105434 244E0008 */  addiu      $t6, $v0, 8
/* DC6A58 80105438 AFB70024 */  sw         $s7, 0x24($sp)
/* DC6A5C 8010543C AFB60020 */  sw         $s6, 0x20($sp)
/* DC6A60 80105440 AFB5001C */  sw         $s5, 0x1c($sp)
/* DC6A64 80105444 AFB40018 */  sw         $s4, 0x18($sp)
/* DC6A68 80105448 AFB30014 */  sw         $s3, 0x14($sp)
/* DC6A6C 8010544C AFB20010 */  sw         $s2, 0x10($sp)
/* DC6A70 80105450 AFB1000C */  sw         $s1, 0xc($sp)
/* DC6A74 80105454 AFB00008 */  sw         $s0, 8($sp)
/* DC6A78 80105458 AFA00034 */  sw         $zero, 0x34($sp)
/* DC6A7C 8010545C AC6E0000 */  sw         $t6, ($v1)
/* DC6A80 80105460 3C188010 */  lui        $t8, %hi(D_80106240)
/* DC6A84 80105464 27186240 */  addiu      $t8, $t8, %lo(D_80106240)
/* DC6A88 80105468 3C0F0600 */  lui        $t7, 0x600
/* DC6A8C 8010546C AC4F0000 */  sw         $t7, ($v0)
/* DC6A90 80105470 AC580004 */  sw         $t8, 4($v0)
/* DC6A94 80105474 8C620000 */  lw         $v0, ($v1)
/* DC6A98 80105478 3C0EBA00 */  lui        $t6, 0xba00
/* DC6A9C 8010547C 35CE0E02 */  ori        $t6, $t6, 0xe02
/* DC6AA0 80105480 24590008 */  addiu      $t9, $v0, 8
/* DC6AA4 80105484 AC790000 */  sw         $t9, ($v1)
/* DC6AA8 80105488 340F8000 */  ori        $t7, $zero, 0x8000
/* DC6AAC 8010548C AC4F0004 */  sw         $t7, 4($v0)
/* DC6AB0 80105490 AC4E0000 */  sw         $t6, ($v0)
/* DC6AB4 80105494 8C620000 */  lw         $v0, ($v1)
/* DC6AB8 80105498 3C0EFFFC */  lui        $t6, 0xfffc
/* DC6ABC 8010549C 3C19FCFF */  lui        $t9, 0xfcff
/* DC6AC0 801054A0 24580008 */  addiu      $t8, $v0, 8
/* DC6AC4 801054A4 AC780000 */  sw         $t8, ($v1)
/* DC6AC8 801054A8 3739FFFF */  ori        $t9, $t9, 0xffff
/* DC6ACC 801054AC 35CEF279 */  ori        $t6, $t6, 0xf279
/* DC6AD0 801054B0 AC4E0004 */  sw         $t6, 4($v0)
/* DC6AD4 801054B4 AC590000 */  sw         $t9, ($v0)
/* DC6AD8 801054B8 8C620000 */  lw         $v0, ($v1)
/* DC6ADC 801054BC 3C190F0A */  lui        $t9, 0xf0a
/* DC6AE0 801054C0 3C18B900 */  lui        $t8, 0xb900
/* DC6AE4 801054C4 244F0008 */  addiu      $t7, $v0, 8
/* DC6AE8 801054C8 AC6F0000 */  sw         $t7, ($v1)
/* DC6AEC 801054CC 3718031D */  ori        $t8, $t8, 0x31d
/* DC6AF0 801054D0 37394000 */  ori        $t9, $t9, 0x4000
/* DC6AF4 801054D4 AC590004 */  sw         $t9, 4($v0)
/* DC6AF8 801054D8 AC580000 */  sw         $t8, ($v0)
/* DC6AFC 801054DC 8C620000 */  lw         $v0, ($v1)
/* DC6B00 801054E0 3C188016 */  lui        $t8, %hi(D_8015BA70)
/* DC6B04 801054E4 2718BA70 */  addiu      $t8, $t8, %lo(D_8015BA70)
/* DC6B08 801054E8 244E0008 */  addiu      $t6, $v0, 8
/* DC6B0C 801054EC AC6E0000 */  sw         $t6, ($v1)
/* DC6B10 801054F0 3C0FFD10 */  lui        $t7, 0xfd10
/* DC6B14 801054F4 AC4F0000 */  sw         $t7, ($v0)
/* DC6B18 801054F8 AC580004 */  sw         $t8, 4($v0)
/* DC6B1C 801054FC 8C620000 */  lw         $v0, ($v1)
/* DC6B20 80105500 3C0EE800 */  lui        $t6, 0xe800
/* DC6B24 80105504 3C18F500 */  lui        $t8, 0xf500
/* DC6B28 80105508 24590008 */  addiu      $t9, $v0, 8
/* DC6B2C 8010550C AC790000 */  sw         $t9, ($v1)
/* DC6B30 80105510 AC400004 */  sw         $zero, 4($v0)
/* DC6B34 80105514 AC4E0000 */  sw         $t6, ($v0)
/* DC6B38 80105518 8C620000 */  lw         $v0, ($v1)
/* DC6B3C 8010551C 3C150700 */  lui        $s5, 0x700
/* DC6B40 80105520 37180100 */  ori        $t8, $t8, 0x100
/* DC6B44 80105524 244F0008 */  addiu      $t7, $v0, 8
/* DC6B48 80105528 AC6F0000 */  sw         $t7, ($v1)
/* DC6B4C 8010552C AC550004 */  sw         $s5, 4($v0)
/* DC6B50 80105530 AC580000 */  sw         $t8, ($v0)
/* DC6B54 80105534 8C620000 */  lw         $v0, ($v1)
/* DC6B58 80105538 3C16E600 */  lui        $s6, 0xe600
/* DC6B5C 8010553C 3C180703 */  lui        $t8, 0x703
/* DC6B60 80105540 24590008 */  addiu      $t9, $v0, 8
/* DC6B64 80105544 AC790000 */  sw         $t9, ($v1)
/* DC6B68 80105548 AC400004 */  sw         $zero, 4($v0)
/* DC6B6C 8010554C AC560000 */  sw         $s6, ($v0)
/* DC6B70 80105550 8C620000 */  lw         $v0, ($v1)
/* DC6B74 80105554 3718C000 */  ori        $t8, $t8, 0xc000
/* DC6B78 80105558 3C0FF000 */  lui        $t7, 0xf000
/* DC6B7C 8010555C 244E0008 */  addiu      $t6, $v0, 8
/* DC6B80 80105560 AC6E0000 */  sw         $t6, ($v1)
/* DC6B84 80105564 AC580004 */  sw         $t8, 4($v0)
/* DC6B88 80105568 AC4F0000 */  sw         $t7, ($v0)
/* DC6B8C 8010556C 8C620000 */  lw         $v0, ($v1)
/* DC6B90 80105570 3C17E700 */  lui        $s7, 0xe700
/* DC6B94 80105574 3C148015 */  lui        $s4, 0x8015
/* DC6B98 80105578 24590008 */  addiu      $t9, $v0, 8
/* DC6B9C 8010557C AC790000 */  sw         $t9, ($v1)
/* DC6BA0 80105580 3C1EFD48 */  lui        $fp, 0xfd48
/* DC6BA4 80105584 3C1FF548 */  lui        $ra, 0xf548
/* DC6BA8 80105588 37FF2200 */  ori        $ra, $ra, 0x2200
/* DC6BAC 8010558C 37DE0087 */  ori        $fp, $fp, 0x87
/* DC6BB0 80105590 26945468 */  addiu      $s4, $s4, 0x5468
/* DC6BB4 80105594 24100018 */  addiu      $s0, $zero, 0x18
/* DC6BB8 80105598 2411000C */  addiu      $s1, $zero, 0xc
/* DC6BBC 8010559C 24120024 */  addiu      $s2, $zero, 0x24
/* DC6BC0 801055A0 00006825 */  or         $t5, $zero, $zero
/* DC6BC4 801055A4 AC400004 */  sw         $zero, 4($v0)
/* DC6BC8 801055A8 AC570000 */  sw         $s7, ($v0)
.L801055AC:
/* DC6BCC 801055AC 8C620000 */  lw         $v0, ($v1)
/* DC6BD0 801055B0 000D4080 */  sll        $t0, $t5, 2
/* DC6BD4 801055B4 3C01F400 */  lui        $at, 0xf400
/* DC6BD8 801055B8 244E0008 */  addiu      $t6, $v0, 8
/* DC6BDC 801055BC AC6E0000 */  sw         $t6, ($v1)
/* DC6BE0 801055C0 AC540004 */  sw         $s4, 4($v0)
/* DC6BE4 801055C4 AC5E0000 */  sw         $fp, ($v0)
/* DC6BE8 801055C8 8C620000 */  lw         $v0, ($v1)
/* DC6BEC 801055CC 310E0FFF */  andi       $t6, $t0, 0xfff
/* DC6BF0 801055D0 00114880 */  sll        $t1, $s1, 2
/* DC6BF4 801055D4 244F0008 */  addiu      $t7, $v0, 8
/* DC6BF8 801055D8 AC6F0000 */  sw         $t7, ($v1)
/* DC6BFC 801055DC AC550004 */  sw         $s5, 4($v0)
/* DC6C00 801055E0 AC5F0000 */  sw         $ra, ($v0)
/* DC6C04 801055E4 8C620000 */  lw         $v0, ($v1)
/* DC6C08 801055E8 01C17825 */  or         $t7, $t6, $at
/* DC6C0C 801055EC 3C010722 */  lui        $at, 0x722
/* DC6C10 801055F0 24580008 */  addiu      $t8, $v0, 8
/* DC6C14 801055F4 AC780000 */  sw         $t8, ($v1)
/* DC6C18 801055F8 AC400004 */  sw         $zero, 4($v0)
/* DC6C1C 801055FC AC560000 */  sw         $s6, ($v0)
/* DC6C20 80105600 8C620000 */  lw         $v0, ($v1)
/* DC6C24 80105604 31380FFF */  andi       $t8, $t1, 0xfff
/* DC6C28 80105608 01C04025 */  or         $t0, $t6, $zero
/* DC6C2C 8010560C 24590008 */  addiu      $t9, $v0, 8
/* DC6C30 80105610 AC790000 */  sw         $t9, ($v1)
/* DC6C34 80105614 0301C825 */  or         $t9, $t8, $at
/* DC6C38 80105618 AC590004 */  sw         $t9, 4($v0)
/* DC6C3C 8010561C AC4F0000 */  sw         $t7, ($v0)
/* DC6C40 80105620 8C620000 */  lw         $v0, ($v1)
/* DC6C44 80105624 03004825 */  or         $t1, $t8, $zero
/* DC6C48 80105628 3C18F540 */  lui        $t8, 0xf540
/* DC6C4C 8010562C 244E0008 */  addiu      $t6, $v0, 8
/* DC6C50 80105630 AC6E0000 */  sw         $t6, ($v1)
/* DC6C54 80105634 AC400004 */  sw         $zero, 4($v0)
/* DC6C58 80105638 AC570000 */  sw         $s7, ($v0)
/* DC6C5C 8010563C 8C620000 */  lw         $v0, ($v1)
/* DC6C60 80105640 37182200 */  ori        $t8, $t8, 0x2200
/* DC6C64 80105644 3C01F200 */  lui        $at, 0xf200
/* DC6C68 80105648 244F0008 */  addiu      $t7, $v0, 8
/* DC6C6C 8010564C AC6F0000 */  sw         $t7, ($v1)
/* DC6C70 80105650 AC400004 */  sw         $zero, 4($v0)
/* DC6C74 80105654 AC580000 */  sw         $t8, ($v0)
/* DC6C78 80105658 8C620000 */  lw         $v0, ($v1)
/* DC6C7C 8010565C 01017025 */  or         $t6, $t0, $at
/* DC6C80 80105660 3C010044 */  lui        $at, 0x44
/* DC6C84 80105664 24590008 */  addiu      $t9, $v0, 8
/* DC6C88 80105668 AC790000 */  sw         $t9, ($v1)
/* DC6C8C 8010566C 01217825 */  or         $t7, $t1, $at
/* DC6C90 80105670 AC4F0004 */  sw         $t7, 4($v0)
/* DC6C94 80105674 AC4E0000 */  sw         $t6, ($v0)
/* DC6C98 80105678 8C620000 */  lw         $v0, ($v1)
/* DC6C9C 8010567C 3C01E449 */  lui        $at, 0xe449
/* DC6CA0 80105680 0012C880 */  sll        $t9, $s2, 2
/* DC6CA4 80105684 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC6CA8 80105688 34218000 */  ori        $at, $at, 0x8000
/* DC6CAC 8010568C 24580008 */  addiu      $t8, $v0, 8
/* DC6CB0 80105690 AC780000 */  sw         $t8, ($v1)
/* DC6CB4 80105694 01C17825 */  or         $t7, $t6, $at
/* DC6CB8 80105698 3C010006 */  lui        $at, 6
/* DC6CBC 8010569C 0010C080 */  sll        $t8, $s0, 2
/* DC6CC0 801056A0 33190FFF */  andi       $t9, $t8, 0xfff
/* DC6CC4 801056A4 34214000 */  ori        $at, $at, 0x4000
/* DC6CC8 801056A8 03217025 */  or         $t6, $t9, $at
/* DC6CCC 801056AC AC4E0004 */  sw         $t6, 4($v0)
/* DC6CD0 801056B0 AC4F0000 */  sw         $t7, ($v0)
/* DC6CD4 801056B4 8C620000 */  lw         $v0, ($v1)
/* DC6CD8 801056B8 000DC940 */  sll        $t9, $t5, 5
/* DC6CDC 801056BC 332EFFFF */  andi       $t6, $t9, 0xffff
/* DC6CE0 801056C0 244F0008 */  addiu      $t7, $v0, 8
/* DC6CE4 801056C4 AC6F0000 */  sw         $t7, ($v1)
/* DC6CE8 801056C8 3C18B400 */  lui        $t8, 0xb400
/* DC6CEC 801056CC AC580000 */  sw         $t8, ($v0)
/* DC6CF0 801056D0 AC4E0004 */  sw         $t6, 4($v0)
/* DC6CF4 801056D4 8C620000 */  lw         $v0, ($v1)
/* DC6CF8 801056D8 3C190400 */  lui        $t9, 0x400
/* DC6CFC 801056DC 240100D8 */  addiu      $at, $zero, 0xd8
/* DC6D00 801056E0 244F0008 */  addiu      $t7, $v0, 8
/* DC6D04 801056E4 2610000C */  addiu      $s0, $s0, 0xc
/* DC6D08 801056E8 AC6F0000 */  sw         $t7, ($v1)
/* DC6D0C 801056EC 37390400 */  ori        $t9, $t9, 0x400
/* DC6D10 801056F0 3C18B300 */  lui        $t8, 0xb300
/* DC6D14 801056F4 25AD000C */  addiu      $t5, $t5, 0xc
/* DC6D18 801056F8 2652000C */  addiu      $s2, $s2, 0xc
/* DC6D1C 801056FC 2631000C */  addiu      $s1, $s1, 0xc
/* DC6D20 80105700 AC580000 */  sw         $t8, ($v0)
/* DC6D24 80105704 1601FFA9 */  bne        $s0, $at, .L801055AC
/* DC6D28 80105708 AC590004 */   sw        $t9, 4($v0)
/* DC6D2C 8010570C 3C0E8009 */  lui        $t6, %hi(ButtonPressedFrame)
/* DC6D30 80105710 95CE2876 */  lhu        $t6, %lo(ButtonPressedFrame)($t6)
/* DC6D34 80105714 24180001 */  addiu      $t8, $zero, 1
/* DC6D38 80105718 31CF9000 */  andi       $t7, $t6, 0x9000
/* DC6D3C 8010571C 51E00003 */  beql       $t7, $zero, .L8010572C
/* DC6D40 80105720 8FBF002C */   lw        $ra, 0x2c($sp)
/* DC6D44 80105724 AFB80034 */  sw         $t8, 0x34($sp)
/* DC6D48 80105728 8FBF002C */  lw         $ra, 0x2c($sp)
.L8010572C:
/* DC6D4C 8010572C 8FA20034 */  lw         $v0, 0x34($sp)
/* DC6D50 80105730 8FB00008 */  lw         $s0, 8($sp)
/* DC6D54 80105734 8FB1000C */  lw         $s1, 0xc($sp)
/* DC6D58 80105738 8FB20010 */  lw         $s2, 0x10($sp)
/* DC6D5C 8010573C 8FB30014 */  lw         $s3, 0x14($sp)
/* DC6D60 80105740 8FB40018 */  lw         $s4, 0x18($sp)
/* DC6D64 80105744 8FB5001C */  lw         $s5, 0x1c($sp)
/* DC6D68 80105748 8FB60020 */  lw         $s6, 0x20($sp)
/* DC6D6C 8010574C 8FB70024 */  lw         $s7, 0x24($sp)
/* DC6D70 80105750 8FBE0028 */  lw         $fp, 0x28($sp)
/* DC6D74 80105754 03E00008 */  jr         $ra
/* DC6D78 80105758 27BD0038 */   addiu     $sp, $sp, 0x38
