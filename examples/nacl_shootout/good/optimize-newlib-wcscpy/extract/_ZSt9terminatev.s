  .text
  .globl _ZSt9terminatev
  .type _ZSt9terminatev, @function

#! file-offset 0x122420
#! rip-offset  0xe2420
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode             
._ZSt9terminatev:                            #        0xe2420  0      OPC=<label>        
  subl $0x8, %esp                            #  1     0xe2420  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                            #  2     0xe2423  3      OPC=addq_r64_r64   
  movl 0xff8e4fc(%rip), %edi                 #  3     0xe2426  6      OPC=movl_r32_m32   
  nop                                        #  4     0xe242c  1      OPC=nop            
  nop                                        #  5     0xe242d  1      OPC=nop            
  nop                                        #  6     0xe242e  1      OPC=nop            
  nop                                        #  7     0xe242f  1      OPC=nop            
  nop                                        #  8     0xe2430  1      OPC=nop            
  nop                                        #  9     0xe2431  1      OPC=nop            
  nop                                        #  10    0xe2432  1      OPC=nop            
  nop                                        #  11    0xe2433  1      OPC=nop            
  nop                                        #  12    0xe2434  1      OPC=nop            
  nop                                        #  13    0xe2435  1      OPC=nop            
  nop                                        #  14    0xe2436  1      OPC=nop            
  nop                                        #  15    0xe2437  1      OPC=nop            
  nop                                        #  16    0xe2438  1      OPC=nop            
  nop                                        #  17    0xe2439  1      OPC=nop            
  nop                                        #  18    0xe243a  1      OPC=nop            
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  19    0xe243b  5      OPC=callq_label    
                                                                                         
.size _ZSt9terminatev, .-_ZSt9terminatev

