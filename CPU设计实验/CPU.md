 	Z![1575206621581](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206621581.png)

单周期硬布线：![1575198357720](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575198357720.png)

多周期微程序![1575339846365](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575339846365.png)

![1575205171420](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575205171420.png)



![1575205197895](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575205197895.png)

1)立即数寻址（immediate addressing），操作数是位于指令自身中的常数。

2)寄存器寻址（register addressing），操作数是寄存器。

3)基址寻址（base addressing)或偏移寻址( displacement addressing），操作数在内存中，其地址是指令中基址寄存器和常数的和。

4）PC相对寻址（PC-relative addressing），地址是PC和指令中常数的和。

5)伪直接寻址（pseudodirect addressing），跳转地址由指令中26位字段和PC高位相连而成。116硬件/软件接口　虽然我们把MIPS系统结构按32位地址描述，但是几乎所有的微处理器(包括MIPS)都能进行64位地址扩展(见附录E和2.18节)。这些扩展主要是针对大型程序的需要。指令集的扩展使得体系结构发展的同时，保持软件和下一代体系结构的向上兼容性。

- LW  从存储器中读取一个字的数据到寄存器中  LW R1, 0(R2)
  - **基址寻址**

![1575206013896](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206013896.png)

![1575206021075](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206021075.png)

- SW  把一个字的数据从寄存器存储到存储器中  SW R1, 0(R2)

  - **基址寻址**

  ![1575206107632](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206107632.png)

  ![1575206073775](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206073775.png)

- beq: 数据跳转指令，标志寄存器中Z标志位等于零时, 跳转到BEQ后标签处

  - **PC相对寻址**

  ![1575206245819](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206245819.png)

  ![1575206184638](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206184638.png)

- bne: 数据跳转指令，标志寄存器中Z标志位不等于零时, 跳转到BNE后标签处　

  ![1575206272515](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206272515.png)

  ![1575206203935](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206203935.png)

- SLT  如果R2的值小于R3，那么设置R1的值为1，否则设置R1的值为0  SLT R1,R2,R3

  ![1575206334135](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206334135.png)

  ![1575206295772](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206295772.png)

- ADDI  把一个寄存器的内容加上一个立即数  ADDI R1,R2,#3

  - **无间址周期**

  ![1575206412933](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206412933.png)

  ![1575206375856](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206375856.png)

  

- add

  - **无间址周期**

  ![1575206460961](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206460961.png)

  ![1575206444932](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206444932.png)

- Syscall

  -  **无间址周期**

![1575206506568](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1575206506568.png)



​																																					0/hex



![1577153103651](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1577153103651.png)

R

![1577096757974](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1577096757974.png)

![1577104421101](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1577104421101.png)

I

![1577096542226](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1577096542226.png)

![1577104482554](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1577104482554.png)

J![1577097474089](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1577097474089.png)

![1577104442310](C:\Users\源\AppData\Roaming\Typora\typora-user-images\1577104442310.png)

| REGISTER | NAME    | USAGE                                                        |
| -------- | ------- | ------------------------------------------------------------ |
| $0       | $zero   | 常量0(constant value 0)                                      |
| $1       | $at     | 保留给汇编器(Reserved for assembler)                         |
| $2-$3    | $v0-$v1 | 函数调用返回值(values for results and expression evaluation) |
| $4-$7    | $a0-$a3 | 函数调用参数(arguments)                                      |
| $8-$15   | $t0-$t7 | 暂时的(或随便用的)                                           |
| $16-$23  | $s0-$s7 | 保存的(或如果用，需要SAVE/RESTORE的)(saved)                  |
| $24-$25  | $t8-$t9 | 暂时的(或随便用的)                                           |
| $28      | $gp     | 全局指针(Global Pointer)                                     |
| $29      | $sp     | 堆栈指针(Stack Pointer)                                      |
| $30      | $fp     | 帧指针(Frame Pointer)                                        |
| $31      | $ra     | 返回地址(return address)                                     |

