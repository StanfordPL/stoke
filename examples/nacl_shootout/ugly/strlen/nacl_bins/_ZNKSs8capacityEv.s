  .text
  .globl _ZNKSs8capacityEv
  .type _ZNKSs8capacityEv, @function

#! file-offset 0xe9fa0
#! rip-offset  0xa9fa0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZNKSs8capacityEv:            #        0xa9fa0  0      OPC=0     
  movl %edi, %edi              #  1     0xa9fa0  2      OPC=1157  
  movl %edi, %edi              #  2     0xa9fa2  2      OPC=1157  
  movl (%r15,%rdi,1), %eax     #  3     0xa9fa4  4      OPC=1156  
  popq %r11                    #  4     0xa9fa8  2      OPC=1694  
  subl $0xc, %eax              #  5     0xa9faa  3      OPC=2384  
  movl %eax, %eax              #  6     0xa9fad  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax  #  7     0xa9faf  5      OPC=1156  
  andl $0xffffffe0, %r11d      #  8     0xa9fb4  7      OPC=131   
  nop                          #  9     0xa9fbb  1      OPC=1343  
  nop                          #  10    0xa9fbc  1      OPC=1343  
  nop                          #  11    0xa9fbd  1      OPC=1343  
  nop                          #  12    0xa9fbe  1      OPC=1343  
  addq %r15, %r11              #  13    0xa9fbf  3      OPC=72    
  jmpq %r11                    #  14    0xa9fc2  3      OPC=928   
  nop                          #  15    0xa9fc5  1      OPC=1343  
  nop                          #  16    0xa9fc6  1      OPC=1343  
                                                                  
.size _ZNKSs8capacityEv, .-_ZNKSs8capacityEv

