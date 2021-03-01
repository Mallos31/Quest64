.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osDevMgrMain
/* 3E820 8003DC20 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3E824 8003DC24 AFA40048 */  sw         $a0, 0x48($sp)
/* 3E828 8003DC28 8FAE0048 */  lw         $t6, 0x48($sp)
/* 3E82C 8003DC2C AFBF001C */  sw         $ra, 0x1c($sp)
/* 3E830 8003DC30 AFA00030 */  sw         $zero, 0x30($sp)
/* 3E834 8003DC34 AFA00044 */  sw         $zero, 0x44($sp)
/* 3E838 8003DC38 AFA00038 */  sw         $zero, 0x38($sp)
/* 3E83C 8003DC3C AFAE0034 */  sw         $t6, 0x34($sp)
.L8003DC40:
/* 3E840 8003DC40 8FAF0034 */  lw         $t7, 0x34($sp)
/* 3E844 8003DC44 27A50044 */  addiu      $a1, $sp, 0x44
/* 3E848 8003DC48 24060001 */  addiu      $a2, $zero, 1
/* 3E84C 8003DC4C 0C00D008 */  jal        osRecvMesg
/* 3E850 8003DC50 8DE40008 */   lw        $a0, 8($t7)
/* 3E854 8003DC54 8FB80044 */  lw         $t8, 0x44($sp)
/* 3E858 8003DC58 8F190014 */  lw         $t9, 0x14($t8)
/* 3E85C 8003DC5C 132000A1 */  beqz       $t9, .L8003DEE4
/* 3E860 8003DC60 00000000 */   nop
/* 3E864 8003DC64 93280004 */  lbu        $t0, 4($t9)
/* 3E868 8003DC68 24010002 */  addiu      $at, $zero, 2
/* 3E86C 8003DC6C 1501009D */  bne        $t0, $at, .L8003DEE4
/* 3E870 8003DC70 00000000 */   nop
/* 3E874 8003DC74 8F290014 */  lw         $t1, 0x14($t9)
/* 3E878 8003DC78 11200003 */  beqz       $t1, .L8003DC88
/* 3E87C 8003DC7C 24010001 */   addiu     $at, $zero, 1
/* 3E880 8003DC80 15210098 */  bne        $t1, $at, .L8003DEE4
/* 3E884 8003DC84 00000000 */   nop
.L8003DC88:
/* 3E888 8003DC88 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3E88C 8003DC8C 2408FFFF */  addiu      $t0, $zero, -1
/* 3E890 8003DC90 24010003 */  addiu      $at, $zero, 3
/* 3E894 8003DC94 8D4B0014 */  lw         $t3, 0x14($t2)
/* 3E898 8003DC98 256C0014 */  addiu      $t4, $t3, 0x14
/* 3E89C 8003DC9C AFAC0028 */  sw         $t4, 0x28($sp)
/* 3E8A0 8003DCA0 958D0006 */  lhu        $t5, 6($t4)
/* 3E8A4 8003DCA4 000D70C0 */  sll        $t6, $t5, 3
/* 3E8A8 8003DCA8 01CD7021 */  addu       $t6, $t6, $t5
/* 3E8AC 8003DCAC 000E7080 */  sll        $t6, $t6, 2
/* 3E8B0 8003DCB0 018E7821 */  addu       $t7, $t4, $t6
/* 3E8B4 8003DCB4 25F80018 */  addiu      $t8, $t7, 0x18
/* 3E8B8 8003DCB8 AFB8002C */  sw         $t8, 0x2c($sp)
/* 3E8BC 8003DCBC AD880008 */  sw         $t0, 8($t4)
/* 3E8C0 8003DCC0 8FB90028 */  lw         $t9, 0x28($sp)
/* 3E8C4 8003DCC4 97290004 */  lhu        $t1, 4($t9)
/* 3E8C8 8003DCC8 11210006 */  beq        $t1, $at, .L8003DCE4
/* 3E8CC 8003DCCC 00000000 */   nop
/* 3E8D0 8003DCD0 8FAA002C */  lw         $t2, 0x2c($sp)
/* 3E8D4 8003DCD4 8D4B0004 */  lw         $t3, 4($t2)
/* 3E8D8 8003DCD8 8D4D000C */  lw         $t5, 0xc($t2)
/* 3E8DC 8003DCDC 016D7023 */  subu       $t6, $t3, $t5
/* 3E8E0 8003DCE0 AD4E0004 */  sw         $t6, 4($t2)
.L8003DCE4:
/* 3E8E4 8003DCE4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3E8E8 8003DCE8 24010002 */  addiu      $at, $zero, 2
/* 3E8EC 8003DCEC 95F80004 */  lhu        $t8, 4($t7)
/* 3E8F0 8003DCF0 17010009 */  bne        $t8, $at, .L8003DD18
/* 3E8F4 8003DCF4 00000000 */   nop
/* 3E8F8 8003DCF8 8FA80044 */  lw         $t0, 0x44($sp)
/* 3E8FC 8003DCFC 8D0C0014 */  lw         $t4, 0x14($t0)
/* 3E900 8003DD00 8D990014 */  lw         $t9, 0x14($t4)
/* 3E904 8003DD04 17200004 */  bnez       $t9, .L8003DD18
/* 3E908 8003DD08 00000000 */   nop
/* 3E90C 8003DD0C 24090001 */  addiu      $t1, $zero, 1
/* 3E910 8003DD10 10000002 */  b          .L8003DD1C
/* 3E914 8003DD14 AFA90030 */   sw        $t1, 0x30($sp)
.L8003DD18:
/* 3E918 8003DD18 AFA00030 */  sw         $zero, 0x30($sp)
.L8003DD1C:
/* 3E91C 8003DD1C 8FAB0034 */  lw         $t3, 0x34($sp)
/* 3E920 8003DD20 27A5003C */  addiu      $a1, $sp, 0x3c
/* 3E924 8003DD24 24060001 */  addiu      $a2, $zero, 1
/* 3E928 8003DD28 0C00D008 */  jal        osRecvMesg
/* 3E92C 8003DD2C 8D640010 */   lw        $a0, 0x10($t3)
/* 3E930 8003DD30 3C040010 */  lui        $a0, 0x10
/* 3E934 8003DD34 0C011ECC */  jal        __osResetGlobalIntMask
/* 3E938 8003DD38 34840401 */   ori       $a0, $a0, 0x401
/* 3E93C 8003DD3C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3E940 8003DD40 8FAD0044 */  lw         $t5, 0x44($sp)
/* 3E944 8003DD44 3C018000 */  lui        $at, 0x8000
/* 3E948 8003DD48 8DC60010 */  lw         $a2, 0x10($t6)
/* 3E94C 8003DD4C 3C050500 */  lui        $a1, 0x500
/* 3E950 8003DD50 34A50510 */  ori        $a1, $a1, 0x510
/* 3E954 8003DD54 00C15025 */  or         $t2, $a2, $at
/* 3E958 8003DD58 01403025 */  or         $a2, $t2, $zero
/* 3E95C 8003DD5C 0C011EE4 */  jal        osEPiRawWriteIo
/* 3E960 8003DD60 8DA40014 */   lw        $a0, 0x14($t5)
.L8003DD64:
/* 3E964 8003DD64 8FAF0034 */  lw         $t7, 0x34($sp)
/* 3E968 8003DD68 27A50040 */  addiu      $a1, $sp, 0x40
/* 3E96C 8003DD6C 24060001 */  addiu      $a2, $zero, 1
/* 3E970 8003DD70 0C00D008 */  jal        osRecvMesg
/* 3E974 8003DD74 8DE4000C */   lw        $a0, 0xc($t7)
/* 3E978 8003DD78 8FB80044 */  lw         $t8, 0x44($sp)
/* 3E97C 8003DD7C 2401001D */  addiu      $at, $zero, 0x1d
/* 3E980 8003DD80 8F080014 */  lw         $t0, 0x14($t8)
/* 3E984 8003DD84 250C0014 */  addiu      $t4, $t0, 0x14
/* 3E988 8003DD88 AFAC0028 */  sw         $t4, 0x28($sp)
/* 3E98C 8003DD8C 95990006 */  lhu        $t9, 6($t4)
/* 3E990 8003DD90 001948C0 */  sll        $t1, $t9, 3
/* 3E994 8003DD94 01394821 */  addu       $t1, $t1, $t9
/* 3E998 8003DD98 00094880 */  sll        $t1, $t1, 2
/* 3E99C 8003DD9C 01895821 */  addu       $t3, $t4, $t1
/* 3E9A0 8003DDA0 256D0018 */  addiu      $t5, $t3, 0x18
/* 3E9A4 8003DDA4 AFAD002C */  sw         $t5, 0x2c($sp)
/* 3E9A8 8003DDA8 8D6E0018 */  lw         $t6, 0x18($t3)
/* 3E9AC 8003DDAC 15C1002E */  bne        $t6, $at, .L8003DE68
/* 3E9B0 8003DDB0 00000000 */   nop
/* 3E9B4 8003DDB4 8D860010 */  lw         $a2, 0x10($t4)
/* 3E9B8 8003DDB8 3C011000 */  lui        $at, 0x1000
/* 3E9BC 8003DDBC 3C050500 */  lui        $a1, 0x500
/* 3E9C0 8003DDC0 00C15025 */  or         $t2, $a2, $at
/* 3E9C4 8003DDC4 01403025 */  or         $a2, $t2, $zero
/* 3E9C8 8003DDC8 34A50510 */  ori        $a1, $a1, 0x510
/* 3E9CC 8003DDCC 0C011EE4 */  jal        osEPiRawWriteIo
/* 3E9D0 8003DDD0 8F040014 */   lw        $a0, 0x14($t8)
/* 3E9D4 8003DDD4 8FAF0044 */  lw         $t7, 0x44($sp)
/* 3E9D8 8003DDD8 8FA80028 */  lw         $t0, 0x28($sp)
/* 3E9DC 8003DDDC 3C050500 */  lui        $a1, 0x500
/* 3E9E0 8003DDE0 34A50510 */  ori        $a1, $a1, 0x510
/* 3E9E4 8003DDE4 8DE40014 */  lw         $a0, 0x14($t7)
/* 3E9E8 8003DDE8 0C011EE4 */  jal        osEPiRawWriteIo
/* 3E9EC 8003DDEC 8D060010 */   lw        $a2, 0x10($t0)
/* 3E9F0 8003DDF0 8FB90044 */  lw         $t9, 0x44($sp)
/* 3E9F4 8003DDF4 3C050500 */  lui        $a1, 0x500
/* 3E9F8 8003DDF8 34A50508 */  ori        $a1, $a1, 0x508
/* 3E9FC 8003DDFC 27A60024 */  addiu      $a2, $sp, 0x24
/* 3EA00 8003DE00 0C011EF8 */  jal        osEPiRawReadIo
/* 3EA04 8003DE04 8F240014 */   lw        $a0, 0x14($t9)
/* 3EA08 8003DE08 8FA90024 */  lw         $t1, 0x24($sp)
/* 3EA0C 8003DE0C 3C010200 */  lui        $at, 0x200
/* 3EA10 8003DE10 01216824 */  and        $t5, $t1, $at
/* 3EA14 8003DE14 11A0000B */  beqz       $t5, .L8003DE44
/* 3EA18 8003DE18 00000000 */   nop
/* 3EA1C 8003DE1C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3EA20 8003DE20 8FAB0044 */  lw         $t3, 0x44($sp)
/* 3EA24 8003DE24 3C010100 */  lui        $at, 0x100
/* 3EA28 8003DE28 8DC60010 */  lw         $a2, 0x10($t6)
/* 3EA2C 8003DE2C 3C050500 */  lui        $a1, 0x500
/* 3EA30 8003DE30 34A50510 */  ori        $a1, $a1, 0x510
/* 3EA34 8003DE34 00C1C025 */  or         $t8, $a2, $at
/* 3EA38 8003DE38 03003025 */  or         $a2, $t8, $zero
/* 3EA3C 8003DE3C 0C011EE4 */  jal        osEPiRawWriteIo
/* 3EA40 8003DE40 8D640014 */   lw        $a0, 0x14($t3)
.L8003DE44:
/* 3EA44 8003DE44 8FAA002C */  lw         $t2, 0x2c($sp)
/* 3EA48 8003DE48 240C0004 */  addiu      $t4, $zero, 4
/* 3EA4C 8003DE4C 240F0002 */  addiu      $t7, $zero, 2
/* 3EA50 8003DE50 3C08A460 */  lui        $t0, %hi(PI_STATUS_REG)
/* 3EA54 8003DE54 3C040010 */  lui        $a0, 0x10
/* 3EA58 8003DE58 AD4C0000 */  sw         $t4, ($t2)
/* 3EA5C 8003DE5C AD0F0010 */  sw         $t7, %lo(PI_STATUS_REG)($t0)
/* 3EA60 8003DE60 0C011F0C */  jal        __osSetGlobalIntMask
/* 3EA64 8003DE64 34840C01 */   ori       $a0, $a0, 0xc01
.L8003DE68:
/* 3EA68 8003DE68 8FB90044 */  lw         $t9, 0x44($sp)
/* 3EA6C 8003DE6C 00003025 */  or         $a2, $zero, $zero
/* 3EA70 8003DE70 8F240004 */  lw         $a0, 4($t9)
/* 3EA74 8003DE74 0C00D080 */  jal        osSendMesg
/* 3EA78 8003DE78 03202825 */   or        $a1, $t9, $zero
/* 3EA7C 8003DE7C 8FA90030 */  lw         $t1, 0x30($sp)
/* 3EA80 8003DE80 24010001 */  addiu      $at, $zero, 1
/* 3EA84 8003DE84 15210008 */  bne        $t1, $at, .L8003DEA8
/* 3EA88 8003DE88 00000000 */   nop
/* 3EA8C 8003DE8C 8FAD0044 */  lw         $t5, 0x44($sp)
/* 3EA90 8003DE90 8DAB0014 */  lw         $t3, 0x14($t5)
/* 3EA94 8003DE94 8D6E002C */  lw         $t6, 0x2c($t3)
/* 3EA98 8003DE98 15C00003 */  bnez       $t6, .L8003DEA8
/* 3EA9C 8003DE9C 00000000 */   nop
/* 3EAA0 8003DEA0 1000FFB0 */  b          .L8003DD64
/* 3EAA4 8003DEA4 AFA00030 */   sw        $zero, 0x30($sp)
.L8003DEA8:
/* 3EAA8 8003DEA8 8FB80034 */  lw         $t8, 0x34($sp)
/* 3EAAC 8003DEAC 00002825 */  or         $a1, $zero, $zero
/* 3EAB0 8003DEB0 00003025 */  or         $a2, $zero, $zero
/* 3EAB4 8003DEB4 0C00D080 */  jal        osSendMesg
/* 3EAB8 8003DEB8 8F040010 */   lw        $a0, 0x10($t8)
/* 3EABC 8003DEBC 8FAC0044 */  lw         $t4, 0x44($sp)
/* 3EAC0 8003DEC0 24010001 */  addiu      $at, $zero, 1
/* 3EAC4 8003DEC4 8D8A0014 */  lw         $t2, 0x14($t4)
/* 3EAC8 8003DEC8 954F001A */  lhu        $t7, 0x1a($t2)
/* 3EACC 8003DECC 15E1FF5C */  bne        $t7, $at, .L8003DC40
/* 3EAD0 8003DED0 00000000 */   nop
/* 3EAD4 8003DED4 0C011F20 */  jal        osYieldThread
/* 3EAD8 8003DED8 00000000 */   nop
/* 3EADC 8003DEDC 1000FF58 */  b          .L8003DC40
/* 3EAE0 8003DEE0 00000000 */   nop
.L8003DEE4:
/* 3EAE4 8003DEE4 8FA80044 */  lw         $t0, 0x44($sp)
/* 3EAE8 8003DEE8 95190000 */  lhu        $t9, ($t0)
/* 3EAEC 8003DEEC 2729FFF6 */  addiu      $t1, $t9, -0xa
/* 3EAF0 8003DEF0 2D210007 */  sltiu      $at, $t1, 7
/* 3EAF4 8003DEF4 10200051 */  beqz       $at, .L8003E03C
/* 3EAF8 8003DEF8 00000000 */   nop
/* 3EAFC 8003DEFC 00094880 */  sll        $t1, $t1, 2
/* 3EB00 8003DF00 3C018007 */  lui        $at, %hi(D_80071EF0)
/* 3EB04 8003DF04 00290821 */  addu       $at, $at, $t1
/* 3EB08 8003DF08 8C291EF0 */  lw         $t1, %lo(D_80071EF0)($at)
/* 3EB0C 8003DF0C 01200008 */  jr         $t1
/* 3EB10 8003DF10 00000000 */   nop
/* 3EB14 8003DF14 8FAD0034 */  lw         $t5, 0x34($sp)
/* 3EB18 8003DF18 27A5003C */  addiu      $a1, $sp, 0x3c
/* 3EB1C 8003DF1C 24060001 */  addiu      $a2, $zero, 1
/* 3EB20 8003DF20 0C00D008 */  jal        osRecvMesg
/* 3EB24 8003DF24 8DA40010 */   lw        $a0, 0x10($t5)
/* 3EB28 8003DF28 8FAE0034 */  lw         $t6, 0x34($sp)
/* 3EB2C 8003DF2C 8FAB0044 */  lw         $t3, 0x44($sp)
/* 3EB30 8003DF30 00002025 */  or         $a0, $zero, $zero
/* 3EB34 8003DF34 8DD90014 */  lw         $t9, 0x14($t6)
/* 3EB38 8003DF38 8D65000C */  lw         $a1, 0xc($t3)
/* 3EB3C 8003DF3C 8D660008 */  lw         $a2, 8($t3)
/* 3EB40 8003DF40 0320F809 */  jalr       $t9
/* 3EB44 8003DF44 8D670010 */   lw        $a3, 0x10($t3)
/* 3EB48 8003DF48 1000003E */  b          .L8003E044
/* 3EB4C 8003DF4C AFA20038 */   sw        $v0, 0x38($sp)
/* 3EB50 8003DF50 8FB80034 */  lw         $t8, 0x34($sp)
/* 3EB54 8003DF54 27A5003C */  addiu      $a1, $sp, 0x3c
/* 3EB58 8003DF58 24060001 */  addiu      $a2, $zero, 1
/* 3EB5C 8003DF5C 0C00D008 */  jal        osRecvMesg
/* 3EB60 8003DF60 8F040010 */   lw        $a0, 0x10($t8)
/* 3EB64 8003DF64 8FAA0034 */  lw         $t2, 0x34($sp)
/* 3EB68 8003DF68 8FAC0044 */  lw         $t4, 0x44($sp)
/* 3EB6C 8003DF6C 24040001 */  addiu      $a0, $zero, 1
/* 3EB70 8003DF70 8D590014 */  lw         $t9, 0x14($t2)
/* 3EB74 8003DF74 8D85000C */  lw         $a1, 0xc($t4)
/* 3EB78 8003DF78 8D860008 */  lw         $a2, 8($t4)
/* 3EB7C 8003DF7C 0320F809 */  jalr       $t9
/* 3EB80 8003DF80 8D870010 */   lw        $a3, 0x10($t4)
/* 3EB84 8003DF84 1000002F */  b          .L8003E044
/* 3EB88 8003DF88 AFA20038 */   sw        $v0, 0x38($sp)
/* 3EB8C 8003DF8C 8FAF0034 */  lw         $t7, 0x34($sp)
/* 3EB90 8003DF90 27A5003C */  addiu      $a1, $sp, 0x3c
/* 3EB94 8003DF94 24060001 */  addiu      $a2, $zero, 1
/* 3EB98 8003DF98 0C00D008 */  jal        osRecvMesg
/* 3EB9C 8003DF9C 8DE40010 */   lw        $a0, 0x10($t7)
/* 3EBA0 8003DFA0 8FA80044 */  lw         $t0, 0x44($sp)
/* 3EBA4 8003DFA4 8FAD0034 */  lw         $t5, 0x34($sp)
/* 3EBA8 8003DFA8 00002825 */  or         $a1, $zero, $zero
/* 3EBAC 8003DFAC 8D090010 */  lw         $t1, 0x10($t0)
/* 3EBB0 8003DFB0 8D040014 */  lw         $a0, 0x14($t0)
/* 3EBB4 8003DFB4 8D06000C */  lw         $a2, 0xc($t0)
/* 3EBB8 8003DFB8 8D070008 */  lw         $a3, 8($t0)
/* 3EBBC 8003DFBC AFA90010 */  sw         $t1, 0x10($sp)
/* 3EBC0 8003DFC0 8DB90018 */  lw         $t9, 0x18($t5)
/* 3EBC4 8003DFC4 0320F809 */  jalr       $t9
/* 3EBC8 8003DFC8 00000000 */   nop
/* 3EBCC 8003DFCC 1000001D */  b          .L8003E044
/* 3EBD0 8003DFD0 AFA20038 */   sw        $v0, 0x38($sp)
/* 3EBD4 8003DFD4 8FAB0034 */  lw         $t3, 0x34($sp)
/* 3EBD8 8003DFD8 27A5003C */  addiu      $a1, $sp, 0x3c
/* 3EBDC 8003DFDC 24060001 */  addiu      $a2, $zero, 1
/* 3EBE0 8003DFE0 0C00D008 */  jal        osRecvMesg
/* 3EBE4 8003DFE4 8D640010 */   lw        $a0, 0x10($t3)
/* 3EBE8 8003DFE8 8FAE0044 */  lw         $t6, 0x44($sp)
/* 3EBEC 8003DFEC 8FAC0034 */  lw         $t4, 0x34($sp)
/* 3EBF0 8003DFF0 24050001 */  addiu      $a1, $zero, 1
/* 3EBF4 8003DFF4 8DD80010 */  lw         $t8, 0x10($t6)
/* 3EBF8 8003DFF8 8DC40014 */  lw         $a0, 0x14($t6)
/* 3EBFC 8003DFFC 8DC6000C */  lw         $a2, 0xc($t6)
/* 3EC00 8003E000 8DC70008 */  lw         $a3, 8($t6)
/* 3EC04 8003E004 AFB80010 */  sw         $t8, 0x10($sp)
/* 3EC08 8003E008 8D990018 */  lw         $t9, 0x18($t4)
/* 3EC0C 8003E00C 0320F809 */  jalr       $t9
/* 3EC10 8003E010 00000000 */   nop
/* 3EC14 8003E014 1000000B */  b          .L8003E044
/* 3EC18 8003E018 AFA20038 */   sw        $v0, 0x38($sp)
/* 3EC1C 8003E01C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3EC20 8003E020 00003025 */  or         $a2, $zero, $zero
/* 3EC24 8003E024 8D440004 */  lw         $a0, 4($t2)
/* 3EC28 8003E028 0C00D080 */  jal        osSendMesg
/* 3EC2C 8003E02C 01402825 */   or        $a1, $t2, $zero
/* 3EC30 8003E030 240FFFFF */  addiu      $t7, $zero, -1
/* 3EC34 8003E034 10000003 */  b          .L8003E044
/* 3EC38 8003E038 AFAF0038 */   sw        $t7, 0x38($sp)
.L8003E03C:
/* 3EC3C 8003E03C 2408FFFF */  addiu      $t0, $zero, -1
/* 3EC40 8003E040 AFA80038 */  sw         $t0, 0x38($sp)
.L8003E044:
/* 3EC44 8003E044 8FA90038 */  lw         $t1, 0x38($sp)
/* 3EC48 8003E048 1520FEFD */  bnez       $t1, .L8003DC40
/* 3EC4C 8003E04C 00000000 */   nop
/* 3EC50 8003E050 8FAD0034 */  lw         $t5, 0x34($sp)
/* 3EC54 8003E054 27A50040 */  addiu      $a1, $sp, 0x40
/* 3EC58 8003E058 24060001 */  addiu      $a2, $zero, 1
/* 3EC5C 8003E05C 0C00D008 */  jal        osRecvMesg
/* 3EC60 8003E060 8DA4000C */   lw        $a0, 0xc($t5)
/* 3EC64 8003E064 8FAB0044 */  lw         $t3, 0x44($sp)
/* 3EC68 8003E068 00003025 */  or         $a2, $zero, $zero
/* 3EC6C 8003E06C 8D640004 */  lw         $a0, 4($t3)
/* 3EC70 8003E070 0C00D080 */  jal        osSendMesg
/* 3EC74 8003E074 01602825 */   or        $a1, $t3, $zero
/* 3EC78 8003E078 8FAE0034 */  lw         $t6, 0x34($sp)
/* 3EC7C 8003E07C 00002825 */  or         $a1, $zero, $zero
/* 3EC80 8003E080 00003025 */  or         $a2, $zero, $zero
/* 3EC84 8003E084 0C00D080 */  jal        osSendMesg
/* 3EC88 8003E088 8DC40010 */   lw        $a0, 0x10($t6)
/* 3EC8C 8003E08C 1000FEEC */  b          .L8003DC40
/* 3EC90 8003E090 00000000 */   nop
/* 3EC94 8003E094 00000000 */  nop
/* 3EC98 8003E098 00000000 */  nop
/* 3EC9C 8003E09C 00000000 */  nop
/* 3ECA0 8003E0A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3ECA4 8003E0A4 27BD0048 */  addiu      $sp, $sp, 0x48
/* 3ECA8 8003E0A8 03E00008 */  jr         $ra
/* 3ECAC 8003E0AC 00000000 */   nop

