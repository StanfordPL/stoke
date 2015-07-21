  .text
  .globl Variable_Print
  .type Variable_Print, @function

#! file-offset 0x66bc0
#! rip-offset  0x26bc0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.Variable_Print:                #        0x26bc0  0      OPC=0     
  pushq %r12                    #  1     0x26bc0  2      OPC=1861  
  pushq %rbx                    #  2     0x26bc2  1      OPC=1861  
  subl $0x8, %esp               #  3     0x26bc3  3      OPC=2384  
  addq %r15, %rsp               #  4     0x26bc6  3      OPC=72    
  movl %edi, %ebx               #  5     0x26bc9  2      OPC=1157  
  movl %ebx, %ebx               #  6     0x26bcb  2      OPC=1157  
  movl (%r15,%rbx,1), %r12d     #  7     0x26bcd  4      OPC=1156  
  movl %ebx, %ebx               #  8     0x26bd1  2      OPC=1157  
  movl 0x10(%r15,%rbx,1), %edi  #  9     0x26bd3  5      OPC=1156  
  nop                           #  10    0x26bd8  1      OPC=1343  
  nop                           #  11    0x26bd9  1      OPC=1343  
  nop                           #  12    0x26bda  1      OPC=1343  
  callq .StrengthString         #  13    0x26bdb  5      OPC=260   
  movl %eax, %edx               #  14    0x26be0  2      OPC=1157  
  leal 0x18(%rbx), %esi         #  15    0x26be2  3      OPC=1066  
  movl %r12d, %ecx              #  16    0x26be5  3      OPC=1157  
  movl $0x10020aae, %edi        #  17    0x26be8  5      OPC=1154  
  xorl %eax, %eax               #  18    0x26bed  2      OPC=3758  
  addl $0x8, %esp               #  19    0x26bef  3      OPC=65    
  addq %r15, %rsp               #  20    0x26bf2  3      OPC=72    
  popq %rbx                     #  21    0x26bf5  1      OPC=1694  
  popq %r12                     #  22    0x26bf6  2      OPC=1694  
  jmpq .printf                  #  23    0x26bf8  5      OPC=930   
  nop                           #  24    0x26bfd  1      OPC=1343  
  nop                           #  25    0x26bfe  1      OPC=1343  
  nop                           #  26    0x26bff  1      OPC=1343  
                                                                   
.size Variable_Print, .-Variable_Print

