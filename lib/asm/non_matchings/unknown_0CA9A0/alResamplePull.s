.late_rodata
glabel D_800E9628
.double 1.99996
glabel D_800E9630
.float 1.99996

.text
glabel alResamplePull
/* 0CCD7C 800CC17C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0CCD80 800CC180 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CCD84 800CC184 AFA50054 */  sw    $a1, 0x54($sp)
/* 0CCD88 800CC188 8C890000 */  lw    $t1, ($a0)
/* 0CCD8C 800CC18C 240E0140 */  li    $t6, 320
/* 0CCD90 800CC190 00804025 */  move  $t0, $a0
/* 0CCD94 800CC194 00C05025 */  move  $t2, $a2
/* 0CCD98 800CC198 14C00003 */  bnez  $a2, .L800CC1A8
/* 0CCD9C 800CC19C A7AE0046 */   sh    $t6, 0x46($sp)
/* 0CCDA0 800CC1A0 10000074 */  b     .L800CC374
/* 0CCDA4 800CC1A4 8FA20060 */   lw    $v0, 0x60($sp)
.L800CC1A8:
/* 0CCDA8 800CC1A8 8D0F001C */  lw    $t7, 0x1c($t0)
/* 0CCDAC 800CC1AC 8FB80060 */  lw    $t8, 0x60($sp)
/* 0CCDB0 800CC1B0 51E0001A */  beql  $t7, $zero, .L800CC21C
/* 0CCDB4 800CC1B4 C5020018 */   lwc1  $f2, 0x18($t0)
/* 0CCDB8 800CC1B8 AFB80010 */  sw    $t8, 0x10($sp)
/* 0CCDBC 800CC1BC AFAA0058 */  sw    $t2, 0x58($sp)
/* 0CCDC0 800CC1C0 8D390004 */  lw    $t9, 4($t1)
/* 0CCDC4 800CC1C4 01202025 */  move  $a0, $t1
/* 0CCDC8 800CC1C8 27A50046 */  addiu $a1, $sp, 0x46
/* 0CCDCC 800CC1CC 0320F809 */  jalr  $t9
/* 0CCDD0 800CC1D0 01403025 */  move  $a2, $t2
/* 0CCDD4 800CC1D4 87AB0046 */  lh    $t3, 0x46($sp)
/* 0CCDD8 800CC1D8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0CCDDC 800CC1DC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0CCDE0 800CC1E0 01616024 */  and   $t4, $t3, $at
/* 0CCDE4 800CC1E4 3C010A00 */  lui   $at, 0xa00
/* 0CCDE8 800CC1E8 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CCDEC 800CC1EC 01816825 */  or    $t5, $t4, $at
/* 0CCDF0 800CC1F0 AC4D0000 */  sw    $t5, ($v0)
/* 0CCDF4 800CC1F4 8FAE0054 */  lw    $t6, 0x54($sp)
/* 0CCDF8 800CC1F8 000A5840 */  sll   $t3, $t2, 1
/* 0CCDFC 800CC1FC 316CFFFF */  andi  $t4, $t3, 0xffff
/* 0CCE00 800CC200 85D80000 */  lh    $t8, ($t6)
/* 0CCE04 800CC204 24450008 */  addiu $a1, $v0, 8
/* 0CCE08 800CC208 0018CC00 */  sll   $t9, $t8, 0x10
/* 0CCE0C 800CC20C 032C6825 */  or    $t5, $t9, $t4
/* 0CCE10 800CC210 10000057 */  b     .L800CC370
/* 0CCE14 800CC214 AC4D0004 */   sw    $t5, 4($v0)
/* 0CCE18 800CC218 C5020018 */  lwc1  $f2, 0x18($t0)
.L800CC21C:
/* 0CCE1C 800CC21C 3C01800F */  lui   $at, %hi(D_800E9628) # $at, 0x800f
/* 0CCE20 800CC220 D4249628 */  ldc1  $f4, %lo(D_800E9628)($at)
/* 0CCE24 800CC224 460011A1 */  cvt.d.s $f6, $f2
/* 0CCE28 800CC228 3C01800F */  lui   $at, 0x800f
/* 0CCE2C 800CC22C 4626203C */  c.lt.d $f4, $f6
/* 0CCE30 800CC230 00000000 */  nop   
/* 0CCE34 800CC234 45020005 */  bc1fl .L800CC24C
/* 0CCE38 800CC238 3C014700 */   lui   $at, 0x4700
/* 0CCE3C 800CC23C C4289630 */  lwc1  $f8, %lo(D_800E9630)($at)
/* 0CCE40 800CC240 E5080018 */  swc1  $f8, 0x18($t0)
/* 0CCE44 800CC244 C5020018 */  lwc1  $f2, 0x18($t0)
/* 0CCE48 800CC248 3C014700 */  li    $at, 0x47000000 # 32768.000000
.L800CC24C:
/* 0CCE4C 800CC24C 44816000 */  mtc1  $at, $f12
/* 0CCE50 800CC250 01202025 */  move  $a0, $t1
/* 0CCE54 800CC254 27A50046 */  addiu $a1, $sp, 0x46
/* 0CCE58 800CC258 460C1282 */  mul.s $f10, $f2, $f12
/* 0CCE5C 800CC25C 4600540D */  trunc.w.s $f16, $f10
/* 0CCE60 800CC260 440F8000 */  mfc1  $t7, $f16
/* 0CCE64 800CC264 448A8000 */  mtc1  $t2, $f16
/* 0CCE68 800CC268 448F9000 */  mtc1  $t7, $f18
/* 0CCE6C 800CC26C 00000000 */  nop   
/* 0CCE70 800CC270 46809120 */  cvt.s.w $f4, $f18
/* 0CCE74 800CC274 468084A0 */  cvt.s.w $f18, $f16
/* 0CCE78 800CC278 E5040018 */  swc1  $f4, 0x18($t0)
/* 0CCE7C 800CC27C C5060018 */  lwc1  $f6, 0x18($t0)
/* 0CCE80 800CC280 460C3203 */  div.s $f8, $f6, $f12
/* 0CCE84 800CC284 C5060020 */  lwc1  $f6, 0x20($t0)
/* 0CCE88 800CC288 E5080018 */  swc1  $f8, 0x18($t0)
/* 0CCE8C 800CC28C C50A0018 */  lwc1  $f10, 0x18($t0)
/* 0CCE90 800CC290 46125102 */  mul.s $f4, $f10, $f18
/* 0CCE94 800CC294 46043000 */  add.s $f0, $f6, $f4
/* 0CCE98 800CC298 4600020D */  trunc.w.s $f8, $f0
/* 0CCE9C 800CC29C 44064000 */  mfc1  $a2, $f8
/* 0CCEA0 800CC2A0 00000000 */  nop   
/* 0CCEA4 800CC2A4 44868000 */  mtc1  $a2, $f16
/* 0CCEA8 800CC2A8 00000000 */  nop   
/* 0CCEAC 800CC2AC 468082A0 */  cvt.s.w $f10, $f16
/* 0CCEB0 800CC2B0 460A0481 */  sub.s $f18, $f0, $f10
/* 0CCEB4 800CC2B4 E5120020 */  swc1  $f18, 0x20($t0)
/* 0CCEB8 800CC2B8 8FAB0060 */  lw    $t3, 0x60($sp)
/* 0CCEBC 800CC2BC AFAA0058 */  sw    $t2, 0x58($sp)
/* 0CCEC0 800CC2C0 AFA80050 */  sw    $t0, 0x50($sp)
/* 0CCEC4 800CC2C4 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0CCEC8 800CC2C8 8D390004 */  lw    $t9, 4($t1)
/* 0CCECC 800CC2CC 0320F809 */  jalr  $t9
/* 0CCED0 800CC2D0 00000000 */  nop   
/* 0CCED4 800CC2D4 8FA80050 */  lw    $t0, 0x50($sp)
/* 0CCED8 800CC2D8 87AD0046 */  lh    $t5, 0x46($sp)
/* 0CCEDC 800CC2DC 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 0CCEE0 800CC2E0 44812000 */  mtc1  $at, $f4
/* 0CCEE4 800CC2E4 C5060018 */  lwc1  $f6, 0x18($t0)
/* 0CCEE8 800CC2E8 3C010800 */  lui   $at, 0x800
/* 0CCEEC 800CC2EC 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 0CCEF0 800CC2F0 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0CCEF4 800CC2F4 01C17825 */  or    $t7, $t6, $at
/* 0CCEF8 800CC2F8 AC4F0000 */  sw    $t7, ($v0)
/* 0CCEFC 800CC2FC 8FB80054 */  lw    $t8, 0x54($sp)
/* 0CCF00 800CC300 46043202 */  mul.s $f8, $f6, $f4
/* 0CCF04 800CC304 000A6840 */  sll   $t5, $t2, 1
/* 0CCF08 800CC308 87190000 */  lh    $t9, ($t8)
/* 0CCF0C 800CC30C 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 0CCF10 800CC310 24580008 */  addiu $t8, $v0, 8
/* 0CCF14 800CC314 00196400 */  sll   $t4, $t9, 0x10
/* 0CCF18 800CC318 018E7825 */  or    $t7, $t4, $t6
/* 0CCF1C 800CC31C 4600440D */  trunc.w.s $f16, $f8
/* 0CCF20 800CC320 AC4F0004 */  sw    $t7, 4($v0)
/* 0CCF24 800CC324 AFB80028 */  sw    $t8, 0x28($sp)
/* 0CCF28 800CC328 8D0B0024 */  lw    $t3, 0x24($t0)
/* 0CCF2C 800CC32C 44038000 */  mfc1  $v1, $f16
/* 0CCF30 800CC330 3C010500 */  lui   $at, 0x500
/* 0CCF34 800CC334 317900FF */  andi  $t9, $t3, 0xff
/* 0CCF38 800CC338 00196C00 */  sll   $t5, $t9, 0x10
/* 0CCF3C 800CC33C 01A16025 */  or    $t4, $t5, $at
/* 0CCF40 800CC340 306EFFFF */  andi  $t6, $v1, 0xffff
/* 0CCF44 800CC344 018E7825 */  or    $t7, $t4, $t6
/* 0CCF48 800CC348 AC4F0008 */  sw    $t7, 8($v0)
/* 0CCF4C 800CC34C 24450010 */  addiu $a1, $v0, 0x10
/* 0CCF50 800CC350 8D040014 */  lw    $a0, 0x14($t0)
/* 0CCF54 800CC354 0C03233C */  jal   osVirtualToPhysical
/* 0CCF58 800CC358 AFA50048 */   sw    $a1, 0x48($sp)
/* 0CCF5C 800CC35C 8FB80028 */  lw    $t8, 0x28($sp)
/* 0CCF60 800CC360 8FA80050 */  lw    $t0, 0x50($sp)
/* 0CCF64 800CC364 8FA50048 */  lw    $a1, 0x48($sp)
/* 0CCF68 800CC368 AF020004 */  sw    $v0, 4($t8)
/* 0CCF6C 800CC36C AD000024 */  sw    $zero, 0x24($t0)
.L800CC370:
/* 0CCF70 800CC370 00A01025 */  move  $v0, $a1
.L800CC374:
/* 0CCF74 800CC374 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CCF78 800CC378 27BD0050 */  addiu $sp, $sp, 0x50
/* 0CCF7C 800CC37C 03E00008 */  jr    $ra
/* 0CCF80 800CC380 00000000 */   nop   

/* 0CCF84 800CC384 00000000 */  nop   
/* 0CCF88 800CC388 00000000 */  nop   
/* 0CCF8C 800CC38C 00000000 */  nop   

