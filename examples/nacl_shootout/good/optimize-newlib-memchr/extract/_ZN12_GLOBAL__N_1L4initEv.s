  .text
  .globl _ZN12_GLOBAL__N_1L4initEv
  .type _ZN12_GLOBAL__N_1L4initEv, @function

#! file-offset 0x1228a0
#! rip-offset  0xe28a0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZN12_GLOBAL__N_1L4initEv:          #        0xe28a0  0      OPC=<label>         
  popq %r11                          #  1     0xe28a0  2      OPC=popq_r64_1      
  movl $0x10073650, 0xff90d98(%rip)  #  2     0xe28a2  10     OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d            #  3     0xe28ac  7      OPC=andl_r32_imm32  
  nop                                #  4     0xe28b3  1      OPC=nop             
  nop                                #  5     0xe28b4  1      OPC=nop             
  nop                                #  6     0xe28b5  1      OPC=nop             
  nop                                #  7     0xe28b6  1      OPC=nop             
  addq %r15, %r11                    #  8     0xe28b7  3      OPC=addq_r64_r64    
  jmpq %r11                          #  9     0xe28ba  3      OPC=jmpq_r64        
  nop                                #  10    0xe28bd  1      OPC=nop             
  nop                                #  11    0xe28be  1      OPC=nop             
  nop                                #  12    0xe28bf  1      OPC=nop             
  nop                                #  13    0xe28c0  1      OPC=nop             
  nop                                #  14    0xe28c1  1      OPC=nop             
  nop                                #  15    0xe28c2  1      OPC=nop             
  nop                                #  16    0xe28c3  1      OPC=nop             
  nop                                #  17    0xe28c4  1      OPC=nop             
  nop                                #  18    0xe28c5  1      OPC=nop             
  nop                                #  19    0xe28c6  1      OPC=nop             
                                                                                  
.size _ZN12_GLOBAL__N_1L4initEv, .-_ZN12_GLOBAL__N_1L4initEv

