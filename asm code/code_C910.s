glabel func_8000BD10
/* C910 8000BD10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C914 8000BD14 AFB3002C */  sw         $s3, 0x2c($sp)
/* C918 8000BD18 AFB10024 */  sw         $s1, 0x24($sp)
/* C91C 8000BD1C 3C118008 */  lui        $s1, 0x8008
/* C920 8000BD20 3C138008 */  lui        $s3, 0x8008
/* C924 8000BD24 26734F18 */  addiu      $s3, $s3, 0x4f18
/* C928 8000BD28 26314EE4 */  addiu      $s1, $s1, 0x4ee4
/* C92C 8000BD2C AFBF0034 */  sw         $ra, 0x34($sp)
/* C930 8000BD30 AFB40030 */  sw         $s4, 0x30($sp)
/* C934 8000BD34 AFB20028 */  sw         $s2, 0x28($sp)
/* C938 8000BD38 AFB00020 */  sw         $s0, 0x20($sp)
/* C93C 8000BD3C 3C028008 */  lui        $v0, 0x8008
/* C940 8000BD40 8C424EEC */  lw         $v0, 0x4eec($v0)
/* C944 8000BD44 8E240000 */  lw         $a0, ($s1)
/* C948 8000BD48 3C0F8005 */  lui        $t7, 0x8005
/* C94C 8000BD4C 00027100 */  sll        $t6, $v0, 4
/* C950 8000BD50 01C27021 */  addu       $t6, $t6, $v0
/* C954 8000BD54 000E7080 */  sll        $t6, $t6, 2
/* C958 8000BD58 25EF4F10 */  addiu      $t7, $t7, 0x4f10
/* C95C 8000BD5C 01CFC021 */  addu       $t8, $t6, $t7
/* C960 8000BD60 2401FFFF */  addiu      $at, $zero, -1
/* C964 8000BD64 10810053 */  beq        $a0, $at, .L8000BEB4
/* C968 8000BD68 AE780000 */   sw        $t8, ($s3)
/* C96C 8000BD6C 2401000B */  addiu      $at, $zero, 0xb
/* C970 8000BD70 14410012 */  bne        $v0, $at, .L8000BDBC
/* C974 8000BD74 3C198008 */   lui       $t9, 0x8008
/* C978 8000BD78 8F394EE8 */  lw         $t9, 0x4ee8($t9)
/* C97C 8000BD7C 24010002 */  addiu      $at, $zero, 2
/* C980 8000BD80 3C038008 */  lui        $v1, 0x8008
/* C984 8000BD84 1721004B */  bne        $t9, $at, .L8000BEB4
/* C988 8000BD88 00000000 */   nop       
/* C98C 8000BD8C 8C634EF0 */  lw         $v1, 0x4ef0($v1)
/* C990 8000BD90 3C018008 */  lui        $at, 0x8008
/* C994 8000BD94 3C088008 */  lui        $t0, 0x8008
/* C998 8000BD98 14600046 */  bnez       $v1, .L8000BEB4
/* C99C 8000BD9C 00000000 */   nop       
/* C9A0 8000BDA0 AC224EF8 */  sw         $v0, 0x4ef8($at)
/* C9A4 8000BDA4 3C018008 */  lui        $at, 0x8008
/* C9A8 8000BDA8 8D085370 */  lw         $t0, 0x5370($t0)
/* C9AC 8000BDAC AC234EFC */  sw         $v1, 0x4efc($at)
/* C9B0 8000BDB0 3C018008 */  lui        $at, 0x8008
/* C9B4 8000BDB4 1000003F */  b          .L8000BEB4
/* C9B8 8000BDB8 AC284F00 */   sw        $t0, 0x4f00($at)
.L8000BDBC:
/* C9BC 8000BDBC 24010006 */  addiu      $at, $zero, 6
/* C9C0 8000BDC0 1441000C */  bne        $v0, $at, .L8000BDF4
/* C9C4 8000BDC4 3C128008 */   lui       $s2, 0x8008
/* C9C8 8000BDC8 3C098008 */  lui        $t1, 0x8008
/* C9CC 8000BDCC 8D294EF0 */  lw         $t1, 0x4ef0($t1)
/* C9D0 8000BDD0 3C018008 */  lui        $at, 0x8008
/* C9D4 8000BDD4 AC224EF8 */  sw         $v0, 0x4ef8($at)
/* C9D8 8000BDD8 3C018008 */  lui        $at, 0x8008
/* C9DC 8000BDDC 3C0A8008 */  lui        $t2, 0x8008
/* C9E0 8000BDE0 8D4A5370 */  lw         $t2, 0x5370($t2)
/* C9E4 8000BDE4 AC294EFC */  sw         $t1, 0x4efc($at)
/* C9E8 8000BDE8 3C018008 */  lui        $at, 0x8008
/* C9EC 8000BDEC 10000031 */  b          .L8000BEB4
/* C9F0 8000BDF0 AC2A4F00 */   sw        $t2, 0x4f00($at)
.L8000BDF4:
/* C9F4 8000BDF4 26524EE0 */  addiu      $s2, $s2, 0x4ee0
/* C9F8 8000BDF8 964B0000 */  lhu        $t3, ($s2)
/* C9FC 8000BDFC 316C0001 */  andi       $t4, $t3, 1
/* CA00 8000BE00 11800011 */  beqz       $t4, .L8000BE48
/* CA04 8000BE04 00000000 */   nop       
/* CA08 8000BE08 8E6D0000 */  lw         $t5, ($s3)
/* CA0C 8000BE0C 3C018008 */  lui        $at, 0x8008
/* CA10 8000BE10 3C188008 */  lui        $t8, 0x8008
/* CA14 8000BE14 95AE0000 */  lhu        $t6, ($t5)
/* CA18 8000BE18 3C198008 */  lui        $t9, 0x8008
/* CA1C 8000BE1C 31CF0004 */  andi       $t7, $t6, 4
/* CA20 8000BE20 11E00009 */  beqz       $t7, .L8000BE48
/* CA24 8000BE24 00000000 */   nop       
/* CA28 8000BE28 8F184EF0 */  lw         $t8, 0x4ef0($t8)
/* CA2C 8000BE2C AC224EF8 */  sw         $v0, 0x4ef8($at)
/* CA30 8000BE30 3C018008 */  lui        $at, 0x8008
/* CA34 8000BE34 8F395370 */  lw         $t9, 0x5370($t9)
/* CA38 8000BE38 AC384EFC */  sw         $t8, 0x4efc($at)
/* CA3C 8000BE3C 3C018008 */  lui        $at, 0x8008
/* CA40 8000BE40 1000001C */  b          .L8000BEB4
/* CA44 8000BE44 AC394F00 */   sw        $t9, 0x4f00($at)
.L8000BE48:
/* CA48 8000BE48 1082001A */  beq        $a0, $v0, .L8000BEB4
/* CA4C 8000BE4C 00000000 */   nop       
/* CA50 8000BE50 8E680000 */  lw         $t0, ($s3)
/* CA54 8000BE54 3C038008 */  lui        $v1, 0x8008
/* CA58 8000BE58 3C058008 */  lui        $a1, 0x8008
/* CA5C 8000BE5C 95090000 */  lhu        $t1, ($t0)
/* CA60 8000BE60 24A54F08 */  addiu      $a1, $a1, 0x4f08
/* CA64 8000BE64 24634F04 */  addiu      $v1, $v1, 0x4f04
/* CA68 8000BE68 312A0008 */  andi       $t2, $t1, 8
/* CA6C 8000BE6C 11400011 */  beqz       $t2, .L8000BEB4
/* CA70 8000BE70 3C068008 */   lui       $a2, 0x8008
/* CA74 8000BE74 AC620000 */  sw         $v0, ($v1)
/* CA78 8000BE78 3C0B8008 */  lui        $t3, 0x8008
/* CA7C 8000BE7C 8D6B4EF0 */  lw         $t3, 0x4ef0($t3)
/* CA80 8000BE80 3C0C8008 */  lui        $t4, 0x8008
/* CA84 8000BE84 24C64F0C */  addiu      $a2, $a2, 0x4f0c
/* CA88 8000BE88 ACAB0000 */  sw         $t3, ($a1)
/* CA8C 8000BE8C 8D8C5370 */  lw         $t4, 0x5370($t4)
/* CA90 8000BE90 2401001A */  addiu      $at, $zero, 0x1a
/* CA94 8000BE94 14410007 */  bne        $v0, $at, .L8000BEB4
/* CA98 8000BE98 ACCC0000 */   sw        $t4, ($a2)
/* CA9C 8000BE9C 24010004 */  addiu      $at, $zero, 4
/* CAA0 8000BEA0 15610004 */  bne        $t3, $at, .L8000BEB4
/* CAA4 8000BEA4 240F0002 */   addiu     $t7, $zero, 2
/* CAA8 8000BEA8 24180001 */  addiu      $t8, $zero, 1
/* CAAC 8000BEAC ACAF0000 */  sw         $t7, ($a1)
/* CAB0 8000BEB0 ACD80000 */  sw         $t8, ($a2)
.L8000BEB4:
/* CAB4 8000BEB4 3C128008 */  lui        $s2, 0x8008
/* CAB8 8000BEB8 2401FFFF */  addiu      $at, $zero, -1
/* CABC 8000BEBC 14810018 */  bne        $a0, $at, .L8000BF20
/* CAC0 8000BEC0 26524EE0 */   addiu     $s2, $s2, 0x4ee0
/* CAC4 8000BEC4 3C040007 */  lui        $a0, 7
/* CAC8 8000BEC8 3C190008 */  lui        $t9, 8
/* CACC 8000BECC 24847560 */  addiu      $a0, $a0, 0x7560
/* CAD0 8000BED0 27397360 */  addiu      $t9, $t9, 0x7360
/* CAD4 8000BED4 3C058010 */  lui        $a1, 0x8010
/* CAD8 8000BED8 24A50000 */  addiu      $a1, $a1, 0
/* CADC 8000BEDC 0C009098 */  jal        func_80024260
/* CAE0 8000BEE0 03243023 */   subu      $a2, $t9, $a0
/* CAE4 8000BEE4 3C0400D9 */  lui        $a0, 0xd9
/* CAE8 8000BEE8 3C058008 */  lui        $a1, 0x8008
/* CAEC 8000BEEC 24A520D8 */  addiu      $a1, $a1, 0x20d8
/* CAF0 8000BEF0 248484F0 */  addiu      $a0, $a0, -0x7b10
/* CAF4 8000BEF4 0C009098 */  jal        func_80024260
/* CAF8 8000BEF8 24060600 */   addiu     $a2, $zero, 0x600
/* CAFC 8000BEFC 3C0400D9 */  lui        $a0, 0xd9
/* CB00 8000BF00 3C058008 */  lui        $a1, 0x8008
/* CB04 8000BF04 24A526D8 */  addiu      $a1, $a1, 0x26d8
/* CB08 8000BF08 24848AF0 */  addiu      $a0, $a0, -0x7510
/* CB0C 8000BF0C 0C009098 */  jal        func_80024260
/* CB10 8000BF10 24060200 */   addiu     $a2, $zero, 0x200
/* CB14 8000BF14 3C028008 */  lui        $v0, 0x8008
/* CB18 8000BF18 8C424EEC */  lw         $v0, 0x4eec($v0)
/* CB1C 8000BF1C 8E240000 */  lw         $a0, ($s1)
.L8000BF20:
/* CB20 8000BF20 10440038 */  beq        $v0, $a0, .L8000C004
/* CB24 8000BF24 3C018008 */   lui       $at, 0x8008
/* CB28 8000BF28 AC244EF4 */  sw         $a0, 0x4ef4($at)
/* CB2C 8000BF2C 8E700000 */  lw         $s0, ($s3)
/* CB30 8000BF30 AE220000 */  sw         $v0, ($s1)
/* CB34 8000BF34 96080000 */  lhu        $t0, ($s0)
/* CB38 8000BF38 3103FFFF */  andi       $v1, $t0, 0xffff
/* CB3C 8000BF3C 30690007 */  andi       $t1, $v1, 7
/* CB40 8000BF40 1120001A */  beqz       $t1, .L8000BFAC
/* CB44 8000BF44 A6480000 */   sh        $t0, ($s2)
/* CB48 8000BF48 306A0002 */  andi       $t2, $v1, 2
/* CB4C 8000BF4C 11400009 */  beqz       $t2, .L8000BF74
/* CB50 8000BF50 3C040008 */   lui       $a0, 8
/* CB54 8000BF54 3C0B000D */  lui        $t3, 0xd
/* CB58 8000BF58 24847360 */  addiu      $a0, $a0, 0x7360
/* CB5C 8000BF5C 256BAF50 */  addiu      $t3, $t3, -0x50b0
/* CB60 8000BF60 3C058011 */  lui        $a1, 0x8011
/* CB64 8000BF64 24A5FE00 */  addiu      $a1, $a1, -0x200
/* CB68 8000BF68 0C009098 */  jal        func_80024260
/* CB6C 8000BF6C 01643023 */   subu      $a2, $t3, $a0
/* CB70 8000BF70 8E700000 */  lw         $s0, ($s3)
.L8000BF74:
/* CB74 8000BF74 8E0C003C */  lw         $t4, 0x3c($s0)
/* CB78 8000BF78 3C0F8005 */  lui        $t7, 0x8005
/* CB7C 8000BF7C 25EF58A0 */  addiu      $t7, $t7, 0x58a0
/* CB80 8000BF80 000C6880 */  sll        $t5, $t4, 2
/* CB84 8000BF84 01AC6823 */  subu       $t5, $t5, $t4
/* CB88 8000BF88 000D7080 */  sll        $t6, $t5, 2
/* CB8C 8000BF8C 01CF1021 */  addu       $v0, $t6, $t7
/* CB90 8000BF90 8C440000 */  lw         $a0, ($v0)
/* CB94 8000BF94 8C430004 */  lw         $v1, 4($v0)
/* CB98 8000BF98 24420008 */  addiu      $v0, $v0, 8
/* CB9C 8000BF9C 8C450000 */  lw         $a1, ($v0)
/* CBA0 8000BFA0 0C009098 */  jal        func_80024260
/* CBA4 8000BFA4 00643023 */   subu      $a2, $v1, $a0
/* CBA8 8000BFA8 8E700000 */  lw         $s0, ($s3)
.L8000BFAC:
/* CBAC 8000BFAC 8E040004 */  lw         $a0, 4($s0)
/* CBB0 8000BFB0 8E180008 */  lw         $t8, 8($s0)
/* CBB4 8000BFB4 8E05000C */  lw         $a1, 0xc($s0)
/* CBB8 8000BFB8 0C009098 */  jal        func_80024260
/* CBBC 8000BFBC 03043023 */   subu      $a2, $t8, $a0
/* CBC0 8000BFC0 8E220000 */  lw         $v0, ($s1)
/* CBC4 8000BFC4 24010003 */  addiu      $at, $zero, 3
/* CBC8 8000BFC8 3C04003E */  lui        $a0, 0x3e
/* CBCC 8000BFCC 10410007 */  beq        $v0, $at, .L8000BFEC
/* CBD0 8000BFD0 24843200 */   addiu     $a0, $a0, 0x3200
/* CBD4 8000BFD4 24010005 */  addiu      $at, $zero, 5
/* CBD8 8000BFD8 10410004 */  beq        $v0, $at, .L8000BFEC
/* CBDC 8000BFDC 24010007 */   addiu     $at, $zero, 7
/* CBE0 8000BFE0 10410002 */  beq        $v0, $at, .L8000BFEC
/* CBE4 8000BFE4 2401000C */   addiu     $at, $zero, 0xc
/* CBE8 8000BFE8 14410006 */  bne        $v0, $at, .L8000C004
.L8000BFEC:
/* CBEC 8000BFEC 3C19003F */   lui       $t9, 0x3f
/* CBF0 8000BFF0 27393D10 */  addiu      $t9, $t9, 0x3d10
/* CBF4 8000BFF4 3C05801E */  lui        $a1, 0x801e
/* CBF8 8000BFF8 24A50000 */  addiu      $a1, $a1, 0
/* CBFC 8000BFFC 0C009098 */  jal        func_80024260
/* CC00 8000C000 03243023 */   subu      $a2, $t9, $a0
.L8000C004:
/* CC04 8000C004 3C028008 */  lui        $v0, 0x8008
/* CC08 8000C008 3C038008 */  lui        $v1, 0x8008
/* CC0C 8000C00C 24110065 */  addiu      $s1, $zero, 0x65
/* CC10 8000C010 244227A0 */  addiu      $v0, $v0, 0x27a0
/* CC14 8000C014 246327A2 */  addiu      $v1, $v1, 0x27a2
.L8000C018:
/* CC18 8000C018 94480000 */  lhu        $t0, ($v0)
/* CC1C 8000C01C 2631FFFF */  addiu      $s1, $s1, -1
/* CC20 8000C020 24630002 */  addiu      $v1, $v1, 2
/* CC24 8000C024 2442FFFE */  addiu      $v0, $v0, -2
/* CC28 8000C028 1620FFFB */  bnez       $s1, .L8000C018
/* CC2C 8000C02C A468FFFE */   sh        $t0, -2($v1)
/* CC30 8000C030 3C098008 */  lui        $t1, 0x8008
/* CC34 8000C034 8D294EF0 */  lw         $t1, 0x4ef0($t1)
/* CC38 8000C038 3C018008 */  lui        $at, 0x8008
/* CC3C 8000C03C 3C128008 */  lui        $s2, 0x8008
/* CC40 8000C040 AC294EE8 */  sw         $t1, 0x4ee8($at)
/* CC44 8000C044 8E700000 */  lw         $s0, ($s3)
/* CC48 8000C048 00095880 */  sll        $t3, $t1, 2
/* CC4C 8000C04C 01695823 */  subu       $t3, $t3, $t1
/* CC50 8000C050 8E0A0018 */  lw         $t2, 0x18($s0)
/* CC54 8000C054 000B58C0 */  sll        $t3, $t3, 3
/* CC58 8000C058 26524F1C */  addiu      $s2, $s2, 0x4f1c
/* CC5C 8000C05C 014B6021 */  addu       $t4, $t2, $t3
/* CC60 8000C060 AE4C0000 */  sw         $t4, ($s2)
/* CC64 8000C064 8E0D0010 */  lw         $t5, 0x10($s0)
/* CC68 8000C068 3C018008 */  lui        $at, 0x8008
/* CC6C 8000C06C 3C058008 */  lui        $a1, 0x8008
/* CC70 8000C070 AC2D4F28 */  sw         $t5, 0x4f28($at)
/* CC74 8000C074 8E420000 */  lw         $v0, ($s2)
/* CC78 8000C078 8E0E0014 */  lw         $t6, 0x14($s0)
/* CC7C 8000C07C 24A54F20 */  addiu      $a1, $a1, 0x4f20
/* CC80 8000C080 944F0000 */  lhu        $t7, ($v0)
/* CC84 8000C084 3C068008 */  lui        $a2, 0x8008
/* CC88 8000C088 24C659E4 */  addiu      $a2, $a2, 0x59e4
/* CC8C 8000C08C 000FC080 */  sll        $t8, $t7, 2
/* CC90 8000C090 030FC023 */  subu       $t8, $t8, $t7
/* CC94 8000C094 0018C080 */  sll        $t8, $t8, 2
/* CC98 8000C098 030FC023 */  subu       $t8, $t8, $t7
/* CC9C 8000C09C 0018C080 */  sll        $t8, $t8, 2
/* CCA0 8000C0A0 01D82021 */  addu       $a0, $t6, $t8
/* CCA4 8000C0A4 ACA40000 */  sw         $a0, ($a1)
/* CCA8 8000C0A8 94490002 */  lhu        $t1, 2($v0)
/* CCAC 8000C0AC 8E08001C */  lw         $t0, 0x1c($s0)
/* CCB0 8000C0B0 3C018008 */  lui        $at, 0x8008
/* CCB4 8000C0B4 00095140 */  sll        $t2, $t1, 5
/* CCB8 8000C0B8 010A5821 */  addu       $t3, $t0, $t2
/* CCBC 8000C0BC ACCB0000 */  sw         $t3, ($a2)
/* CCC0 8000C0C0 8C8C0018 */  lw         $t4, 0x18($a0)
/* CCC4 8000C0C4 3C118008 */  lui        $s1, 0x8008
/* CCC8 8000C0C8 26314F14 */  addiu      $s1, $s1, 0x4f14
/* CCCC 8000C0CC AC2C4F24 */  sw         $t4, 0x4f24($at)
/* CCD0 8000C0D0 8E0D002C */  lw         $t5, 0x2c($s0)
/* CCD4 8000C0D4 3C018008 */  lui        $at, 0x8008
/* CCD8 8000C0D8 3C058008 */  lui        $a1, 0x8008
/* CCDC 8000C0DC AC2D4F2C */  sw         $t5, 0x4f2c($at)
/* CCE0 8000C0E0 8E0F0028 */  lw         $t7, 0x28($s0)
/* CCE4 8000C0E4 3C018008 */  lui        $at, 0x8008
/* CCE8 8000C0E8 3C108006 */  lui        $s0, 0x8006
/* CCEC 8000C0EC AC2F4F30 */  sw         $t7, 0x4f30($at)
/* CCF0 8000C0F0 944E0014 */  lhu        $t6, 0x14($v0)
/* CCF4 8000C0F4 3C018008 */  lui        $at, 0x8008
/* CCF8 8000C0F8 2610EFA8 */  addiu      $s0, $s0, -0x1058
/* CCFC 8000C0FC A42E4F10 */  sh         $t6, 0x4f10($at)
/* CD00 8000C100 8CC30000 */  lw         $v1, ($a2)
/* CD04 8000C104 3C018008 */  lui        $at, 0x8008
/* CD08 8000C108 24060800 */  addiu      $a2, $zero, 0x800
/* CD0C 8000C10C 94780018 */  lhu        $t8, 0x18($v1)
/* CD10 8000C110 24A514D8 */  addiu      $a1, $a1, 0x14d8
/* CD14 8000C114 A4384F12 */  sh         $t8, 0x4f12($at)
/* CD18 8000C118 8C67001C */  lw         $a3, 0x1c($v1)
/* CD1C 8000C11C 96390000 */  lhu        $t9, ($s1)
/* CD20 8000C120 30E9FFFF */  andi       $t1, $a3, 0xffff
/* CD24 8000C124 10F90010 */  beq        $a3, $t9, .L8000C168
/* CD28 8000C128 000940C0 */   sll       $t0, $t1, 3
/* CD2C 8000C12C 02085021 */  addu       $t2, $s0, $t0
/* CD30 8000C130 A6270000 */  sh         $a3, ($s1)
/* CD34 8000C134 0C009098 */  jal        func_80024260
/* CD38 8000C138 8D440000 */   lw        $a0, ($t2)
/* CD3C 8000C13C 962B0000 */  lhu        $t3, ($s1)
/* CD40 8000C140 3C058008 */  lui        $a1, 0x8008
/* CD44 8000C144 24A5D2D8 */  addiu      $a1, $a1, -0x2d28
/* CD48 8000C148 000B60C0 */  sll        $t4, $t3, 3
/* CD4C 8000C14C 020C6821 */  addu       $t5, $s0, $t4
/* CD50 8000C150 8DA40000 */  lw         $a0, ($t5)
/* CD54 8000C154 24064000 */  addiu      $a2, $zero, 0x4000
/* CD58 8000C158 0C009098 */  jal        func_80024260
/* CD5C 8000C15C 24840800 */   addiu     $a0, $a0, 0x800
/* CD60 8000C160 3C048008 */  lui        $a0, 0x8008
/* CD64 8000C164 8C844F20 */  lw         $a0, 0x4f20($a0)
.L8000C168:
/* CD68 8000C168 3C038008 */  lui        $v1, 0x8008
/* CD6C 8000C16C 8C635370 */  lw         $v1, 0x5370($v1)
/* CD70 8000C170 2401FFFF */  addiu      $at, $zero, -1
/* CD74 8000C174 3C108008 */  lui        $s0, 0x8008
/* CD78 8000C178 10610013 */  beq        $v1, $at, .L8000C1C8
/* CD7C 8000C17C 0000A025 */   or        $s4, $zero, $zero
/* CD80 8000C180 8E4F0000 */  lw         $t7, ($s2)
/* CD84 8000C184 0003C080 */  sll        $t8, $v1, 2
/* CD88 8000C188 0303C021 */  addu       $t8, $t8, $v1
/* CD8C 8000C18C 8DEE000C */  lw         $t6, 0xc($t7)
/* CD90 8000C190 0018C080 */  sll        $t8, $t8, 2
/* CD94 8000C194 3C018008 */  lui        $at, 0x8008
/* CD98 8000C198 01D81021 */  addu       $v0, $t6, $t8
/* CD9C 8000C19C C4440000 */  lwc1       $f4, ($v0)
/* CDA0 8000C1A0 E424BA40 */  swc1       $f4, -0x45c0($at)
/* CDA4 8000C1A4 C4460004 */  lwc1       $f6, 4($v0)
/* CDA8 8000C1A8 3C018008 */  lui        $at, 0x8008
/* CDAC 8000C1AC E426BA44 */  swc1       $f6, -0x45bc($at)
/* CDB0 8000C1B0 C4480008 */  lwc1       $f8, 8($v0)
/* CDB4 8000C1B4 3C018008 */  lui        $at, 0x8008
/* CDB8 8000C1B8 E428BA48 */  swc1       $f8, -0x45b8($at)
/* CDBC 8000C1BC 9459000E */  lhu        $t9, 0xe($v0)
/* CDC0 8000C1C0 3C018008 */  lui        $at, 0x8008
/* CDC4 8000C1C4 AC39BA50 */  sw         $t9, -0x45b0($at)
.L8000C1C8:
/* CDC8 8000C1C8 94910000 */  lhu        $s1, ($a0)
/* CDCC 8000C1CC 3C018008 */  lui        $at, 0x8008
/* CDD0 8000C1D0 3C128008 */  lui        $s2, 0x8008
/* CDD4 8000C1D4 8E104F24 */  lw         $s0, 0x4f24($s0)
/* CDD8 8000C1D8 AC204F38 */  sw         $zero, 0x4f38($at)
/* CDDC 8000C1DC 12200038 */  beqz       $s1, .L8000C2C0
/* CDE0 8000C1E0 26524260 */   addiu     $s2, $s2, 0x4260
/* CDE4 8000C1E4 3C138008 */  lui        $s3, 0x8008
/* CDE8 8000C1E8 26732C28 */  addiu      $s3, $s3, 0x2c28
.L8000C1EC:
/* CDEC 8000C1EC 96020016 */  lhu        $v0, 0x16($s0)
/* CDF0 8000C1F0 24070A00 */  addiu      $a3, $zero, 0xa00
/* CDF4 8000C1F4 30498000 */  andi       $t1, $v0, 0x8000
/* CDF8 8000C1F8 5120000A */  beql       $t1, $zero, .L8000C224
/* CDFC 8000C1FC 304300FF */   andi      $v1, $v0, 0xff
/* CE00 8000C200 C60C0000 */  lwc1       $f12, ($s0)
/* CE04 8000C204 C60E0004 */  lwc1       $f14, 4($s0)
/* CE08 8000C208 8E060008 */  lw         $a2, 8($s0)
/* CE0C 8000C20C 0C003B98 */  jal        func_8000EE60
/* CE10 8000C210 AFB30010 */   sw        $s3, 0x10($sp)
/* CE14 8000C214 C66A0004 */  lwc1       $f10, 4($s3)
/* CE18 8000C218 96020016 */  lhu        $v0, 0x16($s0)
/* CE1C 8000C21C E60A0004 */  swc1       $f10, 4($s0)
/* CE20 8000C220 304300FF */  andi       $v1, $v0, 0xff
.L8000C224:
/* CE24 8000C224 24010010 */  addiu      $at, $zero, 0x10
/* CE28 8000C228 5461000E */  bnel       $v1, $at, .L8000C264
/* CE2C 8000C22C 24010083 */   addiu     $at, $zero, 0x83
/* CE30 8000C230 C670000C */  lwc1       $f16, 0xc($s3)
/* CE34 8000C234 44943000 */  mtc1       $s4, $f6
/* CE38 8000C238 26940001 */  addiu      $s4, $s4, 1
/* CE3C 8000C23C E6500000 */  swc1       $f16, ($s2)
/* CE40 8000C240 C6720010 */  lwc1       $f18, 0x10($s3)
/* CE44 8000C244 46803220 */  cvt.s.w    $f8, $f6
/* CE48 8000C248 2652000C */  addiu      $s2, $s2, 0xc
/* CE4C 8000C24C E652FFF8 */  swc1       $f18, -8($s2)
/* CE50 8000C250 C6640014 */  lwc1       $f4, 0x14($s3)
/* CE54 8000C254 E644FFFC */  swc1       $f4, -4($s2)
/* CE58 8000C258 10000016 */  b          .L8000C2B4
/* CE5C 8000C25C E608000C */   swc1      $f8, 0xc($s0)
/* CE60 8000C260 24010083 */  addiu      $at, $zero, 0x83
.L8000C264:
/* CE64 8000C264 54610004 */  bnel       $v1, $at, .L8000C278
/* CE68 8000C268 24010084 */   addiu     $at, $zero, 0x84
/* CE6C 8000C26C 10000011 */  b          .L8000C2B4
/* CE70 8000C270 A6000014 */   sh        $zero, 0x14($s0)
/* CE74 8000C274 24010084 */  addiu      $at, $zero, 0x84
.L8000C278:
/* CE78 8000C278 54610007 */  bnel       $v1, $at, .L8000C298
/* CE7C 8000C27C 28410011 */   slti      $at, $v0, 0x11
/* CE80 8000C280 0C008BF4 */  jal        func_80022FD0
/* CE84 8000C284 24040096 */   addiu     $a0, $zero, 0x96
/* CE88 8000C288 24480096 */  addiu      $t0, $v0, 0x96
/* CE8C 8000C28C 10000009 */  b          .L8000C2B4
/* CE90 8000C290 A6080014 */   sh        $t0, 0x14($s0)
/* CE94 8000C294 28410011 */  slti       $at, $v0, 0x11
.L8000C298:
/* CE98 8000C298 14200006 */  bnez       $at, .L8000C2B4
/* CE9C 8000C29C 28410015 */   slti      $at, $v0, 0x15
/* CEA0 8000C2A0 50200005 */  beql       $at, $zero, .L8000C2B8
/* CEA4 8000C2A4 2631FFFF */   addiu     $s1, $s1, -1
/* CEA8 8000C2A8 0C008BF4 */  jal        func_80022FD0
/* CEAC 8000C2AC 24040010 */   addiu     $a0, $zero, 0x10
/* CEB0 8000C2B0 A6020014 */  sh         $v0, 0x14($s0)
.L8000C2B4:
/* CEB4 8000C2B4 2631FFFF */  addiu      $s1, $s1, -1
.L8000C2B8:
/* CEB8 8000C2B8 1620FFCC */  bnez       $s1, .L8000C1EC
/* CEBC 8000C2BC 26100018 */   addiu     $s0, $s0, 0x18
.L8000C2C0:
/* CEC0 8000C2C0 3C028008 */  lui        $v0, 0x8008
/* CEC4 8000C2C4 3C038008 */  lui        $v1, 0x8008
/* CEC8 8000C2C8 24632C80 */  addiu      $v1, $v1, 0x2c80
/* CECC 8000C2CC 24422C70 */  addiu      $v0, $v0, 0x2c70
.L8000C2D0:
/* CED0 8000C2D0 24420004 */  addiu      $v0, $v0, 4
/* CED4 8000C2D4 0043082B */  sltu       $at, $v0, $v1
/* CED8 8000C2D8 A440FFFC */  sh         $zero, -4($v0)
/* CEDC 8000C2DC 1420FFFC */  bnez       $at, .L8000C2D0
/* CEE0 8000C2E0 A440FFFE */   sh        $zero, -2($v0)
/* CEE4 8000C2E4 3C048008 */  lui        $a0, 0x8008
/* CEE8 8000C2E8 3C058008 */  lui        $a1, 0x8008
/* CEEC 8000C2EC 3C068008 */  lui        $a2, 0x8008
/* CEF0 8000C2F0 3C038008 */  lui        $v1, 0x8008
/* CEF4 8000C2F4 3C078008 */  lui        $a3, 0x8008
/* CEF8 8000C2F8 3C028005 */  lui        $v0, 0x8005
/* CEFC 8000C2FC 2442C2F8 */  addiu      $v0, $v0, -0x3d08
/* CF00 8000C300 24E72C58 */  addiu      $a3, $a3, 0x2c58
/* CF04 8000C304 24632958 */  addiu      $v1, $v1, 0x2958
/* CF08 8000C308 24C62940 */  addiu      $a2, $a2, 0x2940
/* CF0C 8000C30C 24A52928 */  addiu      $a1, $a1, 0x2928
/* CF10 8000C310 24842910 */  addiu      $a0, $a0, 0x2910
.L8000C314:
/* CF14 8000C314 8C410000 */  lw         $at, ($v0)
/* CF18 8000C318 8C4B0004 */  lw         $t3, 4($v0)
/* CF1C 8000C31C 8C4D0004 */  lw         $t5, 4($v0)
/* CF20 8000C320 AC810000 */  sw         $at, ($a0)
/* CF24 8000C324 8C410008 */  lw         $at, 8($v0)
/* CF28 8000C328 AC8B0004 */  sw         $t3, 4($a0)
/* CF2C 8000C32C 8C4B000C */  lw         $t3, 0xc($v0)
/* CF30 8000C330 AC810008 */  sw         $at, 8($a0)
/* CF34 8000C334 8C410010 */  lw         $at, 0x10($v0)
/* CF38 8000C338 AC8B000C */  sw         $t3, 0xc($a0)
/* CF3C 8000C33C 8C4B0014 */  lw         $t3, 0x14($v0)
/* CF40 8000C340 AC810010 */  sw         $at, 0x10($a0)
/* CF44 8000C344 8C410000 */  lw         $at, ($v0)
/* CF48 8000C348 AC8B0014 */  sw         $t3, 0x14($a0)
/* CF4C 8000C34C ACAD0004 */  sw         $t5, 4($a1)
/* CF50 8000C350 ACA10000 */  sw         $at, ($a1)
/* CF54 8000C354 8C410008 */  lw         $at, 8($v0)
/* CF58 8000C358 8C4D000C */  lw         $t5, 0xc($v0)
/* CF5C 8000C35C 8C4E0004 */  lw         $t6, 4($v0)
/* CF60 8000C360 ACA10008 */  sw         $at, 8($a1)
/* CF64 8000C364 8C410010 */  lw         $at, 0x10($v0)
/* CF68 8000C368 ACAD000C */  sw         $t5, 0xc($a1)
/* CF6C 8000C36C 8C4D0014 */  lw         $t5, 0x14($v0)
/* CF70 8000C370 ACA10010 */  sw         $at, 0x10($a1)
/* CF74 8000C374 8C410000 */  lw         $at, ($v0)
/* CF78 8000C378 ACAD0014 */  sw         $t5, 0x14($a1)
/* CF7C 8000C37C ACCE0004 */  sw         $t6, 4($a2)
/* CF80 8000C380 ACC10000 */  sw         $at, ($a2)
/* CF84 8000C384 8C410008 */  lw         $at, 8($v0)
/* CF88 8000C388 8C4E000C */  lw         $t6, 0xc($v0)
/* CF8C 8000C38C 8C590004 */  lw         $t9, 4($v0)
/* CF90 8000C390 ACC10008 */  sw         $at, 8($a2)
/* CF94 8000C394 8C410010 */  lw         $at, 0x10($v0)
/* CF98 8000C398 ACCE000C */  sw         $t6, 0xc($a2)
/* CF9C 8000C39C 8C4E0014 */  lw         $t6, 0x14($v0)
/* CFA0 8000C3A0 ACC10010 */  sw         $at, 0x10($a2)
/* CFA4 8000C3A4 8C410000 */  lw         $at, ($v0)
/* CFA8 8000C3A8 ACCE0014 */  sw         $t6, 0x14($a2)
/* CFAC 8000C3AC AC790004 */  sw         $t9, 4($v1)
/* CFB0 8000C3B0 AC610000 */  sw         $at, ($v1)
/* CFB4 8000C3B4 8C410008 */  lw         $at, 8($v0)
/* CFB8 8000C3B8 8C59000C */  lw         $t9, 0xc($v0)
/* CFBC 8000C3BC 24630060 */  addiu      $v1, $v1, 0x60
/* CFC0 8000C3C0 AC61FFA8 */  sw         $at, -0x58($v1)
/* CFC4 8000C3C4 AC79FFAC */  sw         $t9, -0x54($v1)
/* CFC8 8000C3C8 8C590014 */  lw         $t9, 0x14($v0)
/* CFCC 8000C3CC 8C410010 */  lw         $at, 0x10($v0)
/* CFD0 8000C3D0 24840060 */  addiu      $a0, $a0, 0x60
/* CFD4 8000C3D4 24A50060 */  addiu      $a1, $a1, 0x60
/* CFD8 8000C3D8 24C60060 */  addiu      $a2, $a2, 0x60
/* CFDC 8000C3DC AC79FFB4 */  sw         $t9, -0x4c($v1)
/* CFE0 8000C3E0 1467FFCC */  bne        $v1, $a3, .L8000C314
/* CFE4 8000C3E4 AC61FFB0 */   sw        $at, -0x50($v1)
/* CFE8 8000C3E8 24090001 */  addiu      $t1, $zero, 1
/* CFEC 8000C3EC 3C018008 */  lui        $at, 0x8008
/* CFF0 8000C3F0 0C0036C4 */  jal        func_8000DB10
/* CFF4 8000C3F4 AC292908 */   sw        $t1, 0x2908($at)
/* CFF8 8000C3F8 0C0038F1 */  jal        func_8000E3C4
/* CFFC 8000C3FC 00000000 */   nop       
/* D000 8000C400 2408FFFF */  addiu      $t0, $zero, -1
/* D004 8000C404 3C018008 */  lui        $at, 0x8008
/* D008 8000C408 AC284EDC */  sw         $t0, 0x4edc($at)
/* D00C 8000C40C 8FBF0034 */  lw         $ra, 0x34($sp)
/* D010 8000C410 8FB00020 */  lw         $s0, 0x20($sp)
/* D014 8000C414 8FB10024 */  lw         $s1, 0x24($sp)
/* D018 8000C418 8FB20028 */  lw         $s2, 0x28($sp)
/* D01C 8000C41C 8FB3002C */  lw         $s3, 0x2c($sp)
/* D020 8000C420 8FB40030 */  lw         $s4, 0x30($sp)
/* D024 8000C424 03E00008 */  jr         $ra
/* D028 8000C428 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8000C42C
/* D02C 8000C42C 3C0E8008 */  lui        $t6, 0x8008
/* D030 8000C430 8DCE4EE4 */  lw         $t6, 0x4ee4($t6)
/* D034 8000C434 3C018008 */  lui        $at, 0x8008
/* D038 8000C438 AC20D2D4 */  sw         $zero, -0x2d2c($at)
/* D03C 8000C43C 2401001D */  addiu      $at, $zero, 0x1d
/* D040 8000C440 15C1001E */  bne        $t6, $at, .L8000C4BC
/* D044 8000C444 3C028012 */   lui       $v0, 0x8012
/* D048 8000C448 3C0F8012 */  lui        $t7, 0x8012
/* D04C 8000C44C 95EF4E22 */  lhu        $t7, 0x4e22($t7)
/* D050 8000C450 24424E24 */  addiu      $v0, $v0, 0x4e24
/* D054 8000C454 94440000 */  lhu        $a0, ($v0)
/* D058 8000C458 3C018012 */  lui        $at, 0x8012
/* D05C 8000C45C 3C038012 */  lui        $v1, 0x8012
/* D060 8000C460 24634E22 */  addiu      $v1, $v1, 0x4e22
/* D064 8000C464 A42F4E24 */  sh         $t7, 0x4e24($at)
/* D068 8000C468 9478FFFE */  lhu        $t8, -2($v1)
/* D06C 8000C46C 2463FFFE */  addiu      $v1, $v1, -2
/* D070 8000C470 24020010 */  addiu      $v0, $zero, 0x10
/* D074 8000C474 A4780002 */  sh         $t8, 2($v1)
.L8000C478:
/* D078 8000C478 9479FFFE */  lhu        $t9, -2($v1)
/* D07C 8000C47C 9468FFFC */  lhu        $t0, -4($v1)
/* D080 8000C480 9469FFFA */  lhu        $t1, -6($v1)
/* D084 8000C484 946AFFF8 */  lhu        $t2, -8($v1)
/* D088 8000C488 2442FFFC */  addiu      $v0, $v0, -4
/* D08C 8000C48C 2463FFF8 */  addiu      $v1, $v1, -8
/* D090 8000C490 A4790008 */  sh         $t9, 8($v1)
/* D094 8000C494 A4680006 */  sh         $t0, 6($v1)
/* D098 8000C498 A4690004 */  sh         $t1, 4($v1)
/* D09C 8000C49C 1440FFF6 */  bnez       $v0, .L8000C478
/* D0A0 8000C4A0 A46A0002 */   sh        $t2, 2($v1)
/* D0A4 8000C4A4 3C028008 */  lui        $v0, 0x8008
/* D0A8 8000C4A8 24424ED0 */  addiu      $v0, $v0, 0x4ed0
/* D0AC 8000C4AC A4640000 */  sh         $a0, ($v1)
/* D0B0 8000C4B0 944B0000 */  lhu        $t3, ($v0)
/* D0B4 8000C4B4 256C0001 */  addiu      $t4, $t3, 1
/* D0B8 8000C4B8 A44C0000 */  sh         $t4, ($v0)
.L8000C4BC:
/* D0BC 8000C4BC 03E00008 */  jr         $ra
/* D0C0 8000C4C0 00000000 */   nop       

