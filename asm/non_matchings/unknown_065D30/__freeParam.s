glabel __freeParam
/* 06629C 8006569C 3C02800E */  lui   $v0, %hi(alGlobals) # $v0, 0x800e
/* 0662A0 800656A0 8C423780 */  lw    $v0, %lo(alGlobals)($v0)
/* 0662A4 800656A4 00000000 */  nop   
/* 0662A8 800656A8 8C4E002C */  lw    $t6, 0x2c($v0)
/* 0662AC 800656AC 00000000 */  nop   
/* 0662B0 800656B0 AC8E0000 */  sw    $t6, ($a0)
/* 0662B4 800656B4 03E00008 */  jr    $ra
/* 0662B8 800656B8 AC44002C */   sw    $a0, 0x2c($v0)

