.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80049EF0
/* 4AAF0 80049EF0 09000419 */  j          .L84001064
/* 4AAF4 80049EF4 20010FC0 */   addi      $at, $zero, 0xfc0
/* 4AAF8 80049EF8 8C220010 */  lw         $v0, 0x10($at)
/* 4AAFC 80049EFC 20030F7F */  addi       $v1, $zero, 0xf7f
/* 4AB00 80049F00 20071080 */  addi       $a3, $zero, 0x1080
/* 4AB04 80049F04 40870000 */  mtc0       $a3, $0
/* 4AB08 80049F08 40820800 */  mtc0       $v0, $1
/* 4AB0C 80049F0C 40831000 */  mtc0       $v1, $2
.L80049F10:
/* 4AB10 80049F10 40043000 */  mfc0       $a0, $6
/* 4AB14 80049F14 1480FFFE */  bnez       $a0, .L80049F10
/* 4AB18 80049F18 00000000 */   nop
/* 4AB1C 80049F1C 0D00040F */  jal        func_8400103C
/* 4AB20 80049F20 00000000 */   nop
/* 4AB24 80049F24 00E00008 */  jr         $a3
/* 4AB28 80049F28 40803800 */   mtc0      $zero, $7
.L80049F2C:
/* 4AB2C 80049F2C 40082000 */  mfc0       $t0, $4
/* 4AB30 80049F30 31080080 */  andi       $t0, $t0, 0x80
/* 4AB34 80049F34 15000002 */  bnez       $t0, .L80049F40
/* 4AB38 80049F38 00000000 */   nop
/* 4AB3C 80049F3C 03E00008 */  jr         $ra
.L80049F40:
/* 4AB40 80049F40 40803800 */   mtc0      $zero, $7
/* 4AB44 80049F44 34085200 */  ori        $t0, $zero, 0x5200
/* 4AB48 80049F48 40882000 */  mtc0       $t0, $4
/* 4AB4C 80049F4C 0000000D */  break
/* 4AB50 80049F50 00000000 */   nop
/* 4AB54 80049F54 8C220004 */  lw         $v0, 4($at)
/* 4AB58 80049F58 30420002 */  andi       $v0, $v0, 2
/* 4AB5C 80049F5C 10400007 */  beqz       $v0, .L80049F7C
/* 4AB60 80049F60 00000000 */   nop
/* 4AB64 80049F64 0D00040F */  jal        func_8400103C
/* 4AB68 80049F68 00000000 */   nop
/* 4AB6C 80049F6C 40025800 */  mfc0       $v0, $11
/* 4AB70 80049F70 30420100 */  andi       $v0, $v0, 0x100
/* 4AB74 80049F74 1C40FFED */  bgtz       $v0, .L80049F2C
/* 4AB78 80049F78 00000000 */   nop
.L80049F7C:
/* 4AB7C 80049F7C 8C220018 */  lw         $v0, 0x18($at)
/* 4AB80 80049F80 8C23001C */  lw         $v1, 0x1c($at)
/* 4AB84 80049F84 2063FFFF */  addi       $v1, $v1, -1
.L80049F88:
/* 4AB88 80049F88 401E2800 */  mfc0       $fp, $5
/* 4AB8C 80049F8C 17C0FFFE */  bnez       $fp, .L80049F88
/* 4AB90 80049F90 00000000 */   nop
/* 4AB94 80049F94 40800000 */  mtc0       $zero, $0
/* 4AB98 80049F98 40820800 */  mtc0       $v0, $1
/* 4AB9C 80049F9C 40831000 */  mtc0       $v1, $2
.L80049FA0:
/* 4ABA0 80049FA0 40043000 */  mfc0       $a0, $6
.L80049FA4:
/* 4ABA4 80049FA4 1480FFFE */  bnez       $a0, .L80049FA0
/* 4ABA8 80049FA8 00000000 */   nop
/* 4ABAC 80049FAC 0D00040F */  jal        func_8400103C
/* 4ABB0 80049FB0 00000000 */   nop
/* 4ABB4 80049FB4 09000402 */  j          .L84001008
/* 4ABB8 80049FB8 00000000 */   nop
/* 4ABBC 80049FBC 00000000 */  nop
/* 4ABC0 80049FC0 090005CE */  j          .L84001738
/* 4ABC4 80049FC4 201D0110 */   addi      $sp, $zero, 0x110
/* 4ABC8 80049FC8 0D0007F5 */  jal        func_84001FD4
/* 4ABCC 80049FCC 0016A020 */   add       $s4, $zero, $s6
/* 4ABD0 80049FD0 842200B8 */  lh         $v0, 0xb8($at)
/* 4ABD4 80049FD4 00400008 */  jr         $v0
/* 4ABD8 80049FD8 001915C2 */   srl       $v0, $t9, 0x17
/* 4ABDC 80049FDC 40022000 */  mfc0       $v0, $4
/* 4ABE0 80049FE0 30420080 */  andi       $v0, $v0, 0x80
/* 4ABE4 80049FE4 14400006 */  bnez       $v0, .L8004A000
/* 4ABE8 80049FE8 84150026 */   lh        $s5, 0x26($zero)
/* 4ABEC 80049FEC 179BFFED */  bne        $gp, $k1, .L80049FA4
/* 4ABF0 80049FF0 8F790000 */   lw        $t9, ($k1)
/* 4ABF4 80049FF4 09000432 */  j          .L840010C8
/* 4ABF8 80049FF8 841F0104 */   lh        $ra, 0x104($zero)
/* 4ABFC 80049FFC 841500B6 */  lh         $s5, 0xb6($zero)
.L8004A000:
/* 4AC00 8004A000 0900043C */  j          .L840010F0
/* 4AC04 8004A004 341E0020 */   ori       $fp, $zero, 0x20
/* 4AC08 8004A008 201C0AE0 */  addi       $gp, $zero, 0xae0
/* 4AC0C 8004A00C 001FA820 */  add        $s5, $zero, $ra
/* 4AC10 8004A010 201409A0 */  addi       $s4, $zero, 0x9a0
/* 4AC14 8004A014 001A9820 */  add        $s3, $zero, $k0
/* 4AC18 8004A018 235A0140 */  addi       $k0, $k0, 0x140
/* 4AC1C 8004A01C 0D0007F5 */  jal        func_84001FD4
/* 4AC20 8004A020 2012013F */   addi      $s2, $zero, 0x13f
/* 4AC24 8004A024 02A00008 */  jr         $s5
/* 4AC28 8004A028 201B09A0 */   addi      $k1, $zero, 0x9a0
/* 4AC2C 8004A02C 001FA820 */  add        $s5, $zero, $ra
/* 4AC30 8004A030 8FD30000 */  lw         $s3, ($fp)
/* 4AC34 8004A034 87D20004 */  lh         $s2, 4($fp)
/* 4AC38 8004A038 0D0007F5 */  jal        func_84001FD4
/* 4AC3C 8004A03C 87D40006 */   lh        $s4, 6($fp)
/* 4AC40 8004A040 0D0007F1 */  jal        func_84001FC4
/* 4AC44 8004A044 00000000 */   nop
/* 4AC48 8004A048 02A00008 */  jr         $s5
/* 4AC4C 8004A04C 00136582 */   srl       $t4, $s3, 0x16
/* 4AC50 8004A050 318C003C */  andi       $t4, $t4, 0x3c
/* 4AC54 8004A054 8D8C0160 */  lw         $t4, 0x160($t4)
/* 4AC58 8004A058 00139A00 */  sll        $s3, $s3, 8
/* 4AC5C 8004A05C 00139A02 */  srl        $s3, $s3, 8
/* 4AC60 8004A060 03E00008 */  jr         $ra
/* 4AC64 8004A064 026C9820 */   add       $s3, $s3, $t4
/* 4AC68 8004A068 001FA820 */  add        $s5, $zero, $ra
/* 4AC6C 8004A06C 8FB30018 */  lw         $s3, 0x18($sp)
/* 4AC70 8004A070 22F2F320 */  addi       $s2, $s7, -0xce0
/* 4AC74 8004A074 8FB70044 */  lw         $s7, 0x44($sp)
/* 4AC78 8004A078 1A40001A */  blez       $s2, .L8004A0E4
/* 4AC7C 8004A07C 0272A020 */   add       $s4, $s3, $s2
/* 4AC80 8004A080 02F4A022 */  sub        $s4, $s7, $s4
/* 4AC84 8004A084 06810008 */  bgez       $s4, .L8004A0A8
.L8004A088:
/* 4AC88 8004A088 40145800 */   mfc0      $s4, $11
/* 4AC8C 8004A08C 32940400 */  andi       $s4, $s4, 0x400
/* 4AC90 8004A090 1680FFFD */  bnez       $s4, .L8004A088
.L8004A094:
/* 4AC94 8004A094 40175000 */   mfc0      $s7, $10
/* 4AC98 8004A098 8FB30040 */  lw         $s3, 0x40($sp)
/* 4AC9C 8004A09C 12F3FFFD */  beq        $s7, $s3, .L8004A094
/* 4ACA0 8004A0A0 00000000 */   nop
/* 4ACA4 8004A0A4 40934000 */  mtc0       $s3, $8
.L8004A0A8:
/* 4ACA8 8004A0A8 40175000 */  mfc0       $s7, $10
/* 4ACAC 8004A0AC 0277A022 */  sub        $s4, $s3, $s7
/* 4ACB0 8004A0B0 06810004 */  bgez       $s4, .L8004A0C4
/* 4ACB4 8004A0B4 0272A020 */   add       $s4, $s3, $s2
/* 4ACB8 8004A0B8 0297A022 */  sub        $s4, $s4, $s7
/* 4ACBC 8004A0BC 0681FFFA */  bgez       $s4, .L8004A0A8
/* 4ACC0 8004A0C0 00000000 */   nop
.L8004A0C4:
/* 4ACC4 8004A0C4 0272B820 */  add        $s7, $s3, $s2
/* 4ACC8 8004A0C8 2252FFFF */  addi       $s2, $s2, -1
/* 4ACCC 8004A0CC 20140CE0 */  addi       $s4, $zero, 0xce0
/* 4ACD0 8004A0D0 0D0007F6 */  jal        func_84001FD8
/* 4ACD4 8004A0D4 20110001 */   addi      $s1, $zero, 1
/* 4ACD8 8004A0D8 0D0007F1 */  jal        func_84001FC4
/* 4ACDC 8004A0DC AFB70018 */   sw        $s7, 0x18($sp)
/* 4ACE0 8004A0E0 40974800 */  mtc0       $s7, $9
.L8004A0E4:
/* 4ACE4 8004A0E4 02A00008 */  jr         $s5
/* 4ACE8 8004A0E8 20170CE0 */   addi      $s7, $zero, 0xce0
/* 4ACEC 8004A0EC 304200FE */  andi       $v0, $v0, 0xfe
/* 4ACF0 8004A0F0 84420076 */  lh         $v0, 0x76($v0)
/* 4ACF4 8004A0F4 00400008 */  jr         $v0
/* 4ACF8 8004A0F8 9361FFFF */   lbu       $at, -1($k1)
/* 4ACFC 8004A0FC 841800BA */  lh         $t8, 0xba($zero)
/* 4AD00 8004A100 841F0396 */  lh         $ra, 0x396($zero)
/* 4AD04 8004A104 9361FFFD */  lbu        $at, -3($k1)
/* 4AD08 8004A108 9362FFFE */  lbu        $v0, -2($k1)
/* 4AD0C 8004A10C 9363FFFF */  lbu        $v1, -1($k1)
/* 4AD10 8004A110 9421031E */  lhu        $at, 0x31e($at)
/* 4AD14 8004A114 9442031E */  lhu        $v0, 0x31e($v0)
/* 4AD18 8004A118 9463031E */  lhu        $v1, 0x31e($v1)
/* 4AD1C 8004A11C 03E00008 */  jr         $ra
