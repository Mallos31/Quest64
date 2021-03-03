.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osGetId
/* 3D130 8003C530 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 3D134 8003C534 AFA40068 */  sw         $a0, 0x68($sp)
/* 3D138 8003C538 8FAE0068 */  lw         $t6, 0x68($sp)
/* 3D13C 8003C53C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D140 8003C540 91CF0065 */  lbu        $t7, 0x65($t6)
/* 3D144 8003C544 11E0000A */  beqz       $t7, .L8003C570
/* 3D148 8003C548 00000000 */   nop
/* 3D14C 8003C54C A1C00065 */  sb         $zero, 0x65($t6)
/* 3D150 8003C550 0C0115F7 */  jal        __osPfsSelectBank
/* 3D154 8003C554 8FA40068 */   lw        $a0, 0x68($sp)
/* 3D158 8003C558 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3D15C 8003C55C 8FB8001C */  lw         $t8, 0x1c($sp)
/* 3D160 8003C560 13000003 */  beqz       $t8, .L8003C570
/* 3D164 8003C564 00000000 */   nop
/* 3D168 8003C568 10000084 */  b          .L8003C77C
/* 3D16C 8003C56C 03001025 */   or        $v0, $t8, $zero
.L8003C570:
/* 3D170 8003C570 8FB90068 */  lw         $t9, 0x68($sp)
/* 3D174 8003C574 24060001 */  addiu      $a2, $zero, 1
/* 3D178 8003C578 27A70040 */  addiu      $a3, $sp, 0x40
/* 3D17C 8003C57C 8F240004 */  lw         $a0, 4($t9)
/* 3D180 8003C580 0C011614 */  jal        __osContRamRead
/* 3D184 8003C584 8F250008 */   lw        $a1, 8($t9)
/* 3D188 8003C588 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3D18C 8003C58C 8FA8001C */  lw         $t0, 0x1c($sp)
/* 3D190 8003C590 11000003 */  beqz       $t0, .L8003C5A0
/* 3D194 8003C594 00000000 */   nop
/* 3D198 8003C598 10000078 */  b          .L8003C77C
/* 3D19C 8003C59C 01001025 */   or        $v0, $t0, $zero
.L8003C5A0:
/* 3D1A0 8003C5A0 27A40040 */  addiu      $a0, $sp, 0x40
/* 3D1A4 8003C5A4 27A50062 */  addiu      $a1, $sp, 0x62
/* 3D1A8 8003C5A8 0C0112D3 */  jal        __osIdCheckSum
/* 3D1AC 8003C5AC 27A60060 */   addiu     $a2, $sp, 0x60
/* 3D1B0 8003C5B0 27A90040 */  addiu      $t1, $sp, 0x40
/* 3D1B4 8003C5B4 AFA90018 */  sw         $t1, 0x18($sp)
/* 3D1B8 8003C5B8 952A001C */  lhu        $t2, 0x1c($t1)
/* 3D1BC 8003C5BC 97AB0062 */  lhu        $t3, 0x62($sp)
/* 3D1C0 8003C5C0 154B0005 */  bne        $t2, $t3, .L8003C5D8
/* 3D1C4 8003C5C4 00000000 */   nop
/* 3D1C8 8003C5C8 952C001E */  lhu        $t4, 0x1e($t1)
/* 3D1CC 8003C5CC 97AD0060 */  lhu        $t5, 0x60($sp)
/* 3D1D0 8003C5D0 118D001B */  beq        $t4, $t5, .L8003C640
/* 3D1D4 8003C5D4 00000000 */   nop
.L8003C5D8:
/* 3D1D8 8003C5D8 8FA40068 */  lw         $a0, 0x68($sp)
/* 3D1DC 8003C5DC 0C0113F3 */  jal        __osCheckPackId
/* 3D1E0 8003C5E0 8FA50018 */   lw        $a1, 0x18($sp)
/* 3D1E4 8003C5E4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3D1E8 8003C5E8 8FAF001C */  lw         $t7, 0x1c($sp)
/* 3D1EC 8003C5EC 2401000A */  addiu      $at, $zero, 0xa
/* 3D1F0 8003C5F0 15E1000E */  bne        $t7, $at, .L8003C62C
/* 3D1F4 8003C5F4 00000000 */   nop
/* 3D1F8 8003C5F8 8FA40068 */  lw         $a0, 0x68($sp)
/* 3D1FC 8003C5FC 8FA50018 */  lw         $a1, 0x18($sp)
/* 3D200 8003C600 0C0112ED */  jal        __osRepairPackId
/* 3D204 8003C604 27A60020 */   addiu     $a2, $sp, 0x20
/* 3D208 8003C608 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3D20C 8003C60C 8FAE001C */  lw         $t6, 0x1c($sp)
/* 3D210 8003C610 11C00003 */  beqz       $t6, .L8003C620
/* 3D214 8003C614 00000000 */   nop
/* 3D218 8003C618 10000058 */  b          .L8003C77C
/* 3D21C 8003C61C 01C01025 */   or        $v0, $t6, $zero
.L8003C620:
/* 3D220 8003C620 27B80020 */  addiu      $t8, $sp, 0x20
/* 3D224 8003C624 10000006 */  b          .L8003C640
/* 3D228 8003C628 AFB80018 */   sw        $t8, 0x18($sp)
.L8003C62C:
/* 3D22C 8003C62C 8FB9001C */  lw         $t9, 0x1c($sp)
/* 3D230 8003C630 13200003 */  beqz       $t9, .L8003C640
/* 3D234 8003C634 00000000 */   nop
/* 3D238 8003C638 10000050 */  b          .L8003C77C
/* 3D23C 8003C63C 03201025 */   or        $v0, $t9, $zero
.L8003C640:
/* 3D240 8003C640 8FA80018 */  lw         $t0, 0x18($sp)
/* 3D244 8003C644 950A0018 */  lhu        $t2, 0x18($t0)
/* 3D248 8003C648 314B0001 */  andi       $t3, $t2, 1
/* 3D24C 8003C64C 15600013 */  bnez       $t3, .L8003C69C
/* 3D250 8003C650 00000000 */   nop
/* 3D254 8003C654 8FA40068 */  lw         $a0, 0x68($sp)
/* 3D258 8003C658 01002825 */  or         $a1, $t0, $zero
/* 3D25C 8003C65C 0C0112ED */  jal        __osRepairPackId
/* 3D260 8003C660 27A60020 */   addiu     $a2, $sp, 0x20
/* 3D264 8003C664 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3D268 8003C668 8FA9001C */  lw         $t1, 0x1c($sp)
/* 3D26C 8003C66C 11200003 */  beqz       $t1, .L8003C67C
/* 3D270 8003C670 00000000 */   nop
/* 3D274 8003C674 10000041 */  b          .L8003C77C
/* 3D278 8003C678 01201025 */   or        $v0, $t1, $zero
.L8003C67C:
/* 3D27C 8003C67C 27AC0020 */  addiu      $t4, $sp, 0x20
/* 3D280 8003C680 AFAC0018 */  sw         $t4, 0x18($sp)
/* 3D284 8003C684 958D0018 */  lhu        $t5, 0x18($t4)
/* 3D288 8003C688 31AF0001 */  andi       $t7, $t5, 1
/* 3D28C 8003C68C 15E00003 */  bnez       $t7, .L8003C69C
/* 3D290 8003C690 00000000 */   nop
/* 3D294 8003C694 10000039 */  b          .L8003C77C
/* 3D298 8003C698 2402000B */   addiu     $v0, $zero, 0xb
.L8003C69C:
/* 3D29C 8003C69C AFA00064 */  sw         $zero, 0x64($sp)
.L8003C6A0:
/* 3D2A0 8003C6A0 8FAE0018 */  lw         $t6, 0x18($sp)
/* 3D2A4 8003C6A4 8FB80064 */  lw         $t8, 0x64($sp)
/* 3D2A8 8003C6A8 8FAB0068 */  lw         $t3, 0x68($sp)
/* 3D2AC 8003C6AC 01D8C821 */  addu       $t9, $t6, $t8
/* 3D2B0 8003C6B0 932A0000 */  lbu        $t2, ($t9)
/* 3D2B4 8003C6B4 01784021 */  addu       $t0, $t3, $t8
/* 3D2B8 8003C6B8 A10A000C */  sb         $t2, 0xc($t0)
/* 3D2BC 8003C6BC 8FA90064 */  lw         $t1, 0x64($sp)
/* 3D2C0 8003C6C0 252C0001 */  addiu      $t4, $t1, 1
/* 3D2C4 8003C6C4 29810020 */  slti       $at, $t4, 0x20
/* 3D2C8 8003C6C8 1420FFF5 */  bnez       $at, .L8003C6A0
/* 3D2CC 8003C6CC AFAC0064 */   sw        $t4, 0x64($sp)
/* 3D2D0 8003C6D0 8FAD0018 */  lw         $t5, 0x18($sp)
/* 3D2D4 8003C6D4 8FAE0068 */  lw         $t6, 0x68($sp)
/* 3D2D8 8003C6D8 24060007 */  addiu      $a2, $zero, 7
/* 3D2DC 8003C6DC 91AF001B */  lbu        $t7, 0x1b($t5)
/* 3D2E0 8003C6E0 240D0010 */  addiu      $t5, $zero, 0x10
/* 3D2E4 8003C6E4 ADCF004C */  sw         $t7, 0x4c($t6)
/* 3D2E8 8003C6E8 8FB90018 */  lw         $t9, 0x18($sp)
/* 3D2EC 8003C6EC 8FB80068 */  lw         $t8, 0x68($sp)
/* 3D2F0 8003C6F0 240E0008 */  addiu      $t6, $zero, 8
/* 3D2F4 8003C6F4 932B001A */  lbu        $t3, 0x1a($t9)
/* 3D2F8 8003C6F8 A30B0064 */  sb         $t3, 0x64($t8)
/* 3D2FC 8003C6FC 8FAA0068 */  lw         $t2, 0x68($sp)
/* 3D300 8003C700 91480064 */  lbu        $t0, 0x64($t2)
/* 3D304 8003C704 00084840 */  sll        $t1, $t0, 1
/* 3D308 8003C708 252C0003 */  addiu      $t4, $t1, 3
/* 3D30C 8003C70C AD4C0060 */  sw         $t4, 0x60($t2)
/* 3D310 8003C710 8FAF0068 */  lw         $t7, 0x68($sp)
/* 3D314 8003C714 ADED0050 */  sw         $t5, 0x50($t7)
/* 3D318 8003C718 8FB90068 */  lw         $t9, 0x68($sp)
/* 3D31C 8003C71C AF2E0054 */  sw         $t6, 0x54($t9)
/* 3D320 8003C720 8FAB0068 */  lw         $t3, 0x68($sp)
/* 3D324 8003C724 91780064 */  lbu        $t8, 0x64($t3)
/* 3D328 8003C728 001840C0 */  sll        $t0, $t8, 3
/* 3D32C 8003C72C 25090008 */  addiu      $t1, $t0, 8
/* 3D330 8003C730 AD690058 */  sw         $t1, 0x58($t3)
/* 3D334 8003C734 8FAC0068 */  lw         $t4, 0x68($sp)
/* 3D338 8003C738 918D0064 */  lbu        $t5, 0x64($t4)
/* 3D33C 8003C73C 8D8A0058 */  lw         $t2, 0x58($t4)
/* 3D340 8003C740 000D78C0 */  sll        $t7, $t5, 3
/* 3D344 8003C744 014F7021 */  addu       $t6, $t2, $t7
/* 3D348 8003C748 AD8E005C */  sw         $t6, 0x5c($t4)
/* 3D34C 8003C74C 8FB90068 */  lw         $t9, 0x68($sp)
/* 3D350 8003C750 8F240004 */  lw         $a0, 4($t9)
/* 3D354 8003C754 8F250008 */  lw         $a1, 8($t9)
/* 3D358 8003C758 0C011614 */  jal        __osContRamRead
/* 3D35C 8003C75C 2727002C */   addiu     $a3, $t9, 0x2c
/* 3D360 8003C760 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3D364 8003C764 8FB8001C */  lw         $t8, 0x1c($sp)
/* 3D368 8003C768 13000003 */  beqz       $t8, .L8003C778
/* 3D36C 8003C76C 00000000 */   nop
/* 3D370 8003C770 10000002 */  b          .L8003C77C
/* 3D374 8003C774 03001025 */   or        $v0, $t8, $zero
.L8003C778:
/* 3D378 8003C778 00001025 */  or         $v0, $zero, $zero
.L8003C77C:
/* 3D37C 8003C77C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D380 8003C780 27BD0068 */  addiu      $sp, $sp, 0x68
/* 3D384 8003C784 03E00008 */  jr         $ra
/* 3D388 8003C788 00000000 */   nop
/* 3D38C 8003C78C 00000000 */  nop