  .text
  .globl _ZNSt12__basic_fileIcE4fileEv
  .type _ZNSt12__basic_fileIcE4fileEv, @function

#! file-offset 0x11dfc0
#! rip-offset  0xddfc0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNSt12__basic_fileIcE4fileEv:  #        0xddfc0  0      OPC=<label>         
  popq %r11                      #  1     0xddfc0  2      OPC=popq_r64_1      
  movl %edi, %edi                #  2     0xddfc2  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  3     0xddfc4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax       #  4     0xddfc6  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d        #  5     0xddfca  7      OPC=andl_r32_imm32  
  nop                            #  6     0xddfd1  1      OPC=nop             
  nop                            #  7     0xddfd2  1      OPC=nop             
  nop                            #  8     0xddfd3  1      OPC=nop             
  nop                            #  9     0xddfd4  1      OPC=nop             
  addq %r15, %r11                #  10    0xddfd5  3      OPC=addq_r64_r64    
  jmpq %r11                      #  11    0xddfd8  3      OPC=jmpq_r64        
  nop                            #  12    0xddfdb  1      OPC=nop             
  nop                            #  13    0xddfdc  1      OPC=nop             
  nop                            #  14    0xddfdd  1      OPC=nop             
  nop                            #  15    0xddfde  1      OPC=nop             
  nop                            #  16    0xddfdf  1      OPC=nop             
  nop                            #  17    0xddfe0  1      OPC=nop             
  nop                            #  18    0xddfe1  1      OPC=nop             
  nop                            #  19    0xddfe2  1      OPC=nop             
  nop                            #  20    0xddfe3  1      OPC=nop             
  nop                            #  21    0xddfe4  1      OPC=nop             
  nop                            #  22    0xddfe5  1      OPC=nop             
  nop                            #  23    0xddfe6  1      OPC=nop             
                                                                              
.size _ZNSt12__basic_fileIcE4fileEv, .-_ZNSt12__basic_fileIcE4fileEv

