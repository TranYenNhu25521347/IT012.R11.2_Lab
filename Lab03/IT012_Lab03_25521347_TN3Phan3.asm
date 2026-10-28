# Ho va Ten: Tran Yen Nhu
# MSSV: 25521347
.data
prompt: .asciiz "Nhap chi so (kWh): "
m1:     .asciiz "Thang 1: "
m2:     .asciiz "Thang 2: "
m3:     .asciiz "Thang 3: "
tot:    .asciiz "Tong:    "
nl:     .asciiz "\n"

.text
.globl main

main :
# Nhap chi so dau
    li $v0, 4
    la $a0, prompt
    syscall 
    li $v0, 5     #nhap so nguyen
    syscall
    add $s0, $zero, $v0
    
# Nhap gia tri thang 1
    li $v0, 4
    la $a0, m1
    syscall 
    li $v0, 5     #nhap so nguyen
    syscall
    add $s1, $zero, $v0
    
# Nhap gia tri thang 2
    li $v0, 4
    la $a0, m2
    syscall 
    li $v0, 5     #nhap so nguyen
    syscall
    add $s2, $zero, $v0
    
# Nhap gia tri thang 3
    li $v0, 4
    la $a0, m3
    syscall 
    li $v0, 5     #nhap so nguyen
    syscall
    add $s3, $zero, $v0

#Tinh luong da dung cua tung thang
    sub $t0, $s1, $s0
    sub $t1, $s2, $s1
    sub $t2, $s3, $s2

#Tibh tong luong da su dung cua cac thang
   add $t5, $t0, $t1
   add $t3, $t5, $t2

# In Thang 1
    li  $v0, 4
    la  $a0, m1
    syscall
    li  $v0, 1
    add $a0, $t0, $zero
    syscall
    li  $v0, 4
    la  $a0, nl
    syscall

# In Thang 2
    li  $v0, 4
    la  $a0, m2
    syscall
    li  $v0, 1
    add $a0, $t1, $zero
    syscall
    li  $v0, 4
    la  $a0, nl
    syscall

# In Thang 3
    li  $v0, 4
    la  $a0, m3
    syscall
    li  $v0, 1
    add $a0, $t2, $zero
    syscall
    li  $v0, 4
    la  $a0, nl
    syscall

# In Tong
    li  $v0, 4
    la  $a0, tot
    syscall
    li  $v0, 1
    add $a0, $t3, $zero
    syscall
    li  $v0, 4
    la  $a0, nl
    syscall

    li  $v0, 10
    syscall