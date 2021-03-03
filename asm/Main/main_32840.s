.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel loadTitleScreenData
/* 32840 80031C40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 32844 80031C44 3C0400DA */  lui        $a0, 0xda
/* 32848 80031C48 248468F0 */  addiu      $a0, $a0, 0x68f0
/* 3284C 80031C4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 32850 80031C50 3C0E00DC */  lui        $t6, 0xdc
/* 32854 80031C54 25CE1620 */  addiu      $t6, $t6, 0x1620
/* 32858 80031C58 3C058010 */  lui        $a1, %hi(virt_actorSpace)
/* 3285C 80031C5C 24A50000 */  addiu      $a1, $a1, %lo(virt_actorSpace)
/* 32860 80031C60 0C009098 */  jal        loadData
/* 32864 80031C64 01C43023 */   subu      $a2, $t6, $a0
/* 32868 80031C68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3286C 80031C6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 32870 80031C70 03E00008 */  jr         $ra
/* 32874 80031C74 00000000 */   nop

glabel loadCredits&StoryData
/* 32878 80031C78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3287C 80031C7C 3C0400DC */  lui        $a0, 0xdc
/* 32880 80031C80 24841620 */  addiu      $a0, $a0, 0x1620
/* 32884 80031C84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32888 80031C88 3C0E00E2 */  lui        $t6, 0xe2
/* 3288C 80031C8C 25CE7840 */  addiu      $t6, $t6, 0x7840
/* 32890 80031C90 3C058010 */  lui        $a1, %hi(virt_actorSpace)
/* 32894 80031C94 24A50000 */  addiu      $a1, $a1, %lo(virt_actorSpace)
/* 32898 80031C98 0C009098 */  jal        loadData
/* 3289C 80031C9C 01C43023 */   subu      $a2, $t6, $a0
/* 328A0 80031CA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 328A4 80031CA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 328A8 80031CA8 03E00008 */  jr         $ra
/* 328AC 80031CAC 00000000 */   nop

glabel loadCreditsData
/* 328B0 80031CB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 328B4 80031CB4 3C0400E2 */  lui        $a0, 0xe2
/* 328B8 80031CB8 24847840 */  addiu      $a0, $a0, 0x7840
/* 328BC 80031CBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 328C0 80031CC0 3C0E00E8 */  lui        $t6, 0xe8
/* 328C4 80031CC4 25CEE800 */  addiu      $t6, $t6, -0x1800
/* 328C8 80031CC8 3C058010 */  lui        $a1, %hi(virt_actorSpace)
/* 328CC 80031CCC 24A50000 */  addiu      $a1, $a1, %lo(virt_actorSpace)
/* 328D0 80031CD0 0C009098 */  jal        loadData
/* 328D4 80031CD4 01C43023 */   subu      $a2, $t6, $a0
/* 328D8 80031CD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 328DC 80031CDC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 328E0 80031CE0 03E00008 */  jr         $ra
/* 328E4 80031CE4 00000000 */   nop
/* 328E8 80031CE8 00000000 */  nop
/* 328EC 80031CEC 00000000 */  nop
