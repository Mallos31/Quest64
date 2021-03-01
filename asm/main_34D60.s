.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSetIntMask
/* 34D60 80034160 400C6000 */  mfc0       $t4, $12
/* 34D64 80034164 3182FF01 */  andi       $v0, $t4, 0xff01
/* 34D68 80034168 3C088007 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 34D6C 8003416C 2508F410 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 34D70 80034170 8D0B0000 */  lw         $t3, ($t0)
/* 34D74 80034174 2401FFFF */  addiu      $at, $zero, -1
/* 34D78 80034178 01614026 */  xor        $t0, $t3, $at
/* 34D7C 8003417C 3108FF00 */  andi       $t0, $t0, 0xff00
/* 34D80 80034180 00481025 */  or         $v0, $v0, $t0
/* 34D84 80034184 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* 34D88 80034188 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* 34D8C 8003418C 11400005 */  beqz       $t2, .L800341A4
/* 34D90 80034190 000B4C02 */   srl       $t1, $t3, 0x10
/* 34D94 80034194 2401FFFF */  addiu      $at, $zero, -1
/* 34D98 80034198 01214826 */  xor        $t1, $t1, $at
/* 34D9C 8003419C 3129003F */  andi       $t1, $t1, 0x3f
/* 34DA0 800341A0 01495025 */  or         $t2, $t2, $t1
.L800341A4:
/* 34DA4 800341A4 000A5400 */  sll        $t2, $t2, 0x10
/* 34DA8 800341A8 004A1025 */  or         $v0, $v0, $t2
/* 34DAC 800341AC 3C01003F */  lui        $at, 0x3f
/* 34DB0 800341B0 00814024 */  and        $t0, $a0, $at
/* 34DB4 800341B4 010B4024 */  and        $t0, $t0, $t3
/* 34DB8 800341B8 000843C2 */  srl        $t0, $t0, 0xf
/* 34DBC 800341BC 3C0A8007 */  lui        $t2, %hi(__osRcpImTable)
/* 34DC0 800341C0 01485021 */  addu       $t2, $t2, $t0
/* 34DC4 800341C4 954A1AB0 */  lhu        $t2, %lo(__osRcpImTable)($t2)
/* 34DC8 800341C8 3C01A430 */  lui        $at, %hi(D_A430000C)
/* 34DCC 800341CC AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* 34DD0 800341D0 3088FF01 */  andi       $t0, $a0, 0xff01
/* 34DD4 800341D4 3169FF00 */  andi       $t1, $t3, 0xff00
/* 34DD8 800341D8 01094024 */  and        $t0, $t0, $t1
/* 34DDC 800341DC 3C01FFFF */  lui        $at, 0xffff
/* 34DE0 800341E0 342100FF */  ori        $at, $at, 0xff
/* 34DE4 800341E4 01816024 */  and        $t4, $t4, $at
/* 34DE8 800341E8 01886025 */  or         $t4, $t4, $t0
/* 34DEC 800341EC 408C6000 */  mtc0       $t4, $12
/* 34DF0 800341F0 00000000 */  nop
/* 34DF4 800341F4 00000000 */  nop
/* 34DF8 800341F8 03E00008 */  jr         $ra
/* 34DFC 800341FC 00000000 */   nop

