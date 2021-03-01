.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPfsReadWriteFile
/* 3CC30 8003C030 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3CC34 8003C034 AFA50024 */  sw         $a1, 0x24($sp)
/* 3CC38 8003C038 AFA7002C */  sw         $a3, 0x2c($sp)
/* 3CC3C 8003C03C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 3CC40 8003C040 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3CC44 8003C044 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3CC48 8003C048 AFA40020 */  sw         $a0, 0x20($sp)
/* 3CC4C 8003C04C AFA60028 */  sw         $a2, 0x28($sp)
/* 3CC50 8003C050 93190000 */  lbu        $t9, ($t8)
/* 3CC54 8003C054 91CF0000 */  lbu        $t7, ($t6)
/* 3CC58 8003C058 11F9000E */  beq        $t7, $t9, .L8003C094
/* 3CC5C 8003C05C 00000000 */   nop
/* 3CC60 8003C060 A1D90000 */  sb         $t9, ($t6)
/* 3CC64 8003C064 8FA80024 */  lw         $t0, 0x24($sp)
/* 3CC68 8003C068 8FA50028 */  lw         $a1, 0x28($sp)
/* 3CC6C 8003C06C 8FA40020 */  lw         $a0, 0x20($sp)
/* 3CC70 8003C070 00003025 */  or         $a2, $zero, $zero
/* 3CC74 8003C074 0C01152F */  jal        __osPfsRWInode
/* 3CC78 8003C078 91070000 */   lbu       $a3, ($t0)
/* 3CC7C 8003C07C AFA2001C */  sw         $v0, 0x1c($sp)
/* 3CC80 8003C080 8FA9001C */  lw         $t1, 0x1c($sp)
/* 3CC84 8003C084 11200003 */  beqz       $t1, .L8003C094
/* 3CC88 8003C088 00000000 */   nop
/* 3CC8C 8003C08C 10000023 */  b          .L8003C11C
/* 3CC90 8003C090 01201025 */   or        $v0, $t1, $zero
.L8003C094:
/* 3CC94 8003C094 8FAA002C */  lw         $t2, 0x2c($sp)
/* 3CC98 8003C098 8FAB0028 */  lw         $t3, 0x28($sp)
/* 3CC9C 8003C09C 914C0001 */  lbu        $t4, 1($t2)
/* 3CCA0 8003C0A0 000C6840 */  sll        $t5, $t4, 1
/* 3CCA4 8003C0A4 016DC021 */  addu       $t8, $t3, $t5
/* 3CCA8 8003C0A8 97010000 */  lhu        $at, ($t8)
/* 3CCAC 8003C0AC A5410000 */  sh         $at, ($t2)
/* 3CCB0 8003C0B0 8FA90020 */  lw         $t1, 0x20($sp)
/* 3CCB4 8003C0B4 8FAE002C */  lw         $t6, 0x2c($sp)
/* 3CCB8 8003C0B8 8D2C0060 */  lw         $t4, 0x60($t1)
/* 3CCBC 8003C0BC 95C80000 */  lhu        $t0, ($t6)
/* 3CCC0 8003C0C0 010C082A */  slt        $at, $t0, $t4
/* 3CCC4 8003C0C4 1420000B */  bnez       $at, .L8003C0F4
/* 3CCC8 8003C0C8 00000000 */   nop
/* 3CCCC 8003C0CC 91CB0000 */  lbu        $t3, ($t6)
/* 3CCD0 8003C0D0 912D0064 */  lbu        $t5, 0x64($t1)
/* 3CCD4 8003C0D4 016D082A */  slt        $at, $t3, $t5
/* 3CCD8 8003C0D8 10200006 */  beqz       $at, .L8003C0F4
/* 3CCDC 8003C0DC 00000000 */   nop
/* 3CCE0 8003C0E0 91CF0001 */  lbu        $t7, 1($t6)
/* 3CCE4 8003C0E4 19E00003 */  blez       $t7, .L8003C0F4
/* 3CCE8 8003C0E8 29E10080 */   slti      $at, $t7, 0x80
/* 3CCEC 8003C0EC 1420000A */  bnez       $at, .L8003C118
/* 3CCF0 8003C0F0 00000000 */   nop
.L8003C0F4:
/* 3CCF4 8003C0F4 8FAA002C */  lw         $t2, 0x2c($sp)
/* 3CCF8 8003C0F8 24010001 */  addiu      $at, $zero, 1
/* 3CCFC 8003C0FC 95580000 */  lhu        $t8, ($t2)
/* 3CD00 8003C100 17010003 */  bne        $t8, $at, .L8003C110
/* 3CD04 8003C104 00000000 */   nop
/* 3CD08 8003C108 10000004 */  b          .L8003C11C
/* 3CD0C 8003C10C 24020005 */   addiu     $v0, $zero, 5
.L8003C110:
/* 3CD10 8003C110 10000002 */  b          .L8003C11C
/* 3CD14 8003C114 24020003 */   addiu     $v0, $zero, 3
.L8003C118:
/* 3CD18 8003C118 00001025 */  or         $v0, $zero, $zero
.L8003C11C:
/* 3CD1C 8003C11C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3CD20 8003C120 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3CD24 8003C124 03E00008 */  jr         $ra
/* 3CD28 8003C128 00000000 */   nop

