.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel UNK_SetsGameStateto2(PauseOrSaveLoad)
/* 2C110 8002B510 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd0c)
/* 2C114 8002B514 2442FD0C */  addiu      $v0, $v0, %lo(flags_DAT_8008fd0c)
/* 2C118 8002B518 240E0002 */  addiu      $t6, $zero, 2
/* 2C11C 8002B51C 3C018008 */  lui        $at, %hi(GameMode)
/* 2C120 8002B520 A42EB2E0 */  sh         $t6, %lo(GameMode)($at)
/* 2C124 8002B524 944F0000 */  lhu        $t7, ($v0)
/* 2C128 8002B528 3C018009 */  lui        $at, %hi(flags_DAT_8008fd20)
/* 2C12C 8002B52C 24081000 */  addiu      $t0, $zero, 0x1000
/* 2C130 8002B530 01E4C025 */  or         $t8, $t7, $a0
/* 2C134 8002B534 37194000 */  ori        $t9, $t8, 0x4000
/* 2C138 8002B538 A4590000 */  sh         $t9, ($v0)
/* 2C13C 8002B53C A428FD20 */  sh         $t0, %lo(flags_DAT_8008fd20)($at)
/* 2C140 8002B540 3C018009 */  lui        $at, %hi(D_8008FD28)
/* 2C144 8002B544 240900FF */  addiu      $t1, $zero, 0xff
/* 2C148 8002B548 A029FD28 */  sb         $t1, %lo(D_8008FD28)($at)
/* 2C14C 8002B54C 3C018009 */  lui        $at, %hi(UNK_SelectedSaveSlot)
/* 2C150 8002B550 A020FD2A */  sb         $zero, %lo(UNK_SelectedSaveSlot)($at)
/* 2C154 8002B554 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C158 8002B558 A020FD29 */  sb         $zero, %lo(D_8008FD29)($at)
/* 2C15C 8002B55C 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C160 8002B560 A020FD22 */  sb         $zero, %lo(pfsErrMsg)($at)
/* 2C164 8002B564 3C018009 */  lui        $at, %hi(D_8008FD2B)
/* 2C168 8002B568 A020FD2B */  sb         $zero, %lo(D_8008FD2B)($at)
/* 2C16C 8002B56C 3C018009 */  lui        $at, %hi(D_8008FD2C)
/* 2C170 8002B570 A020FD2C */  sb         $zero, %lo(D_8008FD2C)($at)
/* 2C174 8002B574 03E00008 */  jr         $ra
/* 2C178 8002B578 00000000 */   nop

glabel VOID_FUN_8002b57c
/* 2C17C 8002B57C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C180 8002B580 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C184 8002B584 0C00B7F4 */  jal        drawSave_LoadMenu
/* 2C188 8002B588 00000000 */   nop
/* 2C18C 8002B58C 3C048009 */  lui        $a0, %hi(flags_DAT_8008fd20)
/* 2C190 8002B590 2484FD20 */  addiu      $a0, $a0, %lo(flags_DAT_8008fd20)
/* 2C194 8002B594 94820000 */  lhu        $v0, ($a0)
/* 2C198 8002B598 30434000 */  andi       $v1, $v0, 0x4000
/* 2C19C 8002B59C 14600016 */  bnez       $v1, .L8002B5F8
/* 2C1A0 8002B5A0 304E2000 */   andi      $t6, $v0, 0x2000
/* 2C1A4 8002B5A4 11C0000F */  beqz       $t6, .L8002B5E4
/* 2C1A8 8002B5A8 34492000 */   ori       $t1, $v0, 0x2000
/* 2C1AC 8002B5AC 0C00AE31 */  jal        VOID_FUN_8002b8c4
/* 2C1B0 8002B5B0 00000000 */   nop
/* 2C1B4 8002B5B4 3C048009 */  lui        $a0, %hi(flags_DAT_8008fd20)
/* 2C1B8 8002B5B8 2484FD20 */  addiu      $a0, $a0, %lo(flags_DAT_8008fd20)
/* 2C1BC 8002B5BC 948F0000 */  lhu        $t7, ($a0)
/* 2C1C0 8002B5C0 3C018009 */  lui        $at, %hi(D_8008FD2C)
/* 2C1C4 8002B5C4 35F94000 */  ori        $t9, $t7, 0x4000
/* 2C1C8 8002B5C8 A4990000 */  sh         $t9, ($a0)
/* 2C1CC 8002B5CC 3328DFFF */  andi       $t0, $t9, 0xdfff
/* 2C1D0 8002B5D0 A4880000 */  sh         $t0, ($a0)
/* 2C1D4 8002B5D4 A020FD2C */  sb         $zero, %lo(D_8008FD2C)($at)
/* 2C1D8 8002B5D8 94820000 */  lhu        $v0, ($a0)
/* 2C1DC 8002B5DC 10000006 */  b          .L8002B5F8
/* 2C1E0 8002B5E0 30434000 */   andi      $v1, $v0, 0x4000
.L8002B5E4:
/* 2C1E4 8002B5E4 A4890000 */  sh         $t1, ($a0)
/* 2C1E8 8002B5E8 3C018009 */  lui        $at, %hi(D_8008FD23)
/* 2C1EC 8002B5EC A020FD23 */  sb         $zero, %lo(D_8008FD23)($at)
/* 2C1F0 8002B5F0 94820000 */  lhu        $v0, ($a0)
/* 2C1F4 8002B5F4 30434000 */  andi       $v1, $v0, 0x4000
.L8002B5F8:
/* 2C1F8 8002B5F8 1060002B */  beqz       $v1, .L8002B6A8
/* 2C1FC 8002B5FC 304A0007 */   andi      $t2, $v0, 7
/* 2C200 8002B600 2D410007 */  sltiu      $at, $t2, 7
/* 2C204 8002B604 10200028 */  beqz       $at, .L8002B6A8
/* 2C208 8002B608 000A5080 */   sll       $t2, $t2, 2
/* 2C20C 8002B60C 3C018007 */  lui        $at, %hi(D_80071764)
/* 2C210 8002B610 002A0821 */  addu       $at, $at, $t2
/* 2C214 8002B614 8C2A1764 */  lw         $t2, %lo(D_80071764)($at)
/* 2C218 8002B618 01400008 */  jr         $t2
/* 2C21C 8002B61C 00000000 */   nop
/* 2C220 8002B620 0C00AF28 */  jal        VOID_FUN_8002bca0
/* 2C224 8002B624 00000000 */   nop
/* 2C228 8002B628 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2C22C 8002B62C 1000001E */  b          .L8002B6A8
/* 2C230 8002B630 9442FD20 */   lhu       $v0, %lo(flags_DAT_8008fd20)($v0)
/* 2C234 8002B634 0C00B206 */  jal        func_8002C818
/* 2C238 8002B638 00002025 */   or        $a0, $zero, $zero
/* 2C23C 8002B63C 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2C240 8002B640 10000019 */  b          .L8002B6A8
/* 2C244 8002B644 9442FD20 */   lhu       $v0, %lo(flags_DAT_8008fd20)($v0)
/* 2C248 8002B648 0C00B585 */  jal        VOID_FUN_8002d614
/* 2C24C 8002B64C 00000000 */   nop
/* 2C250 8002B650 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2C254 8002B654 10000014 */  b          .L8002B6A8
/* 2C258 8002B658 9442FD20 */   lhu       $v0, %lo(flags_DAT_8008fd20)($v0)
/* 2C25C 8002B65C 0C00B5D2 */  jal        VOID_FUN_8002d748
/* 2C260 8002B660 00000000 */   nop
/* 2C264 8002B664 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2C268 8002B668 1000000F */  b          .L8002B6A8
/* 2C26C 8002B66C 9442FD20 */   lhu       $v0, %lo(flags_DAT_8008fd20)($v0)
/* 2C270 8002B670 0C00B62F */  jal        saveGame
/* 2C274 8002B674 00000000 */   nop
/* 2C278 8002B678 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2C27C 8002B67C 1000000A */  b          .L8002B6A8
/* 2C280 8002B680 9442FD20 */   lhu       $v0, %lo(flags_DAT_8008fd20)($v0)
/* 2C284 8002B684 0C00B6F8 */  jal        VOID_FUN_8002dbe0
/* 2C288 8002B688 00000000 */   nop
/* 2C28C 8002B68C 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2C290 8002B690 10000005 */  b          .L8002B6A8
/* 2C294 8002B694 9442FD20 */   lhu       $v0, %lo(flags_DAT_8008fd20)($v0)
/* 2C298 8002B698 0C00B575 */  jal        VOID_FUN_8002d5d4
/* 2C29C 8002B69C 00000000 */   nop
/* 2C2A0 8002B6A0 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2C2A4 8002B6A4 9442FD20 */  lhu        $v0, %lo(flags_DAT_8008fd20)($v0)
.L8002B6A8:
/* 2C2A8 8002B6A8 304B2000 */  andi       $t3, $v0, 0x2000
/* 2C2AC 8002B6AC 51600006 */  beql       $t3, $zero, .L8002B6C8
/* 2C2B0 8002B6B0 304C8000 */   andi      $t4, $v0, 0x8000
/* 2C2B4 8002B6B4 0C00ADBC */  jal        VOID_FUN_8002b6f0
/* 2C2B8 8002B6B8 00000000 */   nop
/* 2C2BC 8002B6BC 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2C2C0 8002B6C0 9442FD20 */  lhu        $v0, %lo(flags_DAT_8008fd20)($v0)
/* 2C2C4 8002B6C4 304C8000 */  andi       $t4, $v0, 0x8000
.L8002B6C8:
/* 2C2C8 8002B6C8 11800005 */  beqz       $t4, .L8002B6E0
/* 2C2CC 8002B6CC 3C028009 */   lui       $v0, %hi(flags_DAT_8008fd0c)
/* 2C2D0 8002B6D0 2442FD0C */  addiu      $v0, $v0, %lo(flags_DAT_8008fd0c)
/* 2C2D4 8002B6D4 944D0000 */  lhu        $t5, ($v0)
/* 2C2D8 8002B6D8 31AE7FFF */  andi       $t6, $t5, 0x7fff
/* 2C2DC 8002B6DC A44E0000 */  sh         $t6, ($v0)
.L8002B6E0:
/* 2C2E0 8002B6E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C2E4 8002B6E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2C2E8 8002B6E8 03E00008 */  jr         $ra
/* 2C2EC 8002B6EC 00000000 */   nop

glabel VOID_FUN_8002b6f0
/* 2C2F0 8002B6F0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2C2F4 8002B6F4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2C2F8 8002B6F8 AFB30028 */  sw         $s3, 0x28($sp)
/* 2C2FC 8002B6FC AFB20024 */  sw         $s2, 0x24($sp)
/* 2C300 8002B700 AFB10020 */  sw         $s1, 0x20($sp)
/* 2C304 8002B704 AFB0001C */  sw         $s0, 0x1c($sp)
/* 2C308 8002B708 3C0E8009 */  lui        $t6, %hi(D_8008FD23)
/* 2C30C 8002B70C 91CEFD23 */  lbu        $t6, %lo(D_8008FD23)($t6)
/* 2C310 8002B710 3C188007 */  lui        $t8, %hi(D_8006A014)
/* 2C314 8002B714 2718A014 */  addiu      $t8, $t8, %lo(D_8006A014)
/* 2C318 8002B718 000E78C0 */  sll        $t7, $t6, 3
/* 2C31C 8002B71C 01F81021 */  addu       $v0, $t7, $t8
/* 2C320 8002B720 84520000 */  lh         $s2, ($v0)
/* 2C324 8002B724 84500002 */  lh         $s0, 2($v0)
/* 2C328 8002B728 84530004 */  lh         $s3, 4($v0)
/* 2C32C 8002B72C 84510006 */  lh         $s1, 6($v0)
/* 2C330 8002B730 00002025 */  or         $a0, $zero, $zero
/* 2C334 8002B734 02402825 */  or         $a1, $s2, $zero
/* 2C338 8002B738 02003025 */  or         $a2, $s0, $zero
/* 2C33C 8002B73C 02603825 */  or         $a3, $s3, $zero
/* 2C340 8002B740 0C00A6D6 */  jal        drawMenues
/* 2C344 8002B744 AFB10010 */   sw        $s1, 0x10($sp)
/* 2C348 8002B748 02113021 */  addu       $a2, $s0, $s1
/* 2C34C 8002B74C 24190003 */  addiu      $t9, $zero, 3
/* 2C350 8002B750 AFB90010 */  sw         $t9, 0x10($sp)
/* 2C354 8002B754 AFA60044 */  sw         $a2, 0x44($sp)
/* 2C358 8002B758 24040037 */  addiu      $a0, $zero, 0x37
/* 2C35C 8002B75C 26450003 */  addiu      $a1, $s2, 3
/* 2C360 8002B760 0C00A6D6 */  jal        drawMenues
/* 2C364 8002B764 02603825 */   or        $a3, $s3, $zero
/* 2C368 8002B768 02532821 */  addu       $a1, $s2, $s3
/* 2C36C 8002B76C 26060006 */  addiu      $a2, $s0, 6
/* 2C370 8002B770 2628FFFB */  addiu      $t0, $s1, -5
/* 2C374 8002B774 AFA80010 */  sw         $t0, 0x10($sp)
/* 2C378 8002B778 AFA6003C */  sw         $a2, 0x3c($sp)
/* 2C37C 8002B77C AFA50040 */  sw         $a1, 0x40($sp)
/* 2C380 8002B780 24040037 */  addiu      $a0, $zero, 0x37
/* 2C384 8002B784 0C00A6D6 */  jal        drawMenues
/* 2C388 8002B788 24070002 */   addiu     $a3, $zero, 2
/* 2C38C 8002B78C 2645FFFF */  addiu      $a1, $s2, -1
/* 2C390 8002B790 26670002 */  addiu      $a3, $s3, 2
/* 2C394 8002B794 24090001 */  addiu      $t1, $zero, 1
/* 2C398 8002B798 AFA90010 */  sw         $t1, 0x10($sp)
/* 2C39C 8002B79C AFA70034 */  sw         $a3, 0x34($sp)
/* 2C3A0 8002B7A0 AFA50038 */  sw         $a1, 0x38($sp)
/* 2C3A4 8002B7A4 24040037 */  addiu      $a0, $zero, 0x37
/* 2C3A8 8002B7A8 0C00A6D6 */  jal        drawMenues
/* 2C3AC 8002B7AC 2606FFFF */   addiu     $a2, $s0, -1
/* 2C3B0 8002B7B0 240A0001 */  addiu      $t2, $zero, 1
/* 2C3B4 8002B7B4 8FA70034 */  lw         $a3, 0x34($sp)
/* 2C3B8 8002B7B8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2C3BC 8002B7BC 24040037 */  addiu      $a0, $zero, 0x37
/* 2C3C0 8002B7C0 8FA50038 */  lw         $a1, 0x38($sp)
/* 2C3C4 8002B7C4 0C00A6D6 */  jal        drawMenues
/* 2C3C8 8002B7C8 8FA60044 */   lw        $a2, 0x44($sp)
/* 2C3CC 8002B7CC 24040037 */  addiu      $a0, $zero, 0x37
/* 2C3D0 8002B7D0 8FA50038 */  lw         $a1, 0x38($sp)
/* 2C3D4 8002B7D4 02003025 */  or         $a2, $s0, $zero
/* 2C3D8 8002B7D8 24070001 */  addiu      $a3, $zero, 1
/* 2C3DC 8002B7DC 0C00A6D6 */  jal        drawMenues
/* 2C3E0 8002B7E0 AFB10010 */   sw        $s1, 0x10($sp)
/* 2C3E4 8002B7E4 24040037 */  addiu      $a0, $zero, 0x37
/* 2C3E8 8002B7E8 8FA50040 */  lw         $a1, 0x40($sp)
/* 2C3EC 8002B7EC 02003025 */  or         $a2, $s0, $zero
/* 2C3F0 8002B7F0 24070001 */  addiu      $a3, $zero, 1
/* 2C3F4 8002B7F4 0C00A6D6 */  jal        drawMenues
/* 2C3F8 8002B7F8 AFB10010 */   sw        $s1, 0x10($sp)
/* 2C3FC 8002B7FC 26450001 */  addiu      $a1, $s2, 1
/* 2C400 8002B800 26060001 */  addiu      $a2, $s0, 1
/* 2C404 8002B804 240B0001 */  addiu      $t3, $zero, 1
/* 2C408 8002B808 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2C40C 8002B80C AFA60034 */  sw         $a2, 0x34($sp)
/* 2C410 8002B810 AFA50038 */  sw         $a1, 0x38($sp)
/* 2C414 8002B814 24040038 */  addiu      $a0, $zero, 0x38
/* 2C418 8002B818 0C00A6D6 */  jal        drawMenues
/* 2C41C 8002B81C 2667FFFD */   addiu     $a3, $s3, -3
/* 2C420 8002B820 262CFFFC */  addiu      $t4, $s1, -4
/* 2C424 8002B824 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2C428 8002B828 24040038 */  addiu      $a0, $zero, 0x38
/* 2C42C 8002B82C 8FA50038 */  lw         $a1, 0x38($sp)
/* 2C430 8002B830 26060002 */  addiu      $a2, $s0, 2
/* 2C434 8002B834 0C00A6D6 */  jal        drawMenues
/* 2C438 8002B838 24070001 */   addiu     $a3, $zero, 1
/* 2C43C 8002B83C 8FA60044 */  lw         $a2, 0x44($sp)
/* 2C440 8002B840 240D0001 */  addiu      $t5, $zero, 1
/* 2C444 8002B844 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2C448 8002B848 24040039 */  addiu      $a0, $zero, 0x39
/* 2C44C 8002B84C 8FA50038 */  lw         $a1, 0x38($sp)
/* 2C450 8002B850 2667FFFE */  addiu      $a3, $s3, -2
/* 2C454 8002B854 0C00A6D6 */  jal        drawMenues
/* 2C458 8002B858 24C6FFFE */   addiu     $a2, $a2, -2
/* 2C45C 8002B85C 8FA50040 */  lw         $a1, 0x40($sp)
/* 2C460 8002B860 262EFFFD */  addiu      $t6, $s1, -3
/* 2C464 8002B864 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2C468 8002B868 24040039 */  addiu      $a0, $zero, 0x39
/* 2C46C 8002B86C 8FA60034 */  lw         $a2, 0x34($sp)
/* 2C470 8002B870 24070001 */  addiu      $a3, $zero, 1
/* 2C474 8002B874 0C00A6D6 */  jal        drawMenues
/* 2C478 8002B878 24A5FFFE */   addiu     $a1, $a1, -2
/* 2C47C 8002B87C 3C0F8009 */  lui        $t7, %hi(D_8008FD23)
/* 2C480 8002B880 91EFFD23 */  lbu        $t7, %lo(D_8008FD23)($t7)
/* 2C484 8002B884 3C068007 */  lui        $a2, %hi(D_8006A000)
/* 2C488 8002B888 26440006 */  addiu      $a0, $s2, 6
/* 2C48C 8002B88C 000FC080 */  sll        $t8, $t7, 2
/* 2C490 8002B890 00D83021 */  addu       $a2, $a2, $t8
/* 2C494 8002B894 8CC6A000 */  lw         $a2, %lo(D_8006A000)($a2)
/* 2C498 8002B898 0C00C3A8 */  jal        printTextToScreen
/* 2C49C 8002B89C 8FA5003C */   lw        $a1, 0x3c($sp)
/* 2C4A0 8002B8A0 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 2C4A4 8002B8A4 00000000 */   nop
/* 2C4A8 8002B8A8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2C4AC 8002B8AC 8FB0001C */  lw         $s0, 0x1c($sp)
/* 2C4B0 8002B8B0 8FB10020 */  lw         $s1, 0x20($sp)
/* 2C4B4 8002B8B4 8FB20024 */  lw         $s2, 0x24($sp)
/* 2C4B8 8002B8B8 8FB30028 */  lw         $s3, 0x28($sp)
/* 2C4BC 8002B8BC 03E00008 */  jr         $ra
/* 2C4C0 8002B8C0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel VOID_FUN_8002b8c4
/* 2C4C4 8002B8C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C4C8 8002B8C8 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2C4CC 8002B8CC 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2C4D0 8002B8D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C4D4 8002B8D4 3C0E8009 */  lui        $t6, %hi(flags_DAT_8008fd0c)
/* 2C4D8 8002B8D8 95CEFD0C */  lhu        $t6, %lo(flags_DAT_8008fd0c)($t6)
/* 2C4DC 8002B8DC 94780000 */  lhu        $t8, ($v1)
/* 2C4E0 8002B8E0 3C048009 */  lui        $a0, 0x8009
/* 2C4E4 8002B8E4 31CF000C */  andi       $t7, $t6, 0xc
/* 2C4E8 8002B8E8 33191000 */  andi       $t9, $t8, 0x1000
/* 2C4EC 8002B8EC 1320002E */  beqz       $t9, .L8002B9A8
/* 2C4F0 8002B8F0 AFAF001C */   sw        $t7, 0x1c($sp)
/* 2C4F4 8002B8F4 3C068009 */  lui        $a2, %hi(controller_no)
/* 2C4F8 8002B8F8 80C62870 */  lb         $a2, %lo(controller_no)($a2)
/* 2C4FC 8002B8FC 3C098009 */  lui        $t1, %hi(D_80092898)
/* 2C500 8002B900 25292898 */  addiu      $t1, $t1, %lo(D_80092898)
/* 2C504 8002B904 00064080 */  sll        $t0, $a2, 2
/* 2C508 8002B908 01064023 */  subu       $t0, $t0, $a2
/* 2C50C 8002B90C 00084080 */  sll        $t0, $t0, 2
/* 2C510 8002B910 01064021 */  addu       $t0, $t0, $a2
/* 2C514 8002B914 000840C0 */  sll        $t0, $t0, 3
/* 2C518 8002B918 01092821 */  addu       $a1, $t0, $t1
/* 2C51C 8002B91C 0C00E764 */  jal        osPfsInitPak
/* 2C520 8002B920 24842880 */   addiu     $a0, $a0, 0x2880
/* 2C524 8002B924 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2C528 8002B928 24010002 */  addiu      $at, $zero, 2
/* 2C52C 8002B92C 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2C530 8002B930 14410003 */  bne        $v0, $at, .L8002B940
/* 2C534 8002B934 00402025 */   or        $a0, $v0, $zero
/* 2C538 8002B938 10000017 */  b          .L8002B998
/* 2C53C 8002B93C 00002025 */   or        $a0, $zero, $zero
.L8002B940:
/* 2C540 8002B940 2407000A */  addiu      $a3, $zero, 0xa
/* 2C544 8002B944 14470014 */  bne        $v0, $a3, .L8002B998
/* 2C548 8002B948 3C068009 */   lui       $a2, %hi(controller_no)
/* 2C54C 8002B94C 80C62870 */  lb         $a2, %lo(controller_no)($a2)
/* 2C550 8002B950 3C0B8009 */  lui        $t3, %hi(D_80092898)
/* 2C554 8002B954 256B2898 */  addiu      $t3, $t3, %lo(D_80092898)
/* 2C558 8002B958 00065080 */  sll        $t2, $a2, 2
/* 2C55C 8002B95C 01465023 */  subu       $t2, $t2, $a2
/* 2C560 8002B960 000A5080 */  sll        $t2, $t2, 2
/* 2C564 8002B964 01465021 */  addu       $t2, $t2, $a2
/* 2C568 8002B968 000A50C0 */  sll        $t2, $t2, 3
/* 2C56C 8002B96C 3C048009 */  lui        $a0, %hi(messageQueue)
/* 2C570 8002B970 24842880 */  addiu      $a0, $a0, %lo(messageQueue)
/* 2C574 8002B974 0C00E92F */  jal        osMotorInit
/* 2C578 8002B978 014B2821 */   addu      $a1, $t2, $t3
/* 2C57C 8002B97C 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2C580 8002B980 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2C584 8002B984 14400003 */  bnez       $v0, .L8002B994
/* 2C588 8002B988 2407000A */   addiu     $a3, $zero, 0xa
/* 2C58C 8002B98C 10000002 */  b          .L8002B998
/* 2C590 8002B990 24040001 */   addiu     $a0, $zero, 1
.L8002B994:
/* 2C594 8002B994 00E02025 */  or         $a0, $a3, $zero
.L8002B998:
/* 2C598 8002B998 946C0000 */  lhu        $t4, ($v1)
/* 2C59C 8002B99C AFA40018 */  sw         $a0, 0x18($sp)
/* 2C5A0 8002B9A0 318DEFFF */  andi       $t5, $t4, 0xefff
/* 2C5A4 8002B9A4 A46D0000 */  sh         $t5, ($v1)
.L8002B9A8:
/* 2C5A8 8002B9A8 8FA40018 */  lw         $a0, 0x18($sp)
/* 2C5AC 8002B9AC 2407000A */  addiu      $a3, $zero, 0xa
/* 2C5B0 8002B9B0 14800008 */  bnez       $a0, .L8002B9D4
/* 2C5B4 8002B9B4 00000000 */   nop
/* 2C5B8 8002B9B8 3C048009 */  lui        $a0, %hi(controller_no)
/* 2C5BC 8002B9BC 0C00C55D */  jal        func_80031574
/* 2C5C0 8002B9C0 80842870 */   lb        $a0, %lo(controller_no)($a0)
/* 2C5C4 8002B9C4 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2C5C8 8002B9C8 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2C5CC 8002B9CC 2407000A */  addiu      $a3, $zero, 0xa
/* 2C5D0 8002B9D0 00402025 */  or         $a0, $v0, $zero
.L8002B9D4:
/* 2C5D4 8002B9D4 10800024 */  beqz       $a0, .L8002BA68
/* 2C5D8 8002B9D8 8FAD001C */   lw        $t5, 0x1c($sp)
/* 2C5DC 8002B9DC 3C018009 */  lui        $at, %hi(pfsError)
/* 2C5E0 8002B9E0 0C00C6EC */  jal        func_80031BB0
/* 2C5E4 8002B9E4 AC24FD24 */   sw        $a0, %lo(pfsError)($at)
/* 2C5E8 8002B9E8 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2C5EC 8002B9EC 00027023 */  negu       $t6, $v0
/* 2C5F0 8002B9F0 24010001 */  addiu      $at, $zero, 1
/* 2C5F4 8002B9F4 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2C5F8 8002B9F8 15C10010 */  bne        $t6, $at, .L8002BA3C
/* 2C5FC 8002B9FC 2407000A */   addiu     $a3, $zero, 0xa
/* 2C600 8002BA00 8FAF001C */  lw         $t7, 0x1c($sp)
/* 2C604 8002BA04 24010004 */  addiu      $at, $zero, 4
/* 2C608 8002BA08 2418000D */  addiu      $t8, $zero, 0xd
/* 2C60C 8002BA0C 15E10006 */  bne        $t7, $at, .L8002BA28
/* 2C610 8002BA10 24190008 */   addiu     $t9, $zero, 8
/* 2C614 8002BA14 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C618 8002BA18 A038FD22 */  sb         $t8, %lo(pfsErrMsg)($at)
/* 2C61C 8002BA1C 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C620 8002BA20 1000000B */  b          .L8002BA50
/* 2C624 8002BA24 A027FD29 */   sb        $a3, %lo(D_8008FD29)($at)
.L8002BA28:
/* 2C628 8002BA28 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C62C 8002BA2C A039FD22 */  sb         $t9, %lo(pfsErrMsg)($at)
/* 2C630 8002BA30 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C634 8002BA34 10000006 */  b          .L8002BA50
/* 2C638 8002BA38 A027FD29 */   sb        $a3, %lo(D_8008FD29)($at)
.L8002BA3C:
/* 2C63C 8002BA3C 24080011 */  addiu      $t0, $zero, 0x11
/* 2C640 8002BA40 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C644 8002BA44 A028FD22 */  sb         $t0, %lo(pfsErrMsg)($at)
/* 2C648 8002BA48 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C64C 8002BA4C A027FD29 */  sb         $a3, %lo(D_8008FD29)($at)
.L8002BA50:
/* 2C650 8002BA50 94690000 */  lhu        $t1, ($v1)
/* 2C654 8002BA54 312BFFF8 */  andi       $t3, $t1, 0xfff8
/* 2C658 8002BA58 A46B0000 */  sh         $t3, ($v1)
/* 2C65C 8002BA5C 356C0005 */  ori        $t4, $t3, 5
/* 2C660 8002BA60 1000008B */  b          .L8002BC90
/* 2C664 8002BA64 A46C0000 */   sh        $t4, ($v1)
.L8002BA68:
/* 2C668 8002BA68 24010004 */  addiu      $at, $zero, 4
/* 2C66C 8002BA6C 15A10037 */  bne        $t5, $at, .L8002BB4C
/* 2C670 8002BA70 3C0E8009 */   lui       $t6, %hi(controller_no)
/* 2C674 8002BA74 81CE2870 */  lb         $t6, %lo(controller_no)($t6)
/* 2C678 8002BA78 3C188009 */  lui        $t8, %hi(D_80092A38)
/* 2C67C 8002BA7C 27182A38 */  addiu      $t8, $t8, %lo(D_80092A38)
/* 2C680 8002BA80 000E7880 */  sll        $t7, $t6, 2
/* 2C684 8002BA84 01EE7821 */  addu       $t7, $t7, $t6
/* 2C688 8002BA88 000F7880 */  sll        $t7, $t7, 2
/* 2C68C 8002BA8C 01F81021 */  addu       $v0, $t7, $t8
/* 2C690 8002BA90 90590013 */  lbu        $t9, 0x13($v0)
/* 2C694 8002BA94 2B210002 */  slti       $at, $t9, 2
/* 2C698 8002BA98 50200014 */  beql       $at, $zero, .L8002BAEC
/* 2C69C 8002BA9C 84450000 */   lh        $a1, ($v0)
/* 2C6A0 8002BAA0 84480000 */  lh         $t0, ($v0)
/* 2C6A4 8002BAA4 94640000 */  lhu        $a0, ($v1)
/* 2C6A8 8002BAA8 240B0014 */  addiu      $t3, $zero, 0x14
/* 2C6AC 8002BAAC 31094000 */  andi       $t1, $t0, 0x4000
/* 2C6B0 8002BAB0 11200005 */  beqz       $t1, .L8002BAC8
/* 2C6B4 8002BAB4 308DFFF8 */   andi      $t5, $a0, 0xfff8
/* 2C6B8 8002BAB8 240A0015 */  addiu      $t2, $zero, 0x15
/* 2C6BC 8002BABC 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C6C0 8002BAC0 10000003 */  b          .L8002BAD0
/* 2C6C4 8002BAC4 A02AFD22 */   sb        $t2, %lo(pfsErrMsg)($at)
.L8002BAC8:
/* 2C6C8 8002BAC8 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C6CC 8002BACC A02BFD22 */  sb         $t3, %lo(pfsErrMsg)($at)
.L8002BAD0:
/* 2C6D0 8002BAD0 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C6D4 8002BAD4 A027FD29 */  sb         $a3, %lo(D_8008FD29)($at)
/* 2C6D8 8002BAD8 A46D0000 */  sh         $t5, ($v1)
/* 2C6DC 8002BADC 35AE0005 */  ori        $t6, $t5, 5
/* 2C6E0 8002BAE0 1000006B */  b          .L8002BC90
/* 2C6E4 8002BAE4 A46E0000 */   sh        $t6, ($v1)
/* 2C6E8 8002BAE8 84450000 */  lh         $a1, ($v0)
.L8002BAEC:
/* 2C6EC 8002BAEC 30AF2000 */  andi       $t7, $a1, 0x2000
/* 2C6F0 8002BAF0 11E0005A */  beqz       $t7, .L8002BC5C
/* 2C6F4 8002BAF4 30B84000 */   andi      $t8, $a1, 0x4000
/* 2C6F8 8002BAF8 1300000A */  beqz       $t8, .L8002BB24
/* 2C6FC 8002BAFC 94640000 */   lhu       $a0, ($v1)
/* 2C700 8002BB00 24190015 */  addiu      $t9, $zero, 0x15
/* 2C704 8002BB04 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C708 8002BB08 A039FD22 */  sb         $t9, %lo(pfsErrMsg)($at)
/* 2C70C 8002BB0C 3C018009 */  lui        $at, %hi(UNK_SelectedSaveSlot)
/* 2C710 8002BB10 A020FD2A */  sb         $zero, %lo(UNK_SelectedSaveSlot)($at)
/* 2C714 8002BB14 3088FFDF */  andi       $t0, $a0, 0xffdf
/* 2C718 8002BB18 A4680000 */  sh         $t0, ($v1)
/* 2C71C 8002BB1C 10000004 */  b          .L8002BB30
/* 2C720 8002BB20 3104FFFF */   andi      $a0, $t0, 0xffff
.L8002BB24:
/* 2C724 8002BB24 24090014 */  addiu      $t1, $zero, 0x14
/* 2C728 8002BB28 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C72C 8002BB2C A029FD22 */  sb         $t1, %lo(pfsErrMsg)($at)
.L8002BB30:
/* 2C730 8002BB30 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C734 8002BB34 308BFFF8 */  andi       $t3, $a0, 0xfff8
/* 2C738 8002BB38 A027FD29 */  sb         $a3, %lo(D_8008FD29)($at)
/* 2C73C 8002BB3C A46B0000 */  sh         $t3, ($v1)
/* 2C740 8002BB40 356C0005 */  ori        $t4, $t3, 5
/* 2C744 8002BB44 10000052 */  b          .L8002BC90
/* 2C748 8002BB48 A46C0000 */   sh        $t4, ($v1)
.L8002BB4C:
/* 2C74C 8002BB4C 3C0D8009 */  lui        $t5, %hi(D_8008FD2C)
/* 2C750 8002BB50 91ADFD2C */  lbu        $t5, %lo(D_8008FD2C)($t5)
/* 2C754 8002BB54 3C0E8009 */  lui        $t6, %hi(controller_no)
/* 2C758 8002BB58 11A00022 */  beqz       $t5, .L8002BBE4
/* 2C75C 8002BB5C 00000000 */   nop
/* 2C760 8002BB60 81CE2870 */  lb         $t6, %lo(controller_no)($t6)
/* 2C764 8002BB64 3C188009 */  lui        $t8, %hi(D_80092A38)
/* 2C768 8002BB68 27182A38 */  addiu      $t8, $t8, %lo(D_80092A38)
/* 2C76C 8002BB6C 000E7880 */  sll        $t7, $t6, 2
/* 2C770 8002BB70 01EE7821 */  addu       $t7, $t7, $t6
/* 2C774 8002BB74 000F7880 */  sll        $t7, $t7, 2
/* 2C778 8002BB78 01F81021 */  addu       $v0, $t7, $t8
/* 2C77C 8002BB7C 90590013 */  lbu        $t9, 0x13($v0)
/* 2C780 8002BB80 240A0018 */  addiu      $t2, $zero, 0x18
/* 2C784 8002BB84 2B210002 */  slti       $at, $t9, 2
/* 2C788 8002BB88 14200004 */  bnez       $at, .L8002BB9C
/* 2C78C 8002BB8C 00000000 */   nop
/* 2C790 8002BB90 84480000 */  lh         $t0, ($v0)
/* 2C794 8002BB94 31092000 */  andi       $t1, $t0, 0x2000
/* 2C798 8002BB98 11200012 */  beqz       $t1, .L8002BBE4
.L8002BB9C:
/* 2C79C 8002BB9C 3C018009 */   lui       $at, %hi(pfsErrMsg)
/* 2C7A0 8002BBA0 A02AFD22 */  sb         $t2, %lo(pfsErrMsg)($at)
/* 2C7A4 8002BBA4 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C7A8 8002BBA8 0C00B746 */  jal        controllerFunc1
/* 2C7AC 8002BBAC A027FD29 */   sb        $a3, %lo(D_8008FD29)($at)
/* 2C7B0 8002BBB0 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2C7B4 8002BBB4 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2C7B8 8002BBB8 946B0000 */  lhu        $t3, ($v1)
/* 2C7BC 8002BBBC 3C018009 */  lui        $at, %hi(UNK_SelectedSaveSlot)
/* 2C7C0 8002BBC0 316DFFF8 */  andi       $t5, $t3, 0xfff8
/* 2C7C4 8002BBC4 A46D0000 */  sh         $t5, ($v1)
/* 2C7C8 8002BBC8 35AE0005 */  ori        $t6, $t5, 5
/* 2C7CC 8002BBCC A46E0000 */  sh         $t6, ($v1)
/* 2C7D0 8002BBD0 A020FD2A */  sb         $zero, %lo(UNK_SelectedSaveSlot)($at)
/* 2C7D4 8002BBD4 946F0000 */  lhu        $t7, ($v1)
/* 2C7D8 8002BBD8 31F8FFDF */  andi       $t8, $t7, 0xffdf
/* 2C7DC 8002BBDC 1000002C */  b          .L8002BC90
/* 2C7E0 8002BBE0 A4780000 */   sh        $t8, ($v1)
.L8002BBE4:
/* 2C7E4 8002BBE4 3C198009 */  lui        $t9, %hi(controller_no)
/* 2C7E8 8002BBE8 83392870 */  lb         $t9, %lo(controller_no)($t9)
/* 2C7EC 8002BBEC 3C098009 */  lui        $t1, 0x8009
/* 2C7F0 8002BBF0 8FAB001C */  lw         $t3, 0x1c($sp)
/* 2C7F4 8002BBF4 00194080 */  sll        $t0, $t9, 2
/* 2C7F8 8002BBF8 01194021 */  addu       $t0, $t0, $t9
/* 2C7FC 8002BBFC 00084080 */  sll        $t0, $t0, 2
/* 2C800 8002BC00 01284821 */  addu       $t1, $t1, $t0
/* 2C804 8002BC04 85292A38 */  lh         $t1, 0x2a38($t1)
/* 2C808 8002BC08 312A4000 */  andi       $t2, $t1, 0x4000
/* 2C80C 8002BC0C 15400013 */  bnez       $t2, .L8002BC5C
/* 2C810 8002BC10 00000000 */   nop
/* 2C814 8002BC14 15600007 */  bnez       $t3, .L8002BC34
/* 2C818 8002BC18 94640000 */   lhu       $a0, ($v1)
/* 2C81C 8002BC1C 240C0009 */  addiu      $t4, $zero, 9
/* 2C820 8002BC20 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C824 8002BC24 A02CFD22 */  sb         $t4, %lo(pfsErrMsg)($at)
/* 2C828 8002BC28 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C82C 8002BC2C 10000006 */  b          .L8002BC48
/* 2C830 8002BC30 A027FD29 */   sb        $a3, %lo(D_8008FD29)($at)
.L8002BC34:
/* 2C834 8002BC34 240D000A */  addiu      $t5, $zero, 0xa
/* 2C838 8002BC38 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2C83C 8002BC3C A02DFD22 */  sb         $t5, %lo(pfsErrMsg)($at)
/* 2C840 8002BC40 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2C844 8002BC44 A027FD29 */  sb         $a3, %lo(D_8008FD29)($at)
.L8002BC48:
/* 2C848 8002BC48 308FFFF8 */  andi       $t7, $a0, 0xfff8
/* 2C84C 8002BC4C A46F0000 */  sh         $t7, ($v1)
/* 2C850 8002BC50 35F80005 */  ori        $t8, $t7, 5
/* 2C854 8002BC54 1000000E */  b          .L8002BC90
/* 2C858 8002BC58 A4780000 */   sh        $t8, ($v1)
.L8002BC5C:
/* 2C85C 8002BC5C 0C00B746 */  jal        controllerFunc1
/* 2C860 8002BC60 00000000 */   nop
/* 2C864 8002BC64 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2C868 8002BC68 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2C86C 8002BC6C 94790000 */  lhu        $t9, ($v1)
/* 2C870 8002BC70 3C018009 */  lui        $at, %hi(UNK_SelectedSaveSlot)
/* 2C874 8002BC74 3329FFF8 */  andi       $t1, $t9, 0xfff8
/* 2C878 8002BC78 A4690000 */  sh         $t1, ($v1)
/* 2C87C 8002BC7C A4690000 */  sh         $t1, ($v1)
/* 2C880 8002BC80 A020FD2A */  sb         $zero, %lo(UNK_SelectedSaveSlot)($at)
/* 2C884 8002BC84 946A0000 */  lhu        $t2, ($v1)
/* 2C888 8002BC88 314BFFDF */  andi       $t3, $t2, 0xffdf
/* 2C88C 8002BC8C A46B0000 */  sh         $t3, ($v1)
.L8002BC90:
/* 2C890 8002BC90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C894 8002BC94 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2C898 8002BC98 03E00008 */  jr         $ra
/* 2C89C 8002BC9C 00000000 */   nop

