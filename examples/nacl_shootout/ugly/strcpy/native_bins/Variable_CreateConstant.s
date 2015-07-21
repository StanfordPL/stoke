  .text
  .globl Variable_CreateConstant
  .type Variable_CreateConstant, @function

#! file-offset 0x5b91
#! rip-offset  0x405b91
#! capacity    126 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.Variable_CreateConstant:    #        0x405b91  0      OPC=0     
  pushq %r12                 #  1     0x405b91  2      OPC=1861  
  pushq %rbp                 #  2     0x405b93  1      OPC=1861  
  pushq %rbx                 #  3     0x405b94  1      OPC=1861  
  movq %rdi, %rbp            #  4     0x405b95  3      OPC=1162  
  movq %rsi, %r12            #  5     0x405b98  3      OPC=1162  
  movl $0x38, %edi           #  6     0x405b9b  5      OPC=1154  
  callq .malloc_plt          #  7     0x405ba0  5      OPC=260   
  movq %rax, %rbx            #  8     0x405ba5  3      OPC=1162  
  testq %rax, %rax           #  9     0x405ba8  3      OPC=2438  
  je .L_405c05               #  10    0x405bab  6      OPC=893   
  nop                        #  11    0x405bb1  1      OPC=1343  
  nop                        #  12    0x405bb2  1      OPC=1343  
  movq %r12, (%rax)          #  13    0x405bb3  3      OPC=1138  
  xorl %edi, %edi            #  14    0x405bb6  2      OPC=3758  
  callq .List_Create         #  15    0x405bb8  5      OPC=260   
  movq %rax, 0x8(%rbx)       #  16    0x405bbd  4      OPC=1138  
  movq $0x0, 0x10(%rbx)      #  17    0x405bc1  8      OPC=1137  
  movq $0x0, 0x18(%rbx)      #  18    0x405bc9  8      OPC=1137  
  movl $0x0, 0x20(%rbx)      #  19    0x405bd1  7      OPC=1135  
  movl $0x1, 0x24(%rbx)      #  20    0x405bd8  7      OPC=1135  
  leaq 0x28(%rbx), %rdi      #  21    0x405bdf  4      OPC=1069  
  movl $0xa, %edx            #  22    0x405be3  5      OPC=1154  
  movq %rbp, %rsi            #  23    0x405be8  3      OPC=1162  
  callq .strncpy_plt         #  24    0x405beb  5      OPC=260   
  movb $0x0, 0x31(%rbx)      #  25    0x405bf0  4      OPC=1140  
  movq %rbx, %rsi            #  26    0x405bf4  3      OPC=1162  
  movq 0x21f858(%rip), %rdi  #  27    0x405bf7  7      OPC=1161  
  callq .List_Add            #  28    0x405bfe  5      OPC=260   
  movq %rbx, %rax            #  29    0x405c03  3      OPC=1162  
  popq %rbx                  #  30    0x405c06  1      OPC=1694  
  popq %rbp                  #  31    0x405c07  1      OPC=1694  
  popq %r12                  #  32    0x405c08  2      OPC=1694  
  retq                       #  33    0x405c0a  1      OPC=1978  
.L_405c05:                   #        0x405c0b  0      OPC=0     
  movl $0x408aa1, %edi       #  34    0x405c0b  5      OPC=1154  
  callq .Error               #  35    0x405c10  5      OPC=260   
                                                                 
.size Variable_CreateConstant, .-Variable_CreateConstant

