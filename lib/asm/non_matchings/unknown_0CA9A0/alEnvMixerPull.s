glabel alEnvMixerPull
/* 0CACD0 800CA0D0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0CACD4 800CA0D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CACD8 800CA0D8 AFA40060 */  sw    $a0, 0x60($sp)
/* 0CACDC 800CA0DC AFA50064 */  sw    $a1, 0x64($sp)
/* 0CACE0 800CA0E0 AFA60068 */  sw    $a2, 0x68($sp)
/* 0CACE4 800CA0E4 AFA7006C */  sw    $a3, 0x6c($sp)
/* 0CACE8 800CA0E8 8FAE0070 */  lw    $t6, 0x70($sp)
/* 0CACEC 800CA0EC 00000000 */  nop   
/* 0CACF0 800CA0F0 AFAE005C */  sw    $t6, 0x5c($sp)
/* 0CACF4 800CA0F4 8FAF0060 */  lw    $t7, 0x60($sp)
/* 0CACF8 800CA0F8 00000000 */  nop   
/* 0CACFC 800CA0FC AFAF0058 */  sw    $t7, 0x58($sp)
/* 0CAD00 800CA100 8FB8006C */  lw    $t8, 0x6c($sp)
/* 0CAD04 800CA104 00000000 */  nop   
/* 0CAD08 800CA108 AFB8004C */  sw    $t8, 0x4c($sp)
/* 0CAD0C 800CA10C A7A00046 */  sh    $zero, 0x46($sp)
/* 0CAD10 800CA110 A7A00056 */  sh    $zero, 0x56($sp)
/* 0CAD14 800CA114 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CAD18 800CA118 00000000 */  nop   
/* 0CAD1C 800CA11C 8F28003C */  lw    $t0, 0x3c($t9)
/* 0CAD20 800CA120 00000000 */  nop   
/* 0CAD24 800CA124 11000229 */  beqz  $t0, .L800CA9CC
/* 0CAD28 800CA128 00000000 */   nop   
.L800CA12C:
/* 0CAD2C 800CA12C 8FA9004C */  lw    $t1, 0x4c($sp)
/* 0CAD30 800CA130 00000000 */  nop   
/* 0CAD34 800CA134 AFA90050 */  sw    $t1, 0x50($sp)
/* 0CAD38 800CA138 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CAD3C 800CA13C 00000000 */  nop   
/* 0CAD40 800CA140 8D4B003C */  lw    $t3, 0x3c($t2)
/* 0CAD44 800CA144 00000000 */  nop   
/* 0CAD48 800CA148 8D6C0004 */  lw    $t4, 4($t3)
/* 0CAD4C 800CA14C 00000000 */  nop   
/* 0CAD50 800CA150 AFAC004C */  sw    $t4, 0x4c($sp)
/* 0CAD54 800CA154 8FAD004C */  lw    $t5, 0x4c($sp)
/* 0CAD58 800CA158 8FAE0050 */  lw    $t6, 0x50($sp)
/* 0CAD5C 800CA15C 00000000 */  nop   
/* 0CAD60 800CA160 01AE7823 */  subu  $t7, $t5, $t6
/* 0CAD64 800CA164 AFAF0048 */  sw    $t7, 0x48($sp)
/* 0CAD68 800CA168 8FB80048 */  lw    $t8, 0x48($sp)
/* 0CAD6C 800CA16C 8FB90068 */  lw    $t9, 0x68($sp)
/* 0CAD70 800CA170 00000000 */  nop   
/* 0CAD74 800CA174 0338082A */  slt   $at, $t9, $t8
/* 0CAD78 800CA178 10200003 */  beqz  $at, .L800CA188
/* 0CAD7C 800CA17C 00000000 */   nop   
/* 0CAD80 800CA180 10000212 */  b     .L800CA9CC
/* 0CAD84 800CA184 00000000 */   nop   
.L800CA188:
/* 0CAD88 800CA188 8FA80048 */  lw    $t0, 0x48($sp)
/* 0CAD8C 800CA18C 00000000 */  nop   
/* 0CAD90 800CA190 05000003 */  bltz  $t0, .L800CA1A0
/* 0CAD94 800CA194 00000000 */   nop   
/* 0CAD98 800CA198 10000007 */  b     .L800CA1B8
/* 0CAD9C 800CA19C 00000000 */   nop   
.L800CA1A0:
/* 0CADA0 800CA1A0 3C04800F */  lui   $a0, %hi(D_800E9560) # $a0, 0x800f
/* 0CADA4 800CA1A4 3C05800F */  lui   $a1, %hi(D_800E9570) # $a1, 0x800f
/* 0CADA8 800CA1A8 24A59570 */  addiu $a1, %lo(D_800E9570) # addiu $a1, $a1, -0x6a90
/* 0CADAC 800CA1AC 24849560 */  addiu $a0, %lo(D_800E9560) # addiu $a0, $a0, -0x6aa0
/* 0CADB0 800CA1B0 0C02DBD0 */  jal   func_800B6F40
/* 0CADB4 800CA1B4 24060068 */   li    $a2, 104
.L800CA1B8:
/* 0CADB8 800CA1B8 8FA90048 */  lw    $t1, 0x48($sp)
/* 0CADBC 800CA1BC 00000000 */  nop   
/* 0CADC0 800CA1C0 292100A1 */  slti  $at, $t1, 0xa1
/* 0CADC4 800CA1C4 10200003 */  beqz  $at, .L800CA1D4
/* 0CADC8 800CA1C8 00000000 */   nop   
/* 0CADCC 800CA1CC 10000007 */  b     .L800CA1EC
/* 0CADD0 800CA1D0 00000000 */   nop   
.L800CA1D4:
/* 0CADD4 800CA1D4 3C04800F */  lui   $a0, %hi(D_800E9578) # $a0, 0x800f
/* 0CADD8 800CA1D8 3C05800F */  lui   $a1, %hi(D_800E9598) # $a1, 0x800f
/* 0CADDC 800CA1DC 24A59598 */  addiu $a1, %lo(D_800E9598) # addiu $a1, $a1, -0x6a68
/* 0CADE0 800CA1E0 24849578 */  addiu $a0, %lo(D_800E9578) # addiu $a0, $a0, -0x6a88
/* 0CADE4 800CA1E4 0C02DBD0 */  jal   func_800B6F40
/* 0CADE8 800CA1E8 24060069 */   li    $a2, 105
.L800CA1EC:
/* 0CADEC 800CA1EC 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CADF0 800CA1F0 00000000 */  nop   
/* 0CADF4 800CA1F4 8D4B003C */  lw    $t3, 0x3c($t2)
/* 0CADF8 800CA1F8 00000000 */  nop   
/* 0CADFC 800CA1FC 956C0008 */  lhu   $t4, 8($t3)
/* 0CAE00 800CA200 00000000 */  nop   
/* 0CAE04 800CA204 2D810011 */  sltiu $at, $t4, 0x11
/* 0CAE08 800CA208 102001AE */  beqz  $at, .L800CA8C4
/* 0CAE0C 800CA20C 00000000 */   nop   
/* 0CAE10 800CA210 000C6080 */  sll   $t4, $t4, 2
/* 0CAE14 800CA214 3C01800F */  lui   $at, %hi(D_800E95B0) # $at, 0x800f
/* 0CAE18 800CA218 002C0821 */  addu  $at, $at, $t4
/* 0CAE1C 800CA21C 8C2C95B0 */  lw    $t4, %lo(D_800E95B0)($at)
/* 0CAE20 800CA220 00000000 */  nop   
/* 0CAE24 800CA224 01800008 */  jr    $t4
/* 0CAE28 800CA228 00000000 */   nop   
/* 0CAE2C 800CA22C 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0CAE30 800CA230 00000000 */  nop   
/* 0CAE34 800CA234 8DAE003C */  lw    $t6, 0x3c($t5)
/* 0CAE38 800CA238 00000000 */  nop   
/* 0CAE3C 800CA23C AFAE0038 */  sw    $t6, 0x38($sp)
/* 0CAE40 800CA240 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0CAE44 800CA244 00000000 */  nop   
/* 0CAE48 800CA248 AFAF0034 */  sw    $t7, 0x34($sp)
/* 0CAE4C 800CA24C 8FB80038 */  lw    $t8, 0x38($sp)
/* 0CAE50 800CA250 00000000 */  nop   
/* 0CAE54 800CA254 8719000A */  lh    $t9, 0xa($t8)
/* 0CAE58 800CA258 00000000 */  nop   
/* 0CAE5C 800CA25C 13200007 */  beqz  $t9, .L800CA27C
/* 0CAE60 800CA260 00000000 */   nop   
/* 0CAE64 800CA264 8FA80058 */  lw    $t0, 0x58($sp)
/* 0CAE68 800CA268 24050008 */  li    $a1, 8
/* 0CAE6C 800CA26C 8D190008 */  lw    $t9, 8($t0)
/* 0CAE70 800CA270 00003025 */  move  $a2, $zero
/* 0CAE74 800CA274 0320F809 */  jalr  $t9
/* 0CAE78 800CA278 01002025 */  move  $a0, $t0
.L800CA27C:
/* 0CAE7C 800CA27C 8FA90058 */  lw    $t1, 0x58($sp)
/* 0CAE80 800CA280 8FAA0038 */  lw    $t2, 0x38($sp)
/* 0CAE84 800CA284 8D390008 */  lw    $t9, 8($t1)
/* 0CAE88 800CA288 8D460018 */  lw    $a2, 0x18($t2)
/* 0CAE8C 800CA28C 24050005 */  li    $a1, 5
/* 0CAE90 800CA290 0320F809 */  jalr  $t9
/* 0CAE94 800CA294 01202025 */  move  $a0, $t1
/* 0CAE98 800CA298 8FAB0058 */  lw    $t3, 0x58($sp)
/* 0CAE9C 800CA29C 24050009 */  li    $a1, 9
/* 0CAEA0 800CA2A0 8D790008 */  lw    $t9, 8($t3)
/* 0CAEA4 800CA2A4 00003025 */  move  $a2, $zero
/* 0CAEA8 800CA2A8 0320F809 */  jalr  $t9
/* 0CAEAC 800CA2AC 01602025 */  move  $a0, $t3
/* 0CAEB0 800CA2B0 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0CAEB4 800CA2B4 240C0001 */  li    $t4, 1
/* 0CAEB8 800CA2B8 ADAC0038 */  sw    $t4, 0x38($t5)
/* 0CAEBC 800CA2BC 8FAE0058 */  lw    $t6, 0x58($sp)
/* 0CAEC0 800CA2C0 00000000 */  nop   
/* 0CAEC4 800CA2C4 ADC00030 */  sw    $zero, 0x30($t6)
/* 0CAEC8 800CA2C8 8FAF0038 */  lw    $t7, 0x38($sp)
/* 0CAECC 800CA2CC 8FA80058 */  lw    $t0, 0x58($sp)
/* 0CAED0 800CA2D0 8DF80014 */  lw    $t8, 0x14($t7)
/* 0CAED4 800CA2D4 00000000 */  nop   
/* 0CAED8 800CA2D8 AD180034 */  sw    $t8, 0x34($t0)
/* 0CAEDC 800CA2DC 8FAA0038 */  lw    $t2, 0x38($sp)
/* 0CAEE0 800CA2E0 00000000 */  nop   
/* 0CAEE4 800CA2E4 85490010 */  lh    $t1, 0x10($t2)
/* 0CAEE8 800CA2E8 00000000 */  nop   
/* 0CAEEC 800CA2EC 01295821 */  addu  $t3, $t1, $t1
/* 0CAEF0 800CA2F0 05610003 */  bgez  $t3, .L800CA300
/* 0CAEF4 800CA2F4 000BC843 */   sra   $t9, $t3, 1
/* 0CAEF8 800CA2F8 25610001 */  addiu $at, $t3, 1
/* 0CAEFC 800CA2FC 0001C843 */  sra   $t9, $at, 1
.L800CA300:
/* 0CAF00 800CA300 AFB90030 */  sw    $t9, 0x30($sp)
/* 0CAF04 800CA304 8FAC0030 */  lw    $t4, 0x30($sp)
/* 0CAF08 800CA308 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0CAF0C 800CA30C 00000000 */  nop   
/* 0CAF10 800CA310 A5AC001A */  sh    $t4, 0x1a($t5)
/* 0CAF14 800CA314 8FAE0038 */  lw    $t6, 0x38($sp)
/* 0CAF18 800CA318 8FB80058 */  lw    $t8, 0x58($sp)
/* 0CAF1C 800CA31C 91CF0012 */  lbu   $t7, 0x12($t6)
/* 0CAF20 800CA320 00000000 */  nop   
/* 0CAF24 800CA324 A70F0018 */  sh    $t7, 0x18($t8)
/* 0CAF28 800CA328 8FA80038 */  lw    $t0, 0x38($sp)
/* 0CAF2C 800CA32C 3C0B800E */  lui   $t3, %hi(eqpower) # $t3, 0x800e
/* 0CAF30 800CA330 910A0013 */  lbu   $t2, 0x13($t0)
/* 0CAF34 800CA334 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CAF38 800CA338 000A4840 */  sll   $t1, $t2, 1
/* 0CAF3C 800CA33C 01695821 */  addu  $t3, $t3, $t1
/* 0CAF40 800CA340 856B37A0 */  lh    $t3, %lo(eqpower)($t3)
/* 0CAF44 800CA344 00000000 */  nop   
/* 0CAF48 800CA348 A72B0020 */  sh    $t3, 0x20($t9)
/* 0CAF4C 800CA34C 8FAC0038 */  lw    $t4, 0x38($sp)
# This is indexing into eqpower (0x800E37A0) from the end
/* 0CAF50 800CA350 3C18800E */  lui   $t8, 0x800e
/* 0CAF54 800CA354 918D0013 */  lbu   $t5, 0x13($t4)
/* 0CAF58 800CA358 8FA80058 */  lw    $t0, 0x58($sp)
/* 0CAF5C 800CA35C 000D7023 */  negu  $t6, $t5
/* 0CAF60 800CA360 000E7840 */  sll   $t7, $t6, 1
/* 0CAF64 800CA364 030FC021 */  addu  $t8, $t8, $t7
/* 0CAF68 800CA368 8718389E */  lh    $t8, 0x389e($t8)
/* 0CAF6C 800CA36C 00000000 */  nop   
/* 0CAF70 800CA370 A5180022 */  sh    $t8, 0x22($t0)
/* 0CAF74 800CA374 8FAA0038 */  lw    $t2, 0x38($sp)
/* 0CAF78 800CA378 00000000 */  nop   
/* 0CAF7C 800CA37C 8D490014 */  lw    $t1, 0x14($t2)
/* 0CAF80 800CA380 00000000 */  nop   
/* 0CAF84 800CA384 11200008 */  beqz  $t1, .L800CA3A8
/* 0CAF88 800CA388 00000000 */   nop   
/* 0CAF8C 800CA38C 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CAF90 800CA390 240B0001 */  li    $t3, 1
/* 0CAF94 800CA394 A72B001C */  sh    $t3, 0x1c($t9)
/* 0CAF98 800CA398 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0CAF9C 800CA39C 240C0001 */  li    $t4, 1
/* 0CAFA0 800CA3A0 1000001A */  b     .L800CA40C
/* 0CAFA4 800CA3A4 A5AC001E */   sh    $t4, 0x1e($t5)
.L800CA3A8:
/* 0CAFA8 800CA3A8 8FAE0058 */  lw    $t6, 0x58($sp)
/* 0CAFAC 800CA3AC 3C08800E */  lui   $t0, %hi(eqpower) # $t0, 0x800e
/* 0CAFB0 800CA3B0 85CF0018 */  lh    $t7, 0x18($t6)
/* 0CAFB4 800CA3B4 85CA001A */  lh    $t2, 0x1a($t6)
/* 0CAFB8 800CA3B8 000FC040 */  sll   $t8, $t7, 1
/* 0CAFBC 800CA3BC 01184021 */  addu  $t0, $t0, $t8
/* 0CAFC0 800CA3C0 850837A0 */  lh    $t0, %lo(eqpower)($t0)
/* 0CAFC4 800CA3C4 00000000 */  nop   
/* 0CAFC8 800CA3C8 010A0019 */  multu $t0, $t2
/* 0CAFCC 800CA3CC 00004812 */  mflo  $t1
/* 0CAFD0 800CA3D0 00095BC3 */  sra   $t3, $t1, 0xf
/* 0CAFD4 800CA3D4 A5CB001C */  sh    $t3, 0x1c($t6)
/* 0CAFD8 800CA3D8 8FB90058 */  lw    $t9, 0x58($sp)
# This is indexing into eqpower (0x800E37A0) from the end
/* 0CAFDC 800CA3DC 3C18800E */  lui   $t8, 0x800e
/* 0CAFE0 800CA3E0 872C0018 */  lh    $t4, 0x18($t9)
/* 0CAFE4 800CA3E4 8728001A */  lh    $t0, 0x1a($t9)
/* 0CAFE8 800CA3E8 000C6823 */  negu  $t5, $t4
/* 0CAFEC 800CA3EC 000D7840 */  sll   $t7, $t5, 1
/* 0CAFF0 800CA3F0 030FC021 */  addu  $t8, $t8, $t7
/* 0CAFF4 800CA3F4 8718389E */  lh    $t8, 0x389e($t8)
/* 0CAFF8 800CA3F8 00000000 */  nop   
/* 0CAFFC 800CA3FC 03080019 */  multu $t8, $t0
/* 0CB000 800CA400 00005012 */  mflo  $t2
/* 0CB004 800CA404 000A4BC3 */  sra   $t1, $t2, 0xf
/* 0CB008 800CA408 A729001E */  sh    $t1, 0x1e($t9)
.L800CA40C:
/* 0CB00C 800CA40C 8FAB0034 */  lw    $t3, 0x34($sp)
/* 0CB010 800CA410 00000000 */  nop   
/* 0CB014 800CA414 8D6E0000 */  lw    $t6, ($t3)
/* 0CB018 800CA418 00000000 */  nop   
/* 0CB01C 800CA41C 11C0000E */  beqz  $t6, .L800CA458
/* 0CB020 800CA420 00000000 */   nop   
/* 0CB024 800CA424 8FAC0038 */  lw    $t4, 0x38($sp)
/* 0CB028 800CA428 00000000 */  nop   
/* 0CB02C 800CA42C C584000C */  lwc1  $f4, 0xc($t4)
/* 0CB030 800CA430 00000000 */  nop   
/* 0CB034 800CA434 E7A4002C */  swc1  $f4, 0x2c($sp)
/* 0CB038 800CA438 8FAD0034 */  lw    $t5, 0x34($sp)
/* 0CB03C 800CA43C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0CB040 800CA440 8DAF0000 */  lw    $t7, ($t5)
/* 0CB044 800CA444 24050007 */  li    $a1, 7
/* 0CB048 800CA448 8DF90008 */  lw    $t9, 8($t7)
/* 0CB04C 800CA44C 01E02025 */  move  $a0, $t7
/* 0CB050 800CA450 0320F809 */  jalr  $t9
/* 0CB054 800CA454 00000000 */  nop   
.L800CA458:
/* 0CB058 800CA458 10000134 */  b     .L800CA92C
/* 0CB05C 800CA45C 00000000 */   nop   
/* 0CB060 800CA460 8FB8006C */  lw    $t8, 0x6c($sp)
/* 0CB064 800CA464 8FA8005C */  lw    $t0, 0x5c($sp)
/* 0CB068 800CA468 8FA40058 */  lw    $a0, 0x58($sp)
/* 0CB06C 800CA46C 8FA70048 */  lw    $a3, 0x48($sp)
/* 0CB070 800CA470 27A50056 */  addiu $a1, $sp, 0x56
/* 0CB074 800CA474 27A60046 */  addiu $a2, $sp, 0x46
/* 0CB078 800CA478 AFB80010 */  sw    $t8, 0x10($sp)
/* 0CB07C 800CA47C 0C032B17 */  jal   func_800CAC5C
/* 0CB080 800CA480 AFA80014 */   sw    $t0, 0x14($sp)
/* 0CB084 800CA484 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0CB088 800CA488 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CB08C 800CA48C 8FAB0048 */  lw    $t3, 0x48($sp)
/* 0CB090 800CA490 8D490030 */  lw    $t1, 0x30($t2)
/* 0CB094 800CA494 00000000 */  nop   
/* 0CB098 800CA498 012B7021 */  addu  $t6, $t1, $t3
/* 0CB09C 800CA49C AD4E0030 */  sw    $t6, 0x30($t2)
/* 0CB0A0 800CA4A0 8FAC0058 */  lw    $t4, 0x58($sp)
/* 0CB0A4 800CA4A4 00000000 */  nop   
/* 0CB0A8 800CA4A8 8D8D0030 */  lw    $t5, 0x30($t4)
/* 0CB0AC 800CA4AC 8D8F0034 */  lw    $t7, 0x34($t4)
/* 0CB0B0 800CA4B0 00000000 */  nop   
/* 0CB0B4 800CA4B4 01AF082A */  slt   $at, $t5, $t7
/* 0CB0B8 800CA4B8 14200029 */  bnez  $at, .L800CA560
/* 0CB0BC 800CA4BC 00000000 */   nop   
/* 0CB0C0 800CA4C0 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CB0C4 800CA4C4 3C09800E */  lui   $t1, %hi(eqpower) # $t1, 0x800e
/* 0CB0C8 800CA4C8 87380018 */  lh    $t8, 0x18($t9)
/* 0CB0CC 800CA4CC 872B001A */  lh    $t3, 0x1a($t9)
/* 0CB0D0 800CA4D0 00184040 */  sll   $t0, $t8, 1
/* 0CB0D4 800CA4D4 01284821 */  addu  $t1, $t1, $t0
/* 0CB0D8 800CA4D8 852937A0 */  lh    $t1, %lo(eqpower)($t1)
/* 0CB0DC 800CA4DC 00000000 */  nop   
/* 0CB0E0 800CA4E0 012B0019 */  multu $t1, $t3
/* 0CB0E4 800CA4E4 00007012 */  mflo  $t6
/* 0CB0E8 800CA4E8 000E53C3 */  sra   $t2, $t6, 0xf
/* 0CB0EC 800CA4EC A72A0028 */  sh    $t2, 0x28($t9)
/* 0CB0F0 800CA4F0 8FAC0058 */  lw    $t4, 0x58($sp)
# This is indexing into eqpower (0x800E37A0) from the end
/* 0CB0F4 800CA4F4 3C08800E */  lui   $t0, 0x800e
/* 0CB0F8 800CA4F8 858D0018 */  lh    $t5, 0x18($t4)
/* 0CB0FC 800CA4FC 8589001A */  lh    $t1, 0x1a($t4)
/* 0CB100 800CA500 000D7823 */  negu  $t7, $t5
/* 0CB104 800CA504 000FC040 */  sll   $t8, $t7, 1
/* 0CB108 800CA508 01184021 */  addu  $t0, $t0, $t8
/* 0CB10C 800CA50C 8508389E */  lh    $t0, 0x389e($t0)
/* 0CB110 800CA510 00000000 */  nop   
/* 0CB114 800CA514 01090019 */  multu $t0, $t1
/* 0CB118 800CA518 00005812 */  mflo  $t3
/* 0CB11C 800CA51C 000B73C3 */  sra   $t6, $t3, 0xf
/* 0CB120 800CA520 A58E002E */  sh    $t6, 0x2e($t4)
/* 0CB124 800CA524 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CB128 800CA528 00000000 */  nop   
/* 0CB12C 800CA52C 8D590034 */  lw    $t9, 0x34($t2)
/* 0CB130 800CA530 00000000 */  nop   
/* 0CB134 800CA534 AD590030 */  sw    $t9, 0x30($t2)
/* 0CB138 800CA538 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0CB13C 800CA53C 00000000 */  nop   
/* 0CB140 800CA540 85AF0028 */  lh    $t7, 0x28($t5)
/* 0CB144 800CA544 00000000 */  nop   
/* 0CB148 800CA548 A5AF001C */  sh    $t7, 0x1c($t5)
/* 0CB14C 800CA54C 8FB80058 */  lw    $t8, 0x58($sp)
/* 0CB150 800CA550 00000000 */  nop   
/* 0CB154 800CA554 8708002E */  lh    $t0, 0x2e($t8)
/* 0CB158 800CA558 10000029 */  b     .L800CA600
/* 0CB15C 800CA55C A708001E */   sh    $t0, 0x1e($t8)
.L800CA560:
/* 0CB160 800CA560 8FA90058 */  lw    $t1, 0x58($sp)
/* 0CB164 800CA564 00000000 */  nop   
/* 0CB168 800CA568 852B001C */  lh    $t3, 0x1c($t1)
/* 0CB16C 800CA56C 8D250030 */  lw    $a1, 0x30($t1)
/* 0CB170 800CA570 448B3000 */  mtc1  $t3, $f6
/* 0CB174 800CA574 85260026 */  lh    $a2, 0x26($t1)
/* 0CB178 800CA578 95270024 */  lhu   $a3, 0x24($t1)
/* 0CB17C 800CA57C 0C032D26 */  jal   func_800CB498
/* 0CB180 800CA580 46803320 */   cvt.s.w $f12, $f6
/* 0CB184 800CA584 444EF800 */  cfc1  $t6, $31
/* 0CB188 800CA588 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CB18C 800CA58C 35C10003 */  ori   $at, $t6, 3
/* 0CB190 800CA590 38210002 */  xori  $at, $at, 2
/* 0CB194 800CA594 44C1F800 */  ctc1  $at, $31
/* 0CB198 800CA598 00000000 */  nop   
/* 0CB19C 800CA59C 46000224 */  cvt.w.s $f8, $f0
/* 0CB1A0 800CA5A0 440C4000 */  mfc1  $t4, $f8
/* 0CB1A4 800CA5A4 44CEF800 */  ctc1  $t6, $31
/* 0CB1A8 800CA5A8 A72C001C */  sh    $t4, 0x1c($t9)
/* 0CB1AC 800CA5AC 00000000 */  nop   
/* 0CB1B0 800CA5B0 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CB1B4 800CA5B4 00000000 */  nop   
/* 0CB1B8 800CA5B8 854F001E */  lh    $t7, 0x1e($t2)
/* 0CB1BC 800CA5BC 8D450030 */  lw    $a1, 0x30($t2)
/* 0CB1C0 800CA5C0 448F5000 */  mtc1  $t7, $f10
/* 0CB1C4 800CA5C4 8546002C */  lh    $a2, 0x2c($t2)
/* 0CB1C8 800CA5C8 9547002A */  lhu   $a3, 0x2a($t2)
/* 0CB1CC 800CA5CC 0C032D26 */  jal   func_800CB498
/* 0CB1D0 800CA5D0 46805320 */   cvt.s.w $f12, $f10
/* 0CB1D4 800CA5D4 444DF800 */  cfc1  $t5, $31
/* 0CB1D8 800CA5D8 8FB80058 */  lw    $t8, 0x58($sp)
/* 0CB1DC 800CA5DC 35A10003 */  ori   $at, $t5, 3
/* 0CB1E0 800CA5E0 38210002 */  xori  $at, $at, 2
/* 0CB1E4 800CA5E4 44C1F800 */  ctc1  $at, $31
/* 0CB1E8 800CA5E8 00000000 */  nop   
/* 0CB1EC 800CA5EC 46000424 */  cvt.w.s $f16, $f0
/* 0CB1F0 800CA5F0 44088000 */  mfc1  $t0, $f16
/* 0CB1F4 800CA5F4 44CDF800 */  ctc1  $t5, $31
/* 0CB1F8 800CA5F8 A708001E */  sh    $t0, 0x1e($t8)
/* 0CB1FC 800CA5FC 00000000 */  nop   
.L800CA600:
/* 0CB200 800CA600 8FAB0058 */  lw    $t3, 0x58($sp)
/* 0CB204 800CA604 00000000 */  nop   
/* 0CB208 800CA608 8569001C */  lh    $t1, 0x1c($t3)
/* 0CB20C 800CA60C 00000000 */  nop   
/* 0CB210 800CA610 15200004 */  bnez  $t1, .L800CA624
/* 0CB214 800CA614 00000000 */   nop   
/* 0CB218 800CA618 8FAC0058 */  lw    $t4, 0x58($sp)
/* 0CB21C 800CA61C 240E0001 */  li    $t6, 1
/* 0CB220 800CA620 A58E001C */  sh    $t6, 0x1c($t4)
.L800CA624:
/* 0CB224 800CA624 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CB228 800CA628 00000000 */  nop   
/* 0CB22C 800CA62C 872F001E */  lh    $t7, 0x1e($t9)
/* 0CB230 800CA630 00000000 */  nop   
/* 0CB234 800CA634 15E00004 */  bnez  $t7, .L800CA648
/* 0CB238 800CA638 00000000 */   nop   
/* 0CB23C 800CA63C 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0CB240 800CA640 240A0001 */  li    $t2, 1
/* 0CB244 800CA644 A5AA001E */  sh    $t2, 0x1e($t5)
.L800CA648:
/* 0CB248 800CA648 8FA80058 */  lw    $t0, 0x58($sp)
/* 0CB24C 800CA64C 2401000C */  li    $at, 12
/* 0CB250 800CA650 8D18003C */  lw    $t8, 0x3c($t0)
/* 0CB254 800CA654 00000000 */  nop   
/* 0CB258 800CA658 870B0008 */  lh    $t3, 8($t8)
/* 0CB25C 800CA65C 00000000 */  nop   
/* 0CB260 800CA660 15610008 */  bne   $t3, $at, .L800CA684
/* 0CB264 800CA664 00000000 */   nop   
/* 0CB268 800CA668 8FA90058 */  lw    $t1, 0x58($sp)
/* 0CB26C 800CA66C 00000000 */  nop   
/* 0CB270 800CA670 8D2E003C */  lw    $t6, 0x3c($t1)
/* 0CB274 800CA674 00000000 */  nop   
/* 0CB278 800CA678 8DCC000C */  lw    $t4, 0xc($t6)
/* 0CB27C 800CA67C 00000000 */  nop   
/* 0CB280 800CA680 A52C0018 */  sh    $t4, 0x18($t1)
.L800CA684:
/* 0CB284 800CA684 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CB288 800CA688 2401000B */  li    $at, 11
/* 0CB28C 800CA68C 8F2F003C */  lw    $t7, 0x3c($t9)
/* 0CB290 800CA690 00000000 */  nop   
/* 0CB294 800CA694 85EA0008 */  lh    $t2, 8($t7)
/* 0CB298 800CA698 00000000 */  nop   
/* 0CB29C 800CA69C 1541001E */  bne   $t2, $at, .L800CA718
/* 0CB2A0 800CA6A0 00000000 */   nop   
/* 0CB2A4 800CA6A4 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0CB2A8 800CA6A8 00000000 */  nop   
/* 0CB2AC 800CA6AC ADA00030 */  sw    $zero, 0x30($t5)
/* 0CB2B0 800CA6B0 8FA80058 */  lw    $t0, 0x58($sp)
/* 0CB2B4 800CA6B4 00000000 */  nop   
/* 0CB2B8 800CA6B8 8D18003C */  lw    $t8, 0x3c($t0)
/* 0CB2BC 800CA6BC 00000000 */  nop   
/* 0CB2C0 800CA6C0 8F0B000C */  lw    $t3, 0xc($t8)
/* 0CB2C4 800CA6C4 00000000 */  nop   
/* 0CB2C8 800CA6C8 AFAB0040 */  sw    $t3, 0x40($sp)
/* 0CB2CC 800CA6CC 8FAE0040 */  lw    $t6, 0x40($sp)
/* 0CB2D0 800CA6D0 00000000 */  nop   
/* 0CB2D4 800CA6D4 01CE6021 */  addu  $t4, $t6, $t6
/* 0CB2D8 800CA6D8 05810003 */  bgez  $t4, .L800CA6E8
/* 0CB2DC 800CA6DC 000C4843 */   sra   $t1, $t4, 1
/* 0CB2E0 800CA6E0 25810001 */  addiu $at, $t4, 1
/* 0CB2E4 800CA6E4 00014843 */  sra   $t1, $at, 1
.L800CA6E8:
/* 0CB2E8 800CA6E8 AFA90040 */  sw    $t1, 0x40($sp)
/* 0CB2EC 800CA6EC 8FB90040 */  lw    $t9, 0x40($sp)
/* 0CB2F0 800CA6F0 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0CB2F4 800CA6F4 00000000 */  nop   
/* 0CB2F8 800CA6F8 A5F9001A */  sh    $t9, 0x1a($t7)
/* 0CB2FC 800CA6FC 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CB300 800CA700 00000000 */  nop   
/* 0CB304 800CA704 8D4D003C */  lw    $t5, 0x3c($t2)
/* 0CB308 800CA708 00000000 */  nop   
/* 0CB30C 800CA70C 8DA80010 */  lw    $t0, 0x10($t5)
/* 0CB310 800CA710 00000000 */  nop   
/* 0CB314 800CA714 AD480034 */  sw    $t0, 0x34($t2)
.L800CA718:
/* 0CB318 800CA718 8FB80058 */  lw    $t8, 0x58($sp)
/* 0CB31C 800CA71C 24010010 */  li    $at, 16
/* 0CB320 800CA720 8F0B003C */  lw    $t3, 0x3c($t8)
/* 0CB324 800CA724 00000000 */  nop   
/* 0CB328 800CA728 856E0008 */  lh    $t6, 8($t3)
/* 0CB32C 800CA72C 00000000 */  nop   
/* 0CB330 800CA730 15C10018 */  bne   $t6, $at, .L800CA794
/* 0CB334 800CA734 00000000 */   nop   
/* 0CB338 800CA738 8FAC0058 */  lw    $t4, 0x58($sp)
/* 0CB33C 800CA73C 3C0D800E */  lui   $t5, %hi(eqpower) # $t5, 0x800e
/* 0CB340 800CA740 8D89003C */  lw    $t1, 0x3c($t4)
/* 0CB344 800CA744 00000000 */  nop   
/* 0CB348 800CA748 8D39000C */  lw    $t9, 0xc($t1)
/* 0CB34C 800CA74C 00000000 */  nop   
/* 0CB350 800CA750 00197840 */  sll   $t7, $t9, 1
/* 0CB354 800CA754 01AF6821 */  addu  $t5, $t5, $t7
/* 0CB358 800CA758 85AD37A0 */  lh    $t5, %lo(eqpower)($t5)
/* 0CB35C 800CA75C 00000000 */  nop   
/* 0CB360 800CA760 A58D0020 */  sh    $t5, 0x20($t4)
/* 0CB364 800CA764 8FA80058 */  lw    $t0, 0x58($sp)
# This is indexing into eqpower (0x800E37A0) from the end
/* 0CB368 800CA768 3C09800E */  lui   $t1, 0x800e
/* 0CB36C 800CA76C 8D0A003C */  lw    $t2, 0x3c($t0)
/* 0CB370 800CA770 00000000 */  nop   
/* 0CB374 800CA774 8D58000C */  lw    $t8, 0xc($t2)
/* 0CB378 800CA778 00000000 */  nop   
/* 0CB37C 800CA77C 00185823 */  negu  $t3, $t8
/* 0CB380 800CA780 000B7040 */  sll   $t6, $t3, 1
/* 0CB384 800CA784 012E4821 */  addu  $t1, $t1, $t6
/* 0CB388 800CA788 8529389E */  lh    $t1, 0x389e($t1)
/* 0CB38C 800CA78C 00000000 */  nop   
/* 0CB390 800CA790 A5090022 */  sh    $t1, 0x22($t0)
.L800CA794:
/* 0CB394 800CA794 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0CB398 800CA798 24190001 */  li    $t9, 1
/* 0CB39C 800CA79C ADF90038 */  sw    $t9, 0x38($t7)
/* 0CB3A0 800CA7A0 10000062 */  b     .L800CA92C
/* 0CB3A4 800CA7A4 00000000 */   nop   
/* 0CB3A8 800CA7A8 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0CB3AC 800CA7AC 00000000 */  nop   
/* 0CB3B0 800CA7B0 8DAC003C */  lw    $t4, 0x3c($t5)
/* 0CB3B4 800CA7B4 00000000 */  nop   
/* 0CB3B8 800CA7B8 AFAC0028 */  sw    $t4, 0x28($sp)
/* 0CB3BC 800CA7BC 8FAA0028 */  lw    $t2, 0x28($sp)
/* 0CB3C0 800CA7C0 00000000 */  nop   
/* 0CB3C4 800CA7C4 8558000A */  lh    $t8, 0xa($t2)
/* 0CB3C8 800CA7C8 00000000 */  nop   
/* 0CB3CC 800CA7CC 13000007 */  beqz  $t8, .L800CA7EC
/* 0CB3D0 800CA7D0 00000000 */   nop   
/* 0CB3D4 800CA7D4 8FAB0058 */  lw    $t3, 0x58($sp)
/* 0CB3D8 800CA7D8 24050008 */  li    $a1, 8
/* 0CB3DC 800CA7DC 8D790008 */  lw    $t9, 8($t3)
/* 0CB3E0 800CA7E0 00003025 */  move  $a2, $zero
/* 0CB3E4 800CA7E4 0320F809 */  jalr  $t9
/* 0CB3E8 800CA7E8 01602025 */  move  $a0, $t3
.L800CA7EC:
/* 0CB3EC 800CA7EC 8FAE0058 */  lw    $t6, 0x58($sp)
/* 0CB3F0 800CA7F0 8FA90028 */  lw    $t1, 0x28($sp)
/* 0CB3F4 800CA7F4 8DD90008 */  lw    $t9, 8($t6)
/* 0CB3F8 800CA7F8 8D26000C */  lw    $a2, 0xc($t1)
/* 0CB3FC 800CA7FC 24050005 */  li    $a1, 5
/* 0CB400 800CA800 0320F809 */  jalr  $t9
/* 0CB404 800CA804 01C02025 */  move  $a0, $t6
/* 0CB408 800CA808 8FA80058 */  lw    $t0, 0x58($sp)
/* 0CB40C 800CA80C 24050009 */  li    $a1, 9
/* 0CB410 800CA810 8D190008 */  lw    $t9, 8($t0)
/* 0CB414 800CA814 00003025 */  move  $a2, $zero
/* 0CB418 800CA818 0320F809 */  jalr  $t9
/* 0CB41C 800CA81C 01002025 */  move  $a0, $t0
/* 0CB420 800CA820 10000042 */  b     .L800CA92C
/* 0CB424 800CA824 00000000 */   nop   
/* 0CB428 800CA828 8FAF006C */  lw    $t7, 0x6c($sp)
/* 0CB42C 800CA82C 8FAD005C */  lw    $t5, 0x5c($sp)
/* 0CB430 800CA830 8FA40058 */  lw    $a0, 0x58($sp)
/* 0CB434 800CA834 8FA70048 */  lw    $a3, 0x48($sp)
/* 0CB438 800CA838 27A50056 */  addiu $a1, $sp, 0x56
/* 0CB43C 800CA83C 27A60046 */  addiu $a2, $sp, 0x46
/* 0CB440 800CA840 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0CB444 800CA844 0C032B17 */  jal   func_800CAC5C
/* 0CB448 800CA848 AFAD0014 */   sw    $t5, 0x14($sp)
/* 0CB44C 800CA84C AFA2005C */  sw    $v0, 0x5c($sp)
/* 0CB450 800CA850 8FAC0058 */  lw    $t4, 0x58($sp)
/* 0CB454 800CA854 24050004 */  li    $a1, 4
/* 0CB458 800CA858 8D990008 */  lw    $t9, 8($t4)
/* 0CB45C 800CA85C 00003025 */  move  $a2, $zero
/* 0CB460 800CA860 0320F809 */  jalr  $t9
/* 0CB464 800CA864 01802025 */  move  $a0, $t4
/* 0CB468 800CA868 10000030 */  b     .L800CA92C
/* 0CB46C 800CA86C 00000000 */   nop   
/* 0CB470 800CA870 3C0A800E */  lui   $t2, %hi(alGlobals) # $t2, 0x800e
/* 0CB474 800CA874 8D4A3780 */  lw    $t2, %lo(alGlobals)($t2)
/* 0CB478 800CA878 00000000 */  nop   
/* 0CB47C 800CA87C AFAA0024 */  sw    $t2, 0x24($sp)
/* 0CB480 800CA880 8FB80058 */  lw    $t8, 0x58($sp)
/* 0CB484 800CA884 00000000 */  nop   
/* 0CB488 800CA888 8F0B003C */  lw    $t3, 0x3c($t8)
/* 0CB48C 800CA88C 00000000 */  nop   
/* 0CB490 800CA890 AFAB0020 */  sw    $t3, 0x20($sp)
/* 0CB494 800CA894 8FA90020 */  lw    $t1, 0x20($sp)
/* 0CB498 800CA898 00000000 */  nop   
/* 0CB49C 800CA89C 8D2E000C */  lw    $t6, 0xc($t1)
/* 0CB4A0 800CA8A0 00000000 */  nop   
/* 0CB4A4 800CA8A4 ADC000D8 */  sw    $zero, 0xd8($t6)
/* 0CB4A8 800CA8A8 8FA80020 */  lw    $t0, 0x20($sp)
/* 0CB4AC 800CA8AC 8FA40024 */  lw    $a0, 0x24($sp)
/* 0CB4B0 800CA8B0 8D05000C */  lw    $a1, 0xc($t0)
/* 0CB4B4 800CA8B4 0C0195C7 */  jal   __freePVoices
/* 0CB4B8 800CA8B8 00000000 */   nop   
/* 0CB4BC 800CA8BC 1000001B */  b     .L800CA92C
/* 0CB4C0 800CA8C0 00000000 */   nop   
.L800CA8C4:
/* 0CB4C4 800CA8C4 8FAF006C */  lw    $t7, 0x6c($sp)
/* 0CB4C8 800CA8C8 8FAD005C */  lw    $t5, 0x5c($sp)
/* 0CB4CC 800CA8CC 8FA40058 */  lw    $a0, 0x58($sp)
/* 0CB4D0 800CA8D0 8FA70048 */  lw    $a3, 0x48($sp)
/* 0CB4D4 800CA8D4 27A50056 */  addiu $a1, $sp, 0x56
/* 0CB4D8 800CA8D8 27A60046 */  addiu $a2, $sp, 0x46
/* 0CB4DC 800CA8DC AFAF0010 */  sw    $t7, 0x10($sp)
/* 0CB4E0 800CA8E0 0C032B17 */  jal   func_800CAC5C
/* 0CB4E4 800CA8E4 AFAD0014 */   sw    $t5, 0x14($sp)
/* 0CB4E8 800CA8E8 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0CB4EC 800CA8EC 8FAC0058 */  lw    $t4, 0x58($sp)
/* 0CB4F0 800CA8F0 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0CB4F4 800CA8F4 8D990030 */  lw    $t9, 0x30($t4)
/* 0CB4F8 800CA8F8 00000000 */  nop   
/* 0CB4FC 800CA8FC 032AC021 */  addu  $t8, $t9, $t2
/* 0CB500 800CA900 AD980030 */  sw    $t8, 0x30($t4)
/* 0CB504 800CA904 8FAB0058 */  lw    $t3, 0x58($sp)
/* 0CB508 800CA908 00000000 */  nop   
/* 0CB50C 800CA90C 8D69003C */  lw    $t1, 0x3c($t3)
/* 0CB510 800CA910 8D790008 */  lw    $t9, 8($t3)
/* 0CB514 800CA914 85250008 */  lh    $a1, 8($t1)
/* 0CB518 800CA918 8D26000C */  lw    $a2, 0xc($t1)
/* 0CB51C 800CA91C 0320F809 */  jalr  $t9
/* 0CB520 800CA920 01602025 */  move  $a0, $t3
/* 0CB524 800CA924 10000001 */  b     .L800CA92C
/* 0CB528 800CA928 00000000 */   nop   
.L800CA92C:
/* 0CB52C 800CA92C 8FA80048 */  lw    $t0, 0x48($sp)
/* 0CB530 800CA930 87AE0046 */  lh    $t6, 0x46($sp)
/* 0CB534 800CA934 00087840 */  sll   $t7, $t0, 1
/* 0CB538 800CA938 01CF6821 */  addu  $t5, $t6, $t7
/* 0CB53C 800CA93C A7AD0046 */  sh    $t5, 0x46($sp)
/* 0CB540 800CA940 8FAA0068 */  lw    $t2, 0x68($sp)
/* 0CB544 800CA944 8FB80048 */  lw    $t8, 0x48($sp)
/* 0CB548 800CA948 00000000 */  nop   
/* 0CB54C 800CA94C 01586023 */  subu  $t4, $t2, $t8
/* 0CB550 800CA950 AFAC0068 */  sw    $t4, 0x68($sp)
/* 0CB554 800CA954 8FA90058 */  lw    $t1, 0x58($sp)
/* 0CB558 800CA958 00000000 */  nop   
/* 0CB55C 800CA95C 8D2B003C */  lw    $t3, 0x3c($t1)
/* 0CB560 800CA960 00000000 */  nop   
/* 0CB564 800CA964 AFAB003C */  sw    $t3, 0x3c($sp)
/* 0CB568 800CA968 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CB56C 800CA96C 00000000 */  nop   
/* 0CB570 800CA970 8F28003C */  lw    $t0, 0x3c($t9)
/* 0CB574 800CA974 00000000 */  nop   
/* 0CB578 800CA978 8D0E0000 */  lw    $t6, ($t0)
/* 0CB57C 800CA97C 00000000 */  nop   
/* 0CB580 800CA980 AF2E003C */  sw    $t6, 0x3c($t9)
/* 0CB584 800CA984 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0CB588 800CA988 00000000 */  nop   
/* 0CB58C 800CA98C 8DED003C */  lw    $t5, 0x3c($t7)
/* 0CB590 800CA990 00000000 */  nop   
/* 0CB594 800CA994 15A00004 */  bnez  $t5, .L800CA9A8
/* 0CB598 800CA998 00000000 */   nop   
/* 0CB59C 800CA99C 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CB5A0 800CA9A0 00000000 */  nop   
/* 0CB5A4 800CA9A4 AD400040 */  sw    $zero, 0x40($t2)
.L800CA9A8:
/* 0CB5A8 800CA9A8 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0CB5AC 800CA9AC 0C0195A7 */  jal   __freeParam
/* 0CB5B0 800CA9B0 00000000 */   nop   
/* 0CB5B4 800CA9B4 8FB80058 */  lw    $t8, 0x58($sp)
/* 0CB5B8 800CA9B8 00000000 */  nop   
/* 0CB5BC 800CA9BC 8F0C003C */  lw    $t4, 0x3c($t8)
/* 0CB5C0 800CA9C0 00000000 */  nop   
/* 0CB5C4 800CA9C4 1580FDD9 */  bnez  $t4, .L800CA12C
/* 0CB5C8 800CA9C8 00000000 */   nop   
.L800CA9CC:
/* 0CB5CC 800CA9CC 8FA90058 */  lw    $t1, 0x58($sp)
/* 0CB5D0 800CA9D0 24010001 */  li    $at, 1
/* 0CB5D4 800CA9D4 8D2B0048 */  lw    $t3, 0x48($t1)
/* 0CB5D8 800CA9D8 00000000 */  nop   
/* 0CB5DC 800CA9DC 15610011 */  bne   $t3, $at, .L800CAA24
/* 0CB5E0 800CA9E0 00000000 */   nop   
/* 0CB5E4 800CA9E4 8FA8006C */  lw    $t0, 0x6c($sp)
/* 0CB5E8 800CA9E8 8FAE005C */  lw    $t6, 0x5c($sp)
/* 0CB5EC 800CA9EC 8FA40058 */  lw    $a0, 0x58($sp)
/* 0CB5F0 800CA9F0 8FA70068 */  lw    $a3, 0x68($sp)
/* 0CB5F4 800CA9F4 27A50056 */  addiu $a1, $sp, 0x56
/* 0CB5F8 800CA9F8 27A60046 */  addiu $a2, $sp, 0x46
/* 0CB5FC 800CA9FC AFA80010 */  sw    $t0, 0x10($sp)
/* 0CB600 800CAA00 0C032B17 */  jal   func_800CAC5C
/* 0CB604 800CAA04 AFAE0014 */   sw    $t6, 0x14($sp)
/* 0CB608 800CAA08 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0CB60C 800CAA0C 8FB90058 */  lw    $t9, 0x58($sp)
/* 0CB610 800CAA10 8FAD0068 */  lw    $t5, 0x68($sp)
/* 0CB614 800CAA14 8F2F0030 */  lw    $t7, 0x30($t9)
/* 0CB618 800CAA18 00000000 */  nop   
/* 0CB61C 800CAA1C 01ED5021 */  addu  $t2, $t7, $t5
/* 0CB620 800CAA20 AF2A0030 */  sw    $t2, 0x30($t9)
.L800CAA24:
/* 0CB624 800CAA24 8FB80058 */  lw    $t8, 0x58($sp)
/* 0CB628 800CAA28 00000000 */  nop   
/* 0CB62C 800CAA2C 8F0C0030 */  lw    $t4, 0x30($t8)
/* 0CB630 800CAA30 8F090034 */  lw    $t1, 0x34($t8)
/* 0CB634 800CAA34 00000000 */  nop   
/* 0CB638 800CAA38 012C082A */  slt   $at, $t1, $t4
/* 0CB63C 800CAA3C 10200006 */  beqz  $at, .L800CAA58
/* 0CB640 800CAA40 00000000 */   nop   
/* 0CB644 800CAA44 8FAB0058 */  lw    $t3, 0x58($sp)
/* 0CB648 800CAA48 00000000 */  nop   
/* 0CB64C 800CAA4C 8D680034 */  lw    $t0, 0x34($t3)
/* 0CB650 800CAA50 00000000 */  nop   
/* 0CB654 800CAA54 AD680030 */  sw    $t0, 0x30($t3)
.L800CAA58:
/* 0CB658 800CAA58 8FA2005C */  lw    $v0, 0x5c($sp)
/* 0CB65C 800CAA5C 10000003 */  b     .L800CAA6C
/* 0CB660 800CAA60 00000000 */   nop   
/* 0CB664 800CAA64 10000001 */  b     .L800CAA6C
/* 0CB668 800CAA68 00000000 */   nop   
.L800CAA6C:
/* 0CB66C 800CAA6C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CB670 800CAA70 27BD0060 */  addiu $sp, $sp, 0x60
/* 0CB674 800CAA74 03E00008 */  jr    $ra
/* 0CB678 800CAA78 00000000 */   nop   

