  .text
  .globl _ZSt9terminatev
  .type _ZSt9terminatev, @function

#! file-offset 0x122720
#! rip-offset  0xe2720
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode             
._ZSt9terminatev:                            #        0xe2720  0      OPC=<label>        
  subl $0x8, %esp                            #  1     0xe2720  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                            #  2     0xe2723  3      OPC=addq_r64_r64   
  movl 0xff8e1fc(%rip), %edi                 #  3     0xe2726  6      OPC=movl_r32_m32   
  nop                                        #  4     0xe272c  1      OPC=nop            
  nop                                        #  5     0xe272d  1      OPC=nop            
  nop                                        #  6     0xe272e  1      OPC=nop            
  nop                                        #  7     0xe272f  1      OPC=nop            
  nop                                        #  8     0xe2730  1      OPC=nop            
  nop                                        #  9     0xe2731  1      OPC=nop            
  nop                                        #  10    0xe2732  1      OPC=nop            
  nop                                        #  11    0xe2733  1      OPC=nop            
  nop                                        #  12    0xe2734  1      OPC=nop            
  nop                                        #  13    0xe2735  1      OPC=nop            
  nop                                        #  14    0xe2736  1      OPC=nop            
  nop                                        #  15    0xe2737  1      OPC=nop            
  nop                                        #  16    0xe2738  1      OPC=nop            
  nop                                        #  17    0xe2739  1      OPC=nop            
  nop                                        #  18    0xe273a  1      OPC=nop            
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  19    0xe273b  5      OPC=callq_label    
                                                                                         
.size _ZSt9terminatev, .-_ZSt9terminatev

