glabel func
/* 000880 00000880 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 000884 00000884 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000888 00000888 00004825 */  move  $t1, $zero
/* 00088C 0000088C 00005825 */  move  $t3, $zero
/* 000890 00000890 00006025 */  move  $t4, $zero
.L00000894:
/* 000894 00000894 299A0040 */  slti  $k0, $t4, 0x40
/* 000898 00000898 53400018 */  beql  $k0, $zero, .L000008FC
/* 00089C 0000089C 00001025 */   move  $v0, $zero
/* 0008A0 000008A0 0D000243 */  jal   func_0400090C
/* 0008A4 000008A4 01802025 */   move  $a0, $t4
/* 0008A8 000008A8 58400008 */  blezl $v0, .L000008CC
/* 0008AC 000008AC 293A0050 */   slti  $k0, $t1, 0x50
func_000008B0:
/* 0008B0 000008B0 0049D023 */  subu  $k0, $v0, $t1
/* 0008B4 000008B4 034C0019 */  multu $k0, $t4
/* 0008B8 000008B8 00404825 */  move  $t1, $v0
/* 0008BC 000008BC 0000D012 */  mflo  $k0
/* 0008C0 000008C0 017A5821 */  addu  $t3, $t3, $k0
/* 0008C4 000008C4 00000000 */  nop   
/* 0008C8 000008C8 293A0050 */  slti  $k0, $t1, 0x50
.L000008CC:
/* 0008CC 000008CC 1740FFF1 */  bnez  $k0, .L00000894
/* 0008D0 000008D0 258C0001 */   addiu $t4, $t4, 1
/* 0008D4 000008D4 000B2080 */  sll   $a0, $t3, 2
/* 0008D8 000008D8 008B2023 */  subu  $a0, $a0, $t3
/* 0008DC 000008DC 00042080 */  sll   $a0, $a0, 2
/* 0008E0 000008E0 008B2023 */  subu  $a0, $a0, $t3
/* 0008E4 000008E4 00042040 */  sll   $a0, $a0, 1
/* 0008E8 000008E8 0D000260 */  jal   func_04000980
/* 0008EC 000008EC 2484FC90 */   addiu $a0, $a0, -0x370
/* 0008F0 000008F0 10000003 */  b     .L00000900
/* 0008F4 000008F4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0008F8 000008F8 00001025 */  move  $v0, $zero
.L000008FC:
/* 0008FC 000008FC 8FBF001C */  lw    $ra, 0x1c($sp)
.L00000900:
/* 000900 00000900 27BD0020 */  addiu $sp, $sp, 0x20
/* 000904 00000904 03E00008 */  jr    $ra
/* 000908 00000908 00000000 */   nop   