glabel func_8000C4C4
/* D0C4 8000C4C4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* D0C8 8000C4C8 AFB70074 */  sw         $s7, 0x74($sp)
/* D0CC 8000C4CC 3C178008 */  lui        $s7, 0x8008
/* D0D0 8000C4D0 3C038008 */  lui        $v1, 0x8008
/* D0D4 8000C4D4 2463BAB8 */  addiu      $v1, $v1, -0x4548
/* D0D8 8000C4D8 26F728D8 */  addiu      $s7, $s7, 0x28d8
/* D0DC 8000C4DC AFBF007C */  sw         $ra, 0x7c($sp)
/* D0E0 8000C4E0 AFBE0078 */  sw         $fp, 0x78($sp)
/* D0E4 8000C4E4 AFB60070 */  sw         $s6, 0x70($sp)
/* D0E8 8000C4E8 AFB5006C */  sw         $s5, 0x6c($sp)
/* D0EC 8000C4EC AFB40068 */  sw         $s4, 0x68($sp)
/* D0F0 8000C4F0 AFB30064 */  sw         $s3, 0x64($sp)
/* D0F4 8000C4F4 AFB20060 */  sw         $s2, 0x60($sp)
/* D0F8 8000C4F8 AFB1005C */  sw         $s1, 0x5c($sp)
/* D0FC 8000C4FC AFB00058 */  sw         $s0, 0x58($sp)
/* D100 8000C500 F7BE0050 */  sdc1       $f30, 0x50($sp)
/* D104 8000C504 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* D108 8000C508 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* D10C 8000C50C F7B80038 */  sdc1       $f24, 0x38($sp)
/* D110 8000C510 F7B60030 */  sdc1       $f22, 0x30($sp)
/* D114 8000C514 F7B40028 */  sdc1       $f20, 0x28($sp)
/* D118 8000C518 AFA40080 */  sw         $a0, 0x80($sp)
/* D11C 8000C51C 3C018008 */  lui        $at, 0x8008
/* D120 8000C520 AC2028DC */  sw         $zero, 0x28dc($at)
/* D124 8000C524 AEE00000 */  sw         $zero, ($s7)
/* D128 8000C528 3C018008 */  lui        $at, 0x8008
/* D12C 8000C52C AC2028E0 */  sw         $zero, 0x28e0($at)
/* D130 8000C530 3C018008 */  lui        $at, 0x8008
/* D134 8000C534 AC2028E4 */  sw         $zero, 0x28e4($at)
/* D138 8000C538 3C018008 */  lui        $at, 0x8008
/* D13C 8000C53C AC2028E8 */  sw         $zero, 0x28e8($at)
/* D140 8000C540 3C018008 */  lui        $at, 0x8008
/* D144 8000C544 AC2028EC */  sw         $zero, 0x28ec($at)
/* D148 8000C548 3C018008 */  lui        $at, 0x8008
/* D14C 8000C54C AC204F38 */  sw         $zero, 0x4f38($at)
/* D150 8000C550 3C0E8008 */  lui        $t6, 0x8008
/* D154 8000C554 25CE2C80 */  addiu      $t6, $t6, 0x2c80
/* D158 8000C558 3C018008 */  lui        $at, 0x8008
/* D15C 8000C55C AC2E28F0 */  sw         $t6, 0x28f0($at)
/* D160 8000C560 3C0F8008 */  lui        $t7, 0x8008
/* D164 8000C564 25EF3080 */  addiu      $t7, $t7, 0x3080
/* D168 8000C568 3C018008 */  lui        $at, 0x8008
/* D16C 8000C56C AC2F28F4 */  sw         $t7, 0x28f4($at)
/* D170 8000C570 3C188008 */  lui        $t8, 0x8008
/* D174 8000C574 27184F40 */  addiu      $t8, $t8, 0x4f40
/* D178 8000C578 3C018008 */  lui        $at, 0x8008
/* D17C 8000C57C AC3828F8 */  sw         $t8, 0x28f8($at)
/* D180 8000C580 3C198008 */  lui        $t9, 0x8008
/* D184 8000C584 27393488 */  addiu      $t9, $t9, 0x3488
/* D188 8000C588 3C018008 */  lui        $at, 0x8008
/* D18C 8000C58C AC3928FC */  sw         $t9, 0x28fc($at)
/* D190 8000C590 3C098008 */  lui        $t1, 0x8008
/* D194 8000C594 25293888 */  addiu      $t1, $t1, 0x3888
/* D198 8000C598 3C018008 */  lui        $at, 0x8008
/* D19C 8000C59C AC292900 */  sw         $t1, 0x2900($at)
/* D1A0 8000C5A0 3C0A8008 */  lui        $t2, 0x8008
/* D1A4 8000C5A4 254A3C90 */  addiu      $t2, $t2, 0x3c90
/* D1A8 8000C5A8 3C018008 */  lui        $at, 0x8008
/* D1AC 8000C5AC AC2A2904 */  sw         $t2, 0x2904($at)
/* D1B0 8000C5B0 3C0B8008 */  lui        $t3, 0x8008
/* D1B4 8000C5B4 256B2910 */  addiu      $t3, $t3, 0x2910
/* D1B8 8000C5B8 3C018008 */  lui        $at, 0x8008
/* D1BC 8000C5BC AC2B2C10 */  sw         $t3, 0x2c10($at)
/* D1C0 8000C5C0 3C014416 */  lui        $at, 0x4416
/* D1C4 8000C5C4 44812000 */  mtc1       $at, $f4
/* D1C8 8000C5C8 3C018008 */  lui        $at, 0x8008
/* D1CC 8000C5CC 3C128008 */  lui        $s2, 0x8008
/* D1D0 8000C5D0 8E524F20 */  lw         $s2, 0x4f20($s2)
/* D1D4 8000C5D4 E4244ED4 */  swc1       $f4, 0x4ed4($at)
/* D1D8 8000C5D8 3C018008 */  lui        $at, 0x8008
/* D1DC 8000C5DC 240CFFFF */  addiu      $t4, $zero, -1
/* D1E0 8000C5E0 AC2C4ED8 */  sw         $t4, 0x4ed8($at)
/* D1E4 8000C5E4 96420028 */  lhu        $v0, 0x28($s2)
/* D1E8 8000C5E8 24010001 */  addiu      $at, $zero, 1
/* D1EC 8000C5EC C4600014 */  lwc1       $f0, 0x14($v1)
/* D1F0 8000C5F0 1041000F */  beq        $v0, $at, .L8000C630
/* D1F4 8000C5F4 C462001C */   lwc1      $f2, 0x1c($v1)
/* D1F8 8000C5F8 24010002 */  addiu      $at, $zero, 2
/* D1FC 8000C5FC 5041001E */  beql       $v0, $at, .L8000C678
/* D200 8000C600 C6520008 */   lwc1      $f18, 8($s2)
/* D204 8000C604 24010003 */  addiu      $at, $zero, 3
/* D208 8000C608 5041002C */  beql       $v0, $at, .L8000C6BC
/* D20C 8000C60C C64A0008 */   lwc1      $f10, 8($s2)
/* D210 8000C610 24010004 */  addiu      $at, $zero, 4
/* D214 8000C614 10410039 */  beq        $v0, $at, .L8000C6FC
/* D218 8000C618 00009825 */   or        $s3, $zero, $zero
/* D21C 8000C61C 3C118005 */  lui        $s1, 0x8005
/* D220 8000C620 263158E8 */  addiu      $s1, $s1, 0x58e8
/* D224 8000C624 0000A025 */  or         $s4, $zero, $zero
/* D228 8000C628 10000044 */  b          .L8000C73C
/* D22C 8000C62C 24160001 */   addiu     $s6, $zero, 1
.L8000C630:
/* D230 8000C630 C6460008 */  lwc1       $f6, 8($s2)
/* D234 8000C634 C64A0010 */  lwc1       $f10, 0x10($s2)
/* D238 8000C638 C644000C */  lwc1       $f4, 0xc($s2)
/* D23C 8000C63C 46060201 */  sub.s      $f8, $f0, $f6
/* D240 8000C640 3C118005 */  lui        $s1, 0x8005
/* D244 8000C644 263158EC */  addiu      $s1, $s1, 0x58ec
/* D248 8000C648 46041181 */  sub.s      $f6, $f2, $f4
/* D24C 8000C64C 2416009D */  addiu      $s6, $zero, 0x9d
/* D250 8000C650 460A4403 */  div.s      $f16, $f8, $f10
/* D254 8000C654 C6480014 */  lwc1       $f8, 0x14($s2)
/* D258 8000C658 46083283 */  div.s      $f10, $f6, $f8
/* D25C 8000C65C 4600848D */  trunc.w.s  $f18, $f16
/* D260 8000C660 44139000 */  mfc1       $s3, $f18
/* D264 8000C664 4600540D */  trunc.w.s  $f16, $f10
/* D268 8000C668 44148000 */  mfc1       $s4, $f16
/* D26C 8000C66C 10000033 */  b          .L8000C73C
/* D270 8000C670 00000000 */   nop       
/* D274 8000C674 C6520008 */  lwc1       $f18, 8($s2)
.L8000C678:
/* D278 8000C678 C6460010 */  lwc1       $f6, 0x10($s2)
/* D27C 8000C67C C650000C */  lwc1       $f16, 0xc($s2)
/* D280 8000C680 46120101 */  sub.s      $f4, $f0, $f18
/* D284 8000C684 3C118005 */  lui        $s1, 0x8005
/* D288 8000C688 26315A28 */  addiu      $s1, $s1, 0x5a28
/* D28C 8000C68C 46101481 */  sub.s      $f18, $f2, $f16
/* D290 8000C690 24160059 */  addiu      $s6, $zero, 0x59
/* D294 8000C694 46062203 */  div.s      $f8, $f4, $f6
/* D298 8000C698 C6440014 */  lwc1       $f4, 0x14($s2)
/* D29C 8000C69C 46049183 */  div.s      $f6, $f18, $f4
/* D2A0 8000C6A0 4600428D */  trunc.w.s  $f10, $f8
/* D2A4 8000C6A4 44135000 */  mfc1       $s3, $f10
/* D2A8 8000C6A8 4600320D */  trunc.w.s  $f8, $f6
/* D2AC 8000C6AC 44144000 */  mfc1       $s4, $f8
/* D2B0 8000C6B0 10000022 */  b          .L8000C73C
/* D2B4 8000C6B4 00000000 */   nop       
/* D2B8 8000C6B8 C64A0008 */  lwc1       $f10, 8($s2)
.L8000C6BC:
/* D2BC 8000C6BC C6520010 */  lwc1       $f18, 0x10($s2)
/* D2C0 8000C6C0 C648000C */  lwc1       $f8, 0xc($s2)
/* D2C4 8000C6C4 460A0401 */  sub.s      $f16, $f0, $f10
/* D2C8 8000C6C8 3C118005 */  lui        $s1, 0x8005
/* D2CC 8000C6CC 26315ADC */  addiu      $s1, $s1, 0x5adc
/* D2D0 8000C6D0 46081281 */  sub.s      $f10, $f2, $f8
/* D2D4 8000C6D4 24160009 */  addiu      $s6, $zero, 9
/* D2D8 8000C6D8 46128103 */  div.s      $f4, $f16, $f18
/* D2DC 8000C6DC C6500014 */  lwc1       $f16, 0x14($s2)
/* D2E0 8000C6E0 46105483 */  div.s      $f18, $f10, $f16
/* D2E4 8000C6E4 4600218D */  trunc.w.s  $f6, $f4
/* D2E8 8000C6E8 44133000 */  mfc1       $s3, $f6
/* D2EC 8000C6EC 4600910D */  trunc.w.s  $f4, $f18
/* D2F0 8000C6F0 44142000 */  mfc1       $s4, $f4
/* D2F4 8000C6F4 10000011 */  b          .L8000C73C
/* D2F8 8000C6F8 00000000 */   nop       
.L8000C6FC:
/* D2FC 8000C6FC C6460008 */  lwc1       $f6, 8($s2)
/* D300 8000C700 C64A0010 */  lwc1       $f10, 0x10($s2)
/* D304 8000C704 C644000C */  lwc1       $f4, 0xc($s2)
/* D308 8000C708 46060201 */  sub.s      $f8, $f0, $f6
/* D30C 8000C70C 3C118005 */  lui        $s1, 0x8005
/* D310 8000C710 26315AF0 */  addiu      $s1, $s1, 0x5af0
/* D314 8000C714 46041181 */  sub.s      $f6, $f2, $f4
/* D318 8000C718 24160015 */  addiu      $s6, $zero, 0x15
/* D31C 8000C71C 460A4403 */  div.s      $f16, $f8, $f10
/* D320 8000C720 C6480014 */  lwc1       $f8, 0x14($s2)
/* D324 8000C724 46083283 */  div.s      $f10, $f6, $f8
/* D328 8000C728 4600848D */  trunc.w.s  $f18, $f16
/* D32C 8000C72C 44139000 */  mfc1       $s3, $f18
/* D330 8000C730 4600540D */  trunc.w.s  $f16, $f10
/* D334 8000C734 44148000 */  mfc1       $s4, $f16
/* D338 8000C738 00000000 */  nop        
.L8000C73C:
/* D33C 8000C73C 52C00025 */  beql       $s6, $zero, .L8000C7D4
/* D340 8000C740 96420002 */   lhu       $v0, 2($s2)
/* D344 8000C744 822C0000 */  lb         $t4, ($s1)
.L8000C748:
/* D348 8000C748 822D0001 */  lb         $t5, 1($s1)
/* D34C 8000C74C 26310002 */  addiu      $s1, $s1, 2
/* D350 8000C750 01931021 */  addu       $v0, $t4, $s3
/* D354 8000C754 0440001B */  bltz       $v0, .L8000C7C4
/* D358 8000C758 01B41821 */   addu      $v1, $t5, $s4
/* D35C 8000C75C 0462001A */  bltzl      $v1, .L8000C7C8
/* D360 8000C760 26D6FFFF */   addiu     $s6, $s6, -1
/* D364 8000C764 86470004 */  lh         $a3, 4($s2)
/* D368 8000C768 0047082A */  slt        $at, $v0, $a3
/* D36C 8000C76C 50200016 */  beql       $at, $zero, .L8000C7C8
/* D370 8000C770 26D6FFFF */   addiu     $s6, $s6, -1
/* D374 8000C774 864E0006 */  lh         $t6, 6($s2)
/* D378 8000C778 006E082A */  slt        $at, $v1, $t6
/* D37C 8000C77C 50200012 */  beql       $at, $zero, .L8000C7C8
/* D380 8000C780 26D6FFFF */   addiu     $s6, $s6, -1
/* D384 8000C784 00E30019 */  multu      $a3, $v1
/* D388 8000C788 8E58001C */  lw         $t8, 0x1c($s2)
/* D38C 8000C78C 8E4C0020 */  lw         $t4, 0x20($s2)
/* D390 8000C790 00007812 */  mflo       $t7
/* D394 8000C794 01E23021 */  addu       $a2, $t7, $v0
/* D398 8000C798 0006C840 */  sll        $t9, $a2, 1
/* D39C 8000C79C 03194821 */  addu       $t1, $t8, $t9
/* D3A0 8000C7A0 952A0000 */  lhu        $t2, ($t1)
/* D3A4 8000C7A4 000A5840 */  sll        $t3, $t2, 1
/* D3A8 8000C7A8 016C2821 */  addu       $a1, $t3, $t4
/* D3AC 8000C7AC 94B00000 */  lhu        $s0, ($a1)
/* D3B0 8000C7B0 24A50002 */  addiu      $a1, $a1, 2
/* D3B4 8000C7B4 0C003546 */  jal        func_8000D518
/* D3B8 8000C7B8 02002025 */   or        $a0, $s0, $zero
/* D3BC 8000C7BC 3C128008 */  lui        $s2, 0x8008
/* D3C0 8000C7C0 8E524F20 */  lw         $s2, 0x4f20($s2)
.L8000C7C4:
/* D3C4 8000C7C4 26D6FFFF */  addiu      $s6, $s6, -1
.L8000C7C8:
/* D3C8 8000C7C8 56C0FFDF */  bnel       $s6, $zero, .L8000C748
/* D3CC 8000C7CC 822C0000 */   lb        $t4, ($s1)
/* D3D0 8000C7D0 96420002 */  lhu        $v0, 2($s2)
.L8000C7D4:
/* D3D4 8000C7D4 10400005 */  beqz       $v0, .L8000C7EC
/* D3D8 8000C7D8 00000000 */   nop       
/* D3DC 8000C7DC 3050FFFF */  andi       $s0, $v0, 0xffff
/* D3E0 8000C7E0 8E450024 */  lw         $a1, 0x24($s2)
/* D3E4 8000C7E4 0C003546 */  jal        func_8000D518
/* D3E8 8000C7E8 02002025 */   or        $a0, $s0, $zero
.L8000C7EC:
/* D3EC 8000C7EC 3C158008 */  lui        $s5, 0x8008
/* D3F0 8000C7F0 3C1E8008 */  lui        $fp, 0x8008
/* D3F4 8000C7F4 27DE4F34 */  addiu      $fp, $fp, 0x4f34
/* D3F8 8000C7F8 26B5B2FC */  addiu      $s5, $s5, -0x4d04
/* D3FC 8000C7FC 8EA30000 */  lw         $v1, ($s5)
/* D400 8000C800 3C0F0100 */  lui        $t7, 0x100
/* D404 8000C804 25EF00E8 */  addiu      $t7, $t7, 0xe8
/* D408 8000C808 246D0008 */  addiu      $t5, $v1, 8
/* D40C 8000C80C AEAD0000 */  sw         $t5, ($s5)
/* D410 8000C810 3C0E0600 */  lui        $t6, 0x600
/* D414 8000C814 AC6E0000 */  sw         $t6, ($v1)
/* D418 8000C818 AC6F0004 */  sw         $t7, 4($v1)
/* D41C 8000C81C 8EA20000 */  lw         $v0, ($s5)
/* D420 8000C820 3C19BC00 */  lui        $t9, 0xbc00
/* D424 8000C824 37390008 */  ori        $t9, $t9, 8
/* D428 8000C828 24580008 */  addiu      $t8, $v0, 8
/* D42C 8000C82C AEB80000 */  sw         $t8, ($s5)
/* D430 8000C830 AC590000 */  sw         $t9, ($v0)
/* D434 8000C834 3C058008 */  lui        $a1, 0x8008
/* D438 8000C838 3C098008 */  lui        $t1, 0x8008
/* D43C 8000C83C 8529B31A */  lh         $t1, -0x4ce6($t1)
/* D440 8000C840 84A5B318 */  lh         $a1, -0x4ce8($a1)
/* D444 8000C844 3C0A0001 */  lui        $t2, 1
/* D448 8000C848 354AF400 */  ori        $t2, $t2, 0xf400
/* D44C 8000C84C 01253023 */  subu       $a2, $t1, $a1
/* D450 8000C850 0146001A */  div        $zero, $t2, $a2
/* D454 8000C854 00057023 */  negu       $t6, $a1
/* D458 8000C858 000E7A00 */  sll        $t7, $t6, 8
/* D45C 8000C85C 01EAC021 */  addu       $t8, $t7, $t2
/* D460 8000C860 00005812 */  mflo       $t3
/* D464 8000C864 316CFFFF */  andi       $t4, $t3, 0xffff
/* D468 8000C868 000C6C00 */  sll        $t5, $t4, 0x10
/* D46C 8000C86C 0306001A */  div        $zero, $t8, $a2
/* D470 8000C870 0000C812 */  mflo       $t9
/* D474 8000C874 3329FFFF */  andi       $t1, $t9, 0xffff
/* D478 8000C878 00402025 */  or         $a0, $v0, $zero
/* D47C 8000C87C 14C00002 */  bnez       $a2, .L8000C888
/* D480 8000C880 00000000 */   nop       
/* D484 8000C884 0007000D */  break      7
.L8000C888:
/* D488 8000C888 2401FFFF */   addiu     $at, $zero, -1
/* D48C 8000C88C 14C10004 */  bne        $a2, $at, .L8000C8A0
/* D490 8000C890 3C018000 */   lui       $at, 0x8000
/* D494 8000C894 15410002 */  bne        $t2, $at, .L8000C8A0
/* D498 8000C898 00000000 */   nop       
/* D49C 8000C89C 0006000D */  break      6
.L8000C8A0:
/* D4A0 8000C8A0 01400821 */   addu      $at, $t2, $zero
/* D4A4 8000C8A4 01A95025 */  or         $t2, $t5, $t1
/* D4A8 8000C8A8 AC8A0004 */  sw         $t2, 4($a0)
/* D4AC 8000C8AC 14C00002 */  bnez       $a2, .L8000C8B8
/* D4B0 8000C8B0 00000000 */   nop       
/* D4B4 8000C8B4 0007000D */  break      7
.L8000C8B8:
/* D4B8 8000C8B8 2401FFFF */   addiu     $at, $zero, -1
/* D4BC 8000C8BC 14C10004 */  bne        $a2, $at, .L8000C8D0
/* D4C0 8000C8C0 3C018000 */   lui       $at, 0x8000
/* D4C4 8000C8C4 17010002 */  bne        $t8, $at, .L8000C8D0
/* D4C8 8000C8C8 00000000 */   nop       
/* D4CC 8000C8CC 0006000D */  break      6
.L8000C8D0:
/* D4D0 8000C8D0 3C0B8008 */   lui       $t3, 0x8008
/* D4D4 8000C8D4 AFC00000 */  sw         $zero, ($fp)
/* D4D8 8000C8D8 256B2C80 */  addiu      $t3, $t3, 0x2c80
/* D4DC 8000C8DC 3C018008 */  lui        $at, 0x8008
/* D4E0 8000C8E0 AC2B28F0 */  sw         $t3, 0x28f0($at)
/* D4E4 8000C8E4 8EF60000 */  lw         $s6, ($s7)
/* D4E8 8000C8E8 3C178008 */  lui        $s7, 0x8008
/* D4EC 8000C8EC 26F72C48 */  addiu      $s7, $s7, 0x2c48
/* D4F0 8000C8F0 12C00080 */  beqz       $s6, .L8000CAF4
/* D4F4 8000C8F4 3C018007 */   lui       $at, 0x8007
/* D4F8 8000C8F8 3C148008 */  lui        $s4, 0x8008
/* D4FC 8000C8FC 3C128008 */  lui        $s2, 0x8008
/* D500 8000C900 4480E000 */  mtc1       $zero, $f28
/* D504 8000C904 2652B2F8 */  addiu      $s2, $s2, -0x4d08
/* D508 8000C908 26942C18 */  addiu      $s4, $s4, 0x2c18
/* D50C 8000C90C D43E11F0 */  ldc1       $f30, 0x11f0($at)
.L8000C910:
/* D510 8000C910 3C048008 */  lui        $a0, 0x8008
/* D514 8000C914 248428F0 */  addiu      $a0, $a0, 0x28f0
/* D518 8000C918 8C820000 */  lw         $v0, ($a0)
/* D51C 8000C91C 3C0D8005 */  lui        $t5, 0x8005
/* D520 8000C920 25AD66FC */  addiu      $t5, $t5, 0x66fc
/* D524 8000C924 8C510000 */  lw         $s1, ($v0)
/* D528 8000C928 244C0004 */  addiu      $t4, $v0, 4
/* D52C 8000C92C AC8C0000 */  sw         $t4, ($a0)
/* D530 8000C930 96230016 */  lhu        $v1, 0x16($s1)
/* D534 8000C934 C6340000 */  lwc1       $f20, ($s1)
/* D538 8000C938 C6380004 */  lwc1       $f24, 4($s1)
/* D53C 8000C93C 306E2000 */  andi       $t6, $v1, 0x2000
/* D540 8000C940 C6360008 */  lwc1       $f22, 8($s1)
/* D544 8000C944 11C00021 */  beqz       $t6, .L8000C9CC
/* D548 8000C948 C63A000C */   lwc1      $f26, 0xc($s1)
/* D54C 8000C94C 30670F00 */  andi       $a3, $v1, 0xf00
/* D550 8000C950 00608025 */  or         $s0, $v1, $zero
/* D554 8000C954 00077A03 */  sra        $t7, $a3, 8
/* D558 8000C958 320600FF */  andi       $a2, $s0, 0xff
/* D55C 8000C95C 24D00001 */  addiu      $s0, $a2, 1
/* D560 8000C960 000FC940 */  sll        $t9, $t7, 5
/* D564 8000C964 032D9821 */  addu       $s3, $t9, $t5
/* D568 8000C968 3209FFFF */  andi       $t1, $s0, 0xffff
/* D56C 8000C96C 01208025 */  or         $s0, $t1, $zero
/* D570 8000C970 02602025 */  or         $a0, $s3, $zero
/* D574 8000C974 0C008AD0 */  jal        func_80022B40
/* D578 8000C978 02E02825 */   or        $a1, $s7, $zero
/* D57C 8000C97C C6200010 */  lwc1       $f0, 0x10($s1)
/* D580 8000C980 C6F20000 */  lwc1       $f18, ($s7)
/* D584 8000C984 C6E60004 */  lwc1       $f6, 4($s7)
/* D588 8000C988 C6EA0008 */  lwc1       $f10, 8($s7)
/* D58C 8000C98C 46009102 */  mul.s      $f4, $f18, $f0
/* D590 8000C990 966A0006 */  lhu        $t2, 6($s3)
/* D594 8000C994 02001025 */  or         $v0, $s0, $zero
/* D598 8000C998 46003202 */  mul.s      $f8, $f6, $f0
/* D59C 8000C99C 020A082A */  slt        $at, $s0, $t2
/* D5A0 8000C9A0 46005402 */  mul.s      $f16, $f10, $f0
/* D5A4 8000C9A4 4604A500 */  add.s      $f20, $f20, $f4
/* D5A8 8000C9A8 4608C600 */  add.s      $f24, $f24, $f8
/* D5AC 8000C9AC 14200002 */  bnez       $at, .L8000C9B8
/* D5B0 8000C9B0 4610B580 */   add.s     $f22, $f22, $f16
/* D5B4 8000C9B4 00001025 */  or         $v0, $zero, $zero
.L8000C9B8:
/* D5B8 8000C9B8 962B0016 */  lhu        $t3, 0x16($s1)
/* D5BC 8000C9BC 316CFF00 */  andi       $t4, $t3, 0xff00
/* D5C0 8000C9C0 01827025 */  or         $t6, $t4, $v0
/* D5C4 8000C9C4 1000001C */  b          .L8000CA38
/* D5C8 8000C9C8 A62E0016 */   sh        $t6, 0x16($s1)
.L8000C9CC:
/* D5CC 8000C9CC 306F0100 */  andi       $t7, $v1, 0x100
/* D5D0 8000C9D0 51E0001A */  beql       $t7, $zero, .L8000CA3C
/* D5D4 8000C9D4 8E490000 */   lw        $t1, ($s2)
/* D5D8 8000C9D8 0C0036CE */  jal        func_8000DB38
/* D5DC 8000C9DC 02202025 */   or        $a0, $s1, $zero
/* D5E0 8000C9E0 10400015 */  beqz       $v0, .L8000CA38
/* D5E4 8000C9E4 0002C0C0 */   sll       $t8, $v0, 3
/* D5E8 8000C9E8 0302C023 */  subu       $t8, $t8, $v0
/* D5EC 8000C9EC 3C198008 */  lui        $t9, 0x8008
/* D5F0 8000C9F0 27394E60 */  addiu      $t9, $t9, 0x4e60
/* D5F4 8000C9F4 0018C080 */  sll        $t8, $t8, 2
/* D5F8 8000C9F8 03198021 */  addu       $s0, $t8, $t9
/* D5FC 8000C9FC C612FFF8 */  lwc1       $f18, -8($s0)
/* D600 8000CA00 E69C0004 */  swc1       $f28, 4($s4)
/* D604 8000CA04 02802825 */  or         $a1, $s4, $zero
/* D608 8000CA08 E6920000 */  swc1       $f18, ($s4)
/* D60C 8000CA0C C624000C */  lwc1       $f4, 0xc($s1)
/* D610 8000CA10 460021A1 */  cvt.d.s    $f6, $f4
/* D614 8000CA14 463E3202 */  mul.d      $f8, $f6, $f30
/* D618 8000CA18 0C008CBD */  jal        func_800232F4
/* D61C 8000CA1C 46204320 */   cvt.s.d   $f12, $f8
/* D620 8000CA20 C68A0000 */  lwc1       $f10, ($s4)
/* D624 8000CA24 C6900004 */  lwc1       $f16, 4($s4)
/* D628 8000CA28 C612FFFC */  lwc1       $f18, -4($s0)
/* D62C 8000CA2C 460AA501 */  sub.s      $f20, $f20, $f10
/* D630 8000CA30 4610B581 */  sub.s      $f22, $f22, $f16
/* D634 8000CA34 4612D680 */  add.s      $f26, $f26, $f18
.L8000CA38:
/* D638 8000CA38 8E490000 */  lw         $t1, ($s2)
.L8000CA3C:
/* D63C 8000CA3C 8FAD0080 */  lw         $t5, 0x80($sp)
/* D640 8000CA40 C6240010 */  lwc1       $f4, 0x10($s1)
/* D644 8000CA44 00095180 */  sll        $t2, $t1, 6
/* D648 8000CA48 4405E000 */  mfc1       $a1, $f28
/* D64C 8000CA4C 4406D000 */  mfc1       $a2, $f26
/* D650 8000CA50 4407E000 */  mfc1       $a3, $f28
/* D654 8000CA54 01AA2021 */  addu       $a0, $t5, $t2
/* D658 8000CA58 248400C0 */  addiu      $a0, $a0, 0xc0
/* D65C 8000CA5C E7B6001C */  swc1       $f22, 0x1c($sp)
/* D660 8000CA60 E7B80018 */  swc1       $f24, 0x18($sp)
/* D664 8000CA64 E7B40014 */  swc1       $f20, 0x14($sp)
/* D668 8000CA68 0C00D448 */  jal        func_80035120
/* D66C 8000CA6C E7A40010 */   swc1      $f4, 0x10($sp)
/* D670 8000CA70 8EA20000 */  lw         $v0, ($s5)
/* D674 8000CA74 3C0C0102 */  lui        $t4, 0x102
/* D678 8000CA78 358C0040 */  ori        $t4, $t4, 0x40
/* D67C 8000CA7C 244B0008 */  addiu      $t3, $v0, 8
/* D680 8000CA80 AEAB0000 */  sw         $t3, ($s5)
/* D684 8000CA84 AC4C0000 */  sw         $t4, ($v0)
/* D688 8000CA88 8E4E0000 */  lw         $t6, ($s2)
/* D68C 8000CA8C 3C190200 */  lui        $t9, 0x200
/* D690 8000CA90 27390000 */  addiu      $t9, $t9, 0
/* D694 8000CA94 000E7980 */  sll        $t7, $t6, 6
/* D698 8000CA98 25F800C0 */  addiu      $t8, $t7, 0xc0
/* D69C 8000CA9C 03194821 */  addu       $t1, $t8, $t9
/* D6A0 8000CAA0 AC490004 */  sw         $t1, 4($v0)
/* D6A4 8000CAA4 8E4D0000 */  lw         $t5, ($s2)
/* D6A8 8000CAA8 25AA0001 */  addiu      $t2, $t5, 1
/* D6AC 8000CAAC AE4A0000 */  sw         $t2, ($s2)
/* D6B0 8000CAB0 8EA20000 */  lw         $v0, ($s5)
/* D6B4 8000CAB4 3C0C0600 */  lui        $t4, 0x600
/* D6B8 8000CAB8 3C0E8008 */  lui        $t6, 0x8008
/* D6BC 8000CABC 244B0008 */  addiu      $t3, $v0, 8
/* D6C0 8000CAC0 AEAB0000 */  sw         $t3, ($s5)
/* D6C4 8000CAC4 AC4C0000 */  sw         $t4, ($v0)
/* D6C8 8000CAC8 862F0014 */  lh         $t7, 0x14($s1)
/* D6CC 8000CACC 8DCE4F28 */  lw         $t6, 0x4f28($t6)
/* D6D0 8000CAD0 000FC140 */  sll        $t8, $t7, 5
/* D6D4 8000CAD4 01D8C821 */  addu       $t9, $t6, $t8
/* D6D8 8000CAD8 8F290010 */  lw         $t1, 0x10($t9)
/* D6DC 8000CADC AC490004 */  sw         $t1, 4($v0)
/* D6E0 8000CAE0 8FCD0000 */  lw         $t5, ($fp)
/* D6E4 8000CAE4 26D6FFFF */  addiu      $s6, $s6, -1
/* D6E8 8000CAE8 25AA0001 */  addiu      $t2, $t5, 1
/* D6EC 8000CAEC 16C0FF88 */  bnez       $s6, .L8000C910
/* D6F0 8000CAF0 AFCA0000 */   sw        $t2, ($fp)
.L8000CAF4:
/* D6F4 8000CAF4 3C168008 */  lui        $s6, 0x8008
/* D6F8 8000CAF8 8ED628DC */  lw         $s6, 0x28dc($s6)
/* D6FC 8000CAFC 3C0B8008 */  lui        $t3, 0x8008
/* D700 8000CB00 3C128008 */  lui        $s2, 0x8008
/* D704 8000CB04 4480E000 */  mtc1       $zero, $f28
/* D708 8000CB08 256B3080 */  addiu      $t3, $t3, 0x3080
/* D70C 8000CB0C 3C018008 */  lui        $at, 0x8008
/* D710 8000CB10 2652B2F8 */  addiu      $s2, $s2, -0x4d08
/* D714 8000CB14 12C00039 */  beqz       $s6, .L8000CBFC
/* D718 8000CB18 AC2B28F0 */   sw        $t3, 0x28f0($at)
.L8000CB1C:
/* D71C 8000CB1C 3C028008 */  lui        $v0, 0x8008
/* D720 8000CB20 8C4228F0 */  lw         $v0, 0x28f0($v0)
/* D724 8000CB24 3C018008 */  lui        $at, 0x8008
/* D728 8000CB28 8FAF0080 */  lw         $t7, 0x80($sp)
/* D72C 8000CB2C 8C510000 */  lw         $s1, ($v0)
/* D730 8000CB30 244C0004 */  addiu      $t4, $v0, 4
/* D734 8000CB34 AC2C28F0 */  sw         $t4, 0x28f0($at)
/* D738 8000CB38 C6260010 */  lwc1       $f6, 0x10($s1)
/* D73C 8000CB3C 8E26000C */  lw         $a2, 0xc($s1)
/* D740 8000CB40 8E4E0000 */  lw         $t6, ($s2)
/* D744 8000CB44 E7A60010 */  swc1       $f6, 0x10($sp)
/* D748 8000CB48 C6280000 */  lwc1       $f8, ($s1)
/* D74C 8000CB4C 000EC180 */  sll        $t8, $t6, 6
/* D750 8000CB50 4405E000 */  mfc1       $a1, $f28
/* D754 8000CB54 E7A80014 */  swc1       $f8, 0x14($sp)
/* D758 8000CB58 C62A0004 */  lwc1       $f10, 4($s1)
/* D75C 8000CB5C 4407E000 */  mfc1       $a3, $f28
/* D760 8000CB60 01F82021 */  addu       $a0, $t7, $t8
/* D764 8000CB64 E7AA0018 */  swc1       $f10, 0x18($sp)
/* D768 8000CB68 C6300008 */  lwc1       $f16, 8($s1)
/* D76C 8000CB6C 248400C0 */  addiu      $a0, $a0, 0xc0
/* D770 8000CB70 0C00D448 */  jal        func_80035120
/* D774 8000CB74 E7B0001C */   swc1      $f16, 0x1c($sp)
/* D778 8000CB78 8EA20000 */  lw         $v0, ($s5)
/* D77C 8000CB7C 3C090102 */  lui        $t1, 0x102
/* D780 8000CB80 35290040 */  ori        $t1, $t1, 0x40
/* D784 8000CB84 24590008 */  addiu      $t9, $v0, 8
/* D788 8000CB88 AEB90000 */  sw         $t9, ($s5)
/* D78C 8000CB8C AC490000 */  sw         $t1, ($v0)
/* D790 8000CB90 8E4D0000 */  lw         $t5, ($s2)
/* D794 8000CB94 3C0C0200 */  lui        $t4, 0x200
/* D798 8000CB98 258C0000 */  addiu      $t4, $t4, 0
/* D79C 8000CB9C 000D5180 */  sll        $t2, $t5, 6
/* D7A0 8000CBA0 254B00C0 */  addiu      $t3, $t2, 0xc0
/* D7A4 8000CBA4 016C7021 */  addu       $t6, $t3, $t4
/* D7A8 8000CBA8 AC4E0004 */  sw         $t6, 4($v0)
/* D7AC 8000CBAC 8E4F0000 */  lw         $t7, ($s2)
/* D7B0 8000CBB0 25F80001 */  addiu      $t8, $t7, 1
/* D7B4 8000CBB4 AE580000 */  sw         $t8, ($s2)
/* D7B8 8000CBB8 8EA20000 */  lw         $v0, ($s5)
/* D7BC 8000CBBC 3C090600 */  lui        $t1, 0x600
/* D7C0 8000CBC0 3C0D8008 */  lui        $t5, 0x8008
/* D7C4 8000CBC4 24590008 */  addiu      $t9, $v0, 8
/* D7C8 8000CBC8 AEB90000 */  sw         $t9, ($s5)
/* D7CC 8000CBCC AC490000 */  sw         $t1, ($v0)
/* D7D0 8000CBD0 862A0014 */  lh         $t2, 0x14($s1)
/* D7D4 8000CBD4 8DAD4F28 */  lw         $t5, 0x4f28($t5)
/* D7D8 8000CBD8 000A5940 */  sll        $t3, $t2, 5
/* D7DC 8000CBDC 01AB6021 */  addu       $t4, $t5, $t3
/* D7E0 8000CBE0 8D8E0010 */  lw         $t6, 0x10($t4)
/* D7E4 8000CBE4 AC4E0004 */  sw         $t6, 4($v0)
/* D7E8 8000CBE8 8FCF0000 */  lw         $t7, ($fp)
/* D7EC 8000CBEC 26D6FFFF */  addiu      $s6, $s6, -1
/* D7F0 8000CBF0 25F80001 */  addiu      $t8, $t7, 1
/* D7F4 8000CBF4 16C0FFC9 */  bnez       $s6, .L8000CB1C
/* D7F8 8000CBF8 AFD80000 */   sw        $t8, ($fp)
.L8000CBFC:
/* D7FC 8000CBFC 0C003962 */  jal        func_8000E588
/* D800 8000CC00 8FA40080 */   lw        $a0, 0x80($sp)
/* D804 8000CC04 3C198008 */  lui        $t9, 0x8008
/* D808 8000CC08 8F3928E0 */  lw         $t9, 0x28e0($t9)
/* D80C 8000CC0C 3C0BB900 */  lui        $t3, 0xb900
/* D810 8000CC10 356B031D */  ori        $t3, $t3, 0x31d
/* D814 8000CC14 1320002B */  beqz       $t9, .L8000CCC4
/* D818 8000CC18 3C0E8008 */   lui       $t6, 0x8008
/* D81C 8000CC1C 8EA20000 */  lw         $v0, ($s5)
/* D820 8000CC20 3C0AE700 */  lui        $t2, 0xe700
/* D824 8000CC24 25C74F40 */  addiu      $a3, $t6, 0x4f40
/* D828 8000CC28 24490008 */  addiu      $t1, $v0, 8
/* D82C 8000CC2C AEA90000 */  sw         $t1, ($s5)
/* D830 8000CC30 AC400004 */  sw         $zero, 4($v0)
/* D834 8000CC34 AC4A0000 */  sw         $t2, ($v0)
/* D838 8000CC38 8EA20000 */  lw         $v0, ($s5)
/* D83C 8000CC3C 3C0CC811 */  lui        $t4, 0xc811
/* D840 8000CC40 358C3078 */  ori        $t4, $t4, 0x3078
/* D844 8000CC44 244D0008 */  addiu      $t5, $v0, 8
/* D848 8000CC48 AEAD0000 */  sw         $t5, ($s5)
/* D84C 8000CC4C AC4C0004 */  sw         $t4, 4($v0)
/* D850 8000CC50 AC4B0000 */  sw         $t3, ($v0)
/* D854 8000CC54 3C018008 */  lui        $at, 0x8008
/* D858 8000CC58 3C058008 */  lui        $a1, 0x8008
/* D85C 8000CC5C AC2728F8 */  sw         $a3, 0x28f8($at)
/* D860 8000CC60 8CA528E0 */  lw         $a1, 0x28e0($a1)
/* D864 8000CC64 8FA40080 */  lw         $a0, 0x80($sp)
/* D868 8000CC68 0C00376C */  jal        func_8000DDB0
/* D86C 8000CC6C 00003025 */   or        $a2, $zero, $zero
/* D870 8000CC70 3C058008 */  lui        $a1, 0x8008
/* D874 8000CC74 3C078008 */  lui        $a3, 0x8008
/* D878 8000CC78 8CE728F8 */  lw         $a3, 0x28f8($a3)
/* D87C 8000CC7C 8CA528E0 */  lw         $a1, 0x28e0($a1)
/* D880 8000CC80 8FA40080 */  lw         $a0, 0x80($sp)
/* D884 8000CC84 0C00376C */  jal        func_8000DDB0
/* D888 8000CC88 24060001 */   addiu     $a2, $zero, 1
/* D88C 8000CC8C 3C058008 */  lui        $a1, 0x8008
/* D890 8000CC90 3C078008 */  lui        $a3, 0x8008
/* D894 8000CC94 8CE728F8 */  lw         $a3, 0x28f8($a3)
/* D898 8000CC98 8CA528E0 */  lw         $a1, 0x28e0($a1)
/* D89C 8000CC9C 8FA40080 */  lw         $a0, 0x80($sp)
/* D8A0 8000CCA0 0C00376C */  jal        func_8000DDB0
/* D8A4 8000CCA4 24060002 */   addiu     $a2, $zero, 2
/* D8A8 8000CCA8 3C058008 */  lui        $a1, 0x8008
/* D8AC 8000CCAC 3C078008 */  lui        $a3, 0x8008
/* D8B0 8000CCB0 8CE728F8 */  lw         $a3, 0x28f8($a3)
/* D8B4 8000CCB4 8CA528E0 */  lw         $a1, 0x28e0($a1)
/* D8B8 8000CCB8 8FA40080 */  lw         $a0, 0x80($sp)
/* D8BC 8000CCBC 0C00376C */  jal        func_8000DDB0
/* D8C0 8000CCC0 24060003 */   addiu     $a2, $zero, 3
.L8000CCC4:
/* D8C4 8000CCC4 8EA20000 */  lw         $v0, ($s5)
/* D8C8 8000CCC8 3C18BA00 */  lui        $t8, 0xba00
/* D8CC 8000CCCC 37180C02 */  ori        $t8, $t8, 0xc02
/* D8D0 8000CCD0 244F0008 */  addiu      $t7, $v0, 8
/* D8D4 8000CCD4 AEAF0000 */  sw         $t7, ($s5)
/* D8D8 8000CCD8 24192000 */  addiu      $t9, $zero, 0x2000
/* D8DC 8000CCDC AC590004 */  sw         $t9, 4($v0)
/* D8E0 8000CCE0 AC580000 */  sw         $t8, ($v0)
/* D8E4 8000CCE4 8EA20000 */  lw         $v0, ($s5)
/* D8E8 8000CCE8 3C0ABA00 */  lui        $t2, 0xba00
/* D8EC 8000CCEC 354A0E02 */  ori        $t2, $t2, 0xe02
/* D8F0 8000CCF0 24490008 */  addiu      $t1, $v0, 8
/* D8F4 8000CCF4 AEA90000 */  sw         $t1, ($s5)
/* D8F8 8000CCF8 AC400004 */  sw         $zero, 4($v0)
/* D8FC 8000CCFC AC4A0000 */  sw         $t2, ($v0)
/* D900 8000CD00 3C038008 */  lui        $v1, 0x8008
/* D904 8000CD04 3C048005 */  lui        $a0, 0x8005
/* D908 8000CD08 3C028005 */  lui        $v0, 0x8005
/* D90C 8000CD0C 2442C2E4 */  addiu      $v0, $v0, -0x3d1c
/* D910 8000CD10 2484C2D4 */  addiu      $a0, $a0, -0x3d2c
/* D914 8000CD14 24632C70 */  addiu      $v1, $v1, 0x2c70
.L8000CD18:
/* D918 8000CD18 946D0000 */  lhu        $t5, ($v1)
/* D91C 8000CD1C 948B0000 */  lhu        $t3, ($a0)
/* D920 8000CD20 946E0002 */  lhu        $t6, 2($v1)
/* D924 8000CD24 948F0002 */  lhu        $t7, 2($a0)
/* D928 8000CD28 24840004 */  addiu      $a0, $a0, 4
/* D92C 8000CD2C 0082082B */  sltu       $at, $a0, $v0
/* D930 8000CD30 01AB6021 */  addu       $t4, $t5, $t3
/* D934 8000CD34 01CFC021 */  addu       $t8, $t6, $t7
/* D938 8000CD38 24630004 */  addiu      $v1, $v1, 4
/* D93C 8000CD3C A46CFFFC */  sh         $t4, -4($v1)
/* D940 8000CD40 1420FFF5 */  bnez       $at, .L8000CD18
/* D944 8000CD44 A478FFFE */   sh        $t8, -2($v1)
/* D948 8000CD48 3C018008 */  lui        $at, 0x8008
/* D94C 8000CD4C 0C003ACC */  jal        func_8000EB30
/* D950 8000CD50 AC202908 */   sw        $zero, 0x2908($at)
/* D954 8000CD54 0C003B76 */  jal        func_8000EDD8
/* D958 8000CD58 00000000 */   nop       
/* D95C 8000CD5C 3C108008 */  lui        $s0, 0x8008
/* D960 8000CD60 8E104ED8 */  lw         $s0, 0x4ed8($s0)
/* D964 8000CD64 2401FFFF */  addiu      $at, $zero, -1
/* D968 8000CD68 3C118008 */  lui        $s1, 0x8008
/* D96C 8000CD6C 16010009 */  bne        $s0, $at, .L8000CD94
/* D970 8000CD70 26314EDC */   addiu     $s1, $s1, 0x4edc
/* D974 8000CD74 8E390000 */  lw         $t9, ($s1)
/* D978 8000CD78 52190032 */  beql       $s0, $t9, .L8000CE44
/* D97C 8000CD7C AE300000 */   sw        $s0, ($s1)
/* D980 8000CD80 0C009943 */  jal        func_8002650C
/* D984 8000CD84 00000000 */   nop       
/* D988 8000CD88 3C108008 */  lui        $s0, 0x8008
/* D98C 8000CD8C 1000002C */  b          .L8000CE40
/* D990 8000CD90 8E104ED8 */   lw        $s0, 0x4ed8($s0)
.L8000CD94:
/* D994 8000CD94 3C018008 */  lui        $at, 0x8008
/* D998 8000CD98 C4324ED4 */  lwc1       $f18, 0x4ed4($at)
/* D99C 8000CD9C 3C014069 */  lui        $at, 0x4069
/* D9A0 8000CDA0 44812800 */  mtc1       $at, $f5
/* D9A4 8000CDA4 44802000 */  mtc1       $zero, $f4
/* D9A8 8000CDA8 46009021 */  cvt.d.s    $f0, $f18
/* D9AC 8000CDAC 4620203C */  c.lt.d     $f4, $f0
/* D9B0 8000CDB0 00000000 */  nop        
/* D9B4 8000CDB4 4500000A */  bc1f       .L8000CDE0
/* D9B8 8000CDB8 3C018007 */   lui       $at, 0x8007
/* D9BC 8000CDBC D42611F8 */  ldc1       $f6, 0x11f8($at)
/* D9C0 8000CDC0 3C018007 */  lui        $at, 0x8007
/* D9C4 8000CDC4 D42A1200 */  ldc1       $f10, 0x1200($at)
/* D9C8 8000CDC8 46203201 */  sub.d      $f8, $f6, $f0
/* D9CC 8000CDCC 462A4402 */  mul.d      $f16, $f8, $f10
/* D9D0 8000CDD0 4620848D */  trunc.w.d  $f18, $f16
/* D9D4 8000CDD4 44169000 */  mfc1       $s6, $f18
/* D9D8 8000CDD8 10000003 */  b          .L8000CDE8
/* D9DC 8000CDDC 2AC10002 */   slti      $at, $s6, 2
.L8000CDE0:
/* D9E0 8000CDE0 241600FF */  addiu      $s6, $zero, 0xff
/* D9E4 8000CDE4 2AC10002 */  slti       $at, $s6, 2
.L8000CDE8:
/* D9E8 8000CDE8 1420000B */  bnez       $at, .L8000CE18
/* D9EC 8000CDEC 00105080 */   sll       $t2, $s0, 2
/* D9F0 8000CDF0 3C048005 */  lui        $a0, 0x8005
/* D9F4 8000CDF4 008A2021 */  addu       $a0, $a0, $t2
/* D9F8 8000CDF8 8084C2EB */  lb         $a0, -0x3d15($a0)
/* D9FC 8000CDFC 0C009A67 */  jal        func_8002699C
/* DA00 8000CE00 32C500FF */   andi      $a1, $s6, 0xff
/* DA04 8000CE04 3C108008 */  lui        $s0, 0x8008
/* DA08 8000CE08 3C118008 */  lui        $s1, 0x8008
/* DA0C 8000CE0C 26314EDC */  addiu      $s1, $s1, 0x4edc
/* DA10 8000CE10 1000000B */  b          .L8000CE40
/* DA14 8000CE14 8E104ED8 */   lw        $s0, 0x4ed8($s0)
.L8000CE18:
/* DA18 8000CE18 0C009943 */  jal        func_8002650C
/* DA1C 8000CE1C 00000000 */   nop       
/* DA20 8000CE20 3C118008 */  lui        $s1, 0x8008
/* DA24 8000CE24 26314EDC */  addiu      $s1, $s1, 0x4edc
/* DA28 8000CE28 240DFFFF */  addiu      $t5, $zero, -1
/* DA2C 8000CE2C AE2D0000 */  sw         $t5, ($s1)
/* DA30 8000CE30 3C018008 */  lui        $at, 0x8008
/* DA34 8000CE34 AC2D4ED8 */  sw         $t5, 0x4ed8($at)
/* DA38 8000CE38 3C108008 */  lui        $s0, 0x8008
/* DA3C 8000CE3C 8E104ED8 */  lw         $s0, 0x4ed8($s0)
.L8000CE40:
/* DA40 8000CE40 AE300000 */  sw         $s0, ($s1)
.L8000CE44:
/* DA44 8000CE44 8FBF007C */  lw         $ra, 0x7c($sp)
/* DA48 8000CE48 D7B40028 */  ldc1       $f20, 0x28($sp)
/* DA4C 8000CE4C D7B60030 */  ldc1       $f22, 0x30($sp)
/* DA50 8000CE50 D7B80038 */  ldc1       $f24, 0x38($sp)
/* DA54 8000CE54 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* DA58 8000CE58 D7BC0048 */  ldc1       $f28, 0x48($sp)
/* DA5C 8000CE5C D7BE0050 */  ldc1       $f30, 0x50($sp)
/* DA60 8000CE60 8FB00058 */  lw         $s0, 0x58($sp)
/* DA64 8000CE64 8FB1005C */  lw         $s1, 0x5c($sp)
/* DA68 8000CE68 8FB20060 */  lw         $s2, 0x60($sp)
/* DA6C 8000CE6C 8FB30064 */  lw         $s3, 0x64($sp)
/* DA70 8000CE70 8FB40068 */  lw         $s4, 0x68($sp)
/* DA74 8000CE74 8FB5006C */  lw         $s5, 0x6c($sp)
/* DA78 8000CE78 8FB60070 */  lw         $s6, 0x70($sp)
/* DA7C 8000CE7C 8FB70074 */  lw         $s7, 0x74($sp)
/* DA80 8000CE80 8FBE0078 */  lw         $fp, 0x78($sp)
/* DA84 8000CE84 03E00008 */  jr         $ra
/* DA88 8000CE88 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_8000CE8C
/* DA8C 8000CE8C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* DA90 8000CE90 AFB20038 */  sw         $s2, 0x38($sp)
/* DA94 8000CE94 3C128008 */  lui        $s2, 0x8008
/* DA98 8000CE98 265228FC */  addiu      $s2, $s2, 0x28fc
/* DA9C 8000CE9C AFBF0054 */  sw         $ra, 0x54($sp)
/* DAA0 8000CEA0 AFBE0050 */  sw         $fp, 0x50($sp)
/* DAA4 8000CEA4 AFB7004C */  sw         $s7, 0x4c($sp)
/* DAA8 8000CEA8 AFB60048 */  sw         $s6, 0x48($sp)
/* DAAC 8000CEAC AFB50044 */  sw         $s5, 0x44($sp)
/* DAB0 8000CEB0 AFB40040 */  sw         $s4, 0x40($sp)
/* DAB4 8000CEB4 AFB3003C */  sw         $s3, 0x3c($sp)
/* DAB8 8000CEB8 AFB10034 */  sw         $s1, 0x34($sp)
/* DABC 8000CEBC AFB00030 */  sw         $s0, 0x30($sp)
/* DAC0 8000CEC0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* DAC4 8000CEC4 AFA40058 */  sw         $a0, 0x58($sp)
/* DAC8 8000CEC8 3C0E8008 */  lui        $t6, 0x8008
/* DACC 8000CECC 25CE3488 */  addiu      $t6, $t6, 0x3488
/* DAD0 8000CED0 AE4E0000 */  sw         $t6, ($s2)
/* DAD4 8000CED4 3C138008 */  lui        $s3, 0x8008
/* DAD8 8000CED8 8E7328E4 */  lw         $s3, 0x28e4($s3)
/* DADC 8000CEDC 3C108008 */  lui        $s0, 0x8008
/* DAE0 8000CEE0 2610B2FC */  addiu      $s0, $s0, -0x4d04
/* DAE4 8000CEE4 12600023 */  beqz       $s3, .L8000CF74
/* DAE8 8000CEE8 00000000 */   nop       
/* DAEC 8000CEEC 8E020000 */  lw         $v0, ($s0)
/* DAF0 8000CEF0 3C18E700 */  lui        $t8, 0xe700
/* DAF4 8000CEF4 3C0AB900 */  lui        $t2, 0xb900
/* DAF8 8000CEF8 244F0008 */  addiu      $t7, $v0, 8
/* DAFC 8000CEFC AE0F0000 */  sw         $t7, ($s0)
/* DB00 8000CF00 AC400004 */  sw         $zero, 4($v0)
/* DB04 8000CF04 AC580000 */  sw         $t8, ($v0)
/* DB08 8000CF08 8E020000 */  lw         $v0, ($s0)
/* DB0C 8000CF0C 3C0B0C18 */  lui        $t3, 0xc18
/* DB10 8000CF10 356B49D8 */  ori        $t3, $t3, 0x49d8
/* DB14 8000CF14 24590008 */  addiu      $t9, $v0, 8
/* DB18 8000CF18 AE190000 */  sw         $t9, ($s0)
/* DB1C 8000CF1C 354A031D */  ori        $t2, $t2, 0x31d
/* DB20 8000CF20 AC4A0000 */  sw         $t2, ($v0)
/* DB24 8000CF24 AC4B0004 */  sw         $t3, 4($v0)
/* DB28 8000CF28 8E020000 */  lw         $v0, ($s0)
/* DB2C 8000CF2C 3C0DFB00 */  lui        $t5, 0xfb00
/* DB30 8000CF30 3C0E8008 */  lui        $t6, 0x8008
/* DB34 8000CF34 244C0008 */  addiu      $t4, $v0, 8
/* DB38 8000CF38 AE0C0000 */  sw         $t4, ($s0)
/* DB3C 8000CF3C AC4D0000 */  sw         $t5, ($v0)
/* DB40 8000CF40 8DCE4EE4 */  lw         $t6, 0x4ee4($t6)
/* DB44 8000CF44 3C0F8006 */  lui        $t7, 0x8006
/* DB48 8000CF48 3C0ABA00 */  lui        $t2, 0xba00
/* DB4C 8000CF4C 01EE7821 */  addu       $t7, $t7, $t6
/* DB50 8000CF50 91F8EFE8 */  lbu        $t8, -0x1018($t7)
/* DB54 8000CF54 AC580004 */  sw         $t8, 4($v0)
/* DB58 8000CF58 8E020000 */  lw         $v0, ($s0)
/* DB5C 8000CF5C 354A0C02 */  ori        $t2, $t2, 0xc02
/* DB60 8000CF60 240B2000 */  addiu      $t3, $zero, 0x2000
/* DB64 8000CF64 24590008 */  addiu      $t9, $v0, 8
/* DB68 8000CF68 AE190000 */  sw         $t9, ($s0)
/* DB6C 8000CF6C AC4B0004 */  sw         $t3, 4($v0)
/* DB70 8000CF70 AC4A0000 */  sw         $t2, ($v0)
.L8000CF74:
/* DB74 8000CF74 3C108008 */  lui        $s0, 0x8008
/* DB78 8000CF78 1260003C */  beqz       $s3, .L8000D06C
/* DB7C 8000CF7C 2610B2FC */   addiu     $s0, $s0, -0x4d04
/* DB80 8000CF80 3C170200 */  lui        $s7, 0x200
/* DB84 8000CF84 3C160102 */  lui        $s6, 0x102
/* DB88 8000CF88 3C158008 */  lui        $s5, 0x8008
/* DB8C 8000CF8C 3C118008 */  lui        $s1, 0x8008
/* DB90 8000CF90 4480A000 */  mtc1       $zero, $f20
/* DB94 8000CF94 2631B2F8 */  addiu      $s1, $s1, -0x4d08
/* DB98 8000CF98 26B54F34 */  addiu      $s5, $s5, 0x4f34
/* DB9C 8000CF9C 36D60040 */  ori        $s6, $s6, 0x40
/* DBA0 8000CFA0 26F70000 */  addiu      $s7, $s7, 0
/* DBA4 8000CFA4 3C1E0600 */  lui        $fp, 0x600
.L8000CFA8:
/* DBA8 8000CFA8 8E430000 */  lw         $v1, ($s2)
/* DBAC 8000CFAC 8E2E0000 */  lw         $t6, ($s1)
/* DBB0 8000CFB0 8FAD0058 */  lw         $t5, 0x58($sp)
/* DBB4 8000CFB4 8C620000 */  lw         $v0, ($v1)
/* DBB8 8000CFB8 246C0004 */  addiu      $t4, $v1, 4
/* DBBC 8000CFBC AE4C0000 */  sw         $t4, ($s2)
/* DBC0 8000CFC0 C4440010 */  lwc1       $f4, 0x10($v0)
/* DBC4 8000CFC4 84540014 */  lh         $s4, 0x14($v0)
/* DBC8 8000CFC8 8C46000C */  lw         $a2, 0xc($v0)
/* DBCC 8000CFCC E7A40010 */  swc1       $f4, 0x10($sp)
/* DBD0 8000CFD0 C4460000 */  lwc1       $f6, ($v0)
/* DBD4 8000CFD4 000E7980 */  sll        $t7, $t6, 6
/* DBD8 8000CFD8 4405A000 */  mfc1       $a1, $f20
/* DBDC 8000CFDC E7A60014 */  swc1       $f6, 0x14($sp)
/* DBE0 8000CFE0 C4480004 */  lwc1       $f8, 4($v0)
/* DBE4 8000CFE4 4407A000 */  mfc1       $a3, $f20
/* DBE8 8000CFE8 01AF2021 */  addu       $a0, $t5, $t7
/* DBEC 8000CFEC E7A80018 */  swc1       $f8, 0x18($sp)
/* DBF0 8000CFF0 C44A0008 */  lwc1       $f10, 8($v0)
/* DBF4 8000CFF4 248400C0 */  addiu      $a0, $a0, 0xc0
/* DBF8 8000CFF8 0C00D448 */  jal        func_80035120
/* DBFC 8000CFFC E7AA001C */   swc1      $f10, 0x1c($sp)
/* DC00 8000D000 8E020000 */  lw         $v0, ($s0)
/* DC04 8000D004 24580008 */  addiu      $t8, $v0, 8
/* DC08 8000D008 AE180000 */  sw         $t8, ($s0)
/* DC0C 8000D00C AC560000 */  sw         $s6, ($v0)
/* DC10 8000D010 8E390000 */  lw         $t9, ($s1)
/* DC14 8000D014 00195180 */  sll        $t2, $t9, 6
/* DC18 8000D018 02EA5821 */  addu       $t3, $s7, $t2
/* DC1C 8000D01C 256C00C0 */  addiu      $t4, $t3, 0xc0
/* DC20 8000D020 AC4C0004 */  sw         $t4, 4($v0)
/* DC24 8000D024 8E2E0000 */  lw         $t6, ($s1)
/* DC28 8000D028 25CD0001 */  addiu      $t5, $t6, 1
/* DC2C 8000D02C AE2D0000 */  sw         $t5, ($s1)
/* DC30 8000D030 8E020000 */  lw         $v0, ($s0)
/* DC34 8000D034 3C188008 */  lui        $t8, 0x8008
/* DC38 8000D038 0014C940 */  sll        $t9, $s4, 5
/* DC3C 8000D03C 244F0008 */  addiu      $t7, $v0, 8
/* DC40 8000D040 AE0F0000 */  sw         $t7, ($s0)
/* DC44 8000D044 AC5E0000 */  sw         $fp, ($v0)
/* DC48 8000D048 8F184F28 */  lw         $t8, 0x4f28($t8)
/* DC4C 8000D04C 03195021 */  addu       $t2, $t8, $t9
/* DC50 8000D050 8D4B0010 */  lw         $t3, 0x10($t2)
/* DC54 8000D054 AC4B0004 */  sw         $t3, 4($v0)
/* DC58 8000D058 8EAC0000 */  lw         $t4, ($s5)
/* DC5C 8000D05C 2673FFFF */  addiu      $s3, $s3, -1
/* DC60 8000D060 258E0001 */  addiu      $t6, $t4, 1
/* DC64 8000D064 1660FFD0 */  bnez       $s3, .L8000CFA8
/* DC68 8000D068 AEAE0000 */   sw        $t6, ($s5)
.L8000D06C:
/* DC6C 8000D06C 3C068008 */  lui        $a2, 0x8008
/* DC70 8000D070 8CC628EC */  lw         $a2, 0x28ec($a2)
/* DC74 8000D074 3C118008 */  lui        $s1, 0x8008
/* DC78 8000D078 3C158008 */  lui        $s5, 0x8008
/* DC7C 8000D07C 4480A000 */  mtc1       $zero, $f20
/* DC80 8000D080 26B54F34 */  addiu      $s5, $s5, 0x4f34
/* DC84 8000D084 2631B2F8 */  addiu      $s1, $s1, -0x4d08
/* DC88 8000D088 10C00020 */  beqz       $a2, .L8000D10C
/* DC8C 8000D08C 3C1E0600 */   lui       $fp, 0x600
/* DC90 8000D090 8E020000 */  lw         $v0, ($s0)
/* DC94 8000D094 3C0FFB00 */  lui        $t7, 0xfb00
/* DC98 8000D098 3C188008 */  lui        $t8, 0x8008
/* DC9C 8000D09C 244D0008 */  addiu      $t5, $v0, 8
/* DCA0 8000D0A0 AE0D0000 */  sw         $t5, ($s0)
/* DCA4 8000D0A4 AC4F0000 */  sw         $t7, ($v0)
/* DCA8 8000D0A8 8F184EE4 */  lw         $t8, 0x4ee4($t8)
/* DCAC 8000D0AC 3C198006 */  lui        $t9, 0x8006
/* DCB0 8000D0B0 3C0CB900 */  lui        $t4, 0xb900
/* DCB4 8000D0B4 0338C821 */  addu       $t9, $t9, $t8
/* DCB8 8000D0B8 932AEFE8 */  lbu        $t2, -0x1018($t9)
/* DCBC 8000D0BC 358C031D */  ori        $t4, $t4, 0x31d
/* DCC0 8000D0C0 3C0FFC12 */  lui        $t7, 0xfc12
/* DCC4 8000D0C4 AC4A0004 */  sw         $t2, 4($v0)
/* DCC8 8000D0C8 8E020000 */  lw         $v0, ($s0)
/* DCCC 8000D0CC 3C0EC810 */  lui        $t6, 0xc810
/* DCD0 8000D0D0 35CE49D8 */  ori        $t6, $t6, 0x49d8
/* DCD4 8000D0D4 244B0008 */  addiu      $t3, $v0, 8
/* DCD8 8000D0D8 AE0B0000 */  sw         $t3, ($s0)
/* DCDC 8000D0DC AC4E0004 */  sw         $t6, 4($v0)
/* DCE0 8000D0E0 AC4C0000 */  sw         $t4, ($v0)
/* DCE4 8000D0E4 8E020000 */  lw         $v0, ($s0)
/* DCE8 8000D0E8 35EF1A04 */  ori        $t7, $t7, 0x1a04
/* DCEC 8000D0EC 2418FFF8 */  addiu      $t8, $zero, -8
/* DCF0 8000D0F0 244D0008 */  addiu      $t5, $v0, 8
/* DCF4 8000D0F4 AE0D0000 */  sw         $t5, ($s0)
/* DCF8 8000D0F8 AC580004 */  sw         $t8, 4($v0)
/* DCFC 8000D0FC AC4F0000 */  sw         $t7, ($v0)
/* DD00 8000D100 3C068008 */  lui        $a2, 0x8008
/* DD04 8000D104 8CC628EC */  lw         $a2, 0x28ec($a2)
/* DD08 8000D108 3C1E0600 */  lui        $fp, 0x600
.L8000D10C:
/* DD0C 8000D10C 3C198008 */  lui        $t9, 0x8008
/* DD10 8000D110 27393C90 */  addiu      $t9, $t9, 0x3c90
/* DD14 8000D114 3C018008 */  lui        $at, 0x8008
/* DD18 8000D118 AC392904 */  sw         $t9, 0x2904($at)
/* DD1C 8000D11C 10C000A9 */  beqz       $a2, .L8000D3C4
/* DD20 8000D120 00C09825 */   or        $s3, $a2, $zero
/* DD24 8000D124 3C16F510 */  lui        $s6, 0xf510
/* DD28 8000D128 36D61000 */  ori        $s6, $s6, 0x1000
/* DD2C 8000D12C 3C1EF200 */  lui        $fp, 0xf200
/* DD30 8000D130 24170020 */  addiu      $s7, $zero, 0x20
.L8000D134:
/* DD34 8000D134 3C088008 */  lui        $t0, 0x8008
/* DD38 8000D138 25082904 */  addiu      $t0, $t0, 0x2904
/* DD3C 8000D13C 8D030000 */  lw         $v1, ($t0)
/* DD40 8000D140 8E2E0000 */  lw         $t6, ($s1)
/* DD44 8000D144 8FAC0058 */  lw         $t4, 0x58($sp)
/* DD48 8000D148 8C620000 */  lw         $v0, ($v1)
/* DD4C 8000D14C 246A0004 */  addiu      $t2, $v1, 4
/* DD50 8000D150 AD0A0000 */  sw         $t2, ($t0)
/* DD54 8000D154 C4500010 */  lwc1       $f16, 0x10($v0)
/* DD58 8000D158 C440000C */  lwc1       $f0, 0xc($v0)
/* DD5C 8000D15C 94520016 */  lhu        $s2, 0x16($v0)
/* DD60 8000D160 84540014 */  lh         $s4, 0x14($v0)
/* DD64 8000D164 E7B00010 */  swc1       $f16, 0x10($sp)
/* DD68 8000D168 C4520000 */  lwc1       $f18, ($v0)
/* DD6C 8000D16C 000E6980 */  sll        $t5, $t6, 6
/* DD70 8000D170 4405A000 */  mfc1       $a1, $f20
/* DD74 8000D174 E7B20014 */  swc1       $f18, 0x14($sp)
/* DD78 8000D178 C4440004 */  lwc1       $f4, 4($v0)
/* DD7C 8000D17C 4407A000 */  mfc1       $a3, $f20
/* DD80 8000D180 018D2021 */  addu       $a0, $t4, $t5
/* DD84 8000D184 E7A40018 */  swc1       $f4, 0x18($sp)
/* DD88 8000D188 C4460008 */  lwc1       $f6, 8($v0)
/* DD8C 8000D18C 44060000 */  mfc1       $a2, $f0
/* DD90 8000D190 324B00FF */  andi       $t3, $s2, 0xff
/* DD94 8000D194 2572FFC0 */  addiu      $s2, $t3, -0x40
/* DD98 8000D198 248400C0 */  addiu      $a0, $a0, 0xc0
/* DD9C 8000D19C 0C00D448 */  jal        func_80035120
/* DDA0 8000D1A0 E7A6001C */   swc1      $f6, 0x1c($sp)
/* DDA4 8000D1A4 8E020000 */  lw         $v0, ($s0)
/* DDA8 8000D1A8 3C180102 */  lui        $t8, 0x102
/* DDAC 8000D1AC 37180040 */  ori        $t8, $t8, 0x40
/* DDB0 8000D1B0 244F0008 */  addiu      $t7, $v0, 8
/* DDB4 8000D1B4 AE0F0000 */  sw         $t7, ($s0)
/* DDB8 8000D1B8 AC580000 */  sw         $t8, ($v0)
/* DDBC 8000D1BC 8E390000 */  lw         $t9, ($s1)
/* DDC0 8000D1C0 3C0E0200 */  lui        $t6, 0x200
/* DDC4 8000D1C4 25CE0000 */  addiu      $t6, $t6, 0
/* DDC8 8000D1C8 00195180 */  sll        $t2, $t9, 6
/* DDCC 8000D1CC 254B00C0 */  addiu      $t3, $t2, 0xc0
/* DDD0 8000D1D0 016E6021 */  addu       $t4, $t3, $t6
/* DDD4 8000D1D4 AC4C0004 */  sw         $t4, 4($v0)
/* DDD8 8000D1D8 8E2D0000 */  lw         $t5, ($s1)
/* DDDC 8000D1DC 3C19FD10 */  lui        $t9, 0xfd10
/* DDE0 8000D1E0 3739001F */  ori        $t9, $t9, 0x1f
/* DDE4 8000D1E4 25AF0001 */  addiu      $t7, $t5, 1
/* DDE8 8000D1E8 AE2F0000 */  sw         $t7, ($s1)
/* DDEC 8000D1EC 8E020000 */  lw         $v0, ($s0)
/* DDF0 8000D1F0 00125080 */  sll        $t2, $s2, 2
/* DDF4 8000D1F4 3C0B8005 */  lui        $t3, 0x8005
/* DDF8 8000D1F8 24580008 */  addiu      $t8, $v0, 8
/* DDFC 8000D1FC AE180000 */  sw         $t8, ($s0)
/* DE00 8000D200 016A5821 */  addu       $t3, $t3, $t2
/* DE04 8000D204 AC590000 */  sw         $t9, ($v0)
/* DE08 8000D208 8D6BC314 */  lw         $t3, -0x3cec($t3)
/* DE0C 8000D20C 00126040 */  sll        $t4, $s2, 1
/* DE10 8000D210 3C0D8005 */  lui        $t5, 0x8005
/* DE14 8000D214 AC4B0004 */  sw         $t3, 4($v0)
/* DE18 8000D218 8E060000 */  lw         $a2, ($s0)
/* DE1C 8000D21C 25ADC328 */  addiu      $t5, $t5, -0x3cd8
/* DE20 8000D220 018D3821 */  addu       $a3, $t4, $t5
/* DE24 8000D224 24CE0008 */  addiu      $t6, $a2, 8
/* DE28 8000D228 AE0E0000 */  sw         $t6, ($s0)
/* DE2C 8000D22C ACD60000 */  sw         $s6, ($a2)
/* DE30 8000D230 94EF0000 */  lhu        $t7, ($a3)
/* DE34 8000D234 3C010700 */  lui        $at, 0x700
/* DE38 8000D238 24080006 */  addiu      $t0, $zero, 6
/* DE3C 8000D23C 16EF0003 */  bne        $s7, $t7, .L8000D24C
/* DE40 8000D240 00000000 */   nop       
/* DE44 8000D244 10000001 */  b          .L8000D24C
/* DE48 8000D248 24080005 */   addiu     $t0, $zero, 5
.L8000D24C:
/* DE4C 8000D24C 3118000F */  andi       $t8, $t0, 0xf
/* DE50 8000D250 0018CB80 */  sll        $t9, $t8, 0xe
/* DE54 8000D254 03215025 */  or         $t2, $t9, $at
/* DE58 8000D258 354B0050 */  ori        $t3, $t2, 0x50
/* DE5C 8000D25C ACCB0004 */  sw         $t3, 4($a2)
/* DE60 8000D260 8E020000 */  lw         $v0, ($s0)
/* DE64 8000D264 3C0CE600 */  lui        $t4, 0xe600
/* DE68 8000D268 24080006 */  addiu      $t0, $zero, 6
/* DE6C 8000D26C 244E0008 */  addiu      $t6, $v0, 8
/* DE70 8000D270 AE0E0000 */  sw         $t6, ($s0)
/* DE74 8000D274 AC400004 */  sw         $zero, 4($v0)
/* DE78 8000D278 AC4C0000 */  sw         $t4, ($v0)
/* DE7C 8000D27C 8E020000 */  lw         $v0, ($s0)
/* DE80 8000D280 3C0FF400 */  lui        $t7, 0xf400
/* DE84 8000D284 3C010707 */  lui        $at, 0x707
/* DE88 8000D288 244D0008 */  addiu      $t5, $v0, 8
/* DE8C 8000D28C AE0D0000 */  sw         $t5, ($s0)
/* DE90 8000D290 AC4F0000 */  sw         $t7, ($v0)
/* DE94 8000D294 94F80000 */  lhu        $t8, ($a3)
/* DE98 8000D298 3421C000 */  ori        $at, $at, 0xc000
/* DE9C 8000D29C 2719FFFF */  addiu      $t9, $t8, -1
/* DEA0 8000D2A0 00195080 */  sll        $t2, $t9, 2
/* DEA4 8000D2A4 314B0FFF */  andi       $t3, $t2, 0xfff
/* DEA8 8000D2A8 01617025 */  or         $t6, $t3, $at
/* DEAC 8000D2AC AC4E0004 */  sw         $t6, 4($v0)
/* DEB0 8000D2B0 8E020000 */  lw         $v0, ($s0)
/* DEB4 8000D2B4 3C0DE700 */  lui        $t5, 0xe700
/* DEB8 8000D2B8 244C0008 */  addiu      $t4, $v0, 8
/* DEBC 8000D2BC AE0C0000 */  sw         $t4, ($s0)
/* DEC0 8000D2C0 AC400004 */  sw         $zero, 4($v0)
/* DEC4 8000D2C4 AC4D0000 */  sw         $t5, ($v0)
/* DEC8 8000D2C8 8E090000 */  lw         $t1, ($s0)
/* DECC 8000D2CC 252F0008 */  addiu      $t7, $t1, 8
/* DED0 8000D2D0 AE0F0000 */  sw         $t7, ($s0)
/* DED4 8000D2D4 AD360000 */  sw         $s6, ($t1)
/* DED8 8000D2D8 94F80000 */  lhu        $t8, ($a3)
/* DEDC 8000D2DC 16F80003 */  bne        $s7, $t8, .L8000D2EC
/* DEE0 8000D2E0 00000000 */   nop       
/* DEE4 8000D2E4 10000001 */  b          .L8000D2EC
/* DEE8 8000D2E8 24080005 */   addiu     $t0, $zero, 5
.L8000D2EC:
/* DEEC 8000D2EC 3119000F */  andi       $t9, $t0, 0xf
/* DEF0 8000D2F0 00195380 */  sll        $t2, $t9, 0xe
/* DEF4 8000D2F4 354B0050 */  ori        $t3, $t2, 0x50
/* DEF8 8000D2F8 AD2B0004 */  sw         $t3, 4($t1)
/* DEFC 8000D2FC 8E020000 */  lw         $v0, ($s0)
/* DF00 8000D300 3C010007 */  lui        $at, 7
/* DF04 8000D304 3421C000 */  ori        $at, $at, 0xc000
/* DF08 8000D308 244E0008 */  addiu      $t6, $v0, 8
/* DF0C 8000D30C AE0E0000 */  sw         $t6, ($s0)
/* DF10 8000D310 AC5E0000 */  sw         $fp, ($v0)
/* DF14 8000D314 94EC0000 */  lhu        $t4, ($a3)
/* DF18 8000D318 258DFFFF */  addiu      $t5, $t4, -1
/* DF1C 8000D31C 000D7880 */  sll        $t7, $t5, 2
/* DF20 8000D320 31F80FFF */  andi       $t8, $t7, 0xfff
/* DF24 8000D324 0301C825 */  or         $t9, $t8, $at
/* DF28 8000D328 AC590004 */  sw         $t9, 4($v0)
/* DF2C 8000D32C 8E020000 */  lw         $v0, ($s0)
/* DF30 8000D330 3C058005 */  lui        $a1, 0x8005
/* DF34 8000D334 3C010008 */  lui        $at, 8
/* DF38 8000D338 244A0008 */  addiu      $t2, $v0, 8
/* DF3C 8000D33C AE0A0000 */  sw         $t2, ($s0)
/* DF40 8000D340 94A5C310 */  lhu        $a1, -0x3cf0($a1)
/* DF44 8000D344 00402025 */  or         $a0, $v0, $zero
/* DF48 8000D348 04A10004 */  bgez       $a1, .L8000D35C
/* DF4C 8000D34C 30AB00FF */   andi      $t3, $a1, 0xff
/* DF50 8000D350 11600002 */  beqz       $t3, .L8000D35C
/* DF54 8000D354 00000000 */   nop       
/* DF58 8000D358 256BFF00 */  addiu      $t3, $t3, -0x100
.L8000D35C:
/* DF5C 8000D35C 000B7080 */  sll        $t6, $t3, 2
/* DF60 8000D360 31CC0FFF */  andi       $t4, $t6, 0xfff
/* DF64 8000D364 019E6825 */  or         $t5, $t4, $fp
/* DF68 8000D368 AC8D0000 */  sw         $t5, ($a0)
/* DF6C 8000D36C 94EF0000 */  lhu        $t7, ($a3)
/* DF70 8000D370 01EBC021 */  addu       $t8, $t7, $t3
/* DF74 8000D374 0018C880 */  sll        $t9, $t8, 2
/* DF78 8000D378 332A0FFF */  andi       $t2, $t9, 0xfff
/* DF7C 8000D37C 01415825 */  or         $t3, $t2, $at
/* DF80 8000D380 AC8B0004 */  sw         $t3, 4($a0)
/* DF84 8000D384 8E020000 */  lw         $v0, ($s0)
/* DF88 8000D388 3C0C0600 */  lui        $t4, 0x600
/* DF8C 8000D38C 3C0D8008 */  lui        $t5, 0x8008
/* DF90 8000D390 244E0008 */  addiu      $t6, $v0, 8
/* DF94 8000D394 AE0E0000 */  sw         $t6, ($s0)
/* DF98 8000D398 AC4C0000 */  sw         $t4, ($v0)
/* DF9C 8000D39C 8DAD4F28 */  lw         $t5, 0x4f28($t5)
/* DFA0 8000D3A0 00147940 */  sll        $t7, $s4, 5
/* DFA4 8000D3A4 01AFC021 */  addu       $t8, $t5, $t7
/* DFA8 8000D3A8 8F190010 */  lw         $t9, 0x10($t8)
/* DFAC 8000D3AC AC590004 */  sw         $t9, 4($v0)
/* DFB0 8000D3B0 8EAA0000 */  lw         $t2, ($s5)
/* DFB4 8000D3B4 2673FFFF */  addiu      $s3, $s3, -1
/* DFB8 8000D3B8 254B0001 */  addiu      $t3, $t2, 1
/* DFBC 8000D3BC 1660FF5D */  bnez       $s3, .L8000D134
/* DFC0 8000D3C0 AEAB0000 */   sw        $t3, ($s5)
.L8000D3C4:
/* DFC4 8000D3C4 3C118008 */  lui        $s1, 0x8008
/* DFC8 8000D3C8 263128E8 */  addiu      $s1, $s1, 0x28e8
/* DFCC 8000D3CC 8E2E0000 */  lw         $t6, ($s1)
/* DFD0 8000D3D0 3C128008 */  lui        $s2, 0x8008
/* DFD4 8000D3D4 26522900 */  addiu      $s2, $s2, 0x2900
/* DFD8 8000D3D8 11C00023 */  beqz       $t6, .L8000D468
/* DFDC 8000D3DC 3C18B900 */   lui       $t8, 0xb900
/* DFE0 8000D3E0 8E020000 */  lw         $v0, ($s0)
/* DFE4 8000D3E4 3C0DE700 */  lui        $t5, 0xe700
/* DFE8 8000D3E8 3718031D */  ori        $t8, $t8, 0x31d
/* DFEC 8000D3EC 244C0008 */  addiu      $t4, $v0, 8
/* DFF0 8000D3F0 AE0C0000 */  sw         $t4, ($s0)
/* DFF4 8000D3F4 AC400004 */  sw         $zero, 4($v0)
/* DFF8 8000D3F8 AC4D0000 */  sw         $t5, ($v0)
/* DFFC 8000D3FC 8E020000 */  lw         $v0, ($s0)
/* E000 8000D400 3C190C18 */  lui        $t9, 0xc18
/* E004 8000D404 373949D8 */  ori        $t9, $t9, 0x49d8
/* E008 8000D408 244F0008 */  addiu      $t7, $v0, 8
/* E00C 8000D40C AE0F0000 */  sw         $t7, ($s0)
/* E010 8000D410 AC590004 */  sw         $t9, 4($v0)
/* E014 8000D414 AC580000 */  sw         $t8, ($v0)
/* E018 8000D418 8E020000 */  lw         $v0, ($s0)
/* E01C 8000D41C 3C0BBA00 */  lui        $t3, 0xba00
/* E020 8000D420 356B0C02 */  ori        $t3, $t3, 0xc02
/* E024 8000D424 244A0008 */  addiu      $t2, $v0, 8
/* E028 8000D428 AE0A0000 */  sw         $t2, ($s0)
/* E02C 8000D42C 240E2000 */  addiu      $t6, $zero, 0x2000
/* E030 8000D430 AC4E0004 */  sw         $t6, 4($v0)
/* E034 8000D434 AC4B0000 */  sw         $t3, ($v0)
/* E038 8000D438 3C0C8008 */  lui        $t4, 0x8008
/* E03C 8000D43C 25873888 */  addiu      $a3, $t4, 0x3888
/* E040 8000D440 AE470000 */  sw         $a3, ($s2)
/* E044 8000D444 8FA40058 */  lw         $a0, 0x58($sp)
/* E048 8000D448 8E250000 */  lw         $a1, ($s1)
/* E04C 8000D44C 0C0039DD */  jal        func_8000E774
/* E050 8000D450 24060011 */   addiu     $a2, $zero, 0x11
/* E054 8000D454 8FA40058 */  lw         $a0, 0x58($sp)
/* E058 8000D458 8E250000 */  lw         $a1, ($s1)
/* E05C 8000D45C 24060012 */  addiu      $a2, $zero, 0x12
/* E060 8000D460 0C0039DD */  jal        func_8000E774
/* E064 8000D464 8E470000 */   lw        $a3, ($s2)
.L8000D468:
/* E068 8000D468 3C068005 */  lui        $a2, 0x8005
/* E06C 8000D46C 24C6C2D0 */  addiu      $a2, $a2, -0x3d30
/* E070 8000D470 94CD0000 */  lhu        $t5, ($a2)
/* E074 8000D474 3C0BBA00 */  lui        $t3, 0xba00
/* E078 8000D478 25AF0001 */  addiu      $t7, $t5, 1
/* E07C 8000D47C A4CF0000 */  sh         $t7, ($a2)
/* E080 8000D480 8E020000 */  lw         $v0, ($s0)
/* E084 8000D484 3C19E700 */  lui        $t9, 0xe700
/* E088 8000D488 3C0F8005 */  lui        $t7, 0x8005
/* E08C 8000D48C 24580008 */  addiu      $t8, $v0, 8
/* E090 8000D490 AE180000 */  sw         $t8, ($s0)
/* E094 8000D494 AC400004 */  sw         $zero, 4($v0)
/* E098 8000D498 AC590000 */  sw         $t9, ($v0)
/* E09C 8000D49C 8E020000 */  lw         $v0, ($s0)
/* E0A0 8000D4A0 356B0C02 */  ori        $t3, $t3, 0xc02
/* E0A4 8000D4A4 240E2000 */  addiu      $t6, $zero, 0x2000
/* E0A8 8000D4A8 244A0008 */  addiu      $t2, $v0, 8
/* E0AC 8000D4AC AE0A0000 */  sw         $t2, ($s0)
/* E0B0 8000D4B0 AC4E0004 */  sw         $t6, 4($v0)
/* E0B4 8000D4B4 AC4B0000 */  sw         $t3, ($v0)
/* E0B8 8000D4B8 8E020000 */  lw         $v0, ($s0)
/* E0BC 8000D4BC 3C0DBA00 */  lui        $t5, 0xba00
/* E0C0 8000D4C0 35AD0E02 */  ori        $t5, $t5, 0xe02
/* E0C4 8000D4C4 244C0008 */  addiu      $t4, $v0, 8
/* E0C8 8000D4C8 AE0C0000 */  sw         $t4, ($s0)
/* E0CC 8000D4CC AC400004 */  sw         $zero, 4($v0)
/* E0D0 8000D4D0 AC4D0000 */  sw         $t5, ($v0)
/* E0D4 8000D4D4 95EFC310 */  lhu        $t7, -0x3cf0($t7)
/* E0D8 8000D4D8 3C018005 */  lui        $at, 0x8005
/* E0DC 8000D4DC D7B40028 */  ldc1       $f20, 0x28($sp)
/* E0E0 8000D4E0 25F80002 */  addiu      $t8, $t7, 2
/* E0E4 8000D4E4 A438C310 */  sh         $t8, -0x3cf0($at)
/* E0E8 8000D4E8 8FBF0054 */  lw         $ra, 0x54($sp)
/* E0EC 8000D4EC 8FB00030 */  lw         $s0, 0x30($sp)
/* E0F0 8000D4F0 8FB10034 */  lw         $s1, 0x34($sp)
/* E0F4 8000D4F4 8FB20038 */  lw         $s2, 0x38($sp)
/* E0F8 8000D4F8 8FB3003C */  lw         $s3, 0x3c($sp)
/* E0FC 8000D4FC 8FB40040 */  lw         $s4, 0x40($sp)
/* E100 8000D500 8FB50044 */  lw         $s5, 0x44($sp)
/* E104 8000D504 8FB60048 */  lw         $s6, 0x48($sp)
/* E108 8000D508 8FB7004C */  lw         $s7, 0x4c($sp)
/* E10C 8000D50C 8FBE0050 */  lw         $fp, 0x50($sp)
/* E110 8000D510 03E00008 */  jr         $ra
/* E114 8000D514 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8000D518
/* E118 8000D518 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* E11C 8000D51C AFB7003C */  sw         $s7, 0x3c($sp)
/* E120 8000D520 AFB60038 */  sw         $s6, 0x38($sp)
/* E124 8000D524 0080B025 */  or         $s6, $a0, $zero
/* E128 8000D528 00A0B825 */  or         $s7, $a1, $zero
/* E12C 8000D52C AFBF0044 */  sw         $ra, 0x44($sp)
/* E130 8000D530 AFBE0040 */  sw         $fp, 0x40($sp)
/* E134 8000D534 AFB50034 */  sw         $s5, 0x34($sp)
/* E138 8000D538 AFB40030 */  sw         $s4, 0x30($sp)
/* E13C 8000D53C AFB3002C */  sw         $s3, 0x2c($sp)
/* E140 8000D540 AFB20028 */  sw         $s2, 0x28($sp)
/* E144 8000D544 AFB10024 */  sw         $s1, 0x24($sp)
/* E148 8000D548 AFB00020 */  sw         $s0, 0x20($sp)
/* E14C 8000D54C 12C0010F */  beqz       $s6, .L8000D98C
/* E150 8000D550 3C1E8008 */   lui       $fp, 0x8008
/* E154 8000D554 3C158008 */  lui        $s5, 0x8008
/* E158 8000D558 3C148008 */  lui        $s4, 0x8008
/* E15C 8000D55C 3C138008 */  lui        $s3, 0x8008
/* E160 8000D560 26732C10 */  addiu      $s3, $s3, 0x2c10
/* E164 8000D564 269428FC */  addiu      $s4, $s4, 0x28fc
/* E168 8000D568 26B528E4 */  addiu      $s5, $s5, 0x28e4
/* E16C 8000D56C 27DEBAB8 */  addiu      $fp, $fp, -0x4548
/* E170 8000D570 96EE0000 */  lhu        $t6, ($s7)
.L8000D574:
/* E174 8000D574 3C188008 */  lui        $t8, 0x8008
/* E178 8000D578 8F184F24 */  lw         $t8, 0x4f24($t8)
/* E17C 8000D57C 000E7880 */  sll        $t7, $t6, 2
/* E180 8000D580 01EE7823 */  subu       $t7, $t7, $t6
/* E184 8000D584 000F78C0 */  sll        $t7, $t7, 3
/* E188 8000D588 01F88021 */  addu       $s0, $t7, $t8
/* E18C 8000D58C 96190016 */  lhu        $t9, 0x16($s0)
/* E190 8000D590 26F70002 */  addiu      $s7, $s7, 2
/* E194 8000D594 33281000 */  andi       $t0, $t9, 0x1000
/* E198 8000D598 5100001E */  beql       $t0, $zero, .L8000D614
/* E19C 8000D59C 96040016 */   lhu       $a0, 0x16($s0)
/* E1A0 8000D5A0 C6040000 */  lwc1       $f4, ($s0)
/* E1A4 8000D5A4 C7C60014 */  lwc1       $f6, 0x14($fp)
/* E1A8 8000D5A8 C6080004 */  lwc1       $f8, 4($s0)
/* E1AC 8000D5AC C7CA0018 */  lwc1       $f10, 0x18($fp)
/* E1B0 8000D5B0 46062001 */  sub.s      $f0, $f4, $f6
/* E1B4 8000D5B4 C6100008 */  lwc1       $f16, 8($s0)
/* E1B8 8000D5B8 C7D2001C */  lwc1       $f18, 0x1c($fp)
/* E1BC 8000D5BC 460A4081 */  sub.s      $f2, $f8, $f10
/* E1C0 8000D5C0 46000102 */  mul.s      $f4, $f0, $f0
/* E1C4 8000D5C4 46128381 */  sub.s      $f14, $f16, $f18
/* E1C8 8000D5C8 46021182 */  mul.s      $f6, $f2, $f2
/* E1CC 8000D5CC 46062200 */  add.s      $f8, $f4, $f6
/* E1D0 8000D5D0 460E7282 */  mul.s      $f10, $f14, $f14
/* E1D4 8000D5D4 0C00D3D8 */  jal        func_80034F60
/* E1D8 8000D5D8 460A4300 */   add.s     $f12, $f8, $f10
/* E1DC 8000D5DC 3C018008 */  lui        $at, 0x8008
/* E1E0 8000D5E0 C4304ED4 */  lwc1       $f16, 0x4ed4($at)
/* E1E4 8000D5E4 3C018008 */  lui        $at, 0x8008
/* E1E8 8000D5E8 4610003C */  c.lt.s     $f0, $f16
/* E1EC 8000D5EC 00000000 */  nop        
/* E1F0 8000D5F0 45020008 */  bc1fl      .L8000D614
/* E1F4 8000D5F4 96040016 */   lhu       $a0, 0x16($s0)
/* E1F8 8000D5F8 E4204ED4 */  swc1       $f0, 0x4ed4($at)
/* E1FC 8000D5FC 96090016 */  lhu        $t1, 0x16($s0)
/* E200 8000D600 3C018008 */  lui        $at, 0x8008
/* E204 8000D604 312A0F00 */  andi       $t2, $t1, 0xf00
/* E208 8000D608 000A5A03 */  sra        $t3, $t2, 8
/* E20C 8000D60C AC2B4ED8 */  sw         $t3, 0x4ed8($at)
/* E210 8000D610 96040016 */  lhu        $a0, 0x16($s0)
.L8000D614:
/* E214 8000D614 24010008 */  addiu      $at, $zero, 8
/* E218 8000D618 308C2000 */  andi       $t4, $a0, 0x2000
/* E21C 8000D61C 11800003 */  beqz       $t4, .L8000D62C
/* E220 8000D620 00801825 */   or        $v1, $a0, $zero
/* E224 8000D624 10000003 */  b          .L8000D634
/* E228 8000D628 00001825 */   or        $v1, $zero, $zero
.L8000D62C:
/* E22C 8000D62C 306D00FF */  andi       $t5, $v1, 0xff
/* E230 8000D630 01A01825 */  or         $v1, $t5, $zero
.L8000D634:
/* E234 8000D634 10600003 */  beqz       $v1, .L8000D644
/* E238 8000D638 308E4000 */   andi      $t6, $a0, 0x4000
/* E23C 8000D63C 1461001C */  bne        $v1, $at, .L8000D6B0
/* E240 8000D640 00601025 */   or        $v0, $v1, $zero
.L8000D644:
/* E244 8000D644 11C0000D */  beqz       $t6, .L8000D67C
/* E248 8000D648 3C028008 */   lui       $v0, 0x8008
/* E24C 8000D64C 244228F4 */  addiu      $v0, $v0, 0x28f4
/* E250 8000D650 8C4F0000 */  lw         $t7, ($v0)
/* E254 8000D654 3C038008 */  lui        $v1, 0x8008
/* E258 8000D658 246328DC */  addiu      $v1, $v1, 0x28dc
/* E25C 8000D65C ADF00000 */  sw         $s0, ($t7)
/* E260 8000D660 8C580000 */  lw         $t8, ($v0)
/* E264 8000D664 8C680000 */  lw         $t0, ($v1)
/* E268 8000D668 27190004 */  addiu      $t9, $t8, 4
/* E26C 8000D66C 25090001 */  addiu      $t1, $t0, 1
/* E270 8000D670 AC590000 */  sw         $t9, ($v0)
/* E274 8000D674 100000C2 */  b          .L8000D980
/* E278 8000D678 AC690000 */   sw        $t1, ($v1)
.L8000D67C:
/* E27C 8000D67C 3C028008 */  lui        $v0, 0x8008
/* E280 8000D680 244228F0 */  addiu      $v0, $v0, 0x28f0
/* E284 8000D684 8C4A0000 */  lw         $t2, ($v0)
/* E288 8000D688 3C038008 */  lui        $v1, 0x8008
/* E28C 8000D68C 246328D8 */  addiu      $v1, $v1, 0x28d8
/* E290 8000D690 AD500000 */  sw         $s0, ($t2)
/* E294 8000D694 8C4B0000 */  lw         $t3, ($v0)
/* E298 8000D698 8C6D0000 */  lw         $t5, ($v1)
/* E29C 8000D69C 256C0004 */  addiu      $t4, $t3, 4
/* E2A0 8000D6A0 25AE0001 */  addiu      $t6, $t5, 1
/* E2A4 8000D6A4 AC4C0000 */  sw         $t4, ($v0)
/* E2A8 8000D6A8 100000B5 */  b          .L8000D980
/* E2AC 8000D6AC AC6E0000 */   sw        $t6, ($v1)
.L8000D6B0:
/* E2B0 8000D6B0 28410004 */  slti       $at, $v0, 4
/* E2B4 8000D6B4 1020004B */  beqz       $at, .L8000D7E4
/* E2B8 8000D6B8 3C0F8008 */   lui       $t7, 0x8008
/* E2BC 8000D6BC 8DEF2908 */  lw         $t7, 0x2908($t7)
/* E2C0 8000D6C0 3C098008 */  lui        $t1, 0x8008
/* E2C4 8000D6C4 25292C70 */  addiu      $t1, $t1, 0x2c70
/* E2C8 8000D6C8 11E0000E */  beqz       $t7, .L8000D704
/* E2CC 8000D6CC 00038880 */   sll       $s1, $v1, 2
/* E2D0 8000D6D0 8E780000 */  lw         $t8, ($s3)
/* E2D4 8000D6D4 8E010000 */  lw         $at, ($s0)
/* E2D8 8000D6D8 AF010000 */  sw         $at, ($t8)
/* E2DC 8000D6DC 8E080004 */  lw         $t0, 4($s0)
/* E2E0 8000D6E0 AF080004 */  sw         $t0, 4($t8)
/* E2E4 8000D6E4 8E010008 */  lw         $at, 8($s0)
/* E2E8 8000D6E8 AF010008 */  sw         $at, 8($t8)
/* E2EC 8000D6EC 8E08000C */  lw         $t0, 0xc($s0)
/* E2F0 8000D6F0 AF08000C */  sw         $t0, 0xc($t8)
/* E2F4 8000D6F4 8E010010 */  lw         $at, 0x10($s0)
/* E2F8 8000D6F8 AF010010 */  sw         $at, 0x10($t8)
/* E2FC 8000D6FC 8E080014 */  lw         $t0, 0x14($s0)
/* E300 8000D700 AF080014 */  sw         $t0, 0x14($t8)
.L8000D704:
/* E304 8000D704 02299021 */  addu       $s2, $s1, $t1
/* E308 8000D708 96440000 */  lhu        $a0, ($s2)
/* E30C 8000D70C 3401A000 */  ori        $at, $zero, 0xa000
/* E310 8000D710 00812021 */  addu       $a0, $a0, $at
/* E314 8000D714 308AFFFF */  andi       $t2, $a0, 0xffff
/* E318 8000D718 0C00D464 */  jal        func_80035190
/* E31C 8000D71C 01402025 */   or        $a0, $t2, $zero
/* E320 8000D720 44829000 */  mtc1       $v0, $f18
/* E324 8000D724 3C018005 */  lui        $at, 0x8005
/* E328 8000D728 00310821 */  addu       $at, $at, $s1
/* E32C 8000D72C 46809120 */  cvt.s.w    $f4, $f18
/* E330 8000D730 C426C334 */  lwc1       $f6, -0x3ccc($at)
/* E334 8000D734 8E6B0000 */  lw         $t3, ($s3)
/* E338 8000D738 C56A0000 */  lwc1       $f10, ($t3)
/* E33C 8000D73C 46062203 */  div.s      $f8, $f4, $f6
/* E340 8000D740 460A4400 */  add.s      $f16, $f8, $f10
/* E344 8000D744 E6100000 */  swc1       $f16, ($s0)
/* E348 8000D748 96440000 */  lhu        $a0, ($s2)
/* E34C 8000D74C 24842000 */  addiu      $a0, $a0, 0x2000
/* E350 8000D750 308CFFFF */  andi       $t4, $a0, 0xffff
/* E354 8000D754 0C00D464 */  jal        func_80035190
/* E358 8000D758 01802025 */   or        $a0, $t4, $zero
/* E35C 8000D75C 44829000 */  mtc1       $v0, $f18
/* E360 8000D760 3C018005 */  lui        $at, 0x8005
/* E364 8000D764 00310821 */  addu       $at, $at, $s1
/* E368 8000D768 46809120 */  cvt.s.w    $f4, $f18
/* E36C 8000D76C C426C354 */  lwc1       $f6, -0x3cac($at)
/* E370 8000D770 8E6D0000 */  lw         $t5, ($s3)
/* E374 8000D774 C5AA0008 */  lwc1       $f10, 8($t5)
/* E378 8000D778 46062203 */  div.s      $f8, $f4, $f6
/* E37C 8000D77C 460A4400 */  add.s      $f16, $f8, $f10
/* E380 8000D780 E6100008 */  swc1       $f16, 8($s0)
/* E384 8000D784 0C00D464 */  jal        func_80035190
/* E388 8000D788 96440002 */   lhu       $a0, 2($s2)
/* E38C 8000D78C 44829000 */  mtc1       $v0, $f18
/* E390 8000D790 3C018005 */  lui        $at, 0x8005
/* E394 8000D794 00310821 */  addu       $at, $at, $s1
/* E398 8000D798 46809120 */  cvt.s.w    $f4, $f18
/* E39C 8000D79C C426C344 */  lwc1       $f6, -0x3cbc($at)
/* E3A0 8000D7A0 8E6E0000 */  lw         $t6, ($s3)
/* E3A4 8000D7A4 C5CA0004 */  lwc1       $f10, 4($t6)
/* E3A8 8000D7A8 46062203 */  div.s      $f8, $f4, $f6
/* E3AC 8000D7AC 460A4400 */  add.s      $f16, $f8, $f10
/* E3B0 8000D7B0 E6100004 */  swc1       $f16, 4($s0)
/* E3B4 8000D7B4 8E8F0000 */  lw         $t7, ($s4)
/* E3B8 8000D7B8 ADF00000 */  sw         $s0, ($t7)
/* E3BC 8000D7BC 8E990000 */  lw         $t9, ($s4)
/* E3C0 8000D7C0 8EA80000 */  lw         $t0, ($s5)
/* E3C4 8000D7C4 8E6A0000 */  lw         $t2, ($s3)
/* E3C8 8000D7C8 27380004 */  addiu      $t8, $t9, 4
/* E3CC 8000D7CC 25090001 */  addiu      $t1, $t0, 1
/* E3D0 8000D7D0 254B0018 */  addiu      $t3, $t2, 0x18
/* E3D4 8000D7D4 AE980000 */  sw         $t8, ($s4)
/* E3D8 8000D7D8 AEA90000 */  sw         $t1, ($s5)
/* E3DC 8000D7DC 10000068 */  b          .L8000D980
/* E3E0 8000D7E0 AE6B0000 */   sw        $t3, ($s3)
.L8000D7E4:
/* E3E4 8000D7E4 24010011 */  addiu      $at, $zero, 0x11
/* E3E8 8000D7E8 10410003 */  beq        $v0, $at, .L8000D7F8
/* E3EC 8000D7EC 24010012 */   addiu     $at, $zero, 0x12
/* E3F0 8000D7F0 5441000F */  bnel       $v0, $at, .L8000D830
/* E3F4 8000D7F4 24010010 */   addiu     $at, $zero, 0x10
.L8000D7F8:
/* E3F8 8000D7F8 3C028008 */  lui        $v0, 0x8008
/* E3FC 8000D7FC 24422900 */  addiu      $v0, $v0, 0x2900
/* E400 8000D800 8C4C0000 */  lw         $t4, ($v0)
/* E404 8000D804 3C038008 */  lui        $v1, 0x8008
/* E408 8000D808 246328E8 */  addiu      $v1, $v1, 0x28e8
/* E40C 8000D80C AD900000 */  sw         $s0, ($t4)
/* E410 8000D810 8C4D0000 */  lw         $t5, ($v0)
/* E414 8000D814 8C6F0000 */  lw         $t7, ($v1)
/* E418 8000D818 25AE0004 */  addiu      $t6, $t5, 4
/* E41C 8000D81C 25F90001 */  addiu      $t9, $t7, 1
/* E420 8000D820 AC4E0000 */  sw         $t6, ($v0)
/* E424 8000D824 10000056 */  b          .L8000D980
/* E428 8000D828 AC790000 */   sw        $t9, ($v1)
/* E42C 8000D82C 24010010 */  addiu      $at, $zero, 0x10
.L8000D830:
/* E430 8000D830 54410014 */  bnel       $v0, $at, .L8000D884
/* E434 8000D834 2401007F */   addiu     $at, $zero, 0x7f
/* E438 8000D838 3C028008 */  lui        $v0, 0x8008
/* E43C 8000D83C 244228F8 */  addiu      $v0, $v0, 0x28f8
/* E440 8000D840 8C580000 */  lw         $t8, ($v0)
/* E444 8000D844 3C038008 */  lui        $v1, 0x8008
/* E448 8000D848 3C048008 */  lui        $a0, 0x8008
/* E44C 8000D84C AF100000 */  sw         $s0, ($t8)
/* E450 8000D850 24844F38 */  addiu      $a0, $a0, 0x4f38
/* E454 8000D854 246328E0 */  addiu      $v1, $v1, 0x28e0
/* E458 8000D858 8C480000 */  lw         $t0, ($v0)
/* E45C 8000D85C 8C6A0000 */  lw         $t2, ($v1)
/* E460 8000D860 8C8C0000 */  lw         $t4, ($a0)
/* E464 8000D864 25090004 */  addiu      $t1, $t0, 4
/* E468 8000D868 254B0001 */  addiu      $t3, $t2, 1
/* E46C 8000D86C 258D0001 */  addiu      $t5, $t4, 1
/* E470 8000D870 AC490000 */  sw         $t1, ($v0)
/* E474 8000D874 AC6B0000 */  sw         $t3, ($v1)
/* E478 8000D878 10000041 */  b          .L8000D980
/* E47C 8000D87C AC8D0000 */   sw        $t5, ($a0)
/* E480 8000D880 2401007F */  addiu      $at, $zero, 0x7f
.L8000D884:
/* E484 8000D884 10410003 */  beq        $v0, $at, .L8000D894
/* E488 8000D888 24010080 */   addiu     $at, $zero, 0x80
/* E48C 8000D88C 5441000B */  bnel       $v0, $at, .L8000D8BC
/* E490 8000D890 24010081 */   addiu     $at, $zero, 0x81
.L8000D894:
/* E494 8000D894 8E8E0000 */  lw         $t6, ($s4)
/* E498 8000D898 ADD00000 */  sw         $s0, ($t6)
/* E49C 8000D89C 8E8F0000 */  lw         $t7, ($s4)
/* E4A0 8000D8A0 8EB80000 */  lw         $t8, ($s5)
/* E4A4 8000D8A4 25F90004 */  addiu      $t9, $t7, 4
/* E4A8 8000D8A8 27080001 */  addiu      $t0, $t8, 1
/* E4AC 8000D8AC AE990000 */  sw         $t9, ($s4)
/* E4B0 8000D8B0 10000033 */  b          .L8000D980
/* E4B4 8000D8B4 AEA80000 */   sw        $t0, ($s5)
/* E4B8 8000D8B8 24010081 */  addiu      $at, $zero, 0x81
.L8000D8BC:
/* E4BC 8000D8BC 14410007 */  bne        $v0, $at, .L8000D8DC
/* E4C0 8000D8C0 02003825 */   or        $a3, $s0, $zero
/* E4C4 8000D8C4 C60C0000 */  lwc1       $f12, ($s0)
/* E4C8 8000D8C8 C60E0004 */  lwc1       $f14, 4($s0)
/* E4CC 8000D8CC 0C006246 */  jal        func_80018918
/* E4D0 8000D8D0 8E060008 */   lw        $a2, 8($s0)
/* E4D4 8000D8D4 1000002B */  b          .L8000D984
/* E4D8 8000D8D8 26D6FFFF */   addiu     $s6, $s6, -1
.L8000D8DC:
/* E4DC 8000D8DC 24010083 */  addiu      $at, $zero, 0x83
/* E4E0 8000D8E0 54410006 */  bnel       $v0, $at, .L8000D8FC
/* E4E4 8000D8E4 24010084 */   addiu     $at, $zero, 0x84
/* E4E8 8000D8E8 0C003843 */  jal        func_8000E10C
/* E4EC 8000D8EC 02002025 */   or        $a0, $s0, $zero
/* E4F0 8000D8F0 10000024 */  b          .L8000D984
/* E4F4 8000D8F4 26D6FFFF */   addiu     $s6, $s6, -1
/* E4F8 8000D8F8 24010084 */  addiu      $at, $zero, 0x84
.L8000D8FC:
/* E4FC 8000D8FC 54410006 */  bnel       $v0, $at, .L8000D918
/* E500 8000D900 24010082 */   addiu     $at, $zero, 0x82
/* E504 8000D904 0C0038B0 */  jal        func_8000E2C0
/* E508 8000D908 02002025 */   or        $a0, $s0, $zero
/* E50C 8000D90C 1000001D */  b          .L8000D984
/* E510 8000D910 26D6FFFF */   addiu     $s6, $s6, -1
/* E514 8000D914 24010082 */  addiu      $at, $zero, 0x82
.L8000D918:
/* E518 8000D918 5441000A */  bnel       $v0, $at, .L8000D944
/* E51C 8000D91C 28410040 */   slti      $at, $v0, 0x40
/* E520 8000D920 C60C0000 */  lwc1       $f12, ($s0)
/* E524 8000D924 C60E0004 */  lwc1       $f14, 4($s0)
/* E528 8000D928 8E060008 */  lw         $a2, 8($s0)
/* E52C 8000D92C 8E07000C */  lw         $a3, 0xc($s0)
/* E530 8000D930 0C003906 */  jal        func_8000E418
/* E534 8000D934 AFB00010 */   sw        $s0, 0x10($sp)
/* E538 8000D938 10000012 */  b          .L8000D984
/* E53C 8000D93C 26D6FFFF */   addiu     $s6, $s6, -1
/* E540 8000D940 28410040 */  slti       $at, $v0, 0x40
.L8000D944:
/* E544 8000D944 1420000E */  bnez       $at, .L8000D980
/* E548 8000D948 28410046 */   slti      $at, $v0, 0x46
/* E54C 8000D94C 1020000C */  beqz       $at, .L8000D980
/* E550 8000D950 3C028008 */   lui       $v0, 0x8008
/* E554 8000D954 24422904 */  addiu      $v0, $v0, 0x2904
/* E558 8000D958 8C490000 */  lw         $t1, ($v0)
/* E55C 8000D95C 3C0C8008 */  lui        $t4, 0x8008
/* E560 8000D960 3C018008 */  lui        $at, 0x8008
/* E564 8000D964 AD300000 */  sw         $s0, ($t1)
/* E568 8000D968 8C4A0000 */  lw         $t2, ($v0)
/* E56C 8000D96C 254B0004 */  addiu      $t3, $t2, 4
/* E570 8000D970 AC4B0000 */  sw         $t3, ($v0)
/* E574 8000D974 8D8C28EC */  lw         $t4, 0x28ec($t4)
/* E578 8000D978 258D0001 */  addiu      $t5, $t4, 1
/* E57C 8000D97C AC2D28EC */  sw         $t5, 0x28ec($at)
.L8000D980:
/* E580 8000D980 26D6FFFF */  addiu      $s6, $s6, -1
.L8000D984:
/* E584 8000D984 56C0FEFB */  bnel       $s6, $zero, .L8000D574
/* E588 8000D988 96EE0000 */   lhu       $t6, ($s7)
.L8000D98C:
/* E58C 8000D98C 8FBF0044 */  lw         $ra, 0x44($sp)
/* E590 8000D990 8FB00020 */  lw         $s0, 0x20($sp)
/* E594 8000D994 8FB10024 */  lw         $s1, 0x24($sp)
/* E598 8000D998 8FB20028 */  lw         $s2, 0x28($sp)
/* E59C 8000D99C 8FB3002C */  lw         $s3, 0x2c($sp)
/* E5A0 8000D9A0 8FB40030 */  lw         $s4, 0x30($sp)
/* E5A4 8000D9A4 8FB50034 */  lw         $s5, 0x34($sp)
/* E5A8 8000D9A8 8FB60038 */  lw         $s6, 0x38($sp)
/* E5AC 8000D9AC 8FB7003C */  lw         $s7, 0x3c($sp)
/* E5B0 8000D9B0 8FBE0040 */  lw         $fp, 0x40($sp)
/* E5B4 8000D9B4 03E00008 */  jr         $ra
/* E5B8 8000D9B8 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8000D9BC
/* E5BC 8000D9BC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E5C0 8000D9C0 3C028008 */  lui        $v0, 0x8008
/* E5C4 8000D9C4 3C088008 */  lui        $t0, 0x8008
/* E5C8 8000D9C8 44800000 */  mtc1       $zero, $f0
/* E5CC 8000D9CC 2508B2F8 */  addiu      $t0, $t0, -0x4d08
/* E5D0 8000D9D0 24426DC0 */  addiu      $v0, $v0, 0x6dc0
/* E5D4 8000D9D4 AFBF0024 */  sw         $ra, 0x24($sp)
/* E5D8 8000D9D8 AFA40028 */  sw         $a0, 0x28($sp)
/* E5DC 8000D9DC 3C013F80 */  lui        $at, 0x3f80
/* E5E0 8000D9E0 44812000 */  mtc1       $at, $f4
/* E5E4 8000D9E4 3C014120 */  lui        $at, 0x4120
/* E5E8 8000D9E8 44815000 */  mtc1       $at, $f10
/* E5EC 8000D9EC C4480010 */  lwc1       $f8, 0x10($v0)
/* E5F0 8000D9F0 8D0F0000 */  lw         $t7, ($t0)
/* E5F4 8000D9F4 8FAE0028 */  lw         $t6, 0x28($sp)
/* E5F8 8000D9F8 460A4401 */  sub.s      $f16, $f8, $f10
/* E5FC 8000D9FC C446000C */  lwc1       $f6, 0xc($v0)
/* E600 8000DA00 C4520014 */  lwc1       $f18, 0x14($v0)
/* E604 8000DA04 000FC180 */  sll        $t8, $t7, 6
/* E608 8000DA08 44050000 */  mfc1       $a1, $f0
/* E60C 8000DA0C 44060000 */  mfc1       $a2, $f0
/* E610 8000DA10 44070000 */  mfc1       $a3, $f0
/* E614 8000DA14 01D82021 */  addu       $a0, $t6, $t8
/* E618 8000DA18 248400C0 */  addiu      $a0, $a0, 0xc0
/* E61C 8000DA1C E7B00018 */  swc1       $f16, 0x18($sp)
/* E620 8000DA20 E7A40010 */  swc1       $f4, 0x10($sp)
/* E624 8000DA24 E7A60014 */  swc1       $f6, 0x14($sp)
/* E628 8000DA28 0C008D40 */  jal        func_80023500
/* E62C 8000DA2C E7B2001C */   swc1      $f18, 0x1c($sp)
/* E630 8000DA30 3C038008 */  lui        $v1, 0x8008
/* E634 8000DA34 3C088008 */  lui        $t0, 0x8008
/* E638 8000DA38 2508B2F8 */  addiu      $t0, $t0, -0x4d08
/* E63C 8000DA3C 2463B2FC */  addiu      $v1, $v1, -0x4d04
/* E640 8000DA40 8C620000 */  lw         $v0, ($v1)
/* E644 8000DA44 3C090102 */  lui        $t1, 0x102
/* E648 8000DA48 35290040 */  ori        $t1, $t1, 0x40
/* E64C 8000DA4C 24590008 */  addiu      $t9, $v0, 8
/* E650 8000DA50 AC790000 */  sw         $t9, ($v1)
/* E654 8000DA54 AC490000 */  sw         $t1, ($v0)
/* E658 8000DA58 8D0A0000 */  lw         $t2, ($t0)
/* E65C 8000DA5C 3C0D0200 */  lui        $t5, 0x200
/* E660 8000DA60 25AD0000 */  addiu      $t5, $t5, 0
/* E664 8000DA64 000A5980 */  sll        $t3, $t2, 6
/* E668 8000DA68 256C00C0 */  addiu      $t4, $t3, 0xc0
/* E66C 8000DA6C 018D7821 */  addu       $t7, $t4, $t5
/* E670 8000DA70 AC4F0004 */  sw         $t7, 4($v0)
/* E674 8000DA74 8D0E0000 */  lw         $t6, ($t0)
/* E678 8000DA78 3C09FB00 */  lui        $t1, 0xfb00
/* E67C 8000DA7C 25D80001 */  addiu      $t8, $t6, 1
/* E680 8000DA80 AD180000 */  sw         $t8, ($t0)
/* E684 8000DA84 8C620000 */  lw         $v0, ($v1)
/* E688 8000DA88 3C0D8008 */  lui        $t5, 0x8008
/* E68C 8000DA8C 3C0A8008 */  lui        $t2, 0x8008
/* E690 8000DA90 24590008 */  addiu      $t9, $v0, 8
/* E694 8000DA94 AC790000 */  sw         $t9, ($v1)
/* E698 8000DA98 AC490000 */  sw         $t1, ($v0)
/* E69C 8000DA9C 8DAD5BB4 */  lw         $t5, 0x5bb4($t5)
/* E6A0 8000DAA0 3C198008 */  lui        $t9, 0x8008
/* E6A4 8000DAA4 8F395BB8 */  lw         $t9, 0x5bb8($t9)
/* E6A8 8000DAA8 8D4B5BB0 */  lw         $t3, 0x5bb0($t2)
/* E6AC 8000DAAC 31AF00FF */  andi       $t7, $t5, 0xff
/* E6B0 8000DAB0 000F7400 */  sll        $t6, $t7, 0x10
/* E6B4 8000DAB4 332900FF */  andi       $t1, $t9, 0xff
/* E6B8 8000DAB8 000B6600 */  sll        $t4, $t3, 0x18
/* E6BC 8000DABC 018EC025 */  or         $t8, $t4, $t6
/* E6C0 8000DAC0 00095200 */  sll        $t2, $t1, 8
/* E6C4 8000DAC4 030A5825 */  or         $t3, $t8, $t2
/* E6C8 8000DAC8 356D00FF */  ori        $t5, $t3, 0xff
/* E6CC 8000DACC AC4D0004 */  sw         $t5, 4($v0)
/* E6D0 8000DAD0 8C620000 */  lw         $v0, ($v1)
/* E6D4 8000DAD4 3C0C0600 */  lui        $t4, 0x600
/* E6D8 8000DAD8 3C0E8008 */  lui        $t6, 0x8008
/* E6DC 8000DADC 244F0008 */  addiu      $t7, $v0, 8
/* E6E0 8000DAE0 AC6F0000 */  sw         $t7, ($v1)
/* E6E4 8000DAE4 AC4C0000 */  sw         $t4, ($v0)
/* E6E8 8000DAE8 8DCE59E4 */  lw         $t6, 0x59e4($t6)
/* E6EC 8000DAEC 3C188006 */  lui        $t8, 0x8006
/* E6F0 8000DAF0 8DD9001C */  lw         $t9, 0x1c($t6)
/* E6F4 8000DAF4 001948C0 */  sll        $t1, $t9, 3
/* E6F8 8000DAF8 0309C021 */  addu       $t8, $t8, $t1
/* E6FC 8000DAFC 8F18EFAC */  lw         $t8, -0x1054($t8)
/* E700 8000DB00 AC580004 */  sw         $t8, 4($v0)
/* E704 8000DB04 8FBF0024 */  lw         $ra, 0x24($sp)
/* E708 8000DB08 03E00008 */  jr         $ra
/* E70C 8000DB0C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000DB10
/* E710 8000DB10 3C028008 */  lui        $v0, 0x8008
/* E714 8000DB14 24424E60 */  addiu      $v0, $v0, 0x4e60
/* E718 8000DB18 24040003 */  addiu      $a0, $zero, 3
.L8000DB1C:
/* E71C 8000DB1C 00801825 */  or         $v1, $a0, $zero
/* E720 8000DB20 AC400000 */  sw         $zero, ($v0)
/* E724 8000DB24 2442001C */  addiu      $v0, $v0, 0x1c
/* E728 8000DB28 1480FFFC */  bnez       $a0, .L8000DB1C
/* E72C 8000DB2C 2484FFFF */   addiu     $a0, $a0, -1
/* E730 8000DB30 03E00008 */  jr         $ra
/* E734 8000DB34 00000000 */   nop       

