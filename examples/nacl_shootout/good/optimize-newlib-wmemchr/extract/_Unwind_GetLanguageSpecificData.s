  .text
  .globl _Unwind_GetLanguageSpecificData
  .type _Unwind_GetLanguageSpecificData, @function

#! file-offset 0x149d20
#! rip-offset  0x109d20
#! capacity    32 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
._Unwind_GetLanguageSpecificData:  #        0x109d20  0      OPC=<label>         
  popq %r11                        #  1     0x109d20  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0x109d22  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0x109d24  2      OPC=movl_r32_r32    
  movl 0x50(%r15,%rdi,1), %eax     #  4     0x109d26  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d          #  5     0x109d2b  7      OPC=andl_r32_imm32  
  nop                              #  6     0x109d32  1      OPC=nop             
  nop                              #  7     0x109d33  1      OPC=nop             
  nop                              #  8     0x109d34  1      OPC=nop             
  nop                              #  9     0x109d35  1      OPC=nop             
  addq %r15, %r11                  #  10    0x109d36  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0x109d39  3      OPC=jmpq_r64        
  nop                              #  12    0x109d3c  1      OPC=nop             
  nop                              #  13    0x109d3d  1      OPC=nop             
  nop                              #  14    0x109d3e  1      OPC=nop             
  nop                              #  15    0x109d3f  1      OPC=nop             
  nop                              #  16    0x109d40  1      OPC=nop             
  nop                              #  17    0x109d41  1      OPC=nop             
  nop                              #  18    0x109d42  1      OPC=nop             
  nop                              #  19    0x109d43  1      OPC=nop             
  nop                              #  20    0x109d44  1      OPC=nop             
  nop                              #  21    0x109d45  1      OPC=nop             
  nop                              #  22    0x109d46  1      OPC=nop             
                                                                                 
.size _Unwind_GetLanguageSpecificData, .-_Unwind_GetLanguageSpecificData

