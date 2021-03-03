.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80104874
/* DC5E94 80104874 27BDFEE0 */  addiu      $sp, $sp, -0x120
/* DC5E98 80104878 3C038008 */  lui        $v1, %hi(UNK_DisplayListCommand)
/* DC5E9C 8010487C 2463B2FC */  addiu      $v1, $v1, %lo(UNK_DisplayListCommand)
/* DC5EA0 80104880 8C620000 */  lw         $v0, ($v1)
/* DC5EA4 80104884 AFBF002C */  sw         $ra, 0x2c($sp)
/* DC5EA8 80104888 AFBE0028 */  sw         $fp, 0x28($sp)
/* DC5EAC 8010488C 244E0008 */  addiu      $t6, $v0, 8
/* DC5EB0 80104890 AFB70024 */  sw         $s7, 0x24($sp)
/* DC5EB4 80104894 AFB60020 */  sw         $s6, 0x20($sp)
/* DC5EB8 80104898 AFB5001C */  sw         $s5, 0x1c($sp)
/* DC5EBC 8010489C AFB40018 */  sw         $s4, 0x18($sp)
/* DC5EC0 801048A0 AFB30014 */  sw         $s3, 0x14($sp)
/* DC5EC4 801048A4 AFB20010 */  sw         $s2, 0x10($sp)
/* DC5EC8 801048A8 AFB1000C */  sw         $s1, 0xc($sp)
/* DC5ECC 801048AC AFB00008 */  sw         $s0, 8($sp)
/* DC5ED0 801048B0 AFA00114 */  sw         $zero, 0x114($sp)
/* DC5ED4 801048B4 AC6E0000 */  sw         $t6, ($v1)
/* DC5ED8 801048B8 3C188010 */  lui        $t8, %hi(D_80106240)
/* DC5EDC 801048BC 27186240 */  addiu      $t8, $t8, %lo(D_80106240)
/* DC5EE0 801048C0 3C0F0600 */  lui        $t7, 0x600
/* DC5EE4 801048C4 AC4F0000 */  sw         $t7, ($v0)
/* DC5EE8 801048C8 AC580004 */  sw         $t8, 4($v0)
/* DC5EEC 801048CC 8C620000 */  lw         $v0, ($v1)
/* DC5EF0 801048D0 3C0EBA00 */  lui        $t6, 0xba00
/* DC5EF4 801048D4 35CE0E02 */  ori        $t6, $t6, 0xe02
/* DC5EF8 801048D8 24590008 */  addiu      $t9, $v0, 8
/* DC5EFC 801048DC AC790000 */  sw         $t9, ($v1)
/* DC5F00 801048E0 340F8000 */  ori        $t7, $zero, 0x8000
/* DC5F04 801048E4 AC4F0004 */  sw         $t7, 4($v0)
/* DC5F08 801048E8 AC4E0000 */  sw         $t6, ($v0)
/* DC5F0C 801048EC 8C620000 */  lw         $v0, ($v1)
/* DC5F10 801048F0 3C0EFFFC */  lui        $t6, 0xfffc
/* DC5F14 801048F4 3C19FCFF */  lui        $t9, 0xfcff
/* DC5F18 801048F8 24580008 */  addiu      $t8, $v0, 8
/* DC5F1C 801048FC AC780000 */  sw         $t8, ($v1)
/* DC5F20 80104900 3739FFFF */  ori        $t9, $t9, 0xffff
/* DC5F24 80104904 35CEF279 */  ori        $t6, $t6, 0xf279
/* DC5F28 80104908 AC4E0004 */  sw         $t6, 4($v0)
/* DC5F2C 8010490C AC590000 */  sw         $t9, ($v0)
/* DC5F30 80104910 8C620000 */  lw         $v0, ($v1)
/* DC5F34 80104914 3C190050 */  lui        $t9, 0x50
/* DC5F38 80104918 3C18B900 */  lui        $t8, 0xb900
/* DC5F3C 8010491C 244F0008 */  addiu      $t7, $v0, 8
/* DC5F40 80104920 AC6F0000 */  sw         $t7, ($v1)
/* DC5F44 80104924 3718031D */  ori        $t8, $t8, 0x31d
/* DC5F48 80104928 37394240 */  ori        $t9, $t9, 0x4240
/* DC5F4C 8010492C 3C098009 */  lui        $t1, %hi(JoystickX)
/* DC5F50 80104930 AC590004 */  sw         $t9, 4($v0)
/* DC5F54 80104934 AC580000 */  sw         $t8, ($v0)
/* DC5F58 80104938 81292871 */  lb         $t1, %lo(JoystickX)($t1)
/* DC5F5C 8010493C 00002025 */  or         $a0, $zero, $zero
/* DC5F60 80104940 3C028009 */  lui        $v0, 0x8009
/* DC5F64 80104944 29210015 */  slti       $at, $t1, 0x15
/* DC5F68 80104948 14200003 */  bnez       $at, .L80104958
/* DC5F6C 8010494C 3C188017 */   lui       $t8, 0x8017
/* DC5F70 80104950 10000005 */  b          .L80104968
/* DC5F74 80104954 24040008 */   addiu     $a0, $zero, 8
.L80104958:
/* DC5F78 80104958 2921FFEC */  slti       $at, $t1, -0x14
/* DC5F7C 8010495C 10200002 */  beqz       $at, .L80104968
/* DC5F80 80104960 00000000 */   nop
/* DC5F84 80104964 24040004 */  addiu      $a0, $zero, 4
.L80104968:
/* DC5F88 80104968 80422872 */  lb         $v0, 0x2872($v0)
/* DC5F8C 8010496C 348E0001 */  ori        $t6, $a0, 1
/* DC5F90 80104970 000E7E00 */  sll        $t7, $t6, 0x18
/* DC5F94 80104974 28410015 */  slti       $at, $v0, 0x15
/* DC5F98 80104978 14200002 */  bnez       $at, .L80104984
/* DC5F9C 8010497C 00002825 */   or        $a1, $zero, $zero
/* DC5FA0 80104980 000F2603 */  sra        $a0, $t7, 0x18
.L80104984:
/* DC5FA4 80104984 2841FFEC */  slti       $at, $v0, -0x14
/* DC5FA8 80104988 10200003 */  beqz       $at, .L80104998
/* DC5FAC 8010498C 34990002 */   ori       $t9, $a0, 2
/* DC5FB0 80104990 00197600 */  sll        $t6, $t9, 0x18
/* DC5FB4 80104994 000E2603 */  sra        $a0, $t6, 0x18
.L80104998:
/* DC5FB8 80104998 83184DF0 */  lb         $t8, 0x4df0($t8)
/* DC5FBC 8010499C 3C018017 */  lui        $at, %hi(D_80174DF0)
/* DC5FC0 801049A0 A0244DF0 */  sb         $a0, %lo(D_80174DF0)($at)
/* DC5FC4 801049A4 0098C826 */  xor        $t9, $a0, $t8
/* DC5FC8 801049A8 03241024 */  and        $v0, $t9, $a0
/* DC5FCC 801049AC 00027600 */  sll        $t6, $v0, 0x18
/* DC5FD0 801049B0 000E1603 */  sra        $v0, $t6, 0x18
/* DC5FD4 801049B4 30580001 */  andi       $t8, $v0, 1
/* DC5FD8 801049B8 13000002 */  beqz       $t8, .L801049C4
/* DC5FDC 801049BC 00003025 */   or        $a2, $zero, $zero
/* DC5FE0 801049C0 2405FFFF */  addiu      $a1, $zero, -1
.L801049C4:
/* DC5FE4 801049C4 30590002 */  andi       $t9, $v0, 2
/* DC5FE8 801049C8 13200002 */  beqz       $t9, .L801049D4
/* DC5FEC 801049CC 304E0004 */   andi      $t6, $v0, 4
/* DC5FF0 801049D0 24050001 */  addiu      $a1, $zero, 1
.L801049D4:
/* DC5FF4 801049D4 11C00002 */  beqz       $t6, .L801049E0
/* DC5FF8 801049D8 304F0008 */   andi      $t7, $v0, 8
/* DC5FFC 801049DC 2406FFFF */  addiu      $a2, $zero, -1
.L801049E0:
/* DC6000 801049E0 11E00002 */  beqz       $t7, .L801049EC
/* DC6004 801049E4 3C028010 */   lui       $v0, %hi(D_8010622C)
/* DC6008 801049E8 24060001 */  addiu      $a2, $zero, 1
.L801049EC:
/* DC600C 801049EC 8042622C */  lb         $v0, %lo(D_8010622C)($v0)
/* DC6010 801049F0 3C018017 */  lui        $at, %hi(D_80174DF1)
/* DC6014 801049F4 A0254DF1 */  sb         $a1, %lo(D_80174DF1)($at)
/* DC6018 801049F8 00451021 */  addu       $v0, $v0, $a1
/* DC601C 801049FC 0002C600 */  sll        $t8, $v0, 0x18
/* DC6020 80104A00 00181603 */  sra        $v0, $t8, 0x18
/* DC6024 80104A04 04410004 */  bgez       $v0, .L80104A18
/* DC6028 80104A08 3C018010 */   lui       $at, 0x8010
/* DC602C 80104A0C 3C018010 */  lui        $at, %hi(D_8010622C)
/* DC6030 80104A10 10000007 */  b          .L80104A30
/* DC6034 80104A14 A020622C */   sb        $zero, %lo(D_8010622C)($at)
.L80104A18:
/* DC6038 80104A18 A022622C */  sb         $v0, 0x622c($at)
/* DC603C 80104A1C 28410002 */  slti       $at, $v0, 2
/* DC6040 80104A20 14200003 */  bnez       $at, .L80104A30
/* DC6044 80104A24 24020001 */   addiu     $v0, $zero, 1
/* DC6048 80104A28 3C018010 */  lui        $at, %hi(D_8010622C)
/* DC604C 80104A2C A022622C */  sb         $v0, %lo(D_8010622C)($at)
.L80104A30:
/* DC6050 80104A30 3C028010 */  lui        $v0, %hi(D_80106230)
/* DC6054 80104A34 80426230 */  lb         $v0, %lo(D_80106230)($v0)
/* DC6058 80104A38 3C018017 */  lui        $at, %hi(D_80174DF2)
/* DC605C 80104A3C A0264DF2 */  sb         $a2, %lo(D_80174DF2)($at)
/* DC6060 80104A40 00461021 */  addu       $v0, $v0, $a2
/* DC6064 80104A44 00027600 */  sll        $t6, $v0, 0x18
/* DC6068 80104A48 000E1603 */  sra        $v0, $t6, 0x18
/* DC606C 80104A4C 04410004 */  bgez       $v0, .L80104A60
/* DC6070 80104A50 3C018010 */   lui       $at, 0x8010
/* DC6074 80104A54 3C018010 */  lui        $at, %hi(D_80106230)
/* DC6078 80104A58 10000007 */  b          .L80104A78
/* DC607C 80104A5C A0206230 */   sb        $zero, %lo(D_80106230)($at)
.L80104A60:
/* DC6080 80104A60 A0226230 */  sb         $v0, 0x6230($at)
/* DC6084 80104A64 28410002 */  slti       $at, $v0, 2
/* DC6088 80104A68 14200003 */  bnez       $at, .L80104A78
/* DC608C 80104A6C 24180001 */   addiu     $t8, $zero, 1
/* DC6090 80104A70 3C018010 */  lui        $at, %hi(D_80106230)
/* DC6094 80104A74 A0386230 */  sb         $t8, %lo(D_80106230)($at)
.L80104A78:
/* DC6098 80104A78 3C028010 */  lui        $v0, %hi(D_80106228)
/* DC609C 80104A7C 90426228 */  lbu        $v0, %lo(D_80106228)($v0)
/* DC60A0 80104A80 3C14E700 */  lui        $s4, 0xe700
/* DC60A4 80104A84 3C150700 */  lui        $s5, 0x700
/* DC60A8 80104A88 10400006 */  beqz       $v0, .L80104AA4
/* DC60AC 80104A8C 3C16E600 */   lui       $s6, 0xe600
/* DC60B0 80104A90 24010001 */  addiu      $at, $zero, 1
/* DC60B4 80104A94 10410121 */  beq        $v0, $at, .L80104F1C
/* DC60B8 80104A98 3C14E700 */   lui       $s4, 0xe700
/* DC60BC 80104A9C 100001B9 */  b          .L80105184
/* DC60C0 80104AA0 8FBF002C */   lw        $ra, 0x2c($sp)
.L80104AA4:
/* DC60C4 80104AA4 8C620000 */  lw         $v0, ($v1)
/* DC60C8 80104AA8 3C188015 */  lui        $t8, %hi(D_80153C00)
/* DC60CC 80104AAC 27183C00 */  addiu      $t8, $t8, %lo(D_80153C00)
/* DC60D0 80104AB0 24590008 */  addiu      $t9, $v0, 8
/* DC60D4 80104AB4 AC790000 */  sw         $t9, ($v1)
/* DC60D8 80104AB8 AC400004 */  sw         $zero, 4($v0)
/* DC60DC 80104ABC AC540000 */  sw         $s4, ($v0)
/* DC60E0 80104AC0 8C620000 */  lw         $v0, ($v1)
/* DC60E4 80104AC4 3C0FFD10 */  lui        $t7, 0xfd10
/* DC60E8 80104AC8 00006825 */  or         $t5, $zero, $zero
/* DC60EC 80104ACC 244E0008 */  addiu      $t6, $v0, 8
/* DC60F0 80104AD0 AC6E0000 */  sw         $t6, ($v1)
/* DC60F4 80104AD4 AC580004 */  sw         $t8, 4($v0)
/* DC60F8 80104AD8 AC4F0000 */  sw         $t7, ($v0)
/* DC60FC 80104ADC 8C620000 */  lw         $v0, ($v1)
/* DC6100 80104AE0 3C0EE800 */  lui        $t6, 0xe800
/* DC6104 80104AE4 3C18F500 */  lui        $t8, 0xf500
/* DC6108 80104AE8 24590008 */  addiu      $t9, $v0, 8
/* DC610C 80104AEC AC790000 */  sw         $t9, ($v1)
/* DC6110 80104AF0 AC400004 */  sw         $zero, 4($v0)
/* DC6114 80104AF4 AC4E0000 */  sw         $t6, ($v0)
/* DC6118 80104AF8 8C620000 */  lw         $v0, ($v1)
/* DC611C 80104AFC 37180100 */  ori        $t8, $t8, 0x100
/* DC6120 80104B00 2411000F */  addiu      $s1, $zero, 0xf
/* DC6124 80104B04 244F0008 */  addiu      $t7, $v0, 8
/* DC6128 80104B08 AC6F0000 */  sw         $t7, ($v1)
/* DC612C 80104B0C AC550004 */  sw         $s5, 4($v0)
/* DC6130 80104B10 AC580000 */  sw         $t8, ($v0)
/* DC6134 80104B14 8C620000 */  lw         $v0, ($v1)
/* DC6138 80104B18 3C180703 */  lui        $t8, 0x703
/* DC613C 80104B1C 3718C000 */  ori        $t8, $t8, 0xc000
/* DC6140 80104B20 24590008 */  addiu      $t9, $v0, 8
/* DC6144 80104B24 AC790000 */  sw         $t9, ($v1)
/* DC6148 80104B28 AC400004 */  sw         $zero, 4($v0)
/* DC614C 80104B2C AC560000 */  sw         $s6, ($v0)
/* DC6150 80104B30 8C620000 */  lw         $v0, ($v1)
/* DC6154 80104B34 3C0FF000 */  lui        $t7, 0xf000
/* DC6158 80104B38 24120050 */  addiu      $s2, $zero, 0x50
/* DC615C 80104B3C 244E0008 */  addiu      $t6, $v0, 8
/* DC6160 80104B40 AC6E0000 */  sw         $t6, ($v1)
/* DC6164 80104B44 AC580004 */  sw         $t8, 4($v0)
/* DC6168 80104B48 AC4F0000 */  sw         $t7, ($v0)
/* DC616C 80104B4C 8C620000 */  lw         $v0, ($v1)
/* DC6170 80104B50 3C0E8015 */  lui        $t6, %hi(D_801511F8)
/* DC6174 80104B54 25CE11F8 */  addiu      $t6, $t6, %lo(D_801511F8)
/* DC6178 80104B58 24590008 */  addiu      $t9, $v0, 8
/* DC617C 80104B5C AC790000 */  sw         $t9, ($v1)
/* DC6180 80104B60 AC400004 */  sw         $zero, 4($v0)
/* DC6184 80104B64 AC540000 */  sw         $s4, ($v0)
/* DC6188 80104B68 AFAE0030 */  sw         $t6, 0x30($sp)
/* DC618C 80104B6C 24100040 */  addiu      $s0, $zero, 0x40
/* DC6190 80104B70 3C1FB400 */  lui        $ra, 0xb400
/* DC6194 80104B74 3C1EF200 */  lui        $fp, 0xf200
/* DC6198 80104B78 3C17F400 */  lui        $s7, 0xf400
.L80104B7C:
/* DC619C 80104B7C 8C620000 */  lw         $v0, ($v1)
/* DC61A0 80104B80 3C18FD48 */  lui        $t8, 0xfd48
/* DC61A4 80104B84 3718005F */  ori        $t8, $t8, 0x5f
/* DC61A8 80104B88 244F0008 */  addiu      $t7, $v0, 8
/* DC61AC 80104B8C AC6F0000 */  sw         $t7, ($v1)
/* DC61B0 80104B90 AC580000 */  sw         $t8, ($v0)
/* DC61B4 80104B94 8FB90030 */  lw         $t9, 0x30($sp)
/* DC61B8 80104B98 3C0FF548 */  lui        $t7, 0xf548
/* DC61BC 80104B9C 35EF1800 */  ori        $t7, $t7, 0x1800
/* DC61C0 80104BA0 AC590004 */  sw         $t9, 4($v0)
/* DC61C4 80104BA4 8C620000 */  lw         $v0, ($v1)
/* DC61C8 80104BA8 000D4080 */  sll        $t0, $t5, 2
/* DC61CC 80104BAC 00114880 */  sll        $t1, $s1, 2
/* DC61D0 80104BB0 244E0008 */  addiu      $t6, $v0, 8
/* DC61D4 80104BB4 AC6E0000 */  sw         $t6, ($v1)
/* DC61D8 80104BB8 AC550004 */  sw         $s5, 4($v0)
/* DC61DC 80104BBC AC4F0000 */  sw         $t7, ($v0)
/* DC61E0 80104BC0 8C620000 */  lw         $v0, ($v1)
/* DC61E4 80104BC4 3C010717 */  lui        $at, 0x717
/* DC61E8 80104BC8 34218000 */  ori        $at, $at, 0x8000
/* DC61EC 80104BCC 24580008 */  addiu      $t8, $v0, 8
/* DC61F0 80104BD0 AC780000 */  sw         $t8, ($v1)
/* DC61F4 80104BD4 AC400004 */  sw         $zero, 4($v0)
/* DC61F8 80104BD8 AC560000 */  sw         $s6, ($v0)
/* DC61FC 80104BDC 8C620000 */  lw         $v0, ($v1)
/* DC6200 80104BE0 31380FFF */  andi       $t8, $t1, 0xfff
/* DC6204 80104BE4 310E0FFF */  andi       $t6, $t0, 0xfff
/* DC6208 80104BE8 24590008 */  addiu      $t9, $v0, 8
/* DC620C 80104BEC AC790000 */  sw         $t9, ($v1)
/* DC6210 80104BF0 0301C825 */  or         $t9, $t8, $at
/* DC6214 80104BF4 01D77825 */  or         $t7, $t6, $s7
/* DC6218 80104BF8 AC4F0000 */  sw         $t7, ($v0)
/* DC621C 80104BFC AC590004 */  sw         $t9, 4($v0)
/* DC6220 80104C00 8C620000 */  lw         $v0, ($v1)
/* DC6224 80104C04 01C04025 */  or         $t0, $t6, $zero
/* DC6228 80104C08 03004825 */  or         $t1, $t8, $zero
/* DC622C 80104C0C 244E0008 */  addiu      $t6, $v0, 8
/* DC6230 80104C10 AC6E0000 */  sw         $t6, ($v1)
/* DC6234 80104C14 AC400004 */  sw         $zero, 4($v0)
/* DC6238 80104C18 AC540000 */  sw         $s4, ($v0)
/* DC623C 80104C1C 8C620000 */  lw         $v0, ($v1)
/* DC6240 80104C20 3C18F540 */  lui        $t8, 0xf540
/* DC6244 80104C24 37181800 */  ori        $t8, $t8, 0x1800
/* DC6248 80104C28 244F0008 */  addiu      $t7, $v0, 8
/* DC624C 80104C2C AC6F0000 */  sw         $t7, ($v1)
/* DC6250 80104C30 AC400004 */  sw         $zero, 4($v0)
/* DC6254 80104C34 AC580000 */  sw         $t8, ($v0)
/* DC6258 80104C38 8C620000 */  lw         $v0, ($v1)
/* DC625C 80104C3C 3C01002F */  lui        $at, 0x2f
/* DC6260 80104C40 01217825 */  or         $t7, $t1, $at
/* DC6264 80104C44 24590008 */  addiu      $t9, $v0, 8
/* DC6268 80104C48 AC790000 */  sw         $t9, ($v1)
/* DC626C 80104C4C 011E7025 */  or         $t6, $t0, $fp
/* DC6270 80104C50 AC4E0000 */  sw         $t6, ($v0)
/* DC6274 80104C54 AC4F0004 */  sw         $t7, 4($v0)
/* DC6278 80104C58 8C620000 */  lw         $v0, ($v1)
/* DC627C 80104C5C 0012C880 */  sll        $t9, $s2, 2
/* DC6280 80104C60 3C01E43F */  lui        $at, 0xe43f
/* DC6284 80104C64 34218000 */  ori        $at, $at, 0x8000
/* DC6288 80104C68 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC628C 80104C6C 24580008 */  addiu      $t8, $v0, 8
/* DC6290 80104C70 AC780000 */  sw         $t8, ($v1)
/* DC6294 80104C74 01C17825 */  or         $t7, $t6, $at
/* DC6298 80104C78 3C010010 */  lui        $at, 0x10
/* DC629C 80104C7C 0010C080 */  sll        $t8, $s0, 2
/* DC62A0 80104C80 33190FFF */  andi       $t9, $t8, 0xfff
/* DC62A4 80104C84 34214000 */  ori        $at, $at, 0x4000
/* DC62A8 80104C88 03217025 */  or         $t6, $t9, $at
/* DC62AC 80104C8C AC4E0004 */  sw         $t6, 4($v0)
/* DC62B0 80104C90 AC4F0000 */  sw         $t7, ($v0)
/* DC62B4 80104C94 8C620000 */  lw         $v0, ($v1)
/* DC62B8 80104C98 000DC140 */  sll        $t8, $t5, 5
/* DC62BC 80104C9C 3319FFFF */  andi       $t9, $t8, 0xffff
/* DC62C0 80104CA0 244F0008 */  addiu      $t7, $v0, 8
/* DC62C4 80104CA4 AC6F0000 */  sw         $t7, ($v1)
/* DC62C8 80104CA8 AC590004 */  sw         $t9, 4($v0)
/* DC62CC 80104CAC AC5F0000 */  sw         $ra, ($v0)
/* DC62D0 80104CB0 8C620000 */  lw         $v0, ($v1)
/* DC62D4 80104CB4 3C180400 */  lui        $t8, 0x400
/* DC62D8 80104CB8 240100B0 */  addiu      $at, $zero, 0xb0
/* DC62DC 80104CBC 244E0008 */  addiu      $t6, $v0, 8
/* DC62E0 80104CC0 26100010 */  addiu      $s0, $s0, 0x10
/* DC62E4 80104CC4 AC6E0000 */  sw         $t6, ($v1)
/* DC62E8 80104CC8 37180400 */  ori        $t8, $t8, 0x400
/* DC62EC 80104CCC 3C0FB300 */  lui        $t7, 0xb300
/* DC62F0 80104CD0 25AD0010 */  addiu      $t5, $t5, 0x10
/* DC62F4 80104CD4 26520010 */  addiu      $s2, $s2, 0x10
/* DC62F8 80104CD8 26310010 */  addiu      $s1, $s1, 0x10
/* DC62FC 80104CDC AC4F0000 */  sw         $t7, ($v0)
/* DC6300 80104CE0 1601FFA6 */  bne        $s0, $at, .L80104B7C
/* DC6304 80104CE4 AC580004 */   sw        $t8, 4($v0)
/* DC6308 80104CE8 8C620000 */  lw         $v0, ($v1)
/* DC630C 80104CEC 3C188016 */  lui        $t8, %hi(D_80163430)
/* DC6310 80104CF0 27183430 */  addiu      $t8, $t8, %lo(D_80163430)
/* DC6314 80104CF4 24590008 */  addiu      $t9, $v0, 8
/* DC6318 80104CF8 AC790000 */  sw         $t9, ($v1)
/* DC631C 80104CFC AC400004 */  sw         $zero, 4($v0)
/* DC6320 80104D00 AC540000 */  sw         $s4, ($v0)
/* DC6324 80104D04 8C620000 */  lw         $v0, ($v1)
/* DC6328 80104D08 3C0FFD10 */  lui        $t7, 0xfd10
/* DC632C 80104D0C 3C0C8010 */  lui        $t4, 0x8010
/* DC6330 80104D10 244E0008 */  addiu      $t6, $v0, 8
/* DC6334 80104D14 AC6E0000 */  sw         $t6, ($v1)
/* DC6338 80104D18 AC580004 */  sw         $t8, 4($v0)
/* DC633C 80104D1C AC4F0000 */  sw         $t7, ($v0)
/* DC6340 80104D20 8C620000 */  lw         $v0, ($v1)
/* DC6344 80104D24 3C0EE800 */  lui        $t6, 0xe800
/* DC6348 80104D28 3C18F500 */  lui        $t8, 0xf500
/* DC634C 80104D2C 24590008 */  addiu      $t9, $v0, 8
/* DC6350 80104D30 AC790000 */  sw         $t9, ($v1)
/* DC6354 80104D34 AC400004 */  sw         $zero, 4($v0)
/* DC6358 80104D38 AC4E0000 */  sw         $t6, ($v0)
/* DC635C 80104D3C 8C620000 */  lw         $v0, ($v1)
/* DC6360 80104D40 37180100 */  ori        $t8, $t8, 0x100
/* DC6364 80104D44 3C01E400 */  lui        $at, 0xe400
/* DC6368 80104D48 244F0008 */  addiu      $t7, $v0, 8
/* DC636C 80104D4C AC6F0000 */  sw         $t7, ($v1)
/* DC6370 80104D50 AC550004 */  sw         $s5, 4($v0)
/* DC6374 80104D54 AC580000 */  sw         $t8, ($v0)
/* DC6378 80104D58 8C620000 */  lw         $v0, ($v1)
/* DC637C 80104D5C 3C180703 */  lui        $t8, 0x703
/* DC6380 80104D60 3718C000 */  ori        $t8, $t8, 0xc000
/* DC6384 80104D64 24590008 */  addiu      $t9, $v0, 8
/* DC6388 80104D68 AC790000 */  sw         $t9, ($v1)
/* DC638C 80104D6C AC400004 */  sw         $zero, 4($v0)
/* DC6390 80104D70 AC560000 */  sw         $s6, ($v0)
/* DC6394 80104D74 8C620000 */  lw         $v0, ($v1)
/* DC6398 80104D78 3C0FF000 */  lui        $t7, 0xf000
/* DC639C 80104D7C 244E0008 */  addiu      $t6, $v0, 8
/* DC63A0 80104D80 AC6E0000 */  sw         $t6, ($v1)
/* DC63A4 80104D84 AC580004 */  sw         $t8, 4($v0)
/* DC63A8 80104D88 AC4F0000 */  sw         $t7, ($v0)
/* DC63AC 80104D8C 8C620000 */  lw         $v0, ($v1)
/* DC63B0 80104D90 3C0FFD48 */  lui        $t7, 0xfd48
/* DC63B4 80104D94 3C188016 */  lui        $t8, 0x8016
/* DC63B8 80104D98 24590008 */  addiu      $t9, $v0, 8
/* DC63BC 80104D9C AC790000 */  sw         $t9, ($v1)
/* DC63C0 80104DA0 AC400004 */  sw         $zero, 4($v0)
/* DC63C4 80104DA4 AC540000 */  sw         $s4, ($v0)
/* DC63C8 80104DA8 8C620000 */  lw         $v0, ($v1)
/* DC63CC 80104DAC 271833D0 */  addiu      $t8, $t8, 0x33d0
/* DC63D0 80104DB0 35EF0007 */  ori        $t7, $t7, 7
/* DC63D4 80104DB4 244E0008 */  addiu      $t6, $v0, 8
/* DC63D8 80104DB8 AC6E0000 */  sw         $t6, ($v1)
/* DC63DC 80104DBC AC580004 */  sw         $t8, 4($v0)
/* DC63E0 80104DC0 AC4F0000 */  sw         $t7, ($v0)
/* DC63E4 80104DC4 8C620000 */  lw         $v0, ($v1)
/* DC63E8 80104DC8 3C0EF548 */  lui        $t6, 0xf548
/* DC63EC 80104DCC 35CE0200 */  ori        $t6, $t6, 0x200
/* DC63F0 80104DD0 24590008 */  addiu      $t9, $v0, 8
/* DC63F4 80104DD4 AC790000 */  sw         $t9, ($v1)
/* DC63F8 80104DD8 AC550004 */  sw         $s5, 4($v0)
/* DC63FC 80104DDC AC4E0000 */  sw         $t6, ($v0)
/* DC6400 80104DE0 8C620000 */  lw         $v0, ($v1)
/* DC6404 80104DE4 3C190701 */  lui        $t9, 0x701
/* DC6408 80104DE8 37394028 */  ori        $t9, $t9, 0x4028
/* DC640C 80104DEC 244F0008 */  addiu      $t7, $v0, 8
/* DC6410 80104DF0 AC6F0000 */  sw         $t7, ($v1)
/* DC6414 80104DF4 AC400004 */  sw         $zero, 4($v0)
/* DC6418 80104DF8 AC560000 */  sw         $s6, ($v0)
/* DC641C 80104DFC 8C620000 */  lw         $v0, ($v1)
/* DC6420 80104E00 818C6230 */  lb         $t4, 0x6230($t4)
/* DC6424 80104E04 24580008 */  addiu      $t8, $v0, 8
/* DC6428 80104E08 AC780000 */  sw         $t8, ($v1)
/* DC642C 80104E0C AC590004 */  sw         $t9, 4($v0)
/* DC6430 80104E10 AC570000 */  sw         $s7, ($v0)
/* DC6434 80104E14 8C620000 */  lw         $v0, ($v1)
/* DC6438 80104E18 3C18F540 */  lui        $t8, 0xf540
/* DC643C 80104E1C 37180200 */  ori        $t8, $t8, 0x200
/* DC6440 80104E20 244E0008 */  addiu      $t6, $v0, 8
/* DC6444 80104E24 AC6E0000 */  sw         $t6, ($v1)
/* DC6448 80104E28 AC400004 */  sw         $zero, 4($v0)
/* DC644C 80104E2C AC540000 */  sw         $s4, ($v0)
/* DC6450 80104E30 8C620000 */  lw         $v0, ($v1)
/* DC6454 80104E34 3C0E0002 */  lui        $t6, 2
/* DC6458 80104E38 35CE8028 */  ori        $t6, $t6, 0x8028
/* DC645C 80104E3C 244F0008 */  addiu      $t7, $v0, 8
/* DC6460 80104E40 AC6F0000 */  sw         $t7, ($v1)
/* DC6464 80104E44 AC400004 */  sw         $zero, 4($v0)
/* DC6468 80104E48 AC580000 */  sw         $t8, ($v0)
/* DC646C 80104E4C 8C620000 */  lw         $v0, ($v1)
/* DC6470 80104E50 000C48C0 */  sll        $t1, $t4, 3
/* DC6474 80104E54 012C4823 */  subu       $t1, $t1, $t4
/* DC6478 80104E58 24590008 */  addiu      $t9, $v0, 8
/* DC647C 80104E5C AC790000 */  sw         $t9, ($v1)
/* DC6480 80104E60 AC4E0004 */  sw         $t6, 4($v0)
/* DC6484 80104E64 AC5E0000 */  sw         $fp, ($v0)
/* DC6488 80104E68 8C620000 */  lw         $v0, ($v1)
/* DC648C 80104E6C 000948C0 */  sll        $t1, $t1, 3
/* DC6490 80104E70 012C4823 */  subu       $t1, $t1, $t4
/* DC6494 80104E74 25380072 */  addiu      $t8, $t1, 0x72
/* DC6498 80104E78 0018C880 */  sll        $t9, $t8, 2
/* DC649C 80104E7C 244F0008 */  addiu      $t7, $v0, 8
/* DC64A0 80104E80 AC6F0000 */  sw         $t7, ($v1)
/* DC64A4 80104E84 332E0FFF */  andi       $t6, $t9, 0xfff
/* DC64A8 80104E88 000E7B00 */  sll        $t7, $t6, 0xc
/* DC64AC 80104E8C 01E1C025 */  or         $t8, $t7, $at
/* DC64B0 80104E90 371902A0 */  ori        $t9, $t8, 0x2a0
/* DC64B4 80104E94 252E0067 */  addiu      $t6, $t1, 0x67
/* DC64B8 80104E98 000E7880 */  sll        $t7, $t6, 2
/* DC64BC 80104E9C 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC64C0 80104EA0 AC590000 */  sw         $t9, ($v0)
/* DC64C4 80104EA4 0018CB00 */  sll        $t9, $t8, 0xc
/* DC64C8 80104EA8 372E0274 */  ori        $t6, $t9, 0x274
/* DC64CC 80104EAC AC4E0004 */  sw         $t6, 4($v0)
/* DC64D0 80104EB0 8C620000 */  lw         $v0, ($v1)
/* DC64D4 80104EB4 3C0E0400 */  lui        $t6, 0x400
/* DC64D8 80104EB8 35CE0400 */  ori        $t6, $t6, 0x400
/* DC64DC 80104EBC 244F0008 */  addiu      $t7, $v0, 8
/* DC64E0 80104EC0 AC6F0000 */  sw         $t7, ($v1)
/* DC64E4 80104EC4 AC400004 */  sw         $zero, 4($v0)
/* DC64E8 80104EC8 AC5F0000 */  sw         $ra, ($v0)
/* DC64EC 80104ECC 8C620000 */  lw         $v0, ($v1)
/* DC64F0 80104ED0 3C19B300 */  lui        $t9, 0xb300
/* DC64F4 80104ED4 3C0F8009 */  lui        $t7, %hi(ButtonPressedFrame)
/* DC64F8 80104ED8 24580008 */  addiu      $t8, $v0, 8
/* DC64FC 80104EDC AC780000 */  sw         $t8, ($v1)
/* DC6500 80104EE0 AC4E0004 */  sw         $t6, 4($v0)
/* DC6504 80104EE4 AC590000 */  sw         $t9, ($v0)
/* DC6508 80104EE8 95EF2876 */  lhu        $t7, %lo(ButtonPressedFrame)($t7)
/* DC650C 80104EEC 24010001 */  addiu      $at, $zero, 1
/* DC6510 80104EF0 31F8B000 */  andi       $t8, $t7, 0xb000
/* DC6514 80104EF4 530000A3 */  beql       $t8, $zero, .L80105184
/* DC6518 80104EF8 8FBF002C */   lw        $ra, 0x2c($sp)
/* DC651C 80104EFC 15810005 */  bne        $t4, $at, .L80104F14
/* DC6520 80104F00 240E0001 */   addiu     $t6, $zero, 1
/* DC6524 80104F04 24190001 */  addiu      $t9, $zero, 1
/* DC6528 80104F08 3C018010 */  lui        $at, %hi(D_80106228)
/* DC652C 80104F0C 1000009C */  b          .L80105180
/* DC6530 80104F10 A0396228 */   sb        $t9, %lo(D_80106228)($at)
.L80104F14:
/* DC6534 80104F14 1000009A */  b          .L80105180
/* DC6538 80104F18 AFAE0114 */   sw        $t6, 0x114($sp)
.L80104F1C:
/* DC653C 80104F1C 8C620000 */  lw         $v0, ($v1)
/* DC6540 80104F20 3C0E8015 */  lui        $t6, %hi(D_80155260)
/* DC6544 80104F24 25CE5260 */  addiu      $t6, $t6, %lo(D_80155260)
/* DC6548 80104F28 244F0008 */  addiu      $t7, $v0, 8
/* DC654C 80104F2C AC6F0000 */  sw         $t7, ($v1)
/* DC6550 80104F30 AC400004 */  sw         $zero, 4($v0)
/* DC6554 80104F34 AC540000 */  sw         $s4, ($v0)
/* DC6558 80104F38 8C620000 */  lw         $v0, ($v1)
/* DC655C 80104F3C 3C19FD10 */  lui        $t9, 0xfd10
/* DC6560 80104F40 3C150700 */  lui        $s5, 0x700
/* DC6564 80104F44 24580008 */  addiu      $t8, $v0, 8
/* DC6568 80104F48 AC780000 */  sw         $t8, ($v1)
/* DC656C 80104F4C AC4E0004 */  sw         $t6, 4($v0)
/* DC6570 80104F50 AC590000 */  sw         $t9, ($v0)
/* DC6574 80104F54 8C620000 */  lw         $v0, ($v1)
/* DC6578 80104F58 3C18E800 */  lui        $t8, 0xe800
/* DC657C 80104F5C 3C0EF500 */  lui        $t6, 0xf500
/* DC6580 80104F60 244F0008 */  addiu      $t7, $v0, 8
/* DC6584 80104F64 AC6F0000 */  sw         $t7, ($v1)
/* DC6588 80104F68 AC400004 */  sw         $zero, 4($v0)
/* DC658C 80104F6C AC580000 */  sw         $t8, ($v0)
/* DC6590 80104F70 8C620000 */  lw         $v0, ($v1)
/* DC6594 80104F74 35CE0100 */  ori        $t6, $t6, 0x100
/* DC6598 80104F78 3C16E600 */  lui        $s6, 0xe600
/* DC659C 80104F7C 24590008 */  addiu      $t9, $v0, 8
/* DC65A0 80104F80 AC790000 */  sw         $t9, ($v1)
/* DC65A4 80104F84 AC550004 */  sw         $s5, 4($v0)
/* DC65A8 80104F88 AC4E0000 */  sw         $t6, ($v0)
/* DC65AC 80104F8C 8C620000 */  lw         $v0, ($v1)
/* DC65B0 80104F90 3C0E0703 */  lui        $t6, 0x703
/* DC65B4 80104F94 35CEC000 */  ori        $t6, $t6, 0xc000
/* DC65B8 80104F98 244F0008 */  addiu      $t7, $v0, 8
/* DC65BC 80104F9C AC6F0000 */  sw         $t7, ($v1)
/* DC65C0 80104FA0 AC400004 */  sw         $zero, 4($v0)
/* DC65C4 80104FA4 AC560000 */  sw         $s6, ($v0)
/* DC65C8 80104FA8 8C620000 */  lw         $v0, ($v1)
/* DC65CC 80104FAC 3C19F000 */  lui        $t9, 0xf000
/* DC65D0 80104FB0 00006825 */  or         $t5, $zero, $zero
/* DC65D4 80104FB4 24580008 */  addiu      $t8, $v0, 8
/* DC65D8 80104FB8 AC780000 */  sw         $t8, ($v1)
/* DC65DC 80104FBC AC4E0004 */  sw         $t6, 4($v0)
/* DC65E0 80104FC0 AC590000 */  sw         $t9, ($v0)
/* DC65E4 80104FC4 8C620000 */  lw         $v0, ($v1)
/* DC65E8 80104FC8 3C188015 */  lui        $t8, %hi(D_80153E08)
/* DC65EC 80104FCC 27183E08 */  addiu      $t8, $t8, %lo(D_80153E08)
/* DC65F0 80104FD0 244F0008 */  addiu      $t7, $v0, 8
/* DC65F4 80104FD4 AC6F0000 */  sw         $t7, ($v1)
/* DC65F8 80104FD8 AC400004 */  sw         $zero, 4($v0)
/* DC65FC 80104FDC AC540000 */  sw         $s4, ($v0)
/* DC6600 80104FE0 AFB80030 */  sw         $t8, 0x30($sp)
/* DC6604 80104FE4 24110009 */  addiu      $s1, $zero, 9
/* DC6608 80104FE8 24120069 */  addiu      $s2, $zero, 0x69
/* DC660C 80104FEC 2410005F */  addiu      $s0, $zero, 0x5f
/* DC6610 80104FF0 3C1FB400 */  lui        $ra, 0xb400
/* DC6614 80104FF4 3C1EF200 */  lui        $fp, 0xf200
/* DC6618 80104FF8 3C17F400 */  lui        $s7, 0xf400
.L80104FFC:
/* DC661C 80104FFC 8C620000 */  lw         $v0, ($v1)
/* DC6620 80105000 3C0EFD48 */  lui        $t6, 0xfd48
/* DC6624 80105004 35CE0067 */  ori        $t6, $t6, 0x67
/* DC6628 80105008 24590008 */  addiu      $t9, $v0, 8
/* DC662C 8010500C AC790000 */  sw         $t9, ($v1)
/* DC6630 80105010 AC4E0000 */  sw         $t6, ($v0)
/* DC6634 80105014 8FAF0030 */  lw         $t7, 0x30($sp)
/* DC6638 80105018 3C19F548 */  lui        $t9, 0xf548
/* DC663C 8010501C 37391A00 */  ori        $t9, $t9, 0x1a00
/* DC6640 80105020 AC4F0004 */  sw         $t7, 4($v0)
/* DC6644 80105024 8C620000 */  lw         $v0, ($v1)
/* DC6648 80105028 000D4080 */  sll        $t0, $t5, 2
/* DC664C 8010502C 00114880 */  sll        $t1, $s1, 2
/* DC6650 80105030 24580008 */  addiu      $t8, $v0, 8
/* DC6654 80105034 AC780000 */  sw         $t8, ($v1)
/* DC6658 80105038 AC550004 */  sw         $s5, 4($v0)
/* DC665C 8010503C AC590000 */  sw         $t9, ($v0)
/* DC6660 80105040 8C620000 */  lw         $v0, ($v1)
/* DC6664 80105044 3C010718 */  lui        $at, 0x718
/* DC6668 80105048 3421E000 */  ori        $at, $at, 0xe000
/* DC666C 8010504C 244E0008 */  addiu      $t6, $v0, 8
/* DC6670 80105050 AC6E0000 */  sw         $t6, ($v1)
/* DC6674 80105054 AC400004 */  sw         $zero, 4($v0)
/* DC6678 80105058 AC560000 */  sw         $s6, ($v0)
/* DC667C 8010505C 8C620000 */  lw         $v0, ($v1)
/* DC6680 80105060 312E0FFF */  andi       $t6, $t1, 0xfff
/* DC6684 80105064 31180FFF */  andi       $t8, $t0, 0xfff
/* DC6688 80105068 244F0008 */  addiu      $t7, $v0, 8
/* DC668C 8010506C AC6F0000 */  sw         $t7, ($v1)
/* DC6690 80105070 01C17825 */  or         $t7, $t6, $at
/* DC6694 80105074 0317C825 */  or         $t9, $t8, $s7
/* DC6698 80105078 AC590000 */  sw         $t9, ($v0)
/* DC669C 8010507C AC4F0004 */  sw         $t7, 4($v0)
/* DC66A0 80105080 8C620000 */  lw         $v0, ($v1)
/* DC66A4 80105084 03004025 */  or         $t0, $t8, $zero
/* DC66A8 80105088 01C04825 */  or         $t1, $t6, $zero
/* DC66AC 8010508C 24580008 */  addiu      $t8, $v0, 8
/* DC66B0 80105090 AC780000 */  sw         $t8, ($v1)
/* DC66B4 80105094 AC400004 */  sw         $zero, 4($v0)
/* DC66B8 80105098 AC540000 */  sw         $s4, ($v0)
/* DC66BC 8010509C 8C620000 */  lw         $v0, ($v1)
/* DC66C0 801050A0 3C0EF540 */  lui        $t6, 0xf540
/* DC66C4 801050A4 35CE1A00 */  ori        $t6, $t6, 0x1a00
/* DC66C8 801050A8 24590008 */  addiu      $t9, $v0, 8
/* DC66CC 801050AC AC790000 */  sw         $t9, ($v1)
/* DC66D0 801050B0 AC400004 */  sw         $zero, 4($v0)
/* DC66D4 801050B4 AC4E0000 */  sw         $t6, ($v0)
/* DC66D8 801050B8 8C620000 */  lw         $v0, ($v1)
/* DC66DC 801050BC 3C010031 */  lui        $at, 0x31
/* DC66E0 801050C0 3421C000 */  ori        $at, $at, 0xc000
/* DC66E4 801050C4 244F0008 */  addiu      $t7, $v0, 8
/* DC66E8 801050C8 AC6F0000 */  sw         $t7, ($v1)
/* DC66EC 801050CC 0121C825 */  or         $t9, $t1, $at
/* DC66F0 801050D0 011EC025 */  or         $t8, $t0, $fp
/* DC66F4 801050D4 AC580000 */  sw         $t8, ($v0)
/* DC66F8 801050D8 AC590004 */  sw         $t9, 4($v0)
/* DC66FC 801050DC 8C620000 */  lw         $v0, ($v1)
/* DC6700 801050E0 00127880 */  sll        $t7, $s2, 2
/* DC6704 801050E4 31F80FFF */  andi       $t8, $t7, 0xfff
/* DC6708 801050E8 244E0008 */  addiu      $t6, $v0, 8
/* DC670C 801050EC AC6E0000 */  sw         $t6, ($v1)
/* DC6710 801050F0 3C01E441 */  lui        $at, 0xe441
/* DC6714 801050F4 0301C825 */  or         $t9, $t8, $at
/* DC6718 801050F8 00107080 */  sll        $t6, $s0, 2
/* DC671C 801050FC 31CF0FFF */  andi       $t7, $t6, 0xfff
/* DC6720 80105100 3C01000F */  lui        $at, 0xf
/* DC6724 80105104 01E1C025 */  or         $t8, $t7, $at
/* DC6728 80105108 AC580004 */  sw         $t8, 4($v0)
/* DC672C 8010510C AC590000 */  sw         $t9, ($v0)
/* DC6730 80105110 8C620000 */  lw         $v0, ($v1)
/* DC6734 80105114 000D7140 */  sll        $t6, $t5, 5
/* DC6738 80105118 31CFFFFF */  andi       $t7, $t6, 0xffff
/* DC673C 8010511C 24590008 */  addiu      $t9, $v0, 8
/* DC6740 80105120 AC790000 */  sw         $t9, ($v1)
/* DC6744 80105124 AC4F0004 */  sw         $t7, 4($v0)
/* DC6748 80105128 AC5F0000 */  sw         $ra, ($v0)
/* DC674C 8010512C 8C620000 */  lw         $v0, ($v1)
/* DC6750 80105130 3C0E0400 */  lui        $t6, 0x400
/* DC6754 80105134 24010091 */  addiu      $at, $zero, 0x91
/* DC6758 80105138 24580008 */  addiu      $t8, $v0, 8
/* DC675C 8010513C 2610000A */  addiu      $s0, $s0, 0xa
/* DC6760 80105140 AC780000 */  sw         $t8, ($v1)
/* DC6764 80105144 35CE0400 */  ori        $t6, $t6, 0x400
/* DC6768 80105148 3C19B300 */  lui        $t9, 0xb300
/* DC676C 8010514C 25AD000A */  addiu      $t5, $t5, 0xa
/* DC6770 80105150 2652000A */  addiu      $s2, $s2, 0xa
/* DC6774 80105154 2631000A */  addiu      $s1, $s1, 0xa
/* DC6778 80105158 AC590000 */  sw         $t9, ($v0)
/* DC677C 8010515C 1601FFA7 */  bne        $s0, $at, .L80104FFC
/* DC6780 80105160 AC4E0004 */   sw        $t6, 4($v0)
/* DC6784 80105164 3C0F8009 */  lui        $t7, %hi(ButtonPressedFrame)
/* DC6788 80105168 95EF2876 */  lhu        $t7, %lo(ButtonPressedFrame)($t7)
/* DC678C 8010516C 3C018010 */  lui        $at, %hi(D_80106228)
/* DC6790 80105170 31F84000 */  andi       $t8, $t7, 0x4000
/* DC6794 80105174 53000003 */  beql       $t8, $zero, .L80105184
/* DC6798 80105178 8FBF002C */   lw        $ra, 0x2c($sp)
/* DC679C 8010517C A0206228 */  sb         $zero, %lo(D_80106228)($at)
.L80105180:
/* DC67A0 80105180 8FBF002C */  lw         $ra, 0x2c($sp)
.L80105184:
/* DC67A4 80105184 8FA20114 */  lw         $v0, 0x114($sp)
/* DC67A8 80105188 8FB00008 */  lw         $s0, 8($sp)
/* DC67AC 8010518C 8FB1000C */  lw         $s1, 0xc($sp)
/* DC67B0 80105190 8FB20010 */  lw         $s2, 0x10($sp)
/* DC67B4 80105194 8FB30014 */  lw         $s3, 0x14($sp)
/* DC67B8 80105198 8FB40018 */  lw         $s4, 0x18($sp)
/* DC67BC 8010519C 8FB5001C */  lw         $s5, 0x1c($sp)
/* DC67C0 801051A0 8FB60020 */  lw         $s6, 0x20($sp)
/* DC67C4 801051A4 8FB70024 */  lw         $s7, 0x24($sp)
/* DC67C8 801051A8 8FBE0028 */  lw         $fp, 0x28($sp)
/* DC67CC 801051AC 03E00008 */  jr         $ra
/* DC67D0 801051B0 27BD0120 */   addiu     $sp, $sp, 0x120
