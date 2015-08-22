  .text
  .globl pthread_self
  .type pthread_self, @function

#! file-offset 0x6ed40
#! rip-offset  0x2ed40
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.pthread_self:                  #        0x2ed40  0      OPC=<label>         
  subl $0x8, %esp               #  1     0x2ed40  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  2     0x2ed43  3      OPC=addq_r64_r64    
  nop                           #  3     0x2ed46  1      OPC=nop             
  nop                           #  4     0x2ed47  1      OPC=nop             
  nop                           #  5     0x2ed48  1      OPC=nop             
  nop                           #  6     0x2ed49  1      OPC=nop             
  nop                           #  7     0x2ed4a  1      OPC=nop             
  nop                           #  8     0x2ed4b  1      OPC=nop             
  nop                           #  9     0x2ed4c  1      OPC=nop             
  nop                           #  10    0x2ed4d  1      OPC=nop             
  nop                           #  11    0x2ed4e  1      OPC=nop             
  nop                           #  12    0x2ed4f  1      OPC=nop             
  nop                           #  13    0x2ed50  1      OPC=nop             
  nop                           #  14    0x2ed51  1      OPC=nop             
  nop                           #  15    0x2ed52  1      OPC=nop             
  nop                           #  16    0x2ed53  1      OPC=nop             
  nop                           #  17    0x2ed54  1      OPC=nop             
  nop                           #  18    0x2ed55  1      OPC=nop             
  nop                           #  19    0x2ed56  1      OPC=nop             
  nop                           #  20    0x2ed57  1      OPC=nop             
  nop                           #  21    0x2ed58  1      OPC=nop             
  nop                           #  22    0x2ed59  1      OPC=nop             
  nop                           #  23    0x2ed5a  1      OPC=nop             
  callq .__nacl_read_tp         #  24    0x2ed5b  5      OPC=callq_label     
  movl %eax, %eax               #  25    0x2ed60  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  26    0x2ed62  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax  #  27    0x2ed64  5      OPC=movl_r32_m32    
  addl $0x8, %esp               #  28    0x2ed69  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  29    0x2ed6c  3      OPC=addq_r64_r64    
  popq %r11                     #  30    0x2ed6f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  31    0x2ed71  7      OPC=andl_r32_imm32  
  nop                           #  32    0x2ed78  1      OPC=nop             
  nop                           #  33    0x2ed79  1      OPC=nop             
  nop                           #  34    0x2ed7a  1      OPC=nop             
  nop                           #  35    0x2ed7b  1      OPC=nop             
  addq %r15, %r11               #  36    0x2ed7c  3      OPC=addq_r64_r64    
  jmpq %r11                     #  37    0x2ed7f  3      OPC=jmpq_r64        
  nop                           #  38    0x2ed82  1      OPC=nop             
  nop                           #  39    0x2ed83  1      OPC=nop             
  nop                           #  40    0x2ed84  1      OPC=nop             
  nop                           #  41    0x2ed85  1      OPC=nop             
  nop                           #  42    0x2ed86  1      OPC=nop             
                                                                             
.size pthread_self, .-pthread_self

