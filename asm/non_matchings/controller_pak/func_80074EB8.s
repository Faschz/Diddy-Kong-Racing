.rdata
glabel D_800E7768
.asciz "DKRACING-GHOSTS"
glabel D_800E7778
.word 0

.text
glabel func_80074EB8
/* 075AB8 80074EB8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 075ABC 80074EBC AFA60048 */  sw    $a2, 0x48($sp)
/* 075AC0 80074EC0 24061100 */  li    $a2, 4352
/* 075AC4 80074EC4 00061080 */  sll   $v0, $a2, 2
/* 075AC8 80074EC8 00461023 */  subu  $v0, $v0, $a2
/* 075ACC 80074ECC AFBF001C */  sw    $ra, 0x1c($sp)
/* 075AD0 80074ED0 AFA40040 */  sw    $a0, 0x40($sp)
/* 075AD4 80074ED4 AFA50044 */  sw    $a1, 0x44($sp)
/* 075AD8 80074ED8 00021040 */  sll   $v0, $v0, 1
/* 075ADC 80074EDC AFA7004C */  sw    $a3, 0x4c($sp)
/* 075AE0 80074EE0 24440200 */  addiu $a0, $v0, 0x200
/* 075AE4 80074EE4 AFA20024 */  sw    $v0, 0x24($sp)
/* 075AE8 80074EE8 240500FF */  li    $a1, 255
/* 075AEC 80074EEC 0C01C327 */  jal   allocate_from_main_pool_safe
/* 075AF0 80074EF0 AFA60030 */   sw    $a2, 0x30($sp)
/* 075AF4 80074EF4 3C0E4748 */  lui   $t6, (0x47485353 >> 16) # lui $t6, 0x4748
/* 075AF8 80074EF8 8FA60030 */  lw    $a2, 0x30($sp)
/* 075AFC 80074EFC 35CE5353 */  ori   $t6, (0x47485353 & 0xFFFF) # ori $t6, $t6, 0x5353
/* 075B00 80074F00 AC4E0000 */  sw    $t6, ($v0)
/* 075B04 80074F04 87AF0046 */  lh    $t7, 0x46($sp)
/* 075B08 80074F08 24190100 */  li    $t9, 256
/* 075B0C 80074F0C A04F0004 */  sb    $t7, 4($v0)
/* 075B10 80074F10 87B8004A */  lh    $t8, 0x4a($sp)
/* 075B14 80074F14 A4590006 */  sh    $t9, 6($v0)
/* 075B18 80074F18 844A0006 */  lh    $t2, 6($v0)
/* 075B1C 80074F1C 00404825 */  move  $t1, $v0
/* 075B20 80074F20 01465821 */  addu  $t3, $t2, $a2
/* 075B24 80074F24 24430004 */  addiu $v1, $v0, 4
/* 075B28 80074F28 A44B000A */  sh    $t3, 0xa($v0)
/* 075B2C 80074F2C A0580005 */  sb    $t8, 5($v0)
/* 075B30 80074F30 24620004 */  addiu $v0, $v1, 4
/* 075B34 80074F34 240400FF */  li    $a0, 255
/* 075B38 80074F38 A0440000 */  sb    $a0, ($v0)
/* 075B3C 80074F3C 846C0006 */  lh    $t4, 6($v1)
/* 075B40 80074F40 A0440004 */  sb    $a0, 4($v0)
/* 075B44 80074F44 A44C0002 */  sh    $t4, 2($v0)
/* 075B48 80074F48 846D0006 */  lh    $t5, 6($v1)
/* 075B4C 80074F4C 24050003 */  li    $a1, 3
/* 075B50 80074F50 00057080 */  sll   $t6, $a1, 2
/* 075B54 80074F54 A44D0006 */  sh    $t5, 6($v0)
/* 075B58 80074F58 006E1021 */  addu  $v0, $v1, $t6
/* 075B5C 80074F5C A0440000 */  sb    $a0, ($v0)
/* 075B60 80074F60 846F0006 */  lh    $t7, 6($v1)
/* 075B64 80074F64 A0440004 */  sb    $a0, 4($v0)
/* 075B68 80074F68 A44F0002 */  sh    $t7, 2($v0)
/* 075B6C 80074F6C 84780006 */  lh    $t8, 6($v1)
/* 075B70 80074F70 A0440008 */  sb    $a0, 8($v0)
/* 075B74 80074F74 A4580006 */  sh    $t8, 6($v0)
/* 075B78 80074F78 84790006 */  lh    $t9, 6($v1)
/* 075B7C 80074F7C A044000C */  sb    $a0, 0xc($v0)
/* 075B80 80074F80 A459000A */  sh    $t9, 0xa($v0)
/* 075B84 80074F84 846A0006 */  lh    $t2, 6($v1)
/* 075B88 80074F88 00000000 */  nop   
/* 075B8C 80074F8C A44A000E */  sh    $t2, 0xe($v0)
/* 075B90 80074F90 846B0002 */  lh    $t3, 2($v1)
/* 075B94 80074F94 8FAC0058 */  lw    $t4, 0x58($sp)
/* 075B98 80074F98 87A70056 */  lh    $a3, 0x56($sp)
/* 075B9C 80074F9C 87A60052 */  lh    $a2, 0x52($sp)
/* 075BA0 80074FA0 87A5004E */  lh    $a1, 0x4e($sp)
/* 075BA4 80074FA4 AFA90038 */  sw    $t1, 0x38($sp)
/* 075BA8 80074FA8 01692021 */  addu  $a0, $t3, $t1
/* 075BAC 80074FAC 0C01D2AA */  jal   func_80074AA8
/* 075BB0 80074FB0 AFAC0010 */   sw    $t4, 0x10($sp)
/* 075BB4 80074FB4 8FAE0024 */  lw    $t6, 0x24($sp)
/* 075BB8 80074FB8 8FAD0038 */  lw    $t5, 0x38($sp)
/* 075BBC 80074FBC 8FA40040 */  lw    $a0, 0x40($sp)
/* 075BC0 80074FC0 3C06800E */  lui   $a2, %hi(D_800E7768) # $a2, 0x800e
/* 075BC4 80074FC4 3C07800E */  lui   $a3, %hi(D_800E7778) # $a3, 0x800e
/* 075BC8 80074FC8 25CF0100 */  addiu $t7, $t6, 0x100
/* 075BCC 80074FCC AFAF0014 */  sw    $t7, 0x14($sp)
/* 075BD0 80074FD0 24E77778 */  addiu $a3, %lo(D_800E7778) # addiu $a3, $a3, 0x7778
/* 075BD4 80074FD4 24C67768 */  addiu $a2, %lo(D_800E7768) # addiu $a2, $a2, 0x7768
/* 075BD8 80074FD8 2405FFFF */  li    $a1, -1
/* 075BDC 80074FDC 0C01D9B5 */  jal   write_controller_pak_file
/* 075BE0 80074FE0 AFAD0010 */   sw    $t5, 0x10($sp)
/* 075BE4 80074FE4 8FA40038 */  lw    $a0, 0x38($sp)
/* 075BE8 80074FE8 0C01C450 */  jal   free_from_memory_pool
/* 075BEC 80074FEC AFA20028 */   sw    $v0, 0x28($sp)
/* 075BF0 80074FF0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 075BF4 80074FF4 8FA20028 */  lw    $v0, 0x28($sp)
/* 075BF8 80074FF8 03E00008 */  jr    $ra
/* 075BFC 80074FFC 27BD0040 */   addiu $sp, $sp, 0x40

