  .text
  .globl _ZNSt12__basic_fileIcE4fileEv
  .type _ZNSt12__basic_fileIcE4fileEv, @function

#! file-offset 0x11dcc0
#! rip-offset  0xddcc0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNSt12__basic_fileIcE4fileEv:  #        0xddcc0  0      OPC=<label>         
  popq %r11                      #  1     0xddcc0  2      OPC=popq_r64_1      
  movl %edi, %edi                #  2     0xddcc2  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  3     0xddcc4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax       #  4     0xddcc6  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d        #  5     0xddcca  7      OPC=andl_r32_imm32  
  nop                            #  6     0xddcd1  1      OPC=nop             
  nop                            #  7     0xddcd2  1      OPC=nop             
  nop                            #  8     0xddcd3  1      OPC=nop             
  nop                            #  9     0xddcd4  1      OPC=nop             
  addq %r15, %r11                #  10    0xddcd5  3      OPC=addq_r64_r64    
  jmpq %r11                      #  11    0xddcd8  3      OPC=jmpq_r64        
  nop                            #  12    0xddcdb  1      OPC=nop             
  nop                            #  13    0xddcdc  1      OPC=nop             
  nop                            #  14    0xddcdd  1      OPC=nop             
  nop                            #  15    0xddcde  1      OPC=nop             
  nop                            #  16    0xddcdf  1      OPC=nop             
  nop                            #  17    0xddce0  1      OPC=nop             
  nop                            #  18    0xddce1  1      OPC=nop             
  nop                            #  19    0xddce2  1      OPC=nop             
  nop                            #  20    0xddce3  1      OPC=nop             
  nop                            #  21    0xddce4  1      OPC=nop             
  nop                            #  22    0xddce5  1      OPC=nop             
  nop                            #  23    0xddce6  1      OPC=nop             
                                                                              
.size _ZNSt12__basic_fileIcE4fileEv, .-_ZNSt12__basic_fileIcE4fileEv

