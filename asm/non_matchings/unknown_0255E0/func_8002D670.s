glabel func_8002D670
/* 02E270 8002D670 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 02E274 8002D674 AFBF003C */  sw    $ra, 0x3c($sp)
/* 02E278 8002D678 AFBE0038 */  sw    $fp, 0x38($sp)
/* 02E27C 8002D67C AFB70034 */  sw    $s7, 0x34($sp)
/* 02E280 8002D680 AFB60030 */  sw    $s6, 0x30($sp)
/* 02E284 8002D684 AFB5002C */  sw    $s5, 0x2c($sp)
/* 02E288 8002D688 AFB40028 */  sw    $s4, 0x28($sp)
/* 02E28C 8002D68C AFB30024 */  sw    $s3, 0x24($sp)
/* 02E290 8002D690 AFB20020 */  sw    $s2, 0x20($sp)
/* 02E294 8002D694 AFB1001C */  sw    $s1, 0x1c($sp)
/* 02E298 8002D698 AFB00018 */  sw    $s0, 0x18($sp)
/* 02E29C 8002D69C AFA50044 */  sw    $a1, 0x44($sp)
/* 02E2A0 8002D6A0 8C8E0040 */  lw    $t6, 0x40($a0)
/* 02E2A4 8002D6A4 00000000 */  nop   
/* 02E2A8 8002D6A8 85CF0036 */  lh    $t7, 0x36($t6)
/* 02E2AC 8002D6AC 00000000 */  nop   
/* 02E2B0 8002D6B0 11E0007F */  beqz  $t7, .L8002D8B0
/* 02E2B4 8002D6B4 8FBF003C */   lw    $ra, 0x3c($sp)
/* 02E2B8 8002D6B8 84B90008 */  lh    $t9, 8($a1)
/* 02E2BC 8002D6BC 2401FFFF */  li    $at, -1
/* 02E2C0 8002D6C0 1321007A */  beq   $t9, $at, .L8002D8AC
/* 02E2C4 8002D6C4 3C0D8012 */   lui   $t5, %hi(D_8011B0C4) # $t5, 0x8012
/* 02E2C8 8002D6C8 8DADB0C4 */  lw    $t5, %lo(D_8011B0C4)($t5)
/* 02E2CC 8002D6CC 3C108012 */  lui   $s0, %hi(D_8011B0D0) # $s0, 0x8012
/* 02E2D0 8002D6D0 15A00076 */  bnez  $t5, .L8002D8AC
/* 02E2D4 8002D6D4 3C0E8012 */   lui   $t6, %hi(D_8011B0C8) # $t6, 0x8012
/* 02E2D8 8002D6D8 8DCEB0C8 */  lw    $t6, %lo(D_8011B0C8)($t6)
/* 02E2DC 8002D6DC 2610B0D0 */  addiu $s0, %lo(D_8011B0D0) # addiu $s0, $s0, -0x4f30
/* 02E2E0 8002D6E0 AE0E0000 */  sw    $t6, ($s0)
/* 02E2E4 8002D6E4 8C980040 */  lw    $t8, 0x40($a0)
/* 02E2E8 8002D6E8 84B20008 */  lh    $s2, 8($a1)
/* 02E2EC 8002D6EC 87190036 */  lh    $t9, 0x36($t8)
/* 02E2F0 8002D6F0 24010001 */  li    $at, 1
/* 02E2F4 8002D6F4 17210010 */  bne   $t9, $at, .L8002D738
/* 02E2F8 8002D6F8 25CE0002 */   addiu $t6, $t6, 2
/* 02E2FC 8002D6FC AE0E0000 */  sw    $t6, ($s0)
/* 02E300 8002D700 8C860014 */  lw    $a2, 0x14($a0)
/* 02E304 8002D704 C48E0010 */  lwc1  $f14, 0x10($a0)
/* 02E308 8002D708 C48C000C */  lwc1  $f12, 0xc($a0)
/* 02E30C 8002D70C 0C0198D2 */  jal   func_80066348
/* 02E310 8002D710 00000000 */   nop   
/* 02E314 8002D714 3C014440 */  li    $at, 0x44400000 # 768.000000
/* 02E318 8002D718 44812000 */  mtc1  $at, $f4
/* 02E31C 8002D71C 8FAF0044 */  lw    $t7, 0x44($sp)
/* 02E320 8002D720 4600203C */  c.lt.s $f4, $f0
/* 02E324 8002D724 00000000 */  nop   
/* 02E328 8002D728 45000003 */  bc1f  .L8002D738
/* 02E32C 8002D72C 00000000 */   nop   
/* 02E330 8002D730 85F2000A */  lh    $s2, 0xa($t7)
/* 02E334 8002D734 00000000 */  nop   
.L8002D738:
/* 02E338 8002D738 8E020000 */  lw    $v0, ($s0)
/* 02E33C 8002D73C 3C198012 */  lui   $t9, %hi(D_8011D350) # $t9, 0x8012
/* 02E340 8002D740 0002C080 */  sll   $t8, $v0, 2
/* 02E344 8002D744 0338C821 */  addu  $t9, $t9, $t8
/* 02E348 8002D748 8F39D350 */  lw    $t9, %lo(D_8011D350)($t9)
/* 02E34C 8002D74C 3C138012 */  lui   $s3, %hi(D_8011D360) # $s3, 0x8012
/* 02E350 8002D750 2673D360 */  addiu $s3, %lo(D_8011D360) # addiu $s3, $s3, -0x2ca0
/* 02E354 8002D754 3C0D8012 */  lui   $t5, %hi(D_8011D320) # $t5, 0x8012
/* 02E358 8002D758 01B86821 */  addu  $t5, $t5, $t8
/* 02E35C 8002D75C AE790000 */  sw    $t9, ($s3)
/* 02E360 8002D760 8DADD320 */  lw    $t5, %lo(D_8011D320)($t5)
/* 02E364 8002D764 3C158012 */  lui   $s5, %hi(D_8011D330) # $s5, 0x8012
/* 02E368 8002D768 26B5D330 */  addiu $s5, %lo(D_8011D330) # addiu $s5, $s5, -0x2cd0
/* 02E36C 8002D76C 3C0E8012 */  lui   $t6, %hi(D_8011D338) # $t6, 0x8012
/* 02E370 8002D770 01D87021 */  addu  $t6, $t6, $t8
/* 02E374 8002D774 AEAD0000 */  sw    $t5, ($s5)
/* 02E378 8002D778 8DCED338 */  lw    $t6, %lo(D_8011D338)($t6)
/* 02E37C 8002D77C 3C168012 */  lui   $s6, %hi(D_8011D348) # $s6, 0x8012
/* 02E380 8002D780 8FAF0044 */  lw    $t7, 0x44($sp)
/* 02E384 8002D784 26D6D348 */  addiu $s6, %lo(D_8011D348) # addiu $s6, $s6, -0x2cb8
/* 02E388 8002D788 AECE0000 */  sw    $t6, ($s6)
/* 02E38C 8002D78C 85F8000A */  lh    $t8, 0xa($t7)
/* 02E390 8002D790 001288C0 */  sll   $s1, $s2, 3
/* 02E394 8002D794 0258082A */  slt   $at, $s2, $t8
/* 02E398 8002D798 10200044 */  beqz  $at, .L8002D8AC
/* 02E39C 8002D79C 3C1E0400 */   lui   $fp, 0x400
/* 02E3A0 8002D7A0 3C108012 */  lui   $s0, %hi(D_8011B0A0) # $s0, 0x8012
/* 02E3A4 8002D7A4 2610B0A0 */  addiu $s0, %lo(D_8011B0A0) # addiu $s0, $s0, -0x4f60
/* 02E3A8 8002D7A8 2417000A */  li    $s7, 10
/* 02E3AC 8002D7AC 3C148000 */  lui   $s4, 0x8000
.L8002D7B0:
/* 02E3B0 8002D7B0 8E790000 */  lw    $t9, ($s3)
/* 02E3B4 8002D7B4 02002025 */  move  $a0, $s0
/* 02E3B8 8002D7B8 03316821 */  addu  $t5, $t9, $s1
/* 02E3BC 8002D7BC 8DA50000 */  lw    $a1, ($t5)
/* 02E3C0 8002D7C0 0C01ED32 */  jal   func_8007B4C8
/* 02E3C4 8002D7C4 02E03025 */   move  $a2, $s7
/* 02E3C8 8002D7C8 8E6E0000 */  lw    $t6, ($s3)
/* 02E3CC 8002D7CC 8EAD0000 */  lw    $t5, ($s5)
/* 02E3D0 8002D7D0 01D11821 */  addu  $v1, $t6, $s1
/* 02E3D4 8002D7D4 84660006 */  lh    $a2, 6($v1)
/* 02E3D8 8002D7D8 84650004 */  lh    $a1, 4($v1)
/* 02E3DC 8002D7DC 00D70019 */  multu $a2, $s7
/* 02E3E0 8002D7E0 846F000C */  lh    $t7, 0xc($v1)
/* 02E3E4 8002D7E4 8478000E */  lh    $t8, 0xe($v1)
/* 02E3E8 8002D7E8 01E53823 */  subu  $a3, $t7, $a1
/* 02E3EC 8002D7EC 8ECF0000 */  lw    $t7, ($s6)
/* 02E3F0 8002D7F0 0005C900 */  sll   $t9, $a1, 4
/* 02E3F4 8002D7F4 8E020000 */  lw    $v0, ($s0)
/* 02E3F8 8002D7F8 032D5821 */  addu  $t3, $t9, $t5
/* 02E3FC 8002D7FC 03062023 */  subu  $a0, $t8, $a2
/* 02E400 8002D800 2499FFFF */  addiu $t9, $a0, -1
/* 02E404 8002D804 001968C0 */  sll   $t5, $t9, 3
/* 02E408 8002D808 24580008 */  addiu $t8, $v0, 8
/* 02E40C 8002D80C 00007012 */  mflo  $t6
/* 02E410 8002D810 01CF6021 */  addu  $t4, $t6, $t7
/* 02E414 8002D814 01944821 */  addu  $t1, $t4, $s4
/* 02E418 8002D818 312E0006 */  andi  $t6, $t1, 6
/* 02E41C 8002D81C 01AE7825 */  or    $t7, $t5, $t6
/* 02E420 8002D820 AE180000 */  sw    $t8, ($s0)
/* 02E424 8002D824 31F800FF */  andi  $t8, $t7, 0xff
/* 02E428 8002D828 0018CC00 */  sll   $t9, $t8, 0x10
/* 02E42C 8002D82C 000470C0 */  sll   $t6, $a0, 3
/* 02E430 8002D830 01C47821 */  addu  $t7, $t6, $a0
/* 02E434 8002D834 000FC040 */  sll   $t8, $t7, 1
/* 02E438 8002D838 033E6825 */  or    $t5, $t9, $fp
/* 02E43C 8002D83C 27190008 */  addiu $t9, $t8, 8
/* 02E440 8002D840 332EFFFF */  andi  $t6, $t9, 0xffff
/* 02E444 8002D844 01AE7825 */  or    $t7, $t5, $t6
/* 02E448 8002D848 AC4F0000 */  sw    $t7, ($v0)
/* 02E44C 8002D84C AC490004 */  sw    $t1, 4($v0)
/* 02E450 8002D850 8E020000 */  lw    $v0, ($s0)
/* 02E454 8002D854 24F9FFFF */  addiu $t9, $a3, -1
/* 02E458 8002D858 00196900 */  sll   $t5, $t9, 4
/* 02E45C 8002D85C 35AE0001 */  ori   $t6, $t5, 1
/* 02E460 8002D860 24580008 */  addiu $t8, $v0, 8
/* 02E464 8002D864 AE180000 */  sw    $t8, ($s0)
/* 02E468 8002D868 31CF00FF */  andi  $t7, $t6, 0xff
/* 02E46C 8002D86C 000FC400 */  sll   $t8, $t7, 0x10
/* 02E470 8002D870 3C010500 */  lui   $at, 0x500
/* 02E474 8002D874 0301C825 */  or    $t9, $t8, $at
/* 02E478 8002D878 00076900 */  sll   $t5, $a3, 4
/* 02E47C 8002D87C 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 02E480 8002D880 032E7825 */  or    $t7, $t9, $t6
/* 02E484 8002D884 0174C021 */  addu  $t8, $t3, $s4
/* 02E488 8002D888 AC580004 */  sw    $t8, 4($v0)
/* 02E48C 8002D88C AC4F0000 */  sw    $t7, ($v0)
/* 02E490 8002D890 8FAD0044 */  lw    $t5, 0x44($sp)
/* 02E494 8002D894 26520001 */  addiu $s2, $s2, 1
/* 02E498 8002D898 85B9000A */  lh    $t9, 0xa($t5)
/* 02E49C 8002D89C 26310008 */  addiu $s1, $s1, 8
/* 02E4A0 8002D8A0 0259082A */  slt   $at, $s2, $t9
/* 02E4A4 8002D8A4 1420FFC2 */  bnez  $at, .L8002D7B0
/* 02E4A8 8002D8A8 00000000 */   nop   
.L8002D8AC:
/* 02E4AC 8002D8AC 8FBF003C */  lw    $ra, 0x3c($sp)
.L8002D8B0:
/* 02E4B0 8002D8B0 8FB00018 */  lw    $s0, 0x18($sp)
/* 02E4B4 8002D8B4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 02E4B8 8002D8B8 8FB20020 */  lw    $s2, 0x20($sp)
/* 02E4BC 8002D8BC 8FB30024 */  lw    $s3, 0x24($sp)
/* 02E4C0 8002D8C0 8FB40028 */  lw    $s4, 0x28($sp)
/* 02E4C4 8002D8C4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 02E4C8 8002D8C8 8FB60030 */  lw    $s6, 0x30($sp)
/* 02E4CC 8002D8CC 8FB70034 */  lw    $s7, 0x34($sp)
/* 02E4D0 8002D8D0 8FBE0038 */  lw    $fp, 0x38($sp)
/* 02E4D4 8002D8D4 03E00008 */  jr    $ra
/* 02E4D8 8002D8D8 27BD0040 */   addiu $sp, $sp, 0x40

