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

lui $s7 28#ÿ����Ϊ���ռ����˳��жϱ�׼��s6=s7���˳�
lui $s6 0#��Ϊȡ����ƫ��
lw $s0 256($s6)#ȡ��һ������Ϊ��ʼ�Ӻ�
ave_select:
lui $t0 0#����
addi $s6 $s6 4
lw $s1,256($s6)#�洢����������
add $s0 $s0 $s1 #�Ӻ�

slt $t0 $s6 $s7 #�ж��Ƿ��������s6<s7��t0=1��û����
bne $t0 $0 ave_select

srl $s0 $s0 3#����3λ����8
sw $s0 288($0)#�洢ave

addi   $v0,$zero,10         # system call for exit
syscall                  # we are out of here.  