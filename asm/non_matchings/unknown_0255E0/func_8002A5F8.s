.late_rodata
glabel D_800E5EA8
.double 1000.0

.text
glabel func_8002A5F8
/* 02B1F8 8002A5F8 27BDFF88 */  addiu $sp, $sp, -0x78
/* 02B1FC 8002A5FC AFB30040 */  sw    $s3, 0x40($sp)
/* 02B200 8002A600 AFB10038 */  sw    $s1, 0x38($sp)
/* 02B204 8002A604 3C138012 */  lui   $s3, %hi(D_8011D0F8) # $s3, 0x8012
/* 02B208 8002A608 00808825 */  move  $s1, $a0
/* 02B20C 8002A60C AFBF0044 */  sw    $ra, 0x44($sp)
/* 02B210 8002A610 AFB2003C */  sw    $s2, 0x3c($sp)
/* 02B214 8002A614 AFB00034 */  sw    $s0, 0x34($sp)
/* 02B218 8002A618 E7BB0028 */  swc1  $f27, 0x28($sp)
/* 02B21C 8002A61C E7BA002C */  swc1  $f26, 0x2c($sp)
/* 02B220 8002A620 E7B90020 */  swc1  $f25, 0x20($sp)
/* 02B224 8002A624 E7B80024 */  swc1  $f24, 0x24($sp)
/* 02B228 8002A628 E7B70018 */  swc1  $f23, 0x18($sp)
/* 02B22C 8002A62C E7B6001C */  swc1  $f22, 0x1c($sp)
/* 02B230 8002A630 E7B50010 */  swc1  $f21, 0x10($sp)
/* 02B234 8002A634 E7B40014 */  swc1  $f20, 0x14($sp)
/* 02B238 8002A638 2673D0F8 */  addiu $s3, %lo(D_8011D0F8) # addiu $s3, $s3, -0x2f08
.L8002A63C:
/* 02B23C 8002A63C C6740000 */  lwc1  $f20, ($s3)
/* 02B240 8002A640 C6760004 */  lwc1  $f22, 4($s3)
/* 02B244 8002A644 C6780008 */  lwc1  $f24, 8($s3)
/* 02B248 8002A648 C67A000C */  lwc1  $f26, 0xc($s3)
/* 02B24C 8002A64C 00008025 */  move  $s0, $zero
/* 02B250 8002A650 00009025 */  move  $s2, $zero
/* 02B254 8002A654 320E0001 */  andi  $t6, $s0, 1
.L8002A658:
/* 02B258 8002A658 11C0000C */  beqz  $t6, .L8002A68C
/* 02B25C 8002A65C 00000000 */   nop   
/* 02B260 8002A660 862F0000 */  lh    $t7, ($s1)
/* 02B264 8002A664 00000000 */  nop   
/* 02B268 8002A668 448F2000 */  mtc1  $t7, $f4
/* 02B26C 8002A66C 00000000 */  nop   
/* 02B270 8002A670 468021A0 */  cvt.s.w $f6, $f4
/* 02B274 8002A674 46143302 */  mul.s $f12, $f6, $f20
/* 02B278 8002A678 0C0326D3 */  jal   __f_to_ll
/* 02B27C 8002A67C 00000000 */   nop   
/* 02B280 8002A680 AFA20048 */  sw    $v0, 0x48($sp)
/* 02B284 8002A684 1000000B */  b     .L8002A6B4
/* 02B288 8002A688 AFA3004C */   sw    $v1, 0x4c($sp)
.L8002A68C:
/* 02B28C 8002A68C 86380006 */  lh    $t8, 6($s1)
/* 02B290 8002A690 00000000 */  nop   
/* 02B294 8002A694 44984000 */  mtc1  $t8, $f8
/* 02B298 8002A698 00000000 */  nop   
/* 02B29C 8002A69C 468042A0 */  cvt.s.w $f10, $f8
/* 02B2A0 8002A6A0 46145302 */  mul.s $f12, $f10, $f20
/* 02B2A4 8002A6A4 0C0326D3 */  jal   __f_to_ll
/* 02B2A8 8002A6A8 00000000 */   nop   
/* 02B2AC 8002A6AC AFA20048 */  sw    $v0, 0x48($sp)
/* 02B2B0 8002A6B0 AFA3004C */  sw    $v1, 0x4c($sp)
.L8002A6B4:
/* 02B2B4 8002A6B4 32190002 */  andi  $t9, $s0, 2
/* 02B2B8 8002A6B8 13200011 */  beqz  $t9, .L8002A700
/* 02B2BC 8002A6BC 8FA40048 */   lw    $a0, 0x48($sp)
/* 02B2C0 8002A6C0 8FA40048 */  lw    $a0, 0x48($sp)
/* 02B2C4 8002A6C4 8FA5004C */  lw    $a1, 0x4c($sp)
/* 02B2C8 8002A6C8 0C03272F */  jal   __ll_to_f
/* 02B2CC 8002A6CC 00000000 */   nop   
/* 02B2D0 8002A6D0 86280002 */  lh    $t0, 2($s1)
/* 02B2D4 8002A6D4 00000000 */  nop   
/* 02B2D8 8002A6D8 44888000 */  mtc1  $t0, $f16
/* 02B2DC 8002A6DC 00000000 */  nop   
/* 02B2E0 8002A6E0 468084A0 */  cvt.s.w $f18, $f16
/* 02B2E4 8002A6E4 46169102 */  mul.s $f4, $f18, $f22
/* 02B2E8 8002A6E8 0C0326D3 */  jal   __f_to_ll
/* 02B2EC 8002A6EC 46040300 */   add.s $f12, $f0, $f4
/* 02B2F0 8002A6F0 AFA20048 */  sw    $v0, 0x48($sp)
/* 02B2F4 8002A6F4 1000000F */  b     .L8002A734
/* 02B2F8 8002A6F8 AFA3004C */   sw    $v1, 0x4c($sp)
/* 02B2FC 8002A6FC 8FA40048 */  lw    $a0, 0x48($sp)
.L8002A700:
/* 02B300 8002A700 8FA5004C */  lw    $a1, 0x4c($sp)
/* 02B304 8002A704 0C03272F */  jal   __ll_to_f
/* 02B308 8002A708 00000000 */   nop   
/* 02B30C 8002A70C 86290008 */  lh    $t1, 8($s1)
/* 02B310 8002A710 00000000 */  nop   
/* 02B314 8002A714 44893000 */  mtc1  $t1, $f6
/* 02B318 8002A718 00000000 */  nop   
/* 02B31C 8002A71C 46803220 */  cvt.s.w $f8, $f6
/* 02B320 8002A720 46164282 */  mul.s $f10, $f8, $f22
/* 02B324 8002A724 0C0326D3 */  jal   __f_to_ll
/* 02B328 8002A728 460A0300 */   add.s $f12, $f0, $f10
/* 02B32C 8002A72C AFA20048 */  sw    $v0, 0x48($sp)
/* 02B330 8002A730 AFA3004C */  sw    $v1, 0x4c($sp)
.L8002A734:
/* 02B334 8002A734 320A0004 */  andi  $t2, $s0, 4
/* 02B338 8002A738 11400011 */  beqz  $t2, .L8002A780
/* 02B33C 8002A73C 8FA40048 */   lw    $a0, 0x48($sp)
/* 02B340 8002A740 8FA40048 */  lw    $a0, 0x48($sp)
/* 02B344 8002A744 8FA5004C */  lw    $a1, 0x4c($sp)
/* 02B348 8002A748 0C03272F */  jal   __ll_to_f
/* 02B34C 8002A74C 00000000 */   nop   
/* 02B350 8002A750 862B0004 */  lh    $t3, 4($s1)
/* 02B354 8002A754 00000000 */  nop   
/* 02B358 8002A758 448B8000 */  mtc1  $t3, $f16
/* 02B35C 8002A75C 00000000 */  nop   
/* 02B360 8002A760 468084A0 */  cvt.s.w $f18, $f16
/* 02B364 8002A764 46189102 */  mul.s $f4, $f18, $f24
/* 02B368 8002A768 0C0326D3 */  jal   __f_to_ll
/* 02B36C 8002A76C 46040300 */   add.s $f12, $f0, $f4
/* 02B370 8002A770 AFA20048 */  sw    $v0, 0x48($sp)
/* 02B374 8002A774 1000000F */  b     .L8002A7B4
/* 02B378 8002A778 AFA3004C */   sw    $v1, 0x4c($sp)
/* 02B37C 8002A77C 8FA40048 */  lw    $a0, 0x48($sp)
.L8002A780:
/* 02B380 8002A780 8FA5004C */  lw    $a1, 0x4c($sp)
/* 02B384 8002A784 0C03272F */  jal   __ll_to_f
/* 02B388 8002A788 00000000 */   nop   
/* 02B38C 8002A78C 862C000A */  lh    $t4, 0xa($s1)
/* 02B390 8002A790 00000000 */  nop   
/* 02B394 8002A794 448C3000 */  mtc1  $t4, $f6
/* 02B398 8002A798 00000000 */  nop   
/* 02B39C 8002A79C 46803220 */  cvt.s.w $f8, $f6
/* 02B3A0 8002A7A0 46184282 */  mul.s $f10, $f8, $f24
/* 02B3A4 8002A7A4 0C0326D3 */  jal   __f_to_ll
/* 02B3A8 8002A7A8 460A0300 */   add.s $f12, $f0, $f10
/* 02B3AC 8002A7AC AFA20048 */  sw    $v0, 0x48($sp)
/* 02B3B0 8002A7B0 AFA3004C */  sw    $v1, 0x4c($sp)
.L8002A7B4:
/* 02B3B4 8002A7B4 8FA40048 */  lw    $a0, 0x48($sp)
/* 02B3B8 8002A7B8 8FA5004C */  lw    $a1, 0x4c($sp)
/* 02B3BC 8002A7BC 0C03272F */  jal   __ll_to_f
/* 02B3C0 8002A7C0 00000000 */   nop   
/* 02B3C4 8002A7C4 0C0326D3 */  jal   __f_to_ll
/* 02B3C8 8002A7C8 461A0300 */   add.s $f12, $f0, $f26
/* 02B3CC 8002A7CC AFA20048 */  sw    $v0, 0x48($sp)
/* 02B3D0 8002A7D0 04400006 */  bltz  $v0, .L8002A7EC
/* 02B3D4 8002A7D4 AFA3004C */   sw    $v1, 0x4c($sp)
/* 02B3D8 8002A7D8 1C400003 */  bgtz  $v0, .L8002A7E8
/* 02B3DC 8002A7DC 00000000 */   nop   
/* 02B3E0 8002A7E0 10600002 */  beqz  $v1, .L8002A7EC
/* 02B3E4 8002A7E4 00000000 */   nop   
.L8002A7E8:
/* 02B3E8 8002A7E8 24120001 */  li    $s2, 1
.L8002A7EC:
/* 02B3EC 8002A7EC 26100001 */  addiu $s0, $s0, 1
/* 02B3F0 8002A7F0 2A010008 */  slti  $at, $s0, 8
/* 02B3F4 8002A7F4 10200004 */  beqz  $at, .L8002A808
/* 02B3F8 8002A7F8 24010008 */   li    $at, 8
/* 02B3FC 8002A7FC 1240FF96 */  beqz  $s2, .L8002A658
/* 02B400 8002A800 320E0001 */   andi  $t6, $s0, 1
/* 02B404 8002A804 24010008 */  li    $at, 8
.L8002A808:
/* 02B408 8002A808 16010005 */  bne   $s0, $at, .L8002A820
/* 02B40C 8002A80C 26730010 */   addiu $s3, $s3, 0x10
/* 02B410 8002A810 16400003 */  bnez  $s2, .L8002A820
/* 02B414 8002A814 00000000 */   nop   
/* 02B418 8002A818 1000002A */  b     .L8002A8C4
/* 02B41C 8002A81C 00001025 */   move  $v0, $zero
.L8002A820:
/* 02B420 8002A820 3C0D8012 */  lui   $t5, %hi(D_8011D128) # $t5, 0x8012
/* 02B424 8002A824 25ADD128 */  addiu $t5, %lo(D_8011D128) # addiu $t5, $t5, -0x2ed8
/* 02B428 8002A828 166DFF84 */  bne   $s3, $t5, .L8002A63C
/* 02B42C 8002A82C 00000000 */   nop   
/* 02B430 8002A830 86380006 */  lh    $t8, 6($s1)
/* 02B434 8002A834 86390000 */  lh    $t9, ($s1)
/* 02B438 8002A838 862F000A */  lh    $t7, 0xa($s1)
/* 02B43C 8002A83C 862D0004 */  lh    $t5, 4($s1)
/* 02B440 8002A840 03194021 */  addu  $t0, $t8, $t9
/* 02B444 8002A844 01EDC021 */  addu  $t8, $t7, $t5
/* 02B448 8002A848 0018C843 */  sra   $t9, $t8, 1
/* 02B44C 8002A84C 862A0008 */  lh    $t2, 8($s1)
/* 02B450 8002A850 862B0002 */  lh    $t3, 2($s1)
/* 02B454 8002A854 44992000 */  mtc1  $t9, $f4
/* 02B458 8002A858 014B6021 */  addu  $t4, $t2, $t3
/* 02B45C 8002A85C 46802020 */  cvt.s.w $f0, $f4
/* 02B460 8002A860 00084843 */  sra   $t1, $t0, 1
/* 02B464 8002A864 000C7043 */  sra   $t6, $t4, 1
/* 02B468 8002A868 44898000 */  mtc1  $t1, $f16
/* 02B46C 8002A86C 448E9000 */  mtc1  $t6, $f18
/* 02B470 8002A870 44060000 */  mfc1  $a2, $f0
/* 02B474 8002A874 46808320 */  cvt.s.w $f12, $f16
/* 02B478 8002A878 0C0198D2 */  jal   func_80066348
/* 02B47C 8002A87C 468093A0 */   cvt.s.w $f14, $f18
/* 02B480 8002A880 3C028012 */  lui   $v0, %hi(D_8011D380) # $v0, 0x8012
/* 02B484 8002A884 2442D380 */  addiu $v0, %lo(D_8011D380) # addiu $v0, $v0, -0x2c80
/* 02B488 8002A888 E4400000 */  swc1  $f0, ($v0)
/* 02B48C 8002A88C 3C01800E */  lui   $at, %hi(D_800E5EA8 + 4) # $at, 0x800e
/* 02B490 8002A890 C4460000 */  lwc1  $f6, ($v0)
/* 02B494 8002A894 C42B5EA8 */  lwc1  $f11, %lo(D_800E5EA8)($at)
/* 02B498 8002A898 C42A5EAC */  lwc1  $f10, %lo(D_800E5EA8 + 4)($at)
/* 02B49C 8002A89C 46003221 */  cvt.d.s $f8, $f6
/* 02B4A0 8002A8A0 462A403C */  c.lt.d $f8, $f10
/* 02B4A4 8002A8A4 3C018012 */  lui   $at, %hi(D_8011B0BC) # $at, 0x8012
/* 02B4A8 8002A8A8 45000005 */  bc1f  .L8002A8C0
/* 02B4AC 8002A8AC 24020001 */   li    $v0, 1
/* 02B4B0 8002A8B0 24080001 */  li    $t0, 1
/* 02B4B4 8002A8B4 3C018012 */  lui   $at, %hi(D_8011B0BC) # $at, 0x8012
/* 02B4B8 8002A8B8 10000002 */  b     .L8002A8C4
/* 02B4BC 8002A8BC AC28B0BC */   sw    $t0, %lo(D_8011B0BC)($at)
.L8002A8C0:
/* 02B4C0 8002A8C0 AC20B0BC */  sw    $zero, %lo(D_8011B0BC)($at)
.L8002A8C4:
/* 02B4C4 8002A8C4 8FBF0044 */  lw    $ra, 0x44($sp)
/* 02B4C8 8002A8C8 C7B50010 */  lwc1  $f21, 0x10($sp)
/* 02B4CC 8002A8CC C7B40014 */  lwc1  $f20, 0x14($sp)
/* 02B4D0 8002A8D0 C7B70018 */  lwc1  $f23, 0x18($sp)
/* 02B4D4 8002A8D4 C7B6001C */  lwc1  $f22, 0x1c($sp)
/* 02B4D8 8002A8D8 C7B90020 */  lwc1  $f25, 0x20($sp)
/* 02B4DC 8002A8DC C7B80024 */  lwc1  $f24, 0x24($sp)
/* 02B4E0 8002A8E0 C7BB0028 */  lwc1  $f27, 0x28($sp)
/* 02B4E4 8002A8E4 C7BA002C */  lwc1  $f26, 0x2c($sp)
/* 02B4E8 8002A8E8 8FB00034 */  lw    $s0, 0x34($sp)
/* 02B4EC 8002A8EC 8FB10038 */  lw    $s1, 0x38($sp)
/* 02B4F0 8002A8F0 8FB2003C */  lw    $s2, 0x3c($sp)
/* 02B4F4 8002A8F4 8FB30040 */  lw    $s3, 0x40($sp)
/* 02B4F8 8002A8F8 03E00008 */  jr    $ra
/* 02B4FC 8002A8FC 27BD0078 */   addiu $sp, $sp, 0x78

