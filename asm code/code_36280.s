glabel func_80035680
/* 36280 80035680 E7AC0000 */  swc1       $f12, ($sp)
/* 36284 80035684 8FA20000 */  lw         $v0, ($sp)
/* 36288 80035688 C7A40000 */  lwc1       $f4, ($sp)
/* 3628C 8003568C 00021D83 */  sra        $v1, $v0, 0x16
/* 36290 80035690 306E01FF */  andi       $t6, $v1, 0x1ff
/* 36294 80035694 29C100FF */  slti       $at, $t6, 0xff
/* 36298 80035698 10200019 */  beqz       $at, .L80035700
/* 3629C 8003569C 01C01825 */   or        $v1, $t6, $zero
/* 362A0 800356A0 29C100E6 */  slti       $at, $t6, 0xe6
/* 362A4 800356A4 14200014 */  bnez       $at, .L800356F8
/* 362A8 800356A8 460020A1 */   cvt.d.s   $f2, $f4
/* 362AC 800356AC 46221302 */  mul.d      $f12, $f2, $f2
/* 362B0 800356B0 3C038007 */  lui        $v1, 0x8007
/* 362B4 800356B4 24631B40 */  addiu      $v1, $v1, 0x1b40
/* 362B8 800356B8 D4660020 */  ldc1       $f6, 0x20($v1)
/* 362BC 800356BC D46A0018 */  ldc1       $f10, 0x18($v1)
/* 362C0 800356C0 D4640010 */  ldc1       $f4, 0x10($v1)
/* 362C4 800356C4 462C3202 */  mul.d      $f8, $f6, $f12
/* 362C8 800356C8 462A4400 */  add.d      $f16, $f8, $f10
/* 362CC 800356CC D46A0008 */  ldc1       $f10, 8($v1)
/* 362D0 800356D0 462C8482 */  mul.d      $f18, $f16, $f12
/* 362D4 800356D4 46249180 */  add.d      $f6, $f18, $f4
/* 362D8 800356D8 462C3202 */  mul.d      $f8, $f6, $f12
/* 362DC 800356DC 46285380 */  add.d      $f14, $f10, $f8
/* 362E0 800356E0 462C1402 */  mul.d      $f16, $f2, $f12
/* 362E4 800356E4 00000000 */  nop        
/* 362E8 800356E8 462E8482 */  mul.d      $f18, $f16, $f14
/* 362EC 800356EC 46229100 */  add.d      $f4, $f18, $f2
/* 362F0 800356F0 03E00008 */  jr         $ra
/* 362F4 800356F4 46202020 */   cvt.s.d   $f0, $f4
.L800356F8:
/* 362F8 800356F8 03E00008 */  jr         $ra
/* 362FC 800356FC C7A00000 */   lwc1      $f0, ($sp)
.L80035700:
/* 36300 80035700 28610136 */  slti       $at, $v1, 0x136
/* 36304 80035704 10200044 */  beqz       $at, .L80035818
/* 36308 80035708 C7A40000 */   lwc1      $f4, ($sp)
/* 3630C 8003570C C7A60000 */  lwc1       $f6, ($sp)
/* 36310 80035710 3C018007 */  lui        $at, 0x8007
/* 36314 80035714 D42A1B68 */  ldc1       $f10, 0x1b68($at)
/* 36318 80035718 460030A1 */  cvt.d.s    $f2, $f6
/* 3631C 8003571C 44804800 */  mtc1       $zero, $f9
/* 36320 80035720 462A1002 */  mul.d      $f0, $f2, $f10
/* 36324 80035724 44804000 */  mtc1       $zero, $f8
/* 36328 80035728 3C013FE0 */  lui        $at, 0x3fe0
/* 3632C 8003572C 4620403E */  c.le.d     $f8, $f0
/* 36330 80035730 00000000 */  nop        
/* 36334 80035734 4502000B */  bc1fl      .L80035764
/* 36338 80035738 44813800 */   mtc1      $at, $f7
/* 3633C 8003573C 3C013FE0 */  lui        $at, 0x3fe0
/* 36340 80035740 44818800 */  mtc1       $at, $f17
/* 36344 80035744 44808000 */  mtc1       $zero, $f16
/* 36348 80035748 00000000 */  nop        
/* 3634C 8003574C 46300480 */  add.d      $f18, $f0, $f16
/* 36350 80035750 4620910D */  trunc.w.d  $f4, $f18
/* 36354 80035754 44022000 */  mfc1       $v0, $f4
/* 36358 80035758 10000009 */  b          .L80035780
/* 3635C 8003575C 44828000 */   mtc1      $v0, $f16
/* 36360 80035760 44813800 */  mtc1       $at, $f7
.L80035764:
/* 36364 80035764 44803000 */  mtc1       $zero, $f6
/* 36368 80035768 00000000 */  nop        
/* 3636C 8003576C 46260281 */  sub.d      $f10, $f0, $f6
/* 36370 80035770 4620520D */  trunc.w.d  $f8, $f10
/* 36374 80035774 44024000 */  mfc1       $v0, $f8
/* 36378 80035778 00000000 */  nop        
/* 3637C 8003577C 44828000 */  mtc1       $v0, $f16
.L80035780:
/* 36380 80035780 3C018007 */  lui        $at, 0x8007
/* 36384 80035784 D4321B70 */  ldc1       $f18, 0x1b70($at)
/* 36388 80035788 46808021 */  cvt.d.w    $f0, $f16
/* 3638C 8003578C 3C018007 */  lui        $at, 0x8007
/* 36390 80035790 D4261B78 */  ldc1       $f6, 0x1b78($at)
/* 36394 80035794 3C038007 */  lui        $v1, 0x8007
/* 36398 80035798 24631B40 */  addiu      $v1, $v1, 0x1b40
/* 3639C 8003579C 46320102 */  mul.d      $f4, $f0, $f18
/* 363A0 800357A0 D4680020 */  ldc1       $f8, 0x20($v1)
/* 363A4 800357A4 D4720018 */  ldc1       $f18, 0x18($v1)
/* 363A8 800357A8 30590001 */  andi       $t9, $v0, 1
/* 363AC 800357AC 46260282 */  mul.d      $f10, $f0, $f6
/* 363B0 800357B0 46241081 */  sub.d      $f2, $f2, $f4
/* 363B4 800357B4 462A1081 */  sub.d      $f2, $f2, $f10
/* 363B8 800357B8 D46A0010 */  ldc1       $f10, 0x10($v1)
/* 363BC 800357BC 46221302 */  mul.d      $f12, $f2, $f2
/* 363C0 800357C0 00000000 */  nop        
/* 363C4 800357C4 462C4402 */  mul.d      $f16, $f8, $f12
/* 363C8 800357C8 46328100 */  add.d      $f4, $f16, $f18
/* 363CC 800357CC D4720008 */  ldc1       $f18, 8($v1)
/* 363D0 800357D0 462C2182 */  mul.d      $f6, $f4, $f12
/* 363D4 800357D4 462A3200 */  add.d      $f8, $f6, $f10
/* 363D8 800357D8 462C4402 */  mul.d      $f16, $f8, $f12
/* 363DC 800357DC 17200007 */  bnez       $t9, .L800357FC
/* 363E0 800357E0 46309380 */   add.d     $f14, $f18, $f16
/* 363E4 800357E4 462C1102 */  mul.d      $f4, $f2, $f12
/* 363E8 800357E8 00000000 */  nop        
/* 363EC 800357EC 462E2182 */  mul.d      $f6, $f4, $f14
/* 363F0 800357F0 46223280 */  add.d      $f10, $f6, $f2
/* 363F4 800357F4 03E00008 */  jr         $ra
/* 363F8 800357F8 46205020 */   cvt.s.d   $f0, $f10
.L800357FC:
/* 363FC 800357FC 462C1202 */  mul.d      $f8, $f2, $f12
/* 36400 80035800 00000000 */  nop        
/* 36404 80035804 462E4482 */  mul.d      $f18, $f8, $f14
/* 36408 80035808 46229400 */  add.d      $f16, $f18, $f2
/* 3640C 8003580C 46208020 */  cvt.s.d    $f0, $f16
/* 36410 80035810 03E00008 */  jr         $ra
/* 36414 80035814 46000007 */   neg.s     $f0, $f0
.L80035818:
/* 36418 80035818 46042032 */  c.eq.s     $f4, $f4
/* 3641C 8003581C 3C018007 */  lui        $at, 0x8007
/* 36420 80035820 45010004 */  bc1t       .L80035834
/* 36424 80035824 00000000 */   nop       
/* 36428 80035828 3C018007 */  lui        $at, 0x8007
/* 3642C 8003582C 03E00008 */  jr         $ra
/* 36430 80035830 C4201F10 */   lwc1      $f0, 0x1f10($at)
.L80035834:
/* 36434 80035834 C4201B80 */  lwc1       $f0, 0x1b80($at)
/* 36438 80035838 03E00008 */  jr         $ra
/* 3643C 8003583C 00000000 */   nop       

