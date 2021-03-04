.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A620
/* 4B220 8004A620 1C200009 */  bgtz       $at, .L8004A648
/* 4B224 8004A624 83A20038 */   lb        $v0, 0x38($sp)
/* 4B228 8004A628 2044FFBC */  addi       $a0, $v0, -0x44
/* 4B22C 8004A62C 1C80FE6B */  bgtz       $a0, .L80049FDC
/* 4B230 8004A630 20430398 */   addi      $v1, $v0, 0x398
/* 4B234 8004A634 20420004 */  addi       $v0, $v0, 4
/* 4B238 8004A638 035BD020 */  add        $k0, $k0, $k1
/* 4B23C 8004A63C 035CD022 */  sub        $k0, $k0, $gp
/* 4B240 8004A640 AC7A0000 */  sw         $k0, ($v1)
/* 4B244 8004A644 A3A20038 */  sb         $v0, 0x38($sp)
.L8004A648:
/* 4B248 8004A648 0D000443 */  jal        func_8400110C
/* 4B24C 8004A64C 03009820 */   add       $s3, $t8, $zero
/* 4B250 8004A650 0260D020 */  add        $k0, $s3, $zero
/* 4B254 8004A654 09000427 */  j          .L8400109C
/* 4B258 8004A658 237C0000 */   addi      $gp, $k1, 0
/* 4B25C 8004A65C 00000000 */  nop
