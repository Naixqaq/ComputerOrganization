

![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124226.png)

单周期硬布线：![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124251.png)

多周期微程序![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124315.png)

![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124329.png)



![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124342.png)

1)立即数寻址（immediate addressing），操作数是位于指令自身中的常数。

2)寄存器寻址（register addressing），操作数是寄存器。

3)基址寻址（base addressing)或偏移寻址( displacement addressing），操作数在内存中，其地址是指令中基址寄存器和常数的和。

4）PC相对寻址（PC-relative addressing），地址是PC和指令中常数的和。

5)伪直接寻址（pseudodirect addressing），跳转地址由指令中26位字段和PC高位相连而成。116硬件/软件接口　虽然我们把MIPS系统结构按32位地址描述，但是几乎所有的微处理器(包括MIPS)都能进行64位地址扩展(见附录E和2.18节)。这些扩展主要是针对大型程序的需要。指令集的扩展使得体系结构发展的同时，保持软件和下一代体系结构的向上兼容性。

- LW  从存储器中读取一个字的数据到寄存器中  LW R1, 0(R2)
  - **基址寻址**

![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124413.png)

- SW  把一个字的数据从寄存器存储到存储器中  SW R1, 0(R2)

  - **基址寻址**

  ![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124423.png)

- beq: 数据跳转指令，标志寄存器中Z标志位等于零时, 跳转到BEQ后标签处

  - **PC相对寻址**

  ![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124506.png)

- bne: 数据跳转指令，标志寄存器中Z标志位不等于零时, 跳转到BNE后标签处　

  ![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124522.png)

- SLT  如果R2的值小于R3，那么设置R1的值为1，否则设置R1的值为0  SLT R1,R2,R3

  ![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124531.png)

- ADDI  把一个寄存器的内容加上一个立即数  ADDI R1,R2,#3

  - **无间址周期**

  ![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124545.png)

  

- add

  - **无间址周期**

  ![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124601.png)

- Syscall

  -  **无间址周期**
  
  ![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124633.png)



R

![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124659.png)

I

![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124712.png)

J

![](https://lyxf2000-1259802619.cos.ap-beijing.myqcloud.com/20200210124729.png)



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

