.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101558
/* DC2B78 80101558 00047080 */  sll        $t6, $a0, 2
/* DC2B7C 8010155C 01C47021 */  addu       $t6, $t6, $a0
/* DC2B80 80101560 3C0F8016 */  lui        $t7, %hi(D_80166250)
/* DC2B84 80101564 25EF6250 */  addiu      $t7, $t7, %lo(D_80166250)
/* DC2B88 80101568 000E7100 */  sll        $t6, $t6, 4
/* DC2B8C 8010156C 01CF1821 */  addu       $v1, $t6, $t7
/* DC2B90 80101570 8C780000 */  lw         $t8, ($v1)
/* DC2B94 80101574 00A03825 */  or         $a3, $a1, $zero
/* DC2B98 80101578 AFA60008 */  sw         $a2, 8($sp)
/* DC2B9C 8010157C 0018C800 */  sll        $t9, $t8, 0
/* DC2BA0 80101580 07200003 */  bltz       $t9, .L80101590
/* DC2BA4 80101584 30E60100 */   andi      $a2, $a3, 0x100
/* DC2BA8 80101588 03E00008 */  jr         $ra
/* DC2BAC 8010158C 240200FF */   addiu     $v0, $zero, 0xff
.L80101590:
/* DC2BB0 80101590 9468004C */  lhu        $t0, 0x4c($v1)
/* DC2BB4 80101594 84640008 */  lh         $a0, 8($v1)
/* DC2BB8 80101598 8465000A */  lh         $a1, 0xa($v1)
/* DC2BBC 8010159C 25090001 */  addiu      $t1, $t0, 1
/* DC2BC0 801015A0 10C0001A */  beqz       $a2, .L8010160C
/* DC2BC4 801015A4 A469004C */   sh        $t1, 0x4c($v1)
/* DC2BC8 801015A8 8C670038 */  lw         $a3, 0x38($v1)
/* DC2BCC 801015AC 44842000 */  mtc1       $a0, $f4
/* DC2BD0 801015B0 C4720040 */  lwc1       $f18, 0x40($v1)
/* DC2BD4 801015B4 44874000 */  mtc1       $a3, $f8
/* DC2BD8 801015B8 468021A0 */  cvt.s.w    $f6, $f4
/* DC2BDC 801015BC 312BFFFF */  andi       $t3, $t1, 0xffff
/* DC2BE0 801015C0 468042A0 */  cvt.s.w    $f10, $f8
/* DC2BE4 801015C4 460A3403 */  div.s      $f16, $f6, $f10
/* DC2BE8 801015C8 46109100 */  add.s      $f4, $f18, $f16
/* DC2BEC 801015CC E4640040 */  swc1       $f4, 0x40($v1)
/* DC2BF0 801015D0 C4680040 */  lwc1       $f8, 0x40($v1)
/* DC2BF4 801015D4 8FAE0008 */  lw         $t6, 8($sp)
/* DC2BF8 801015D8 4600418D */  trunc.w.s  $f6, $f8
/* DC2BFC 801015DC 44023000 */  mfc1       $v0, $f6
/* DC2C00 801015E0 00000000 */  nop
/* DC2C04 801015E4 0044082A */  slt        $at, $v0, $a0
/* DC2C08 801015E8 10200003 */  beqz       $at, .L801015F8
/* DC2C0C 801015EC 0167082A */   slt       $at, $t3, $a3
/* DC2C10 801015F0 54200003 */  bnel       $at, $zero, .L80101600
/* DC2C14 801015F4 846C002E */   lh        $t4, 0x2e($v1)
.L801015F8:
/* DC2C18 801015F8 00801025 */  or         $v0, $a0, $zero
/* DC2C1C 801015FC 846C002E */  lh         $t4, 0x2e($v1)
.L80101600:
/* DC2C20 80101600 ADC20010 */  sw         $v0, 0x10($t6)
/* DC2C24 80101604 01826823 */  subu       $t5, $t4, $v0
/* DC2C28 80101608 ADCD0000 */  sw         $t5, ($t6)
.L8010160C:
/* DC2C2C 8010160C 54C0001C */  bnel       $a2, $zero, .L80101680
/* DC2C30 80101610 946A004C */   lhu       $t2, 0x4c($v1)
/* DC2C34 80101614 8C670038 */  lw         $a3, 0x38($v1)
/* DC2C38 80101618 44855000 */  mtc1       $a1, $f10
/* DC2C3C 8010161C C4660044 */  lwc1       $f6, 0x44($v1)
/* DC2C40 80101620 44878000 */  mtc1       $a3, $f16
/* DC2C44 80101624 468054A0 */  cvt.s.w    $f18, $f10
/* DC2C48 80101628 46808120 */  cvt.s.w    $f4, $f16
/* DC2C4C 8010162C 46049203 */  div.s      $f8, $f18, $f4
/* DC2C50 80101630 46083280 */  add.s      $f10, $f6, $f8
/* DC2C54 80101634 E46A0044 */  swc1       $f10, 0x44($v1)
/* DC2C58 80101638 C4700044 */  lwc1       $f16, 0x44($v1)
/* DC2C5C 8010163C 8FA90008 */  lw         $t1, 8($sp)
/* DC2C60 80101640 4600848D */  trunc.w.s  $f18, $f16
/* DC2C64 80101644 44029000 */  mfc1       $v0, $f18
/* DC2C68 80101648 00000000 */  nop
/* DC2C6C 8010164C 0045082A */  slt        $at, $v0, $a1
/* DC2C70 80101650 50200006 */  beql       $at, $zero, .L8010166C
/* DC2C74 80101654 00A01025 */   or        $v0, $a1, $zero
/* DC2C78 80101658 9478004C */  lhu        $t8, 0x4c($v1)
/* DC2C7C 8010165C 0307082A */  slt        $at, $t8, $a3
/* DC2C80 80101660 54200003 */  bnel       $at, $zero, .L80101670
/* DC2C84 80101664 84790030 */   lh        $t9, 0x30($v1)
/* DC2C88 80101668 00A01025 */  or         $v0, $a1, $zero
.L8010166C:
/* DC2C8C 8010166C 84790030 */  lh         $t9, 0x30($v1)
.L80101670:
/* DC2C90 80101670 AD220014 */  sw         $v0, 0x14($t1)
/* DC2C94 80101674 03224023 */  subu       $t0, $t9, $v0
/* DC2C98 80101678 AD280004 */  sw         $t0, 4($t1)
/* DC2C9C 8010167C 946A004C */  lhu        $t2, 0x4c($v1)
.L80101680:
/* DC2CA0 80101680 8C6B0038 */  lw         $t3, 0x38($v1)
/* DC2CA4 80101684 00001025 */  or         $v0, $zero, $zero
/* DC2CA8 80101688 014B082A */  slt        $at, $t2, $t3
/* DC2CAC 8010168C 14200009 */  bnez       $at, .L801016B4
/* DC2CB0 80101690 00000000 */   nop
/* DC2CB4 80101694 44800000 */  mtc1       $zero, $f0
/* DC2CB8 80101698 A460004C */  sh         $zero, 0x4c($v1)
/* DC2CBC 8010169C A460002E */  sh         $zero, 0x2e($v1)
/* DC2CC0 801016A0 A4600030 */  sh         $zero, 0x30($v1)
/* DC2CC4 801016A4 240200FF */  addiu      $v0, $zero, 0xff
/* DC2CC8 801016A8 E4600040 */  swc1       $f0, 0x40($v1)
/* DC2CCC 801016AC 03E00008 */  jr         $ra
/* DC2CD0 801016B0 E4600044 */   swc1      $f0, 0x44($v1)
.L801016B4:
/* DC2CD4 801016B4 03E00008 */  jr         $ra
/* DC2CD8 801016B8 00000000 */   nop
