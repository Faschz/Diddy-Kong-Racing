glabel MenuLoadNewAreaInit
/* 093884 80092C84 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 093888 80092C88 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09388C 80092C8C 0C01BAA4 */  jal   get_settings
/* 093890 80092C90 AFB00018 */   sw    $s0, 0x18($sp)
/* 093894 80092C94 3C01800E */  lui   $at, %hi(D_800DF4C4) # $at, 0x800e
/* 093898 80092C98 AC20F4C4 */  sw    $zero, %lo(D_800DF4C4)($at)
/* 09389C 80092C9C 3C018012 */  lui   $at, %hi(D_801263BC) # $at, 0x8012
/* 0938A0 80092CA0 AC2063BC */  sw    $zero, %lo(D_801263BC)($at)
/* 0938A4 80092CA4 3C01800E */  lui   $at, %hi(D_800DF47C) # $at, 0x800e
/* 0938A8 80092CA8 AFA20024 */  sw    $v0, 0x24($sp)
/* 0938AC 80092CAC AC20F47C */  sw    $zero, %lo(D_800DF47C)($at)
/* 0938B0 80092CB0 8C4E004C */  lw    $t6, 0x4c($v0)
/* 0938B4 80092CB4 00000000 */  nop   
/* 0938B8 80092CB8 81D00002 */  lb    $s0, 2($t6)
/* 0938BC 80092CBC 0C01AC2B */  jal   func_8006B0AC
/* 0938C0 80092CC0 02002025 */   move  $a0, $s0
/* 0938C4 80092CC4 3C018012 */  lui   $at, %hi(gPlayerVehicle) # $at, 0x8012
/* 0938C8 80092CC8 A02269C0 */  sb    $v0, %lo(gPlayerVehicle)($at)
/* 0938CC 80092CCC 0C01AC53 */  jal   func_8006B14C
/* 0938D0 80092CD0 02002025 */   move  $a0, $s0
/* 0938D4 80092CD4 24010005 */  li    $at, 5
/* 0938D8 80092CD8 1041000F */  beq   $v0, $at, .L80092D18
/* 0938DC 80092CDC 00106040 */   sll   $t4, $s0, 1
/* 0938E0 80092CE0 24010008 */  li    $at, 8
/* 0938E4 80092CE4 1041000C */  beq   $v0, $at, .L80092D18
/* 0938E8 80092CE8 304F0040 */   andi  $t7, $v0, 0x40
/* 0938EC 80092CEC 15E00017 */  bnez  $t7, .L80092D4C
/* 0938F0 80092CF0 00107040 */   sll   $t6, $s0, 1
/* 0938F4 80092CF4 8FB80024 */  lw    $t8, 0x24($sp)
/* 0938F8 80092CF8 00104080 */  sll   $t0, $s0, 2
/* 0938FC 80092CFC 8F190004 */  lw    $t9, 4($t8)
/* 093900 80092D00 00000000 */  nop   
/* 093904 80092D04 03284821 */  addu  $t1, $t9, $t0
/* 093908 80092D08 8D2A0000 */  lw    $t2, ($t1)
/* 09390C 80092D0C 00000000 */  nop   
/* 093910 80092D10 314B0002 */  andi  $t3, $t2, 2
/* 093914 80092D14 1560000D */  bnez  $t3, .L80092D4C
.L80092D18:
/* 093918 80092D18 3C02800E */   lui   $v0, %hi(D_800E0758) # $v0, 0x800e
/* 09391C 80092D1C 004C1021 */  addu  $v0, $v0, $t4
/* 093920 80092D20 84420758 */  lh    $v0, %lo(D_800E0758)($v0)
/* 093924 80092D24 2401FFFF */  li    $at, -1
/* 093928 80092D28 10410004 */  beq   $v0, $at, .L80092D3C
/* 09392C 80092D2C 3044FFFF */   andi  $a0, $v0, 0xffff
/* 093930 80092D30 00002825 */  move  $a1, $zero
/* 093934 80092D34 0C0003F7 */  jal   func_80000FDC
/* 093938 80092D38 3C063F80 */   lui   $a2, 0x3f80
.L80092D3C:
/* 09393C 80092D3C 240DFFFF */  li    $t5, -1
/* 093940 80092D40 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 093944 80092D44 10000044 */  b     .L80092E58
/* 093948 80092D48 AC2D63E0 */   sw    $t5, %lo(D_801263E0)($at)
.L80092D4C:
/* 09394C 80092D4C 3C02800E */  lui   $v0, %hi(D_800E0758) # $v0, 0x800e
/* 093950 80092D50 004E1021 */  addu  $v0, $v0, $t6
/* 093954 80092D54 84420758 */  lh    $v0, %lo(D_800E0758)($v0)
/* 093958 80092D58 2401FFFF */  li    $at, -1
/* 09395C 80092D5C 10410004 */  beq   $v0, $at, .L80092D70
/* 093960 80092D60 3044FFFF */   andi  $a0, $v0, 0xffff
/* 093964 80092D64 00002825 */  move  $a1, $zero
/* 093968 80092D68 0C0003F7 */  jal   func_80000FDC
/* 09396C 80092D6C 3C063F00 */   lui   $a2, 0x3f00
.L80092D70:
/* 093970 80092D70 0C0002F8 */  jal   func_80000BE0
/* 093974 80092D74 24040018 */   li    $a0, 24
/* 093978 80092D78 0C0002CD */  jal   func_80000B34
/* 09397C 80092D7C 24040018 */   li    $a0, 24
/* 093980 80092D80 0C0002C6 */  jal   func_80000B18
/* 093984 80092D84 00000000 */   nop   
/* 093988 80092D88 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 09398C 80092D8C 3C04800E */  lui   $a0, %hi(D_800E0FB4) # $a0, 0x800e
/* 093990 80092D90 AC2063E0 */  sw    $zero, %lo(D_801263E0)($at)
/* 093994 80092D94 0C02719D */  jal   func_8009C674
/* 093998 80092D98 24840FB4 */   addiu $a0, %lo(D_800E0FB4) # addiu $a0, $a0, 0xfb4
/* 09399C 80092D9C 3C04800E */  lui   $a0, %hi(D_800E0FD8) # $a0, 0x800e
/* 0939A0 80092DA0 0C027229 */  jal   func_8009C8A4
/* 0939A4 80092DA4 24840FD8 */   addiu $a0, %lo(D_800E0FD8) # addiu $a0, $a0, 0xfd8
/* 0939A8 80092DA8 0C023917 */  jal   func_8008E45C
/* 0939AC 80092DAC 00000000 */   nop   
/* 0939B0 80092DB0 3C028012 */  lui   $v0, %hi(D_80126550) # $v0, 0x8012
/* 0939B4 80092DB4 24426550 */  addiu $v0, %lo(D_80126550) # addiu $v0, $v0, 0x6550
/* 0939B8 80092DB8 8C4F007C */  lw    $t7, 0x7c($v0)
/* 0939BC 80092DBC 3C01800E */  lui   $at, %hi(D_800E04D4) # $at, 0x800e
/* 0939C0 80092DC0 AC2F04D4 */  sw    $t7, %lo(D_800E04D4)($at)
/* 0939C4 80092DC4 8C580078 */  lw    $t8, 0x78($v0)
/* 0939C8 80092DC8 3C01800E */  lui   $at, %hi(D_800E04E4) # $at, 0x800e
/* 0939CC 80092DCC AC3804E4 */  sw    $t8, %lo(D_800E04E4)($at)
/* 0939D0 80092DD0 8C590084 */  lw    $t9, 0x84($v0)
/* 0939D4 80092DD4 3C01800E */  lui   $at, %hi(D_800E04F4) # $at, 0x800e
/* 0939D8 80092DD8 AC3904F4 */  sw    $t9, %lo(D_800E04F4)($at)
/* 0939DC 80092DDC 8C480080 */  lw    $t0, 0x80($v0)
/* 0939E0 80092DE0 3C01800E */  lui   $at, %hi(D_800E0504) # $at, 0x800e
/* 0939E4 80092DE4 AC280504 */  sw    $t0, %lo(D_800E0504)($at)
/* 0939E8 80092DE8 8C49008C */  lw    $t1, 0x8c($v0)
/* 0939EC 80092DEC 3C01800E */  lui   $at, %hi(D_800E0514) # $at, 0x800e
/* 0939F0 80092DF0 AC290514 */  sw    $t1, %lo(D_800E0514)($at)
/* 0939F4 80092DF4 8C4A0088 */  lw    $t2, 0x88($v0)
/* 0939F8 80092DF8 3C01800E */  lui   $at, %hi(D_800E0524) # $at, 0x800e
/* 0939FC 80092DFC AC2A0524 */  sw    $t2, %lo(D_800E0524)($at)
/* 093A00 80092E00 8C4B00C0 */  lw    $t3, 0xc0($v0)
/* 093A04 80092E04 3C01800E */  lui   $at, %hi(D_800E05B4) # $at, 0x800e
/* 093A08 80092E08 AC2B05B4 */  sw    $t3, %lo(D_800E05B4)($at)
/* 093A0C 80092E0C 8C4C0178 */  lw    $t4, 0x178($v0)
/* 093A10 80092E10 3C01800E */  lui   $at, %hi(D_800E0614) # $at, 0x800e
/* 093A14 80092E14 3C04800E */  lui   $a0, %hi(D_800DF77C) # $a0, 0x800e
/* 093A18 80092E18 2484F77C */  addiu $a0, %lo(D_800DF77C) # addiu $a0, $a0, -0x884
/* 093A1C 80092E1C 0C030076 */  jal   func_800C01D8
/* 093A20 80092E20 AC2C0614 */   sw    $t4, %lo(D_800E0614)($at)
/* 093A24 80092E24 3C018012 */  lui   $at, %hi(D_801263BC) # $at, 0x8012
/* 093A28 80092E28 AC2063BC */  sw    $zero, %lo(D_801263BC)($at)
/* 093A2C 80092E2C 3C01800E */  lui   $at, %hi(D_800DF47C) # $at, 0x800e
/* 093A30 80092E30 AC20F47C */  sw    $zero, %lo(D_800DF47C)($at)
/* 093A34 80092E34 3C01800E */  lui   $at, %hi(D_800E0980) # $at, 0x800e
/* 093A38 80092E38 240D001E */  li    $t5, 30
/* 093A3C 80092E3C AC2D0980 */  sw    $t5, %lo(D_800E0980)($at)
/* 093A40 80092E40 0C03105C */  jal   func_800C4170
/* 093A44 80092E44 24040002 */   li    $a0, 2
/* 093A48 80092E48 02002025 */  move  $a0, $s0
/* 093A4C 80092E4C 2405FFFF */  li    $a1, -1
/* 093A50 80092E50 0C01B8BA */  jal   func_8006E2E8
/* 093A54 80092E54 24060001 */   li    $a2, 1
.L80092E58:
/* 093A58 80092E58 0C031525 */  jal   func_800C5494
/* 093A5C 80092E5C 24040007 */   li    $a0, 7
/* 093A60 80092E60 0C01AC53 */  jal   func_8006B14C
/* 093A64 80092E64 02002025 */   move  $a0, $s0
/* 093A68 80092E68 304E0040 */  andi  $t6, $v0, 0x40
/* 093A6C 80092E6C 11C00006 */  beqz  $t6, .L80092E88
/* 093A70 80092E70 8FBF001C */   lw    $ra, 0x1c($sp)
/* 093A74 80092E74 0C01AC64 */  jal   func_8006B190
/* 093A78 80092E78 02002025 */   move  $a0, $s0
/* 093A7C 80092E7C 0C030C7B */  jal   func_800C31EC
/* 093A80 80092E80 2444003B */   addiu $a0, $v0, 0x3b
/* 093A84 80092E84 8FBF001C */  lw    $ra, 0x1c($sp)
.L80092E88:
/* 093A88 80092E88 8FB00018 */  lw    $s0, 0x18($sp)
/* 093A8C 80092E8C 03E00008 */  jr    $ra
/* 093A90 80092E90 27BD0028 */   addiu $sp, $sp, 0x28

