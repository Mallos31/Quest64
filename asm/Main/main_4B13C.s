.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004A53C
/* 4B13C 8004A53C 20730010 */  addi       $s3, $v1, 0x10
.L8004A540:
/* 4B140 8004A540 4B1FF947 */  .byte      0x4b, 0x1f, 0xf9, 0x47
/* 4B144 8004A544 20320008 */  addi       $s2, $at, 8
.L8004A548:
/* 4B148 8004A548 C8431800 */  bbit0      $v0, 3, .L8005054C
/* 4B14C 8004A54C C8441804 */   bbit0     $v0, 4, .L80050560
/* 4B150 8004A550 C8212000 */   bbit0     $at, 1, .L80052554
/* 4B154 8004A554 C8222002 */   bbit0     $at, 2, .L80052560
/* 4B158 8004A558 C8431C00 */   bbit0     $v0, 3, .L8005155C
/* 4B15C 8004A55C C8441C04 */   bbit0     $v0, 4, .L80051570
/* 4B160 8004A560 4A82218C */   .byte     0x4a, 0x82, 0x21, 0x8c
/* 4B164 8004A564 20210002 */  addi       $at, $at, 2
/* 4B168 8004A568 4A82198D */  .byte      0x4a, 0x82, 0x19, 0x8d
/* 4B16C 8004A56C 20420008 */  addi       $v0, $v0, 8
/* 4B170 8004A570 4A81218E */  .byte      0x4a, 0x81, 0x21, 0x8e
/* 4B174 8004A574 4A81194F */  .byte      0x4a, 0x81, 0x19, 0x4f
/* 4B178 8004A578 1432FFF3 */  bne        $at, $s2, .L8004A548
/* 4B17C 8004A57C 4B1FF98E */   .byte     0x4b, 0x1f, 0xf9, 0x8e
/* 4B180 8004A580 2042FFE0 */  addi       $v0, $v0, -0x20
/* 4B184 8004A584 20210008 */  addi       $at, $at, 8
/* 4B188 8004A588 E8652000 */  bbit1      $v1, 5, .L8005258C
/* 4B18C 8004A58C E8662002 */   bbit1     $v1, 6, .L80052598
/* 4B190 8004A590 1473FFEB */   bne       $v1, $s3, .L8004A540
/* 4B194 8004A594 20630010 */   addi      $v1, $v1, 0x10
/* 4B198 8004A598 03E00008 */  jr         $ra
/* 4B19C 8004A59C 00000000 */   nop
