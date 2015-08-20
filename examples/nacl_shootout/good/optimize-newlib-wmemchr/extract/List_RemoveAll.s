  .text
  .globl List_RemoveAll
  .type List_RemoveAll, @function

#! file-offset 0x66160
#! rip-offset  0x26160
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.List_RemoveAll:                      #        0x26160  0      OPC=<label>         
  movl %edi, %edi                     #  1     0x26160  2      OPC=movl_r32_r32    
  movl %edi, %edi                     #  2     0x26162  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)         #  3     0x26164  9      OPC=movl_m32_imm32  
  movl %edi, %edi                     #  4     0x2616d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0xc(%r15,%rdi,1)  #  5     0x2616f  9      OPC=movl_m32_imm32  
  popq %r11                           #  6     0x26178  2      OPC=popq_r64_1      
  nop                                 #  7     0x2617a  1      OPC=nop             
  nop                                 #  8     0x2617b  1      OPC=nop             
  nop                                 #  9     0x2617c  1      OPC=nop             
  nop                                 #  10    0x2617d  1      OPC=nop             
  nop                                 #  11    0x2617e  1      OPC=nop             
  nop                                 #  12    0x2617f  1      OPC=nop             
  andl $0xffffffe0, %r11d             #  13    0x26180  7      OPC=andl_r32_imm32  
  nop                                 #  14    0x26187  1      OPC=nop             
  nop                                 #  15    0x26188  1      OPC=nop             
  nop                                 #  16    0x26189  1      OPC=nop             
  nop                                 #  17    0x2618a  1      OPC=nop             
  addq %r15, %r11                     #  18    0x2618b  3      OPC=addq_r64_r64    
  jmpq %r11                           #  19    0x2618e  3      OPC=jmpq_r64        
  nop                                 #  20    0x26191  1      OPC=nop             
  nop                                 #  21    0x26192  1      OPC=nop             
  nop                                 #  22    0x26193  1      OPC=nop             
  nop                                 #  23    0x26194  1      OPC=nop             
  nop                                 #  24    0x26195  1      OPC=nop             
  nop                                 #  25    0x26196  1      OPC=nop             
  nop                                 #  26    0x26197  1      OPC=nop             
  nop                                 #  27    0x26198  1      OPC=nop             
  nop                                 #  28    0x26199  1      OPC=nop             
  nop                                 #  29    0x2619a  1      OPC=nop             
  nop                                 #  30    0x2619b  1      OPC=nop             
  nop                                 #  31    0x2619c  1      OPC=nop             
  nop                                 #  32    0x2619d  1      OPC=nop             
  nop                                 #  33    0x2619e  1      OPC=nop             
  nop                                 #  34    0x2619f  1      OPC=nop             
  nop                                 #  35    0x261a0  1      OPC=nop             
  nop                                 #  36    0x261a1  1      OPC=nop             
  nop                                 #  37    0x261a2  1      OPC=nop             
  nop                                 #  38    0x261a3  1      OPC=nop             
  nop                                 #  39    0x261a4  1      OPC=nop             
  nop                                 #  40    0x261a5  1      OPC=nop             
  nop                                 #  41    0x261a6  1      OPC=nop             
                                                                                   
.size List_RemoveAll, .-List_RemoveAll

