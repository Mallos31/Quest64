.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010004C
/* DA693C 8010004C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA6940 80100050 AFBF0014 */  sw         $ra, 0x14($sp)
/* DA6944 80100054 0C04002A */  jal        func_801000A8
/* DA6948 80100058 00000000 */   nop
/* DA694C 8010005C 1440000D */  bnez       $v0, .L80100094
/* DA6950 80100060 3C038012 */   lui       $v1, %hi(D_8011AD44)
/* DA6954 80100064 2463AD44 */  addiu      $v1, $v1, %lo(D_8011AD44)
/* DA6958 80100068 8C620000 */  lw         $v0, ($v1)
/* DA695C 8010006C 2401000F */  addiu      $at, $zero, 0xf
/* DA6960 80100070 14400003 */  bnez       $v0, .L80100080
/* DA6964 80100074 00000000 */   nop
/* DA6968 80100078 10000007 */  b          .L80100098
/* DA696C 8010007C 24020001 */   addiu     $v0, $zero, 1
.L80100080:
/* DA6970 80100080 54410005 */  bnel       $v0, $at, .L80100098
/* DA6974 80100084 24020002 */   addiu     $v0, $zero, 2
/* DA6978 80100088 AC600000 */  sw         $zero, ($v1)
/* DA697C 8010008C 10000002 */  b          .L80100098
/* DA6980 80100090 00001025 */   or        $v0, $zero, $zero
.L80100094:
/* DA6984 80100094 24020002 */  addiu      $v0, $zero, 2
.L80100098:
/* DA6988 80100098 8FBF0014 */  lw         $ra, 0x14($sp)
/* DA698C 8010009C 27BD0018 */  addiu      $sp, $sp, 0x18
/* DA6990 801000A0 03E00008 */  jr         $ra
/* DA6994 801000A4 00000000 */   nop
