  .text
  .globl _ZNSt12__basic_fileIcEC1EP15pthread_mutex_t
  .type _ZNSt12__basic_fileIcEC1EP15pthread_mutex_t, @function

#! file-offset 0x11e6a0
#! rip-offset  0xde6a0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNSt12__basic_fileIcEC1EP15pthread_mutex_t:  #        0xde6a0  0      OPC=<label>         
  popq %r11                                    #  1     0xde6a0  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  2     0xde6a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  3     0xde6a4  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)                     #  4     0xde6a6  8      OPC=movl_m32_imm32  
  movl %edi, %edi                              #  5     0xde6ae  2      OPC=movl_r32_r32    
  movb $0x0, 0x4(%r15,%rdi,1)                  #  6     0xde6b0  6      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d                      #  7     0xde6b6  7      OPC=andl_r32_imm32  
  nop                                          #  8     0xde6bd  1      OPC=nop             
  nop                                          #  9     0xde6be  1      OPC=nop             
  nop                                          #  10    0xde6bf  1      OPC=nop             
  nop                                          #  11    0xde6c0  1      OPC=nop             
  addq %r15, %r11                              #  12    0xde6c1  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0xde6c4  3      OPC=jmpq_r64        
                                                                                            
.size _ZNSt12__basic_fileIcEC1EP15pthread_mutex_t, .-_ZNSt12__basic_fileIcEC1EP15pthread_mutex_t