glabel VOID_FUN_8002bca0
/* 2C8A0 8002BCA0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2C8A4 8002BCA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2C8A8 8002BCA8 3C038009 */  lui        $v1, %hi(pfsErrMsg)
/* 2C8AC 8002BCAC 9063FD22 */  lbu        $v1, %lo(pfsErrMsg)($v1)
/* 2C8B0 8002BCB0 24010004 */  addiu      $at, $zero, 4
/* 2C8B4 8002BCB4 10610007 */  beq        $v1, $at, .L8002BCD4
/* 2C8B8 8002BCB8 24010005 */   addiu     $at, $zero, 5
/* 2C8BC 8002BCBC 10610005 */  beq        $v1, $at, .L8002BCD4
/* 2C8C0 8002BCC0 24010016 */   addiu     $at, $zero, 0x16
/* 2C8C4 8002BCC4 10610003 */  beq        $v1, $at, .L8002BCD4
/* 2C8C8 8002BCC8 24010017 */   addiu     $at, $zero, 0x17
/* 2C8CC 8002BCCC 14610005 */  bne        $v1, $at, .L8002BCE4
/* 2C8D0 8002BCD0 00000000 */   nop
.L8002BCD4:
/* 2C8D4 8002BCD4 0C00B206 */  jal        func_8002C818
/* 2C8D8 8002BCD8 24040001 */   addiu     $a0, $zero, 1
/* 2C8DC 8002BCDC 3C038009 */  lui        $v1, %hi(pfsErrMsg)
/* 2C8E0 8002BCE0 9063FD22 */  lbu        $v1, %lo(pfsErrMsg)($v1)
.L8002BCE4:
/* 2C8E4 8002BCE4 3C0F8007 */  lui        $t7, %hi(D_8006A9DC)
/* 2C8E8 8002BCE8 3C188009 */  lui        $t8, %hi(flags_DAT_8008fd0c)
/* 2C8EC 8002BCEC 9718FD0C */  lhu        $t8, %lo(flags_DAT_8008fd0c)($t8)
/* 2C8F0 8002BCF0 25EFA9DC */  addiu      $t7, $t7, %lo(D_8006A9DC)
/* 2C8F4 8002BCF4 000370C0 */  sll        $t6, $v1, 3
/* 2C8F8 8002BCF8 01CF1021 */  addu       $v0, $t6, $t7
/* 2C8FC 8002BCFC 33190004 */  andi       $t9, $t8, 4
/* 2C900 8002BD00 84450000 */  lh         $a1, ($v0)
/* 2C904 8002BD04 84460002 */  lh         $a2, 2($v0)
/* 2C908 8002BD08 84470004 */  lh         $a3, 4($v0)
/* 2C90C 8002BD0C 13200007 */  beqz       $t9, .L8002BD2C
/* 2C910 8002BD10 84480006 */   lh        $t0, 6($v0)
/* 2C914 8002BD14 00034880 */  sll        $t1, $v1, 2
/* 2C918 8002BD18 3C0A8007 */  lui        $t2, %hi(D_8006A914)
/* 2C91C 8002BD1C 01495021 */  addu       $t2, $t2, $t1
/* 2C920 8002BD20 8D4AA914 */  lw         $t2, %lo(D_8006A914)($t2)
/* 2C924 8002BD24 10000006 */  b          .L8002BD40
/* 2C928 8002BD28 AFAA0034 */   sw        $t2, 0x34($sp)
.L8002BD2C:
/* 2C92C 8002BD2C 00035880 */  sll        $t3, $v1, 2
/* 2C930 8002BD30 3C0C8007 */  lui        $t4, %hi(D_8006A978)
/* 2C934 8002BD34 018B6021 */  addu       $t4, $t4, $t3
/* 2C938 8002BD38 8D8CA978 */  lw         $t4, %lo(D_8006A978)($t4)
/* 2C93C 8002BD3C AFAC0034 */  sw         $t4, 0x34($sp)
.L8002BD40:
/* 2C940 8002BD40 00002025 */  or         $a0, $zero, $zero
/* 2C944 8002BD44 AFA80010 */  sw         $t0, 0x10($sp)
/* 2C948 8002BD48 AFA50044 */  sw         $a1, 0x44($sp)
/* 2C94C 8002BD4C AFA60040 */  sw         $a2, 0x40($sp)
/* 2C950 8002BD50 AFA7003C */  sw         $a3, 0x3c($sp)
/* 2C954 8002BD54 0C00A6D6 */  jal        drawMenues
/* 2C958 8002BD58 AFA80038 */   sw        $t0, 0x38($sp)
/* 2C95C 8002BD5C 8FAD0040 */  lw         $t5, 0x40($sp)
/* 2C960 8002BD60 8FAE0038 */  lw         $t6, 0x38($sp)
/* 2C964 8002BD64 8FA50044 */  lw         $a1, 0x44($sp)
/* 2C968 8002BD68 240F0003 */  addiu      $t7, $zero, 3
/* 2C96C 8002BD6C 01AE3021 */  addu       $a2, $t5, $t6
/* 2C970 8002BD70 AFA60030 */  sw         $a2, 0x30($sp)
/* 2C974 8002BD74 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2C978 8002BD78 24040037 */  addiu      $a0, $zero, 0x37
/* 2C97C 8002BD7C 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2C980 8002BD80 0C00A6D6 */  jal        drawMenues
/* 2C984 8002BD84 24A50003 */   addiu     $a1, $a1, 3
/* 2C988 8002BD88 8FB80044 */  lw         $t8, 0x44($sp)
/* 2C98C 8002BD8C 8FB9003C */  lw         $t9, 0x3c($sp)
/* 2C990 8002BD90 8FA60040 */  lw         $a2, 0x40($sp)
/* 2C994 8002BD94 8FA90038 */  lw         $t1, 0x38($sp)
/* 2C998 8002BD98 03192821 */  addu       $a1, $t8, $t9
/* 2C99C 8002BD9C 24C60006 */  addiu      $a2, $a2, 6
/* 2C9A0 8002BDA0 252AFFFB */  addiu      $t2, $t1, -5
/* 2C9A4 8002BDA4 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2C9A8 8002BDA8 AFA60028 */  sw         $a2, 0x28($sp)
/* 2C9AC 8002BDAC AFA5002C */  sw         $a1, 0x2c($sp)
/* 2C9B0 8002BDB0 24040037 */  addiu      $a0, $zero, 0x37
/* 2C9B4 8002BDB4 0C00A6D6 */  jal        drawMenues
/* 2C9B8 8002BDB8 24070002 */   addiu     $a3, $zero, 2
/* 2C9BC 8002BDBC 8FA50044 */  lw         $a1, 0x44($sp)
/* 2C9C0 8002BDC0 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2C9C4 8002BDC4 8FA60040 */  lw         $a2, 0x40($sp)
/* 2C9C8 8002BDC8 240B0001 */  addiu      $t3, $zero, 1
/* 2C9CC 8002BDCC 24A5FFFF */  addiu      $a1, $a1, -1
/* 2C9D0 8002BDD0 24E70002 */  addiu      $a3, $a3, 2
/* 2C9D4 8002BDD4 AFA70020 */  sw         $a3, 0x20($sp)
/* 2C9D8 8002BDD8 AFA50024 */  sw         $a1, 0x24($sp)
/* 2C9DC 8002BDDC AFAB0010 */  sw         $t3, 0x10($sp)
/* 2C9E0 8002BDE0 24040037 */  addiu      $a0, $zero, 0x37
/* 2C9E4 8002BDE4 0C00A6D6 */  jal        drawMenues
/* 2C9E8 8002BDE8 24C6FFFF */   addiu     $a2, $a2, -1
/* 2C9EC 8002BDEC 240C0001 */  addiu      $t4, $zero, 1
/* 2C9F0 8002BDF0 8FA70020 */  lw         $a3, 0x20($sp)
/* 2C9F4 8002BDF4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2C9F8 8002BDF8 24040037 */  addiu      $a0, $zero, 0x37
/* 2C9FC 8002BDFC 8FA50024 */  lw         $a1, 0x24($sp)
/* 2CA00 8002BE00 0C00A6D6 */  jal        drawMenues
/* 2CA04 8002BE04 8FA60030 */   lw        $a2, 0x30($sp)
/* 2CA08 8002BE08 8FAD0038 */  lw         $t5, 0x38($sp)
/* 2CA0C 8002BE0C 24040037 */  addiu      $a0, $zero, 0x37
/* 2CA10 8002BE10 8FA50024 */  lw         $a1, 0x24($sp)
/* 2CA14 8002BE14 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CA18 8002BE18 24070001 */  addiu      $a3, $zero, 1
/* 2CA1C 8002BE1C 0C00A6D6 */  jal        drawMenues
/* 2CA20 8002BE20 AFAD0010 */   sw        $t5, 0x10($sp)
/* 2CA24 8002BE24 8FAE0038 */  lw         $t6, 0x38($sp)
/* 2CA28 8002BE28 24040037 */  addiu      $a0, $zero, 0x37
/* 2CA2C 8002BE2C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 2CA30 8002BE30 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CA34 8002BE34 24070001 */  addiu      $a3, $zero, 1
/* 2CA38 8002BE38 0C00A6D6 */  jal        drawMenues
/* 2CA3C 8002BE3C AFAE0010 */   sw        $t6, 0x10($sp)
/* 2CA40 8002BE40 8FA50044 */  lw         $a1, 0x44($sp)
/* 2CA44 8002BE44 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CA48 8002BE48 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2CA4C 8002BE4C 240F0001 */  addiu      $t7, $zero, 1
/* 2CA50 8002BE50 24A50001 */  addiu      $a1, $a1, 1
/* 2CA54 8002BE54 24C60001 */  addiu      $a2, $a2, 1
/* 2CA58 8002BE58 AFA60020 */  sw         $a2, 0x20($sp)
/* 2CA5C 8002BE5C AFA50024 */  sw         $a1, 0x24($sp)
/* 2CA60 8002BE60 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2CA64 8002BE64 24040038 */  addiu      $a0, $zero, 0x38
/* 2CA68 8002BE68 0C00A6D6 */  jal        drawMenues
/* 2CA6C 8002BE6C 24E7FFFD */   addiu     $a3, $a3, -3
/* 2CA70 8002BE70 8FB80038 */  lw         $t8, 0x38($sp)
/* 2CA74 8002BE74 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CA78 8002BE78 24040038 */  addiu      $a0, $zero, 0x38
/* 2CA7C 8002BE7C 2719FFFC */  addiu      $t9, $t8, -4
/* 2CA80 8002BE80 AFB90010 */  sw         $t9, 0x10($sp)
/* 2CA84 8002BE84 8FA50024 */  lw         $a1, 0x24($sp)
/* 2CA88 8002BE88 24070001 */  addiu      $a3, $zero, 1
/* 2CA8C 8002BE8C 0C00A6D6 */  jal        drawMenues
/* 2CA90 8002BE90 24C60002 */   addiu     $a2, $a2, 2
/* 2CA94 8002BE94 8FA60030 */  lw         $a2, 0x30($sp)
/* 2CA98 8002BE98 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2CA9C 8002BE9C 24090001 */  addiu      $t1, $zero, 1
/* 2CAA0 8002BEA0 AFA90010 */  sw         $t1, 0x10($sp)
/* 2CAA4 8002BEA4 24040039 */  addiu      $a0, $zero, 0x39
/* 2CAA8 8002BEA8 8FA50024 */  lw         $a1, 0x24($sp)
/* 2CAAC 8002BEAC 24C6FFFE */  addiu      $a2, $a2, -2
/* 2CAB0 8002BEB0 0C00A6D6 */  jal        drawMenues
/* 2CAB4 8002BEB4 24E7FFFE */   addiu     $a3, $a3, -2
/* 2CAB8 8002BEB8 8FAA0038 */  lw         $t2, 0x38($sp)
/* 2CABC 8002BEBC 8FA5002C */  lw         $a1, 0x2c($sp)
/* 2CAC0 8002BEC0 24040039 */  addiu      $a0, $zero, 0x39
/* 2CAC4 8002BEC4 254BFFFD */  addiu      $t3, $t2, -3
/* 2CAC8 8002BEC8 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2CACC 8002BECC 8FA60020 */  lw         $a2, 0x20($sp)
/* 2CAD0 8002BED0 24070001 */  addiu      $a3, $zero, 1
/* 2CAD4 8002BED4 0C00A6D6 */  jal        drawMenues
/* 2CAD8 8002BED8 24A5FFFE */   addiu     $a1, $a1, -2
/* 2CADC 8002BEDC 8FA40044 */  lw         $a0, 0x44($sp)
/* 2CAE0 8002BEE0 8FA50028 */  lw         $a1, 0x28($sp)
/* 2CAE4 8002BEE4 8FA60034 */  lw         $a2, 0x34($sp)
/* 2CAE8 8002BEE8 0C00C3A8 */  jal        printTextToScreen
/* 2CAEC 8002BEEC 24840006 */   addiu     $a0, $a0, 6
/* 2CAF0 8002BEF0 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 2CAF4 8002BEF4 00000000 */   nop
/* 2CAF8 8002BEF8 3C088009 */  lui        $t0, %hi(D_8008FD29)
/* 2CAFC 8002BEFC 2508FD29 */  addiu      $t0, $t0, %lo(D_8008FD29)
/* 2CB00 8002BF00 81020000 */  lb         $v0, ($t0)
/* 2CB04 8002BF04 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2CB08 8002BF08 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2CB0C 8002BF0C 04400003 */  bltz       $v0, .L8002BF1C
/* 2CB10 8002BF10 244CFFFF */   addiu     $t4, $v0, -1
/* 2CB14 8002BF14 A10C0000 */  sb         $t4, ($t0)
/* 2CB18 8002BF18 81020000 */  lb         $v0, ($t0)
.L8002BF1C:
/* 2CB1C 8002BF1C 04410095 */  bgez       $v0, .L8002C174
/* 2CB20 8002BF20 00000000 */   nop
/* 2CB24 8002BF24 94620000 */  lhu        $v0, ($v1)
/* 2CB28 8002BF28 3C048009 */  lui        $a0, %hi(ButtonPressedFrame)
/* 2CB2C 8002BF2C 304D0800 */  andi       $t5, $v0, 0x800
/* 2CB30 8002BF30 15A00090 */  bnez       $t5, .L8002C174
/* 2CB34 8002BF34 00000000 */   nop
/* 2CB38 8002BF38 94842876 */  lhu        $a0, %lo(ButtonPressedFrame)($a0)
/* 2CB3C 8002BF3C 3C0F8009 */  lui        $t7, %hi(pfsErrMsg)
/* 2CB40 8002BF40 308E8000 */  andi       $t6, $a0, 0x8000
/* 2CB44 8002BF44 11C0001A */  beqz       $t6, .L8002BFB0
/* 2CB48 8002BF48 00000000 */   nop
/* 2CB4C 8002BF4C 91EFFD22 */  lbu        $t7, %lo(pfsErrMsg)($t7)
/* 2CB50 8002BF50 25F8FFF8 */  addiu      $t8, $t7, -8
/* 2CB54 8002BF54 2F010011 */  sltiu      $at, $t8, 0x11
/* 2CB58 8002BF58 10200015 */  beqz       $at, .L8002BFB0
/* 2CB5C 8002BF5C 0018C080 */   sll       $t8, $t8, 2
/* 2CB60 8002BF60 3C018007 */  lui        $at, %hi(D_80071780)
/* 2CB64 8002BF64 00380821 */  addu       $at, $at, $t8
/* 2CB68 8002BF68 8C381780 */  lw         $t8, %lo(D_80071780)($at)
/* 2CB6C 8002BF6C 03000008 */  jr         $t8
/* 2CB70 8002BF70 00000000 */   nop
/* 2CB74 8002BF74 34598000 */  ori        $t9, $v0, 0x8000
/* 2CB78 8002BF78 A4790000 */  sh         $t9, ($v1)
/* 2CB7C 8002BF7C 00002025 */  or         $a0, $zero, $zero
/* 2CB80 8002BF80 24050001 */  addiu      $a1, $zero, 1
/* 2CB84 8002BF84 0C009A35 */  jal        func_800268D4
/* 2CB88 8002BF88 240600FF */   addiu     $a2, $zero, 0xff
/* 2CB8C 8002BF8C 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2CB90 8002BF90 3C048009 */  lui        $a0, %hi(ButtonPressedFrame)
/* 2CB94 8002BF94 3C088009 */  lui        $t0, %hi(D_8008FD29)
/* 2CB98 8002BF98 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2CB9C 8002BF9C 2508FD29 */  addiu      $t0, $t0, %lo(D_8008FD29)
/* 2CBA0 8002BFA0 10000003 */  b          .L8002BFB0
/* 2CBA4 8002BFA4 94842876 */   lhu       $a0, %lo(ButtonPressedFrame)($a0)
/* 2CBA8 8002BFA8 24091000 */  addiu      $t1, $zero, 0x1000
/* 2CBAC 8002BFAC A4690000 */  sh         $t1, ($v1)
.L8002BFB0:
/* 2CBB0 8002BFB0 3C028009 */  lui        $v0, %hi(pfsErrMsg)
/* 2CBB4 8002BFB4 308AC000 */  andi       $t2, $a0, 0xc000
/* 2CBB8 8002BFB8 11400046 */  beqz       $t2, .L8002C0D4
/* 2CBBC 8002BFBC 9042FD22 */   lbu       $v0, %lo(pfsErrMsg)($v0)
/* 2CBC0 8002BFC0 244BFFFC */  addiu      $t3, $v0, -4
/* 2CBC4 8002BFC4 2D610014 */  sltiu      $at, $t3, 0x14
/* 2CBC8 8002BFC8 1020006A */  beqz       $at, .L8002C174
/* 2CBCC 8002BFCC 000B5880 */   sll       $t3, $t3, 2
/* 2CBD0 8002BFD0 3C018007 */  lui        $at, %hi(D_800717C4)
/* 2CBD4 8002BFD4 002B0821 */  addu       $at, $at, $t3
/* 2CBD8 8002BFD8 8C2B17C4 */  lw         $t3, %lo(D_800717C4)($at)
/* 2CBDC 8002BFDC 01600008 */  jr         $t3
/* 2CBE0 8002BFE0 00000000 */   nop
/* 2CBE4 8002BFE4 946C0000 */  lhu        $t4, ($v1)
/* 2CBE8 8002BFE8 3C018009 */  lui        $at, 0x8009
/* 2CBEC 8002BFEC 00002025 */  or         $a0, $zero, $zero
/* 2CBF0 8002BFF0 318EDFFF */  andi       $t6, $t4, 0xdfff
/* 2CBF4 8002BFF4 31D8FFF8 */  andi       $t8, $t6, 0xfff8
/* 2CBF8 8002BFF8 A46E0000 */  sh         $t6, ($v1)
/* 2CBFC 8002BFFC 3309BFFF */  andi       $t1, $t8, 0xbfff
/* 2CC00 8002C000 A4780000 */  sh         $t8, ($v1)
/* 2CC04 8002C004 A4690000 */  sh         $t1, ($v1)
/* 2CC08 8002C008 312AFFDF */  andi       $t2, $t1, 0xffdf
/* 2CC0C 8002C00C A46A0000 */  sh         $t2, ($v1)
/* 2CC10 8002C010 A020FD2A */  sb         $zero, -0x2d6($at)
/* 2CC14 8002C014 946B0000 */  lhu        $t3, ($v1)
/* 2CC18 8002C018 24050001 */  addiu      $a1, $zero, 1
/* 2CC1C 8002C01C 240600FF */  addiu      $a2, $zero, 0xff
/* 2CC20 8002C020 356C1000 */  ori        $t4, $t3, 0x1000
/* 2CC24 8002C024 0C009A35 */  jal        func_800268D4
/* 2CC28 8002C028 A46C0000 */   sh        $t4, ($v1)
/* 2CC2C 8002C02C 10000051 */  b          .L8002C174
/* 2CC30 8002C030 00000000 */   nop
/* 2CC34 8002C034 946D0000 */  lhu        $t5, ($v1)
/* 2CC38 8002C038 3C018009 */  lui        $at, 0x8009
/* 2CC3C 8002C03C 2419000A */  addiu      $t9, $zero, 0xa
/* 2CC40 8002C040 35AF0010 */  ori        $t7, $t5, 0x10
/* 2CC44 8002C044 A46F0000 */  sh         $t7, ($v1)
/* 2CC48 8002C048 35F80800 */  ori        $t8, $t7, 0x800
/* 2CC4C 8002C04C A4780000 */  sh         $t8, ($v1)
/* 2CC50 8002C050 A020FD28 */  sb         $zero, -0x2d8($at)
/* 2CC54 8002C054 A1190000 */  sb         $t9, ($t0)
/* 2CC58 8002C058 00002025 */  or         $a0, $zero, $zero
/* 2CC5C 8002C05C 24050001 */  addiu      $a1, $zero, 1
/* 2CC60 8002C060 0C009A35 */  jal        func_800268D4
/* 2CC64 8002C064 240600FF */   addiu     $a2, $zero, 0xff
/* 2CC68 8002C068 10000042 */  b          .L8002C174
/* 2CC6C 8002C06C 00000000 */   nop
/* 2CC70 8002C070 94690000 */  lhu        $t1, ($v1)
/* 2CC74 8002C074 24010004 */  addiu      $at, $zero, 4
/* 2CC78 8002C078 240E000A */  addiu      $t6, $zero, 0xa
/* 2CC7C 8002C07C 312BFFEF */  andi       $t3, $t1, 0xffef
/* 2CC80 8002C080 A46B0000 */  sh         $t3, ($v1)
/* 2CC84 8002C084 356C0800 */  ori        $t4, $t3, 0x800
/* 2CC88 8002C088 10410006 */  beq        $v0, $at, .L8002C0A4
/* 2CC8C 8002C08C A46C0000 */   sh        $t4, ($v1)
/* 2CC90 8002C090 24010005 */  addiu      $at, $zero, 5
/* 2CC94 8002C094 10410003 */  beq        $v0, $at, .L8002C0A4
/* 2CC98 8002C098 24010006 */   addiu     $at, $zero, 6
/* 2CC9C 8002C09C 14410004 */  bne        $v0, $at, .L8002C0B0
/* 2CCA0 8002C0A0 240D0001 */   addiu     $t5, $zero, 1
.L8002C0A4:
/* 2CCA4 8002C0A4 3C018009 */  lui        $at, %hi(D_8008FD28)
/* 2CCA8 8002C0A8 10000003 */  b          .L8002C0B8
/* 2CCAC 8002C0AC A020FD28 */   sb        $zero, %lo(D_8008FD28)($at)
.L8002C0B0:
/* 2CCB0 8002C0B0 3C018009 */  lui        $at, %hi(D_8008FD28)
/* 2CCB4 8002C0B4 A02DFD28 */  sb         $t5, %lo(D_8008FD28)($at)
.L8002C0B8:
/* 2CCB8 8002C0B8 A10E0000 */  sb         $t6, ($t0)
/* 2CCBC 8002C0BC 00002025 */  or         $a0, $zero, $zero
/* 2CCC0 8002C0C0 24050001 */  addiu      $a1, $zero, 1
/* 2CCC4 8002C0C4 0C009A35 */  jal        func_800268D4
/* 2CCC8 8002C0C8 240600FF */   addiu     $a2, $zero, 0xff
/* 2CCCC 8002C0CC 10000029 */  b          .L8002C174
/* 2CCD0 8002C0D0 00000000 */   nop
.L8002C0D4:
/* 2CCD4 8002C0D4 244FFFFC */  addiu      $t7, $v0, -4
/* 2CCD8 8002C0D8 2DE10014 */  sltiu      $at, $t7, 0x14
/* 2CCDC 8002C0DC 10200025 */  beqz       $at, .L8002C174
/* 2CCE0 8002C0E0 000F7880 */   sll       $t7, $t7, 2
/* 2CCE4 8002C0E4 3C018007 */  lui        $at, %hi(D_80071814)
/* 2CCE8 8002C0E8 002F0821 */  addu       $at, $at, $t7
/* 2CCEC 8002C0EC 8C2F1814 */  lw         $t7, %lo(D_80071814)($at)
/* 2CCF0 8002C0F0 01E00008 */  jr         $t7
/* 2CCF4 8002C0F4 00000000 */   nop
/* 2CCF8 8002C0F8 94780000 */  lhu        $t8, ($v1)
/* 2CCFC 8002C0FC 3C018009 */  lui        $at, 0x8009
/* 2CD00 8002C100 240B000A */  addiu      $t3, $zero, 0xa
/* 2CD04 8002C104 37090010 */  ori        $t1, $t8, 0x10
/* 2CD08 8002C108 A4690000 */  sh         $t1, ($v1)
/* 2CD0C 8002C10C 352A0800 */  ori        $t2, $t1, 0x800
/* 2CD10 8002C110 A46A0000 */  sh         $t2, ($v1)
/* 2CD14 8002C114 A020FD28 */  sb         $zero, -0x2d8($at)
/* 2CD18 8002C118 10000016 */  b          .L8002C174
/* 2CD1C 8002C11C A10B0000 */   sb        $t3, ($t0)
/* 2CD20 8002C120 946C0000 */  lhu        $t4, ($v1)
/* 2CD24 8002C124 24010004 */  addiu      $at, $zero, 4
/* 2CD28 8002C128 2419000A */  addiu      $t9, $zero, 0xa
/* 2CD2C 8002C12C 318EFFEF */  andi       $t6, $t4, 0xffef
/* 2CD30 8002C130 A46E0000 */  sh         $t6, ($v1)
/* 2CD34 8002C134 35CF0800 */  ori        $t7, $t6, 0x800
/* 2CD38 8002C138 10410008 */  beq        $v0, $at, .L8002C15C
/* 2CD3C 8002C13C A46F0000 */   sh        $t7, ($v1)
/* 2CD40 8002C140 24010005 */  addiu      $at, $zero, 5
/* 2CD44 8002C144 10410005 */  beq        $v0, $at, .L8002C15C
/* 2CD48 8002C148 24010006 */   addiu     $at, $zero, 6
/* 2CD4C 8002C14C 10410003 */  beq        $v0, $at, .L8002C15C
/* 2CD50 8002C150 24010012 */   addiu     $at, $zero, 0x12
/* 2CD54 8002C154 14410004 */  bne        $v0, $at, .L8002C168
/* 2CD58 8002C158 24180001 */   addiu     $t8, $zero, 1
.L8002C15C:
/* 2CD5C 8002C15C 3C018009 */  lui        $at, %hi(D_8008FD28)
/* 2CD60 8002C160 10000003 */  b          .L8002C170
/* 2CD64 8002C164 A020FD28 */   sb        $zero, %lo(D_8008FD28)($at)
.L8002C168:
/* 2CD68 8002C168 3C018009 */  lui        $at, %hi(D_8008FD28)
/* 2CD6C 8002C16C A038FD28 */  sb         $t8, %lo(D_8008FD28)($at)
.L8002C170:
/* 2CD70 8002C170 A1190000 */  sb         $t9, ($t0)
.L8002C174:
/* 2CD74 8002C174 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2CD78 8002C178 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2CD7C 8002C17C 94620000 */  lhu        $v0, ($v1)
/* 2CD80 8002C180 00002025 */  or         $a0, $zero, $zero
/* 2CD84 8002C184 30490800 */  andi       $t1, $v0, 0x800
/* 2CD88 8002C188 1120019F */  beqz       $t1, .L8002C808
/* 2CD8C 8002C18C 304A0010 */   andi      $t2, $v0, 0x10
/* 2CD90 8002C190 1140000C */  beqz       $t2, .L8002C1C4
/* 2CD94 8002C194 3C028007 */   lui       $v0, 0x8007
/* 2CD98 8002C198 3C028007 */  lui        $v0, %hi(D_8006A9DC)
/* 2CD9C 8002C19C 2442A9DC */  addiu      $v0, $v0, %lo(D_8006A9DC)
/* 2CDA0 8002C1A0 844B0000 */  lh         $t3, ($v0)
/* 2CDA4 8002C1A4 844C0002 */  lh         $t4, 2($v0)
/* 2CDA8 8002C1A8 844D0004 */  lh         $t5, 4($v0)
/* 2CDAC 8002C1AC 844E0006 */  lh         $t6, 6($v0)
/* 2CDB0 8002C1B0 AFAB0044 */  sw         $t3, 0x44($sp)
/* 2CDB4 8002C1B4 AFAC0040 */  sw         $t4, 0x40($sp)
/* 2CDB8 8002C1B8 AFAD003C */  sw         $t5, 0x3c($sp)
/* 2CDBC 8002C1BC 1000000A */  b          .L8002C1E8
/* 2CDC0 8002C1C0 AFAE0038 */   sw        $t6, 0x38($sp)
.L8002C1C4:
/* 2CDC4 8002C1C4 2442A9DC */  addiu      $v0, $v0, -0x5624
/* 2CDC8 8002C1C8 844F0010 */  lh         $t7, 0x10($v0)
/* 2CDCC 8002C1CC 84580012 */  lh         $t8, 0x12($v0)
/* 2CDD0 8002C1D0 84590014 */  lh         $t9, 0x14($v0)
/* 2CDD4 8002C1D4 84490016 */  lh         $t1, 0x16($v0)
/* 2CDD8 8002C1D8 AFAF0044 */  sw         $t7, 0x44($sp)
/* 2CDDC 8002C1DC AFB80040 */  sw         $t8, 0x40($sp)
/* 2CDE0 8002C1E0 AFB9003C */  sw         $t9, 0x3c($sp)
/* 2CDE4 8002C1E4 AFA90038 */  sw         $t1, 0x38($sp)
.L8002C1E8:
/* 2CDE8 8002C1E8 8FAA0038 */  lw         $t2, 0x38($sp)
/* 2CDEC 8002C1EC 8FA50044 */  lw         $a1, 0x44($sp)
/* 2CDF0 8002C1F0 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CDF4 8002C1F4 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2CDF8 8002C1F8 0C00A6D6 */  jal        drawMenues
/* 2CDFC 8002C1FC AFAA0010 */   sw        $t2, 0x10($sp)
/* 2CE00 8002C200 8FAB0040 */  lw         $t3, 0x40($sp)
/* 2CE04 8002C204 8FAC0038 */  lw         $t4, 0x38($sp)
/* 2CE08 8002C208 8FA50044 */  lw         $a1, 0x44($sp)
/* 2CE0C 8002C20C 240D0003 */  addiu      $t5, $zero, 3
/* 2CE10 8002C210 016C3021 */  addu       $a2, $t3, $t4
/* 2CE14 8002C214 AFA60030 */  sw         $a2, 0x30($sp)
/* 2CE18 8002C218 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2CE1C 8002C21C 24040037 */  addiu      $a0, $zero, 0x37
/* 2CE20 8002C220 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2CE24 8002C224 0C00A6D6 */  jal        drawMenues
/* 2CE28 8002C228 24A50003 */   addiu     $a1, $a1, 3
/* 2CE2C 8002C22C 8FAE0044 */  lw         $t6, 0x44($sp)
/* 2CE30 8002C230 8FAF003C */  lw         $t7, 0x3c($sp)
/* 2CE34 8002C234 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CE38 8002C238 8FB80038 */  lw         $t8, 0x38($sp)
/* 2CE3C 8002C23C 01CF2821 */  addu       $a1, $t6, $t7
/* 2CE40 8002C240 24C60006 */  addiu      $a2, $a2, 6
/* 2CE44 8002C244 2719FFFB */  addiu      $t9, $t8, -5
/* 2CE48 8002C248 AFB90010 */  sw         $t9, 0x10($sp)
/* 2CE4C 8002C24C AFA60028 */  sw         $a2, 0x28($sp)
/* 2CE50 8002C250 AFA5002C */  sw         $a1, 0x2c($sp)
/* 2CE54 8002C254 24040037 */  addiu      $a0, $zero, 0x37
/* 2CE58 8002C258 0C00A6D6 */  jal        drawMenues
/* 2CE5C 8002C25C 24070002 */   addiu     $a3, $zero, 2
/* 2CE60 8002C260 8FA50044 */  lw         $a1, 0x44($sp)
/* 2CE64 8002C264 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2CE68 8002C268 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CE6C 8002C26C 24090001 */  addiu      $t1, $zero, 1
/* 2CE70 8002C270 24A5FFFF */  addiu      $a1, $a1, -1
/* 2CE74 8002C274 24E70002 */  addiu      $a3, $a3, 2
/* 2CE78 8002C278 AFA70020 */  sw         $a3, 0x20($sp)
/* 2CE7C 8002C27C AFA50024 */  sw         $a1, 0x24($sp)
/* 2CE80 8002C280 AFA90010 */  sw         $t1, 0x10($sp)
/* 2CE84 8002C284 24040037 */  addiu      $a0, $zero, 0x37
/* 2CE88 8002C288 0C00A6D6 */  jal        drawMenues
/* 2CE8C 8002C28C 24C6FFFF */   addiu     $a2, $a2, -1
/* 2CE90 8002C290 240A0001 */  addiu      $t2, $zero, 1
/* 2CE94 8002C294 8FA70020 */  lw         $a3, 0x20($sp)
/* 2CE98 8002C298 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2CE9C 8002C29C 24040037 */  addiu      $a0, $zero, 0x37
/* 2CEA0 8002C2A0 8FA50024 */  lw         $a1, 0x24($sp)
/* 2CEA4 8002C2A4 0C00A6D6 */  jal        drawMenues
/* 2CEA8 8002C2A8 8FA60030 */   lw        $a2, 0x30($sp)
/* 2CEAC 8002C2AC 8FAB0038 */  lw         $t3, 0x38($sp)
/* 2CEB0 8002C2B0 24040037 */  addiu      $a0, $zero, 0x37
/* 2CEB4 8002C2B4 8FA50024 */  lw         $a1, 0x24($sp)
/* 2CEB8 8002C2B8 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CEBC 8002C2BC 24070001 */  addiu      $a3, $zero, 1
/* 2CEC0 8002C2C0 0C00A6D6 */  jal        drawMenues
/* 2CEC4 8002C2C4 AFAB0010 */   sw        $t3, 0x10($sp)
/* 2CEC8 8002C2C8 8FAC0038 */  lw         $t4, 0x38($sp)
/* 2CECC 8002C2CC 24040037 */  addiu      $a0, $zero, 0x37
/* 2CED0 8002C2D0 8FA5002C */  lw         $a1, 0x2c($sp)
/* 2CED4 8002C2D4 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CED8 8002C2D8 24070001 */  addiu      $a3, $zero, 1
/* 2CEDC 8002C2DC 0C00A6D6 */  jal        drawMenues
/* 2CEE0 8002C2E0 AFAC0010 */   sw        $t4, 0x10($sp)
/* 2CEE4 8002C2E4 8FA50044 */  lw         $a1, 0x44($sp)
/* 2CEE8 8002C2E8 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CEEC 8002C2EC 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2CEF0 8002C2F0 240D0001 */  addiu      $t5, $zero, 1
/* 2CEF4 8002C2F4 24A50001 */  addiu      $a1, $a1, 1
/* 2CEF8 8002C2F8 24C60001 */  addiu      $a2, $a2, 1
/* 2CEFC 8002C2FC AFA60020 */  sw         $a2, 0x20($sp)
/* 2CF00 8002C300 AFA50024 */  sw         $a1, 0x24($sp)
/* 2CF04 8002C304 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2CF08 8002C308 24040038 */  addiu      $a0, $zero, 0x38
/* 2CF0C 8002C30C 0C00A6D6 */  jal        drawMenues
/* 2CF10 8002C310 24E7FFFD */   addiu     $a3, $a3, -3
/* 2CF14 8002C314 8FAE0038 */  lw         $t6, 0x38($sp)
/* 2CF18 8002C318 8FA60040 */  lw         $a2, 0x40($sp)
/* 2CF1C 8002C31C 24040038 */  addiu      $a0, $zero, 0x38
/* 2CF20 8002C320 25CFFFFC */  addiu      $t7, $t6, -4
/* 2CF24 8002C324 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2CF28 8002C328 8FA50024 */  lw         $a1, 0x24($sp)
/* 2CF2C 8002C32C 24070001 */  addiu      $a3, $zero, 1
/* 2CF30 8002C330 0C00A6D6 */  jal        drawMenues
/* 2CF34 8002C334 24C60002 */   addiu     $a2, $a2, 2
/* 2CF38 8002C338 8FA60030 */  lw         $a2, 0x30($sp)
/* 2CF3C 8002C33C 8FA7003C */  lw         $a3, 0x3c($sp)
/* 2CF40 8002C340 24180001 */  addiu      $t8, $zero, 1
/* 2CF44 8002C344 AFB80010 */  sw         $t8, 0x10($sp)
/* 2CF48 8002C348 24040039 */  addiu      $a0, $zero, 0x39
/* 2CF4C 8002C34C 8FA50024 */  lw         $a1, 0x24($sp)
/* 2CF50 8002C350 24C6FFFE */  addiu      $a2, $a2, -2
/* 2CF54 8002C354 0C00A6D6 */  jal        drawMenues
/* 2CF58 8002C358 24E7FFFE */   addiu     $a3, $a3, -2
/* 2CF5C 8002C35C 8FB90038 */  lw         $t9, 0x38($sp)
/* 2CF60 8002C360 8FA5002C */  lw         $a1, 0x2c($sp)
/* 2CF64 8002C364 24040039 */  addiu      $a0, $zero, 0x39
/* 2CF68 8002C368 2729FFFD */  addiu      $t1, $t9, -3
/* 2CF6C 8002C36C AFA90010 */  sw         $t1, 0x10($sp)
/* 2CF70 8002C370 8FA60020 */  lw         $a2, 0x20($sp)
/* 2CF74 8002C374 24070001 */  addiu      $a3, $zero, 1
/* 2CF78 8002C378 0C00A6D6 */  jal        drawMenues
/* 2CF7C 8002C37C 24A5FFFE */   addiu     $a1, $a1, -2
/* 2CF80 8002C380 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2CF84 8002C384 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2CF88 8002C388 946A0000 */  lhu        $t2, ($v1)
/* 2CF8C 8002C38C 8FA40044 */  lw         $a0, 0x44($sp)
/* 2CF90 8002C390 3C068007 */  lui        $a2, 0x8007
/* 2CF94 8002C394 314B0010 */  andi       $t3, $t2, 0x10
/* 2CF98 8002C398 11600010 */  beqz       $t3, .L8002C3DC
/* 2CF9C 8002C39C 24840006 */   addiu     $a0, $a0, 6
/* 2CFA0 8002C3A0 8FA40044 */  lw         $a0, 0x44($sp)
/* 2CFA4 8002C3A4 3C068007 */  lui        $a2, %hi(D_8006A918)
/* 2CFA8 8002C3A8 8CC6A918 */  lw         $a2, %lo(D_8006A918)($a2)
/* 2CFAC 8002C3AC 24840006 */  addiu      $a0, $a0, 6
/* 2CFB0 8002C3B0 AFA40030 */  sw         $a0, 0x30($sp)
/* 2CFB4 8002C3B4 0C00C3A8 */  jal        printTextToScreen
/* 2CFB8 8002C3B8 8FA50028 */   lw        $a1, 0x28($sp)
/* 2CFBC 8002C3BC 8FA50040 */  lw         $a1, 0x40($sp)
/* 2CFC0 8002C3C0 3C068007 */  lui        $a2, %hi(D_8006A914)
/* 2CFC4 8002C3C4 8FA40030 */  lw         $a0, 0x30($sp)
/* 2CFC8 8002C3C8 8CC6A914 */  lw         $a2, %lo(D_8006A914)($a2)
/* 2CFCC 8002C3CC 0C00C3A8 */  jal        printTextToScreen
/* 2CFD0 8002C3D0 24A50013 */   addiu     $a1, $a1, 0x13
/* 2CFD4 8002C3D4 1000000B */  b          .L8002C404
/* 2CFD8 8002C3D8 00000000 */   nop
.L8002C3DC:
/* 2CFDC 8002C3DC 8CC6A91C */  lw         $a2, -0x56e4($a2)
/* 2CFE0 8002C3E0 8FA50028 */  lw         $a1, 0x28($sp)
/* 2CFE4 8002C3E4 0C00C3A8 */  jal        printTextToScreen
/* 2CFE8 8002C3E8 AFA40030 */   sw        $a0, 0x30($sp)
/* 2CFEC 8002C3EC 8FA50040 */  lw         $a1, 0x40($sp)
/* 2CFF0 8002C3F0 3C068007 */  lui        $a2, %hi(D_8006A920)
/* 2CFF4 8002C3F4 8FA40030 */  lw         $a0, 0x30($sp)
/* 2CFF8 8002C3F8 8CC6A920 */  lw         $a2, %lo(D_8006A920)($a2)
/* 2CFFC 8002C3FC 0C00C3A8 */  jal        printTextToScreen
/* 2D000 8002C400 24A50013 */   addiu     $a1, $a1, 0x13
.L8002C404:
/* 2D004 8002C404 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 2D008 8002C408 00000000 */   nop
/* 2D00C 8002C40C 3C0C8009 */  lui        $t4, %hi(D_8008FD29)
/* 2D010 8002C410 818CFD29 */  lb         $t4, %lo(D_8008FD29)($t4)
/* 2D014 8002C414 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2D018 8002C418 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2D01C 8002C41C 058100FA */  bgez       $t4, .L8002C808
/* 2D020 8002C420 3C028009 */   lui       $v0, %hi(JoystickY)
/* 2D024 8002C424 80422872 */  lb         $v0, %lo(JoystickY)($v0)
/* 2D028 8002C428 2841FFEC */  slti       $at, $v0, -0x14
/* 2D02C 8002C42C 14200003 */  bnez       $at, .L8002C43C
/* 2D030 8002C430 28410015 */   slti      $at, $v0, 0x15
/* 2D034 8002C434 54200012 */  bnel       $at, $zero, .L8002C480
/* 2D038 8002C438 94790000 */   lhu       $t9, ($v1)
.L8002C43C:
/* 2D03C 8002C43C 94620000 */  lhu        $v0, ($v1)
/* 2D040 8002C440 3C078009 */  lui        $a3, %hi(D_8008FD28)
/* 2D044 8002C444 24E7FD28 */  addiu      $a3, $a3, %lo(D_8008FD28)
/* 2D048 8002C448 304D0008 */  andi       $t5, $v0, 8
/* 2D04C 8002C44C 15A0000E */  bnez       $t5, .L8002C488
/* 2D050 8002C450 34580008 */   ori       $t8, $v0, 8
/* 2D054 8002C454 90EE0000 */  lbu        $t6, ($a3)
/* 2D058 8002C458 A4780000 */  sh         $t8, ($v1)
/* 2D05C 8002C45C 00002025 */  or         $a0, $zero, $zero
/* 2D060 8002C460 39CF0001 */  xori       $t7, $t6, 1
/* 2D064 8002C464 A0EF0000 */  sb         $t7, ($a3)
/* 2D068 8002C468 00002825 */  or         $a1, $zero, $zero
/* 2D06C 8002C46C 0C009A35 */  jal        func_800268D4
/* 2D070 8002C470 240600FF */   addiu     $a2, $zero, 0xff
/* 2D074 8002C474 10000004 */  b          .L8002C488
/* 2D078 8002C478 00000000 */   nop
/* 2D07C 8002C47C 94790000 */  lhu        $t9, ($v1)
.L8002C480:
/* 2D080 8002C480 3329FFF7 */  andi       $t1, $t9, 0xfff7
/* 2D084 8002C484 A4690000 */  sh         $t1, ($v1)
.L8002C488:
/* 2D088 8002C488 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 2D08C 8002C48C 00000000 */   nop
/* 2D090 8002C490 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2D094 8002C494 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2D098 8002C498 946A0000 */  lhu        $t2, ($v1)
/* 2D09C 8002C49C 24040004 */  addiu      $a0, $zero, 4
/* 2D0A0 8002C4A0 3C188009 */  lui        $t8, 0x8009
/* 2D0A4 8002C4A4 314B0010 */  andi       $t3, $t2, 0x10
/* 2D0A8 8002C4A8 11600011 */  beqz       $t3, .L8002C4F0
/* 2D0AC 8002C4AC 3C098007 */   lui       $t1, 0x8007
/* 2D0B0 8002C4B0 3C0C8009 */  lui        $t4, %hi(D_8008FD28)
/* 2D0B4 8002C4B4 918CFD28 */  lbu        $t4, %lo(D_8008FD28)($t4)
/* 2D0B8 8002C4B8 3C0E8007 */  lui        $t6, %hi(D_8006AAA4)
/* 2D0BC 8002C4BC 25CEAAA4 */  addiu      $t6, $t6, %lo(D_8006AAA4)
/* 2D0C0 8002C4C0 000C6880 */  sll        $t5, $t4, 2
/* 2D0C4 8002C4C4 01AE1021 */  addu       $v0, $t5, $t6
/* 2D0C8 8002C4C8 240F000C */  addiu      $t7, $zero, 0xc
/* 2D0CC 8002C4CC AFAF0010 */  sw         $t7, 0x10($sp)
/* 2D0D0 8002C4D0 84450008 */  lh         $a1, 8($v0)
/* 2D0D4 8002C4D4 8446000A */  lh         $a2, 0xa($v0)
/* 2D0D8 8002C4D8 24040004 */  addiu      $a0, $zero, 4
/* 2D0DC 8002C4DC 0C00A6D6 */  jal        drawMenues
/* 2D0E0 8002C4E0 2407000C */   addiu     $a3, $zero, 0xc
/* 2D0E4 8002C4E4 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2D0E8 8002C4E8 1000000D */  b          .L8002C520
/* 2D0EC 8002C4EC 2463FD20 */   addiu     $v1, $v1, %lo(flags_DAT_8008fd20)
.L8002C4F0:
/* 2D0F0 8002C4F0 9318FD28 */  lbu        $t8, -0x2d8($t8)
/* 2D0F4 8002C4F4 2529AAA4 */  addiu      $t1, $t1, -0x555c
/* 2D0F8 8002C4F8 240A000C */  addiu      $t2, $zero, 0xc
/* 2D0FC 8002C4FC 0018C880 */  sll        $t9, $t8, 2
/* 2D100 8002C500 03291021 */  addu       $v0, $t9, $t1
/* 2D104 8002C504 84450000 */  lh         $a1, ($v0)
/* 2D108 8002C508 84460002 */  lh         $a2, 2($v0)
/* 2D10C 8002C50C AFAA0010 */  sw         $t2, 0x10($sp)
/* 2D110 8002C510 0C00A6D6 */  jal        drawMenues
/* 2D114 8002C514 2407000C */   addiu     $a3, $zero, 0xc
/* 2D118 8002C518 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2D11C 8002C51C 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
.L8002C520:
/* 2D120 8002C520 3C048009 */  lui        $a0, %hi(ButtonPressedFrame)
/* 2D124 8002C524 94842876 */  lhu        $a0, %lo(ButtonPressedFrame)($a0)
/* 2D128 8002C528 3C0C8009 */  lui        $t4, %hi(D_8008FD28)
/* 2D12C 8002C52C 308B8000 */  andi       $t3, $a0, 0x8000
/* 2D130 8002C530 5160009F */  beql       $t3, $zero, .L8002C7B0
/* 2D134 8002C534 308B4000 */   andi      $t3, $a0, 0x4000
/* 2D138 8002C538 918CFD28 */  lbu        $t4, %lo(D_8008FD28)($t4)
/* 2D13C 8002C53C 240600FF */  addiu      $a2, $zero, 0xff
/* 2D140 8002C540 00002025 */  or         $a0, $zero, $zero
/* 2D144 8002C544 15800056 */  bnez       $t4, .L8002C6A0
/* 2D148 8002C548 24050002 */   addiu     $a1, $zero, 2
/* 2D14C 8002C54C 00002025 */  or         $a0, $zero, $zero
/* 2D150 8002C550 0C009A35 */  jal        func_800268D4
/* 2D154 8002C554 24050001 */   addiu     $a1, $zero, 1
/* 2D158 8002C558 3C0D8009 */  lui        $t5, %hi(pfsErrMsg)
/* 2D15C 8002C55C 91ADFD22 */  lbu        $t5, %lo(pfsErrMsg)($t5)
/* 2D160 8002C560 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2D164 8002C564 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2D168 8002C568 25AEFFFC */  addiu      $t6, $t5, -4
/* 2D16C 8002C56C 2DC10014 */  sltiu      $at, $t6, 0x14
/* 2D170 8002C570 1020008A */  beqz       $at, .L8002C79C
/* 2D174 8002C574 000E7080 */   sll       $t6, $t6, 2
/* 2D178 8002C578 3C018007 */  lui        $at, %hi(D_80071864)
/* 2D17C 8002C57C 002E0821 */  addu       $at, $at, $t6
/* 2D180 8002C580 8C2E1864 */  lw         $t6, %lo(D_80071864)($at)
/* 2D184 8002C584 01C00008 */  jr         $t6
/* 2D188 8002C588 00000000 */   nop
/* 2D18C 8002C58C 240F0012 */  addiu      $t7, $zero, 0x12
/* 2D190 8002C590 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2D194 8002C594 A02FFD22 */  sb         $t7, %lo(pfsErrMsg)($at)
/* 2D198 8002C598 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2D19C 8002C59C 2418000A */  addiu      $t8, $zero, 0xa
/* 2D1A0 8002C5A0 1000007E */  b          .L8002C79C
/* 2D1A4 8002C5A4 A038FD29 */   sb        $t8, %lo(D_8008FD29)($at)
/* 2D1A8 8002C5A8 94790000 */  lhu        $t9, ($v1)
/* 2D1AC 8002C5AC 240E0003 */  addiu      $t6, $zero, 3
/* 2D1B0 8002C5B0 3C018009 */  lui        $at, 0x8009
/* 2D1B4 8002C5B4 332AFFF8 */  andi       $t2, $t9, 0xfff8
/* 2D1B8 8002C5B8 354C0004 */  ori        $t4, $t2, 4
/* 2D1BC 8002C5BC A46A0000 */  sh         $t2, ($v1)
/* 2D1C0 8002C5C0 A46C0000 */  sh         $t4, ($v1)
/* 2D1C4 8002C5C4 358D2000 */  ori        $t5, $t4, 0x2000
/* 2D1C8 8002C5C8 A46D0000 */  sh         $t5, ($v1)
/* 2D1CC 8002C5CC 10000073 */  b          .L8002C79C
/* 2D1D0 8002C5D0 A02EFD23 */   sb        $t6, -0x2dd($at)
/* 2D1D4 8002C5D4 946F0000 */  lhu        $t7, ($v1)
/* 2D1D8 8002C5D8 24190002 */  addiu      $t9, $zero, 2
/* 2D1DC 8002C5DC 3C018009 */  lui        $at, %hi(D_8008FD23)
/* 2D1E0 8002C5E0 35F82000 */  ori        $t8, $t7, 0x2000
/* 2D1E4 8002C5E4 A4780000 */  sh         $t8, ($v1)
/* 2D1E8 8002C5E8 A039FD23 */  sb         $t9, %lo(D_8008FD23)($at)
/* 2D1EC 8002C5EC 94690000 */  lhu        $t1, ($v1)
/* 2D1F0 8002C5F0 312BFFF8 */  andi       $t3, $t1, 0xfff8
/* 2D1F4 8002C5F4 A46B0000 */  sh         $t3, ($v1)
/* 2D1F8 8002C5F8 356C0003 */  ori        $t4, $t3, 3
/* 2D1FC 8002C5FC 10000067 */  b          .L8002C79C
/* 2D200 8002C600 A46C0000 */   sh        $t4, ($v1)
/* 2D204 8002C604 946D0000 */  lhu        $t5, ($v1)
/* 2D208 8002C608 240F0004 */  addiu      $t7, $zero, 4
/* 2D20C 8002C60C 3C018009 */  lui        $at, %hi(D_8008FD23)
/* 2D210 8002C610 35AE2000 */  ori        $t6, $t5, 0x2000
/* 2D214 8002C614 A46E0000 */  sh         $t6, ($v1)
/* 2D218 8002C618 A02FFD23 */  sb         $t7, %lo(D_8008FD23)($at)
/* 2D21C 8002C61C 94780000 */  lhu        $t8, ($v1)
/* 2D220 8002C620 3309FFF8 */  andi       $t1, $t8, 0xfff8
/* 2D224 8002C624 A4690000 */  sh         $t1, ($v1)
/* 2D228 8002C628 352A0001 */  ori        $t2, $t1, 1
/* 2D22C 8002C62C 1000005B */  b          .L8002C79C
/* 2D230 8002C630 A46A0000 */   sh        $t2, ($v1)
/* 2D234 8002C634 0C00B746 */  jal        controllerFunc1
/* 2D238 8002C638 00000000 */   nop
/* 2D23C 8002C63C 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2D240 8002C640 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2D244 8002C644 946B0000 */  lhu        $t3, ($v1)
/* 2D248 8002C648 316DFFF8 */  andi       $t5, $t3, 0xfff8
/* 2D24C 8002C64C A46D0000 */  sh         $t5, ($v1)
/* 2D250 8002C650 10000052 */  b          .L8002C79C
/* 2D254 8002C654 A46D0000 */   sh        $t5, ($v1)
/* 2D258 8002C658 946E0000 */  lhu        $t6, ($v1)
/* 2D25C 8002C65C 31D8DFFF */  andi       $t8, $t6, 0xdfff
/* 2D260 8002C660 3309FFF8 */  andi       $t1, $t8, 0xfff8
/* 2D264 8002C664 A4780000 */  sh         $t8, ($v1)
/* 2D268 8002C668 312BBFFF */  andi       $t3, $t1, 0xbfff
/* 2D26C 8002C66C A4690000 */  sh         $t1, ($v1)
/* 2D270 8002C670 A46B0000 */  sh         $t3, ($v1)
/* 2D274 8002C674 356C1000 */  ori        $t4, $t3, 0x1000
/* 2D278 8002C678 10000048 */  b          .L8002C79C
/* 2D27C 8002C67C A46C0000 */   sh        $t4, ($v1)
/* 2D280 8002C680 946D0000 */  lhu        $t5, ($v1)
/* 2D284 8002C684 35AE8000 */  ori        $t6, $t5, 0x8000
/* 2D288 8002C688 10000044 */  b          .L8002C79C
/* 2D28C 8002C68C A46E0000 */   sh        $t6, ($v1)
/* 2D290 8002C690 946F0000 */  lhu        $t7, ($v1)
/* 2D294 8002C694 35F88000 */  ori        $t8, $t7, 0x8000
/* 2D298 8002C698 10000040 */  b          .L8002C79C
/* 2D29C 8002C69C A4780000 */   sh        $t8, ($v1)
.L8002C6A0:
/* 2D2A0 8002C6A0 0C009A35 */  jal        func_800268D4
/* 2D2A4 8002C6A4 240600FF */   addiu     $a2, $zero, 0xff
/* 2D2A8 8002C6A8 3C198009 */  lui        $t9, %hi(pfsErrMsg)
/* 2D2AC 8002C6AC 9339FD22 */  lbu        $t9, %lo(pfsErrMsg)($t9)
/* 2D2B0 8002C6B0 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2D2B4 8002C6B4 2463FD20 */  addiu      $v1, $v1, %lo(flags_DAT_8008fd20)
/* 2D2B8 8002C6B8 2729FFFC */  addiu      $t1, $t9, -4
/* 2D2BC 8002C6BC 2D210014 */  sltiu      $at, $t1, 0x14
/* 2D2C0 8002C6C0 10200036 */  beqz       $at, .L8002C79C
/* 2D2C4 8002C6C4 00094880 */   sll       $t1, $t1, 2
/* 2D2C8 8002C6C8 3C018007 */  lui        $at, %hi(D_800718B4)
/* 2D2CC 8002C6CC 00290821 */  addu       $at, $at, $t1
/* 2D2D0 8002C6D0 8C2918B4 */  lw         $t1, %lo(D_800718B4)($at)
/* 2D2D4 8002C6D4 01200008 */  jr         $t1
/* 2D2D8 8002C6D8 00000000 */   nop
/* 2D2DC 8002C6DC 240A0006 */  addiu      $t2, $zero, 6
/* 2D2E0 8002C6E0 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2D2E4 8002C6E4 1000002D */  b          .L8002C79C
/* 2D2E8 8002C6E8 A02AFD22 */   sb        $t2, %lo(pfsErrMsg)($at)
/* 2D2EC 8002C6EC 946B0000 */  lhu        $t3, ($v1)
/* 2D2F0 8002C6F0 356C8000 */  ori        $t4, $t3, 0x8000
/* 2D2F4 8002C6F4 10000029 */  b          .L8002C79C
/* 2D2F8 8002C6F8 A46C0000 */   sh        $t4, ($v1)
/* 2D2FC 8002C6FC 946D0000 */  lhu        $t5, ($v1)
/* 2D300 8002C700 31AFDFFF */  andi       $t7, $t5, 0xdfff
/* 2D304 8002C704 31F9FFF8 */  andi       $t9, $t7, 0xfff8
/* 2D308 8002C708 A46F0000 */  sh         $t7, ($v1)
/* 2D30C 8002C70C 332ABFFF */  andi       $t2, $t9, 0xbfff
/* 2D310 8002C710 A4790000 */  sh         $t9, ($v1)
/* 2D314 8002C714 A46A0000 */  sh         $t2, ($v1)
/* 2D318 8002C718 354B1000 */  ori        $t3, $t2, 0x1000
/* 2D31C 8002C71C 1000001F */  b          .L8002C79C
/* 2D320 8002C720 A46B0000 */   sh        $t3, ($v1)
/* 2D324 8002C724 240C000F */  addiu      $t4, $zero, 0xf
/* 2D328 8002C728 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2D32C 8002C72C A02CFD22 */  sb         $t4, %lo(pfsErrMsg)($at)
/* 2D330 8002C730 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2D334 8002C734 240D000A */  addiu      $t5, $zero, 0xa
/* 2D338 8002C738 10000018 */  b          .L8002C79C
/* 2D33C 8002C73C A02DFD29 */   sb        $t5, %lo(D_8008FD29)($at)
/* 2D340 8002C740 946E0000 */  lhu        $t6, ($v1)
/* 2D344 8002C744 31CFFFF8 */  andi       $t7, $t6, 0xfff8
/* 2D348 8002C748 31E2FFFF */  andi       $v0, $t7, 0xffff
/* 2D34C 8002C74C 30581000 */  andi       $t8, $v0, 0x1000
/* 2D350 8002C750 13000006 */  beqz       $t8, .L8002C76C
/* 2D354 8002C754 A46F0000 */   sh        $t7, ($v1)
/* 2D358 8002C758 3049BFFF */  andi       $t1, $v0, 0xbfff
/* 2D35C 8002C75C A4690000 */  sh         $t1, ($v1)
/* 2D360 8002C760 352A2000 */  ori        $t2, $t1, 0x2000
/* 2D364 8002C764 1000000D */  b          .L8002C79C
/* 2D368 8002C768 A46A0000 */   sh        $t2, ($v1)
.L8002C76C:
/* 2D36C 8002C76C 1000000B */  b          .L8002C79C
/* 2D370 8002C770 A4620000 */   sh        $v0, ($v1)
/* 2D374 8002C774 946B0000 */  lhu        $t3, ($v1)
/* 2D378 8002C778 24190007 */  addiu      $t9, $zero, 7
/* 2D37C 8002C77C 3C018009 */  lui        $at, 0x8009
/* 2D380 8002C780 316DDFFF */  andi       $t5, $t3, 0xdfff
/* 2D384 8002C784 31AFFFF8 */  andi       $t7, $t5, 0xfff8
/* 2D388 8002C788 A46D0000 */  sh         $t5, ($v1)
/* 2D38C 8002C78C A46F0000 */  sh         $t7, ($v1)
/* 2D390 8002C790 35F81005 */  ori        $t8, $t7, 0x1005
/* 2D394 8002C794 A4780000 */  sh         $t8, ($v1)
/* 2D398 8002C798 A039FD22 */  sb         $t9, -0x2de($at)
.L8002C79C:
/* 2D39C 8002C79C 94690000 */  lhu        $t1, ($v1)
/* 2D3A0 8002C7A0 312AF7FF */  andi       $t2, $t1, 0xf7ff
/* 2D3A4 8002C7A4 10000018 */  b          .L8002C808
/* 2D3A8 8002C7A8 A46A0000 */   sh        $t2, ($v1)
/* 2D3AC 8002C7AC 308B4000 */  andi       $t3, $a0, 0x4000
.L8002C7B0:
/* 2D3B0 8002C7B0 11600015 */  beqz       $t3, .L8002C808
/* 2D3B4 8002C7B4 3C0C8009 */   lui       $t4, %hi(pfsErrMsg)
/* 2D3B8 8002C7B8 918CFD22 */  lbu        $t4, %lo(pfsErrMsg)($t4)
/* 2D3BC 8002C7BC 258DFFFA */  addiu      $t5, $t4, -6
/* 2D3C0 8002C7C0 2DA10012 */  sltiu      $at, $t5, 0x12
/* 2D3C4 8002C7C4 10200006 */  beqz       $at, .L8002C7E0
/* 2D3C8 8002C7C8 000D6880 */   sll       $t5, $t5, 2
/* 2D3CC 8002C7CC 3C018007 */  lui        $at, %hi(D_80071904)
/* 2D3D0 8002C7D0 002D0821 */  addu       $at, $at, $t5
/* 2D3D4 8002C7D4 8C2D1904 */  lw         $t5, %lo(D_80071904)($at)
/* 2D3D8 8002C7D8 01A00008 */  jr         $t5
/* 2D3DC 8002C7DC 00000000 */   nop
.L8002C7E0:
/* 2D3E0 8002C7E0 946E0000 */  lhu        $t6, ($v1)
/* 2D3E4 8002C7E4 24180002 */  addiu      $t8, $zero, 2
/* 2D3E8 8002C7E8 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2D3EC 8002C7EC 31CFF7FF */  andi       $t7, $t6, 0xf7ff
/* 2D3F0 8002C7F0 A46F0000 */  sh         $t7, ($v1)
/* 2D3F4 8002C7F4 A038FD29 */  sb         $t8, %lo(D_8008FD29)($at)
/* 2D3F8 8002C7F8 94790000 */  lhu        $t9, ($v1)
/* 2D3FC 8002C7FC 332AFFF8 */  andi       $t2, $t9, 0xfff8
/* 2D400 8002C800 A46A0000 */  sh         $t2, ($v1)
/* 2D404 8002C804 A46A0000 */  sh         $t2, ($v1)
.L8002C808:
/* 2D408 8002C808 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2D40C 8002C80C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 2D410 8002C810 03E00008 */  jr         $ra
/* 2D414 8002C814 00000000 */   nop

