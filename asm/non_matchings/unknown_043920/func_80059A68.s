glabel func_80059A68
/* 05A668 80059A68 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 05A66C 80059A6C AFA40028 */  sw    $a0, 0x28($sp)
/* 05A670 80059A70 AFA5002C */  sw    $a1, 0x2c($sp)
/* 05A674 80059A74 00A02025 */  move  $a0, $a1
/* 05A678 80059A78 AFBF001C */  sw    $ra, 0x1c($sp)
/* 05A67C 80059A7C 3C05FF00 */  lui   $a1, (0xFF0000FF >> 16) # lui $a1, 0xff00
/* 05A680 80059A80 AFB00018 */  sw    $s0, 0x18($sp)
/* 05A684 80059A84 AFA60030 */  sw    $a2, 0x30($sp)
/* 05A688 80059A88 0C01C327 */  jal   allocate_from_main_pool_safe
/* 05A68C 80059A8C 34A500FF */   ori   $a1, (0xFF0000FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 05A690 80059A90 10400029 */  beqz  $v0, .L80059B38
/* 05A694 80059A94 00408025 */   move  $s0, $v0
/* 05A698 80059A98 8FA60028 */  lw    $a2, 0x28($sp)
/* 05A69C 80059A9C 8FA7002C */  lw    $a3, 0x2c($sp)
/* 05A6A0 80059AA0 24040031 */  li    $a0, 49
/* 05A6A4 80059AA4 0C01DB9A */  jal   load_asset_to_address
/* 05A6A8 80059AA8 00402825 */   move  $a1, $v0
/* 05A6AC 80059AAC 3C038012 */  lui   $v1, %hi(D_8011D590) # $v1, 0x8012
/* 05A6B0 80059AB0 2463D590 */  addiu $v1, %lo(D_8011D590) # addiu $v1, $v1, -0x2a70
/* 05A6B4 80059AB4 8C640008 */  lw    $a0, 8($v1)
/* 05A6B8 80059AB8 00000000 */  nop   
/* 05A6BC 80059ABC 10800004 */  beqz  $a0, .L80059AD0
/* 05A6C0 80059AC0 8FA6002C */   lw    $a2, 0x2c($sp)
/* 05A6C4 80059AC4 0C01C450 */  jal   func_80071140
/* 05A6C8 80059AC8 00000000 */   nop   
/* 05A6CC 80059ACC 8FA6002C */  lw    $a2, 0x2c($sp)
.L80059AD0:
/* 05A6D0 80059AD0 2405FFFF */  li    $a1, -1
/* 05A6D4 80059AD4 24C6FFF8 */  addiu $a2, $a2, -8
/* 05A6D8 80059AD8 00C02025 */  move  $a0, $a2
/* 05A6DC 80059ADC 0C01C327 */  jal   allocate_from_main_pool_safe
/* 05A6E0 80059AE0 AFA60020 */   sw    $a2, 0x20($sp)
/* 05A6E4 80059AE4 3C038012 */  lui   $v1, %hi(D_8011D590) # $v1, 0x8012
/* 05A6E8 80059AE8 2463D590 */  addiu $v1, %lo(D_8011D590) # addiu $v1, $v1, -0x2a70
/* 05A6EC 80059AEC 8FA60020 */  lw    $a2, 0x20($sp)
/* 05A6F0 80059AF0 1040000F */  beqz  $v0, .L80059B30
/* 05A6F4 80059AF4 AC620008 */   sw    $v0, 8($v1)
/* 05A6F8 80059AF8 860F0004 */  lh    $t7, 4($s0)
/* 05A6FC 80059AFC 8FB80030 */  lw    $t8, 0x30($sp)
/* 05A700 80059B00 3C018012 */  lui   $at, %hi(D_8011D5A4) # $at, 0x8012
/* 05A704 80059B04 A70F0000 */  sh    $t7, ($t8)
/* 05A708 80059B08 86190006 */  lh    $t9, 6($s0)
/* 05A70C 80059B0C 26040008 */  addiu $a0, $s0, 8
/* 05A710 80059B10 A439D5A4 */  sh    $t9, %lo(D_8011D5A4)($at)
/* 05A714 80059B14 8C650008 */  lw    $a1, 8($v1)
/* 05A718 80059B18 0C032768 */  jal   bcopy
/* 05A71C 80059B1C 00000000 */   nop   
/* 05A720 80059B20 0C01C450 */  jal   func_80071140
/* 05A724 80059B24 02002025 */   move  $a0, $s0
/* 05A728 80059B28 10000004 */  b     .L80059B3C
/* 05A72C 80059B2C 00001025 */   move  $v0, $zero
.L80059B30:
/* 05A730 80059B30 0C01C450 */  jal   func_80071140
/* 05A734 80059B34 02002025 */   move  $a0, $s0
.L80059B38:
/* 05A738 80059B38 24020001 */  li    $v0, 1
.L80059B3C:
/* 05A73C 80059B3C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 05A740 80059B40 8FB00018 */  lw    $s0, 0x18($sp)
/* 05A744 80059B44 03E00008 */  jr    $ra
/* 05A748 80059B48 27BD0028 */   addiu $sp, $sp, 0x28

