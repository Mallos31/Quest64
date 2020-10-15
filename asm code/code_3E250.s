glabel func_8003D650
/* 3E250 8003D650 240E0002 */  addiu      $t6, $zero, 2
/* 3E254 8003D654 3C018009 */  lui        $at, 0x8009
/* 3E258 8003D658 A02E5564 */  sb         $t6, 0x5564($at)
/* 3E25C 8003D65C 3C018009 */  lui        $at, 0x8009
/* 3E260 8003D660 3C0FA500 */  lui        $t7, 0xa500
/* 3E264 8003D664 AC2F556C */  sw         $t7, 0x556c($at)
/* 3E268 8003D668 3C018009 */  lui        $at, 0x8009
/* 3E26C 8003D66C 24180003 */  addiu      $t8, $zero, 3
/* 3E270 8003D670 A0385565 */  sb         $t8, 0x5565($at)
/* 3E274 8003D674 3C018009 */  lui        $at, 0x8009
/* 3E278 8003D678 24190006 */  addiu      $t9, $zero, 6
/* 3E27C 8003D67C A0395568 */  sb         $t9, 0x5568($at)
/* 3E280 8003D680 3C018009 */  lui        $at, 0x8009
/* 3E284 8003D684 24080006 */  addiu      $t0, $zero, 6
/* 3E288 8003D688 24090002 */  addiu      $t1, $zero, 2
/* 3E28C 8003D68C A0285566 */  sb         $t0, 0x5566($at)
/* 3E290 8003D690 A0295567 */  sb         $t1, 0x5567($at)
/* 3E294 8003D694 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E298 8003D698 3C018009 */  lui        $at, 0x8009
/* 3E29C 8003D69C 240A0001 */  addiu      $t2, $zero, 1
/* 3E2A0 8003D6A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E2A4 8003D6A4 A02A5569 */  sb         $t2, 0x5569($at)
/* 3E2A8 8003D6A8 240B0003 */  addiu      $t3, $zero, 3
/* 3E2AC 8003D6AC 3C0CA460 */  lui        $t4, 0xa460
/* 3E2B0 8003D6B0 AD8B0024 */  sw         $t3, 0x24($t4)
/* 3E2B4 8003D6B4 3C0D8009 */  lui        $t5, 0x8009
/* 3E2B8 8003D6B8 91AD5568 */  lbu        $t5, 0x5568($t5)
/* 3E2BC 8003D6BC 3C0EA460 */  lui        $t6, 0xa460
/* 3E2C0 8003D6C0 3C0F8009 */  lui        $t7, 0x8009
/* 3E2C4 8003D6C4 ADCD0028 */  sw         $t5, 0x28($t6)
/* 3E2C8 8003D6C8 91EF5566 */  lbu        $t7, 0x5566($t7)
/* 3E2CC 8003D6CC 3C18A460 */  lui        $t8, 0xa460
/* 3E2D0 8003D6D0 3C198009 */  lui        $t9, 0x8009
/* 3E2D4 8003D6D4 AF0F002C */  sw         $t7, 0x2c($t8)
/* 3E2D8 8003D6D8 93395567 */  lbu        $t9, 0x5567($t9)
/* 3E2DC 8003D6DC 3C08A460 */  lui        $t0, 0xa460
/* 3E2E0 8003D6E0 3C048009 */  lui        $a0, 0x8009
/* 3E2E4 8003D6E4 3C018009 */  lui        $at, 0x8009
/* 3E2E8 8003D6E8 24845560 */  addiu      $a0, $a0, 0x5560
/* 3E2EC 8003D6EC AD190030 */  sw         $t9, 0x30($t0)
/* 3E2F0 8003D6F0 AC205570 */  sw         $zero, 0x5570($at)
/* 3E2F4 8003D6F4 24840014 */  addiu      $a0, $a0, 0x14
/* 3E2F8 8003D6F8 0C00F50C */  jal        func_8003D430
/* 3E2FC 8003D6FC 24050060 */   addiu     $a1, $zero, 0x60
/* 3E300 8003D700 0C00F534 */  jal        func_8003D4D0
/* 3E304 8003D704 00000000 */   nop       
/* 3E308 8003D708 3C098007 */  lui        $t1, 0x8007
/* 3E30C 8003D70C 8D29F43C */  lw         $t1, -0xbc4($t1)
/* 3E310 8003D710 3C018009 */  lui        $at, 0x8009
/* 3E314 8003D714 3C0A8009 */  lui        $t2, 0x8009
/* 3E318 8003D718 AC295560 */  sw         $t1, 0x5560($at)
/* 3E31C 8003D71C 3C018007 */  lui        $at, 0x8007
/* 3E320 8003D720 254A5560 */  addiu      $t2, $t2, 0x5560
/* 3E324 8003D724 AC2AF43C */  sw         $t2, -0xbc4($at)
/* 3E328 8003D728 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3E32C 8003D72C 3C018009 */  lui        $at, 0x8009
/* 3E330 8003D730 AC2A55D4 */  sw         $t2, 0x55d4($at)
/* 3E334 8003D734 0C00F53C */  jal        func_8003D4F0
/* 3E338 8003D738 8FA4001C */   lw        $a0, 0x1c($sp)
/* 3E33C 8003D73C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E340 8003D740 3C028009 */  lui        $v0, 0x8009
/* 3E344 8003D744 24425560 */  addiu      $v0, $v0, 0x5560
/* 3E348 8003D748 03E00008 */  jr         $ra
/* 3E34C 8003D74C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003D750
/* 3E350 8003D750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E354 8003D754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E358 8003D758 240E0001 */  addiu      $t6, $zero, 1
/* 3E35C 8003D75C 3C018007 */  lui        $at, 0x8007
/* 3E360 8003D760 3C048009 */  lui        $a0, 0x8009
/* 3E364 8003D764 3C058009 */  lui        $a1, 0x8009
/* 3E368 8003D768 AC2E0A10 */  sw         $t6, 0xa10($at)
/* 3E36C 8003D76C 24A555E0 */  addiu      $a1, $a1, 0x55e0
/* 3E370 8003D770 248455E8 */  addiu      $a0, $a0, 0x55e8
/* 3E374 8003D774 0C00CFC4 */  jal        func_80033F10
/* 3E378 8003D778 24060001 */   addiu     $a2, $zero, 1
/* 3E37C 8003D77C 3C048009 */  lui        $a0, 0x8009
/* 3E380 8003D780 248455E8 */  addiu      $a0, $a0, 0x55e8
/* 3E384 8003D784 00002825 */  or         $a1, $zero, $zero
/* 3E388 8003D788 0C00D080 */  jal        func_80034200
/* 3E38C 8003D78C 00003025 */   or        $a2, $zero, $zero
/* 3E390 8003D790 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E394 8003D794 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E398 8003D798 03E00008 */  jr         $ra
/* 3E39C 8003D79C 00000000 */   nop       

