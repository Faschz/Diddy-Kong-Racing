glabel func_8009D118
/* 09DD18 8009D118 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09DD1C 8009D11C 14800018 */  bnez  $a0, .L8009D180
/* 09DD20 8009D120 AFBF001C */   sw    $ra, 0x1c($sp)
/* 09DD24 8009D124 240E005A */  li    $t6, 90
/* 09DD28 8009D128 240F00FF */  li    $t7, 255
/* 09DD2C 8009D12C AFAF0014 */  sw    $t7, 0x14($sp)
/* 09DD30 8009D130 AFAE0010 */  sw    $t6, 0x10($sp)
/* 09DD34 8009D134 24040001 */  li    $a0, 1
/* 09DD38 8009D138 00002825 */  move  $a1, $zero
/* 09DD3C 8009D13C 00003025 */  move  $a2, $zero
/* 09DD40 8009D140 0C031400 */  jal   func_800C5000
/* 09DD44 8009D144 2407007F */   li    $a3, 127
/* 09DD48 8009D148 3C18800E */  lui   $t8, %hi(D_800DF4EC) # $t8, 0x800e
/* 09DD4C 8009D14C 8318F4EC */  lb    $t8, %lo(D_800DF4EC)($t8)
/* 09DD50 8009D150 24040001 */  li    $a0, 1
/* 09DD54 8009D154 13000013 */  beqz  $t8, .L8009D1A4
/* 09DD58 8009D158 00002825 */   move  $a1, $zero
/* 09DD5C 8009D15C 2419005A */  li    $t9, 90
/* 09DD60 8009D160 24080078 */  li    $t0, 120
/* 09DD64 8009D164 AFA80014 */  sw    $t0, 0x14($sp)
/* 09DD68 8009D168 AFB90010 */  sw    $t9, 0x10($sp)
/* 09DD6C 8009D16C 00003025 */  move  $a2, $zero
/* 09DD70 8009D170 0C031400 */  jal   func_800C5000
/* 09DD74 8009D174 2407007F */   li    $a3, 127
/* 09DD78 8009D178 1000000B */  b     .L8009D1A8
/* 09DD7C 8009D17C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8009D180:
/* 09DD80 8009D180 2409005A */  li    $t1, 90
/* 09DD84 8009D184 240A00FF */  li    $t2, 255
/* 09DD88 8009D188 AFAA0014 */  sw    $t2, 0x14($sp)
/* 09DD8C 8009D18C AFA90010 */  sw    $t1, 0x10($sp)
/* 09DD90 8009D190 24040001 */  li    $a0, 1
/* 09DD94 8009D194 240500CF */  li    $a1, 207
/* 09DD98 8009D198 240600CF */  li    $a2, 207
/* 09DD9C 8009D19C 0C031400 */  jal   func_800C5000
/* 09DDA0 8009D1A0 240700CF */   li    $a3, 207
.L8009D1A4:
/* 09DDA4 8009D1A4 8FBF001C */  lw    $ra, 0x1c($sp)
.L8009D1A8:
/* 09DDA8 8009D1A8 3C01800E */  lui   $at, %hi(D_800DF4EC) # $at, 0x800e
/* 09DDAC 8009D1AC A020F4EC */  sb    $zero, %lo(D_800DF4EC)($at)
/* 09DDB0 8009D1B0 03E00008 */  jr    $ra
/* 09DDB4 8009D1B4 27BD0020 */   addiu $sp, $sp, 0x20
