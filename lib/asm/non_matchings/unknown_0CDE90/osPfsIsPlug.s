glabel osPfsIsPlug
/* 0CDE90 800CD290 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0CDE94 800CD294 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CDE98 800CD298 240E0003 */  li    $t6, 3
/* 0CDE9C 800CD29C AFA40040 */  sw    $a0, 0x40($sp)
/* 0CDEA0 800CD2A0 AFA50044 */  sw    $a1, 0x44($sp)
/* 0CDEA4 800CD2A4 AFA0003C */  sw    $zero, 0x3c($sp)
/* 0CDEA8 800CD2A8 A3A0001F */  sb    $zero, 0x1f($sp)
/* 0CDEAC 800CD2AC 0C033594 */  jal   __osSiGetAccess
/* 0CDEB0 800CD2B0 AFAE0018 */   sw    $t6, 0x18($sp)
.L800CD2B4:
/* 0CDEB4 800CD2B4 0C03350C */  jal   __osPfsRequestData
/* 0CDEB8 800CD2B8 00002025 */   move  $a0, $zero
/* 0CDEBC 800CD2BC 3C058013 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8013
/* 0CDEC0 800CD2C0 24A5CDE0 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, -0x3220
/* 0CDEC4 800CD2C4 0C0335B0 */  jal   __osSiRawStartDma
/* 0CDEC8 800CD2C8 24040001 */   li    $a0, 1
/* 0CDECC 800CD2CC AFA2003C */  sw    $v0, 0x3c($sp)
/* 0CDED0 800CD2D0 8FA40040 */  lw    $a0, 0x40($sp)
/* 0CDED4 800CD2D4 27A50038 */  addiu $a1, $sp, 0x38
/* 0CDED8 800CD2D8 0C0322EC */  jal   osRecvMesg
/* 0CDEDC 800CD2DC 24060001 */   li    $a2, 1
/* 0CDEE0 800CD2E0 3C058013 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8013
/* 0CDEE4 800CD2E4 24A5CDE0 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, -0x3220
/* 0CDEE8 800CD2E8 0C0335B0 */  jal   __osSiRawStartDma
/* 0CDEEC 800CD2EC 00002025 */   move  $a0, $zero
/* 0CDEF0 800CD2F0 AFA2003C */  sw    $v0, 0x3c($sp)
/* 0CDEF4 800CD2F4 8FA40040 */  lw    $a0, 0x40($sp)
/* 0CDEF8 800CD2F8 27A50038 */  addiu $a1, $sp, 0x38
/* 0CDEFC 800CD2FC 0C0322EC */  jal   osRecvMesg
/* 0CDF00 800CD300 24060001 */   li    $a2, 1
/* 0CDF04 800CD304 27A40037 */  addiu $a0, $sp, 0x37
/* 0CDF08 800CD308 0C03354B */  jal   __osPfsGetInitData
/* 0CDF0C 800CD30C 27A50024 */   addiu $a1, $sp, 0x24
/* 0CDF10 800CD310 3C0F8013 */  lui   $t7, %hi(__osMaxControllers) # $t7, 0x8013
/* 0CDF14 800CD314 91EFCD91 */  lbu   $t7, %lo(__osMaxControllers)($t7)
/* 0CDF18 800CD318 AFA00020 */  sw    $zero, 0x20($sp)
/* 0CDF1C 800CD31C 19E00014 */  blez  $t7, .L800CD370
/* 0CDF20 800CD320 00000000 */   nop   
.L800CD324:
/* 0CDF24 800CD324 8FB80020 */  lw    $t8, 0x20($sp)
/* 0CDF28 800CD328 0018C880 */  sll   $t9, $t8, 2
/* 0CDF2C 800CD32C 03B94021 */  addu  $t0, $sp, $t9
/* 0CDF30 800CD330 91080026 */  lbu   $t0, 0x26($t0)
/* 0CDF34 800CD334 31090004 */  andi  $t1, $t0, 4
/* 0CDF38 800CD338 15200005 */  bnez  $t1, .L800CD350
/* 0CDF3C 800CD33C 00000000 */   nop   
/* 0CDF40 800CD340 8FAA0018 */  lw    $t2, 0x18($sp)
/* 0CDF44 800CD344 254BFFFF */  addiu $t3, $t2, -1
/* 0CDF48 800CD348 10000009 */  b     .L800CD370
/* 0CDF4C 800CD34C AFAB0018 */   sw    $t3, 0x18($sp)
.L800CD350:
/* 0CDF50 800CD350 8FAC0020 */  lw    $t4, 0x20($sp)
/* 0CDF54 800CD354 3C0E8013 */  lui   $t6, %hi(__osMaxControllers) # $t6, 0x8013
/* 0CDF58 800CD358 91CECD91 */  lbu   $t6, %lo(__osMaxControllers)($t6)
/* 0CDF5C 800CD35C 258D0001 */  addiu $t5, $t4, 1
/* 0CDF60 800CD360 AFAD0020 */  sw    $t5, 0x20($sp)
/* 0CDF64 800CD364 01AE082A */  slt   $at, $t5, $t6
/* 0CDF68 800CD368 1420FFEE */  bnez  $at, .L800CD324
/* 0CDF6C 800CD36C 00000000 */   nop   
.L800CD370:
/* 0CDF70 800CD370 3C0F8013 */  lui   $t7, %hi(__osMaxControllers) # $t7, 0x8013
/* 0CDF74 800CD374 91EFCD91 */  lbu   $t7, %lo(__osMaxControllers)($t7)
/* 0CDF78 800CD378 8FB80020 */  lw    $t8, 0x20($sp)
/* 0CDF7C 800CD37C 15F80002 */  bne   $t7, $t8, .L800CD388
/* 0CDF80 800CD380 00000000 */   nop   
/* 0CDF84 800CD384 AFA00018 */  sw    $zero, 0x18($sp)
.L800CD388:
/* 0CDF88 800CD388 8FB90018 */  lw    $t9, 0x18($sp)
/* 0CDF8C 800CD38C 1F20FFC9 */  bgtz  $t9, .L800CD2B4
/* 0CDF90 800CD390 00000000 */   nop   
/* 0CDF94 800CD394 3C088013 */  lui   $t0, %hi(__osMaxControllers) # $t0, 0x8013
/* 0CDF98 800CD398 9108CD91 */  lbu   $t0, %lo(__osMaxControllers)($t0)
/* 0CDF9C 800CD39C AFA00020 */  sw    $zero, 0x20($sp)
/* 0CDFA0 800CD3A0 19000019 */  blez  $t0, .L800CD408
/* 0CDFA4 800CD3A4 00000000 */   nop   
.L800CD3A8:
/* 0CDFA8 800CD3A8 8FA90020 */  lw    $t1, 0x20($sp)
/* 0CDFAC 800CD3AC 27AB0024 */  addiu $t3, $sp, 0x24
/* 0CDFB0 800CD3B0 00095080 */  sll   $t2, $t1, 2
/* 0CDFB4 800CD3B4 014B6021 */  addu  $t4, $t2, $t3
/* 0CDFB8 800CD3B8 918D0003 */  lbu   $t5, 3($t4)
/* 0CDFBC 800CD3BC 15A0000A */  bnez  $t5, .L800CD3E8
/* 0CDFC0 800CD3C0 00000000 */   nop   
/* 0CDFC4 800CD3C4 918E0002 */  lbu   $t6, 2($t4)
/* 0CDFC8 800CD3C8 31CF0001 */  andi  $t7, $t6, 1
/* 0CDFCC 800CD3CC 11E00006 */  beqz  $t7, .L800CD3E8
/* 0CDFD0 800CD3D0 00000000 */   nop   
/* 0CDFD4 800CD3D4 93B8001F */  lbu   $t8, 0x1f($sp)
/* 0CDFD8 800CD3D8 24190001 */  li    $t9, 1
/* 0CDFDC 800CD3DC 01394004 */  sllv  $t0, $t9, $t1
/* 0CDFE0 800CD3E0 03085025 */  or    $t2, $t8, $t0
/* 0CDFE4 800CD3E4 A3AA001F */  sb    $t2, 0x1f($sp)
.L800CD3E8:
/* 0CDFE8 800CD3E8 8FAB0020 */  lw    $t3, 0x20($sp)
/* 0CDFEC 800CD3EC 3C0C8013 */  lui   $t4, %hi(__osMaxControllers) # $t4, 0x8013
/* 0CDFF0 800CD3F0 918CCD91 */  lbu   $t4, %lo(__osMaxControllers)($t4)
/* 0CDFF4 800CD3F4 256D0001 */  addiu $t5, $t3, 1
/* 0CDFF8 800CD3F8 AFAD0020 */  sw    $t5, 0x20($sp)
/* 0CDFFC 800CD3FC 01AC082A */  slt   $at, $t5, $t4
/* 0CE000 800CD400 1420FFE9 */  bnez  $at, .L800CD3A8
/* 0CE004 800CD404 00000000 */   nop   
.L800CD408:
/* 0CE008 800CD408 0C0335A5 */  jal   __osSiRelAccess
/* 0CE00C 800CD40C 00000000 */   nop   
/* 0CE010 800CD410 93AE001F */  lbu   $t6, 0x1f($sp)
/* 0CE014 800CD414 8FAF0044 */  lw    $t7, 0x44($sp)
/* 0CE018 800CD418 A1EE0000 */  sb    $t6, ($t7)
/* 0CE01C 800CD41C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CE020 800CD420 8FA2003C */  lw    $v0, 0x3c($sp)
/* 0CE024 800CD424 27BD0040 */  addiu $sp, $sp, 0x40
/* 0CE028 800CD428 03E00008 */  jr    $ra
/* 0CE02C 800CD42C 00000000 */   nop   

