.late_rodata
glabel D_800E5640
.float -20000.0

.text
glabel func_8001C418
/* 01D018 8001C418 3C01800E */  lui   $at, %hi(D_800E5640) # $at, 0x800e
/* 01D01C 8001C41C 3C048012 */  lui   $a0, %hi(D_8011AF18) # $a0, 0x8012
/* 01D020 8001C420 C4225640 */  lwc1  $f2, %lo(D_800E5640)($at)
/* 01D024 8001C424 00001025 */  move  $v0, $zero
/* 01D028 8001C428 00001825 */  move  $v1, $zero
/* 01D02C 8001C42C 2484AF18 */  addiu $a0, %lo(D_8011AF18) # addiu $a0, $a0, -0x50e8
/* 01D030 8001C430 00027080 */  sll   $t6, $v0, 2
.L8001C434:
/* 01D034 8001C434 008E7821 */  addu  $t7, $a0, $t6
/* 01D038 8001C438 C5E00000 */  lwc1  $f0, ($t7)
/* 01D03C 8001C43C 00000000 */  nop   
/* 01D040 8001C440 46001032 */  c.eq.s $f2, $f0
/* 01D044 8001C444 00000000 */  nop   
/* 01D048 8001C448 45010008 */  bc1t  .L8001C46C
/* 01D04C 8001C44C 00000000 */   nop   
/* 01D050 8001C450 460C003C */  c.lt.s $f0, $f12
/* 01D054 8001C454 00000000 */  nop   
/* 01D058 8001C458 45000004 */  bc1f  .L8001C46C
/* 01D05C 8001C45C 00000000 */   nop   
/* 01D060 8001C460 00021C00 */  sll   $v1, $v0, 0x10
/* 01D064 8001C464 0003C403 */  sra   $t8, $v1, 0x10
/* 01D068 8001C468 03001825 */  move  $v1, $t8
.L8001C46C:
/* 01D06C 8001C46C 24420001 */  addiu $v0, $v0, 1
/* 01D070 8001C470 0002CC00 */  sll   $t9, $v0, 0x10
/* 01D074 8001C474 00191403 */  sra   $v0, $t9, 0x10
/* 01D078 8001C478 28410004 */  slti  $at, $v0, 4
/* 01D07C 8001C47C 1420FFED */  bnez  $at, .L8001C434
/* 01D080 8001C480 00027080 */   sll   $t6, $v0, 2
/* 01D084 8001C484 03E00008 */  jr    $ra
/* 01D088 8001C488 00601025 */   move  $v0, $v1

