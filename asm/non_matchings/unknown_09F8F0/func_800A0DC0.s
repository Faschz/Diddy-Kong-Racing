glabel func_800A0DC0
/* 0A19C0 800A0DC0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A19C4 800A0DC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0A19C8 800A0DC8 AFB10018 */  sw    $s1, 0x18($sp)
/* 0A19CC 800A0DCC AFB00014 */  sw    $s0, 0x14($sp)
/* 0A19D0 800A0DD0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0A19D4 800A0DD4 AFA50024 */  sw    $a1, 0x24($sp)
/* 0A19D8 800A0DD8 8CB10064 */  lw    $s1, 0x64($a1)
/* 0A19DC 800A0DDC 00C08025 */  move  $s0, $a2
/* 0A19E0 800A0DE0 0C01A142 */  jal   func_80068508
/* 0A19E4 800A0DE4 24040001 */   li    $a0, 1
/* 0A19E8 800A0DE8 02202025 */  move  $a0, $s1
/* 0A19EC 800A0DEC 0C0283AD */  jal   func_800A0EB4
/* 0A19F0 800A0DF0 02002825 */   move  $a1, $s0
/* 0A19F4 800A0DF4 02202025 */  move  $a0, $s1
/* 0A19F8 800A0DF8 0C029699 */  jal   func_800A5A64
/* 0A19FC 800A0DFC 02002825 */   move  $a1, $s0
/* 0A1A00 800A0E00 8FA40020 */  lw    $a0, 0x20($sp)
/* 0A1A04 800A0E04 0C028F39 */  jal   func_800A3CE4
/* 0A1A08 800A0E08 02002825 */   move  $a1, $s0
/* 0A1A0C 800A0E0C 3C0F8012 */  lui   $t7, %hi(D_80126D60) # $t7, 0x8012
/* 0A1A10 800A0E10 8DEF6D60 */  lw    $t7, %lo(D_80126D60)($t7)
/* 0A1A14 800A0E14 02202025 */  move  $a0, $s1
/* 0A1A18 800A0E18 81F8004C */  lb    $t8, 0x4c($t7)
/* 0A1A1C 800A0E1C 00000000 */  nop   
/* 0A1A20 800A0E20 17000003 */  bnez  $t8, .L800A0E30
/* 0A1A24 800A0E24 00000000 */   nop   
/* 0A1A28 800A0E28 0C0293D4 */  jal   func_800A4F50
/* 0A1A2C 800A0E2C 02002825 */   move  $a1, $s0
.L800A0E30:
/* 0A1A30 800A0E30 02202025 */  move  $a0, $s1
/* 0A1A34 800A0E34 0C029055 */  jal   func_800A4154
/* 0A1A38 800A0E38 02002825 */   move  $a1, $s0
/* 0A1A3C 800A0E3C 02202025 */  move  $a0, $s1
/* 0A1A40 800A0E40 0C029EDA */  jal   func_800A7B68
/* 0A1A44 800A0E44 02002825 */   move  $a1, $s0
/* 0A1A48 800A0E48 02202025 */  move  $a0, $s1
/* 0A1A4C 800A0E4C 0C029311 */  jal   func_800A4C44
/* 0A1A50 800A0E50 02002825 */   move  $a1, $s0
/* 0A1A54 800A0E54 8FA40024 */  lw    $a0, 0x24($sp)
/* 0A1A58 800A0E58 0C028E21 */  jal   func_800A3884
/* 0A1A5C 800A0E5C 02002825 */   move  $a1, $s0
/* 0A1A60 800A0E60 3C198012 */  lui   $t9, %hi(D_80127188) # $t9, 0x8012
/* 0A1A64 800A0E64 93397188 */  lbu   $t9, %lo(D_80127188)($t9)
/* 0A1A68 800A0E68 00000000 */  nop   
/* 0A1A6C 800A0E6C 13200008 */  beqz  $t9, .L800A0E90
/* 0A1A70 800A0E70 8FA40024 */   lw    $a0, 0x24($sp)
/* 0A1A74 800A0E74 822801D8 */  lb    $t0, 0x1d8($s1)
/* 0A1A78 800A0E78 02202025 */  move  $a0, $s1
/* 0A1A7C 800A0E7C 15000003 */  bnez  $t0, .L800A0E8C
/* 0A1A80 800A0E80 00000000 */   nop   
/* 0A1A84 800A0E84 0C0291E8 */  jal   func_800A47A0
/* 0A1A88 800A0E88 02002825 */   move  $a1, $s0
.L800A0E8C:
/* 0A1A8C 800A0E8C 8FA40024 */  lw    $a0, 0x24($sp)
.L800A0E90:
/* 0A1A90 800A0E90 0C029D48 */  jal   func_800A7520
/* 0A1A94 800A0E94 02002825 */   move  $a1, $s0
/* 0A1A98 800A0E98 0C01A142 */  jal   func_80068508
/* 0A1A9C 800A0E9C 00002025 */   move  $a0, $zero
/* 0A1AA0 800A0EA0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0A1AA4 800A0EA4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0A1AA8 800A0EA8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0A1AAC 800A0EAC 03E00008 */  jr    $ra
/* 0A1AB0 800A0EB0 27BD0020 */   addiu $sp, $sp, 0x20
