.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osContRamRead
/* 46450 80045850 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 46454 80045854 3C0E8009 */  lui        $t6, %hi(__osPfsPifRam)
/* 46458 80045858 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4645C 8004585C 25CE5660 */  addiu      $t6, $t6, %lo(__osPfsPifRam)
/* 46460 80045860 240F0002 */  addiu      $t7, $zero, 2
/* 46464 80045864 AFA40060 */  sw         $a0, 0x60($sp)
/* 46468 80045868 AFA50064 */  sw         $a1, 0x64($sp)
/* 4646C 8004586C AFA60068 */  sw         $a2, 0x68($sp)
/* 46470 80045870 AFA7006C */  sw         $a3, 0x6c($sp)
/* 46474 80045874 AFB00018 */  sw         $s0, 0x18($sp)
/* 46478 80045878 AFA0005C */  sw         $zero, 0x5c($sp)
/* 4647C 8004587C AFAE0054 */  sw         $t6, 0x54($sp)
/* 46480 80045880 0C011210 */  jal        __osSiGetAccess
/* 46484 80045884 AFAF0028 */   sw        $t7, 0x28($sp)
/* 46488 80045888 24180002 */  addiu      $t8, $zero, 2
/* 4648C 8004588C 3C018009 */  lui        $at, %hi(__osContLastCmd)
/* 46490 80045890 A0385490 */  sb         $t8, %lo(__osContLastCmd)($at)
/* 46494 80045894 8FA40064 */  lw         $a0, 0x64($sp)
/* 46498 80045898 0C01169B */  jal        __osPackRamReadData
/* 4649C 8004589C 97A5006A */   lhu       $a1, 0x6a($sp)
/* 464A0 800458A0 3C058009 */  lui        $a1, %hi(__osPfsPifRam)
/* 464A4 800458A4 24A55660 */  addiu      $a1, $a1, %lo(__osPfsPifRam)
/* 464A8 800458A8 0C011A54 */  jal        __osSiRawStartDma
/* 464AC 800458AC 24040001 */   addiu     $a0, $zero, 1
/* 464B0 800458B0 AFA2005C */  sw         $v0, 0x5c($sp)
/* 464B4 800458B4 8FA40060 */  lw         $a0, 0x60($sp)
/* 464B8 800458B8 00002825 */  or         $a1, $zero, $zero
/* 464BC 800458BC 0C00D008 */  jal        osRecvMesg
/* 464C0 800458C0 24060001 */   addiu     $a2, $zero, 1
.L800458C4:
/* 464C4 800458C4 3C058009 */  lui        $a1, %hi(__osPfsPifRam)
/* 464C8 800458C8 24A55660 */  addiu      $a1, $a1, %lo(__osPfsPifRam)
/* 464CC 800458CC 0C011A54 */  jal        __osSiRawStartDma
/* 464D0 800458D0 00002025 */   or        $a0, $zero, $zero
/* 464D4 800458D4 AFA2005C */  sw         $v0, 0x5c($sp)
/* 464D8 800458D8 8FA40060 */  lw         $a0, 0x60($sp)
/* 464DC 800458DC 00002825 */  or         $a1, $zero, $zero
/* 464E0 800458E0 0C00D008 */  jal        osRecvMesg
/* 464E4 800458E4 24060001 */   addiu     $a2, $zero, 1
/* 464E8 800458E8 8FA80064 */  lw         $t0, 0x64($sp)
/* 464EC 800458EC 3C198009 */  lui        $t9, %hi(__osPfsPifRam)
/* 464F0 800458F0 27395660 */  addiu      $t9, $t9, %lo(__osPfsPifRam)
/* 464F4 800458F4 1100000C */  beqz       $t0, .L80045928
/* 464F8 800458F8 AFB90054 */   sw        $t9, 0x54($sp)
/* 464FC 800458FC 1900000A */  blez       $t0, .L80045928
/* 46500 80045900 AFA00058 */   sw        $zero, 0x58($sp)
.L80045904:
/* 46504 80045904 8FAB0058 */  lw         $t3, 0x58($sp)
/* 46508 80045908 8FAD0064 */  lw         $t5, 0x64($sp)
/* 4650C 8004590C 8FA90054 */  lw         $t1, 0x54($sp)
/* 46510 80045910 256C0001 */  addiu      $t4, $t3, 1
/* 46514 80045914 018D082A */  slt        $at, $t4, $t5
/* 46518 80045918 252A0001 */  addiu      $t2, $t1, 1
/* 4651C 8004591C AFAC0058 */  sw         $t4, 0x58($sp)
/* 46520 80045920 1420FFF8 */  bnez       $at, .L80045904
/* 46524 80045924 AFAA0054 */   sw        $t2, 0x54($sp)
.L80045928:
/* 46528 80045928 8FAF0054 */  lw         $t7, 0x54($sp)
/* 4652C 8004592C 27AE002C */  addiu      $t6, $sp, 0x2c
/* 46530 80045930 25F90024 */  addiu      $t9, $t7, 0x24
.L80045934:
/* 46534 80045934 89E10000 */  lwl        $at, ($t7)
/* 46538 80045938 99E10003 */  lwr        $at, 3($t7)
/* 4653C 8004593C 25EF000C */  addiu      $t7, $t7, 0xc
/* 46540 80045940 25CE000C */  addiu      $t6, $t6, 0xc
/* 46544 80045944 ADC1FFF4 */  sw         $at, -0xc($t6)
/* 46548 80045948 89E1FFF8 */  lwl        $at, -8($t7)
/* 4654C 8004594C 99E1FFFB */  lwr        $at, -5($t7)
/* 46550 80045950 ADC1FFF8 */  sw         $at, -8($t6)
/* 46554 80045954 89E1FFFC */  lwl        $at, -4($t7)
/* 46558 80045958 99E1FFFF */  lwr        $at, -1($t7)
/* 4655C 8004595C 15F9FFF5 */  bne        $t7, $t9, .L80045934
/* 46560 80045960 ADC1FFFC */   sw        $at, -4($t6)
/* 46564 80045964 89E10000 */  lwl        $at, ($t7)
/* 46568 80045968 99E10003 */  lwr        $at, 3($t7)
/* 4656C 8004596C ADC10000 */  sw         $at, ($t6)
/* 46570 80045970 93A8002E */  lbu        $t0, 0x2e($sp)
/* 46574 80045974 310900C0 */  andi       $t1, $t0, 0xc0
/* 46578 80045978 00095103 */  sra        $t2, $t1, 4
/* 4657C 8004597C 15400027 */  bnez       $t2, .L80045A1C
/* 46580 80045980 AFAA005C */   sw        $t2, 0x5c($sp)
/* 46584 80045984 27A4002C */  addiu      $a0, $sp, 0x2c
/* 46588 80045988 0C011AAC */  jal        __osContDataCrc
/* 4658C 8004598C 24840006 */   addiu     $a0, $a0, 6
/* 46590 80045990 A3A20027 */  sb         $v0, 0x27($sp)
/* 46594 80045994 93AB0027 */  lbu        $t3, 0x27($sp)
/* 46598 80045998 93AC0052 */  lbu        $t4, 0x52($sp)
/* 4659C 8004599C 116C000F */  beq        $t3, $t4, .L800459DC
/* 465A0 800459A0 00000000 */   nop
/* 465A4 800459A4 8FA40060 */  lw         $a0, 0x60($sp)
/* 465A8 800459A8 0C01122C */  jal        __osPfsGetStatus
/* 465AC 800459AC 8FA50064 */   lw        $a1, 0x64($sp)
/* 465B0 800459B0 AFA2005C */  sw         $v0, 0x5c($sp)
/* 465B4 800459B4 8FAD005C */  lw         $t5, 0x5c($sp)
/* 465B8 800459B8 11A00005 */  beqz       $t5, .L800459D0
/* 465BC 800459BC 00000000 */   nop
/* 465C0 800459C0 0C011221 */  jal        __osSiRelAccess
/* 465C4 800459C4 00000000 */   nop
/* 465C8 800459C8 10000023 */  b          .L80045A58
/* 465CC 800459CC 8FA2005C */   lw        $v0, 0x5c($sp)
.L800459D0:
/* 465D0 800459D0 24180004 */  addiu      $t8, $zero, 4
/* 465D4 800459D4 10000013 */  b          .L80045A24
/* 465D8 800459D8 AFB8005C */   sw        $t8, 0x5c($sp)
.L800459DC:
/* 465DC 800459DC AFA00058 */  sw         $zero, 0x58($sp)
.L800459E0:
/* 465E0 800459E0 8FB90058 */  lw         $t9, 0x58($sp)
/* 465E4 800459E4 8FAE006C */  lw         $t6, 0x6c($sp)
/* 465E8 800459E8 03B97821 */  addu       $t7, $sp, $t9
/* 465EC 800459EC 91EF0032 */  lbu        $t7, 0x32($t7)
/* 465F0 800459F0 A1CF0000 */  sb         $t7, ($t6)
/* 465F4 800459F4 8FAA0058 */  lw         $t2, 0x58($sp)
/* 465F8 800459F8 8FA8006C */  lw         $t0, 0x6c($sp)
/* 465FC 800459FC 254B0001 */  addiu      $t3, $t2, 1
/* 46600 80045A00 29610020 */  slti       $at, $t3, 0x20
/* 46604 80045A04 25090001 */  addiu      $t1, $t0, 1
/* 46608 80045A08 AFAB0058 */  sw         $t3, 0x58($sp)
/* 4660C 80045A0C 1420FFF4 */  bnez       $at, .L800459E0
/* 46610 80045A10 AFA9006C */   sw        $t1, 0x6c($sp)
/* 46614 80045A14 10000003 */  b          .L80045A24
/* 46618 80045A18 00000000 */   nop
.L80045A1C:
/* 4661C 80045A1C 240C0001 */  addiu      $t4, $zero, 1
/* 46620 80045A20 AFAC005C */  sw         $t4, 0x5c($sp)
.L80045A24:
/* 46624 80045A24 8FAD005C */  lw         $t5, 0x5c($sp)
/* 46628 80045A28 24010004 */  addiu      $at, $zero, 4
/* 4662C 80045A2C 15A10007 */  bne        $t5, $at, .L80045A4C
/* 46630 80045A30 00000000 */   nop
/* 46634 80045A34 8FB80028 */  lw         $t8, 0x28($sp)
/* 46638 80045A38 2B100000 */  slti       $s0, $t8, 0
/* 4663C 80045A3C 3A100001 */  xori       $s0, $s0, 1
/* 46640 80045A40 2719FFFF */  addiu      $t9, $t8, -1
/* 46644 80045A44 1600FF9F */  bnez       $s0, .L800458C4
/* 46648 80045A48 AFB90028 */   sw        $t9, 0x28($sp)
.L80045A4C:
/* 4664C 80045A4C 0C011221 */  jal        __osSiRelAccess
/* 46650 80045A50 00000000 */   nop
/* 46654 80045A54 8FA2005C */  lw         $v0, 0x5c($sp)
.L80045A58:
/* 46658 80045A58 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4665C 80045A5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 46660 80045A60 27BD0060 */  addiu      $sp, $sp, 0x60
/* 46664 80045A64 03E00008 */  jr         $ra
/* 46668 80045A68 00000000 */   nop