glabel func_8002C818
/* 2D418 8002C818 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2D41C 8002C81C AFBF0024 */  sw         $ra, 0x24($sp)
/* 2D420 8002C820 AFB10020 */  sw         $s1, 0x20($sp)
/* 2D424 8002C824 AFB0001C */  sw         $s0, 0x1c($sp)
/* 2D428 8002C828 AFA40058 */  sw         $a0, 0x58($sp)
/* 2D42C 8002C82C 3C0F8006 */  lui        $t7, %hi(D_8005F9A0)
/* 2D430 8002C830 AFA00050 */  sw         $zero, 0x50($sp)
/* 2D434 8002C834 25EFF9A0 */  addiu      $t7, $t7, %lo(D_8005F9A0)
/* 2D438 8002C838 8DE10000 */  lw         $at, ($t7)
/* 2D43C 8002C83C 27AE0034 */  addiu      $t6, $sp, 0x34
/* 2D440 8002C840 8DE80004 */  lw         $t0, 4($t7)
/* 2D444 8002C844 ADC10000 */  sw         $at, ($t6)
/* 2D448 8002C848 8DE10008 */  lw         $at, 8($t7)
/* 2D44C 8002C84C 3C038009 */  lui        $v1, %hi(flags_DAT_8008fd20)
/* 2D450 8002C850 ADC80004 */  sw         $t0, 4($t6)
/* 2D454 8002C854 ADC10008 */  sw         $at, 8($t6)
/* 2D458 8002C858 9463FD20 */  lhu        $v1, %lo(flags_DAT_8008fd20)($v1)
/* 2D45C 8002C85C 3C028009 */  lui        $v0, 0x8009
/* 2D460 8002C860 24040082 */  addiu      $a0, $zero, 0x82
/* 2D464 8002C864 30690020 */  andi       $t1, $v1, 0x20
/* 2D468 8002C868 1120000C */  beqz       $t1, .L8002C89C
/* 2D46C 8002C86C 24050033 */   addiu     $a1, $zero, 0x33
/* 2D470 8002C870 3C028009 */  lui        $v0, %hi(UNK_SelectedSaveSlot)
/* 2D474 8002C874 8042FD2A */  lb         $v0, %lo(UNK_SelectedSaveSlot)($v0)
/* 2D478 8002C878 306AFFDF */  andi       $t2, $v1, 0xffdf
/* 2D47C 8002C87C 3C018009 */  lui        $at, %hi(flags_DAT_8008fd20)
/* 2D480 8002C880 14400004 */  bnez       $v0, .L8002C894
/* 2D484 8002C884 244BFFFF */   addiu     $t3, $v0, -1
/* 2D488 8002C888 AFA20054 */  sw         $v0, 0x54($sp)
/* 2D48C 8002C88C 10000005 */  b          .L8002C8A4
/* 2D490 8002C890 A42AFD20 */   sh        $t2, %lo(flags_DAT_8008fd20)($at)
.L8002C894:
/* 2D494 8002C894 10000003 */  b          .L8002C8A4
/* 2D498 8002C898 AFAB0054 */   sw        $t3, 0x54($sp)
.L8002C89C:
/* 2D49C 8002C89C 8042FD2A */  lb         $v0, -0x2d6($v0)
/* 2D4A0 8002C8A0 AFA20054 */  sw         $v0, 0x54($sp)
.L8002C8A4:
/* 2D4A4 8002C8A4 8FAC0054 */  lw         $t4, 0x54($sp)
/* 2D4A8 8002C8A8 3C198009 */  lui        $t9, %hi(D_8008FD30)
/* 2D4AC 8002C8AC 2739FD30 */  addiu      $t9, $t9, %lo(D_8008FD30)
/* 2D4B0 8002C8B0 000C6840 */  sll        $t5, $t4, 1
/* 2D4B4 8002C8B4 01B9C021 */  addu       $t8, $t5, $t9
/* 2D4B8 8002C8B8 AFB8002C */  sw         $t8, 0x2c($sp)
/* 2D4BC 8002C8BC 830E0000 */  lb         $t6, ($t8)
/* 2D4C0 8002C8C0 2401FFFE */  addiu      $at, $zero, -2
/* 2D4C4 8002C8C4 240D0001 */  addiu      $t5, $zero, 1
/* 2D4C8 8002C8C8 11C100FA */  beq        $t6, $at, .L8002CCB4
/* 2D4CC 8002C8CC 27A60034 */   addiu     $a2, $sp, 0x34
/* 2D4D0 8002C8D0 830F0001 */  lb         $t7, 1($t8)
/* 2D4D4 8002C8D4 2401FFFF */  addiu      $at, $zero, -1
/* 2D4D8 8002C8D8 11E100F4 */  beq        $t7, $at, .L8002CCAC
/* 2D4DC 8002C8DC 00000000 */   nop
/* 2D4E0 8002C8E0 15820020 */  bne        $t4, $v0, .L8002C964
/* 2D4E4 8002C8E4 24040002 */   addiu     $a0, $zero, 2
/* 2D4E8 8002C8E8 2408000A */  addiu      $t0, $zero, 0xa
/* 2D4EC 8002C8EC AFA80010 */  sw         $t0, 0x10($sp)
/* 2D4F0 8002C8F0 24040002 */  addiu      $a0, $zero, 2
/* 2D4F4 8002C8F4 2405006F */  addiu      $a1, $zero, 0x6f
/* 2D4F8 8002C8F8 24060036 */  addiu      $a2, $zero, 0x36
/* 2D4FC 8002C8FC 0C00AAD9 */  jal        drawSaveNumber_
/* 2D500 8002C900 01803825 */   or        $a3, $t4, $zero
/* 2D504 8002C904 2409000D */  addiu      $t1, $zero, 0xd
/* 2D508 8002C908 AFA90010 */  sw         $t1, 0x10($sp)
/* 2D50C 8002C90C 24040036 */  addiu      $a0, $zero, 0x36
/* 2D510 8002C910 24050053 */  addiu      $a1, $zero, 0x53
/* 2D514 8002C914 24060035 */  addiu      $a2, $zero, 0x35
/* 2D518 8002C918 0C00A6D6 */  jal        drawMenues
/* 2D51C 8002C91C 2407001C */   addiu     $a3, $zero, 0x1c
/* 2D520 8002C920 240A000A */  addiu      $t2, $zero, 0xa
/* 2D524 8002C924 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2D528 8002C928 24040019 */  addiu      $a0, $zero, 0x19
/* 2D52C 8002C92C 24050092 */  addiu      $a1, $zero, 0x92
/* 2D530 8002C930 24060036 */  addiu      $a2, $zero, 0x36
/* 2D534 8002C934 0C00A6D6 */  jal        drawMenues
/* 2D538 8002C938 24070008 */   addiu     $a3, $zero, 8
/* 2D53C 8002C93C 240B000E */  addiu      $t3, $zero, 0xe
/* 2D540 8002C940 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2D544 8002C944 24040043 */  addiu      $a0, $zero, 0x43
/* 2D548 8002C948 240500D9 */  addiu      $a1, $zero, 0xd9
/* 2D54C 8002C94C 24060035 */  addiu      $a2, $zero, 0x35
/* 2D550 8002C950 0C00A6D6 */  jal        drawMenues
/* 2D554 8002C954 2407001C */   addiu     $a3, $zero, 0x1c
/* 2D558 8002C958 240D000A */  addiu      $t5, $zero, 0xa
/* 2D55C 8002C95C 1000001E */  b          .L8002C9D8
/* 2D560 8002C960 AFAD0040 */   sw        $t5, 0x40($sp)
.L8002C964:
/* 2D564 8002C964 24190048 */  addiu      $t9, $zero, 0x48
/* 2D568 8002C968 AFB90010 */  sw         $t9, 0x10($sp)
/* 2D56C 8002C96C 2405006F */  addiu      $a1, $zero, 0x6f
/* 2D570 8002C970 24060036 */  addiu      $a2, $zero, 0x36
/* 2D574 8002C974 0C00AAD9 */  jal        drawSaveNumber_
/* 2D578 8002C978 8FA70054 */   lw        $a3, 0x54($sp)
/* 2D57C 8002C97C 240E000D */  addiu      $t6, $zero, 0xd
/* 2D580 8002C980 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2D584 8002C984 24040045 */  addiu      $a0, $zero, 0x45
/* 2D588 8002C988 24050053 */  addiu      $a1, $zero, 0x53
/* 2D58C 8002C98C 24060035 */  addiu      $a2, $zero, 0x35
/* 2D590 8002C990 0C00A6D6 */  jal        drawMenues
/* 2D594 8002C994 2407001C */   addiu     $a3, $zero, 0x1c
/* 2D598 8002C998 2418000A */  addiu      $t8, $zero, 0xa
/* 2D59C 8002C99C AFB80010 */  sw         $t8, 0x10($sp)
/* 2D5A0 8002C9A0 24040052 */  addiu      $a0, $zero, 0x52
/* 2D5A4 8002C9A4 24050092 */  addiu      $a1, $zero, 0x92
/* 2D5A8 8002C9A8 24060036 */  addiu      $a2, $zero, 0x36
/* 2D5AC 8002C9AC 0C00A6D6 */  jal        drawMenues
/* 2D5B0 8002C9B0 24070008 */   addiu     $a3, $zero, 8
/* 2D5B4 8002C9B4 240F000E */  addiu      $t7, $zero, 0xe
/* 2D5B8 8002C9B8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2D5BC 8002C9BC 24040044 */  addiu      $a0, $zero, 0x44
/* 2D5C0 8002C9C0 240500D9 */  addiu      $a1, $zero, 0xd9
/* 2D5C4 8002C9C4 24060035 */  addiu      $a2, $zero, 0x35
/* 2D5C8 8002C9C8 0C00A6D6 */  jal        drawMenues
/* 2D5CC 8002C9CC 2407001C */   addiu     $a3, $zero, 0x1c
/* 2D5D0 8002C9D0 240C0048 */  addiu      $t4, $zero, 0x48
/* 2D5D4 8002C9D4 AFAC0040 */  sw         $t4, 0x40($sp)
.L8002C9D8:
/* 2D5D8 8002C9D8 8FA80054 */  lw         $t0, 0x54($sp)
/* 2D5DC 8002C9DC 3C0A8009 */  lui        $t2, %hi(D_8008FD58)
/* 2D5E0 8002C9E0 254AFD58 */  addiu      $t2, $t2, %lo(D_8008FD58)
/* 2D5E4 8002C9E4 00084880 */  sll        $t1, $t0, 2
/* 2D5E8 8002C9E8 01284823 */  subu       $t1, $t1, $t0
/* 2D5EC 8002C9EC 000948C0 */  sll        $t1, $t1, 3
/* 2D5F0 8002C9F0 01284821 */  addu       $t1, $t1, $t0
/* 2D5F4 8002C9F4 00094880 */  sll        $t1, $t1, 2
/* 2D5F8 8002C9F8 012A1021 */  addu       $v0, $t1, $t2
/* 2D5FC 8002C9FC 240B000A */  addiu      $t3, $zero, 0xa
/* 2D600 8002CA00 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2D604 8002CA04 90470024 */  lbu        $a3, 0x24($v0)
/* 2D608 8002CA08 AFA20028 */  sw         $v0, 0x28($sp)
/* 2D60C 8002CA0C 24040002 */  addiu      $a0, $zero, 2
/* 2D610 8002CA10 24050065 */  addiu      $a1, $zero, 0x65
/* 2D614 8002CA14 0C00AAD9 */  jal        drawSaveNumber_
/* 2D618 8002CA18 2406006C */   addiu     $a2, $zero, 0x6c
/* 2D61C 8002CA1C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 2D620 8002CA20 2419000A */  addiu      $t9, $zero, 0xa
/* 2D624 8002CA24 24040002 */  addiu      $a0, $zero, 2
/* 2D628 8002CA28 91A70025 */  lbu        $a3, 0x25($t5)
/* 2D62C 8002CA2C AFB90010 */  sw         $t9, 0x10($sp)
/* 2D630 8002CA30 2405008A */  addiu      $a1, $zero, 0x8a
/* 2D634 8002CA34 0C00AAD9 */  jal        drawSaveNumber_
/* 2D638 8002CA38 2406006C */   addiu     $a2, $zero, 0x6c
/* 2D63C 8002CA3C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 2D640 8002CA40 2418000A */  addiu      $t8, $zero, 0xa
/* 2D644 8002CA44 24040002 */  addiu      $a0, $zero, 2
/* 2D648 8002CA48 91C70026 */  lbu        $a3, 0x26($t6)
/* 2D64C 8002CA4C AFB80010 */  sw         $t8, 0x10($sp)
/* 2D650 8002CA50 240500AF */  addiu      $a1, $zero, 0xaf
/* 2D654 8002CA54 0C00AAD9 */  jal        drawSaveNumber_
/* 2D658 8002CA58 2406006C */   addiu     $a2, $zero, 0x6c
/* 2D65C 8002CA5C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 2D660 8002CA60 240C000A */  addiu      $t4, $zero, 0xa
/* 2D664 8002CA64 24040002 */  addiu      $a0, $zero, 2
/* 2D668 8002CA68 91E70027 */  lbu        $a3, 0x27($t7)
/* 2D66C 8002CA6C AFAC0010 */  sw         $t4, 0x10($sp)
/* 2D670 8002CA70 240500D4 */  addiu      $a1, $zero, 0xd4
/* 2D674 8002CA74 0C00AAD9 */  jal        drawSaveNumber_
/* 2D678 8002CA78 2406006C */   addiu     $a2, $zero, 0x6c
/* 2D67C 8002CA7C 8FA30028 */  lw         $v1, 0x28($sp)
/* 2D680 8002CA80 8C68003C */  lw         $t0, 0x3c($v1)
/* 2D684 8002CA84 2509FFF1 */  addiu      $t1, $t0, -0xf
/* 2D688 8002CA88 2D210010 */  sltiu      $at, $t1, 0x10
/* 2D68C 8002CA8C 10200050 */  beqz       $at, .L8002CBD0
/* 2D690 8002CA90 00094880 */   sll       $t1, $t1, 2
/* 2D694 8002CA94 3C018007 */  lui        $at, %hi(D_8007194C)
/* 2D698 8002CA98 00290821 */  addu       $at, $at, $t1
/* 2D69C 8002CA9C 8C29194C */  lw         $t1, %lo(D_8007194C)($at)
/* 2D6A0 8002CAA0 01200008 */  jr         $t1
/* 2D6A4 8002CAA4 00000000 */   nop
/* 2D6A8 8002CAA8 8C6A0040 */  lw         $t2, 0x40($v1)
/* 2D6AC 8002CAAC 24010005 */  addiu      $at, $zero, 5
/* 2D6B0 8002CAB0 24110010 */  addiu      $s1, $zero, 0x10
/* 2D6B4 8002CAB4 15410003 */  bne        $t2, $at, .L8002CAC4
/* 2D6B8 8002CAB8 00000000 */   nop
/* 2D6BC 8002CABC 10000001 */  b          .L8002CAC4
/* 2D6C0 8002CAC0 00008825 */   or        $s1, $zero, $zero
.L8002CAC4:
/* 2D6C4 8002CAC4 10000042 */  b          .L8002CBD0
/* 2D6C8 8002CAC8 AFB10048 */   sw        $s1, 0x48($sp)
/* 2D6CC 8002CACC 8C6B0040 */  lw         $t3, 0x40($v1)
/* 2D6D0 8002CAD0 24010007 */  addiu      $at, $zero, 7
/* 2D6D4 8002CAD4 24110002 */  addiu      $s1, $zero, 2
/* 2D6D8 8002CAD8 15610003 */  bne        $t3, $at, .L8002CAE8
/* 2D6DC 8002CADC 00000000 */   nop
/* 2D6E0 8002CAE0 10000001 */  b          .L8002CAE8
/* 2D6E4 8002CAE4 24110001 */   addiu     $s1, $zero, 1
.L8002CAE8:
/* 2D6E8 8002CAE8 10000039 */  b          .L8002CBD0
/* 2D6EC 8002CAEC AFB10048 */   sw        $s1, 0x48($sp)
/* 2D6F0 8002CAF0 24110004 */  addiu      $s1, $zero, 4
/* 2D6F4 8002CAF4 10000036 */  b          .L8002CBD0
/* 2D6F8 8002CAF8 AFB10048 */   sw        $s1, 0x48($sp)
/* 2D6FC 8002CAFC 8C6D0040 */  lw         $t5, 0x40($v1)
/* 2D700 8002CB00 24010006 */  addiu      $at, $zero, 6
/* 2D704 8002CB04 24110005 */  addiu      $s1, $zero, 5
/* 2D708 8002CB08 15A10003 */  bne        $t5, $at, .L8002CB18
/* 2D70C 8002CB0C 00000000 */   nop
/* 2D710 8002CB10 10000001 */  b          .L8002CB18
/* 2D714 8002CB14 24110003 */   addiu     $s1, $zero, 3
.L8002CB18:
/* 2D718 8002CB18 1000002D */  b          .L8002CBD0
/* 2D71C 8002CB1C AFB10048 */   sw        $s1, 0x48($sp)
/* 2D720 8002CB20 24110006 */  addiu      $s1, $zero, 6
/* 2D724 8002CB24 1000002A */  b          .L8002CBD0
/* 2D728 8002CB28 AFB10048 */   sw        $s1, 0x48($sp)
/* 2D72C 8002CB2C 8C790040 */  lw         $t9, 0x40($v1)
/* 2D730 8002CB30 24010016 */  addiu      $at, $zero, 0x16
/* 2D734 8002CB34 24110008 */  addiu      $s1, $zero, 8
/* 2D738 8002CB38 17210003 */  bne        $t9, $at, .L8002CB48
/* 2D73C 8002CB3C 00000000 */   nop
/* 2D740 8002CB40 10000001 */  b          .L8002CB48
/* 2D744 8002CB44 24110007 */   addiu     $s1, $zero, 7
.L8002CB48:
/* 2D748 8002CB48 10000021 */  b          .L8002CBD0
/* 2D74C 8002CB4C AFB10048 */   sw        $s1, 0x48($sp)
/* 2D750 8002CB50 8C620040 */  lw         $v0, 0x40($v1)
/* 2D754 8002CB54 24010008 */  addiu      $at, $zero, 8
/* 2D758 8002CB58 24110009 */  addiu      $s1, $zero, 9
/* 2D75C 8002CB5C 1040000B */  beqz       $v0, .L8002CB8C
/* 2D760 8002CB60 00000000 */   nop
/* 2D764 8002CB64 1041000B */  beq        $v0, $at, .L8002CB94
/* 2D768 8002CB68 2411000C */   addiu     $s1, $zero, 0xc
/* 2D76C 8002CB6C 24010013 */  addiu      $at, $zero, 0x13
/* 2D770 8002CB70 1041000A */  beq        $v0, $at, .L8002CB9C
/* 2D774 8002CB74 2411000A */   addiu     $s1, $zero, 0xa
/* 2D778 8002CB78 24010016 */  addiu      $at, $zero, 0x16
/* 2D77C 8002CB7C 10410009 */  beq        $v0, $at, .L8002CBA4
/* 2D780 8002CB80 2411000B */   addiu     $s1, $zero, 0xb
/* 2D784 8002CB84 10000008 */  b          .L8002CBA8
/* 2D788 8002CB88 00000000 */   nop
.L8002CB8C:
/* 2D78C 8002CB8C 10000006 */  b          .L8002CBA8
/* 2D790 8002CB90 AFB10048 */   sw        $s1, 0x48($sp)
.L8002CB94:
/* 2D794 8002CB94 10000004 */  b          .L8002CBA8
/* 2D798 8002CB98 AFB10048 */   sw        $s1, 0x48($sp)
.L8002CB9C:
/* 2D79C 8002CB9C 10000002 */  b          .L8002CBA8
/* 2D7A0 8002CBA0 AFB10048 */   sw        $s1, 0x48($sp)
.L8002CBA4:
/* 2D7A4 8002CBA4 AFB10048 */  sw         $s1, 0x48($sp)
.L8002CBA8:
/* 2D7A8 8002CBA8 1000000A */  b          .L8002CBD4
/* 2D7AC 8002CBAC 8FB10048 */   lw        $s1, 0x48($sp)
/* 2D7B0 8002CBB0 2411000E */  addiu      $s1, $zero, 0xe
/* 2D7B4 8002CBB4 10000006 */  b          .L8002CBD0
/* 2D7B8 8002CBB8 AFB10048 */   sw        $s1, 0x48($sp)
/* 2D7BC 8002CBBC 2411000D */  addiu      $s1, $zero, 0xd
/* 2D7C0 8002CBC0 10000003 */  b          .L8002CBD0
/* 2D7C4 8002CBC4 AFB10048 */   sw        $s1, 0x48($sp)
/* 2D7C8 8002CBC8 2411000F */  addiu      $s1, $zero, 0xf
/* 2D7CC 8002CBCC AFB10048 */  sw         $s1, 0x48($sp)
.L8002CBD0:
/* 2D7D0 8002CBD0 8FB10048 */  lw         $s1, 0x48($sp)
.L8002CBD4:
/* 2D7D4 8002CBD4 3C068007 */  lui        $a2, %hi(tbl_saveLocationNames)
/* 2D7D8 8002CBD8 24040051 */  addiu      $a0, $zero, 0x51
/* 2D7DC 8002CBDC 00117080 */  sll        $t6, $s1, 2
/* 2D7E0 8002CBE0 00CE3021 */  addu       $a2, $a2, $t6
/* 2D7E4 8002CBE4 8CC6AC00 */  lw         $a2, %lo(tbl_saveLocationNames)($a2)
/* 2D7E8 8002CBE8 00008825 */  or         $s1, $zero, $zero
/* 2D7EC 8002CBEC 0C00C3A8 */  jal        printTextToScreen
/* 2D7F0 8002CBF0 24050048 */   addiu     $a1, $zero, 0x48
/* 2D7F4 8002CBF4 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 2D7F8 8002CBF8 00000000 */   nop
/* 2D7FC 8002CBFC 8FB80028 */  lw         $t8, 0x28($sp)
/* 2D800 8002CC00 24040003 */  addiu      $a0, $zero, 3
/* 2D804 8002CC04 2405007E */  addiu      $a1, $zero, 0x7e
/* 2D808 8002CC08 97100038 */  lhu        $s0, 0x38($t8)
/* 2D80C 8002CC0C 24060036 */  addiu      $a2, $zero, 0x36
/* 2D810 8002CC10 8FAF0040 */  lw         $t7, 0x40($sp)
/* 2D814 8002CC14 2A01003C */  slti       $at, $s0, 0x3c
/* 2D818 8002CC18 54200006 */  bnel       $at, $zero, .L8002CC34
/* 2D81C 8002CC1C 02203825 */   or        $a3, $s1, $zero
.L8002CC20:
/* 2D820 8002CC20 2610FFC4 */  addiu      $s0, $s0, -0x3c
/* 2D824 8002CC24 2A01003C */  slti       $at, $s0, 0x3c
/* 2D828 8002CC28 1020FFFD */  beqz       $at, .L8002CC20
/* 2D82C 8002CC2C 26310001 */   addiu     $s1, $s1, 1
/* 2D830 8002CC30 02203825 */  or         $a3, $s1, $zero
.L8002CC34:
/* 2D834 8002CC34 0C00AAD9 */  jal        drawSaveNumber_
/* 2D838 8002CC38 AFAF0010 */   sw        $t7, 0x10($sp)
/* 2D83C 8002CC3C 8FAC0040 */  lw         $t4, 0x40($sp)
/* 2D840 8002CC40 24040002 */  addiu      $a0, $zero, 2
/* 2D844 8002CC44 2405009A */  addiu      $a1, $zero, 0x9a
/* 2D848 8002CC48 24060036 */  addiu      $a2, $zero, 0x36
/* 2D84C 8002CC4C 02003825 */  or         $a3, $s0, $zero
/* 2D850 8002CC50 0C00ABDC */  jal        drawSaveTime_
/* 2D854 8002CC54 AFAC0010 */   sw        $t4, 0x10($sp)
/* 2D858 8002CC58 8FA80028 */  lw         $t0, 0x28($sp)
/* 2D85C 8002CC5C 8FA90040 */  lw         $t1, 0x40($sp)
/* 2D860 8002CC60 24040003 */  addiu      $a0, $zero, 3
/* 2D864 8002CC64 9507003A */  lhu        $a3, 0x3a($t0)
/* 2D868 8002CC68 240500C0 */  addiu      $a1, $zero, 0xc0
/* 2D86C 8002CC6C 24060036 */  addiu      $a2, $zero, 0x36
/* 2D870 8002CC70 0C00AAD9 */  jal        drawSaveNumber_
/* 2D874 8002CC74 AFA90010 */   sw        $t1, 0x10($sp)
/* 2D878 8002CC78 8FAA0028 */  lw         $t2, 0x28($sp)
/* 2D87C 8002CC7C 24040003 */  addiu      $a0, $zero, 3
/* 2D880 8002CC80 24050070 */  addiu      $a1, $zero, 0x70
/* 2D884 8002CC84 24060058 */  addiu      $a2, $zero, 0x58
/* 2D888 8002CC88 0C00ACD9 */  jal        drawSaveHPMPValue_
/* 2D88C 8002CC8C 95470004 */   lhu       $a3, 4($t2)
/* 2D890 8002CC90 8FAB0028 */  lw         $t3, 0x28($sp)
/* 2D894 8002CC94 24040003 */  addiu      $a0, $zero, 3
/* 2D898 8002CC98 240500C0 */  addiu      $a1, $zero, 0xc0
/* 2D89C 8002CC9C 24060058 */  addiu      $a2, $zero, 0x58
/* 2D8A0 8002CCA0 0C00ACD9 */  jal        drawSaveHPMPValue_
/* 2D8A4 8002CCA4 95670008 */   lhu       $a3, 8($t3)
/* 2D8A8 8002CCA8 AFB10048 */  sw         $s1, 0x48($sp)
.L8002CCAC:
/* 2D8AC 8002CCAC 10000004 */  b          .L8002CCC0
/* 2D8B0 8002CCB0 8FB10048 */   lw        $s1, 0x48($sp)
.L8002CCB4:
/* 2D8B4 8002CCB4 0C00C3A8 */  jal        printTextToScreen
/* 2D8B8 8002CCB8 AFAD0050 */   sw        $t5, 0x50($sp)
/* 2D8BC 8002CCBC 8FB10048 */  lw         $s1, 0x48($sp)
.L8002CCC0:
/* 2D8C0 8002CCC0 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 2D8C4 8002CCC4 00000000 */   nop
/* 2D8C8 8002CCC8 8FB90054 */  lw         $t9, 0x54($sp)
/* 2D8CC 8002CCCC 8FB8002C */  lw         $t8, 0x2c($sp)
/* 2D8D0 8002CCD0 2401FFFF */  addiu      $at, $zero, -1
/* 2D8D4 8002CCD4 272E0001 */  addiu      $t6, $t9, 1
/* 2D8D8 8002CCD8 270F0002 */  addiu      $t7, $t8, 2
/* 2D8DC 8002CCDC AFAF002C */  sw         $t7, 0x2c($sp)
/* 2D8E0 8002CCE0 AFAE0054 */  sw         $t6, 0x54($sp)
/* 2D8E4 8002CCE4 81E20000 */  lb         $v0, ($t7)
/* 2D8E8 8002CCE8 8FAC0050 */  lw         $t4, 0x50($sp)
/* 2D8EC 8002CCEC 104100F3 */  beq        $v0, $at, .L8002D0BC
/* 2D8F0 8002CCF0 00000000 */   nop
/* 2D8F4 8002CCF4 158000F1 */  bnez       $t4, .L8002D0BC
/* 2D8F8 8002CCF8 2401FFFE */   addiu     $at, $zero, -2
/* 2D8FC 8002CCFC 104100EC */  beq        $v0, $at, .L8002D0B0
/* 2D900 8002CD00 24040082 */   addiu     $a0, $zero, 0x82
/* 2D904 8002CD04 81E80001 */  lb         $t0, 1($t7)
/* 2D908 8002CD08 2401FFFF */  addiu      $at, $zero, -1
/* 2D90C 8002CD0C 000E4880 */  sll        $t1, $t6, 2
/* 2D910 8002CD10 110100EA */  beq        $t0, $at, .L8002D0BC
/* 2D914 8002CD14 012E4823 */   subu      $t1, $t1, $t6
/* 2D918 8002CD18 000948C0 */  sll        $t1, $t1, 3
/* 2D91C 8002CD1C 3C0D8009 */  lui        $t5, %hi(UNK_SelectedSaveSlot)
/* 2D920 8002CD20 81ADFD2A */  lb         $t5, %lo(UNK_SelectedSaveSlot)($t5)
/* 2D924 8002CD24 012E4821 */  addu       $t1, $t1, $t6
/* 2D928 8002CD28 3C0A8009 */  lui        $t2, %hi(D_8008FD58)
/* 2D92C 8002CD2C 254AFD58 */  addiu      $t2, $t2, %lo(D_8008FD58)
/* 2D930 8002CD30 00094880 */  sll        $t1, $t1, 2
/* 2D934 8002CD34 012A5821 */  addu       $t3, $t1, $t2
/* 2D938 8002CD38 15CD0020 */  bne        $t6, $t5, .L8002CDBC
/* 2D93C 8002CD3C AFAB0028 */   sw        $t3, 0x28($sp)
/* 2D940 8002CD40 2419000A */  addiu      $t9, $zero, 0xa
/* 2D944 8002CD44 AFB90010 */  sw         $t9, 0x10($sp)
/* 2D948 8002CD48 24040002 */  addiu      $a0, $zero, 2
/* 2D94C 8002CD4C 2405006F */  addiu      $a1, $zero, 0x6f
/* 2D950 8002CD50 24060083 */  addiu      $a2, $zero, 0x83
/* 2D954 8002CD54 0C00AAD9 */  jal        drawSaveNumber_
/* 2D958 8002CD58 01C03825 */   or        $a3, $t6, $zero
/* 2D95C 8002CD5C 2418000D */  addiu      $t8, $zero, 0xd
/* 2D960 8002CD60 AFB80010 */  sw         $t8, 0x10($sp)
/* 2D964 8002CD64 24040036 */  addiu      $a0, $zero, 0x36
/* 2D968 8002CD68 24050053 */  addiu      $a1, $zero, 0x53
/* 2D96C 8002CD6C 24060082 */  addiu      $a2, $zero, 0x82
/* 2D970 8002CD70 0C00A6D6 */  jal        drawMenues
/* 2D974 8002CD74 2407001C */   addiu     $a3, $zero, 0x1c
/* 2D978 8002CD78 240C000A */  addiu      $t4, $zero, 0xa
/* 2D97C 8002CD7C AFAC0010 */  sw         $t4, 0x10($sp)
/* 2D980 8002CD80 24040019 */  addiu      $a0, $zero, 0x19
/* 2D984 8002CD84 24050092 */  addiu      $a1, $zero, 0x92
/* 2D988 8002CD88 24060083 */  addiu      $a2, $zero, 0x83
/* 2D98C 8002CD8C 0C00A6D6 */  jal        drawMenues
/* 2D990 8002CD90 24070008 */   addiu     $a3, $zero, 8
/* 2D994 8002CD94 240F000E */  addiu      $t7, $zero, 0xe
/* 2D998 8002CD98 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2D99C 8002CD9C 24040043 */  addiu      $a0, $zero, 0x43
/* 2D9A0 8002CDA0 240500D9 */  addiu      $a1, $zero, 0xd9
/* 2D9A4 8002CDA4 24060082 */  addiu      $a2, $zero, 0x82
/* 2D9A8 8002CDA8 0C00A6D6 */  jal        drawMenues
/* 2D9AC 8002CDAC 2407001C */   addiu     $a3, $zero, 0x1c
/* 2D9B0 8002CDB0 2408000A */  addiu      $t0, $zero, 0xa
/* 2D9B4 8002CDB4 1000001F */  b          .L8002CE34
/* 2D9B8 8002CDB8 AFA80040 */   sw        $t0, 0x40($sp)
.L8002CDBC:
/* 2D9BC 8002CDBC 24090048 */  addiu      $t1, $zero, 0x48
/* 2D9C0 8002CDC0 AFA90010 */  sw         $t1, 0x10($sp)
/* 2D9C4 8002CDC4 24040002 */  addiu      $a0, $zero, 2
/* 2D9C8 8002CDC8 2405006F */  addiu      $a1, $zero, 0x6f
/* 2D9CC 8002CDCC 24060083 */  addiu      $a2, $zero, 0x83
/* 2D9D0 8002CDD0 0C00AAD9 */  jal        drawSaveNumber_
/* 2D9D4 8002CDD4 8FA70054 */   lw        $a3, 0x54($sp)
/* 2D9D8 8002CDD8 240A000D */  addiu      $t2, $zero, 0xd
/* 2D9DC 8002CDDC AFAA0010 */  sw         $t2, 0x10($sp)
/* 2D9E0 8002CDE0 24040045 */  addiu      $a0, $zero, 0x45
/* 2D9E4 8002CDE4 24050053 */  addiu      $a1, $zero, 0x53
/* 2D9E8 8002CDE8 24060082 */  addiu      $a2, $zero, 0x82
/* 2D9EC 8002CDEC 0C00A6D6 */  jal        drawMenues
/* 2D9F0 8002CDF0 2407001C */   addiu     $a3, $zero, 0x1c
/* 2D9F4 8002CDF4 240B000A */  addiu      $t3, $zero, 0xa
/* 2D9F8 8002CDF8 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2D9FC 8002CDFC 24040052 */  addiu      $a0, $zero, 0x52
/* 2DA00 8002CE00 24050092 */  addiu      $a1, $zero, 0x92
/* 2DA04 8002CE04 24060083 */  addiu      $a2, $zero, 0x83
/* 2DA08 8002CE08 0C00A6D6 */  jal        drawMenues
/* 2DA0C 8002CE0C 24070008 */   addiu     $a3, $zero, 8
/* 2DA10 8002CE10 240D000E */  addiu      $t5, $zero, 0xe
/* 2DA14 8002CE14 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2DA18 8002CE18 24040044 */  addiu      $a0, $zero, 0x44
/* 2DA1C 8002CE1C 240500D9 */  addiu      $a1, $zero, 0xd9
/* 2DA20 8002CE20 24060082 */  addiu      $a2, $zero, 0x82
/* 2DA24 8002CE24 0C00A6D6 */  jal        drawMenues
/* 2DA28 8002CE28 2407001C */   addiu     $a3, $zero, 0x1c
/* 2DA2C 8002CE2C 240E0048 */  addiu      $t6, $zero, 0x48
/* 2DA30 8002CE30 AFAE0040 */  sw         $t6, 0x40($sp)
.L8002CE34:
/* 2DA34 8002CE34 8FB90028 */  lw         $t9, 0x28($sp)
/* 2DA38 8002CE38 2418000A */  addiu      $t8, $zero, 0xa
/* 2DA3C 8002CE3C 24040002 */  addiu      $a0, $zero, 2
/* 2DA40 8002CE40 93270024 */  lbu        $a3, 0x24($t9)
/* 2DA44 8002CE44 AFB80010 */  sw         $t8, 0x10($sp)
/* 2DA48 8002CE48 24050065 */  addiu      $a1, $zero, 0x65
/* 2DA4C 8002CE4C 0C00AAD9 */  jal        drawSaveNumber_
/* 2DA50 8002CE50 240600BA */   addiu     $a2, $zero, 0xba
/* 2DA54 8002CE54 8FAC0028 */  lw         $t4, 0x28($sp)
/* 2DA58 8002CE58 240F000A */  addiu      $t7, $zero, 0xa
/* 2DA5C 8002CE5C 24040002 */  addiu      $a0, $zero, 2
/* 2DA60 8002CE60 91870025 */  lbu        $a3, 0x25($t4)
/* 2DA64 8002CE64 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2DA68 8002CE68 2405008A */  addiu      $a1, $zero, 0x8a
/* 2DA6C 8002CE6C 0C00AAD9 */  jal        drawSaveNumber_
/* 2DA70 8002CE70 240600BA */   addiu     $a2, $zero, 0xba
/* 2DA74 8002CE74 8FA80028 */  lw         $t0, 0x28($sp)
/* 2DA78 8002CE78 2409000A */  addiu      $t1, $zero, 0xa
/* 2DA7C 8002CE7C 24040002 */  addiu      $a0, $zero, 2
/* 2DA80 8002CE80 91070026 */  lbu        $a3, 0x26($t0)
/* 2DA84 8002CE84 AFA90010 */  sw         $t1, 0x10($sp)
/* 2DA88 8002CE88 240500AF */  addiu      $a1, $zero, 0xaf
/* 2DA8C 8002CE8C 0C00AAD9 */  jal        drawSaveNumber_
/* 2DA90 8002CE90 240600BA */   addiu     $a2, $zero, 0xba
/* 2DA94 8002CE94 8FAA0028 */  lw         $t2, 0x28($sp)
/* 2DA98 8002CE98 240B000A */  addiu      $t3, $zero, 0xa
/* 2DA9C 8002CE9C 24040002 */  addiu      $a0, $zero, 2
/* 2DAA0 8002CEA0 91470027 */  lbu        $a3, 0x27($t2)
/* 2DAA4 8002CEA4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2DAA8 8002CEA8 240500D4 */  addiu      $a1, $zero, 0xd4
/* 2DAAC 8002CEAC 0C00AAD9 */  jal        drawSaveNumber_
/* 2DAB0 8002CEB0 240600BA */   addiu     $a2, $zero, 0xba
/* 2DAB4 8002CEB4 8FA30028 */  lw         $v1, 0x28($sp)
/* 2DAB8 8002CEB8 8C6D003C */  lw         $t5, 0x3c($v1)
/* 2DABC 8002CEBC 25AEFFF1 */  addiu      $t6, $t5, -0xf
/* 2DAC0 8002CEC0 2DC10010 */  sltiu      $at, $t6, 0x10
/* 2DAC4 8002CEC4 10200043 */  beqz       $at, .L8002CFD4
/* 2DAC8 8002CEC8 000E7080 */   sll       $t6, $t6, 2
/* 2DACC 8002CECC 3C018007 */  lui        $at, %hi(D_8007198C)
/* 2DAD0 8002CED0 002E0821 */  addu       $at, $at, $t6
/* 2DAD4 8002CED4 8C2E198C */  lw         $t6, %lo(D_8007198C)($at)
/* 2DAD8 8002CED8 01C00008 */  jr         $t6
/* 2DADC 8002CEDC 00000000 */   nop
/* 2DAE0 8002CEE0 8C790040 */  lw         $t9, 0x40($v1)
/* 2DAE4 8002CEE4 24010005 */  addiu      $at, $zero, 5
/* 2DAE8 8002CEE8 17210003 */  bne        $t9, $at, .L8002CEF8
/* 2DAEC 8002CEEC 00000000 */   nop
/* 2DAF0 8002CEF0 10000038 */  b          .L8002CFD4
/* 2DAF4 8002CEF4 00008825 */   or        $s1, $zero, $zero
.L8002CEF8:
/* 2DAF8 8002CEF8 10000036 */  b          .L8002CFD4
/* 2DAFC 8002CEFC 24110010 */   addiu     $s1, $zero, 0x10
/* 2DB00 8002CF00 8C780040 */  lw         $t8, 0x40($v1)
/* 2DB04 8002CF04 24010007 */  addiu      $at, $zero, 7
/* 2DB08 8002CF08 17010003 */  bne        $t8, $at, .L8002CF18
/* 2DB0C 8002CF0C 00000000 */   nop
/* 2DB10 8002CF10 10000030 */  b          .L8002CFD4
/* 2DB14 8002CF14 24110001 */   addiu     $s1, $zero, 1
.L8002CF18:
/* 2DB18 8002CF18 1000002E */  b          .L8002CFD4
/* 2DB1C 8002CF1C 24110002 */   addiu     $s1, $zero, 2
/* 2DB20 8002CF20 1000002C */  b          .L8002CFD4
/* 2DB24 8002CF24 24110004 */   addiu     $s1, $zero, 4
/* 2DB28 8002CF28 8C6C0040 */  lw         $t4, 0x40($v1)
/* 2DB2C 8002CF2C 24010006 */  addiu      $at, $zero, 6
/* 2DB30 8002CF30 15810003 */  bne        $t4, $at, .L8002CF40
/* 2DB34 8002CF34 00000000 */   nop
/* 2DB38 8002CF38 10000026 */  b          .L8002CFD4
/* 2DB3C 8002CF3C 24110003 */   addiu     $s1, $zero, 3
.L8002CF40:
/* 2DB40 8002CF40 10000024 */  b          .L8002CFD4
/* 2DB44 8002CF44 24110005 */   addiu     $s1, $zero, 5
/* 2DB48 8002CF48 10000022 */  b          .L8002CFD4
/* 2DB4C 8002CF4C 24110006 */   addiu     $s1, $zero, 6
/* 2DB50 8002CF50 8C6F0040 */  lw         $t7, 0x40($v1)
/* 2DB54 8002CF54 24010016 */  addiu      $at, $zero, 0x16
/* 2DB58 8002CF58 15E10003 */  bne        $t7, $at, .L8002CF68
/* 2DB5C 8002CF5C 00000000 */   nop
/* 2DB60 8002CF60 1000001C */  b          .L8002CFD4
/* 2DB64 8002CF64 24110007 */   addiu     $s1, $zero, 7
.L8002CF68:
/* 2DB68 8002CF68 1000001A */  b          .L8002CFD4
/* 2DB6C 8002CF6C 24110008 */   addiu     $s1, $zero, 8
/* 2DB70 8002CF70 8C620040 */  lw         $v0, 0x40($v1)
/* 2DB74 8002CF74 24010008 */  addiu      $at, $zero, 8
/* 2DB78 8002CF78 10400009 */  beqz       $v0, .L8002CFA0
/* 2DB7C 8002CF7C 00000000 */   nop
/* 2DB80 8002CF80 10410009 */  beq        $v0, $at, .L8002CFA8
/* 2DB84 8002CF84 24010013 */   addiu     $at, $zero, 0x13
/* 2DB88 8002CF88 10410009 */  beq        $v0, $at, .L8002CFB0
/* 2DB8C 8002CF8C 24010016 */   addiu     $at, $zero, 0x16
/* 2DB90 8002CF90 10410009 */  beq        $v0, $at, .L8002CFB8
/* 2DB94 8002CF94 00000000 */   nop
/* 2DB98 8002CF98 1000000F */  b          .L8002CFD8
/* 2DB9C 8002CF9C 00114080 */   sll       $t0, $s1, 2
.L8002CFA0:
/* 2DBA0 8002CFA0 1000000C */  b          .L8002CFD4
/* 2DBA4 8002CFA4 24110009 */   addiu     $s1, $zero, 9
.L8002CFA8:
/* 2DBA8 8002CFA8 1000000A */  b          .L8002CFD4
/* 2DBAC 8002CFAC 2411000C */   addiu     $s1, $zero, 0xc
.L8002CFB0:
/* 2DBB0 8002CFB0 10000008 */  b          .L8002CFD4
/* 2DBB4 8002CFB4 2411000A */   addiu     $s1, $zero, 0xa
.L8002CFB8:
/* 2DBB8 8002CFB8 10000006 */  b          .L8002CFD4
/* 2DBBC 8002CFBC 2411000B */   addiu     $s1, $zero, 0xb
/* 2DBC0 8002CFC0 10000004 */  b          .L8002CFD4
/* 2DBC4 8002CFC4 2411000E */   addiu     $s1, $zero, 0xe
/* 2DBC8 8002CFC8 10000002 */  b          .L8002CFD4
/* 2DBCC 8002CFCC 2411000D */   addiu     $s1, $zero, 0xd
/* 2DBD0 8002CFD0 2411000F */  addiu      $s1, $zero, 0xf
.L8002CFD4:
/* 2DBD4 8002CFD4 00114080 */  sll        $t0, $s1, 2
.L8002CFD8:
/* 2DBD8 8002CFD8 3C068007 */  lui        $a2, %hi(tbl_saveLocationNames)
/* 2DBDC 8002CFDC 00C83021 */  addu       $a2, $a2, $t0
/* 2DBE0 8002CFE0 8CC6AC00 */  lw         $a2, %lo(tbl_saveLocationNames)($a2)
/* 2DBE4 8002CFE4 00008825 */  or         $s1, $zero, $zero
/* 2DBE8 8002CFE8 24040051 */  addiu      $a0, $zero, 0x51
/* 2DBEC 8002CFEC 0C00C3A8 */  jal        printTextToScreen
/* 2DBF0 8002CFF0 24050096 */   addiu     $a1, $zero, 0x96
/* 2DBF4 8002CFF4 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 2DBF8 8002CFF8 00000000 */   nop
/* 2DBFC 8002CFFC 8FA90028 */  lw         $t1, 0x28($sp)
/* 2DC00 8002D000 24040003 */  addiu      $a0, $zero, 3
/* 2DC04 8002D004 2405007E */  addiu      $a1, $zero, 0x7e
/* 2DC08 8002D008 95300038 */  lhu        $s0, 0x38($t1)
/* 2DC0C 8002D00C 24060083 */  addiu      $a2, $zero, 0x83
/* 2DC10 8002D010 8FAA0040 */  lw         $t2, 0x40($sp)
/* 2DC14 8002D014 2A01003C */  slti       $at, $s0, 0x3c
/* 2DC18 8002D018 54200006 */  bnel       $at, $zero, .L8002D034
/* 2DC1C 8002D01C 02203825 */   or        $a3, $s1, $zero
.L8002D020:
/* 2DC20 8002D020 2610FFC4 */  addiu      $s0, $s0, -0x3c
/* 2DC24 8002D024 2A01003C */  slti       $at, $s0, 0x3c
/* 2DC28 8002D028 1020FFFD */  beqz       $at, .L8002D020
/* 2DC2C 8002D02C 26310001 */   addiu     $s1, $s1, 1
/* 2DC30 8002D030 02203825 */  or         $a3, $s1, $zero
.L8002D034:
/* 2DC34 8002D034 0C00AAD9 */  jal        drawSaveNumber_
/* 2DC38 8002D038 AFAA0010 */   sw        $t2, 0x10($sp)
/* 2DC3C 8002D03C 8FAB0040 */  lw         $t3, 0x40($sp)
/* 2DC40 8002D040 24040002 */  addiu      $a0, $zero, 2
/* 2DC44 8002D044 2405009A */  addiu      $a1, $zero, 0x9a
/* 2DC48 8002D048 24060083 */  addiu      $a2, $zero, 0x83
/* 2DC4C 8002D04C 02003825 */  or         $a3, $s0, $zero
/* 2DC50 8002D050 0C00ABDC */  jal        drawSaveTime_
/* 2DC54 8002D054 AFAB0010 */   sw        $t3, 0x10($sp)
/* 2DC58 8002D058 8FAD0028 */  lw         $t5, 0x28($sp)
/* 2DC5C 8002D05C 8FAE0040 */  lw         $t6, 0x40($sp)
/* 2DC60 8002D060 24040003 */  addiu      $a0, $zero, 3
/* 2DC64 8002D064 95A7003A */  lhu        $a3, 0x3a($t5)
/* 2DC68 8002D068 240500C0 */  addiu      $a1, $zero, 0xc0
/* 2DC6C 8002D06C 24060083 */  addiu      $a2, $zero, 0x83
/* 2DC70 8002D070 0C00AAD9 */  jal        drawSaveNumber_
/* 2DC74 8002D074 AFAE0010 */   sw        $t6, 0x10($sp)
/* 2DC78 8002D078 8FB90028 */  lw         $t9, 0x28($sp)
/* 2DC7C 8002D07C 24040003 */  addiu      $a0, $zero, 3
/* 2DC80 8002D080 24050070 */  addiu      $a1, $zero, 0x70
/* 2DC84 8002D084 240600A6 */  addiu      $a2, $zero, 0xa6
/* 2DC88 8002D088 0C00ACD9 */  jal        drawSaveHPMPValue_
/* 2DC8C 8002D08C 97270004 */   lhu       $a3, 4($t9)
/* 2DC90 8002D090 8FB80028 */  lw         $t8, 0x28($sp)
/* 2DC94 8002D094 24040003 */  addiu      $a0, $zero, 3
/* 2DC98 8002D098 240500C0 */  addiu      $a1, $zero, 0xc0
/* 2DC9C 8002D09C 240600A6 */  addiu      $a2, $zero, 0xa6
/* 2DCA0 8002D0A0 0C00ACD9 */  jal        drawSaveHPMPValue_
/* 2DCA4 8002D0A4 97070008 */   lhu       $a3, 8($t8)
/* 2DCA8 8002D0A8 10000004 */  b          .L8002D0BC
/* 2DCAC 8002D0AC 00000000 */   nop
.L8002D0B0:
/* 2DCB0 8002D0B0 2405007F */  addiu      $a1, $zero, 0x7f
/* 2DCB4 8002D0B4 0C00C3A8 */  jal        printTextToScreen
/* 2DCB8 8002D0B8 27A60034 */   addiu     $a2, $sp, 0x34
.L8002D0BC:
/* 2DCBC 8002D0BC 0C00B7DB */  jal        VOID_FUN_8002df6c
/* 2DCC0 8002D0C0 00000000 */   nop
/* 2DCC4 8002D0C4 3C038009 */  lui        $v1, %hi(D_8008FD10)
/* 2DCC8 8002D0C8 8C63FD10 */  lw         $v1, %lo(D_8008FD10)($v1)
/* 2DCCC 8002D0CC 3C028009 */  lui        $v0, %hi(UNK_SelectedSaveSlot)
/* 2DCD0 8002D0D0 8042FD2A */  lb         $v0, %lo(UNK_SelectedSaveSlot)($v0)
/* 2DCD4 8002D0D4 00036083 */  sra        $t4, $v1, 2
/* 2DCD8 8002D0D8 318F000F */  andi       $t7, $t4, 0xf
/* 2DCDC 8002D0DC 3C018006 */  lui        $at, %hi(D_8005F0C0)
/* 2DCE0 8002D0E0 002F0821 */  addu       $at, $at, $t7
/* 2DCE4 8002D0E4 8023F0C0 */  lb         $v1, %lo(D_8005F0C0)($at)
/* 2DCE8 8002D0E8 28410002 */  slti       $at, $v0, 2
/* 2DCEC 8002D0EC 14200012 */  bnez       $at, .L8002D138
/* 2DCF0 8002D0F0 24040005 */   addiu     $a0, $zero, 5
/* 2DCF4 8002D0F4 24080007 */  addiu      $t0, $zero, 7
/* 2DCF8 8002D0F8 AFA80010 */  sw         $t0, 0x10($sp)
/* 2DCFC 8002D0FC 24050038 */  addiu      $a1, $zero, 0x38
/* 2DD00 8002D100 2406004D */  addiu      $a2, $zero, 0x4d
/* 2DD04 8002D104 24070007 */  addiu      $a3, $zero, 7
/* 2DD08 8002D108 0C00A6D6 */  jal        drawMenues
/* 2DD0C 8002D10C AFA30050 */   sw        $v1, 0x50($sp)
/* 2DD10 8002D110 8FA60050 */  lw         $a2, 0x50($sp)
/* 2DD14 8002D114 24090010 */  addiu      $t1, $zero, 0x10
/* 2DD18 8002D118 AFA90010 */  sw         $t1, 0x10($sp)
/* 2DD1C 8002D11C 24040053 */  addiu      $a0, $zero, 0x53
/* 2DD20 8002D120 24050036 */  addiu      $a1, $zero, 0x36
/* 2DD24 8002D124 2407000C */  addiu      $a3, $zero, 0xc
/* 2DD28 8002D128 0C00A6D6 */  jal        drawMenues
/* 2DD2C 8002D12C 24C6003F */   addiu     $a2, $a2, 0x3f
/* 2DD30 8002D130 1000001A */  b          .L8002D19C
/* 2DD34 8002D134 8FB9002C */   lw        $t9, 0x2c($sp)
.L8002D138:
/* 2DD38 8002D138 24010001 */  addiu      $at, $zero, 1
/* 2DD3C 8002D13C 14410016 */  bne        $v0, $at, .L8002D198
/* 2DD40 8002D140 AFA30050 */   sw        $v1, 0x50($sp)
/* 2DD44 8002D144 3C0A8009 */  lui        $t2, %hi(flags_DAT_8008fd20)
/* 2DD48 8002D148 954AFD20 */  lhu        $t2, %lo(flags_DAT_8008fd20)($t2)
/* 2DD4C 8002D14C AFA30050 */  sw         $v1, 0x50($sp)
/* 2DD50 8002D150 24040005 */  addiu      $a0, $zero, 5
/* 2DD54 8002D154 314B0020 */  andi       $t3, $t2, 0x20
/* 2DD58 8002D158 1560000F */  bnez       $t3, .L8002D198
/* 2DD5C 8002D15C 24050038 */   addiu     $a1, $zero, 0x38
/* 2DD60 8002D160 240D0007 */  addiu      $t5, $zero, 7
/* 2DD64 8002D164 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2DD68 8002D168 2406004D */  addiu      $a2, $zero, 0x4d
/* 2DD6C 8002D16C 24070007 */  addiu      $a3, $zero, 7
/* 2DD70 8002D170 0C00A6D6 */  jal        drawMenues
/* 2DD74 8002D174 AFA30050 */   sw        $v1, 0x50($sp)
/* 2DD78 8002D178 8FA60050 */  lw         $a2, 0x50($sp)
/* 2DD7C 8002D17C 240E0010 */  addiu      $t6, $zero, 0x10
/* 2DD80 8002D180 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2DD84 8002D184 24040053 */  addiu      $a0, $zero, 0x53
/* 2DD88 8002D188 24050036 */  addiu      $a1, $zero, 0x36
/* 2DD8C 8002D18C 2407000C */  addiu      $a3, $zero, 0xc
/* 2DD90 8002D190 0C00A6D6 */  jal        drawMenues
/* 2DD94 8002D194 24C6003F */   addiu     $a2, $a2, 0x3f
.L8002D198:
/* 2DD98 8002D198 8FB9002C */  lw         $t9, 0x2c($sp)
.L8002D19C:
/* 2DD9C 8002D19C 3C188009 */  lui        $t8, %hi(D_8008FD50)
/* 2DDA0 8002D1A0 2718FD50 */  addiu      $t8, $t8, %lo(D_8008FD50)
/* 2DDA4 8002D1A4 0338082B */  sltu       $at, $t9, $t8
/* 2DDA8 8002D1A8 10200016 */  beqz       $at, .L8002D204
/* 2DDAC 8002D1AC 8FA30050 */   lw        $v1, 0x50($sp)
/* 2DDB0 8002D1B0 832C0002 */  lb         $t4, 2($t9)
/* 2DDB4 8002D1B4 2401FFFF */  addiu      $at, $zero, -1
/* 2DDB8 8002D1B8 24040005 */  addiu      $a0, $zero, 5
/* 2DDBC 8002D1BC 11810011 */  beq        $t4, $at, .L8002D204
/* 2DDC0 8002D1C0 24050038 */   addiu     $a1, $zero, 0x38
/* 2DDC4 8002D1C4 240F0007 */  addiu      $t7, $zero, 7
/* 2DDC8 8002D1C8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2DDCC 8002D1CC 240600A4 */  addiu      $a2, $zero, 0xa4
/* 2DDD0 8002D1D0 24070007 */  addiu      $a3, $zero, 7
/* 2DDD4 8002D1D4 0C00A6D6 */  jal        drawMenues
/* 2DDD8 8002D1D8 AFA30050 */   sw        $v1, 0x50($sp)
/* 2DDDC 8002D1DC 8FA80050 */  lw         $t0, 0x50($sp)
/* 2DDE0 8002D1E0 240900AC */  addiu      $t1, $zero, 0xac
/* 2DDE4 8002D1E4 240A000B */  addiu      $t2, $zero, 0xb
/* 2DDE8 8002D1E8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2DDEC 8002D1EC 24040054 */  addiu      $a0, $zero, 0x54
/* 2DDF0 8002D1F0 24050036 */  addiu      $a1, $zero, 0x36
/* 2DDF4 8002D1F4 2407000E */  addiu      $a3, $zero, 0xe
/* 2DDF8 8002D1F8 0C00A6D6 */  jal        drawMenues
/* 2DDFC 8002D1FC 01283023 */   subu      $a2, $t1, $t0
/* 2DE00 8002D200 8FA30050 */  lw         $v1, 0x50($sp)
.L8002D204:
/* 2DE04 8002D204 3C0B8009 */  lui        $t3, %hi(flags_DAT_8008fd20)
/* 2DE08 8002D208 956BFD20 */  lhu        $t3, %lo(flags_DAT_8008fd20)($t3)
/* 2DE0C 8002D20C 24040001 */  addiu      $a0, $zero, 1
/* 2DE10 8002D210 24650042 */  addiu      $a1, $v1, 0x42
/* 2DE14 8002D214 316D0020 */  andi       $t5, $t3, 0x20
/* 2DE18 8002D218 11A0000A */  beqz       $t5, .L8002D244
/* 2DE1C 8002D21C 24060037 */   addiu     $a2, $zero, 0x37
/* 2DE20 8002D220 240E000D */  addiu      $t6, $zero, 0xd
/* 2DE24 8002D224 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2DE28 8002D228 24040001 */  addiu      $a0, $zero, 1
/* 2DE2C 8002D22C 24650042 */  addiu      $a1, $v1, 0x42
/* 2DE30 8002D230 24060080 */  addiu      $a2, $zero, 0x80
/* 2DE34 8002D234 0C00A6D6 */  jal        drawMenues
/* 2DE38 8002D238 24070010 */   addiu     $a3, $zero, 0x10
/* 2DE3C 8002D23C 10000006 */  b          .L8002D258
/* 2DE40 8002D240 8FB90058 */   lw        $t9, 0x58($sp)
.L8002D244:
/* 2DE44 8002D244 2418000D */  addiu      $t8, $zero, 0xd
/* 2DE48 8002D248 AFB80010 */  sw         $t8, 0x10($sp)
/* 2DE4C 8002D24C 0C00A6D6 */  jal        drawMenues
/* 2DE50 8002D250 24070010 */   addiu     $a3, $zero, 0x10
/* 2DE54 8002D254 8FB90058 */  lw         $t9, 0x58($sp)
.L8002D258:
/* 2DE58 8002D258 24010001 */  addiu      $at, $zero, 1
/* 2DE5C 8002D25C 3C028009 */  lui        $v0, %hi(JoystickY)
/* 2DE60 8002D260 532100D8 */  beql       $t9, $at, .L8002D5C4
/* 2DE64 8002D264 8FBF0024 */   lw        $ra, 0x24($sp)
/* 2DE68 8002D268 80422872 */  lb         $v0, %lo(JoystickY)($v0)
/* 2DE6C 8002D26C 3C108009 */  lui        $s0, %hi(D_8008FD2B)
/* 2DE70 8002D270 00008825 */  or         $s1, $zero, $zero
/* 2DE74 8002D274 2841FFEC */  slti       $at, $v0, -0x14
/* 2DE78 8002D278 10200034 */  beqz       $at, .L8002D34C
/* 2DE7C 8002D27C 2610FD2B */   addiu     $s0, $s0, %lo(D_8008FD2B)
/* 2DE80 8002D280 920C0000 */  lbu        $t4, ($s0)
/* 2DE84 8002D284 00002025 */  or         $a0, $zero, $zero
/* 2DE88 8002D288 00002825 */  or         $a1, $zero, $zero
/* 2DE8C 8002D28C 55800027 */  bnel       $t4, $zero, .L8002D32C
/* 2DE90 8002D290 92080000 */   lbu       $t0, ($s0)
/* 2DE94 8002D294 0C009A35 */  jal        func_800268D4
/* 2DE98 8002D298 240600FF */   addiu     $a2, $zero, 0xff
/* 2DE9C 8002D29C 3C0F8009 */  lui        $t7, %hi(UNK_SelectedSaveSlot)
/* 2DEA0 8002D2A0 81EFFD2A */  lb         $t7, %lo(UNK_SelectedSaveSlot)($t7)
/* 2DEA4 8002D2A4 3C0B8009 */  lui        $t3, 0x8009
/* 2DEA8 8002D2A8 3C018009 */  lui        $at, 0x8009
/* 2DEAC 8002D2AC 25E90001 */  addiu      $t1, $t7, 1
/* 2DEB0 8002D2B0 00091600 */  sll        $v0, $t1, 0x18
/* 2DEB4 8002D2B4 00024603 */  sra        $t0, $v0, 0x18
/* 2DEB8 8002D2B8 00085040 */  sll        $t2, $t0, 1
/* 2DEBC 8002D2BC 016A5821 */  addu       $t3, $t3, $t2
/* 2DEC0 8002D2C0 816BFD30 */  lb         $t3, -0x2d0($t3)
/* 2DEC4 8002D2C4 A029FD2A */  sb         $t1, -0x2d6($at)
/* 2DEC8 8002D2C8 2401FFFF */  addiu      $at, $zero, -1
/* 2DECC 8002D2CC 15610005 */  bne        $t3, $at, .L8002D2E4
/* 2DED0 8002D2D0 3C078009 */   lui       $a3, %hi(flags_DAT_8008fd20)
/* 2DED4 8002D2D4 250DFFFF */  addiu      $t5, $t0, -1
/* 2DED8 8002D2D8 3C018009 */  lui        $at, %hi(UNK_SelectedSaveSlot)
/* 2DEDC 8002D2DC A02DFD2A */  sb         $t5, %lo(UNK_SelectedSaveSlot)($at)
/* 2DEE0 8002D2E0 24110001 */  addiu      $s1, $zero, 1
.L8002D2E4:
/* 2DEE4 8002D2E4 24E7FD20 */  addiu      $a3, $a3, %lo(flags_DAT_8008fd20)
/* 2DEE8 8002D2E8 94E30000 */  lhu        $v1, ($a3)
/* 2DEEC 8002D2EC 306E0020 */  andi       $t6, $v1, 0x20
/* 2DEF0 8002D2F0 15C00005 */  bnez       $t6, .L8002D308
/* 2DEF4 8002D2F4 00000000 */   nop
/* 2DEF8 8002D2F8 16200003 */  bnez       $s1, .L8002D308
/* 2DEFC 8002D2FC 34780020 */   ori       $t8, $v1, 0x20
/* 2DF00 8002D300 10000009 */  b          .L8002D328
/* 2DF04 8002D304 A4F80000 */   sh        $t8, ($a3)
.L8002D308:
/* 2DF08 8002D308 16200007 */  bnez       $s1, .L8002D328
/* 2DF0C 8002D30C 306CFFF8 */   andi      $t4, $v1, 0xfff8
/* 2DF10 8002D310 A4EC0000 */  sh         $t4, ($a3)
/* 2DF14 8002D314 358F0006 */  ori        $t7, $t4, 6
/* 2DF18 8002D318 A4EF0000 */  sh         $t7, ($a3)
/* 2DF1C 8002D31C 24090004 */  addiu      $t1, $zero, 4
/* 2DF20 8002D320 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2DF24 8002D324 A029FD29 */  sb         $t1, %lo(D_8008FD29)($at)
.L8002D328:
/* 2DF28 8002D328 92080000 */  lbu        $t0, ($s0)
.L8002D32C:
/* 2DF2C 8002D32C 3C078009 */  lui        $a3, %hi(flags_DAT_8008fd20)
/* 2DF30 8002D330 24E7FD20 */  addiu      $a3, $a3, %lo(flags_DAT_8008fd20)
/* 2DF34 8002D334 250B0001 */  addiu      $t3, $t0, 1
/* 2DF38 8002D338 A20B0000 */  sb         $t3, ($s0)
/* 2DF3C 8002D33C 316D000F */  andi       $t5, $t3, 0xf
/* 2DF40 8002D340 2411FFF8 */  addiu      $s1, $zero, -8
/* 2DF44 8002D344 10000039 */  b          .L8002D42C
/* 2DF48 8002D348 A20D0000 */   sb        $t5, ($s0)
.L8002D34C:
/* 2DF4C 8002D34C 28410015 */  slti       $at, $v0, 0x15
/* 2DF50 8002D350 14200030 */  bnez       $at, .L8002D414
/* 2DF54 8002D354 3C108009 */   lui       $s0, %hi(D_8008FD2B)
/* 2DF58 8002D358 2610FD2B */  addiu      $s0, $s0, %lo(D_8008FD2B)
/* 2DF5C 8002D35C 920E0000 */  lbu        $t6, ($s0)
/* 2DF60 8002D360 00002025 */  or         $a0, $zero, $zero
/* 2DF64 8002D364 00002825 */  or         $a1, $zero, $zero
/* 2DF68 8002D368 55C00022 */  bnel       $t6, $zero, .L8002D3F4
/* 2DF6C 8002D36C 92180000 */   lbu       $t8, ($s0)
/* 2DF70 8002D370 0C009A35 */  jal        func_800268D4
/* 2DF74 8002D374 240600FF */   addiu     $a2, $zero, 0xff
/* 2DF78 8002D378 3C188009 */  lui        $t8, %hi(UNK_SelectedSaveSlot)
/* 2DF7C 8002D37C 8318FD2A */  lb         $t8, %lo(UNK_SelectedSaveSlot)($t8)
/* 2DF80 8002D380 3C018009 */  lui        $at, 0x8009
/* 2DF84 8002D384 3C038009 */  lui        $v1, 0x8009
/* 2DF88 8002D388 2719FFFF */  addiu      $t9, $t8, -1
/* 2DF8C 8002D38C 00196600 */  sll        $t4, $t9, 0x18
/* 2DF90 8002D390 000C7E03 */  sra        $t7, $t4, 0x18
/* 2DF94 8002D394 05E10004 */  bgez       $t7, .L8002D3A8
/* 2DF98 8002D398 A039FD2A */   sb        $t9, -0x2d6($at)
/* 2DF9C 8002D39C 3C018009 */  lui        $at, %hi(UNK_SelectedSaveSlot)
/* 2DFA0 8002D3A0 A020FD2A */  sb         $zero, %lo(UNK_SelectedSaveSlot)($at)
/* 2DFA4 8002D3A4 24110001 */  addiu      $s1, $zero, 1
.L8002D3A8:
/* 2DFA8 8002D3A8 9463FD20 */  lhu        $v1, -0x2e0($v1)
/* 2DFAC 8002D3AC 3C018009 */  lui        $at, %hi(flags_DAT_8008fd20)
/* 2DFB0 8002D3B0 30690020 */  andi       $t1, $v1, 0x20
/* 2DFB4 8002D3B4 11200003 */  beqz       $t1, .L8002D3C4
/* 2DFB8 8002D3B8 3068FFDF */   andi      $t0, $v1, 0xffdf
/* 2DFBC 8002D3BC 1000000C */  b          .L8002D3F0
/* 2DFC0 8002D3C0 A428FD20 */   sh        $t0, %lo(flags_DAT_8008fd20)($at)
.L8002D3C4:
/* 2DFC4 8002D3C4 1620000A */  bnez       $s1, .L8002D3F0
/* 2DFC8 8002D3C8 306AFFF8 */   andi      $t2, $v1, 0xfff8
/* 2DFCC 8002D3CC 3C018009 */  lui        $at, %hi(flags_DAT_8008fd20)
/* 2DFD0 8002D3D0 A42AFD20 */  sh         $t2, %lo(flags_DAT_8008fd20)($at)
/* 2DFD4 8002D3D4 3C0B8009 */  lui        $t3, %hi(flags_DAT_8008fd20)
/* 2DFD8 8002D3D8 956BFD20 */  lhu        $t3, %lo(flags_DAT_8008fd20)($t3)
/* 2DFDC 8002D3DC 240E0004 */  addiu      $t6, $zero, 4
/* 2DFE0 8002D3E0 356D0006 */  ori        $t5, $t3, 6
/* 2DFE4 8002D3E4 A42DFD20 */  sh         $t5, -0x2e0($at)
/* 2DFE8 8002D3E8 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2DFEC 8002D3EC A02EFD29 */  sb         $t6, %lo(D_8008FD29)($at)
.L8002D3F0:
/* 2DFF0 8002D3F0 92180000 */  lbu        $t8, ($s0)
.L8002D3F4:
/* 2DFF4 8002D3F4 3C078009 */  lui        $a3, 0x8009
/* 2DFF8 8002D3F8 2411FFF8 */  addiu      $s1, $zero, -8
/* 2DFFC 8002D3FC 270C0001 */  addiu      $t4, $t8, 1
/* 2E000 8002D400 A20C0000 */  sb         $t4, ($s0)
/* 2E004 8002D404 318F000F */  andi       $t7, $t4, 0xf
/* 2E008 8002D408 A20F0000 */  sb         $t7, ($s0)
/* 2E00C 8002D40C 10000007 */  b          .L8002D42C
/* 2E010 8002D410 24E7FD20 */   addiu     $a3, $a3, -0x2e0
.L8002D414:
/* 2E014 8002D414 3C108009 */  lui        $s0, %hi(D_8008FD2B)
/* 2E018 8002D418 2610FD2B */  addiu      $s0, $s0, %lo(D_8008FD2B)
/* 2E01C 8002D41C 3C078009 */  lui        $a3, %hi(flags_DAT_8008fd20)
/* 2E020 8002D420 24E7FD20 */  addiu      $a3, $a3, %lo(flags_DAT_8008fd20)
/* 2E024 8002D424 A2000000 */  sb         $zero, ($s0)
/* 2E028 8002D428 2411FFF8 */  addiu      $s1, $zero, -8
.L8002D42C:
/* 2E02C 8002D42C 3C028009 */  lui        $v0, %hi(ButtonPressedFrame)
/* 2E030 8002D430 94422876 */  lhu        $v0, %lo(ButtonPressedFrame)($v0)
/* 2E034 8002D434 30498000 */  andi       $t1, $v0, 0x8000
/* 2E038 8002D438 11200050 */  beqz       $t1, .L8002D57C
/* 2E03C 8002D43C 3C088009 */   lui       $t0, %hi(flags_DAT_8008fd0c)
/* 2E040 8002D440 9508FD0C */  lhu        $t0, %lo(flags_DAT_8008fd0c)($t0)
/* 2E044 8002D444 00002025 */  or         $a0, $zero, $zero
/* 2E048 8002D448 24050001 */  addiu      $a1, $zero, 1
/* 2E04C 8002D44C 310A000C */  andi       $t2, $t0, 0xc
/* 2E050 8002D450 AFAA0054 */  sw         $t2, 0x54($sp)
/* 2E054 8002D454 0C009A35 */  jal        func_800268D4
/* 2E058 8002D458 240600FF */   addiu     $a2, $zero, 0xff
/* 2E05C 8002D45C 8FAB0054 */  lw         $t3, 0x54($sp)
/* 2E060 8002D460 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2E064 8002D464 2442FD20 */  addiu      $v0, $v0, %lo(flags_DAT_8008fd20)
/* 2E068 8002D468 11600007 */  beqz       $t3, .L8002D488
/* 2E06C 8002D46C 24010004 */   addiu     $at, $zero, 4
/* 2E070 8002D470 1161001E */  beq        $t3, $at, .L8002D4EC
/* 2E074 8002D474 24010008 */   addiu     $at, $zero, 8
/* 2E078 8002D478 1161000F */  beq        $t3, $at, .L8002D4B8
/* 2E07C 8002D47C 3C028009 */   lui       $v0, 0x8009
/* 2E080 8002D480 10000050 */  b          .L8002D5C4
/* 2E084 8002D484 8FBF0024 */   lw        $ra, 0x24($sp)
.L8002D488:
/* 2E088 8002D488 944D0000 */  lhu        $t5, ($v0)
/* 2E08C 8002D48C 24180001 */  addiu      $t8, $zero, 1
/* 2E090 8002D490 3C018009 */  lui        $at, %hi(D_8008FD23)
/* 2E094 8002D494 35AE2000 */  ori        $t6, $t5, 0x2000
/* 2E098 8002D498 A44E0000 */  sh         $t6, ($v0)
/* 2E09C 8002D49C A038FD23 */  sb         $t8, %lo(D_8008FD23)($at)
/* 2E0A0 8002D4A0 94590000 */  lhu        $t9, ($v0)
/* 2E0A4 8002D4A4 03317824 */  and        $t7, $t9, $s1
/* 2E0A8 8002D4A8 A44F0000 */  sh         $t7, ($v0)
/* 2E0AC 8002D4AC 35E90002 */  ori        $t1, $t7, 2
/* 2E0B0 8002D4B0 10000043 */  b          .L8002D5C0
/* 2E0B4 8002D4B4 A4490000 */   sh        $t1, ($v0)
.L8002D4B8:
/* 2E0B8 8002D4B8 24080005 */  addiu      $t0, $zero, 5
/* 2E0BC 8002D4BC 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E0C0 8002D4C0 A028FD22 */  sb         $t0, %lo(pfsErrMsg)($at)
/* 2E0C4 8002D4C4 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E0C8 8002D4C8 240A000A */  addiu      $t2, $zero, 0xa
/* 2E0CC 8002D4CC 2442FD20 */  addiu      $v0, $v0, -0x2e0
/* 2E0D0 8002D4D0 A02AFD29 */  sb         $t2, %lo(D_8008FD29)($at)
/* 2E0D4 8002D4D4 944B0000 */  lhu        $t3, ($v0)
/* 2E0D8 8002D4D8 01717024 */  and        $t6, $t3, $s1
/* 2E0DC 8002D4DC A44E0000 */  sh         $t6, ($v0)
/* 2E0E0 8002D4E0 35D80005 */  ori        $t8, $t6, 5
/* 2E0E4 8002D4E4 10000036 */  b          .L8002D5C0
/* 2E0E8 8002D4E8 A4580000 */   sh        $t8, ($v0)
.L8002D4EC:
/* 2E0EC 8002D4EC 3C198009 */  lui        $t9, %hi(UNK_SelectedSaveSlot)
/* 2E0F0 8002D4F0 8339FD2A */  lb         $t9, %lo(UNK_SelectedSaveSlot)($t9)
/* 2E0F4 8002D4F4 3C0F8009 */  lui        $t7, %hi(D_8008FD30)
/* 2E0F8 8002D4F8 2401FFFE */  addiu      $at, $zero, -2
/* 2E0FC 8002D4FC 00196040 */  sll        $t4, $t9, 1
/* 2E100 8002D500 01EC7821 */  addu       $t7, $t7, $t4
/* 2E104 8002D504 81EFFD30 */  lb         $t7, %lo(D_8008FD30)($t7)
/* 2E108 8002D508 15E1000E */  bne        $t7, $at, .L8002D544
/* 2E10C 8002D50C 3C028009 */   lui       $v0, %hi(flags_DAT_8008fd20)
/* 2E110 8002D510 2442FD20 */  addiu      $v0, $v0, %lo(flags_DAT_8008fd20)
/* 2E114 8002D514 94490000 */  lhu        $t1, ($v0)
/* 2E118 8002D518 240A0002 */  addiu      $t2, $zero, 2
/* 2E11C 8002D51C 3C018009 */  lui        $at, %hi(D_8008FD23)
/* 2E120 8002D520 35282000 */  ori        $t0, $t1, 0x2000
/* 2E124 8002D524 A4480000 */  sh         $t0, ($v0)
/* 2E128 8002D528 A02AFD23 */  sb         $t2, %lo(D_8008FD23)($at)
/* 2E12C 8002D52C 944B0000 */  lhu        $t3, ($v0)
/* 2E130 8002D530 01717024 */  and        $t6, $t3, $s1
/* 2E134 8002D534 A44E0000 */  sh         $t6, ($v0)
/* 2E138 8002D538 35D80003 */  ori        $t8, $t6, 3
/* 2E13C 8002D53C 10000020 */  b          .L8002D5C0
/* 2E140 8002D540 A4580000 */   sh        $t8, ($v0)
.L8002D544:
/* 2E144 8002D544 24190004 */  addiu      $t9, $zero, 4
/* 2E148 8002D548 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E14C 8002D54C A039FD22 */  sb         $t9, %lo(pfsErrMsg)($at)
/* 2E150 8002D550 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2E154 8002D554 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E158 8002D558 240C000A */  addiu      $t4, $zero, 0xa
/* 2E15C 8002D55C 2442FD20 */  addiu      $v0, $v0, %lo(flags_DAT_8008fd20)
/* 2E160 8002D560 A02CFD29 */  sb         $t4, %lo(D_8008FD29)($at)
/* 2E164 8002D564 944F0000 */  lhu        $t7, ($v0)
/* 2E168 8002D568 01F14024 */  and        $t0, $t7, $s1
/* 2E16C 8002D56C A4480000 */  sh         $t0, ($v0)
/* 2E170 8002D570 350A0005 */  ori        $t2, $t0, 5
/* 2E174 8002D574 10000012 */  b          .L8002D5C0
/* 2E178 8002D578 A44A0000 */   sh        $t2, ($v0)
.L8002D57C:
/* 2E17C 8002D57C 304B5000 */  andi       $t3, $v0, 0x5000
/* 2E180 8002D580 1160000F */  beqz       $t3, .L8002D5C0
/* 2E184 8002D584 240D0007 */   addiu     $t5, $zero, 7
/* 2E188 8002D588 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E18C 8002D58C A02DFD22 */  sb         $t5, %lo(pfsErrMsg)($at)
/* 2E190 8002D590 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E194 8002D594 240E000A */  addiu      $t6, $zero, 0xa
/* 2E198 8002D598 A02EFD29 */  sb         $t6, %lo(D_8008FD29)($at)
/* 2E19C 8002D59C 94F80000 */  lhu        $t8, ($a3)
/* 2E1A0 8002D5A0 00002025 */  or         $a0, $zero, $zero
/* 2E1A4 8002D5A4 24050002 */  addiu      $a1, $zero, 2
/* 2E1A8 8002D5A8 03116024 */  and        $t4, $t8, $s1
/* 2E1AC 8002D5AC A4EC0000 */  sh         $t4, ($a3)
/* 2E1B0 8002D5B0 358F0005 */  ori        $t7, $t4, 5
/* 2E1B4 8002D5B4 A4EF0000 */  sh         $t7, ($a3)
/* 2E1B8 8002D5B8 0C009A35 */  jal        func_800268D4
/* 2E1BC 8002D5BC 240600FF */   addiu     $a2, $zero, 0xff
.L8002D5C0:
/* 2E1C0 8002D5C0 8FBF0024 */  lw         $ra, 0x24($sp)
.L8002D5C4:
/* 2E1C4 8002D5C4 8FB0001C */  lw         $s0, 0x1c($sp)
/* 2E1C8 8002D5C8 8FB10020 */  lw         $s1, 0x20($sp)
/* 2E1CC 8002D5CC 03E00008 */  jr         $ra
/* 2E1D0 8002D5D0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel VOID_FUN_8002d5d4
/* 2E1D4 8002D5D4 3C028009 */  lui        $v0, %hi(D_8008FD29)
/* 2E1D8 8002D5D8 2442FD29 */  addiu      $v0, $v0, %lo(D_8008FD29)
/* 2E1DC 8002D5DC 804E0000 */  lb         $t6, ($v0)
/* 2E1E0 8002D5E0 25CFFFFF */  addiu      $t7, $t6, -1
/* 2E1E4 8002D5E4 A04F0000 */  sb         $t7, ($v0)
/* 2E1E8 8002D5E8 80580000 */  lb         $t8, ($v0)
/* 2E1EC 8002D5EC 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2E1F0 8002D5F0 2442FD20 */  addiu      $v0, $v0, %lo(flags_DAT_8008fd20)
/* 2E1F4 8002D5F4 07010005 */  bgez       $t8, .L8002D60C
/* 2E1F8 8002D5F8 00000000 */   nop
/* 2E1FC 8002D5FC 94590000 */  lhu        $t9, ($v0)
/* 2E200 8002D600 3329FFF8 */  andi       $t1, $t9, 0xfff8
/* 2E204 8002D604 A4490000 */  sh         $t1, ($v0)
/* 2E208 8002D608 A4490000 */  sh         $t1, ($v0)
.L8002D60C:
/* 2E20C 8002D60C 03E00008 */  jr         $ra
/* 2E210 8002D610 00000000 */   nop

