glabel func_80048C7C
/* 04987C 80048C7C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 049880 80048C80 AFBF001C */  sw    $ra, 0x1c($sp)
/* 049884 80048C84 AFB00018 */  sw    $s0, 0x18($sp)
/* 049888 80048C88 84AE0000 */  lh    $t6, ($a1)
/* 04988C 80048C8C 2401FFFF */  li    $at, -1
/* 049890 80048C90 15C10003 */  bne   $t6, $at, .L80048CA0
/* 049894 80048C94 00A08025 */   move  $s0, $a1
/* 049898 80048C98 10000003 */  b     .L80048CA8
/* 04989C 80048C9C 00001825 */   move  $v1, $zero
.L80048CA0:
/* 0498A0 80048CA0 82030185 */  lb    $v1, 0x185($s0)
/* 0498A4 80048CA4 00000000 */  nop   
.L80048CA8:
/* 0498A8 80048CA8 82020187 */  lb    $v0, 0x187($s0)
/* 0498AC 80048CAC 00000000 */  nop   
/* 0498B0 80048CB0 10400005 */  beqz  $v0, .L80048CC8
/* 0498B4 80048CB4 00000000 */   nop   
/* 0498B8 80048CB8 860F018E */  lh    $t7, 0x18e($s0)
/* 0498BC 80048CBC 24010004 */  li    $at, 4
/* 0498C0 80048CC0 19E00003 */  blez  $t7, .L80048CD0
/* 0498C4 80048CC4 00000000 */   nop   
.L80048CC8:
/* 0498C8 80048CC8 10000062 */  b     .L80048E54
/* 0498CC 80048CCC A2000187 */   sb    $zero, 0x187($s0)
.L80048CD0:
/* 0498D0 80048CD0 10410008 */  beq   $v0, $at, .L80048CF4
/* 0498D4 80048CD4 02002825 */   move  $a1, $s0
/* 0498D8 80048CD8 24060002 */  li    $a2, 2
/* 0498DC 80048CDC A3A30027 */  sb    $v1, 0x27($sp)
/* 0498E0 80048CE0 0C015DB8 */  jal   func_800576E0
/* 0498E4 80048CE4 AFA40028 */   sw    $a0, 0x28($sp)
/* 0498E8 80048CE8 83A30027 */  lb    $v1, 0x27($sp)
/* 0498EC 80048CEC 8FA40028 */  lw    $a0, 0x28($sp)
/* 0498F0 80048CF0 00000000 */  nop   
.L80048CF4:
/* 0498F4 80048CF4 240501C2 */  li    $a1, 450
/* 0498F8 80048CF8 24060008 */  li    $a2, 8
/* 0498FC 80048CFC 24070081 */  li    $a3, 129
/* 049900 80048D00 A3A30027 */  sb    $v1, 0x27($sp)
/* 049904 80048D04 0C015C2E */  jal   func_800570B8
/* 049908 80048D08 AFA40028 */   sw    $a0, 0x28($sp)
/* 04990C 80048D0C 82180187 */  lb    $t8, 0x187($s0)
/* 049910 80048D10 83A30027 */  lb    $v1, 0x27($sp)
/* 049914 80048D14 2719FFFF */  addiu $t9, $t8, -1
/* 049918 80048D18 8FA40028 */  lw    $a0, 0x28($sp)
/* 04991C 80048D1C 2F210006 */  sltiu $at, $t9, 6
/* 049920 80048D20 1020004B */  beqz  $at, .L80048E50
/* 049924 80048D24 0019C880 */   sll   $t9, $t9, 2
/* 049928 80048D28 3C01800E */  lui   $at, %hi(D_800E646C) # $at, 0x800e
/* 04992C 80048D2C 00390821 */  addu  $at, $at, $t9
/* 049930 80048D30 8C39646C */  lw    $t9, %lo(D_800E646C)($at)
/* 049934 80048D34 00000000 */  nop   
/* 049938 80048D38 03200008 */  jr    $t9
/* 04993C 80048D3C 00000000 */   nop   
/* 049940 80048D40 24080001 */  li    $t0, 1
/* 049944 80048D44 14600008 */  bnez  $v1, .L80048D68
/* 049948 80048D48 A20801F1 */   sb    $t0, 0x1f1($s0)
/* 04994C 80048D4C 44800000 */  mtc1  $zero, $f0
/* 049950 80048D50 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 049954 80048D54 44812000 */  mtc1  $at, $f4
/* 049958 80048D58 E480001C */  swc1  $f0, 0x1c($a0)
/* 04995C 80048D5C E4800024 */  swc1  $f0, 0x24($a0)
/* 049960 80048D60 1000003B */  b     .L80048E50
/* 049964 80048D64 E4840020 */   swc1  $f4, 0x20($a0)
.L80048D68:
/* 049968 80048D68 C486001C */  lwc1  $f6, 0x1c($a0)
/* 04996C 80048D6C 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 049970 80048D70 44810800 */  mtc1  $at, $f1
/* 049974 80048D74 44800000 */  mtc1  $zero, $f0
/* 049978 80048D78 46003221 */  cvt.d.s $f8, $f6
/* 04997C 80048D7C 46204282 */  mul.d $f10, $f8, $f0
/* 049980 80048D80 C4920024 */  lwc1  $f18, 0x24($a0)
/* 049984 80048D84 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 049988 80048D88 46009121 */  cvt.d.s $f4, $f18
/* 04998C 80048D8C 46202182 */  mul.d $f6, $f4, $f0
/* 049990 80048D90 46205420 */  cvt.s.d $f16, $f10
/* 049994 80048D94 44815000 */  mtc1  $at, $f10
/* 049998 80048D98 E490001C */  swc1  $f16, 0x1c($a0)
/* 04999C 80048D9C E48A0020 */  swc1  $f10, 0x20($a0)
/* 0499A0 80048DA0 46203220 */  cvt.s.d $f8, $f6
/* 0499A4 80048DA4 1000002A */  b     .L80048E50
/* 0499A8 80048DA8 E4880024 */   swc1  $f8, 0x24($a0)
/* 0499AC 80048DAC 2409003C */  li    $t1, 60
/* 0499B0 80048DB0 10000027 */  b     .L80048E50
/* 0499B4 80048DB4 A20901ED */   sb    $t1, 0x1ed($s0)
/* 0499B8 80048DB8 3C01800E */  lui   $at, %hi(D_800E648C) # $at, 0x800e
/* 0499BC 80048DBC C4216488 */  lwc1  $f1, %lo(D_800E6488)($at)
/* 0499C0 80048DC0 C420648C */  lwc1  $f0, %lo(D_800E648C)($at)
/* 0499C4 80048DC4 240A0078 */  li    $t2, 120
/* 0499C8 80048DC8 A60A0204 */  sh    $t2, 0x204($s0)
/* 0499CC 80048DCC C490001C */  lwc1  $f16, 0x1c($a0)
/* 0499D0 80048DD0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0499D4 80048DD4 460084A1 */  cvt.d.s $f18, $f16
/* 0499D8 80048DD8 46209102 */  mul.d $f4, $f18, $f0
/* 0499DC 80048DDC 44811000 */  mtc1  $at, $f2
/* 0499E0 80048DE0 C4880020 */  lwc1  $f8, 0x20($a0)
/* 0499E4 80048DE4 00000000 */  nop   
/* 0499E8 80048DE8 4608103C */  c.lt.s $f2, $f8
/* 0499EC 80048DEC 462021A0 */  cvt.s.d $f6, $f4
/* 0499F0 80048DF0 45000002 */  bc1f  .L80048DFC
/* 0499F4 80048DF4 E486001C */   swc1  $f6, 0x1c($a0)
/* 0499F8 80048DF8 E4820020 */  swc1  $f2, 0x20($a0)
.L80048DFC:
/* 0499FC 80048DFC C48A0024 */  lwc1  $f10, 0x24($a0)
/* 049A00 80048E00 00000000 */  nop   
/* 049A04 80048E04 46005421 */  cvt.d.s $f16, $f10
/* 049A08 80048E08 46208482 */  mul.d $f18, $f16, $f0
/* 049A0C 80048E0C 46209120 */  cvt.s.d $f4, $f18
/* 049A10 80048E10 1000000F */  b     .L80048E50
/* 049A14 80048E14 E4840024 */   swc1  $f4, 0x24($a0)
/* 049A18 80048E18 44800000 */  mtc1  $zero, $f0
/* 049A1C 80048E1C 240B0001 */  li    $t3, 1
/* 049A20 80048E20 A20B01F1 */  sb    $t3, 0x1f1($s0)
/* 049A24 80048E24 E600002C */  swc1  $f0, 0x2c($s0)
/* 049A28 80048E28 3C01800E */  lui   $at, %hi(D_800E6494) # $at, 0x800e
/* 049A2C 80048E2C C4860020 */  lwc1  $f6, 0x20($a0)
/* 049A30 80048E30 C42B6490 */  lwc1  $f11, %lo(D_800E6490)($at)
/* 049A34 80048E34 C42A6494 */  lwc1  $f10, %lo(D_800E6494)($at)
/* 049A38 80048E38 46003221 */  cvt.d.s $f8, $f6
/* 049A3C 80048E3C 462A4400 */  add.d $f16, $f8, $f10
/* 049A40 80048E40 24050139 */  li    $a1, 313
/* 049A44 80048E44 462084A0 */  cvt.s.d $f18, $f16
/* 049A48 80048E48 0C015C12 */  jal   func_80057048
/* 049A4C 80048E4C E4920020 */   swc1  $f18, 0x20($a0)
.L80048E50:
/* 049A50 80048E50 A2000187 */  sb    $zero, 0x187($s0)
.L80048E54:
/* 049A54 80048E54 8FBF001C */  lw    $ra, 0x1c($sp)
/* 049A58 80048E58 8FB00018 */  lw    $s0, 0x18($sp)
/* 049A5C 80048E5C 03E00008 */  jr    $ra
/* 049A60 80048E60 27BD0028 */   addiu $sp, $sp, 0x28

