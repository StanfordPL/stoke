  .text
  .globl pthread_mutexattr_gettype
  .type pthread_mutexattr_gettype, @function

#! file-offset 0x6d440
#! rip-offset  0x2d440
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.pthread_mutexattr_gettype:  #        0x2d440  0      OPC=<label>         
  movl %edi, %edi            #  1     0x2d440  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  2     0x2d442  2      OPC=movl_r32_r32    
  popq %r11                  #  3     0x2d444  2      OPC=popq_r64_1      
  movl %edi, %edi            #  4     0x2d446  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax   #  5     0x2d448  4      OPC=movl_r32_m32    
  movl %esi, %esi            #  6     0x2d44c  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)   #  7     0x2d44e  4      OPC=movl_m32_r32    
  xorl %eax, %eax            #  8     0x2d452  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d    #  9     0x2d454  7      OPC=andl_r32_imm32  
  nop                        #  10    0x2d45b  1      OPC=nop             
  nop                        #  11    0x2d45c  1      OPC=nop             
  nop                        #  12    0x2d45d  1      OPC=nop             
  nop                        #  13    0x2d45e  1      OPC=nop             
  addq %r15, %r11            #  14    0x2d45f  3      OPC=addq_r64_r64    
  jmpq %r11                  #  15    0x2d462  3      OPC=jmpq_r64        
  xchgw %ax, %ax             #  16    0x2d465  2      OPC=xchgw_ax_r16    
                                                                          
.size pthread_mutexattr_gettype, .-pthread_mutexattr_gettype

