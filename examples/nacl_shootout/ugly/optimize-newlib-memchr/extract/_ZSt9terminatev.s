  .text
  .globl _ZSt9terminatev
  .type _ZSt9terminatev, @function

#! file-offset 0x122e40
#! rip-offset  0xe2e40
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode             
._ZSt9terminatev:                            #        0xe2e40  0      OPC=<label>        
  subl $0x8, %esp                            #  1     0xe2e40  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                            #  2     0xe2e43  3      OPC=addq_r64_r64   
  movl 0xff8dadc(%rip), %edi                 #  3     0xe2e46  6      OPC=movl_r32_m32   
  nop                                        #  4     0xe2e4c  1      OPC=nop            
  nop                                        #  5     0xe2e4d  1      OPC=nop            
  nop                                        #  6     0xe2e4e  1      OPC=nop            
  nop                                        #  7     0xe2e4f  1      OPC=nop            
  nop                                        #  8     0xe2e50  1      OPC=nop            
  nop                                        #  9     0xe2e51  1      OPC=nop            
  nop                                        #  10    0xe2e52  1      OPC=nop            
  nop                                        #  11    0xe2e53  1      OPC=nop            
  nop                                        #  12    0xe2e54  1      OPC=nop            
  nop                                        #  13    0xe2e55  1      OPC=nop            
  nop                                        #  14    0xe2e56  1      OPC=nop            
  nop                                        #  15    0xe2e57  1      OPC=nop            
  nop                                        #  16    0xe2e58  1      OPC=nop            
  nop                                        #  17    0xe2e59  1      OPC=nop            
  nop                                        #  18    0xe2e5a  1      OPC=nop            
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  19    0xe2e5b  5      OPC=callq_label    
                                                                                         
.size _ZSt9terminatev, .-_ZSt9terminatev