glabel func_80035840
/* 36440 80035840 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36444 80035844 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36448 80035848 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3644C 8003584C AFA60020 */  sw         $a2, 0x20($sp)
/* 36450 80035850 AFA70024 */  sw         $a3, 0x24($sp)
/* 36454 80035854 0C00D4C0 */  jal        func_80035300
/* 36458 80035858 AFA40018 */   sw        $a0, 0x18($sp)
/* 3645C 8003585C C7A40020 */  lwc1       $f4, 0x20($sp)
/* 36460 80035860 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* 36464 80035864 3C014000 */  lui        $at, 0x4000
/* 36468 80035868 44814000 */  mtc1       $at, $f8
/* 3646C 8003586C 46062001 */  sub.s      $f0, $f4, $f6
/* 36470 80035870 8FA20018 */  lw         $v0, 0x18($sp)
/* 36474 80035874 C7AE0028 */  lwc1       $f14, 0x28($sp)
/* 36478 80035878 C7B00030 */  lwc1       $f16, 0x30($sp)
/* 3647C 8003587C 46004283 */  div.s      $f10, $f8, $f0
/* 36480 80035880 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* 36484 80035884 44813000 */  mtc1       $at, $f6
/* 36488 80035888 3C01C000 */  lui        $at, 0xc000
/* 3648C 8003588C 46128301 */  sub.s      $f12, $f16, $f18
/* 36490 80035890 00001825 */  or         $v1, $zero, $zero
/* 36494 80035894 24040004 */  addiu      $a0, $zero, 4
/* 36498 80035898 E44A0000 */  swc1       $f10, ($v0)
/* 3649C 8003589C C7A40024 */  lwc1       $f4, 0x24($sp)
/* 364A0 800358A0 44815000 */  mtc1       $at, $f10
/* 364A4 800358A4 3C013F80 */  lui        $at, 0x3f80
/* 364A8 800358A8 46047081 */  sub.s      $f2, $f14, $f4
/* 364AC 800358AC 460C5103 */  div.s      $f4, $f10, $f12
/* 364B0 800358B0 46023203 */  div.s      $f8, $f6, $f2
/* 364B4 800358B4 E4440028 */  swc1       $f4, 0x28($v0)
/* 364B8 800358B8 E4480014 */  swc1       $f8, 0x14($v0)
/* 364BC 800358BC C7A8001C */  lwc1       $f8, 0x1c($sp)
/* 364C0 800358C0 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 364C4 800358C4 46083280 */  add.s      $f10, $f6, $f8
/* 364C8 800358C8 46005107 */  neg.s      $f4, $f10
/* 364CC 800358CC 46002183 */  div.s      $f6, $f4, $f0
/* 364D0 800358D0 E4460030 */  swc1       $f6, 0x30($v0)
/* 364D4 800358D4 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 364D8 800358D8 46087280 */  add.s      $f10, $f14, $f8
/* 364DC 800358DC 46128200 */  add.s      $f8, $f16, $f18
/* 364E0 800358E0 46005107 */  neg.s      $f4, $f10
/* 364E4 800358E4 46004287 */  neg.s      $f10, $f8
/* 364E8 800358E8 46022183 */  div.s      $f6, $f4, $f2
/* 364EC 800358EC 460C5103 */  div.s      $f4, $f10, $f12
/* 364F0 800358F0 E4460034 */  swc1       $f6, 0x34($v0)
/* 364F4 800358F4 44813000 */  mtc1       $at, $f6
/* 364F8 800358F8 00000000 */  nop        
/* 364FC 800358FC E446003C */  swc1       $f6, 0x3c($v0)
/* 36500 80035900 E4440038 */  swc1       $f4, 0x38($v0)
/* 36504 80035904 C7A00034 */  lwc1       $f0, 0x34($sp)
/* 36508 80035908 C4480000 */  lwc1       $f8, ($v0)
/* 3650C 8003590C 24630001 */  addiu      $v1, $v1, 1
/* 36510 80035910 C4520004 */  lwc1       $f18, 4($v0)
/* 36514 80035914 46004302 */  mul.s      $f12, $f8, $f0
/* 36518 80035918 C44E0008 */  lwc1       $f14, 8($v0)
/* 3651C 8003591C 10640010 */  beq        $v1, $a0, .L80035960
/* 36520 80035920 C450000C */   lwc1      $f16, 0xc($v0)
.L80035924:
/* 36524 80035924 46009282 */  mul.s      $f10, $f18, $f0
/* 36528 80035928 C4480010 */  lwc1       $f8, 0x10($v0)
/* 3652C 8003592C C4520014 */  lwc1       $f18, 0x14($v0)
/* 36530 80035930 46007182 */  mul.s      $f6, $f14, $f0
/* 36534 80035934 C44E0018 */  lwc1       $f14, 0x18($v0)
/* 36538 80035938 24630001 */  addiu      $v1, $v1, 1
/* 3653C 8003593C 46008102 */  mul.s      $f4, $f16, $f0
/* 36540 80035940 C450001C */  lwc1       $f16, 0x1c($v0)
/* 36544 80035944 E44C0000 */  swc1       $f12, ($v0)
/* 36548 80035948 46004302 */  mul.s      $f12, $f8, $f0
/* 3654C 8003594C E44A0004 */  swc1       $f10, 4($v0)
/* 36550 80035950 E4460008 */  swc1       $f6, 8($v0)
/* 36554 80035954 24420010 */  addiu      $v0, $v0, 0x10
/* 36558 80035958 1464FFF2 */  bne        $v1, $a0, .L80035924
/* 3655C 8003595C E444FFFC */   swc1      $f4, -4($v0)
.L80035960:
/* 36560 80035960 46009282 */  mul.s      $f10, $f18, $f0
/* 36564 80035964 24420010 */  addiu      $v0, $v0, 0x10
/* 36568 80035968 E44CFFF0 */  swc1       $f12, -0x10($v0)
/* 3656C 8003596C 46007182 */  mul.s      $f6, $f14, $f0
/* 36570 80035970 00000000 */  nop        
/* 36574 80035974 46008102 */  mul.s      $f4, $f16, $f0
/* 36578 80035978 E44AFFF4 */  swc1       $f10, -0xc($v0)
/* 3657C 8003597C E446FFF8 */  swc1       $f6, -8($v0)
/* 36580 80035980 E444FFFC */  swc1       $f4, -4($v0)
/* 36584 80035984 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36588 80035988 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3658C 8003598C 03E00008 */  jr         $ra
/* 36590 80035990 00000000 */   nop       

