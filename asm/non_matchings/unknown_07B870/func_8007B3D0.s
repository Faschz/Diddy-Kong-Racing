glabel func_8007B3D0
/* 07BFD0 8007B3D0 3C018012 */  lui   $at, %hi(D_8012637C) # $at, 0x8012
/* 07BFD4 8007B3D4 AC20637C */  sw    $zero, %lo(D_8012637C)($at)
/* 07BFD8 8007B3D8 3C018012 */  lui   $at, %hi(D_80126374) # $at, 0x8012
/* 07BFDC 8007B3DC AC206374 */  sw    $zero, %lo(D_80126374)($at)
/* 07BFE0 8007B3E0 3C018012 */  lui   $at, %hi(D_80126380) # $at, 0x8012
/* 07BFE4 8007B3E4 A4206380 */  sh    $zero, %lo(D_80126380)($at)
/* 07BFE8 8007B3E8 3C018012 */  lui   $at, %hi(D_80126382) # $at, 0x8012
/* 07BFEC 8007B3EC 240E0001 */  li    $t6, 1
/* 07BFF0 8007B3F0 A42E6382 */  sh    $t6, %lo(D_80126382)($at)
/* 07BFF4 8007B3F4 3C018012 */  lui   $at, %hi(D_80126378) # $at, 0x8012
/* 07BFF8 8007B3F8 AC206378 */  sw    $zero, %lo(D_80126378)($at)
/* 07BFFC 8007B3FC 3C018012 */  lui   $at, %hi(D_80126384) # $at, 0x8012
/* 07C000 8007B400 A4206384 */  sh    $zero, %lo(D_80126384)($at)
/* 07C004 8007B404 8C830000 */  lw    $v1, ($a0)
/* 07C008 8007B408 3C18E700 */  lui   $t8, 0xe700
/* 07C00C 8007B40C 246F0008 */  addiu $t7, $v1, 8
/* 07C010 8007B410 AC8F0000 */  sw    $t7, ($a0)
/* 07C014 8007B414 AC600004 */  sw    $zero, 4($v1)
/* 07C018 8007B418 AC780000 */  sw    $t8, ($v1)
/* 07C01C 8007B41C 8C830000 */  lw    $v1, ($a0)
/* 07C020 8007B420 3C08B700 */  lui   $t0, 0xb700
/* 07C024 8007B424 24790008 */  addiu $t9, $v1, 8
/* 07C028 8007B428 AC990000 */  sw    $t9, ($a0)
/* 07C02C 8007B42C 24090205 */  li    $t1, 517
/* 07C030 8007B430 AC690004 */  sw    $t1, 4($v1)
/* 07C034 8007B434 03E00008 */  jr    $ra
/* 07C038 8007B438 AC680000 */   sw    $t0, ($v1)

