glabel func_80059790
/* 05A390 80059790 3C0E8012 */  lui   $t6, %hi(D_80126170) # $t6, 0x8012
/* 05A394 80059794 8DCE6170 */  lw    $t6, %lo(D_80126170)($t6)
/* 05A398 80059798 24010032 */  li    $at, 50
/* 05A39C 8005979C 15C10012 */  bne   $t6, $at, .L800597E8
/* 05A3A0 800597A0 24080E10 */   li    $t0, 3600
/* 05A3A4 800597A4 44842000 */  mtc1  $a0, $f4
/* 05A3A8 800597A8 3C01800E */  lui   $at, %hi(D_800E692C) # $at, 0x800e
/* 05A3AC 800597AC 468021A0 */  cvt.s.w $f6, $f4
/* 05A3B0 800597B0 C42B6928 */  lwc1  $f11, %lo(D_800E6928)($at)
/* 05A3B4 800597B4 C42A692C */  lwc1  $f10, %lo(D_800E692C)($at)
/* 05A3B8 800597B8 46003221 */  cvt.d.s $f8, $f6
/* 05A3BC 800597BC 462A4402 */  mul.d $f16, $f8, $f10
/* 05A3C0 800597C0 444FF800 */  cfc1  $t7, $31
/* 05A3C4 800597C4 00000000 */  nop   
/* 05A3C8 800597C8 35E10003 */  ori   $at, $t7, 3
/* 05A3CC 800597CC 38210002 */  xori  $at, $at, 2
/* 05A3D0 800597D0 44C1F800 */  ctc1  $at, $31
/* 05A3D4 800597D4 00000000 */  nop   
/* 05A3D8 800597D8 462084A4 */  cvt.w.d $f18, $f16
/* 05A3DC 800597DC 44CFF800 */  ctc1  $t7, $31
/* 05A3E0 800597E0 44049000 */  mfc1  $a0, $f18
/* 05A3E4 800597E4 00000000 */  nop   
.L800597E8:
/* 05A3E8 800597E8 0088001A */  div   $zero, $a0, $t0
/* 05A3EC 800597EC 2409003C */  li    $t1, 60
/* 05A3F0 800597F0 15000002 */  bnez  $t0, .L800597FC
/* 05A3F4 800597F4 00000000 */   nop   
/* 05A3F8 800597F8 0007000D */  break 7
.L800597FC:
/* 05A3FC 800597FC 2401FFFF */  li    $at, -1
/* 05A400 80059800 15010004 */  bne   $t0, $at, .L80059814
/* 05A404 80059804 3C018000 */   lui   $at, 0x8000
/* 05A408 80059808 14810002 */  bne   $a0, $at, .L80059814
/* 05A40C 8005980C 00000000 */   nop   
/* 05A410 80059810 0006000D */  break 6
.L80059814:
/* 05A414 80059814 00001012 */  mflo  $v0
/* 05A418 80059818 ACA20000 */  sw    $v0, ($a1)
/* 05A41C 8005981C 00000000 */  nop   
/* 05A420 80059820 00480019 */  multu $v0, $t0
/* 05A424 80059824 0000C012 */  mflo  $t8
/* 05A428 80059828 0098C823 */  subu  $t9, $a0, $t8
/* 05A42C 8005982C 00000000 */  nop   
/* 05A430 80059830 0329001A */  div   $zero, $t9, $t1
/* 05A434 80059834 15200002 */  bnez  $t1, .L80059840
/* 05A438 80059838 00000000 */   nop   
/* 05A43C 8005983C 0007000D */  break 7
.L80059840:
/* 05A440 80059840 2401FFFF */  li    $at, -1
/* 05A444 80059844 15210004 */  bne   $t1, $at, .L80059858
/* 05A448 80059848 3C018000 */   lui   $at, 0x8000
/* 05A44C 8005984C 17210002 */  bne   $t9, $at, .L80059858
/* 05A450 80059850 00000000 */   nop   
/* 05A454 80059854 0006000D */  break 6
.L80059858:
/* 05A458 80059858 00001812 */  mflo  $v1
/* 05A45C 8005985C ACC30000 */  sw    $v1, ($a2)
/* 05A460 80059860 8CAA0000 */  lw    $t2, ($a1)
/* 05A464 80059864 00000000 */  nop   
/* 05A468 80059868 01480019 */  multu $t2, $t0
/* 05A46C 8005986C 00005812 */  mflo  $t3
/* 05A470 80059870 008B6023 */  subu  $t4, $a0, $t3
/* 05A474 80059874 00000000 */  nop   
/* 05A478 80059878 00690019 */  multu $v1, $t1
/* 05A47C 8005987C 00006812 */  mflo  $t5
/* 05A480 80059880 018D7023 */  subu  $t6, $t4, $t5
/* 05A484 80059884 000E7880 */  sll   $t7, $t6, 2
/* 05A488 80059888 01EE7823 */  subu  $t7, $t7, $t6
/* 05A48C 8005988C 000F78C0 */  sll   $t7, $t7, 3
/* 05A490 80059890 01EE7821 */  addu  $t7, $t7, $t6
/* 05A494 80059894 000F7880 */  sll   $t7, $t7, 2
/* 05A498 80059898 01E9001A */  div   $zero, $t7, $t1
/* 05A49C 8005989C 15200002 */  bnez  $t1, .L800598A8
/* 05A4A0 800598A0 00000000 */   nop   
/* 05A4A4 800598A4 0007000D */  break 7
.L800598A8:
/* 05A4A8 800598A8 2401FFFF */  li    $at, -1
/* 05A4AC 800598AC 15210004 */  bne   $t1, $at, .L800598C0
/* 05A4B0 800598B0 3C018000 */   lui   $at, 0x8000
/* 05A4B4 800598B4 15E10002 */  bne   $t7, $at, .L800598C0
/* 05A4B8 800598B8 00000000 */   nop   
/* 05A4BC 800598BC 0006000D */  break 6
.L800598C0:
/* 05A4C0 800598C0 0000C012 */  mflo  $t8
/* 05A4C4 800598C4 ACF80000 */  sw    $t8, ($a3)
/* 05A4C8 800598C8 03E00008 */  jr    $ra
/* 05A4CC 800598CC 00000000 */   nop   
