  .text
  .globl _ZSt16__throw_bad_castv
  .type _ZSt16__throw_bad_castv, @function

#! file-offset 0x126780
#! rip-offset  0xe6780
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt16__throw_bad_castv:          #        0xe6780  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe6780  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe6785  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe6788  3      OPC=addq_r64_r64    
  nop                              #  4     0xe678b  1      OPC=nop             
  nop                              #  5     0xe678c  1      OPC=nop             
  nop                              #  6     0xe678d  1      OPC=nop             
  nop                              #  7     0xe678e  1      OPC=nop             
  nop                              #  8     0xe678f  1      OPC=nop             
  nop                              #  9     0xe6790  1      OPC=nop             
  nop                              #  10    0xe6791  1      OPC=nop             
  nop                              #  11    0xe6792  1      OPC=nop             
  nop                              #  12    0xe6793  1      OPC=nop             
  nop                              #  13    0xe6794  1      OPC=nop             
  nop                              #  14    0xe6795  1      OPC=nop             
  nop                              #  15    0xe6796  1      OPC=nop             
  nop                              #  16    0xe6797  1      OPC=nop             
  nop                              #  17    0xe6798  1      OPC=nop             
  nop                              #  18    0xe6799  1      OPC=nop             
  nop                              #  19    0xe679a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe679b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe67a0  2      OPC=movl_r32_r32    
  movl $0xfd700, %edx              #  22    0xe67a2  5      OPC=movl_r32_imm32  
  movl $0x1003e900, %esi           #  23    0xe67a7  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe67ac  2      OPC=movl_r32_r32    
  movl $0x1003e8e8, (%r15,%rdi,1)  #  25    0xe67ae  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe67b6  1      OPC=nop             
  nop                              #  27    0xe67b7  1      OPC=nop             
  nop                              #  28    0xe67b8  1      OPC=nop             
  nop                              #  29    0xe67b9  1      OPC=nop             
  nop                              #  30    0xe67ba  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe67bb  5      OPC=callq_label     
                                                                                
.size _ZSt16__throw_bad_castv, .-_ZSt16__throw_bad_castv

