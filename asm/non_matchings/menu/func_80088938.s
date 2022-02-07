glabel func_80088938
/* 089538 80088938 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 08953C 8008893C AFBF0044 */  sw    $ra, 0x44($sp)
/* 089540 80088940 AFA40048 */  sw    $a0, 0x48($sp)
/* 089544 80088944 AFB70040 */  sw    $s7, 0x40($sp)
/* 089548 80088948 AFB6003C */  sw    $s6, 0x3c($sp)
/* 08954C 8008894C AFB50038 */  sw    $s5, 0x38($sp)
/* 089550 80088950 AFB40034 */  sw    $s4, 0x34($sp)
/* 089554 80088954 AFB30030 */  sw    $s3, 0x30($sp)
/* 089558 80088958 AFB2002C */  sw    $s2, 0x2c($sp)
/* 08955C 8008895C AFB10028 */  sw    $s1, 0x28($sp)
/* 089560 80088960 AFB00024 */  sw    $s0, 0x24($sp)
/* 089564 80088964 00002025 */  move  $a0, $zero
/* 089568 80088968 00002825 */  move  $a1, $zero
/* 08956C 8008896C 00003025 */  move  $a2, $zero
/* 089570 80088970 0C0310F3 */  jal   set_text_background_color
/* 089574 80088974 00003825 */   move  $a3, $zero
/* 089578 80088978 3C168012 */  lui   $s6, %hi(D_801263BC) # $s6, 0x8012
/* 08957C 8008897C 8ED663BC */  lw    $s6, %lo(D_801263BC)($s6)
/* 089580 80088980 3C188012 */  lui   $t8, %hi(D_80126BC8) # $t8, 0x8012
/* 089584 80088984 001670C0 */  sll   $t6, $s6, 3
/* 089588 80088988 29C10100 */  slti  $at, $t6, 0x100
/* 08958C 8008898C 14200003 */  bnez  $at, .L8008899C
/* 089590 80088990 01C0B025 */   move  $s6, $t6
/* 089594 80088994 240F01FF */  li    $t7, 511
/* 089598 80088998 01EEB023 */  subu  $s6, $t7, $t6
.L8008899C:
/* 08959C 8008899C 8F186BC8 */  lw    $t8, %lo(D_80126BC8)($t8)
/* 0895A0 800889A0 24040001 */  li    $a0, 1
/* 0895A4 800889A4 13000007 */  beqz  $t8, .L800889C4
/* 0895A8 800889A8 3C19800E */   lui   $t9, %hi(gShowControllerPakMenu) # $t9, 0x800e
/* 0895AC 800889AC 3C05800E */  lui   $a1, %hi(D_800DFCB4) # $a1, 0x800e
/* 0895B0 800889B0 24A5FCB4 */  addiu $a1, %lo(D_800DFCB4) # addiu $a1, $a1, -0x34c
/* 0895B4 800889B4 0C02087B */  jal   draw_menu_elements
/* 0895B8 800889B8 3C063F80 */   lui   $a2, 0x3f80
/* 0895BC 800889BC 100001B1 */  b     .L80089084
/* 0895C0 800889C0 8FBF0044 */   lw    $ra, 0x44($sp)
.L800889C4:
/* 0895C4 800889C4 8F39FD94 */  lw    $t9, %lo(gShowControllerPakMenu)($t9)
/* 0895C8 800889C8 00000000 */  nop   
/* 0895CC 800889CC 132001AD */  beqz  $t9, .L80089084
/* 0895D0 800889D0 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0895D4 800889D4 0C0310BB */  jal   set_text_font
/* 0895D8 800889D8 24040002 */   li    $a0, 2
/* 0895DC 800889DC 24080080 */  li    $t0, 128
/* 0895E0 800889E0 AFA80010 */  sw    $t0, 0x10($sp)
/* 0895E4 800889E4 00002025 */  move  $a0, $zero
/* 0895E8 800889E8 00002825 */  move  $a1, $zero
/* 0895EC 800889EC 00003025 */  move  $a2, $zero
/* 0895F0 800889F0 0C0310E1 */  jal   set_text_color
/* 0895F4 800889F4 240700FF */   li    $a3, 255
/* 0895F8 800889F8 3C17800E */  lui   $s7, %hi(gMenuText) # $s7, 0x800e
/* 0895FC 800889FC 26F7F4A0 */  addiu $s7, %lo(gMenuText) # addiu $s7, $s7, -0xb60
/* 089600 80088A00 8EE90000 */  lw    $t1, ($s7)
/* 089604 80088A04 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 089608 80088A08 240A000C */  li    $t2, 12
/* 08960C 80088A0C 8D27008C */  lw    $a3, 0x8c($t1)
/* 089610 80088A10 AFAA0010 */  sw    $t2, 0x10($sp)
/* 089614 80088A14 248463A0 */  addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 089618 80088A18 240500A1 */  li    $a1, 161
/* 08961C 80088A1C 0C031110 */  jal   draw_text
/* 089620 80088A20 24060021 */   li    $a2, 33
/* 089624 80088A24 240B00FF */  li    $t3, 255
/* 089628 80088A28 AFAB0010 */  sw    $t3, 0x10($sp)
/* 08962C 80088A2C 240400FF */  li    $a0, 255
/* 089630 80088A30 240500FF */  li    $a1, 255
/* 089634 80088A34 240600FF */  li    $a2, 255
/* 089638 80088A38 0C0310E1 */  jal   set_text_color
/* 08963C 80088A3C 00003825 */   move  $a3, $zero
/* 089640 80088A40 8EEC0000 */  lw    $t4, ($s7)
/* 089644 80088A44 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 089648 80088A48 240D000C */  li    $t5, 12
/* 08964C 80088A4C 8D87008C */  lw    $a3, 0x8c($t4)
/* 089650 80088A50 AFAD0010 */  sw    $t5, 0x10($sp)
/* 089654 80088A54 248463A0 */  addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 089658 80088A58 240500A0 */  li    $a1, 160
/* 08965C 80088A5C 0C031110 */  jal   draw_text
/* 089660 80088A60 2406001E */   li    $a2, 30
/* 089664 80088A64 24150030 */  li    $s5, 48
/* 089668 80088A68 0C031525 */  jal   assign_dialogue_box_id
/* 08966C 80088A6C 24040006 */   li    $a0, 6
/* 089670 80088A70 26AE001E */  addiu $t6, $s5, 0x1e
/* 089674 80088A74 AFAE0010 */  sw    $t6, 0x10($sp)
/* 089678 80088A78 24040006 */  li    $a0, 6
/* 08967C 80088A7C 2405003A */  li    $a1, 58
/* 089680 80088A80 02A03025 */  move  $a2, $s5
/* 089684 80088A84 0C0313B7 */  jal   set_current_dialogue_box_coords
/* 089688 80088A88 24070106 */   li    $a3, 262
/* 08968C 80088A8C 3C0F800E */  lui   $t7, %hi(D_800DF460) # $t7, 0x800e
/* 089690 80088A90 8DEFF460 */  lw    $t7, %lo(D_800DF460)($t7)
/* 089694 80088A94 2401FFFF */  li    $at, -1
/* 089698 80088A98 15E1000A */  bne   $t7, $at, .L80088AC4
/* 08969C 80088A9C 0016C043 */   sra   $t8, $s6, 1
/* 0896A0 80088AA0 27190080 */  addiu $t9, $t8, 0x80
/* 0896A4 80088AA4 AFB90010 */  sw    $t9, 0x10($sp)
/* 0896A8 80088AA8 24040006 */  li    $a0, 6
/* 0896AC 80088AAC 240500FF */  li    $a1, 255
/* 0896B0 80088AB0 240600FF */  li    $a2, 255
/* 0896B4 80088AB4 0C0313EF */  jal   set_current_dialogue_background_colour
/* 0896B8 80088AB8 240700FF */   li    $a3, 255
/* 0896BC 80088ABC 10000009 */  b     .L80088AE4
/* 0896C0 80088AC0 24040006 */   li    $a0, 6
.L80088AC4:
/* 0896C4 80088AC4 240800E0 */  li    $t0, 224
/* 0896C8 80088AC8 AFA80010 */  sw    $t0, 0x10($sp)
/* 0896CC 80088ACC 24040006 */  li    $a0, 6
/* 0896D0 80088AD0 24050060 */  li    $a1, 96
/* 0896D4 80088AD4 240600C0 */  li    $a2, 192
/* 0896D8 80088AD8 0C0313EF */  jal   set_current_dialogue_background_colour
/* 0896DC 80088ADC 2407005C */   li    $a3, 92
/* 0896E0 80088AE0 24040006 */  li    $a0, 6
.L80088AE4:
/* 0896E4 80088AE4 0C0313DF */  jal   set_dialogue_font
/* 0896E8 80088AE8 00002825 */   move  $a1, $zero
/* 0896EC 80088AEC 240900FF */  li    $t1, 255
/* 0896F0 80088AF0 AFA90014 */  sw    $t1, 0x14($sp)
/* 0896F4 80088AF4 24040006 */  li    $a0, 6
/* 0896F8 80088AF8 240500FF */  li    $a1, 255
/* 0896FC 80088AFC 240600FF */  li    $a2, 255
/* 089700 80088B00 240700FF */  li    $a3, 255
/* 089704 80088B04 0C031400 */  jal   set_current_text_colour
/* 089708 80088B08 AFA00010 */   sw    $zero, 0x10($sp)
/* 08970C 80088B0C 24040006 */  li    $a0, 6
/* 089710 80088B10 00002825 */  move  $a1, $zero
/* 089714 80088B14 00003025 */  move  $a2, $zero
/* 089718 80088B18 00003825 */  move  $a3, $zero
/* 08971C 80088B1C 0C031414 */  jal   set_current_text_background_colour
/* 089720 80088B20 AFA00010 */   sw    $zero, 0x10($sp)
/* 089724 80088B24 3C0B8012 */  lui   $t3, %hi(D_80126A68) # $t3, 0x8012
/* 089728 80088B28 8D6B6A68 */  lw    $t3, %lo(D_80126A68)($t3)
/* 08972C 80088B2C 8EEA0000 */  lw    $t2, ($s7)
/* 089730 80088B30 000B6080 */  sll   $t4, $t3, 2
/* 089734 80088B34 014C6821 */  addu  $t5, $t2, $t4
/* 089738 80088B38 8DA70158 */  lw    $a3, 0x158($t5)
/* 08973C 80088B3C 240E0001 */  li    $t6, 1
/* 089740 80088B40 240F0004 */  li    $t7, 4
/* 089744 80088B44 AFAF0014 */  sw    $t7, 0x14($sp)
/* 089748 80088B48 AFAE0010 */  sw    $t6, 0x10($sp)
/* 08974C 80088B4C 24040006 */  li    $a0, 6
/* 089750 80088B50 24058000 */  li    $a1, -32768
/* 089754 80088B54 0C03145A */  jal   render_dialogue_text
/* 089758 80088B58 24060002 */   li    $a2, 2
/* 08975C 80088B5C 8EF80000 */  lw    $t8, ($s7)
/* 089760 80088B60 3C198012 */  lui   $t9, %hi(sCurrentControllerPakFreeSpace) # $t9, 0x8012
/* 089764 80088B64 8F396BB0 */  lw    $t9, %lo(sCurrentControllerPakFreeSpace)($t9)
/* 089768 80088B68 8F0701C8 */  lw    $a3, 0x1c8($t8)
/* 08976C 80088B6C 24080004 */  li    $t0, 4
/* 089770 80088B70 AFA80014 */  sw    $t0, 0x14($sp)
/* 089774 80088B74 24040006 */  li    $a0, 6
/* 089778 80088B78 24058000 */  li    $a1, -32768
/* 08977C 80088B7C 24060010 */  li    $a2, 16
/* 089780 80088B80 0C03145A */  jal   render_dialogue_text
/* 089784 80088B84 AFB90010 */   sw    $t9, 0x10($sp)
/* 089788 80088B88 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 08978C 80088B8C 248463A0 */  addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 089790 80088B90 00002825 */  move  $a1, $zero
/* 089794 80088B94 00003025 */  move  $a2, $zero
/* 089798 80088B98 0C0316D6 */  jal   render_dialogue_box
/* 08979C 80088B9C 24070006 */   li    $a3, 6
/* 0897A0 80088BA0 26B50022 */  addiu $s5, $s5, 0x22
/* 0897A4 80088BA4 24040006 */  li    $a0, 6
/* 0897A8 80088BA8 0C0313DF */  jal   set_dialogue_font
/* 0897AC 80088BAC 24050001 */   li    $a1, 1
/* 0897B0 80088BB0 24040006 */  li    $a0, 6
/* 0897B4 80088BB4 00002825 */  move  $a1, $zero
/* 0897B8 80088BB8 00003025 */  move  $a2, $zero
/* 0897BC 80088BBC 00003825 */  move  $a3, $zero
/* 0897C0 80088BC0 0C031414 */  jal   set_current_text_background_colour
/* 0897C4 80088BC4 AFA00010 */   sw    $zero, 0x10($sp)
/* 0897C8 80088BC8 3C028012 */  lui   $v0, %hi(D_80126BB4) # $v0, 0x8012
/* 0897CC 80088BCC 8C426BB4 */  lw    $v0, %lo(D_80126BB4)($v0)
/* 0897D0 80088BD0 2411FFFF */  li    $s1, -1
/* 0897D4 80088BD4 04400077 */  bltz  $v0, .L80088DB4
/* 0897D8 80088BD8 00000000 */   nop   
.L80088BDC:
/* 0897DC 80088BDC 0C031525 */  jal   assign_dialogue_box_id
/* 0897E0 80088BE0 24040006 */   li    $a0, 6
/* 0897E4 80088BE4 26A9000E */  addiu $t1, $s5, 0xe
/* 0897E8 80088BE8 AFA90010 */  sw    $t1, 0x10($sp)
/* 0897EC 80088BEC 24040006 */  li    $a0, 6
/* 0897F0 80088BF0 2405001C */  li    $a1, 28
/* 0897F4 80088BF4 02A03025 */  move  $a2, $s5
/* 0897F8 80088BF8 0C0313B7 */  jal   set_current_dialogue_box_coords
/* 0897FC 80088BFC 24070124 */   li    $a3, 292
/* 089800 80088C00 0621001A */  bgez  $s1, .L80088C6C
/* 089804 80088C04 3C0E800F */   lui   $t6, %hi(D_800E820C) # $t6, 0x800f
/* 089808 80088C08 240B00E0 */  li    $t3, 224
/* 08980C 80088C0C AFAB0010 */  sw    $t3, 0x10($sp)
/* 089810 80088C10 24040006 */  li    $a0, 6
/* 089814 80088C14 240500E0 */  li    $a1, 224
/* 089818 80088C18 24060030 */  li    $a2, 48
/* 08981C 80088C1C 24070030 */  li    $a3, 48
/* 089820 80088C20 0C0313EF */  jal   set_current_dialogue_background_colour
/* 089824 80088C24 24130001 */   li    $s3, 1
/* 089828 80088C28 240A00FF */  li    $t2, 255
/* 08982C 80088C2C 240C00FF */  li    $t4, 255
/* 089830 80088C30 AFAC0014 */  sw    $t4, 0x14($sp)
/* 089834 80088C34 AFAA0010 */  sw    $t2, 0x10($sp)
/* 089838 80088C38 24040006 */  li    $a0, 6
/* 08983C 80088C3C 240500E0 */  li    $a1, 224
/* 089840 80088C40 240600E0 */  li    $a2, 224
/* 089844 80088C44 0C031400 */  jal   set_current_text_colour
/* 089848 80088C48 24070030 */   li    $a3, 48
/* 08984C 80088C4C 8EE20000 */  lw    $v0, ($s7)
/* 089850 80088C50 3C0D8012 */  lui   $t5, %hi(D_801263D8) # $t5, 0x8012
/* 089854 80088C54 8DAD63D8 */  lw    $t5, %lo(D_801263D8)($t5)
/* 089858 80088C58 8C5201CC */  lw    $s2, 0x1cc($v0)
/* 08985C 80088C5C 8C5001D0 */  lw    $s0, 0x1d0($v0)
/* 089860 80088C60 8C5401D4 */  lw    $s4, 0x1d4($v0)
/* 089864 80088C64 1000002E */  b     .L80088D20
/* 089868 80088C68 022D1821 */   addu  $v1, $s1, $t5
.L80088C6C:
/* 08986C 80088C6C 3C188012 */  lui   $t8, %hi(D_801263D8) # $t8, 0x8012
/* 089870 80088C70 8F1863D8 */  lw    $t8, %lo(D_801263D8)($t8)
/* 089874 80088C74 3C0F800E */  lui   $t7, %hi(D_800DF460) # $t7, 0x800e
/* 089878 80088C78 8DEFF460 */  lw    $t7, %lo(D_800DF460)($t7)
/* 08987C 80088C7C 25D4820C */  addiu $s4, $t6, %lo(D_800E820C)
/* 089880 80088C80 0238C821 */  addu  $t9, $s1, $t8
/* 089884 80088C84 15F9000B */  bne   $t7, $t9, .L80088CB4
/* 089888 80088C88 02809025 */   move  $s2, $s4
/* 08988C 80088C8C 00164043 */  sra   $t0, $s6, 1
/* 089890 80088C90 25090080 */  addiu $t1, $t0, 0x80
/* 089894 80088C94 AFA90010 */  sw    $t1, 0x10($sp)
/* 089898 80088C98 24040006 */  li    $a0, 6
/* 08989C 80088C9C 240500FF */  li    $a1, 255
/* 0898A0 80088CA0 240600FF */  li    $a2, 255
/* 0898A4 80088CA4 0C0313EF */  jal   set_current_dialogue_background_colour
/* 0898A8 80088CA8 240700FF */   li    $a3, 255
/* 0898AC 80088CAC 10000009 */  b     .L80088CD4
/* 0898B0 80088CB0 240A00FF */   li    $t2, 255
.L80088CB4:
/* 0898B4 80088CB4 240B00E0 */  li    $t3, 224
/* 0898B8 80088CB8 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0898BC 80088CBC 24040006 */  li    $a0, 6
/* 0898C0 80088CC0 240500E0 */  li    $a1, 224
/* 0898C4 80088CC4 240600E0 */  li    $a2, 224
/* 0898C8 80088CC8 0C0313EF */  jal   set_current_dialogue_background_colour
/* 0898CC 80088CCC 24070030 */   li    $a3, 48
/* 0898D0 80088CD0 240A00FF */  li    $t2, 255
.L80088CD4:
/* 0898D4 80088CD4 240C00FF */  li    $t4, 255
/* 0898D8 80088CD8 AFAC0014 */  sw    $t4, 0x14($sp)
/* 0898DC 80088CDC AFAA0010 */  sw    $t2, 0x10($sp)
/* 0898E0 80088CE0 24040006 */  li    $a0, 6
/* 0898E4 80088CE4 24050010 */  li    $a1, 16
/* 0898E8 80088CE8 24060010 */  li    $a2, 16
/* 0898EC 80088CEC 0C031400 */  jal   set_current_text_colour
/* 0898F0 80088CF0 240700A0 */   li    $a3, 160
/* 0898F4 80088CF4 3C0D8012 */  lui   $t5, %hi(D_801263D8) # $t5, 0x8012
/* 0898F8 80088CF8 8DAD63D8 */  lw    $t5, %lo(D_801263D8)($t5)
/* 0898FC 80088CFC 3C108012 */  lui   $s0, %hi(D_80126AA0) # $s0, 0x8012
/* 089900 80088D00 01B11821 */  addu  $v1, $t5, $s1
/* 089904 80088D04 00031080 */  sll   $v0, $v1, 2
/* 089908 80088D08 3C138012 */  lui   $s3, %hi(sCurrentControllerPakAllFileSizes) # $s3, 0x8012
/* 08990C 80088D0C 02028021 */  addu  $s0, $s0, $v0
/* 089910 80088D10 02629821 */  addu  $s3, $s3, $v0
/* 089914 80088D14 8E106AA0 */  lw    $s0, %lo(D_80126AA0)($s0)
/* 089918 80088D18 8E736B70 */  lw    $s3, %lo(sCurrentControllerPakAllFileSizes)($s3)
/* 08991C 80088D1C 00000000 */  nop   
.L80088D20:
/* 089920 80088D20 246E0001 */  addiu $t6, $v1, 1
/* 089924 80088D24 24180004 */  li    $t8, 4
/* 089928 80088D28 AFB80014 */  sw    $t8, 0x14($sp)
/* 08992C 80088D2C AFAE0010 */  sw    $t6, 0x10($sp)
/* 089930 80088D30 24040006 */  li    $a0, 6
/* 089934 80088D34 2405001A */  li    $a1, 26
/* 089938 80088D38 24060002 */  li    $a2, 2
/* 08993C 80088D3C 0C03145A */  jal   render_dialogue_text
/* 089940 80088D40 02403825 */   move  $a3, $s2
/* 089944 80088D44 240F0001 */  li    $t7, 1
/* 089948 80088D48 AFAF0010 */  sw    $t7, 0x10($sp)
/* 08994C 80088D4C 24040006 */  li    $a0, 6
/* 089950 80088D50 24050038 */  li    $a1, 56
/* 089954 80088D54 24060002 */  li    $a2, 2
/* 089958 80088D58 02003825 */  move  $a3, $s0
/* 08995C 80088D5C 0C03145A */  jal   render_dialogue_text
/* 089960 80088D60 AFA00014 */   sw    $zero, 0x14($sp)
/* 089964 80088D64 24190004 */  li    $t9, 4
/* 089968 80088D68 AFB90014 */  sw    $t9, 0x14($sp)
/* 08996C 80088D6C 24040006 */  li    $a0, 6
/* 089970 80088D70 240500F0 */  li    $a1, 240
/* 089974 80088D74 24060002 */  li    $a2, 2
/* 089978 80088D78 02803825 */  move  $a3, $s4
/* 08997C 80088D7C 0C03145A */  jal   render_dialogue_text
/* 089980 80088D80 AFB30010 */   sw    $s3, 0x10($sp)
/* 089984 80088D84 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 089988 80088D88 248463A0 */  addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 08998C 80088D8C 00002825 */  move  $a1, $zero
/* 089990 80088D90 00003025 */  move  $a2, $zero
/* 089994 80088D94 0C0316D6 */  jal   render_dialogue_box
/* 089998 80088D98 24070006 */   li    $a3, 6
/* 08999C 80088D9C 3C028012 */  lui   $v0, %hi(D_80126BB4) # $v0, 0x8012
/* 0899A0 80088DA0 8C426BB4 */  lw    $v0, %lo(D_80126BB4)($v0)
/* 0899A4 80088DA4 26310001 */  addiu $s1, $s1, 1
/* 0899A8 80088DA8 0222082A */  slt   $at, $s1, $v0
/* 0899AC 80088DAC 1420FF8B */  bnez  $at, .L80088BDC
/* 0899B0 80088DB0 26B50010 */   addiu $s5, $s5, 0x10
.L80088DB4:
/* 0899B4 80088DB4 3C088012 */  lui   $t0, %hi(D_801263D8) # $t0, 0x8012
/* 0899B8 80088DB8 8D0863D8 */  lw    $t0, %lo(D_801263D8)($t0)
/* 0899BC 80088DBC 24100010 */  li    $s0, 16
/* 0899C0 80088DC0 02024823 */  subu  $t1, $s0, $v0
/* 0899C4 80088DC4 0109082A */  slt   $at, $t0, $t1
/* 0899C8 80088DC8 10200018 */  beqz  $at, .L80088E2C
/* 0899CC 80088DCC 3C0B8012 */   lui   $t3, %hi(D_801263BC) # $t3, 0x8012
/* 0899D0 80088DD0 8D6B63BC */  lw    $t3, %lo(D_801263BC)($t3)
/* 0899D4 80088DD4 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 0899D8 80088DD8 316A0008 */  andi  $t2, $t3, 8
/* 0899DC 80088DDC 11400031 */  beqz  $t2, .L80088EA4
/* 0899E0 80088DE0 248463A0 */   addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 0899E4 80088DE4 3C05800E */  lui   $a1, %hi(D_800E043C) # $a1, 0x800e
/* 0899E8 80088DE8 240C00FF */  li    $t4, 255
/* 0899EC 80088DEC 240D00FF */  li    $t5, 255
/* 0899F0 80088DF0 240E00FF */  li    $t6, 255
/* 0899F4 80088DF4 241800FF */  li    $t8, 255
/* 0899F8 80088DF8 AFB8001C */  sw    $t8, 0x1c($sp)
/* 0899FC 80088DFC AFAE0018 */  sw    $t6, 0x18($sp)
/* 089A00 80088E00 AFAD0014 */  sw    $t5, 0x14($sp)
/* 089A04 80088E04 AFAC0010 */  sw    $t4, 0x10($sp)
/* 089A08 80088E08 24A5043C */  addiu $a1, %lo(D_800E043C) # addiu $a1, $a1, 0x43c
/* 089A0C 80088E0C 240600A0 */  li    $a2, 160
/* 089A10 80088E10 0C01E2AE */  jal   render_textured_rectangle
/* 089A14 80088E14 26A70008 */   addiu $a3, $s5, 8
/* 089A18 80088E18 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 089A1C 80088E1C 0C01ECF4 */  jal   func_8007B3D0
/* 089A20 80088E20 248463A0 */   addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 089A24 80088E24 1000001F */  b     .L80088EA4
/* 089A28 80088E28 00000000 */   nop   
.L80088E2C:
/* 089A2C 80088E2C 0C0310BB */  jal   set_text_font
/* 089A30 80088E30 00002025 */   move  $a0, $zero
/* 089A34 80088E34 3C0F800E */  lui   $t7, %hi(D_800DF460) # $t7, 0x800e
/* 089A38 80088E38 8DEFF460 */  lw    $t7, %lo(D_800DF460)($t7)
/* 089A3C 80088E3C 240400FF */  li    $a0, 255
/* 089A40 80088E40 160F000A */  bne   $s0, $t7, .L80088E6C
/* 089A44 80088E44 240500FF */   li    $a1, 255
/* 089A48 80088E48 241900FF */  li    $t9, 255
/* 089A4C 80088E4C AFB90010 */  sw    $t9, 0x10($sp)
/* 089A50 80088E50 240400FF */  li    $a0, 255
/* 089A54 80088E54 240500FF */  li    $a1, 255
/* 089A58 80088E58 240600FF */  li    $a2, 255
/* 089A5C 80088E5C 0C0310E1 */  jal   set_text_color
/* 089A60 80088E60 02C03825 */   move  $a3, $s6
/* 089A64 80088E64 10000007 */  b     .L80088E84
/* 089A68 80088E68 8EE90000 */   lw    $t1, ($s7)
.L80088E6C:
/* 089A6C 80088E6C 240800FF */  li    $t0, 255
/* 089A70 80088E70 AFA80010 */  sw    $t0, 0x10($sp)
/* 089A74 80088E74 240600FF */  li    $a2, 255
/* 089A78 80088E78 0C0310E1 */  jal   set_text_color
/* 089A7C 80088E7C 00003825 */   move  $a3, $zero
/* 089A80 80088E80 8EE90000 */  lw    $t1, ($s7)
.L80088E84:
/* 089A84 80088E84 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 089A88 80088E88 240B0004 */  li    $t3, 4
/* 089A8C 80088E8C 8D2700CC */  lw    $a3, 0xcc($t1)
/* 089A90 80088E90 AFAB0010 */  sw    $t3, 0x10($sp)
/* 089A94 80088E94 248463A0 */  addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 089A98 80088E98 24058000 */  li    $a1, -32768
/* 089A9C 80088E9C 0C031110 */  jal   draw_text
/* 089AA0 80088EA0 02A03025 */   move  $a2, $s5
.L80088EA4:
/* 089AA4 80088EA4 3C138012 */  lui   $s3, %hi(D_801263E0) # $s3, 0x8012
/* 089AA8 80088EA8 267363E0 */  addiu $s3, %lo(D_801263E0) # addiu $s3, $s3, 0x63e0
/* 089AAC 80088EAC 8E6A0000 */  lw    $t2, ($s3)
/* 089AB0 80088EB0 3C0C8012 */  lui   $t4, %hi(D_80126C10) # $t4, 0x8012
/* 089AB4 80088EB4 1140005D */  beqz  $t2, .L8008902C
/* 089AB8 80088EB8 00000000 */   nop   
/* 089ABC 80088EBC 8D8C6C10 */  lw    $t4, %lo(D_80126C10)($t4)
/* 089AC0 80088EC0 3C0D8000 */  lui   $t5, %hi(osTvType) # $t5, 0x8000
/* 089AC4 80088EC4 15800059 */  bnez  $t4, .L8008902C
/* 089AC8 80088EC8 00000000 */   nop   
/* 089ACC 80088ECC 8DAD0300 */  lw    $t5, %lo(osTvType)($t5)
/* 089AD0 80088ED0 24150078 */  li    $s5, 120
/* 089AD4 80088ED4 15A00003 */  bnez  $t5, .L80088EE4
/* 089AD8 80088ED8 00000000 */   nop   
/* 089ADC 80088EDC 10000001 */  b     .L80088EE4
/* 089AE0 80088EE0 24150086 */   li    $s5, 134
.L80088EE4:
/* 089AE4 80088EE4 0C031525 */  jal   assign_dialogue_box_id
/* 089AE8 80088EE8 24040006 */   li    $a0, 6
/* 089AEC 80088EEC 24040006 */  li    $a0, 6
/* 089AF0 80088EF0 0C0313DF */  jal   set_dialogue_font
/* 089AF4 80088EF4 00002825 */   move  $a1, $zero
/* 089AF8 80088EF8 26AE001C */  addiu $t6, $s5, 0x1c
/* 089AFC 80088EFC AFAE0010 */  sw    $t6, 0x10($sp)
/* 089B00 80088F00 24040006 */  li    $a0, 6
/* 089B04 80088F04 2405004C */  li    $a1, 76
/* 089B08 80088F08 26A6FFE4 */  addiu $a2, $s5, -0x1c
/* 089B0C 80088F0C 0C0313B7 */  jal   set_current_dialogue_box_coords
/* 089B10 80088F10 240700F4 */   li    $a3, 244
/* 089B14 80088F14 241800A0 */  li    $t8, 160
/* 089B18 80088F18 AFB80010 */  sw    $t8, 0x10($sp)
/* 089B1C 80088F1C 24040006 */  li    $a0, 6
/* 089B20 80088F20 00002825 */  move  $a1, $zero
/* 089B24 80088F24 00003025 */  move  $a2, $zero
/* 089B28 80088F28 0C0313EF */  jal   set_current_dialogue_background_colour
/* 089B2C 80088F2C 00003825 */   move  $a3, $zero
/* 089B30 80088F30 24150004 */  li    $s5, 4
/* 089B34 80088F34 00008825 */  move  $s1, $zero
/* 089B38 80088F38 00008025 */  move  $s0, $zero
/* 089B3C 80088F3C 24120003 */  li    $s2, 3
.L80088F40:
/* 089B40 80088F40 1620000B */  bnez  $s1, .L80088F70
/* 089B44 80088F44 24040006 */   li    $a0, 6
/* 089B48 80088F48 240F0040 */  li    $t7, 64
/* 089B4C 80088F4C 241900FF */  li    $t9, 255
/* 089B50 80088F50 AFB90014 */  sw    $t9, 0x14($sp)
/* 089B54 80088F54 AFAF0010 */  sw    $t7, 0x10($sp)
/* 089B58 80088F58 240500FF */  li    $a1, 255
/* 089B5C 80088F5C 00003025 */  move  $a2, $zero
/* 089B60 80088F60 0C031400 */  jal   set_current_text_colour
/* 089B64 80088F64 240700FF */   li    $a3, 255
/* 089B68 80088F68 10000016 */  b     .L80088FC4
/* 089B6C 80088F6C 8EEA0000 */   lw    $t2, ($s7)
.L80088F70:
/* 089B70 80088F70 8E680000 */  lw    $t0, ($s3)
/* 089B74 80088F74 24040006 */  li    $a0, 6
/* 089B78 80088F78 1628000B */  bne   $s1, $t0, .L80088FA8
/* 089B7C 80088F7C 240500FF */   li    $a1, 255
/* 089B80 80088F80 240900FF */  li    $t1, 255
/* 089B84 80088F84 AFA90014 */  sw    $t1, 0x14($sp)
/* 089B88 80088F88 24040006 */  li    $a0, 6
/* 089B8C 80088F8C 240500FF */  li    $a1, 255
/* 089B90 80088F90 240600FF */  li    $a2, 255
/* 089B94 80088F94 240700FF */  li    $a3, 255
/* 089B98 80088F98 0C031400 */  jal   set_current_text_colour
/* 089B9C 80088F9C AFB60010 */   sw    $s6, 0x10($sp)
/* 089BA0 80088FA0 10000008 */  b     .L80088FC4
/* 089BA4 80088FA4 8EEA0000 */   lw    $t2, ($s7)
.L80088FA8:
/* 089BA8 80088FA8 240B00FF */  li    $t3, 255
/* 089BAC 80088FAC AFAB0014 */  sw    $t3, 0x14($sp)
/* 089BB0 80088FB0 240600FF */  li    $a2, 255
/* 089BB4 80088FB4 240700FF */  li    $a3, 255
/* 089BB8 80088FB8 0C031400 */  jal   set_current_text_colour
/* 089BBC 80088FBC AFA00010 */   sw    $zero, 0x10($sp)
/* 089BC0 80088FC0 8EEA0000 */  lw    $t2, ($s7)
.L80088FC4:
/* 089BC4 80088FC4 3C0D800E */  lui   $t5, %hi(D_800DF460) # $t5, 0x800e
/* 089BC8 80088FC8 8DADF460 */  lw    $t5, %lo(D_800DF460)($t5)
/* 089BCC 80088FCC 01506021 */  addu  $t4, $t2, $s0
/* 089BD0 80088FD0 8D8701BC */  lw    $a3, 0x1bc($t4)
/* 089BD4 80088FD4 24180004 */  li    $t8, 4
/* 089BD8 80088FD8 25AE0001 */  addiu $t6, $t5, 1
/* 089BDC 80088FDC AFAE0010 */  sw    $t6, 0x10($sp)
/* 089BE0 80088FE0 AFB80014 */  sw    $t8, 0x14($sp)
/* 089BE4 80088FE4 24040006 */  li    $a0, 6
/* 089BE8 80088FE8 24058000 */  li    $a1, -32768
/* 089BEC 80088FEC 0C03145A */  jal   render_dialogue_text
/* 089BF0 80088FF0 02A03025 */   move  $a2, $s5
/* 089BF4 80088FF4 12200003 */  beqz  $s1, .L80089004
/* 089BF8 80088FF8 00000000 */   nop   
/* 089BFC 80088FFC 10000002 */  b     .L80089008
/* 089C00 80089000 26B50010 */   addiu $s5, $s5, 0x10
.L80089004:
/* 089C04 80089004 26B50014 */  addiu $s5, $s5, 0x14
.L80089008:
/* 089C08 80089008 26310001 */  addiu $s1, $s1, 1
/* 089C0C 8008900C 1632FFCC */  bne   $s1, $s2, .L80088F40
/* 089C10 80089010 26100004 */   addiu $s0, $s0, 4
/* 089C14 80089014 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 089C18 80089018 248463A0 */  addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 089C1C 8008901C 00002825 */  move  $a1, $zero
/* 089C20 80089020 00003025 */  move  $a2, $zero
/* 089C24 80089024 0C0316D6 */  jal   render_dialogue_box
/* 089C28 80089028 24070006 */   li    $a3, 6
.L8008902C:
/* 089C2C 8008902C 3C0F8012 */  lui   $t7, %hi(D_80126C10) # $t7, 0x8012
/* 089C30 80089030 8DEF6C10 */  lw    $t7, %lo(D_80126C10)($t7)
/* 089C34 80089034 240400FF */  li    $a0, 255
/* 089C38 80089038 11E00011 */  beqz  $t7, .L80089080
/* 089C3C 8008903C 240500FF */   li    $a1, 255
/* 089C40 80089040 241900FF */  li    $t9, 255
/* 089C44 80089044 AFB90010 */  sw    $t9, 0x10($sp)
/* 089C48 80089048 240600FF */  li    $a2, 255
/* 089C4C 8008904C 0C0310E1 */  jal   set_text_color
/* 089C50 80089050 00003825 */   move  $a3, $zero
/* 089C54 80089054 0C0310BB */  jal   set_text_font
/* 089C58 80089058 24040002 */   li    $a0, 2
/* 089C5C 8008905C 8EE80000 */  lw    $t0, ($s7)
/* 089C60 80089060 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 089C64 80089064 2409000C */  li    $t1, 12
/* 089C68 80089068 8D0701F0 */  lw    $a3, 0x1f0($t0)
/* 089C6C 8008906C AFA90010 */  sw    $t1, 0x10($sp)
/* 089C70 80089070 248463A0 */  addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 089C74 80089074 240500A0 */  li    $a1, 160
/* 089C78 80089078 0C031110 */  jal   draw_text
/* 089C7C 8008907C 24060080 */   li    $a2, 128
.L80089080:
/* 089C80 80089080 8FBF0044 */  lw    $ra, 0x44($sp)
.L80089084:
/* 089C84 80089084 8FB00024 */  lw    $s0, 0x24($sp)
/* 089C88 80089088 8FB10028 */  lw    $s1, 0x28($sp)
/* 089C8C 8008908C 8FB2002C */  lw    $s2, 0x2c($sp)
/* 089C90 80089090 8FB30030 */  lw    $s3, 0x30($sp)
/* 089C94 80089094 8FB40034 */  lw    $s4, 0x34($sp)
/* 089C98 80089098 8FB50038 */  lw    $s5, 0x38($sp)
/* 089C9C 8008909C 8FB6003C */  lw    $s6, 0x3c($sp)
/* 089CA0 800890A0 8FB70040 */  lw    $s7, 0x40($sp)
/* 089CA4 800890A4 03E00008 */  jr    $ra
/* 089CA8 800890A8 27BD0048 */   addiu $sp, $sp, 0x48

