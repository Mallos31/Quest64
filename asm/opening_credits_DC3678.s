.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80102058
/* DC3678 80102058 00047080 */  sll        $t6, $a0, 2
/* DC367C 8010205C 01C47021 */  addu       $t6, $t6, $a0
/* DC3680 80102060 000E7100 */  sll        $t6, $t6, 4
/* DC3684 80102064 3C018016 */  lui        $at, %hi(D_80166284)
/* DC3688 80102068 002E0821 */  addu       $at, $at, $t6
/* DC368C 8010206C 03E00008 */  jr         $ra
/* DC3690 80102070 A4206284 */   sh        $zero, %lo(D_80166284)($at)