glabel osPfsReadWriteFile
/* 3CD2C 8003C12C 27BDFEA8 */  addiu      $sp, $sp, -0x158
/* 3CD30 8003C130 AFA40158 */  sw         $a0, 0x158($sp)
/* 3CD34 8003C134 8FAF0158 */  lw         $t7, 0x158($sp)
/* 3CD38 8003C138 AFA5015C */  sw         $a1, 0x15c($sp)
/* 3CD3C 8003C13C AFBF001C */  sw         $ra, 0x1c($sp)
/* 3CD40 8003C140 AFA60160 */  sw         $a2, 0x160($sp)
/* 3CD44 8003C144 AFA70164 */  sw         $a3, 0x164($sp)
/* 3CD48 8003C148 8FAE015C */  lw         $t6, 0x15c($sp)
/* 3CD4C 8003C14C 8DF80050 */  lw         $t8, 0x50($t7)
/* 3CD50 8003C150 01D8082A */  slt        $at, $t6, $t8
/* 3CD54 8003C154 10200003 */  beqz       $at, .L8003C164
/* 3CD58 8003C158 00000000 */   nop
/* 3CD5C 8003C15C 05C10003 */  bgez       $t6, .L8003C16C
/* 3CD60 8003C160 00000000 */   nop
.L8003C164:
/* 3CD64 8003C164 100000ED */  b          .L8003C51C
/* 3CD68 8003C168 24020005 */   addiu     $v0, $zero, 5
.L8003C16C:
/* 3CD6C 8003C16C 8FB90168 */  lw         $t9, 0x168($sp)
/* 3CD70 8003C170 1B200004 */  blez       $t9, .L8003C184
/* 3CD74 8003C174 00000000 */   nop
/* 3CD78 8003C178 3328001F */  andi       $t0, $t9, 0x1f
/* 3CD7C 8003C17C 11000003 */  beqz       $t0, .L8003C18C
/* 3CD80 8003C180 00000000 */   nop
.L8003C184:
/* 3CD84 8003C184 100000E5 */  b          .L8003C51C
/* 3CD88 8003C188 24020005 */   addiu     $v0, $zero, 5
.L8003C18C:
/* 3CD8C 8003C18C 8FA90164 */  lw         $t1, 0x164($sp)
/* 3CD90 8003C190 05200004 */  bltz       $t1, .L8003C1A4
/* 3CD94 8003C194 00000000 */   nop
/* 3CD98 8003C198 312A001F */  andi       $t2, $t1, 0x1f
/* 3CD9C 8003C19C 11400003 */  beqz       $t2, .L8003C1AC
/* 3CDA0 8003C1A0 00000000 */   nop
.L8003C1A4:
/* 3CDA4 8003C1A4 100000DD */  b          .L8003C51C
/* 3CDA8 8003C1A8 24020005 */   addiu     $v0, $zero, 5
.L8003C1AC:
/* 3CDAC 8003C1AC 8FAB0158 */  lw         $t3, 0x158($sp)
/* 3CDB0 8003C1B0 8D6C0000 */  lw         $t4, ($t3)
/* 3CDB4 8003C1B4 318D0001 */  andi       $t5, $t4, 1
/* 3CDB8 8003C1B8 15A00003 */  bnez       $t5, .L8003C1C8
/* 3CDBC 8003C1BC 00000000 */   nop
/* 3CDC0 8003C1C0 100000D6 */  b          .L8003C51C
/* 3CDC4 8003C1C4 24020005 */   addiu     $v0, $zero, 5
.L8003C1C8:
/* 3CDC8 8003C1C8 0C0114F0 */  jal        __osCheckId
/* 3CDCC 8003C1CC 8FA40158 */   lw        $a0, 0x158($sp)
/* 3CDD0 8003C1D0 24010002 */  addiu      $at, $zero, 2
/* 3CDD4 8003C1D4 14410003 */  bne        $v0, $at, .L8003C1E4
/* 3CDD8 8003C1D8 00000000 */   nop
/* 3CDDC 8003C1DC 100000CF */  b          .L8003C51C
/* 3CDE0 8003C1E0 24020002 */   addiu     $v0, $zero, 2
.L8003C1E4:
/* 3CDE4 8003C1E4 8FAF0158 */  lw         $t7, 0x158($sp)
/* 3CDE8 8003C1E8 91F80065 */  lbu        $t8, 0x65($t7)
/* 3CDEC 8003C1EC 1300000A */  beqz       $t8, .L8003C218
/* 3CDF0 8003C1F0 00000000 */   nop
/* 3CDF4 8003C1F4 A1E00065 */  sb         $zero, 0x65($t7)
/* 3CDF8 8003C1F8 0C0115F7 */  jal        __osPfsSelectBank
/* 3CDFC 8003C1FC 8FA40158 */   lw        $a0, 0x158($sp)
/* 3CE00 8003C200 AFA20154 */  sw         $v0, 0x154($sp)
/* 3CE04 8003C204 8FAE0154 */  lw         $t6, 0x154($sp)
/* 3CE08 8003C208 11C00003 */  beqz       $t6, .L8003C218
/* 3CE0C 8003C20C 00000000 */   nop
/* 3CE10 8003C210 100000C2 */  b          .L8003C51C
/* 3CE14 8003C214 01C01025 */   or        $v0, $t6, $zero
.L8003C218:
/* 3CE18 8003C218 8FB90158 */  lw         $t9, 0x158($sp)
/* 3CE1C 8003C21C 8FA9015C */  lw         $t1, 0x15c($sp)
/* 3CE20 8003C220 27A70134 */  addiu      $a3, $sp, 0x134
/* 3CE24 8003C224 8F28005C */  lw         $t0, 0x5c($t9)
/* 3CE28 8003C228 8F240004 */  lw         $a0, 4($t9)
/* 3CE2C 8003C22C 8F250008 */  lw         $a1, 8($t9)
/* 3CE30 8003C230 0C011614 */  jal        __osContRamRead
/* 3CE34 8003C234 01093021 */   addu      $a2, $t0, $t1
/* 3CE38 8003C238 AFA20154 */  sw         $v0, 0x154($sp)
/* 3CE3C 8003C23C 8FAA0154 */  lw         $t2, 0x154($sp)
/* 3CE40 8003C240 11400003 */  beqz       $t2, .L8003C250
/* 3CE44 8003C244 00000000 */   nop
/* 3CE48 8003C248 100000B4 */  b          .L8003C51C
/* 3CE4C 8003C24C 01401025 */   or        $v0, $t2, $zero
.L8003C250:
/* 3CE50 8003C250 8FAC0158 */  lw         $t4, 0x158($sp)
/* 3CE54 8003C254 97AB013A */  lhu        $t3, 0x13a($sp)
/* 3CE58 8003C258 8D8D0060 */  lw         $t5, 0x60($t4)
/* 3CE5C 8003C25C 016D082A */  slt        $at, $t3, $t5
/* 3CE60 8003C260 1420000B */  bnez       $at, .L8003C290
/* 3CE64 8003C264 00000000 */   nop
/* 3CE68 8003C268 93B8013A */  lbu        $t8, 0x13a($sp)
/* 3CE6C 8003C26C 918F0064 */  lbu        $t7, 0x64($t4)
/* 3CE70 8003C270 030F082A */  slt        $at, $t8, $t7
/* 3CE74 8003C274 10200006 */  beqz       $at, .L8003C290
/* 3CE78 8003C278 00000000 */   nop
/* 3CE7C 8003C27C 93AE013B */  lbu        $t6, 0x13b($sp)
/* 3CE80 8003C280 19C00003 */  blez       $t6, .L8003C290
/* 3CE84 8003C284 29C10080 */   slti      $at, $t6, 0x80
/* 3CE88 8003C288 14200009 */  bnez       $at, .L8003C2B0
/* 3CE8C 8003C28C 00000000 */   nop
.L8003C290:
/* 3CE90 8003C290 97B9013A */  lhu        $t9, 0x13a($sp)
/* 3CE94 8003C294 24010001 */  addiu      $at, $zero, 1
/* 3CE98 8003C298 17210003 */  bne        $t9, $at, .L8003C2A8
/* 3CE9C 8003C29C 00000000 */   nop
/* 3CEA0 8003C2A0 1000009E */  b          .L8003C51C
/* 3CEA4 8003C2A4 24020005 */   addiu     $v0, $zero, 5
.L8003C2A8:
/* 3CEA8 8003C2A8 1000009C */  b          .L8003C51C
/* 3CEAC 8003C2AC 24020003 */   addiu     $v0, $zero, 3
.L8003C2B0:
/* 3CEB0 8003C2B0 93A80163 */  lbu        $t0, 0x163($sp)
/* 3CEB4 8003C2B4 15000007 */  bnez       $t0, .L8003C2D4
/* 3CEB8 8003C2B8 00000000 */   nop
/* 3CEBC 8003C2BC 93A9013C */  lbu        $t1, 0x13c($sp)
/* 3CEC0 8003C2C0 312A0002 */  andi       $t2, $t1, 2
/* 3CEC4 8003C2C4 15400003 */  bnez       $t2, .L8003C2D4
/* 3CEC8 8003C2C8 00000000 */   nop
/* 3CECC 8003C2CC 10000093 */  b          .L8003C51C
/* 3CED0 8003C2D0 24020006 */   addiu     $v0, $zero, 6
.L8003C2D4:
/* 3CED4 8003C2D4 8FAD0164 */  lw         $t5, 0x164($sp)
/* 3CED8 8003C2D8 97B8013A */  lhu        $t8, 0x13a($sp)
/* 3CEDC 8003C2DC 240B00FF */  addiu      $t3, $zero, 0xff
/* 3CEE0 8003C2E0 A3AB0023 */  sb         $t3, 0x23($sp)
/* 3CEE4 8003C2E4 05A10003 */  bgez       $t5, .L8003C2F4
/* 3CEE8 8003C2E8 000D6143 */   sra       $t4, $t5, 5
/* 3CEEC 8003C2EC 25A1001F */  addiu      $at, $t5, 0x1f
/* 3CEF0 8003C2F0 00016143 */  sra        $t4, $at, 5
.L8003C2F4:
/* 3CEF4 8003C2F4 AFAC002C */  sw         $t4, 0x2c($sp)
/* 3CEF8 8003C2F8 8FAF002C */  lw         $t7, 0x2c($sp)
/* 3CEFC 8003C2FC A7B80030 */  sh         $t8, 0x30($sp)
/* 3CF00 8003C300 29E10008 */  slti       $at, $t7, 8
/* 3CF04 8003C304 14200013 */  bnez       $at, .L8003C354
/* 3CF08 8003C308 00000000 */   nop
.L8003C30C:
/* 3CF0C 8003C30C 8FA40158 */  lw         $a0, 0x158($sp)
/* 3CF10 8003C310 27A50023 */  addiu      $a1, $sp, 0x23
/* 3CF14 8003C314 27A60034 */  addiu      $a2, $sp, 0x34
/* 3CF18 8003C318 0C00F00C */  jal        osPfsReadWriteFile
/* 3CF1C 8003C31C 27A70030 */   addiu     $a3, $sp, 0x30
/* 3CF20 8003C320 AFA20154 */  sw         $v0, 0x154($sp)
/* 3CF24 8003C324 8FAE0154 */  lw         $t6, 0x154($sp)
/* 3CF28 8003C328 11C00003 */  beqz       $t6, .L8003C338
/* 3CF2C 8003C32C 00000000 */   nop
/* 3CF30 8003C330 1000007A */  b          .L8003C51C
/* 3CF34 8003C334 01C01025 */   or        $v0, $t6, $zero
.L8003C338:
/* 3CF38 8003C338 8FB9002C */  lw         $t9, 0x2c($sp)
/* 3CF3C 8003C33C 2728FFF8 */  addiu      $t0, $t9, -8
/* 3CF40 8003C340 AFA8002C */  sw         $t0, 0x2c($sp)
/* 3CF44 8003C344 8FA9002C */  lw         $t1, 0x2c($sp)
/* 3CF48 8003C348 29210008 */  slti       $at, $t1, 8
/* 3CF4C 8003C34C 1020FFEF */  beqz       $at, .L8003C30C
/* 3CF50 8003C350 00000000 */   nop
.L8003C354:
/* 3CF54 8003C354 8FAA0168 */  lw         $t2, 0x168($sp)
/* 3CF58 8003C358 8FAD016C */  lw         $t5, 0x16c($sp)
/* 3CF5C 8003C35C 05410003 */  bgez       $t2, .L8003C36C
/* 3CF60 8003C360 000A5943 */   sra       $t3, $t2, 5
/* 3CF64 8003C364 2541001F */  addiu      $at, $t2, 0x1f
/* 3CF68 8003C368 00015943 */  sra        $t3, $at, 5
.L8003C36C:
/* 3CF6C 8003C36C AFAB0028 */  sw         $t3, 0x28($sp)
/* 3CF70 8003C370 19600046 */  blez       $t3, .L8003C48C
/* 3CF74 8003C374 AFAD0024 */   sw        $t5, 0x24($sp)
.L8003C378:
/* 3CF78 8003C378 8FAC002C */  lw         $t4, 0x2c($sp)
/* 3CF7C 8003C37C 24010008 */  addiu      $at, $zero, 8
/* 3CF80 8003C380 1581000D */  bne        $t4, $at, .L8003C3B8
/* 3CF84 8003C384 00000000 */   nop
/* 3CF88 8003C388 8FA40158 */  lw         $a0, 0x158($sp)
/* 3CF8C 8003C38C 27A50023 */  addiu      $a1, $sp, 0x23
/* 3CF90 8003C390 27A60034 */  addiu      $a2, $sp, 0x34
/* 3CF94 8003C394 0C00F00C */  jal        osPfsReadWriteFile
/* 3CF98 8003C398 27A70030 */   addiu     $a3, $sp, 0x30
/* 3CF9C 8003C39C AFA20154 */  sw         $v0, 0x154($sp)
/* 3CFA0 8003C3A0 8FB80154 */  lw         $t8, 0x154($sp)
/* 3CFA4 8003C3A4 13000003 */  beqz       $t8, .L8003C3B4
/* 3CFA8 8003C3A8 00000000 */   nop
/* 3CFAC 8003C3AC 1000005B */  b          .L8003C51C
/* 3CFB0 8003C3B0 03001025 */   or        $v0, $t8, $zero
.L8003C3B4:
/* 3CFB4 8003C3B4 AFA0002C */  sw         $zero, 0x2c($sp)
.L8003C3B8:
/* 3CFB8 8003C3B8 8FAF0158 */  lw         $t7, 0x158($sp)
/* 3CFBC 8003C3BC 93B90030 */  lbu        $t9, 0x30($sp)
/* 3CFC0 8003C3C0 91EE0065 */  lbu        $t6, 0x65($t7)
/* 3CFC4 8003C3C4 11D9000A */  beq        $t6, $t9, .L8003C3F0
/* 3CFC8 8003C3C8 00000000 */   nop
/* 3CFCC 8003C3CC A1F90065 */  sb         $t9, 0x65($t7)
/* 3CFD0 8003C3D0 0C0115F7 */  jal        __osPfsSelectBank
/* 3CFD4 8003C3D4 8FA40158 */   lw        $a0, 0x158($sp)
/* 3CFD8 8003C3D8 AFA20154 */  sw         $v0, 0x154($sp)
/* 3CFDC 8003C3DC 8FA80154 */  lw         $t0, 0x154($sp)
/* 3CFE0 8003C3E0 11000003 */  beqz       $t0, .L8003C3F0
/* 3CFE4 8003C3E4 00000000 */   nop
/* 3CFE8 8003C3E8 1000004C */  b          .L8003C51C
/* 3CFEC 8003C3EC 01001025 */   or        $v0, $t0, $zero
.L8003C3F0:
/* 3CFF0 8003C3F0 93A90031 */  lbu        $t1, 0x31($sp)
/* 3CFF4 8003C3F4 8FAD002C */  lw         $t5, 0x2c($sp)
/* 3CFF8 8003C3F8 93AC0163 */  lbu        $t4, 0x163($sp)
/* 3CFFC 8003C3FC 000950C0 */  sll        $t2, $t1, 3
/* 3D000 8003C400 014D5821 */  addu       $t3, $t2, $t5
/* 3D004 8003C404 15800009 */  bnez       $t4, .L8003C42C
/* 3D008 8003C408 A7AB0020 */   sh        $t3, 0x20($sp)
/* 3D00C 8003C40C 8FB80158 */  lw         $t8, 0x158($sp)
/* 3D010 8003C410 3166FFFF */  andi       $a2, $t3, 0xffff
/* 3D014 8003C414 8FA70024 */  lw         $a3, 0x24($sp)
/* 3D018 8003C418 8F040004 */  lw         $a0, 4($t8)
/* 3D01C 8003C41C 0C011614 */  jal        __osContRamRead
/* 3D020 8003C420 8F050008 */   lw        $a1, 8($t8)
/* 3D024 8003C424 10000009 */  b          .L8003C44C
/* 3D028 8003C428 AFA20154 */   sw        $v0, 0x154($sp)
.L8003C42C:
/* 3D02C 8003C42C 8FAE0158 */  lw         $t6, 0x158($sp)
/* 3D030 8003C430 97A60020 */  lhu        $a2, 0x20($sp)
/* 3D034 8003C434 8FA70024 */  lw         $a3, 0x24($sp)
/* 3D038 8003C438 8DC40004 */  lw         $a0, 4($t6)
/* 3D03C 8003C43C 8DC50008 */  lw         $a1, 8($t6)
/* 3D040 8003C440 0C011AE0 */  jal        __osContRamWrite
/* 3D044 8003C444 AFA00010 */   sw        $zero, 0x10($sp)
/* 3D048 8003C448 AFA20154 */  sw         $v0, 0x154($sp)
.L8003C44C:
/* 3D04C 8003C44C 8FB90154 */  lw         $t9, 0x154($sp)
/* 3D050 8003C450 13200003 */  beqz       $t9, .L8003C460
/* 3D054 8003C454 00000000 */   nop
/* 3D058 8003C458 10000030 */  b          .L8003C51C
/* 3D05C 8003C45C 03201025 */   or        $v0, $t9, $zero
.L8003C460:
/* 3D060 8003C460 8FAD0028 */  lw         $t5, 0x28($sp)
/* 3D064 8003C464 8FAF0024 */  lw         $t7, 0x24($sp)
/* 3D068 8003C468 8FA9002C */  lw         $t1, 0x2c($sp)
/* 3D06C 8003C46C 25ACFFFF */  addiu      $t4, $t5, -1
/* 3D070 8003C470 AFAC0028 */  sw         $t4, 0x28($sp)
/* 3D074 8003C474 8FB80028 */  lw         $t8, 0x28($sp)
/* 3D078 8003C478 25E80020 */  addiu      $t0, $t7, 0x20
/* 3D07C 8003C47C 252A0001 */  addiu      $t2, $t1, 1
/* 3D080 8003C480 AFA80024 */  sw         $t0, 0x24($sp)
/* 3D084 8003C484 1F00FFBC */  bgtz       $t8, .L8003C378
/* 3D088 8003C488 AFAA002C */   sw        $t2, 0x2c($sp)
.L8003C48C:
/* 3D08C 8003C48C 93AB0163 */  lbu        $t3, 0x163($sp)
/* 3D090 8003C490 24010001 */  addiu      $at, $zero, 1
/* 3D094 8003C494 15610020 */  bne        $t3, $at, .L8003C518
/* 3D098 8003C498 00000000 */   nop
/* 3D09C 8003C49C 93AE013C */  lbu        $t6, 0x13c($sp)
/* 3D0A0 8003C4A0 31D90002 */  andi       $t9, $t6, 2
/* 3D0A4 8003C4A4 1720001C */  bnez       $t9, .L8003C518
/* 3D0A8 8003C4A8 00000000 */   nop
/* 3D0AC 8003C4AC 8FA80158 */  lw         $t0, 0x158($sp)
/* 3D0B0 8003C4B0 35CF0002 */  ori        $t7, $t6, 2
/* 3D0B4 8003C4B4 A3AF013C */  sb         $t7, 0x13c($sp)
/* 3D0B8 8003C4B8 A1000065 */  sb         $zero, 0x65($t0)
/* 3D0BC 8003C4BC 0C0115F7 */  jal        __osPfsSelectBank
/* 3D0C0 8003C4C0 8FA40158 */   lw        $a0, 0x158($sp)
/* 3D0C4 8003C4C4 AFA20154 */  sw         $v0, 0x154($sp)
/* 3D0C8 8003C4C8 8FA90154 */  lw         $t1, 0x154($sp)
/* 3D0CC 8003C4CC 11200003 */  beqz       $t1, .L8003C4DC
/* 3D0D0 8003C4D0 00000000 */   nop
/* 3D0D4 8003C4D4 10000011 */  b          .L8003C51C
/* 3D0D8 8003C4D8 01201025 */   or        $v0, $t1, $zero
.L8003C4DC:
/* 3D0DC 8003C4DC 8FAA0158 */  lw         $t2, 0x158($sp)
/* 3D0E0 8003C4E0 8FAC015C */  lw         $t4, 0x15c($sp)
/* 3D0E4 8003C4E4 27A70134 */  addiu      $a3, $sp, 0x134
/* 3D0E8 8003C4E8 8D4D005C */  lw         $t5, 0x5c($t2)
/* 3D0EC 8003C4EC 8D440004 */  lw         $a0, 4($t2)
/* 3D0F0 8003C4F0 8D450008 */  lw         $a1, 8($t2)
/* 3D0F4 8003C4F4 AFA00010 */  sw         $zero, 0x10($sp)
/* 3D0F8 8003C4F8 0C011AE0 */  jal        __osContRamWrite
/* 3D0FC 8003C4FC 01AC3021 */   addu      $a2, $t5, $t4
/* 3D100 8003C500 AFA20154 */  sw         $v0, 0x154($sp)
/* 3D104 8003C504 8FB80154 */  lw         $t8, 0x154($sp)
/* 3D108 8003C508 13000003 */  beqz       $t8, .L8003C518
/* 3D10C 8003C50C 00000000 */   nop
/* 3D110 8003C510 10000002 */  b          .L8003C51C
/* 3D114 8003C514 03001025 */   or        $v0, $t8, $zero
.L8003C518:
/* 3D118 8003C518 00001025 */  or         $v0, $zero, $zero
.L8003C51C:
/* 3D11C 8003C51C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3D120 8003C520 27BD0158 */  addiu      $sp, $sp, 0x158
/* 3D124 8003C524 03E00008 */  jr         $ra
/* 3D128 8003C528 00000000 */   nop
/* 3D12C 8003C52C 00000000 */  nop
