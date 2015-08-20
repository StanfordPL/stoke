  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_leakedEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_leakedEv, @function

#! file-offset 0x115b20
#! rip-offset  0xd5b20
#! capacity    32 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_leakedEv:  #        0xd5b20  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xd5b20  2      OPC=movl_r32_r32    
  popq %r11                                              #  2     0xd5b22  2      OPC=popq_r64_1      
  movl %edi, %edi                                        #  3     0xd5b24  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                            #  4     0xd5b26  5      OPC=movl_r32_m32    
  shrl $0x1f, %eax                                       #  5     0xd5b2b  3      OPC=shrl_r32_imm8   
  andl $0xffffffe0, %r11d                                #  6     0xd5b2e  7      OPC=andl_r32_imm32  
  nop                                                    #  7     0xd5b35  1      OPC=nop             
  nop                                                    #  8     0xd5b36  1      OPC=nop             
  nop                                                    #  9     0xd5b37  1      OPC=nop             
  nop                                                    #  10    0xd5b38  1      OPC=nop             
  addq %r15, %r11                                        #  11    0xd5b39  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  12    0xd5b3c  3      OPC=jmpq_r64        
  nop                                                    #  13    0xd5b3f  1      OPC=nop             
  nop                                                    #  14    0xd5b40  1      OPC=nop             
  nop                                                    #  15    0xd5b41  1      OPC=nop             
  nop                                                    #  16    0xd5b42  1      OPC=nop             
  nop                                                    #  17    0xd5b43  1      OPC=nop             
  nop                                                    #  18    0xd5b44  1      OPC=nop             
  nop                                                    #  19    0xd5b45  1      OPC=nop             
  nop                                                    #  20    0xd5b46  1      OPC=nop             
                                                                                                      
.size _ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_leakedEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_leakedEv