glabel osSendMesg
/* 34E00 80034200 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 34E04 80034204 AFBF0024 */  sw         $ra, 0x24($sp)
/* 34E08 80034208 AFA40038 */  sw         $a0, 0x38($sp)
/* 34E0C 8003420C AFA5003C */  sw         $a1, 0x3c($sp)
/* 34E10 80034210 AFA60040 */  sw         $a2, 0x40($sp)
/* 34E14 80034214 AFB20020 */  sw         $s2, 0x20($sp)
/* 34E18 80034218 AFB1001C */  sw         $s1, 0x1c($sp)
/* 34E1C 8003421C 0C00F534 */  jal        __osDisableInt
/* 34E20 80034220 AFB00018 */   sw        $s0, 0x18($sp)
/* 34E24 80034224 8FAE0038 */  lw         $t6, 0x38($sp)
/* 34E28 80034228 00408025 */  or         $s0, $v0, $zero
/* 34E2C 8003422C 8DCF0008 */  lw         $t7, 8($t6)
/* 34E30 80034230 8DD80010 */  lw         $t8, 0x10($t6)
/* 34E34 80034234 01F8082A */  slt        $at, $t7, $t8
/* 34E38 80034238 14200018 */  bnez       $at, .L8003429C
/* 34E3C 8003423C 00000000 */   nop
.L80034240:
/* 34E40 80034240 8FB90040 */  lw         $t9, 0x40($sp)
/* 34E44 80034244 24010001 */  addiu      $at, $zero, 1
/* 34E48 80034248 1721000A */  bne        $t9, $at, .L80034274
/* 34E4C 8003424C 00000000 */   nop
/* 34E50 80034250 3C098007 */  lui        $t1, %hi(__osRunningThread)
/* 34E54 80034254 8D290A00 */  lw         $t1, %lo(__osRunningThread)($t1)
/* 34E58 80034258 24080008 */  addiu      $t0, $zero, 8
/* 34E5C 8003425C A5280010 */  sh         $t0, 0x10($t1)
/* 34E60 80034260 8FA40038 */  lw         $a0, 0x38($sp)
/* 34E64 80034264 0C00F423 */  jal        __osEnqueueAndYield
/* 34E68 80034268 24840004 */   addiu     $a0, $a0, 4
/* 34E6C 8003426C 10000005 */  b          .L80034284
/* 34E70 80034270 00000000 */   nop
.L80034274:
/* 34E74 80034274 0C00F53C */  jal        __osRestoreInt
/* 34E78 80034278 02002025 */   or        $a0, $s0, $zero
/* 34E7C 8003427C 1000002D */  b          .L80034334
/* 34E80 80034280 2402FFFF */   addiu     $v0, $zero, -1
.L80034284:
/* 34E84 80034284 8FAA0038 */  lw         $t2, 0x38($sp)
/* 34E88 80034288 8D4B0008 */  lw         $t3, 8($t2)
/* 34E8C 8003428C 8D4C0010 */  lw         $t4, 0x10($t2)
/* 34E90 80034290 016C082A */  slt        $at, $t3, $t4
/* 34E94 80034294 1020FFEA */  beqz       $at, .L80034240
/* 34E98 80034298 00000000 */   nop
.L8003429C:
/* 34E9C 8003429C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 34EA0 800342A0 8FA8003C */  lw         $t0, 0x3c($sp)
/* 34EA4 800342A4 8DAE000C */  lw         $t6, 0xc($t5)
/* 34EA8 800342A8 8DAF0008 */  lw         $t7, 8($t5)
/* 34EAC 800342AC 8DB90010 */  lw         $t9, 0x10($t5)
/* 34EB0 800342B0 8DA90014 */  lw         $t1, 0x14($t5)
/* 34EB4 800342B4 01CFC021 */  addu       $t8, $t6, $t7
/* 34EB8 800342B8 0319001A */  div        $zero, $t8, $t9
/* 34EBC 800342BC 00008810 */  mfhi       $s1
/* 34EC0 800342C0 00115080 */  sll        $t2, $s1, 2
/* 34EC4 800342C4 012A5821 */  addu       $t3, $t1, $t2
/* 34EC8 800342C8 AD680000 */  sw         $t0, ($t3)
/* 34ECC 800342CC 8FAC0038 */  lw         $t4, 0x38($sp)
/* 34ED0 800342D0 17200002 */  bnez       $t9, .L800342DC
/* 34ED4 800342D4 00000000 */   nop
/* 34ED8 800342D8 0007000D */  break      7
.L800342DC:
/* 34EDC 800342DC 2401FFFF */   addiu     $at, $zero, -1
/* 34EE0 800342E0 17210004 */  bne        $t9, $at, .L800342F4
/* 34EE4 800342E4 3C018000 */   lui       $at, 0x8000
/* 34EE8 800342E8 17010002 */  bne        $t8, $at, .L800342F4
/* 34EEC 800342EC 00000000 */   nop
/* 34EF0 800342F0 0006000D */  break      6
.L800342F4:
/* 34EF4 800342F4 8D8E0008 */   lw        $t6, 8($t4)
/* 34EF8 800342F8 25CF0001 */  addiu      $t7, $t6, 1
/* 34EFC 800342FC AD8F0008 */  sw         $t7, 8($t4)
/* 34F00 80034300 8FB80038 */  lw         $t8, 0x38($sp)
/* 34F04 80034304 8F190000 */  lw         $t9, ($t8)
/* 34F08 80034308 8F2D0000 */  lw         $t5, ($t9)
/* 34F0C 8003430C 11A00006 */  beqz       $t5, .L80034328
/* 34F10 80034310 00000000 */   nop
/* 34F14 80034314 0C00F475 */  jal        __osPopThread
/* 34F18 80034318 03002025 */   or        $a0, $t8, $zero
/* 34F1C 8003431C 00409025 */  or         $s2, $v0, $zero
/* 34F20 80034320 0C00CF0C */  jal        osStartThread
/* 34F24 80034324 02402025 */   or        $a0, $s2, $zero
.L80034328:
/* 34F28 80034328 0C00F53C */  jal        __osRestoreInt
/* 34F2C 8003432C 02002025 */   or        $a0, $s0, $zero
/* 34F30 80034330 00001025 */  or         $v0, $zero, $zero
.L80034334:
/* 34F34 80034334 8FBF0024 */  lw         $ra, 0x24($sp)
/* 34F38 80034338 8FB00018 */  lw         $s0, 0x18($sp)
/* 34F3C 8003433C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 34F40 80034340 8FB20020 */  lw         $s2, 0x20($sp)
/* 34F44 80034344 03E00008 */  jr         $ra
/* 34F48 80034348 27BD0038 */   addiu     $sp, $sp, 0x38
/* 34F4C 8003434C 00000000 */  nop
