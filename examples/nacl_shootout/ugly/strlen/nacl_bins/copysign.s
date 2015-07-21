  .text
  .globl copysign
  .type copysign, @function

#! file-offset 0x149360
#! rip-offset  0x109360
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.copysign:                 #        0x109360  0      OPC=0     
  movsd %xmm0, -0x8(%rsp)  #  1     0x109360  6      OPC=1262  
  movq -0x8(%rsp), %rdx    #  2     0x109366  5      OPC=1161  
  movq -0x8(%rsp), %rax    #  3     0x10936b  5      OPC=1161  
  movq %xmm1, -0x10(%rsp)  #  4     0x109370  6      OPC=1242  
  movq -0x10(%rsp), %rcx   #  5     0x109376  5      OPC=1161  
  shrq $0x20, %rdx         #  6     0x10937b  4      OPC=2315  
  nop                      #  7     0x10937f  1      OPC=1343  
  andl $0xffffffff, %eax   #  8     0x109380  6      OPC=131   
  nop                      #  9     0x109386  1      OPC=1343  
  nop                      #  10    0x109387  1      OPC=1343  
  nop                      #  11    0x109388  1      OPC=1343  
  shrq $0x20, %rcx         #  12    0x109389  4      OPC=2315  
  andl $0x7fffffff, %edx   #  13    0x10938d  6      OPC=131   
  andl $0x80000000, %ecx   #  14    0x109393  6      OPC=131   
  orl %ecx, %edx           #  15    0x109399  2      OPC=1380  
  shlq $0x20, %rdx         #  16    0x10939b  4      OPC=2272  
  orq %rdx, %rax           #  17    0x10939f  3      OPC=1385  
  nop                      #  18    0x1093a2  1      OPC=1343  
  nop                      #  19    0x1093a3  1      OPC=1343  
  nop                      #  20    0x1093a4  1      OPC=1343  
  nop                      #  21    0x1093a5  1      OPC=1343  
  movq %rax, -0x8(%rsp)    #  22    0x1093a6  5      OPC=1138  
  movsd -0x8(%rsp), %xmm0  #  23    0x1093ab  6      OPC=1263  
  popq %r11                #  24    0x1093b1  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  25    0x1093b3  7      OPC=131   
  nop                      #  26    0x1093ba  1      OPC=1343  
  nop                      #  27    0x1093bb  1      OPC=1343  
  nop                      #  28    0x1093bc  1      OPC=1343  
  nop                      #  29    0x1093bd  1      OPC=1343  
  addq %r15, %r11          #  30    0x1093be  3      OPC=72    
  jmpq %r11                #  31    0x1093c1  3      OPC=928   
  nop                      #  32    0x1093c4  1      OPC=1343  
  nop                      #  33    0x1093c5  1      OPC=1343  
  nop                      #  34    0x1093c6  1      OPC=1343  
  nop                      #  35    0x1093c7  1      OPC=1343  
  nop                      #  36    0x1093c8  1      OPC=1343  
  nop                      #  37    0x1093c9  1      OPC=1343  
  nop                      #  38    0x1093ca  1      OPC=1343  
  nop                      #  39    0x1093cb  1      OPC=1343  
  nop                      #  40    0x1093cc  1      OPC=1343  
                                                               
.size copysign, .-copysign

