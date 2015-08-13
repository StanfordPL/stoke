  .text
  .globl pthread_self
  .type pthread_self, @function

#! file-offset 0x6e320
#! rip-offset  0x2e320
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.pthread_self:                  #        0x2e320  0      OPC=<label>         
  subl $0x8, %esp               #  1     0x2e320  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  2     0x2e323  3      OPC=addq_r64_r64    
  nop                           #  3     0x2e326  1      OPC=nop             
  nop                           #  4     0x2e327  1      OPC=nop             
  nop                           #  5     0x2e328  1      OPC=nop             
  nop                           #  6     0x2e329  1      OPC=nop             
  nop                           #  7     0x2e32a  1      OPC=nop             
  nop                           #  8     0x2e32b  1      OPC=nop             
  nop                           #  9     0x2e32c  1      OPC=nop             
  nop                           #  10    0x2e32d  1      OPC=nop             
  nop                           #  11    0x2e32e  1      OPC=nop             
  nop                           #  12    0x2e32f  1      OPC=nop             
  nop                           #  13    0x2e330  1      OPC=nop             
  nop                           #  14    0x2e331  1      OPC=nop             
  nop                           #  15    0x2e332  1      OPC=nop             
  nop                           #  16    0x2e333  1      OPC=nop             
  nop                           #  17    0x2e334  1      OPC=nop             
  nop                           #  18    0x2e335  1      OPC=nop             
  nop                           #  19    0x2e336  1      OPC=nop             
  nop                           #  20    0x2e337  1      OPC=nop             
  nop                           #  21    0x2e338  1      OPC=nop             
  nop                           #  22    0x2e339  1      OPC=nop             
  nop                           #  23    0x2e33a  1      OPC=nop             
  callq .__nacl_read_tp         #  24    0x2e33b  5      OPC=callq_label     
  movl %eax, %eax               #  25    0x2e340  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  26    0x2e342  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax  #  27    0x2e344  5      OPC=movl_r32_m32    
  addl $0x8, %esp               #  28    0x2e349  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  29    0x2e34c  3      OPC=addq_r64_r64    
  popq %r11                     #  30    0x2e34f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  31    0x2e351  7      OPC=andl_r32_imm32  
  nop                           #  32    0x2e358  1      OPC=nop             
  nop                           #  33    0x2e359  1      OPC=nop             
  nop                           #  34    0x2e35a  1      OPC=nop             
  nop                           #  35    0x2e35b  1      OPC=nop             
  addq %r15, %r11               #  36    0x2e35c  3      OPC=addq_r64_r64    
  jmpq %r11                     #  37    0x2e35f  3      OPC=jmpq_r64        
  nop                           #  38    0x2e362  1      OPC=nop             
  nop                           #  39    0x2e363  1      OPC=nop             
  nop                           #  40    0x2e364  1      OPC=nop             
  nop                           #  41    0x2e365  1      OPC=nop             
  nop                           #  42    0x2e366  1      OPC=nop             
                                                                             
.size pthread_self, .-pthread_self

