glabel func_8006A6B0
/* 06B2B0 8006A6B0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 06B2B4 8006A6B4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 06B2B8 8006A6B8 3C05FFFF */  lui   $a1, (0xFFFF00FF >> 16) # lui $a1, 0xffff
/* 06B2BC 8006A6BC AFB30020 */  sw    $s3, 0x20($sp)
/* 06B2C0 8006A6C0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 06B2C4 8006A6C4 AFB10018 */  sw    $s1, 0x18($sp)
/* 06B2C8 8006A6C8 AFB00014 */  sw    $s0, 0x14($sp)
/* 06B2CC 8006A6CC 34A500FF */  ori   $a1, (0xFFFF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 06B2D0 8006A6D0 0C01C327 */  jal   allocate_from_main_pool_safe
/* 06B2D4 8006A6D4 240400C4 */   li    $a0, 196
/* 06B2D8 8006A6D8 AFA20044 */  sw    $v0, 0x44($sp)
/* 06B2DC 8006A6DC 0C01DB16 */  jal   load_asset_section_from_rom
/* 06B2E0 8006A6E0 24040016 */   li    $a0, 22
/* 06B2E4 8006A6E4 3C138012 */  lui   $s3, %hi(D_80121160) # $s3, 0x8012
/* 06B2E8 8006A6E8 26731160 */  addiu $s3, %lo(D_80121160) # addiu $s3, $s3, 0x1160
/* 06B2EC 8006A6EC AE620000 */  sw    $v0, ($s3)
/* 06B2F0 8006A6F0 3C028012 */  lui   $v0, %hi(D_801211C0) # $v0, 0x8012
/* 06B2F4 8006A6F4 3C038012 */  lui   $v1, %hi(D_80121180) # $v1, 0x8012
/* 06B2F8 8006A6F8 24631180 */  addiu $v1, %lo(D_80121180) # addiu $v1, $v1, 0x1180
/* 06B2FC 8006A6FC 244211C0 */  addiu $v0, %lo(D_801211C0) # addiu $v0, $v0, 0x11c0
.L8006A700:
/* 06B300 8006A700 24630010 */  addiu $v1, $v1, 0x10
/* 06B304 8006A704 AC60FFF0 */  sw    $zero, -0x10($v1)
/* 06B308 8006A708 AC60FFF4 */  sw    $zero, -0xc($v1)
/* 06B30C 8006A70C AC60FFF8 */  sw    $zero, -8($v1)
/* 06B310 8006A710 1462FFFB */  bne   $v1, $v0, .L8006A700
/* 06B314 8006A714 AC60FFFC */   sw    $zero, -4($v1)
/* 06B318 8006A718 8E630000 */  lw    $v1, ($s3)
/* 06B31C 8006A71C 3C0A8012 */  lui   $t2, %hi(D_80121170) # $t2, 0x8012
/* 06B320 8006A720 254A1170 */  addiu $t2, %lo(D_80121170) # addiu $t2, $t2, 0x1170
/* 06B324 8006A724 00007080 */  sll   $t6, $zero, 2
/* 06B328 8006A728 AD400000 */  sw    $zero, ($t2)
/* 06B32C 8006A72C 006E7821 */  addu  $t7, $v1, $t6
/* 06B330 8006A730 8DF80000 */  lw    $t8, ($t7)
/* 06B334 8006A734 240BFFFF */  li    $t3, -1
/* 06B338 8006A738 11780009 */  beq   $t3, $t8, .L8006A760
/* 06B33C 8006A73C 00003025 */   move  $a2, $zero
/* 06B340 8006A740 24D90001 */  addiu $t9, $a2, 1
.L8006A744:
/* 06B344 8006A744 00196080 */  sll   $t4, $t9, 2
/* 06B348 8006A748 006C6821 */  addu  $t5, $v1, $t4
/* 06B34C 8006A74C AD590000 */  sw    $t9, ($t2)
/* 06B350 8006A750 8DAE0000 */  lw    $t6, ($t5)
/* 06B354 8006A754 03203025 */  move  $a2, $t9
/* 06B358 8006A758 156EFFFA */  bne   $t3, $t6, .L8006A744
/* 06B35C 8006A75C 24D90001 */   addiu $t9, $a2, 1
.L8006A760:
/* 06B360 8006A760 24CFFFFF */  addiu $t7, $a2, -1
/* 06B364 8006A764 000FC080 */  sll   $t8, $t7, 2
/* 06B368 8006A768 030FC023 */  subu  $t8, $t8, $t7
/* 06B36C 8006A76C 3C05FFFF */  lui   $a1, (0xFFFF00FF >> 16) # lui $a1, 0xffff
/* 06B370 8006A770 AD4F0000 */  sw    $t7, ($t2)
/* 06B374 8006A774 34A500FF */  ori   $a1, (0xFFFF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 06B378 8006A778 0C01C327 */  jal   allocate_from_main_pool_safe
/* 06B37C 8006A77C 00182040 */   sll   $a0, $t8, 1
/* 06B380 8006A780 3C0A8012 */  lui   $t2, %hi(D_80121170) # $t2, 0x8012
/* 06B384 8006A784 254A1170 */  addiu $t2, %lo(D_80121170) # addiu $t2, $t2, 0x1170
/* 06B388 8006A788 8FB90044 */  lw    $t9, 0x44($sp)
/* 06B38C 8006A78C 8D4C0000 */  lw    $t4, ($t2)
/* 06B390 8006A790 3C088012 */  lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06B394 8006A794 3C098012 */  lui   $t1, %hi(D_80121174) # $t1, 0x8012
/* 06B398 8006A798 3C108012 */  lui   $s0, %hi(gCurrentLevelHeader) # $s0, 0x8012
/* 06B39C 8006A79C 26101168 */  addiu $s0, %lo(gCurrentLevelHeader) # addiu $s0, $s0, 0x1168
/* 06B3A0 8006A7A0 25291174 */  addiu $t1, %lo(D_80121174) # addiu $t1, $t1, 0x1174
/* 06B3A4 8006A7A4 2508117C */  addiu $t0, %lo(D_80121178+4) # addiu $t0, $t0, 0x117c
/* 06B3A8 8006A7A8 240BFFFF */  li    $t3, -1
/* 06B3AC 8006A7AC AD020000 */  sw    $v0, ($t0)
/* 06B3B0 8006A7B0 AD2B0000 */  sw    $t3, ($t1)
/* 06B3B4 8006A7B4 00008825 */  move  $s1, $zero
/* 06B3B8 8006A7B8 1980004B */  blez  $t4, .L8006A8E8
/* 06B3BC 8006A7BC AE190000 */   sw    $t9, ($s0)
/* 06B3C0 8006A7C0 00009025 */  move  $s2, $zero
/* 06B3C4 8006A7C4 00001825 */  move  $v1, $zero
.L8006A7C8:
/* 06B3C8 8006A7C8 8E6D0000 */  lw    $t5, ($s3)
/* 06B3CC 8006A7CC 8E050000 */  lw    $a1, ($s0)
/* 06B3D0 8006A7D0 01B27021 */  addu  $t6, $t5, $s2
/* 06B3D4 8006A7D4 8DC60000 */  lw    $a2, ($t6)
/* 06B3D8 8006A7D8 AFA3002C */  sw    $v1, 0x2c($sp)
/* 06B3DC 8006A7DC 24040017 */  li    $a0, 23
/* 06B3E0 8006A7E0 0C01DB9A */  jal   load_asset_to_address
/* 06B3E4 8006A7E4 240700C4 */   li    $a3, 196
/* 06B3E8 8006A7E8 8E050000 */  lw    $a1, ($s0)
/* 06B3EC 8006A7EC 3C098012 */  lui   $t1, %hi(D_80121174) # $t1, 0x8012
/* 06B3F0 8006A7F0 25291174 */  addiu $t1, %lo(D_80121174) # addiu $t1, $t1, 0x1174
/* 06B3F4 8006A7F4 8D2F0000 */  lw    $t7, ($t1)
/* 06B3F8 8006A7F8 80A40000 */  lb    $a0, ($a1)
/* 06B3FC 8006A7FC 8FA3002C */  lw    $v1, 0x2c($sp)
/* 06B400 8006A800 3C088012 */  lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06B404 8006A804 3C0A8012 */  lui   $t2, %hi(D_80121170) # $t2, 0x8012
/* 06B408 8006A808 01E4082A */  slt   $at, $t7, $a0
/* 06B40C 8006A80C 254A1170 */  addiu $t2, %lo(D_80121170) # addiu $t2, $t2, 0x1170
/* 06B410 8006A810 10200002 */  beqz  $at, .L8006A81C
/* 06B414 8006A814 2508117C */   addiu $t0, %lo(D_80121178+4) # addiu $t0, $t0, 0x117c
/* 06B418 8006A818 AD240000 */  sw    $a0, ($t1)
.L8006A81C:
/* 06B41C 8006A81C 80A4004C */  lb    $a0, 0x4c($a1)
/* 06B420 8006A820 26310001 */  addiu $s1, $s1, 1
/* 06B424 8006A824 0480000A */  bltz  $a0, .L8006A850
/* 06B428 8006A828 28810010 */   slti  $at, $a0, 0x10
/* 06B42C 8006A82C 10200008 */  beqz  $at, .L8006A850
/* 06B430 8006A830 0004C080 */   sll   $t8, $a0, 2
/* 06B434 8006A834 3C198012 */  lui   $t9, %hi(D_80121180) # $t9, 0x8012
/* 06B438 8006A838 27391180 */  addiu $t9, %lo(D_80121180) # addiu $t9, $t9, 0x1180
/* 06B43C 8006A83C 03191021 */  addu  $v0, $t8, $t9
/* 06B440 8006A840 8C4C0000 */  lw    $t4, ($v0)
/* 06B444 8006A844 00000000 */  nop   
/* 06B448 8006A848 258D0001 */  addiu $t5, $t4, 1
/* 06B44C 8006A84C AC4D0000 */  sw    $t5, ($v0)
.L8006A850:
/* 06B450 8006A850 8D0F0000 */  lw    $t7, ($t0)
/* 06B454 8006A854 80AE0000 */  lb    $t6, ($a1)
/* 06B458 8006A858 01E3C021 */  addu  $t8, $t7, $v1
/* 06B45C 8006A85C A30E0000 */  sb    $t6, ($t8)
/* 06B460 8006A860 8E190000 */  lw    $t9, ($s0)
/* 06B464 8006A864 8D0D0000 */  lw    $t5, ($t0)
/* 06B468 8006A868 832C004C */  lb    $t4, 0x4c($t9)
/* 06B46C 8006A86C 01A37821 */  addu  $t7, $t5, $v1
/* 06B470 8006A870 A1EC0001 */  sb    $t4, 1($t7)
/* 06B474 8006A874 8E0E0000 */  lw    $t6, ($s0)
/* 06B478 8006A878 8D0C0000 */  lw    $t4, ($t0)
/* 06B47C 8006A87C 81D9004E */  lb    $t9, 0x4e($t6)
/* 06B480 8006A880 01837821 */  addu  $t7, $t4, $v1
/* 06B484 8006A884 00196900 */  sll   $t5, $t9, 4
/* 06B488 8006A888 A1ED0002 */  sb    $t5, 2($t7)
/* 06B48C 8006A88C 8D0E0000 */  lw    $t6, ($t0)
/* 06B490 8006A890 8E190000 */  lw    $t9, ($s0)
/* 06B494 8006A894 01C31021 */  addu  $v0, $t6, $v1
/* 06B498 8006A898 832C004D */  lb    $t4, 0x4d($t9)
/* 06B49C 8006A89C 80580002 */  lb    $t8, 2($v0)
/* 06B4A0 8006A8A0 318D000F */  andi  $t5, $t4, 0xf
/* 06B4A4 8006A8A4 030D7825 */  or    $t7, $t8, $t5
/* 06B4A8 8006A8A8 A04F0002 */  sb    $t7, 2($v0)
/* 06B4AC 8006A8AC 8D190000 */  lw    $t9, ($t0)
/* 06B4B0 8006A8B0 240E0001 */  li    $t6, 1
/* 06B4B4 8006A8B4 03236021 */  addu  $t4, $t9, $v1
/* 06B4B8 8006A8B8 A18E0003 */  sb    $t6, 3($t4)
/* 06B4BC 8006A8BC 8E180000 */  lw    $t8, ($s0)
/* 06B4C0 8006A8C0 8D0F0000 */  lw    $t7, ($t0)
/* 06B4C4 8006A8C4 870D00B0 */  lh    $t5, 0xb0($t8)
/* 06B4C8 8006A8C8 01E3C821 */  addu  $t9, $t7, $v1
/* 06B4CC 8006A8CC A72D0004 */  sh    $t5, 4($t9)
/* 06B4D0 8006A8D0 8D4E0000 */  lw    $t6, ($t2)
/* 06B4D4 8006A8D4 24630006 */  addiu $v1, $v1, 6
/* 06B4D8 8006A8D8 022E082A */  slt   $at, $s1, $t6
/* 06B4DC 8006A8DC 1420FFBA */  bnez  $at, .L8006A7C8
/* 06B4E0 8006A8E0 26520004 */   addiu $s2, $s2, 4
/* 06B4E4 8006A8E4 00008825 */  move  $s1, $zero
.L8006A8E8:
/* 06B4E8 8006A8E8 8D2C0000 */  lw    $t4, ($t1)
/* 06B4EC 8006A8EC 3C05FFFF */  lui   $a1, (0xFFFF00FF >> 16) # lui $a1, 0xffff
/* 06B4F0 8006A8F0 25840001 */  addiu $a0, $t4, 1
/* 06B4F4 8006A8F4 AD240000 */  sw    $a0, ($t1)
/* 06B4F8 8006A8F8 0C01C327 */  jal   allocate_from_main_pool_safe
/* 06B4FC 8006A8FC 34A500FF */   ori   $a1, (0xFFFF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 06B500 8006A900 3C098012 */  lui   $t1, %hi(D_80121174) # $t1, 0x8012
/* 06B504 8006A904 25291174 */  addiu $t1, %lo(D_80121174) # addiu $t1, $t1, 0x1174
/* 06B508 8006A908 8D2F0000 */  lw    $t7, ($t1)
/* 06B50C 8006A90C 3C048012 */  lui   $a0, %hi(D_80121178) # $a0, 0x8012
/* 06B510 8006A910 24841178 */  addiu $a0, %lo(D_80121178) # addiu $a0, $a0, 0x1178
/* 06B514 8006A914 3C088012 */  lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06B518 8006A918 3C0A8012 */  lui   $t2, %hi(D_80121170) # $t2, 0x8012
/* 06B51C 8006A91C 254A1170 */  addiu $t2, %lo(D_80121170) # addiu $t2, $t2, 0x1170
/* 06B520 8006A920 2508117C */  addiu $t0, %lo(D_80121178+4) # addiu $t0, $t0, 0x117c
/* 06B524 8006A924 AC820000 */  sw    $v0, ($a0)
/* 06B528 8006A928 19E0000B */  blez  $t7, .L8006A958
/* 06B52C 8006A92C 240BFFFF */   li    $t3, -1
.L8006A930:
/* 06B530 8006A930 8C8D0000 */  lw    $t5, ($a0)
/* 06B534 8006A934 00000000 */  nop   
/* 06B538 8006A938 01B1C821 */  addu  $t9, $t5, $s1
/* 06B53C 8006A93C A32B0000 */  sb    $t3, ($t9)
/* 06B540 8006A940 8D2E0000 */  lw    $t6, ($t1)
/* 06B544 8006A944 26310001 */  addiu $s1, $s1, 1
/* 06B548 8006A948 022E082A */  slt   $at, $s1, $t6
/* 06B54C 8006A94C 1420FFF8 */  bnez  $at, .L8006A930
/* 06B550 8006A950 00000000 */   nop   
/* 06B554 8006A954 00008825 */  move  $s1, $zero
.L8006A958:
/* 06B558 8006A958 8D460000 */  lw    $a2, ($t2)
/* 06B55C 8006A95C 00000000 */  nop   
/* 06B560 8006A960 18C00015 */  blez  $a2, .L8006A9B8
/* 06B564 8006A964 00001825 */   move  $v1, $zero
/* 06B568 8006A968 24050005 */  li    $a1, 5
.L8006A96C:
/* 06B56C 8006A96C 8D0C0000 */  lw    $t4, ($t0)
/* 06B570 8006A970 00000000 */  nop   
/* 06B574 8006A974 01831021 */  addu  $v0, $t4, $v1
/* 06B578 8006A978 80580001 */  lb    $t8, 1($v0)
/* 06B57C 8006A97C 00000000 */  nop   
/* 06B580 8006A980 14B80008 */  bne   $a1, $t8, .L8006A9A4
/* 06B584 8006A984 00000000 */   nop   
/* 06B588 8006A988 8C8F0000 */  lw    $t7, ($a0)
/* 06B58C 8006A98C 804D0000 */  lb    $t5, ($v0)
/* 06B590 8006A990 3C068012 */  lui   $a2, %hi(D_80121170) # $a2, 0x8012
/* 06B594 8006A994 01EDC821 */  addu  $t9, $t7, $t5
/* 06B598 8006A998 A3310000 */  sb    $s1, ($t9)
/* 06B59C 8006A99C 8CC61170 */  lw    $a2, %lo(D_80121170)($a2)
/* 06B5A0 8006A9A0 00000000 */  nop   
.L8006A9A4:
/* 06B5A4 8006A9A4 26310001 */  addiu $s1, $s1, 1
/* 06B5A8 8006A9A8 0226082A */  slt   $at, $s1, $a2
/* 06B5AC 8006A9AC 1420FFEF */  bnez  $at, .L8006A96C
/* 06B5B0 8006A9B0 24630006 */   addiu $v1, $v1, 6
/* 06B5B4 8006A9B4 00008825 */  move  $s1, $zero
.L8006A9B8:
/* 06B5B8 8006A9B8 8E640000 */  lw    $a0, ($s3)
/* 06B5BC 8006A9BC 0C01C450 */  jal   free_from_memory_pool
/* 06B5C0 8006A9C0 00000000 */   nop   
/* 06B5C4 8006A9C4 8FA40044 */  lw    $a0, 0x44($sp)
/* 06B5C8 8006A9C8 0C01C450 */  jal   free_from_memory_pool
/* 06B5CC 8006A9CC 00000000 */   nop   
/* 06B5D0 8006A9D0 0C01DB16 */  jal   load_asset_section_from_rom
/* 06B5D4 8006A9D4 24040018 */   li    $a0, 24
/* 06B5D8 8006A9D8 AE620000 */  sw    $v0, ($s3)
/* 06B5DC 8006A9DC 8C460000 */  lw    $a2, ($v0)
/* 06B5E0 8006A9E0 240BFFFF */  li    $t3, -1
/* 06B5E4 8006A9E4 11660005 */  beq   $t3, $a2, .L8006A9FC
/* 06B5E8 8006A9E8 00401825 */   move  $v1, $v0
.L8006A9EC:
/* 06B5EC 8006A9EC 8C4E0004 */  lw    $t6, 4($v0)
/* 06B5F0 8006A9F0 26310001 */  addiu $s1, $s1, 1
/* 06B5F4 8006A9F4 156EFFFD */  bne   $t3, $t6, .L8006A9EC
/* 06B5F8 8006A9F8 24420004 */   addiu $v0, $v0, 4
.L8006A9FC:
/* 06B5FC 8006A9FC 2631FFFF */  addiu $s1, $s1, -1
/* 06B600 8006AA00 00112080 */  sll   $a0, $s1, 2
/* 06B604 8006AA04 00646021 */  addu  $t4, $v1, $a0
/* 06B608 8006AA08 8D980000 */  lw    $t8, ($t4)
/* 06B60C 8006AA0C 3C05FFFF */  lui   $a1, (0xFFFF00FF >> 16) # lui $a1, 0xffff
/* 06B610 8006AA10 03063823 */  subu  $a3, $t8, $a2
/* 06B614 8006AA14 AFA70050 */  sw    $a3, 0x50($sp)
/* 06B618 8006AA18 0C01C327 */  jal   allocate_from_main_pool_safe
/* 06B61C 8006AA1C 34A500FF */   ori   $a1, (0xFFFF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 06B620 8006AA20 3C038012 */  lui   $v1, %hi(D_8012116C) # $v1, 0x8012
/* 06B624 8006AA24 2463116C */  addiu $v1, %lo(D_8012116C) # addiu $v1, $v1, 0x116c
/* 06B628 8006AA28 8FA40050 */  lw    $a0, 0x50($sp)
/* 06B62C 8006AA2C 3C05FFFF */  lui   $a1, (0xFFFF00FF >> 16) # lui $a1, 0xffff
/* 06B630 8006AA30 AC620000 */  sw    $v0, ($v1)
/* 06B634 8006AA34 0C01C327 */  jal   allocate_from_main_pool_safe
/* 06B638 8006AA38 34A500FF */   ori   $a1, (0xFFFF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 06B63C 8006AA3C 3C10800E */  lui   $s0, %hi(D_800DD310) # $s0, 0x800e
/* 06B640 8006AA40 2610D310 */  addiu $s0, %lo(D_800DD310) # addiu $s0, $s0, -0x2cf0
/* 06B644 8006AA44 8FA70050 */  lw    $a3, 0x50($sp)
/* 06B648 8006AA48 AE020000 */  sw    $v0, ($s0)
/* 06B64C 8006AA4C 24040019 */  li    $a0, 25
/* 06B650 8006AA50 00402825 */  move  $a1, $v0
/* 06B654 8006AA54 0C01DB9A */  jal   load_asset_to_address
/* 06B658 8006AA58 00003025 */   move  $a2, $zero
/* 06B65C 8006AA5C 3C038012 */  lui   $v1, %hi(D_8012116C) # $v1, 0x8012
/* 06B660 8006AA60 2463116C */  addiu $v1, %lo(D_8012116C) # addiu $v1, $v1, 0x116c
/* 06B664 8006AA64 1A200035 */  blez  $s1, .L8006AB3C
/* 06B668 8006AA68 00003825 */   move  $a3, $zero
/* 06B66C 8006AA6C 32250003 */  andi  $a1, $s1, 3
/* 06B670 8006AA70 10A0000E */  beqz  $a1, .L8006AAAC
/* 06B674 8006AA74 00A02025 */   move  $a0, $a1
/* 06B678 8006AA78 00001080 */  sll   $v0, $zero, 2
.L8006AA7C:
/* 06B67C 8006AA7C 8E6F0000 */  lw    $t7, ($s3)
/* 06B680 8006AA80 8E0E0000 */  lw    $t6, ($s0)
/* 06B684 8006AA84 01E26821 */  addu  $t5, $t7, $v0
/* 06B688 8006AA88 8DB90000 */  lw    $t9, ($t5)
/* 06B68C 8006AA8C 8C780000 */  lw    $t8, ($v1)
/* 06B690 8006AA90 24E70001 */  addiu $a3, $a3, 1
/* 06B694 8006AA94 032E6021 */  addu  $t4, $t9, $t6
/* 06B698 8006AA98 03027821 */  addu  $t7, $t8, $v0
/* 06B69C 8006AA9C ADEC0000 */  sw    $t4, ($t7)
/* 06B6A0 8006AAA0 1487FFF6 */  bne   $a0, $a3, .L8006AA7C
/* 06B6A4 8006AAA4 24420004 */   addiu $v0, $v0, 4
/* 06B6A8 8006AAA8 10F10024 */  beq   $a3, $s1, .L8006AB3C
.L8006AAAC:
/* 06B6AC 8006AAAC 00071080 */   sll   $v0, $a3, 2
/* 06B6B0 8006AAB0 00112080 */  sll   $a0, $s1, 2
.L8006AAB4:
/* 06B6B4 8006AAB4 8E6D0000 */  lw    $t5, ($s3)
/* 06B6B8 8006AAB8 8E180000 */  lw    $t8, ($s0)
/* 06B6BC 8006AABC 01A2C821 */  addu  $t9, $t5, $v0
/* 06B6C0 8006AAC0 8F2E0000 */  lw    $t6, ($t9)
/* 06B6C4 8006AAC4 8C6F0000 */  lw    $t7, ($v1)
/* 06B6C8 8006AAC8 01D86021 */  addu  $t4, $t6, $t8
/* 06B6CC 8006AACC 01E26821 */  addu  $t5, $t7, $v0
/* 06B6D0 8006AAD0 ADAC0000 */  sw    $t4, ($t5)
/* 06B6D4 8006AAD4 8E790000 */  lw    $t9, ($s3)
/* 06B6D8 8006AAD8 8C6D0000 */  lw    $t5, ($v1)
/* 06B6DC 8006AADC 03227021 */  addu  $t6, $t9, $v0
/* 06B6E0 8006AAE0 8DD80004 */  lw    $t8, 4($t6)
/* 06B6E4 8006AAE4 8E0F0000 */  lw    $t7, ($s0)
/* 06B6E8 8006AAE8 01A2C821 */  addu  $t9, $t5, $v0
/* 06B6EC 8006AAEC 030F6021 */  addu  $t4, $t8, $t7
/* 06B6F0 8006AAF0 AF2C0004 */  sw    $t4, 4($t9)
/* 06B6F4 8006AAF4 8E6E0000 */  lw    $t6, ($s3)
/* 06B6F8 8006AAF8 8C790000 */  lw    $t9, ($v1)
/* 06B6FC 8006AAFC 01C2C021 */  addu  $t8, $t6, $v0
/* 06B700 8006AB00 8F0F0008 */  lw    $t7, 8($t8)
/* 06B704 8006AB04 8E0D0000 */  lw    $t5, ($s0)
/* 06B708 8006AB08 03227021 */  addu  $t6, $t9, $v0
/* 06B70C 8006AB0C 01ED6021 */  addu  $t4, $t7, $t5
/* 06B710 8006AB10 ADCC0008 */  sw    $t4, 8($t6)
/* 06B714 8006AB14 8E780000 */  lw    $t8, ($s3)
/* 06B718 8006AB18 8C6E0000 */  lw    $t6, ($v1)
/* 06B71C 8006AB1C 03027821 */  addu  $t7, $t8, $v0
/* 06B720 8006AB20 8DED000C */  lw    $t5, 0xc($t7)
/* 06B724 8006AB24 8E190000 */  lw    $t9, ($s0)
/* 06B728 8006AB28 01C2C021 */  addu  $t8, $t6, $v0
/* 06B72C 8006AB2C 24420010 */  addiu $v0, $v0, 0x10
/* 06B730 8006AB30 01B96021 */  addu  $t4, $t5, $t9
/* 06B734 8006AB34 1444FFDF */  bne   $v0, $a0, .L8006AAB4
/* 06B738 8006AB38 AF0C000C */   sw    $t4, 0xc($t8)
.L8006AB3C:
/* 06B73C 8006AB3C 8E640000 */  lw    $a0, ($s3)
/* 06B740 8006AB40 0C01C450 */  jal   free_from_memory_pool
/* 06B744 8006AB44 00000000 */   nop   
/* 06B748 8006AB48 3C04800E */  lui   $a0, %hi(D_800DD324) # $a0, 0x800e
/* 06B74C 8006AB4C 8C84D324 */  lw    $a0, %lo(D_800DD324)($a0)
/* 06B750 8006AB50 00001825 */  move  $v1, $zero
/* 06B754 8006AB54 18800009 */  blez  $a0, .L8006AB7C
/* 06B758 8006AB58 00001025 */   move  $v0, $zero
/* 06B75C 8006AB5C 3C058007 */  lui   $a1, %hi(func_80068158) # $a1, 0x8007
/* 06B760 8006AB60 24A58158 */  addiu $a1, %lo(func_80068158) # addiu $a1, $a1, -0x7ea8
.L8006AB64:
/* 06B764 8006AB64 00A27821 */  addu  $t7, $a1, $v0
/* 06B768 8006AB68 91ED0000 */  lbu   $t5, ($t7)
/* 06B76C 8006AB6C 24420001 */  addiu $v0, $v0, 1
/* 06B770 8006AB70 0044082A */  slt   $at, $v0, $a0
/* 06B774 8006AB74 1420FFFB */  bnez  $at, .L8006AB64
/* 06B778 8006AB78 006D1821 */   addu  $v1, $v1, $t5
.L8006AB7C:
/* 06B77C 8006AB7C 3C19800E */  lui   $t9, %hi(D_800DD320) # $t9, 0x800e
/* 06B780 8006AB80 8F39D320 */  lw    $t9, %lo(D_800DD320)($t9)
/* 06B784 8006AB84 00000000 */  nop   
/* 06B788 8006AB88 10790004 */  beq   $v1, $t9, .L8006AB9C
/* 06B78C 8006AB8C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 06B790 8006AB90 0C01A9A8 */  jal   func_8006A6A0
/* 06B794 8006AB94 00000000 */   nop   
/* 06B798 8006AB98 8FBF0024 */  lw    $ra, 0x24($sp)
.L8006AB9C:
/* 06B79C 8006AB9C 8FB00014 */  lw    $s0, 0x14($sp)
/* 06B7A0 8006ABA0 8FB10018 */  lw    $s1, 0x18($sp)
/* 06B7A4 8006ABA4 8FB2001C */  lw    $s2, 0x1c($sp)
/* 06B7A8 8006ABA8 8FB30020 */  lw    $s3, 0x20($sp)
/* 06B7AC 8006ABAC 03E00008 */  jr    $ra
/* 06B7B0 8006ABB0 27BD0058 */   addiu $sp, $sp, 0x58

/* 06B7B4 8006ABB4 04810003 */  bgez  $a0, .L8006ABC4
/* 06B7B8 8006ABB8 3C0E8012 */   lui   $t6, %hi(D_80121170) # $t6, 0x8012
/* 06B7BC 8006ABBC 03E00008 */  jr    $ra
/* 06B7C0 8006ABC0 24020E10 */   li    $v0, 3600

.L8006ABC4:
/* 06B7C4 8006ABC4 8DCE1170 */  lw    $t6, %lo(D_80121170)($t6)
/* 06B7C8 8006ABC8 3C0F8012 */  lui   $t7, %hi(D_80121178+4) # $t7, 0x8012
/* 06B7CC 8006ABCC 008E082A */  slt   $at, $a0, $t6
/* 06B7D0 8006ABD0 14200003 */  bnez  $at, .L8006ABE0
/* 06B7D4 8006ABD4 0004C080 */   sll   $t8, $a0, 2
/* 06B7D8 8006ABD8 03E00008 */  jr    $ra
/* 06B7DC 8006ABDC 24020E10 */   li    $v0, 3600

.L8006ABE0:
/* 06B7E0 8006ABE0 8DEF117C */  lw    $t7, %lo(D_80121178+4)($t7)
/* 06B7E4 8006ABE4 0304C023 */  subu  $t8, $t8, $a0
/* 06B7E8 8006ABE8 0018C040 */  sll   $t8, $t8, 1
/* 06B7EC 8006ABEC 01F8C821 */  addu  $t9, $t7, $t8
/* 06B7F0 8006ABF0 87220004 */  lh    $v0, 4($t9)
/* 06B7F4 8006ABF4 00000000 */  nop   
/* 06B7F8 8006ABF8 03E00008 */  jr    $ra
/* 06B7FC 8006ABFC 00000000 */   nop   

/* 06B800 8006AC00 AFA50004 */  sw    $a1, 4($sp)
/* 06B804 8006AC04 00057600 */  sll   $t6, $a1, 0x18
/* 06B808 8006AC08 AFA60008 */  sw    $a2, 8($sp)
/* 06B80C 8006AC0C 0006C600 */  sll   $t8, $a2, 0x18
/* 06B810 8006AC10 00183603 */  sra   $a2, $t8, 0x18
/* 06B814 8006AC14 04810003 */  bgez  $a0, .L8006AC24
/* 06B818 8006AC18 000E2E03 */   sra   $a1, $t6, 0x18
/* 06B81C 8006AC1C 10000002 */  b     .L8006AC28
/* 06B820 8006AC20 00002025 */   move  $a0, $zero
.L8006AC24:
/* 06B824 8006AC24 24840001 */  addiu $a0, $a0, 1
.L8006AC28:
/* 06B828 8006AC28 24010040 */  li    $at, 64
/* 06B82C 8006AC2C 10A1004B */  beq   $a1, $at, .L8006AD5C
/* 06B830 8006AC30 2402FFFF */   li    $v0, -1
/* 06B834 8006AC34 2402FFFF */  li    $v0, -1
/* 06B838 8006AC38 14C20017 */  bne   $a2, $v0, .L8006AC98
/* 06B83C 8006AC3C 00000000 */   nop   
/* 06B840 8006AC40 3C028012 */  lui   $v0, %hi(D_80121170) # $v0, 0x8012
/* 06B844 8006AC44 8C421170 */  lw    $v0, %lo(D_80121170)($v0)
/* 06B848 8006AC48 3C088012 */  lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06B84C 8006AC4C 0082082A */  slt   $at, $a0, $v0
/* 06B850 8006AC50 10200073 */  beqz  $at, .L8006AE20
/* 06B854 8006AC54 00044880 */   sll   $t1, $a0, 2
/* 06B858 8006AC58 8D08117C */  lw    $t0, %lo(D_80121178+4)($t0)
/* 06B85C 8006AC5C 01244823 */  subu  $t1, $t1, $a0
/* 06B860 8006AC60 00094840 */  sll   $t1, $t1, 1
/* 06B864 8006AC64 01091821 */  addu  $v1, $t0, $t1
.L8006AC68:
/* 06B868 8006AC68 806A0001 */  lb    $t2, 1($v1)
/* 06B86C 8006AC6C 00000000 */  nop   
/* 06B870 8006AC70 14AA0003 */  bne   $a1, $t2, .L8006AC80
/* 06B874 8006AC74 00000000 */   nop   
/* 06B878 8006AC78 03E00008 */  jr    $ra
/* 06B87C 8006AC7C 00801025 */   move  $v0, $a0

.L8006AC80:
/* 06B880 8006AC80 24840001 */  addiu $a0, $a0, 1
/* 06B884 8006AC84 0082082A */  slt   $at, $a0, $v0
/* 06B888 8006AC88 1420FFF7 */  bnez  $at, .L8006AC68
/* 06B88C 8006AC8C 24630006 */   addiu $v1, $v1, 6
/* 06B890 8006AC90 10000064 */  b     .L8006AE24
/* 06B894 8006AC94 2402FFFF */   li    $v0, -1
.L8006AC98:
/* 06B898 8006AC98 14A20016 */  bne   $a1, $v0, .L8006ACF4
/* 06B89C 8006AC9C 3C028012 */   lui   $v0, %hi(D_80121170) # $v0, 0x8012
/* 06B8A0 8006ACA0 8C421170 */  lw    $v0, %lo(D_80121170)($v0)
/* 06B8A4 8006ACA4 3C0B8012 */  lui   $t3, %hi(D_80121178+4) # $t3, 0x8012
/* 06B8A8 8006ACA8 0082082A */  slt   $at, $a0, $v0
/* 06B8AC 8006ACAC 1020005C */  beqz  $at, .L8006AE20
/* 06B8B0 8006ACB0 00046080 */   sll   $t4, $a0, 2
/* 06B8B4 8006ACB4 8D6B117C */  lw    $t3, %lo(D_80121178+4)($t3)
/* 06B8B8 8006ACB8 01846023 */  subu  $t4, $t4, $a0
/* 06B8BC 8006ACBC 000C6040 */  sll   $t4, $t4, 1
/* 06B8C0 8006ACC0 016C1821 */  addu  $v1, $t3, $t4
.L8006ACC4:
/* 06B8C4 8006ACC4 806D0000 */  lb    $t5, ($v1)
/* 06B8C8 8006ACC8 00000000 */  nop   
/* 06B8CC 8006ACCC 14CD0003 */  bne   $a2, $t5, .L8006ACDC
/* 06B8D0 8006ACD0 00000000 */   nop   
/* 06B8D4 8006ACD4 03E00008 */  jr    $ra
/* 06B8D8 8006ACD8 00801025 */   move  $v0, $a0

.L8006ACDC:
/* 06B8DC 8006ACDC 24840001 */  addiu $a0, $a0, 1
/* 06B8E0 8006ACE0 0082082A */  slt   $at, $a0, $v0
/* 06B8E4 8006ACE4 1420FFF7 */  bnez  $at, .L8006ACC4
/* 06B8E8 8006ACE8 24630006 */   addiu $v1, $v1, 6
/* 06B8EC 8006ACEC 1000004D */  b     .L8006AE24
/* 06B8F0 8006ACF0 2402FFFF */   li    $v0, -1
.L8006ACF4:
/* 06B8F4 8006ACF4 3C028012 */  lui   $v0, %hi(D_80121170) # $v0, 0x8012
/* 06B8F8 8006ACF8 8C421170 */  lw    $v0, %lo(D_80121170)($v0)
/* 06B8FC 8006ACFC 3C0E8012 */  lui   $t6, %hi(D_80121178+4) # $t6, 0x8012
/* 06B900 8006AD00 0082082A */  slt   $at, $a0, $v0
/* 06B904 8006AD04 10200046 */  beqz  $at, .L8006AE20
/* 06B908 8006AD08 00047880 */   sll   $t7, $a0, 2
/* 06B90C 8006AD0C 8DCE117C */  lw    $t6, %lo(D_80121178+4)($t6)
/* 06B910 8006AD10 01E47823 */  subu  $t7, $t7, $a0
/* 06B914 8006AD14 000F7840 */  sll   $t7, $t7, 1
/* 06B918 8006AD18 01CF1821 */  addu  $v1, $t6, $t7
.L8006AD1C:
/* 06B91C 8006AD1C 80780001 */  lb    $t8, 1($v1)
/* 06B920 8006AD20 00000000 */  nop   
/* 06B924 8006AD24 14B80007 */  bne   $a1, $t8, .L8006AD44
/* 06B928 8006AD28 00000000 */   nop   
/* 06B92C 8006AD2C 80790000 */  lb    $t9, ($v1)
/* 06B930 8006AD30 00000000 */  nop   
/* 06B934 8006AD34 14D90003 */  bne   $a2, $t9, .L8006AD44
/* 06B938 8006AD38 00000000 */   nop   
/* 06B93C 8006AD3C 03E00008 */  jr    $ra
/* 06B940 8006AD40 00801025 */   move  $v0, $a0

.L8006AD44:
/* 06B944 8006AD44 24840001 */  addiu $a0, $a0, 1
/* 06B948 8006AD48 0082082A */  slt   $at, $a0, $v0
/* 06B94C 8006AD4C 1420FFF3 */  bnez  $at, .L8006AD1C
/* 06B950 8006AD50 24630006 */   addiu $v1, $v1, 6
/* 06B954 8006AD54 10000033 */  b     .L8006AE24
/* 06B958 8006AD58 2402FFFF */   li    $v0, -1
.L8006AD5C:
/* 06B95C 8006AD5C 14C20017 */  bne   $a2, $v0, .L8006ADBC
/* 06B960 8006AD60 3C028012 */   lui   $v0, %hi(D_80121170) # $v0, 0x8012
/* 06B964 8006AD64 8C421170 */  lw    $v0, %lo(D_80121170)($v0)
/* 06B968 8006AD68 3C088012 */  lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06B96C 8006AD6C 0082082A */  slt   $at, $a0, $v0
/* 06B970 8006AD70 1020002B */  beqz  $at, .L8006AE20
/* 06B974 8006AD74 00044880 */   sll   $t1, $a0, 2
/* 06B978 8006AD78 8D08117C */  lw    $t0, %lo(D_80121178+4)($t0)
/* 06B97C 8006AD7C 01244823 */  subu  $t1, $t1, $a0
/* 06B980 8006AD80 00094840 */  sll   $t1, $t1, 1
/* 06B984 8006AD84 01091821 */  addu  $v1, $t0, $t1
.L8006AD88:
/* 06B988 8006AD88 806A0001 */  lb    $t2, 1($v1)
/* 06B98C 8006AD8C 00000000 */  nop   
/* 06B990 8006AD90 314B0040 */  andi  $t3, $t2, 0x40
/* 06B994 8006AD94 11600003 */  beqz  $t3, .L8006ADA4
/* 06B998 8006AD98 00000000 */   nop   
/* 06B99C 8006AD9C 03E00008 */  jr    $ra
/* 06B9A0 8006ADA0 00801025 */   move  $v0, $a0

.L8006ADA4:
/* 06B9A4 8006ADA4 24840001 */  addiu $a0, $a0, 1
/* 06B9A8 8006ADA8 0082082A */  slt   $at, $a0, $v0
/* 06B9AC 8006ADAC 1420FFF6 */  bnez  $at, .L8006AD88
/* 06B9B0 8006ADB0 24630006 */   addiu $v1, $v1, 6
/* 06B9B4 8006ADB4 1000001B */  b     .L8006AE24
/* 06B9B8 8006ADB8 2402FFFF */   li    $v0, -1
.L8006ADBC:
/* 06B9BC 8006ADBC 3C028012 */  lui   $v0, %hi(D_80121170) # $v0, 0x8012
/* 06B9C0 8006ADC0 8C421170 */  lw    $v0, %lo(D_80121170)($v0)
/* 06B9C4 8006ADC4 3C0C8012 */  lui   $t4, %hi(D_80121178+4) # $t4, 0x8012
/* 06B9C8 8006ADC8 0082082A */  slt   $at, $a0, $v0
/* 06B9CC 8006ADCC 10200014 */  beqz  $at, .L8006AE20
/* 06B9D0 8006ADD0 00046880 */   sll   $t5, $a0, 2
/* 06B9D4 8006ADD4 8D8C117C */  lw    $t4, %lo(D_80121178+4)($t4)
/* 06B9D8 8006ADD8 01A46823 */  subu  $t5, $t5, $a0
/* 06B9DC 8006ADDC 000D6840 */  sll   $t5, $t5, 1
/* 06B9E0 8006ADE0 018D1821 */  addu  $v1, $t4, $t5
.L8006ADE4:
/* 06B9E4 8006ADE4 806E0001 */  lb    $t6, 1($v1)
/* 06B9E8 8006ADE8 00000000 */  nop   
/* 06B9EC 8006ADEC 31CF0040 */  andi  $t7, $t6, 0x40
/* 06B9F0 8006ADF0 11E00007 */  beqz  $t7, .L8006AE10
/* 06B9F4 8006ADF4 00000000 */   nop   
/* 06B9F8 8006ADF8 80780000 */  lb    $t8, ($v1)
/* 06B9FC 8006ADFC 00000000 */  nop   
/* 06BA00 8006AE00 14D80003 */  bne   $a2, $t8, .L8006AE10
/* 06BA04 8006AE04 00000000 */   nop   
/* 06BA08 8006AE08 03E00008 */  jr    $ra
/* 06BA0C 8006AE0C 00801025 */   move  $v0, $a0

.L8006AE10:
/* 06BA10 8006AE10 24840001 */  addiu $a0, $a0, 1
/* 06BA14 8006AE14 0082082A */  slt   $at, $a0, $v0
/* 06BA18 8006AE18 1420FFF2 */  bnez  $at, .L8006ADE4
/* 06BA1C 8006AE1C 24630006 */   addiu $v1, $v1, 6
.L8006AE20:
/* 06BA20 8006AE20 2402FFFF */  li    $v0, -1
.L8006AE24:
/* 06BA24 8006AE24 03E00008 */  jr    $ra
/* 06BA28 8006AE28 00000000 */   nop   

/* 06BA2C 8006AE2C 3C028012 */  lui   $v0, %hi(D_80121170) # $v0, 0x8012
/* 06BA30 8006AE30 8C421170 */  lw    $v0, %lo(D_80121170)($v0)
/* 06BA34 8006AE34 AFA50004 */  sw    $a1, 4($sp)
/* 06BA38 8006AE38 00057600 */  sll   $t6, $a1, 0x18
/* 06BA3C 8006AE3C AFA60008 */  sw    $a2, 8($sp)
/* 06BA40 8006AE40 0006C600 */  sll   $t8, $a2, 0x18
/* 06BA44 8006AE44 0082082A */  slt   $at, $a0, $v0
/* 06BA48 8006AE48 00183603 */  sra   $a2, $t8, 0x18
/* 06BA4C 8006AE4C 14200002 */  bnez  $at, .L8006AE58
/* 06BA50 8006AE50 000E2E03 */   sra   $a1, $t6, 0x18
/* 06BA54 8006AE54 00402025 */  move  $a0, $v0
.L8006AE58:
/* 06BA58 8006AE58 24010040 */  li    $at, 64
/* 06BA5C 8006AE5C 10A10040 */  beq   $a1, $at, .L8006AF60
/* 06BA60 8006AE60 2484FFFF */   addiu $a0, $a0, -1
/* 06BA64 8006AE64 2402FFFF */  li    $v0, -1
/* 06BA68 8006AE68 14C20013 */  bne   $a2, $v0, .L8006AEB8
/* 06BA6C 8006AE6C 00000000 */   nop   
/* 06BA70 8006AE70 04800066 */  bltz  $a0, .L8006B00C
/* 06BA74 8006AE74 3C088012 */   lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06BA78 8006AE78 00044880 */  sll   $t1, $a0, 2
/* 06BA7C 8006AE7C 8D08117C */  lw    $t0, %lo(D_80121178+4)($t0)
/* 06BA80 8006AE80 01244823 */  subu  $t1, $t1, $a0
/* 06BA84 8006AE84 00094840 */  sll   $t1, $t1, 1
/* 06BA88 8006AE88 01091021 */  addu  $v0, $t0, $t1
.L8006AE8C:
/* 06BA8C 8006AE8C 804A0001 */  lb    $t2, 1($v0)
/* 06BA90 8006AE90 00000000 */  nop   
/* 06BA94 8006AE94 14AA0003 */  bne   $a1, $t2, .L8006AEA4
/* 06BA98 8006AE98 00000000 */   nop   
/* 06BA9C 8006AE9C 03E00008 */  jr    $ra
/* 06BAA0 8006AEA0 00801025 */   move  $v0, $a0

.L8006AEA4:
/* 06BAA4 8006AEA4 2484FFFF */  addiu $a0, $a0, -1
/* 06BAA8 8006AEA8 0481FFF8 */  bgez  $a0, .L8006AE8C
/* 06BAAC 8006AEAC 2442FFFA */   addiu $v0, $v0, -6
/* 06BAB0 8006AEB0 10000057 */  b     .L8006B010
/* 06BAB4 8006AEB4 2402FFFF */   li    $v0, -1
.L8006AEB8:
/* 06BAB8 8006AEB8 14A20013 */  bne   $a1, $v0, .L8006AF08
/* 06BABC 8006AEBC 00000000 */   nop   
/* 06BAC0 8006AEC0 04800052 */  bltz  $a0, .L8006B00C
/* 06BAC4 8006AEC4 3C0B8012 */   lui   $t3, %hi(D_80121178+4) # $t3, 0x8012
/* 06BAC8 8006AEC8 00046080 */  sll   $t4, $a0, 2
/* 06BACC 8006AECC 8D6B117C */  lw    $t3, %lo(D_80121178+4)($t3)
/* 06BAD0 8006AED0 01846023 */  subu  $t4, $t4, $a0
/* 06BAD4 8006AED4 000C6040 */  sll   $t4, $t4, 1
/* 06BAD8 8006AED8 016C1021 */  addu  $v0, $t3, $t4
.L8006AEDC:
/* 06BADC 8006AEDC 804D0000 */  lb    $t5, ($v0)
/* 06BAE0 8006AEE0 00000000 */  nop   
/* 06BAE4 8006AEE4 14CD0003 */  bne   $a2, $t5, .L8006AEF4
/* 06BAE8 8006AEE8 00000000 */   nop   
/* 06BAEC 8006AEEC 03E00008 */  jr    $ra
/* 06BAF0 8006AEF0 00801025 */   move  $v0, $a0

.L8006AEF4:
/* 06BAF4 8006AEF4 2484FFFF */  addiu $a0, $a0, -1
/* 06BAF8 8006AEF8 0481FFF8 */  bgez  $a0, .L8006AEDC
/* 06BAFC 8006AEFC 2442FFFA */   addiu $v0, $v0, -6
/* 06BB00 8006AF00 10000043 */  b     .L8006B010
/* 06BB04 8006AF04 2402FFFF */   li    $v0, -1
.L8006AF08:
/* 06BB08 8006AF08 04800040 */  bltz  $a0, .L8006B00C
/* 06BB0C 8006AF0C 3C0E8012 */   lui   $t6, %hi(D_80121178+4) # $t6, 0x8012
/* 06BB10 8006AF10 00047880 */  sll   $t7, $a0, 2
/* 06BB14 8006AF14 8DCE117C */  lw    $t6, %lo(D_80121178+4)($t6)
/* 06BB18 8006AF18 01E47823 */  subu  $t7, $t7, $a0
/* 06BB1C 8006AF1C 000F7840 */  sll   $t7, $t7, 1
/* 06BB20 8006AF20 01CF1021 */  addu  $v0, $t6, $t7
.L8006AF24:
/* 06BB24 8006AF24 80580001 */  lb    $t8, 1($v0)
/* 06BB28 8006AF28 00000000 */  nop   
/* 06BB2C 8006AF2C 14B80007 */  bne   $a1, $t8, .L8006AF4C
/* 06BB30 8006AF30 00000000 */   nop   
/* 06BB34 8006AF34 80590000 */  lb    $t9, ($v0)
/* 06BB38 8006AF38 00000000 */  nop   
/* 06BB3C 8006AF3C 14D90003 */  bne   $a2, $t9, .L8006AF4C
/* 06BB40 8006AF40 00000000 */   nop   
/* 06BB44 8006AF44 03E00008 */  jr    $ra
/* 06BB48 8006AF48 00801025 */   move  $v0, $a0

.L8006AF4C:
/* 06BB4C 8006AF4C 2484FFFF */  addiu $a0, $a0, -1
/* 06BB50 8006AF50 0481FFF4 */  bgez  $a0, .L8006AF24
/* 06BB54 8006AF54 2442FFFA */   addiu $v0, $v0, -6
/* 06BB58 8006AF58 1000002D */  b     .L8006B010
/* 06BB5C 8006AF5C 2402FFFF */   li    $v0, -1
.L8006AF60:
/* 06BB60 8006AF60 2402FFFF */  li    $v0, -1
/* 06BB64 8006AF64 14C20014 */  bne   $a2, $v0, .L8006AFB8
/* 06BB68 8006AF68 00000000 */   nop   
/* 06BB6C 8006AF6C 04800027 */  bltz  $a0, .L8006B00C
/* 06BB70 8006AF70 3C088012 */   lui   $t0, %hi(D_80121178+4) # $t0, 0x8012
/* 06BB74 8006AF74 00044880 */  sll   $t1, $a0, 2
/* 06BB78 8006AF78 8D08117C */  lw    $t0, %lo(D_80121178+4)($t0)
/* 06BB7C 8006AF7C 01244823 */  subu  $t1, $t1, $a0
/* 06BB80 8006AF80 00094840 */  sll   $t1, $t1, 1
/* 06BB84 8006AF84 01091021 */  addu  $v0, $t0, $t1
.L8006AF88:
/* 06BB88 8006AF88 804A0001 */  lb    $t2, 1($v0)
/* 06BB8C 8006AF8C 00000000 */  nop   
/* 06BB90 8006AF90 314B0040 */  andi  $t3, $t2, 0x40
/* 06BB94 8006AF94 11600003 */  beqz  $t3, .L8006AFA4
/* 06BB98 8006AF98 00000000 */   nop   
/* 06BB9C 8006AF9C 03E00008 */  jr    $ra
/* 06BBA0 8006AFA0 00801025 */   move  $v0, $a0

.L8006AFA4:
/* 06BBA4 8006AFA4 2484FFFF */  addiu $a0, $a0, -1
/* 06BBA8 8006AFA8 0481FFF7 */  bgez  $a0, .L8006AF88
/* 06BBAC 8006AFAC 2442FFFA */   addiu $v0, $v0, -6
/* 06BBB0 8006AFB0 10000017 */  b     .L8006B010
/* 06BBB4 8006AFB4 2402FFFF */   li    $v0, -1
.L8006AFB8:
/* 06BBB8 8006AFB8 04800014 */  bltz  $a0, .L8006B00C
/* 06BBBC 8006AFBC 3C0C8012 */   lui   $t4, %hi(D_80121178+4) # $t4, 0x8012
/* 06BBC0 8006AFC0 00046880 */  sll   $t5, $a0, 2
/* 06BBC4 8006AFC4 8D8C117C */  lw    $t4, %lo(D_80121178+4)($t4)
/* 06BBC8 8006AFC8 01A46823 */  subu  $t5, $t5, $a0
/* 06BBCC 8006AFCC 000D6840 */  sll   $t5, $t5, 1
/* 06BBD0 8006AFD0 018D1021 */  addu  $v0, $t4, $t5
.L8006AFD4:
/* 06BBD4 8006AFD4 804E0001 */  lb    $t6, 1($v0)
/* 06BBD8 8006AFD8 00000000 */  nop   
/* 06BBDC 8006AFDC 31CF0040 */  andi  $t7, $t6, 0x40
/* 06BBE0 8006AFE0 11E00007 */  beqz  $t7, .L8006B000
/* 06BBE4 8006AFE4 00000000 */   nop   
/* 06BBE8 8006AFE8 80580000 */  lb    $t8, ($v0)
/* 06BBEC 8006AFEC 00000000 */  nop   
/* 06BBF0 8006AFF0 14D80003 */  bne   $a2, $t8, .L8006B000
/* 06BBF4 8006AFF4 00000000 */   nop   
/* 06BBF8 8006AFF8 03E00008 */  jr    $ra
/* 06BBFC 8006AFFC 00801025 */   move  $v0, $a0

.L8006B000:
/* 06BC00 8006B000 2484FFFF */  addiu $a0, $a0, -1
/* 06BC04 8006B004 0481FFF3 */  bgez  $a0, .L8006AFD4
/* 06BC08 8006B008 2442FFFA */   addiu $v0, $v0, -6
.L8006B00C:
/* 06BC0C 8006B00C 2402FFFF */  li    $v0, -1
.L8006B010:
/* 06BC10 8006B010 03E00008 */  jr    $ra
/* 06BC14 8006B014 00000000 */   nop   

/* 06BC18 8006B018 00047600 */  sll   $t6, $a0, 0x18
/* 06BC1C 8006B01C 000E7E03 */  sra   $t7, $t6, 0x18
/* 06BC20 8006B020 05E00009 */  bltz  $t7, .L8006B048
/* 06BC24 8006B024 AFA40000 */   sw    $a0, ($sp)
/* 06BC28 8006B028 29E10010 */  slti  $at, $t7, 0x10
/* 06BC2C 8006B02C 10200006 */  beqz  $at, .L8006B048
/* 06BC30 8006B030 000FC080 */   sll   $t8, $t7, 2
/* 06BC34 8006B034 3C028012 */  lui   $v0, %hi(D_80121180) # $v0, 0x8012
/* 06BC38 8006B038 00581021 */  addu  $v0, $v0, $t8
/* 06BC3C 8006B03C 8C421180 */  lw    $v0, %lo(D_80121180)($v0)
/* 06BC40 8006B040 03E00008 */  jr    $ra
/* 06BC44 8006B044 00000000 */   nop   

.L8006B048:
/* 06BC48 8006B048 00001025 */  move  $v0, $zero
/* 06BC4C 8006B04C 03E00008 */  jr    $ra
/* 06BC50 8006B050 00000000 */   nop   

/* 06BC54 8006B054 3C058012 */  lui   $a1, %hi(D_80121170) # $a1, 0x8012
/* 06BC58 8006B058 8CA51170 */  lw    $a1, %lo(D_80121170)($a1)
/* 06BC5C 8006B05C AFA40000 */  sw    $a0, ($sp)
/* 06BC60 8006B060 00047600 */  sll   $t6, $a0, 0x18
/* 06BC64 8006B064 000E2603 */  sra   $a0, $t6, 0x18
/* 06BC68 8006B068 18A0000E */  blez  $a1, .L8006B0A4
/* 06BC6C 8006B06C 00001825 */   move  $v1, $zero
/* 06BC70 8006B070 3C068012 */  lui   $a2, %hi(D_80121178+4) # $a2, 0x8012
/* 06BC74 8006B074 00053880 */  sll   $a3, $a1, 2
/* 06BC78 8006B078 00E53823 */  subu  $a3, $a3, $a1
/* 06BC7C 8006B07C 8CC6117C */  lw    $a2, %lo(D_80121178+4)($a2)
/* 06BC80 8006B080 00073840 */  sll   $a3, $a3, 1
/* 06BC84 8006B084 00001025 */  move  $v0, $zero
.L8006B088:
/* 06BC88 8006B088 80D80000 */  lb    $t8, ($a2)
/* 06BC8C 8006B08C 24420006 */  addiu $v0, $v0, 6
/* 06BC90 8006B090 14980002 */  bne   $a0, $t8, .L8006B09C
/* 06BC94 8006B094 0047082A */   slt   $at, $v0, $a3
/* 06BC98 8006B098 24630001 */  addiu $v1, $v1, 1
.L8006B09C:
/* 06BC9C 8006B09C 1420FFFA */  bnez  $at, .L8006B088
/* 06BCA0 8006B0A0 24C60006 */   addiu $a2, $a2, 6
.L8006B0A4:
/* 06BCA4 8006B0A4 03E00008 */  jr    $ra
/* 06BCA8 8006B0A8 00601025 */   move  $v0, $v1

