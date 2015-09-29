  .text
  .globl _Unwind_GetLanguageSpecificData
  .type _Unwind_GetLanguageSpecificData, @function

#! file-offset 0x14a440
#! rip-offset  0x10a440
#! capacity    32 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
._Unwind_GetLanguageSpecificData:  #        0x10a440  0      OPC=<label>         
  popq %r11                        #  1     0x10a440  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0x10a442  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0x10a444  2      OPC=movl_r32_r32    
  movl 0x50(%r15,%rdi,1), %eax     #  4     0x10a446  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d          #  5     0x10a44b  7      OPC=andl_r32_imm32  
  nop                              #  6     0x10a452  1      OPC=nop             
  nop                              #  7     0x10a453  1      OPC=nop             
  nop                              #  8     0x10a454  1      OPC=nop             
  nop                              #  9     0x10a455  1      OPC=nop             
  addq %r15, %r11                  #  10    0x10a456  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0x10a459  3      OPC=jmpq_r64        
  nop                              #  12    0x10a45c  1      OPC=nop             
  nop                              #  13    0x10a45d  1      OPC=nop             
  nop                              #  14    0x10a45e  1      OPC=nop             
  nop                              #  15    0x10a45f  1      OPC=nop             
  nop                              #  16    0x10a460  1      OPC=nop             
  nop                              #  17    0x10a461  1      OPC=nop             
  nop                              #  18    0x10a462  1      OPC=nop             
  nop                              #  19    0x10a463  1      OPC=nop             
  nop                              #  20    0x10a464  1      OPC=nop             
  nop                              #  21    0x10a465  1      OPC=nop             
  nop                              #  22    0x10a466  1      OPC=nop             
                                                                                 
.size _Unwind_GetLanguageSpecificData, .-_Unwind_GetLanguageSpecificData

