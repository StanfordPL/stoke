  .text
  .globl _ZNSt12__basic_fileIcEC2EP15pthread_mutex_t
  .type _ZNSt12__basic_fileIcEC2EP15pthread_mutex_t, @function

#! file-offset 0x11df60
#! rip-offset  0xddf60
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNSt12__basic_fileIcEC2EP15pthread_mutex_t:  #        0xddf60  0      OPC=<label>         
  popq %r11                                    #  1     0xddf60  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  2     0xddf62  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  3     0xddf64  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)                     #  4     0xddf66  8      OPC=movl_m32_imm32  
  movl %edi, %edi                              #  5     0xddf6e  2      OPC=movl_r32_r32    
  movb $0x0, 0x4(%r15,%rdi,1)                  #  6     0xddf70  6      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d                      #  7     0xddf76  7      OPC=andl_r32_imm32  
  nop                                          #  8     0xddf7d  1      OPC=nop             
  nop                                          #  9     0xddf7e  1      OPC=nop             
  nop                                          #  10    0xddf7f  1      OPC=nop             
  nop                                          #  11    0xddf80  1      OPC=nop             
  addq %r15, %r11                              #  12    0xddf81  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0xddf84  3      OPC=jmpq_r64        
                                                                                            
.size _ZNSt12__basic_fileIcEC2EP15pthread_mutex_t, .-_ZNSt12__basic_fileIcEC2EP15pthread_mutex_t

