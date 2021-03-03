.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80102F14
/* DA9804 80102F14 948E0002 */  lhu        $t6, 2($a0)
/* DA9808 80102F18 3C058010 */  lui        $a1, %hi(D_80103420)
/* DA980C 80102F1C 24A53420 */  addiu      $a1, $a1, %lo(D_80103420)
/* DA9810 80102F20 25CFFFFF */  addiu      $t7, $t6, -1
/* DA9814 80102F24 A48F0002 */  sh         $t7, 2($a0)
/* DA9818 80102F28 8CB80000 */  lw         $t8, ($a1)
/* DA981C 80102F2C 44801000 */  mtc1       $zero, $f2
/* DA9820 80102F30 3C0C8008 */  lui        $t4, %hi(UNK_DisplayListCommand)
/* DA9824 80102F34 33190001 */  andi       $t9, $t8, 1
/* DA9828 80102F38 13200006 */  beqz       $t9, .L80102F54
/* DA982C 80102F3C 258CB2FC */   addiu     $t4, $t4, %lo(UNK_DisplayListCommand)
/* DA9830 80102F40 C4840008 */  lwc1       $f4, 8($a0)
/* DA9834 80102F44 C4860004 */  lwc1       $f6, 4($a0)
/* DA9838 80102F48 46062200 */  add.s      $f8, $f4, $f6
/* DA983C 80102F4C 10000005 */  b          .L80102F64
/* DA9840 80102F50 E4880008 */   swc1      $f8, 8($a0)
.L80102F54:
/* DA9844 80102F54 C48A0008 */  lwc1       $f10, 8($a0)
/* DA9848 80102F58 C4900004 */  lwc1       $f16, 4($a0)
/* DA984C 80102F5C 46105481 */  sub.s      $f18, $f10, $f16
/* DA9850 80102F60 E4920008 */  swc1       $f18, 8($a0)
.L80102F64:
/* DA9854 80102F64 8CA20000 */  lw         $v0, ($a1)
/* DA9858 80102F68 24060001 */  addiu      $a2, $zero, 1
/* DA985C 80102F6C 24010002 */  addiu      $at, $zero, 2
/* DA9860 80102F70 1046000B */  beq        $v0, $a2, .L80102FA0
/* DA9864 80102F74 3C18E700 */   lui       $t8, 0xe700
/* DA9868 80102F78 10410009 */  beq        $v0, $at, .L80102FA0
/* DA986C 80102F7C 24010003 */   addiu     $at, $zero, 3
/* DA9870 80102F80 10410005 */  beq        $v0, $at, .L80102F98
/* DA9874 80102F84 24010004 */   addiu     $at, $zero, 4
/* DA9878 80102F88 10410003 */  beq        $v0, $at, .L80102F98
/* DA987C 80102F8C 00000000 */   nop
/* DA9880 80102F90 10000004 */  b          .L80102FA4
/* DA9884 80102F94 00001025 */   or        $v0, $zero, $zero
.L80102F98:
/* DA9888 80102F98 10000002 */  b          .L80102FA4
/* DA988C 80102F9C 240200FF */   addiu     $v0, $zero, 0xff
.L80102FA0:
/* DA9890 80102FA0 00001025 */  or         $v0, $zero, $zero
.L80102FA4:
/* DA9894 80102FA4 C4800008 */  lwc1       $f0, 8($a0)
/* DA9898 80102FA8 304800FF */  andi       $t0, $v0, 0xff
/* DA989C 80102FAC 3C01437F */  lui        $at, 0x437f
/* DA98A0 80102FB0 4602003E */  c.le.s     $f0, $f2
/* DA98A4 80102FB4 00087600 */  sll        $t6, $t0, 0x18
/* DA98A8 80102FB8 45020008 */  bc1fl      .L80102FDC
/* DA98AC 80102FBC 44816000 */   mtc1      $at, $f12
/* DA98B0 80102FC0 3C01437F */  lui        $at, 0x437f
/* DA98B4 80102FC4 ACA00000 */  sw         $zero, ($a1)
/* DA98B8 80102FC8 44816000 */  mtc1       $at, $f12
/* DA98BC 80102FCC E4820008 */  swc1       $f2, 8($a0)
/* DA98C0 80102FD0 1000000A */  b          .L80102FFC
/* DA98C4 80102FD4 A4800000 */   sh        $zero, ($a0)
/* DA98C8 80102FD8 44816000 */  mtc1       $at, $f12
.L80102FDC:
/* DA98CC 80102FDC 00000000 */  nop
/* DA98D0 80102FE0 4600603C */  c.lt.s     $f12, $f0
/* DA98D4 80102FE4 00000000 */  nop
/* DA98D8 80102FE8 45020005 */  bc1fl      .L80103000
/* DA98DC 80102FEC 948D0002 */   lhu       $t5, 2($a0)
/* DA98E0 80102FF0 ACA00000 */  sw         $zero, ($a1)
/* DA98E4 80102FF4 E48C0008 */  swc1       $f12, 8($a0)
/* DA98E8 80102FF8 A4800000 */  sh         $zero, ($a0)
.L80102FFC:
/* DA98EC 80102FFC 948D0002 */  lhu        $t5, 2($a0)
.L80103000:
/* DA98F0 80103000 55A00013 */  bnel       $t5, $zero, .L80103050
/* DA98F4 80103004 8D860000 */   lw        $a2, ($t4)
/* DA98F8 80103008 8CA30000 */  lw         $v1, ($a1)
/* DA98FC 8010300C 24010003 */  addiu      $at, $zero, 3
/* DA9900 80103010 50610004 */  beql       $v1, $at, .L80103024
/* DA9904 80103014 ACA00000 */   sw        $zero, ($a1)
/* DA9908 80103018 14C30005 */  bne        $a2, $v1, .L80103030
/* DA990C 8010301C 24010004 */   addiu     $at, $zero, 4
/* DA9910 80103020 ACA00000 */  sw         $zero, ($a1)
.L80103024:
/* DA9914 80103024 E48C0008 */  swc1       $f12, 8($a0)
/* DA9918 80103028 10000008 */  b          .L8010304C
/* DA991C 8010302C A4800000 */   sh        $zero, ($a0)
.L80103030:
/* DA9920 80103030 10610003 */  beq        $v1, $at, .L80103040
/* DA9924 80103034 24010002 */   addiu     $at, $zero, 2
/* DA9928 80103038 54610005 */  bnel       $v1, $at, .L80103050
/* DA992C 8010303C 8D860000 */   lw        $a2, ($t4)
.L80103040:
/* DA9930 80103040 ACA00000 */  sw         $zero, ($a1)
/* DA9934 80103044 E4820008 */  swc1       $f2, 8($a0)
/* DA9938 80103048 A4800000 */  sh         $zero, ($a0)
.L8010304C:
/* DA993C 8010304C 8D860000 */  lw         $a2, ($t4)
.L80103050:
/* DA9940 80103050 C4840008 */  lwc1       $f4, 8($a0)
/* DA9944 80103054 3C0DFA00 */  lui        $t5, 0xfa00
/* DA9948 80103058 24CF0008 */  addiu      $t7, $a2, 8
/* DA994C 8010305C AD8F0000 */  sw         $t7, ($t4)
/* DA9950 80103060 ACC00004 */  sw         $zero, 4($a2)
/* DA9954 80103064 ACD80000 */  sw         $t8, ($a2)
/* DA9958 80103068 4600218D */  trunc.w.s  $f6, $f4
/* DA995C 8010306C 8D860000 */  lw         $a2, ($t4)
/* DA9960 80103070 00087C00 */  sll        $t7, $t0, 0x10
/* DA9964 80103074 01CFC025 */  or         $t8, $t6, $t7
/* DA9968 80103078 24D90008 */  addiu      $t9, $a2, 8
/* DA996C 8010307C 44033000 */  mfc1       $v1, $f6
/* DA9970 80103080 AD990000 */  sw         $t9, ($t4)
/* DA9974 80103084 0008CA00 */  sll        $t9, $t0, 8
/* DA9978 80103088 ACCD0000 */  sw         $t5, ($a2)
/* DA997C 8010308C 03196825 */  or         $t5, $t8, $t9
/* DA9980 80103090 306E00FF */  andi       $t6, $v1, 0xff
/* DA9984 80103094 01AE7825 */  or         $t7, $t5, $t6
/* DA9988 80103098 ACCF0004 */  sw         $t7, 4($a2)
/* DA998C 8010309C 8D860000 */  lw         $a2, ($t4)
/* DA9990 801030A0 3C0D0050 */  lui        $t5, 0x50
/* DA9994 801030A4 3C19B900 */  lui        $t9, 0xb900
/* DA9998 801030A8 24D80008 */  addiu      $t8, $a2, 8
/* DA999C 801030AC AD980000 */  sw         $t8, ($t4)
/* DA99A0 801030B0 3739031D */  ori        $t9, $t9, 0x31d
/* DA99A4 801030B4 35AD41C8 */  ori        $t5, $t5, 0x41c8
/* DA99A8 801030B8 ACCD0004 */  sw         $t5, 4($a2)
/* DA99AC 801030BC ACD90000 */  sw         $t9, ($a2)
/* DA99B0 801030C0 8D860000 */  lw         $a2, ($t4)
/* DA99B4 801030C4 3C188010 */  lui        $t8, %hi(D_801033A0)
/* DA99B8 801030C8 271833A0 */  addiu      $t8, $t8, %lo(D_801033A0)
/* DA99BC 801030CC 24CE0008 */  addiu      $t6, $a2, 8
/* DA99C0 801030D0 AD8E0000 */  sw         $t6, ($t4)
/* DA99C4 801030D4 3C0F0600 */  lui        $t7, 0x600
/* DA99C8 801030D8 ACCF0000 */  sw         $t7, ($a2)
/* DA99CC 801030DC ACD80004 */  sw         $t8, 4($a2)
/* DA99D0 801030E0 8D860000 */  lw         $a2, ($t4)
/* DA99D4 801030E4 3C0DF654 */  lui        $t5, 0xf654
/* DA99D8 801030E8 35AD0F00 */  ori        $t5, $t5, 0xf00
/* DA99DC 801030EC 24D90008 */  addiu      $t9, $a2, 8
/* DA99E0 801030F0 AD990000 */  sw         $t9, ($t4)
/* DA99E4 801030F4 3C018012 */  lui        $at, %hi(D_8011AD60)
/* DA99E8 801030F8 ACC00004 */  sw         $zero, 4($a2)
/* DA99EC 801030FC ACCD0000 */  sw         $t5, ($a2)
/* DA99F0 80103100 03E00008 */  jr         $ra
/* DA99F4 80103104 AC22AD60 */   sw        $v0, %lo(D_8011AD60)($at)