glabel __osPackRamReadData
/* 4666C 80045A6C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 46670 80045A70 3C0E8009 */  lui        $t6, %hi(__osPfsPifRam)
/* 46674 80045A74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 46678 80045A78 AFA40048 */  sw         $a0, 0x48($sp)
/* 4667C 80045A7C AFA5004C */  sw         $a1, 0x4c($sp)
/* 46680 80045A80 25CE5660 */  addiu      $t6, $t6, %lo(__osPfsPifRam)
/* 46684 80045A84 240F0001 */  addiu      $t7, $zero, 1
/* 46688 80045A88 3C018009 */  lui        $at, 0x8009
/* 4668C 80045A8C 241800FF */  addiu      $t8, $zero, 0xff
/* 46690 80045A90 24190003 */  addiu      $t9, $zero, 3
/* 46694 80045A94 24080021 */  addiu      $t0, $zero, 0x21
/* 46698 80045A98 24090002 */  addiu      $t1, $zero, 2
/* 4669C 80045A9C AFAE0044 */  sw         $t6, 0x44($sp)
/* 466A0 80045AA0 AC2F569C */  sw         $t7, 0x569c($at)
/* 466A4 80045AA4 A3B8001C */  sb         $t8, 0x1c($sp)
/* 466A8 80045AA8 A3B9001D */  sb         $t9, 0x1d($sp)
/* 466AC 80045AAC A3A8001E */  sb         $t0, 0x1e($sp)
/* 466B0 80045AB0 A3A9001F */  sb         $t1, 0x1f($sp)
/* 466B4 80045AB4 0C011A80 */  jal        __osContAddressCrc
/* 466B8 80045AB8 97A4004E */   lhu       $a0, 0x4e($sp)
/* 466BC 80045ABC 97AA004E */  lhu        $t2, 0x4e($sp)
/* 466C0 80045AC0 240D00FF */  addiu      $t5, $zero, 0xff
/* 466C4 80045AC4 A3AD0042 */  sb         $t5, 0x42($sp)
/* 466C8 80045AC8 000A5940 */  sll        $t3, $t2, 5
/* 466CC 80045ACC 004B6025 */  or         $t4, $v0, $t3
/* 466D0 80045AD0 A7AC0020 */  sh         $t4, 0x20($sp)
/* 466D4 80045AD4 AFA00018 */  sw         $zero, 0x18($sp)
.L80045AD8:
/* 466D8 80045AD8 8FAF0018 */  lw         $t7, 0x18($sp)
/* 466DC 80045ADC 240E00FF */  addiu      $t6, $zero, 0xff
/* 466E0 80045AE0 03AFC021 */  addu       $t8, $sp, $t7
/* 466E4 80045AE4 A30E0022 */  sb         $t6, 0x22($t8)
/* 466E8 80045AE8 8FB90018 */  lw         $t9, 0x18($sp)
/* 466EC 80045AEC 27280001 */  addiu      $t0, $t9, 1
/* 466F0 80045AF0 29010020 */  slti       $at, $t0, 0x20
/* 466F4 80045AF4 1420FFF8 */  bnez       $at, .L80045AD8
/* 466F8 80045AF8 AFA80018 */   sw        $t0, 0x18($sp)
/* 466FC 80045AFC 8FA90048 */  lw         $t1, 0x48($sp)
/* 46700 80045B00 1120000E */  beqz       $t1, .L80045B3C
/* 46704 80045B04 00000000 */   nop
/* 46708 80045B08 1920000C */  blez       $t1, .L80045B3C
/* 4670C 80045B0C AFA00018 */   sw        $zero, 0x18($sp)
.L80045B10:
/* 46710 80045B10 8FAA0044 */  lw         $t2, 0x44($sp)
/* 46714 80045B14 A1400000 */  sb         $zero, ($t2)
/* 46718 80045B18 8FAD0018 */  lw         $t5, 0x18($sp)
/* 4671C 80045B1C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 46720 80045B20 8FAB0044 */  lw         $t3, 0x44($sp)
/* 46724 80045B24 25AE0001 */  addiu      $t6, $t5, 1
/* 46728 80045B28 01CF082A */  slt        $at, $t6, $t7
/* 4672C 80045B2C 256C0001 */  addiu      $t4, $t3, 1
/* 46730 80045B30 AFAE0018 */  sw         $t6, 0x18($sp)
/* 46734 80045B34 1420FFF6 */  bnez       $at, .L80045B10
/* 46738 80045B38 AFAC0044 */   sw        $t4, 0x44($sp)
.L80045B3C:
/* 4673C 80045B3C 27B9001C */  addiu      $t9, $sp, 0x1c
/* 46740 80045B40 27290024 */  addiu      $t1, $t9, 0x24
/* 46744 80045B44 8FB80044 */  lw         $t8, 0x44($sp)
.L80045B48:
/* 46748 80045B48 8F210000 */  lw         $at, ($t9)
/* 4674C 80045B4C 2739000C */  addiu      $t9, $t9, 0xc
/* 46750 80045B50 2718000C */  addiu      $t8, $t8, 0xc
/* 46754 80045B54 AB01FFF4 */  swl        $at, -0xc($t8)
/* 46758 80045B58 BB01FFF7 */  swr        $at, -9($t8)
/* 4675C 80045B5C 8F21FFF8 */  lw         $at, -8($t9)
/* 46760 80045B60 AB01FFF8 */  swl        $at, -8($t8)
/* 46764 80045B64 BB01FFFB */  swr        $at, -5($t8)
/* 46768 80045B68 8F21FFFC */  lw         $at, -4($t9)
/* 4676C 80045B6C AB01FFFC */  swl        $at, -4($t8)
/* 46770 80045B70 1729FFF5 */  bne        $t9, $t1, .L80045B48
/* 46774 80045B74 BB01FFFF */   swr       $at, -1($t8)
/* 46778 80045B78 8F210000 */  lw         $at, ($t9)
/* 4677C 80045B7C 240C00FE */  addiu      $t4, $zero, 0xfe
/* 46780 80045B80 AB010000 */  swl        $at, ($t8)
/* 46784 80045B84 BB010003 */  swr        $at, 3($t8)
/* 46788 80045B88 8FAA0044 */  lw         $t2, 0x44($sp)
/* 4678C 80045B8C 254B0028 */  addiu      $t3, $t2, 0x28
/* 46790 80045B90 AFAB0044 */  sw         $t3, 0x44($sp)
/* 46794 80045B94 A16C0000 */  sb         $t4, ($t3)
/* 46798 80045B98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4679C 80045B9C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 467A0 80045BA0 03E00008 */  jr         $ra
/* 467A4 80045BA4 00000000 */   nop
/* 467A8 80045BA8 00000000 */  nop
/* 467AC 80045BAC 00000000 */  nop
