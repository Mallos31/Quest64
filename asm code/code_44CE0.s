glabel func_800440E0
/* 44CE0 800440E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 44CE4 800440E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44CE8 800440E8 8CA60008 */  lw         $a2, 8($a1)
/* 44CEC 800440EC 00804025 */  or         $t0, $a0, $zero
/* 44CF0 800440F0 00A03825 */  or         $a3, $a1, $zero
/* 44CF4 800440F4 50C00023 */  beql       $a2, $zero, .L80044184
/* 44CF8 800440F8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 44CFC 800440FC 8CCE00D8 */  lw         $t6, 0xd8($a2)
/* 44D00 80044100 51C0001A */  beql       $t6, $zero, .L8004416C
/* 44D04 80044104 01002025 */   or        $a0, $t0, $zero
/* 44D08 80044108 AFA5001C */  sw         $a1, 0x1c($sp)
/* 44D0C 8004410C 0C00DA8C */  jal        func_80036A30
/* 44D10 80044110 AFA40018 */   sw        $a0, 0x18($sp)
/* 44D14 80044114 8FA7001C */  lw         $a3, 0x1c($sp)
/* 44D18 80044118 8FA80018 */  lw         $t0, 0x18($sp)
/* 44D1C 8004411C 10400018 */  beqz       $v0, .L80044180
/* 44D20 80044120 00403025 */   or        $a2, $v0, $zero
/* 44D24 80044124 8CF80008 */  lw         $t8, 8($a3)
/* 44D28 80044128 8D0F001C */  lw         $t7, 0x1c($t0)
/* 44D2C 8004412C 24050003 */  addiu      $a1, $zero, 3
/* 44D30 80044130 8F1900D8 */  lw         $t9, 0xd8($t8)
/* 44D34 80044134 A4400008 */  sh         $zero, 8($v0)
/* 44D38 80044138 01F94821 */  addu       $t1, $t7, $t9
/* 44D3C 8004413C AC490004 */  sw         $t1, 4($v0)
/* 44D40 80044140 8CEA0008 */  lw         $t2, 8($a3)
/* 44D44 80044144 AC4A000C */  sw         $t2, 0xc($v0)
/* 44D48 80044148 8CEB0008 */  lw         $t3, 8($a3)
/* 44D4C 8004414C 8D64000C */  lw         $a0, 0xc($t3)
/* 44D50 80044150 AFA7001C */  sw         $a3, 0x1c($sp)
/* 44D54 80044154 8C990008 */  lw         $t9, 8($a0)
/* 44D58 80044158 0320F809 */  jalr       $t9
/* 44D5C 8004415C 00000000 */   nop       
/* 44D60 80044160 10000006 */  b          .L8004417C
/* 44D64 80044164 8FA7001C */   lw        $a3, 0x1c($sp)
/* 44D68 80044168 01002025 */  or         $a0, $t0, $zero
.L8004416C:
/* 44D6C 8004416C 00C02825 */  or         $a1, $a2, $zero
/* 44D70 80044170 0C00DA60 */  jal        func_80036980
/* 44D74 80044174 AFA7001C */   sw        $a3, 0x1c($sp)
/* 44D78 80044178 8FA7001C */  lw         $a3, 0x1c($sp)
.L8004417C:
/* 44D7C 8004417C ACE00008 */  sw         $zero, 8($a3)
.L80044180:
/* 44D80 80044180 8FBF0014 */  lw         $ra, 0x14($sp)
.L80044184:
/* 44D84 80044184 27BD0018 */  addiu      $sp, $sp, 0x18
/* 44D88 80044188 03E00008 */  jr         $ra
/* 44D8C 8004418C 00000000 */   nop       

glabel func_80044190
/* 44D90 80044190 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 44D94 80044194 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44D98 80044198 AFA50024 */  sw         $a1, 0x24($sp)
/* 44D9C 8004419C AFA60028 */  sw         $a2, 0x28($sp)
/* 44DA0 800441A0 AFA7002C */  sw         $a3, 0x2c($sp)
/* 44DA4 800441A4 8CAF0008 */  lw         $t7, 8($a1)
/* 44DA8 800441A8 51E0001D */  beql       $t7, $zero, .L80044220
/* 44DAC 800441AC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 44DB0 800441B0 0C00DA8C */  jal        func_80036A30
/* 44DB4 800441B4 AFA40020 */   sw        $a0, 0x20($sp)
/* 44DB8 800441B8 10400018 */  beqz       $v0, .L8004421C
/* 44DBC 800441BC 8FA40020 */   lw        $a0, 0x20($sp)
/* 44DC0 800441C0 8FB90024 */  lw         $t9, 0x24($sp)
/* 44DC4 800441C4 8C98001C */  lw         $t8, 0x1c($a0)
/* 44DC8 800441C8 240B000B */  addiu      $t3, $zero, 0xb
/* 44DCC 800441CC 8F280008 */  lw         $t0, 8($t9)
/* 44DD0 800441D0 8D0900D8 */  lw         $t1, 0xd8($t0)
/* 44DD4 800441D4 A44B0008 */  sh         $t3, 8($v0)
/* 44DD8 800441D8 03095021 */  addu       $t2, $t8, $t1
/* 44DDC 800441DC AC4A0004 */  sw         $t2, 4($v0)
/* 44DE0 800441E0 87AC002A */  lh         $t4, 0x2a($sp)
/* 44DE4 800441E4 AC4C000C */  sw         $t4, 0xc($v0)
/* 44DE8 800441E8 AFA2001C */  sw         $v0, 0x1c($sp)
/* 44DEC 800441EC 0C00DA4A */  jal        func_80036928
/* 44DF0 800441F0 8FA5002C */   lw        $a1, 0x2c($sp)
/* 44DF4 800441F4 8FA6001C */  lw         $a2, 0x1c($sp)
/* 44DF8 800441F8 24050003 */  addiu      $a1, $zero, 3
/* 44DFC 800441FC ACC20010 */  sw         $v0, 0x10($a2)
/* 44E00 80044200 ACC00000 */  sw         $zero, ($a2)
/* 44E04 80044204 8FAD0024 */  lw         $t5, 0x24($sp)
/* 44E08 80044208 8DAE0008 */  lw         $t6, 8($t5)
/* 44E0C 8004420C 8DC4000C */  lw         $a0, 0xc($t6)
/* 44E10 80044210 8C990008 */  lw         $t9, 8($a0)
/* 44E14 80044214 0320F809 */  jalr       $t9
/* 44E18 80044218 00000000 */   nop       
.L8004421C:
/* 44E1C 8004421C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80044220:
/* 44E20 80044220 27BD0020 */  addiu      $sp, $sp, 0x20
/* 44E24 80044224 03E00008 */  jr         $ra
/* 44E28 80044228 00000000 */   nop       
/* 44E2C 8004422C 00000000 */  nop        
