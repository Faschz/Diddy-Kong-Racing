glabel func_80072424
/* 073024 80072424 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 073028 80072428 00047400 */  sll   $t6, $a0, 0x10
/* 07302C 8007242C 30B800FF */  andi  $t8, $a1, 0xff
/* 073030 80072430 000E7C03 */  sra   $t7, $t6, 0x10
/* 073034 80072434 AFA40020 */  sw    $a0, 0x20($sp)
/* 073038 80072438 44866000 */  mtc1  $a2, $f12
/* 07303C 8007243C 2B010013 */  slti  $at, $t8, 0x13
/* 073040 80072440 01E02025 */  move  $a0, $t7
/* 073044 80072444 AFBF0014 */  sw    $ra, 0x14($sp)
/* 073048 80072448 10200047 */  beqz  $at, .L80072568
/* 07304C 8007244C AFA50024 */   sw    $a1, 0x24($sp)
/* 073050 80072450 05E00045 */  bltz  $t7, .L80072568
/* 073054 80072454 29E10004 */   slti  $at, $t7, 4
/* 073058 80072458 10200044 */  beqz  $at, .L8007256C
/* 07305C 8007245C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 073060 80072460 A7AF0022 */  sh    $t7, 0x22($sp)
/* 073064 80072464 AFB80018 */  sw    $t8, 0x18($sp)
/* 073068 80072468 0C01C894 */  jal   func_80072250
/* 07306C 8007246C E7AC0028 */   swc1  $f12, 0x28($sp)
/* 073070 80072470 3059FFFF */  andi  $t9, $v0, 0xffff
/* 073074 80072474 00194080 */  sll   $t0, $t9, 2
/* 073078 80072478 01194021 */  addu  $t0, $t0, $t9
/* 07307C 8007247C 3C098012 */  lui   $t1, %hi(D_801241B8) # $t1, 0x8012
/* 073080 80072480 252941B8 */  addiu $t1, %lo(D_801241B8) # addiu $t1, $t1, 0x41b8
/* 073084 80072484 00084040 */  sll   $t0, $t0, 1
/* 073088 80072488 01091821 */  addu  $v1, $t0, $t1
/* 07308C 8007248C 8FA60018 */  lw    $a2, 0x18($sp)
/* 073090 80072490 846A0000 */  lh    $t2, ($v1)
/* 073094 80072494 87A40022 */  lh    $a0, 0x22($sp)
/* 073098 80072498 C7AC0028 */  lwc1  $f12, 0x28($sp)
/* 07309C 8007249C 14CA000C */  bne   $a2, $t2, .L800724D0
/* 0730A0 800724A0 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 0730A4 800724A4 846B0008 */  lh    $t3, 8($v1)
/* 0730A8 800724A8 240CFED4 */  li    $t4, -300
/* 0730AC 800724AC 05610002 */  bgez  $t3, .L800724B8
/* 0730B0 800724B0 3C0D8012 */   lui   $t5, %hi(sUnkMiscAsset19) # $t5, 0x8012
/* 0730B4 800724B4 A46C0008 */  sh    $t4, 8($v1)
.L800724B8:
/* 0730B8 800724B8 8DAD41E0 */  lw    $t5, %lo(sUnkMiscAsset19)($t5)
/* 0730BC 800724BC 00067880 */  sll   $t7, $a2, 2
/* 0730C0 800724C0 01AFC021 */  addu  $t8, $t5, $t7
/* 0730C4 800724C4 87190002 */  lh    $t9, 2($t8)
/* 0730C8 800724C8 10000027 */  b     .L80072568
/* 0730CC 800724CC A4790004 */   sh    $t9, 4($v1)
.L800724D0:
/* 0730D0 800724D0 44800000 */  mtc1  $zero, $f0
/* 0730D4 800724D4 3C088012 */  lui   $t0, %hi(sUnkMiscAsset19) # $t0, 0x8012
/* 0730D8 800724D8 4600603C */  c.lt.s $f12, $f0
/* 0730DC 800724DC 00000000 */  nop   
/* 0730E0 800724E0 45000002 */  bc1f  .L800724EC
/* 0730E4 800724E4 00000000 */   nop   
/* 0730E8 800724E8 46000306 */  mov.s $f12, $f0
.L800724EC:
/* 0730EC 800724EC 44810000 */  mtc1  $at, $f0
/* 0730F0 800724F0 00000000 */  nop   
/* 0730F4 800724F4 460C003C */  c.lt.s $f0, $f12
/* 0730F8 800724F8 00000000 */  nop   
/* 0730FC 800724FC 45000002 */  bc1f  .L80072508
/* 073100 80072500 00000000 */   nop   
/* 073104 80072504 46000306 */  mov.s $f12, $f0
.L80072508:
/* 073108 80072508 A4660000 */  sh    $a2, ($v1)
/* 07310C 8007250C 8D0841E0 */  lw    $t0, %lo(sUnkMiscAsset19)($t0)
/* 073110 80072510 00065080 */  sll   $t2, $a2, 2
/* 073114 80072514 010A1021 */  addu  $v0, $t0, $t2
/* 073118 80072518 84470000 */  lh    $a3, ($v0)
/* 07311C 8007251C 00000000 */  nop   
/* 073120 80072520 10E00012 */  beqz  $a3, .L8007256C
/* 073124 80072524 8FBF0014 */   lw    $ra, 0x14($sp)
/* 073128 80072528 44872000 */  mtc1  $a3, $f4
/* 07312C 8007252C 84460002 */  lh    $a2, 2($v0)
/* 073130 80072530 468021A0 */  cvt.s.w $f6, $f4
/* 073134 80072534 460C3202 */  mul.s $f8, $f6, $f12
/* 073138 80072538 444BF800 */  cfc1  $t3, $31
/* 07313C 8007253C 00000000 */  nop   
/* 073140 80072540 35610003 */  ori   $at, $t3, 3
/* 073144 80072544 38210002 */  xori  $at, $at, 2
/* 073148 80072548 44C1F800 */  ctc1  $at, $31
/* 07314C 8007254C 00000000 */  nop   
/* 073150 80072550 460042A4 */  cvt.w.s $f10, $f8
/* 073154 80072554 44055000 */  mfc1  $a1, $f10
/* 073158 80072558 44CBF800 */  ctc1  $t3, $31
/* 07315C 8007255C 00056400 */  sll   $t4, $a1, 0x10
/* 073160 80072560 0C01C95E */  jal   func_80072578
/* 073164 80072564 000C2C03 */   sra   $a1, $t4, 0x10
.L80072568:
/* 073168 80072568 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007256C:
/* 07316C 8007256C 27BD0020 */  addiu $sp, $sp, 0x20
/* 073170 80072570 03E00008 */  jr    $ra
/* 073174 80072574 00000000 */   nop   