glabel func_8000DB38
/* E738 8000DB38 3C028008 */  lui        $v0, 0x8008
/* E73C 8000DB3C 24030004 */  addiu      $v1, $zero, 4
/* E740 8000DB40 24424E60 */  addiu      $v0, $v0, 0x4e60
.L8000DB44:
/* E744 8000DB44 8C4E0000 */  lw         $t6, ($v0)
/* E748 8000DB48 51C00007 */  beql       $t6, $zero, .L8000DB68
/* E74C 8000DB4C 2463FFFF */   addiu     $v1, $v1, -1
/* E750 8000DB50 8C4F0010 */  lw         $t7, 0x10($v0)
/* E754 8000DB54 148F0003 */  bne        $a0, $t7, .L8000DB64
/* E758 8000DB58 24180005 */   addiu     $t8, $zero, 5
/* E75C 8000DB5C 10000004 */  b          .L8000DB70
/* E760 8000DB60 03031823 */   subu      $v1, $t8, $v1
.L8000DB64:
/* E764 8000DB64 2463FFFF */  addiu      $v1, $v1, -1
.L8000DB68:
/* E768 8000DB68 1460FFF6 */  bnez       $v1, .L8000DB44
/* E76C 8000DB6C 2442001C */   addiu     $v0, $v0, 0x1c
.L8000DB70:
/* E770 8000DB70 00601025 */  or         $v0, $v1, $zero
/* E774 8000DB74 03E00008 */  jr         $ra
/* E778 8000DB78 00000000 */   nop       

