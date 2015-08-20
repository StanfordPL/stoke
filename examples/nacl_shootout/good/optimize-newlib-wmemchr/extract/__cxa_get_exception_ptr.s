  .text
  .globl __cxa_get_exception_ptr
  .type __cxa_get_exception_ptr, @function

#! file-offset 0x1231a0
#! rip-offset  0xe31a0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__cxa_get_exception_ptr:       #        0xe31a0  0      OPC=<label>         
  popq %r11                     #  1     0xe31a0  2      OPC=popq_r64_1      
  subl $0x30, %edi              #  2     0xe31a2  3      OPC=subl_r32_imm8   
  movl %edi, %edi               #  3     0xe31a5  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rdi,1), %eax  #  4     0xe31a7  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0xe31ac  7      OPC=andl_r32_imm32  
  nop                           #  6     0xe31b3  1      OPC=nop             
  nop                           #  7     0xe31b4  1      OPC=nop             
  nop                           #  8     0xe31b5  1      OPC=nop             
  nop                           #  9     0xe31b6  1      OPC=nop             
  addq %r15, %r11               #  10    0xe31b7  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0xe31ba  3      OPC=jmpq_r64        
  nop                           #  12    0xe31bd  1      OPC=nop             
  nop                           #  13    0xe31be  1      OPC=nop             
  nop                           #  14    0xe31bf  1      OPC=nop             
  nop                           #  15    0xe31c0  1      OPC=nop             
  nop                           #  16    0xe31c1  1      OPC=nop             
  nop                           #  17    0xe31c2  1      OPC=nop             
  nop                           #  18    0xe31c3  1      OPC=nop             
  nop                           #  19    0xe31c4  1      OPC=nop             
  nop                           #  20    0xe31c5  1      OPC=nop             
  nop                           #  21    0xe31c6  1      OPC=nop             
                                                                             
.size __cxa_get_exception_ptr, .-__cxa_get_exception_ptr

