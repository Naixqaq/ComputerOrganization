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
lw $s0 256($s6)#取第一个数作为初始加和
ave_select:
lui $t0 0#重置
addi $s6 $s6 4
lw $s1,256($s6)#存储接下来的数
add $s0 $s0 $s1 #加和

slt $t0 $s6 $s7 #判断是否结束，若s6<s7则t0=1，没结束
bne $t0 $0 ave_select

srl $s0 $s0 3#右移3位，除8
sw $s0 288($0)#存储ave

addi   $v0,$zero,10         # system call for exit
syscall                  # we are out of here.  