glabel func_8000DB7C
/* E77C 8000DB7C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* E780 8000DB80 3C0E8008 */  lui        $t6, 0x8008
/* E784 8000DB84 8DCE4E60 */  lw         $t6, 0x4e60($t6)
/* E788 8000DB88 3C038008 */  lui        $v1, 0x8008
/* E78C 8000DB8C 24020003 */  addiu      $v0, $zero, 3
/* E790 8000DB90 11C00007 */  beqz       $t6, .L8000DBB0
/* E794 8000DB94 24634E60 */   addiu     $v1, $v1, 0x4e60
/* E798 8000DB98 2442FFFF */  addiu      $v0, $v0, -1
.L8000DB9C:
/* E79C 8000DB9C 10400004 */  beqz       $v0, .L8000DBB0
/* E7A0 8000DBA0 2463001C */   addiu     $v1, $v1, 0x1c
/* E7A4 8000DBA4 8C6F0000 */  lw         $t7, ($v1)
/* E7A8 8000DBA8 55E0FFFC */  bnel       $t7, $zero, .L8000DB9C
/* E7AC 8000DBAC 2442FFFF */   addiu     $v0, $v0, -1
.L8000DBB0:
/* E7B0 8000DBB0 44800000 */  mtc1       $zero, $f0
/* E7B4 8000DBB4 AC640004 */  sw         $a0, 4($v1)
/* E7B8 8000DBB8 AC650008 */  sw         $a1, 8($v1)
/* E7BC 8000DBBC AC66000C */  sw         $a2, 0xc($v1)
/* E7C0 8000DBC0 AC670010 */  sw         $a3, 0x10($v1)
/* E7C4 8000DBC4 E4600018 */  swc1       $f0, 0x18($v1)
/* E7C8 8000DBC8 1080001C */  beqz       $a0, .L8000DC3C
/* E7CC 8000DBCC E4600014 */   swc1      $f0, 0x14($v1)
/* E7D0 8000DBD0 00061203 */  sra        $v0, $a2, 8
/* E7D4 8000DBD4 3058000F */  andi       $t8, $v0, 0xf
/* E7D8 8000DBD8 24010002 */  addiu      $at, $zero, 2
/* E7DC 8000DBDC 13010007 */  beq        $t8, $at, .L8000DBFC
/* E7E0 8000DBE0 24010003 */   addiu     $at, $zero, 3
/* E7E4 8000DBE4 13010005 */  beq        $t8, $at, .L8000DBFC
/* E7E8 8000DBE8 24010004 */   addiu     $at, $zero, 4
/* E7EC 8000DBEC 1301000D */  beq        $t8, $at, .L8000DC24
/* E7F0 8000DBF0 3C028005 */   lui       $v0, 0x8005
/* E7F4 8000DBF4 1000000C */  b          .L8000DC28
/* E7F8 8000DBF8 8FA20004 */   lw        $v0, 4($sp)
.L8000DBFC:
/* E7FC 8000DBFC 8C79000C */  lw         $t9, 0xc($v1)
/* E800 8000DC00 3C028005 */  lui        $v0, 0x8005
/* E804 8000DC04 33280001 */  andi       $t0, $t9, 1
/* E808 8000DC08 11000004 */  beqz       $t0, .L8000DC1C
/* E80C 8000DC0C 00000000 */   nop       
/* E810 8000DC10 3C028005 */  lui        $v0, 0x8005
/* E814 8000DC14 10000004 */  b          .L8000DC28
/* E818 8000DC18 244262E0 */   addiu     $v0, $v0, 0x62e0
.L8000DC1C:
/* E81C 8000DC1C 10000002 */  b          .L8000DC28
/* E820 8000DC20 24425D58 */   addiu     $v0, $v0, 0x5d58
.L8000DC24:
/* E824 8000DC24 24426368 */  addiu      $v0, $v0, 0x6368
.L8000DC28:
/* E828 8000DC28 94490006 */  lhu        $t1, 6($v0)
/* E82C 8000DC2C 01255023 */  subu       $t2, $t1, $a1
/* E830 8000DC30 254B0001 */  addiu      $t3, $t2, 1
/* E834 8000DC34 10000003 */  b          .L8000DC44
/* E838 8000DC38 AC6B0000 */   sw        $t3, ($v1)
.L8000DC3C:
/* E83C 8000DC3C 240C0007 */  addiu      $t4, $zero, 7
/* E840 8000DC40 AC6C0000 */  sw         $t4, ($v1)
.L8000DC44:
/* E844 8000DC44 03E00008 */  jr         $ra
/* E848 8000DC48 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8000DC4C
/* E84C 8000DC4C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* E850 8000DC50 AFBF003C */  sw         $ra, 0x3c($sp)
/* E854 8000DC54 AFBE0038 */  sw         $fp, 0x38($sp)
/* E858 8000DC58 AFB70034 */  sw         $s7, 0x34($sp)
/* E85C 8000DC5C AFB60030 */  sw         $s6, 0x30($sp)
/* E860 8000DC60 AFB5002C */  sw         $s5, 0x2c($sp)
/* E864 8000DC64 AFB40028 */  sw         $s4, 0x28($sp)
/* E868 8000DC68 AFB30024 */  sw         $s3, 0x24($sp)
/* E86C 8000DC6C AFB20020 */  sw         $s2, 0x20($sp)
/* E870 8000DC70 AFB1001C */  sw         $s1, 0x1c($sp)
/* E874 8000DC74 AFB00018 */  sw         $s0, 0x18($sp)
/* E878 8000DC78 3C108008 */  lui        $s0, 0x8008
/* E87C 8000DC7C 3C1E8005 */  lui        $fp, 0x8005
/* E880 8000DC80 3C138008 */  lui        $s3, 0x8008
/* E884 8000DC84 24110004 */  addiu      $s1, $zero, 4
/* E888 8000DC88 26104E60 */  addiu      $s0, $s0, 0x4e60
/* E88C 8000DC8C 26732C48 */  addiu      $s3, $s3, 0x2c48
/* E890 8000DC90 27DE6368 */  addiu      $fp, $fp, 0x6368
/* E894 8000DC94 24170004 */  addiu      $s7, $zero, 4
/* E898 8000DC98 24160003 */  addiu      $s6, $zero, 3
/* E89C 8000DC9C 24150002 */  addiu      $s5, $zero, 2
/* E8A0 8000DCA0 24140001 */  addiu      $s4, $zero, 1
/* E8A4 8000DCA4 8FB20044 */  lw         $s2, 0x44($sp)
.L8000DCA8:
/* E8A8 8000DCA8 8E030000 */  lw         $v1, ($s0)
/* E8AC 8000DCAC 50600031 */  beql       $v1, $zero, .L8000DD74
/* E8B0 8000DCB0 2631FFFF */   addiu     $s1, $s1, -1
/* E8B4 8000DCB4 8E020004 */  lw         $v0, 4($s0)
/* E8B8 8000DCB8 246EFFFF */  addiu      $t6, $v1, -1
/* E8BC 8000DCBC 10400005 */  beqz       $v0, .L8000DCD4
/* E8C0 8000DCC0 00000000 */   nop       
/* E8C4 8000DCC4 5054000C */  beql       $v0, $s4, .L8000DCF8
/* E8C8 8000DCC8 8E04000C */   lw        $a0, 0xc($s0)
/* E8CC 8000DCCC 10000029 */  b          .L8000DD74
/* E8D0 8000DCD0 2631FFFF */   addiu     $s1, $s1, -1
.L8000DCD4:
/* E8D4 8000DCD4 15C00026 */  bnez       $t6, .L8000DD70
/* E8D8 8000DCD8 AE0E0000 */   sw        $t6, ($s0)
/* E8DC 8000DCDC 8E190004 */  lw         $t9, 4($s0)
/* E8E0 8000DCE0 24180050 */  addiu      $t8, $zero, 0x50
/* E8E4 8000DCE4 AE180000 */  sw         $t8, ($s0)
/* E8E8 8000DCE8 27280001 */  addiu      $t0, $t9, 1
/* E8EC 8000DCEC 10000020 */  b          .L8000DD70
/* E8F0 8000DCF0 AE080004 */   sw        $t0, 4($s0)
/* E8F4 8000DCF4 8E04000C */  lw         $a0, 0xc($s0)
.L8000DCF8:
/* E8F8 8000DCF8 2469FFFF */  addiu      $t1, $v1, -1
/* E8FC 8000DCFC AE090000 */  sw         $t1, ($s0)
/* E900 8000DD00 00041203 */  sra        $v0, $a0, 8
/* E904 8000DD04 304A000F */  andi       $t2, $v0, 0xf
/* E908 8000DD08 11550007 */  beq        $t2, $s5, .L8000DD28
/* E90C 8000DD0C 308B0001 */   andi      $t3, $a0, 1
/* E910 8000DD10 11560005 */  beq        $t2, $s6, .L8000DD28
/* E914 8000DD14 00000000 */   nop       
/* E918 8000DD18 5157000B */  beql       $t2, $s7, .L8000DD48
/* E91C 8000DD1C 03C09025 */   or        $s2, $fp, $zero
/* E920 8000DD20 1000000A */  b          .L8000DD4C
/* E924 8000DD24 8E060008 */   lw        $a2, 8($s0)
.L8000DD28:
/* E928 8000DD28 11600004 */  beqz       $t3, .L8000DD3C
/* E92C 8000DD2C 3C128005 */   lui       $s2, 0x8005
/* E930 8000DD30 3C128005 */  lui        $s2, 0x8005
/* E934 8000DD34 10000004 */  b          .L8000DD48
/* E938 8000DD38 265262E0 */   addiu     $s2, $s2, 0x62e0
.L8000DD3C:
/* E93C 8000DD3C 10000002 */  b          .L8000DD48
/* E940 8000DD40 26525D58 */   addiu     $s2, $s2, 0x5d58
/* E944 8000DD44 03C09025 */  or         $s2, $fp, $zero
.L8000DD48:
/* E948 8000DD48 8E060008 */  lw         $a2, 8($s0)
.L8000DD4C:
/* E94C 8000DD4C 02402025 */  or         $a0, $s2, $zero
/* E950 8000DD50 02602825 */  or         $a1, $s3, $zero
/* E954 8000DD54 24CC0001 */  addiu      $t4, $a2, 1
/* E958 8000DD58 0C008AD0 */  jal        func_80022B40
/* E95C 8000DD5C AE0C0008 */   sw        $t4, 8($s0)
/* E960 8000DD60 C6640000 */  lwc1       $f4, ($s3)
/* E964 8000DD64 E6040014 */  swc1       $f4, 0x14($s0)
/* E968 8000DD68 C666000C */  lwc1       $f6, 0xc($s3)
/* E96C 8000DD6C E6060018 */  swc1       $f6, 0x18($s0)
.L8000DD70:
/* E970 8000DD70 2631FFFF */  addiu      $s1, $s1, -1
.L8000DD74:
/* E974 8000DD74 1620FFCC */  bnez       $s1, .L8000DCA8
/* E978 8000DD78 2610001C */   addiu     $s0, $s0, 0x1c
/* E97C 8000DD7C AFB20044 */  sw         $s2, 0x44($sp)
/* E980 8000DD80 8FBF003C */  lw         $ra, 0x3c($sp)
/* E984 8000DD84 8FB00018 */  lw         $s0, 0x18($sp)
/* E988 8000DD88 8FB1001C */  lw         $s1, 0x1c($sp)
/* E98C 8000DD8C 8FB20020 */  lw         $s2, 0x20($sp)
/* E990 8000DD90 8FB30024 */  lw         $s3, 0x24($sp)
/* E994 8000DD94 8FB40028 */  lw         $s4, 0x28($sp)
/* E998 8000DD98 8FB5002C */  lw         $s5, 0x2c($sp)
/* E99C 8000DD9C 8FB60030 */  lw         $s6, 0x30($sp)
/* E9A0 8000DDA0 8FB70034 */  lw         $s7, 0x34($sp)
/* E9A4 8000DDA4 8FBE0038 */  lw         $fp, 0x38($sp)
/* E9A8 8000DDA8 03E00008 */  jr         $ra
/* E9AC 8000DDAC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8000DDB0
/* E9B0 8000DDB0 27BDFF00 */  addiu      $sp, $sp, -0x100
/* E9B4 8000DDB4 AFB5006C */  sw         $s5, 0x6c($sp)
/* E9B8 8000DDB8 AFB40068 */  sw         $s4, 0x68($sp)
/* E9BC 8000DDBC 00A0A025 */  or         $s4, $a1, $zero
/* E9C0 8000DDC0 00E0A825 */  or         $s5, $a3, $zero
/* E9C4 8000DDC4 AFBF007C */  sw         $ra, 0x7c($sp)
/* E9C8 8000DDC8 AFBE0078 */  sw         $fp, 0x78($sp)
/* E9CC 8000DDCC AFB70074 */  sw         $s7, 0x74($sp)
/* E9D0 8000DDD0 AFB60070 */  sw         $s6, 0x70($sp)
/* E9D4 8000DDD4 AFB30064 */  sw         $s3, 0x64($sp)
/* E9D8 8000DDD8 AFB20060 */  sw         $s2, 0x60($sp)
/* E9DC 8000DDDC AFB1005C */  sw         $s1, 0x5c($sp)
/* E9E0 8000DDE0 AFB00058 */  sw         $s0, 0x58($sp)
/* E9E4 8000DDE4 F7BE0050 */  sdc1       $f30, 0x50($sp)
/* E9E8 8000DDE8 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* E9EC 8000DDEC F7BA0040 */  sdc1       $f26, 0x40($sp)
/* E9F0 8000DDF0 F7B80038 */  sdc1       $f24, 0x38($sp)
/* E9F4 8000DDF4 F7B60030 */  sdc1       $f22, 0x30($sp)
/* E9F8 8000DDF8 F7B40028 */  sdc1       $f20, 0x28($sp)
/* E9FC 8000DDFC AFA40100 */  sw         $a0, 0x100($sp)
/* EA00 8000DE00 AFA60108 */  sw         $a2, 0x108($sp)
/* EA04 8000DE04 3C0E8008 */  lui        $t6, 0x8008
/* EA08 8000DE08 8DCE4F18 */  lw         $t6, 0x4f18($t6)
/* EA0C 8000DE0C 8FAF0108 */  lw         $t7, 0x108($sp)
/* EA10 8000DE10 00009825 */  or         $s3, $zero, $zero
/* EA14 8000DE14 8DC30020 */  lw         $v1, 0x20($t6)
/* EA18 8000DE18 000FC0C0 */  sll        $t8, $t7, 3
/* EA1C 8000DE1C 3C018007 */  lui        $at, 0x8007
/* EA20 8000DE20 00781021 */  addu       $v0, $v1, $t8
/* EA24 8000DE24 8C590000 */  lw         $t9, ($v0)
/* EA28 8000DE28 27BE00B0 */  addiu      $fp, $sp, 0xb0
/* EA2C 8000DE2C 3C170600 */  lui        $s7, 0x600
/* EA30 8000DE30 AFB900A4 */  sw         $t9, 0xa4($sp)
/* EA34 8000DE34 8C480004 */  lw         $t0, 4($v0)
/* EA38 8000DE38 3C168008 */  lui        $s6, 0x8008
/* EA3C 8000DE3C 128000A1 */  beqz       $s4, .L8000E0C4
/* EA40 8000DE40 AFA800A0 */   sw        $t0, 0xa0($sp)
/* EA44 8000DE44 D43E1208 */  ldc1       $f30, 0x1208($at)
/* EA48 8000DE48 3C018007 */  lui        $at, 0x8007
/* EA4C 8000DE4C D43A1210 */  ldc1       $f26, 0x1210($at)
/* EA50 8000DE50 3C018007 */  lui        $at, 0x8007
/* EA54 8000DE54 3C128008 */  lui        $s2, 0x8008
/* EA58 8000DE58 3C118008 */  lui        $s1, 0x8008
/* EA5C 8000DE5C 4480E000 */  mtc1       $zero, $f28
/* EA60 8000DE60 2631B2FC */  addiu      $s1, $s1, -0x4d04
/* EA64 8000DE64 2652B2F8 */  addiu      $s2, $s2, -0x4d08
/* EA68 8000DE68 D4381218 */  ldc1       $f24, 0x1218($at)
/* EA6C 8000DE6C 26D66DC0 */  addiu      $s6, $s6, 0x6dc0
/* EA70 8000DE70 8EB00000 */  lw         $s0, ($s5)
.L8000DE74:
/* EA74 8000DE74 8FA90108 */  lw         $t1, 0x108($sp)
/* EA78 8000DE78 26B50004 */  addiu      $s5, $s5, 4
/* EA7C 8000DE7C 860A0014 */  lh         $t2, 0x14($s0)
/* EA80 8000DE80 552A008E */  bnel       $t1, $t2, .L8000E0BC
/* EA84 8000DE84 2694FFFF */   addiu     $s4, $s4, -1
/* EA88 8000DE88 C6040000 */  lwc1       $f4, ($s0)
/* EA8C 8000DE8C C6C6000C */  lwc1       $f6, 0xc($s6)
/* EA90 8000DE90 C6080008 */  lwc1       $f8, 8($s0)
/* EA94 8000DE94 C6CA0014 */  lwc1       $f10, 0x14($s6)
/* EA98 8000DE98 46062501 */  sub.s      $f20, $f4, $f6
/* EA9C 8000DE9C 460A4581 */  sub.s      $f22, $f8, $f10
/* EAA0 8000DEA0 4614A402 */  mul.s      $f16, $f20, $f20
/* EAA4 8000DEA4 00000000 */  nop        
/* EAA8 8000DEA8 4616B482 */  mul.s      $f18, $f22, $f22
/* EAAC 8000DEAC 0C00D3D8 */  jal        func_80034F60
/* EAB0 8000DEB0 46128300 */   add.s     $f12, $f16, $f18
/* EAB4 8000DEB4 3C018007 */  lui        $at, 0x8007
/* EAB8 8000DEB8 C4241220 */  lwc1       $f4, 0x1220($at)
/* EABC 8000DEBC 4604003C */  c.lt.s     $f0, $f4
/* EAC0 8000DEC0 00000000 */  nop        
/* EAC4 8000DEC4 4502007D */  bc1fl      .L8000E0BC
/* EAC8 8000DEC8 2694FFFF */   addiu     $s4, $s4, -1
/* EACC 8000DECC 4600A306 */  mov.s      $f12, $f20
/* EAD0 8000DED0 0C008C84 */  jal        func_80023210
/* EAD4 8000DED4 4600B386 */   mov.s     $f14, $f22
/* EAD8 8000DED8 C6CE002C */  lwc1       $f14, 0x2c($s6)
/* EADC 8000DEDC 3C018007 */  lui        $at, 0x8007
/* EAE0 8000DEE0 460E0181 */  sub.s      $f6, $f0, $f14
/* EAE4 8000DEE4 46003221 */  cvt.d.s    $f8, $f6
/* EAE8 8000DEE8 46384280 */  add.d      $f10, $f8, $f24
/* EAEC 8000DEEC 46205320 */  cvt.s.d    $f12, $f10
/* EAF0 8000DEF0 460060A1 */  cvt.d.s    $f2, $f12
/* EAF4 8000DEF4 463E103C */  c.lt.d     $f2, $f30
/* EAF8 8000DEF8 00000000 */  nop        
/* EAFC 8000DEFC 45020005 */  bc1fl      .L8000DF14
/* EB00 8000DF00 4622C03C */   c.lt.d    $f24, $f2
/* EB04 8000DF04 463A1400 */  add.d      $f16, $f2, $f26
/* EB08 8000DF08 10000007 */  b          .L8000DF28
/* EB0C 8000DF0C 46208320 */   cvt.s.d   $f12, $f16
/* EB10 8000DF10 4622C03C */  c.lt.d     $f24, $f2
.L8000DF14:
/* EB14 8000DF14 00000000 */  nop        
/* EB18 8000DF18 45020004 */  bc1fl      .L8000DF2C
/* EB1C 8000DF1C 461C603C */   c.lt.s    $f12, $f28
/* EB20 8000DF20 463A1481 */  sub.d      $f18, $f2, $f26
/* EB24 8000DF24 46209320 */  cvt.s.d    $f12, $f18
.L8000DF28:
/* EB28 8000DF28 461C603C */  c.lt.s     $f12, $f28
.L8000DF2C:
/* EB2C 8000DF2C 00000000 */  nop        
/* EB30 8000DF30 45000002 */  bc1f       .L8000DF3C
/* EB34 8000DF34 00000000 */   nop       
/* EB38 8000DF38 46006307 */  neg.s      $f12, $f12
.L8000DF3C:
/* EB3C 8000DF3C D4261228 */  ldc1       $f6, 0x1228($at)
/* EB40 8000DF40 46006121 */  cvt.d.s    $f4, $f12
/* EB44 8000DF44 3C018008 */  lui        $at, 0x8008
/* EB48 8000DF48 46262202 */  mul.d      $f8, $f4, $f6
/* EB4C 8000DF4C C42A6EC8 */  lwc1       $f10, 0x6ec8($at)
/* EB50 8000DF50 46204320 */  cvt.s.d    $f12, $f8
/* EB54 8000DF54 460A603C */  c.lt.s     $f12, $f10
/* EB58 8000DF58 00000000 */  nop        
/* EB5C 8000DF5C 45020057 */  bc1fl      .L8000E0BC
/* EB60 8000DF60 2694FFFF */   addiu     $s4, $s4, -1
/* EB64 8000DF64 16600010 */  bnez       $s3, .L8000DFA8
/* EB68 8000DF68 3C0EBA00 */   lui       $t6, 0xba00
/* EB6C 8000DF6C 8E220000 */  lw         $v0, ($s1)
/* EB70 8000DF70 26730001 */  addiu      $s3, $s3, 1
/* EB74 8000DF74 244B0008 */  addiu      $t3, $v0, 8
/* EB78 8000DF78 AE2B0000 */  sw         $t3, ($s1)
/* EB7C 8000DF7C AC570000 */  sw         $s7, ($v0)
/* EB80 8000DF80 8FAC00A4 */  lw         $t4, 0xa4($sp)
/* EB84 8000DF84 AC4C0004 */  sw         $t4, 4($v0)
/* EB88 8000DF88 8E220000 */  lw         $v0, ($s1)
/* EB8C 8000DF8C 35CE0C02 */  ori        $t6, $t6, 0xc02
/* EB90 8000DF90 240F2000 */  addiu      $t7, $zero, 0x2000
/* EB94 8000DF94 244D0008 */  addiu      $t5, $v0, 8
/* EB98 8000DF98 AE2D0000 */  sw         $t5, ($s1)
/* EB9C 8000DF9C AC4F0004 */  sw         $t7, 4($v0)
/* EBA0 8000DFA0 AC4E0000 */  sw         $t6, ($v0)
/* EBA4 8000DFA4 C6CE002C */  lwc1       $f14, 0x2c($s6)
.L8000DFA8:
/* EBA8 8000DFA8 C6100010 */  lwc1       $f16, 0x10($s0)
/* EBAC 8000DFAC 4405E000 */  mfc1       $a1, $f28
/* EBB0 8000DFB0 44067000 */  mfc1       $a2, $f14
/* EBB4 8000DFB4 E7B00010 */  swc1       $f16, 0x10($sp)
/* EBB8 8000DFB8 C6120000 */  lwc1       $f18, ($s0)
/* EBBC 8000DFBC 4407E000 */  mfc1       $a3, $f28
/* EBC0 8000DFC0 03C02025 */  or         $a0, $fp, $zero
/* EBC4 8000DFC4 E7B20014 */  swc1       $f18, 0x14($sp)
/* EBC8 8000DFC8 C6040004 */  lwc1       $f4, 4($s0)
/* EBCC 8000DFCC E7A40018 */  swc1       $f4, 0x18($sp)
/* EBD0 8000DFD0 C6060008 */  lwc1       $f6, 8($s0)
/* EBD4 8000DFD4 0C008CD8 */  jal        func_80023360
/* EBD8 8000DFD8 E7A6001C */   swc1      $f6, 0x1c($sp)
/* EBDC 8000DFDC 8E590000 */  lw         $t9, ($s2)
/* EBE0 8000DFE0 8FB80100 */  lw         $t8, 0x100($sp)
/* EBE4 8000DFE4 03C02025 */  or         $a0, $fp, $zero
/* EBE8 8000DFE8 00194180 */  sll        $t0, $t9, 6
/* EBEC 8000DFEC 03082821 */  addu       $a1, $t8, $t0
/* EBF0 8000DFF0 0C00D480 */  jal        func_80035200
/* EBF4 8000DFF4 24A500C0 */   addiu     $a1, $a1, 0xc0
/* EBF8 8000DFF8 8E220000 */  lw         $v0, ($s1)
/* EBFC 8000DFFC 3C0A0102 */  lui        $t2, 0x102
/* EC00 8000E000 354A0040 */  ori        $t2, $t2, 0x40
/* EC04 8000E004 24490008 */  addiu      $t1, $v0, 8
/* EC08 8000E008 AE290000 */  sw         $t1, ($s1)
/* EC0C 8000E00C AC4A0000 */  sw         $t2, ($v0)
/* EC10 8000E010 8E4B0000 */  lw         $t3, ($s2)
/* EC14 8000E014 3C0E0200 */  lui        $t6, 0x200
/* EC18 8000E018 25CE0000 */  addiu      $t6, $t6, 0
/* EC1C 8000E01C 000B6180 */  sll        $t4, $t3, 6
/* EC20 8000E020 258D00C0 */  addiu      $t5, $t4, 0xc0
/* EC24 8000E024 01AE7821 */  addu       $t7, $t5, $t6
/* EC28 8000E028 AC4F0004 */  sw         $t7, 4($v0)
/* EC2C 8000E02C 8E590000 */  lw         $t9, ($s2)
/* EC30 8000E030 27380001 */  addiu      $t8, $t9, 1
/* EC34 8000E034 AE580000 */  sw         $t8, ($s2)
/* EC38 8000E038 8E220000 */  lw         $v0, ($s1)
/* EC3C 8000E03C 24480008 */  addiu      $t0, $v0, 8
/* EC40 8000E040 AE280000 */  sw         $t0, ($s1)
/* EC44 8000E044 AC570000 */  sw         $s7, ($v0)
/* EC48 8000E048 8FA900A0 */  lw         $t1, 0xa0($sp)
/* EC4C 8000E04C AC490004 */  sw         $t1, 4($v0)
/* EC50 8000E050 C608000C */  lwc1       $f8, 0xc($s0)
/* EC54 8000E054 3C0D8008 */  lui        $t5, 0x8008
/* EC58 8000E058 25AD4260 */  addiu      $t5, $t5, 0x4260
/* EC5C 8000E05C 4600428D */  trunc.w.s  $f10, $f8
/* EC60 8000E060 C60C0000 */  lwc1       $f12, ($s0)
/* EC64 8000E064 C60E0004 */  lwc1       $f14, 4($s0)
/* EC68 8000E068 8E060008 */  lw         $a2, 8($s0)
/* EC6C 8000E06C 440B5000 */  mfc1       $t3, $f10
/* EC70 8000E070 3C014100 */  lui        $at, 0x4100
/* EC74 8000E074 44812000 */  mtc1       $at, $f4
/* EC78 8000E078 000B6080 */  sll        $t4, $t3, 2
/* EC7C 8000E07C 018B6023 */  subu       $t4, $t4, $t3
/* EC80 8000E080 000C6080 */  sll        $t4, $t4, 2
/* EC84 8000E084 018D1821 */  addu       $v1, $t4, $t5
/* EC88 8000E088 C4700004 */  lwc1       $f16, 4($v1)
/* EC8C 8000E08C 8C670000 */  lw         $a3, ($v1)
/* EC90 8000E090 E7B00010 */  swc1       $f16, 0x10($sp)
/* EC94 8000E094 C4720008 */  lwc1       $f18, 8($v1)
/* EC98 8000E098 E7A40018 */  swc1       $f4, 0x18($sp)
/* EC9C 8000E09C 0C004618 */  jal        func_80011860
/* ECA0 8000E0A0 E7B20014 */   swc1      $f18, 0x14($sp)
/* ECA4 8000E0A4 3C0E8008 */  lui        $t6, 0x8008
/* ECA8 8000E0A8 8DCE4F34 */  lw         $t6, 0x4f34($t6)
/* ECAC 8000E0AC 3C018008 */  lui        $at, 0x8008
/* ECB0 8000E0B0 25CF0001 */  addiu      $t7, $t6, 1
/* ECB4 8000E0B4 AC2F4F34 */  sw         $t7, 0x4f34($at)
/* ECB8 8000E0B8 2694FFFF */  addiu      $s4, $s4, -1
.L8000E0BC:
/* ECBC 8000E0BC 5680FF6D */  bnel       $s4, $zero, .L8000DE74
/* ECC0 8000E0C0 8EB00000 */   lw        $s0, ($s5)
.L8000E0C4:
/* ECC4 8000E0C4 8FBF007C */  lw         $ra, 0x7c($sp)
/* ECC8 8000E0C8 D7B40028 */  ldc1       $f20, 0x28($sp)
/* ECCC 8000E0CC D7B60030 */  ldc1       $f22, 0x30($sp)
/* ECD0 8000E0D0 D7B80038 */  ldc1       $f24, 0x38($sp)
/* ECD4 8000E0D4 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* ECD8 8000E0D8 D7BC0048 */  ldc1       $f28, 0x48($sp)
/* ECDC 8000E0DC D7BE0050 */  ldc1       $f30, 0x50($sp)
/* ECE0 8000E0E0 8FB00058 */  lw         $s0, 0x58($sp)
/* ECE4 8000E0E4 8FB1005C */  lw         $s1, 0x5c($sp)
/* ECE8 8000E0E8 8FB20060 */  lw         $s2, 0x60($sp)
/* ECEC 8000E0EC 8FB30064 */  lw         $s3, 0x64($sp)
/* ECF0 8000E0F0 8FB40068 */  lw         $s4, 0x68($sp)
/* ECF4 8000E0F4 8FB5006C */  lw         $s5, 0x6c($sp)
/* ECF8 8000E0F8 8FB60070 */  lw         $s6, 0x70($sp)
/* ECFC 8000E0FC 8FB70074 */  lw         $s7, 0x74($sp)
/* ED00 8000E100 8FBE0078 */  lw         $fp, 0x78($sp)
/* ED04 8000E104 03E00008 */  jr         $ra
/* ED08 8000E108 27BD0100 */   addiu     $sp, $sp, 0x100

