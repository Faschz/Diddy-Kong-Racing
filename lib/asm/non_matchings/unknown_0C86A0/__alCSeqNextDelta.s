glabel __alCSeqNextDelta
/* 0C8FEC 800C83EC 8C8E0004 */  lw    $t6, 4($a0)
/* 0C8FF0 800C83F0 00A04825 */  move  $t1, $a1
/* 0C8FF4 800C83F4 2403FFFF */  li    $v1, -1
/* 0C8FF8 800C83F8 15C00003 */  bnez  $t6, .L800C8408
/* 0C8FFC 800C83FC 8C820010 */   lw    $v0, 0x10($a0)
/* 0C9000 800C8400 03E00008 */  jr    $ra
/* 0C9004 800C8404 00001025 */   move  $v0, $zero

.L800C8408:
/* 0C9008 800C8408 00003025 */  move  $a2, $zero
/* 0C900C 800C840C 240A0010 */  li    $t2, 16
/* 0C9010 800C8410 8C850004 */  lw    $a1, 4($a0)
.L800C8414:
/* 0C9014 800C8414 24CE0001 */  addiu $t6, $a2, 1
/* 0C9018 800C8418 00C57806 */  srlv  $t7, $a1, $a2
/* 0C901C 800C841C 31F80001 */  andi  $t8, $t7, 1
/* 0C9020 800C8420 53000010 */  beql  $t8, $zero, .L800C8464
/* 0C9024 800C8424 01C57806 */   srlv  $t7, $a1, $t6
/* 0C9028 800C8428 8C8B0014 */  lw    $t3, 0x14($a0)
/* 0C902C 800C842C 0006C880 */  sll   $t9, $a2, 2
/* 0C9030 800C8430 00993821 */  addu  $a3, $a0, $t9
/* 0C9034 800C8434 51600006 */  beql  $t3, $zero, .L800C8450
/* 0C9038 800C8438 8CE800B8 */   lw    $t0, 0xb8($a3)
/* 0C903C 800C843C 8CEC00B8 */  lw    $t4, 0xb8($a3)
/* 0C9040 800C8440 01826823 */  subu  $t5, $t4, $v0
/* 0C9044 800C8444 ACED00B8 */  sw    $t5, 0xb8($a3)
/* 0C9048 800C8448 8C850004 */  lw    $a1, 4($a0)
/* 0C904C 800C844C 8CE800B8 */  lw    $t0, 0xb8($a3)
.L800C8450:
/* 0C9050 800C8450 0103082B */  sltu  $at, $t0, $v1
/* 0C9054 800C8454 50200003 */  beql  $at, $zero, .L800C8464
/* 0C9058 800C8458 01C57806 */   srlv  $t7, $a1, $t6
/* 0C905C 800C845C 01001825 */  move  $v1, $t0
/* 0C9060 800C8460 01C57806 */  srlv  $t7, $a1, $t6
.L800C8464:
/* 0C9064 800C8464 31F80001 */  andi  $t8, $t7, 1
/* 0C9068 800C8468 1300000F */  beqz  $t8, .L800C84A8
/* 0C906C 800C846C 24CE0002 */   addiu $t6, $a2, 2
/* 0C9070 800C8470 8C8B0014 */  lw    $t3, 0x14($a0)
/* 0C9074 800C8474 0006C880 */  sll   $t9, $a2, 2
/* 0C9078 800C8478 00993821 */  addu  $a3, $a0, $t9
/* 0C907C 800C847C 51600006 */  beql  $t3, $zero, .L800C8498
/* 0C9080 800C8480 8CE800BC */   lw    $t0, 0xbc($a3)
/* 0C9084 800C8484 8CEC00BC */  lw    $t4, 0xbc($a3)
/* 0C9088 800C8488 01826823 */  subu  $t5, $t4, $v0
/* 0C908C 800C848C ACED00BC */  sw    $t5, 0xbc($a3)
/* 0C9090 800C8490 8C850004 */  lw    $a1, 4($a0)
/* 0C9094 800C8494 8CE800BC */  lw    $t0, 0xbc($a3)
.L800C8498:
/* 0C9098 800C8498 0103082B */  sltu  $at, $t0, $v1
/* 0C909C 800C849C 50200003 */  beql  $at, $zero, .L800C84AC
/* 0C90A0 800C84A0 01C57806 */   srlv  $t7, $a1, $t6
/* 0C90A4 800C84A4 01001825 */  move  $v1, $t0
.L800C84A8:
/* 0C90A8 800C84A8 01C57806 */  srlv  $t7, $a1, $t6
.L800C84AC:
/* 0C90AC 800C84AC 31F80001 */  andi  $t8, $t7, 1
/* 0C90B0 800C84B0 1300000F */  beqz  $t8, .L800C84F0
/* 0C90B4 800C84B4 24CE0003 */   addiu $t6, $a2, 3
/* 0C90B8 800C84B8 8C8B0014 */  lw    $t3, 0x14($a0)
/* 0C90BC 800C84BC 0006C880 */  sll   $t9, $a2, 2
/* 0C90C0 800C84C0 00993821 */  addu  $a3, $a0, $t9
/* 0C90C4 800C84C4 51600006 */  beql  $t3, $zero, .L800C84E0
/* 0C90C8 800C84C8 8CE800C0 */   lw    $t0, 0xc0($a3)
/* 0C90CC 800C84CC 8CEC00C0 */  lw    $t4, 0xc0($a3)
/* 0C90D0 800C84D0 01826823 */  subu  $t5, $t4, $v0
/* 0C90D4 800C84D4 ACED00C0 */  sw    $t5, 0xc0($a3)
/* 0C90D8 800C84D8 8C850004 */  lw    $a1, 4($a0)
/* 0C90DC 800C84DC 8CE800C0 */  lw    $t0, 0xc0($a3)
.L800C84E0:
/* 0C90E0 800C84E0 0103082B */  sltu  $at, $t0, $v1
/* 0C90E4 800C84E4 50200003 */  beql  $at, $zero, .L800C84F4
/* 0C90E8 800C84E8 01C57806 */   srlv  $t7, $a1, $t6
/* 0C90EC 800C84EC 01001825 */  move  $v1, $t0
.L800C84F0:
/* 0C90F0 800C84F0 01C57806 */  srlv  $t7, $a1, $t6
.L800C84F4:
/* 0C90F4 800C84F4 31F80001 */  andi  $t8, $t7, 1
/* 0C90F8 800C84F8 5300000F */  beql  $t8, $zero, .L800C8538
/* 0C90FC 800C84FC 24C60004 */   addiu $a2, $a2, 4
/* 0C9100 800C8500 8C8B0014 */  lw    $t3, 0x14($a0)
/* 0C9104 800C8504 0006C880 */  sll   $t9, $a2, 2
/* 0C9108 800C8508 00993821 */  addu  $a3, $a0, $t9
/* 0C910C 800C850C 51600005 */  beql  $t3, $zero, .L800C8524
/* 0C9110 800C8510 8CE500C4 */   lw    $a1, 0xc4($a3)
/* 0C9114 800C8514 8CEC00C4 */  lw    $t4, 0xc4($a3)
/* 0C9118 800C8518 01826823 */  subu  $t5, $t4, $v0
/* 0C911C 800C851C ACED00C4 */  sw    $t5, 0xc4($a3)
/* 0C9120 800C8520 8CE500C4 */  lw    $a1, 0xc4($a3)
.L800C8524:
/* 0C9124 800C8524 00A3082B */  sltu  $at, $a1, $v1
/* 0C9128 800C8528 50200003 */  beql  $at, $zero, .L800C8538
/* 0C912C 800C852C 24C60004 */   addiu $a2, $a2, 4
/* 0C9130 800C8530 00A01825 */  move  $v1, $a1
/* 0C9134 800C8534 24C60004 */  addiu $a2, $a2, 4
.L800C8538:
/* 0C9138 800C8538 54CAFFB6 */  bnel  $a2, $t2, .L800C8414
/* 0C913C 800C853C 8C850004 */   lw    $a1, 4($a0)
/* 0C9140 800C8540 AC800014 */  sw    $zero, 0x14($a0)
/* 0C9144 800C8544 AD230000 */  sw    $v1, ($t1)
/* 0C9148 800C8548 24020001 */  li    $v0, 1
/* 0C914C 800C854C 03E00008 */  jr    $ra
/* 0C9150 800C8550 00000000 */   nop   

/* 0C9154 800C8554 00000000 */  nop   
/* 0C9158 800C8558 00000000 */  nop   
/* 0C915C 800C855C 00000000 */  nop   

