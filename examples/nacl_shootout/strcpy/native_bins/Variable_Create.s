  .text
  .globl Variable_Create
  .type Variable_Create, @function

#! file-offset 0x5b10
#! rip-offset  0x405b10
#! capacity    129 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.Variable_Create:            #        0x405b10  0      OPC=0     
  pushq %r12                 #  1     0x405b10  2      OPC=1861  
  pushq %rbp                 #  2     0x405b12  1      OPC=1861  
  pushq %rbx                 #  3     0x405b13  1      OPC=1861  
  movq %rdi, %rbp            #  4     0x405b14  3      OPC=1162  
  movq %rsi, %r12            #  5     0x405b17  3      OPC=1162  
  movl $0x38, %edi           #  6     0x405b1a  5      OPC=1154  
  callq .malloc_plt          #  7     0x405b1f  5      OPC=260   
  movq %rax, %rbx            #  8     0x405b24  3      OPC=1162  
  testq %rax, %rax           #  9     0x405b27  3      OPC=2438  
  je .L_405b87               #  10    0x405b2a  6      OPC=893   
  nop                        #  11    0x405b30  1      OPC=1343  
  nop                        #  12    0x405b31  1      OPC=1343  
  movq %r12, (%rax)          #  13    0x405b32  3      OPC=1138  
  movl $0x2, %edi            #  14    0x405b35  5      OPC=1154  
  callq .List_Create         #  15    0x405b3a  5      OPC=260   
  movq %rax, 0x8(%rbx)       #  16    0x405b3f  4      OPC=1138  
  movq $0x0, 0x10(%rbx)      #  17    0x405b43  8      OPC=1137  
  movq $0x0, 0x18(%rbx)      #  18    0x405b4b  8      OPC=1137  
  movl $0x6, 0x20(%rbx)      #  19    0x405b53  7      OPC=1135  
  movl $0x1, 0x24(%rbx)      #  20    0x405b5a  7      OPC=1135  
  leaq 0x28(%rbx), %rdi      #  21    0x405b61  4      OPC=1069  
  movl $0xa, %edx            #  22    0x405b65  5      OPC=1154  
  movq %rbp, %rsi            #  23    0x405b6a  3      OPC=1162  
  callq .strncpy_plt         #  24    0x405b6d  5      OPC=260   
  movb $0x0, 0x31(%rbx)      #  25    0x405b72  4      OPC=1140  
  movq %rbx, %rsi            #  26    0x405b76  3      OPC=1162  
  movq 0x21f8d6(%rip), %rdi  #  27    0x405b79  7      OPC=1161  
  callq .List_Add            #  28    0x405b80  5      OPC=260   
  movq %rbx, %rax            #  29    0x405b85  3      OPC=1162  
  popq %rbx                  #  30    0x405b88  1      OPC=1694  
  popq %rbp                  #  31    0x405b89  1      OPC=1694  
  popq %r12                  #  32    0x405b8a  2      OPC=1694  
  retq                       #  33    0x405b8c  1      OPC=1978  
.L_405b87:                   #        0x405b8d  0      OPC=0     
  movl $0x408aa1, %edi       #  34    0x405b8d  5      OPC=1154  
  callq .Error               #  35    0x405b92  5      OPC=260   
                                                                 
.size Variable_Create, .-Variable_Create

