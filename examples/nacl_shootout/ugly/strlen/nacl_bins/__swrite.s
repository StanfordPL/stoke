  .text
  .globl __swrite
  .type __swrite, @function

#! file-offset 0x165d80
#! rip-offset  0x125d80
#! capacity    160 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.__swrite:                       #        0x125d80  0      OPC=0     
  movq %rbx, -0x18(%rsp)         #  1     0x125d80  5      OPC=1138  
  movl %esi, %ebx                #  2     0x125d85  2      OPC=1157  
  movq %r12, -0x10(%rsp)         #  3     0x125d87  5      OPC=1138  
  movq %r13, -0x8(%rsp)          #  4     0x125d8c  5      OPC=1138  
  subl $0x18, %esp               #  5     0x125d91  3      OPC=2384  
  addq %r15, %rsp                #  6     0x125d94  3      OPC=72    
  movl %ebx, %ebx                #  7     0x125d97  2      OPC=1157  
  movzwl 0xc(%r15,%rbx,1), %eax  #  8     0x125d99  6      OPC=1301  
  nop                            #  9     0x125d9f  1      OPC=1343  
  movl %ecx, %r13d               #  10    0x125da0  3      OPC=1157  
  movl %edx, %r12d               #  11    0x125da3  3      OPC=1157  
  testb $0x1, %ah                #  12    0x125da6  3      OPC=2443  
  je .L_125de0                   #  13    0x125da9  6      OPC=893   
  nop                            #  14    0x125daf  1      OPC=1343  
  nop                            #  15    0x125db0  1      OPC=1343  
  movl %ebx, %ebx                #  16    0x125db1  2      OPC=1157  
  movswl 0xe(%r15,%rbx,1), %edi  #  17    0x125db3  6      OPC=1279  
  movl $0x2, %edx                #  18    0x125db9  5      OPC=1154  
  xorl %esi, %esi                #  19    0x125dbe  2      OPC=3758  
  nop                            #  20    0x125dc0  1      OPC=1343  
  callq .lseek                   #  21    0x125dc1  5      OPC=260   
  movl %ebx, %ebx                #  22    0x125dc6  2      OPC=1157  
  movzwl 0xc(%r15,%rbx,1), %eax  #  23    0x125dc8  6      OPC=1301  
  nop                            #  24    0x125dce  1      OPC=1343  
  nop                            #  25    0x125dcf  1      OPC=1343  
  nop                            #  26    0x125dd0  1      OPC=1343  
  nop                            #  27    0x125dd1  1      OPC=1343  
  nop                            #  28    0x125dd2  1      OPC=1343  
  nop                            #  29    0x125dd3  1      OPC=1343  
  nop                            #  30    0x125dd4  1      OPC=1343  
  nop                            #  31    0x125dd5  1      OPC=1343  
  nop                            #  32    0x125dd6  1      OPC=1343  
  nop                            #  33    0x125dd7  1      OPC=1343  
  nop                            #  34    0x125dd8  1      OPC=1343  
  nop                            #  35    0x125dd9  1      OPC=1343  
  nop                            #  36    0x125dda  1      OPC=1343  
  nop                            #  37    0x125ddb  1      OPC=1343  
  nop                            #  38    0x125ddc  1      OPC=1343  
  nop                            #  39    0x125ddd  1      OPC=1343  
  nop                            #  40    0x125dde  1      OPC=1343  
  nop                            #  41    0x125ddf  1      OPC=1343  
  nop                            #  42    0x125de0  1      OPC=1343  
  nop                            #  43    0x125de1  1      OPC=1343  
  nop                            #  44    0x125de2  1      OPC=1343  
  nop                            #  45    0x125de3  1      OPC=1343  
  nop                            #  46    0x125de4  1      OPC=1343  
  nop                            #  47    0x125de5  1      OPC=1343  
.L_125de0:                       #        0x125de6  0      OPC=0     
  movl %ebx, %ebx                #  48    0x125de6  2      OPC=1157  
  movswl 0xe(%r15,%rbx,1), %edi  #  49    0x125de8  6      OPC=1279  
  andb $0xef, %ah                #  50    0x125dee  3      OPC=148   
  movl %r13d, %edx               #  51    0x125df1  3      OPC=1157  
  movl %ebx, %ebx                #  52    0x125df4  2      OPC=1157  
  movw %ax, 0xc(%r15,%rbx,1)     #  53    0x125df6  6      OPC=1133  
  movl %r12d, %esi               #  54    0x125dfc  3      OPC=1157  
  movq (%rsp), %rbx              #  55    0x125dff  4      OPC=1161  
  nop                            #  56    0x125e03  1      OPC=1343  
  nop                            #  57    0x125e04  1      OPC=1343  
  nop                            #  58    0x125e05  1      OPC=1343  
  movq 0x8(%rsp), %r12           #  59    0x125e06  5      OPC=1161  
  movq 0x10(%rsp), %r13          #  60    0x125e0b  5      OPC=1161  
  addl $0x18, %esp               #  61    0x125e10  3      OPC=65    
  addq %r15, %rsp                #  62    0x125e13  3      OPC=72    
  jmpq .write                    #  63    0x125e16  5      OPC=930   
  nop                            #  64    0x125e1b  1      OPC=1343  
  nop                            #  65    0x125e1c  1      OPC=1343  
  nop                            #  66    0x125e1d  1      OPC=1343  
  nop                            #  67    0x125e1e  1      OPC=1343  
  nop                            #  68    0x125e1f  1      OPC=1343  
  nop                            #  69    0x125e20  1      OPC=1343  
  nop                            #  70    0x125e21  1      OPC=1343  
  nop                            #  71    0x125e22  1      OPC=1343  
  nop                            #  72    0x125e23  1      OPC=1343  
  nop                            #  73    0x125e24  1      OPC=1343  
  nop                            #  74    0x125e25  1      OPC=1343  
                                                                     
.size __swrite, .-__swrite