glabel VOID_FUN_8002d614
/* 2E214 8002D614 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E218 8002D618 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E21C 8002D61C 3C0E8009 */  lui        $t6, %hi(UNK_SelectedSaveSlot)
/* 2E220 8002D620 81CEFD2A */  lb         $t6, %lo(UNK_SelectedSaveSlot)($t6)
/* 2E224 8002D624 3C058009 */  lui        $a1, %hi(D_8008FD31)
/* 2E228 8002D628 3C048009 */  lui        $a0, %hi(controller_no)
/* 2E22C 8002D62C 000E7840 */  sll        $t7, $t6, 1
/* 2E230 8002D630 00AF2821 */  addu       $a1, $a1, $t7
/* 2E234 8002D634 90A5FD31 */  lbu        $a1, %lo(D_8008FD31)($a1)
/* 2E238 8002D638 0C00C657 */  jal        func_8003195C
/* 2E23C 8002D63C 80842870 */   lb        $a0, %lo(controller_no)($a0)
/* 2E240 8002D640 10400027 */  beqz       $v0, .L8002D6E0
/* 2E244 8002D644 00402025 */   or        $a0, $v0, $zero
/* 2E248 8002D648 3C018009 */  lui        $at, %hi(pfsError)
/* 2E24C 8002D64C 0C00C6EC */  jal        func_80031BB0
/* 2E250 8002D650 AC22FD24 */   sw        $v0, %lo(pfsError)($at)
/* 2E254 8002D654 00021823 */  negu       $v1, $v0
/* 2E258 8002D658 24010001 */  addiu      $at, $zero, 1
/* 2E25C 8002D65C 1061000B */  beq        $v1, $at, .L8002D68C
/* 2E260 8002D660 3C028009 */   lui       $v0, 0x8009
/* 2E264 8002D664 24010004 */  addiu      $at, $zero, 4
/* 2E268 8002D668 1061000F */  beq        $v1, $at, .L8002D6A8
/* 2E26C 8002D66C 240A000C */   addiu     $t2, $zero, 0xc
/* 2E270 8002D670 24180011 */  addiu      $t8, $zero, 0x11
/* 2E274 8002D674 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E278 8002D678 A038FD22 */  sb         $t8, %lo(pfsErrMsg)($at)
/* 2E27C 8002D67C 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E280 8002D680 2419000A */  addiu      $t9, $zero, 0xa
/* 2E284 8002D684 1000000D */  b          .L8002D6BC
/* 2E288 8002D688 A039FD29 */   sb        $t9, %lo(D_8008FD29)($at)
.L8002D68C:
/* 2E28C 8002D68C 24080008 */  addiu      $t0, $zero, 8
/* 2E290 8002D690 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E294 8002D694 A028FD22 */  sb         $t0, %lo(pfsErrMsg)($at)
/* 2E298 8002D698 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E29C 8002D69C 2409000A */  addiu      $t1, $zero, 0xa
/* 2E2A0 8002D6A0 10000006 */  b          .L8002D6BC
/* 2E2A4 8002D6A4 A029FD29 */   sb        $t1, %lo(D_8008FD29)($at)
.L8002D6A8:
/* 2E2A8 8002D6A8 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E2AC 8002D6AC A02AFD22 */  sb         $t2, %lo(pfsErrMsg)($at)
/* 2E2B0 8002D6B0 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E2B4 8002D6B4 240B000A */  addiu      $t3, $zero, 0xa
/* 2E2B8 8002D6B8 A02BFD29 */  sb         $t3, %lo(D_8008FD29)($at)
.L8002D6BC:
/* 2E2BC 8002D6BC 2442FD20 */  addiu      $v0, $v0, -0x2e0
/* 2E2C0 8002D6C0 944C0000 */  lhu        $t4, ($v0)
/* 2E2C4 8002D6C4 318EFFF8 */  andi       $t6, $t4, 0xfff8
/* 2E2C8 8002D6C8 35D80005 */  ori        $t8, $t6, 5
/* 2E2CC 8002D6CC A44E0000 */  sh         $t6, ($v0)
/* 2E2D0 8002D6D0 A4580000 */  sh         $t8, ($v0)
/* 2E2D4 8002D6D4 3319DFFF */  andi       $t9, $t8, 0xdfff
/* 2E2D8 8002D6D8 10000017 */  b          .L8002D738
/* 2E2DC 8002D6DC A4590000 */   sh        $t9, ($v0)
.L8002D6E0:
/* 2E2E0 8002D6E0 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2E2E4 8002D6E4 2442FD20 */  addiu      $v0, $v0, %lo(flags_DAT_8008fd20)
/* 2E2E8 8002D6E8 94480000 */  lhu        $t0, ($v0)
/* 2E2EC 8002D6EC 240E0016 */  addiu      $t6, $zero, 0x16
/* 2E2F0 8002D6F0 3C018009 */  lui        $at, 0x8009
/* 2E2F4 8002D6F4 310AFFF8 */  andi       $t2, $t0, 0xfff8
/* 2E2F8 8002D6F8 354C0005 */  ori        $t4, $t2, 5
/* 2E2FC 8002D6FC A44A0000 */  sh         $t2, ($v0)
/* 2E300 8002D700 A44C0000 */  sh         $t4, ($v0)
/* 2E304 8002D704 318DDFFF */  andi       $t5, $t4, 0xdfff
/* 2E308 8002D708 A44D0000 */  sh         $t5, ($v0)
/* 2E30C 8002D70C 3C198009 */  lui        $t9, %hi(UNK_SelectedSaveSlot)
/* 2E310 8002D710 8339FD2A */  lb         $t9, %lo(UNK_SelectedSaveSlot)($t9)
/* 2E314 8002D714 A02EFD22 */  sb         $t6, -0x2de($at)
/* 2E318 8002D718 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E31C 8002D71C 240F000A */  addiu      $t7, $zero, 0xa
/* 2E320 8002D720 A02FFD29 */  sb         $t7, %lo(D_8008FD29)($at)
/* 2E324 8002D724 3C018009 */  lui        $at, %hi(D_8008FD31)
/* 2E328 8002D728 00194040 */  sll        $t0, $t9, 1
/* 2E32C 8002D72C 00280821 */  addu       $at, $at, $t0
/* 2E330 8002D730 2418FFFF */  addiu      $t8, $zero, -1
/* 2E334 8002D734 A038FD31 */  sb         $t8, %lo(D_8008FD31)($at)
.L8002D738:
/* 2E338 8002D738 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E33C 8002D73C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E340 8002D740 03E00008 */  jr         $ra
/* 2E344 8002D744 00000000 */   nop

