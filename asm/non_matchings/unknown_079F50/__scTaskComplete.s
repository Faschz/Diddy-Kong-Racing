glabel __scTaskComplete
/* 07AA40 80079E40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07AA44 80079E44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07AA48 80079E48 AFA40018 */  sw    $a0, 0x18($sp)
/* 07AA4C 80079E4C 8CAE0004 */  lw    $t6, 4($a1)
/* 07AA50 80079E50 00A03825 */  move  $a3, $a1
/* 07AA54 80079E54 31CF0003 */  andi  $t7, $t6, 3
/* 07AA58 80079E58 15E00035 */  bnez  $t7, .L80079F30
/* 07AA5C 80079E5C 00001025 */   move  $v0, $zero
/* 07AA60 80079E60 8CA40050 */  lw    $a0, 0x50($a1)
/* 07AA64 80079E64 00000000 */  nop   
/* 07AA68 80079E68 1080002F */  beqz  $a0, .L80079F28
/* 07AA6C 80079E6C 00000000 */   nop   
/* 07AA70 80079E70 8CB80008 */  lw    $t8, 8($a1)
/* 07AA74 80079E74 8FA80018 */  lw    $t0, 0x18($sp)
/* 07AA78 80079E78 33190020 */  andi  $t9, $t8, 0x20
/* 07AA7C 80079E7C 1320001B */  beqz  $t9, .L80079EEC
/* 07AA80 80079E80 00000000 */   nop   
/* 07AA84 80079E84 8D090280 */  lw    $t1, 0x280($t0)
/* 07AA88 80079E88 24020001 */  li    $v0, 1
/* 07AA8C 80079E8C 2D210002 */  sltiu $at, $t1, 2
/* 07AA90 80079E90 10200003 */  beqz  $at, .L80079EA0
/* 07AA94 80079E94 00000000 */   nop   
/* 07AA98 80079E98 10000025 */  b     .L80079F30
/* 07AA9C 80079E9C AD05027C */   sw    $a1, 0x27c($t0)
.L80079EA0:
/* 07AAA0 80079EA0 8CEA0068 */  lw    $t2, 0x68($a3)
/* 07AAA4 80079EA4 00000000 */  nop   
/* 07AAA8 80079EA8 15400005 */  bnez  $t2, .L80079EC0
/* 07AAAC 80079EAC 00000000 */   nop   
/* 07AAB0 80079EB0 8CEB0054 */  lw    $t3, 0x54($a3)
/* 07AAB4 80079EB4 3C05800E */  lui   $a1, %hi(D_800DE730) # $a1, 0x800e
/* 07AAB8 80079EB8 11600006 */  beqz  $t3, .L80079ED4
/* 07AABC 80079EBC 24A5E730 */   addiu $a1, %lo(D_800DE730) # addiu $a1, $a1, -0x18d0
.L80079EC0:
/* 07AAC0 80079EC0 8CE50054 */  lw    $a1, 0x54($a3)
/* 07AAC4 80079EC4 0C03238C */  jal   osSendMesg
/* 07AAC8 80079EC8 24060001 */   li    $a2, 1
/* 07AACC 80079ECC 10000004 */  b     .L80079EE0
/* 07AAD0 80079ED0 8FAC0018 */   lw    $t4, 0x18($sp)
.L80079ED4:
/* 07AAD4 80079ED4 0C03238C */  jal   osSendMesg
/* 07AAD8 80079ED8 24060001 */   li    $a2, 1
/* 07AADC 80079EDC 8FAC0018 */  lw    $t4, 0x18($sp)
.L80079EE0:
/* 07AAE0 80079EE0 24020001 */  li    $v0, 1
/* 07AAE4 80079EE4 10000012 */  b     .L80079F30
/* 07AAE8 80079EE8 AD800280 */   sw    $zero, 0x280($t4)
.L80079EEC:
/* 07AAEC 80079EEC 8CED0068 */  lw    $t5, 0x68($a3)
/* 07AAF0 80079EF0 00000000 */  nop   
/* 07AAF4 80079EF4 15A00005 */  bnez  $t5, .L80079F0C
/* 07AAF8 80079EF8 00000000 */   nop   
/* 07AAFC 80079EFC 8CEE0054 */  lw    $t6, 0x54($a3)
/* 07AB00 80079F00 3C05800E */  lui   $a1, %hi(D_800DE730) # $a1, 0x800e
/* 07AB04 80079F04 11C00006 */  beqz  $t6, .L80079F20
/* 07AB08 80079F08 24A5E730 */   addiu $a1, %lo(D_800DE730) # addiu $a1, $a1, -0x18d0
.L80079F0C:
/* 07AB0C 80079F0C 8CE50054 */  lw    $a1, 0x54($a3)
/* 07AB10 80079F10 0C03238C */  jal   osSendMesg
/* 07AB14 80079F14 24060001 */   li    $a2, 1
/* 07AB18 80079F18 10000005 */  b     .L80079F30
/* 07AB1C 80079F1C 24020001 */   li    $v0, 1
.L80079F20:
/* 07AB20 80079F20 0C03238C */  jal   osSendMesg
/* 07AB24 80079F24 24060001 */   li    $a2, 1
.L80079F28:
/* 07AB28 80079F28 10000001 */  b     .L80079F30
/* 07AB2C 80079F2C 24020001 */   li    $v0, 1
.L80079F30:
/* 07AB30 80079F30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07AB34 80079F34 27BD0018 */  addiu $sp, $sp, 0x18
/* 07AB38 80079F38 03E00008 */  jr    $ra
/* 07AB3C 80079F3C 00000000 */   nop   