glabel func_8000E10C
/* ED0C 8000E10C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* ED10 8000E110 AFB00018 */  sw         $s0, 0x18($sp)
/* ED14 8000E114 00808025 */  or         $s0, $a0, $zero
/* ED18 8000E118 AFBF001C */  sw         $ra, 0x1c($sp)
/* ED1C 8000E11C 860E0014 */  lh         $t6, 0x14($s0)
/* ED20 8000E120 25CF0001 */  addiu      $t7, $t6, 1
/* ED24 8000E124 A60F0014 */  sh         $t7, 0x14($s0)
/* ED28 8000E128 86180014 */  lh         $t8, 0x14($s0)
/* ED2C 8000E12C 07020039 */  bltzl      $t8, .L8000E214
/* ED30 8000E130 8FBF001C */   lw        $ra, 0x1c($sp)
/* ED34 8000E134 C6040000 */  lwc1       $f4, ($s0)
/* ED38 8000E138 3C018005 */  lui        $at, 0x8005
/* ED3C 8000E13C 44809000 */  mtc1       $zero, $f18
/* ED40 8000E140 E424C37C */  swc1       $f4, -0x3c84($at)
/* ED44 8000E144 C6060004 */  lwc1       $f6, 4($s0)
/* ED48 8000E148 3C018005 */  lui        $at, 0x8005
/* ED4C 8000E14C 3C058008 */  lui        $a1, 0x8008
/* ED50 8000E150 E426C380 */  swc1       $f6, -0x3c80($at)
/* ED54 8000E154 C6080008 */  lwc1       $f8, 8($s0)
/* ED58 8000E158 24A52C18 */  addiu      $a1, $a1, 0x2c18
/* ED5C 8000E15C E428C384 */  swc1       $f8, -0x3c7c($at)
/* ED60 8000E160 C60A0010 */  lwc1       $f10, 0x10($s0)
/* ED64 8000E164 3C014024 */  lui        $at, 0x4024
/* ED68 8000E168 44819800 */  mtc1       $at, $f19
/* ED6C 8000E16C 46005421 */  cvt.d.s    $f16, $f10
/* ED70 8000E170 3C018005 */  lui        $at, 0x8005
/* ED74 8000E174 46328102 */  mul.d      $f4, $f16, $f18
/* ED78 8000E178 44809000 */  mtc1       $zero, $f18
/* ED7C 8000E17C 462021A0 */  cvt.s.d    $f6, $f4
/* ED80 8000E180 E426C390 */  swc1       $f6, -0x3c70($at)
/* ED84 8000E184 3C018005 */  lui        $at, 0x8005
/* ED88 8000E188 E426C38C */  swc1       $f6, -0x3c74($at)
/* ED8C 8000E18C C6080010 */  lwc1       $f8, 0x10($s0)
/* ED90 8000E190 E4B20004 */  swc1       $f18, 4($a1)
/* ED94 8000E194 46004021 */  cvt.d.s    $f0, $f8
/* ED98 8000E198 46200280 */  add.d      $f10, $f0, $f0
/* ED9C 8000E19C 46205420 */  cvt.s.d    $f16, $f10
/* EDA0 8000E1A0 E4B00000 */  swc1       $f16, ($a1)
/* EDA4 8000E1A4 0C008CBD */  jal        func_800232F4
/* EDA8 8000E1A8 C60C000C */   lwc1      $f12, 0xc($s0)
/* EDAC 8000E1AC 3C058008 */  lui        $a1, 0x8008
/* EDB0 8000E1B0 24A52C18 */  addiu      $a1, $a1, 0x2c18
/* EDB4 8000E1B4 C4A40000 */  lwc1       $f4, ($a1)
/* EDB8 8000E1B8 3C018005 */  lui        $at, 0x8005
/* EDBC 8000E1BC 3C098006 */  lui        $t1, 0x8006
/* EDC0 8000E1C0 E424C394 */  swc1       $f4, -0x3c6c($at)
/* EDC4 8000E1C4 C4A60004 */  lwc1       $f6, 4($a1)
/* EDC8 8000E1C8 2529CD58 */  addiu      $t1, $t1, -0x32a8
/* EDCC 8000E1CC 3C048005 */  lui        $a0, 0x8005
/* EDD0 8000E1D0 E426C39C */  swc1       $f6, -0x3c64($at)
/* EDD4 8000E1D4 86190014 */  lh         $t9, 0x14($s0)
/* EDD8 8000E1D8 3C018005 */  lui        $at, 0x8005
/* EDDC 8000E1DC 2484C364 */  addiu      $a0, $a0, -0x3c9c
/* EDE0 8000E1E0 00194280 */  sll        $t0, $t9, 0xa
/* EDE4 8000E1E4 01095021 */  addu       $t2, $t0, $t1
/* EDE8 8000E1E8 0C006C42 */  jal        func_8001B108
/* EDEC 8000E1EC AC2AC374 */   sw        $t2, -0x3c8c($at)
/* EDF0 8000E1F0 860B0014 */  lh         $t3, 0x14($s0)
/* EDF4 8000E1F4 29610007 */  slti       $at, $t3, 7
/* EDF8 8000E1F8 54200006 */  bnel       $at, $zero, .L8000E214
/* EDFC 8000E1FC 8FBF001C */   lw        $ra, 0x1c($sp)
/* EE00 8000E200 0C008BF4 */  jal        func_80022FD0
/* EE04 8000E204 2404003C */   addiu     $a0, $zero, 0x3c
/* EE08 8000E208 244CFF88 */  addiu      $t4, $v0, -0x78
/* EE0C 8000E20C A60C0014 */  sh         $t4, 0x14($s0)
/* EE10 8000E210 8FBF001C */  lw         $ra, 0x1c($sp)
.L8000E214:
/* EE14 8000E214 8FB00018 */  lw         $s0, 0x18($sp)
/* EE18 8000E218 27BD0020 */  addiu      $sp, $sp, 0x20
/* EE1C 8000E21C 03E00008 */  jr         $ra
/* EE20 8000E220 00000000 */   nop       

