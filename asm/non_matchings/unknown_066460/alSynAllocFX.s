glabel alSynAllocFX
/* 066460 80065860 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 066464 80065864 AFA50024 */  sw    $a1, 0x24($sp)
/* 066468 80065868 AFA60028 */  sw    $a2, 0x28($sp)
/* 06646C 8006586C 87A60026 */  lh    $a2, 0x26($sp)
/* 066470 80065870 AFB10018 */  sw    $s1, 0x18($sp)
/* 066474 80065874 00068880 */  sll   $s1, $a2, 2
/* 066478 80065878 02268821 */  addu  $s1, $s1, $a2
/* 06647C 8006587C AFBF001C */  sw    $ra, 0x1c($sp)
/* 066480 80065880 AFB00014 */  sw    $s0, 0x14($sp)
/* 066484 80065884 00118880 */  sll   $s1, $s1, 2
/* 066488 80065888 8C8E0034 */  lw    $t6, 0x34($a0)
/* 06648C 8006588C 02268823 */  subu  $s1, $s1, $a2
/* 066490 80065890 00808025 */  move  $s0, $a0
/* 066494 80065894 00118880 */  sll   $s1, $s1, 2
/* 066498 80065898 8FA50028 */  lw    $a1, 0x28($sp)
/* 06649C 8006589C 01D12021 */  addu  $a0, $t6, $s1
/* 0664A0 800658A0 0C019282 */  jal   alFxNew
/* 0664A4 800658A4 24840020 */   addiu $a0, $a0, 0x20
/* 0664A8 800658A8 8E0F0034 */  lw    $t7, 0x34($s0)
/* 0664AC 800658AC 24050001 */  li    $a1, 1
/* 0664B0 800658B0 01F13021 */  addu  $a2, $t7, $s1
/* 0664B4 800658B4 0C018FE5 */  jal   alFxParam
/* 0664B8 800658B8 24C40020 */   addiu $a0, $a2, 0x20
/* 0664BC 800658BC 8E180034 */  lw    $t8, 0x34($s0)
/* 0664C0 800658C0 8E040030 */  lw    $a0, 0x30($s0)
/* 0664C4 800658C4 03113021 */  addu  $a2, $t8, $s1
/* 0664C8 800658C8 24C60020 */  addiu $a2, $a2, 0x20
/* 0664CC 800658CC 0C0330E4 */  jal   alMainBusParam
/* 0664D0 800658D0 24050002 */   li    $a1, 2
/* 0664D4 800658D4 8E190034 */  lw    $t9, 0x34($s0)
/* 0664D8 800658D8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0664DC 800658DC 03311021 */  addu  $v0, $t9, $s1
/* 0664E0 800658E0 8FB10018 */  lw    $s1, 0x18($sp)
/* 0664E4 800658E4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0664E8 800658E8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0664EC 800658EC 03E00008 */  jr    $ra
/* 0664F0 800658F0 24420020 */   addiu $v0, $v0, 0x20

/* 0664F4 800658F4 00000000 */  nop   
/* 0664F8 800658F8 00000000 */  nop   
/* 0664FC 800658FC 00000000 */  nop   