glabel VOID_FUN_8002d748
/* 2E348 8002D748 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E34C 8002D74C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E350 8002D750 3C0E8009 */  lui        $t6, %hi(UNK_SelectedSaveSlot)
/* 2E354 8002D754 81CEFD2A */  lb         $t6, %lo(UNK_SelectedSaveSlot)($t6)
/* 2E358 8002D758 3C058009 */  lui        $a1, 0x8009
/* 2E35C 8002D75C 3C188009 */  lui        $t8, %hi(D_800904E0)
/* 2E360 8002D760 000E7840 */  sll        $t7, $t6, 1
/* 2E364 8002D764 00AF2821 */  addu       $a1, $a1, $t7
/* 2E368 8002D768 271804E0 */  addiu      $t8, $t8, %lo(D_800904E0)
/* 2E36C 8002D76C 3C048009 */  lui        $a0, %hi(controller_no)
/* 2E370 8002D770 80842870 */  lb         $a0, %lo(controller_no)($a0)
/* 2E374 8002D774 AFB80010 */  sw         $t8, 0x10($sp)
/* 2E378 8002D778 80A5FD30 */  lb         $a1, -0x2d0($a1)
/* 2E37C 8002D77C 24060080 */  addiu      $a2, $zero, 0x80
/* 2E380 8002D780 0C00C678 */  jal        func_800319E0
/* 2E384 8002D784 240700E0 */   addiu     $a3, $zero, 0xe0
/* 2E388 8002D788 3C088009 */  lui        $t0, %hi(D_800904E0)
/* 2E38C 8002D78C 250804E0 */  addiu      $t0, $t0, %lo(D_800904E0)
/* 2E390 8002D790 3C198009 */  lui        $t9, %hi(D_80090398)
/* 2E394 8002D794 00402025 */  or         $a0, $v0, $zero
/* 2E398 8002D798 27390398 */  addiu      $t9, $t9, %lo(D_80090398)
/* 2E39C 8002D79C 250B00C0 */  addiu      $t3, $t0, 0xc0
.L8002D7A0:
/* 2E3A0 8002D7A0 89010000 */  lwl        $at, ($t0)
/* 2E3A4 8002D7A4 99010003 */  lwr        $at, 3($t0)
/* 2E3A8 8002D7A8 2508000C */  addiu      $t0, $t0, 0xc
/* 2E3AC 8002D7AC 2739000C */  addiu      $t9, $t9, 0xc
/* 2E3B0 8002D7B0 AF21FFF4 */  sw         $at, -0xc($t9)
/* 2E3B4 8002D7B4 8901FFF8 */  lwl        $at, -8($t0)
/* 2E3B8 8002D7B8 9901FFFB */  lwr        $at, -5($t0)
/* 2E3BC 8002D7BC AF21FFF8 */  sw         $at, -8($t9)
/* 2E3C0 8002D7C0 8901FFFC */  lwl        $at, -4($t0)
/* 2E3C4 8002D7C4 9901FFFF */  lwr        $at, -1($t0)
/* 2E3C8 8002D7C8 150BFFF5 */  bne        $t0, $t3, .L8002D7A0
/* 2E3CC 8002D7CC AF21FFFC */   sw        $at, -4($t9)
/* 2E3D0 8002D7D0 89010000 */  lwl        $at, ($t0)
/* 2E3D4 8002D7D4 99010003 */  lwr        $at, 3($t0)
/* 2E3D8 8002D7D8 890B0004 */  lwl        $t3, 4($t0)
/* 2E3DC 8002D7DC 990B0007 */  lwr        $t3, 7($t0)
/* 2E3E0 8002D7E0 AF210000 */  sw         $at, ($t9)
/* 2E3E4 8002D7E4 3C018009 */  lui        $at, %hi(pfsError)
/* 2E3E8 8002D7E8 10400026 */  beqz       $v0, .L8002D884
/* 2E3EC 8002D7EC AF2B0004 */   sw        $t3, 4($t9)
/* 2E3F0 8002D7F0 0C00C6EC */  jal        func_80031BB0
/* 2E3F4 8002D7F4 AC24FD24 */   sw        $a0, %lo(pfsError)($at)
/* 2E3F8 8002D7F8 00021823 */  negu       $v1, $v0
/* 2E3FC 8002D7FC 24010001 */  addiu      $at, $zero, 1
/* 2E400 8002D800 1061000B */  beq        $v1, $at, .L8002D830
/* 2E404 8002D804 3C028009 */   lui       $v0, 0x8009
/* 2E408 8002D808 24010004 */  addiu      $at, $zero, 4
/* 2E40C 8002D80C 1061000F */  beq        $v1, $at, .L8002D84C
/* 2E410 8002D810 2418000B */   addiu     $t8, $zero, 0xb
/* 2E414 8002D814 240C0011 */  addiu      $t4, $zero, 0x11
/* 2E418 8002D818 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E41C 8002D81C A02CFD22 */  sb         $t4, %lo(pfsErrMsg)($at)
/* 2E420 8002D820 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E424 8002D824 240D000A */  addiu      $t5, $zero, 0xa
/* 2E428 8002D828 1000000D */  b          .L8002D860
/* 2E42C 8002D82C A02DFD29 */   sb        $t5, %lo(D_8008FD29)($at)
.L8002D830:
/* 2E430 8002D830 240E0008 */  addiu      $t6, $zero, 8
/* 2E434 8002D834 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E438 8002D838 A02EFD22 */  sb         $t6, %lo(pfsErrMsg)($at)
/* 2E43C 8002D83C 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E440 8002D840 240F000A */  addiu      $t7, $zero, 0xa
/* 2E444 8002D844 10000006 */  b          .L8002D860
/* 2E448 8002D848 A02FFD29 */   sb        $t7, %lo(D_8008FD29)($at)
.L8002D84C:
/* 2E44C 8002D84C 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E450 8002D850 A038FD22 */  sb         $t8, %lo(pfsErrMsg)($at)
/* 2E454 8002D854 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E458 8002D858 240A000A */  addiu      $t2, $zero, 0xa
/* 2E45C 8002D85C A02AFD29 */  sb         $t2, %lo(D_8008FD29)($at)
.L8002D860:
/* 2E460 8002D860 2442FD20 */  addiu      $v0, $v0, -0x2e0
/* 2E464 8002D864 94490000 */  lhu        $t1, ($v0)
/* 2E468 8002D868 3128FFF8 */  andi       $t0, $t1, 0xfff8
/* 2E46C 8002D86C 350C0005 */  ori        $t4, $t0, 5
/* 2E470 8002D870 A4480000 */  sh         $t0, ($v0)
/* 2E474 8002D874 A44C0000 */  sh         $t4, ($v0)
/* 2E478 8002D878 318DDFFF */  andi       $t5, $t4, 0xdfff
/* 2E47C 8002D87C 1000000B */  b          .L8002D8AC
/* 2E480 8002D880 A44D0000 */   sh        $t5, ($v0)
.L8002D884:
/* 2E484 8002D884 3C048009 */  lui        $a0, %hi(UNK_SelectedSaveSlot)
/* 2E488 8002D888 0C00B901 */  jal        loadSave
/* 2E48C 8002D88C 8084FD2A */   lb        $a0, %lo(UNK_SelectedSaveSlot)($a0)
/* 2E490 8002D890 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2E494 8002D894 2442FD20 */  addiu      $v0, $v0, %lo(flags_DAT_8008fd20)
/* 2E498 8002D898 944E0000 */  lhu        $t6, ($v0)
/* 2E49C 8002D89C 35D80080 */  ori        $t8, $t6, 0x80
/* 2E4A0 8002D8A0 A4580000 */  sh         $t8, ($v0)
/* 2E4A4 8002D8A4 370A8000 */  ori        $t2, $t8, 0x8000
/* 2E4A8 8002D8A8 A44A0000 */  sh         $t2, ($v0)
.L8002D8AC:
/* 2E4AC 8002D8AC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2E4B0 8002D8B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2E4B4 8002D8B4 03E00008 */  jr         $ra
/* 2E4B8 8002D8B8 00000000 */   nop

