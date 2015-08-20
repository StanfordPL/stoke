  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv, @function

#! file-offset 0x115660
#! rip-offset  0xd5660
#! capacity    64 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv:  #        0xd5660  0      OPC=<label>         
  movl %esi, %esi                            #  1     0xd5660  2      OPC=movl_r32_r32    
  movl %edi, %eax                            #  2     0xd5662  2      OPC=movl_r32_r32    
  movl %esi, %esi                            #  3     0xd5664  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                   #  4     0xd5666  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx                      #  5     0xd566a  3      OPC=leal_r32_m16    
  movl %ecx, %ecx                            #  6     0xd566d  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx                   #  7     0xd566f  4      OPC=movl_r32_m32    
  leal (%rdx,%rcx,4), %edx                   #  8     0xd5673  3      OPC=leal_r32_m16    
  movl %eax, %eax                            #  9     0xd5676  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                   #  10    0xd5678  4      OPC=movl_m32_r32    
  popq %r11                                  #  11    0xd567c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                             #  12    0xd567e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                    #  13    0xd5680  7      OPC=andl_r32_imm32  
  nop                                        #  14    0xd5687  1      OPC=nop             
  nop                                        #  15    0xd5688  1      OPC=nop             
  nop                                        #  16    0xd5689  1      OPC=nop             
  nop                                        #  17    0xd568a  1      OPC=nop             
  addq %r15, %r11                            #  18    0xd568b  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  19    0xd568e  3      OPC=jmpq_r64        
  nop                                        #  20    0xd5691  1      OPC=nop             
  nop                                        #  21    0xd5692  1      OPC=nop             
  nop                                        #  22    0xd5693  1      OPC=nop             
  nop                                        #  23    0xd5694  1      OPC=nop             
  nop                                        #  24    0xd5695  1      OPC=nop             
  nop                                        #  25    0xd5696  1      OPC=nop             
  nop                                        #  26    0xd5697  1      OPC=nop             
  nop                                        #  27    0xd5698  1      OPC=nop             
  nop                                        #  28    0xd5699  1      OPC=nop             
  nop                                        #  29    0xd569a  1      OPC=nop             
  nop                                        #  30    0xd569b  1      OPC=nop             
  nop                                        #  31    0xd569c  1      OPC=nop             
  nop                                        #  32    0xd569d  1      OPC=nop             
  nop                                        #  33    0xd569e  1      OPC=nop             
  nop                                        #  34    0xd569f  1      OPC=nop             
  nop                                        #  35    0xd56a0  1      OPC=nop             
  nop                                        #  36    0xd56a1  1      OPC=nop             
  nop                                        #  37    0xd56a2  1      OPC=nop             
  nop                                        #  38    0xd56a3  1      OPC=nop             
  nop                                        #  39    0xd56a4  1      OPC=nop             
  nop                                        #  40    0xd56a5  1      OPC=nop             
  nop                                        #  41    0xd56a6  1      OPC=nop             
                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv

