  .text
  .globl pthread_self
  .type pthread_self, @function

#! file-offset 0x6e620
#! rip-offset  0x2e620
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.pthread_self:                  #        0x2e620  0      OPC=<label>         
  subl $0x8, %esp               #  1     0x2e620  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  2     0x2e623  3      OPC=addq_r64_r64    
  nop                           #  3     0x2e626  1      OPC=nop             
  nop                           #  4     0x2e627  1      OPC=nop             
  nop                           #  5     0x2e628  1      OPC=nop             
  nop                           #  6     0x2e629  1      OPC=nop             
  nop                           #  7     0x2e62a  1      OPC=nop             
  nop                           #  8     0x2e62b  1      OPC=nop             
  nop                           #  9     0x2e62c  1      OPC=nop             
  nop                           #  10    0x2e62d  1      OPC=nop             
  nop                           #  11    0x2e62e  1      OPC=nop             
  nop                           #  12    0x2e62f  1      OPC=nop             
  nop                           #  13    0x2e630  1      OPC=nop             
  nop                           #  14    0x2e631  1      OPC=nop             
  nop                           #  15    0x2e632  1      OPC=nop             
  nop                           #  16    0x2e633  1      OPC=nop             
  nop                           #  17    0x2e634  1      OPC=nop             
  nop                           #  18    0x2e635  1      OPC=nop             
  nop                           #  19    0x2e636  1      OPC=nop             
  nop                           #  20    0x2e637  1      OPC=nop             
  nop                           #  21    0x2e638  1      OPC=nop             
  nop                           #  22    0x2e639  1      OPC=nop             
  nop                           #  23    0x2e63a  1      OPC=nop             
  callq .__nacl_read_tp         #  24    0x2e63b  5      OPC=callq_label     
  movl %eax, %eax               #  25    0x2e640  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  26    0x2e642  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax  #  27    0x2e644  5      OPC=movl_r32_m32    
  addl $0x8, %esp               #  28    0x2e649  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  29    0x2e64c  3      OPC=addq_r64_r64    
  popq %r11                     #  30    0x2e64f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  31    0x2e651  7      OPC=andl_r32_imm32  
  nop                           #  32    0x2e658  1      OPC=nop             
  nop                           #  33    0x2e659  1      OPC=nop             
  nop                           #  34    0x2e65a  1      OPC=nop             
  nop                           #  35    0x2e65b  1      OPC=nop             
  addq %r15, %r11               #  36    0x2e65c  3      OPC=addq_r64_r64    
  jmpq %r11                     #  37    0x2e65f  3      OPC=jmpq_r64        
  nop                           #  38    0x2e662  1      OPC=nop             
  nop                           #  39    0x2e663  1      OPC=nop             
  nop                           #  40    0x2e664  1      OPC=nop             
  nop                           #  41    0x2e665  1      OPC=nop             
  nop                           #  42    0x2e666  1      OPC=nop             
                                                                             
.size pthread_self, .-pthread_self

