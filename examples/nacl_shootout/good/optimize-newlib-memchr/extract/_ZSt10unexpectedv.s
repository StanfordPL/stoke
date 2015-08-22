  .text
  .globl _ZSt10unexpectedv
  .type _ZSt10unexpectedv, @function

#! file-offset 0x122ea0
#! rip-offset  0xe2ea0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode             
._ZSt10unexpectedv:                           #        0xe2ea0  0      OPC=<label>        
  subl $0x8, %esp                             #  1     0xe2ea0  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                             #  2     0xe2ea3  3      OPC=addq_r64_r64   
  movl 0xff8da78(%rip), %edi                  #  3     0xe2ea6  6      OPC=movl_r32_m32   
  nop                                         #  4     0xe2eac  1      OPC=nop            
  nop                                         #  5     0xe2ead  1      OPC=nop            
  nop                                         #  6     0xe2eae  1      OPC=nop            
  nop                                         #  7     0xe2eaf  1      OPC=nop            
  nop                                         #  8     0xe2eb0  1      OPC=nop            
  nop                                         #  9     0xe2eb1  1      OPC=nop            
  nop                                         #  10    0xe2eb2  1      OPC=nop            
  nop                                         #  11    0xe2eb3  1      OPC=nop            
  nop                                         #  12    0xe2eb4  1      OPC=nop            
  nop                                         #  13    0xe2eb5  1      OPC=nop            
  nop                                         #  14    0xe2eb6  1      OPC=nop            
  nop                                         #  15    0xe2eb7  1      OPC=nop            
  nop                                         #  16    0xe2eb8  1      OPC=nop            
  nop                                         #  17    0xe2eb9  1      OPC=nop            
  nop                                         #  18    0xe2eba  1      OPC=nop            
  callq ._ZN10__cxxabiv112__unexpectedEPFvvE  #  19    0xe2ebb  5      OPC=callq_label    
                                                                                          
.size _ZSt10unexpectedv, .-_ZSt10unexpectedv

