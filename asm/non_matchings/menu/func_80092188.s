.late_rodata
glabel jpt_800E84F4
.word L8009246C, L8009251C, L80092740, L8009287C, L8009287C

.text
glabel func_80092188
/* 092D88 80092188 3C0E800E */  lui   $t6, %hi(gMenuDelay) # $t6, 0x800e
/* 092D8C 8009218C 8DCEF47C */  lw    $t6, %lo(gMenuDelay)($t6)
/* 092D90 80092190 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 092D94 80092194 AFBF001C */  sw    $ra, 0x1c($sp)
/* 092D98 80092198 AFA40058 */  sw    $a0, 0x58($sp)
/* 092D9C 8009219C 0C01BAA4 */  jal   get_settings
/* 092DA0 800921A0 AFAE0030 */   sw    $t6, 0x30($sp)
/* 092DA4 800921A4 3C06800E */  lui   $a2, %hi(gTrackNameVoiceDelay) # $a2, 0x800e
/* 092DA8 800921A8 24C60980 */  addiu $a2, %lo(gTrackNameVoiceDelay) # addiu $a2, $a2, 0x980
/* 092DAC 800921AC 8CC30000 */  lw    $v1, ($a2)
/* 092DB0 800921B0 AFA2002C */  sw    $v0, 0x2c($sp)
/* 092DB4 800921B4 10600005 */  beqz  $v1, .L800921CC
/* 092DB8 800921B8 3C028012 */   lui   $v0, %hi(gTrackSelectCursorX) # $v0, 0x8012
/* 092DBC 800921BC 8FAF0058 */  lw    $t7, 0x58($sp)
/* 092DC0 800921C0 00000000 */  nop   
/* 092DC4 800921C4 006FC021 */  addu  $t8, $v1, $t7
/* 092DC8 800921C8 ACD80000 */  sw    $t8, ($a2)
.L800921CC:
/* 092DCC 800921CC 8C4269C8 */  lw    $v0, %lo(gTrackSelectCursorX)($v0)
/* 092DD0 800921D0 24010005 */  li    $at, 5
/* 092DD4 800921D4 14410011 */  bne   $v0, $at, .L8009221C
/* 092DD8 800921D8 3C0C8012 */   lui   $t4, %hi(gMenuStage) # $t4, 0x8012
/* 092DDC 800921DC 258C63E0 */  addiu $t4, %lo(gMenuStage) # addiu $t4, $t4, 0x63e0
/* 092DE0 800921E0 8D990000 */  lw    $t9, ($t4)
/* 092DE4 800921E4 24010002 */  li    $at, 2
/* 092DE8 800921E8 1321000C */  beq   $t9, $at, .L8009221C
/* 092DEC 800921EC 240E0002 */   li    $t6, 2
/* 092DF0 800921F0 24010005 */  li    $at, 5
/* 092DF4 800921F4 14410009 */  bne   $v0, $at, .L8009221C
/* 092DF8 800921F8 AD8E0000 */   sw    $t6, ($t4)
/* 092DFC 800921FC 3C048012 */  lui   $a0, %hi(gTrackSelectCursorY) # $a0, 0x8012
/* 092E00 80092200 8C8469CC */  lw    $a0, %lo(gTrackSelectCursorY)($a0)
/* 092E04 80092204 0C030C7B */  jal   set_current_text
/* 092E08 80092208 2484003C */   addiu $a0, $a0, 0x3c
/* 092E0C 8009220C 3C028012 */  lui   $v0, %hi(gTrackSelectCursorX) # $v0, 0x8012
/* 092E10 80092210 3C06800E */  lui   $a2, %hi(gTrackNameVoiceDelay) # $a2, 0x800e
/* 092E14 80092214 8C4269C8 */  lw    $v0, %lo(gTrackSelectCursorX)($v0)
/* 092E18 80092218 24C60980 */  addiu $a2, %lo(gTrackNameVoiceDelay) # addiu $a2, $a2, 0x980
.L8009221C:
/* 092E1C 8009221C 3C0C8012 */  lui   $t4, %hi(gMenuStage) # $t4, 0x8012
/* 092E20 80092220 24010004 */  li    $at, 4
/* 092E24 80092224 14410008 */  bne   $v0, $at, .L80092248
/* 092E28 80092228 258C63E0 */   addiu $t4, %lo(gMenuStage) # addiu $t4, $t4, 0x63e0
/* 092E2C 8009222C 8D830000 */  lw    $v1, ($t4)
/* 092E30 80092230 240DFFFF */  li    $t5, -1
/* 092E34 80092234 11A30004 */  beq   $t5, $v1, .L80092248
/* 092E38 80092238 24010002 */   li    $at, 2
/* 092E3C 8009223C 10610002 */  beq   $v1, $at, .L80092248
/* 092E40 80092240 240F0002 */   li    $t7, 2
/* 092E44 80092244 AD8F0000 */  sw    $t7, ($t4)
.L80092248:
/* 092E48 80092248 3C18800E */  lui   $t8, %hi(gTrackIdForPreview) # $t8, 0x800e
/* 092E4C 8009224C 8F18F4C4 */  lw    $t8, %lo(gTrackIdForPreview)($t8)
/* 092E50 80092250 3C02800E */  lui   $v0, %hi(gTTVoiceLines) # $v0, 0x800e
/* 092E54 80092254 0018C840 */  sll   $t9, $t8, 1
/* 092E58 80092258 00591021 */  addu  $v0, $v0, $t9
/* 092E5C 8009225C 84420758 */  lh    $v0, %lo(gTTVoiceLines)($v0)
/* 092E60 80092260 240DFFFF */  li    $t5, -1
/* 092E64 80092264 11A2000B */  beq   $t5, $v0, .L80092294
/* 092E68 80092268 00000000 */   nop   
/* 092E6C 8009226C 8CCE0000 */  lw    $t6, ($a2)
/* 092E70 80092270 3044FFFF */  andi  $a0, $v0, 0xffff
/* 092E74 80092274 29C10007 */  slti  $at, $t6, 7
/* 092E78 80092278 14200006 */  bnez  $at, .L80092294
/* 092E7C 8009227C 00000000 */   nop   
/* 092E80 80092280 0C000741 */  jal   sound_play
/* 092E84 80092284 00002825 */   move  $a1, $zero
/* 092E88 80092288 3C06800E */  lui   $a2, %hi(gTrackNameVoiceDelay) # $a2, 0x800e
/* 092E8C 8009228C 24C60980 */  addiu $a2, %lo(gTrackNameVoiceDelay) # addiu $a2, $a2, 0x980
/* 092E90 80092290 ACC00000 */  sw    $zero, ($a2)
.L80092294:
/* 092E94 80092294 3C02800E */  lui   $v0, %hi(gMenuDelay) # $v0, 0x800e
/* 092E98 80092298 8C42F47C */  lw    $v0, %lo(gMenuDelay)($v0)
/* 092E9C 8009229C 00000000 */  nop   
/* 092EA0 800922A0 04410037 */  bgez  $v0, .L80092380
/* 092EA4 800922A4 24490019 */   addiu $t1, $v0, 0x19
/* 092EA8 800922A8 29210015 */  slti  $at, $t1, 0x15
/* 092EAC 800922AC 14200002 */  bnez  $at, .L800922B8
/* 092EB0 800922B0 3C028012 */   lui   $v0, %hi(gTrackSelectViewPortHalfY) # $v0, 0x8012
/* 092EB4 800922B4 24090014 */  li    $t1, 20
.L800922B8:
/* 092EB8 800922B8 05210002 */  bgez  $t1, .L800922C4
/* 092EBC 800922BC 00000000 */   nop   
/* 092EC0 800922C0 00004825 */  move  $t1, $zero
.L800922C4:
/* 092EC4 800922C4 8C426478 */  lw    $v0, %lo(gTrackSelectViewPortHalfY)($v0)
/* 092EC8 800922C8 252F0014 */  addiu $t7, $t1, 0x14
/* 092ECC 800922CC 01E20019 */  multu $t7, $v0
/* 092ED0 800922D0 24010028 */  li    $at, 40
/* 092ED4 800922D4 00094080 */  sll   $t0, $t1, 2
/* 092ED8 800922D8 24190050 */  li    $t9, 80
/* 092EDC 800922DC 03282823 */  subu  $a1, $t9, $t0
/* 092EE0 800922E0 250700F0 */  addiu $a3, $t0, 0xf0
/* 092EE4 800922E4 00002025 */  move  $a0, $zero
/* 092EE8 800922E8 AFA90048 */  sw    $t1, 0x48($sp)
/* 092EEC 800922EC 00001812 */  mflo  $v1
/* 092EF0 800922F0 00000000 */  nop   
/* 092EF4 800922F4 00000000 */  nop   
/* 092EF8 800922F8 0061001A */  div   $zero, $v1, $at
/* 092EFC 800922FC 0000C012 */  mflo  $t8
/* 092F00 80092300 03025021 */  addu  $t2, $t8, $v0
/* 092F04 80092304 AFAA0010 */  sw    $t2, 0x10($sp)
/* 092F08 80092308 0C019A50 */  jal   viewport_menu_set
/* 092F0C 8009230C 00583023 */   subu  $a2, $v0, $t8
/* 092F10 80092310 8FA90048 */  lw    $t1, 0x48($sp)
/* 092F14 80092314 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 092F18 80092318 44892000 */  mtc1  $t1, $f4
/* 092F1C 8009231C 44814000 */  mtc1  $at, $f8
/* 092F20 80092320 468021A0 */  cvt.s.w $f6, $f4
/* 092F24 80092324 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 092F28 80092328 44818000 */  mtc1  $at, $f16
/* 092F2C 8009232C 46083283 */  div.s $f10, $f6, $f8
/* 092F30 80092330 3C04800E */  lui   $a0, %hi(sMenuImageProperties) # $a0, 0x800e
/* 092F34 80092334 2484F510 */  addiu $a0, %lo(sMenuImageProperties) # addiu $a0, $a0, -0xaf0
/* 092F38 80092338 C4920088 */  lwc1  $f18, 0x88($a0)
/* 092F3C 8009233C 3C03800E */  lui   $v1, %hi(gMenuImages) # $v1, 0x800e
/* 092F40 80092340 2463F75C */  addiu $v1, %lo(gMenuImages) # addiu $v1, $v1, -0x8a4
/* 092F44 80092344 8C6E0000 */  lw    $t6, ($v1)
/* 092F48 80092348 3C02800E */  lui   $v0, %hi(gMenuDelay) # $v0, 0x800e
/* 092F4C 8009234C 460A8000 */  add.s $f0, $f16, $f10
/* 092F50 80092350 46009102 */  mul.s $f4, $f18, $f0
/* 092F54 80092354 E5C40088 */  swc1  $f4, 0x88($t6)
/* 092F58 80092358 C48600A8 */  lwc1  $f6, 0xa8($a0)
/* 092F5C 8009235C 8C6F0000 */  lw    $t7, ($v1)
/* 092F60 80092360 46003202 */  mul.s $f8, $f6, $f0
/* 092F64 80092364 E5E800A8 */  swc1  $f8, 0xa8($t7)
/* 092F68 80092368 C49000C8 */  lwc1  $f16, 0xc8($a0)
/* 092F6C 8009236C 8C780000 */  lw    $t8, ($v1)
/* 092F70 80092370 46008282 */  mul.s $f10, $f16, $f0
/* 092F74 80092374 E70A00C8 */  swc1  $f10, 0xc8($t8)
/* 092F78 80092378 8C42F47C */  lw    $v0, %lo(gMenuDelay)($v0)
/* 092F7C 8009237C 00000000 */  nop   
.L80092380:
/* 092F80 80092380 18400008 */  blez  $v0, .L800923A4
/* 092F84 80092384 28410029 */   slti  $at, $v0, 0x29
/* 092F88 80092388 3C03800E */  lui   $v1, %hi(sMenuMusicVolume) # $v1, 0x800e
/* 092F8C 8009238C 8FAE0058 */  lw    $t6, 0x58($sp)
/* 092F90 80092390 2463F760 */  addiu $v1, %lo(sMenuMusicVolume) # addiu $v1, $v1, -0x8a0
/* 092F94 80092394 8C790000 */  lw    $t9, ($v1)
/* 092F98 80092398 000E7880 */  sll   $t7, $t6, 2
/* 092F9C 8009239C 032FC023 */  subu  $t8, $t9, $t7
/* 092FA0 800923A0 AC780000 */  sw    $t8, ($v1)
.L800923A4:
/* 092FA4 800923A4 14200006 */  bnez  $at, .L800923C0
/* 092FA8 800923A8 2841FFE2 */   slti  $at, $v0, -0x1e
/* 092FAC 800923AC 0C023C03 */  jal   trackmenu_assets
/* 092FB0 800923B0 24040002 */   li    $a0, 2
/* 092FB4 800923B4 10000012 */  b     .L80092400
/* 092FB8 800923B8 00002025 */   move  $a0, $zero
/* 092FBC 800923BC 2841FFE2 */  slti  $at, $v0, -0x1e
.L800923C0:
/* 092FC0 800923C0 1020000E */  beqz  $at, .L800923FC
/* 092FC4 800923C4 00002025 */   move  $a0, $zero
/* 092FC8 800923C8 3C018012 */  lui   $at, %hi(gOpacityDecayTimer) # $at, 0x8012
/* 092FCC 800923CC 0C023C03 */  jal   trackmenu_assets
/* 092FD0 800923D0 AC2063D8 */   sw    $zero, %lo(gOpacityDecayTimer)($at)
/* 092FD4 800923D4 3C028012 */  lui   $v0, %hi(gTrackSelectViewPortHalfY) # $v0, 0x8012
/* 092FD8 800923D8 8C426478 */  lw    $v0, %lo(gTrackSelectViewPortHalfY)($v0)
/* 092FDC 800923DC 00002025 */  move  $a0, $zero
/* 092FE0 800923E0 00021843 */  sra   $v1, $v0, 1
/* 092FE4 800923E4 00627021 */  addu  $t6, $v1, $v0
/* 092FE8 800923E8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 092FEC 800923EC 24050050 */  li    $a1, 80
/* 092FF0 800923F0 240700F0 */  li    $a3, 240
/* 092FF4 800923F4 0C019A50 */  jal   viewport_menu_set
/* 092FF8 800923F8 00433023 */   subu  $a2, $v0, $v1
.L800923FC:
/* 092FFC 800923FC 00002025 */  move  $a0, $zero
.L80092400:
/* 093000 80092400 0C019A06 */  jal   camEnableUserView
/* 093004 80092404 24050001 */   li    $a1, 1
/* 093008 80092408 8FB90030 */  lw    $t9, 0x30($sp)
/* 09300C 8009240C 3C04800E */  lui   $a0, %hi(gTrackIdForPreview) # $a0, 0x800e
/* 093010 80092410 172001F0 */  bnez  $t9, .L80092BD4
/* 093014 80092414 8FBF001C */   lw    $ra, 0x1c($sp)
/* 093018 80092418 8C84F4C4 */  lw    $a0, %lo(gTrackIdForPreview)($a0)
/* 09301C 8009241C 0C01AC3E */  jal   get_map_available_vehicles
/* 093020 80092420 00000000 */   nop   
/* 093024 80092424 3C0C8012 */  lui   $t4, %hi(gMenuStage) # $t4, 0x8012
/* 093028 80092428 258C63E0 */  addiu $t4, %lo(gMenuStage) # addiu $t4, $t4, 0x63e0
/* 09302C 8009242C 8D830000 */  lw    $v1, ($t4)
/* 093030 80092430 240DFFFF */  li    $t5, -1
/* 093034 80092434 246F0001 */  addiu $t7, $v1, 1
/* 093038 80092438 2DE10005 */  sltiu $at, $t7, 5
/* 09303C 8009243C 00402025 */  move  $a0, $v0
/* 093040 80092440 AFA0003C */  sw    $zero, 0x3c($sp)
/* 093044 80092444 AFA00038 */  sw    $zero, 0x38($sp)
/* 093048 80092448 102001B3 */  beqz  $at, .L80092B18
/* 09304C 8009244C AFA00034 */   sw    $zero, 0x34($sp)
/* 093050 80092450 000F7880 */  sll   $t7, $t7, 2
/* 093054 80092454 3C01800F */  lui   $at, %hi(jpt_800E84F4) # $at, 0x800f
/* 093058 80092458 002F0821 */  addu  $at, $at, $t7
/* 09305C 8009245C 8C2F84F4 */  lw    $t7, %lo(jpt_800E84F4)($at)
/* 093060 80092460 00000000 */  nop   
/* 093064 80092464 01E00008 */  jr    $t7
/* 093068 80092468 00000000 */   nop   
glabel L8009246C
/* 09306C 8009246C 3C048012 */  lui   $a0, %hi(gMenuButtons) # $a0, 0x8012
/* 093070 80092470 248467D8 */  addiu $a0, %lo(gMenuButtons) # addiu $a0, $a0, 0x67d8
/* 093074 80092474 8C830010 */  lw    $v1, 0x10($a0)
/* 093078 80092478 3C0E8012 */  lui   $t6, %hi(gTrackSelectCursorX) # $t6, 0x8012
/* 09307C 8009247C 30789000 */  andi  $t8, $v1, 0x9000
/* 093080 80092480 1300000A */  beqz  $t8, .L800924AC
/* 093084 80092484 240F0001 */   li    $t7, 1
/* 093088 80092488 8DCE69C8 */  lw    $t6, %lo(gTrackSelectCursorX)($t6)
/* 09308C 8009248C 24010004 */  li    $at, 4
/* 093090 80092490 15C10003 */  bne   $t6, $at, .L800924A0
/* 093094 80092494 24190002 */   li    $t9, 2
/* 093098 80092498 10000002 */  b     .L800924A4
/* 09309C 8009249C AD990000 */   sw    $t9, ($t4)
.L800924A0:
/* 0930A0 800924A0 AD800000 */  sw    $zero, ($t4)
.L800924A4:
/* 0930A4 800924A4 1000019C */  b     .L80092B18
/* 0930A8 800924A8 AFAF0038 */   sw    $t7, 0x38($sp)
.L800924AC:
/* 0930AC 800924AC 30784000 */  andi  $t8, $v1, 0x4000
/* 0930B0 800924B0 13000006 */  beqz  $t8, .L800924CC
/* 0930B4 800924B4 3C028012 */   lui   $v0, %hi(gMenuStickY + 8) # $v0, 0x8012
/* 0930B8 800924B8 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 0930BC 800924BC 240E0001 */  li    $t6, 1
/* 0930C0 800924C0 AC2DF47C */  sw    $t5, %lo(gMenuDelay)($at)
/* 0930C4 800924C4 10000194 */  b     .L80092B18
/* 0930C8 800924C8 AFAE003C */   sw    $t6, 0x3c($sp)
.L800924CC:
/* 0930CC 800924CC 84426838 */  lh    $v0, %lo(gMenuStickY + 8)($v0)
/* 0930D0 800924D0 3C19800E */  lui   $t9, %hi(gTracksMenuAdventureHighlightIndex) # $t9, 0x800e
/* 0930D4 800924D4 18400008 */  blez  $v0, .L800924F8
/* 0930D8 800924D8 00000000 */   nop   
/* 0930DC 800924DC 8F390418 */  lw    $t9, %lo(gTracksMenuAdventureHighlightIndex)($t9)
/* 0930E0 800924E0 3C01800E */  lui   $at, %hi(gTracksMenuAdventureHighlightIndex) # $at, 0x800e
/* 0930E4 800924E4 13200004 */  beqz  $t9, .L800924F8
/* 0930E8 800924E8 240F0001 */   li    $t7, 1
/* 0930EC 800924EC AC200418 */  sw    $zero, %lo(gTracksMenuAdventureHighlightIndex)($at)
/* 0930F0 800924F0 10000189 */  b     .L80092B18
/* 0930F4 800924F4 AFAF0034 */   sw    $t7, 0x34($sp)
.L800924F8:
/* 0930F8 800924F8 04410187 */  bgez  $v0, .L80092B18
/* 0930FC 800924FC 3C18800E */   lui   $t8, %hi(gTracksMenuAdventureHighlightIndex) # $t8, 0x800e
/* 093100 80092500 8F180418 */  lw    $t8, %lo(gTracksMenuAdventureHighlightIndex)($t8)
/* 093104 80092504 241F0001 */  li    $ra, 1
/* 093108 80092508 17000183 */  bnez  $t8, .L80092B18
/* 09310C 8009250C 3C01800E */   lui   $at, %hi(gTracksMenuAdventureHighlightIndex) # $at, 0x800e
/* 093110 80092510 AC3F0418 */  sw    $ra, %lo(gTracksMenuAdventureHighlightIndex)($at)
/* 093114 80092514 10000180 */  b     .L80092B18
/* 093118 80092518 AFBF0034 */   sw    $ra, 0x34($sp)
glabel L8009251C
/* 09311C 8009251C 3C0A800E */  lui   $t2, %hi(gNumberOfActivePlayers) # $t2, 0x800e
/* 093120 80092520 8D4AF4BC */  lw    $t2, %lo(gNumberOfActivePlayers)($t2)
/* 093124 80092524 00002825 */  move  $a1, $zero
/* 093128 80092528 19400072 */  blez  $t2, .L800926F4
/* 09312C 8009252C 3C088012 */   lui   $t0, %hi(gMenuButtons) # $t0, 0x8012
/* 093130 80092530 3C0B8012 */  lui   $t3, %hi(gPlayerSelectConfirm) # $t3, 0x8012
/* 093134 80092534 3C09800E */  lui   $t1, %hi(gNumberOfReadyPlayers) # $t1, 0x800e
/* 093138 80092538 2529F480 */  addiu $t1, %lo(gNumberOfReadyPlayers) # addiu $t1, $t1, -0xb80
/* 09313C 8009253C 256B69C4 */  addiu $t3, %lo(gPlayerSelectConfirm) # addiu $t3, $t3, 0x69c4
/* 093140 80092540 250867D8 */  addiu $t0, %lo(gMenuButtons) # addiu $t0, $t0, 0x67d8
/* 093144 80092544 241F0001 */  li    $ra, 1
.L80092548:
/* 093148 80092548 8D030000 */  lw    $v1, ($t0)
/* 09314C 8009254C 00000000 */  nop   
/* 093150 80092550 306E4000 */  andi  $t6, $v1, 0x4000
/* 093154 80092554 11C00024 */  beqz  $t6, .L800925E8
/* 093158 80092558 30789000 */   andi  $t8, $v1, 0x9000
/* 09315C 8009255C 8D230000 */  lw    $v1, ($t1)
/* 093160 80092560 AFBF003C */  sw    $ra, 0x3c($sp)
/* 093164 80092564 14600019 */  bnez  $v1, .L800925CC
/* 093168 80092568 01651021 */   addu  $v0, $t3, $a1
/* 09316C 8009256C AFA4004C */  sw    $a0, 0x4c($sp)
/* 093170 80092570 AFA50040 */  sw    $a1, 0x40($sp)
/* 093174 80092574 0C027B18 */  jal   is_adventure_two_unlocked
/* 093178 80092578 AFA80024 */   sw    $t0, 0x24($sp)
/* 09317C 8009257C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 093180 80092580 8FA50040 */  lw    $a1, 0x40($sp)
/* 093184 80092584 8FA80024 */  lw    $t0, 0x24($sp)
/* 093188 80092588 3C09800E */  lui   $t1, %hi(gNumberOfReadyPlayers) # $t1, 0x800e
/* 09318C 8009258C 3C0B8012 */  lui   $t3, %hi(gPlayerSelectConfirm) # $t3, 0x8012
/* 093190 80092590 3C0C8012 */  lui   $t4, %hi(gMenuStage) # $t4, 0x8012
/* 093194 80092594 258C63E0 */  addiu $t4, %lo(gMenuStage) # addiu $t4, $t4, 0x63e0
/* 093198 80092598 256B69C4 */  addiu $t3, %lo(gPlayerSelectConfirm) # addiu $t3, $t3, 0x69c4
/* 09319C 8009259C 2529F480 */  addiu $t1, %lo(gNumberOfReadyPlayers) # addiu $t1, $t1, -0xb80
/* 0931A0 800925A0 240DFFFF */  li    $t5, -1
/* 0931A4 800925A4 10400003 */  beqz  $v0, .L800925B4
/* 0931A8 800925A8 241F0001 */   li    $ra, 1
/* 0931AC 800925AC 10000003 */  b     .L800925BC
/* 0931B0 800925B0 AD8D0000 */   sw    $t5, ($t4)
.L800925B4:
/* 0931B4 800925B4 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 0931B8 800925B8 AC2DF47C */  sw    $t5, %lo(gMenuDelay)($at)
.L800925BC:
/* 0931BC 800925BC 3C0A800E */  lui   $t2, %hi(gNumberOfActivePlayers) # $t2, 0x800e
/* 0931C0 800925C0 8D4AF4BC */  lw    $t2, %lo(gNumberOfActivePlayers)($t2)
/* 0931C4 800925C4 10000048 */  b     .L800926E8
/* 0931C8 800925C8 24A50001 */   addiu $a1, $a1, 1
.L800925CC:
/* 0931CC 800925CC 80590000 */  lb    $t9, ($v0)
/* 0931D0 800925D0 246FFFFF */  addiu $t7, $v1, -1
/* 0931D4 800925D4 13200043 */  beqz  $t9, .L800926E4
/* 0931D8 800925D8 00000000 */   nop   
/* 0931DC 800925DC AD2F0000 */  sw    $t7, ($t1)
/* 0931E0 800925E0 10000040 */  b     .L800926E4
/* 0931E4 800925E4 A0400000 */   sb    $zero, ($v0)
.L800925E8:
/* 0931E8 800925E8 1300000B */  beqz  $t8, .L80092618
/* 0931EC 800925EC 01651021 */   addu  $v0, $t3, $a1
/* 0931F0 800925F0 804E0000 */  lb    $t6, ($v0)
/* 0931F4 800925F4 00000000 */  nop   
/* 0931F8 800925F8 15C0003A */  bnez  $t6, .L800926E4
/* 0931FC 800925FC 00000000 */   nop   
/* 093200 80092600 8D390000 */  lw    $t9, ($t1)
/* 093204 80092604 A05F0000 */  sb    $ra, ($v0)
/* 093208 80092608 272F0001 */  addiu $t7, $t9, 1
/* 09320C 8009260C AD2F0000 */  sw    $t7, ($t1)
/* 093210 80092610 10000034 */  b     .L800926E4
/* 093214 80092614 AFBF0038 */   sw    $ra, 0x38($sp)
.L80092618:
/* 093218 80092618 80580000 */  lb    $t8, ($v0)
/* 09321C 8009261C 8FAE002C */  lw    $t6, 0x2c($sp)
/* 093220 80092620 17000030 */  bnez  $t8, .L800926E4
/* 093224 80092624 3C0F800E */   lui   $t7, %hi(gTrackIdForPreview) # $t7, 0x800e
/* 093228 80092628 8DEFF4C4 */  lw    $t7, %lo(gTrackIdForPreview)($t7)
/* 09322C 8009262C 8DD90004 */  lw    $t9, 4($t6)
/* 093230 80092630 000FC080 */  sll   $t8, $t7, 2
/* 093234 80092634 03387021 */  addu  $t6, $t9, $t8
/* 093238 80092638 8DCF0000 */  lw    $t7, ($t6)
/* 09323C 8009263C 3C188012 */  lui   $t8, %hi(gPlayerSelectVehicle) # $t8, 0x8012
/* 093240 80092640 31F90002 */  andi  $t9, $t7, 2
/* 093244 80092644 13200027 */  beqz  $t9, .L800926E4
/* 093248 80092648 271869C0 */   addiu $t8, %lo(gPlayerSelectVehicle) # addiu $t8, $t8, 0x69c0
/* 09324C 8009264C 00057040 */  sll   $t6, $a1, 1
/* 093250 80092650 3C068012 */  lui   $a2, %hi(gMenuStickY) # $a2, 0x8012
/* 093254 80092654 00B81821 */  addu  $v1, $a1, $t8
/* 093258 80092658 00CE3021 */  addu  $a2, $a2, $t6
/* 09325C 8009265C 80620000 */  lb    $v0, ($v1)
/* 093260 80092660 84C66830 */  lh    $a2, %lo(gMenuStickY)($a2)
/* 093264 80092664 00403825 */  move  $a3, $v0
/* 093268 80092668 18C0000A */  blez  $a2, .L80092694
/* 09326C 8009266C 244FFFFF */   addiu $t7, $v0, -1
.L80092670:
/* 093270 80092670 A06F0000 */  sb    $t7, ($v1)
/* 093274 80092674 80620000 */  lb    $v0, ($v1)
/* 093278 80092678 24190001 */  li    $t9, 1
/* 09327C 8009267C 0059C004 */  sllv  $t8, $t9, $v0
/* 093280 80092680 03047024 */  and   $t6, $t8, $a0
/* 093284 80092684 15C00003 */  bnez  $t6, .L80092694
/* 093288 80092688 00000000 */   nop   
/* 09328C 8009268C 0441FFF8 */  bgez  $v0, .L80092670
/* 093290 80092690 244FFFFF */   addiu $t7, $v0, -1
.L80092694:
/* 093294 80092694 04C1000A */  bgez  $a2, .L800926C0
/* 093298 80092698 244F0001 */   addiu $t7, $v0, 1
.L8009269C:
/* 09329C 8009269C A06F0000 */  sb    $t7, ($v1)
/* 0932A0 800926A0 80620000 */  lb    $v0, ($v1)
/* 0932A4 800926A4 24190001 */  li    $t9, 1
/* 0932A8 800926A8 0059C004 */  sllv  $t8, $t9, $v0
/* 0932AC 800926AC 03047024 */  and   $t6, $t8, $a0
/* 0932B0 800926B0 15C00003 */  bnez  $t6, .L800926C0
/* 0932B4 800926B4 28410003 */   slti  $at, $v0, 3
/* 0932B8 800926B8 1420FFF8 */  bnez  $at, .L8009269C
/* 0932BC 800926BC 244F0001 */   addiu $t7, $v0, 1
.L800926C0:
/* 0932C0 800926C0 10E20008 */  beq   $a3, $v0, .L800926E4
/* 0932C4 800926C4 00000000 */   nop   
/* 0932C8 800926C8 04400003 */  bltz  $v0, .L800926D8
/* 0932CC 800926CC 28410003 */   slti  $at, $v0, 3
/* 0932D0 800926D0 14200003 */  bnez  $at, .L800926E0
/* 0932D4 800926D4 00000000 */   nop   
.L800926D8:
/* 0932D8 800926D8 10000002 */  b     .L800926E4
/* 0932DC 800926DC A0670000 */   sb    $a3, ($v1)
.L800926E0:
/* 0932E0 800926E0 AFBF0034 */  sw    $ra, 0x34($sp)
.L800926E4:
/* 0932E4 800926E4 24A50001 */  addiu $a1, $a1, 1
.L800926E8:
/* 0932E8 800926E8 00AA082A */  slt   $at, $a1, $t2
/* 0932EC 800926EC 1420FF96 */  bnez  $at, .L80092548
/* 0932F0 800926F0 25080004 */   addiu $t0, $t0, 4
.L800926F4:
/* 0932F4 800926F4 3C09800E */  lui   $t1, %hi(gNumberOfReadyPlayers) # $t1, 0x800e
/* 0932F8 800926F8 2529F480 */  addiu $t1, %lo(gNumberOfReadyPlayers) # addiu $t1, $t1, -0xb80
/* 0932FC 800926FC 8D2F0000 */  lw    $t7, ($t1)
/* 093300 80092700 241F0001 */  li    $ra, 1
/* 093304 80092704 154F0104 */  bne   $t2, $t7, .L80092B18
/* 093308 80092708 29410002 */   slti  $at, $t2, 2
/* 09330C 8009270C AFA0003C */  sw    $zero, 0x3c($sp)
/* 093310 80092710 AFA00038 */  sw    $zero, 0x38($sp)
/* 093314 80092714 14200004 */  bnez  $at, .L80092728
/* 093318 80092718 AFA00034 */   sw    $zero, 0x34($sp)
/* 09331C 8009271C 24190002 */  li    $t9, 2
/* 093320 80092720 10000002 */  b     .L8009272C
/* 093324 80092724 AD990000 */   sw    $t9, ($t4)
.L80092728:
/* 093328 80092728 AD9F0000 */  sw    $ra, ($t4)
.L8009272C:
/* 09332C 8009272C 24040131 */  li    $a0, 305
/* 093330 80092730 0C000741 */  jal   sound_play
/* 093334 80092734 00002825 */   move  $a1, $zero
/* 093338 80092738 100000F8 */  b     .L80092B1C
/* 09333C 8009273C 8FAF003C */   lw    $t7, 0x3c($sp)
glabel L80092740
/* 093340 80092740 3C048012 */  lui   $a0, %hi(gMenuButtons) # $a0, 0x8012
/* 093344 80092744 248467D8 */  addiu $a0, %lo(gMenuButtons) # addiu $a0, $a0, 0x67d8
/* 093348 80092748 8C820000 */  lw    $v0, ($a0)
/* 09334C 8009274C 3C038012 */  lui   $v1, %hi(gMenuStickY) # $v1, 0x8012
/* 093350 80092750 30589000 */  andi  $t8, $v0, 0x9000
/* 093354 80092754 13000006 */  beqz  $t8, .L80092770
/* 093358 80092758 30594000 */   andi  $t9, $v0, 0x4000
/* 09335C 8009275C 240E0002 */  li    $t6, 2
/* 093360 80092760 240F0001 */  li    $t7, 1
/* 093364 80092764 AD8E0000 */  sw    $t6, ($t4)
/* 093368 80092768 1000000B */  b     .L80092798
/* 09336C 8009276C AFAF0038 */   sw    $t7, 0x38($sp)
.L80092770:
/* 093370 80092770 13200009 */  beqz  $t9, .L80092798
/* 093374 80092774 3C09800E */   lui   $t1, %hi(gNumberOfReadyPlayers) # $t1, 0x800e
/* 093378 80092778 3C0B8012 */  lui   $t3, %hi(gPlayerSelectConfirm) # $t3, 0x8012
/* 09337C 8009277C 256B69C4 */  addiu $t3, %lo(gPlayerSelectConfirm) # addiu $t3, $t3, 0x69c4
/* 093380 80092780 2529F480 */  addiu $t1, %lo(gNumberOfReadyPlayers) # addiu $t1, $t1, -0xb80
/* 093384 80092784 24180001 */  li    $t8, 1
/* 093388 80092788 A1600000 */  sb    $zero, ($t3)
/* 09338C 8009278C AD200000 */  sw    $zero, ($t1)
/* 093390 80092790 AD800000 */  sw    $zero, ($t4)
/* 093394 80092794 AFB8003C */  sw    $t8, 0x3c($sp)
.L80092798:
/* 093398 80092798 84636830 */  lh    $v1, %lo(gMenuStickY)($v1)
/* 09339C 8009279C 3C02800E */  lui   $v0, %hi(gTracksMenuTimeTrialHighlightIndex) # $v0, 0x800e
/* 0933A0 800927A0 18600015 */  blez  $v1, .L800927F8
/* 0933A4 800927A4 00000000 */   nop   
/* 0933A8 800927A8 8C420414 */  lw    $v0, %lo(gTracksMenuTimeTrialHighlightIndex)($v0)
/* 0933AC 800927AC 3C048012 */  lui   $a0, %hi(D_80126848) # $a0, 0x8012
/* 0933B0 800927B0 18400011 */  blez  $v0, .L800927F8
/* 0933B4 800927B4 00000000 */   nop   
/* 0933B8 800927B8 8C846848 */  lw    $a0, %lo(D_80126848)($a0)
/* 0933BC 800927BC 00000000 */  nop   
/* 0933C0 800927C0 10800009 */  beqz  $a0, .L800927E8
/* 0933C4 800927C4 244EFFFF */   addiu $t6, $v0, -1
/* 0933C8 800927C8 0C001223 */  jal   sound_stop
/* 0933CC 800927CC 00000000 */   nop   
/* 0933D0 800927D0 3C038012 */  lui   $v1, %hi(gMenuStickY) # $v1, 0x8012
/* 0933D4 800927D4 3C02800E */  lui   $v0, %hi(gTracksMenuTimeTrialHighlightIndex) # $v0, 0x800e
/* 0933D8 800927D8 8C420414 */  lw    $v0, %lo(gTracksMenuTimeTrialHighlightIndex)($v0)
/* 0933DC 800927DC 84636830 */  lh    $v1, %lo(gMenuStickY)($v1)
/* 0933E0 800927E0 00000000 */  nop   
/* 0933E4 800927E4 244EFFFF */  addiu $t6, $v0, -1
.L800927E8:
/* 0933E8 800927E8 3C01800E */  lui   $at, %hi(gTracksMenuTimeTrialHighlightIndex) # $at, 0x800e
/* 0933EC 800927EC 240F0001 */  li    $t7, 1
/* 0933F0 800927F0 AC2E0414 */  sw    $t6, %lo(gTracksMenuTimeTrialHighlightIndex)($at)
/* 0933F4 800927F4 AFAF0034 */  sw    $t7, 0x34($sp)
.L800927F8:
/* 0933F8 800927F8 046100C7 */  bgez  $v1, .L80092B18
/* 0933FC 800927FC 3C19800E */   lui   $t9, %hi(gTracksMenuTimeTrialHighlightIndex) # $t9, 0x800e
/* 093400 80092800 8F390414 */  lw    $t9, %lo(gTracksMenuTimeTrialHighlightIndex)($t9)
/* 093404 80092804 3C048012 */  lui   $a0, %hi(gTrackTTSoundMask) # $a0, 0x8012
/* 093408 80092808 1F2000C4 */  bgtz  $t9, .L80092B1C
/* 09340C 8009280C 8FAF003C */   lw    $t7, 0x3c($sp)
/* 093410 80092810 8C846840 */  lw    $a0, %lo(gTrackTTSoundMask)($a0)
/* 093414 80092814 24180001 */  li    $t8, 1
/* 093418 80092818 10800003 */  beqz  $a0, .L80092828
/* 09341C 8009281C AFB80034 */   sw    $t8, 0x34($sp)
/* 093420 80092820 0C001223 */  jal   sound_stop
/* 093424 80092824 00000000 */   nop   
.L80092828:
/* 093428 80092828 00002025 */  move  $a0, $zero
/* 09342C 8009282C 0C01BE53 */  jal   get_random_number_from_range
/* 093430 80092830 240500FF */   li    $a1, 255
/* 093434 80092834 28410080 */  slti  $at, $v0, 0x80
/* 093438 80092838 14200007 */  bnez  $at, .L80092858
/* 09343C 8009283C 24040147 */   li    $a0, 327
/* 093440 80092840 3C058012 */  lui   $a1, %hi(D_80126848) # $a1, 0x8012
/* 093444 80092844 24A56848 */  addiu $a1, %lo(D_80126848) # addiu $a1, $a1, 0x6848
/* 093448 80092848 0C000741 */  jal   sound_play
/* 09344C 8009284C 24040141 */   li    $a0, 321
/* 093450 80092850 10000004 */  b     .L80092864
/* 093454 80092854 00000000 */   nop   
.L80092858:
/* 093458 80092858 3C058012 */  lui   $a1, %hi(D_80126848) # $a1, 0x8012
/* 09345C 8009285C 0C000741 */  jal   sound_play
/* 093460 80092860 24A56848 */   addiu $a1, %lo(D_80126848) # addiu $a1, $a1, 0x6848
.L80092864:
/* 093464 80092864 3C0E800E */  lui   $t6, %hi(gTracksMenuTimeTrialHighlightIndex) # $t6, 0x800e
/* 093468 80092868 8DCE0414 */  lw    $t6, %lo(gTracksMenuTimeTrialHighlightIndex)($t6)
/* 09346C 8009286C 3C01800E */  lui   $at, %hi(gTracksMenuTimeTrialHighlightIndex) # $at, 0x800e
/* 093470 80092870 25CF0001 */  addiu $t7, $t6, 1
/* 093474 80092874 100000A8 */  b     .L80092B18
/* 093478 80092878 AC2F0414 */   sw    $t7, %lo(gTracksMenuTimeTrialHighlightIndex)($at)
glabel L8009287C
/* 09347C 8009287C 24010002 */  li    $at, 2
/* 093480 80092880 1461003E */  bne   $v1, $at, .L8009297C
/* 093484 80092884 3C19800E */   lui   $t9, %hi(gNumberOfActivePlayers) # $t9, 0x800e
/* 093488 80092888 8F39F4BC */  lw    $t9, %lo(gNumberOfActivePlayers)($t9)
/* 09348C 8009288C 24010002 */  li    $at, 2
/* 093490 80092890 1721003A */  bne   $t9, $at, .L8009297C
/* 093494 80092894 3C188012 */   lui   $t8, %hi(gTrackSelectCursorX) # $t8, 0x8012
/* 093498 80092898 8F1869C8 */  lw    $t8, %lo(gTrackSelectCursorX)($t8)
/* 09349C 8009289C 3C048012 */  lui   $a0, %hi(gMenuButtons) # $a0, 0x8012
/* 0934A0 800928A0 2B010004 */  slti  $at, $t8, 4
/* 0934A4 800928A4 10200035 */  beqz  $at, .L8009297C
/* 0934A8 800928A8 248467D8 */   addiu $a0, %lo(gMenuButtons) # addiu $a0, $a0, 0x67d8
/* 0934AC 800928AC 8C830010 */  lw    $v1, 0x10($a0)
/* 0934B0 800928B0 240F0003 */  li    $t7, 3
/* 0934B4 800928B4 306E9000 */  andi  $t6, $v1, 0x9000
/* 0934B8 800928B8 11C00005 */  beqz  $t6, .L800928D0
/* 0934BC 800928BC 30784000 */   andi  $t8, $v1, 0x4000
/* 0934C0 800928C0 24190001 */  li    $t9, 1
/* 0934C4 800928C4 AD8F0000 */  sw    $t7, ($t4)
/* 0934C8 800928C8 10000093 */  b     .L80092B18
/* 0934CC 800928CC AFB90038 */   sw    $t9, 0x38($sp)
.L800928D0:
/* 0934D0 800928D0 13000014 */  beqz  $t8, .L80092924
/* 0934D4 800928D4 3C038012 */   lui   $v1, %hi(gMenuStickX + 8) # $v1, 0x8012
/* 0934D8 800928D8 3C09800E */  lui   $t1, %hi(gNumberOfReadyPlayers) # $t1, 0x800e
/* 0934DC 800928DC 2529F480 */  addiu $t1, %lo(gNumberOfReadyPlayers) # addiu $t1, $t1, -0xb80
/* 0934E0 800928E0 8D2E0000 */  lw    $t6, ($t1)
/* 0934E4 800928E4 8C990000 */  lw    $t9, ($a0)
/* 0934E8 800928E8 25CFFFFF */  addiu $t7, $t6, -1
/* 0934EC 800928EC 33384000 */  andi  $t8, $t9, 0x4000
/* 0934F0 800928F0 AD800000 */  sw    $zero, ($t4)
/* 0934F4 800928F4 13000005 */  beqz  $t8, .L8009290C
/* 0934F8 800928F8 AD2F0000 */   sw    $t7, ($t1)
/* 0934FC 800928FC 3C0B8012 */  lui   $t3, %hi(gPlayerSelectConfirm) # $t3, 0x8012
/* 093500 80092900 256B69C4 */  addiu $t3, %lo(gPlayerSelectConfirm) # addiu $t3, $t3, 0x69c4
/* 093504 80092904 10000004 */  b     .L80092918
/* 093508 80092908 A1600000 */   sb    $zero, ($t3)
.L8009290C:
/* 09350C 8009290C 3C0B8012 */  lui   $t3, %hi(gPlayerSelectConfirm) # $t3, 0x8012
/* 093510 80092910 256B69C4 */  addiu $t3, %lo(gPlayerSelectConfirm) # addiu $t3, $t3, 0x69c4
/* 093514 80092914 A1600001 */  sb    $zero, 1($t3)
.L80092918:
/* 093518 80092918 240E0001 */  li    $t6, 1
/* 09351C 8009291C 1000007E */  b     .L80092B18
/* 093520 80092920 AFAE003C */   sw    $t6, 0x3c($sp)
.L80092924:
/* 093524 80092924 84636820 */  lh    $v1, %lo(gMenuStickX + 8)($v1)
/* 093528 80092928 3C04800E */  lui   $a0, %hi(gMultiplayerSelectedNumberOfRacers) # $a0, 0x800e
/* 09352C 8009292C 04610008 */  bgez  $v1, .L80092950
/* 093530 80092930 24840410 */   addiu $a0, %lo(gMultiplayerSelectedNumberOfRacers) # addiu $a0, $a0, 0x410
/* 093534 80092934 8C820000 */  lw    $v0, ($a0)
/* 093538 80092938 240F0001 */  li    $t7, 1
/* 09353C 8009293C 18400004 */  blez  $v0, .L80092950
/* 093540 80092940 2459FFFF */   addiu $t9, $v0, -1
/* 093544 80092944 AFAF0034 */  sw    $t7, 0x34($sp)
/* 093548 80092948 10000073 */  b     .L80092B18
/* 09354C 8009294C AC990000 */   sw    $t9, ($a0)
.L80092950:
/* 093550 80092950 3C04800E */  lui   $a0, %hi(gMultiplayerSelectedNumberOfRacers) # $a0, 0x800e
/* 093554 80092954 18600070 */  blez  $v1, .L80092B18
/* 093558 80092958 24840410 */   addiu $a0, %lo(gMultiplayerSelectedNumberOfRacers) # addiu $a0, $a0, 0x410
/* 09355C 8009295C 8C820000 */  lw    $v0, ($a0)
/* 093560 80092960 24180001 */  li    $t8, 1
/* 093564 80092964 28410002 */  slti  $at, $v0, 2
/* 093568 80092968 1020006B */  beqz  $at, .L80092B18
/* 09356C 8009296C 244E0001 */   addiu $t6, $v0, 1
/* 093570 80092970 AFB80034 */  sw    $t8, 0x34($sp)
/* 093574 80092974 10000068 */  b     .L80092B18
/* 093578 80092978 AC8E0000 */   sw    $t6, ($a0)
.L8009297C:
/* 09357C 8009297C 3C048012 */  lui   $a0, %hi(gMenuButtons) # $a0, 0x8012
/* 093580 80092980 248467D8 */  addiu $a0, %lo(gMenuButtons) # addiu $a0, $a0, 0x67d8
/* 093584 80092984 8C830010 */  lw    $v1, 0x10($a0)
/* 093588 80092988 241F0001 */  li    $ra, 1
/* 09358C 8009298C 306F9000 */  andi  $t7, $v1, 0x9000
/* 093590 80092990 11E00015 */  beqz  $t7, .L800929E8
/* 093594 80092994 3C028012 */   lui   $v0, %hi(gTrackSelectCursorX) # $v0, 0x8012
/* 093598 80092998 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 09359C 8009299C AC3FF47C */  sw    $ra, %lo(gMenuDelay)($at)
/* 0935A0 800929A0 0C01E2AB */  jal   bgdraw_set_func
/* 0935A4 800929A4 00002025 */   move  $a0, $zero
/* 0935A8 800929A8 3C01800E */  lui   $at, %hi(gIsInTracksMenu) # $at, 0x800e
/* 0935AC 800929AC 0C030060 */  jal   disable_new_screen_transitions
/* 0935B0 800929B0 AC20097C */   sw    $zero, %lo(gIsInTracksMenu)($at)
/* 0935B4 800929B4 3C04800E */  lui   $a0, %hi(sMenuTransitionFadeIn) # $a0, 0x800e
/* 0935B8 800929B8 0C030076 */  jal   transition_begin
/* 0935BC 800929BC 2484F774 */   addiu $a0, %lo(sMenuTransitionFadeIn) # addiu $a0, $a0, -0x88c
/* 0935C0 800929C0 3C198012 */  lui   $t9, %hi(gTrackSelectCursorX) # $t9, 0x8012
/* 0935C4 800929C4 8F3969C8 */  lw    $t9, %lo(gTrackSelectCursorX)($t9)
/* 0935C8 800929C8 24010005 */  li    $at, 5
/* 0935CC 800929CC 17210004 */  bne   $t9, $at, .L800929E0
/* 0935D0 800929D0 24180001 */   li    $t8, 1
/* 0935D4 800929D4 0C030C7B */  jal   set_current_text
/* 0935D8 800929D8 24042710 */   li    $a0, 10000
/* 0935DC 800929DC 24180001 */  li    $t8, 1
.L800929E0:
/* 0935E0 800929E0 1000004D */  b     .L80092B18
/* 0935E4 800929E4 AFB80038 */   sw    $t8, 0x38($sp)
.L800929E8:
/* 0935E8 800929E8 8C4269C8 */  lw    $v0, %lo(gTrackSelectCursorX)($v0)
/* 0935EC 800929EC 306E4000 */  andi  $t6, $v1, 0x4000
/* 0935F0 800929F0 28410004 */  slti  $at, $v0, 4
/* 0935F4 800929F4 1420001C */  bnez  $at, .L80092A68
/* 0935F8 800929F8 3C0A800E */   lui   $t2, %hi(gNumberOfActivePlayers) # $t2, 0x800e
/* 0935FC 800929FC 11C00046 */  beqz  $t6, .L80092B18
/* 093600 80092A00 240F0001 */   li    $t7, 1
/* 093604 80092A04 24010004 */  li    $at, 4
/* 093608 80092A08 1441000C */  bne   $v0, $at, .L80092A3C
/* 09360C 80092A0C AFAF003C */   sw    $t7, 0x3c($sp)
/* 093610 80092A10 0C027B18 */  jal   is_adventure_two_unlocked
/* 093614 80092A14 00000000 */   nop   
/* 093618 80092A18 3C0C8012 */  lui   $t4, %hi(gMenuStage) # $t4, 0x8012
/* 09361C 80092A1C 258C63E0 */  addiu $t4, %lo(gMenuStage) # addiu $t4, $t4, 0x63e0
/* 093620 80092A20 10400006 */  beqz  $v0, .L80092A3C
/* 093624 80092A24 240DFFFF */   li    $t5, -1
/* 093628 80092A28 AD8D0000 */  sw    $t5, ($t4)
/* 09362C 80092A2C 3C028012 */  lui   $v0, %hi(gTrackSelectCursorX) # $v0, 0x8012
/* 093630 80092A30 8C4269C8 */  lw    $v0, %lo(gTrackSelectCursorX)($v0)
/* 093634 80092A34 10000006 */  b     .L80092A50
/* 093638 80092A38 24010005 */   li    $at, 5
.L80092A3C:
/* 09363C 80092A3C 3C028012 */  lui   $v0, %hi(gTrackSelectCursorX) # $v0, 0x8012
/* 093640 80092A40 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 093644 80092A44 8C4269C8 */  lw    $v0, %lo(gTrackSelectCursorX)($v0)
/* 093648 80092A48 AC2DF47C */  sw    $t5, %lo(gMenuDelay)($at)
/* 09364C 80092A4C 24010005 */  li    $at, 5
.L80092A50:
/* 093650 80092A50 14410032 */  bne   $v0, $at, .L80092B1C
/* 093654 80092A54 8FAF003C */   lw    $t7, 0x3c($sp)
/* 093658 80092A58 0C030C7B */  jal   set_current_text
/* 09365C 80092A5C 24042710 */   li    $a0, 10000
/* 093660 80092A60 1000002E */  b     .L80092B1C
/* 093664 80092A64 8FAF003C */   lw    $t7, 0x3c($sp)
.L80092A68:
/* 093668 80092A68 8D4AF4BC */  lw    $t2, %lo(gNumberOfActivePlayers)($t2)
/* 09366C 80092A6C 241F0001 */  li    $ra, 1
/* 093670 80092A70 17EA0009 */  bne   $ra, $t2, .L80092A98
/* 093674 80092A74 24010002 */   li    $at, 2
/* 093678 80092A78 8C990000 */  lw    $t9, ($a0)
/* 09367C 80092A7C 00000000 */  nop   
/* 093680 80092A80 33384000 */  andi  $t8, $t9, 0x4000
/* 093684 80092A84 13000025 */  beqz  $t8, .L80092B1C
/* 093688 80092A88 8FAF003C */   lw    $t7, 0x3c($sp)
/* 09368C 80092A8C AD9F0000 */  sw    $ra, ($t4)
/* 093690 80092A90 10000021 */  b     .L80092B18
/* 093694 80092A94 AFBF003C */   sw    $ra, 0x3c($sp)
.L80092A98:
/* 093698 80092A98 15410007 */  bne   $t2, $at, .L80092AB8
/* 09369C 80092A9C 306E4000 */   andi  $t6, $v1, 0x4000
/* 0936A0 80092AA0 11C0001D */  beqz  $t6, .L80092B18
/* 0936A4 80092AA4 240F0002 */   li    $t7, 2
/* 0936A8 80092AA8 24190001 */  li    $t9, 1
/* 0936AC 80092AAC AD8F0000 */  sw    $t7, ($t4)
/* 0936B0 80092AB0 10000019 */  b     .L80092B18
/* 0936B4 80092AB4 AFB9003C */   sw    $t9, 0x3c($sp)
.L80092AB8:
/* 0936B8 80092AB8 19400017 */  blez  $t2, .L80092B18
/* 0936BC 80092ABC 00002825 */   move  $a1, $zero
/* 0936C0 80092AC0 3C088012 */  lui   $t0, %hi(gMenuButtons) # $t0, 0x8012
/* 0936C4 80092AC4 3C0B8012 */  lui   $t3, %hi(gPlayerSelectConfirm) # $t3, 0x8012
/* 0936C8 80092AC8 3C09800E */  lui   $t1, %hi(gNumberOfReadyPlayers) # $t1, 0x800e
/* 0936CC 80092ACC 2529F480 */  addiu $t1, %lo(gNumberOfReadyPlayers) # addiu $t1, $t1, -0xb80
/* 0936D0 80092AD0 256B69C4 */  addiu $t3, %lo(gPlayerSelectConfirm) # addiu $t3, $t3, 0x69c4
/* 0936D4 80092AD4 250867D8 */  addiu $t0, %lo(gMenuButtons) # addiu $t0, $t0, 0x67d8
.L80092AD8:
/* 0936D8 80092AD8 8D180000 */  lw    $t8, ($t0)
/* 0936DC 80092ADC 00000000 */  nop   
/* 0936E0 80092AE0 330E4000 */  andi  $t6, $t8, 0x4000
/* 0936E4 80092AE4 11C00008 */  beqz  $t6, .L80092B08
/* 0936E8 80092AE8 0165C021 */   addu  $t8, $t3, $a1
/* 0936EC 80092AEC 8D2F0000 */  lw    $t7, ($t1)
/* 0936F0 80092AF0 A3000000 */  sb    $zero, ($t8)
/* 0936F4 80092AF4 240E0001 */  li    $t6, 1
/* 0936F8 80092AF8 25F9FFFF */  addiu $t9, $t7, -1
/* 0936FC 80092AFC AD390000 */  sw    $t9, ($t1)
/* 093700 80092B00 AD800000 */  sw    $zero, ($t4)
/* 093704 80092B04 AFAE003C */  sw    $t6, 0x3c($sp)
.L80092B08:
/* 093708 80092B08 24A50001 */  addiu $a1, $a1, 1
/* 09370C 80092B0C 00AA082A */  slt   $at, $a1, $t2
/* 093710 80092B10 1420FFF1 */  bnez  $at, .L80092AD8
/* 093714 80092B14 25080004 */   addiu $t0, $t0, 4
.L80092B18:
/* 093718 80092B18 8FAF003C */  lw    $t7, 0x3c($sp)
.L80092B1C:
/* 09371C 80092B1C 8FB90038 */  lw    $t9, 0x38($sp)
/* 093720 80092B20 11E00005 */  beqz  $t7, .L80092B38
/* 093724 80092B24 24040241 */   li    $a0, 577
/* 093728 80092B28 0C000741 */  jal   sound_play
/* 09372C 80092B2C 00002825 */   move  $a1, $zero
/* 093730 80092B30 1000000D */  b     .L80092B68
/* 093734 80092B34 00000000 */   nop   
.L80092B38:
/* 093738 80092B38 13200005 */  beqz  $t9, .L80092B50
/* 09373C 80092B3C 240400EF */   li    $a0, 239
/* 093740 80092B40 0C000741 */  jal   sound_play
/* 093744 80092B44 00002825 */   move  $a1, $zero
/* 093748 80092B48 10000007 */  b     .L80092B68
/* 09374C 80092B4C 00000000 */   nop   
.L80092B50:
/* 093750 80092B50 8FB80034 */  lw    $t8, 0x34($sp)
/* 093754 80092B54 240400EB */  li    $a0, 235
/* 093758 80092B58 13000003 */  beqz  $t8, .L80092B68
/* 09375C 80092B5C 00000000 */   nop   
/* 093760 80092B60 0C000741 */  jal   sound_play
/* 093764 80092B64 00002825 */   move  $a1, $zero
.L80092B68:
/* 093768 80092B68 3C048012 */  lui   $a0, %hi(gPlayerSelectVehicle) # $a0, 0x8012
/* 09376C 80092B6C 808469C0 */  lb    $a0, %lo(gPlayerSelectVehicle)($a0)
/* 093770 80092B70 0C01B6C5 */  jal   set_level_default_vehicle
/* 093774 80092B74 00000000 */   nop   
/* 093778 80092B78 3C0E800E */  lui   $t6, %hi(gNumberOfActivePlayers) # $t6, 0x800e
/* 09377C 80092B7C 8DCEF4BC */  lw    $t6, %lo(gNumberOfActivePlayers)($t6)
/* 093780 80092B80 3C0F8012 */  lui   $t7, %hi(gTrackSelectCursorX) # $t7, 0x8012
/* 093784 80092B84 29C10002 */  slti  $at, $t6, 2
/* 093788 80092B88 10200006 */  beqz  $at, .L80092BA4
/* 09378C 80092B8C 00000000 */   nop   
/* 093790 80092B90 8DEF69C8 */  lw    $t7, %lo(gTrackSelectCursorX)($t7)
/* 093794 80092B94 3C04800E */  lui   $a0, %hi(gTracksMenuTimeTrialHighlightIndex) # $a0, 0x800e
/* 093798 80092B98 29E10004 */  slti  $at, $t7, 4
/* 09379C 80092B9C 14200005 */  bnez  $at, .L80092BB4
/* 0937A0 80092BA0 00000000 */   nop   
.L80092BA4:
/* 0937A4 80092BA4 0C00392F */  jal   set_time_trial_enabled
/* 0937A8 80092BA8 00002025 */   move  $a0, $zero
/* 0937AC 80092BAC 10000004 */  b     .L80092BC0
/* 0937B0 80092BB0 00000000 */   nop   
.L80092BB4:
/* 0937B4 80092BB4 8C840414 */  lw    $a0, %lo(gTracksMenuTimeTrialHighlightIndex)($a0)
/* 0937B8 80092BB8 0C00392F */  jal   set_time_trial_enabled
/* 0937BC 80092BBC 00000000 */   nop   
.L80092BC0:
/* 0937C0 80092BC0 3C19800E */  lui   $t9, %hi(gTracksMenuAdventureHighlightIndex) # $t9, 0x800e
/* 0937C4 80092BC4 8F390418 */  lw    $t9, %lo(gTracksMenuAdventureHighlightIndex)($t9)
/* 0937C8 80092BC8 3C01800E */  lui   $at, %hi(gIsInAdventureTwo) # $at, 0x800e
/* 0937CC 80092BCC AC39F494 */  sw    $t9, %lo(gIsInAdventureTwo)($at)
/* 0937D0 80092BD0 8FBF001C */  lw    $ra, 0x1c($sp)
.L80092BD4:
/* 0937D4 80092BD4 27BD0058 */  addiu $sp, $sp, 0x58
/* 0937D8 80092BD8 03E00008 */  jr    $ra
/* 0937DC 80092BDC 00000000 */   nop   

