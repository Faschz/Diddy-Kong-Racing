.late_rodata
glabel D_800E8BC8
.double 0.00001525878906
glabel D_800E8BD0
.double 0.00001525878906
glabel D_800E8BD8
.float 0.1

.text
glabel func_800B1130
/* 0B1D30 800B1130 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0B1D34 800B1134 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B1D38 800B1138 AFB10018 */  sw    $s1, 0x18($sp)
/* 0B1D3C 800B113C AFB00014 */  sw    $s0, 0x14($sp)
/* 0B1D40 800B1140 AFA40040 */  sw    $a0, 0x40($sp)
/* 0B1D44 800B1144 84AF0008 */  lh    $t7, 8($a1)
/* 0B1D48 800B1148 3C0E800E */  lui   $t6, %hi(D_800E2CF0) # $t6, 0x800e
/* 0B1D4C 800B114C 8DCE2CF0 */  lw    $t6, %lo(D_800E2CF0)($t6)
/* 0B1D50 800B1150 000FC080 */  sll   $t8, $t7, 2
/* 0B1D54 800B1154 01D8C821 */  addu  $t9, $t6, $t8
/* 0B1D58 800B1158 8F270000 */  lw    $a3, ($t9)
/* 0B1D5C 800B115C 24010003 */  li    $at, 3
/* 0B1D60 800B1160 90E60000 */  lbu   $a2, ($a3)
/* 0B1D64 800B1164 00000000 */  nop   
/* 0B1D68 800B1168 10C10003 */  beq   $a2, $at, .L800B1178
/* 0B1D6C 800B116C 24010004 */   li    $at, 4
/* 0B1D70 800B1170 14C10003 */  bne   $a2, $at, .L800B1180
/* 0B1D74 800B1174 00000000 */   nop   
.L800B1178:
/* 0B1D78 800B1178 100002CA */  b     .L800B1CA4
/* 0B1D7C 800B117C 00001025 */   move  $v0, $zero
.L800B1180:
/* 0B1D80 800B1180 8CB10000 */  lw    $s1, ($a1)
/* 0B1D84 800B1184 00C02025 */  move  $a0, $a2
/* 0B1D88 800B1188 8E28009C */  lw    $t0, 0x9c($s1)
/* 0B1D8C 800B118C AFA70038 */  sw    $a3, 0x38($sp)
/* 0B1D90 800B1190 AFA50044 */  sw    $a1, 0x44($sp)
/* 0B1D94 800B1194 0C02C72E */  jal   func_800B1CB8
/* 0B1D98 800B1198 AFA80028 */   sw    $t0, 0x28($sp)
/* 0B1D9C 800B119C 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B1DA0 800B11A0 8FA80028 */  lw    $t0, 0x28($sp)
/* 0B1DA4 800B11A4 14400003 */  bnez  $v0, .L800B11B4
/* 0B1DA8 800B11A8 00408025 */   move  $s0, $v0
/* 0B1DAC 800B11AC 100002BD */  b     .L800B1CA4
/* 0B1DB0 800B11B0 02001025 */   move  $v0, $s0
.L800B11B4:
/* 0B1DB4 800B11B4 8FA90040 */  lw    $t1, 0x40($sp)
/* 0B1DB8 800B11B8 240B8000 */  li    $t3, -32768
/* 0B1DBC 800B11BC 852A002E */  lh    $t2, 0x2e($t1)
/* 0B1DC0 800B11C0 A44B0006 */  sh    $t3, 6($v0)
/* 0B1DC4 800B11C4 A44A002E */  sh    $t2, 0x2e($v0)
/* 0B1DC8 800B11C8 90EC0001 */  lbu   $t4, 1($a3)
/* 0B1DCC 800B11CC 240A00FF */  li    $t2, 255
/* 0B1DD0 800B11D0 A04C0039 */  sb    $t4, 0x39($v0)
/* 0B1DD4 800B11D4 94ED0002 */  lhu   $t5, 2($a3)
/* 0B1DD8 800B11D8 AC49003C */  sw    $t1, 0x3c($v0)
/* 0B1DDC 800B11DC 31AE0800 */  andi  $t6, $t5, 0x800
/* 0B1DE0 800B11E0 11C00014 */  beqz  $t6, .L800B1234
/* 0B1DE4 800B11E4 AC4D0040 */   sw    $t5, 0x40($v0)
/* 0B1DE8 800B11E8 8D230054 */  lw    $v1, 0x54($t1)
/* 0B1DEC 800B11EC 3C01437F */  li    $at, 0x437F0000 # 255.000000
/* 0B1DF0 800B11F0 10600010 */  beqz  $v1, .L800B1234
/* 0B1DF4 800B11F4 00000000 */   nop   
/* 0B1DF8 800B11F8 C4640000 */  lwc1  $f4, ($v1)
/* 0B1DFC 800B11FC 44813000 */  mtc1  $at, $f6
/* 0B1E00 800B1200 00000000 */  nop   
/* 0B1E04 800B1204 46062202 */  mul.s $f8, $f4, $f6
/* 0B1E08 800B1208 4458F800 */  cfc1  $t8, $31
/* 0B1E0C 800B120C 00000000 */  nop   
/* 0B1E10 800B1210 37010003 */  ori   $at, $t8, 3
/* 0B1E14 800B1214 38210002 */  xori  $at, $at, 2
/* 0B1E18 800B1218 44C1F800 */  ctc1  $at, $31
/* 0B1E1C 800B121C 00000000 */  nop   
/* 0B1E20 800B1220 460042A4 */  cvt.w.s $f10, $f8
/* 0B1E24 800B1224 44195000 */  mfc1  $t9, $f10
/* 0B1E28 800B1228 44D8F800 */  ctc1  $t8, $31
/* 0B1E2C 800B122C 10000002 */  b     .L800B1238
/* 0B1E30 800B1230 A459004A */   sh    $t9, 0x4a($v0)
.L800B1234:
/* 0B1E34 800B1234 A44A004A */  sh    $t2, 0x4a($v0)
.L800B1238:
/* 0B1E38 800B1238 8E2B005C */  lw    $t3, 0x5c($s1)
/* 0B1E3C 800B123C C6300050 */  lwc1  $f16, 0x50($s1)
/* 0B1E40 800B1240 000B6380 */  sll   $t4, $t3, 0xe
/* 0B1E44 800B1244 05810015 */  bgez  $t4, .L800B129C
/* 0B1E48 800B1248 00000000 */   nop   
/* 0B1E4C 800B124C 8E25008C */  lw    $a1, 0x8c($s1)
/* 0B1E50 800B1250 E7B00024 */  swc1  $f16, 0x24($sp)
/* 0B1E54 800B1254 AFA80028 */  sw    $t0, 0x28($sp)
/* 0B1E58 800B1258 AFA70038 */  sw    $a3, 0x38($sp)
/* 0B1E5C 800B125C 0C01BE53 */  jal   get_random_number_from_range
/* 0B1E60 800B1260 00052023 */   negu  $a0, $a1
/* 0B1E64 800B1264 44829000 */  mtc1  $v0, $f18
/* 0B1E68 800B1268 3C01800F */  lui   $at, %hi(D_800E8BC8 + 4) # $at, 0x800f
/* 0B1E6C 800B126C 46809120 */  cvt.s.w $f4, $f18
/* 0B1E70 800B1270 C4298BC8 */  lwc1  $f9, %lo(D_800E8BC8)($at)
/* 0B1E74 800B1274 C4288BCC */  lwc1  $f8, %lo(D_800E8BC8 + 4)($at)
/* 0B1E78 800B1278 460021A1 */  cvt.d.s $f6, $f4
/* 0B1E7C 800B127C 46283282 */  mul.d $f10, $f6, $f8
/* 0B1E80 800B1280 C7B00024 */  lwc1  $f16, 0x24($sp)
/* 0B1E84 800B1284 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B1E88 800B1288 460084A1 */  cvt.d.s $f18, $f16
/* 0B1E8C 800B128C 8FA80028 */  lw    $t0, 0x28($sp)
/* 0B1E90 800B1290 462A9100 */  add.d $f4, $f18, $f10
/* 0B1E94 800B1294 8FA90040 */  lw    $t1, 0x40($sp)
/* 0B1E98 800B1298 46202420 */  cvt.s.d $f16, $f4
.L800B129C:
/* 0B1E9C 800B129C C4E60010 */  lwc1  $f6, 0x10($a3)
/* 0B1EA0 800B12A0 00000000 */  nop   
/* 0B1EA4 800B12A4 46103202 */  mul.s $f8, $f6, $f16
/* 0B1EA8 800B12A8 E6080008 */  swc1  $f8, 8($s0)
/* 0B1EAC 800B12AC 8E2D005C */  lw    $t5, 0x5c($s1)
/* 0B1EB0 800B12B0 C6300054 */  lwc1  $f16, 0x54($s1)
/* 0B1EB4 800B12B4 000D7B40 */  sll   $t7, $t5, 0xd
/* 0B1EB8 800B12B8 05E10015 */  bgez  $t7, .L800B1310
/* 0B1EBC 800B12BC 00000000 */   nop   
/* 0B1EC0 800B12C0 8E250090 */  lw    $a1, 0x90($s1)
/* 0B1EC4 800B12C4 E7B00024 */  swc1  $f16, 0x24($sp)
/* 0B1EC8 800B12C8 AFA80028 */  sw    $t0, 0x28($sp)
/* 0B1ECC 800B12CC AFA70038 */  sw    $a3, 0x38($sp)
/* 0B1ED0 800B12D0 0C01BE53 */  jal   get_random_number_from_range
/* 0B1ED4 800B12D4 00052023 */   negu  $a0, $a1
/* 0B1ED8 800B12D8 44829000 */  mtc1  $v0, $f18
/* 0B1EDC 800B12DC 3C01800F */  lui   $at, %hi(D_800E8BD0 + 4) # $at, 0x800f
/* 0B1EE0 800B12E0 468092A0 */  cvt.s.w $f10, $f18
/* 0B1EE4 800B12E4 C4278BD0 */  lwc1  $f7, %lo(D_800E8BD0)($at)
/* 0B1EE8 800B12E8 C4268BD4 */  lwc1  $f6, %lo(D_800E8BD0 + 4)($at)
/* 0B1EEC 800B12EC 46005121 */  cvt.d.s $f4, $f10
/* 0B1EF0 800B12F0 46262202 */  mul.d $f8, $f4, $f6
/* 0B1EF4 800B12F4 C7B00024 */  lwc1  $f16, 0x24($sp)
/* 0B1EF8 800B12F8 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B1EFC 800B12FC 460084A1 */  cvt.d.s $f18, $f16
/* 0B1F00 800B1300 8FA80028 */  lw    $t0, 0x28($sp)
/* 0B1F04 800B1304 46289280 */  add.d $f10, $f18, $f8
/* 0B1F08 800B1308 8FA90040 */  lw    $t1, 0x40($sp)
/* 0B1F0C 800B130C 46205420 */  cvt.s.d $f16, $f10
.L800B1310:
/* 0B1F10 800B1310 8E2E0000 */  lw    $t6, ($s1)
/* 0B1F14 800B1314 00000000 */  nop   
/* 0B1F18 800B1318 31D81000 */  andi  $t8, $t6, 0x1000
/* 0B1F1C 800B131C 13000016 */  beqz  $t8, .L800B1378
/* 0B1F20 800B1320 00000000 */   nop   
/* 0B1F24 800B1324 C520001C */  lwc1  $f0, 0x1c($t1)
/* 0B1F28 800B1328 C5220020 */  lwc1  $f2, 0x20($t1)
/* 0B1F2C 800B132C 46000102 */  mul.s $f4, $f0, $f0
/* 0B1F30 800B1330 C52E0024 */  lwc1  $f14, 0x24($t1)
/* 0B1F34 800B1334 E7B00024 */  swc1  $f16, 0x24($sp)
/* 0B1F38 800B1338 AFA80028 */  sw    $t0, 0x28($sp)
/* 0B1F3C 800B133C 46021182 */  mul.s $f6, $f2, $f2
/* 0B1F40 800B1340 AFA70038 */  sw    $a3, 0x38($sp)
/* 0B1F44 800B1344 460E7202 */  mul.s $f8, $f14, $f14
/* 0B1F48 800B1348 46062480 */  add.s $f18, $f4, $f6
/* 0B1F4C 800B134C 0C0326B4 */  jal   sqrtf
/* 0B1F50 800B1350 46089300 */   add.s $f12, $f18, $f8
/* 0B1F54 800B1354 C7B00024 */  lwc1  $f16, 0x24($sp)
/* 0B1F58 800B1358 3C01800F */  lui   $at, %hi(D_800E8BD8) # $at, 0x800f
/* 0B1F5C 800B135C 46100282 */  mul.s $f10, $f0, $f16
/* 0B1F60 800B1360 C4248BD8 */  lwc1  $f4, %lo(D_800E8BD8)($at)
/* 0B1F64 800B1364 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B1F68 800B1368 8FA80028 */  lw    $t0, 0x28($sp)
/* 0B1F6C 800B136C 46045182 */  mul.s $f6, $f10, $f4
/* 0B1F70 800B1370 10000005 */  b     .L800B1388
/* 0B1F74 800B1374 E6060028 */   swc1  $f6, 0x28($s0)
.L800B1378:
/* 0B1F78 800B1378 C4F20010 */  lwc1  $f18, 0x10($a3)
/* 0B1F7C 800B137C 00000000 */  nop   
/* 0B1F80 800B1380 46109202 */  mul.s $f8, $f18, $f16
/* 0B1F84 800B1384 E6080028 */  swc1  $f8, 0x28($s0)
.L800B1388:
/* 0B1F88 800B1388 84E5000A */  lh    $a1, 0xa($a3)
/* 0B1F8C 800B138C AFA80028 */  sw    $t0, 0x28($sp)
/* 0B1F90 800B1390 AFA70038 */  sw    $a3, 0x38($sp)
/* 0B1F94 800B1394 0C01BE53 */  jal   get_random_number_from_range
/* 0B1F98 800B1398 00052023 */   negu  $a0, $a1
/* 0B1F9C 800B139C 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B1FA0 800B13A0 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B1FA4 800B13A4 84F90008 */  lh    $t9, 8($a3)
/* 0B1FA8 800B13A8 8FA80028 */  lw    $t0, 0x28($sp)
/* 0B1FAC 800B13AC 44805000 */  mtc1  $zero, $f10
/* 0B1FB0 800B13B0 00595021 */  addu  $t2, $v0, $t9
/* 0B1FB4 800B13B4 A60A003A */  sh    $t2, 0x3a($s0)
/* 0B1FB8 800B13B8 A2000038 */  sb    $zero, 0x38($s0)
/* 0B1FBC 800B13BC 3C03800E */  lui   $v1, %hi(D_800E2D00) # $v1, 0x800e
/* 0B1FC0 800B13C0 E60A0034 */  swc1  $f10, 0x34($s0)
/* 0B1FC4 800B13C4 8C632D00 */  lw    $v1, %lo(D_800E2D00)($v1)
/* 0B1FC8 800B13C8 2401FFFF */  li    $at, -1
/* 0B1FCC 800B13CC 10600003 */  beqz  $v1, .L800B13DC
/* 0B1FD0 800B13D0 00000000 */   nop   
/* 0B1FD4 800B13D4 10000036 */  b     .L800B14B0
/* 0B1FD8 800B13D8 AE03006C */   sw    $v1, 0x6c($s0)
.L800B13DC:
/* 0B1FDC 800B13DC 11010028 */  beq   $t0, $at, .L800B1480
/* 0B1FE0 800B13E0 00000000 */   nop   
/* 0B1FE4 800B13E4 84CB001E */  lh    $t3, 0x1e($a2)
/* 0B1FE8 800B13E8 00000000 */  nop   
/* 0B1FEC 800B13EC 256C0001 */  addiu $t4, $t3, 1
/* 0B1FF0 800B13F0 A4CC001E */  sh    $t4, 0x1e($a2)
/* 0B1FF4 800B13F4 8D0D0000 */  lw    $t5, ($t0)
/* 0B1FF8 800B13F8 84C2001E */  lh    $v0, 0x1e($a2)
/* 0B1FFC 800B13FC 00000000 */  nop   
/* 0B2000 800B1400 004D082A */  slt   $at, $v0, $t5
/* 0B2004 800B1404 14200005 */  bnez  $at, .L800B141C
/* 0B2008 800B1408 000278C0 */   sll   $t7, $v0, 3
/* 0B200C 800B140C A4C0001E */  sh    $zero, 0x1e($a2)
/* 0B2010 800B1410 84C2001E */  lh    $v0, 0x1e($a2)
/* 0B2014 800B1414 00000000 */  nop   
/* 0B2018 800B1418 000278C0 */  sll   $t7, $v0, 3
.L800B141C:
/* 0B201C 800B141C 010F7021 */  addu  $t6, $t0, $t7
/* 0B2020 800B1420 91D80014 */  lbu   $t8, 0x14($t6)
/* 0B2024 800B1424 00000000 */  nop   
/* 0B2028 800B1428 A218006C */  sb    $t8, 0x6c($s0)
/* 0B202C 800B142C 84D9001E */  lh    $t9, 0x1e($a2)
/* 0B2030 800B1430 00000000 */  nop   
/* 0B2034 800B1434 001950C0 */  sll   $t2, $t9, 3
/* 0B2038 800B1438 010A5821 */  addu  $t3, $t0, $t2
/* 0B203C 800B143C 916C0015 */  lbu   $t4, 0x15($t3)
/* 0B2040 800B1440 00000000 */  nop   
/* 0B2044 800B1444 A20C006D */  sb    $t4, 0x6d($s0)
/* 0B2048 800B1448 84CD001E */  lh    $t5, 0x1e($a2)
/* 0B204C 800B144C 00000000 */  nop   
/* 0B2050 800B1450 000D78C0 */  sll   $t7, $t5, 3
/* 0B2054 800B1454 010F7021 */  addu  $t6, $t0, $t7
/* 0B2058 800B1458 91D80016 */  lbu   $t8, 0x16($t6)
/* 0B205C 800B145C 00000000 */  nop   
/* 0B2060 800B1460 A218006E */  sb    $t8, 0x6e($s0)
/* 0B2064 800B1464 84D9001E */  lh    $t9, 0x1e($a2)
/* 0B2068 800B1468 00000000 */  nop   
/* 0B206C 800B146C 001950C0 */  sll   $t2, $t9, 3
/* 0B2070 800B1470 010A5821 */  addu  $t3, $t0, $t2
/* 0B2074 800B1474 916C0017 */  lbu   $t4, 0x17($t3)
/* 0B2078 800B1478 1000000D */  b     .L800B14B0
/* 0B207C 800B147C A20C006F */   sb    $t4, 0x6f($s0)
.L800B1480:
/* 0B2080 800B1480 90ED0014 */  lbu   $t5, 0x14($a3)
/* 0B2084 800B1484 00000000 */  nop   
/* 0B2088 800B1488 A20D006C */  sb    $t5, 0x6c($s0)
/* 0B208C 800B148C 90EF0015 */  lbu   $t7, 0x15($a3)
/* 0B2090 800B1490 00000000 */  nop   
/* 0B2094 800B1494 A20F006D */  sb    $t7, 0x6d($s0)
/* 0B2098 800B1498 90EE0016 */  lbu   $t6, 0x16($a3)
/* 0B209C 800B149C 00000000 */  nop   
/* 0B20A0 800B14A0 A20E006E */  sb    $t6, 0x6e($s0)
/* 0B20A4 800B14A4 90F80017 */  lbu   $t8, 0x17($a3)
/* 0B20A8 800B14A8 00000000 */  nop   
/* 0B20AC 800B14AC A218006F */  sb    $t8, 0x6f($s0)
.L800B14B0:
/* 0B20B0 800B14B0 8E23005C */  lw    $v1, 0x5c($s1)
/* 0B20B4 800B14B4 3C0100F0 */  lui   $at, 0xf0
/* 0B20B8 800B14B8 0061C824 */  and   $t9, $v1, $at
/* 0B20BC 800B14BC 13200037 */  beqz  $t9, .L800B159C
/* 0B20C0 800B14C0 03201825 */   move  $v1, $t9
/* 0B20C4 800B14C4 001952C0 */  sll   $t2, $t9, 0xb
/* 0B20C8 800B14C8 0541000D */  bgez  $t2, .L800B1500
/* 0B20CC 800B14CC 00036A80 */   sll   $t5, $v1, 0xa
/* 0B20D0 800B14D0 92250098 */  lbu   $a1, 0x98($s1)
/* 0B20D4 800B14D4 AFA70038 */  sw    $a3, 0x38($sp)
/* 0B20D8 800B14D8 AFB9003C */  sw    $t9, 0x3c($sp)
/* 0B20DC 800B14DC 0C01BE53 */  jal   get_random_number_from_range
/* 0B20E0 800B14E0 00052023 */   negu  $a0, $a1
/* 0B20E4 800B14E4 920B006C */  lbu   $t3, 0x6c($s0)
/* 0B20E8 800B14E8 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0B20EC 800B14EC 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B20F0 800B14F0 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B20F4 800B14F4 01626021 */  addu  $t4, $t3, $v0
/* 0B20F8 800B14F8 A20C006C */  sb    $t4, 0x6c($s0)
/* 0B20FC 800B14FC 00036A80 */  sll   $t5, $v1, 0xa
.L800B1500:
/* 0B2100 800B1500 05A1000D */  bgez  $t5, .L800B1538
/* 0B2104 800B1504 0003C240 */   sll   $t8, $v1, 9
/* 0B2108 800B1508 92250099 */  lbu   $a1, 0x99($s1)
/* 0B210C 800B150C AFA70038 */  sw    $a3, 0x38($sp)
/* 0B2110 800B1510 AFA3003C */  sw    $v1, 0x3c($sp)
/* 0B2114 800B1514 0C01BE53 */  jal   get_random_number_from_range
/* 0B2118 800B1518 00052023 */   negu  $a0, $a1
/* 0B211C 800B151C 920F006D */  lbu   $t7, 0x6d($s0)
/* 0B2120 800B1520 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0B2124 800B1524 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2128 800B1528 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B212C 800B152C 01E27021 */  addu  $t6, $t7, $v0
/* 0B2130 800B1530 A20E006D */  sb    $t6, 0x6d($s0)
/* 0B2134 800B1534 0003C240 */  sll   $t8, $v1, 9
.L800B1538:
/* 0B2138 800B1538 0701000D */  bgez  $t8, .L800B1570
/* 0B213C 800B153C 00035A00 */   sll   $t3, $v1, 8
/* 0B2140 800B1540 9225009A */  lbu   $a1, 0x9a($s1)
/* 0B2144 800B1544 AFA70038 */  sw    $a3, 0x38($sp)
/* 0B2148 800B1548 AFA3003C */  sw    $v1, 0x3c($sp)
/* 0B214C 800B154C 0C01BE53 */  jal   get_random_number_from_range
/* 0B2150 800B1550 00052023 */   negu  $a0, $a1
/* 0B2154 800B1554 9219006E */  lbu   $t9, 0x6e($s0)
/* 0B2158 800B1558 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0B215C 800B155C 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2160 800B1560 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B2164 800B1564 03225021 */  addu  $t2, $t9, $v0
/* 0B2168 800B1568 A20A006E */  sb    $t2, 0x6e($s0)
/* 0B216C 800B156C 00035A00 */  sll   $t3, $v1, 8
.L800B1570:
/* 0B2170 800B1570 0561000A */  bgez  $t3, .L800B159C
/* 0B2174 800B1574 00000000 */   nop   
/* 0B2178 800B1578 9225009B */  lbu   $a1, 0x9b($s1)
/* 0B217C 800B157C AFA70038 */  sw    $a3, 0x38($sp)
/* 0B2180 800B1580 0C01BE53 */  jal   get_random_number_from_range
/* 0B2184 800B1584 00052023 */   negu  $a0, $a1
/* 0B2188 800B1588 920C006F */  lbu   $t4, 0x6f($s0)
/* 0B218C 800B158C 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2190 800B1590 8FA70038 */  lw    $a3, 0x38($sp)
/* 0B2194 800B1594 01826821 */  addu  $t5, $t4, $v0
/* 0B2198 800B1598 A20D006F */  sb    $t5, 0x6f($s0)
.L800B159C:
/* 0B219C 800B159C 84EF000E */  lh    $t7, 0xe($a3)
/* 0B21A0 800B15A0 3C04800E */  lui   $a0, %hi(D_800E2EEC) # $a0, 0x800e
/* 0B21A4 800B15A4 A60F0060 */  sh    $t7, 0x60($s0)
/* 0B21A8 800B15A8 24842EEC */  addiu $a0, %lo(D_800E2EEC) # addiu $a0, $a0, 0x2eec
/* 0B21AC 800B15AC 8C980000 */  lw    $t8, ($a0)
/* 0B21B0 800B15B0 90EE000C */  lbu   $t6, 0xc($a3)
/* 0B21B4 800B15B4 00000000 */  nop   
/* 0B21B8 800B15B8 01D80019 */  multu $t6, $t8
/* 0B21BC 800B15BC 0000C812 */  mflo  $t9
/* 0B21C0 800B15C0 A619005C */  sh    $t9, 0x5c($s0)
/* 0B21C4 800B15C4 90EA000C */  lbu   $t2, 0xc($a3)
/* 0B21C8 800B15C8 00000000 */  nop   
/* 0B21CC 800B15CC 294100FF */  slti  $at, $t2, 0xff
/* 0B21D0 800B15D0 1020000F */  beqz  $at, .L800B1610
/* 0B21D4 800B15D4 00000000 */   nop   
/* 0B21D8 800B15D8 8E0B0040 */  lw    $t3, 0x40($s0)
/* 0B21DC 800B15DC 00000000 */  nop   
/* 0B21E0 800B15E0 316C1000 */  andi  $t4, $t3, 0x1000
/* 0B21E4 800B15E4 11800006 */  beqz  $t4, .L800B1600
/* 0B21E8 800B15E8 00000000 */   nop   
/* 0B21EC 800B15EC 860D0006 */  lh    $t5, 6($s0)
/* 0B21F0 800B15F0 00000000 */  nop   
/* 0B21F4 800B15F4 35AF0100 */  ori   $t7, $t5, 0x100
/* 0B21F8 800B15F8 10000005 */  b     .L800B1610
/* 0B21FC 800B15FC A60F0006 */   sh    $t7, 6($s0)
.L800B1600:
/* 0B2200 800B1600 860E0006 */  lh    $t6, 6($s0)
/* 0B2204 800B1604 00000000 */  nop   
/* 0B2208 800B1608 35D80080 */  ori   $t8, $t6, 0x80
/* 0B220C 800B160C A6180006 */  sh    $t8, 6($s0)
.L800B1610:
/* 0B2210 800B1610 86020060 */  lh    $v0, 0x60($s0)
/* 0B2214 800B1614 8603003A */  lh    $v1, 0x3a($s0)
/* 0B2218 800B1618 00000000 */  nop   
/* 0B221C 800B161C 0043082A */  slt   $at, $v0, $v1
/* 0B2220 800B1620 10200018 */  beqz  $at, .L800B1684
/* 0B2224 800B1624 00000000 */   nop   
/* 0B2228 800B1628 90F9000D */  lbu   $t9, 0xd($a3)
/* 0B222C 800B162C 90EA000C */  lbu   $t2, 0xc($a3)
/* 0B2230 800B1630 8C8C0000 */  lw    $t4, ($a0)
/* 0B2234 800B1634 032A5823 */  subu  $t3, $t9, $t2
/* 0B2238 800B1638 016C0019 */  multu $t3, $t4
/* 0B223C 800B163C 00627823 */  subu  $t7, $v1, $v0
/* 0B2240 800B1640 00006812 */  mflo  $t5
/* 0B2244 800B1644 00000000 */  nop   
/* 0B2248 800B1648 00000000 */  nop   
/* 0B224C 800B164C 01AF001A */  div   $zero, $t5, $t7
/* 0B2250 800B1650 15E00002 */  bnez  $t7, .L800B165C
/* 0B2254 800B1654 00000000 */   nop   
/* 0B2258 800B1658 0007000D */  break 7
.L800B165C:
/* 0B225C 800B165C 2401FFFF */  li    $at, -1
/* 0B2260 800B1660 15E10004 */  bne   $t7, $at, .L800B1674
/* 0B2264 800B1664 3C018000 */   lui   $at, 0x8000
/* 0B2268 800B1668 15A10002 */  bne   $t5, $at, .L800B1674
/* 0B226C 800B166C 00000000 */   nop   
/* 0B2270 800B1670 0006000D */  break 6
.L800B1674:
/* 0B2274 800B1674 00007012 */  mflo  $t6
/* 0B2278 800B1678 A60E005E */  sh    $t6, 0x5e($s0)
/* 0B227C 800B167C 10000003 */  b     .L800B168C
/* 0B2280 800B1680 A3A00023 */   sb    $zero, 0x23($sp)
.L800B1684:
/* 0B2284 800B1684 A600005E */  sh    $zero, 0x5e($s0)
/* 0B2288 800B1688 A3A00023 */  sb    $zero, 0x23($sp)
.L800B168C:
/* 0B228C 800B168C 84F80006 */  lh    $t8, 6($a3)
/* 0B2290 800B1690 8602002C */  lh    $v0, 0x2c($s0)
/* 0B2294 800B1694 24010080 */  li    $at, 128
/* 0B2298 800B1698 14410046 */  bne   $v0, $at, .L800B17B4
/* 0B229C 800B169C A618001A */   sh    $t8, 0x1a($s0)
/* 0B22A0 800B16A0 84E40004 */  lh    $a0, 4($a3)
/* 0B22A4 800B16A4 0C01F04B */  jal   func_8007C12C
/* 0B22A8 800B16A8 00002825 */   move  $a1, $zero
/* 0B22AC 800B16AC 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B22B0 800B16B0 1040003D */  beqz  $v0, .L800B17A8
/* 0B22B4 800B16B4 AE020044 */   sw    $v0, 0x44($s0)
/* 0B22B8 800B16B8 8C4A0008 */  lw    $t2, 8($v0)
/* 0B22BC 800B16BC 00000000 */  nop   
/* 0B22C0 800B16C0 8D4B0000 */  lw    $t3, ($t2)
/* 0B22C4 800B16C4 00000000 */  nop   
/* 0B22C8 800B16C8 856C0006 */  lh    $t4, 6($t3)
/* 0B22CC 800B16CC 00000000 */  nop   
/* 0B22D0 800B16D0 318D0004 */  andi  $t5, $t4, 4
/* 0B22D4 800B16D4 11A0000F */  beqz  $t5, .L800B1714
/* 0B22D8 800B16D8 00000000 */   nop   
/* 0B22DC 800B16DC 8E0F0040 */  lw    $t7, 0x40($s0)
/* 0B22E0 800B16E0 00000000 */  nop   
/* 0B22E4 800B16E4 31EE1000 */  andi  $t6, $t7, 0x1000
/* 0B22E8 800B16E8 11C00006 */  beqz  $t6, .L800B1704
/* 0B22EC 800B16EC 00000000 */   nop   
/* 0B22F0 800B16F0 86180006 */  lh    $t8, 6($s0)
/* 0B22F4 800B16F4 00000000 */  nop   
/* 0B22F8 800B16F8 37190100 */  ori   $t9, $t8, 0x100
/* 0B22FC 800B16FC 10000005 */  b     .L800B1714
/* 0B2300 800B1700 A6190006 */   sh    $t9, 6($s0)
.L800B1704:
/* 0B2304 800B1704 860A0006 */  lh    $t2, 6($s0)
/* 0B2308 800B1708 00000000 */  nop   
/* 0B230C 800B170C 354B0080 */  ori   $t3, $t2, 0x80
/* 0B2310 800B1710 A60B0006 */  sh    $t3, 6($s0)
.L800B1714:
/* 0B2314 800B1714 8E2C0000 */  lw    $t4, ($s1)
/* 0B2318 800B1718 00000000 */  nop   
/* 0B231C 800B171C 318D0800 */  andi  $t5, $t4, 0x800
/* 0B2320 800B1720 11A00012 */  beqz  $t5, .L800B176C
/* 0B2324 800B1724 00000000 */   nop   
/* 0B2328 800B1728 8E0F0044 */  lw    $t7, 0x44($s0)
/* 0B232C 800B172C 00002025 */  move  $a0, $zero
/* 0B2330 800B1730 85E50000 */  lh    $a1, ($t7)
/* 0B2334 800B1734 0C01BE53 */  jal   get_random_number_from_range
/* 0B2338 800B1738 24A5FFFF */   addiu $a1, $a1, -1
/* 0B233C 800B173C 8E180040 */  lw    $t8, 0x40($s0)
/* 0B2340 800B1740 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2344 800B1744 00027200 */  sll   $t6, $v0, 8
/* 0B2348 800B1748 24010002 */  li    $at, 2
/* 0B234C 800B174C 33190003 */  andi  $t9, $t8, 3
/* 0B2350 800B1750 17210063 */  bne   $t9, $at, .L800B18E0
/* 0B2354 800B1754 A60E0018 */   sh    $t6, 0x18($s0)
/* 0B2358 800B1758 860A0018 */  lh    $t2, 0x18($s0)
/* 0B235C 800B175C 00000000 */  nop   
/* 0B2360 800B1760 354B00FF */  ori   $t3, $t2, 0xff
/* 0B2364 800B1764 1000005E */  b     .L800B18E0
/* 0B2368 800B1768 A60B0018 */   sh    $t3, 0x18($s0)
.L800B176C:
/* 0B236C 800B176C 8E0C0040 */  lw    $t4, 0x40($s0)
/* 0B2370 800B1770 24010002 */  li    $at, 2
/* 0B2374 800B1774 318D0003 */  andi  $t5, $t4, 3
/* 0B2378 800B1778 15A10009 */  bne   $t5, $at, .L800B17A0
/* 0B237C 800B177C 00000000 */   nop   
/* 0B2380 800B1780 8E0F0044 */  lw    $t7, 0x44($s0)
/* 0B2384 800B1784 00000000 */  nop   
/* 0B2388 800B1788 85EE0000 */  lh    $t6, ($t7)
/* 0B238C 800B178C 00000000 */  nop   
/* 0B2390 800B1790 000EC200 */  sll   $t8, $t6, 8
/* 0B2394 800B1794 2719FFFF */  addiu $t9, $t8, -1
/* 0B2398 800B1798 10000051 */  b     .L800B18E0
/* 0B239C 800B179C A6190018 */   sh    $t9, 0x18($s0)
.L800B17A0:
/* 0B23A0 800B17A0 1000004F */  b     .L800B18E0
/* 0B23A4 800B17A4 A6000018 */   sh    $zero, 0x18($s0)
.L800B17A8:
/* 0B23A8 800B17A8 240A0001 */  li    $t2, 1
/* 0B23AC 800B17AC 1000004C */  b     .L800B18E0
/* 0B23B0 800B17B0 A3AA0023 */   sb    $t2, 0x23($sp)
.L800B17B4:
/* 0B23B4 800B17B4 24010002 */  li    $at, 2
/* 0B23B8 800B17B8 10410003 */  beq   $v0, $at, .L800B17C8
/* 0B23BC 800B17BC 24010001 */   li    $at, 1
/* 0B23C0 800B17C0 14410048 */  bne   $v0, $at, .L800B18E4
/* 0B23C4 800B17C4 83AB0023 */   lb    $t3, 0x23($sp)
.L800B17C8:
/* 0B23C8 800B17C8 8E030044 */  lw    $v1, 0x44($s0)
/* 0B23CC 800B17CC 00000000 */  nop   
/* 0B23D0 800B17D0 10600044 */  beqz  $v1, .L800B18E4
/* 0B23D4 800B17D4 83AB0023 */   lb    $t3, 0x23($sp)
/* 0B23D8 800B17D8 84E40004 */  lh    $a0, 4($a3)
/* 0B23DC 800B17DC 0C01EB9D */  jal   func_8007AE74
/* 0B23E0 800B17E0 AFA30030 */   sw    $v1, 0x30($sp)
/* 0B23E4 800B17E4 8FA30030 */  lw    $v1, 0x30($sp)
/* 0B23E8 800B17E8 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B23EC 800B17EC 1040003A */  beqz  $v0, .L800B18D8
/* 0B23F0 800B17F0 AC620000 */   sw    $v0, ($v1)
/* 0B23F4 800B17F4 844C0006 */  lh    $t4, 6($v0)
/* 0B23F8 800B17F8 00000000 */  nop   
/* 0B23FC 800B17FC 318D0004 */  andi  $t5, $t4, 4
/* 0B2400 800B1800 11A0000F */  beqz  $t5, .L800B1840
/* 0B2404 800B1804 00000000 */   nop   
/* 0B2408 800B1808 8E0F0040 */  lw    $t7, 0x40($s0)
/* 0B240C 800B180C 00000000 */  nop   
/* 0B2410 800B1810 31EE1000 */  andi  $t6, $t7, 0x1000
/* 0B2414 800B1814 11C00006 */  beqz  $t6, .L800B1830
/* 0B2418 800B1818 00000000 */   nop   
/* 0B241C 800B181C 86180006 */  lh    $t8, 6($s0)
/* 0B2420 800B1820 00000000 */  nop   
/* 0B2424 800B1824 37190100 */  ori   $t9, $t8, 0x100
/* 0B2428 800B1828 10000005 */  b     .L800B1840
/* 0B242C 800B182C A6190006 */   sh    $t9, 6($s0)
.L800B1830:
/* 0B2430 800B1830 860A0006 */  lh    $t2, 6($s0)
/* 0B2434 800B1834 00000000 */  nop   
/* 0B2438 800B1838 354B0080 */  ori   $t3, $t2, 0x80
/* 0B243C 800B183C A60B0006 */  sh    $t3, 6($s0)
.L800B1840:
/* 0B2440 800B1840 8E2C0000 */  lw    $t4, ($s1)
/* 0B2444 800B1844 00000000 */  nop   
/* 0B2448 800B1848 318D0800 */  andi  $t5, $t4, 0x800
/* 0B244C 800B184C 11A00014 */  beqz  $t5, .L800B18A0
/* 0B2450 800B1850 00000000 */   nop   
/* 0B2454 800B1854 8C6F0000 */  lw    $t7, ($v1)
/* 0B2458 800B1858 00002025 */  move  $a0, $zero
/* 0B245C 800B185C 95E50012 */  lhu   $a1, 0x12($t7)
/* 0B2460 800B1860 00000000 */  nop   
/* 0B2464 800B1864 00057203 */  sra   $t6, $a1, 8
/* 0B2468 800B1868 0C01BE53 */  jal   get_random_number_from_range
/* 0B246C 800B186C 25C5FFFF */   addiu $a1, $t6, -1
/* 0B2470 800B1870 8E190040 */  lw    $t9, 0x40($s0)
/* 0B2474 800B1874 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2478 800B1878 0002C200 */  sll   $t8, $v0, 8
/* 0B247C 800B187C 24010002 */  li    $at, 2
/* 0B2480 800B1880 332A0003 */  andi  $t2, $t9, 3
/* 0B2484 800B1884 15410016 */  bne   $t2, $at, .L800B18E0
/* 0B2488 800B1888 A6180018 */   sh    $t8, 0x18($s0)
/* 0B248C 800B188C 860B0018 */  lh    $t3, 0x18($s0)
/* 0B2490 800B1890 00000000 */  nop   
/* 0B2494 800B1894 356C00FF */  ori   $t4, $t3, 0xff
/* 0B2498 800B1898 10000011 */  b     .L800B18E0
/* 0B249C 800B189C A60C0018 */   sh    $t4, 0x18($s0)
.L800B18A0:
/* 0B24A0 800B18A0 8E0D0040 */  lw    $t5, 0x40($s0)
/* 0B24A4 800B18A4 24010002 */  li    $at, 2
/* 0B24A8 800B18A8 31AF0003 */  andi  $t7, $t5, 3
/* 0B24AC 800B18AC 15E10008 */  bne   $t7, $at, .L800B18D0
/* 0B24B0 800B18B0 00000000 */   nop   
/* 0B24B4 800B18B4 8C6E0000 */  lw    $t6, ($v1)
/* 0B24B8 800B18B8 00000000 */  nop   
/* 0B24BC 800B18BC 95D80012 */  lhu   $t8, 0x12($t6)
/* 0B24C0 800B18C0 00000000 */  nop   
/* 0B24C4 800B18C4 2719FFFF */  addiu $t9, $t8, -1
/* 0B24C8 800B18C8 10000005 */  b     .L800B18E0
/* 0B24CC 800B18CC A6190018 */   sh    $t9, 0x18($s0)
.L800B18D0:
/* 0B24D0 800B18D0 10000003 */  b     .L800B18E0
/* 0B24D4 800B18D4 A6000018 */   sh    $zero, 0x18($s0)
.L800B18D8:
/* 0B24D8 800B18D8 240A0001 */  li    $t2, 1
/* 0B24DC 800B18DC A3AA0023 */  sb    $t2, 0x23($sp)
.L800B18E0:
/* 0B24E0 800B18E0 83AB0023 */  lb    $t3, 0x23($sp)
.L800B18E4:
/* 0B24E4 800B18E4 00000000 */  nop   
/* 0B24E8 800B18E8 15600012 */  bnez  $t3, .L800B1934
/* 0B24EC 800B18EC 8FA50040 */   lw    $a1, 0x40($sp)
/* 0B24F0 800B18F0 8602002C */  lh    $v0, 0x2c($s0)
/* 0B24F4 800B18F4 24010001 */  li    $at, 1
/* 0B24F8 800B18F8 14410007 */  bne   $v0, $at, .L800B1918
/* 0B24FC 800B18FC 24010002 */   li    $at, 2
/* 0B2500 800B1900 0C02BC29 */  jal   func_800AF0A4
/* 0B2504 800B1904 02002025 */   move  $a0, $s0
/* 0B2508 800B1908 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B250C 800B190C 8602002C */  lh    $v0, 0x2c($s0)
/* 0B2510 800B1910 00000000 */  nop   
/* 0B2514 800B1914 24010002 */  li    $at, 2
.L800B1918:
/* 0B2518 800B1918 14410006 */  bne   $v0, $at, .L800B1934
/* 0B251C 800B191C 8FA50040 */   lw    $a1, 0x40($sp)
/* 0B2520 800B1920 0C02BC3C */  jal   func_800AF0F0
/* 0B2524 800B1924 02002025 */   move  $a0, $s0
/* 0B2528 800B1928 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B252C 800B192C 00000000 */  nop   
/* 0B2530 800B1930 8FA50040 */  lw    $a1, 0x40($sp)
.L800B1934:
/* 0B2534 800B1934 02002025 */  move  $a0, $s0
/* 0B2538 800B1938 0C02C0F0 */  jal   func_800B03C0
/* 0B253C 800B193C 02203825 */   move  $a3, $s1
/* 0B2540 800B1940 8E2C0000 */  lw    $t4, ($s1)
/* 0B2544 800B1944 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2548 800B1948 318D0080 */  andi  $t5, $t4, 0x80
/* 0B254C 800B194C 11A0000B */  beqz  $t5, .L800B197C
/* 0B2550 800B1950 8FB90040 */   lw    $t9, 0x40($sp)
/* 0B2554 800B1954 862F0044 */  lh    $t7, 0x44($s1)
/* 0B2558 800B1958 00000000 */  nop   
/* 0B255C 800B195C A60F0000 */  sh    $t7, ($s0)
/* 0B2560 800B1960 862E0046 */  lh    $t6, 0x46($s1)
/* 0B2564 800B1964 00000000 */  nop   
/* 0B2568 800B1968 A60E0002 */  sh    $t6, 2($s0)
/* 0B256C 800B196C 86380048 */  lh    $t8, 0x48($s1)
/* 0B2570 800B1970 10000013 */  b     .L800B19C0
/* 0B2574 800B1974 A6180004 */   sh    $t8, 4($s0)
/* 0B2578 800B1978 8FB90040 */  lw    $t9, 0x40($sp)
.L800B197C:
/* 0B257C 800B197C 862B0044 */  lh    $t3, 0x44($s1)
/* 0B2580 800B1980 872A0000 */  lh    $t2, ($t9)
/* 0B2584 800B1984 00000000 */  nop   
/* 0B2588 800B1988 014B6021 */  addu  $t4, $t2, $t3
/* 0B258C 800B198C A60C0000 */  sh    $t4, ($s0)
/* 0B2590 800B1990 8FAD0040 */  lw    $t5, 0x40($sp)
/* 0B2594 800B1994 862E0046 */  lh    $t6, 0x46($s1)
/* 0B2598 800B1998 85AF0002 */  lh    $t7, 2($t5)
/* 0B259C 800B199C 00000000 */  nop   
/* 0B25A0 800B19A0 01EEC021 */  addu  $t8, $t7, $t6
/* 0B25A4 800B19A4 A6180002 */  sh    $t8, 2($s0)
/* 0B25A8 800B19A8 8FB90040 */  lw    $t9, 0x40($sp)
/* 0B25AC 800B19AC 862B0048 */  lh    $t3, 0x48($s1)
/* 0B25B0 800B19B0 872A0004 */  lh    $t2, 4($t9)
/* 0B25B4 800B19B4 00000000 */  nop   
/* 0B25B8 800B19B8 014B6021 */  addu  $t4, $t2, $t3
/* 0B25BC 800B19BC A60C0004 */  sh    $t4, 4($s0)
.L800B19C0:
/* 0B25C0 800B19C0 8E23005C */  lw    $v1, 0x5c($s1)
/* 0B25C4 800B19C4 00000000 */  nop   
/* 0B25C8 800B19C8 306D3800 */  andi  $t5, $v1, 0x3800
/* 0B25CC 800B19CC 11A00023 */  beqz  $t5, .L800B1A5C
/* 0B25D0 800B19D0 01A01825 */   move  $v1, $t5
/* 0B25D4 800B19D4 31AF0800 */  andi  $t7, $t5, 0x800
/* 0B25D8 800B19D8 11E0000B */  beqz  $t7, .L800B1A08
/* 0B25DC 800B19DC 30791000 */   andi  $t9, $v1, 0x1000
/* 0B25E0 800B19E0 86250080 */  lh    $a1, 0x80($s1)
/* 0B25E4 800B19E4 AFAD003C */  sw    $t5, 0x3c($sp)
/* 0B25E8 800B19E8 0C01BE53 */  jal   get_random_number_from_range
/* 0B25EC 800B19EC 00052023 */   negu  $a0, $a1
/* 0B25F0 800B19F0 860E0000 */  lh    $t6, ($s0)
/* 0B25F4 800B19F4 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0B25F8 800B19F8 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B25FC 800B19FC 01C2C021 */  addu  $t8, $t6, $v0
/* 0B2600 800B1A00 A6180000 */  sh    $t8, ($s0)
/* 0B2604 800B1A04 30791000 */  andi  $t9, $v1, 0x1000
.L800B1A08:
/* 0B2608 800B1A08 1320000B */  beqz  $t9, .L800B1A38
/* 0B260C 800B1A0C 306C2000 */   andi  $t4, $v1, 0x2000
/* 0B2610 800B1A10 86250082 */  lh    $a1, 0x82($s1)
/* 0B2614 800B1A14 AFA3003C */  sw    $v1, 0x3c($sp)
/* 0B2618 800B1A18 0C01BE53 */  jal   get_random_number_from_range
/* 0B261C 800B1A1C 00052023 */   negu  $a0, $a1
/* 0B2620 800B1A20 860A0002 */  lh    $t2, 2($s0)
/* 0B2624 800B1A24 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0B2628 800B1A28 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B262C 800B1A2C 01425821 */  addu  $t3, $t2, $v0
/* 0B2630 800B1A30 A60B0002 */  sh    $t3, 2($s0)
/* 0B2634 800B1A34 306C2000 */  andi  $t4, $v1, 0x2000
.L800B1A38:
/* 0B2638 800B1A38 11800008 */  beqz  $t4, .L800B1A5C
/* 0B263C 800B1A3C 00000000 */   nop   
/* 0B2640 800B1A40 86250084 */  lh    $a1, 0x84($s1)
/* 0B2644 800B1A44 0C01BE53 */  jal   get_random_number_from_range
/* 0B2648 800B1A48 00052023 */   negu  $a0, $a1
/* 0B264C 800B1A4C 860D0004 */  lh    $t5, 4($s0)
/* 0B2650 800B1A50 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2654 800B1A54 01A27821 */  addu  $t7, $t5, $v0
/* 0B2658 800B1A58 A60F0004 */  sh    $t7, 4($s0)
.L800B1A5C:
/* 0B265C 800B1A5C 862E004A */  lh    $t6, 0x4a($s1)
/* 0B2660 800B1A60 3C010001 */  lui   $at, (0x0001C000 >> 16) # lui $at, 1
/* 0B2664 800B1A64 A60E0062 */  sh    $t6, 0x62($s0)
/* 0B2668 800B1A68 8638004C */  lh    $t8, 0x4c($s1)
/* 0B266C 800B1A6C 3421C000 */  ori   $at, (0x0001C000 & 0xFFFF) # ori $at, $at, 0xc000
/* 0B2670 800B1A70 A6180064 */  sh    $t8, 0x64($s0)
/* 0B2674 800B1A74 8639004E */  lh    $t9, 0x4e($s1)
/* 0B2678 800B1A78 00000000 */  nop   
/* 0B267C 800B1A7C A6190066 */  sh    $t9, 0x66($s0)
/* 0B2680 800B1A80 8E23005C */  lw    $v1, 0x5c($s1)
/* 0B2684 800B1A84 00000000 */  nop   
/* 0B2688 800B1A88 00615024 */  and   $t2, $v1, $at
/* 0B268C 800B1A8C 11400023 */  beqz  $t2, .L800B1B1C
/* 0B2690 800B1A90 01401825 */   move  $v1, $t2
/* 0B2694 800B1A94 314B4000 */  andi  $t3, $t2, 0x4000
/* 0B2698 800B1A98 1160000B */  beqz  $t3, .L800B1AC8
/* 0B269C 800B1A9C 306F8000 */   andi  $t7, $v1, 0x8000
/* 0B26A0 800B1AA0 86250086 */  lh    $a1, 0x86($s1)
/* 0B26A4 800B1AA4 AFAA003C */  sw    $t2, 0x3c($sp)
/* 0B26A8 800B1AA8 0C01BE53 */  jal   get_random_number_from_range
/* 0B26AC 800B1AAC 00052023 */   negu  $a0, $a1
/* 0B26B0 800B1AB0 860C0062 */  lh    $t4, 0x62($s0)
/* 0B26B4 800B1AB4 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0B26B8 800B1AB8 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B26BC 800B1ABC 01826821 */  addu  $t5, $t4, $v0
/* 0B26C0 800B1AC0 A60D0062 */  sh    $t5, 0x62($s0)
/* 0B26C4 800B1AC4 306F8000 */  andi  $t7, $v1, 0x8000
.L800B1AC8:
/* 0B26C8 800B1AC8 11E0000B */  beqz  $t7, .L800B1AF8
/* 0B26CC 800B1ACC 0003CBC0 */   sll   $t9, $v1, 0xf
/* 0B26D0 800B1AD0 86250088 */  lh    $a1, 0x88($s1)
/* 0B26D4 800B1AD4 AFA3003C */  sw    $v1, 0x3c($sp)
/* 0B26D8 800B1AD8 0C01BE53 */  jal   get_random_number_from_range
/* 0B26DC 800B1ADC 00052023 */   negu  $a0, $a1
/* 0B26E0 800B1AE0 860E0064 */  lh    $t6, 0x64($s0)
/* 0B26E4 800B1AE4 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0B26E8 800B1AE8 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B26EC 800B1AEC 01C2C021 */  addu  $t8, $t6, $v0
/* 0B26F0 800B1AF0 A6180064 */  sh    $t8, 0x64($s0)
/* 0B26F4 800B1AF4 0003CBC0 */  sll   $t9, $v1, 0xf
.L800B1AF8:
/* 0B26F8 800B1AF8 07210009 */  bgez  $t9, .L800B1B20
/* 0B26FC 800B1AFC 8FA50040 */   lw    $a1, 0x40($sp)
/* 0B2700 800B1B00 8625008A */  lh    $a1, 0x8a($s1)
/* 0B2704 800B1B04 0C01BE53 */  jal   get_random_number_from_range
/* 0B2708 800B1B08 00052023 */   negu  $a0, $a1
/* 0B270C 800B1B0C 860A0066 */  lh    $t2, 0x66($s0)
/* 0B2710 800B1B10 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2714 800B1B14 01425821 */  addu  $t3, $t2, $v0
/* 0B2718 800B1B18 A60B0066 */  sh    $t3, 0x66($s0)
.L800B1B1C:
/* 0B271C 800B1B1C 8FA50040 */  lw    $a1, 0x40($sp)
.L800B1B20:
/* 0B2720 800B1B20 02002025 */  move  $a0, $s0
/* 0B2724 800B1B24 0C02C004 */  jal   func_800B0010
/* 0B2728 800B1B28 02203825 */   move  $a3, $s1
/* 0B272C 800B1B2C 8E0C0040 */  lw    $t4, 0x40($s0)
/* 0B2730 800B1B30 3C01800E */  lui   $at, %hi(D_800E2E2C) # $at, 0x800e
/* 0B2734 800B1B34 000C6903 */  sra   $t5, $t4, 4
/* 0B2738 800B1B38 31AF0007 */  andi  $t7, $t5, 7
/* 0B273C 800B1B3C 000F7080 */  sll   $t6, $t7, 2
/* 0B2740 800B1B40 002E0821 */  addu  $at, $at, $t6
/* 0B2744 800B1B44 C4242E2C */  lwc1  $f4, %lo(D_800E2E2C)($at)
/* 0B2748 800B1B48 92180039 */  lbu   $t8, 0x39($s0)
/* 0B274C 800B1B4C 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2750 800B1B50 24010005 */  li    $at, 5
/* 0B2754 800B1B54 1701000D */  bne   $t8, $at, .L800B1B8C
/* 0B2758 800B1B58 E6040068 */   swc1  $f4, 0x68($s0)
/* 0B275C 800B1B5C C600001C */  lwc1  $f0, 0x1c($s0)
/* 0B2760 800B1B60 C6020020 */  lwc1  $f2, 0x20($s0)
/* 0B2764 800B1B64 46000182 */  mul.s $f6, $f0, $f0
/* 0B2768 800B1B68 C60E0024 */  lwc1  $f14, 0x24($s0)
/* 0B276C 800B1B6C 46021482 */  mul.s $f18, $f2, $f2
/* 0B2770 800B1B70 00000000 */  nop   
/* 0B2774 800B1B74 460E7282 */  mul.s $f10, $f14, $f14
/* 0B2778 800B1B78 46123200 */  add.s $f8, $f6, $f18
/* 0B277C 800B1B7C 0C0326B4 */  jal   sqrtf
/* 0B2780 800B1B80 460A4300 */   add.s $f12, $f8, $f10
/* 0B2784 800B1B84 8FA60044 */  lw    $a2, 0x44($sp)
/* 0B2788 800B1B88 E6000058 */  swc1  $f0, 0x58($s0)
.L800B1B8C:
/* 0B278C 800B1B8C 8E390000 */  lw    $t9, ($s1)
/* 0B2790 800B1B90 00000000 */  nop   
/* 0B2794 800B1B94 332A0002 */  andi  $t2, $t9, 2
/* 0B2798 800B1B98 1140001B */  beqz  $t2, .L800B1C08
/* 0B279C 800B1B9C 00000000 */   nop   
/* 0B27A0 800B1BA0 90CB0006 */  lbu   $t3, 6($a2)
/* 0B27A4 800B1BA4 00000000 */  nop   
/* 0B27A8 800B1BA8 256C0001 */  addiu $t4, $t3, 1
/* 0B27AC 800B1BAC A0CC0006 */  sb    $t4, 6($a2)
/* 0B27B0 800B1BB0 862D001A */  lh    $t5, 0x1a($s1)
/* 0B27B4 800B1BB4 318200FF */  andi  $v0, $t4, 0xff
/* 0B27B8 800B1BB8 004D082A */  slt   $at, $v0, $t5
/* 0B27BC 800B1BBC 14200012 */  bnez  $at, .L800B1C08
/* 0B27C0 800B1BC0 00000000 */   nop   
/* 0B27C4 800B1BC4 84CF000C */  lh    $t7, 0xc($a2)
/* 0B27C8 800B1BC8 862E001C */  lh    $t6, 0x1c($s1)
/* 0B27CC 800B1BCC 84D9000E */  lh    $t9, 0xe($a2)
/* 0B27D0 800B1BD0 01EEC021 */  addu  $t8, $t7, $t6
/* 0B27D4 800B1BD4 A4D8000C */  sh    $t8, 0xc($a2)
/* 0B27D8 800B1BD8 862A001E */  lh    $t2, 0x1e($s1)
/* 0B27DC 800B1BDC 84CC0010 */  lh    $t4, 0x10($a2)
/* 0B27E0 800B1BE0 032A5821 */  addu  $t3, $t9, $t2
/* 0B27E4 800B1BE4 A4CB000E */  sh    $t3, 0xe($a2)
/* 0B27E8 800B1BE8 862D0018 */  lh    $t5, 0x18($s1)
/* 0B27EC 800B1BEC 00000000 */  nop   
/* 0B27F0 800B1BF0 018D7821 */  addu  $t7, $t4, $t5
/* 0B27F4 800B1BF4 A4CF0010 */  sh    $t7, 0x10($a2)
/* 0B27F8 800B1BF8 862E001A */  lh    $t6, 0x1a($s1)
/* 0B27FC 800B1BFC 00000000 */  nop   
/* 0B2800 800B1C00 004EC023 */  subu  $t8, $v0, $t6
/* 0B2804 800B1C04 A0D80006 */  sb    $t8, 6($a2)
.L800B1C08:
/* 0B2808 800B1C08 8E390000 */  lw    $t9, ($s1)
/* 0B280C 800B1C0C 00000000 */  nop   
/* 0B2810 800B1C10 332A0008 */  andi  $t2, $t9, 8
/* 0B2814 800B1C14 1140001B */  beqz  $t2, .L800B1C84
/* 0B2818 800B1C18 00000000 */   nop   
/* 0B281C 800B1C1C 90CB0007 */  lbu   $t3, 7($a2)
/* 0B2820 800B1C20 00000000 */  nop   
/* 0B2824 800B1C24 256C0001 */  addiu $t4, $t3, 1
/* 0B2828 800B1C28 A0CC0007 */  sb    $t4, 7($a2)
/* 0B282C 800B1C2C 862D0028 */  lh    $t5, 0x28($s1)
/* 0B2830 800B1C30 318200FF */  andi  $v0, $t4, 0xff
/* 0B2834 800B1C34 004D082A */  slt   $at, $v0, $t5
/* 0B2838 800B1C38 14200012 */  bnez  $at, .L800B1C84
/* 0B283C 800B1C3C 00000000 */   nop   
/* 0B2840 800B1C40 84CF0012 */  lh    $t7, 0x12($a2)
/* 0B2844 800B1C44 862E002A */  lh    $t6, 0x2a($s1)
/* 0B2848 800B1C48 84D90014 */  lh    $t9, 0x14($a2)
/* 0B284C 800B1C4C 01EEC021 */  addu  $t8, $t7, $t6
/* 0B2850 800B1C50 A4D80012 */  sh    $t8, 0x12($a2)
/* 0B2854 800B1C54 862A002C */  lh    $t2, 0x2c($s1)
/* 0B2858 800B1C58 84CC0016 */  lh    $t4, 0x16($a2)
/* 0B285C 800B1C5C 032A5821 */  addu  $t3, $t9, $t2
/* 0B2860 800B1C60 A4CB0014 */  sh    $t3, 0x14($a2)
/* 0B2864 800B1C64 862D002E */  lh    $t5, 0x2e($s1)
/* 0B2868 800B1C68 00000000 */  nop   
/* 0B286C 800B1C6C 018D7821 */  addu  $t7, $t4, $t5
/* 0B2870 800B1C70 A4CF0016 */  sh    $t7, 0x16($a2)
/* 0B2874 800B1C74 862E0028 */  lh    $t6, 0x28($s1)
/* 0B2878 800B1C78 00000000 */  nop   
/* 0B287C 800B1C7C 004EC023 */  subu  $t8, $v0, $t6
/* 0B2880 800B1C80 A0D80007 */  sb    $t8, 7($a2)
.L800B1C84:
/* 0B2884 800B1C84 8E190044 */  lw    $t9, 0x44($s0)
/* 0B2888 800B1C88 02001025 */  move  $v0, $s0
/* 0B288C 800B1C8C 17200005 */  bnez  $t9, .L800B1CA4
/* 0B2890 800B1C90 00000000 */   nop   
/* 0B2894 800B1C94 0C02C810 */  jal   func_800B2040
/* 0B2898 800B1C98 02002025 */   move  $a0, $s0
/* 0B289C 800B1C9C 10000001 */  b     .L800B1CA4
/* 0B28A0 800B1CA0 00001025 */   move  $v0, $zero
.L800B1CA4:
/* 0B28A4 800B1CA4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B28A8 800B1CA8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0B28AC 800B1CAC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0B28B0 800B1CB0 03E00008 */  jr    $ra
/* 0B28B4 800B1CB4 27BD0040 */   addiu $sp, $sp, 0x40

