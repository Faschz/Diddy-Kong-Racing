glabel func_80097D10
/* 098910 80097D10 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 098914 80097D14 AFBF001C */  sw    $ra, 0x1c($sp)
/* 098918 80097D18 AFA40030 */  sw    $a0, 0x30($sp)
/* 09891C 80097D1C E7B50010 */  swc1  $f21, 0x10($sp)
/* 098920 80097D20 E7B40014 */  swc1  $f20, 0x14($sp)
/* 098924 80097D24 0C01A955 */  jal   func_8006A554
/* 098928 80097D28 00002025 */   move  $a0, $zero
/* 09892C 80097D2C 00002025 */  move  $a0, $zero
/* 098930 80097D30 0C01A967 */  jal   func_8006A59C
/* 098934 80097D34 AFA20024 */   sw    $v0, 0x24($sp)
/* 098938 80097D38 8FA80024 */  lw    $t0, 0x24($sp)
/* 09893C 80097D3C 2841FFDE */  slti  $at, $v0, -0x22
/* 098940 80097D40 14200005 */  bnez  $at, .L80097D58
/* 098944 80097D44 00402025 */   move  $a0, $v0
/* 098948 80097D48 28410023 */  slti  $at, $v0, 0x23
/* 09894C 80097D4C 10200002 */  beqz  $at, .L80097D58
/* 098950 80097D50 00000000 */   nop   
/* 098954 80097D54 00002025 */  move  $a0, $zero
.L80097D58:
/* 098958 80097D58 0481001A */  bgez  $a0, .L80097DC4
/* 09895C 80097D5C 3C058012 */   lui   $a1, %hi(D_80126C6C) # $a1, 0x8012
/* 098960 80097D60 3C028012 */  lui   $v0, %hi(D_80126C3C) # $v0, 0x8012
/* 098964 80097D64 24426C3C */  addiu $v0, %lo(D_80126C3C) # addiu $v0, $v0, 0x6c3c
/* 098968 80097D68 8C4E0000 */  lw    $t6, ($v0)
/* 09896C 80097D6C 3C038012 */  lui   $v1, %hi(D_80126C34) # $v1, 0x8012
/* 098970 80097D70 05C00004 */  bltz  $t6, .L80097D84
/* 098974 80097D74 24636C34 */   addiu $v1, %lo(D_80126C34) # addiu $v1, $v1, 0x6c34
/* 098978 80097D78 240FFFFF */  li    $t7, -1
/* 09897C 80097D7C AC600000 */  sw    $zero, ($v1)
/* 098980 80097D80 AC4F0000 */  sw    $t7, ($v0)
.L80097D84:
/* 098984 80097D84 3C038012 */  lui   $v1, %hi(D_80126C34) # $v1, 0x8012
/* 098988 80097D88 24636C34 */  addiu $v1, %lo(D_80126C34) # addiu $v1, $v1, 0x6c34
/* 09898C 80097D8C 8C780000 */  lw    $t8, ($v1)
/* 098990 80097D90 8FB90030 */  lw    $t9, 0x30($sp)
/* 098994 80097D94 8FAB0030 */  lw    $t3, 0x30($sp)
/* 098998 80097D98 03195021 */  addu  $t2, $t8, $t9
/* 09899C 80097D9C AC6A0000 */  sw    $t2, ($v1)
/* 0989A0 80097DA0 116A0028 */  beq   $t3, $t2, .L80097E44
/* 0989A4 80097DA4 01401025 */   move  $v0, $t2
/* 0989A8 80097DA8 2941001C */  slti  $at, $t2, 0x1c
/* 0989AC 80097DAC 10200003 */  beqz  $at, .L80097DBC
/* 0989B0 80097DB0 244CFFFA */   addiu $t4, $v0, -6
/* 0989B4 80097DB4 10000023 */  b     .L80097E44
/* 0989B8 80097DB8 00002025 */   move  $a0, $zero
.L80097DBC:
/* 0989BC 80097DBC 10000021 */  b     .L80097E44
/* 0989C0 80097DC0 AC6C0000 */   sw    $t4, ($v1)
.L80097DC4:
/* 0989C4 80097DC4 1880001A */  blez  $a0, .L80097E30
/* 0989C8 80097DC8 3C028012 */   lui   $v0, 0x8012
/* 0989CC 80097DCC 3C028012 */  lui   $v0, %hi(D_80126C3C) # $v0, 0x8012
/* 0989D0 80097DD0 24426C3C */  addiu $v0, %lo(D_80126C3C) # addiu $v0, $v0, 0x6c3c
/* 0989D4 80097DD4 8C4D0000 */  lw    $t5, ($v0)
/* 0989D8 80097DD8 3C038012 */  lui   $v1, %hi(D_80126C34) # $v1, 0x8012
/* 0989DC 80097DDC 1DA00004 */  bgtz  $t5, .L80097DF0
/* 0989E0 80097DE0 24636C34 */   addiu $v1, %lo(D_80126C34) # addiu $v1, $v1, 0x6c34
/* 0989E4 80097DE4 240E0001 */  li    $t6, 1
/* 0989E8 80097DE8 AC600000 */  sw    $zero, ($v1)
/* 0989EC 80097DEC AC4E0000 */  sw    $t6, ($v0)
.L80097DF0:
/* 0989F0 80097DF0 3C038012 */  lui   $v1, %hi(D_80126C34) # $v1, 0x8012
/* 0989F4 80097DF4 24636C34 */  addiu $v1, %lo(D_80126C34) # addiu $v1, $v1, 0x6c34
/* 0989F8 80097DF8 8C6F0000 */  lw    $t7, ($v1)
/* 0989FC 80097DFC 8FB80030 */  lw    $t8, 0x30($sp)
/* 098A00 80097E00 8FAA0030 */  lw    $t2, 0x30($sp)
/* 098A04 80097E04 01F8C821 */  addu  $t9, $t7, $t8
/* 098A08 80097E08 AC790000 */  sw    $t9, ($v1)
/* 098A0C 80097E0C 1159000D */  beq   $t2, $t9, .L80097E44
/* 098A10 80097E10 03201025 */   move  $v0, $t9
/* 098A14 80097E14 2B21001C */  slti  $at, $t9, 0x1c
/* 098A18 80097E18 10200003 */  beqz  $at, .L80097E28
/* 098A1C 80097E1C 244BFFFA */   addiu $t3, $v0, -6
/* 098A20 80097E20 10000008 */  b     .L80097E44
/* 098A24 80097E24 00002025 */   move  $a0, $zero
.L80097E28:
/* 098A28 80097E28 10000006 */  b     .L80097E44
/* 098A2C 80097E2C AC6B0000 */   sw    $t3, ($v1)
.L80097E30:
/* 098A30 80097E30 3C038012 */  lui   $v1, %hi(D_80126C34) # $v1, 0x8012
/* 098A34 80097E34 24636C34 */  addiu $v1, %lo(D_80126C34) # addiu $v1, $v1, 0x6c34
/* 098A38 80097E38 24426C3C */  addiu $v0, $v0, 0x6c3c
/* 098A3C 80097E3C AC600000 */  sw    $zero, ($v1)
/* 098A40 80097E40 AC400000 */  sw    $zero, ($v0)
.L80097E44:
/* 098A44 80097E44 8CA56C6C */  lw    $a1, %lo(D_80126C6C)($a1)
/* 098A48 80097E48 8FAD0030 */  lw    $t5, 0x30($sp)
/* 098A4C 80097E4C 8CAC0000 */  lw    $t4, ($a1)
/* 098A50 80097E50 00001825 */  move  $v1, $zero
/* 098A54 80097E54 448C2000 */  mtc1  $t4, $f4
/* 098A58 80097E58 19A00040 */  blez  $t5, .L80097F5C
/* 098A5C 80097E5C 46802520 */   cvt.s.w $f20, $f4
/* 098A60 80097E60 3C018012 */  lui   $at, %hi(D_80126C50) # $at, 0x8012
/* 098A64 80097E64 C4206C50 */  lwc1  $f0, %lo(D_80126C50)($at)
/* 098A68 80097E68 3C0141F8 */  li    $at, 0x41F80000 # 31.000000
/* 098A6C 80097E6C 3C028012 */  lui   $v0, %hi(D_80126C50) # $v0, 0x8012
/* 098A70 80097E70 44811000 */  mtc1  $at, $f2
/* 098A74 80097E74 44808000 */  mtc1  $zero, $f16
/* 098A78 80097E78 24426C50 */  addiu $v0, %lo(D_80126C50) # addiu $v0, $v0, 0x6c50
.L80097E7C:
/* 098A7C 80097E7C 4614003E */  c.le.s $f0, $f20
/* 098A80 80097E80 3C01800F */  lui   $at, %hi(D_800E856C) # $at, 0x800f
/* 098A84 80097E84 45000005 */  bc1f  .L80097E9C
/* 098A88 80097E88 00000000 */   nop   
/* 098A8C 80097E8C 46020180 */  add.s $f6, $f0, $f2
/* 098A90 80097E90 4600A301 */  sub.s $f12, $f20, $f0
/* 098A94 80097E94 10000004 */  b     .L80097EA8
/* 098A98 80097E98 4606A381 */   sub.s $f14, $f20, $f6
.L80097E9C:
/* 098A9C 80097E9C 4602A200 */  add.s $f8, $f20, $f2
/* 098AA0 80097EA0 46004301 */  sub.s $f12, $f8, $f0
/* 098AA4 80097EA4 4600A381 */  sub.s $f14, $f20, $f0
.L80097EA8:
/* 098AA8 80097EA8 460C6282 */  mul.s $f10, $f12, $f12
/* 098AAC 80097EAC 00000000 */  nop   
/* 098AB0 80097EB0 460E7102 */  mul.s $f4, $f14, $f14
/* 098AB4 80097EB4 4604503C */  c.lt.s $f10, $f4
/* 098AB8 80097EB8 00000000 */  nop   
/* 098ABC 80097EBC 45000003 */  bc1f  .L80097ECC
/* 098AC0 80097EC0 00000000 */   nop   
/* 098AC4 80097EC4 10000002 */  b     .L80097ED0
/* 098AC8 80097EC8 46006486 */   mov.s $f18, $f12
.L80097ECC:
/* 098ACC 80097ECC 46007486 */  mov.s $f18, $f14
.L80097ED0:
/* 098AD0 80097ED0 C426856C */  lwc1  $f6, %lo(D_800E856C)($at)
/* 098AD4 80097ED4 00000000 */  nop   
/* 098AD8 80097ED8 46069202 */  mul.s $f8, $f18, $f6
/* 098ADC 80097EDC 46080280 */  add.s $f10, $f0, $f8
/* 098AE0 80097EE0 E44A0000 */  swc1  $f10, ($v0)
/* 098AE4 80097EE4 C4400000 */  lwc1  $f0, ($v0)
/* 098AE8 80097EE8 00000000 */  nop   
/* 098AEC 80097EEC 4600103E */  c.le.s $f2, $f0
/* 098AF0 80097EF0 00000000 */  nop   
/* 098AF4 80097EF4 45000009 */  bc1f  .L80097F1C
/* 098AF8 80097EF8 00000000 */   nop   
.L80097EFC:
/* 098AFC 80097EFC 46020101 */  sub.s $f4, $f0, $f2
/* 098B00 80097F00 E4440000 */  swc1  $f4, ($v0)
/* 098B04 80097F04 C4400000 */  lwc1  $f0, ($v0)
/* 098B08 80097F08 00000000 */  nop   
/* 098B0C 80097F0C 4600103E */  c.le.s $f2, $f0
/* 098B10 80097F10 00000000 */  nop   
/* 098B14 80097F14 4501FFF9 */  bc1t  .L80097EFC
/* 098B18 80097F18 00000000 */   nop   
.L80097F1C:
/* 098B1C 80097F1C 4610003C */  c.lt.s $f0, $f16
/* 098B20 80097F20 00000000 */  nop   
/* 098B24 80097F24 4500000A */  bc1f  .L80097F50
/* 098B28 80097F28 8FAE0030 */   lw    $t6, 0x30($sp)
.L80097F2C:
/* 098B2C 80097F2C 46020180 */  add.s $f6, $f0, $f2
/* 098B30 80097F30 E4460000 */  swc1  $f6, ($v0)
/* 098B34 80097F34 C4400000 */  lwc1  $f0, ($v0)
/* 098B38 80097F38 00000000 */  nop   
/* 098B3C 80097F3C 4610003C */  c.lt.s $f0, $f16
/* 098B40 80097F40 00000000 */  nop   
/* 098B44 80097F44 4501FFF9 */  bc1t  .L80097F2C
/* 098B48 80097F48 00000000 */   nop   
/* 098B4C 80097F4C 8FAE0030 */  lw    $t6, 0x30($sp)
.L80097F50:
/* 098B50 80097F50 24630001 */  addiu $v1, $v1, 1
/* 098B54 80097F54 146EFFC9 */  bne   $v1, $t6, .L80097E7C
/* 098B58 80097F58 00000000 */   nop   
.L80097F5C:
/* 098B5C 80097F5C 3C03800E */  lui   $v1, %hi(D_800E0FA0) # $v1, 0x800e
/* 098B60 80097F60 3C078012 */  lui   $a3, %hi(D_80126C78) # $a3, 0x8012
/* 098B64 80097F64 24E76C78 */  addiu $a3, %lo(D_80126C78) # addiu $a3, $a3, 0x6c78
/* 098B68 80097F68 24630FA0 */  addiu $v1, %lo(D_800E0FA0) # addiu $v1, $v1, 0xfa0
/* 098B6C 80097F6C 8C620000 */  lw    $v0, ($v1)
/* 098B70 80097F70 8CE60000 */  lw    $a2, ($a3)
/* 098B74 80097F74 310F9000 */  andi  $t7, $t0, 0x9000
/* 098B78 80097F78 0046082A */  slt   $at, $v0, $a2
/* 098B7C 80097F7C 1020007C */  beqz  $at, .L80098170
/* 098B80 80097F80 310C9000 */   andi  $t4, $t0, 0x9000
/* 098B84 80097F84 11E00054 */  beqz  $t7, .L800980D8
/* 098B88 80097F88 310F4000 */   andi  $t7, $t0, 0x4000
/* 098B8C 80097F8C 8CA90000 */  lw    $t1, ($a1)
/* 098B90 80097F90 3C088012 */  lui   $t0, %hi(D_80126C74) # $t0, 0x8012
/* 098B94 80097F94 2921001D */  slti  $at, $t1, 0x1d
/* 098B98 80097F98 1020001D */  beqz  $at, .L80098010
/* 098B9C 80097F9C 25086C74 */   addiu $t0, %lo(D_80126C74) # addiu $t0, $t0, 0x6c74
/* 098BA0 80097FA0 3C18800E */  lui   $t8, 0x800e
/* 098BA4 80097FA4 8D190000 */  lw    $t9, ($t0)
/* 098BA8 80097FA8 0309C021 */  addu  $t8, $t8, $t1
/* 098BAC 80097FAC 93180F6C */  lbu   $t8, 0xf6c($t8)
/* 098BB0 80097FB0 03225021 */  addu  $t2, $t9, $v0
/* 098BB4 80097FB4 A1580000 */  sb    $t8, ($t2)
/* 098BB8 80097FB8 8C6B0000 */  lw    $t3, ($v1)
/* 098BBC 80097FBC 8D0D0000 */  lw    $t5, ($t0)
/* 098BC0 80097FC0 256C0001 */  addiu $t4, $t3, 1
/* 098BC4 80097FC4 AC6C0000 */  sw    $t4, ($v1)
/* 098BC8 80097FC8 01AC7821 */  addu  $t7, $t5, $t4
/* 098BCC 80097FCC A1E00000 */  sb    $zero, ($t7)
/* 098BD0 80097FD0 240400EF */  li    $a0, 239
/* 098BD4 80097FD4 0C000741 */  jal   func_80001D04
/* 098BD8 80097FD8 00002825 */   move  $a1, $zero
/* 098BDC 80097FDC 3C03800E */  lui   $v1, %hi(D_800E0FA0) # $v1, 0x800e
/* 098BE0 80097FE0 3C078012 */  lui   $a3, %hi(D_80126C78) # $a3, 0x8012
/* 098BE4 80097FE4 24E76C78 */  addiu $a3, %lo(D_80126C78) # addiu $a3, $a3, 0x6c78
/* 098BE8 80097FE8 24630FA0 */  addiu $v1, %lo(D_800E0FA0) # addiu $v1, $v1, 0xfa0
/* 098BEC 80097FEC 8C790000 */  lw    $t9, ($v1)
/* 098BF0 80097FF0 8CF80000 */  lw    $t8, ($a3)
/* 098BF4 80097FF4 240A001E */  li    $t2, 30
/* 098BF8 80097FF8 0338082A */  slt   $at, $t9, $t8
/* 098BFC 80097FFC 14200070 */  bnez  $at, .L800981C0
/* 098C00 80098000 3C0B8012 */   lui   $t3, %hi(D_80126C6C) # $t3, 0x8012
/* 098C04 80098004 8D6B6C6C */  lw    $t3, %lo(D_80126C6C)($t3)
/* 098C08 80098008 1000006D */  b     .L800981C0
/* 098C0C 8009800C AD6A0000 */   sw    $t2, ($t3)
.L80098010:
/* 098C10 80098010 2401001D */  li    $at, 29
/* 098C14 80098014 1521000E */  bne   $t1, $at, .L80098050
/* 098C18 80098018 240400EF */   li    $a0, 239
/* 098C1C 8009801C 18400008 */  blez  $v0, .L80098040
/* 098C20 80098020 24040241 */   li    $a0, 577
/* 098C24 80098024 3C088012 */  lui   $t0, %hi(D_80126C74) # $t0, 0x8012
/* 098C28 80098028 25086C74 */  addiu $t0, %lo(D_80126C74) # addiu $t0, $t0, 0x6c74
/* 098C2C 8009802C 8D0D0000 */  lw    $t5, ($t0)
/* 098C30 80098030 244CFFFF */  addiu $t4, $v0, -1
/* 098C34 80098034 AC6C0000 */  sw    $t4, ($v1)
/* 098C38 80098038 01AC7821 */  addu  $t7, $t5, $t4
/* 098C3C 8009803C A1E00000 */  sb    $zero, ($t7)
.L80098040:
/* 098C40 80098040 0C000741 */  jal   func_80001D04
/* 098C44 80098044 00002825 */   move  $a1, $zero
/* 098C48 80098048 1000005E */  b     .L800981C4
/* 098C4C 8009804C 8FA40030 */   lw    $a0, 0x30($sp)
.L80098050:
/* 098C50 80098050 14400008 */  bnez  $v0, .L80098074
/* 098C54 80098054 3C088012 */   lui   $t0, %hi(D_80126C74) # $t0, 0x8012
/* 098C58 80098058 25086C74 */  addiu $t0, %lo(D_80126C74) # addiu $t0, $t0, 0x6c74
/* 098C5C 8009805C 8D190000 */  lw    $t9, ($t0)
/* 098C60 80098060 00000000 */  nop   
/* 098C64 80098064 93380000 */  lbu   $t8, ($t9)
/* 098C68 80098068 00000000 */  nop   
/* 098C6C 8009806C 17000010 */  bnez  $t8, .L800980B0
/* 098C70 80098070 00000000 */   nop   
.L80098074:
/* 098C74 80098074 3C088012 */  lui   $t0, %hi(D_80126C74) # $t0, 0x8012
/* 098C78 80098078 0046082A */  slt   $at, $v0, $a2
/* 098C7C 8009807C 25086C74 */  addiu $t0, %lo(D_80126C74) # addiu $t0, $t0, 0x6c74
/* 098C80 80098080 1020000B */  beqz  $at, .L800980B0
/* 098C84 80098084 00401825 */   move  $v1, $v0
/* 098C88 80098088 24020020 */  li    $v0, 32
.L8009808C:
/* 098C8C 8009808C 8D0A0000 */  lw    $t2, ($t0)
/* 098C90 80098090 00000000 */  nop   
/* 098C94 80098094 01435821 */  addu  $t3, $t2, $v1
/* 098C98 80098098 A1620000 */  sb    $v0, ($t3)
/* 098C9C 8009809C 8CE60000 */  lw    $a2, ($a3)
/* 098CA0 800980A0 24630001 */  addiu $v1, $v1, 1
/* 098CA4 800980A4 0066082A */  slt   $at, $v1, $a2
/* 098CA8 800980A8 1420FFF8 */  bnez  $at, .L8009808C
/* 098CAC 800980AC 00000000 */   nop   
.L800980B0:
/* 098CB0 800980B0 8D0C0000 */  lw    $t4, ($t0)
/* 098CB4 800980B4 00002825 */  move  $a1, $zero
/* 098CB8 800980B8 01866821 */  addu  $t5, $t4, $a2
/* 098CBC 800980BC 0C000741 */  jal   func_80001D04
/* 098CC0 800980C0 A1A00000 */   sb    $zero, ($t5)
/* 098CC4 800980C4 240E0001 */  li    $t6, 1
/* 098CC8 800980C8 3C018012 */  lui   $at, %hi(D_80126C48) # $at, 0x8012
/* 098CCC 800980CC 1000003C */  b     .L800981C0
/* 098CD0 800980D0 AC2E6C48 */   sw    $t6, %lo(D_80126C48)($at)
/* 098CD4 800980D4 310F4000 */  andi  $t7, $t0, 0x4000
.L800980D8:
/* 098CD8 800980D8 11E0000E */  beqz  $t7, .L80098114
/* 098CDC 800980DC 3C088012 */   lui   $t0, %hi(D_80126C74) # $t0, 0x8012
/* 098CE0 800980E0 18400004 */  blez  $v0, .L800980F4
/* 098CE4 800980E4 25086C74 */   addiu $t0, %lo(D_80126C74) # addiu $t0, $t0, 0x6c74
/* 098CE8 800980E8 2459FFFF */  addiu $t9, $v0, -1
/* 098CEC 800980EC AC790000 */  sw    $t9, ($v1)
/* 098CF0 800980F0 03201025 */  move  $v0, $t9
.L800980F4:
/* 098CF4 800980F4 8D180000 */  lw    $t8, ($t0)
/* 098CF8 800980F8 24040241 */  li    $a0, 577
/* 098CFC 800980FC 03025021 */  addu  $t2, $t8, $v0
/* 098D00 80098100 A1400000 */  sb    $zero, ($t2)
/* 098D04 80098104 0C000741 */  jal   func_80001D04
/* 098D08 80098108 00002825 */   move  $a1, $zero
/* 098D0C 8009810C 1000002D */  b     .L800981C4
/* 098D10 80098110 8FA40030 */   lw    $a0, 0x30($sp)
.L80098114:
/* 098D14 80098114 8CA90000 */  lw    $t1, ($a1)
/* 098D18 80098118 04810002 */  bgez  $a0, .L80098124
/* 098D1C 8009811C 01201025 */   move  $v0, $t1
/* 098D20 80098120 2442FFFF */  addiu $v0, $v0, -1
.L80098124:
/* 098D24 80098124 18800002 */  blez  $a0, .L80098130
/* 098D28 80098128 00002825 */   move  $a1, $zero
/* 098D2C 8009812C 24420001 */  addiu $v0, $v0, 1
.L80098130:
/* 098D30 80098130 04410002 */  bgez  $v0, .L8009813C
/* 098D34 80098134 240400EB */   li    $a0, 235
/* 098D38 80098138 2402001E */  li    $v0, 30
.L8009813C:
/* 098D3C 8009813C 2841001F */  slti  $at, $v0, 0x1f
/* 098D40 80098140 14200002 */  bnez  $at, .L8009814C
/* 098D44 80098144 00000000 */   nop   
/* 098D48 80098148 00001025 */  move  $v0, $zero
.L8009814C:
/* 098D4C 8009814C 1049001C */  beq   $v0, $t1, .L800981C0
/* 098D50 80098150 00000000 */   nop   
/* 098D54 80098154 0C000741 */  jal   func_80001D04
/* 098D58 80098158 AFA2002C */   sw    $v0, 0x2c($sp)
/* 098D5C 8009815C 3C0B8012 */  lui   $t3, %hi(D_80126C6C) # $t3, 0x8012
/* 098D60 80098160 8FA2002C */  lw    $v0, 0x2c($sp)
/* 098D64 80098164 8D6B6C6C */  lw    $t3, %lo(D_80126C6C)($t3)
/* 098D68 80098168 10000015 */  b     .L800981C0
/* 098D6C 8009816C AD620000 */   sw    $v0, ($t3)
.L80098170:
/* 098D70 80098170 11800008 */  beqz  $t4, .L80098194
/* 098D74 80098174 310E4000 */   andi  $t6, $t0, 0x4000
/* 098D78 80098178 240400EF */  li    $a0, 239
/* 098D7C 8009817C 0C000741 */  jal   func_80001D04
/* 098D80 80098180 00002825 */   move  $a1, $zero
/* 098D84 80098184 240D0001 */  li    $t5, 1
/* 098D88 80098188 3C018012 */  lui   $at, %hi(D_80126C48) # $at, 0x8012
/* 098D8C 8009818C 1000000C */  b     .L800981C0
/* 098D90 80098190 AC2D6C48 */   sw    $t5, %lo(D_80126C48)($at)
.L80098194:
/* 098D94 80098194 11C0000A */  beqz  $t6, .L800981C0
/* 098D98 80098198 3C088012 */   lui   $t0, %hi(D_80126C74) # $t0, 0x8012
/* 098D9C 8009819C 25086C74 */  addiu $t0, %lo(D_80126C74) # addiu $t0, $t0, 0x6c74
/* 098DA0 800981A0 8D190000 */  lw    $t9, ($t0)
/* 098DA4 800981A4 244FFFFF */  addiu $t7, $v0, -1
/* 098DA8 800981A8 AC6F0000 */  sw    $t7, ($v1)
/* 098DAC 800981AC 032F5021 */  addu  $t2, $t9, $t7
/* 098DB0 800981B0 A1400000 */  sb    $zero, ($t2)
/* 098DB4 800981B4 24040241 */  li    $a0, 577
/* 098DB8 800981B8 0C000741 */  jal   func_80001D04
/* 098DBC 800981BC 00002825 */   move  $a1, $zero
.L800981C0:
/* 098DC0 800981C0 8FA40030 */  lw    $a0, 0x30($sp)
.L800981C4:
/* 098DC4 800981C4 0C025E46 */  jal   func_80097918
/* 098DC8 800981C8 00000000 */   nop   
/* 098DCC 800981CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 098DD0 800981D0 3C028012 */  lui   $v0, %hi(D_80126C48) # $v0, 0x8012
/* 098DD4 800981D4 8C426C48 */  lw    $v0, %lo(D_80126C48)($v0)
/* 098DD8 800981D8 C7B50010 */  lwc1  $f21, 0x10($sp)
/* 098DDC 800981DC C7B40014 */  lwc1  $f20, 0x14($sp)
/* 098DE0 800981E0 03E00008 */  jr    $ra
/* 098DE4 800981E4 27BD0030 */   addiu $sp, $sp, 0x30
