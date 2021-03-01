.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osDestroyThread
/* 352E0 800346E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 352E4 800346E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 352E8 800346E8 AFA40028 */  sw         $a0, 0x28($sp)
/* 352EC 800346EC 0C00F534 */  jal        __osDisableInt
/* 352F0 800346F0 AFB00018 */   sw        $s0, 0x18($sp)
/* 352F4 800346F4 93AE002B */  lbu        $t6, 0x2b($sp)
/* 352F8 800346F8 00408025 */  or         $s0, $v0, $zero
/* 352FC 800346FC 11C00007 */  beqz       $t6, .L8003471C
/* 35300 80034700 00000000 */   nop
/* 35304 80034704 3C0F8007 */  lui        $t7, %hi(__osViNext)
/* 35308 80034708 8DEF0A84 */  lw         $t7, %lo(__osViNext)($t7)
/* 3530C 8003470C 95F80000 */  lhu        $t8, ($t7)
/* 35310 80034710 37190020 */  ori        $t9, $t8, 0x20
/* 35314 80034714 10000007 */  b          .L80034734
/* 35318 80034718 A5F90000 */   sh        $t9, ($t7)
.L8003471C:
/* 3531C 8003471C 3C088007 */  lui        $t0, %hi(__osViNext)
/* 35320 80034720 8D080A84 */  lw         $t0, %lo(__osViNext)($t0)
/* 35324 80034724 2401FFDF */  addiu      $at, $zero, -0x21
/* 35328 80034728 95090000 */  lhu        $t1, ($t0)
/* 3532C 8003472C 01215024 */  and        $t2, $t1, $at
/* 35330 80034730 A50A0000 */  sh         $t2, ($t0)
.L80034734:
/* 35334 80034734 0C00F53C */  jal        __osRestoreInt
/* 35338 80034738 02002025 */   or        $a0, $s0, $zero
/* 3533C 8003473C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 35340 80034740 8FB00018 */  lw         $s0, 0x18($sp)
/* 35344 80034744 27BD0028 */  addiu      $sp, $sp, 0x28
/* 35348 80034748 03E00008 */  jr         $ra
/* 3534C 8003474C 00000000 */   nop

glabel osViSwapBuffer
/* 35350 80034750 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35354 80034754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 35358 80034758 0C00F534 */  jal        __osDisableInt
/* 3535C 8003475C AFA40020 */   sw        $a0, 0x20($sp)
/* 35360 80034760 3C0F8007 */  lui        $t7, %hi(__osViNext)
/* 35364 80034764 8DEF0A84 */  lw         $t7, %lo(__osViNext)($t7)
/* 35368 80034768 8FAE0020 */  lw         $t6, 0x20($sp)
/* 3536C 8003476C AFA2001C */  sw         $v0, 0x1c($sp)
/* 35370 80034770 3C188007 */  lui        $t8, %hi(__osViNext)
/* 35374 80034774 ADEE0004 */  sw         $t6, 4($t7)
/* 35378 80034778 8F180A84 */  lw         $t8, %lo(__osViNext)($t8)
/* 3537C 8003477C 97190000 */  lhu        $t9, ($t8)
/* 35380 80034780 37280010 */  ori        $t0, $t9, 0x10
/* 35384 80034784 A7080000 */  sh         $t0, ($t8)
/* 35388 80034788 0C00F53C */  jal        __osRestoreInt
/* 3538C 8003478C 8FA4001C */   lw        $a0, 0x1c($sp)
/* 35390 80034790 8FBF0014 */  lw         $ra, 0x14($sp)
/* 35394 80034794 27BD0020 */  addiu      $sp, $sp, 0x20
/* 35398 80034798 03E00008 */  jr         $ra
/* 3539C 8003479C 00000000 */   nop

glabel osViGetCurrentFramebuffer
/* 353A0 800347A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 353A4 800347A4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 353A8 800347A8 0C00F534 */  jal        __osDisableInt
/* 353AC 800347AC AFB00018 */   sw        $s0, 0x18($sp)
/* 353B0 800347B0 3C0E8007 */  lui        $t6, %hi(__osFaultedThread)
/* 353B4 800347B4 8DCE0A80 */  lw         $t6, %lo(__osFaultedThread)($t6)
/* 353B8 800347B8 00408025 */  or         $s0, $v0, $zero
/* 353BC 800347BC 02002025 */  or         $a0, $s0, $zero
/* 353C0 800347C0 8DCF0004 */  lw         $t7, 4($t6)
/* 353C4 800347C4 0C00F53C */  jal        __osRestoreInt
/* 353C8 800347C8 AFAF0020 */   sw        $t7, 0x20($sp)
/* 353CC 800347CC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 353D0 800347D0 8FA20020 */  lw         $v0, 0x20($sp)
/* 353D4 800347D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 353D8 800347D8 03E00008 */  jr         $ra
/* 353DC 800347DC 27BD0028 */   addiu     $sp, $sp, 0x28
/* 353E0 800347E0 00000000 */  nop
/* 353E4 800347E4 00000000 */  nop
/* 353E8 800347E8 00000000 */  nop
/* 353EC 800347EC 00000000 */  nop
/* 353F0 800347F0 00000000 */  nop
/* 353F4 800347F4 00000000 */  nop
/* 353F8 800347F8 00000000 */  nop
/* 353FC 800347FC 00000000 */  nop
/* 35400 80034800 00000000 */  nop
/* 35404 80034804 00000000 */  nop
/* 35408 80034808 00000000 */  nop
/* 3540C 8003480C 00000000 */  nop
/* 35410 80034810 00000000 */  nop
/* 35414 80034814 00000000 */  nop
/* 35418 80034818 00000000 */  nop
/* 3541C 8003481C 00000000 */  nop
/* 35420 80034820 00000000 */  nop
/* 35424 80034824 00000000 */  nop
/* 35428 80034828 00000000 */  nop
/* 3542C 8003482C 00000000 */  nop
/* 35430 80034830 00000000 */  nop
/* 35434 80034834 00000000 */  nop
/* 35438 80034838 00000000 */  nop
/* 3543C 8003483C 00000000 */  nop
