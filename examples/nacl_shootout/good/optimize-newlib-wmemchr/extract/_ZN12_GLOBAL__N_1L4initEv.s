  .text
  .globl _ZN12_GLOBAL__N_1L4initEv
  .type _ZN12_GLOBAL__N_1L4initEv, @function

#! file-offset 0x122180
#! rip-offset  0xe2180
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZN12_GLOBAL__N_1L4initEv:          #        0xe2180  0      OPC=<label>         
  popq %r11                          #  1     0xe2180  2      OPC=popq_r64_1      
  movl $0x10073650, 0xff914b8(%rip)  #  2     0xe2182  10     OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d            #  3     0xe218c  7      OPC=andl_r32_imm32  
  nop                                #  4     0xe2193  1      OPC=nop             
  nop                                #  5     0xe2194  1      OPC=nop             
  nop                                #  6     0xe2195  1      OPC=nop             
  nop                                #  7     0xe2196  1      OPC=nop             
  addq %r15, %r11                    #  8     0xe2197  3      OPC=addq_r64_r64    
  jmpq %r11                          #  9     0xe219a  3      OPC=jmpq_r64        
  nop                                #  10    0xe219d  1      OPC=nop             
  nop                                #  11    0xe219e  1      OPC=nop             
  nop                                #  12    0xe219f  1      OPC=nop             
  nop                                #  13    0xe21a0  1      OPC=nop             
  nop                                #  14    0xe21a1  1      OPC=nop             
  nop                                #  15    0xe21a2  1      OPC=nop             
  nop                                #  16    0xe21a3  1      OPC=nop             
  nop                                #  17    0xe21a4  1      OPC=nop             
  nop                                #  18    0xe21a5  1      OPC=nop             
  nop                                #  19    0xe21a6  1      OPC=nop             
                                                                                  
.size _ZN12_GLOBAL__N_1L4initEv, .-_ZN12_GLOBAL__N_1L4initEv

