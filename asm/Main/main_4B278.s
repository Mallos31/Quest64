.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A678
/* 4B278 8004A678 34022800 */  ori        $v0, $zero, 0x2800
/* 4B27C 8004A67C 40822000 */  mtc0       $v0, $4
/* 4B280 8004A680 C81F2003 */  bbit0      $zero, 0x1f, .L80052690
/* 4B284 8004A684 C81E2004 */   bbit0     $zero, 0x1e, .L80052698
/* 4B288 8004A688 8C040FC4 */   lw        $a0, 0xfc4($zero)
/* 4B28C 8004A68C 30840001 */  andi       $a0, $a0, 1
/* 4B290 8004A690 14800036 */  bnez       $a0, .L8004A76C
/* 4B294 8004A694 AC000FC4 */   sw        $zero, 0xfc4($zero)
/* 4B298 8004A698 8C370028 */  lw         $s7, 0x28($at)
/* 4B29C 8004A69C 8C23002C */  lw         $v1, 0x2c($at)
/* 4B2A0 8004A6A0 AFB70040 */  sw         $s7, 0x40($sp)
/* 4B2A4 8004A6A4 AFA30044 */  sw         $v1, 0x44($sp)
/* 4B2A8 8004A6A8 40045800 */  mfc0       $a0, $11
/* 4B2AC 8004A6AC 30840001 */  andi       $a0, $a0, 1
/* 4B2B0 8004A6B0 1480000A */  bnez       $a0, .L8004A6DC
/* 4B2B4 8004A6B4 40044800 */   mfc0      $a0, $9
/* 4B2B8 8004A6B8 02E4B822 */  sub        $s7, $s7, $a0
/* 4B2BC 8004A6BC 1EE00007 */  bgtz       $s7, .L8004A6DC
/* 4B2C0 8004A6C0 40055000 */   mfc0      $a1, $10
/* 4B2C4 8004A6C4 10A00005 */  beqz       $a1, .L8004A6DC
/* 4B2C8 8004A6C8 00000000 */   nop
/* 4B2CC 8004A6CC 10A40003 */  beq        $a1, $a0, .L8004A6DC
/* 4B2D0 8004A6D0 00000000 */   nop
/* 4B2D4 8004A6D4 090005EE */  j          .L840017B8
/* 4B2D8 8004A6D8 34830000 */   ori       $v1, $a0, 0
.L8004A6DC:
/* 4B2DC 8004A6DC 40045800 */  mfc0       $a0, $11
/* 4B2E0 8004A6E0 30840400 */  andi       $a0, $a0, 0x400
/* 4B2E4 8004A6E4 1480FFFD */  bnez       $a0, .L8004A6DC
/* 4B2E8 8004A6E8 20040001 */   addi      $a0, $zero, 1
/* 4B2EC 8004A6EC 40845800 */  mtc0       $a0, $11
/* 4B2F0 8004A6F0 40834000 */  mtc0       $v1, $8
/* 4B2F4 8004A6F4 40834800 */  mtc0       $v1, $9
/* 4B2F8 8004A6F8 AFA30018 */  sw         $v1, 0x18($sp)
/* 4B2FC 8004A6FC 20170CE0 */  addi       $s7, $zero, 0xce0
/* 4B300 8004A700 8C250010 */  lw         $a1, 0x10($at)
/* 4B304 8004A704 8C020008 */  lw         $v0, 8($zero)
/* 4B308 8004A708 8C030010 */  lw         $v1, 0x10($zero)
/* 4B30C 8004A70C 8C040018 */  lw         $a0, 0x18($zero)
/* 4B310 8004A710 8C060020 */  lw         $a2, 0x20($zero)
/* 4B314 8004A714 00451020 */  add        $v0, $v0, $a1
/* 4B318 8004A718 00651820 */  add        $v1, $v1, $a1
/* 4B31C 8004A71C 00852020 */  add        $a0, $a0, $a1
/* 4B320 8004A720 00C53020 */  add        $a2, $a2, $a1
/* 4B324 8004A724 AC020008 */  sw         $v0, 8($zero)
/* 4B328 8004A728 AC030010 */  sw         $v1, 0x10($zero)
/* 4B32C 8004A72C AC040018 */  sw         $a0, 0x18($zero)
/* 4B330 8004A730 AC060020 */  sw         $a2, 0x20($zero)
/* 4B334 8004A734 0D00043B */  jal        func_840010EC
/* 4B338 8004A738 201E0008 */   addi      $fp, $zero, 8
/* 4B33C 8004A73C 0D000432 */  jal        func_840010C8
/* 4B340 8004A740 8C3A0030 */   lw        $k0, 0x30($at)
/* 4B344 8004A744 8C220020 */  lw         $v0, 0x20($at)
/* 4B348 8004A748 8C230024 */  lw         $v1, 0x24($at)
/* 4B34C 8004A74C AFA20020 */  sw         $v0, 0x20($sp)
/* 4B350 8004A750 AFA20024 */  sw         $v0, 0x24($sp)
/* 4B354 8004A754 00431020 */  add        $v0, $v0, $v1
/* 4B358 8004A758 AFA2004C */  sw         $v0, 0x4c($sp)
/* 4B35C 8004A75C 8C02FFF8 */  lw         $v0, -8($zero)
/* 4B360 8004A760 AC020108 */  sw         $v0, 0x108($zero)
/* 4B364 8004A764 09000416 */  j          .L84001058
/* 4B368 8004A768 00000000 */   nop
.L8004A76C:
/* 4B36C 8004A76C 0D00043B */  jal        func_840010EC
/* 4B370 8004A770 201E0008 */   addi      $fp, $zero, 8
/* 4B374 8004A774 8C170BF0 */  lw         $s7, 0xbf0($zero)
/* 4B378 8004A778 8C1C0BE4 */  lw         $gp, 0xbe4($zero)
/* 4B37C 8004A77C 8C1B0BE8 */  lw         $k1, 0xbe8($zero)
/* 4B380 8004A780 09000427 */  j          .L8400109C
/* 4B384 8004A784 8C1A0BEC */   lw        $k0, 0xbec($zero)
/* 4B388 8004A788 00000000 */  nop
/* 4B38C 8004A78C 00000000 */  nop
/* 4B390 8004A790 00000000 */  nop
/* 4B394 8004A794 00000000 */  nop
/* 4B398 8004A798 00000000 */  nop
/* 4B39C 8004A79C 00000000 */  nop
/* 4B3A0 8004A7A0 00000000 */  nop
/* 4B3A4 8004A7A4 00000000 */  nop
/* 4B3A8 8004A7A8 00000000 */  nop
/* 4B3AC 8004A7AC 00000000 */  nop
/* 4B3B0 8004A7B0 00000000 */  nop
/* 4B3B4 8004A7B4 00000000 */  nop
/* 4B3B8 8004A7B8 00000000 */  nop
/* 4B3BC 8004A7BC 00000000 */  nop
/* 4B3C0 8004A7C0 00000000 */  nop
/* 4B3C4 8004A7C4 00000000 */  nop
/* 4B3C8 8004A7C8 00000000 */  nop
/* 4B3CC 8004A7CC 00000000 */  nop
/* 4B3D0 8004A7D0 00000000 */  nop
/* 4B3D4 8004A7D4 00000000 */  nop
/* 4B3D8 8004A7D8 00000000 */  nop
/* 4B3DC 8004A7DC 00000000 */  nop
/* 4B3E0 8004A7E0 00000000 */  nop
/* 4B3E4 8004A7E4 00000000 */  nop
/* 4B3E8 8004A7E8 00000000 */  nop
/* 4B3EC 8004A7EC 00000000 */  nop
/* 4B3F0 8004A7F0 00000000 */  nop
/* 4B3F4 8004A7F4 00000000 */  nop
/* 4B3F8 8004A7F8 00000000 */  nop
/* 4B3FC 8004A7FC 00000000 */  nop
/* 4B400 8004A800 00000000 */  nop
/* 4B404 8004A804 00000000 */  nop
/* 4B408 8004A808 00000000 */  nop
/* 4B40C 8004A80C 00000000 */  nop
/* 4B410 8004A810 00000000 */  nop
/* 4B414 8004A814 00000000 */  nop
/* 4B418 8004A818 00000000 */  nop
/* 4B41C 8004A81C 00000000 */  nop
/* 4B420 8004A820 00000000 */  nop
/* 4B424 8004A824 00000000 */  nop
/* 4B428 8004A828 00000000 */  nop
/* 4B42C 8004A82C 00000000 */  nop
/* 4B430 8004A830 00000000 */  nop
/* 4B434 8004A834 00000000 */  nop
/* 4B438 8004A838 00000000 */  nop
/* 4B43C 8004A83C 00000000 */  nop
/* 4B440 8004A840 00000000 */  nop
/* 4B444 8004A844 00000000 */  nop
/* 4B448 8004A848 00000000 */  nop
/* 4B44C 8004A84C 00000000 */  nop
/* 4B450 8004A850 00000000 */  nop
/* 4B454 8004A854 00000000 */  nop
/* 4B458 8004A858 00000000 */  nop
/* 4B45C 8004A85C 00000000 */  nop
/* 4B460 8004A860 00000000 */  nop
/* 4B464 8004A864 00000000 */  nop
/* 4B468 8004A868 00000000 */  nop
/* 4B46C 8004A86C 00000000 */  nop
/* 4B470 8004A870 00000000 */  nop
/* 4B474 8004A874 00000000 */  nop
/* 4B478 8004A878 00000000 */  nop
/* 4B47C 8004A87C 00000000 */  nop