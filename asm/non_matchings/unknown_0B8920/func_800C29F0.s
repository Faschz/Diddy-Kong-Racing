glabel func_800C29F0
/* 0C35F0 800C29F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C35F4 800C29F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C35F8 800C29F8 3C0500FF */  lui   $a1, (0x00FF00FF >> 16) # lui $a1, 0xff
/* 0C35FC 800C29FC 34A500FF */  ori   $a1, (0x00FF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 0C3600 800C2A00 0C01C327 */  jal   allocate_from_main_pool_safe
/* 0C3604 800C2A04 24040780 */   li    $a0, 1920
/* 0C3608 800C2A08 3C038013 */  lui   $v1, %hi(D_8012A7C8) # $v1, 0x8013
/* 0C360C 800C2A0C 2463A7C8 */  addiu $v1, %lo(D_8012A7C8) # addiu $v1, $v1, -0x5838
/* 0C3610 800C2A10 244F03C0 */  addiu $t7, $v0, 0x3c0
/* 0C3614 800C2A14 AC620000 */  sw    $v0, ($v1)
/* 0C3618 800C2A18 AC6F0004 */  sw    $t7, 4($v1)
/* 0C361C 800C2A1C 3C018013 */  lui   $at, %hi(D_8012A7D4) # $at, 0x8013
/* 0C3620 800C2A20 AC20A7D4 */  sw    $zero, %lo(D_8012A7D4)($at)
/* 0C3624 800C2A24 3C018013 */  lui   $at, %hi(D_8012A7B6) # $at, 0x8013
/* 0C3628 800C2A28 A420A7B6 */  sh    $zero, %lo(D_8012A7B6)($at)
/* 0C362C 800C2A2C 3C018013 */  lui   $at, %hi(D_8012A7A8) # $at, 0x8013
/* 0C3630 800C2A30 A420A7A8 */  sh    $zero, %lo(D_8012A7A8)($at)
/* 0C3634 800C2A34 24040020 */  li    $a0, 32
/* 0C3638 800C2A38 3C018013 */  lui   $at, %hi(D_8012A7AA) # $at, 0x8013
/* 0C363C 800C2A3C A424A7AA */  sh    $a0, %lo(D_8012A7AA)($at)
/* 0C3640 800C2A40 3C018013 */  lui   $at, %hi(D_8012A7BA) # $at, 0x8013
/* 0C3644 800C2A44 A420A7BA */  sh    $zero, %lo(D_8012A7BA)($at)
/* 0C3648 800C2A48 3C018013 */  lui   $at, %hi(D_8012A7AE) # $at, 0x8013
/* 0C364C 800C2A4C 3C198000 */  lui   $t9, %hi(osTvType) # $t9, 0x8000
/* 0C3650 800C2A50 8F390300 */  lw    $t9, %lo(osTvType)($t9)
/* 0C3654 800C2A54 A424A7AE */  sh    $a0, %lo(D_8012A7AE)($at)
/* 0C3658 800C2A58 3C018013 */  lui   $at, %hi(D_8012A7B2) # $at, 0x8013
/* 0C365C 800C2A5C 24180120 */  li    $t8, 288
/* 0C3660 800C2A60 17200008 */  bnez  $t9, .L800C2A84
/* 0C3664 800C2A64 A438A7B2 */   sh    $t8, %lo(D_8012A7B2)($at)
/* 0C3668 800C2A68 240800E0 */  li    $t0, 224
/* 0C366C 800C2A6C 3C018013 */  lui   $at, %hi(D_8012A7B0) # $at, 0x8013
/* 0C3670 800C2A70 A428A7B0 */  sh    $t0, %lo(D_8012A7B0)($at)
/* 0C3674 800C2A74 3C018013 */  lui   $at, %hi(D_8012A7B4) # $at, 0x8013
/* 0C3678 800C2A78 240900F8 */  li    $t1, 248
/* 0C367C 800C2A7C 10000007 */  b     .L800C2A9C
/* 0C3680 800C2A80 A429A7B4 */   sh    $t1, %lo(D_8012A7B4)($at)
.L800C2A84:
/* 0C3684 800C2A84 240A00CA */  li    $t2, 202
/* 0C3688 800C2A88 3C018013 */  lui   $at, %hi(D_8012A7B0) # $at, 0x8013
/* 0C368C 800C2A8C A42AA7B0 */  sh    $t2, %lo(D_8012A7B0)($at)
/* 0C3690 800C2A90 3C018013 */  lui   $at, %hi(D_8012A7B4) # $at, 0x8013
/* 0C3694 800C2A94 240B00DE */  li    $t3, 222
/* 0C3698 800C2A98 A42BA7B4 */  sh    $t3, %lo(D_8012A7B4)($at)
.L800C2A9C:
/* 0C369C 800C2A9C 0C0315B4 */  jal   func_800C56D0
/* 0C36A0 800C2AA0 24040006 */   li    $a0, 6
/* 0C36A4 800C2AA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C36A8 800C2AA8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C36AC 800C2AAC 03E00008 */  jr    $ra
/* 0C36B0 800C2AB0 00000000 */   nop   

