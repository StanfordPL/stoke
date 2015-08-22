  .text
  .globl __cxa_get_exception_ptr
  .type __cxa_get_exception_ptr, @function

#! file-offset 0x1238c0
#! rip-offset  0xe38c0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__cxa_get_exception_ptr:       #        0xe38c0  0      OPC=<label>         
  popq %r11                     #  1     0xe38c0  2      OPC=popq_r64_1      
  subl $0x30, %edi              #  2     0xe38c2  3      OPC=subl_r32_imm8   
  movl %edi, %edi               #  3     0xe38c5  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rdi,1), %eax  #  4     0xe38c7  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0xe38cc  7      OPC=andl_r32_imm32  
  nop                           #  6     0xe38d3  1      OPC=nop             
  nop                           #  7     0xe38d4  1      OPC=nop             
  nop                           #  8     0xe38d5  1      OPC=nop             
  nop                           #  9     0xe38d6  1      OPC=nop             
  addq %r15, %r11               #  10    0xe38d7  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0xe38da  3      OPC=jmpq_r64        
  nop                           #  12    0xe38dd  1      OPC=nop             
  nop                           #  13    0xe38de  1      OPC=nop             
  nop                           #  14    0xe38df  1      OPC=nop             
  nop                           #  15    0xe38e0  1      OPC=nop             
  nop                           #  16    0xe38e1  1      OPC=nop             
  nop                           #  17    0xe38e2  1      OPC=nop             
  nop                           #  18    0xe38e3  1      OPC=nop             
  nop                           #  19    0xe38e4  1      OPC=nop             
  nop                           #  20    0xe38e5  1      OPC=nop             
  nop                           #  21    0xe38e6  1      OPC=nop             
                                                                             
.size __cxa_get_exception_ptr, .-__cxa_get_exception_ptr

