glabel func_800ABE68
/* 0ACA68 800ABE68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0ACA6C 800ABE6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0ACA70 800ABE70 AFA40018 */  sw    $a0, 0x18($sp)
/* 0ACA74 800ABE74 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0ACA78 800ABE78 AFA60020 */  sw    $a2, 0x20($sp)
/* 0ACA7C 800ABE7C AFA70024 */  sw    $a3, 0x24($sp)
/* 0ACA80 800ABE80 8C8F0000 */  lw    $t7, ($a0)
/* 0ACA84 800ABE84 3C018012 */  lui   $at, %hi(D_80127C0C) # $at, 0x8012
/* 0ACA88 800ABE88 AC2F7C0C */  sw    $t7, %lo(D_80127C0C)($at)
/* 0ACA8C 800ABE8C 8CB90000 */  lw    $t9, ($a1)
/* 0ACA90 800ABE90 3C018012 */  lui   $at, %hi(D_80127C10) # $at, 0x8012
/* 0ACA94 800ABE94 AC397C10 */  sw    $t9, %lo(D_80127C10)($at)
/* 0ACA98 800ABE98 8CC90000 */  lw    $t1, ($a2)
/* 0ACA9C 800ABE9C 3C018012 */  lui   $at, %hi(D_80127C14) # $at, 0x8012
/* 0ACAA0 800ABEA0 AC297C14 */  sw    $t1, %lo(D_80127C14)($at)
/* 0ACAA4 800ABEA4 8CEB0000 */  lw    $t3, ($a3)
/* 0ACAA8 800ABEA8 3C018012 */  lui   $at, %hi(D_80127C18) # $at, 0x8012
/* 0ACAAC 800ABEAC 0C01A748 */  jal   func_80069D20
/* 0ACAB0 800ABEB0 AC2B7C18 */   sw    $t3, %lo(D_80127C18)($at)
/* 0ACAB4 800ABEB4 3C018012 */  lui   $at, %hi(D_80127C1C) # $at, 0x8012
/* 0ACAB8 800ABEB8 0C01A76F */  jal   func_80069DBC
/* 0ACABC 800ABEBC AC227C1C */   sw    $v0, %lo(D_80127C1C)($at)
/* 0ACAC0 800ABEC0 3C0C800E */  lui   $t4, %hi(D_800E2C5C) # $t4, 0x800e
/* 0ACAC4 800ABEC4 8D8C2C5C */  lw    $t4, %lo(D_800E2C5C)($t4)
/* 0ACAC8 800ABEC8 3C018012 */  lui   $at, %hi(D_80127C20) # $at, 0x8012
/* 0ACACC 800ABECC 11800006 */  beqz  $t4, .L800ABEE8
/* 0ACAD0 800ABED0 AC227C20 */   sw    $v0, %lo(D_80127C20)($at)
/* 0ACAD4 800ABED4 8FA40028 */  lw    $a0, 0x28($sp)
/* 0ACAD8 800ABED8 0C02B52E */  jal   func_800AD4B8
/* 0ACADC 800ABEDC 00000000 */   nop   
/* 0ACAE0 800ABEE0 10000064 */  b     .L800AC074
/* 0ACAE4 800ABEE4 00000000 */   nop   
.L800ABEE8:
/* 0ACAE8 800ABEE8 3C028012 */  lui   $v0, %hi(D_80127BB8) # $v0, 0x8012
/* 0ACAEC 800ABEEC 24427BB8 */  addiu $v0, %lo(D_80127BB8) # addiu $v0, $v0, 0x7bb8
/* 0ACAF0 800ABEF0 8C43003C */  lw    $v1, 0x3c($v0)
/* 0ACAF4 800ABEF4 8FA40028 */  lw    $a0, 0x28($sp)
/* 0ACAF8 800ABEF8 1860002F */  blez  $v1, .L800ABFB8
/* 0ACAFC 800ABEFC 0083082A */   slt   $at, $a0, $v1
/* 0ACB00 800ABF00 10200022 */  beqz  $at, .L800ABF8C
/* 0ACB04 800ABF04 00000000 */   nop   
/* 0ACB08 800ABF08 8C4E0004 */  lw    $t6, 4($v0)
/* 0ACB0C 800ABF0C 8C480010 */  lw    $t0, 0x10($v0)
/* 0ACB10 800ABF10 01C40019 */  multu $t6, $a0
/* 0ACB14 800ABF14 8C4C001C */  lw    $t4, 0x1c($v0)
/* 0ACB18 800ABF18 8C4D0000 */  lw    $t5, ($v0)
/* 0ACB1C 800ABF1C 8C59000C */  lw    $t9, 0xc($v0)
/* 0ACB20 800ABF20 8C4B0018 */  lw    $t3, 0x18($v0)
/* 0ACB24 800ABF24 00007812 */  mflo  $t7
/* 0ACB28 800ABF28 01AFC021 */  addu  $t8, $t5, $t7
/* 0ACB2C 800ABF2C AC580000 */  sw    $t8, ($v0)
/* 0ACB30 800ABF30 01040019 */  multu $t0, $a0
/* 0ACB34 800ABF34 8C580028 */  lw    $t8, 0x28($v0)
/* 0ACB38 800ABF38 8C4F0024 */  lw    $t7, 0x24($v0)
/* 0ACB3C 800ABF3C 00004812 */  mflo  $t1
/* 0ACB40 800ABF40 03295021 */  addu  $t2, $t9, $t1
/* 0ACB44 800ABF44 AC4A000C */  sw    $t2, 0xc($v0)
/* 0ACB48 800ABF48 01840019 */  multu $t4, $a0
/* 0ACB4C 800ABF4C 8C4A0034 */  lw    $t2, 0x34($v0)
/* 0ACB50 800ABF50 8C490030 */  lw    $t1, 0x30($v0)
/* 0ACB54 800ABF54 00007012 */  mflo  $t6
/* 0ACB58 800ABF58 016E6821 */  addu  $t5, $t3, $t6
/* 0ACB5C 800ABF5C 00647023 */  subu  $t6, $v1, $a0
/* 0ACB60 800ABF60 03040019 */  multu $t8, $a0
/* 0ACB64 800ABF64 AC4D0018 */  sw    $t5, 0x18($v0)
/* 0ACB68 800ABF68 AC4E003C */  sw    $t6, 0x3c($v0)
/* 0ACB6C 800ABF6C 00004012 */  mflo  $t0
/* 0ACB70 800ABF70 01E8C821 */  addu  $t9, $t7, $t0
/* 0ACB74 800ABF74 AC590024 */  sw    $t9, 0x24($v0)
/* 0ACB78 800ABF78 01440019 */  multu $t2, $a0
/* 0ACB7C 800ABF7C 00006012 */  mflo  $t4
/* 0ACB80 800ABF80 012C5821 */  addu  $t3, $t1, $t4
/* 0ACB84 800ABF84 1000000C */  b     .L800ABFB8
/* 0ACB88 800ABF88 AC4B0030 */   sw    $t3, 0x30($v0)
.L800ABF8C:
/* 0ACB8C 800ABF8C 8C4D0008 */  lw    $t5, 8($v0)
/* 0ACB90 800ABF90 8C580014 */  lw    $t8, 0x14($v0)
/* 0ACB94 800ABF94 8C4F0020 */  lw    $t7, 0x20($v0)
/* 0ACB98 800ABF98 8C48002C */  lw    $t0, 0x2c($v0)
/* 0ACB9C 800ABF9C 8C590038 */  lw    $t9, 0x38($v0)
/* 0ACBA0 800ABFA0 AC40003C */  sw    $zero, 0x3c($v0)
/* 0ACBA4 800ABFA4 AC4D0000 */  sw    $t5, ($v0)
/* 0ACBA8 800ABFA8 AC58000C */  sw    $t8, 0xc($v0)
/* 0ACBAC 800ABFAC AC4F0018 */  sw    $t7, 0x18($v0)
/* 0ACBB0 800ABFB0 AC480024 */  sw    $t0, 0x24($v0)
/* 0ACBB4 800ABFB4 AC590030 */  sw    $t9, 0x30($v0)
.L800ABFB8:
/* 0ACBB8 800ABFB8 3C0A8012 */  lui   $t2, %hi(D_80127BB0) # $t2, 0x8012
/* 0ACBBC 800ABFBC 8D4A7BB0 */  lw    $t2, %lo(D_80127BB0)($t2)
/* 0ACBC0 800ABFC0 8C490000 */  lw    $t1, ($v0)
/* 0ACBC4 800ABFC4 3C058012 */  lui   $a1, %hi(D_80127BF8) # $a1, 0x8012
/* 0ACBC8 800ABFC8 01490019 */  multu $t2, $t1
/* 0ACBCC 800ABFCC 3C018012 */  lui   $at, %hi(D_80127BB4) # $at, 0x8012
/* 0ACBD0 800ABFD0 24A57BF8 */  addiu $a1, %lo(D_80127BF8) # addiu $a1, $a1, 0x7bf8
/* 0ACBD4 800ABFD4 8FA40028 */  lw    $a0, 0x28($sp)
/* 0ACBD8 800ABFD8 00006012 */  mflo  $t4
/* 0ACBDC 800ABFDC 000C5C03 */  sra   $t3, $t4, 0x10
/* 0ACBE0 800ABFE0 AC2B7BB4 */  sw    $t3, %lo(D_80127BB4)($at)
/* 0ACBE4 800ABFE4 84AE0002 */  lh    $t6, 2($a1)
/* 0ACBE8 800ABFE8 84A30000 */  lh    $v1, ($a1)
/* 0ACBEC 800ABFEC 8C580030 */  lw    $t8, 0x30($v0)
/* 0ACBF0 800ABFF0 01C36823 */  subu  $t5, $t6, $v1
/* 0ACBF4 800ABFF4 01B80019 */  multu $t5, $t8
/* 0ACBF8 800ABFF8 00007812 */  mflo  $t7
/* 0ACBFC 800ABFFC 006F4021 */  addu  $t0, $v1, $t7
/* 0ACC00 800AC000 0008CC03 */  sra   $t9, $t0, 0x10
/* 0ACC04 800AC004 0C02B032 */  jal   func_800AC0C8
/* 0ACC08 800AC008 ACB90004 */   sw    $t9, 4($a1)
/* 0ACC0C 800AC00C 3C0A8012 */  lui   $t2, %hi(D_80127BB4) # $t2, 0x8012
/* 0ACC10 800AC010 8D4A7BB4 */  lw    $t2, %lo(D_80127BB4)($t2)
/* 0ACC14 800AC014 3C058012 */  lui   $a1, %hi(D_80127BF8) # $a1, 0x8012
/* 0ACC18 800AC018 19400016 */  blez  $t2, .L800AC074
/* 0ACC1C 800AC01C 24A57BF8 */   addiu $a1, %lo(D_80127BF8) # addiu $a1, $a1, 0x7bf8
/* 0ACC20 800AC020 8CA90004 */  lw    $t1, 4($a1)
/* 0ACC24 800AC024 84AC0000 */  lh    $t4, ($a1)
/* 0ACC28 800AC028 3C0B8012 */  lui   $t3, %hi(D_80127C08) # $t3, 0x8012
/* 0ACC2C 800AC02C 012C082A */  slt   $at, $t1, $t4
/* 0ACC30 800AC030 10200010 */  beqz  $at, .L800AC074
/* 0ACC34 800AC034 3C0D800E */   lui   $t5, %hi(D_800E2914) # $t5, 0x800e
/* 0ACC38 800AC038 8D6B7C08 */  lw    $t3, %lo(D_80127C08)($t3)
/* 0ACC3C 800AC03C 3C01800E */  lui   $at, %hi(D_800E2904) # $at, 0x800e
/* 0ACC40 800AC040 000B7080 */  sll   $t6, $t3, 2
/* 0ACC44 800AC044 01AE6821 */  addu  $t5, $t5, $t6
/* 0ACC48 800AC048 8DAD2914 */  lw    $t5, %lo(D_800E2914)($t5)
/* 0ACC4C 800AC04C 0C02B087 */  jal   func_800AC21C
/* 0ACC50 800AC050 AC2D2904 */   sw    $t5, %lo(D_800E2904)($at)
/* 0ACC54 800AC054 0C02B169 */  jal   func_800AC5A4
/* 0ACC58 800AC058 00000000 */   nop   
/* 0ACC5C 800AC05C 3C028012 */  lui   $v0, %hi(D_80127C08) # $v0, 0x8012
/* 0ACC60 800AC060 24427C08 */  addiu $v0, %lo(D_80127C08) # addiu $v0, $v0, 0x7c08
/* 0ACC64 800AC064 8C580000 */  lw    $t8, ($v0)
/* 0ACC68 800AC068 240F0001 */  li    $t7, 1
/* 0ACC6C 800AC06C 01F84023 */  subu  $t0, $t7, $t8
/* 0ACC70 800AC070 AC480000 */  sw    $t0, ($v0)
.L800AC074:
/* 0ACC74 800AC074 3C198012 */  lui   $t9, %hi(D_80127C0C) # $t9, 0x8012
/* 0ACC78 800AC078 8F397C0C */  lw    $t9, %lo(D_80127C0C)($t9)
/* 0ACC7C 800AC07C 8FAA0018 */  lw    $t2, 0x18($sp)
/* 0ACC80 800AC080 3C098012 */  lui   $t1, %hi(D_80127C10) # $t1, 0x8012
/* 0ACC84 800AC084 AD590000 */  sw    $t9, ($t2)
/* 0ACC88 800AC088 8FAC001C */  lw    $t4, 0x1c($sp)
/* 0ACC8C 800AC08C 8D297C10 */  lw    $t1, %lo(D_80127C10)($t1)
/* 0ACC90 800AC090 3C0B8012 */  lui   $t3, %hi(D_80127C14) # $t3, 0x8012
/* 0ACC94 800AC094 AD890000 */  sw    $t1, ($t4)
/* 0ACC98 800AC098 8FAE0020 */  lw    $t6, 0x20($sp)
/* 0ACC9C 800AC09C 8D6B7C14 */  lw    $t3, %lo(D_80127C14)($t3)
/* 0ACCA0 800AC0A0 3C0D8012 */  lui   $t5, %hi(D_80127C18) # $t5, 0x8012
/* 0ACCA4 800AC0A4 ADCB0000 */  sw    $t3, ($t6)
/* 0ACCA8 800AC0A8 8FAF0024 */  lw    $t7, 0x24($sp)
/* 0ACCAC 800AC0AC 8DAD7C18 */  lw    $t5, %lo(D_80127C18)($t5)
/* 0ACCB0 800AC0B0 00000000 */  nop   
/* 0ACCB4 800AC0B4 ADED0000 */  sw    $t5, ($t7)
/* 0ACCB8 800AC0B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0ACCBC 800AC0BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0ACCC0 800AC0C0 03E00008 */  jr    $ra
/* 0ACCC4 800AC0C4 00000000 */   nop   

