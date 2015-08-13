  .text
  .globl __cxa_get_exception_ptr
  .type __cxa_get_exception_ptr, @function

#! file-offset 0x122ea0
#! rip-offset  0xe2ea0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__cxa_get_exception_ptr:       #        0xe2ea0  0      OPC=<label>         
  popq %r11                     #  1     0xe2ea0  2      OPC=popq_r64_1      
  subl $0x30, %edi              #  2     0xe2ea2  3      OPC=subl_r32_imm8   
  movl %edi, %edi               #  3     0xe2ea5  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rdi,1), %eax  #  4     0xe2ea7  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0xe2eac  7      OPC=andl_r32_imm32  
  nop                           #  6     0xe2eb3  1      OPC=nop             
  nop                           #  7     0xe2eb4  1      OPC=nop             
  nop                           #  8     0xe2eb5  1      OPC=nop             
  nop                           #  9     0xe2eb6  1      OPC=nop             
  addq %r15, %r11               #  10    0xe2eb7  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0xe2eba  3      OPC=jmpq_r64        
  nop                           #  12    0xe2ebd  1      OPC=nop             
  nop                           #  13    0xe2ebe  1      OPC=nop             
  nop                           #  14    0xe2ebf  1      OPC=nop             
  nop                           #  15    0xe2ec0  1      OPC=nop             
  nop                           #  16    0xe2ec1  1      OPC=nop             
  nop                           #  17    0xe2ec2  1      OPC=nop             
  nop                           #  18    0xe2ec3  1      OPC=nop             
  nop                           #  19    0xe2ec4  1      OPC=nop             
  nop                           #  20    0xe2ec5  1      OPC=nop             
  nop                           #  21    0xe2ec6  1      OPC=nop             
                                                                             
.size __cxa_get_exception_ptr, .-__cxa_get_exception_ptr

