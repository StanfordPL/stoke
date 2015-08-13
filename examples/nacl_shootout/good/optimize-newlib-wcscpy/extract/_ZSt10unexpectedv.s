  .text
  .globl _ZSt10unexpectedv
  .type _ZSt10unexpectedv, @function

#! file-offset 0x122480
#! rip-offset  0xe2480
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode             
._ZSt10unexpectedv:                           #        0xe2480  0      OPC=<label>        
  subl $0x8, %esp                             #  1     0xe2480  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                             #  2     0xe2483  3      OPC=addq_r64_r64   
  movl 0xff8e498(%rip), %edi                  #  3     0xe2486  6      OPC=movl_r32_m32   
  nop                                         #  4     0xe248c  1      OPC=nop            
  nop                                         #  5     0xe248d  1      OPC=nop            
  nop                                         #  6     0xe248e  1      OPC=nop            
  nop                                         #  7     0xe248f  1      OPC=nop            
  nop                                         #  8     0xe2490  1      OPC=nop            
  nop                                         #  9     0xe2491  1      OPC=nop            
  nop                                         #  10    0xe2492  1      OPC=nop            
  nop                                         #  11    0xe2493  1      OPC=nop            
  nop                                         #  12    0xe2494  1      OPC=nop            
  nop                                         #  13    0xe2495  1      OPC=nop            
  nop                                         #  14    0xe2496  1      OPC=nop            
  nop                                         #  15    0xe2497  1      OPC=nop            
  nop                                         #  16    0xe2498  1      OPC=nop            
  nop                                         #  17    0xe2499  1      OPC=nop            
  nop                                         #  18    0xe249a  1      OPC=nop            
  callq ._ZN10__cxxabiv112__unexpectedEPFvvE  #  19    0xe249b  5      OPC=callq_label    
                                                                                          
.size _ZSt10unexpectedv, .-_ZSt10unexpectedv

