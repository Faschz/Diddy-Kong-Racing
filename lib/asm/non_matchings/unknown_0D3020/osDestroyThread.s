glabel osDestroyThread
/* 0D7200 800D6600 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0D7204 800D6604 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0D7208 800D6608 AFA40038 */  sw    $a0, 0x38($sp)
/* 0D720C 800D660C AFB20020 */  sw    $s2, 0x20($sp)
/* 0D7210 800D6610 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0D7214 800D6614 0C034958 */  jal   __osDisableInt
/* 0D7218 800D6618 AFB00018 */   sw    $s0, 0x18($sp)
/* 0D721C 800D661C 8FAE0038 */  lw    $t6, 0x38($sp)
/* 0D7220 800D6620 00408025 */  move  $s0, $v0
/* 0D7224 800D6624 15C00005 */  bnez  $t6, .L800D663C
/* 0D7228 800D6628 00000000 */   nop   
/* 0D722C 800D662C 3C0F800E */  lui   $t7, %hi(__osRunningThread) # $t7, 0x800e
/* 0D7230 800D6630 8DEF4890 */  lw    $t7, %lo(__osRunningThread)($t7)
/* 0D7234 800D6634 10000009 */  b     .L800D665C
/* 0D7238 800D6638 AFAF0038 */   sw    $t7, 0x38($sp)
.L800D663C:
/* 0D723C 800D663C 8FB80038 */  lw    $t8, 0x38($sp)
/* 0D7240 800D6640 24010001 */  li    $at, 1
/* 0D7244 800D6644 97190010 */  lhu   $t9, 0x10($t8)
/* 0D7248 800D6648 13210004 */  beq   $t9, $at, .L800D665C
/* 0D724C 800D664C 00000000 */   nop   
/* 0D7250 800D6650 8F040008 */  lw    $a0, 8($t8)
/* 0D7254 800D6654 0C034B1C */  jal   __osDequeueThread
/* 0D7258 800D6658 03002825 */   move  $a1, $t8
.L800D665C:
/* 0D725C 800D665C 3C08800E */  lui   $t0, %hi(__osActiveQueue) # $t0, 0x800e
/* 0D7260 800D6660 8D08488C */  lw    $t0, %lo(__osActiveQueue)($t0)
/* 0D7264 800D6664 8FA90038 */  lw    $t1, 0x38($sp)
/* 0D7268 800D6668 15090005 */  bne   $t0, $t1, .L800D6680
/* 0D726C 800D666C 00000000 */   nop   
/* 0D7270 800D6670 8D0A000C */  lw    $t2, 0xc($t0)
/* 0D7274 800D6674 3C01800E */  lui   $at, %hi(__osActiveQueue) # $at, 0x800e
/* 0D7278 800D6678 10000010 */  b     .L800D66BC
/* 0D727C 800D667C AC2A488C */   sw    $t2, %lo(__osActiveQueue)($at)
.L800D6680:
/* 0D7280 800D6680 3C11800E */  lui   $s1, %hi(__osActiveQueue) # $s1, 0x800e
/* 0D7284 800D6684 8E31488C */  lw    $s1, %lo(__osActiveQueue)($s1)
/* 0D7288 800D6688 8E32000C */  lw    $s2, 0xc($s1)
/* 0D728C 800D668C 1240000B */  beqz  $s2, .L800D66BC
/* 0D7290 800D6690 00000000 */   nop   
.L800D6694:
/* 0D7294 800D6694 8FAB0038 */  lw    $t3, 0x38($sp)
/* 0D7298 800D6698 164B0004 */  bne   $s2, $t3, .L800D66AC
/* 0D729C 800D669C 00000000 */   nop   
/* 0D72A0 800D66A0 8D6C000C */  lw    $t4, 0xc($t3)
/* 0D72A4 800D66A4 10000005 */  b     .L800D66BC
/* 0D72A8 800D66A8 AE2C000C */   sw    $t4, 0xc($s1)
.L800D66AC:
/* 0D72AC 800D66AC 02408825 */  move  $s1, $s2
/* 0D72B0 800D66B0 8E32000C */  lw    $s2, 0xc($s1)
/* 0D72B4 800D66B4 1640FFF7 */  bnez  $s2, .L800D6694
/* 0D72B8 800D66B8 00000000 */   nop   
.L800D66BC:
/* 0D72BC 800D66BC 3C0E800E */  lui   $t6, %hi(__osRunningThread) # $t6, 0x800e
/* 0D72C0 800D66C0 8DCE4890 */  lw    $t6, %lo(__osRunningThread)($t6)
/* 0D72C4 800D66C4 8FAD0038 */  lw    $t5, 0x38($sp)
/* 0D72C8 800D66C8 15AE0003 */  bne   $t5, $t6, .L800D66D8
/* 0D72CC 800D66CC 00000000 */   nop   
/* 0D72D0 800D66D0 0C034D09 */  jal   __osDispatchThread
/* 0D72D4 800D66D4 00000000 */   nop   
.L800D66D8:
/* 0D72D8 800D66D8 0C034960 */  jal   __osRestoreInt
/* 0D72DC 800D66DC 02002025 */   move  $a0, $s0
/* 0D72E0 800D66E0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0D72E4 800D66E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D72E8 800D66E8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0D72EC 800D66EC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0D72F0 800D66F0 03E00008 */  jr    $ra
/* 0D72F4 800D66F4 27BD0038 */   addiu $sp, $sp, 0x38

/* 0D72F8 800D66F8 00000000 */  nop   
/* 0D72FC 800D66FC 00000000 */  nop   
