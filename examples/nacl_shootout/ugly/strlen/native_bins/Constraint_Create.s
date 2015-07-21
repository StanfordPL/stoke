  .text
  .globl Constraint_Create
  .type Constraint_Create, @function

#! file-offset 0x5c3c
#! rip-offset  0x405c3c
#! capacity    121 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.Constraint_Create:             #        0x405c3c  0      OPC=0     
  pushq %rbp                    #  1     0x405c3c  1      OPC=1861  
  pushq %rbx                    #  2     0x405c3d  1      OPC=1861  
  subq $0x8, %rsp               #  3     0x405c3e  4      OPC=2389  
  movl %edi, %ebx               #  4     0x405c42  2      OPC=1157  
  movl %esi, %ebp               #  5     0x405c44  2      OPC=1157  
  leal -0x1(%rdi), %eax         #  6     0x405c46  3      OPC=1066  
  cltq                          #  7     0x405c49  2      OPC=263   
  leaq 0x28(,%rax,8), %rdi      #  8     0x405c4b  8      OPC=1069  
  callq .malloc_plt             #  9     0x405c53  5      OPC=260   
  testq %rax, %rax              #  10    0x405c58  3      OPC=2438  
  je .L_405cab                  #  11    0x405c5b  6      OPC=893   
  nop                           #  12    0x405c61  1      OPC=1343  
  nop                           #  13    0x405c62  1      OPC=1343  
  movq $0x405770, (%rax)        #  14    0x405c63  7      OPC=1137  
  movl $0x0, 0x8(%rax)          #  15    0x405c6a  7      OPC=1135  
  movl %ebp, 0xc(%rax)          #  16    0x405c71  3      OPC=1136  
  movb $0xff, 0x10(%rax)        #  17    0x405c74  4      OPC=1140  
  movb $0x0, 0x11(%rax)         #  18    0x405c78  4      OPC=1140  
  xorl %edx, %edx               #  19    0x405c7c  2      OPC=3758  
.L_405c78:                      #        0x405c7e  0      OPC=0     
  movb $0x0, 0x13(%rax,%rdx,1)  #  20    0x405c7e  5      OPC=1140  
  addq $0x1, %rdx               #  21    0x405c83  4      OPC=70    
  cmpq $0x7, %rdx               #  22    0x405c87  4      OPC=475   
  jne .L_405c78                 #  23    0x405c8b  6      OPC=963   
  nop                           #  24    0x405c91  1      OPC=1343  
  nop                           #  25    0x405c92  1      OPC=1343  
  movb %bl, 0x12(%rax)          #  26    0x405c93  3      OPC=1141  
  movsbl %bl, %edi              #  27    0x405c96  3      OPC=1282  
  xorb %dl, %dl                 #  28    0x405c99  2      OPC=3767  
  testl %edi, %edi              #  29    0x405c9b  2      OPC=2436  
  jle .L_405ca4                 #  30    0x405c9d  6      OPC=919   
  nop                           #  31    0x405ca3  1      OPC=1343  
  nop                           #  32    0x405ca4  1      OPC=1343  
.L_405c93:                      #        0x405ca5  0      OPC=0     
  movq $0x0, 0x20(%rax,%rdx,8)  #  33    0x405ca5  9      OPC=1137  
  addq $0x1, %rdx               #  34    0x405cae  4      OPC=70    
  cmpl %edx, %edi               #  35    0x405cb2  2      OPC=472   
  jg .L_405c93                  #  36    0x405cb4  6      OPC=901   
  nop                           #  37    0x405cba  1      OPC=1343  
  nop                           #  38    0x405cbb  1      OPC=1343  
.L_405ca4:                      #        0x405cbc  0      OPC=0     
  addq $0x8, %rsp               #  39    0x405cbc  4      OPC=70    
  popq %rbx                     #  40    0x405cc0  1      OPC=1694  
  popq %rbp                     #  41    0x405cc1  1      OPC=1694  
  retq                          #  42    0x405cc2  1      OPC=1978  
.L_405cab:                      #        0x405cc3  0      OPC=0     
  movl $0x408b01, %edi          #  43    0x405cc3  5      OPC=1154  
  callq .Error                  #  44    0x405cc8  5      OPC=260   
                                                                    
.size Constraint_Create, .-Constraint_Create

