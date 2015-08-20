  .text
  .globl _ZSt10unexpectedv
  .type _ZSt10unexpectedv, @function

#! file-offset 0x122780
#! rip-offset  0xe2780
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode             
._ZSt10unexpectedv:                           #        0xe2780  0      OPC=<label>        
  subl $0x8, %esp                             #  1     0xe2780  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                             #  2     0xe2783  3      OPC=addq_r64_r64   
  movl 0xff8e198(%rip), %edi                  #  3     0xe2786  6      OPC=movl_r32_m32   
  nop                                         #  4     0xe278c  1      OPC=nop            
  nop                                         #  5     0xe278d  1      OPC=nop            
  nop                                         #  6     0xe278e  1      OPC=nop            
  nop                                         #  7     0xe278f  1      OPC=nop            
  nop                                         #  8     0xe2790  1      OPC=nop            
  nop                                         #  9     0xe2791  1      OPC=nop            
  nop                                         #  10    0xe2792  1      OPC=nop            
  nop                                         #  11    0xe2793  1      OPC=nop            
  nop                                         #  12    0xe2794  1      OPC=nop            
  nop                                         #  13    0xe2795  1      OPC=nop            
  nop                                         #  14    0xe2796  1      OPC=nop            
  nop                                         #  15    0xe2797  1      OPC=nop            
  nop                                         #  16    0xe2798  1      OPC=nop            
  nop                                         #  17    0xe2799  1      OPC=nop            
  nop                                         #  18    0xe279a  1      OPC=nop            
  callq ._ZN10__cxxabiv112__unexpectedEPFvvE  #  19    0xe279b  5      OPC=callq_label    
                                                                                          
.size _ZSt10unexpectedv, .-_ZSt10unexpectedv

