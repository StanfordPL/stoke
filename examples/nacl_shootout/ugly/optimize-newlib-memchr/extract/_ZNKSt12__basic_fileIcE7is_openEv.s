  .text
  .globl _ZNKSt12__basic_fileIcE7is_openEv
  .type _ZNKSt12__basic_fileIcE7is_openEv, @function

#! file-offset 0x11e6c0
#! rip-offset  0xde6c0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt12__basic_fileIcE7is_openEv:  #        0xde6c0  0      OPC=<label>         
  movl %edi, %edi                    #  1     0xde6c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                    #  2     0xde6c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax           #  3     0xde6c4  4      OPC=movl_r32_m32    
  popq %r11                          #  4     0xde6c8  2      OPC=popq_r64_1      
  testl %eax, %eax                   #  5     0xde6ca  2      OPC=testl_r32_r32   
  setne %al                          #  6     0xde6cc  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d            #  7     0xde6cf  7      OPC=andl_r32_imm32  
  nop                                #  8     0xde6d6  1      OPC=nop             
  nop                                #  9     0xde6d7  1      OPC=nop             
  nop                                #  10    0xde6d8  1      OPC=nop             
  nop                                #  11    0xde6d9  1      OPC=nop             
  addq %r15, %r11                    #  12    0xde6da  3      OPC=addq_r64_r64    
  jmpq %r11                          #  13    0xde6dd  3      OPC=jmpq_r64        
  nop                                #  14    0xde6e0  1      OPC=nop             
  nop                                #  15    0xde6e1  1      OPC=nop             
  nop                                #  16    0xde6e2  1      OPC=nop             
  nop                                #  17    0xde6e3  1      OPC=nop             
  nop                                #  18    0xde6e4  1      OPC=nop             
  nop                                #  19    0xde6e5  1      OPC=nop             
  nop                                #  20    0xde6e6  1      OPC=nop             
                                                                                  
.size _ZNKSt12__basic_fileIcE7is_openEv, .-_ZNKSt12__basic_fileIcE7is_openEv

