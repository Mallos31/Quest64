.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100A94
/* E282D4 80100A94 00047080 */  sll        $t6, $a0, 2
/* E282D8 80100A98 01C47021 */  addu       $t6, $t6, $a0
/* E282DC 80100A9C 3C0F8015 */  lui        $t7, %hi(D_80156FE8)
/* E282E0 80100AA0 25EF6FE8 */  addiu      $t7, $t7, %lo(D_80156FE8)
/* E282E4 80100AA4 000E7100 */  sll        $t6, $t6, 4
/* E282E8 80100AA8 01CF1021 */  addu       $v0, $t6, $t7
/* E282EC 80100AAC 44800000 */  mtc1       $zero, $f0
/* E282F0 80100AB0 3C013F80 */  lui        $at, 0x3f80
/* E282F4 80100AB4 A4400030 */  sh         $zero, 0x30($v0)
/* E282F8 80100AB8 44812000 */  mtc1       $at, $f4
/* E282FC 80100ABC 84590030 */  lh         $t9, 0x30($v0)
/* E28300 80100AC0 241800FF */  addiu      $t8, $zero, 0xff
/* E28304 80100AC4 AC400000 */  sw         $zero, ($v0)
/* E28308 80100AC8 A4400004 */  sh         $zero, 4($v0)
/* E2830C 80100ACC A4400006 */  sh         $zero, 6($v0)
/* E28310 80100AD0 A440000C */  sh         $zero, 0xc($v0)
/* E28314 80100AD4 A440000E */  sh         $zero, 0xe($v0)
/* E28318 80100AD8 A4400008 */  sh         $zero, 8($v0)
/* E2831C 80100ADC A440000A */  sh         $zero, 0xa($v0)
/* E28320 80100AE0 A4400010 */  sh         $zero, 0x10($v0)
/* E28324 80100AE4 A4400012 */  sh         $zero, 0x12($v0)
/* E28328 80100AE8 AC400014 */  sw         $zero, 0x14($v0)
/* E2832C 80100AEC AC400018 */  sw         $zero, 0x18($v0)
/* E28330 80100AF0 A458004E */  sh         $t8, 0x4e($v0)
/* E28334 80100AF4 A4400032 */  sh         $zero, 0x32($v0)
/* E28338 80100AF8 A4400024 */  sh         $zero, 0x24($v0)
/* E2833C 80100AFC A440002A */  sh         $zero, 0x2a($v0)
/* E28340 80100B00 A440002C */  sh         $zero, 0x2c($v0)
/* E28344 80100B04 A4400026 */  sh         $zero, 0x26($v0)
/* E28348 80100B08 A4400028 */  sh         $zero, 0x28($v0)
/* E2834C 80100B0C A4400034 */  sh         $zero, 0x34($v0)
/* E28350 80100B10 A440004C */  sh         $zero, 0x4c($v0)
/* E28354 80100B14 AC400038 */  sw         $zero, 0x38($v0)
/* E28358 80100B18 AC40003C */  sw         $zero, 0x3c($v0)
/* E2835C 80100B1C E4400048 */  swc1       $f0, 0x48($v0)
/* E28360 80100B20 E440001C */  swc1       $f0, 0x1c($v0)
/* E28364 80100B24 E4400020 */  swc1       $f0, 0x20($v0)
/* E28368 80100B28 E4400040 */  swc1       $f0, 0x40($v0)
/* E2836C 80100B2C E4440044 */  swc1       $f4, 0x44($v0)
/* E28370 80100B30 03E00008 */  jr         $ra
/* E28374 80100B34 A459002E */   sh        $t9, 0x2e($v0)