glabel func_8000E224
/* EE24 8000E224 3C058008 */  lui        $a1, 0x8008
/* EE28 8000E228 24A5B2FC */  addiu      $a1, $a1, -0x4d04
/* EE2C 8000E22C C4840018 */  lwc1       $f4, 0x18($a0)
/* EE30 8000E230 C4860030 */  lwc1       $f6, 0x30($a0)
/* EE34 8000E234 C4800034 */  lwc1       $f0, 0x34($a0)
/* EE38 8000E238 C48A001C */  lwc1       $f10, 0x1c($a0)
/* EE3C 8000E23C 46062200 */  add.s      $f8, $f4, $f6
/* EE40 8000E240 C4840038 */  lwc1       $f4, 0x38($a0)
/* EE44 8000E244 C4920020 */  lwc1       $f18, 0x20($a0)
/* EE48 8000E248 46005400 */  add.s      $f16, $f10, $f0
/* EE4C 8000E24C E4880018 */  swc1       $f8, 0x18($a0)
/* EE50 8000E250 3C018007 */  lui        $at, 0x8007
/* EE54 8000E254 46049180 */  add.s      $f6, $f18, $f4
/* EE58 8000E258 E490001C */  swc1       $f16, 0x1c($a0)
/* EE5C 8000E25C 24030078 */  addiu      $v1, $zero, 0x78
/* EE60 8000E260 46000221 */  cvt.d.s    $f8, $f0
/* EE64 8000E264 E4860020 */  swc1       $f6, 0x20($a0)
/* EE68 8000E268 D42A1230 */  ldc1       $f10, 0x1230($at)
/* EE6C 8000E26C 2401FF00 */  addiu      $at, $zero, -0x100
/* EE70 8000E270 462A4401 */  sub.d      $f16, $f8, $f10
/* EE74 8000E274 462084A0 */  cvt.s.d    $f18, $f16
/* EE78 8000E278 E4920034 */  swc1       $f18, 0x34($a0)
/* EE7C 8000E27C 8CA20000 */  lw         $v0, ($a1)
/* EE80 8000E280 3C0FFB00 */  lui        $t7, 0xfb00
/* EE84 8000E284 3C188008 */  lui        $t8, 0x8008
/* EE88 8000E288 244E0008 */  addiu      $t6, $v0, 8
/* EE8C 8000E28C ACAE0000 */  sw         $t6, ($a1)
/* EE90 8000E290 AC4F0000 */  sw         $t7, ($v0)
/* EE94 8000E294 97184ED0 */  lhu        $t8, 0x4ed0($t8)
/* EE98 8000E298 33190001 */  andi       $t9, $t8, 1
/* EE9C 8000E29C 13200003 */  beqz       $t9, .L8000E2AC
/* EEA0 8000E2A0 00000000 */   nop       
/* EEA4 8000E2A4 10000001 */  b          .L8000E2AC
/* EEA8 8000E2A8 240300DC */   addiu     $v1, $zero, 0xdc
.L8000E2AC:
/* EEAC 8000E2AC 306800FF */  andi       $t0, $v1, 0xff
/* EEB0 8000E2B0 01014825 */  or         $t1, $t0, $at
/* EEB4 8000E2B4 AC490004 */  sw         $t1, 4($v0)
/* EEB8 8000E2B8 03E00008 */  jr         $ra
/* EEBC 8000E2BC 00000000 */   nop       

