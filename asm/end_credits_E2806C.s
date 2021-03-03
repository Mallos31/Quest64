.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010082C
/* E2806C 8010082C 3C028010 */  lui        $v0, %hi(D_801061B8)
/* E28070 80100830 8C4261B8 */  lw         $v0, %lo(D_801061B8)($v0)
/* E28074 80100834 00803825 */  or         $a3, $a0, $zero
/* E28078 80100838 AFA50004 */  sw         $a1, 4($sp)
/* E2807C 8010083C 10400017 */  beqz       $v0, .L8010089C
/* E28080 80100840 00001825 */   or        $v1, $zero, $zero
/* E28084 80100844 3C058010 */  lui        $a1, %hi(D_801061B0)
/* E28088 80100848 24A561B0 */  addiu      $a1, $a1, %lo(D_801061B0)
.L8010084C:
/* E2808C 8010084C 8CA60004 */  lw         $a2, 4($a1)
/* E28090 80100850 00002025 */  or         $a0, $zero, $zero
/* E28094 80100854 50C0000E */  beql       $a2, $zero, .L80100890
/* E28098 80100858 24630001 */   addiu     $v1, $v1, 1
/* E2809C 8010085C 8CA80000 */  lw         $t0, ($a1)
.L80100860:
/* E280A0 80100860 850E0022 */  lh         $t6, 0x22($t0)
/* E280A4 80100864 54EE0006 */  bnel       $a3, $t6, .L80100880
/* E280A8 80100868 24840001 */   addiu     $a0, $a0, 1
/* E280AC 8010086C 8FAF0004 */  lw         $t7, 4($sp)
/* E280B0 80100870 00801025 */  or         $v0, $a0, $zero
/* E280B4 80100874 03E00008 */  jr         $ra
/* E280B8 80100878 ADE30000 */   sw        $v1, ($t7)
/* E280BC 8010087C 24840001 */  addiu      $a0, $a0, 1
.L80100880:
/* E280C0 80100880 0086082B */  sltu       $at, $a0, $a2
/* E280C4 80100884 1420FFF6 */  bnez       $at, .L80100860
/* E280C8 80100888 25080028 */   addiu     $t0, $t0, 0x28
/* E280CC 8010088C 24630001 */  addiu      $v1, $v1, 1
.L80100890:
/* E280D0 80100890 0062082B */  sltu       $at, $v1, $v0
/* E280D4 80100894 1420FFED */  bnez       $at, .L8010084C
/* E280D8 80100898 24A50008 */   addiu     $a1, $a1, 8
.L8010089C:
/* E280DC 8010089C 2402FFFF */  addiu      $v0, $zero, -1
/* E280E0 801008A0 03E00008 */  jr         $ra
/* E280E4 801008A4 00000000 */   nop