glabel __osViInit
/* 3ECB0 8003E0B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3ECB4 8003E0B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3ECB8 8003E0B8 3C048007 */  lui        $a0, %hi(vi)
/* 3ECBC 8003E0BC 24840A20 */  addiu      $a0, $a0, %lo(vi)
/* 3ECC0 8003E0C0 0C00F50C */  jal        bzero
/* 3ECC4 8003E0C4 24050060 */   addiu     $a1, $zero, 0x60
/* 3ECC8 8003E0C8 3C0E8007 */  lui        $t6, %hi(vi)
/* 3ECCC 8003E0CC 25CE0A20 */  addiu      $t6, $t6, %lo(vi)
/* 3ECD0 8003E0D0 3C018007 */  lui        $at, %hi(__osFaultedThread)
/* 3ECD4 8003E0D4 AC2E0A80 */  sw         $t6, %lo(__osFaultedThread)($at)
/* 3ECD8 8003E0D8 3C018007 */  lui        $at, %hi(__osViNext)
/* 3ECDC 8003E0DC 25CF0030 */  addiu      $t7, $t6, 0x30
/* 3ECE0 8003E0E0 AC2F0A84 */  sw         $t7, %lo(__osViNext)($at)
/* 3ECE4 8003E0E4 24180001 */  addiu      $t8, $zero, 1
/* 3ECE8 8003E0E8 A5D80032 */  sh         $t8, 0x32($t6)
/* 3ECEC 8003E0EC 3C088007 */  lui        $t0, %hi(__osFaultedThread)
/* 3ECF0 8003E0F0 8D080A80 */  lw         $t0, %lo(__osFaultedThread)($t0)
/* 3ECF4 8003E0F4 24190001 */  addiu      $t9, $zero, 1
/* 3ECF8 8003E0F8 3C0A8007 */  lui        $t2, %hi(__osViNext)
/* 3ECFC 8003E0FC A5190002 */  sh         $t9, 2($t0)
/* 3ED00 8003E100 8D4A0A84 */  lw         $t2, %lo(__osViNext)($t2)
/* 3ED04 8003E104 3C098000 */  lui        $t1, 0x8000
/* 3ED08 8003E108 3C0C8007 */  lui        $t4, %hi(__osFaultedThread)
/* 3ED0C 8003E10C AD490004 */  sw         $t1, 4($t2)
/* 3ED10 8003E110 8D8C0A80 */  lw         $t4, %lo(__osFaultedThread)($t4)
/* 3ED14 8003E114 3C0B8000 */  lui        $t3, 0x8000
/* 3ED18 8003E118 3C0D8000 */  lui        $t5, %hi(osTvType)
/* 3ED1C 8003E11C AD8B0004 */  sw         $t3, 4($t4)
/* 3ED20 8003E120 8DAD0300 */  lw         $t5, %lo(osTvType)($t5)
/* 3ED24 8003E124 15A00007 */  bnez       $t5, .L8003E144
/* 3ED28 8003E128 00000000 */   nop
/* 3ED2C 8003E12C 3C188007 */  lui        $t8, %hi(__osViNext)
/* 3ED30 8003E130 8F180A84 */  lw         $t8, %lo(__osViNext)($t8)
/* 3ED34 8003E134 3C0F8007 */  lui        $t7, %hi(osViModePalLan1)
/* 3ED38 8003E138 25EF0DD0 */  addiu      $t7, $t7, %lo(osViModePalLan1)
/* 3ED3C 8003E13C 10000011 */  b          .L8003E184
/* 3ED40 8003E140 AF0F0008 */   sw        $t7, 8($t8)
.L8003E144:
/* 3ED44 8003E144 3C0E8000 */  lui        $t6, %hi(osTvType)
/* 3ED48 8003E148 8DCE0300 */  lw         $t6, %lo(osTvType)($t6)
/* 3ED4C 8003E14C 24010002 */  addiu      $at, $zero, 2
/* 3ED50 8003E150 15C10007 */  bne        $t6, $at, .L8003E170
/* 3ED54 8003E154 00000000 */   nop
/* 3ED58 8003E158 3C088007 */  lui        $t0, %hi(__osViNext)
/* 3ED5C 8003E15C 8D080A84 */  lw         $t0, %lo(__osViNext)($t0)
/* 3ED60 8003E160 3C198007 */  lui        $t9, %hi(osViModeMpalLan1)
/* 3ED64 8003E164 27390E20 */  addiu      $t9, $t9, %lo(osViModeMpalLan1)
/* 3ED68 8003E168 10000006 */  b          .L8003E184
/* 3ED6C 8003E16C AD190008 */   sw        $t9, 8($t0)
.L8003E170:
/* 3ED70 8003E170 3C0A8007 */  lui        $t2, %hi(__osViNext)
/* 3ED74 8003E174 8D4A0A84 */  lw         $t2, %lo(__osViNext)($t2)
/* 3ED78 8003E178 3C098007 */  lui        $t1, %hi(osViModeNtscLan1)
/* 3ED7C 8003E17C 25290E70 */  addiu      $t1, $t1, %lo(osViModeNtscLan1)
/* 3ED80 8003E180 AD490008 */  sw         $t1, 8($t2)
.L8003E184:
/* 3ED84 8003E184 3C0C8007 */  lui        $t4, %hi(__osViNext)
/* 3ED88 8003E188 8D8C0A84 */  lw         $t4, %lo(__osViNext)($t4)
/* 3ED8C 8003E18C 240B0020 */  addiu      $t3, $zero, 0x20
/* 3ED90 8003E190 3C0D8007 */  lui        $t5, %hi(__osViNext)
/* 3ED94 8003E194 A58B0000 */  sh         $t3, ($t4)
/* 3ED98 8003E198 8DAD0A84 */  lw         $t5, %lo(__osViNext)($t5)
/* 3ED9C 8003E19C 3C0EA440 */  lui        $t6, %hi(VI_CURRENT_REG)
/* 3EDA0 8003E1A0 8DAF0008 */  lw         $t7, 8($t5)
/* 3EDA4 8003E1A4 8DF80004 */  lw         $t8, 4($t7)
/* 3EDA8 8003E1A8 ADB8000C */  sw         $t8, 0xc($t5)
/* 3EDAC 8003E1AC 8DD90010 */  lw         $t9, %lo(VI_CURRENT_REG)($t6)
/* 3EDB0 8003E1B0 2F21000B */  sltiu      $at, $t9, 0xb
/* 3EDB4 8003E1B4 14200006 */  bnez       $at, .L8003E1D0
/* 3EDB8 8003E1B8 00000000 */   nop
.L8003E1BC:
/* 3EDBC 8003E1BC 3C08A440 */  lui        $t0, %hi(VI_CURRENT_REG)
/* 3EDC0 8003E1C0 8D090010 */  lw         $t1, %lo(VI_CURRENT_REG)($t0)
/* 3EDC4 8003E1C4 2D21000B */  sltiu      $at, $t1, 0xb
/* 3EDC8 8003E1C8 1020FFFC */  beqz       $at, .L8003E1BC
/* 3EDCC 8003E1CC 00000000 */   nop
.L8003E1D0:
/* 3EDD0 8003E1D0 3C0AA440 */  lui        $t2, 0xa440
/* 3EDD4 8003E1D4 0C00FA8C */  jal        __osViSwapContext
/* 3EDD8 8003E1D8 AD400000 */   sw        $zero, ($t2)
/* 3EDDC 8003E1DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3EDE0 8003E1E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3EDE4 8003E1E4 03E00008 */  jr         $ra
/* 3EDE8 8003E1E8 00000000 */   nop
/* 3EDEC 8003E1EC 00000000 */  nop