glabel saveGame
/* 2E4BC 8002D8BC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2E4C0 8002D8C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E4C4 8002D8C4 2409FFFE */  addiu      $t1, $zero, -2
/* 2E4C8 8002D8C8 3C088009 */  lui        $t0, %hi(UNK_SelectedSaveSlot)
/* 2E4CC 8002D8CC 8108FD2A */  lb         $t0, %lo(UNK_SelectedSaveSlot)($t0)
/* 2E4D0 8002D8D0 3C0F8009 */  lui        $t7, %hi(D_8008FD30)
/* 2E4D4 8002D8D4 25EFFD30 */  addiu      $t7, $t7, %lo(D_8008FD30)
/* 2E4D8 8002D8D8 00087040 */  sll        $t6, $t0, 1
/* 2E4DC 8002D8DC 01CF3821 */  addu       $a3, $t6, $t7
/* 2E4E0 8002D8E0 80F80000 */  lb         $t8, ($a3)
/* 2E4E4 8002D8E4 3C198009 */  lui        $t9, %hi(controller_no)
/* 2E4E8 8002D8E8 250D0001 */  addiu      $t5, $t0, 1
/* 2E4EC 8002D8EC 15380035 */  bne        $t1, $t8, .L8002D9C4
/* 2E4F0 8002D8F0 00000000 */   nop
/* 2E4F4 8002D8F4 83392870 */  lb         $t9, %lo(controller_no)($t9)
/* 2E4F8 8002D8F8 3C068009 */  lui        $a2, 0x8009
/* 2E4FC 8002D8FC 2404000F */  addiu      $a0, $zero, 0xf
/* 2E500 8002D900 00195080 */  sll        $t2, $t9, 2
/* 2E504 8002D904 01595021 */  addu       $t2, $t2, $t9
/* 2E508 8002D908 000A5080 */  sll        $t2, $t2, 2
/* 2E50C 8002D90C 00CA3021 */  addu       $a2, $a2, $t2
/* 2E510 8002D910 84C62A38 */  lh         $a2, 0x2a38($a2)
/* 2E514 8002D914 2405007F */  addiu      $a1, $zero, 0x7f
/* 2E518 8002D918 AFB90020 */  sw         $t9, 0x20($sp)
/* 2E51C 8002D91C 30CB000F */  andi       $t3, $a2, 0xf
/* 2E520 8002D920 01603025 */  or         $a2, $t3, $zero
.L8002D924:
/* 2E524 8002D924 3C028009 */  lui        $v0, %hi(D_8008FD30)
/* 2E528 8002D928 00001825 */  or         $v1, $zero, $zero
/* 2E52C 8002D92C 24840001 */  addiu      $a0, $a0, 1
/* 2E530 8002D930 2442FD30 */  addiu      $v0, $v0, %lo(D_8008FD30)
.L8002D934:
/* 2E534 8002D934 804C0001 */  lb         $t4, 1($v0)
/* 2E538 8002D938 24630001 */  addiu      $v1, $v1, 1
/* 2E53C 8002D93C 0066082A */  slt        $at, $v1, $a2
/* 2E540 8002D940 148C0003 */  bne        $a0, $t4, .L8002D950
/* 2E544 8002D944 00000000 */   nop
/* 2E548 8002D948 10000003 */  b          .L8002D958
/* 2E54C 8002D94C 00A01825 */   or        $v1, $a1, $zero
.L8002D950:
/* 2E550 8002D950 1420FFF8 */  bnez       $at, .L8002D934
/* 2E554 8002D954 24420002 */   addiu     $v0, $v0, 2
.L8002D958:
/* 2E558 8002D958 10650003 */  beq        $v1, $a1, .L8002D968
/* 2E55C 8002D95C 00000000 */   nop
/* 2E560 8002D960 00803025 */  or         $a2, $a0, $zero
/* 2E564 8002D964 2404FFFF */  addiu      $a0, $zero, -1
.L8002D968:
/* 2E568 8002D968 0481FFEE */  bgez       $a0, .L8002D924
/* 2E56C 8002D96C 00000000 */   nop
/* 2E570 8002D970 29A10010 */  slti       $at, $t5, 0x10
/* 2E574 8002D974 10200002 */  beqz       $at, .L8002D980
/* 2E578 8002D978 A0E60001 */   sb        $a2, 1($a3)
/* 2E57C 8002D97C A0E90003 */  sb         $t1, 3($a3)
.L8002D980:
/* 2E580 8002D980 8FA40020 */  lw         $a0, 0x20($sp)
/* 2E584 8002D984 0C00C624 */  jal        func_80031890
/* 2E588 8002D988 30C500FF */   andi      $a1, $a2, 0xff
/* 2E58C 8002D98C 04400008 */  bltz       $v0, .L8002D9B0
/* 2E590 8002D990 3C088009 */   lui       $t0, 0x8009
/* 2E594 8002D994 3C088009 */  lui        $t0, %hi(UNK_SelectedSaveSlot)
/* 2E598 8002D998 8108FD2A */  lb         $t0, %lo(UNK_SelectedSaveSlot)($t0)
/* 2E59C 8002D99C 3C018009 */  lui        $at, %hi(D_8008FD30)
/* 2E5A0 8002D9A0 00087040 */  sll        $t6, $t0, 1
/* 2E5A4 8002D9A4 002E0821 */  addu       $at, $at, $t6
/* 2E5A8 8002D9A8 10000002 */  b          .L8002D9B4
/* 2E5AC 8002D9AC A022FD30 */   sb        $v0, %lo(D_8008FD30)($at)
.L8002D9B0:
/* 2E5B0 8002D9B0 8108FD2A */  lb         $t0, -0x2d6($t0)
.L8002D9B4:
/* 2E5B4 8002D9B4 0C00B88D */  jal        saveGame
/* 2E5B8 8002D9B8 01002025 */   or        $a0, $t0, $zero
/* 2E5BC 8002D9BC 10000003 */  b          .L8002D9CC
/* 2E5C0 8002D9C0 00000000 */   nop
.L8002D9C4:
/* 2E5C4 8002D9C4 0C00B88D */  jal        saveGame
/* 2E5C8 8002D9C8 01002025 */   or        $a0, $t0, $zero
.L8002D9CC:
/* 2E5CC 8002D9CC 3C088009 */  lui        $t0, %hi(UNK_SelectedSaveSlot)
/* 2E5D0 8002D9D0 8108FD2A */  lb         $t0, %lo(UNK_SelectedSaveSlot)($t0)
/* 2E5D4 8002D9D4 3C198009 */  lui        $t9, %hi(D_8008FD58)
/* 2E5D8 8002D9D8 2739FD58 */  addiu      $t9, $t9, %lo(D_8008FD58)
/* 2E5DC 8002D9DC 0008C080 */  sll        $t8, $t0, 2
/* 2E5E0 8002D9E0 0308C023 */  subu       $t8, $t8, $t0
/* 2E5E4 8002D9E4 0018C0C0 */  sll        $t8, $t8, 3
/* 2E5E8 8002D9E8 0308C021 */  addu       $t8, $t8, $t0
/* 2E5EC 8002D9EC 0018C080 */  sll        $t8, $t8, 2
/* 2E5F0 8002D9F0 3C058009 */  lui        $a1, 0x8009
/* 2E5F4 8002D9F4 00087840 */  sll        $t7, $t0, 1
/* 2E5F8 8002D9F8 00AF2821 */  addu       $a1, $a1, $t7
/* 2E5FC 8002D9FC 03195021 */  addu       $t2, $t8, $t9
/* 2E600 8002DA00 3C048009 */  lui        $a0, %hi(controller_no)
/* 2E604 8002DA04 80842870 */  lb         $a0, %lo(controller_no)($a0)
/* 2E608 8002DA08 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2E60C 8002DA0C 80A5FD30 */  lb         $a1, -0x2d0($a1)
/* 2E610 8002DA10 00003025 */  or         $a2, $zero, $zero
/* 2E614 8002DA14 0C00C691 */  jal        func_80031A44
/* 2E618 8002DA18 24070080 */   addiu     $a3, $zero, 0x80
/* 2E61C 8002DA1C 10400027 */  beqz       $v0, .L8002DABC
/* 2E620 8002DA20 00402025 */   or        $a0, $v0, $zero
/* 2E624 8002DA24 3C018009 */  lui        $at, %hi(pfsError)
/* 2E628 8002DA28 0C00C6EC */  jal        func_80031BB0
/* 2E62C 8002DA2C AC22FD24 */   sw        $v0, %lo(pfsError)($at)
/* 2E630 8002DA30 00021823 */  negu       $v1, $v0
/* 2E634 8002DA34 24010001 */  addiu      $at, $zero, 1
/* 2E638 8002DA38 1061000B */  beq        $v1, $at, .L8002DA68
/* 2E63C 8002DA3C 3C028009 */   lui       $v0, 0x8009
/* 2E640 8002DA40 24010004 */  addiu      $at, $zero, 4
/* 2E644 8002DA44 1061000F */  beq        $v1, $at, .L8002DA84
/* 2E648 8002DA48 240F000E */   addiu     $t7, $zero, 0xe
/* 2E64C 8002DA4C 240B0011 */  addiu      $t3, $zero, 0x11
/* 2E650 8002DA50 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E654 8002DA54 A02BFD22 */  sb         $t3, %lo(pfsErrMsg)($at)
/* 2E658 8002DA58 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E65C 8002DA5C 240C000A */  addiu      $t4, $zero, 0xa
/* 2E660 8002DA60 1000000D */  b          .L8002DA98
/* 2E664 8002DA64 A02CFD29 */   sb        $t4, %lo(D_8008FD29)($at)
.L8002DA68:
/* 2E668 8002DA68 240D000D */  addiu      $t5, $zero, 0xd
/* 2E66C 8002DA6C 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E670 8002DA70 A02DFD22 */  sb         $t5, %lo(pfsErrMsg)($at)
/* 2E674 8002DA74 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E678 8002DA78 240E000A */  addiu      $t6, $zero, 0xa
/* 2E67C 8002DA7C 10000006 */  b          .L8002DA98
/* 2E680 8002DA80 A02EFD29 */   sb        $t6, %lo(D_8008FD29)($at)
.L8002DA84:
/* 2E684 8002DA84 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E688 8002DA88 A02FFD22 */  sb         $t7, %lo(pfsErrMsg)($at)
/* 2E68C 8002DA8C 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E690 8002DA90 2418000A */  addiu      $t8, $zero, 0xa
/* 2E694 8002DA94 A038FD29 */  sb         $t8, %lo(D_8008FD29)($at)
.L8002DA98:
/* 2E698 8002DA98 2442FD20 */  addiu      $v0, $v0, -0x2e0
/* 2E69C 8002DA9C 94590000 */  lhu        $t9, ($v0)
/* 2E6A0 8002DAA0 332BFFF8 */  andi       $t3, $t9, 0xfff8
/* 2E6A4 8002DAA4 356D0005 */  ori        $t5, $t3, 5
/* 2E6A8 8002DAA8 A44B0000 */  sh         $t3, ($v0)
/* 2E6AC 8002DAAC A44D0000 */  sh         $t5, ($v0)
/* 2E6B0 8002DAB0 31AEDFFF */  andi       $t6, $t5, 0xdfff
/* 2E6B4 8002DAB4 10000046 */  b          .L8002DBD0
/* 2E6B8 8002DAB8 A44E0000 */   sh        $t6, ($v0)
.L8002DABC:
/* 2E6BC 8002DABC 3C0F8009 */  lui        $t7, %hi(UNK_SelectedSaveSlot)
/* 2E6C0 8002DAC0 81EFFD2A */  lb         $t7, %lo(UNK_SelectedSaveSlot)($t7)
/* 2E6C4 8002DAC4 3C058009 */  lui        $a1, 0x8009
/* 2E6C8 8002DAC8 3C198009 */  lui        $t9, %hi(D_80090398)
/* 2E6CC 8002DACC 000FC040 */  sll        $t8, $t7, 1
/* 2E6D0 8002DAD0 00B82821 */  addu       $a1, $a1, $t8
/* 2E6D4 8002DAD4 27390398 */  addiu      $t9, $t9, %lo(D_80090398)
/* 2E6D8 8002DAD8 3C048009 */  lui        $a0, %hi(controller_no)
/* 2E6DC 8002DADC 80842870 */  lb         $a0, %lo(controller_no)($a0)
/* 2E6E0 8002DAE0 AFB90010 */  sw         $t9, 0x10($sp)
/* 2E6E4 8002DAE4 80A5FD30 */  lb         $a1, -0x2d0($a1)
/* 2E6E8 8002DAE8 24060080 */  addiu      $a2, $zero, 0x80
/* 2E6EC 8002DAEC 0C00C691 */  jal        func_80031A44
/* 2E6F0 8002DAF0 240700E0 */   addiu     $a3, $zero, 0xe0
/* 2E6F4 8002DAF4 10400027 */  beqz       $v0, .L8002DB94
/* 2E6F8 8002DAF8 00402025 */   or        $a0, $v0, $zero
/* 2E6FC 8002DAFC 3C018009 */  lui        $at, %hi(pfsError)
/* 2E700 8002DB00 0C00C6EC */  jal        func_80031BB0
/* 2E704 8002DB04 AC22FD24 */   sw        $v0, %lo(pfsError)($at)
/* 2E708 8002DB08 00021823 */  negu       $v1, $v0
/* 2E70C 8002DB0C 24010001 */  addiu      $at, $zero, 1
/* 2E710 8002DB10 1061000B */  beq        $v1, $at, .L8002DB40
/* 2E714 8002DB14 3C028009 */   lui       $v0, 0x8009
/* 2E718 8002DB18 24010004 */  addiu      $at, $zero, 4
/* 2E71C 8002DB1C 1061000F */  beq        $v1, $at, .L8002DB5C
/* 2E720 8002DB20 240E000E */   addiu     $t6, $zero, 0xe
/* 2E724 8002DB24 240A0011 */  addiu      $t2, $zero, 0x11
/* 2E728 8002DB28 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E72C 8002DB2C A02AFD22 */  sb         $t2, %lo(pfsErrMsg)($at)
/* 2E730 8002DB30 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E734 8002DB34 240B000A */  addiu      $t3, $zero, 0xa
/* 2E738 8002DB38 1000000D */  b          .L8002DB70
/* 2E73C 8002DB3C A02BFD29 */   sb        $t3, %lo(D_8008FD29)($at)
.L8002DB40:
/* 2E740 8002DB40 240C000D */  addiu      $t4, $zero, 0xd
/* 2E744 8002DB44 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E748 8002DB48 A02CFD22 */  sb         $t4, %lo(pfsErrMsg)($at)
/* 2E74C 8002DB4C 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E750 8002DB50 240D000A */  addiu      $t5, $zero, 0xa
/* 2E754 8002DB54 10000006 */  b          .L8002DB70
/* 2E758 8002DB58 A02DFD29 */   sb        $t5, %lo(D_8008FD29)($at)
.L8002DB5C:
/* 2E75C 8002DB5C 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E760 8002DB60 A02EFD22 */  sb         $t6, %lo(pfsErrMsg)($at)
/* 2E764 8002DB64 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E768 8002DB68 240F000A */  addiu      $t7, $zero, 0xa
/* 2E76C 8002DB6C A02FFD29 */  sb         $t7, %lo(D_8008FD29)($at)
.L8002DB70:
/* 2E770 8002DB70 2442FD20 */  addiu      $v0, $v0, -0x2e0
/* 2E774 8002DB74 94580000 */  lhu        $t8, ($v0)
/* 2E778 8002DB78 330AFFF8 */  andi       $t2, $t8, 0xfff8
/* 2E77C 8002DB7C 354C0005 */  ori        $t4, $t2, 5
/* 2E780 8002DB80 A44A0000 */  sh         $t2, ($v0)
/* 2E784 8002DB84 A44C0000 */  sh         $t4, ($v0)
/* 2E788 8002DB88 318DDFFF */  andi       $t5, $t4, 0xdfff
/* 2E78C 8002DB8C 10000010 */  b          .L8002DBD0
/* 2E790 8002DB90 A44D0000 */   sh        $t5, ($v0)
.L8002DB94:
/* 2E794 8002DB94 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2E798 8002DB98 2442FD20 */  addiu      $v0, $v0, %lo(flags_DAT_8008fd20)
/* 2E79C 8002DB9C 944E0000 */  lhu        $t6, ($v0)
/* 2E7A0 8002DBA0 240C0017 */  addiu      $t4, $zero, 0x17
/* 2E7A4 8002DBA4 3C018009 */  lui        $at, 0x8009
/* 2E7A8 8002DBA8 31D8FFF8 */  andi       $t8, $t6, 0xfff8
/* 2E7AC 8002DBAC 370A0005 */  ori        $t2, $t8, 5
/* 2E7B0 8002DBB0 A4580000 */  sh         $t8, ($v0)
/* 2E7B4 8002DBB4 A44A0000 */  sh         $t2, ($v0)
/* 2E7B8 8002DBB8 314BDFFF */  andi       $t3, $t2, 0xdfff
/* 2E7BC 8002DBBC A44B0000 */  sh         $t3, ($v0)
/* 2E7C0 8002DBC0 A02CFD22 */  sb         $t4, -0x2de($at)
/* 2E7C4 8002DBC4 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E7C8 8002DBC8 240D000A */  addiu      $t5, $zero, 0xa
/* 2E7CC 8002DBCC A02DFD29 */  sb         $t5, %lo(D_8008FD29)($at)
.L8002DBD0:
/* 2E7D0 8002DBD0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2E7D4 8002DBD4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 2E7D8 8002DBD8 03E00008 */  jr         $ra
/* 2E7DC 8002DBDC 00000000 */   nop

