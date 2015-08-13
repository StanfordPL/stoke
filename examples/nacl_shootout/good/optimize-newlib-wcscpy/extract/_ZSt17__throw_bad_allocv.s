  .text
  .globl _ZSt17__throw_bad_allocv
  .type _ZSt17__throw_bad_allocv, @function

#! file-offset 0x1267c0
#! rip-offset  0xe67c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt17__throw_bad_allocv:         #        0xe67c0  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe67c0  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe67c5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe67c8  3      OPC=addq_r64_r64    
  nop                              #  4     0xe67cb  1      OPC=nop             
  nop                              #  5     0xe67cc  1      OPC=nop             
  nop                              #  6     0xe67cd  1      OPC=nop             
  nop                              #  7     0xe67ce  1      OPC=nop             
  nop                              #  8     0xe67cf  1      OPC=nop             
  nop                              #  9     0xe67d0  1      OPC=nop             
  nop                              #  10    0xe67d1  1      OPC=nop             
  nop                              #  11    0xe67d2  1      OPC=nop             
  nop                              #  12    0xe67d3  1      OPC=nop             
  nop                              #  13    0xe67d4  1      OPC=nop             
  nop                              #  14    0xe67d5  1      OPC=nop             
  nop                              #  15    0xe67d6  1      OPC=nop             
  nop                              #  16    0xe67d7  1      OPC=nop             
  nop                              #  17    0xe67d8  1      OPC=nop             
  nop                              #  18    0xe67d9  1      OPC=nop             
  nop                              #  19    0xe67da  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe67db  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe67e0  2      OPC=movl_r32_r32    
  movl $0xe0620, %edx              #  22    0xe67e2  5      OPC=movl_r32_imm32  
  movl $0x1003d0e4, %esi           #  23    0xe67e7  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe67ec  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rdi,1)  #  25    0xe67ee  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe67f6  1      OPC=nop             
  nop                              #  27    0xe67f7  1      OPC=nop             
  nop                              #  28    0xe67f8  1      OPC=nop             
  nop                              #  29    0xe67f9  1      OPC=nop             
  nop                              #  30    0xe67fa  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe67fb  5      OPC=callq_label     
                                                                                
.size _ZSt17__throw_bad_allocv, .-_ZSt17__throw_bad_allocv

