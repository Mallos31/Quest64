.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80101880
/* E290C0 80101880 00047080 */  sll        $t6, $a0, 2
/* E290C4 80101884 01C47021 */  addu       $t6, $t6, $a0
/* E290C8 80101888 000E7100 */  sll        $t6, $t6, 4
/* E290CC 8010188C 3C018015 */  lui        $at, %hi(D_8015701C)
/* E290D0 80101890 002E0821 */  addu       $at, $at, $t6
/* E290D4 80101894 03E00008 */  jr         $ra
/* E290D8 80101898 A420701C */   sh        $zero, %lo(D_8015701C)($at)
