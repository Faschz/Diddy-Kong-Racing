.late_rodata
glabel D_800E9550
.double -0.0
glabel D_800E9558
.double -0.0

.text
glabel __f_to_ll
/* 0CA74C 800C9B4C 46006109 */  trunc.l.s $f4, $f12
/* 0CA750 800C9B50 44222000 */  dmfc1 $v0, $f4
/* 0CA754 800C9B54 00000000 */  nop   
/* 0CA758 800C9B58 0002183C */  dsll32 $v1, $v0, 0
/* 0CA75C 800C9B5C 0003183F */  dsra32 $v1, $v1, 0
/* 0CA760 800C9B60 03E00008 */  jr    $ra
/* 0CA764 800C9B64 0002103F */   dsra32 $v0, $v0, 0

glabel __d_to_ull
/* 0CA768 800C9B68 444EF800 */  cfc1  $t6, $31
/* 0CA76C 800C9B6C 24020001 */  li    $v0, 1
/* 0CA770 800C9B70 44C2F800 */  ctc1  $v0, $31
/* 0CA774 800C9B74 00000000 */  nop   
/* 0CA778 800C9B78 46206125 */  cvt.l.d $f4, $f12
/* 0CA77C 800C9B7C 4442F800 */  cfc1  $v0, $31
/* 0CA780 800C9B80 00000000 */  nop   
/* 0CA784 800C9B84 30410004 */  andi  $at, $v0, 4
/* 0CA788 800C9B88 30420078 */  andi  $v0, $v0, 0x78
/* 0CA78C 800C9B8C 10400015 */  beqz  $v0, .L800C9BE4
/* 0CA790 800C9B90 3C0143E0 */   li    $at, 0x43E00000 # 448.000000
/* 0CA794 800C9B94 44812800 */  mtc1  $at, $f5
/* 0CA798 800C9B98 44802000 */  mtc1  $zero, $f4
/* 0CA79C 800C9B9C 24020001 */  li    $v0, 1
/* 0CA7A0 800C9BA0 46246101 */  sub.d $f4, $f12, $f4
/* 0CA7A4 800C9BA4 44C2F800 */  ctc1  $v0, $31
/* 0CA7A8 800C9BA8 00000000 */  nop   
/* 0CA7AC 800C9BAC 46202125 */  cvt.l.d $f4, $f4
/* 0CA7B0 800C9BB0 4442F800 */  cfc1  $v0, $31
/* 0CA7B4 800C9BB4 00000000 */  nop   
/* 0CA7B8 800C9BB8 30410004 */  andi  $at, $v0, 4
/* 0CA7BC 800C9BBC 30420078 */  andi  $v0, $v0, 0x78
/* 0CA7C0 800C9BC0 14400006 */  bnez  $v0, .L800C9BDC
/* 0CA7C4 800C9BC4 00000000 */   nop   
/* 0CA7C8 800C9BC8 3C0F800F */  lui   $t7, %hi(D_800E9550) # $t7, 0x800f
/* 0CA7CC 800C9BCC DDEF9550 */  ld    $t7, %lo(D_800E9550)($t7)
/* 0CA7D0 800C9BD0 44222000 */  dmfc1 $v0, $f4
/* 0CA7D4 800C9BD4 10000007 */  b     .L800C9BF4
/* 0CA7D8 800C9BD8 004F1025 */   or    $v0, $v0, $t7
.L800C9BDC:
/* 0CA7DC 800C9BDC 10000005 */  b     .L800C9BF4
/* 0CA7E0 800C9BE0 2402FFFF */   li    $v0, -1
.L800C9BE4:
/* 0CA7E4 800C9BE4 44222000 */  dmfc1 $v0, $f4
/* 0CA7E8 800C9BE8 00000000 */  nop   
/* 0CA7EC 800C9BEC 0440FFFB */  bltz  $v0, .L800C9BDC
/* 0CA7F0 800C9BF0 00000000 */   nop   
.L800C9BF4:
/* 0CA7F4 800C9BF4 44CEF800 */  ctc1  $t6, $31
/* 0CA7F8 800C9BF8 0002183C */  dsll32 $v1, $v0, 0
/* 0CA7FC 800C9BFC 0003183F */  dsra32 $v1, $v1, 0
/* 0CA800 800C9C00 03E00008 */  jr    $ra
/* 0CA804 800C9C04 0002103F */   dsra32 $v0, $v0, 0

