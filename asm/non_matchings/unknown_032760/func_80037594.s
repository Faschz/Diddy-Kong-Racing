glabel func_80037594
/* 038194 80037594 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 038198 80037598 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03819C 8003759C 8C820078 */  lw    $v0, 0x78($a0)
/* 0381A0 800375A0 00803025 */  move  $a2, $a0
/* 0381A4 800375A4 18400007 */  blez  $v0, .L800375C4
/* 0381A8 800375A8 00055080 */   sll   $t2, $a1, 2
/* 0381AC 800375AC 848F0006 */  lh    $t7, 6($a0)
/* 0381B0 800375B0 00457023 */  subu  $t6, $v0, $a1
/* 0381B4 800375B4 35F84000 */  ori   $t8, $t7, 0x4000
/* 0381B8 800375B8 AC8E0078 */  sw    $t6, 0x78($a0)
/* 0381BC 800375BC 10000015 */  b     .L80037614
/* 0381C0 800375C0 A4980006 */   sh    $t8, 6($a0)
.L800375C4:
/* 0381C4 800375C4 84C90018 */  lh    $t1, 0x18($a2)
/* 0381C8 800375C8 84D90006 */  lh    $t9, 6($a2)
/* 0381CC 800375CC 012A5821 */  addu  $t3, $t1, $t2
/* 0381D0 800375D0 A4CB0018 */  sh    $t3, 0x18($a2)
/* 0381D4 800375D4 84CC0018 */  lh    $t4, 0x18($a2)
/* 0381D8 800375D8 3328BFFF */  andi  $t0, $t9, 0xbfff
/* 0381DC 800375DC 29810100 */  slti  $at, $t4, 0x100
/* 0381E0 800375E0 1420000C */  bnez  $at, .L80037614
/* 0381E4 800375E4 A4C80006 */   sh    $t0, 6($a2)
/* 0381E8 800375E8 A4C00018 */  sh    $zero, 0x18($a2)
/* 0381EC 800375EC AFA60018 */  sw    $a2, 0x18($sp)
/* 0381F0 800375F0 00002025 */  move  $a0, $zero
/* 0381F4 800375F4 0C01BE53 */  jal   func_8006F94C
/* 0381F8 800375F8 2405001E */   li    $a1, 30
/* 0381FC 800375FC 8FA60018 */  lw    $a2, 0x18($sp)
/* 038200 80037600 00000000 */  nop   
/* 038204 80037604 8CCD007C */  lw    $t5, 0x7c($a2)
/* 038208 80037608 00000000 */  nop   
/* 03820C 8003760C 004D7021 */  addu  $t6, $v0, $t5
/* 038210 80037610 ACCE0078 */  sw    $t6, 0x78($a2)
.L80037614:
/* 038214 80037614 8FBF0014 */  lw    $ra, 0x14($sp)
/* 038218 80037618 27BD0018 */  addiu $sp, $sp, 0x18
/* 03821C 8003761C 03E00008 */  jr    $ra
/* 038220 80037620 00000000 */   nop   
