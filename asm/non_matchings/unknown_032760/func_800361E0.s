.late_rodata
glabel D_800E6028
.double 1.2
glabel D_800E6030
.double 300.0
glabel D_800E6038
.double 0.05
glabel D_800E6040
.double 0.05

.text
glabel func_800361E0
/* 036DE0 800361E0 27BDFF80 */  addiu $sp, $sp, -0x80
/* 036DE4 800361E4 44853000 */  mtc1  $a1, $f6
/* 036DE8 800361E8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 036DEC 800361EC AFB10028 */  sw    $s1, 0x28($sp)
/* 036DF0 800361F0 AFB00024 */  sw    $s0, 0x24($sp)
/* 036DF4 800361F4 AFA50084 */  sw    $a1, 0x84($sp)
/* 036DF8 800361F8 3C0F8000 */  lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 036DFC 800361FC 46803020 */  cvt.s.w $f0, $f6
/* 036E00 80036200 C4840010 */  lwc1  $f4, 0x10($a0)
/* 036E04 80036204 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 036E08 80036208 00808025 */  move  $s0, $a0
/* 036E0C 8003620C 46000086 */  mov.s $f2, $f0
/* 036E10 80036210 15E00007 */  bnez  $t7, .L80036230
/* 036E14 80036214 E7A4006C */   swc1  $f4, 0x6c($sp)
/* 036E18 80036218 3C01800E */  lui   $at, %hi(D_800E6028 + 4) # $at, 0x800e
/* 036E1C 8003621C C42B6028 */  lwc1  $f11, %lo(D_800E6028)($at)
/* 036E20 80036220 C42A602C */  lwc1  $f10, %lo(D_800E6028 + 4)($at)
/* 036E24 80036224 46000221 */  cvt.d.s $f8, $f0
/* 036E28 80036228 462A4482 */  mul.d $f18, $f8, $f10
/* 036E2C 8003622C 462090A0 */  cvt.s.d $f2, $f18
.L80036230:
/* 036E30 80036230 86180018 */  lh    $t8, 0x18($s0)
/* 036E34 80036234 8E110064 */  lw    $s1, 0x64($s0)
/* 036E38 80036238 1700000D */  bnez  $t8, .L80036270
/* 036E3C 8003623C 00000000 */   nop   
/* 036E40 80036240 C6260004 */  lwc1  $f6, 4($s1)
/* 036E44 80036244 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 036E48 80036248 44812800 */  mtc1  $at, $f5
/* 036E4C 8003624C 44802000 */  mtc1  $zero, $f4
/* 036E50 80036250 46003221 */  cvt.d.s $f8, $f6
/* 036E54 80036254 4628203C */  c.lt.d $f4, $f8
/* 036E58 80036258 00000000 */  nop   
/* 036E5C 8003625C 45000004 */  bc1f  .L80036270
/* 036E60 80036260 00000000 */   nop   
/* 036E64 80036264 44805000 */  mtc1  $zero, $f10
/* 036E68 80036268 00000000 */  nop   
/* 036E6C 8003626C E62A0004 */  swc1  $f10, 4($s1)
.L80036270:
/* 036E70 80036270 0C01AF6C */  jal   func_8006BDB0
/* 036E74 80036274 E7A2007C */   swc1  $f2, 0x7c($sp)
/* 036E78 80036278 44800000 */  mtc1  $zero, $f0
/* 036E7C 8003627C AFA2004C */  sw    $v0, 0x4c($sp)
/* 036E80 80036280 E7A00070 */  swc1  $f0, 0x70($sp)
/* 036E84 80036284 00002025 */  move  $a0, $zero
/* 036E88 80036288 E600001C */  swc1  $f0, 0x1c($s0)
/* 036E8C 8003628C 0C006EB2 */  jal   getPlayerStruct
/* 036E90 80036290 E6000024 */   swc1  $f0, 0x24($s0)
/* 036E94 80036294 00402825 */  move  $a1, $v0
/* 036E98 80036298 10400042 */  beqz  $v0, .L800363A4
/* 036E9C 8003629C AFA20064 */   sw    $v0, 0x64($sp)
/* 036EA0 800362A0 8C420064 */  lw    $v0, 0x64($v0)
/* 036EA4 800362A4 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 036EA8 800362A8 44810000 */  mtc1  $at, $f0
/* 036EAC 800362AC C4460038 */  lwc1  $f6, 0x38($v0)
/* 036EB0 800362B0 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 036EB4 800362B4 46003102 */  mul.s $f4, $f6, $f0
/* 036EB8 800362B8 44811000 */  mtc1  $at, $f2
/* 036EBC 800362BC C44A0050 */  lwc1  $f10, 0x50($v0)
/* 036EC0 800362C0 C4B2000C */  lwc1  $f18, 0xc($a1)
/* 036EC4 800362C4 46025182 */  mul.s $f6, $f10, $f2
/* 036EC8 800362C8 46049201 */  sub.s $f8, $f18, $f4
/* 036ECC 800362CC C604000C */  lwc1  $f4, 0xc($s0)
/* 036ED0 800362D0 C4AA0014 */  lwc1  $f10, 0x14($a1)
/* 036ED4 800362D4 46064481 */  sub.s $f18, $f8, $f6
/* 036ED8 800362D8 C4480040 */  lwc1  $f8, 0x40($v0)
/* 036EDC 800362DC 46049381 */  sub.s $f14, $f18, $f4
/* 036EE0 800362E0 C4440058 */  lwc1  $f4, 0x58($v0)
/* 036EE4 800362E4 46004182 */  mul.s $f6, $f8, $f0
/* 036EE8 800362E8 00000000 */  nop   
/* 036EEC 800362EC 46022202 */  mul.s $f8, $f4, $f2
/* 036EF0 800362F0 46065481 */  sub.s $f18, $f10, $f6
/* 036EF4 800362F4 C6060014 */  lwc1  $f6, 0x14($s0)
/* 036EF8 800362F8 E7AE0078 */  swc1  $f14, 0x78($sp)
/* 036EFC 800362FC 46089281 */  sub.s $f10, $f18, $f8
/* 036F00 80036300 AFA50064 */  sw    $a1, 0x64($sp)
/* 036F04 80036304 460E7102 */  mul.s $f4, $f14, $f14
/* 036F08 80036308 46065401 */  sub.s $f16, $f10, $f6
/* 036F0C 8003630C AFA20050 */  sw    $v0, 0x50($sp)
/* 036F10 80036310 E7B00074 */  swc1  $f16, 0x74($sp)
/* 036F14 80036314 46108482 */  mul.s $f18, $f16, $f16
/* 036F18 80036318 0C0326B4 */  jal   sqrtf
/* 036F1C 8003631C 46122300 */   add.s $f12, $f4, $f18
/* 036F20 80036320 E7A00070 */  swc1  $f0, 0x70($sp)
/* 036F24 80036324 8FA20064 */  lw    $v0, 0x64($sp)
/* 036F28 80036328 C6040014 */  lwc1  $f4, 0x14($s0)
/* 036F2C 8003632C C60A000C */  lwc1  $f10, 0xc($s0)
/* 036F30 80036330 C448000C */  lwc1  $f8, 0xc($v0)
/* 036F34 80036334 C4460014 */  lwc1  $f6, 0x14($v0)
/* 036F38 80036338 460A4301 */  sub.s $f12, $f8, $f10
/* 036F3C 8003633C 0C01C1D4 */  jal   func_80070750
/* 036F40 80036340 46043381 */   sub.s $f14, $f6, $f4
/* 036F44 80036344 8FB90064 */  lw    $t9, 0x64($sp)
/* 036F48 80036348 34018001 */  li    $at, 32769
/* 036F4C 8003634C 87280000 */  lh    $t0, ($t9)
/* 036F50 80036350 240C0001 */  li    $t4, 1
/* 036F54 80036354 3109FFFF */  andi  $t1, $t0, 0xffff
/* 036F58 80036358 00491823 */  subu  $v1, $v0, $t1
/* 036F5C 8003635C 0061082A */  slt   $at, $v1, $at
/* 036F60 80036360 14200004 */  bnez  $at, .L80036374
/* 036F64 80036364 28618000 */   slti  $at, $v1, -0x8000
/* 036F68 80036368 3C03FFFF */  lui   $v1, (0xFFFF0001 >> 16) # lui $v1, 0xffff
/* 036F6C 8003636C 34630001 */  ori   $v1, (0xFFFF0001 & 0xFFFF) # ori $v1, $v1, 1
/* 036F70 80036370 28618000 */  slti  $at, $v1, -0x8000
.L80036374:
/* 036F74 80036374 10200003 */  beqz  $at, .L80036384
/* 036F78 80036378 8FAA0050 */   lw    $t2, 0x50($sp)
/* 036F7C 8003637C 3403FFFF */  li    $v1, 65535
/* 036F80 80036380 8FAA0050 */  lw    $t2, 0x50($sp)
.L80036384:
/* 036F84 80036384 AFA3005C */  sw    $v1, 0x5c($sp)
/* 036F88 80036388 8D4B0108 */  lw    $t3, 0x108($t2)
/* 036F8C 8003638C 00000000 */  nop   
/* 036F90 80036390 11600004 */  beqz  $t3, .L800363A4
/* 036F94 80036394 00000000 */   nop   
/* 036F98 80036398 AE000078 */  sw    $zero, 0x78($s0)
/* 036F9C 8003639C AE0C007C */  sw    $t4, 0x7c($s0)
/* 036FA0 800363A0 AFA3005C */  sw    $v1, 0x5c($sp)
.L800363A4:
/* 036FA4 800363A4 0C01A955 */  jal   get_button_inputs_from_player
/* 036FA8 800363A8 00002025 */   move  $a0, $zero
/* 036FAC 800363AC 8E0D0078 */  lw    $t5, 0x78($s0)
/* 036FB0 800363B0 8FA3005C */  lw    $v1, 0x5c($sp)
/* 036FB4 800363B4 15A00047 */  bnez  $t5, .L800364D4
/* 036FB8 800363B8 3C01800E */   lui   $at, %hi(D_800E6030 + 4) # $at, 0x800e
/* 036FBC 800363BC C7B20070 */  lwc1  $f18, 0x70($sp)
/* 036FC0 800363C0 C42B6030 */  lwc1  $f11, %lo(D_800E6030)($at)
/* 036FC4 800363C4 C42A6034 */  lwc1  $f10, %lo(D_800E6030 + 4)($at)
/* 036FC8 800363C8 46009221 */  cvt.d.s $f8, $f18
/* 036FCC 800363CC 462A403C */  c.lt.d $f8, $f10
/* 036FD0 800363D0 00000000 */  nop   
/* 036FD4 800363D4 4500003F */  bc1f  .L800364D4
/* 036FD8 800363D8 00000000 */   nop   
/* 036FDC 800363DC 8E0E007C */  lw    $t6, 0x7c($s0)
/* 036FE0 800363E0 2861E001 */  slti  $at, $v1, -0x1fff
/* 036FE4 800363E4 15C0003B */  bnez  $t6, .L800364D4
/* 036FE8 800363E8 00000000 */   nop   
/* 036FEC 800363EC 14200039 */  bnez  $at, .L800364D4
/* 036FF0 800363F0 28612000 */   slti  $at, $v1, 0x2000
/* 036FF4 800363F4 10200037 */  beqz  $at, .L800364D4
/* 036FF8 800363F8 00000000 */   nop   
/* 036FFC 800363FC 8E03004C */  lw    $v1, 0x4c($s0)
/* 037000 80036400 8FB90064 */  lw    $t9, 0x64($sp)
/* 037004 80036404 846F0014 */  lh    $t7, 0x14($v1)
/* 037008 80036408 30492000 */  andi  $t1, $v0, 0x2000
/* 03700C 8003640C 31F80008 */  andi  $t8, $t7, 8
/* 037010 80036410 13000005 */  beqz  $t8, .L80036428
/* 037014 80036414 00000000 */   nop   
/* 037018 80036418 8C680000 */  lw    $t0, ($v1)
/* 03701C 8003641C 00000000 */  nop   
/* 037020 80036420 13280003 */  beq   $t9, $t0, .L80036430
/* 037024 80036424 304A2000 */   andi  $t2, $v0, 0x2000
.L80036428:
/* 037028 80036428 1120002A */  beqz  $t1, .L800364D4
/* 03702C 8003642C 304A2000 */   andi  $t2, $v0, 0x2000
.L80036430:
/* 037030 80036430 11400006 */  beqz  $t2, .L8003644C
/* 037034 80036434 240B0001 */   li    $t3, 1
/* 037038 80036438 8FA40064 */  lw    $a0, 0x64($sp)
/* 03703C 8003643C 8FA50050 */  lw    $a1, 0x50($sp)
/* 037040 80036440 0C015A4C */  jal   func_80056930
/* 037044 80036444 00000000 */   nop   
/* 037048 80036448 240B0001 */  li    $t3, 1
.L8003644C:
/* 03704C 8003644C AE0B0078 */  sw    $t3, 0x78($s0)
/* 037050 80036450 262C0012 */  addiu $t4, $s1, 0x12
/* 037054 80036454 262D0013 */  addiu $t5, $s1, 0x13
/* 037058 80036458 AFAD0014 */  sw    $t5, 0x14($sp)
/* 03705C 8003645C AFAC0010 */  sw    $t4, 0x10($sp)
/* 037060 80036460 00002025 */  move  $a0, $zero
/* 037064 80036464 26250020 */  addiu $a1, $s1, 0x20
/* 037068 80036468 26260022 */  addiu $a2, $s1, 0x22
/* 03706C 8003646C 0C00C1D4 */  jal   func_80030750
/* 037070 80036470 26270011 */   addiu $a3, $s1, 0x11
/* 037074 80036474 240E0384 */  li    $t6, 900
/* 037078 80036478 240F03E6 */  li    $t7, 998
/* 03707C 8003647C 241800F0 */  li    $t8, 240
/* 037080 80036480 AFB80018 */  sw    $t8, 0x18($sp)
/* 037084 80036484 AFAF0014 */  sw    $t7, 0x14($sp)
/* 037088 80036488 AFAE0010 */  sw    $t6, 0x10($sp)
/* 03708C 8003648C 00002025 */  move  $a0, $zero
/* 037090 80036490 24050080 */  li    $a1, 128
/* 037094 80036494 24060080 */  li    $a2, 128
/* 037098 80036498 0C00C378 */  jal   func_80030DE0
/* 03709C 8003649C 240700FF */   li    $a3, 255
/* 0370A0 800364A0 0C0004BA */  jal   func_800012E8
/* 0370A4 800364A4 00000000 */   nop   
/* 0370A8 800364A8 0C0002CD */  jal   play_music
/* 0370AC 800364AC 24040024 */   li    $a0, 36
/* 0370B0 800364B0 8FB90064 */  lw    $t9, 0x64($sp)
/* 0370B4 800364B4 00000000 */  nop   
/* 0370B8 800364B8 13200006 */  beqz  $t9, .L800364D4
/* 0370BC 800364BC 00000000 */   nop   
/* 0370C0 800364C0 0C001AB2 */  jal   func_80006AC8
/* 0370C4 800364C4 03202025 */   move  $a0, $t9
/* 0370C8 800364C8 8FA80050 */  lw    $t0, 0x50($sp)
/* 0370CC 800364CC 00000000 */  nop   
/* 0370D0 800364D0 AD000118 */  sw    $zero, 0x118($t0)
.L800364D4:
/* 0370D4 800364D4 8E020078 */  lw    $v0, 0x78($s0)
/* 0370D8 800364D8 00000000 */  nop   
/* 0370DC 800364DC 10400008 */  beqz  $v0, .L80036500
/* 0370E0 800364E0 28410002 */   slti  $at, $v0, 2
/* 0370E4 800364E4 0C0168EC */  jal   func_8005A3B0
/* 0370E8 800364E8 00000000 */   nop   
/* 0370EC 800364EC 0C02AC65 */  jal   func_800AB194
/* 0370F0 800364F0 24040003 */   li    $a0, 3
/* 0370F4 800364F4 8E020078 */  lw    $v0, 0x78($s0)
/* 0370F8 800364F8 00000000 */  nop   
/* 0370FC 800364FC 28410002 */  slti  $at, $v0, 2
.L80036500:
/* 037100 80036500 14200005 */  bnez  $at, .L80036518
/* 037104 80036504 00000000 */   nop   
/* 037108 80036508 0C0273FB */  jal   func_8009CFEC
/* 03710C 8003650C 24040002 */   li    $a0, 2
/* 037110 80036510 10000004 */  b     .L80036524
/* 037114 80036514 00401825 */   move  $v1, $v0
.L80036518:
/* 037118 80036518 0C0273DA */  jal   func_8009CF68
/* 03711C 8003651C 24040002 */   li    $a0, 2
/* 037120 80036520 00001825 */  move  $v1, $zero
.L80036524:
/* 037124 80036524 8E020078 */  lw    $v0, 0x78($s0)
/* 037128 80036528 24010001 */  li    $at, 1
/* 03712C 8003652C 1041000A */  beq   $v0, $at, .L80036558
/* 037130 80036530 240900FF */   li    $t1, 255
/* 037134 80036534 24010002 */  li    $at, 2
/* 037138 80036538 10410078 */  beq   $v0, $at, .L8003671C
/* 03713C 8003653C 24010003 */   li    $at, 3
/* 037140 80036540 104100C4 */  beq   $v0, $at, .L80036854
/* 037144 80036544 24010004 */   li    $at, 4
/* 037148 80036548 10410118 */  beq   $v0, $at, .L800369AC
/* 03714C 8003654C 00000000 */   nop   
/* 037150 80036550 10000127 */  b     .L800369F0
/* 037154 80036554 02202025 */   move  $a0, $s1
.L80036558:
/* 037158 80036558 A200003B */  sb    $zero, 0x3b($s0)
/* 03715C 8003655C A229000D */  sb    $t1, 0xd($s1)
/* 037160 80036560 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 037164 80036564 3C014059 */  li    $at, 0x40590000 # 3.390625
/* 037168 80036568 44812800 */  mtc1  $at, $f5
/* 03716C 8003656C 44802000 */  mtc1  $zero, $f4
/* 037170 80036570 46003021 */  cvt.d.s $f0, $f6
/* 037174 80036574 4624003C */  c.lt.d $f0, $f4
/* 037178 80036578 00000000 */  nop   
/* 03717C 8003657C 45000008 */  bc1f  .L800365A0
/* 037180 80036580 3C014024 */   lui   $at, 0x4024
/* 037184 80036584 E7A10038 */  swc1  $f1, 0x38($sp)
/* 037188 80036588 0C0168F0 */  jal   func_8005A3C0
/* 03718C 8003658C E7A0003C */   swc1  $f0, 0x3c($sp)
/* 037190 80036590 C7A10038 */  lwc1  $f1, 0x38($sp)
/* 037194 80036594 C7A0003C */  lwc1  $f0, 0x3c($sp)
/* 037198 80036598 00000000 */  nop   
/* 03719C 8003659C 3C014024 */  li    $at, 0x40240000 # 2.562500
.L800365A0:
/* 0371A0 800365A0 44819800 */  mtc1  $at, $f19
/* 0371A4 800365A4 44809000 */  mtc1  $zero, $f18
/* 0371A8 800365A8 C7A80078 */  lwc1  $f8, 0x78($sp)
/* 0371AC 800365AC 4620903C */  c.lt.d $f18, $f0
/* 0371B0 800365B0 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* 0371B4 800365B4 45000046 */  bc1f  .L800366D0
/* 0371B8 800365B8 240D0002 */   li    $t5, 2
/* 0371BC 800365BC C7A60074 */  lwc1  $f6, 0x74($sp)
/* 0371C0 800365C0 460A4303 */  div.s $f12, $f8, $f10
/* 0371C4 800365C4 0C01C1D4 */  jal   func_80070750
/* 0371C8 800365C8 460A3383 */   div.s $f14, $f6, $f10
/* 0371CC 800365CC 86040000 */  lh    $a0, ($s0)
/* 0371D0 800365D0 34018000 */  li    $at, 32768
/* 0371D4 800365D4 308AFFFF */  andi  $t2, $a0, 0xffff
/* 0371D8 800365D8 004A1823 */  subu  $v1, $v0, $t2
/* 0371DC 800365DC 00611821 */  addu  $v1, $v1, $at
/* 0371E0 800365E0 34018001 */  li    $at, 32769
/* 0371E4 800365E4 0061082A */  slt   $at, $v1, $at
/* 0371E8 800365E8 14200003 */  bnez  $at, .L800365F8
/* 0371EC 800365EC 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 0371F0 800365F0 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 0371F4 800365F4 00611821 */  addu  $v1, $v1, $at
.L800365F8:
/* 0371F8 800365F8 28618000 */  slti  $at, $v1, -0x8000
/* 0371FC 800365FC 10200002 */  beqz  $at, .L80036608
/* 037200 80036600 3401FFFF */   li    $at, 65535
/* 037204 80036604 00611821 */  addu  $v1, $v1, $at
.L80036608:
/* 037208 80036608 18600004 */  blez  $v1, .L8003661C
/* 03720C 8003660C 28610010 */   slti  $at, $v1, 0x10
/* 037210 80036610 10200003 */  beqz  $at, .L80036620
/* 037214 80036614 3C01C000 */   lui   $at, 0xc000
/* 037218 80036618 24030010 */  li    $v1, 16
.L8003661C:
/* 03721C 8003661C 3C01C000 */  li    $at, 0xC0000000 # -2.000000
.L80036620:
/* 037220 80036620 00035903 */  sra   $t3, $v1, 4
/* 037224 80036624 44811000 */  mtc1  $at, $f2
/* 037228 80036628 008B6021 */  addu  $t4, $a0, $t3
/* 03722C 8003662C 28610801 */  slti  $at, $v1, 0x801
/* 037230 80036630 10200003 */  beqz  $at, .L80036640
/* 037234 80036634 A60C0000 */   sh    $t4, ($s0)
/* 037238 80036638 2861F800 */  slti  $at, $v1, -0x800
/* 03723C 8003663C 10200003 */  beqz  $at, .L8003664C
.L80036640:
/* 037240 80036640 3C01BF00 */   li    $at, 0xBF000000 # -0.500000
/* 037244 80036644 44811000 */  mtc1  $at, $f2
/* 037248 80036648 00000000 */  nop   
.L8003664C:
/* 03724C 8003664C C6200014 */  lwc1  $f0, 0x14($s1)
/* 037250 80036650 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 037254 80036654 46001101 */  sub.s $f4, $f2, $f0
/* 037258 80036658 44814800 */  mtc1  $at, $f9
/* 03725C 8003665C 44804000 */  mtc1  $zero, $f8
/* 037260 80036660 460024A1 */  cvt.d.s $f18, $f4
/* 037264 80036664 46289182 */  mul.d $f6, $f18, $f8
/* 037268 80036668 460002A1 */  cvt.d.s $f10, $f0
/* 03726C 8003666C 46265100 */  add.d $f4, $f10, $f6
/* 037270 80036670 462024A0 */  cvt.s.d $f18, $f4
/* 037274 80036674 E6320014 */  swc1  $f18, 0x14($s1)
/* 037278 80036678 86040000 */  lh    $a0, ($s0)
/* 03727C 8003667C 0C01C1F1 */  jal   func_800707C4
/* 037280 80036680 00000000 */   nop   
/* 037284 80036684 C6280014 */  lwc1  $f8, 0x14($s1)
/* 037288 80036688 86040000 */  lh    $a0, ($s0)
/* 03728C 8003668C 46080282 */  mul.s $f10, $f0, $f8
/* 037290 80036690 0C01C1FE */  jal   func_800707F8
/* 037294 80036694 E60A001C */   swc1  $f10, 0x1c($s0)
/* 037298 80036698 C6260014 */  lwc1  $f6, 0x14($s1)
/* 03729C 8003669C C7A2007C */  lwc1  $f2, 0x7c($sp)
/* 0372A0 800366A0 46060102 */  mul.s $f4, $f0, $f6
/* 0372A4 800366A4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0372A8 800366A8 44814000 */  mtc1  $at, $f8
/* 0372AC 800366AC E6040024 */  swc1  $f4, 0x24($s0)
/* 0372B0 800366B0 C6320014 */  lwc1  $f18, 0x14($s1)
/* 0372B4 800366B4 C6240004 */  lwc1  $f4, 4($s1)
/* 0372B8 800366B8 46089282 */  mul.s $f10, $f18, $f8
/* 0372BC 800366BC 00000000 */  nop   
/* 0372C0 800366C0 46025182 */  mul.s $f6, $f10, $f2
/* 0372C4 800366C4 46062481 */  sub.s $f18, $f4, $f6
/* 0372C8 800366C8 10000004 */  b     .L800366DC
/* 0372CC 800366CC E6320004 */   swc1  $f18, 4($s1)
.L800366D0:
/* 0372D0 800366D0 AE0D0078 */  sw    $t5, 0x78($s0)
/* 0372D4 800366D4 C7A2007C */  lwc1  $f2, 0x7c($sp)
/* 0372D8 800366D8 00000000 */  nop   
.L800366DC:
/* 0372DC 800366DC C608001C */  lwc1  $f8, 0x1c($s0)
/* 0372E0 800366E0 C6040020 */  lwc1  $f4, 0x20($s0)
/* 0372E4 800366E4 46024282 */  mul.s $f10, $f8, $f2
/* 0372E8 800366E8 C6120024 */  lwc1  $f18, 0x24($s0)
/* 0372EC 800366EC 02002025 */  move  $a0, $s0
/* 0372F0 800366F0 46022182 */  mul.s $f6, $f4, $f2
/* 0372F4 800366F4 44055000 */  mfc1  $a1, $f10
/* 0372F8 800366F8 46029202 */  mul.s $f8, $f18, $f2
/* 0372FC 800366FC 44063000 */  mfc1  $a2, $f6
/* 037300 80036700 44074000 */  mfc1  $a3, $f8
/* 037304 80036704 0C00455C */  jal   func_80011570
/* 037308 80036708 00000000 */   nop   
/* 03730C 8003670C 0C01BCE2 */  jal   func_8006F388
/* 037310 80036710 24040001 */   li    $a0, 1
/* 037314 80036714 100000E7 */  b     .L80036AB4
/* 037318 80036718 C7AA006C */   lwc1  $f10, 0x6c($sp)
.L8003671C:
/* 03731C 8003671C 0C0168F0 */  jal   func_8005A3C0
/* 037320 80036720 00000000 */   nop   
/* 037324 80036724 C7A2007C */  lwc1  $f2, 0x7c($sp)
/* 037328 80036728 3C014008 */  li    $at, 0x40080000 # 2.125000
/* 03732C 8003672C 44815800 */  mtc1  $at, $f11
/* 037330 80036730 44805000 */  mtc1  $zero, $f10
/* 037334 80036734 46001121 */  cvt.d.s $f4, $f2
/* 037338 80036738 46245182 */  mul.d $f6, $f10, $f4
/* 03733C 8003673C A200003B */  sb    $zero, 0x3b($s0)
/* 037340 80036740 C6320004 */  lwc1  $f18, 4($s1)
/* 037344 80036744 34018000 */  li    $at, 32768
/* 037348 80036748 46009221 */  cvt.d.s $f8, $f18
/* 03734C 8003674C 46264280 */  add.d $f10, $f8, $f6
/* 037350 80036750 46205120 */  cvt.s.d $f4, $f10
/* 037354 80036754 E6240004 */  swc1  $f4, 4($s1)
/* 037358 80036758 8FAE0064 */  lw    $t6, 0x64($sp)
/* 03735C 8003675C 86040000 */  lh    $a0, ($s0)
/* 037360 80036760 85CF0000 */  lh    $t7, ($t6)
/* 037364 80036764 3098FFFF */  andi  $t8, $a0, 0xffff
/* 037368 80036768 01F81823 */  subu  $v1, $t7, $t8
/* 03736C 8003676C 00611821 */  addu  $v1, $v1, $at
/* 037370 80036770 34018001 */  li    $at, 32769
/* 037374 80036774 0061082A */  slt   $at, $v1, $at
/* 037378 80036778 14200003 */  bnez  $at, .L80036788
/* 03737C 8003677C 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 037380 80036780 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 037384 80036784 00611821 */  addu  $v1, $v1, $at
.L80036788:
/* 037388 80036788 28618000 */  slti  $at, $v1, -0x8000
/* 03738C 8003678C 10200002 */  beqz  $at, .L80036798
/* 037390 80036790 3401FFFF */   li    $at, 65535
/* 037394 80036794 00611821 */  addu  $v1, $v1, $at
.L80036798:
/* 037398 80036798 18600004 */  blez  $v1, .L800367AC
/* 03739C 8003679C 28610010 */   slti  $at, $v1, 0x10
/* 0373A0 800367A0 10200002 */  beqz  $at, .L800367AC
/* 0373A4 800367A4 00000000 */   nop   
/* 0373A8 800367A8 24030010 */  li    $v1, 16
.L800367AC:
/* 0373AC 800367AC 3C01800E */  lui   $at, %hi(D_800E6038 + 4) # $at, 0x800e
/* 0373B0 800367B0 0003C903 */  sra   $t9, $v1, 4
/* 0373B4 800367B4 C4216038 */  lwc1  $f1, %lo(D_800E6038)($at)
/* 0373B8 800367B8 C420603C */  lwc1  $f0, %lo(D_800E6038 + 4)($at)
/* 0373BC 800367BC 00994021 */  addu  $t0, $a0, $t9
/* 0373C0 800367C0 A6080000 */  sh    $t0, ($s0)
/* 0373C4 800367C4 C7B20078 */  lwc1  $f18, 0x78($sp)
/* 0373C8 800367C8 28610500 */  slti  $at, $v1, 0x500
/* 0373CC 800367CC 46009221 */  cvt.d.s $f8, $f18
/* 0373D0 800367D0 46204182 */  mul.d $f6, $f8, $f0
/* 0373D4 800367D4 462032A0 */  cvt.s.d $f10, $f6
/* 0373D8 800367D8 E60A001C */  swc1  $f10, 0x1c($s0)
/* 0373DC 800367DC C7A40074 */  lwc1  $f4, 0x74($sp)
/* 0373E0 800367E0 00000000 */  nop   
/* 0373E4 800367E4 460024A1 */  cvt.d.s $f18, $f4
/* 0373E8 800367E8 46209202 */  mul.d $f8, $f18, $f0
/* 0373EC 800367EC 462041A0 */  cvt.s.d $f6, $f8
/* 0373F0 800367F0 1020000A */  beqz  $at, .L8003681C
/* 0373F4 800367F4 E6060024 */   swc1  $f6, 0x24($s0)
/* 0373F8 800367F8 2861FB01 */  slti  $at, $v1, -0x4ff
/* 0373FC 800367FC 14200007 */  bnez  $at, .L8003681C
/* 037400 80036800 24090003 */   li    $t1, 3
/* 037404 80036804 AE090078 */  sw    $t1, 0x78($s0)
/* 037408 80036808 24040141 */  li    $a0, 321
/* 03740C 8003680C 0C00DAF3 */  jal   func_80036BCC
/* 037410 80036810 24050001 */   li    $a1, 1
/* 037414 80036814 C7A2007C */  lwc1  $f2, 0x7c($sp)
/* 037418 80036818 00000000 */  nop   
.L8003681C:
/* 03741C 8003681C C60A001C */  lwc1  $f10, 0x1c($s0)
/* 037420 80036820 C6120020 */  lwc1  $f18, 0x20($s0)
/* 037424 80036824 46025102 */  mul.s $f4, $f10, $f2
/* 037428 80036828 C6060024 */  lwc1  $f6, 0x24($s0)
/* 03742C 8003682C 02002025 */  move  $a0, $s0
/* 037430 80036830 46029202 */  mul.s $f8, $f18, $f2
/* 037434 80036834 44052000 */  mfc1  $a1, $f4
/* 037438 80036838 46023282 */  mul.s $f10, $f6, $f2
/* 03743C 8003683C 44064000 */  mfc1  $a2, $f8
/* 037440 80036840 44075000 */  mfc1  $a3, $f10
/* 037444 80036844 0C00455C */  jal   func_80011570
/* 037448 80036848 00000000 */   nop   
/* 03744C 8003684C 10000099 */  b     .L80036AB4
/* 037450 80036850 C7AA006C */   lwc1  $f10, 0x6c($sp)
.L80036854:
/* 037454 80036854 3C01800E */  lui   $at, %hi(D_800E6040 + 4) # $at, 0x800e
/* 037458 80036858 C7A40078 */  lwc1  $f4, 0x78($sp)
/* 03745C 8003685C C4216040 */  lwc1  $f1, %lo(D_800E6040)($at)
/* 037460 80036860 C4206044 */  lwc1  $f0, %lo(D_800E6040 + 4)($at)
/* 037464 80036864 460024A1 */  cvt.d.s $f18, $f4
/* 037468 80036868 46209202 */  mul.d $f8, $f18, $f0
/* 03746C 8003686C 240A0001 */  li    $t2, 1
/* 037470 80036870 462041A0 */  cvt.s.d $f6, $f8
/* 037474 80036874 E606001C */  swc1  $f6, 0x1c($s0)
/* 037478 80036878 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* 03747C 8003687C A20A003B */  sb    $t2, 0x3b($s0)
/* 037480 80036880 46005121 */  cvt.d.s $f4, $f10
/* 037484 80036884 46202482 */  mul.d $f18, $f4, $f0
/* 037488 80036888 46209220 */  cvt.s.d $f8, $f18
/* 03748C 8003688C E6080024 */  swc1  $f8, 0x24($s0)
/* 037490 80036890 C6260004 */  lwc1  $f6, 4($s1)
/* 037494 80036894 C7A4007C */  lwc1  $f4, 0x7c($sp)
/* 037498 80036898 460032A1 */  cvt.d.s $f10, $f6
/* 03749C 8003689C 460024A1 */  cvt.d.s $f18, $f4
/* 0374A0 800368A0 46325200 */  add.d $f8, $f10, $f18
/* 0374A4 800368A4 462041A0 */  cvt.s.d $f6, $f8
/* 0374A8 800368A8 E6260004 */  swc1  $f6, 4($s1)
/* 0374AC 800368AC 0C0168F0 */  jal   func_8005A3C0
/* 0374B0 800368B0 AFA30058 */   sw    $v1, 0x58($sp)
/* 0374B4 800368B4 8FA30058 */  lw    $v1, 0x58($sp)
/* 0374B8 800368B8 24010003 */  li    $at, 3
/* 0374BC 800368BC 1461002A */  bne   $v1, $at, .L80036968
/* 0374C0 800368C0 240B0004 */   li    $t3, 4
/* 0374C4 800368C4 0C003932 */  jal   is_time_trial_enabled
/* 0374C8 800368C8 AE0B0078 */   sw    $t3, 0x78($s0)
/* 0374CC 800368CC 10400006 */  beqz  $v0, .L800368E8
/* 0374D0 800368D0 24040143 */   li    $a0, 323
/* 0374D4 800368D4 24040142 */  li    $a0, 322
/* 0374D8 800368D8 0C00DAF3 */  jal   func_80036BCC
/* 0374DC 800368DC 24050001 */   li    $a1, 1
/* 0374E0 800368E0 10000004 */  b     .L800368F4
/* 0374E4 800368E4 862C0020 */   lh    $t4, 0x20($s1)
.L800368E8:
/* 0374E8 800368E8 0C00DAF3 */  jal   func_80036BCC
/* 0374EC 800368EC 24050001 */   li    $a1, 1
/* 0374F0 800368F0 862C0020 */  lh    $t4, 0x20($s1)
.L800368F4:
/* 0374F4 800368F4 92250011 */  lbu   $a1, 0x11($s1)
/* 0374F8 800368F8 92260012 */  lbu   $a2, 0x12($s1)
/* 0374FC 800368FC 92270013 */  lbu   $a3, 0x13($s1)
/* 037500 80036900 AFAC0010 */  sw    $t4, 0x10($sp)
/* 037504 80036904 862D0022 */  lh    $t5, 0x22($s1)
/* 037508 80036908 240E00B4 */  li    $t6, 180
/* 03750C 8003690C AFAE0018 */  sw    $t6, 0x18($sp)
/* 037510 80036910 00002025 */  move  $a0, $zero
/* 037514 80036914 0C00C378 */  jal   func_80030DE0
/* 037518 80036918 AFAD0014 */   sw    $t5, 0x14($sp)
/* 03751C 8003691C 8FAF004C */  lw    $t7, 0x4c($sp)
/* 037520 80036920 00000000 */  nop   
/* 037524 80036924 91E40052 */  lbu   $a0, 0x52($t7)
/* 037528 80036928 0C0002CD */  jal   play_music
/* 03752C 8003692C 00000000 */   nop   
/* 037530 80036930 8FB8004C */  lw    $t8, 0x4c($sp)
/* 037534 80036934 00000000 */  nop   
/* 037538 80036938 97040054 */  lhu   $a0, 0x54($t8)
/* 03753C 8003693C 0C00041D */  jal   func_80001074
/* 037540 80036940 00000000 */   nop   
/* 037544 80036944 8FB90050 */  lw    $t9, 0x50($sp)
/* 037548 80036948 00000000 */  nop   
/* 03754C 8003694C 83240003 */  lb    $a0, 3($t9)
/* 037550 80036950 832501D6 */  lb    $a1, 0x1d6($t9)
/* 037554 80036954 0C0012D0 */  jal   func_80004B40
/* 037558 80036958 00000000 */   nop   
/* 03755C 8003695C 8FA80050 */  lw    $t0, 0x50($sp)
/* 037560 80036960 00000000 */  nop   
/* 037564 80036964 AD020118 */  sw    $v0, 0x118($t0)
.L80036968:
/* 037568 80036968 C7A0007C */  lwc1  $f0, 0x7c($sp)
/* 03756C 8003696C C604001C */  lwc1  $f4, 0x1c($s0)
/* 037570 80036970 C6120020 */  lwc1  $f18, 0x20($s0)
/* 037574 80036974 46002282 */  mul.s $f10, $f4, $f0
/* 037578 80036978 C6060024 */  lwc1  $f6, 0x24($s0)
/* 03757C 8003697C 240900B4 */  li    $t1, 180
/* 037580 80036980 AE09007C */  sw    $t1, 0x7c($s0)
/* 037584 80036984 46009202 */  mul.s $f8, $f18, $f0
/* 037588 80036988 44055000 */  mfc1  $a1, $f10
/* 03758C 8003698C 02002025 */  move  $a0, $s0
/* 037590 80036990 46003102 */  mul.s $f4, $f6, $f0
/* 037594 80036994 44064000 */  mfc1  $a2, $f8
/* 037598 80036998 44072000 */  mfc1  $a3, $f4
/* 03759C 8003699C 0C00455C */  jal   func_80011570
/* 0375A0 800369A0 00000000 */   nop   
/* 0375A4 800369A4 10000043 */  b     .L80036AB4
/* 0375A8 800369A8 C7AA006C */   lwc1  $f10, 0x6c($sp)
.L800369AC:
/* 0375AC 800369AC C62A0004 */  lwc1  $f10, 4($s1)
/* 0375B0 800369B0 C7A8007C */  lwc1  $f8, 0x7c($sp)
/* 0375B4 800369B4 460054A1 */  cvt.d.s $f18, $f10
/* 0375B8 800369B8 460041A1 */  cvt.d.s $f6, $f8
/* 0375BC 800369BC 46269100 */  add.d $f4, $f18, $f6
/* 0375C0 800369C0 462022A0 */  cvt.s.d $f10, $f4
/* 0375C4 800369C4 0C0168F0 */  jal   func_8005A3C0
/* 0375C8 800369C8 E62A0004 */   swc1  $f10, 4($s1)
/* 0375CC 800369CC 8E02007C */  lw    $v0, 0x7c($s0)
/* 0375D0 800369D0 00000000 */  nop   
/* 0375D4 800369D4 2841008C */  slti  $at, $v0, 0x8c
/* 0375D8 800369D8 10200035 */  beqz  $at, .L80036AB0
/* 0375DC 800369DC 244A003C */   addiu $t2, $v0, 0x3c
/* 0375E0 800369E0 AE0A007C */  sw    $t2, 0x7c($s0)
/* 0375E4 800369E4 AE000078 */  sw    $zero, 0x78($s0)
/* 0375E8 800369E8 10000031 */  b     .L80036AB0
/* 0375EC 800369EC A200003B */   sb    $zero, 0x3b($s0)
.L800369F0:
/* 0375F0 800369F0 A200003B */  sb    $zero, 0x3b($s0)
/* 0375F4 800369F4 44804000 */  mtc1  $zero, $f8
/* 0375F8 800369F8 922B000D */  lbu   $t3, 0xd($s1)
/* 0375FC 800369FC 240100FF */  li    $at, 255
/* 037600 80036A00 1561001B */  bne   $t3, $at, .L80036A70
/* 037604 80036A04 E6280014 */   swc1  $f8, 0x14($s1)
/* 037608 80036A08 C60C000C */  lwc1  $f12, 0xc($s0)
/* 03760C 80036A0C C60E0010 */  lwc1  $f14, 0x10($s0)
/* 037610 80036A10 8E060014 */  lw    $a2, 0x14($s0)
/* 037614 80036A14 0C007149 */  jal   func_8001C524
/* 037618 80036A18 00003825 */   move  $a3, $zero
/* 03761C 80036A1C 304400FF */  andi  $a0, $v0, 0xff
/* 037620 80036A20 240100FF */  li    $at, 255
/* 037624 80036A24 10810022 */  beq   $a0, $at, .L80036AB0
/* 037628 80036A28 A222000D */   sb    $v0, 0xd($s1)
/* 03762C 80036A2C 2405FFFF */  li    $a1, -1
/* 037630 80036A30 0C007312 */  jal   func_8001CC48
/* 037634 80036A34 00003025 */   move  $a2, $zero
/* 037638 80036A38 9225000D */  lbu   $a1, 0xd($s1)
/* 03763C 80036A3C A222000E */  sb    $v0, 0xe($s1)
/* 037640 80036A40 304400FF */  andi  $a0, $v0, 0xff
/* 037644 80036A44 0C007312 */  jal   func_8001CC48
/* 037648 80036A48 00003025 */   move  $a2, $zero
/* 03764C 80036A4C 9225000E */  lbu   $a1, 0xe($s1)
/* 037650 80036A50 A222000F */  sb    $v0, 0xf($s1)
/* 037654 80036A54 304400FF */  andi  $a0, $v0, 0xff
/* 037658 80036A58 0C007312 */  jal   func_8001CC48
/* 03765C 80036A5C 00003025 */   move  $a2, $zero
/* 037660 80036A60 922C000D */  lbu   $t4, 0xd($s1)
/* 037664 80036A64 A2220010 */  sb    $v0, 0x10($s1)
/* 037668 80036A68 10000011 */  b     .L80036AB0
/* 03766C 80036A6C A22C000C */   sb    $t4, 0xc($s1)
.L80036A70:
/* 037670 80036A70 8FA6007C */  lw    $a2, 0x7c($sp)
/* 037674 80036A74 02002825 */  move  $a1, $s0
/* 037678 80036A78 3C073F80 */  lui   $a3, 0x3f80
/* 03767C 80036A7C 0C0071B1 */  jal   func_8001C6C4
/* 037680 80036A80 AFA00010 */   sw    $zero, 0x10($sp)
/* 037684 80036A84 3C013FF8 */  li    $at, 0x3FF80000 # 1.937500
/* 037688 80036A88 44813800 */  mtc1  $at, $f7
/* 03768C 80036A8C 44803000 */  mtc1  $zero, $f6
/* 037690 80036A90 460004A1 */  cvt.d.s $f18, $f0
/* 037694 80036A94 46269102 */  mul.d $f4, $f18, $f6
/* 037698 80036A98 C62A0004 */  lwc1  $f10, 4($s1)
/* 03769C 80036A9C 00000000 */  nop   
/* 0376A0 80036AA0 46005221 */  cvt.d.s $f8, $f10
/* 0376A4 80036AA4 46244480 */  add.d $f18, $f8, $f4
/* 0376A8 80036AA8 462091A0 */  cvt.s.d $f6, $f18
/* 0376AC 80036AAC E6260004 */  swc1  $f6, 4($s1)
.L80036AB0:
/* 0376B0 80036AB0 C7AA006C */  lwc1  $f10, 0x6c($sp)
.L80036AB4:
/* 0376B4 80036AB4 8604002E */  lh    $a0, 0x2e($s0)
/* 0376B8 80036AB8 8E05000C */  lw    $a1, 0xc($s0)
/* 0376BC 80036ABC 8E060014 */  lw    $a2, 0x14($s0)
/* 0376C0 80036AC0 27A70048 */  addiu $a3, $sp, 0x48
/* 0376C4 80036AC4 0C00AC3D */  jal   func_8002B0F4
/* 0376C8 80036AC8 E60A0010 */   swc1  $f10, 0x10($s0)
/* 0376CC 80036ACC 1040001E */  beqz  $v0, .L80036B48
/* 0376D0 80036AD0 2443FFFF */   addiu $v1, $v0, -1
/* 0376D4 80036AD4 0460001C */  bltz  $v1, .L80036B48
/* 0376D8 80036AD8 00032080 */   sll   $a0, $v1, 2
/* 0376DC 80036ADC 44800800 */  mtc1  $zero, $f1
/* 0376E0 80036AE0 44800000 */  mtc1  $zero, $f0
/* 0376E4 80036AE4 2406000E */  li    $a2, 14
/* 0376E8 80036AE8 2405000B */  li    $a1, 11
/* 0376EC 80036AEC 8FAD0048 */  lw    $t5, 0x48($sp)
.L80036AF0:
/* 0376F0 80036AF0 00000000 */  nop   
/* 0376F4 80036AF4 01A47021 */  addu  $t6, $t5, $a0
/* 0376F8 80036AF8 8DC20000 */  lw    $v0, ($t6)
/* 0376FC 80036AFC 2484FFFC */  addiu $a0, $a0, -4
/* 037700 80036B00 80430010 */  lb    $v1, 0x10($v0)
/* 037704 80036B04 00000000 */  nop   
/* 037708 80036B08 10A3000D */  beq   $a1, $v1, .L80036B40
/* 03770C 80036B0C 00000000 */   nop   
/* 037710 80036B10 10C3000B */  beq   $a2, $v1, .L80036B40
/* 037714 80036B14 00000000 */   nop   
/* 037718 80036B18 C4480008 */  lwc1  $f8, 8($v0)
/* 03771C 80036B1C 00000000 */  nop   
/* 037720 80036B20 46004121 */  cvt.d.s $f4, $f8
/* 037724 80036B24 4624003C */  c.lt.d $f0, $f4
/* 037728 80036B28 00000000 */  nop   
/* 03772C 80036B2C 45000004 */  bc1f  .L80036B40
/* 037730 80036B30 00000000 */   nop   
/* 037734 80036B34 C4520000 */  lwc1  $f18, ($v0)
/* 037738 80036B38 00000000 */  nop   
/* 03773C 80036B3C E6120010 */  swc1  $f18, 0x10($s0)
.L80036B40:
/* 037740 80036B40 0481FFEB */  bgez  $a0, .L80036AF0
/* 037744 80036B44 8FAD0048 */   lw    $t5, 0x48($sp)
.L80036B48:
/* 037748 80036B48 8E0F0078 */  lw    $t7, 0x78($s0)
/* 03774C 80036B4C A6000002 */  sh    $zero, 2($s0)
/* 037750 80036B50 11E00004 */  beqz  $t7, .L80036B64
/* 037754 80036B54 A6000004 */   sh    $zero, 4($s0)
/* 037758 80036B58 C6060010 */  lwc1  $f6, 0x10($s0)
/* 03775C 80036B5C 3C018012 */  lui   $at, %hi(D_8011D4D0) # $at, 0x8012
/* 037760 80036B60 E426D4D0 */  swc1  $f6, %lo(D_8011D4D0)($at)
.L80036B64:
/* 037764 80036B64 C62A0004 */  lwc1  $f10, 4($s1)
/* 037768 80036B68 02002025 */  move  $a0, $s0
/* 03776C 80036B6C 46005221 */  cvt.d.s $f8, $f10
/* 037770 80036B70 4458F800 */  cfc1  $t8, $31
/* 037774 80036B74 00000000 */  nop   
/* 037778 80036B78 37010003 */  ori   $at, $t8, 3
/* 03777C 80036B7C 38210002 */  xori  $at, $at, 2
/* 037780 80036B80 44C1F800 */  ctc1  $at, $31
/* 037784 80036B84 00000000 */  nop   
/* 037788 80036B88 46204124 */  cvt.w.d $f4, $f8
/* 03778C 80036B8C 44192000 */  mfc1  $t9, $f4
/* 037790 80036B90 44D8F800 */  ctc1  $t8, $31
/* 037794 80036B94 0C018703 */  jal   func_80061C0C
/* 037798 80036B98 A6190018 */   sh    $t9, 0x18($s0)
/* 03779C 80036B9C 8E02007C */  lw    $v0, 0x7c($s0)
/* 0377A0 80036BA0 8FA80084 */  lw    $t0, 0x84($sp)
/* 0377A4 80036BA4 18400003 */  blez  $v0, .L80036BB4
/* 0377A8 80036BA8 00484823 */   subu  $t1, $v0, $t0
/* 0377AC 80036BAC 10000002 */  b     .L80036BB8
/* 0377B0 80036BB0 AE09007C */   sw    $t1, 0x7c($s0)
.L80036BB4:
/* 0377B4 80036BB4 AE00007C */  sw    $zero, 0x7c($s0)
.L80036BB8:
/* 0377B8 80036BB8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0377BC 80036BBC 8FB00024 */  lw    $s0, 0x24($sp)
/* 0377C0 80036BC0 8FB10028 */  lw    $s1, 0x28($sp)
/* 0377C4 80036BC4 03E00008 */  jr    $ra
/* 0377C8 80036BC8 27BD0080 */   addiu $sp, $sp, 0x80

