glabel func_8003CA68
/* 03D668 8003CA68 27BDFF90 */  addiu $sp, $sp, -0x70
/* 03D66C 8003CA6C 44852000 */  mtc1  $a1, $f4
/* 03D670 8003CA70 AFBF0024 */  sw    $ra, 0x24($sp)
/* 03D674 8003CA74 AFB00020 */  sw    $s0, 0x20($sp)
/* 03D678 8003CA78 AFA50074 */  sw    $a1, 0x74($sp)
/* 03D67C 8003CA7C 3C0F8000 */  lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 03D680 8003CA80 46802020 */  cvt.s.w $f0, $f4
/* 03D684 8003CA84 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 03D688 8003CA88 8C830064 */  lw    $v1, 0x64($a0)
/* 03D68C 8003CA8C 8C88003C */  lw    $t0, 0x3c($a0)
/* 03D690 8003CA90 00808025 */  move  $s0, $a0
/* 03D694 8003CA94 15E00007 */  bnez  $t7, .L8003CAB4
/* 03D698 8003CA98 46000306 */   mov.s $f12, $f0
/* 03D69C 8003CA9C 3C01800E */  lui   $at, %hi(D_800E617C) # $at, 0x800e
/* 03D6A0 8003CAA0 C4296178 */  lwc1  $f9, %lo(D_800E6178)($at)
/* 03D6A4 8003CAA4 C428617C */  lwc1  $f8, %lo(D_800E617C)($at)
/* 03D6A8 8003CAA8 460001A1 */  cvt.d.s $f6, $f0
/* 03D6AC 8003CAAC 46283282 */  mul.d $f10, $f6, $f8
/* 03D6B0 8003CAB0 46205320 */  cvt.s.d $f12, $f10
.L8003CAB4:
/* 03D6B4 8003CAB4 9118000B */  lbu   $t8, 0xb($t0)
/* 03D6B8 8003CAB8 24010003 */  li    $at, 3
/* 03D6BC 8003CABC 1301004B */  beq   $t8, $at, .L8003CBEC
/* 03D6C0 8003CAC0 00000000 */   nop   
/* 03D6C4 8003CAC4 8E190078 */  lw    $t9, 0x78($s0)
/* 03D6C8 8003CAC8 00000000 */  nop   
/* 03D6CC 8003CACC 13200029 */  beqz  $t9, .L8003CB74
/* 03D6D0 8003CAD0 00000000 */   nop   
/* 03D6D4 8003CAD4 8109000E */  lb    $t1, 0xe($t0)
/* 03D6D8 8003CAD8 44803000 */  mtc1  $zero, $f6
/* 03D6DC 8003CADC 44898000 */  mtc1  $t1, $f16
/* 03D6E0 8003CAE0 00000000 */  nop   
/* 03D6E4 8003CAE4 468084A0 */  cvt.s.w $f18, $f16
/* 03D6E8 8003CAE8 46009021 */  cvt.d.s $f0, $f18
/* 03D6EC 8003CAEC 46200100 */  add.d $f4, $f0, $f0
/* 03D6F0 8003CAF0 462020A0 */  cvt.s.d $f2, $f4
/* 03D6F4 8003CAF4 4602303C */  c.lt.s $f6, $f2
/* 03D6F8 8003CAF8 00000000 */  nop   
/* 03D6FC 8003CAFC 4500000F */  bc1f  .L8003CB3C
/* 03D700 8003CB00 00000000 */   nop   
/* 03D704 8003CB04 C4680000 */  lwc1  $f8, ($v1)
/* 03D708 8003CB08 C6000010 */  lwc1  $f0, 0x10($s0)
/* 03D70C 8003CB0C 46024280 */  add.s $f10, $f8, $f2
/* 03D710 8003CB10 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 03D714 8003CB14 460A003C */  c.lt.s $f0, $f10
/* 03D718 8003CB18 00000000 */  nop   
/* 03D71C 8003CB1C 45000080 */  bc1f  .L8003CD20
/* 03D720 8003CB20 00000000 */   nop   
/* 03D724 8003CB24 44818000 */  mtc1  $at, $f16
/* 03D728 8003CB28 00000000 */  nop   
/* 03D72C 8003CB2C 46106482 */  mul.s $f18, $f12, $f16
/* 03D730 8003CB30 46120100 */  add.s $f4, $f0, $f18
/* 03D734 8003CB34 1000007A */  b     .L8003CD20
/* 03D738 8003CB38 E6040010 */   swc1  $f4, 0x10($s0)
.L8003CB3C:
/* 03D73C 8003CB3C C4660000 */  lwc1  $f6, ($v1)
/* 03D740 8003CB40 C6000010 */  lwc1  $f0, 0x10($s0)
/* 03D744 8003CB44 46023200 */  add.s $f8, $f6, $f2
/* 03D748 8003CB48 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 03D74C 8003CB4C 4600403C */  c.lt.s $f8, $f0
/* 03D750 8003CB50 00000000 */  nop   
/* 03D754 8003CB54 45000072 */  bc1f  .L8003CD20
/* 03D758 8003CB58 00000000 */   nop   
/* 03D75C 8003CB5C 44815000 */  mtc1  $at, $f10
/* 03D760 8003CB60 00000000 */  nop   
/* 03D764 8003CB64 460A6402 */  mul.s $f16, $f12, $f10
/* 03D768 8003CB68 46100481 */  sub.s $f18, $f0, $f16
/* 03D76C 8003CB6C 1000006C */  b     .L8003CD20
/* 03D770 8003CB70 E6120010 */   swc1  $f18, 0x10($s0)
.L8003CB74:
/* 03D774 8003CB74 910A000C */  lbu   $t2, 0xc($t0)
/* 03D778 8003CB78 00000000 */  nop   
/* 03D77C 8003CB7C 1940000E */  blez  $t2, .L8003CBB8
/* 03D780 8003CB80 00000000 */   nop   
/* 03D784 8003CB84 C6000010 */  lwc1  $f0, 0x10($s0)
/* 03D788 8003CB88 C4640000 */  lwc1  $f4, ($v1)
/* 03D78C 8003CB8C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 03D790 8003CB90 4600203C */  c.lt.s $f4, $f0
/* 03D794 8003CB94 00000000 */  nop   
/* 03D798 8003CB98 45000061 */  bc1f  .L8003CD20
/* 03D79C 8003CB9C 00000000 */   nop   
/* 03D7A0 8003CBA0 44813000 */  mtc1  $at, $f6
/* 03D7A4 8003CBA4 00000000 */  nop   
/* 03D7A8 8003CBA8 46066202 */  mul.s $f8, $f12, $f6
/* 03D7AC 8003CBAC 46080281 */  sub.s $f10, $f0, $f8
/* 03D7B0 8003CBB0 1000005B */  b     .L8003CD20
/* 03D7B4 8003CBB4 E60A0010 */   swc1  $f10, 0x10($s0)
.L8003CBB8:
/* 03D7B8 8003CBB8 C6000010 */  lwc1  $f0, 0x10($s0)
/* 03D7BC 8003CBBC C4700000 */  lwc1  $f16, ($v1)
/* 03D7C0 8003CBC0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 03D7C4 8003CBC4 4610003C */  c.lt.s $f0, $f16
/* 03D7C8 8003CBC8 00000000 */  nop   
/* 03D7CC 8003CBCC 45000054 */  bc1f  .L8003CD20
/* 03D7D0 8003CBD0 00000000 */   nop   
/* 03D7D4 8003CBD4 44819000 */  mtc1  $at, $f18
/* 03D7D8 8003CBD8 00000000 */  nop   
/* 03D7DC 8003CBDC 46126102 */  mul.s $f4, $f12, $f18
/* 03D7E0 8003CBE0 46040180 */  add.s $f6, $f0, $f4
/* 03D7E4 8003CBE4 1000004E */  b     .L8003CD20
/* 03D7E8 8003CBE8 E6060010 */   swc1  $f6, 0x10($s0)
.L8003CBEC:
/* 03D7EC 8003CBEC 8E0B0078 */  lw    $t3, 0x78($s0)
/* 03D7F0 8003CBF0 00000000 */  nop   
/* 03D7F4 8003CBF4 11600023 */  beqz  $t3, .L8003CC84
/* 03D7F8 8003CBF8 00000000 */   nop   
/* 03D7FC 8003CBFC 86020002 */  lh    $v0, 2($s0)
/* 03D800 8003CC00 8FAC0074 */  lw    $t4, 0x74($sp)
/* 03D804 8003CC04 2841ED01 */  slti  $at, $v0, -0x12ff
/* 03D808 8003CC08 14200008 */  bnez  $at, .L8003CC2C
/* 03D80C 8003CC0C 000C6880 */   sll   $t5, $t4, 2
/* 03D810 8003CC10 01AC6823 */  subu  $t5, $t5, $t4
/* 03D814 8003CC14 000D6880 */  sll   $t5, $t5, 2
/* 03D818 8003CC18 01AC6823 */  subu  $t5, $t5, $t4
/* 03D81C 8003CC1C 000D6880 */  sll   $t5, $t5, 2
/* 03D820 8003CC20 01AC6821 */  addu  $t5, $t5, $t4
/* 03D824 8003CC24 004D7023 */  subu  $t6, $v0, $t5
/* 03D828 8003CC28 A60E0002 */  sh    $t6, 2($s0)
.L8003CC2C:
/* 03D82C 8003CC2C 8C6F0004 */  lw    $t7, 4($v1)
/* 03D830 8003CC30 27A50050 */  addiu $a1, $sp, 0x50
/* 03D834 8003CC34 15E0003A */  bnez  $t7, .L8003CD20
/* 03D838 8003CC38 27A6004C */   addiu $a2, $sp, 0x4c
/* 03D83C 8003CC3C 9104000A */  lbu   $a0, 0xa($t0)
/* 03D840 8003CC40 AFA8005C */  sw    $t0, 0x5c($sp)
/* 03D844 8003CC44 AFA30060 */  sw    $v1, 0x60($sp)
/* 03D848 8003CC48 0C0078DB */  jal   func_8001E36C
/* 03D84C 8003CC4C 27A70048 */   addiu $a3, $sp, 0x48
/* 03D850 8003CC50 8FA30060 */  lw    $v1, 0x60($sp)
/* 03D854 8003CC54 8FA50050 */  lw    $a1, 0x50($sp)
/* 03D858 8003CC58 8FA6004C */  lw    $a2, 0x4c($sp)
/* 03D85C 8003CC5C 8FA70048 */  lw    $a3, 0x48($sp)
/* 03D860 8003CC60 24180001 */  li    $t8, 1
/* 03D864 8003CC64 24790004 */  addiu $t9, $v1, 4
/* 03D868 8003CC68 AFB90014 */  sw    $t9, 0x14($sp)
/* 03D86C 8003CC6C AFB80010 */  sw    $t8, 0x10($sp)
/* 03D870 8003CC70 0C002556 */  jal   func_80009558
/* 03D874 8003CC74 24040249 */   li    $a0, 585
/* 03D878 8003CC78 8FA8005C */  lw    $t0, 0x5c($sp)
/* 03D87C 8003CC7C 10000029 */  b     .L8003CD24
/* 03D880 8003CC80 9103000B */   lbu   $v1, 0xb($t0)
.L8003CC84:
/* 03D884 8003CC84 86020002 */  lh    $v0, 2($s0)
/* 03D888 8003CC88 8FA90074 */  lw    $t1, 0x74($sp)
/* 03D88C 8003CC8C 0441001B */  bgez  $v0, .L8003CCFC
/* 03D890 8003CC90 00095080 */   sll   $t2, $t1, 2
/* 03D894 8003CC94 01495021 */  addu  $t2, $t2, $t1
/* 03D898 8003CC98 000A50C0 */  sll   $t2, $t2, 3
/* 03D89C 8003CC9C 004A5821 */  addu  $t3, $v0, $t2
/* 03D8A0 8003CCA0 A60B0002 */  sh    $t3, 2($s0)
/* 03D8A4 8003CCA4 8C6C0004 */  lw    $t4, 4($v1)
/* 03D8A8 8003CCA8 27A50044 */  addiu $a1, $sp, 0x44
/* 03D8AC 8003CCAC 1580001C */  bnez  $t4, .L8003CD20
/* 03D8B0 8003CCB0 27A60040 */   addiu $a2, $sp, 0x40
/* 03D8B4 8003CCB4 9104000A */  lbu   $a0, 0xa($t0)
/* 03D8B8 8003CCB8 AFA8005C */  sw    $t0, 0x5c($sp)
/* 03D8BC 8003CCBC AFA30060 */  sw    $v1, 0x60($sp)
/* 03D8C0 8003CCC0 0C0078DB */  jal   func_8001E36C
/* 03D8C4 8003CCC4 27A7003C */   addiu $a3, $sp, 0x3c
/* 03D8C8 8003CCC8 8FA30060 */  lw    $v1, 0x60($sp)
/* 03D8CC 8003CCCC 8FA50044 */  lw    $a1, 0x44($sp)
/* 03D8D0 8003CCD0 8FA60040 */  lw    $a2, 0x40($sp)
/* 03D8D4 8003CCD4 8FA7003C */  lw    $a3, 0x3c($sp)
/* 03D8D8 8003CCD8 240D0001 */  li    $t5, 1
/* 03D8DC 8003CCDC 246E0004 */  addiu $t6, $v1, 4
/* 03D8E0 8003CCE0 AFAE0014 */  sw    $t6, 0x14($sp)
/* 03D8E4 8003CCE4 AFAD0010 */  sw    $t5, 0x10($sp)
/* 03D8E8 8003CCE8 0C002556 */  jal   func_80009558
/* 03D8EC 8003CCEC 24040249 */   li    $a0, 585
/* 03D8F0 8003CCF0 8FA8005C */  lw    $t0, 0x5c($sp)
/* 03D8F4 8003CCF4 1000000B */  b     .L8003CD24
/* 03D8F8 8003CCF8 9103000B */   lbu   $v1, 0xb($t0)
.L8003CCFC:
/* 03D8FC 8003CCFC A6000002 */  sh    $zero, 2($s0)
/* 03D900 8003CD00 8C640004 */  lw    $a0, 4($v1)
/* 03D904 8003CD04 00000000 */  nop   
/* 03D908 8003CD08 10800005 */  beqz  $a0, .L8003CD20
/* 03D90C 8003CD0C 00000000 */   nop   
/* 03D910 8003CD10 0C0025BE */  jal   func_800096F8
/* 03D914 8003CD14 AFA8005C */   sw    $t0, 0x5c($sp)
/* 03D918 8003CD18 8FA8005C */  lw    $t0, 0x5c($sp)
/* 03D91C 8003CD1C 00000000 */  nop   
.L8003CD20:
/* 03D920 8003CD20 9103000B */  lbu   $v1, 0xb($t0)
.L8003CD24:
/* 03D924 8003CD24 24010002 */  li    $at, 2
/* 03D928 8003CD28 10600005 */  beqz  $v1, .L8003CD40
/* 03D92C 8003CD2C 00000000 */   nop   
/* 03D930 8003CD30 1061000E */  beq   $v1, $at, .L8003CD6C
/* 03D934 8003CD34 24090001 */   li    $t1, 1
/* 03D938 8003CD38 10000029 */  b     .L8003CDE0
/* 03D93C 8003CD3C 9104000A */   lbu   $a0, 0xa($t0)
.L8003CD40:
/* 03D940 8003CD40 8E02004C */  lw    $v0, 0x4c($s0)
/* 03D944 8003CD44 AE000078 */  sw    $zero, 0x78($s0)
/* 03D948 8003CD48 9118000C */  lbu   $t8, 0xc($t0)
/* 03D94C 8003CD4C 904F0013 */  lbu   $t7, 0x13($v0)
/* 03D950 8003CD50 24190001 */  li    $t9, 1
/* 03D954 8003CD54 01F8082A */  slt   $at, $t7, $t8
/* 03D958 8003CD58 10200034 */  beqz  $at, .L8003CE2C
/* 03D95C 8003CD5C 241800FF */   li    $t8, 255
/* 03D960 8003CD60 8E02004C */  lw    $v0, 0x4c($s0)
/* 03D964 8003CD64 10000030 */  b     .L8003CE28
/* 03D968 8003CD68 AE190078 */   sw    $t9, 0x78($s0)
.L8003CD6C:
/* 03D96C 8003CD6C AE090078 */  sw    $t1, 0x78($s0)
/* 03D970 8003CD70 AFA8005C */  sw    $t0, 0x5c($sp)
/* 03D974 8003CD74 0C006EB2 */  jal   func_8001BAC8
/* 03D978 8003CD78 00002025 */   move  $a0, $zero
/* 03D97C 8003CD7C 8FA8005C */  lw    $t0, 0x5c($sp)
/* 03D980 8003CD80 10400013 */  beqz  $v0, .L8003CDD0
/* 03D984 8003CD84 00000000 */   nop   
/* 03D988 8003CD88 8C440064 */  lw    $a0, 0x64($v0)
/* 03D98C 8003CD8C 24010001 */  li    $at, 1
/* 03D990 8003CD90 808301D6 */  lb    $v1, 0x1d6($a0)
/* 03D994 8003CD94 00000000 */  nop   
/* 03D998 8003CD98 10610005 */  beq   $v1, $at, .L8003CDB0
/* 03D99C 8003CD9C 24010002 */   li    $at, 2
/* 03D9A0 8003CDA0 10610005 */  beq   $v1, $at, .L8003CDB8
/* 03D9A4 8003CDA4 24020004 */   li    $v0, 4
/* 03D9A8 8003CDA8 10000003 */  b     .L8003CDB8
/* 03D9AC 8003CDAC 24020001 */   li    $v0, 1
.L8003CDB0:
/* 03D9B0 8003CDB0 10000001 */  b     .L8003CDB8
/* 03D9B4 8003CDB4 24020002 */   li    $v0, 2
.L8003CDB8:
/* 03D9B8 8003CDB8 910A000F */  lbu   $t2, 0xf($t0)
/* 03D9BC 8003CDBC 00000000 */  nop   
/* 03D9C0 8003CDC0 01425824 */  and   $t3, $t2, $v0
/* 03D9C4 8003CDC4 11600002 */  beqz  $t3, .L8003CDD0
/* 03D9C8 8003CDC8 00000000 */   nop   
/* 03D9CC 8003CDCC AE000078 */  sw    $zero, 0x78($s0)
.L8003CDD0:
/* 03D9D0 8003CDD0 8E02004C */  lw    $v0, 0x4c($s0)
/* 03D9D4 8003CDD4 10000015 */  b     .L8003CE2C
/* 03D9D8 8003CDD8 241800FF */   li    $t8, 255
/* 03D9DC 8003CDDC 9104000A */  lbu   $a0, 0xa($t0)
.L8003CDE0:
/* 03D9E0 8003CDE0 0C0078BB */  jal   func_8001E2EC
/* 03D9E4 8003CDE4 AFA8005C */   sw    $t0, 0x5c($sp)
/* 03D9E8 8003CDE8 8FA8005C */  lw    $t0, 0x5c($sp)
/* 03D9EC 8003CDEC 10400005 */  beqz  $v0, .L8003CE04
/* 03D9F0 8003CDF0 00000000 */   nop   
/* 03D9F4 8003CDF4 910C000D */  lbu   $t4, 0xd($t0)
/* 03D9F8 8003CDF8 00000000 */  nop   
/* 03D9FC 8003CDFC 000C6840 */  sll   $t5, $t4, 1
/* 03DA00 8003CE00 AE0D0078 */  sw    $t5, 0x78($s0)
.L8003CE04:
/* 03DA04 8003CE04 8E020078 */  lw    $v0, 0x78($s0)
/* 03DA08 8003CE08 8FAE0074 */  lw    $t6, 0x74($sp)
/* 03DA0C 8003CE0C 18400003 */  blez  $v0, .L8003CE1C
/* 03DA10 8003CE10 004E7823 */   subu  $t7, $v0, $t6
/* 03DA14 8003CE14 10000002 */  b     .L8003CE20
/* 03DA18 8003CE18 AE0F0078 */   sw    $t7, 0x78($s0)
.L8003CE1C:
/* 03DA1C 8003CE1C AE000078 */  sw    $zero, 0x78($s0)
.L8003CE20:
/* 03DA20 8003CE20 8E02004C */  lw    $v0, 0x4c($s0)
/* 03DA24 8003CE24 00000000 */  nop   
.L8003CE28:
/* 03DA28 8003CE28 241800FF */  li    $t8, 255
.L8003CE2C:
/* 03DA2C 8003CE2C A0580013 */  sb    $t8, 0x13($v0)
/* 03DA30 8003CE30 8E19004C */  lw    $t9, 0x4c($s0)
/* 03DA34 8003CE34 00000000 */  nop   
/* 03DA38 8003CE38 AF200000 */  sw    $zero, ($t9)
/* 03DA3C 8003CE3C 8E02004C */  lw    $v0, 0x4c($s0)
/* 03DA40 8003CE40 00000000 */  nop   
/* 03DA44 8003CE44 84490014 */  lh    $t1, 0x14($v0)
/* 03DA48 8003CE48 00000000 */  nop   
/* 03DA4C 8003CE4C 312AFFF7 */  andi  $t2, $t1, 0xfff7
/* 03DA50 8003CE50 A44A0014 */  sh    $t2, 0x14($v0)
/* 03DA54 8003CE54 8FBF0024 */  lw    $ra, 0x24($sp)
/* 03DA58 8003CE58 8FB00020 */  lw    $s0, 0x20($sp)
/* 03DA5C 8003CE5C 03E00008 */  jr    $ra
/* 03DA60 8003CE60 27BD0070 */   addiu $sp, $sp, 0x70
