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
lw $s0 256($s6)#ȡ��һ������Ϊ��ʼ�Ƚ�
min_select:
lui $t0 0#����
addi $s6 $s6 4
lw $s1,256($s6)#ȡ�ڶ������Ƚ�
slt $t0 $s0 $s1
beq $t0 $0  min_select_next#��s0>s1�����s0����СֵΪs1��ֵ

lui $t0 0#����
slt $t0 $s6 $s7 #�ж��Ƿ��������s6<s7��t0=1��û����
bne $t0 $0 min_select #t0=1��û������ת��ѭ��

sw $s0 288($0)# �����жϽ������洢��Сֵ
addi   $v0,$zero,10         # system call for exit
syscall                  # we are out of here.  

min_select_next:
lui $t0 0#����
addi $s0 $s1 0 #����s0����СֵΪs1��ֵ

slt $t0 $s6 $s7 #�ж��Ƿ��������s6<s7��t0=1��û����
bne $t0 $0 min_select#t0=1��û������ת��ѭ��

sw $s0 288($0)# �����жϽ������洢��Сֵ
addi   $v0,$zero,10         # system call for exit
syscall                  # we are out of here.  