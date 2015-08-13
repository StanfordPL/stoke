  .text
  .globl List_RemoveAll
  .type List_RemoveAll, @function

#! file-offset 0x66140
#! rip-offset  0x26140
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.List_RemoveAll:                      #        0x26140  0      OPC=<label>         
  movl %edi, %edi                     #  1     0x26140  2      OPC=movl_r32_r32    
  movl %edi, %edi                     #  2     0x26142  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)         #  3     0x26144  9      OPC=movl_m32_imm32  
  movl %edi, %edi                     #  4     0x2614d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0xc(%r15,%rdi,1)  #  5     0x2614f  9      OPC=movl_m32_imm32  
  popq %r11                           #  6     0x26158  2      OPC=popq_r64_1      
  nop                                 #  7     0x2615a  1      OPC=nop             
  nop                                 #  8     0x2615b  1      OPC=nop             
  nop                                 #  9     0x2615c  1      OPC=nop             
  nop                                 #  10    0x2615d  1      OPC=nop             
  nop                                 #  11    0x2615e  1      OPC=nop             
  nop                                 #  12    0x2615f  1      OPC=nop             
  andl $0xffffffe0, %r11d             #  13    0x26160  7      OPC=andl_r32_imm32  
  nop                                 #  14    0x26167  1      OPC=nop             
  nop                                 #  15    0x26168  1      OPC=nop             
  nop                                 #  16    0x26169  1      OPC=nop             
  nop                                 #  17    0x2616a  1      OPC=nop             
  addq %r15, %r11                     #  18    0x2616b  3      OPC=addq_r64_r64    
  jmpq %r11                           #  19    0x2616e  3      OPC=jmpq_r64        
  nop                                 #  20    0x26171  1      OPC=nop             
  nop                                 #  21    0x26172  1      OPC=nop             
  nop                                 #  22    0x26173  1      OPC=nop             
  nop                                 #  23    0x26174  1      OPC=nop             
  nop                                 #  24    0x26175  1      OPC=nop             
  nop                                 #  25    0x26176  1      OPC=nop             
  nop                                 #  26    0x26177  1      OPC=nop             
  nop                                 #  27    0x26178  1      OPC=nop             
  nop                                 #  28    0x26179  1      OPC=nop             
  nop                                 #  29    0x2617a  1      OPC=nop             
  nop                                 #  30    0x2617b  1      OPC=nop             
  nop                                 #  31    0x2617c  1      OPC=nop             
  nop                                 #  32    0x2617d  1      OPC=nop             
  nop                                 #  33    0x2617e  1      OPC=nop             
  nop                                 #  34    0x2617f  1      OPC=nop             
  nop                                 #  35    0x26180  1      OPC=nop             
  nop                                 #  36    0x26181  1      OPC=nop             
  nop                                 #  37    0x26182  1      OPC=nop             
  nop                                 #  38    0x26183  1      OPC=nop             
  nop                                 #  39    0x26184  1      OPC=nop             
  nop                                 #  40    0x26185  1      OPC=nop             
  nop                                 #  41    0x26186  1      OPC=nop             
                                                                                   
.size List_RemoveAll, .-List_RemoveAll