glabel func_8003D7A0
/* 3E3A0 8003D7A0 3C0E8007 */  lui        $t6, 0x8007
/* 3E3A4 8003D7A4 8DCE0A10 */  lw         $t6, 0xa10($t6)
/* 3E3A8 8003D7A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E3AC 8003D7AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E3B0 8003D7B0 15C00003 */  bnez       $t6, .L8003D7C0
/* 3E3B4 8003D7B4 00000000 */   nop       
/* 3E3B8 8003D7B8 0C00F5D4 */  jal        func_8003D750
/* 3E3BC 8003D7BC 00000000 */   nop       
.L8003D7C0:
/* 3E3C0 8003D7C0 3C048009 */  lui        $a0, 0x8009
/* 3E3C4 8003D7C4 248455E8 */  addiu      $a0, $a0, 0x55e8
/* 3E3C8 8003D7C8 27A5001C */  addiu      $a1, $sp, 0x1c
/* 3E3CC 8003D7CC 0C00D008 */  jal        func_80034020
/* 3E3D0 8003D7D0 24060001 */   addiu     $a2, $zero, 1
/* 3E3D4 8003D7D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E3D8 8003D7D8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3E3DC 8003D7DC 03E00008 */  jr         $ra
/* 3E3E0 8003D7E0 00000000 */   nop       

glabel func_8003D7E4
/* 3E3E4 8003D7E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E3E8 8003D7E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E3EC 8003D7EC 3C048009 */  lui        $a0, 0x8009
/* 3E3F0 8003D7F0 248455E8 */  addiu      $a0, $a0, 0x55e8
/* 3E3F4 8003D7F4 00002825 */  or         $a1, $zero, $zero
/* 3E3F8 8003D7F8 0C00D080 */  jal        func_80034200
/* 3E3FC 8003D7FC 00003025 */   or        $a2, $zero, $zero
/* 3E400 8003D800 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E404 8003D804 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E408 8003D808 03E00008 */  jr         $ra
/* 3E40C 8003D80C 00000000 */   nop       

glabel func_8003D810
/* 3E410 8003D810 14800003 */  bnez       $a0, .L8003D820
/* 3E414 8003D814 00000000 */   nop       
/* 3E418 8003D818 3C048007 */  lui        $a0, 0x8007
/* 3E41C 8003D81C 8C840A00 */  lw         $a0, 0xa00($a0)
.L8003D820:
/* 3E420 8003D820 03E00008 */  jr         $ra
/* 3E424 8003D824 8C820004 */   lw        $v0, 4($a0)
/* 3E428 8003D828 00000000 */  nop        
/* 3E42C 8003D82C 00000000 */  nop        
