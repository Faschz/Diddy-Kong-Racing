.late_rodata
glabel D_800E8780
.double 0.04687
glabel D_800E8788
.double 682.6583
glabel D_800E8790
.double 0.18
glabel D_800E8798
.double 0.04687

.text
glabel func_800A7520
/* 0A8120 800A7520 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A8124 800A7524 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A8128 800A7528 AFA50024 */  sw    $a1, 0x24($sp)
/* 0A812C 800A752C 8C890064 */  lw    $t1, 0x64($a0)
/* 0A8130 800A7530 24040001 */  li    $a0, 1
/* 0A8134 800A7534 812E01D8 */  lb    $t6, 0x1d8($t1)
/* 0A8138 800A7538 00000000 */  nop   
/* 0A813C 800A753C 15C00145 */  bnez  $t6, .L800A7A54
/* 0A8140 800A7540 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A8144 800A7544 0C019826 */  jal   func_80066098
/* 0A8148 800A7548 AFA9001C */   sw    $t1, 0x1c($sp)
/* 0A814C 800A754C 8FA9001C */  lw    $t1, 0x1c($sp)
/* 0A8150 800A7550 3C088012 */  lui   $t0, %hi(D_80126CDC) # $t0, 0x8012
/* 0A8154 800A7554 25086CDC */  addiu $t0, %lo(D_80126CDC) # addiu $t0, $t0, 0x6cdc
/* 0A8158 800A7558 8D020000 */  lw    $v0, ($t0)
/* 0A815C 800A755C 812F0172 */  lb    $t7, 0x172($t1)
/* 0A8160 800A7560 81230174 */  lb    $v1, 0x174($t1)
/* 0A8164 800A7564 8059005D */  lb    $t9, 0x5d($v0)
/* 0A8168 800A7568 000FC080 */  sll   $t8, $t7, 2
/* 0A816C 800A756C 030FC023 */  subu  $t8, $t8, $t7
/* 0A8170 800A7570 10790013 */  beq   $v1, $t9, .L800A75C0
/* 0A8174 800A7574 03032021 */   addu  $a0, $t8, $v1
/* 0A8178 800A7578 14600004 */  bnez  $v1, .L800A758C
/* 0A817C 800A757C 3C0B8012 */   lui   $t3, %hi(D_80126D37) # $t3, 0x8012
/* 0A8180 800A7580 240A0078 */  li    $t2, 120
/* 0A8184 800A7584 10000008 */  b     .L800A75A8
/* 0A8188 800A7588 A04A005C */   sb    $t2, 0x5c($v0)
.L800A758C:
/* 0A818C 800A758C 916B6D37 */  lbu   $t3, %lo(D_80126D37)($t3)
/* 0A8190 800A7590 24010001 */  li    $at, 1
/* 0A8194 800A7594 15610003 */  bne   $t3, $at, .L800A75A4
/* 0A8198 800A7598 240C0078 */   li    $t4, 120
/* 0A819C 800A759C 10000002 */  b     .L800A75A8
/* 0A81A0 800A75A0 A040005C */   sb    $zero, 0x5c($v0)
.L800A75A4:
/* 0A81A4 800A75A4 A04C005C */  sb    $t4, 0x5c($v0)
.L800A75A8:
/* 0A81A8 800A75A8 812D0174 */  lb    $t5, 0x174($t1)
/* 0A81AC 800A75AC 8D0E0000 */  lw    $t6, ($t0)
/* 0A81B0 800A75B0 00000000 */  nop   
/* 0A81B4 800A75B4 A1CD005D */  sb    $t5, 0x5d($t6)
/* 0A81B8 800A75B8 8D020000 */  lw    $v0, ($t0)
/* 0A81BC 800A75BC 00000000 */  nop   
.L800A75C0:
/* 0A81C0 800A75C0 812F0173 */  lb    $t7, 0x173($t1)
/* 0A81C4 800A75C4 00000000 */  nop   
/* 0A81C8 800A75C8 19E000DD */  blez  $t7, .L800A7940
/* 0A81CC 800A75CC 00000000 */   nop   
/* 0A81D0 800A75D0 8043005B */  lb    $v1, 0x5b($v0)
/* 0A81D4 800A75D4 00000000 */  nop   
/* 0A81D8 800A75D8 28610010 */  slti  $at, $v1, 0x10
/* 0A81DC 800A75DC 10200016 */  beqz  $at, .L800A7638
/* 0A81E0 800A75E0 00000000 */   nop   
/* 0A81E4 800A75E4 85380170 */  lh    $t8, 0x170($t1)
/* 0A81E8 800A75E8 0003CB00 */  sll   $t9, $v1, 0xc
/* 0A81EC 800A75EC 17000012 */  bnez  $t8, .L800A7638
/* 0A81F0 800A75F0 00000000 */   nop   
/* 0A81F4 800A75F4 A4590044 */  sh    $t9, 0x44($v0)
/* 0A81F8 800A75F8 8D020000 */  lw    $v0, ($t0)
/* 0A81FC 800A75FC 3C01800F */  lui   $at, %hi(D_800E8780 + 4) # $at, 0x800f
/* 0A8200 800A7600 804A005B */  lb    $t2, 0x5b($v0)
/* 0A8204 800A7604 C4298780 */  lwc1  $f9, %lo(D_800E8780)($at)
/* 0A8208 800A7608 448A2000 */  mtc1  $t2, $f4
/* 0A820C 800A760C C4288784 */  lwc1  $f8, %lo(D_800E8780 + 4)($at)
/* 0A8210 800A7610 468021A1 */  cvt.d.w $f6, $f4
/* 0A8214 800A7614 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 0A8218 800A7618 44818800 */  mtc1  $at, $f17
/* 0A821C 800A761C 46283282 */  mul.d $f10, $f6, $f8
/* 0A8220 800A7620 44808000 */  mtc1  $zero, $f16
/* 0A8224 800A7624 00000000 */  nop   
/* 0A8228 800A7628 46305480 */  add.d $f18, $f10, $f16
/* 0A822C 800A762C 46209120 */  cvt.s.d $f4, $f18
/* 0A8230 800A7630 10000007 */  b     .L800A7650
/* 0A8234 800A7634 E4440048 */   swc1  $f4, 0x48($v0)
.L800A7638:
/* 0A8238 800A7638 A4400044 */  sh    $zero, 0x44($v0)
/* 0A823C 800A763C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A8240 800A7640 44813000 */  mtc1  $at, $f6
/* 0A8244 800A7644 8D0B0000 */  lw    $t3, ($t0)
/* 0A8248 800A7648 00000000 */  nop   
/* 0A824C 800A764C E5660048 */  swc1  $f6, 0x48($t3)
.L800A7650:
/* 0A8250 800A7650 8D0C0000 */  lw    $t4, ($t0)
/* 0A8254 800A7654 24190010 */  li    $t9, 16
/* 0A8258 800A7658 A5840058 */  sh    $a0, 0x58($t4)
/* 0A825C 800A765C 8D020000 */  lw    $v0, ($t0)
/* 0A8260 800A7660 8FAE0024 */  lw    $t6, 0x24($sp)
/* 0A8264 800A7664 804D005B */  lb    $t5, 0x5b($v0)
/* 0A8268 800A7668 00000000 */  nop   
/* 0A826C 800A766C 01AE7821 */  addu  $t7, $t5, $t6
/* 0A8270 800A7670 A04F005B */  sb    $t7, 0x5b($v0)
/* 0A8274 800A7674 8D020000 */  lw    $v0, ($t0)
/* 0A8278 800A7678 00000000 */  nop   
/* 0A827C 800A767C 8058005B */  lb    $t8, 0x5b($v0)
/* 0A8280 800A7680 00000000 */  nop   
/* 0A8284 800A7684 2B010011 */  slti  $at, $t8, 0x11
/* 0A8288 800A7688 14200040 */  bnez  $at, .L800A778C
/* 0A828C 800A768C 00000000 */   nop   
/* 0A8290 800A7690 A059005B */  sb    $t9, 0x5b($v0)
/* 0A8294 800A7694 8D020000 */  lw    $v0, ($t0)
/* 0A8298 800A7698 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0A829C 800A769C 804A005C */  lb    $t2, 0x5c($v0)
/* 0A82A0 800A76A0 240D0078 */  li    $t5, 120
/* 0A82A4 800A76A4 014B6021 */  addu  $t4, $t2, $t3
/* 0A82A8 800A76A8 A04C005C */  sb    $t4, 0x5c($v0)
/* 0A82AC 800A76AC 8D020000 */  lw    $v0, ($t0)
/* 0A82B0 800A76B0 3C0E8012 */  lui   $t6, %hi(D_80126D0C) # $t6, 0x8012
/* 0A82B4 800A76B4 8043005C */  lb    $v1, 0x5c($v0)
/* 0A82B8 800A76B8 00000000 */  nop   
/* 0A82BC 800A76BC 28610079 */  slti  $at, $v1, 0x79
/* 0A82C0 800A76C0 14200005 */  bnez  $at, .L800A76D8
/* 0A82C4 800A76C4 00000000 */   nop   
/* 0A82C8 800A76C8 A04D005C */  sb    $t5, 0x5c($v0)
/* 0A82CC 800A76CC 8D020000 */  lw    $v0, ($t0)
/* 0A82D0 800A76D0 1000002E */  b     .L800A778C
/* 0A82D4 800A76D4 00000000 */   nop   
.L800A76D8:
/* 0A82D8 800A76D8 8DCE6D0C */  lw    $t6, %lo(D_80126D0C)($t6)
/* 0A82DC 800A76DC 00000000 */  nop   
/* 0A82E0 800A76E0 15C0002A */  bnez  $t6, .L800A778C
/* 0A82E4 800A76E4 00000000 */   nop   
/* 0A82E8 800A76E8 44834000 */  mtc1  $v1, $f8
/* 0A82EC 800A76EC 3C01800F */  lui   $at, %hi(D_800E8788 + 4) # $at, 0x800f
/* 0A82F0 800A76F0 468042A0 */  cvt.s.w $f10, $f8
/* 0A82F4 800A76F4 C4338788 */  lwc1  $f19, %lo(D_800E8788)($at)
/* 0A82F8 800A76F8 C432878C */  lwc1  $f18, %lo(D_800E8788 + 4)($at)
/* 0A82FC 800A76FC 46005421 */  cvt.d.s $f16, $f10
/* 0A8300 800A7700 46328102 */  mul.d $f4, $f16, $f18
/* 0A8304 800A7704 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0A8308 800A7708 44813800 */  mtc1  $at, $f7
/* 0A830C 800A770C 44803000 */  mtc1  $zero, $f6
/* 0A8310 800A7710 AFA9001C */  sw    $t1, 0x1c($sp)
/* 0A8314 800A7714 46262202 */  mul.d $f8, $f4, $f6
/* 0A8318 800A7718 444FF800 */  cfc1  $t7, $31
/* 0A831C 800A771C 00000000 */  nop   
/* 0A8320 800A7720 35E10003 */  ori   $at, $t7, 3
/* 0A8324 800A7724 38210002 */  xori  $at, $at, 2
/* 0A8328 800A7728 44C1F800 */  ctc1  $at, $31
/* 0A832C 800A772C 00000000 */  nop   
/* 0A8330 800A7730 462042A4 */  cvt.w.d $f10, $f8
/* 0A8334 800A7734 44045000 */  mfc1  $a0, $f10
/* 0A8338 800A7738 44CFF800 */  ctc1  $t7, $31
/* 0A833C 800A773C 0004C400 */  sll   $t8, $a0, 0x10
/* 0A8340 800A7740 0C01C1F1 */  jal   cosine_s
/* 0A8344 800A7744 00182403 */   sra   $a0, $t8, 0x10
/* 0A8348 800A7748 3C01800F */  lui   $at, %hi(D_800E8790 + 4) # $at, 0x800f
/* 0A834C 800A774C C4318790 */  lwc1  $f17, %lo(D_800E8790)($at)
/* 0A8350 800A7750 C4308794 */  lwc1  $f16, %lo(D_800E8790 + 4)($at)
/* 0A8354 800A7754 3C088012 */  lui   $t0, %hi(D_80126CDC) # $t0, 0x8012
/* 0A8358 800A7758 25086CDC */  addiu $t0, %lo(D_80126CDC) # addiu $t0, $t0, 0x6cdc
/* 0A835C 800A775C 460004A1 */  cvt.d.s $f18, $f0
/* 0A8360 800A7760 46328102 */  mul.d $f4, $f16, $f18
/* 0A8364 800A7764 8D020000 */  lw    $v0, ($t0)
/* 0A8368 800A7768 8FA9001C */  lw    $t1, 0x1c($sp)
/* 0A836C 800A776C C4460048 */  lwc1  $f6, 0x48($v0)
/* 0A8370 800A7770 00000000 */  nop   
/* 0A8374 800A7774 46003221 */  cvt.d.s $f8, $f6
/* 0A8378 800A7778 46244280 */  add.d $f10, $f8, $f4
/* 0A837C 800A777C 46205420 */  cvt.s.d $f16, $f10
/* 0A8380 800A7780 E4500048 */  swc1  $f16, 0x48($v0)
/* 0A8384 800A7784 8D020000 */  lw    $v0, ($t0)
/* 0A8388 800A7788 00000000 */  nop   
.L800A778C:
/* 0A838C 800A778C 3C0A8012 */  lui   $t2, %hi(D_80126D0C) # $t2, 0x8012
/* 0A8390 800A7790 8D4A6D0C */  lw    $t2, %lo(D_80126D0C)($t2)
/* 0A8394 800A7794 44808000 */  mtc1  $zero, $f16
/* 0A8398 800A7798 1940000A */  blez  $t2, .L800A77C4
/* 0A839C 800A779C 3C013FE8 */   li    $at, 0x3FE80000 # 1.812500
/* 0A83A0 800A77A0 C4520048 */  lwc1  $f18, 0x48($v0)
/* 0A83A4 800A77A4 44814800 */  mtc1  $at, $f9
/* 0A83A8 800A77A8 44804000 */  mtc1  $zero, $f8
/* 0A83AC 800A77AC 460091A1 */  cvt.d.s $f6, $f18
/* 0A83B0 800A77B0 46283102 */  mul.d $f4, $f6, $f8
/* 0A83B4 800A77B4 462022A0 */  cvt.s.d $f10, $f4
/* 0A83B8 800A77B8 E44A0048 */  swc1  $f10, 0x48($v0)
/* 0A83BC 800A77BC 8D020000 */  lw    $v0, ($t0)
/* 0A83C0 800A77C0 00000000 */  nop   
.L800A77C4:
/* 0A83C4 800A77C4 C4520048 */  lwc1  $f18, 0x48($v0)
/* 0A83C8 800A77C8 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 0A83CC 800A77CC 44818800 */  mtc1  $at, $f17
/* 0A83D0 800A77D0 460091A1 */  cvt.d.s $f6, $f18
/* 0A83D4 800A77D4 46268032 */  c.eq.d $f16, $f6
/* 0A83D8 800A77D8 24040001 */  li    $a0, 1
/* 0A83DC 800A77DC 45010008 */  bc1t  .L800A7800
/* 0A83E0 800A77E0 00000000 */   nop   
/* 0A83E4 800A77E4 0C01EFC7 */  jal   func_8007BF1C
/* 0A83E8 800A77E8 AFA9001C */   sw    $t1, 0x1c($sp)
/* 0A83EC 800A77EC 3C088012 */  lui   $t0, %hi(D_80126CDC) # $t0, 0x8012
/* 0A83F0 800A77F0 25086CDC */  addiu $t0, %lo(D_80126CDC) # addiu $t0, $t0, 0x6cdc
/* 0A83F4 800A77F4 8D020000 */  lw    $v0, ($t0)
/* 0A83F8 800A77F8 8FA9001C */  lw    $t1, 0x1c($sp)
/* 0A83FC 800A77FC 00000000 */  nop   
.L800A7800:
/* 0A8400 800A7800 3C048012 */  lui   $a0, %hi(D_80126CFC) # $a0, 0x8012
/* 0A8404 800A7804 3C058012 */  lui   $a1, %hi(D_80126D00) # $a1, 0x8012
/* 0A8408 800A7808 3C068012 */  lui   $a2, %hi(D_80126D04) # $a2, 0x8012
/* 0A840C 800A780C 24C66D04 */  addiu $a2, %lo(D_80126D04) # addiu $a2, $a2, 0x6d04
/* 0A8410 800A7810 24A56D00 */  addiu $a1, %lo(D_80126D00) # addiu $a1, $a1, 0x6d00
/* 0A8414 800A7814 24846CFC */  addiu $a0, %lo(D_80126CFC) # addiu $a0, $a0, 0x6cfc
/* 0A8418 800A7818 24470040 */  addiu $a3, $v0, 0x40
/* 0A841C 800A781C 0C02A980 */  jal   func_800AA600
/* 0A8420 800A7820 AFA9001C */   sw    $t1, 0x1c($sp)
/* 0A8424 800A7824 0C01EFC7 */  jal   func_8007BF1C
/* 0A8428 800A7828 00002025 */   move  $a0, $zero
/* 0A842C 800A782C 8FA9001C */  lw    $t1, 0x1c($sp)
/* 0A8430 800A7830 3C088012 */  lui   $t0, %hi(D_80126CDC) # $t0, 0x8012
/* 0A8434 800A7834 81230173 */  lb    $v1, 0x173($t1)
/* 0A8438 800A7838 25086CDC */  addiu $t0, %lo(D_80126CDC) # addiu $t0, $t0, 0x6cdc
/* 0A843C 800A783C 28610004 */  slti  $at, $v1, 4
/* 0A8440 800A7840 14200006 */  bnez  $at, .L800A785C
/* 0A8444 800A7844 3C048012 */   lui   $a0, %hi(D_80126CFC) # $a0, 0x8012
/* 0A8448 800A7848 8D0C0000 */  lw    $t4, ($t0)
/* 0A844C 800A784C 240BFF80 */  li    $t3, -128
/* 0A8450 800A7850 A18B063A */  sb    $t3, 0x63a($t4)
/* 0A8454 800A7854 81230173 */  lb    $v1, 0x173($t1)
/* 0A8458 800A7858 00000000 */  nop   
.L800A785C:
/* 0A845C 800A785C 28610003 */  slti  $at, $v1, 3
/* 0A8460 800A7860 10200009 */  beqz  $at, .L800A7888
/* 0A8464 800A7864 24846CFC */   addiu $a0, %lo(D_80126CFC) # addiu $a0, $a0, 0x6cfc
/* 0A8468 800A7868 8D020000 */  lw    $v0, ($t0)
/* 0A846C 800A786C 8FAE0024 */  lw    $t6, 0x24($sp)
/* 0A8470 800A7870 804D063A */  lb    $t5, 0x63a($v0)
/* 0A8474 800A7874 00000000 */  nop   
/* 0A8478 800A7878 01AE7823 */  subu  $t7, $t5, $t6
/* 0A847C 800A787C A04F063A */  sb    $t7, 0x63a($v0)
/* 0A8480 800A7880 81230173 */  lb    $v1, 0x173($t1)
/* 0A8484 800A7884 00000000 */  nop   
.L800A7888:
/* 0A8488 800A7888 28610003 */  slti  $at, $v1, 3
/* 0A848C 800A788C 10200010 */  beqz  $at, .L800A78D0
/* 0A8490 800A7890 3C0DFA00 */   lui   $t5, 0xfa00
/* 0A8494 800A7894 8D180000 */  lw    $t8, ($t0)
/* 0A8498 800A7898 00000000 */  nop   
/* 0A849C 800A789C 8319063A */  lb    $t9, 0x63a($t8)
/* 0A84A0 800A78A0 00000000 */  nop   
/* 0A84A4 800A78A4 272A0080 */  addiu $t2, $t9, 0x80
/* 0A84A8 800A78A8 05410004 */  bgez  $t2, .L800A78BC
/* 0A84AC 800A78AC 314B001F */   andi  $t3, $t2, 0x1f
/* 0A84B0 800A78B0 11600002 */  beqz  $t3, .L800A78BC
/* 0A84B4 800A78B4 00000000 */   nop   
/* 0A84B8 800A78B8 256BFFE0 */  addiu $t3, $t3, -0x20
.L800A78BC:
/* 0A84BC 800A78BC 29610014 */  slti  $at, $t3, 0x14
/* 0A84C0 800A78C0 1020001D */  beqz  $at, .L800A7938
/* 0A84C4 800A78C4 24010001 */   li    $at, 1
/* 0A84C8 800A78C8 1061001B */  beq   $v1, $at, .L800A7938
/* 0A84CC 800A78CC 00000000 */   nop   
.L800A78D0:
/* 0A84D0 800A78D0 8C820000 */  lw    $v0, ($a0)
/* 0A84D4 800A78D4 240EFFA0 */  li    $t6, -96
/* 0A84D8 800A78D8 244C0008 */  addiu $t4, $v0, 8
/* 0A84DC 800A78DC AC8C0000 */  sw    $t4, ($a0)
/* 0A84E0 800A78E0 AC4E0004 */  sw    $t6, 4($v0)
/* 0A84E4 800A78E4 AC4D0000 */  sw    $t5, ($v0)
/* 0A84E8 800A78E8 812F0173 */  lb    $t7, 0x173($t1)
/* 0A84EC 800A78EC 8D190000 */  lw    $t9, ($t0)
/* 0A84F0 800A78F0 25F8FFFF */  addiu $t8, $t7, -1
/* 0A84F4 800A78F4 A7380638 */  sh    $t8, 0x638($t9)
/* 0A84F8 800A78F8 8D070000 */  lw    $a3, ($t0)
/* 0A84FC 800A78FC 3C058012 */  lui   $a1, %hi(D_80126D00) # $a1, 0x8012
/* 0A8500 800A7900 3C068012 */  lui   $a2, %hi(D_80126D04) # $a2, 0x8012
/* 0A8504 800A7904 24C66D04 */  addiu $a2, %lo(D_80126D04) # addiu $a2, $a2, 0x6d04
/* 0A8508 800A7908 24A56D00 */  addiu $a1, %lo(D_80126D00) # addiu $a1, $a1, 0x6d00
/* 0A850C 800A790C 0C02A980 */  jal   func_800AA600
/* 0A8510 800A7910 24E70620 */   addiu $a3, $a3, 0x620
/* 0A8514 800A7914 3C058012 */  lui   $a1, %hi(D_80126CFC) # $a1, 0x8012
/* 0A8518 800A7918 24A56CFC */  addiu $a1, %lo(D_80126CFC) # addiu $a1, $a1, 0x6cfc
/* 0A851C 800A791C 8CA20000 */  lw    $v0, ($a1)
/* 0A8520 800A7920 3C0BFA00 */  lui   $t3, 0xfa00
/* 0A8524 800A7924 244A0008 */  addiu $t2, $v0, 8
/* 0A8528 800A7928 ACAA0000 */  sw    $t2, ($a1)
/* 0A852C 800A792C 240CFFFF */  li    $t4, -1
/* 0A8530 800A7930 AC4C0004 */  sw    $t4, 4($v0)
/* 0A8534 800A7934 AC4B0000 */  sw    $t3, ($v0)
.L800A7938:
/* 0A8538 800A7938 1000003A */  b     .L800A7A24
/* 0A853C 800A793C 00000000 */   nop   
.L800A7940:
/* 0A8540 800A7940 8043005B */  lb    $v1, 0x5b($v0)
/* 0A8544 800A7944 00000000 */  nop   
/* 0A8548 800A7948 18600036 */  blez  $v1, .L800A7A24
/* 0A854C 800A794C 00036B00 */   sll   $t5, $v1, 0xc
/* 0A8550 800A7950 A44D0044 */  sh    $t5, 0x44($v0)
/* 0A8554 800A7954 8D020000 */  lw    $v0, ($t0)
/* 0A8558 800A7958 3C01800F */  lui   $at, %hi(D_800E8798 + 4) # $at, 0x800f
/* 0A855C 800A795C 804E005B */  lb    $t6, 0x5b($v0)
/* 0A8560 800A7960 C42B8798 */  lwc1  $f11, %lo(D_800E8798)($at)
/* 0A8564 800A7964 448E4000 */  mtc1  $t6, $f8
/* 0A8568 800A7968 C42A879C */  lwc1  $f10, %lo(D_800E8798 + 4)($at)
/* 0A856C 800A796C 46804121 */  cvt.d.w $f4, $f8
/* 0A8570 800A7970 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 0A8574 800A7974 44818800 */  mtc1  $at, $f17
/* 0A8578 800A7978 462A2482 */  mul.d $f18, $f4, $f10
/* 0A857C 800A797C 44808000 */  mtc1  $zero, $f16
/* 0A8580 800A7980 3C058012 */  lui   $a1, %hi(D_80126D00) # $a1, 0x8012
/* 0A8584 800A7984 3C068012 */  lui   $a2, %hi(D_80126D04) # $a2, 0x8012
/* 0A8588 800A7988 3C0C8012 */  lui   $t4, %hi(D_80126D0C) # $t4, 0x8012
/* 0A858C 800A798C 46309180 */  add.d $f6, $f18, $f16
/* 0A8590 800A7990 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A8594 800A7994 46203220 */  cvt.s.d $f8, $f6
/* 0A8598 800A7998 24C66D04 */  addiu $a2, %lo(D_80126D04) # addiu $a2, $a2, 0x6d04
/* 0A859C 800A799C E4480048 */  swc1  $f8, 0x48($v0)
/* 0A85A0 800A79A0 8D020000 */  lw    $v0, ($t0)
/* 0A85A4 800A79A4 8FB80024 */  lw    $t8, 0x24($sp)
/* 0A85A8 800A79A8 804F005B */  lb    $t7, 0x5b($v0)
/* 0A85AC 800A79AC 24A56D00 */  addiu $a1, %lo(D_80126D00) # addiu $a1, $a1, 0x6d00
/* 0A85B0 800A79B0 01F8C823 */  subu  $t9, $t7, $t8
/* 0A85B4 800A79B4 A059005B */  sb    $t9, 0x5b($v0)
/* 0A85B8 800A79B8 8D0A0000 */  lw    $t2, ($t0)
/* 0A85BC 800A79BC 00000000 */  nop   
/* 0A85C0 800A79C0 A5440058 */  sh    $a0, 0x58($t2)
/* 0A85C4 800A79C4 8D020000 */  lw    $v0, ($t0)
/* 0A85C8 800A79C8 3C048012 */  lui   $a0, %hi(D_80126CFC) # $a0, 0x8012
/* 0A85CC 800A79CC 804B005B */  lb    $t3, 0x5b($v0)
/* 0A85D0 800A79D0 24846CFC */  addiu $a0, %lo(D_80126CFC) # addiu $a0, $a0, 0x6cfc
/* 0A85D4 800A79D4 05610005 */  bgez  $t3, .L800A79EC
/* 0A85D8 800A79D8 00000000 */   nop   
/* 0A85DC 800A79DC A040005B */  sb    $zero, 0x5b($v0)
/* 0A85E0 800A79E0 3C028012 */  lui   $v0, %hi(D_80126CDC) # $v0, 0x8012
/* 0A85E4 800A79E4 8C426CDC */  lw    $v0, %lo(D_80126CDC)($v0)
/* 0A85E8 800A79E8 00000000 */  nop   
.L800A79EC:
/* 0A85EC 800A79EC 8D8C6D0C */  lw    $t4, %lo(D_80126D0C)($t4)
/* 0A85F0 800A79F0 00000000 */  nop   
/* 0A85F4 800A79F4 11800009 */  beqz  $t4, .L800A7A1C
/* 0A85F8 800A79F8 00000000 */   nop   
/* 0A85FC 800A79FC C4440048 */  lwc1  $f4, 0x48($v0)
/* 0A8600 800A7A00 44815000 */  mtc1  $at, $f10
/* 0A8604 800A7A04 00000000 */  nop   
/* 0A8608 800A7A08 460A2483 */  div.s $f18, $f4, $f10
/* 0A860C 800A7A0C E4520048 */  swc1  $f18, 0x48($v0)
/* 0A8610 800A7A10 3C028012 */  lui   $v0, %hi(D_80126CDC) # $v0, 0x8012
/* 0A8614 800A7A14 8C426CDC */  lw    $v0, %lo(D_80126CDC)($v0)
/* 0A8618 800A7A18 00000000 */  nop   
.L800A7A1C:
/* 0A861C 800A7A1C 0C02A980 */  jal   func_800AA600
/* 0A8620 800A7A20 24470040 */   addiu $a3, $v0, 0x40
.L800A7A24:
/* 0A8624 800A7A24 3C058012 */  lui   $a1, %hi(D_80126CFC) # $a1, 0x8012
/* 0A8628 800A7A28 24A56CFC */  addiu $a1, %lo(D_80126CFC) # addiu $a1, $a1, 0x6cfc
/* 0A862C 800A7A2C 8CA20000 */  lw    $v0, ($a1)
/* 0A8630 800A7A30 3C0EFA00 */  lui   $t6, 0xfa00
/* 0A8634 800A7A34 244D0008 */  addiu $t5, $v0, 8
/* 0A8638 800A7A38 ACAD0000 */  sw    $t5, ($a1)
/* 0A863C 800A7A3C 240FFFFF */  li    $t7, -1
/* 0A8640 800A7A40 00002025 */  move  $a0, $zero
/* 0A8644 800A7A44 AC4F0004 */  sw    $t7, 4($v0)
/* 0A8648 800A7A48 0C019826 */  jal   func_80066098
/* 0A864C 800A7A4C AC4E0000 */   sw    $t6, ($v0)
/* 0A8650 800A7A50 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A7A54:
/* 0A8654 800A7A54 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A8658 800A7A58 03E00008 */  jr    $ra
/* 0A865C 800A7A5C 00000000 */   nop   
