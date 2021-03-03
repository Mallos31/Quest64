.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100970
/* E281B0 80100970 3C013F80 */  lui        $at, 0x3f80
/* E281B4 80100974 3C028015 */  lui        $v0, %hi(D_80156FE8)
/* E281B8 80100978 44811000 */  mtc1       $at, $f2
/* E281BC 8010097C 44800000 */  mtc1       $zero, $f0
/* E281C0 80100980 24426FE8 */  addiu      $v0, $v0, %lo(D_80156FE8)
/* E281C4 80100984 00001825 */  or         $v1, $zero, $zero
/* E281C8 80100988 24050096 */  addiu      $a1, $zero, 0x96
/* E281CC 8010098C 240400FF */  addiu      $a0, $zero, 0xff
.L80100990:
/* E281D0 80100990 A4400080 */  sh         $zero, 0x80($v0)
/* E281D4 80100994 A4400030 */  sh         $zero, 0x30($v0)
/* E281D8 80100998 844F0080 */  lh         $t7, 0x80($v0)
/* E281DC 8010099C 844E0030 */  lh         $t6, 0x30($v0)
/* E281E0 801009A0 24630002 */  addiu      $v1, $v1, 2
/* E281E4 801009A4 AC400050 */  sw         $zero, 0x50($v0)
/* E281E8 801009A8 A4400054 */  sh         $zero, 0x54($v0)
/* E281EC 801009AC A4400056 */  sh         $zero, 0x56($v0)
/* E281F0 801009B0 A440005C */  sh         $zero, 0x5c($v0)
/* E281F4 801009B4 A440005E */  sh         $zero, 0x5e($v0)
/* E281F8 801009B8 A4400058 */  sh         $zero, 0x58($v0)
/* E281FC 801009BC A440005A */  sh         $zero, 0x5a($v0)
/* E28200 801009C0 A4400060 */  sh         $zero, 0x60($v0)
/* E28204 801009C4 A4400062 */  sh         $zero, 0x62($v0)
/* E28208 801009C8 AC400064 */  sw         $zero, 0x64($v0)
/* E2820C 801009CC AC400068 */  sw         $zero, 0x68($v0)
/* E28210 801009D0 E4400098 */  swc1       $f0, 0x98($v0)
/* E28214 801009D4 A444009E */  sh         $a0, 0x9e($v0)
/* E28218 801009D8 A4400082 */  sh         $zero, 0x82($v0)
/* E2821C 801009DC E440006C */  swc1       $f0, 0x6c($v0)
/* E28220 801009E0 E4400070 */  swc1       $f0, 0x70($v0)
/* E28224 801009E4 A4400074 */  sh         $zero, 0x74($v0)
/* E28228 801009E8 A440007A */  sh         $zero, 0x7a($v0)
/* E2822C 801009EC A440007C */  sh         $zero, 0x7c($v0)
/* E28230 801009F0 A4400076 */  sh         $zero, 0x76($v0)
/* E28234 801009F4 A4400078 */  sh         $zero, 0x78($v0)
/* E28238 801009F8 A4400084 */  sh         $zero, 0x84($v0)
/* E2823C 801009FC E4400090 */  swc1       $f0, 0x90($v0)
/* E28240 80100A00 E4420094 */  swc1       $f2, 0x94($v0)
/* E28244 80100A04 A440009C */  sh         $zero, 0x9c($v0)
/* E28248 80100A08 AC400088 */  sw         $zero, 0x88($v0)
/* E2824C 80100A0C AC40008C */  sw         $zero, 0x8c($v0)
/* E28250 80100A10 244200A0 */  addiu      $v0, $v0, 0xa0
/* E28254 80100A14 AC40FF60 */  sw         $zero, -0xa0($v0)
/* E28258 80100A18 A440FF64 */  sh         $zero, -0x9c($v0)
/* E2825C 80100A1C A440FF66 */  sh         $zero, -0x9a($v0)
/* E28260 80100A20 A440FF6C */  sh         $zero, -0x94($v0)
/* E28264 80100A24 A440FF6E */  sh         $zero, -0x92($v0)
/* E28268 80100A28 A440FF68 */  sh         $zero, -0x98($v0)
/* E2826C 80100A2C A440FF6A */  sh         $zero, -0x96($v0)
/* E28270 80100A30 A440FF70 */  sh         $zero, -0x90($v0)
/* E28274 80100A34 A440FF72 */  sh         $zero, -0x8e($v0)
/* E28278 80100A38 AC40FF74 */  sw         $zero, -0x8c($v0)
/* E2827C 80100A3C AC40FF78 */  sw         $zero, -0x88($v0)
/* E28280 80100A40 E440FFA8 */  swc1       $f0, -0x58($v0)
/* E28284 80100A44 A444FFAE */  sh         $a0, -0x52($v0)
/* E28288 80100A48 A440FF92 */  sh         $zero, -0x6e($v0)
/* E2828C 80100A4C E440FF7C */  swc1       $f0, -0x84($v0)
/* E28290 80100A50 E440FF80 */  swc1       $f0, -0x80($v0)
/* E28294 80100A54 A440FF84 */  sh         $zero, -0x7c($v0)
/* E28298 80100A58 A440FF8A */  sh         $zero, -0x76($v0)
/* E2829C 80100A5C A440FF8C */  sh         $zero, -0x74($v0)
/* E282A0 80100A60 A440FF86 */  sh         $zero, -0x7a($v0)
/* E282A4 80100A64 A440FF88 */  sh         $zero, -0x78($v0)
/* E282A8 80100A68 A440FF94 */  sh         $zero, -0x6c($v0)
/* E282AC 80100A6C E440FFA0 */  swc1       $f0, -0x60($v0)
/* E282B0 80100A70 E442FFA4 */  swc1       $f2, -0x5c($v0)
/* E282B4 80100A74 A440FFAC */  sh         $zero, -0x54($v0)
/* E282B8 80100A78 AC40FF98 */  sw         $zero, -0x68($v0)
/* E282BC 80100A7C AC40FF9C */  sw         $zero, -0x64($v0)
/* E282C0 80100A80 A44FFFDE */  sh         $t7, -0x22($v0)
/* E282C4 80100A84 1465FFC2 */  bne        $v1, $a1, .L80100990
/* E282C8 80100A88 A44EFF8E */   sh        $t6, -0x72($v0)
/* E282CC 80100A8C 03E00008 */  jr         $ra
/* E282D0 80100A90 00000000 */   nop