glabel func_8000E2C0
/* EEC0 8000E2C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EEC4 8000E2C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* EEC8 8000E2C8 00802825 */  or         $a1, $a0, $zero
/* EECC 8000E2CC 84AE0014 */  lh         $t6, 0x14($a1)
/* EED0 8000E2D0 25CFFFFF */  addiu      $t7, $t6, -1
/* EED4 8000E2D4 A4AF0014 */  sh         $t7, 0x14($a1)
/* EED8 8000E2D8 84B80014 */  lh         $t8, 0x14($a1)
/* EEDC 8000E2DC 57000019 */  bnel       $t8, $zero, .L8000E344
/* EEE0 8000E2E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* EEE4 8000E2E4 C4A40000 */  lwc1       $f4, ($a1)
/* EEE8 8000E2E8 3C018005 */  lui        $at, 0x8005
/* EEEC 8000E2EC 3C048005 */  lui        $a0, 0x8005
/* EEF0 8000E2F0 E424C3BC */  swc1       $f4, -0x3c44($at)
/* EEF4 8000E2F4 C4A60004 */  lwc1       $f6, 4($a1)
/* EEF8 8000E2F8 3C018005 */  lui        $at, 0x8005
/* EEFC 8000E2FC 2484C3A4 */  addiu      $a0, $a0, -0x3c5c
/* EF00 8000E300 E426C3C0 */  swc1       $f6, -0x3c40($at)
/* EF04 8000E304 C4A80008 */  lwc1       $f8, 8($a1)
/* EF08 8000E308 E428C3C4 */  swc1       $f8, -0x3c3c($at)
/* EF0C 8000E30C C4AA0010 */  lwc1       $f10, 0x10($a1)
/* EF10 8000E310 3C018005 */  lui        $at, 0x8005
/* EF14 8000E314 AFA50018 */  sw         $a1, 0x18($sp)
/* EF18 8000E318 E42AC3D0 */  swc1       $f10, -0x3c30($at)
/* EF1C 8000E31C C430C3D0 */  lwc1       $f16, -0x3c30($at)
/* EF20 8000E320 3C018005 */  lui        $at, 0x8005
/* EF24 8000E324 0C006C42 */  jal        func_8001B108
/* EF28 8000E328 E430C3CC */   swc1      $f16, -0x3c34($at)
/* EF2C 8000E32C 0C008BF4 */  jal        func_80022FD0
/* EF30 8000E330 24040096 */   addiu     $a0, $zero, 0x96
/* EF34 8000E334 8FA50018 */  lw         $a1, 0x18($sp)
/* EF38 8000E338 24590096 */  addiu      $t9, $v0, 0x96
/* EF3C 8000E33C A4B90014 */  sh         $t9, 0x14($a1)
/* EF40 8000E340 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000E344:
/* EF44 8000E344 27BD0018 */  addiu      $sp, $sp, 0x18
/* EF48 8000E348 03E00008 */  jr         $ra
/* EF4C 8000E34C 00000000 */   nop       

glabel func_8000E350
/* EF50 8000E350 3C058008 */  lui        $a1, 0x8008
/* EF54 8000E354 24A5B2FC */  addiu      $a1, $a1, -0x4d04
/* EF58 8000E358 3C014000 */  lui        $at, 0x4000
/* EF5C 8000E35C 44813000 */  mtc1       $at, $f6
/* EF60 8000E360 C4800034 */  lwc1       $f0, 0x34($a0)
/* EF64 8000E364 C484001C */  lwc1       $f4, 0x1c($a0)
/* EF68 8000E368 3C018007 */  lui        $at, 0x8007
/* EF6C 8000E36C 46060203 */  div.s      $f8, $f0, $f6
/* EF70 8000E370 46000421 */  cvt.d.s    $f16, $f0
/* EF74 8000E374 46082280 */  add.s      $f10, $f4, $f8
/* EF78 8000E378 E48A001C */  swc1       $f10, 0x1c($a0)
/* EF7C 8000E37C D4321238 */  ldc1       $f18, 0x1238($at)
/* EF80 8000E380 46328181 */  sub.d      $f6, $f16, $f18
/* EF84 8000E384 46203120 */  cvt.s.d    $f4, $f6
/* EF88 8000E388 E4840034 */  swc1       $f4, 0x34($a0)
/* EF8C 8000E38C 8CA30000 */  lw         $v1, ($a1)
/* EF90 8000E390 3C0FFB00 */  lui        $t7, 0xfb00
/* EF94 8000E394 2401FF00 */  addiu      $at, $zero, -0x100
/* EF98 8000E398 246E0008 */  addiu      $t6, $v1, 8
/* EF9C 8000E39C ACAE0000 */  sw         $t6, ($a1)
/* EFA0 8000E3A0 AC6F0000 */  sw         $t7, ($v1)
/* EFA4 8000E3A4 94980000 */  lhu        $t8, ($a0)
/* EFA8 8000E3A8 0018C880 */  sll        $t9, $t8, 2
/* EFAC 8000E3AC 0338C821 */  addu       $t9, $t9, $t8
/* EFB0 8000E3B0 332800FF */  andi       $t0, $t9, 0xff
/* EFB4 8000E3B4 01014825 */  or         $t1, $t0, $at
/* EFB8 8000E3B8 AC690004 */  sw         $t1, 4($v1)
/* EFBC 8000E3BC 03E00008 */  jr         $ra
/* EFC0 8000E3C0 00000000 */   nop       

glabel func_8000E3C4
/* EFC4 8000E3C4 3C018008 */  lui        $at, 0x8008
/* EFC8 8000E3C8 3C038008 */  lui        $v1, 0x8008
/* EFCC 8000E3CC 3C048008 */  lui        $a0, 0x8008
/* EFD0 8000E3D0 AC20D2D0 */  sw         $zero, -0x2d30($at)
/* EFD4 8000E3D4 24020008 */  addiu      $v0, $zero, 8
/* EFD8 8000E3D8 24634098 */  addiu      $v1, $v1, 0x4098
/* EFDC 8000E3DC 24844180 */  addiu      $a0, $a0, 0x4180
.L8000E3E0:
/* EFE0 8000E3E0 AC800000 */  sw         $zero, ($a0)
/* EFE4 8000E3E4 AC600000 */  sw         $zero, ($v1)
/* EFE8 8000E3E8 AC80001C */  sw         $zero, 0x1c($a0)
/* EFEC 8000E3EC AC60001C */  sw         $zero, 0x1c($v1)
/* EFF0 8000E3F0 AC800038 */  sw         $zero, 0x38($a0)
/* EFF4 8000E3F4 AC600038 */  sw         $zero, 0x38($v1)
/* EFF8 8000E3F8 AC800054 */  sw         $zero, 0x54($a0)
/* EFFC 8000E3FC 2442FFFC */  addiu      $v0, $v0, -4
/* F000 8000E400 AC600054 */  sw         $zero, 0x54($v1)
/* F004 8000E404 24630070 */  addiu      $v1, $v1, 0x70
/* F008 8000E408 1440FFF5 */  bnez       $v0, .L8000E3E0
/* F00C 8000E40C 24840070 */   addiu     $a0, $a0, 0x70
/* F010 8000E410 03E00008 */  jr         $ra
/* F014 8000E414 00000000 */   nop       

glabel func_8000E418
/* F018 8000E418 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F01C 8000E41C AFBF0014 */  sw         $ra, 0x14($sp)
/* F020 8000E420 E7AC0020 */  swc1       $f12, 0x20($sp)
/* F024 8000E424 E7AE0024 */  swc1       $f14, 0x24($sp)
/* F028 8000E428 AFA60028 */  sw         $a2, 0x28($sp)
/* F02C 8000E42C AFA7002C */  sw         $a3, 0x2c($sp)
/* F030 8000E430 3C028008 */  lui        $v0, 0x8008
/* F034 8000E434 8C42B2F4 */  lw         $v0, -0x4d0c($v0)
/* F038 8000E438 3C078008 */  lui        $a3, 0x8008
/* F03C 8000E43C 3C058008 */  lui        $a1, 0x8008
/* F040 8000E440 10400004 */  beqz       $v0, .L8000E454
/* F044 8000E444 24E7D2D4 */   addiu     $a3, $a3, -0x2d2c
/* F048 8000E448 3C058008 */  lui        $a1, 0x8008
/* F04C 8000E44C 10000002 */  b          .L8000E458
/* F050 8000E450 24A54098 */   addiu     $a1, $a1, 0x4098
.L8000E454:
/* F054 8000E454 24A54180 */  addiu      $a1, $a1, 0x4180
.L8000E458:
/* F058 8000E458 10400004 */  beqz       $v0, .L8000E46C
/* F05C 8000E45C 3C038008 */   lui       $v1, 0x8008
/* F060 8000E460 3C038008 */  lui        $v1, 0x8008
/* F064 8000E464 10000002 */  b          .L8000E470
/* F068 8000E468 24634180 */   addiu     $v1, $v1, 0x4180
.L8000E46C:
/* F06C 8000E46C 24634098 */  addiu      $v1, $v1, 0x4098
.L8000E470:
/* F070 8000E470 8CE40000 */  lw         $a0, ($a3)
/* F074 8000E474 3C028008 */  lui        $v0, 0x8008
/* F078 8000E478 28810008 */  slti       $at, $a0, 8
/* F07C 8000E47C 1020003E */  beqz       $at, .L8000E578
/* F080 8000E480 000470C0 */   sll       $t6, $a0, 3
/* F084 8000E484 8C42D2D0 */  lw         $v0, -0x2d30($v0)
/* F088 8000E488 01C47023 */  subu       $t6, $t6, $a0
/* F08C 8000E48C 000E7080 */  sll        $t6, $t6, 2
/* F090 8000E490 1040000B */  beqz       $v0, .L8000E4C0
/* F094 8000E494 00AE2821 */   addu      $a1, $a1, $t6
/* F098 8000E498 8FA60030 */  lw         $a2, 0x30($sp)
/* F09C 8000E49C 8C6F0018 */  lw         $t7, 0x18($v1)
/* F0A0 8000E4A0 10CF0007 */  beq        $a2, $t7, .L8000E4C0
/* F0A4 8000E4A4 00000000 */   nop       
/* F0A8 8000E4A8 2442FFFF */  addiu      $v0, $v0, -1
.L8000E4AC:
/* F0AC 8000E4AC 10400004 */  beqz       $v0, .L8000E4C0
/* F0B0 8000E4B0 2463001C */   addiu     $v1, $v1, 0x1c
/* F0B4 8000E4B4 8C780018 */  lw         $t8, 0x18($v1)
/* F0B8 8000E4B8 54D8FFFC */  bnel       $a2, $t8, .L8000E4AC
/* F0BC 8000E4BC 2442FFFF */   addiu     $v0, $v0, -1
.L8000E4C0:
/* F0C0 8000E4C0 10400006 */  beqz       $v0, .L8000E4DC
/* F0C4 8000E4C4 8FA60030 */   lw        $a2, 0x30($sp)
/* F0C8 8000E4C8 8C790000 */  lw         $t9, ($v1)
/* F0CC 8000E4CC ACB90000 */  sw         $t9, ($a1)
/* F0D0 8000E4D0 C4640014 */  lwc1       $f4, 0x14($v1)
/* F0D4 8000E4D4 1000001C */  b          .L8000E548
/* F0D8 8000E4D8 E4A40014 */   swc1      $f4, 0x14($a1)
.L8000E4DC:
/* F0DC 8000E4DC 24080001 */  addiu      $t0, $zero, 1
/* F0E0 8000E4E0 ACA80000 */  sw         $t0, ($a1)
/* F0E4 8000E4E4 AFA50018 */  sw         $a1, 0x18($sp)
/* F0E8 8000E4E8 0C008BF4 */  jal        func_80022FD0
/* F0EC 8000E4EC 24040008 */   addiu     $a0, $zero, 8
/* F0F0 8000E4F0 44823000 */  mtc1       $v0, $f6
/* F0F4 8000E4F4 3C078008 */  lui        $a3, 0x8008
/* F0F8 8000E4F8 24E7D2D4 */  addiu      $a3, $a3, -0x2d2c
/* F0FC 8000E4FC 8FA50018 */  lw         $a1, 0x18($sp)
/* F100 8000E500 8FA60030 */  lw         $a2, 0x30($sp)
/* F104 8000E504 04410005 */  bgez       $v0, .L8000E51C
/* F108 8000E508 46803220 */   cvt.s.w   $f8, $f6
/* F10C 8000E50C 3C014F80 */  lui        $at, 0x4f80
/* F110 8000E510 44815000 */  mtc1       $at, $f10
/* F114 8000E514 00000000 */  nop        
/* F118 8000E518 460A4200 */  add.s      $f8, $f8, $f10
.L8000E51C:
/* F11C 8000E51C 3C018007 */  lui        $at, 0x8007
/* F120 8000E520 D4321240 */  ldc1       $f18, 0x1240($at)
/* F124 8000E524 46004421 */  cvt.d.s    $f16, $f8
/* F128 8000E528 3C014010 */  lui        $at, 0x4010
/* F12C 8000E52C 46328102 */  mul.d      $f4, $f16, $f18
/* F130 8000E530 44813800 */  mtc1       $at, $f7
/* F134 8000E534 44803000 */  mtc1       $zero, $f6
/* F138 8000E538 00000000 */  nop        
/* F13C 8000E53C 46262283 */  div.d      $f10, $f4, $f6
/* F140 8000E540 46205220 */  cvt.s.d    $f8, $f10
/* F144 8000E544 E4A80014 */  swc1       $f8, 0x14($a1)
.L8000E548:
/* F148 8000E548 C7B00020 */  lwc1       $f16, 0x20($sp)
/* F14C 8000E54C E4B00004 */  swc1       $f16, 4($a1)
/* F150 8000E550 C7B20024 */  lwc1       $f18, 0x24($sp)
/* F154 8000E554 E4B20008 */  swc1       $f18, 8($a1)
/* F158 8000E558 C7A40028 */  lwc1       $f4, 0x28($sp)
/* F15C 8000E55C E4A4000C */  swc1       $f4, 0xc($a1)
/* F160 8000E560 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* F164 8000E564 ACA60018 */  sw         $a2, 0x18($a1)
/* F168 8000E568 E4A60010 */  swc1       $f6, 0x10($a1)
/* F16C 8000E56C 8CE90000 */  lw         $t1, ($a3)
/* F170 8000E570 252A0001 */  addiu      $t2, $t1, 1
/* F174 8000E574 ACEA0000 */  sw         $t2, ($a3)
.L8000E578:
/* F178 8000E578 8FBF0014 */  lw         $ra, 0x14($sp)
/* F17C 8000E57C 27BD0020 */  addiu      $sp, $sp, 0x20
/* F180 8000E580 03E00008 */  jr         $ra
/* F184 8000E584 00000000 */   nop       

