.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101284
/* E28AC4 80101284 00057000 */  sll        $t6, $a1, 0
/* E28AC8 80101288 05C00003 */  bltz       $t6, .L80101298
/* E28ACC 8010128C 00047880 */   sll       $t7, $a0, 2
/* E28AD0 80101290 03E00008 */  jr         $ra
/* E28AD4 80101294 00001025 */   or        $v0, $zero, $zero
.L80101298:
/* E28AD8 80101298 01E47821 */  addu       $t7, $t7, $a0
/* E28ADC 8010129C 3C188015 */  lui        $t8, %hi(D_80156FE8)
/* E28AE0 801012A0 27186FE8 */  addiu      $t8, $t8, %lo(D_80156FE8)
/* E28AE4 801012A4 000F7900 */  sll        $t7, $t7, 4
/* E28AE8 801012A8 01F81821 */  addu       $v1, $t7, $t8
/* E28AEC 801012AC 846C002A */  lh         $t4, 0x2a($v1)
/* E28AF0 801012B0 846D0026 */  lh         $t5, 0x26($v1)
/* E28AF4 801012B4 8C6B0038 */  lw         $t3, 0x38($v1)
/* E28AF8 801012B8 448C3000 */  mtc1       $t4, $f6
/* E28AFC 801012BC 448D5000 */  mtc1       $t5, $f10
/* E28B00 801012C0 448B2000 */  mtc1       $t3, $f4
/* E28B04 801012C4 46803220 */  cvt.s.w    $f8, $f6
/* E28B08 801012C8 44806000 */  mtc1       $zero, $f12
/* E28B0C 801012CC 84790024 */  lh         $t9, 0x24($v1)
/* E28B10 801012D0 46805420 */  cvt.s.w    $f16, $f10
/* E28B14 801012D4 272A0001 */  addiu      $t2, $t9, 1
/* E28B18 801012D8 A46A0024 */  sh         $t2, 0x24($v1)
/* E28B1C 801012DC 468020A0 */  cvt.s.w    $f2, $f4
/* E28B20 801012E0 46104481 */  sub.s      $f18, $f8, $f16
/* E28B24 801012E4 46029003 */  div.s      $f0, $f18, $f2
/* E28B28 801012E8 460C003C */  c.lt.s     $f0, $f12
/* E28B2C 801012EC 00000000 */  nop
/* E28B30 801012F0 45020003 */  bc1fl      .L80101300
/* E28B34 801012F4 C464001C */   lwc1      $f4, 0x1c($v1)
/* E28B38 801012F8 46000007 */  neg.s      $f0, $f0
/* E28B3C 801012FC C464001C */  lwc1       $f4, 0x1c($v1)
.L80101300:
/* E28B40 80101300 846F002C */  lh         $t7, 0x2c($v1)
/* E28B44 80101304 84780028 */  lh         $t8, 0x28($v1)
/* E28B48 80101308 46002180 */  add.s      $f6, $f4, $f0
/* E28B4C 8010130C 448F8000 */  mtc1       $t7, $f16
/* E28B50 80101310 44982000 */  mtc1       $t8, $f4
/* E28B54 80101314 24020002 */  addiu      $v0, $zero, 2
/* E28B58 80101318 E466001C */  swc1       $f6, 0x1c($v1)
/* E28B5C 8010131C 468084A0 */  cvt.s.w    $f18, $f16
/* E28B60 80101320 C46A001C */  lwc1       $f10, 0x1c($v1)
/* E28B64 80101324 468021A0 */  cvt.s.w    $f6, $f4
/* E28B68 80101328 4600520D */  trunc.w.s  $f8, $f10
/* E28B6C 8010132C 46069281 */  sub.s      $f10, $f18, $f6
/* E28B70 80101330 44044000 */  mfc1       $a0, $f8
/* E28B74 80101334 46025003 */  div.s      $f0, $f10, $f2
/* E28B78 80101338 00802825 */  or         $a1, $a0, $zero
/* E28B7C 8010133C 460C003C */  c.lt.s     $f0, $f12
/* E28B80 80101340 00000000 */  nop
/* E28B84 80101344 45020003 */  bc1fl      .L80101354
/* E28B88 80101348 C4680020 */   lwc1      $f8, 0x20($v1)
/* E28B8C 8010134C 46000007 */  neg.s      $f0, $f0
/* E28B90 80101350 C4680020 */  lwc1       $f8, 0x20($v1)
.L80101354:
/* E28B94 80101354 84680004 */  lh         $t0, 4($v1)
/* E28B98 80101358 846A002A */  lh         $t2, 0x2a($v1)
/* E28B9C 8010135C 46004400 */  add.s      $f16, $f8, $f0
/* E28BA0 80101360 010A082A */  slt        $at, $t0, $t2
/* E28BA4 80101364 E4700020 */  swc1       $f16, 0x20($v1)
/* E28BA8 80101368 C4640020 */  lwc1       $f4, 0x20($v1)
/* E28BAC 8010136C 4600248D */  trunc.w.s  $f18, $f4
/* E28BB0 80101370 44069000 */  mfc1       $a2, $f18
/* E28BB4 80101374 10200003 */  beqz       $at, .L80101384
/* E28BB8 80101378 00C03825 */   or        $a3, $a2, $zero
/* E28BBC 8010137C 10000002 */  b          .L80101388
/* E28BC0 80101380 24020001 */   addiu     $v0, $zero, 1
.L80101384:
/* E28BC4 80101384 00042823 */  negu       $a1, $a0
.L80101388:
/* E28BC8 80101388 84690006 */  lh         $t1, 6($v1)
/* E28BCC 8010138C 846B002C */  lh         $t3, 0x2c($v1)
/* E28BD0 80101390 344C0004 */  ori        $t4, $v0, 4
/* E28BD4 80101394 344D0008 */  ori        $t5, $v0, 8
/* E28BD8 80101398 012B082A */  slt        $at, $t1, $t3
/* E28BDC 8010139C 50200004 */  beql       $at, $zero, .L801013B0
/* E28BE0 801013A0 00063823 */   negu      $a3, $a2
/* E28BE4 801013A4 10000003 */  b          .L801013B4
/* E28BE8 801013A8 01801025 */   or        $v0, $t4, $zero
/* E28BEC 801013AC 00063823 */  negu       $a3, $a2
.L801013B0:
/* E28BF0 801013B0 01A01025 */  or         $v0, $t5, $zero
.L801013B4:
/* E28BF4 801013B4 3C013F80 */  lui        $at, 0x3f80
/* E28BF8 801013B8 44811000 */  mtc1       $at, $f2
/* E28BFC 801013BC C460001C */  lwc1       $f0, 0x1c($v1)
/* E28C00 801013C0 01057021 */  addu       $t6, $t0, $a1
/* E28C04 801013C4 A46E0004 */  sh         $t6, 4($v1)
/* E28C08 801013C8 4600103E */  c.le.s     $f2, $f0
/* E28C0C 801013CC 01277821 */  addu       $t7, $t1, $a3
/* E28C10 801013D0 A46F0006 */  sh         $t7, 6($v1)
/* E28C14 801013D4 304C0001 */  andi       $t4, $v0, 1
/* E28C18 801013D8 45000006 */  bc1f       .L801013F4
/* E28C1C 801013DC 304E0002 */   andi      $t6, $v0, 2
/* E28C20 801013E0 44843000 */  mtc1       $a0, $f6
/* E28C24 801013E4 00000000 */  nop
/* E28C28 801013E8 468032A0 */  cvt.s.w    $f10, $f6
/* E28C2C 801013EC 460A0201 */  sub.s      $f8, $f0, $f10
/* E28C30 801013F0 E468001C */  swc1       $f8, 0x1c($v1)
.L801013F4:
/* E28C34 801013F4 C4600020 */  lwc1       $f0, 0x20($v1)
/* E28C38 801013F8 4600103E */  c.le.s     $f2, $f0
/* E28C3C 801013FC 00000000 */  nop
/* E28C40 80101400 45020007 */  bc1fl      .L80101420
/* E28C44 80101404 84780024 */   lh        $t8, 0x24($v1)
/* E28C48 80101408 44868000 */  mtc1       $a2, $f16
/* E28C4C 8010140C 00000000 */  nop
/* E28C50 80101410 46808120 */  cvt.s.w    $f4, $f16
/* E28C54 80101414 46040481 */  sub.s      $f18, $f0, $f4
/* E28C58 80101418 E4720020 */  swc1       $f18, 0x20($v1)
/* E28C5C 8010141C 84780024 */  lh         $t8, 0x24($v1)
.L80101420:
/* E28C60 80101420 8C790038 */  lw         $t9, 0x38($v1)
/* E28C64 80101424 0319082A */  slt        $at, $t8, $t9
/* E28C68 80101428 14200005 */  bnez       $at, .L80101440
/* E28C6C 8010142C 30580004 */   andi      $t8, $v0, 4
/* E28C70 80101430 846A002A */  lh         $t2, 0x2a($v1)
/* E28C74 80101434 846B002C */  lh         $t3, 0x2c($v1)
/* E28C78 80101438 A46A0004 */  sh         $t2, 4($v1)
/* E28C7C 8010143C A46B0006 */  sh         $t3, 6($v1)
.L80101440:
/* E28C80 80101440 11800008 */  beqz       $t4, .L80101464
/* E28C84 80101444 304A0008 */   andi      $t2, $v0, 8
/* E28C88 80101448 8464002A */  lh         $a0, 0x2a($v1)
/* E28C8C 8010144C 846D0004 */  lh         $t5, 4($v1)
/* E28C90 80101450 01A4082A */  slt        $at, $t5, $a0
/* E28C94 80101454 1420000B */  bnez       $at, .L80101484
/* E28C98 80101458 00000000 */   nop
/* E28C9C 8010145C 10000009 */  b          .L80101484
/* E28CA0 80101460 A4640004 */   sh        $a0, 4($v1)
.L80101464:
/* E28CA4 80101464 11C00007 */  beqz       $t6, .L80101484
/* E28CA8 80101468 00000000 */   nop
/* E28CAC 8010146C 8464002A */  lh         $a0, 0x2a($v1)
/* E28CB0 80101470 846F0004 */  lh         $t7, 4($v1)
/* E28CB4 80101474 008F082A */  slt        $at, $a0, $t7
/* E28CB8 80101478 14200002 */  bnez       $at, .L80101484
/* E28CBC 8010147C 00000000 */   nop
/* E28CC0 80101480 A4640004 */  sh         $a0, 4($v1)
.L80101484:
/* E28CC4 80101484 13000008 */  beqz       $t8, .L801014A8
/* E28CC8 80101488 00000000 */   nop
/* E28CCC 8010148C 8462002C */  lh         $v0, 0x2c($v1)
/* E28CD0 80101490 84790006 */  lh         $t9, 6($v1)
/* E28CD4 80101494 0322082A */  slt        $at, $t9, $v0
/* E28CD8 80101498 5420000C */  bnel       $at, $zero, .L801014CC
/* E28CDC 8010149C 846C0024 */   lh        $t4, 0x24($v1)
/* E28CE0 801014A0 10000009 */  b          .L801014C8
/* E28CE4 801014A4 A4620006 */   sh        $v0, 6($v1)
.L801014A8:
/* E28CE8 801014A8 51400008 */  beql       $t2, $zero, .L801014CC
/* E28CEC 801014AC 846C0024 */   lh        $t4, 0x24($v1)
/* E28CF0 801014B0 8462002C */  lh         $v0, 0x2c($v1)
/* E28CF4 801014B4 846B0006 */  lh         $t3, 6($v1)
/* E28CF8 801014B8 004B082A */  slt        $at, $v0, $t3
/* E28CFC 801014BC 54200003 */  bnel       $at, $zero, .L801014CC
/* E28D00 801014C0 846C0024 */   lh        $t4, 0x24($v1)
/* E28D04 801014C4 A4620006 */  sh         $v0, 6($v1)
.L801014C8:
/* E28D08 801014C8 846C0024 */  lh         $t4, 0x24($v1)
.L801014CC:
/* E28D0C 801014CC 8C6D0038 */  lw         $t5, 0x38($v1)
/* E28D10 801014D0 00001025 */  or         $v0, $zero, $zero
/* E28D14 801014D4 018D082A */  slt        $at, $t4, $t5
/* E28D18 801014D8 14200007 */  bnez       $at, .L801014F8
/* E28D1C 801014DC 00000000 */   nop
/* E28D20 801014E0 44800000 */  mtc1       $zero, $f0
/* E28D24 801014E4 A4600024 */  sh         $zero, 0x24($v1)
/* E28D28 801014E8 240200FF */  addiu      $v0, $zero, 0xff
/* E28D2C 801014EC E460001C */  swc1       $f0, 0x1c($v1)
/* E28D30 801014F0 03E00008 */  jr         $ra
/* E28D34 801014F4 E4600020 */   swc1      $f0, 0x20($v1)
.L801014F8:
/* E28D38 801014F8 03E00008 */  jr         $ra
/* E28D3C 801014FC 00000000 */   nop
