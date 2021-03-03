.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101080
/* DC26A0 80101080 00047400 */  sll        $t6, $a0, 0x10
/* DC26A4 80101084 000E7C03 */  sra        $t7, $t6, 0x10
/* DC26A8 80101088 000F5080 */  sll        $t2, $t7, 2
/* DC26AC 8010108C 014F5021 */  addu       $t2, $t2, $t7
/* DC26B0 80101090 3C0B8016 */  lui        $t3, %hi(D_80166250)
/* DC26B4 80101094 256B6250 */  addiu      $t3, $t3, %lo(D_80166250)
/* DC26B8 80101098 000A5100 */  sll        $t2, $t2, 4
/* DC26BC 8010109C 014B1021 */  addu       $v0, $t2, $t3
/* DC26C0 801010A0 44800000 */  mtc1       $zero, $f0
/* DC26C4 801010A4 87AC0012 */  lh         $t4, 0x12($sp)
/* DC26C8 801010A8 87AD0016 */  lh         $t5, 0x16($sp)
/* DC26CC 801010AC A4400030 */  sh         $zero, 0x30($v0)
/* DC26D0 801010B0 A44C000C */  sh         $t4, 0xc($v0)
/* DC26D4 801010B4 A44D000E */  sh         $t5, 0xe($v0)
/* DC26D8 801010B8 87AE001A */  lh         $t6, 0x1a($sp)
/* DC26DC 801010BC 87AF001E */  lh         $t7, 0x1e($sp)
/* DC26E0 801010C0 87B80022 */  lh         $t8, 0x22($sp)
/* DC26E4 801010C4 87B90026 */  lh         $t9, 0x26($sp)
/* DC26E8 801010C8 8FA8002C */  lw         $t0, 0x2c($sp)
/* DC26EC 801010CC 8FA90028 */  lw         $t1, 0x28($sp)
/* DC26F0 801010D0 8FAB0030 */  lw         $t3, 0x30($sp)
/* DC26F4 801010D4 8FAC0034 */  lw         $t4, 0x34($sp)
/* DC26F8 801010D8 844D0030 */  lh         $t5, 0x30($v0)
/* DC26FC 801010DC 240A00FF */  addiu      $t2, $zero, 0xff
/* DC2700 801010E0 AFA40000 */  sw         $a0, ($sp)
/* DC2704 801010E4 AFA60008 */  sw         $a2, 8($sp)
/* DC2708 801010E8 AFA7000C */  sw         $a3, 0xc($sp)
/* DC270C 801010EC AC450000 */  sw         $a1, ($v0)
/* DC2710 801010F0 A4460004 */  sh         $a2, 4($v0)
/* DC2714 801010F4 A4470006 */  sh         $a3, 6($v0)
/* DC2718 801010F8 A440004C */  sh         $zero, 0x4c($v0)
/* DC271C 801010FC A44A004E */  sh         $t2, 0x4e($v0)
/* DC2720 80101100 A4400032 */  sh         $zero, 0x32($v0)
/* DC2724 80101104 A4400024 */  sh         $zero, 0x24($v0)
/* DC2728 80101108 A4400034 */  sh         $zero, 0x34($v0)
/* DC272C 8010110C E4400040 */  swc1       $f0, 0x40($v0)
/* DC2730 80101110 E4400044 */  swc1       $f0, 0x44($v0)
/* DC2734 80101114 E4400048 */  swc1       $f0, 0x48($v0)
/* DC2738 80101118 E440001C */  swc1       $f0, 0x1c($v0)
/* DC273C 8010111C E4400020 */  swc1       $f0, 0x20($v0)
/* DC2740 80101120 A44E0008 */  sh         $t6, 8($v0)
/* DC2744 80101124 A44F000A */  sh         $t7, 0xa($v0)
/* DC2748 80101128 A4580010 */  sh         $t8, 0x10($v0)
/* DC274C 8010112C A4590012 */  sh         $t9, 0x12($v0)
/* DC2750 80101130 AC480014 */  sw         $t0, 0x14($v0)
/* DC2754 80101134 AC490018 */  sw         $t1, 0x18($v0)
/* DC2758 80101138 AC4B0038 */  sw         $t3, 0x38($v0)
/* DC275C 8010113C AC4C003C */  sw         $t4, 0x3c($v0)
/* DC2760 80101140 03E00008 */  jr         $ra
/* DC2764 80101144 A44D002E */   sh        $t5, 0x2e($v0)

