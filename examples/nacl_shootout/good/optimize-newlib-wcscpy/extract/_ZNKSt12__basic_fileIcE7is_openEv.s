  .text
  .globl _ZNKSt12__basic_fileIcE7is_openEv
  .type _ZNKSt12__basic_fileIcE7is_openEv, @function

#! file-offset 0x11dca0
#! rip-offset  0xddca0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt12__basic_fileIcE7is_openEv:  #        0xddca0  0      OPC=<label>         
  movl %edi, %edi                    #  1     0xddca0  2      OPC=movl_r32_r32    
  movl %edi, %edi                    #  2     0xddca2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax           #  3     0xddca4  4      OPC=movl_r32_m32    
  popq %r11                          #  4     0xddca8  2      OPC=popq_r64_1      
  testl %eax, %eax                   #  5     0xddcaa  2      OPC=testl_r32_r32   
  setne %al                          #  6     0xddcac  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d            #  7     0xddcaf  7      OPC=andl_r32_imm32  
  nop                                #  8     0xddcb6  1      OPC=nop             
  nop                                #  9     0xddcb7  1      OPC=nop             
  nop                                #  10    0xddcb8  1      OPC=nop             
  nop                                #  11    0xddcb9  1      OPC=nop             
  addq %r15, %r11                    #  12    0xddcba  3      OPC=addq_r64_r64    
  jmpq %r11                          #  13    0xddcbd  3      OPC=jmpq_r64        
  nop                                #  14    0xddcc0  1      OPC=nop             
  nop                                #  15    0xddcc1  1      OPC=nop             
  nop                                #  16    0xddcc2  1      OPC=nop             
  nop                                #  17    0xddcc3  1      OPC=nop             
  nop                                #  18    0xddcc4  1      OPC=nop             
  nop                                #  19    0xddcc5  1      OPC=nop             
  nop                                #  20    0xddcc6  1      OPC=nop             
                                                                                  
.size _ZNKSt12__basic_fileIcE7is_openEv, .-_ZNKSt12__basic_fileIcE7is_openEv

