glabel menu_5_loop
/* 094200 80093600 3C0E8012 */  lui   $t6, %hi(D_801263E0) # $t6, 0x8012
/* 094204 80093604 8DCE63E0 */  lw    $t6, %lo(D_801263E0)($t6)
/* 094208 80093608 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 09420C 8009360C AFBF0014 */  sw    $ra, 0x14($sp)
/* 094210 80093610 05C10007 */  bgez  $t6, .L80093630
/* 094214 80093614 AFA40038 */   sw    $a0, 0x38($sp)
/* 094218 80093618 3C02800E */  lui   $v0, %hi(gTrackIdForPreview) # $v0, 0x800e
/* 09421C 8009361C 8C42F4C4 */  lw    $v0, %lo(gTrackIdForPreview)($v0)
/* 094220 80093620 00000000 */  nop   
/* 094224 80093624 344F0080 */  ori   $t7, $v0, 0x80
/* 094228 80093628 100000F4 */  b     .L800939FC
/* 09422C 8009362C 01E01025 */   move  $v0, $t7
.L80093630:
/* 094230 80093630 0C01BAA4 */  jal   get_settings
/* 094234 80093634 00000000 */   nop   
/* 094238 80093638 3C19800E */  lui   $t9, %hi(gTrackIdForPreview) # $t9, 0x800e
/* 09423C 8009363C 8F39F4C4 */  lw    $t9, %lo(gTrackIdForPreview)($t9)
/* 094240 80093640 8C58004C */  lw    $t8, 0x4c($v0)
/* 094244 80093644 00403025 */  move  $a2, $v0
/* 094248 80093648 03194021 */  addu  $t0, $t8, $t9
/* 09424C 8009364C 81040002 */  lb    $a0, 2($t0)
/* 094250 80093650 AFA00028 */  sw    $zero, 0x28($sp)
/* 094254 80093654 8C490004 */  lw    $t1, 4($v0)
/* 094258 80093658 00045080 */  sll   $t2, $a0, 2
/* 09425C 8009365C 012A5821 */  addu  $t3, $t1, $t2
/* 094260 80093660 8D630000 */  lw    $v1, ($t3)
/* 094264 80093664 00002825 */  move  $a1, $zero
/* 094268 80093668 306C0002 */  andi  $t4, $v1, 2
/* 09426C 8009366C 11800002 */  beqz  $t4, .L80093678
/* 094270 80093670 306D0004 */   andi  $t5, $v1, 4
/* 094274 80093674 24050001 */  li    $a1, 1
.L80093678:
/* 094278 80093678 11A00002 */  beqz  $t5, .L80093684
/* 09427C 8009367C 00000000 */   nop   
/* 094280 80093680 24050002 */  li    $a1, 2
.L80093684:
/* 094284 80093684 AFA40024 */  sw    $a0, 0x24($sp)
/* 094288 80093688 AFA5001C */  sw    $a1, 0x1c($sp)
/* 09428C 8009368C 0C01AC53 */  jal   func_8006B14C
/* 094290 80093690 AFA60018 */   sw    $a2, 0x18($sp)
/* 094294 80093694 8FA60018 */  lw    $a2, 0x18($sp)
/* 094298 80093698 304E0040 */  andi  $t6, $v0, 0x40
/* 09429C 8009369C 11C00002 */  beqz  $t6, .L800936A8
/* 0942A0 800936A0 240F0001 */   li    $t7, 1
/* 0942A4 800936A4 AFAF0028 */  sw    $t7, 0x28($sp)
.L800936A8:
/* 0942A8 800936A8 AFA00020 */  sw    $zero, 0x20($sp)
/* 0942AC 800936AC 0C003932 */  jal   is_time_trial_enabled
/* 0942B0 800936B0 AFA60018 */   sw    $a2, 0x18($sp)
/* 0942B4 800936B4 8FA60018 */  lw    $a2, 0x18($sp)
/* 0942B8 800936B8 1440000F */  bnez  $v0, .L800936F8
/* 0942BC 800936BC 00000000 */   nop   
/* 0942C0 800936C0 8FB8001C */  lw    $t8, 0x1c($sp)
/* 0942C4 800936C4 24010001 */  li    $at, 1
/* 0942C8 800936C8 1701000B */  bne   $t8, $at, .L800936F8
/* 0942CC 800936CC 00000000 */   nop   
/* 0942D0 800936D0 90C20048 */  lbu   $v0, 0x48($a2)
/* 0942D4 800936D4 24010005 */  li    $at, 5
/* 0942D8 800936D8 10410005 */  beq   $v0, $at, .L800936F0
/* 0942DC 800936DC 24080001 */   li    $t0, 1
/* 0942E0 800936E0 94D9000C */  lhu   $t9, 0xc($a2)
/* 0942E4 800936E4 00484804 */  sllv  $t1, $t0, $v0
/* 0942E8 800936E8 03295024 */  and   $t2, $t9, $t1
/* 0942EC 800936EC 11400002 */  beqz  $t2, .L800936F8
.L800936F0:
/* 0942F0 800936F0 240B0001 */   li    $t3, 1
/* 0942F4 800936F4 AFAB0020 */  sw    $t3, 0x20($sp)
.L800936F8:
/* 0942F8 800936F8 3C028012 */  lui   $v0, %hi(D_801263BC) # $v0, 0x8012
/* 0942FC 800936FC 244263BC */  addiu $v0, %lo(D_801263BC) # addiu $v0, $v0, 0x63bc
/* 094300 80093700 8FA40038 */  lw    $a0, 0x38($sp)
/* 094304 80093704 8C4C0000 */  lw    $t4, ($v0)
/* 094308 80093708 8FA5001C */  lw    $a1, 0x1c($sp)
/* 09430C 8009370C 01846821 */  addu  $t5, $t4, $a0
/* 094310 80093710 31AE003F */  andi  $t6, $t5, 0x3f
/* 094314 80093714 8FA60020 */  lw    $a2, 0x20($sp)
/* 094318 80093718 0C024BA5 */  jal   func_80092E94
/* 09431C 8009371C AC4E0000 */   sw    $t6, ($v0)
/* 094320 80093720 8FAF001C */  lw    $t7, 0x1c($sp)
/* 094324 80093724 8FA40024 */  lw    $a0, 0x24($sp)
/* 094328 80093728 29E10002 */  slti  $at, $t7, 2
/* 09432C 8009372C 10200005 */  beqz  $at, .L80093744
/* 094330 80093730 00000000 */   nop   
/* 094334 80093734 0C01AC2B */  jal   func_8006B0AC
/* 094338 80093738 00000000 */   nop   
/* 09433C 8009373C 3C018012 */  lui   $at, %hi(gPlayerSelectVehicle) # $at, 0x8012
/* 094340 80093740 A02269C0 */  sb    $v0, %lo(gPlayerSelectVehicle)($at)
.L80093744:
/* 094344 80093744 3C038012 */  lui   $v1, %hi(gPlayerSelectVehicle) # $v1, 0x8012
/* 094348 80093748 806369C0 */  lb    $v1, %lo(gPlayerSelectVehicle)($v1)
/* 09434C 8009374C 8FA40024 */  lw    $a0, 0x24($sp)
/* 094350 80093750 0C01AC3E */  jal   func_8006B0F8
/* 094354 80093754 AFA30034 */   sw    $v1, 0x34($sp)
/* 094358 80093758 8FA30034 */  lw    $v1, 0x34($sp)
/* 09435C 8009375C AFA20030 */  sw    $v0, 0x30($sp)
/* 094360 80093760 0C02393B */  jal   func_8008E4EC
/* 094364 80093764 AFA3002C */   sw    $v1, 0x2c($sp)
/* 094368 80093768 3C06800E */  lui   $a2, %hi(gMenuDelay) # $a2, 0x800e
/* 09436C 8009376C 24C6F47C */  addiu $a2, %lo(gMenuDelay) # addiu $a2, $a2, -0xb84
/* 094370 80093770 8CC20000 */  lw    $v0, ($a2)
/* 094374 80093774 8FA30034 */  lw    $v1, 0x34($sp)
/* 094378 80093778 8FA40030 */  lw    $a0, 0x30($sp)
/* 09437C 8009377C 8FA5002C */  lw    $a1, 0x2c($sp)
/* 094380 80093780 1440007B */  bnez  $v0, .L80093970
/* 094384 80093784 3C078012 */   lui   $a3, %hi(D_801263E0) # $a3, 0x8012
/* 094388 80093788 24E763E0 */  addiu $a3, %lo(D_801263E0) # addiu $a3, $a3, 0x63e0
/* 09438C 8009378C 8CF80000 */  lw    $t8, ($a3)
/* 094390 80093790 8FA80020 */  lw    $t0, 0x20($sp)
/* 094394 80093794 17000007 */  bnez  $t8, .L800937B4
/* 094398 80093798 3C028012 */   lui   $v0, %hi(D_801267D8) # $v0, 0x8012
/* 09439C 8009379C 15000005 */  bnez  $t0, .L800937B4
/* 0943A0 800937A0 00000000 */   nop   
/* 0943A4 800937A4 8FB90028 */  lw    $t9, 0x28($sp)
/* 0943A8 800937A8 00000000 */  nop   
/* 0943AC 800937AC 1320002F */  beqz  $t9, .L8009386C
/* 0943B0 800937B0 00000000 */   nop   
.L800937B4:
/* 0943B4 800937B4 8C4267D8 */  lw    $v0, %lo(D_801267D8)($v0)
/* 0943B8 800937B8 8FAA0028 */  lw    $t2, 0x28($sp)
/* 0943BC 800937BC 30499000 */  andi  $t1, $v0, 0x9000
/* 0943C0 800937C0 11200011 */  beqz  $t1, .L80093808
/* 0943C4 800937C4 304C4000 */   andi  $t4, $v0, 0x4000
/* 0943C8 800937C8 11400006 */  beqz  $t2, .L800937E4
/* 0943CC 800937CC 240B0001 */   li    $t3, 1
/* 0943D0 800937D0 0C030C7B */  jal   func_800C31EC
/* 0943D4 800937D4 24042710 */   li    $a0, 10000
/* 0943D8 800937D8 3C06800E */  lui   $a2, %hi(gMenuDelay) # $a2, 0x800e
/* 0943DC 800937DC 24C6F47C */  addiu $a2, %lo(gMenuDelay) # addiu $a2, $a2, -0xb84
/* 0943E0 800937E0 240B0001 */  li    $t3, 1
.L800937E4:
/* 0943E4 800937E4 3C04800E */  lui   $a0, %hi(D_800DF774) # $a0, 0x800e
/* 0943E8 800937E8 ACCB0000 */  sw    $t3, ($a2)
/* 0943EC 800937EC 0C030076 */  jal   func_800C01D8
/* 0943F0 800937F0 2484F774 */   addiu $a0, %lo(D_800DF774) # addiu $a0, $a0, -0x88c
/* 0943F4 800937F4 240400EF */  li    $a0, 239
/* 0943F8 800937F8 0C000741 */  jal   func_80001D04
/* 0943FC 800937FC 00002825 */   move  $a1, $zero
/* 094400 80093800 1000007B */  b     .L800939F0
/* 094404 80093804 00000000 */   nop   
.L80093808:
/* 094408 80093808 11800079 */  beqz  $t4, .L800939F0
/* 09440C 8009380C 24040241 */   li    $a0, 577
/* 094410 80093810 0C000741 */  jal   func_80001D04
/* 094414 80093814 00002825 */   move  $a1, $zero
/* 094418 80093818 8FAD0020 */  lw    $t5, 0x20($sp)
/* 09441C 8009381C 8FAE0028 */  lw    $t6, 0x28($sp)
/* 094420 80093820 15A00004 */  bnez  $t5, .L80093834
/* 094424 80093824 8FAF0028 */   lw    $t7, 0x28($sp)
/* 094428 80093828 11C0000E */  beqz  $t6, .L80093864
/* 09442C 8009382C 3C018012 */   lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 094430 80093830 8FAF0028 */  lw    $t7, 0x28($sp)
.L80093834:
/* 094434 80093834 00000000 */  nop   
/* 094438 80093838 11E00003 */  beqz  $t7, .L80093848
/* 09443C 8009383C 00000000 */   nop   
/* 094440 80093840 0C030C7B */  jal   func_800C31EC
/* 094444 80093844 24042710 */   li    $a0, 10000
.L80093848:
/* 094448 80093848 3C04800E */  lui   $a0, %hi(D_800DF774) # $a0, 0x800e
/* 09444C 8009384C 0C030076 */  jal   func_800C01D8
/* 094450 80093850 2484F774 */   addiu $a0, %lo(D_800DF774) # addiu $a0, $a0, -0x88c
/* 094454 80093854 2418FFFF */  li    $t8, -1
/* 094458 80093858 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 09445C 8009385C 10000064 */  b     .L800939F0
/* 094460 80093860 AC38F47C */   sw    $t8, %lo(gMenuDelay)($at)
.L80093864:
/* 094464 80093864 10000062 */  b     .L800939F0
/* 094468 80093868 AC2063E0 */   sw    $zero, %lo(D_801263E0)($at)
.L8009386C:
/* 09446C 8009386C 3C028012 */  lui   $v0, %hi(D_801267D8) # $v0, 0x8012
/* 094470 80093870 8C4267D8 */  lw    $v0, %lo(D_801267D8)($v0)
/* 094474 80093874 00000000 */  nop   
/* 094478 80093878 30484000 */  andi  $t0, $v0, 0x4000
/* 09447C 8009387C 1100000B */  beqz  $t0, .L800938AC
/* 094480 80093880 30499000 */   andi  $t1, $v0, 0x9000
/* 094484 80093884 24040241 */  li    $a0, 577
/* 094488 80093888 0C000741 */  jal   func_80001D04
/* 09448C 8009388C 00002825 */   move  $a1, $zero
/* 094490 80093890 3C04800E */  lui   $a0, %hi(D_800DF774) # $a0, 0x800e
/* 094494 80093894 0C030076 */  jal   func_800C01D8
/* 094498 80093898 2484F774 */   addiu $a0, %lo(D_800DF774) # addiu $a0, $a0, -0x88c
/* 09449C 8009389C 2419FFFF */  li    $t9, -1
/* 0944A0 800938A0 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 0944A4 800938A4 10000052 */  b     .L800939F0
/* 0944A8 800938A8 AC39F47C */   sw    $t9, %lo(gMenuDelay)($at)
.L800938AC:
/* 0944AC 800938AC 11200007 */  beqz  $t1, .L800938CC
/* 0944B0 800938B0 240A0001 */   li    $t2, 1
/* 0944B4 800938B4 ACEA0000 */  sw    $t2, ($a3)
/* 0944B8 800938B8 24040131 */  li    $a0, 305
/* 0944BC 800938BC 0C000741 */  jal   func_80001D04
/* 0944C0 800938C0 00002825 */   move  $a1, $zero
/* 0944C4 800938C4 1000004A */  b     .L800939F0
/* 0944C8 800938C8 00000000 */   nop   
.L800938CC:
/* 0944CC 800938CC 8FAB001C */  lw    $t3, 0x1c($sp)
/* 0944D0 800938D0 3C028012 */  lui   $v0, %hi(D_80126830) # $v0, 0x8012
/* 0944D4 800938D4 29610002 */  slti  $at, $t3, 2
/* 0944D8 800938D8 14200045 */  bnez  $at, .L800939F0
/* 0944DC 800938DC 00000000 */   nop   
/* 0944E0 800938E0 84426830 */  lh    $v0, %lo(D_80126830)($v0)
/* 0944E4 800938E4 00000000 */  nop   
/* 0944E8 800938E8 18400009 */  blez  $v0, .L80093910
/* 0944EC 800938EC 00000000 */   nop   
.L800938F0:
/* 0944F0 800938F0 2463FFFF */  addiu $v1, $v1, -1
/* 0944F4 800938F4 240C0001 */  li    $t4, 1
/* 0944F8 800938F8 006C6804 */  sllv  $t5, $t4, $v1
/* 0944FC 800938FC 01A47024 */  and   $t6, $t5, $a0
/* 094500 80093900 15C00003 */  bnez  $t6, .L80093910
/* 094504 80093904 00000000 */   nop   
/* 094508 80093908 0461FFF9 */  bgez  $v1, .L800938F0
/* 09450C 8009390C 00000000 */   nop   
.L80093910:
/* 094510 80093910 04410009 */  bgez  $v0, .L80093938
/* 094514 80093914 00000000 */   nop   
.L80093918:
/* 094518 80093918 24630001 */  addiu $v1, $v1, 1
/* 09451C 8009391C 240F0001 */  li    $t7, 1
/* 094520 80093920 006FC004 */  sllv  $t8, $t7, $v1
/* 094524 80093924 03044024 */  and   $t0, $t8, $a0
/* 094528 80093928 15000003 */  bnez  $t0, .L80093938
/* 09452C 8009392C 28610003 */   slti  $at, $v1, 3
/* 094530 80093930 1420FFF9 */  bnez  $at, .L80093918
/* 094534 80093934 00000000 */   nop   
.L80093938:
/* 094538 80093938 04600003 */  bltz  $v1, .L80093948
/* 09453C 8009393C 28610003 */   slti  $at, $v1, 3
/* 094540 80093940 14200002 */  bnez  $at, .L8009394C
/* 094544 80093944 00000000 */   nop   
.L80093948:
/* 094548 80093948 00A01825 */  move  $v1, $a1
.L8009394C:
/* 09454C 8009394C 10650028 */  beq   $v1, $a1, .L800939F0
/* 094550 80093950 240400EB */   li    $a0, 235
/* 094554 80093954 00002825 */  move  $a1, $zero
/* 094558 80093958 0C000741 */  jal   func_80001D04
/* 09455C 8009395C AFA30034 */   sw    $v1, 0x34($sp)
/* 094560 80093960 8FA30034 */  lw    $v1, 0x34($sp)
/* 094564 80093964 3C018012 */  lui   $at, %hi(gPlayerSelectVehicle) # $at, 0x8012
/* 094568 80093968 10000021 */  b     .L800939F0
/* 09456C 8009396C A02369C0 */   sb    $v1, %lo(gPlayerSelectVehicle)($at)
.L80093970:
/* 094570 80093970 04410007 */  bgez  $v0, .L80093990
/* 094574 80093974 8FAA0038 */   lw    $t2, 0x38($sp)
/* 094578 80093978 8FB90038 */  lw    $t9, 0x38($sp)
/* 09457C 8009397C 00000000 */  nop   
/* 094580 80093980 00594823 */  subu  $t1, $v0, $t9
/* 094584 80093984 10000005 */  b     .L8009399C
/* 094588 80093988 ACC90000 */   sw    $t1, ($a2)
/* 09458C 8009398C 8FAA0038 */  lw    $t2, 0x38($sp)
.L80093990:
/* 094590 80093990 00000000 */  nop   
/* 094594 80093994 004A5821 */  addu  $t3, $v0, $t2
/* 094598 80093998 ACCB0000 */  sw    $t3, ($a2)
.L8009399C:
/* 09459C 8009399C 8CC20000 */  lw    $v0, ($a2)
/* 0945A0 800939A0 00000000 */  nop   
/* 0945A4 800939A4 2841001F */  slti  $at, $v0, 0x1f
/* 0945A8 800939A8 10200003 */  beqz  $at, .L800939B8
/* 0945AC 800939AC 2841FFE2 */   slti  $at, $v0, -0x1e
/* 0945B0 800939B0 1020000F */  beqz  $at, .L800939F0
/* 0945B4 800939B4 00000000 */   nop   
.L800939B8:
/* 0945B8 800939B8 0C024E83 */  jal   func_80093A0C
/* 0945BC 800939BC 00000000 */   nop   
/* 0945C0 800939C0 3C0C800E */  lui   $t4, %hi(gMenuDelay) # $t4, 0x800e
/* 0945C4 800939C4 8D8CF47C */  lw    $t4, %lo(gMenuDelay)($t4)
/* 0945C8 800939C8 3C02800E */  lui   $v0, %hi(gTrackIdForPreview) # $v0, 0x800e
/* 0945CC 800939CC 19800006 */  blez  $t4, .L800939E8
/* 0945D0 800939D0 00000000 */   nop   
/* 0945D4 800939D4 8C42F4C4 */  lw    $v0, %lo(gTrackIdForPreview)($v0)
/* 0945D8 800939D8 00000000 */  nop   
/* 0945DC 800939DC 344D0080 */  ori   $t5, $v0, 0x80
/* 0945E0 800939E0 10000006 */  b     .L800939FC
/* 0945E4 800939E4 01A01025 */   move  $v0, $t5
.L800939E8:
/* 0945E8 800939E8 10000004 */  b     .L800939FC
/* 0945EC 800939EC 24020103 */   li    $v0, 259
.L800939F0:
/* 0945F0 800939F0 3C018012 */  lui   $at, %hi(gIgnorePlayerInput) # $at, 0x8012
/* 0945F4 800939F4 AC2063C4 */  sw    $zero, %lo(gIgnorePlayerInput)($at)
/* 0945F8 800939F8 00001025 */  move  $v0, $zero
.L800939FC:
/* 0945FC 800939FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 094600 80093A00 27BD0038 */  addiu $sp, $sp, 0x38
/* 094604 80093A04 03E00008 */  jr    $ra
/* 094608 80093A08 00000000 */   nop   

