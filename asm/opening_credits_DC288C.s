.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010126C
/* DC288C 8010126C 00047080 */  sll        $t6, $a0, 2
/* DC2890 80101270 01C47021 */  addu       $t6, $t6, $a0
/* DC2894 80101274 3C0F8016 */  lui        $t7, %hi(D_80166250)
/* DC2898 80101278 25EF6250 */  addiu      $t7, $t7, %lo(D_80166250)
/* DC289C 8010127C 000E7100 */  sll        $t6, $t6, 4
/* DC28A0 80101280 01CF1021 */  addu       $v0, $t6, $t7
/* DC28A4 80101284 44800000 */  mtc1       $zero, $f0
/* DC28A8 80101288 3C013F80 */  lui        $at, 0x3f80
/* DC28AC 8010128C A4400030 */  sh         $zero, 0x30($v0)
/* DC28B0 80101290 44812000 */  mtc1       $at, $f4
/* DC28B4 80101294 84590030 */  lh         $t9, 0x30($v0)
/* DC28B8 80101298 241800FF */  addiu      $t8, $zero, 0xff
/* DC28BC 8010129C AC400000 */  sw         $zero, ($v0)
/* DC28C0 801012A0 A4400004 */  sh         $zero, 4($v0)
/* DC28C4 801012A4 A4400006 */  sh         $zero, 6($v0)
/* DC28C8 801012A8 A440000C */  sh         $zero, 0xc($v0)
/* DC28CC 801012AC A440000E */  sh         $zero, 0xe($v0)
/* DC28D0 801012B0 A4400008 */  sh         $zero, 8($v0)
/* DC28D4 801012B4 A440000A */  sh         $zero, 0xa($v0)
/* DC28D8 801012B8 A4400010 */  sh         $zero, 0x10($v0)
/* DC28DC 801012BC A4400012 */  sh         $zero, 0x12($v0)
/* DC28E0 801012C0 AC400014 */  sw         $zero, 0x14($v0)
/* DC28E4 801012C4 AC400018 */  sw         $zero, 0x18($v0)
/* DC28E8 801012C8 A458004E */  sh         $t8, 0x4e($v0)
/* DC28EC 801012CC A4400032 */  sh         $zero, 0x32($v0)
/* DC28F0 801012D0 A4400024 */  sh         $zero, 0x24($v0)
/* DC28F4 801012D4 A440002A */  sh         $zero, 0x2a($v0)
/* DC28F8 801012D8 A440002C */  sh         $zero, 0x2c($v0)
/* DC28FC 801012DC A4400026 */  sh         $zero, 0x26($v0)
/* DC2900 801012E0 A4400028 */  sh         $zero, 0x28($v0)
/* DC2904 801012E4 A4400034 */  sh         $zero, 0x34($v0)
/* DC2908 801012E8 A440004C */  sh         $zero, 0x4c($v0)
/* DC290C 801012EC AC400038 */  sw         $zero, 0x38($v0)
/* DC2910 801012F0 AC40003C */  sw         $zero, 0x3c($v0)
/* DC2914 801012F4 E4400048 */  swc1       $f0, 0x48($v0)
/* DC2918 801012F8 E440001C */  swc1       $f0, 0x1c($v0)
/* DC291C 801012FC E4400020 */  swc1       $f0, 0x20($v0)
/* DC2920 80101300 E4400040 */  swc1       $f0, 0x40($v0)
/* DC2924 80101304 E4440044 */  swc1       $f4, 0x44($v0)
/* DC2928 80101308 03E00008 */  jr         $ra
/* DC292C 8010130C A459002E */   sh        $t9, 0x2e($v0)
