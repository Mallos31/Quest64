.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8010009C
/* DC16BC 8010009C 3C068009 */  lui        $a2, %hi(controller_no)
/* DC16C0 801000A0 80C62870 */  lb         $a2, %lo(controller_no)($a2)
/* DC16C4 801000A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DC16C8 801000A8 2401FFFF */  addiu      $at, $zero, -1
/* DC16CC 801000AC 14C10005 */  bne        $a2, $at, .L801000C4
/* DC16D0 801000B0 AFBF0014 */   sw        $ra, 0x14($sp)
/* DC16D4 801000B4 0C04146D */  jal        func_801051B4
/* DC16D8 801000B8 00000000 */   nop
/* DC16DC 801000BC 10000159 */  b          .L80100624
/* DC16E0 801000C0 24020002 */   addiu     $v0, $zero, 2
.L801000C4:
/* DC16E4 801000C4 3C0E8007 */  lui        $t6, %hi(D_8006AC5C)
/* DC16E8 801000C8 91CEAC5C */  lbu        $t6, %lo(D_8006AC5C)($t6)
/* DC16EC 801000CC 3C038007 */  lui        $v1, %hi(D_8006AC58)
/* DC16F0 801000D0 3C028010 */  lui        $v0, %hi(D_80106208)
/* DC16F4 801000D4 15C00068 */  bnez       $t6, .L80100278
/* DC16F8 801000D8 2463AC58 */   addiu     $v1, $v1, %lo(D_8006AC58)
/* DC16FC 801000DC 90426208 */  lbu        $v0, %lo(D_80106208)($v0)
/* DC1700 801000E0 24010001 */  addiu      $at, $zero, 1
/* DC1704 801000E4 10400009 */  beqz       $v0, .L8010010C
/* DC1708 801000E8 00000000 */   nop
/* DC170C 801000EC 1041004A */  beq        $v0, $at, .L80100218
/* DC1710 801000F0 24010002 */   addiu     $at, $zero, 2
/* DC1714 801000F4 10410050 */  beq        $v0, $at, .L80100238
/* DC1718 801000F8 24010003 */   addiu     $at, $zero, 3
/* DC171C 801000FC 10410056 */  beq        $v0, $at, .L80100258
/* DC1720 80100100 00000000 */   nop
/* DC1724 80100104 10000147 */  b          .L80100624
/* DC1728 80100108 24020002 */   addiu     $v0, $zero, 2
.L8010010C:
/* DC172C 8010010C 0C00C55D */  jal        func_80031574
/* DC1730 80100110 00C02025 */   or        $a0, $a2, $zero
/* DC1734 80100114 0C00C6EC */  jal        func_80031BB0
/* DC1738 80100118 00402025 */   or        $a0, $v0, $zero
/* DC173C 8010011C 2401FFFF */  addiu      $at, $zero, -1
/* DC1740 80100120 10410019 */  beq        $v0, $at, .L80100188
/* DC1744 80100124 00402825 */   or        $a1, $v0, $zero
/* DC1748 80100128 2401FFFE */  addiu      $at, $zero, -2
/* DC174C 8010012C 10410016 */  beq        $v0, $at, .L80100188
/* DC1750 80100130 2401FFFD */   addiu     $at, $zero, -3
/* DC1754 80100134 10410014 */  beq        $v0, $at, .L80100188
/* DC1758 80100138 3C0F8009 */   lui       $t7, %hi(controller_no)
/* DC175C 8010013C 81EF2870 */  lb         $t7, %lo(controller_no)($t7)
/* DC1760 80100140 3C198009 */  lui        $t9, 0x8009
/* DC1764 80100144 24090001 */  addiu      $t1, $zero, 1
/* DC1768 80100148 000FC080 */  sll        $t8, $t7, 2
/* DC176C 8010014C 030FC021 */  addu       $t8, $t8, $t7
/* DC1770 80100150 0018C080 */  sll        $t8, $t8, 2
/* DC1774 80100154 0338C821 */  addu       $t9, $t9, $t8
/* DC1778 80100158 87392A38 */  lh         $t9, 0x2a38($t9)
/* DC177C 8010015C 240A0001 */  addiu      $t2, $zero, 1
/* DC1780 80100160 3C018007 */  lui        $at, 0x8007
/* DC1784 80100164 33282000 */  andi       $t0, $t9, 0x2000
/* DC1788 80100168 11000005 */  beqz       $t0, .L80100180
/* DC178C 8010016C 24020002 */   addiu     $v0, $zero, 2
/* DC1790 80100170 3C018010 */  lui        $at, %hi(D_80106208)
/* DC1794 80100174 A0296208 */  sb         $t1, %lo(D_80106208)($at)
/* DC1798 80100178 1000012A */  b          .L80100624
/* DC179C 8010017C 24020002 */   addiu     $v0, $zero, 2
.L80100180:
/* DC17A0 80100180 10000128 */  b          .L80100624
/* DC17A4 80100184 A02AAC5C */   sb        $t2, -0x53a4($at)
.L80100188:
/* DC17A8 80100188 3C048016 */  lui        $a0, %hi(D_801661F0)
/* DC17AC 8010018C 248461F0 */  addiu      $a0, $a0, %lo(D_801661F0)
/* DC17B0 80100190 0C00E9EF */  jal        emptyDEBUGprintPfsErrorData
/* DC17B4 80100194 AFA50018 */   sw        $a1, 0x18($sp)
/* DC17B8 80100198 8FA50018 */  lw         $a1, 0x18($sp)
/* DC17BC 8010019C 2401FFFD */  addiu      $at, $zero, -3
/* DC17C0 801001A0 240F0001 */  addiu      $t7, $zero, 1
/* DC17C4 801001A4 10A10019 */  beq        $a1, $at, .L8010020C
/* DC17C8 801001A8 24020002 */   addiu     $v0, $zero, 2
/* DC17CC 801001AC 3C068009 */  lui        $a2, %hi(controller_no)
/* DC17D0 801001B0 80C62870 */  lb         $a2, %lo(controller_no)($a2)
/* DC17D4 801001B4 3C0C8009 */  lui        $t4, %hi(D_80092898)
/* DC17D8 801001B8 258C2898 */  addiu      $t4, $t4, %lo(D_80092898)
/* DC17DC 801001BC 00065880 */  sll        $t3, $a2, 2
/* DC17E0 801001C0 01665823 */  subu       $t3, $t3, $a2
/* DC17E4 801001C4 000B5880 */  sll        $t3, $t3, 2
/* DC17E8 801001C8 01665821 */  addu       $t3, $t3, $a2
/* DC17EC 801001CC 000B58C0 */  sll        $t3, $t3, 3
/* DC17F0 801001D0 3C048009 */  lui        $a0, %hi(messageQueue)
/* DC17F4 801001D4 24842880 */  addiu      $a0, $a0, %lo(messageQueue)
/* DC17F8 801001D8 0C00E92F */  jal        osMotorInit
/* DC17FC 801001DC 016C2821 */   addu      $a1, $t3, $t4
/* DC1800 801001E0 14400006 */  bnez       $v0, .L801001FC
/* DC1804 801001E4 240E0002 */   addiu     $t6, $zero, 2
/* DC1808 801001E8 240D0003 */  addiu      $t5, $zero, 3
/* DC180C 801001EC 3C018010 */  lui        $at, %hi(D_80106208)
/* DC1810 801001F0 A02D6208 */  sb         $t5, %lo(D_80106208)($at)
/* DC1814 801001F4 1000010B */  b          .L80100624
/* DC1818 801001F8 24020002 */   addiu     $v0, $zero, 2
.L801001FC:
/* DC181C 801001FC 3C018010 */  lui        $at, %hi(D_80106208)
/* DC1820 80100200 A02E6208 */  sb         $t6, %lo(D_80106208)($at)
/* DC1824 80100204 10000107 */  b          .L80100624
/* DC1828 80100208 24020002 */   addiu     $v0, $zero, 2
.L8010020C:
/* DC182C 8010020C 3C018007 */  lui        $at, %hi(D_8006AC5C)
/* DC1830 80100210 10000104 */  b          .L80100624
/* DC1834 80100214 A02FAC5C */   sb        $t7, %lo(D_8006AC5C)($at)
.L80100218:
/* DC1838 80100218 0C041507 */  jal        func_8010541C
/* DC183C 8010021C 00000000 */   nop
/* DC1840 80100220 10400013 */  beqz       $v0, .L80100270
/* DC1844 80100224 24180001 */   addiu     $t8, $zero, 1
/* DC1848 80100228 3C018007 */  lui        $at, %hi(D_8006AC5C)
/* DC184C 8010022C A038AC5C */  sb         $t8, %lo(D_8006AC5C)($at)
/* DC1850 80100230 100000FC */  b          .L80100624
/* DC1854 80100234 24020002 */   addiu     $v0, $zero, 2
.L80100238:
/* DC1858 80100238 0C04121D */  jal        func_80104874
/* DC185C 8010023C 00000000 */   nop
/* DC1860 80100240 1040000B */  beqz       $v0, .L80100270
/* DC1864 80100244 24190001 */   addiu     $t9, $zero, 1
/* DC1868 80100248 3C018007 */  lui        $at, %hi(D_8006AC5C)
/* DC186C 8010024C A039AC5C */  sb         $t9, %lo(D_8006AC5C)($at)
/* DC1870 80100250 100000F4 */  b          .L80100624
/* DC1874 80100254 24020002 */   addiu     $v0, $zero, 2
.L80100258:
/* DC1878 80100258 0C0415D7 */  jal        func_8010575C
/* DC187C 8010025C 00000000 */   nop
/* DC1880 80100260 10400003 */  beqz       $v0, .L80100270
/* DC1884 80100264 24080001 */   addiu     $t0, $zero, 1
/* DC1888 80100268 3C018007 */  lui        $at, %hi(D_8006AC5C)
/* DC188C 8010026C A028AC5C */  sb         $t0, %lo(D_8006AC5C)($at)
.L80100270:
/* DC1890 80100270 100000EC */  b          .L80100624
/* DC1894 80100274 24020002 */   addiu     $v0, $zero, 2
.L80100278:
/* DC1898 80100278 90620000 */  lbu        $v0, ($v1)
/* DC189C 8010027C 24090002 */  addiu      $t1, $zero, 2
/* DC18A0 80100280 AFA9001C */  sw         $t1, 0x1c($sp)
/* DC18A4 80100284 14400003 */  bnez       $v0, .L80100294
/* DC18A8 80100288 244A0001 */   addiu     $t2, $v0, 1
/* DC18AC 8010028C 100000E4 */  b          .L80100620
/* DC18B0 80100290 A06A0000 */   sb        $t2, ($v1)
.L80100294:
/* DC18B4 80100294 3C038010 */  lui        $v1, %hi(D_80106210)
/* DC18B8 80100298 8C636210 */  lw         $v1, %lo(D_80106210)($v1)
/* DC18BC 8010029C 2C610006 */  sltiu      $at, $v1, 6
/* DC18C0 801002A0 102000DF */  beqz       $at, .L80100620
/* DC18C4 801002A4 00035880 */   sll       $t3, $v1, 2
/* DC18C8 801002A8 3C018016 */  lui        $at, %hi(D_801661FC)
/* DC18CC 801002AC 002B0821 */  addu       $at, $at, $t3
/* DC18D0 801002B0 8C2B61FC */  lw         $t3, %lo(D_801661FC)($at)
/* DC18D4 801002B4 01600008 */  jr         $t3
/* DC18D8 801002B8 00000000 */   nop
