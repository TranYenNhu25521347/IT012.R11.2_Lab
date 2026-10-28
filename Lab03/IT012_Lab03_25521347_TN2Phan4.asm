# Ho va Ten: Tran Yen Nhu
# MSSV: 25521347
# Ma nguon 4 - chuyen cau lenh thanh lenh hop ngu
.text
.globl main
main:
    addi $s0, $zero, 8       # y = 8
    addi $s1, $zero, 5       # z = 5
    addi $s2, $zero, 3       # w = 3
 
    # >>> cac lenh cho x1, x2, x3 va x4
    # x1
    Add $t5, $s0, $s1   # t5 = y + z
    Add $t0, $t5, $s2   # x1 = t0 = y + z + w
    
    #x2
    Add $t5, $s0, $s1  # t5 = y + z
    Addi $t1, $s2, 5  # x2 = t1 = w + 5
    Sub $t1, $t5, $t1  # x2 = t1 =(y + z_) - (w + 5)
    
    #x3
    Add $t2, $zero, $s0 # x3 = t2 = 0 + y
    
    #x4
    Sub $t3, $s1, $s0 # x4 = t3 = z - y

    li   $v0, 10
    syscall