glabel VOID_FUN_8002dbe0
/* 2E7E0 8002DBE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E7E4 8002DBE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E7E8 8002DBE8 3C048007 */  lui        $a0, 0x8007
/* 2E7EC 8002DBEC 3C058009 */  lui        $a1, %hi(UNK_SelectedSaveSlot)
/* 2E7F0 8002DBF0 3C068009 */  lui        $a2, %hi(pfsError)
/* 2E7F4 8002DBF4 8CC6FD24 */  lw         $a2, %lo(pfsError)($a2)
/* 2E7F8 8002DBF8 80A5FD2A */  lb         $a1, %lo(UNK_SelectedSaveSlot)($a1)
/* 2E7FC 8002DBFC 0C00E9EF */  jal        emptyDEBUGprintPfsErrorData
/* 2E800 8002DC00 24841750 */   addiu     $a0, $a0, 0x1750
/* 2E804 8002DC04 3C0E8009 */  lui        $t6, %hi(UNK_SelectedSaveSlot)
/* 2E808 8002DC08 81CEFD2A */  lb         $t6, %lo(UNK_SelectedSaveSlot)($t6)
/* 2E80C 8002DC0C 3C048009 */  lui        $a0, %hi(D_8008FD30)
/* 2E810 8002DC10 3C058009 */  lui        $a1, %hi(pfsError)
/* 2E814 8002DC14 000E7840 */  sll        $t7, $t6, 1
/* 2E818 8002DC18 008F2021 */  addu       $a0, $a0, $t7
/* 2E81C 8002DC1C 8084FD30 */  lb         $a0, %lo(D_8008FD30)($a0)
/* 2E820 8002DC20 0C00C6B3 */  jal        func_80031ACC
/* 2E824 8002DC24 8CA5FD24 */   lw        $a1, %lo(pfsError)($a1)
/* 2E828 8002DC28 10400027 */  beqz       $v0, .L8002DCC8
/* 2E82C 8002DC2C 00402025 */   or        $a0, $v0, $zero
/* 2E830 8002DC30 3C018009 */  lui        $at, %hi(pfsError)
/* 2E834 8002DC34 0C00C6EC */  jal        func_80031BB0
/* 2E838 8002DC38 AC22FD24 */   sw        $v0, %lo(pfsError)($at)
/* 2E83C 8002DC3C 00021823 */  negu       $v1, $v0
/* 2E840 8002DC40 24010001 */  addiu      $at, $zero, 1
/* 2E844 8002DC44 1061000B */  beq        $v1, $at, .L8002DC74
/* 2E848 8002DC48 3C028009 */   lui       $v0, 0x8009
/* 2E84C 8002DC4C 24010003 */  addiu      $at, $zero, 3
/* 2E850 8002DC50 1061000F */  beq        $v1, $at, .L8002DC90
/* 2E854 8002DC54 240A0010 */   addiu     $t2, $zero, 0x10
/* 2E858 8002DC58 24180011 */  addiu      $t8, $zero, 0x11
/* 2E85C 8002DC5C 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E860 8002DC60 A038FD22 */  sb         $t8, %lo(pfsErrMsg)($at)
/* 2E864 8002DC64 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E868 8002DC68 2419000A */  addiu      $t9, $zero, 0xa
/* 2E86C 8002DC6C 1000000D */  b          .L8002DCA4
/* 2E870 8002DC70 A039FD29 */   sb        $t9, %lo(D_8008FD29)($at)
.L8002DC74:
/* 2E874 8002DC74 24080008 */  addiu      $t0, $zero, 8
/* 2E878 8002DC78 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E87C 8002DC7C A028FD22 */  sb         $t0, %lo(pfsErrMsg)($at)
/* 2E880 8002DC80 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E884 8002DC84 2409000A */  addiu      $t1, $zero, 0xa
/* 2E888 8002DC88 10000006 */  b          .L8002DCA4
/* 2E88C 8002DC8C A029FD29 */   sb        $t1, %lo(D_8008FD29)($at)
.L8002DC90:
/* 2E890 8002DC90 3C018009 */  lui        $at, %hi(pfsErrMsg)
/* 2E894 8002DC94 A02AFD22 */  sb         $t2, %lo(pfsErrMsg)($at)
/* 2E898 8002DC98 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E89C 8002DC9C 240B000A */  addiu      $t3, $zero, 0xa
/* 2E8A0 8002DCA0 A02BFD29 */  sb         $t3, %lo(D_8008FD29)($at)
.L8002DCA4:
/* 2E8A4 8002DCA4 2442FD20 */  addiu      $v0, $v0, -0x2e0
/* 2E8A8 8002DCA8 944C0000 */  lhu        $t4, ($v0)
/* 2E8AC 8002DCAC 318EFFF8 */  andi       $t6, $t4, 0xfff8
/* 2E8B0 8002DCB0 31D8BFFF */  andi       $t8, $t6, 0xbfff
/* 2E8B4 8002DCB4 A44E0000 */  sh         $t6, ($v0)
/* 2E8B8 8002DCB8 A4580000 */  sh         $t8, ($v0)
/* 2E8BC 8002DCBC 37191000 */  ori        $t9, $t8, 0x1000
/* 2E8C0 8002DCC0 10000011 */  b          .L8002DD08
/* 2E8C4 8002DCC4 A4590000 */   sh        $t9, ($v0)
.L8002DCC8:
/* 2E8C8 8002DCC8 3C028009 */  lui        $v0, %hi(flags_DAT_8008fd20)
/* 2E8CC 8002DCCC 2442FD20 */  addiu      $v0, $v0, %lo(flags_DAT_8008fd20)
/* 2E8D0 8002DCD0 94480000 */  lhu        $t0, ($v0)
/* 2E8D4 8002DCD4 3C038009 */  lui        $v1, %hi(D_8008FD2C)
/* 2E8D8 8002DCD8 2463FD2C */  addiu      $v1, $v1, %lo(D_8008FD2C)
/* 2E8DC 8002DCDC 310ADFFF */  andi       $t2, $t0, 0xdfff
/* 2E8E0 8002DCE0 90780000 */  lbu        $t8, ($v1)
/* 2E8E4 8002DCE4 314CFFF8 */  andi       $t4, $t2, 0xfff8
/* 2E8E8 8002DCE8 A44A0000 */  sh         $t2, ($v0)
/* 2E8EC 8002DCEC 318EBFFF */  andi       $t6, $t4, 0xbfff
/* 2E8F0 8002DCF0 A44C0000 */  sh         $t4, ($v0)
/* 2E8F4 8002DCF4 A44E0000 */  sh         $t6, ($v0)
/* 2E8F8 8002DCF8 35CF1000 */  ori        $t7, $t6, 0x1000
/* 2E8FC 8002DCFC 27190001 */  addiu      $t9, $t8, 1
/* 2E900 8002DD00 A44F0000 */  sh         $t7, ($v0)
/* 2E904 8002DD04 A0790000 */  sb         $t9, ($v1)
.L8002DD08:
/* 2E908 8002DD08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E90C 8002DD0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E910 8002DD10 03E00008 */  jr         $ra
/* 2E914 8002DD14 00000000 */   nop

glabel controllerFunc1
/* 2E918 8002DD18 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2E91C 8002DD1C AFBF0044 */  sw         $ra, 0x44($sp)
/* 2E920 8002DD20 AFBE0040 */  sw         $fp, 0x40($sp)
/* 2E924 8002DD24 AFB7003C */  sw         $s7, 0x3c($sp)
/* 2E928 8002DD28 AFB60038 */  sw         $s6, 0x38($sp)
/* 2E92C 8002DD2C AFB50034 */  sw         $s5, 0x34($sp)
/* 2E930 8002DD30 AFB40030 */  sw         $s4, 0x30($sp)
/* 2E934 8002DD34 AFB3002C */  sw         $s3, 0x2c($sp)
/* 2E938 8002DD38 AFB20028 */  sw         $s2, 0x28($sp)
/* 2E93C 8002DD3C AFB10024 */  sw         $s1, 0x24($sp)
/* 2E940 8002DD40 AFB00020 */  sw         $s0, 0x20($sp)
/* 2E944 8002DD44 3C108009 */  lui        $s0, %hi(D_8008FD30)
/* 2E948 8002DD48 3C038009 */  lui        $v1, %hi(D_8008FD52)
/* 2E94C 8002DD4C 0000F025 */  or         $fp, $zero, $zero
/* 2E950 8002DD50 2463FD52 */  addiu      $v1, $v1, %lo(D_8008FD52)
/* 2E954 8002DD54 2610FD30 */  addiu      $s0, $s0, %lo(D_8008FD30)
/* 2E958 8002DD58 2402FFFF */  addiu      $v0, $zero, -1
.L8002DD5C:
/* 2E95C 8002DD5C 26100002 */  addiu      $s0, $s0, 2
/* 2E960 8002DD60 0203082B */  sltu       $at, $s0, $v1
/* 2E964 8002DD64 A202FFFE */  sb         $v0, -2($s0)
/* 2E968 8002DD68 1420FFFC */  bnez       $at, .L8002DD5C
/* 2E96C 8002DD6C A202FFFF */   sb        $v0, -1($s0)
/* 2E970 8002DD70 3C088009 */  lui        $t0, %hi(controller_no)
/* 2E974 8002DD74 81082870 */  lb         $t0, %lo(controller_no)($t0)
/* 2E978 8002DD78 3C0F8009 */  lui        $t7, %hi(D_80092A38)
/* 2E97C 8002DD7C 25EF2A38 */  addiu      $t7, $t7, %lo(D_80092A38)
/* 2E980 8002DD80 00087080 */  sll        $t6, $t0, 2
/* 2E984 8002DD84 01C87021 */  addu       $t6, $t6, $t0
/* 2E988 8002DD88 000E7080 */  sll        $t6, $t6, 2
/* 2E98C 8002DD8C 3C078009 */  lui        $a3, %hi(D_8008FD30)
/* 2E990 8002DD90 00002825 */  or         $a1, $zero, $zero
/* 2E994 8002DD94 24E7FD30 */  addiu      $a3, $a3, %lo(D_8008FD30)
/* 2E998 8002DD98 01CF2021 */  addu       $a0, $t6, $t7
/* 2E99C 8002DD9C 00008825 */  or         $s1, $zero, $zero
/* 2E9A0 8002DDA0 2406007F */  addiu      $a2, $zero, 0x7f
.L8002DDA4:
/* 2E9A4 8002DDA4 80830002 */  lb         $v1, 2($a0)
/* 2E9A8 8002DDA8 50C30008 */  beql       $a2, $v1, .L8002DDCC
/* 2E9AC 8002DDAC 26310001 */   addiu     $s1, $s1, 1
/* 2E9B0 8002DDB0 04600005 */  bltz       $v1, .L8002DDC8
/* 2E9B4 8002DDB4 0005C040 */   sll       $t8, $a1, 1
/* 2E9B8 8002DDB8 00F81021 */  addu       $v0, $a3, $t8
/* 2E9BC 8002DDBC A0510000 */  sb         $s1, ($v0)
/* 2E9C0 8002DDC0 A0430001 */  sb         $v1, 1($v0)
/* 2E9C4 8002DDC4 24A50001 */  addiu      $a1, $a1, 1
.L8002DDC8:
/* 2E9C8 8002DDC8 26310001 */  addiu      $s1, $s1, 1
.L8002DDCC:
/* 2E9CC 8002DDCC 2A210010 */  slti       $at, $s1, 0x10
/* 2E9D0 8002DDD0 1420FFF4 */  bnez       $at, .L8002DDA4
/* 2E9D4 8002DDD4 24840001 */   addiu     $a0, $a0, 1
/* 2E9D8 8002DDD8 3C198009 */  lui        $t9, %hi(flags_DAT_8008fd0c)
/* 2E9DC 8002DDDC 9739FD0C */  lhu        $t9, %lo(flags_DAT_8008fd0c)($t9)
/* 2E9E0 8002DDE0 3C108009 */  lui        $s0, %hi(D_8008FD30)
/* 2E9E4 8002DDE4 2610FD30 */  addiu      $s0, $s0, %lo(D_8008FD30)
/* 2E9E8 8002DDE8 33290004 */  andi       $t1, $t9, 4
/* 2E9EC 8002DDEC 11200012 */  beqz       $t1, .L8002DE38
/* 2E9F0 8002DDF0 00008825 */   or        $s1, $zero, $zero
/* 2E9F4 8002DDF4 00085080 */  sll        $t2, $t0, 2
/* 2E9F8 8002DDF8 01485021 */  addu       $t2, $t2, $t0
/* 2E9FC 8002DDFC 3C0B8009 */  lui        $t3, %hi(D_80092A38)
/* 2EA00 8002DE00 256B2A38 */  addiu      $t3, $t3, %lo(D_80092A38)
/* 2EA04 8002DE04 000A5080 */  sll        $t2, $t2, 2
/* 2EA08 8002DE08 014B1021 */  addu       $v0, $t2, $t3
/* 2EA0C 8002DE0C 904C0013 */  lbu        $t4, 0x13($v0)
/* 2EA10 8002DE10 29810002 */  slti       $at, $t4, 2
/* 2EA14 8002DE14 14200008 */  bnez       $at, .L8002DE38
/* 2EA18 8002DE18 00000000 */   nop
/* 2EA1C 8002DE1C 844D0000 */  lh         $t5, ($v0)
/* 2EA20 8002DE20 0005C040 */  sll        $t8, $a1, 1
/* 2EA24 8002DE24 00F8C821 */  addu       $t9, $a3, $t8
/* 2EA28 8002DE28 31AE2000 */  andi       $t6, $t5, 0x2000
/* 2EA2C 8002DE2C 15C00002 */  bnez       $t6, .L8002DE38
/* 2EA30 8002DE30 240FFFFE */   addiu     $t7, $zero, -2
/* 2EA34 8002DE34 A32F0000 */  sb         $t7, ($t9)
.L8002DE38:
/* 2EA38 8002DE38 3C018009 */  lui        $at, %hi(UNK_SelectedSaveSlot)
/* 2EA3C 8002DE3C 3C168009 */  lui        $s6, 0x8009
/* 2EA40 8002DE40 3C158009 */  lui        $s5, 0x8009
/* 2EA44 8002DE44 3C148009 */  lui        $s4, %hi(D_80090460)
/* 2EA48 8002DE48 3C128009 */  lui        $s2, %hi(flags_DAT_8008fd20)
/* 2EA4C 8002DE4C A020FD2A */  sb         $zero, %lo(UNK_SelectedSaveSlot)($at)
/* 2EA50 8002DE50 2652FD20 */  addiu      $s2, $s2, %lo(flags_DAT_8008fd20)
/* 2EA54 8002DE54 26940460 */  addiu      $s4, $s4, %lo(D_80090460)
/* 2EA58 8002DE58 26B5FD22 */  addiu      $s5, $s5, -0x2de
/* 2EA5C 8002DE5C 26D6FD29 */  addiu      $s6, $s6, -0x2d7
/* 2EA60 8002DE60 2417000A */  addiu      $s7, $zero, 0xa
.L8002DE64:
/* 2EA64 8002DE64 82050000 */  lb         $a1, ($s0)
/* 2EA68 8002DE68 3C048009 */  lui        $a0, 0x8009
/* 2EA6C 8002DE6C 00003025 */  or         $a2, $zero, $zero
/* 2EA70 8002DE70 04A0002E */  bltz       $a1, .L8002DF2C
/* 2EA74 8002DE74 24070080 */   addiu     $a3, $zero, 0x80
/* 2EA78 8002DE78 00114880 */  sll        $t1, $s1, 2
/* 2EA7C 8002DE7C 01314823 */  subu       $t1, $t1, $s1
/* 2EA80 8002DE80 000948C0 */  sll        $t1, $t1, 3
/* 2EA84 8002DE84 01314821 */  addu       $t1, $t1, $s1
/* 2EA88 8002DE88 3C0A8009 */  lui        $t2, %hi(D_8008FD58)
/* 2EA8C 8002DE8C 254AFD58 */  addiu      $t2, $t2, %lo(D_8008FD58)
/* 2EA90 8002DE90 00094880 */  sll        $t1, $t1, 2
/* 2EA94 8002DE94 012A9821 */  addu       $s3, $t1, $t2
/* 2EA98 8002DE98 80842870 */  lb         $a0, 0x2870($a0)
/* 2EA9C 8002DE9C 0C00C678 */  jal        func_800319E0
/* 2EAA0 8002DEA0 AFB40010 */   sw        $s4, 0x10($sp)
/* 2EAA4 8002DEA4 02806825 */  or         $t5, $s4, $zero
/* 2EAA8 8002DEA8 02607025 */  or         $t6, $s3, $zero
/* 2EAAC 8002DEAC 268C0060 */  addiu      $t4, $s4, 0x60
.L8002DEB0:
/* 2EAB0 8002DEB0 8DA10000 */  lw         $at, ($t5)
/* 2EAB4 8002DEB4 25AD000C */  addiu      $t5, $t5, 0xc
/* 2EAB8 8002DEB8 25CE000C */  addiu      $t6, $t6, 0xc
/* 2EABC 8002DEBC ADC1FFF4 */  sw         $at, -0xc($t6)
/* 2EAC0 8002DEC0 8DA1FFF8 */  lw         $at, -8($t5)
/* 2EAC4 8002DEC4 ADC1FFF8 */  sw         $at, -8($t6)
/* 2EAC8 8002DEC8 8DA1FFFC */  lw         $at, -4($t5)
/* 2EACC 8002DECC 15ACFFF8 */  bne        $t5, $t4, .L8002DEB0
/* 2EAD0 8002DED0 ADC1FFFC */   sw        $at, -4($t6)
/* 2EAD4 8002DED4 8DA10000 */  lw         $at, ($t5)
/* 2EAD8 8002DED8 03C02025 */  or         $a0, $fp, $zero
/* 2EADC 8002DEDC 10400013 */  beqz       $v0, .L8002DF2C
/* 2EAE0 8002DEE0 ADC10000 */   sw        $at, ($t6)
/* 2EAE4 8002DEE4 3C018009 */  lui        $at, %hi(pfsError)
/* 2EAE8 8002DEE8 0C00C6EC */  jal        func_80031BB0
/* 2EAEC 8002DEEC AC3EFD24 */   sw        $fp, %lo(pfsError)($at)
/* 2EAF0 8002DEF0 0002F023 */  negu       $fp, $v0
/* 2EAF4 8002DEF4 24010001 */  addiu      $at, $zero, 1
/* 2EAF8 8002DEF8 17C10005 */  bne        $fp, $at, .L8002DF10
/* 2EAFC 8002DEFC 240F0011 */   addiu     $t7, $zero, 0x11
/* 2EB00 8002DF00 24180008 */  addiu      $t8, $zero, 8
/* 2EB04 8002DF04 A2B80000 */  sb         $t8, ($s5)
/* 2EB08 8002DF08 10000003 */  b          .L8002DF18
/* 2EB0C 8002DF0C A2D70000 */   sb        $s7, ($s6)
.L8002DF10:
/* 2EB10 8002DF10 A2AF0000 */  sb         $t7, ($s5)
/* 2EB14 8002DF14 A2D70000 */  sb         $s7, ($s6)
.L8002DF18:
/* 2EB18 8002DF18 96590000 */  lhu        $t9, ($s2)
/* 2EB1C 8002DF1C 332AFFF8 */  andi       $t2, $t9, 0xfff8
/* 2EB20 8002DF20 A64A0000 */  sh         $t2, ($s2)
/* 2EB24 8002DF24 354B0005 */  ori        $t3, $t2, 5
/* 2EB28 8002DF28 A64B0000 */  sh         $t3, ($s2)
.L8002DF2C:
/* 2EB2C 8002DF2C 26310001 */  addiu      $s1, $s1, 1
/* 2EB30 8002DF30 24010010 */  addiu      $at, $zero, 0x10
/* 2EB34 8002DF34 1621FFCB */  bne        $s1, $at, .L8002DE64
/* 2EB38 8002DF38 26100002 */   addiu     $s0, $s0, 2
/* 2EB3C 8002DF3C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 2EB40 8002DF40 8FB00020 */  lw         $s0, 0x20($sp)
/* 2EB44 8002DF44 8FB10024 */  lw         $s1, 0x24($sp)
/* 2EB48 8002DF48 8FB20028 */  lw         $s2, 0x28($sp)
/* 2EB4C 8002DF4C 8FB3002C */  lw         $s3, 0x2c($sp)
/* 2EB50 8002DF50 8FB40030 */  lw         $s4, 0x30($sp)
/* 2EB54 8002DF54 8FB50034 */  lw         $s5, 0x34($sp)
/* 2EB58 8002DF58 8FB60038 */  lw         $s6, 0x38($sp)
/* 2EB5C 8002DF5C 8FB7003C */  lw         $s7, 0x3c($sp)
/* 2EB60 8002DF60 8FBE0040 */  lw         $fp, 0x40($sp)
/* 2EB64 8002DF64 03E00008 */  jr         $ra
/* 2EB68 8002DF68 27BD0048 */   addiu     $sp, $sp, 0x48

glabel VOID_FUN_8002df6c
/* 2EB6C 8002DF6C 3C058008 */  lui        $a1, %hi(UNK_DisplayListCommand)
/* 2EB70 8002DF70 3C068009 */  lui        $a2, %hi(flags_DAT_8008fd0c)
/* 2EB74 8002DF74 24C6FD0C */  addiu      $a2, $a2, %lo(flags_DAT_8008fd0c)
/* 2EB78 8002DF78 24A5B2FC */  addiu      $a1, $a1, %lo(UNK_DisplayListCommand)
/* 2EB7C 8002DF7C 8CA30000 */  lw         $v1, ($a1)
/* 2EB80 8002DF80 3C188006 */  lui        $t8, %hi(someDisplayList)
/* 2EB84 8002DF84 2718FAA0 */  addiu      $t8, $t8, %lo(someDisplayList)
/* 2EB88 8002DF88 246E0008 */  addiu      $t6, $v1, 8
/* 2EB8C 8002DF8C ACAE0000 */  sw         $t6, ($a1)
/* 2EB90 8002DF90 3C0F0600 */  lui        $t7, 0x600
/* 2EB94 8002DF94 AC6F0000 */  sw         $t7, ($v1)
/* 2EB98 8002DF98 AC780004 */  sw         $t8, 4($v1)
/* 2EB9C 8002DF9C 8CA30000 */  lw         $v1, ($a1)
/* 2EBA0 8002DFA0 3C08BA00 */  lui        $t0, 0xba00
/* 2EBA4 8002DFA4 35080E02 */  ori        $t0, $t0, 0xe02
/* 2EBA8 8002DFA8 24790008 */  addiu      $t9, $v1, 8
/* 2EBAC 8002DFAC ACB90000 */  sw         $t9, ($a1)
/* 2EBB0 8002DFB0 34098000 */  ori        $t1, $zero, 0x8000
/* 2EBB4 8002DFB4 AC690004 */  sw         $t1, 4($v1)
/* 2EBB8 8002DFB8 AC680000 */  sw         $t0, ($v1)
/* 2EBBC 8002DFBC 94CA0000 */  lhu        $t2, ($a2)
/* 2EBC0 8002DFC0 314BFFEF */  andi       $t3, $t2, 0xffef
/* 2EBC4 8002DFC4 A4CB0000 */  sh         $t3, ($a2)
/* 2EBC8 8002DFC8 03E00008 */  jr         $ra
/* 2EBCC 8002DFCC 00000000 */   nop

