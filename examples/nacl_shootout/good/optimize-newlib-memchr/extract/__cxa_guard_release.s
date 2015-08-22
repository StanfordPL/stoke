  .text
  .globl __cxa_guard_release
  .type __cxa_guard_release, @function

#! file-offset 0x1228e0
#! rip-offset  0xe28e0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__cxa_guard_release:          #        0xe28e0  0      OPC=<label>         
  movl %edi, %edi              #  1     0xe28e0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xe28e2  2      OPC=movl_r32_r32    
  movb $0x0, 0x1(%r15,%rdi,1)  #  3     0xe28e4  6      OPC=movb_m8_imm8    
  popq %r11                    #  4     0xe28ea  2      OPC=popq_r64_1      
  movl %edi, %edi              #  5     0xe28ec  2      OPC=movl_r32_r32    
  movb $0x1, (%r15,%rdi,1)     #  6     0xe28ee  5      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d      #  7     0xe28f3  7      OPC=andl_r32_imm32  
  nop                          #  8     0xe28fa  1      OPC=nop             
  nop                          #  9     0xe28fb  1      OPC=nop             
  nop                          #  10    0xe28fc  1      OPC=nop             
  nop                          #  11    0xe28fd  1      OPC=nop             
  addq %r15, %r11              #  12    0xe28fe  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0xe2901  3      OPC=jmpq_r64        
  nop                          #  14    0xe2904  1      OPC=nop             
  nop                          #  15    0xe2905  1      OPC=nop             
  nop                          #  16    0xe2906  1      OPC=nop             
                                                                            
.size __cxa_guard_release, .-__cxa_guard_release

