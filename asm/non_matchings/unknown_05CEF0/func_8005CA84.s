glabel func_8005CA84
/* 05D684 8005CA84 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 05D688 8005CA88 AFBF001C */  sw    $ra, 0x1c($sp)
/* 05D68C 8005CA8C E7AC0020 */  swc1  $f12, 0x20($sp)
/* 05D690 8005CA90 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 05D694 8005CA94 AFA60028 */  sw    $a2, 0x28($sp)
/* 05D698 8005CA98 AFA7002C */  sw    $a3, 0x2c($sp)
/* 05D69C 8005CA9C 00002025 */  move  $a0, $zero
/* 05D6A0 8005CAA0 0C01BE53 */  jal   get_random_number_from_range
/* 05D6A4 8005CAA4 24050001 */   li    $a1, 1
/* 05D6A8 8005CAA8 8FA8002C */  lw    $t0, 0x2c($sp)
/* 05D6AC 8005CAAC 00021E00 */  sll   $v1, $v0, 0x18
/* 05D6B0 8005CAB0 00037603 */  sra   $t6, $v1, 0x18
/* 05D6B4 8005CAB4 15000002 */  bnez  $t0, .L8005CAC0
/* 05D6B8 8005CAB8 01C01825 */   move  $v1, $t6
/* 05D6BC 8005CABC 00001825 */  move  $v1, $zero
.L8005CAC0:
/* 05D6C0 8005CAC0 3C0F8012 */  lui   $t7, %hi(D_8011D5C8) # $t7, 0x8012
/* 05D6C4 8005CAC4 8DEFD5C8 */  lw    $t7, %lo(D_8011D5C8)($t7)
/* 05D6C8 8005CAC8 01034021 */  addu  $t0, $t0, $v1
/* 05D6CC 8005CACC 0008C040 */  sll   $t8, $t0, 1
/* 05D6D0 8005CAD0 01F8C821 */  addu  $t9, $t7, $t8
/* 05D6D4 8005CAD4 97240000 */  lhu   $a0, ($t9)
/* 05D6D8 8005CAD8 8FA50020 */  lw    $a1, 0x20($sp)
/* 05D6DC 8005CADC 8FA60024 */  lw    $a2, 0x24($sp)
/* 05D6E0 8005CAE0 8FA70028 */  lw    $a3, 0x28($sp)
/* 05D6E4 8005CAE4 24090004 */  li    $t1, 4
/* 05D6E8 8005CAE8 AFA90010 */  sw    $t1, 0x10($sp)
/* 05D6EC 8005CAEC 0C002556 */  jal   func_80009558
/* 05D6F0 8005CAF0 AFA00014 */   sw    $zero, 0x14($sp)
/* 05D6F4 8005CAF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 05D6F8 8005CAF8 27BD0020 */  addiu $sp, $sp, 0x20
/* 05D6FC 8005CAFC 03E00008 */  jr    $ra
/* 05D700 8005CB00 00000000 */   nop   