glabel func_8000E588
/* F188 8000E588 27BDFF98 */  addiu      $sp, $sp, -0x68
/* F18C 8000E58C 3C038008 */  lui        $v1, 0x8008
/* F190 8000E590 2463D2D0 */  addiu      $v1, $v1, -0x2d30
/* F194 8000E594 AFBF0064 */  sw         $ra, 0x64($sp)
/* F198 8000E598 AFBE0060 */  sw         $fp, 0x60($sp)
/* F19C 8000E59C AFB7005C */  sw         $s7, 0x5c($sp)
/* F1A0 8000E5A0 AFB60058 */  sw         $s6, 0x58($sp)
/* F1A4 8000E5A4 AFB50054 */  sw         $s5, 0x54($sp)
/* F1A8 8000E5A8 AFB40050 */  sw         $s4, 0x50($sp)
/* F1AC 8000E5AC AFB3004C */  sw         $s3, 0x4c($sp)
/* F1B0 8000E5B0 AFB20048 */  sw         $s2, 0x48($sp)
/* F1B4 8000E5B4 AFB10044 */  sw         $s1, 0x44($sp)
/* F1B8 8000E5B8 AFB00040 */  sw         $s0, 0x40($sp)
/* F1BC 8000E5BC F7B80038 */  sdc1       $f24, 0x38($sp)
/* F1C0 8000E5C0 F7B60030 */  sdc1       $f22, 0x30($sp)
/* F1C4 8000E5C4 F7B40028 */  sdc1       $f20, 0x28($sp)
/* F1C8 8000E5C8 AFA40068 */  sw         $a0, 0x68($sp)
/* F1CC 8000E5CC 3C0E8008 */  lui        $t6, 0x8008
/* F1D0 8000E5D0 8DCED2D4 */  lw         $t6, -0x2d2c($t6)
/* F1D4 8000E5D4 3C0F8008 */  lui        $t7, 0x8008
/* F1D8 8000E5D8 3C118008 */  lui        $s1, 0x8008
/* F1DC 8000E5DC AC6E0000 */  sw         $t6, ($v1)
/* F1E0 8000E5E0 8DEFB2F4 */  lw         $t7, -0x4d0c($t7)
/* F1E4 8000E5E4 26314180 */  addiu      $s1, $s1, 0x4180
/* F1E8 8000E5E8 3C018007 */  lui        $at, 0x8007
/* F1EC 8000E5EC 11E00004 */  beqz       $t7, .L8000E600
/* F1F0 8000E5F0 3C1E0600 */   lui       $fp, 0x600
/* F1F4 8000E5F4 3C118008 */  lui        $s1, 0x8008
/* F1F8 8000E5F8 10000001 */  b          .L8000E600
/* F1FC 8000E5FC 26314098 */   addiu     $s1, $s1, 0x4098
.L8000E600:
/* F200 8000E600 8C740000 */  lw         $s4, ($v1)
/* F204 8000E604 3C170200 */  lui        $s7, 0x200
/* F208 8000E608 26F70000 */  addiu      $s7, $s7, 0
/* F20C 8000E60C 02801025 */  or         $v0, $s4, $zero
/* F210 8000E610 12800049 */  beqz       $s4, .L8000E738
/* F214 8000E614 2694FFFF */   addiu     $s4, $s4, -1
/* F218 8000E618 D4361248 */  ldc1       $f22, 0x1248($at)
/* F21C 8000E61C 3C018007 */  lui        $at, 0x8007
/* F220 8000E620 3C160102 */  lui        $s6, 0x102
/* F224 8000E624 3C158008 */  lui        $s5, 0x8008
/* F228 8000E628 3C138008 */  lui        $s3, 0x8008
/* F22C 8000E62C 3C128008 */  lui        $s2, 0x8008
/* F230 8000E630 4480C000 */  mtc1       $zero, $f24
/* F234 8000E634 2652B2F8 */  addiu      $s2, $s2, -0x4d08
/* F238 8000E638 2673B2FC */  addiu      $s3, $s3, -0x4d04
/* F23C 8000E63C 26B54F34 */  addiu      $s5, $s5, 0x4f34
/* F240 8000E640 36D60040 */  ori        $s6, $s6, 0x40
/* F244 8000E644 D4341250 */  ldc1       $f20, 0x1250($at)
.L8000E648:
/* F248 8000E648 8E380000 */  lw         $t8, ($s1)
/* F24C 8000E64C 53000037 */  beql       $t8, $zero, .L8000E72C
/* F250 8000E650 02801025 */   or        $v0, $s4, $zero
/* F254 8000E654 C6240014 */  lwc1       $f4, 0x14($s1)
/* F258 8000E658 C6300010 */  lwc1       $f16, 0x10($s1)
/* F25C 8000E65C 8E300018 */  lw         $s0, 0x18($s1)
/* F260 8000E660 460021A1 */  cvt.d.s    $f6, $f4
/* F264 8000E664 460084A1 */  cvt.d.s    $f18, $f16
/* F268 8000E668 46343201 */  sub.d      $f8, $f6, $f20
/* F26C 8000E66C 46369102 */  mul.d      $f4, $f18, $f22
/* F270 8000E670 4405C000 */  mfc1       $a1, $f24
/* F274 8000E674 462042A0 */  cvt.s.d    $f10, $f8
/* F278 8000E678 462021A0 */  cvt.s.d    $f6, $f4
/* F27C 8000E67C E62A0014 */  swc1       $f10, 0x14($s1)
/* F280 8000E680 C6080010 */  lwc1       $f8, 0x10($s0)
/* F284 8000E684 8E270014 */  lw         $a3, 0x14($s1)
/* F288 8000E688 8E480000 */  lw         $t0, ($s2)
/* F28C 8000E68C E7A80010 */  swc1       $f8, 0x10($sp)
/* F290 8000E690 C60A0000 */  lwc1       $f10, ($s0)
/* F294 8000E694 8FB90068 */  lw         $t9, 0x68($sp)
/* F298 8000E698 00084980 */  sll        $t1, $t0, 6
/* F29C 8000E69C E7AA0014 */  swc1       $f10, 0x14($sp)
/* F2A0 8000E6A0 C6100004 */  lwc1       $f16, 4($s0)
/* F2A4 8000E6A4 44063000 */  mfc1       $a2, $f6
/* F2A8 8000E6A8 03292021 */  addu       $a0, $t9, $t1
/* F2AC 8000E6AC E7B00018 */  swc1       $f16, 0x18($sp)
/* F2B0 8000E6B0 C6120008 */  lwc1       $f18, 8($s0)
/* F2B4 8000E6B4 248400C0 */  addiu      $a0, $a0, 0xc0
/* F2B8 8000E6B8 0C008D40 */  jal        func_80023500
/* F2BC 8000E6BC E7B2001C */   swc1      $f18, 0x1c($sp)
/* F2C0 8000E6C0 8E620000 */  lw         $v0, ($s3)
/* F2C4 8000E6C4 244A0008 */  addiu      $t2, $v0, 8
/* F2C8 8000E6C8 AE6A0000 */  sw         $t2, ($s3)
/* F2CC 8000E6CC AC560000 */  sw         $s6, ($v0)
/* F2D0 8000E6D0 8E4B0000 */  lw         $t3, ($s2)
/* F2D4 8000E6D4 000B6180 */  sll        $t4, $t3, 6
/* F2D8 8000E6D8 02EC6821 */  addu       $t5, $s7, $t4
/* F2DC 8000E6DC 25AE00C0 */  addiu      $t6, $t5, 0xc0
/* F2E0 8000E6E0 AC4E0004 */  sw         $t6, 4($v0)
/* F2E4 8000E6E4 8E4F0000 */  lw         $t7, ($s2)
/* F2E8 8000E6E8 25F80001 */  addiu      $t8, $t7, 1
/* F2EC 8000E6EC AE580000 */  sw         $t8, ($s2)
/* F2F0 8000E6F0 8E620000 */  lw         $v0, ($s3)
/* F2F4 8000E6F4 3C198008 */  lui        $t9, 0x8008
/* F2F8 8000E6F8 24480008 */  addiu      $t0, $v0, 8
/* F2FC 8000E6FC AE680000 */  sw         $t0, ($s3)
/* F300 8000E700 AC5E0000 */  sw         $fp, ($v0)
/* F304 8000E704 86090014 */  lh         $t1, 0x14($s0)
/* F308 8000E708 8F394F28 */  lw         $t9, 0x4f28($t9)
/* F30C 8000E70C 00095140 */  sll        $t2, $t1, 5
/* F310 8000E710 032A5821 */  addu       $t3, $t9, $t2
/* F314 8000E714 8D6C0010 */  lw         $t4, 0x10($t3)
/* F318 8000E718 AC4C0004 */  sw         $t4, 4($v0)
/* F31C 8000E71C 8EAD0000 */  lw         $t5, ($s5)
/* F320 8000E720 25AE0001 */  addiu      $t6, $t5, 1
/* F324 8000E724 AEAE0000 */  sw         $t6, ($s5)
/* F328 8000E728 02801025 */  or         $v0, $s4, $zero
.L8000E72C:
/* F32C 8000E72C 2631001C */  addiu      $s1, $s1, 0x1c
/* F330 8000E730 1680FFC5 */  bnez       $s4, .L8000E648
/* F334 8000E734 2694FFFF */   addiu     $s4, $s4, -1
.L8000E738:
/* F338 8000E738 8FBF0064 */  lw         $ra, 0x64($sp)
/* F33C 8000E73C D7B40028 */  ldc1       $f20, 0x28($sp)
/* F340 8000E740 D7B60030 */  ldc1       $f22, 0x30($sp)
/* F344 8000E744 D7B80038 */  ldc1       $f24, 0x38($sp)
/* F348 8000E748 8FB00040 */  lw         $s0, 0x40($sp)
/* F34C 8000E74C 8FB10044 */  lw         $s1, 0x44($sp)
/* F350 8000E750 8FB20048 */  lw         $s2, 0x48($sp)
/* F354 8000E754 8FB3004C */  lw         $s3, 0x4c($sp)
/* F358 8000E758 8FB40050 */  lw         $s4, 0x50($sp)
/* F35C 8000E75C 8FB50054 */  lw         $s5, 0x54($sp)
/* F360 8000E760 8FB60058 */  lw         $s6, 0x58($sp)
/* F364 8000E764 8FB7005C */  lw         $s7, 0x5c($sp)
/* F368 8000E768 8FBE0060 */  lw         $fp, 0x60($sp)
/* F36C 8000E76C 03E00008 */  jr         $ra
/* F370 8000E770 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8000E774
/* F374 8000E774 27BDFF90 */  addiu      $sp, $sp, -0x70
/* F378 8000E778 AFB7004C */  sw         $s7, 0x4c($sp)
/* F37C 8000E77C AFB60048 */  sw         $s6, 0x48($sp)
/* F380 8000E780 AFB50044 */  sw         $s5, 0x44($sp)
/* F384 8000E784 00A0A825 */  or         $s5, $a1, $zero
/* F388 8000E788 00E0B025 */  or         $s6, $a3, $zero
/* F38C 8000E78C 00C0B825 */  or         $s7, $a2, $zero
/* F390 8000E790 AFBF0054 */  sw         $ra, 0x54($sp)
/* F394 8000E794 AFBE0050 */  sw         $fp, 0x50($sp)
/* F398 8000E798 AFB40040 */  sw         $s4, 0x40($sp)
/* F39C 8000E79C AFB3003C */  sw         $s3, 0x3c($sp)
/* F3A0 8000E7A0 AFB20038 */  sw         $s2, 0x38($sp)
/* F3A4 8000E7A4 AFB10034 */  sw         $s1, 0x34($sp)
/* F3A8 8000E7A8 AFB00030 */  sw         $s0, 0x30($sp)
/* F3AC 8000E7AC F7B40028 */  sdc1       $f20, 0x28($sp)
/* F3B0 8000E7B0 AFA40070 */  sw         $a0, 0x70($sp)
/* F3B4 8000E7B4 26EEFFEF */  addiu      $t6, $s7, -0x11
/* F3B8 8000E7B8 AFAE0068 */  sw         $t6, 0x68($sp)
/* F3BC 8000E7BC 001778C0 */  sll        $t7, $s7, 3
/* F3C0 8000E7C0 3C188006 */  lui        $t8, 0x8006
/* F3C4 8000E7C4 3C0E8006 */  lui        $t6, 0x8006
/* F3C8 8000E7C8 0017C880 */  sll        $t9, $s7, 2
/* F3CC 8000E7CC 030FC021 */  addu       $t8, $t8, $t7
/* F3D0 8000E7D0 01D97021 */  addu       $t6, $t6, $t9
/* F3D4 8000E7D4 8F18C87C */  lw         $t8, -0x3784($t8)
/* F3D8 8000E7D8 8DCEC90C */  lw         $t6, -0x36f4($t6)
/* F3DC 8000E7DC 0000A025 */  or         $s4, $zero, $zero
/* F3E0 8000E7E0 AFB8005C */  sw         $t8, 0x5c($sp)
/* F3E4 8000E7E4 12A000C5 */  beqz       $s5, .L8000EAFC
/* F3E8 8000E7E8 AFAE0060 */   sw        $t6, 0x60($sp)
/* F3EC 8000E7EC 3C138008 */  lui        $s3, 0x8008
/* F3F0 8000E7F0 3C118008 */  lui        $s1, 0x8008
/* F3F4 8000E7F4 3C1F8008 */  lui        $ra, 0x8008
/* F3F8 8000E7F8 4480A000 */  mtc1       $zero, $f20
/* F3FC 8000E7FC 27FF4F34 */  addiu      $ra, $ra, 0x4f34
/* F400 8000E800 2631B2FC */  addiu      $s1, $s1, -0x4d04
/* F404 8000E804 2673B2F8 */  addiu      $s3, $s3, -0x4d08
/* F408 8000E808 3C1E0600 */  lui        $fp, 0x600
/* F40C 8000E80C 8ED20000 */  lw         $s2, ($s6)
.L8000E810:
/* F410 8000E810 3C0E8005 */  lui        $t6, 0x8005
/* F414 8000E814 26D60004 */  addiu      $s6, $s6, 4
/* F418 8000E818 964F0016 */  lhu        $t7, 0x16($s2)
/* F41C 8000E81C 25CEC3E4 */  addiu      $t6, $t6, -0x3c1c
/* F420 8000E820 0017C840 */  sll        $t9, $s7, 1
/* F424 8000E824 31F800FF */  andi       $t8, $t7, 0xff
/* F428 8000E828 56F800B2 */  bnel       $s7, $t8, .L8000EAF4
/* F42C 8000E82C 26B5FFFF */   addiu     $s5, $s5, -1
/* F430 8000E830 1680000C */  bnez       $s4, .L8000E864
/* F434 8000E834 032E5021 */   addu      $t2, $t9, $t6
/* F438 8000E838 8E300000 */  lw         $s0, ($s1)
/* F43C 8000E83C 3C0E8006 */  lui        $t6, 0x8006
/* F440 8000E840 26940001 */  addiu      $s4, $s4, 1
/* F444 8000E844 260F0008 */  addiu      $t7, $s0, 8
/* F448 8000E848 AE2F0000 */  sw         $t7, ($s1)
/* F44C 8000E84C AE1E0000 */  sw         $fp, ($s0)
/* F450 8000E850 8FB80068 */  lw         $t8, 0x68($sp)
/* F454 8000E854 0018C8C0 */  sll        $t9, $t8, 3
/* F458 8000E858 01D97021 */  addu       $t6, $t6, $t9
/* F45C 8000E85C 8DCEC900 */  lw         $t6, -0x3700($t6)
/* F460 8000E860 AE0E0004 */  sw         $t6, 4($s0)
.L8000E864:
/* F464 8000E864 8E300000 */  lw         $s0, ($s1)
/* F468 8000E868 3C18FD50 */  lui        $t8, 0xfd50
/* F46C 8000E86C 4407A000 */  mfc1       $a3, $f20
/* F470 8000E870 260F0008 */  addiu      $t7, $s0, 8
/* F474 8000E874 AE2F0000 */  sw         $t7, ($s1)
/* F478 8000E878 AE180000 */  sw         $t8, ($s0)
/* F47C 8000E87C 864E0014 */  lh         $t6, 0x14($s2)
/* F480 8000E880 8FB90060 */  lw         $t9, 0x60($sp)
/* F484 8000E884 240B07FF */  addiu      $t3, $zero, 0x7ff
/* F488 8000E888 000E7843 */  sra        $t7, $t6, 1
/* F48C 8000E88C 31F80007 */  andi       $t8, $t7, 7
/* F490 8000E890 00187080 */  sll        $t6, $t8, 2
/* F494 8000E894 032E7821 */  addu       $t7, $t9, $t6
/* F498 8000E898 8DF80000 */  lw         $t8, ($t7)
/* F49C 8000E89C AE180004 */  sw         $t8, 4($s0)
/* F4A0 8000E8A0 8E230000 */  lw         $v1, ($s1)
/* F4A4 8000E8A4 3C0EF550 */  lui        $t6, 0xf550
/* F4A8 8000E8A8 3C0F0700 */  lui        $t7, 0x700
/* F4AC 8000E8AC 24790008 */  addiu      $t9, $v1, 8
/* F4B0 8000E8B0 AE390000 */  sw         $t9, ($s1)
/* F4B4 8000E8B4 AC6F0004 */  sw         $t7, 4($v1)
/* F4B8 8000E8B8 AC6E0000 */  sw         $t6, ($v1)
/* F4BC 8000E8BC 8E240000 */  lw         $a0, ($s1)
/* F4C0 8000E8C0 3C19E600 */  lui        $t9, 0xe600
/* F4C4 8000E8C4 24980008 */  addiu      $t8, $a0, 8
/* F4C8 8000E8C8 AE380000 */  sw         $t8, ($s1)
/* F4CC 8000E8CC AC800004 */  sw         $zero, 4($a0)
/* F4D0 8000E8D0 AC990000 */  sw         $t9, ($a0)
/* F4D4 8000E8D4 8E300000 */  lw         $s0, ($s1)
/* F4D8 8000E8D8 3C0FF300 */  lui        $t7, 0xf300
/* F4DC 8000E8DC 260E0008 */  addiu      $t6, $s0, 8
/* F4E0 8000E8E0 AE2E0000 */  sw         $t6, ($s1)
/* F4E4 8000E8E4 AE0F0000 */  sw         $t7, ($s0)
/* F4E8 8000E8E8 9545FFDE */  lhu        $a1, -0x22($t2)
/* F4EC 8000E8EC 02006825 */  or         $t5, $s0, $zero
/* F4F0 8000E8F0 00053140 */  sll        $a2, $a1, 5
/* F4F4 8000E8F4 24C60001 */  addiu      $a2, $a2, 1
/* F4F8 8000E8F8 0006C043 */  sra        $t8, $a2, 1
/* F4FC 8000E8FC 2706FFFF */  addiu      $a2, $t8, -1
/* F500 8000E900 28C107FF */  slti       $at, $a2, 0x7ff
/* F504 8000E904 10200003 */  beqz       $at, .L8000E914
/* F508 8000E908 00000000 */   nop       
/* F50C 8000E90C 10000001 */  b          .L8000E914
/* F510 8000E910 00C05825 */   or        $t3, $a2, $zero
.L8000E914:
/* F514 8000E914 04A10003 */  bgez       $a1, .L8000E924
/* F518 8000E918 000510C3 */   sra       $v0, $a1, 3
/* F51C 8000E91C 24A10007 */  addiu      $at, $a1, 7
/* F520 8000E920 000110C3 */  sra        $v0, $at, 3
.L8000E924:
/* F524 8000E924 1C400003 */  bgtz       $v0, .L8000E934
/* F528 8000E928 3C068008 */   lui       $a2, 0x8008
/* F52C 8000E92C 10000002 */  b          .L8000E938
/* F530 8000E930 240C0001 */   addiu     $t4, $zero, 1
.L8000E934:
/* F534 8000E934 00406025 */  or         $t4, $v0, $zero
.L8000E938:
/* F538 8000E938 1C400003 */  bgtz       $v0, .L8000E948
/* F53C 8000E93C 259907FF */   addiu     $t9, $t4, 0x7ff
/* F540 8000E940 10000002 */  b          .L8000E94C
/* F544 8000E944 24090001 */   addiu     $t1, $zero, 1
.L8000E948:
/* F548 8000E948 00404825 */  or         $t1, $v0, $zero
.L8000E94C:
/* F54C 8000E94C 0329001A */  div        $zero, $t9, $t1
/* F550 8000E950 15200002 */  bnez       $t1, .L8000E95C
/* F554 8000E954 00000000 */   nop       
/* F558 8000E958 0007000D */  break      7
.L8000E95C:
/* F55C 8000E95C 2401FFFF */   addiu     $at, $zero, -1
/* F560 8000E960 15210004 */  bne        $t1, $at, .L8000E974
/* F564 8000E964 3C018000 */   lui       $at, 0x8000
/* F568 8000E968 17210002 */  bne        $t9, $at, .L8000E974
/* F56C 8000E96C 00000000 */   nop       
/* F570 8000E970 0006000D */  break      6
.L8000E974:
/* F574 8000E974 00007012 */   mflo      $t6
/* F578 8000E978 31CF0FFF */  andi       $t7, $t6, 0xfff
/* F57C 8000E97C 3C010700 */  lui        $at, 0x700
/* F580 8000E980 31790FFF */  andi       $t9, $t3, 0xfff
/* F584 8000E984 00197300 */  sll        $t6, $t9, 0xc
/* F588 8000E988 01E1C025 */  or         $t8, $t7, $at
/* F58C 8000E98C 030E7825 */  or         $t7, $t8, $t6
/* F590 8000E990 ADAF0004 */  sw         $t7, 4($t5)
/* F594 8000E994 8E300000 */  lw         $s0, ($s1)
/* F598 8000E998 3C18E700 */  lui        $t8, 0xe700
/* F59C 8000E99C 26190008 */  addiu      $t9, $s0, 8
/* F5A0 8000E9A0 AE390000 */  sw         $t9, ($s1)
/* F5A4 8000E9A4 AE000004 */  sw         $zero, 4($s0)
/* F5A8 8000E9A8 AE180000 */  sw         $t8, ($s0)
/* F5AC 8000E9AC 8E300000 */  lw         $s0, ($s1)
/* F5B0 8000E9B0 954FFFDE */  lhu        $t7, -0x22($t2)
/* F5B4 8000E9B4 3C01F548 */  lui        $at, 0xf548
/* F5B8 8000E9B8 260E0008 */  addiu      $t6, $s0, 8
/* F5BC 8000E9BC 25F90007 */  addiu      $t9, $t7, 7
/* F5C0 8000E9C0 0019C0C3 */  sra        $t8, $t9, 3
/* F5C4 8000E9C4 AE2E0000 */  sw         $t6, ($s1)
/* F5C8 8000E9C8 330E01FF */  andi       $t6, $t8, 0x1ff
/* F5CC 8000E9CC 000E7A40 */  sll        $t7, $t6, 9
/* F5D0 8000E9D0 01E1C825 */  or         $t9, $t7, $at
/* F5D4 8000E9D4 AE190000 */  sw         $t9, ($s0)
/* F5D8 8000E9D8 AE000004 */  sw         $zero, 4($s0)
/* F5DC 8000E9DC 8E300000 */  lw         $s0, ($s1)
/* F5E0 8000E9E0 3C0EF200 */  lui        $t6, 0xf200
/* F5E4 8000E9E4 26180008 */  addiu      $t8, $s0, 8
/* F5E8 8000E9E8 AE380000 */  sw         $t8, ($s1)
/* F5EC 8000E9EC AE0E0000 */  sw         $t6, ($s0)
/* F5F0 8000E9F0 954FFFDE */  lhu        $t7, -0x22($t2)
/* F5F4 8000E9F4 25F9FFFF */  addiu      $t9, $t7, -1
/* F5F8 8000E9F8 0019C080 */  sll        $t8, $t9, 2
/* F5FC 8000E9FC 330E0FFF */  andi       $t6, $t8, 0xfff
/* F600 8000EA00 000E7B00 */  sll        $t7, $t6, 0xc
/* F604 8000EA04 35F9007C */  ori        $t9, $t7, 0x7c
/* F608 8000EA08 AE190004 */  sw         $t9, 4($s0)
/* F60C 8000EA0C C6440010 */  lwc1       $f4, 0x10($s2)
/* F610 8000EA10 8E6E0000 */  lw         $t6, ($s3)
/* F614 8000EA14 8FB80070 */  lw         $t8, 0x70($sp)
/* F618 8000EA18 E7A40010 */  swc1       $f4, 0x10($sp)
/* F61C 8000EA1C C6460000 */  lwc1       $f6, ($s2)
/* F620 8000EA20 000E7980 */  sll        $t7, $t6, 6
/* F624 8000EA24 4405A000 */  mfc1       $a1, $f20
/* F628 8000EA28 E7A60014 */  swc1       $f6, 0x14($sp)
/* F62C 8000EA2C C6480004 */  lwc1       $f8, 4($s2)
/* F630 8000EA30 030F2021 */  addu       $a0, $t8, $t7
/* F634 8000EA34 248400C0 */  addiu      $a0, $a0, 0xc0
/* F638 8000EA38 E7A80018 */  swc1       $f8, 0x18($sp)
/* F63C 8000EA3C C64A0008 */  lwc1       $f10, 8($s2)
/* F640 8000EA40 8CC66DEC */  lw         $a2, 0x6dec($a2)
/* F644 8000EA44 0C008D40 */  jal        func_80023500
/* F648 8000EA48 E7AA001C */   swc1      $f10, 0x1c($sp)
/* F64C 8000EA4C 3C1F8008 */  lui        $ra, 0x8008
/* F650 8000EA50 27FF4F34 */  addiu      $ra, $ra, 0x4f34
/* F654 8000EA54 8E300000 */  lw         $s0, ($s1)
/* F658 8000EA58 3C0E0102 */  lui        $t6, 0x102
/* F65C 8000EA5C 35CE0040 */  ori        $t6, $t6, 0x40
/* F660 8000EA60 26190008 */  addiu      $t9, $s0, 8
/* F664 8000EA64 AE390000 */  sw         $t9, ($s1)
/* F668 8000EA68 AE0E0000 */  sw         $t6, ($s0)
/* F66C 8000EA6C 8E780000 */  lw         $t8, ($s3)
/* F670 8000EA70 3C0E0200 */  lui        $t6, 0x200
/* F674 8000EA74 25CE0000 */  addiu      $t6, $t6, 0
/* F678 8000EA78 00187980 */  sll        $t7, $t8, 6
/* F67C 8000EA7C 25F900C0 */  addiu      $t9, $t7, 0xc0
/* F680 8000EA80 032EC021 */  addu       $t8, $t9, $t6
/* F684 8000EA84 AE180004 */  sw         $t8, 4($s0)
/* F688 8000EA88 8E6F0000 */  lw         $t7, ($s3)
/* F68C 8000EA8C 25F90001 */  addiu      $t9, $t7, 1
/* F690 8000EA90 AE790000 */  sw         $t9, ($s3)
/* F694 8000EA94 8E300000 */  lw         $s0, ($s1)
/* F698 8000EA98 3C18FB00 */  lui        $t8, 0xfb00
/* F69C 8000EA9C 260E0008 */  addiu      $t6, $s0, 8
/* F6A0 8000EAA0 AE2E0000 */  sw         $t6, ($s1)
/* F6A4 8000EAA4 AE180000 */  sw         $t8, ($s0)
/* F6A8 8000EAA8 864F0014 */  lh         $t7, 0x14($s2)
/* F6AC 8000EAAC 3C0E8005 */  lui        $t6, 0x8005
/* F6B0 8000EAB0 31F90003 */  andi       $t9, $t7, 3
/* F6B4 8000EAB4 01D97021 */  addu       $t6, $t6, $t9
/* F6B8 8000EAB8 91D8C3E8 */  lbu        $t8, -0x3c18($t6)
/* F6BC 8000EABC AE180004 */  sw         $t8, 4($s0)
/* F6C0 8000EAC0 8E300000 */  lw         $s0, ($s1)
/* F6C4 8000EAC4 260F0008 */  addiu      $t7, $s0, 8
/* F6C8 8000EAC8 AE2F0000 */  sw         $t7, ($s1)
/* F6CC 8000EACC AE1E0000 */  sw         $fp, ($s0)
/* F6D0 8000EAD0 8FB9005C */  lw         $t9, 0x5c($sp)
/* F6D4 8000EAD4 AE190004 */  sw         $t9, 4($s0)
/* F6D8 8000EAD8 864E0014 */  lh         $t6, 0x14($s2)
/* F6DC 8000EADC 25D80001 */  addiu      $t8, $t6, 1
/* F6E0 8000EAE0 A6580014 */  sh         $t8, 0x14($s2)
/* F6E4 8000EAE4 8FEF0000 */  lw         $t7, ($ra)
/* F6E8 8000EAE8 25F90001 */  addiu      $t9, $t7, 1
/* F6EC 8000EAEC AFF90000 */  sw         $t9, ($ra)
/* F6F0 8000EAF0 26B5FFFF */  addiu      $s5, $s5, -1
.L8000EAF4:
/* F6F4 8000EAF4 56A0FF46 */  bnel       $s5, $zero, .L8000E810
/* F6F8 8000EAF8 8ED20000 */   lw        $s2, ($s6)
.L8000EAFC:
/* F6FC 8000EAFC 8FBF0054 */  lw         $ra, 0x54($sp)
/* F700 8000EB00 D7B40028 */  ldc1       $f20, 0x28($sp)
/* F704 8000EB04 8FB00030 */  lw         $s0, 0x30($sp)
/* F708 8000EB08 8FB10034 */  lw         $s1, 0x34($sp)
/* F70C 8000EB0C 8FB20038 */  lw         $s2, 0x38($sp)
/* F710 8000EB10 8FB3003C */  lw         $s3, 0x3c($sp)
/* F714 8000EB14 8FB40040 */  lw         $s4, 0x40($sp)
/* F718 8000EB18 8FB50044 */  lw         $s5, 0x44($sp)
/* F71C 8000EB1C 8FB60048 */  lw         $s6, 0x48($sp)
/* F720 8000EB20 8FB7004C */  lw         $s7, 0x4c($sp)
/* F724 8000EB24 8FBE0050 */  lw         $fp, 0x50($sp)
/* F728 8000EB28 03E00008 */  jr         $ra
/* F72C 8000EB2C 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8000EB30
/* F730 8000EB30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F734 8000EB34 3C028005 */  lui        $v0, 0x8005
/* F738 8000EB38 2442C3F8 */  addiu      $v0, $v0, -0x3c08
/* F73C 8000EB3C AFB30014 */  sw         $s3, 0x14($sp)
/* F740 8000EB40 AFB20010 */  sw         $s2, 0x10($sp)
/* F744 8000EB44 AFB1000C */  sw         $s1, 0xc($sp)
/* F748 8000EB48 AFB00008 */  sw         $s0, 8($sp)
/* F74C 8000EB4C 240300FF */  addiu      $v1, $zero, 0xff
/* F750 8000EB50 944E0006 */  lhu        $t6, 6($v0)
/* F754 8000EB54 00402825 */  or         $a1, $v0, $zero
/* F758 8000EB58 3C028008 */  lui        $v0, 0x8008
/* F75C 8000EB5C 106E0012 */  beq        $v1, $t6, .L8000EBA8
/* F760 8000EB60 3C068005 */   lui       $a2, 0x8005
/* F764 8000EB64 8C4259D0 */  lw         $v0, 0x59d0($v0)
/* F768 8000EB68 8CAF0000 */  lw         $t7, ($a1)
.L8000EB6C:
/* F76C 8000EB6C 004F082A */  slt        $at, $v0, $t7
/* F770 8000EB70 5420000A */  bnel       $at, $zero, .L8000EB9C
/* F774 8000EB74 94B9000E */   lhu       $t9, 0xe($a1)
/* F778 8000EB78 8CB80008 */  lw         $t8, 8($a1)
/* F77C 8000EB7C 0058082A */  slt        $at, $v0, $t8
/* F780 8000EB80 50200006 */  beql       $at, $zero, .L8000EB9C
/* F784 8000EB84 94B9000E */   lhu       $t9, 0xe($a1)
/* F788 8000EB88 94A40006 */  lhu        $a0, 6($a1)
/* F78C 8000EB8C 3C018005 */  lui        $at, 0x8005
/* F790 8000EB90 10000005 */  b          .L8000EBA8
/* F794 8000EB94 AC24C3EC */   sw        $a0, -0x3c14($at)
/* F798 8000EB98 94B9000E */  lhu        $t9, 0xe($a1)
.L8000EB9C:
/* F79C 8000EB9C 24A50008 */  addiu      $a1, $a1, 8
/* F7A0 8000EBA0 5479FFF2 */  bnel       $v1, $t9, .L8000EB6C
/* F7A4 8000EBA4 8CAF0000 */   lw        $t7, ($a1)
.L8000EBA8:
/* F7A8 8000EBA8 3C048005 */  lui        $a0, 0x8005
/* F7AC 8000EBAC 8C84C3EC */  lw         $a0, -0x3c14($a0)
/* F7B0 8000EBB0 8CC6C3F4 */  lw         $a2, -0x3c0c($a2)
/* F7B4 8000EBB4 3C078008 */  lui        $a3, 0x8008
/* F7B8 8000EBB8 24E720D8 */  addiu      $a3, $a3, 0x20d8
/* F7BC 8000EBBC 10860012 */  beq        $a0, $a2, .L8000EC08
/* F7C0 8000EBC0 3C028005 */   lui       $v0, 0x8005
/* F7C4 8000EBC4 00067A40 */  sll        $t7, $a2, 9
/* F7C8 8000EBC8 00EFC021 */  addu       $t8, $a3, $t7
/* F7CC 8000EBCC 3C018008 */  lui        $at, 0x8008
/* F7D0 8000EBD0 AC383C88 */  sw         $t8, 0x3c88($at)
/* F7D4 8000EBD4 00047240 */  sll        $t6, $a0, 9
/* F7D8 8000EBD8 94A30004 */  lhu        $v1, 4($a1)
/* F7DC 8000EBDC 00EE7821 */  addu       $t7, $a3, $t6
/* F7E0 8000EBE0 3C018008 */  lui        $at, 0x8008
/* F7E4 8000EBE4 AC2F4090 */  sw         $t7, 0x4090($at)
/* F7E8 8000EBE8 3C188008 */  lui        $t8, 0x8008
/* F7EC 8000EBEC 27181CD8 */  addiu      $t8, $t8, 0x1cd8
/* F7F0 8000EBF0 3C018008 */  lui        $at, 0x8008
/* F7F4 8000EBF4 AC384178 */  sw         $t8, 0x4178($at)
/* F7F8 8000EBF8 3C018005 */  lui        $at, 0x8005
/* F7FC 8000EBFC AC23C3F0 */  sw         $v1, -0x3c10($at)
/* F800 8000EC00 3C018008 */  lui        $at, 0x8008
/* F804 8000EC04 AC233480 */  sw         $v1, 0x3480($at)
.L8000EC08:
/* F808 8000EC08 8C42C3F0 */  lw         $v0, -0x3c10($v0)
/* F80C 8000EC0C 3C038008 */  lui        $v1, 0x8008
/* F810 8000EC10 8C633480 */  lw         $v1, 0x3480($v1)
/* F814 8000EC14 10400065 */  beqz       $v0, .L8000EDAC
/* F818 8000EC18 3C058008 */   lui       $a1, 0x8008
/* F81C 8000EC1C 3C068008 */  lui        $a2, 0x8008
/* F820 8000EC20 3C078008 */  lui        $a3, 0x8008
/* F824 8000EC24 8CA54178 */  lw         $a1, 0x4178($a1)
/* F828 8000EC28 8CC63C88 */  lw         $a2, 0x3c88($a2)
/* F82C 8000EC2C 8CE74090 */  lw         $a3, 0x4090($a3)
/* F830 8000EC30 00624023 */  subu       $t0, $v1, $v0
/* F834 8000EC34 240A00FF */  addiu      $t2, $zero, 0xff
.L8000EC38:
/* F838 8000EC38 94C90000 */  lhu        $t1, ($a2)
/* F83C 8000EC3C 94F10000 */  lhu        $s1, ($a3)
/* F840 8000EC40 24C60002 */  addiu      $a2, $a2, 2
/* F844 8000EC44 312BF800 */  andi       $t3, $t1, 0xf800
/* F848 8000EC48 000BCAC3 */  sra        $t9, $t3, 0xb
/* F84C 8000EC4C 332BFFFF */  andi       $t3, $t9, 0xffff
/* F850 8000EC50 01620019 */  multu      $t3, $v0
/* F854 8000EC54 312D003E */  andi       $t5, $t1, 0x3e
/* F858 8000EC58 000DC843 */  sra        $t9, $t5, 1
/* F85C 8000EC5C 332DFFFF */  andi       $t5, $t9, 0xffff
/* F860 8000EC60 323207C0 */  andi       $s2, $s1, 0x7c0
/* F864 8000EC64 0012C983 */  sra        $t9, $s2, 6
/* F868 8000EC68 312C07C0 */  andi       $t4, $t1, 0x7c0
/* F86C 8000EC6C 000C7983 */  sra        $t7, $t4, 6
/* F870 8000EC70 3332FFFF */  andi       $s2, $t9, 0xffff
/* F874 8000EC74 31ECFFFF */  andi       $t4, $t7, 0xffff
/* F878 8000EC78 0000C812 */  mflo       $t9
/* F87C 8000EC7C 3230F800 */  andi       $s0, $s1, 0xf800
/* F880 8000EC80 00107AC3 */  sra        $t7, $s0, 0xb
/* F884 8000EC84 31F0FFFF */  andi       $s0, $t7, 0xffff
/* F888 8000EC88 02080019 */  multu      $s0, $t0
/* F88C 8000EC8C 3233003E */  andi       $s3, $s1, 0x3e
/* F890 8000EC90 00137843 */  sra        $t7, $s3, 1
/* F894 8000EC94 31F8FFFF */  andi       $t8, $t7, 0xffff
/* F898 8000EC98 03009825 */  or         $s3, $t8, $zero
/* F89C 8000EC9C 01404825 */  or         $t1, $t2, $zero
/* F8A0 8000ECA0 24E70002 */  addiu      $a3, $a3, 2
/* F8A4 8000ECA4 24A50002 */  addiu      $a1, $a1, 2
/* F8A8 8000ECA8 00007012 */  mflo       $t6
/* F8AC 8000ECAC 032E7821 */  addu       $t7, $t9, $t6
/* F8B0 8000ECB0 00000000 */  nop        
/* F8B4 8000ECB4 01E3001A */  div        $zero, $t7, $v1
/* F8B8 8000ECB8 0000C012 */  mflo       $t8
/* F8BC 8000ECBC 0018CAC0 */  sll        $t9, $t8, 0xb
/* F8C0 8000ECC0 14600002 */  bnez       $v1, .L8000ECCC
/* F8C4 8000ECC4 00000000 */   nop       
/* F8C8 8000ECC8 0007000D */  break      7
.L8000ECCC:
/* F8CC 8000ECCC 2401FFFF */   addiu     $at, $zero, -1
/* F8D0 8000ECD0 14610004 */  bne        $v1, $at, .L8000ECE4
/* F8D4 8000ECD4 3C018000 */   lui       $at, 0x8000
/* F8D8 8000ECD8 15E10002 */  bne        $t7, $at, .L8000ECE4
/* F8DC 8000ECDC 00000000 */   nop       
/* F8E0 8000ECE0 0006000D */  break      6
.L8000ECE4:
/* F8E4 8000ECE4 01820019 */   multu     $t4, $v0
/* F8E8 8000ECE8 00007012 */  mflo       $t6
/* F8EC 8000ECEC 00000000 */  nop        
/* F8F0 8000ECF0 00000000 */  nop        
/* F8F4 8000ECF4 02480019 */  multu      $s2, $t0
/* F8F8 8000ECF8 00007812 */  mflo       $t7
/* F8FC 8000ECFC 01CFC021 */  addu       $t8, $t6, $t7
/* F900 8000ED00 00000000 */  nop        
/* F904 8000ED04 0303001A */  div        $zero, $t8, $v1
/* F908 8000ED08 00007012 */  mflo       $t6
/* F90C 8000ED0C 000E7980 */  sll        $t7, $t6, 6
/* F910 8000ED10 14600002 */  bnez       $v1, .L8000ED1C
/* F914 8000ED14 00000000 */   nop       
/* F918 8000ED18 0007000D */  break      7
.L8000ED1C:
/* F91C 8000ED1C 2401FFFF */   addiu     $at, $zero, -1
/* F920 8000ED20 14610004 */  bne        $v1, $at, .L8000ED34
/* F924 8000ED24 3C018000 */   lui       $at, 0x8000
/* F928 8000ED28 17010002 */  bne        $t8, $at, .L8000ED34
/* F92C 8000ED2C 00000000 */   nop       
/* F930 8000ED30 0006000D */  break      6
.L8000ED34:
/* F934 8000ED34 01A20019 */   multu     $t5, $v0
/* F938 8000ED38 032FC025 */  or         $t8, $t9, $t7
/* F93C 8000ED3C 00007012 */  mflo       $t6
/* F940 8000ED40 00000000 */  nop        
/* F944 8000ED44 00000000 */  nop        
/* F948 8000ED48 02680019 */  multu      $s3, $t0
/* F94C 8000ED4C 0000C812 */  mflo       $t9
/* F950 8000ED50 01D97821 */  addu       $t7, $t6, $t9
/* F954 8000ED54 00000000 */  nop        
/* F958 8000ED58 01E3001A */  div        $zero, $t7, $v1
/* F95C 8000ED5C 00007012 */  mflo       $t6
/* F960 8000ED60 000EC840 */  sll        $t9, $t6, 1
/* F964 8000ED64 14600002 */  bnez       $v1, .L8000ED70
/* F968 8000ED68 00000000 */   nop       
/* F96C 8000ED6C 0007000D */  break      7
.L8000ED70:
/* F970 8000ED70 2401FFFF */   addiu     $at, $zero, -1
/* F974 8000ED74 14610004 */  bne        $v1, $at, .L8000ED88
/* F978 8000ED78 3C018000 */   lui       $at, 0x8000
/* F97C 8000ED7C 15E10002 */  bne        $t7, $at, .L8000ED88
/* F980 8000ED80 00000000 */   nop       
/* F984 8000ED84 0006000D */  break      6
.L8000ED88:
/* F988 8000ED88 03197825 */   or        $t7, $t8, $t9
/* F98C 8000ED8C A4AFFFFE */  sh         $t7, -2($a1)
/* F990 8000ED90 1540FFA9 */  bnez       $t2, .L8000EC38
/* F994 8000ED94 254AFFFF */   addiu     $t2, $t2, -1
/* F998 8000ED98 3C018008 */  lui        $at, 0x8008
/* F99C 8000ED9C AC233480 */  sw         $v1, 0x3480($at)
/* F9A0 8000EDA0 3C018005 */  lui        $at, 0x8005
/* F9A4 8000EDA4 2442FFFF */  addiu      $v0, $v0, -1
/* F9A8 8000EDA8 AC22C3F0 */  sw         $v0, -0x3c10($at)
.L8000EDAC:
/* F9AC 8000EDAC 00803025 */  or         $a2, $a0, $zero
/* F9B0 8000EDB0 3C018005 */  lui        $at, 0x8005
/* F9B4 8000EDB4 AC24C3EC */  sw         $a0, -0x3c14($at)
/* F9B8 8000EDB8 3C018005 */  lui        $at, 0x8005
/* F9BC 8000EDBC 8FB00008 */  lw         $s0, 8($sp)
/* F9C0 8000EDC0 8FB1000C */  lw         $s1, 0xc($sp)
/* F9C4 8000EDC4 8FB20010 */  lw         $s2, 0x10($sp)
/* F9C8 8000EDC8 8FB30014 */  lw         $s3, 0x14($sp)
/* F9CC 8000EDCC 27BD0018 */  addiu      $sp, $sp, 0x18
/* F9D0 8000EDD0 03E00008 */  jr         $ra
/* F9D4 8000EDD4 AC26C3F4 */   sw        $a2, -0x3c0c($at)

glabel func_8000EDD8
/* F9D8 8000EDD8 3C028005 */  lui        $v0, 0x8005
/* F9DC 8000EDDC 8C42C428 */  lw         $v0, -0x3bd8($v0)
/* F9E0 8000EDE0 04400019 */  bltz       $v0, .L8000EE48
/* F9E4 8000EDE4 3C058008 */   lui       $a1, 0x8008
/* F9E8 8000EDE8 24A526D8 */  addiu      $a1, $a1, 0x26d8
/* F9EC 8000EDEC 3C0E8008 */  lui        $t6, 0x8008
/* F9F0 8000EDF0 95CE2868 */  lhu        $t6, 0x2868($t6)
/* F9F4 8000EDF4 94A30192 */  lhu        $v1, 0x192($a1)
/* F9F8 8000EDF8 3C018005 */  lui        $at, 0x8005
/* F9FC 8000EDFC AC20C428 */  sw         $zero, -0x3bd8($at)
/* FA00 8000EE00 3C018008 */  lui        $at, 0x8008
/* FA04 8000EE04 3C048008 */  lui        $a0, 0x8008
/* FA08 8000EE08 24842866 */  addiu      $a0, $a0, 0x2866
/* FA0C 8000EE0C 240200C8 */  addiu      $v0, $zero, 0xc8
/* FA10 8000EE10 A42E286A */  sh         $t6, 0x286a($at)
.L8000EE14:
/* FA14 8000EE14 948F0000 */  lhu        $t7, ($a0)
/* FA18 8000EE18 9498FFFE */  lhu        $t8, -2($a0)
/* FA1C 8000EE1C 9499FFFC */  lhu        $t9, -4($a0)
/* FA20 8000EE20 9488FFFA */  lhu        $t0, -6($a0)
/* FA24 8000EE24 2442FFFC */  addiu      $v0, $v0, -4
/* FA28 8000EE28 2484FFF8 */  addiu      $a0, $a0, -8
/* FA2C 8000EE2C A48F000A */  sh         $t7, 0xa($a0)
/* FA30 8000EE30 A4980008 */  sh         $t8, 8($a0)
/* FA34 8000EE34 A4990006 */  sh         $t9, 6($a0)
/* FA38 8000EE38 1440FFF6 */  bnez       $v0, .L8000EE14
/* FA3C 8000EE3C A4880004 */   sh        $t0, 4($a0)
/* FA40 8000EE40 03E00008 */  jr         $ra
/* FA44 8000EE44 A4A30000 */   sh        $v1, ($a1)
.L8000EE48:
/* FA48 8000EE48 24420001 */  addiu      $v0, $v0, 1
/* FA4C 8000EE4C 3C018005 */  lui        $at, 0x8005
/* FA50 8000EE50 AC22C428 */  sw         $v0, -0x3bd8($at)
/* FA54 8000EE54 03E00008 */  jr         $ra
/* FA58 8000EE58 00000000 */   nop       
/* FA5C 8000EE5C 00000000 */  nop        
