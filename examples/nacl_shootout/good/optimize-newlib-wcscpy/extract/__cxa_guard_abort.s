  .text
  .globl __cxa_guard_abort
  .type __cxa_guard_abort, @function

#! file-offset 0x121ea0
#! rip-offset  0xe1ea0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__cxa_guard_abort:            #        0xe1ea0  0      OPC=<label>         
  popq %r11                    #  1     0xe1ea0  2      OPC=popq_r64_1      
  movl %edi, %edi              #  2     0xe1ea2  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0xe1ea4  2      OPC=movl_r32_r32    
  movb $0x0, 0x1(%r15,%rdi,1)  #  4     0xe1ea6  6      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d      #  5     0xe1eac  7      OPC=andl_r32_imm32  
  nop                          #  6     0xe1eb3  1      OPC=nop             
  nop                          #  7     0xe1eb4  1      OPC=nop             
  nop                          #  8     0xe1eb5  1      OPC=nop             
  nop                          #  9     0xe1eb6  1      OPC=nop             
  addq %r15, %r11              #  10    0xe1eb7  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0xe1eba  3      OPC=jmpq_r64        
  nop                          #  12    0xe1ebd  1      OPC=nop             
  nop                          #  13    0xe1ebe  1      OPC=nop             
  nop                          #  14    0xe1ebf  1      OPC=nop             
  nop                          #  15    0xe1ec0  1      OPC=nop             
  nop                          #  16    0xe1ec1  1      OPC=nop             
  nop                          #  17    0xe1ec2  1      OPC=nop             
  nop                          #  18    0xe1ec3  1      OPC=nop             
  nop                          #  19    0xe1ec4  1      OPC=nop             
  nop                          #  20    0xe1ec5  1      OPC=nop             
  nop                          #  21    0xe1ec6  1      OPC=nop             
                                                                            
.size __cxa_guard_abort, .-__cxa_guard_abort

