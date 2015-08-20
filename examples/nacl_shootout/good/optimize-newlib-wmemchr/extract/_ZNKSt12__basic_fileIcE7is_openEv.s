  .text
  .globl _ZNKSt12__basic_fileIcE7is_openEv
  .type _ZNKSt12__basic_fileIcE7is_openEv, @function

#! file-offset 0x11dfa0
#! rip-offset  0xddfa0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt12__basic_fileIcE7is_openEv:  #        0xddfa0  0      OPC=<label>         
  movl %edi, %edi                    #  1     0xddfa0  2      OPC=movl_r32_r32    
  movl %edi, %edi                    #  2     0xddfa2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax           #  3     0xddfa4  4      OPC=movl_r32_m32    
  popq %r11                          #  4     0xddfa8  2      OPC=popq_r64_1      
  testl %eax, %eax                   #  5     0xddfaa  2      OPC=testl_r32_r32   
  setne %al                          #  6     0xddfac  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d            #  7     0xddfaf  7      OPC=andl_r32_imm32  
  nop                                #  8     0xddfb6  1      OPC=nop             
  nop                                #  9     0xddfb7  1      OPC=nop             
  nop                                #  10    0xddfb8  1      OPC=nop             
  nop                                #  11    0xddfb9  1      OPC=nop             
  addq %r15, %r11                    #  12    0xddfba  3      OPC=addq_r64_r64    
  jmpq %r11                          #  13    0xddfbd  3      OPC=jmpq_r64        
  nop                                #  14    0xddfc0  1      OPC=nop             
  nop                                #  15    0xddfc1  1      OPC=nop             
  nop                                #  16    0xddfc2  1      OPC=nop             
  nop                                #  17    0xddfc3  1      OPC=nop             
  nop                                #  18    0xddfc4  1      OPC=nop             
  nop                                #  19    0xddfc5  1      OPC=nop             
  nop                                #  20    0xddfc6  1      OPC=nop             
                                                                                  
.size _ZNKSt12__basic_fileIcE7is_openEv, .-_ZNKSt12__basic_fileIcE7is_openEv

