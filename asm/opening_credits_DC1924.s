.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80100304
/* DC1924 80100304 0C040C93 */  jal        func_8010324C
/* DC1928 80100308 00000000 */   nop
/* DC192C 8010030C 3C0E8009 */  lui        $t6, %hi(ButtonPressedFrame)
/* DC1930 80100310 95CE2876 */  lhu        $t6, %lo(ButtonPressedFrame)($t6)
/* DC1934 80100314 24040001 */  addiu      $a0, $zero, 1
/* DC1938 80100318 240500FF */  addiu      $a1, $zero, 0xff
/* DC193C 8010031C 31CF1000 */  andi       $t7, $t6, 0x1000
/* DC1940 80100320 11E00009 */  beqz       $t7, .L80100348
/* DC1944 80100324 00000000 */   nop
/* DC1948 80100328 0C0096E3 */  jal        func_80025B8C
/* DC194C 8010032C 24060040 */   addiu     $a2, $zero, 0x40
/* DC1950 80100330 3C028010 */  lui        $v0, %hi(D_80106200)
/* DC1954 80100334 24426200 */  addiu      $v0, $v0, %lo(D_80106200)
/* DC1958 80100338 AC400000 */  sw         $zero, ($v0)
/* DC195C 8010033C 24180001 */  addiu      $t8, $zero, 1
/* DC1960 80100340 3C018010 */  lui        $at, %hi(D_8010620C)
/* DC1964 80100344 A038620C */  sb         $t8, %lo(D_8010620C)($at)
.L80100348:
/* DC1968 80100348 3C028010 */  lui        $v0, %hi(D_80106200)
/* DC196C 8010034C 24426200 */  addiu      $v0, $v0, %lo(D_80106200)
/* DC1970 80100350 8C590000 */  lw         $t9, ($v0)
/* DC1974 80100354 3C088010 */  lui        $t0, %hi(D_8010620C)
/* DC1978 80100358 572000B2 */  bnel       $t9, $zero, .L80100624
/* DC197C 8010035C 8FA2001C */   lw        $v0, 0x1c($sp)
/* DC1980 80100360 9108620C */  lbu        $t0, %lo(D_8010620C)($t0)
/* DC1984 80100364 3C018010 */  lui        $at, %hi(D_80106220)
/* DC1988 80100368 AC206220 */  sw         $zero, %lo(D_80106220)($at)
/* DC198C 8010036C 11000006 */  beqz       $t0, .L80100388
/* DC1990 80100370 3C038010 */   lui       $v1, 0x8010
/* DC1994 80100374 2409000A */  addiu      $t1, $zero, 0xa
/* DC1998 80100378 240A0001 */  addiu      $t2, $zero, 1
/* DC199C 8010037C AC490000 */  sw         $t1, ($v0)
/* DC19A0 80100380 10000007 */  b          .L801003A0
/* DC19A4 80100384 AFAA001C */   sw        $t2, 0x1c($sp)
.L80100388:
/* DC19A8 80100388 8C636210 */  lw         $v1, 0x6210($v1)
/* DC19AC 8010038C 240B0096 */  addiu      $t3, $zero, 0x96
/* DC19B0 80100390 AC4B0000 */  sw         $t3, ($v0)
/* DC19B4 80100394 3C018010 */  lui        $at, %hi(D_80106210)
/* DC19B8 80100398 24630001 */  addiu      $v1, $v1, 1
/* DC19BC 8010039C AC236210 */  sw         $v1, %lo(D_80106210)($at)
.L801003A0:
/* DC19C0 801003A0 3C018010 */  lui        $at, %hi(D_8010620C)
/* DC19C4 801003A4 1000009E */  b          .L80100620
/* DC19C8 801003A8 A020620C */   sb        $zero, %lo(D_8010620C)($at)
