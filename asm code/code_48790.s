glabel func_80047B90
/* 48790 80047B90 3C0EA460 */  lui        $t6, 0xa460
/* 48794 80047B94 8DC70010 */  lw         $a3, 0x10($t6)
/* 48798 80047B98 27BDFFF8 */  addiu      $sp, $sp, -8
/* 4879C 80047B9C 30EF0003 */  andi       $t7, $a3, 3
/* 487A0 80047BA0 11E00006 */  beqz       $t7, .L80047BBC
/* 487A4 80047BA4 00000000 */   nop       
.L80047BA8:
/* 487A8 80047BA8 3C18A460 */  lui        $t8, 0xa460
/* 487AC 80047BAC 8F070010 */  lw         $a3, 0x10($t8)
/* 487B0 80047BB0 30F90003 */  andi       $t9, $a3, 3
/* 487B4 80047BB4 1720FFFC */  bnez       $t9, .L80047BA8
/* 487B8 80047BB8 00000000 */   nop       
.L80047BBC:
/* 487BC 80047BBC 8C88000C */  lw         $t0, 0xc($a0)
/* 487C0 80047BC0 3C01A000 */  lui        $at, 0xa000
/* 487C4 80047BC4 27BD0008 */  addiu      $sp, $sp, 8
/* 487C8 80047BC8 01054825 */  or         $t1, $t0, $a1
/* 487CC 80047BCC 01215025 */  or         $t2, $t1, $at
/* 487D0 80047BD0 AD460000 */  sw         $a2, ($t2)
/* 487D4 80047BD4 03E00008 */  jr         $ra
/* 487D8 80047BD8 00001025 */   or        $v0, $zero, $zero
/* 487DC 80047BDC 00000000 */  nop        

glabel func_80047BE0
/* 487E0 80047BE0 3C0EA460 */  lui        $t6, 0xa460
/* 487E4 80047BE4 8DC70010 */  lw         $a3, 0x10($t6)
/* 487E8 80047BE8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 487EC 80047BEC 30EF0003 */  andi       $t7, $a3, 3
/* 487F0 80047BF0 11E00006 */  beqz       $t7, .L80047C0C
/* 487F4 80047BF4 00000000 */   nop       
.L80047BF8:
/* 487F8 80047BF8 3C18A460 */  lui        $t8, 0xa460
/* 487FC 80047BFC 8F070010 */  lw         $a3, 0x10($t8)
/* 48800 80047C00 30F90003 */  andi       $t9, $a3, 3
/* 48804 80047C04 1720FFFC */  bnez       $t9, .L80047BF8
/* 48808 80047C08 00000000 */   nop       
.L80047C0C:
/* 4880C 80047C0C 8C88000C */  lw         $t0, 0xc($a0)
/* 48810 80047C10 3C01A000 */  lui        $at, 0xa000
/* 48814 80047C14 00001025 */  or         $v0, $zero, $zero
/* 48818 80047C18 01054825 */  or         $t1, $t0, $a1
/* 4881C 80047C1C 01215025 */  or         $t2, $t1, $at
/* 48820 80047C20 8D4B0000 */  lw         $t3, ($t2)
/* 48824 80047C24 27BD0008 */  addiu      $sp, $sp, 8
/* 48828 80047C28 03E00008 */  jr         $ra
/* 4882C 80047C2C ACCB0000 */   sw        $t3, ($a2)

glabel func_80047C30
/* 48830 80047C30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 48834 80047C34 AFBF001C */  sw         $ra, 0x1c($sp)
/* 48838 80047C38 AFA40028 */  sw         $a0, 0x28($sp)
/* 4883C 80047C3C 0C00F534 */  jal        func_8003D4D0
/* 48840 80047C40 AFB00018 */   sw        $s0, 0x18($sp)
/* 48844 80047C44 3C0E8007 */  lui        $t6, 0x8007
/* 48848 80047C48 8DCEF410 */  lw         $t6, -0xbf0($t6)
/* 4884C 80047C4C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 48850 80047C50 00408025 */  or         $s0, $v0, $zero
/* 48854 80047C54 3C018007 */  lui        $at, 0x8007
/* 48858 80047C58 01CFC025 */  or         $t8, $t6, $t7
/* 4885C 80047C5C AC38F410 */  sw         $t8, -0xbf0($at)
/* 48860 80047C60 0C00F53C */  jal        func_8003D4F0
/* 48864 80047C64 02002025 */   or        $a0, $s0, $zero
/* 48868 80047C68 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4886C 80047C6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 48870 80047C70 27BD0028 */  addiu      $sp, $sp, 0x28
/* 48874 80047C74 03E00008 */  jr         $ra
/* 48878 80047C78 00000000 */   nop       
/* 4887C 80047C7C 00000000 */  nop        