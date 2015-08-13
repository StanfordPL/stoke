  .text
  .globl __cxa_guard_release
  .type __cxa_guard_release, @function

#! file-offset 0x121ec0
#! rip-offset  0xe1ec0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__cxa_guard_release:          #        0xe1ec0  0      OPC=<label>         
  movl %edi, %edi              #  1     0xe1ec0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xe1ec2  2      OPC=movl_r32_r32    
  movb $0x0, 0x1(%r15,%rdi,1)  #  3     0xe1ec4  6      OPC=movb_m8_imm8    
  popq %r11                    #  4     0xe1eca  2      OPC=popq_r64_1      
  movl %edi, %edi              #  5     0xe1ecc  2      OPC=movl_r32_r32    
  movb $0x1, (%r15,%rdi,1)     #  6     0xe1ece  5      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d      #  7     0xe1ed3  7      OPC=andl_r32_imm32  
  nop                          #  8     0xe1eda  1      OPC=nop             
  nop                          #  9     0xe1edb  1      OPC=nop             
  nop                          #  10    0xe1edc  1      OPC=nop             
  nop                          #  11    0xe1edd  1      OPC=nop             
  addq %r15, %r11              #  12    0xe1ede  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0xe1ee1  3      OPC=jmpq_r64        
  nop                          #  14    0xe1ee4  1      OPC=nop             
  nop                          #  15    0xe1ee5  1      OPC=nop             
  nop                          #  16    0xe1ee6  1      OPC=nop             
                                                                            
.size __cxa_guard_release, .-__cxa_guard_release

