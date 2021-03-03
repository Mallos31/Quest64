.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_801008A8
/* E280E8 801008A8 00047400 */  sll        $t6, $a0, 0x10
/* E280EC 801008AC 000E7C03 */  sra        $t7, $t6, 0x10
/* E280F0 801008B0 000F5080 */  sll        $t2, $t7, 2
/* E280F4 801008B4 014F5021 */  addu       $t2, $t2, $t7
/* E280F8 801008B8 3C0B8015 */  lui        $t3, %hi(D_80156FE8)
/* E280FC 801008BC 256B6FE8 */  addiu      $t3, $t3, %lo(D_80156FE8)
/* E28100 801008C0 000A5100 */  sll        $t2, $t2, 4
/* E28104 801008C4 014B1021 */  addu       $v0, $t2, $t3
/* E28108 801008C8 44800000 */  mtc1       $zero, $f0
/* E2810C 801008CC 87AC0012 */  lh         $t4, 0x12($sp)
/* E28110 801008D0 87AD0016 */  lh         $t5, 0x16($sp)
/* E28114 801008D4 A4400030 */  sh         $zero, 0x30($v0)
/* E28118 801008D8 A44C000C */  sh         $t4, 0xc($v0)
/* E2811C 801008DC A44D000E */  sh         $t5, 0xe($v0)
/* E28120 801008E0 87AE001A */  lh         $t6, 0x1a($sp)
/* E28124 801008E4 87AF001E */  lh         $t7, 0x1e($sp)
/* E28128 801008E8 87B80022 */  lh         $t8, 0x22($sp)
/* E2812C 801008EC 87B90026 */  lh         $t9, 0x26($sp)
/* E28130 801008F0 8FA8002C */  lw         $t0, 0x2c($sp)
/* E28134 801008F4 8FA90028 */  lw         $t1, 0x28($sp)
/* E28138 801008F8 8FAB0030 */  lw         $t3, 0x30($sp)
/* E2813C 801008FC 8FAC0034 */  lw         $t4, 0x34($sp)
/* E28140 80100900 844D0030 */  lh         $t5, 0x30($v0)
/* E28144 80100904 240A00FF */  addiu      $t2, $zero, 0xff
/* E28148 80100908 AFA40000 */  sw         $a0, ($sp)
/* E2814C 8010090C AFA60008 */  sw         $a2, 8($sp)
/* E28150 80100910 AFA7000C */  sw         $a3, 0xc($sp)
/* E28154 80100914 AC450000 */  sw         $a1, ($v0)
/* E28158 80100918 A4460004 */  sh         $a2, 4($v0)
/* E2815C 8010091C A4470006 */  sh         $a3, 6($v0)
/* E28160 80100920 A440004C */  sh         $zero, 0x4c($v0)
/* E28164 80100924 A44A004E */  sh         $t2, 0x4e($v0)
/* E28168 80100928 A4400032 */  sh         $zero, 0x32($v0)
/* E2816C 8010092C A4400024 */  sh         $zero, 0x24($v0)
/* E28170 80100930 A4400034 */  sh         $zero, 0x34($v0)
/* E28174 80100934 E4400040 */  swc1       $f0, 0x40($v0)
/* E28178 80100938 E4400044 */  swc1       $f0, 0x44($v0)
/* E2817C 8010093C E4400048 */  swc1       $f0, 0x48($v0)
/* E28180 80100940 E440001C */  swc1       $f0, 0x1c($v0)
/* E28184 80100944 E4400020 */  swc1       $f0, 0x20($v0)
/* E28188 80100948 A44E0008 */  sh         $t6, 8($v0)
/* E2818C 8010094C A44F000A */  sh         $t7, 0xa($v0)
/* E28190 80100950 A4580010 */  sh         $t8, 0x10($v0)
/* E28194 80100954 A4590012 */  sh         $t9, 0x12($v0)
/* E28198 80100958 AC480014 */  sw         $t0, 0x14($v0)
/* E2819C 8010095C AC490018 */  sw         $t1, 0x18($v0)
/* E281A0 80100960 AC4B0038 */  sw         $t3, 0x38($v0)
/* E281A4 80100964 AC4C003C */  sw         $t4, 0x3c($v0)
/* E281A8 80100968 03E00008 */  jr         $ra
/* E281AC 8010096C A44D002E */   sh        $t5, 0x2e($v0)