glabel drawSave_LoadMenu
/* 2EBD0 8002DFD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2EBD4 8002DFD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2EBD8 8002DFD8 240E00AB */  addiu      $t6, $zero, 0xab
/* 2EBDC 8002DFDC AFAE0010 */  sw         $t6, 0x10($sp)
/* 2EBE0 8002DFE0 00002025 */  or         $a0, $zero, $zero
/* 2EBE4 8002DFE4 2405003C */  addiu      $a1, $zero, 0x3c
/* 2EBE8 8002DFE8 24060022 */  addiu      $a2, $zero, 0x22
/* 2EBEC 8002DFEC 0C00A6D6 */  jal        drawMenues
/* 2EBF0 8002DFF0 240700C8 */   addiu     $a3, $zero, 0xc8
/* 2EBF4 8002DFF4 240F0003 */  addiu      $t7, $zero, 3
/* 2EBF8 8002DFF8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2EBFC 8002DFFC 24040037 */  addiu      $a0, $zero, 0x37
/* 2EC00 8002E000 2405003F */  addiu      $a1, $zero, 0x3f
/* 2EC04 8002E004 240600CE */  addiu      $a2, $zero, 0xce
/* 2EC08 8002E008 0C00A6D6 */  jal        drawMenues
/* 2EC0C 8002E00C 240700C8 */   addiu     $a3, $zero, 0xc8
/* 2EC10 8002E010 241800A9 */  addiu      $t8, $zero, 0xa9
/* 2EC14 8002E014 AFB80010 */  sw         $t8, 0x10($sp)
/* 2EC18 8002E018 24040037 */  addiu      $a0, $zero, 0x37
/* 2EC1C 8002E01C 24050105 */  addiu      $a1, $zero, 0x105
/* 2EC20 8002E020 24060028 */  addiu      $a2, $zero, 0x28
/* 2EC24 8002E024 0C00A6D6 */  jal        drawMenues
/* 2EC28 8002E028 24070002 */   addiu     $a3, $zero, 2
/* 2EC2C 8002E02C 24190001 */  addiu      $t9, $zero, 1
/* 2EC30 8002E030 AFB90010 */  sw         $t9, 0x10($sp)
/* 2EC34 8002E034 24040037 */  addiu      $a0, $zero, 0x37
/* 2EC38 8002E038 2405003B */  addiu      $a1, $zero, 0x3b
/* 2EC3C 8002E03C 24060021 */  addiu      $a2, $zero, 0x21
/* 2EC40 8002E040 0C00A6D6 */  jal        drawMenues
/* 2EC44 8002E044 240700CA */   addiu     $a3, $zero, 0xca
/* 2EC48 8002E048 24080001 */  addiu      $t0, $zero, 1
/* 2EC4C 8002E04C AFA80010 */  sw         $t0, 0x10($sp)
/* 2EC50 8002E050 24040037 */  addiu      $a0, $zero, 0x37
/* 2EC54 8002E054 2405003B */  addiu      $a1, $zero, 0x3b
/* 2EC58 8002E058 240600CD */  addiu      $a2, $zero, 0xcd
/* 2EC5C 8002E05C 0C00A6D6 */  jal        drawMenues
/* 2EC60 8002E060 240700CA */   addiu     $a3, $zero, 0xca
/* 2EC64 8002E064 240900AD */  addiu      $t1, $zero, 0xad
/* 2EC68 8002E068 AFA90010 */  sw         $t1, 0x10($sp)
/* 2EC6C 8002E06C 24040037 */  addiu      $a0, $zero, 0x37
/* 2EC70 8002E070 2405003B */  addiu      $a1, $zero, 0x3b
/* 2EC74 8002E074 24060021 */  addiu      $a2, $zero, 0x21
/* 2EC78 8002E078 0C00A6D6 */  jal        drawMenues
/* 2EC7C 8002E07C 24070001 */   addiu     $a3, $zero, 1
/* 2EC80 8002E080 240A00AD */  addiu      $t2, $zero, 0xad
/* 2EC84 8002E084 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2EC88 8002E088 24040037 */  addiu      $a0, $zero, 0x37
/* 2EC8C 8002E08C 24050104 */  addiu      $a1, $zero, 0x104
/* 2EC90 8002E090 24060021 */  addiu      $a2, $zero, 0x21
/* 2EC94 8002E094 0C00A6D6 */  jal        drawMenues
/* 2EC98 8002E098 24070001 */   addiu     $a3, $zero, 1
/* 2EC9C 8002E09C 240B0001 */  addiu      $t3, $zero, 1
/* 2ECA0 8002E0A0 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2ECA4 8002E0A4 24040038 */  addiu      $a0, $zero, 0x38
/* 2ECA8 8002E0A8 2405003D */  addiu      $a1, $zero, 0x3d
/* 2ECAC 8002E0AC 24060023 */  addiu      $a2, $zero, 0x23
/* 2ECB0 8002E0B0 0C00A6D6 */  jal        drawMenues
/* 2ECB4 8002E0B4 240700C5 */   addiu     $a3, $zero, 0xc5
/* 2ECB8 8002E0B8 240C00A8 */  addiu      $t4, $zero, 0xa8
/* 2ECBC 8002E0BC AFAC0010 */  sw         $t4, 0x10($sp)
/* 2ECC0 8002E0C0 24040038 */  addiu      $a0, $zero, 0x38
/* 2ECC4 8002E0C4 2405003D */  addiu      $a1, $zero, 0x3d
/* 2ECC8 8002E0C8 24060023 */  addiu      $a2, $zero, 0x23
/* 2ECCC 8002E0CC 0C00A6D6 */  jal        drawMenues
/* 2ECD0 8002E0D0 24070001 */   addiu     $a3, $zero, 1
/* 2ECD4 8002E0D4 240D0001 */  addiu      $t5, $zero, 1
/* 2ECD8 8002E0D8 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2ECDC 8002E0DC 24040039 */  addiu      $a0, $zero, 0x39
/* 2ECE0 8002E0E0 2405003D */  addiu      $a1, $zero, 0x3d
/* 2ECE4 8002E0E4 240600CB */  addiu      $a2, $zero, 0xcb
/* 2ECE8 8002E0E8 0C00A6D6 */  jal        drawMenues
/* 2ECEC 8002E0EC 240700C6 */   addiu     $a3, $zero, 0xc6
/* 2ECF0 8002E0F0 240E00A9 */  addiu      $t6, $zero, 0xa9
/* 2ECF4 8002E0F4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2ECF8 8002E0F8 24040039 */  addiu      $a0, $zero, 0x39
/* 2ECFC 8002E0FC 24050102 */  addiu      $a1, $zero, 0x102
/* 2ED00 8002E100 24060023 */  addiu      $a2, $zero, 0x23
/* 2ED04 8002E104 0C00A6D6 */  jal        drawMenues
/* 2ED08 8002E108 24070001 */   addiu     $a3, $zero, 1
/* 2ED0C 8002E10C 240F0002 */  addiu      $t7, $zero, 2
/* 2ED10 8002E110 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2ED14 8002E114 2404003F */  addiu      $a0, $zero, 0x3f
/* 2ED18 8002E118 2405005A */  addiu      $a1, $zero, 0x5a
/* 2ED1C 8002E11C 2406002E */  addiu      $a2, $zero, 0x2e
/* 2ED20 8002E120 0C00A6D6 */  jal        drawMenues
/* 2ED24 8002E124 24070096 */   addiu     $a3, $zero, 0x96
/* 2ED28 8002E128 24180002 */  addiu      $t8, $zero, 2
/* 2ED2C 8002E12C AFB80010 */  sw         $t8, 0x10($sp)
/* 2ED30 8002E130 2404003F */  addiu      $a0, $zero, 0x3f
/* 2ED34 8002E134 2405005A */  addiu      $a1, $zero, 0x5a
/* 2ED38 8002E138 24060044 */  addiu      $a2, $zero, 0x44
/* 2ED3C 8002E13C 0C00A6D6 */  jal        drawMenues
/* 2ED40 8002E140 24070096 */   addiu     $a3, $zero, 0x96
/* 2ED44 8002E144 24190002 */  addiu      $t9, $zero, 2
/* 2ED48 8002E148 AFB90010 */  sw         $t9, 0x10($sp)
/* 2ED4C 8002E14C 2404003F */  addiu      $a0, $zero, 0x3f
/* 2ED50 8002E150 2405005A */  addiu      $a1, $zero, 0x5a
/* 2ED54 8002E154 2406007B */  addiu      $a2, $zero, 0x7b
/* 2ED58 8002E158 0C00A6D6 */  jal        drawMenues
/* 2ED5C 8002E15C 24070096 */   addiu     $a3, $zero, 0x96
/* 2ED60 8002E160 24080002 */  addiu      $t0, $zero, 2
/* 2ED64 8002E164 AFA80010 */  sw         $t0, 0x10($sp)
/* 2ED68 8002E168 2404003F */  addiu      $a0, $zero, 0x3f
/* 2ED6C 8002E16C 2405005A */  addiu      $a1, $zero, 0x5a
/* 2ED70 8002E170 24060091 */  addiu      $a2, $zero, 0x91
/* 2ED74 8002E174 0C00A6D6 */  jal        drawMenues
/* 2ED78 8002E178 24070096 */   addiu     $a3, $zero, 0x96
/* 2ED7C 8002E17C 2409000C */  addiu      $t1, $zero, 0xc
/* 2ED80 8002E180 AFA90010 */  sw         $t1, 0x10($sp)
/* 2ED84 8002E184 24040042 */  addiu      $a0, $zero, 0x42
/* 2ED88 8002E188 2405005E */  addiu      $a1, $zero, 0x5e
/* 2ED8C 8002E18C 24060067 */  addiu      $a2, $zero, 0x67
/* 2ED90 8002E190 0C00A6D6 */  jal        drawMenues
/* 2ED94 8002E194 2407007C */   addiu     $a3, $zero, 0x7c
/* 2ED98 8002E198 240A000C */  addiu      $t2, $zero, 0xc
/* 2ED9C 8002E19C AFAA0010 */  sw         $t2, 0x10($sp)
/* 2EDA0 8002E1A0 24040042 */  addiu      $a0, $zero, 0x42
/* 2EDA4 8002E1A4 2405005E */  addiu      $a1, $zero, 0x5e
/* 2EDA8 8002E1A8 240600B5 */  addiu      $a2, $zero, 0xb5
/* 2EDAC 8002E1AC 0C00A6D6 */  jal        drawMenues
/* 2EDB0 8002E1B0 2407007C */   addiu     $a3, $zero, 0x7c
/* 2EDB4 8002E1B4 240B000E */  addiu      $t3, $zero, 0xe
/* 2EDB8 8002E1B8 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2EDBC 8002E1BC 24040046 */  addiu      $a0, $zero, 0x46
/* 2EDC0 8002E1C0 24050055 */  addiu      $a1, $zero, 0x55
/* 2EDC4 8002E1C4 24060058 */  addiu      $a2, $zero, 0x58
/* 2EDC8 8002E1C8 0C00A6D6 */  jal        drawMenues
/* 2EDCC 8002E1CC 24070014 */   addiu     $a3, $zero, 0x14
/* 2EDD0 8002E1D0 240C000E */  addiu      $t4, $zero, 0xe
/* 2EDD4 8002E1D4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2EDD8 8002E1D8 24040047 */  addiu      $a0, $zero, 0x47
/* 2EDDC 8002E1DC 240500A2 */  addiu      $a1, $zero, 0xa2
/* 2EDE0 8002E1E0 24060058 */  addiu      $a2, $zero, 0x58
/* 2EDE4 8002E1E4 0C00A6D6 */  jal        drawMenues
/* 2EDE8 8002E1E8 24070018 */   addiu     $a3, $zero, 0x18
/* 2EDEC 8002E1EC 240D000E */  addiu      $t5, $zero, 0xe
/* 2EDF0 8002E1F0 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2EDF4 8002E1F4 24040046 */  addiu      $a0, $zero, 0x46
/* 2EDF8 8002E1F8 24050055 */  addiu      $a1, $zero, 0x55
/* 2EDFC 8002E1FC 240600A6 */  addiu      $a2, $zero, 0xa6
/* 2EE00 8002E200 0C00A6D6 */  jal        drawMenues
/* 2EE04 8002E204 24070014 */   addiu     $a3, $zero, 0x14
/* 2EE08 8002E208 240E000E */  addiu      $t6, $zero, 0xe
/* 2EE0C 8002E20C AFAE0010 */  sw         $t6, 0x10($sp)
/* 2EE10 8002E210 24040047 */  addiu      $a0, $zero, 0x47
/* 2EE14 8002E214 240500A2 */  addiu      $a1, $zero, 0xa2
/* 2EE18 8002E218 240600A6 */  addiu      $a2, $zero, 0xa6
/* 2EE1C 8002E21C 0C00A6D6 */  jal        drawMenues
/* 2EE20 8002E220 24070018 */   addiu     $a3, $zero, 0x18
/* 2EE24 8002E224 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2EE28 8002E228 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2EE2C 8002E22C 03E00008 */  jr         $ra
/* 2EE30 8002E230 00000000 */   nop

glabel saveGame
/* 2EE34 8002E234 00047080 */  sll        $t6, $a0, 2
/* 2EE38 8002E238 01C47023 */  subu       $t6, $t6, $a0
/* 2EE3C 8002E23C 000E70C0 */  sll        $t6, $t6, 3
/* 2EE40 8002E240 01C47021 */  addu       $t6, $t6, $a0
/* 2EE44 8002E244 3C0F8009 */  lui        $t7, %hi(D_8008FD58)
/* 2EE48 8002E248 25EFFD58 */  addiu      $t7, $t7, %lo(D_8008FD58)
/* 2EE4C 8002E24C 000E7080 */  sll        $t6, $t6, 2
/* 2EE50 8002E250 3C188008 */  lui        $t8, %hi(brianData)
/* 2EE54 8002E254 2718BA80 */  addiu      $t8, $t8, %lo(brianData)
/* 2EE58 8002E258 01CF3021 */  addu       $a2, $t6, $t7
/* 2EE5C 8002E25C 00C05025 */  or         $t2, $a2, $zero
/* 2EE60 8002E260 27090030 */  addiu      $t1, $t8, 0x30
.L8002E264:
/* 2EE64 8002E264 8F010000 */  lw         $at, ($t8)
/* 2EE68 8002E268 2718000C */  addiu      $t8, $t8, 0xc
/* 2EE6C 8002E26C 254A000C */  addiu      $t2, $t2, 0xc
/* 2EE70 8002E270 AD41FFF4 */  sw         $at, -0xc($t2)
/* 2EE74 8002E274 8F01FFF8 */  lw         $at, -8($t8)
/* 2EE78 8002E278 AD41FFF8 */  sw         $at, -8($t2)
/* 2EE7C 8002E27C 8F01FFFC */  lw         $at, -4($t8)
/* 2EE80 8002E280 1709FFF8 */  bne        $t8, $t1, .L8002E264
/* 2EE84 8002E284 AD41FFFC */   sw        $at, -4($t2)
/* 2EE88 8002E288 8F010000 */  lw         $at, ($t8)
/* 2EE8C 8002E28C 3C0B8008 */  lui        $t3, 0x8008
/* 2EE90 8002E290 3C0C8008 */  lui        $t4, 0x8008
/* 2EE94 8002E294 AD410000 */  sw         $at, ($t2)
/* 2EE98 8002E298 8F090004 */  lw         $t1, 4($t8)
/* 2EE9C 8002E29C 3C0D8008 */  lui        $t5, 0x8008
/* 2EEA0 8002E2A0 3C0E8008 */  lui        $t6, 0x8008
/* 2EEA4 8002E2A4 AD490004 */  sw         $t1, 4($t2)
/* 2EEA8 8002E2A8 956B59E2 */  lhu        $t3, 0x59e2($t3)
/* 2EEAC 8002E2AC 3C0F8008 */  lui        $t7, 0x8008
/* 2EEB0 8002E2B0 3C088008 */  lui        $t0, 0x8008
/* 2EEB4 8002E2B4 A4CB0038 */  sh         $t3, 0x38($a2)
/* 2EEB8 8002E2B8 958C59E0 */  lhu        $t4, 0x59e0($t4)
/* 2EEBC 8002E2BC 3C198008 */  lui        $t9, 0x8008
/* 2EEC0 8002E2C0 3C098008 */  lui        $t1, 0x8008
/* 2EEC4 8002E2C4 A4CC003A */  sh         $t4, 0x3a($a2)
/* 2EEC8 8002E2C8 8DAD4EE4 */  lw         $t5, 0x4ee4($t5)
/* 2EECC 8002E2CC 3C188008 */  lui        $t8, 0x8008
/* 2EED0 8002E2D0 3C0A8008 */  lui        $t2, 0x8008
/* 2EED4 8002E2D4 ACCD003C */  sw         $t5, 0x3c($a2)
/* 2EED8 8002E2D8 8DCE4EE8 */  lw         $t6, 0x4ee8($t6)
/* 2EEDC 8002E2DC 3C0B8008 */  lui        $t3, 0x8008
/* 2EEE0 8002E2E0 3C0C8008 */  lui        $t4, 0x8008
/* 2EEE4 8002E2E4 ACCE0040 */  sw         $t6, 0x40($a2)
/* 2EEE8 8002E2E8 8DEF4EF8 */  lw         $t7, 0x4ef8($t7)
/* 2EEEC 8002E2EC 3C0D8008 */  lui        $t5, 0x8008
/* 2EEF0 8002E2F0 3C0E8006 */  lui        $t6, 0x8006
/* 2EEF4 8002E2F4 ACCF0044 */  sw         $t7, 0x44($a2)
/* 2EEF8 8002E2F8 8D084EFC */  lw         $t0, 0x4efc($t0)
/* 2EEFC 8002E2FC 3C0F8006 */  lui        $t7, 0x8006
/* 2EF00 8002E300 3C028009 */  lui        $v0, %hi(D_80090398)
/* 2EF04 8002E304 ACC80048 */  sw         $t0, 0x48($a2)
/* 2EF08 8002E308 8F394F00 */  lw         $t9, 0x4f00($t9)
/* 2EF0C 8002E30C 3C038008 */  lui        $v1, %hi(unknownBossData)
/* 2EF10 8002E310 24420398 */  addiu      $v0, $v0, %lo(D_80090398)
/* 2EF14 8002E314 ACD9004C */  sw         $t9, 0x4c($a2)
/* 2EF18 8002E318 8D294F04 */  lw         $t1, 0x4f04($t1)
/* 2EF1C 8002E31C 246369D8 */  addiu      $v1, $v1, %lo(unknownBossData)
/* 2EF20 8002E320 24050020 */  addiu      $a1, $zero, 0x20
/* 2EF24 8002E324 ACC90050 */  sw         $t1, 0x50($a2)
/* 2EF28 8002E328 8F184F08 */  lw         $t8, 0x4f08($t8)
/* 2EF2C 8002E32C ACD80054 */  sw         $t8, 0x54($a2)
/* 2EF30 8002E330 8D4A4F0C */  lw         $t2, 0x4f0c($t2)
/* 2EF34 8002E334 ACCA0058 */  sw         $t2, 0x58($a2)
/* 2EF38 8002E338 956BBA60 */  lhu        $t3, -0x45a0($t3)
/* 2EF3C 8002E33C A4CB005C */  sh         $t3, 0x5c($a2)
/* 2EF40 8002E340 958CBA62 */  lhu        $t4, -0x459e($t4)
/* 2EF44 8002E344 A4CC005E */  sh         $t4, 0x5e($a2)
/* 2EF48 8002E348 95ADBA64 */  lhu        $t5, -0x459c($t5)
/* 2EF4C 8002E34C A4CD0060 */  sh         $t5, 0x60($a2)
/* 2EF50 8002E350 81CEFA00 */  lb         $t6, -0x600($t6)
/* 2EF54 8002E354 A0CE0062 */  sb         $t6, 0x62($a2)
/* 2EF58 8002E358 81EFF010 */  lb         $t7, -0xff0($t7)
/* 2EF5C 8002E35C A0CF0063 */  sb         $t7, 0x63($a2)
.L8002E360:
/* 2EF60 8002E360 90680000 */  lbu        $t0, ($v1)
/* 2EF64 8002E364 24A5FFFF */  addiu      $a1, $a1, -1
/* 2EF68 8002E368 24420001 */  addiu      $v0, $v0, 1
/* 2EF6C 8002E36C 24630001 */  addiu      $v1, $v1, 1
/* 2EF70 8002E370 14A0FFFB */  bnez       $a1, .L8002E360
/* 2EF74 8002E374 A048FFFF */   sb        $t0, -1($v0)
/* 2EF78 8002E378 3C028009 */  lui        $v0, %hi(pfsSpiritGetFlags)
/* 2EF7C 8002E37C 3C038008 */  lui        $v1, %hi(tbl_spiritGetFlags)
/* 2EF80 8002E380 244203B8 */  addiu      $v0, $v0, %lo(pfsSpiritGetFlags)
/* 2EF84 8002E384 24636AE8 */  addiu      $v1, $v1, %lo(tbl_spiritGetFlags)
/* 2EF88 8002E388 24050010 */  addiu      $a1, $zero, 0x10
.L8002E38C:
/* 2EF8C 8002E38C 90790000 */  lbu        $t9, ($v1)
/* 2EF90 8002E390 24A5FFFF */  addiu      $a1, $a1, -1
/* 2EF94 8002E394 24420001 */  addiu      $v0, $v0, 1
/* 2EF98 8002E398 24630001 */  addiu      $v1, $v1, 1
/* 2EF9C 8002E39C 14A0FFFB */  bnez       $a1, .L8002E38C
/* 2EFA0 8002E3A0 A059FFFF */   sb        $t9, -1($v0)
/* 2EFA4 8002E3A4 3C028009 */  lui        $v0, %hi(D_800903C8)
/* 2EFA8 8002E3A8 3C038009 */  lui        $v1, %hi(invSlot)
/* 2EFAC 8002E3AC 244203C8 */  addiu      $v0, $v0, %lo(D_800903C8)
/* 2EFB0 8002E3B0 2463CF78 */  addiu      $v1, $v1, %lo(invSlot)
/* 2EFB4 8002E3B4 24050097 */  addiu      $a1, $zero, 0x97
.L8002E3B8:
/* 2EFB8 8002E3B8 90690000 */  lbu        $t1, ($v1)
/* 2EFBC 8002E3BC 24A5FFFF */  addiu      $a1, $a1, -1
/* 2EFC0 8002E3C0 24420001 */  addiu      $v0, $v0, 1
/* 2EFC4 8002E3C4 24630001 */  addiu      $v1, $v1, 1
/* 2EFC8 8002E3C8 14A0FFFB */  bnez       $a1, .L8002E3B8
/* 2EFCC 8002E3CC A049FFFF */   sb        $t1, -1($v0)
/* 2EFD0 8002E3D0 3C028009 */  lui        $v0, %hi(D_8009045F)
/* 2EFD4 8002E3D4 3C038008 */  lui        $v1, %hi(D_8007D19C)
/* 2EFD8 8002E3D8 2442045F */  addiu      $v0, $v0, %lo(D_8009045F)
/* 2EFDC 8002E3DC 2463D19C */  addiu      $v1, $v1, %lo(D_8007D19C)
/* 2EFE0 8002E3E0 24050001 */  addiu      $a1, $zero, 1
.L8002E3E4:
/* 2EFE4 8002E3E4 90780000 */  lbu        $t8, ($v1)
/* 2EFE8 8002E3E8 24A5FFFF */  addiu      $a1, $a1, -1
/* 2EFEC 8002E3EC 24420001 */  addiu      $v0, $v0, 1
/* 2EFF0 8002E3F0 24630001 */  addiu      $v1, $v1, 1
/* 2EFF4 8002E3F4 14A0FFFB */  bnez       $a1, .L8002E3E4
/* 2EFF8 8002E3F8 A058FFFF */   sb        $t8, -1($v0)
/* 2EFFC 8002E3FC 03E00008 */  jr         $ra
/* 2F000 8002E400 00000000 */   nop

glabel loadSave
/* 2F004 8002E404 00047080 */  sll        $t6, $a0, 2
/* 2F008 8002E408 01C47023 */  subu       $t6, $t6, $a0
/* 2F00C 8002E40C 000E70C0 */  sll        $t6, $t6, 3
/* 2F010 8002E410 01C47021 */  addu       $t6, $t6, $a0
/* 2F014 8002E414 3C0F8009 */  lui        $t7, %hi(D_8008FD58)
/* 2F018 8002E418 25EFFD58 */  addiu      $t7, $t7, %lo(D_8008FD58)
/* 2F01C 8002E41C 000E7080 */  sll        $t6, $t6, 2
/* 2F020 8002E420 01CF3021 */  addu       $a2, $t6, $t7
/* 2F024 8002E424 3C188008 */  lui        $t8, %hi(brianData)
/* 2F028 8002E428 2718BA80 */  addiu      $t8, $t8, %lo(brianData)
/* 2F02C 8002E42C 00C05025 */  or         $t2, $a2, $zero
/* 2F030 8002E430 24C90030 */  addiu      $t1, $a2, 0x30
.L8002E434:
/* 2F034 8002E434 8D410000 */  lw         $at, ($t2)
/* 2F038 8002E438 254A000C */  addiu      $t2, $t2, 0xc
/* 2F03C 8002E43C 2718000C */  addiu      $t8, $t8, 0xc
/* 2F040 8002E440 AF01FFF4 */  sw         $at, -0xc($t8)
/* 2F044 8002E444 8D41FFF8 */  lw         $at, -8($t2)
/* 2F048 8002E448 AF01FFF8 */  sw         $at, -8($t8)
/* 2F04C 8002E44C 8D41FFFC */  lw         $at, -4($t2)
/* 2F050 8002E450 1549FFF8 */  bne        $t2, $t1, .L8002E434
/* 2F054 8002E454 AF01FFFC */   sw        $at, -4($t8)
/* 2F058 8002E458 8D410000 */  lw         $at, ($t2)
/* 2F05C 8002E45C 3C028009 */  lui        $v0, %hi(D_80090398)
/* 2F060 8002E460 3C038008 */  lui        $v1, 0x8008
/* 2F064 8002E464 AF010000 */  sw         $at, ($t8)
/* 2F068 8002E468 8D490004 */  lw         $t1, 4($t2)
/* 2F06C 8002E46C 3C018008 */  lui        $at, 0x8008
/* 2F070 8002E470 24420398 */  addiu      $v0, $v0, %lo(D_80090398)
/* 2F074 8002E474 AF090004 */  sw         $t1, 4($t8)
/* 2F078 8002E478 94CB0038 */  lhu        $t3, 0x38($a2)
/* 2F07C 8002E47C 246369D8 */  addiu      $v1, $v1, 0x69d8
/* 2F080 8002E480 24050020 */  addiu      $a1, $zero, 0x20
/* 2F084 8002E484 A42B59E2 */  sh         $t3, 0x59e2($at)
/* 2F088 8002E488 94CC003A */  lhu        $t4, 0x3a($a2)
/* 2F08C 8002E48C 3C018008 */  lui        $at, %hi(CurrentDay)
/* 2F090 8002E490 A42C59E0 */  sh         $t4, %lo(CurrentDay)($at)
/* 2F094 8002E494 8CCD003C */  lw         $t5, 0x3c($a2)
/* 2F098 8002E498 3C018008 */  lui        $at, %hi(nextMap)
/* 2F09C 8002E49C AC2D4EE4 */  sw         $t5, %lo(nextMap)($at)
/* 2F0A0 8002E4A0 8CCE0040 */  lw         $t6, 0x40($a2)
/* 2F0A4 8002E4A4 3C018008 */  lui        $at, %hi(nextSubmap)
/* 2F0A8 8002E4A8 AC2E4EE8 */  sw         $t6, %lo(nextSubmap)($at)
/* 2F0AC 8002E4AC 8CCF0044 */  lw         $t7, 0x44($a2)
/* 2F0B0 8002E4B0 3C018008 */  lui        $at, %hi(saveMap_)
/* 2F0B4 8002E4B4 AC2F4EF8 */  sw         $t7, %lo(saveMap_)($at)
/* 2F0B8 8002E4B8 8CC80048 */  lw         $t0, 0x48($a2)
/* 2F0BC 8002E4BC 3C018008 */  lui        $at, %hi(saveSubmap_)
/* 2F0C0 8002E4C0 AC284EFC */  sw         $t0, %lo(saveSubmap_)($at)
/* 2F0C4 8002E4C4 8CD9004C */  lw         $t9, 0x4c($a2)
/* 2F0C8 8002E4C8 3C018008 */  lui        $at, %hi(saveExit_)
/* 2F0CC 8002E4CC AC394F00 */  sw         $t9, %lo(saveExit_)($at)
/* 2F0D0 8002E4D0 8CC90050 */  lw         $t1, 0x50($a2)
/* 2F0D4 8002E4D4 3C018008 */  lui        $at, %hi(UNK_CurrentMapTemp2)
/* 2F0D8 8002E4D8 AC294F04 */  sw         $t1, %lo(UNK_CurrentMapTemp2)($at)
/* 2F0DC 8002E4DC 8CCA0054 */  lw         $t2, 0x54($a2)
/* 2F0E0 8002E4E0 3C018008 */  lui        $at, %hi(D_80084F08)
/* 2F0E4 8002E4E4 AC2A4F08 */  sw         $t2, %lo(D_80084F08)($at)
/* 2F0E8 8002E4E8 8CD80058 */  lw         $t8, 0x58($a2)
/* 2F0EC 8002E4EC 3C018008 */  lui        $at, %hi(D_80084F0C)
/* 2F0F0 8002E4F0 AC384F0C */  sw         $t8, %lo(D_80084F0C)($at)
/* 2F0F4 8002E4F4 94CB005C */  lhu        $t3, 0x5c($a2)
/* 2F0F8 8002E4F8 3C018008 */  lui        $at, %hi(MapToLoad)
/* 2F0FC 8002E4FC A42BBA60 */  sh         $t3, %lo(MapToLoad)($at)
/* 2F100 8002E500 94CC005E */  lhu        $t4, 0x5e($a2)
/* 2F104 8002E504 3C018008 */  lui        $at, %hi(SubmapToLoad)
/* 2F108 8002E508 A42CBA62 */  sh         $t4, %lo(SubmapToLoad)($at)
/* 2F10C 8002E50C 94CD0060 */  lhu        $t5, 0x60($a2)
/* 2F110 8002E510 3C018008 */  lui        $at, %hi(LastExit)
/* 2F114 8002E514 A42DBA64 */  sh         $t5, %lo(LastExit)($at)
/* 2F118 8002E518 80CE0062 */  lb         $t6, 0x62($a2)
/* 2F11C 8002E51C 3C018006 */  lui        $at, %hi(MessageSliderPos)
/* 2F120 8002E520 A02EFA00 */  sb         $t6, %lo(MessageSliderPos)($at)
/* 2F124 8002E524 80CF0063 */  lb         $t7, 0x63($a2)
/* 2F128 8002E528 3C018006 */  lui        $at, %hi(BGMSliderPos)
/* 2F12C 8002E52C A02FF010 */  sb         $t7, %lo(BGMSliderPos)($at)
.L8002E530:
/* 2F130 8002E530 90480000 */  lbu        $t0, ($v0)
/* 2F134 8002E534 24A5FFFF */  addiu      $a1, $a1, -1
/* 2F138 8002E538 24630001 */  addiu      $v1, $v1, 1
/* 2F13C 8002E53C 24420001 */  addiu      $v0, $v0, 1
/* 2F140 8002E540 14A0FFFB */  bnez       $a1, .L8002E530
/* 2F144 8002E544 A068FFFF */   sb        $t0, -1($v1)
/* 2F148 8002E548 3C028009 */  lui        $v0, %hi(pfsSpiritGetFlags)
/* 2F14C 8002E54C 3C038008 */  lui        $v1, %hi(tbl_spiritGetFlags)
/* 2F150 8002E550 244203B8 */  addiu      $v0, $v0, %lo(pfsSpiritGetFlags)
/* 2F154 8002E554 24636AE8 */  addiu      $v1, $v1, %lo(tbl_spiritGetFlags)
/* 2F158 8002E558 24050010 */  addiu      $a1, $zero, 0x10
.L8002E55C:
/* 2F15C 8002E55C 90590000 */  lbu        $t9, ($v0)
/* 2F160 8002E560 24A5FFFF */  addiu      $a1, $a1, -1
/* 2F164 8002E564 24630001 */  addiu      $v1, $v1, 1
/* 2F168 8002E568 24420001 */  addiu      $v0, $v0, 1
/* 2F16C 8002E56C 14A0FFFB */  bnez       $a1, .L8002E55C
/* 2F170 8002E570 A079FFFF */   sb        $t9, -1($v1)
/* 2F174 8002E574 3C028009 */  lui        $v0, %hi(D_800903C8)
/* 2F178 8002E578 3C038009 */  lui        $v1, %hi(invSlot)
/* 2F17C 8002E57C 244203C8 */  addiu      $v0, $v0, %lo(D_800903C8)
/* 2F180 8002E580 2463CF78 */  addiu      $v1, $v1, %lo(invSlot)
/* 2F184 8002E584 24050097 */  addiu      $a1, $zero, 0x97
.L8002E588:
/* 2F188 8002E588 90490000 */  lbu        $t1, ($v0)
/* 2F18C 8002E58C 24A5FFFF */  addiu      $a1, $a1, -1
/* 2F190 8002E590 24630001 */  addiu      $v1, $v1, 1
/* 2F194 8002E594 24420001 */  addiu      $v0, $v0, 1
/* 2F198 8002E598 14A0FFFB */  bnez       $a1, .L8002E588
/* 2F19C 8002E59C A069FFFF */   sb        $t1, -1($v1)
/* 2F1A0 8002E5A0 3C028009 */  lui        $v0, %hi(D_8009045F)
/* 2F1A4 8002E5A4 3C038008 */  lui        $v1, %hi(D_8007D19C)
/* 2F1A8 8002E5A8 2442045F */  addiu      $v0, $v0, %lo(D_8009045F)
/* 2F1AC 8002E5AC 2463D19C */  addiu      $v1, $v1, %lo(D_8007D19C)
/* 2F1B0 8002E5B0 24050001 */  addiu      $a1, $zero, 1
.L8002E5B4:
/* 2F1B4 8002E5B4 904A0000 */  lbu        $t2, ($v0)
/* 2F1B8 8002E5B8 24A5FFFF */  addiu      $a1, $a1, -1
/* 2F1BC 8002E5BC 24630001 */  addiu      $v1, $v1, 1
/* 2F1C0 8002E5C0 24420001 */  addiu      $v0, $v0, 1
/* 2F1C4 8002E5C4 14A0FFFB */  bnez       $a1, .L8002E5B4
/* 2F1C8 8002E5C8 A06AFFFF */   sb        $t2, -1($v1)
/* 2F1CC 8002E5CC 03E00008 */  jr         $ra
/* 2F1D0 8002E5D0 00000000 */   nop
/* 2F1D4 8002E5D4 00000000 */  nop
/* 2F1D8 8002E5D8 00000000 */  nop
/* 2F1DC 8002E5DC 00000000 */  nop
