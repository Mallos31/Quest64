.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A5C8
/* 4B1C8 8004A5C8 20080460 */  addi       $t0, $zero, 0x460
/* 4B1CC 8004A5CC C90B1803 */  bbit0      $t0, 0xb, .L800505DC
/* 4B1D0 8004A5D0 C90B1C03 */   bbit0     $t0, 0xb, .L800515E0
/* 4B1D4 8004A5D4 C90F1807 */   bbit0     $t0, 0xf, .L800505F4
/* 4B1D8 8004A5D8 C90F1C07 */   bbit0     $t0, 0xf, .L800515F8
/* 4B1DC 8004A5DC C9081800 */   bbit0     $t0, 8, .L800505E0
/* 4B1E0 8004A5E0 C9091801 */   bbit0     $t0, 9, .L800505E8
/* 4B1E4 8004A5E4 C90A1802 */   bbit0     $t0, 0xa, .L800505F0
/* 4B1E8 8004A5E8 C90C1804 */   bbit0     $t0, 0xc, .L800505FC
/* 4B1EC 8004A5EC C90D1805 */   bbit0     $t0, 0xd, .L80050604
/* 4B1F0 8004A5F0 C90E1806 */   bbit0     $t0, 0xe, .L8005060C
/* 4B1F4 8004A5F4 C9081C00 */   bbit0     $t0, 8, .L800515F8
/* 4B1F8 8004A5F8 C9091C01 */   bbit0     $t0, 9, .L80051600
/* 4B1FC 8004A5FC C90A1C02 */   bbit0     $t0, 0xa, .L80051608
/* 4B200 8004A600 C90C1C04 */   bbit0     $t0, 0xc, .L80051614
/* 4B204 8004A604 C90D1C05 */   bbit0     $t0, 0xd, .L8005161C
/* 4B208 8004A608 03E00008 */   jr        $ra
/* 4B20C 8004A60C C90E1C06 */   bbit0     $t0, 0xe, .L80051628
