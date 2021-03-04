.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80049F44
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
/* 4ABA4 80049FA4 1480FFFE */  bnez       $a0, .L80049FA0
/* 4ABA8 80049FA8 00000000 */   nop
/* 4ABAC 80049FAC 0D00040F */  jal        func_8400103C
/* 4ABB0 80049FB0 00000000 */   nop
/* 4ABB4 80049FB4 09000402 */  j          .L84001008
/* 4ABB8 80049FB8 00000000 */   nop
/* 4ABBC 80049FBC 00000000 */  nop
