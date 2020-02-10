.text 
lui $t0 7
sw $t0,256($0)
lui $t0 9
sw $t0,260($0)
lui $t0 5
sw $t0,264($0)
lui $t0 8
sw $t0,268($0)
lui $t0 2
sw $t0,272($0)
lui $t0 4
sw $t0,276($0)
lui $t0 6
sw $t0,280($0)
lui $t0 3
sw $t0,284($0)

lui $s7 28#每次作为最终计数退出判断标准若s6=s7则退出
lui $s6 0#作为取数的偏移
lw $s0 256($s6)#取第一个数作为初始比较
min_select:
lui $t0 0#重置
addi $s6 $s6 4
lw $s1,256($s6)#取第二个数比较
slt $t0 $s0 $s1
beq $t0 $0  min_select_next#若s0>s1则更新s0即最小值为s1的值

lui $t0 0#重置
slt $t0 $s6 $s7 #判断是否结束，若s6<s7则t0=1，没结束
bne $t0 $0 min_select #t0=1，没结束跳转回循环

sw $s0 288($0)# 否则判断结束，存储最小值
addi   $v0,$zero,10         # system call for exit
syscall                  # we are out of here.  

min_select_next:
lui $t0 0#重置
addi $s0 $s1 0 #更新s0即最小值为s1的值

slt $t0 $s6 $s7 #判断是否结束，若s6<s7则t0=1，没结束
bne $t0 $0 min_select#t0=1，没结束跳转回循环

sw $s0 288($0)# 否则判断结束，存储最小值
addi   $v0,$zero,10         # system call for exit
syscall                  # we are out of here.  