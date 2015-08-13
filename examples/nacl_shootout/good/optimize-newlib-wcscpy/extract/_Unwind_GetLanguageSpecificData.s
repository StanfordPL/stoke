  .text
  .globl _Unwind_GetLanguageSpecificData
  .type _Unwind_GetLanguageSpecificData, @function

#! file-offset 0x149a20
#! rip-offset  0x109a20
#! capacity    32 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
._Unwind_GetLanguageSpecificData:  #        0x109a20  0      OPC=<label>         
  popq %r11                        #  1     0x109a20  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0x109a22  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0x109a24  2      OPC=movl_r32_r32    
  movl 0x50(%r15,%rdi,1), %eax     #  4     0x109a26  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d          #  5     0x109a2b  7      OPC=andl_r32_imm32  
  nop                              #  6     0x109a32  1      OPC=nop             
  nop                              #  7     0x109a33  1      OPC=nop             
  nop                              #  8     0x109a34  1      OPC=nop             
  nop                              #  9     0x109a35  1      OPC=nop             
  addq %r15, %r11                  #  10    0x109a36  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0x109a39  3      OPC=jmpq_r64        
  nop                              #  12    0x109a3c  1      OPC=nop             
  nop                              #  13    0x109a3d  1      OPC=nop             
  nop                              #  14    0x109a3e  1      OPC=nop             
  nop                              #  15    0x109a3f  1      OPC=nop             
  nop                              #  16    0x109a40  1      OPC=nop             
  nop                              #  17    0x109a41  1      OPC=nop             
  nop                              #  18    0x109a42  1      OPC=nop             
  nop                              #  19    0x109a43  1      OPC=nop             
  nop                              #  20    0x109a44  1      OPC=nop             
  nop                              #  21    0x109a45  1      OPC=nop             
  nop                              #  22    0x109a46  1      OPC=nop             
                                                                                 
.size _Unwind_GetLanguageSpecificData, .-_Unwind_GetLanguageSpecificData

