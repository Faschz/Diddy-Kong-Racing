glabel func_80068158
/* 068D58 80068158 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 068D5C 8006815C AFBF0014 */  sw    $ra, 0x14($sp)
/* 068D60 80068160 AFA40018 */  sw    $a0, 0x18($sp)
/* 068D64 80068164 AFA60020 */  sw    $a2, 0x20($sp)
/* 068D68 80068168 AFA70024 */  sw    $a3, 0x24($sp)
/* 068D6C 8006816C 0C0270C3 */  jal   func_8009C30C
/* 068D70 80068170 AFA5001C */   sw    $a1, 0x1c($sp)
/* 068D74 80068174 8FA5001C */  lw    $a1, 0x1c($sp)
/* 068D78 80068178 8FA80018 */  lw    $t0, 0x18($sp)
/* 068D7C 8006817C 8FA90020 */  lw    $t1, 0x20($sp)
/* 068D80 80068180 304E0004 */  andi  $t6, $v0, 4
/* 068D84 80068184 11C00003 */  beqz  $t6, .L80068194
/* 068D88 80068188 3C0F800E */   lui   $t7, %hi(D_800DD060) # $t7, 0x800e
/* 068D8C 8006818C 10000002 */  b     .L80068198
/* 068D90 80068190 00053023 */   negu  $a2, $a1
.L80068194:
/* 068D94 80068194 00A03025 */  move  $a2, $a1
.L80068198:
/* 068D98 80068198 81EFD060 */  lb    $t7, %lo(D_800DD060)($t7)
/* 068D9C 8006819C 3C078012 */  lui   $a3, %hi(D_80120CE4) # $a3, 0x8012
/* 068DA0 800681A0 11E00003 */  beqz  $t7, .L800681B0
/* 068DA4 800681A4 24E70CE4 */   addiu $a3, %lo(D_80120CE4) # addiu $a3, $a3, 0xce4
/* 068DA8 800681A8 00094823 */  negu  $t1, $t1
/* 068DAC 800681AC 00053023 */  negu  $a2, $a1
.L800681B0:
/* 068DB0 800681B0 8CE50000 */  lw    $a1, ($a3)
/* 068DB4 800681B4 3C19800E */  lui   $t9, %hi(D_800DD064+0x30) # $t9, 0x800e
/* 068DB8 800681B8 0005C080 */  sll   $t8, $a1, 2
/* 068DBC 800681BC 0305C023 */  subu  $t8, $t8, $a1
/* 068DC0 800681C0 0018C080 */  sll   $t8, $t8, 2
/* 068DC4 800681C4 0305C021 */  addu  $t8, $t8, $a1
/* 068DC8 800681C8 0018C080 */  sll   $t8, $t8, 2
/* 068DCC 800681CC 0338C821 */  addu  $t9, $t9, $t8
/* 068DD0 800681D0 8F39D094 */  lw    $t9, %lo(D_800DD064+0x30)($t9)
/* 068DD4 800681D4 3C0A800E */  lui   $t2, %hi(D_800DD148) # $t2, 0x800e
/* 068DD8 800681D8 332B0001 */  andi  $t3, $t9, 1
/* 068DDC 800681DC 1560001A */  bnez  $t3, .L80068248
/* 068DE0 800681E0 254AD148 */   addiu $t2, %lo(D_800DD148) # addiu $t2, $t2, -0x2eb8
/* 068DE4 800681E4 00056100 */  sll   $t4, $a1, 4
/* 068DE8 800681E8 014C1021 */  addu  $v0, $t2, $t4
/* 068DEC 800681EC 8FAD0024 */  lw    $t5, 0x24($sp)
/* 068DF0 800681F0 8FAF0028 */  lw    $t7, 0x28($sp)
/* 068DF4 800681F4 0006C880 */  sll   $t9, $a2, 2
/* 068DF8 800681F8 00095880 */  sll   $t3, $t1, 2
/* 068DFC 800681FC 000D7080 */  sll   $t6, $t5, 2
/* 068E00 80068200 000FC080 */  sll   $t8, $t7, 2
/* 068E04 80068204 A44E0008 */  sh    $t6, 8($v0)
/* 068E08 80068208 A458000A */  sh    $t8, 0xa($v0)
/* 068E0C 8006820C A4590000 */  sh    $t9, ($v0)
/* 068E10 80068210 A44B0002 */  sh    $t3, 2($v0)
/* 068E14 80068214 8D040000 */  lw    $a0, ($t0)
/* 068E18 80068218 3C0D0380 */  lui   $t5, (0x03800010 >> 16) # lui $t5, 0x380
/* 068E1C 8006821C 248C0008 */  addiu $t4, $a0, 8
/* 068E20 80068220 AD0C0000 */  sw    $t4, ($t0)
/* 068E24 80068224 35AD0010 */  ori   $t5, (0x03800010 & 0xFFFF) # ori $t5, $t5, 0x10
/* 068E28 80068228 AC8D0000 */  sw    $t5, ($a0)
/* 068E2C 8006822C 8CEE0000 */  lw    $t6, ($a3)
/* 068E30 80068230 3C018000 */  lui   $at, 0x8000
/* 068E34 80068234 000E7900 */  sll   $t7, $t6, 4
/* 068E38 80068238 014FC021 */  addu  $t8, $t2, $t7
/* 068E3C 8006823C 0301C821 */  addu  $t9, $t8, $at
/* 068E40 80068240 10000016 */  b     .L8006829C
/* 068E44 80068244 AC990004 */   sw    $t9, 4($a0)
.L80068248:
/* 068E48 80068248 8D040000 */  lw    $a0, ($t0)
/* 068E4C 8006824C 3C0C0380 */  lui   $t4, (0x03800010 >> 16) # lui $t4, 0x380
/* 068E50 80068250 248B0008 */  addiu $t3, $a0, 8
/* 068E54 80068254 AD0B0000 */  sw    $t3, ($t0)
/* 068E58 80068258 358C0010 */  ori   $t4, (0x03800010 & 0xFFFF) # ori $t4, $t4, 0x10
/* 068E5C 8006825C 3C18800E */  lui   $t8, %hi(D_800DD134) # $t8, 0x800e
/* 068E60 80068260 AC8C0000 */  sw    $t4, ($a0)
/* 068E64 80068264 8F18D134 */  lw    $t8, %lo(D_800DD134)($t8)
/* 068E68 80068268 8CED0000 */  lw    $t5, ($a3)
/* 068E6C 8006826C 3C0A800E */  lui   $t2, %hi(D_800DD148) # $t2, 0x800e
/* 068E70 80068270 0018C880 */  sll   $t9, $t8, 2
/* 068E74 80068274 254AD148 */  addiu $t2, %lo(D_800DD148) # addiu $t2, $t2, -0x2eb8
/* 068E78 80068278 0338C821 */  addu  $t9, $t9, $t8
/* 068E7C 8006827C 000D7100 */  sll   $t6, $t5, 4
/* 068E80 80068280 014E7821 */  addu  $t7, $t2, $t6
/* 068E84 80068284 00195900 */  sll   $t3, $t9, 4
/* 068E88 80068288 3C018000 */  lui   $at, (0x800000A0 >> 16) # lui $at, 0x8000
/* 068E8C 8006828C 342100A0 */  ori   $at, (0x800000A0 & 0xFFFF) # ori $at, $at, 0xa0
/* 068E90 80068290 01EB6021 */  addu  $t4, $t7, $t3
/* 068E94 80068294 01816821 */  addu  $t5, $t4, $at
/* 068E98 80068298 AC8D0004 */  sw    $t5, 4($a0)
.L8006829C:
/* 068E9C 8006829C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 068EA0 800682A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 068EA4 800682A4 03E00008 */  jr    $ra
/* 068EA8 800682A8 00000000 */   nop   