glabel func_80035994
/* 36594 80035994 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 36598 80035998 44856000 */  mtc1       $a1, $f12
/* 3659C 8003599C 44867000 */  mtc1       $a2, $f14
/* 365A0 800359A0 44878000 */  mtc1       $a3, $f16
/* 365A4 800359A4 C7A40078 */  lwc1       $f4, 0x78($sp)
/* 365A8 800359A8 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* 365AC 800359AC C7A80080 */  lwc1       $f8, 0x80($sp)
/* 365B0 800359B0 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* 365B4 800359B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 365B8 800359B8 AFA40068 */  sw         $a0, 0x68($sp)
/* 365BC 800359BC 44056000 */  mfc1       $a1, $f12
/* 365C0 800359C0 44067000 */  mfc1       $a2, $f14
/* 365C4 800359C4 44078000 */  mfc1       $a3, $f16
/* 365C8 800359C8 27A40028 */  addiu      $a0, $sp, 0x28
/* 365CC 800359CC E7A40010 */  swc1       $f4, 0x10($sp)
/* 365D0 800359D0 E7A60014 */  swc1       $f6, 0x14($sp)
/* 365D4 800359D4 E7A80018 */  swc1       $f8, 0x18($sp)
/* 365D8 800359D8 0C00D610 */  jal        func_80035840
/* 365DC 800359DC E7AA001C */   swc1      $f10, 0x1c($sp)
/* 365E0 800359E0 27A40028 */  addiu      $a0, $sp, 0x28
/* 365E4 800359E4 0C00D480 */  jal        func_80035200
/* 365E8 800359E8 8FA50068 */   lw        $a1, 0x68($sp)
/* 365EC 800359EC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 365F0 800359F0 27BD0068 */  addiu      $sp, $sp, 0x68
/* 365F4 800359F4 03E00008 */  jr         $ra
/* 365F8 800359F8 00000000 */   nop       
/* 365FC 800359FC 00000000 */  nop        
