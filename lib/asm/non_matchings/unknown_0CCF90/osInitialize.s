glabel osInitialize
/* 0CD1A0 800CC5A0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0CD1A4 800CC5A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CD1A8 800CC5A8 240E0001 */  li    $t6, 1
/* 0CD1AC 800CC5AC 3C018013 */  lui   $at, %hi(D_8012CCC0) # $at, 0x8013
/* 0CD1B0 800CC5B0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0CD1B4 800CC5B4 AFA00038 */  sw    $zero, 0x38($sp)
/* 0CD1B8 800CC5B8 0C03515C */  jal   __osGetSR
/* 0CD1BC 800CC5BC AC2ECCC0 */   sw    $t6, %lo(D_8012CCC0)($at)
/* 0CD1C0 800CC5C0 00408025 */  move  $s0, $v0
/* 0CD1C4 800CC5C4 3C012000 */  lui   $at, 0x2000
/* 0CD1C8 800CC5C8 0C035158 */  jal   __osSetSR
/* 0CD1CC 800CC5CC 02012025 */   or    $a0, $s0, $at
/* 0CD1D0 800CC5D0 3C040100 */  lui   $a0, (0x01000800 >> 16) # lui $a0, 0x100
/* 0CD1D4 800CC5D4 0C035160 */  jal   __osSetFpcCsr
/* 0CD1D8 800CC5D8 34840800 */   ori   $a0, (0x01000800 & 0xFFFF) # ori $a0, $a0, 0x800
/* 0CD1DC 800CC5DC 3C041FC0 */  lui   $a0, (0x1FC007FC >> 16) # lui $a0, 0x1fc0
/* 0CD1E0 800CC5E0 348407FC */  ori   $a0, (0x1FC007FC & 0xFFFF) # ori $a0, $a0, 0x7fc
/* 0CD1E4 800CC5E4 0C035164 */  jal   __osSiRawReadIo
/* 0CD1E8 800CC5E8 27A5003C */   addiu $a1, $sp, 0x3c
/* 0CD1EC 800CC5EC 10400007 */  beqz  $v0, .L800CC60C
/* 0CD1F0 800CC5F0 00000000 */   nop   
.L800CC5F4:
/* 0CD1F4 800CC5F4 3C041FC0 */  lui   $a0, (0x1FC007FC >> 16) # lui $a0, 0x1fc0
/* 0CD1F8 800CC5F8 348407FC */  ori   $a0, (0x1FC007FC & 0xFFFF) # ori $a0, $a0, 0x7fc
/* 0CD1FC 800CC5FC 0C035164 */  jal   __osSiRawReadIo
/* 0CD200 800CC600 27A5003C */   addiu $a1, $sp, 0x3c
/* 0CD204 800CC604 1440FFFB */  bnez  $v0, .L800CC5F4
/* 0CD208 800CC608 00000000 */   nop   
.L800CC60C:
/* 0CD20C 800CC60C 8FA5003C */  lw    $a1, 0x3c($sp)
/* 0CD210 800CC610 3C041FC0 */  lui   $a0, (0x1FC007FC >> 16) # lui $a0, 0x1fc0
/* 0CD214 800CC614 348407FC */  ori   $a0, (0x1FC007FC & 0xFFFF) # ori $a0, $a0, 0x7fc
/* 0CD218 800CC618 34AF0008 */  ori   $t7, $a1, 8
/* 0CD21C 800CC61C 0C035178 */  jal   __osSiRawWriteIo
/* 0CD220 800CC620 01E02825 */   move  $a1, $t7
/* 0CD224 800CC624 10400009 */  beqz  $v0, .L800CC64C
/* 0CD228 800CC628 00000000 */   nop   
.L800CC62C:
/* 0CD22C 800CC62C 8FA5003C */  lw    $a1, 0x3c($sp)
/* 0CD230 800CC630 3C041FC0 */  lui   $a0, (0x1FC007FC >> 16) # lui $a0, 0x1fc0
/* 0CD234 800CC634 348407FC */  ori   $a0, (0x1FC007FC & 0xFFFF) # ori $a0, $a0, 0x7fc
/* 0CD238 800CC638 34B80008 */  ori   $t8, $a1, 8
/* 0CD23C 800CC63C 0C035178 */  jal   __osSiRawWriteIo
/* 0CD240 800CC640 03002825 */   move  $a1, $t8
/* 0CD244 800CC644 1440FFF9 */  bnez  $v0, .L800CC62C
/* 0CD248 800CC648 00000000 */   nop   
.L800CC64C:
/* 0CD24C 800CC64C 3C08800D */  lui   $t0, %hi(__osExceptionPreamble) # $t0, 0x800d
/* 0CD250 800CC650 25082CB0 */  addiu $t0, %lo(__osExceptionPreamble) # addiu $t0, $t0, 0x2cb0
/* 0CD254 800CC654 8D010000 */  lw    $at, ($t0)
/* 0CD258 800CC658 3C198000 */  lui   $t9, 0x8000
/* 0CD25C 800CC65C 3C0D800D */  lui   $t5, %hi(__osExceptionPreamble) # $t5, 0x800d
/* 0CD260 800CC660 AF210000 */  sw    $at, ($t9)
/* 0CD264 800CC664 8D0B0004 */  lw    $t3, 4($t0)
/* 0CD268 800CC668 25AD2CB0 */  addiu $t5, %lo(__osExceptionPreamble) # addiu $t5, $t5, 0x2cb0
/* 0CD26C 800CC66C 3C0C8000 */  lui   $t4, 0x8000
/* 0CD270 800CC670 AF2B0004 */  sw    $t3, 4($t9)
/* 0CD274 800CC674 8D010008 */  lw    $at, 8($t0)
/* 0CD278 800CC678 358C0080 */  ori   $t4, (0x80000080 & 0xFFFF) # ori $t4, $t4, 0x80
/* 0CD27C 800CC67C 3C09800D */  lui   $t1, %hi(__osExceptionPreamble) # $t1, 0x800d
/* 0CD280 800CC680 AF210008 */  sw    $at, 8($t9)
/* 0CD284 800CC684 8D0B000C */  lw    $t3, 0xc($t0)
/* 0CD288 800CC688 25292CB0 */  addiu $t1, %lo(__osExceptionPreamble) # addiu $t1, $t1, 0x2cb0
/* 0CD28C 800CC68C 3C0A8000 */  lui   $t2, 0x8000
/* 0CD290 800CC690 AF2B000C */  sw    $t3, 0xc($t9)
/* 0CD294 800CC694 8DA10000 */  lw    $at, ($t5)
/* 0CD298 800CC698 354A0100 */  ori   $t2, (0x80000100 & 0xFFFF) # ori $t2, $t2, 0x100
/* 0CD29C 800CC69C 3C0E800D */  lui   $t6, %hi(__osExceptionPreamble) # $t6, 0x800d
/* 0CD2A0 800CC6A0 AD810000 */  sw    $at, ($t4)
/* 0CD2A4 800CC6A4 8DB80004 */  lw    $t8, 4($t5)
/* 0CD2A8 800CC6A8 25CE2CB0 */  addiu $t6, %lo(__osExceptionPreamble) # addiu $t6, $t6, 0x2cb0
/* 0CD2AC 800CC6AC 3C0F8000 */  lui   $t7, 0x8000
/* 0CD2B0 800CC6B0 AD980004 */  sw    $t8, 4($t4)
/* 0CD2B4 800CC6B4 8DA10008 */  lw    $at, 8($t5)
/* 0CD2B8 800CC6B8 35EF0180 */  ori   $t7, (0x80000180 & 0xFFFF) # ori $t7, $t7, 0x180
/* 0CD2BC 800CC6BC 3C048000 */  lui   $a0, 0x8000
/* 0CD2C0 800CC6C0 AD810008 */  sw    $at, 8($t4)
/* 0CD2C4 800CC6C4 8DB8000C */  lw    $t8, 0xc($t5)
/* 0CD2C8 800CC6C8 24050190 */  li    $a1, 400
/* 0CD2CC 800CC6CC AD98000C */  sw    $t8, 0xc($t4)
/* 0CD2D0 800CC6D0 8D210000 */  lw    $at, ($t1)
/* 0CD2D4 800CC6D4 AD410000 */  sw    $at, ($t2)
/* 0CD2D8 800CC6D8 8D2B0004 */  lw    $t3, 4($t1)
/* 0CD2DC 800CC6DC AD4B0004 */  sw    $t3, 4($t2)
/* 0CD2E0 800CC6E0 8D210008 */  lw    $at, 8($t1)
/* 0CD2E4 800CC6E4 AD410008 */  sw    $at, 8($t2)
/* 0CD2E8 800CC6E8 8D2B000C */  lw    $t3, 0xc($t1)
/* 0CD2EC 800CC6EC AD4B000C */  sw    $t3, 0xc($t2)
/* 0CD2F0 800CC6F0 8DC10000 */  lw    $at, ($t6)
/* 0CD2F4 800CC6F4 ADE10000 */  sw    $at, ($t7)
/* 0CD2F8 800CC6F8 8DD80004 */  lw    $t8, 4($t6)
/* 0CD2FC 800CC6FC ADF80004 */  sw    $t8, 4($t7)
/* 0CD300 800CC700 8DC10008 */  lw    $at, 8($t6)
/* 0CD304 800CC704 ADE10008 */  sw    $at, 8($t7)
/* 0CD308 800CC708 8DD8000C */  lw    $t8, 0xc($t6)
/* 0CD30C 800CC70C 0C03518C */  jal   osWritebackDCache
/* 0CD310 800CC710 ADF8000C */   sw    $t8, 0xC($t7)
/* 0CD314 800CC714 3C048000 */  lui   $a0, 0x8000
/* 0CD318 800CC718 0C0351AC */  jal   osInvalICache
/* 0CD31C 800CC71C 24050190 */   li    $a1, 400
/* 0CD320 800CC720 0C0351CC */  jal   osMapTLBRdb
/* 0CD324 800CC724 00000000 */   nop   
/* 0CD328 800CC728 24040004 */  li    $a0, 4
/* 0CD32C 800CC72C 0C0351E4 */  jal   osPiRawWriteIo
/* 0CD330 800CC730 27A50038 */   addiu $a1, $sp, 0x38
/* 0CD334 800CC734 8FA80038 */  lw    $t0, 0x38($sp)
/* 0CD338 800CC738 2401FFF0 */  li    $at, -16
/* 0CD33C 800CC73C 0101C824 */  and   $t9, $t0, $at
/* 0CD340 800CC740 13200006 */  beqz  $t9, .L800CC75C
/* 0CD344 800CC744 AFB90038 */   sw    $t9, 0x38($sp)
/* 0CD348 800CC748 3C01800E */  lui   $at, %hi(D_800E38A4) # $at, 0x800e
/* 0CD34C 800CC74C 03205825 */  move  $t3, $t9
/* 0CD350 800CC750 240A0000 */  li    $t2, 0
/* 0CD354 800CC754 AC2A38A0 */  sw    $t2, %lo(D_800E38A0)($at)
/* 0CD358 800CC758 AC2B38A4 */  sw    $t3, %lo(D_800E38A4)($at)
.L800CC75C:
/* 0CD35C 800CC75C 3C04800E */  lui   $a0, %hi(D_800E38A0) # $a0, 0x800e
/* 0CD360 800CC760 3C05800E */  lui   $a1, %hi(D_800E38A4) # $a1, 0x800e
/* 0CD364 800CC764 8CA538A4 */  lw    $a1, %lo(D_800E38A4)($a1)
/* 0CD368 800CC768 8C8438A0 */  lw    $a0, %lo(D_800E38A0)($a0)
/* 0CD36C 800CC76C 24060000 */  li    $a2, 0
/* 0CD370 800CC770 0C033AF2 */  jal   __ll_mul
/* 0CD374 800CC774 24070003 */   li    $a3, 3
/* 0CD378 800CC778 AFA20020 */  sw    $v0, 0x20($sp)
/* 0CD37C 800CC77C AFA30024 */  sw    $v1, 0x24($sp)
/* 0CD380 800CC780 8FA50024 */  lw    $a1, 0x24($sp)
/* 0CD384 800CC784 8FA40020 */  lw    $a0, 0x20($sp)
/* 0CD388 800CC788 24060000 */  li    $a2, 0
/* 0CD38C 800CC78C 0C033AB2 */  jal   __ull_div
/* 0CD390 800CC790 24070004 */   li    $a3, 4
/* 0CD394 800CC794 3C098000 */  lui   $t1, %hi(osResetType) # $t1, 0x8000
/* 0CD398 800CC798 8D29030C */  lw    $t1, %lo(osResetType)($t1)
/* 0CD39C 800CC79C 3C01800E */  lui   $at, %hi(D_800E38A4) # $at, 0x800e
/* 0CD3A0 800CC7A0 AC2238A0 */  sw    $v0, %lo(D_800E38A0)($at)
/* 0CD3A4 800CC7A4 15200005 */  bnez  $t1, .L800CC7BC
/* 0CD3A8 800CC7A8 AC2338A4 */   sw    $v1, %lo(D_800E38A4)($at)
/* 0CD3AC 800CC7AC 3C048000 */  lui   $a0, %hi(osAppNMIBuffer) # $a0, 0x8000
/* 0CD3B0 800CC7B0 2484031C */  addiu $a0, %lo(osAppNMIBuffer) # addiu $a0, $a0, 0x31c
/* 0CD3B4 800CC7B4 0C034138 */  jal   memzero
/* 0CD3B8 800CC7B8 24050040 */   li    $a1, 64
.L800CC7BC:
/* 0CD3BC 800CC7BC 3C0DA460 */  lui   $t5, %hi(D_A4600010) # $t5, 0xa460
/* 0CD3C0 800CC7C0 8DAC0010 */  lw    $t4, %lo(D_A4600010)($t5)
/* 0CD3C4 800CC7C4 318F0003 */  andi  $t7, $t4, 3
/* 0CD3C8 800CC7C8 11E00008 */  beqz  $t7, .L800CC7EC
/* 0CD3CC 800CC7CC AFAC0030 */   sw    $t4, 0x30($sp)
.L800CC7D0:
/* 0CD3D0 800CC7D0 3C0EA460 */  lui   $t6, %hi(D_A4600010) # $t6, 0xa460
/* 0CD3D4 800CC7D4 8DD80010 */  lw    $t8, %lo(D_A4600010)($t6)
/* 0CD3D8 800CC7D8 AFB80030 */  sw    $t8, 0x30($sp)
/* 0CD3DC 800CC7DC 8FA80030 */  lw    $t0, 0x30($sp)
/* 0CD3E0 800CC7E0 31190003 */  andi  $t9, $t0, 3
/* 0CD3E4 800CC7E4 1720FFFA */  bnez  $t9, .L800CC7D0
/* 0CD3E8 800CC7E8 00000000 */   nop   
.L800CC7EC:
/* 0CD3EC 800CC7EC 3C0AA500 */  lui   $t2, %hi(D_A5000508) # $t2, 0xa500
/* 0CD3F0 800CC7F0 8D4B0508 */  lw    $t3, %lo(D_A5000508)($t2)
/* 0CD3F4 800CC7F4 3169FFFF */  andi  $t1, $t3, 0xffff
/* 0CD3F8 800CC7F8 1520000A */  bnez  $t1, .L800CC824
/* 0CD3FC 800CC7FC AFAB0034 */   sw    $t3, 0x34($sp)
/* 0CD400 800CC800 240D0001 */  li    $t5, 1
/* 0CD404 800CC804 3C01800E */  lui   $at, %hi(D_800E38B0) # $at, 0x800e
/* 0CD408 800CC808 3C05800C */  lui   $a1, %hi(func_800C7340) # $a1, 0x800c
/* 0CD40C 800CC80C AC2D38B0 */  sw    $t5, %lo(D_800E38B0)($at)
/* 0CD410 800CC810 24A57340 */  addiu $a1, %lo(func_800C7340) # addiu $a1, $a1, 0x7340
/* 0CD414 800CC814 0C0351FC */  jal   func_800D47F0
/* 0CD418 800CC818 24040001 */   li    $a0, 1
/* 0CD41C 800CC81C 10000003 */  b     .L800CC82C
/* 0CD420 800CC820 00000000 */   nop   
.L800CC824:
/* 0CD424 800CC824 3C01800E */  lui   $at, %hi(D_800E38B0) # $at, 0x800e
/* 0CD428 800CC828 AC2038B0 */  sw    $zero, %lo(D_800E38B0)($at)
.L800CC82C:
/* 0CD42C 800CC82C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CD430 800CC830 8FB00018 */  lw    $s0, 0x18($sp)
/* 0CD434 800CC834 27BD0040 */  addiu $sp, $sp, 0x40
/* 0CD438 800CC838 03E00008 */  jr    $ra
/* 0CD43C 800CC83C 00000000 */   nop   