glabel func_80101148
/* DC2768 80101148 3C013F80 */  lui        $at, 0x3f80
/* DC276C 8010114C 3C028016 */  lui        $v0, %hi(D_80166250)
/* DC2770 80101150 44811000 */  mtc1       $at, $f2
/* DC2774 80101154 44800000 */  mtc1       $zero, $f0
/* DC2778 80101158 24426250 */  addiu      $v0, $v0, %lo(D_80166250)
/* DC277C 8010115C 00001825 */  or         $v1, $zero, $zero
/* DC2780 80101160 24050096 */  addiu      $a1, $zero, 0x96
/* DC2784 80101164 240400FF */  addiu      $a0, $zero, 0xff
.L80101168:
/* DC2788 80101168 A4400080 */  sh         $zero, 0x80($v0)
/* DC278C 8010116C A4400030 */  sh         $zero, 0x30($v0)
/* DC2790 80101170 844F0080 */  lh         $t7, 0x80($v0)
/* DC2794 80101174 844E0030 */  lh         $t6, 0x30($v0)
/* DC2798 80101178 24630002 */  addiu      $v1, $v1, 2
/* DC279C 8010117C AC400050 */  sw         $zero, 0x50($v0)
/* DC27A0 80101180 A4400054 */  sh         $zero, 0x54($v0)
/* DC27A4 80101184 A4400056 */  sh         $zero, 0x56($v0)
/* DC27A8 80101188 A440005C */  sh         $zero, 0x5c($v0)
/* DC27AC 8010118C A440005E */  sh         $zero, 0x5e($v0)
/* DC27B0 80101190 A4400058 */  sh         $zero, 0x58($v0)
/* DC27B4 80101194 A440005A */  sh         $zero, 0x5a($v0)
/* DC27B8 80101198 A4400060 */  sh         $zero, 0x60($v0)
/* DC27BC 8010119C A4400062 */  sh         $zero, 0x62($v0)
/* DC27C0 801011A0 AC400064 */  sw         $zero, 0x64($v0)
/* DC27C4 801011A4 AC400068 */  sw         $zero, 0x68($v0)
/* DC27C8 801011A8 E4400098 */  swc1       $f0, 0x98($v0)
/* DC27CC 801011AC A444009E */  sh         $a0, 0x9e($v0)
/* DC27D0 801011B0 A4400082 */  sh         $zero, 0x82($v0)
/* DC27D4 801011B4 E440006C */  swc1       $f0, 0x6c($v0)
/* DC27D8 801011B8 E4400070 */  swc1       $f0, 0x70($v0)
/* DC27DC 801011BC A4400074 */  sh         $zero, 0x74($v0)
/* DC27E0 801011C0 A440007A */  sh         $zero, 0x7a($v0)
/* DC27E4 801011C4 A440007C */  sh         $zero, 0x7c($v0)
/* DC27E8 801011C8 A4400076 */  sh         $zero, 0x76($v0)
/* DC27EC 801011CC A4400078 */  sh         $zero, 0x78($v0)
/* DC27F0 801011D0 A4400084 */  sh         $zero, 0x84($v0)
/* DC27F4 801011D4 E4400090 */  swc1       $f0, 0x90($v0)
/* DC27F8 801011D8 E4420094 */  swc1       $f2, 0x94($v0)
/* DC27FC 801011DC A440009C */  sh         $zero, 0x9c($v0)
/* DC2800 801011E0 AC400088 */  sw         $zero, 0x88($v0)
/* DC2804 801011E4 AC40008C */  sw         $zero, 0x8c($v0)
/* DC2808 801011E8 244200A0 */  addiu      $v0, $v0, 0xa0
/* DC280C 801011EC AC40FF60 */  sw         $zero, -0xa0($v0)
/* DC2810 801011F0 A440FF64 */  sh         $zero, -0x9c($v0)
/* DC2814 801011F4 A440FF66 */  sh         $zero, -0x9a($v0)
/* DC2818 801011F8 A440FF6C */  sh         $zero, -0x94($v0)
/* DC281C 801011FC A440FF6E */  sh         $zero, -0x92($v0)
/* DC2820 80101200 A440FF68 */  sh         $zero, -0x98($v0)
/* DC2824 80101204 A440FF6A */  sh         $zero, -0x96($v0)
/* DC2828 80101208 A440FF70 */  sh         $zero, -0x90($v0)
/* DC282C 8010120C A440FF72 */  sh         $zero, -0x8e($v0)
/* DC2830 80101210 AC40FF74 */  sw         $zero, -0x8c($v0)
/* DC2834 80101214 AC40FF78 */  sw         $zero, -0x88($v0)
/* DC2838 80101218 E440FFA8 */  swc1       $f0, -0x58($v0)
/* DC283C 8010121C A444FFAE */  sh         $a0, -0x52($v0)
/* DC2840 80101220 A440FF92 */  sh         $zero, -0x6e($v0)
/* DC2844 80101224 E440FF7C */  swc1       $f0, -0x84($v0)
/* DC2848 80101228 E440FF80 */  swc1       $f0, -0x80($v0)
/* DC284C 8010122C A440FF84 */  sh         $zero, -0x7c($v0)
/* DC2850 80101230 A440FF8A */  sh         $zero, -0x76($v0)
/* DC2854 80101234 A440FF8C */  sh         $zero, -0x74($v0)
/* DC2858 80101238 A440FF86 */  sh         $zero, -0x7a($v0)
/* DC285C 8010123C A440FF88 */  sh         $zero, -0x78($v0)
/* DC2860 80101240 A440FF94 */  sh         $zero, -0x6c($v0)
/* DC2864 80101244 E440FFA0 */  swc1       $f0, -0x60($v0)
/* DC2868 80101248 E442FFA4 */  swc1       $f2, -0x5c($v0)
/* DC286C 8010124C A440FFAC */  sh         $zero, -0x54($v0)
/* DC2870 80101250 AC40FF98 */  sw         $zero, -0x68($v0)
/* DC2874 80101254 AC40FF9C */  sw         $zero, -0x64($v0)
/* DC2878 80101258 A44FFFDE */  sh         $t7, -0x22($v0)
/* DC287C 8010125C 1465FFC2 */  bne        $v1, $a1, .L80101168
/* DC2880 80101260 A44EFF8E */   sh        $t6, -0x72($v0)
/* DC2884 80101264 03E00008 */  jr         $ra
/* DC2888 80101268 00000000 */   nop