glabel __f_to_ull
/* 0CA808 800C9C08 444EF800 */  cfc1  $t6, $31
/* 0CA80C 800C9C0C 24020001 */  li    $v0, 1
/* 0CA810 800C9C10 44C2F800 */  ctc1  $v0, $31
/* 0CA814 800C9C14 00000000 */  nop   
/* 0CA818 800C9C18 46006125 */  cvt.l.s $f4, $f12
/* 0CA81C 800C9C1C 4442F800 */  cfc1  $v0, $31
/* 0CA820 800C9C20 00000000 */  nop   
/* 0CA824 800C9C24 30410004 */  andi  $at, $v0, 4
/* 0CA828 800C9C28 30420078 */  andi  $v0, $v0, 0x78
/* 0CA82C 800C9C2C 10400014 */  beqz  $v0, .L800C9C80
/* 0CA830 800C9C30 3C015F00 */   li    $at, 0x5F000000 # 9223372036854775808.000000
/* 0CA834 800C9C34 44812000 */  mtc1  $at, $f4
/* 0CA838 800C9C38 24020001 */  li    $v0, 1
/* 0CA83C 800C9C3C 46046101 */  sub.s $f4, $f12, $f4
/* 0CA840 800C9C40 44C2F800 */  ctc1  $v0, $31
/* 0CA844 800C9C44 00000000 */  nop   
/* 0CA848 800C9C48 46002125 */  cvt.l.s $f4, $f4
/* 0CA84C 800C9C4C 4442F800 */  cfc1  $v0, $31
/* 0CA850 800C9C50 00000000 */  nop   
/* 0CA854 800C9C54 30410004 */  andi  $at, $v0, 4
/* 0CA858 800C9C58 30420078 */  andi  $v0, $v0, 0x78
/* 0CA85C 800C9C5C 14400006 */  bnez  $v0, .L800C9C78
/* 0CA860 800C9C60 00000000 */   nop   
/* 0CA864 800C9C64 3C0F800F */  lui   $t7, %hi(D_800E9558) # $t7, 0x800f
/* 0CA868 800C9C68 DDEF9558 */  ld    $t7, %lo(D_800E9558)($t7)
/* 0CA86C 800C9C6C 44222000 */  dmfc1 $v0, $f4
/* 0CA870 800C9C70 10000007 */  b     .L800C9C90
/* 0CA874 800C9C74 004F1025 */   or    $v0, $v0, $t7
.L800C9C78:
/* 0CA878 800C9C78 10000005 */  b     .L800C9C90
/* 0CA87C 800C9C7C 2402FFFF */   li    $v0, -1
.L800C9C80:
/* 0CA880 800C9C80 44222000 */  dmfc1 $v0, $f4
/* 0CA884 800C9C84 00000000 */  nop   
/* 0CA888 800C9C88 0440FFFB */  bltz  $v0, .L800C9C78
/* 0CA88C 800C9C8C 00000000 */   nop   
.L800C9C90:
/* 0CA890 800C9C90 44CEF800 */  ctc1  $t6, $31
/* 0CA894 800C9C94 0002183C */  dsll32 $v1, $v0, 0
/* 0CA898 800C9C98 0003183F */  dsra32 $v1, $v1, 0
/* 0CA89C 800C9C9C 03E00008 */  jr    $ra
/* 0CA8A0 800C9CA0 0002103F */   dsra32 $v0, $v0, 0

glabel __ll_to_d
/* 0CA8A4 800C9CA4 AFA40000 */  sw    $a0, ($sp)
/* 0CA8A8 800C9CA8 AFA50004 */  sw    $a1, 4($sp)
/* 0CA8AC 800C9CAC DFAE0000 */  ld    $t6, ($sp)
/* 0CA8B0 800C9CB0 44AE2000 */  dmtc1 $t6, $f4
/* 0CA8B4 800C9CB4 03E00008 */  jr    $ra
/* 0CA8B8 800C9CB8 46A02021 */   cvt.d.l $f0, $f4

