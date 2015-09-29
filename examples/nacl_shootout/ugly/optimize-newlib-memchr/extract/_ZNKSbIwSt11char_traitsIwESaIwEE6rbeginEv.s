  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv, @function

#! file-offset 0x115d80
#! rip-offset  0xd5d80
#! capacity    64 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv:  #        0xd5d80  0      OPC=<label>         
  movl %esi, %esi                            #  1     0xd5d80  2      OPC=movl_r32_r32    
  movl %edi, %eax                            #  2     0xd5d82  2      OPC=movl_r32_r32    
  movl %esi, %esi                            #  3     0xd5d84  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                   #  4     0xd5d86  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx                      #  5     0xd5d8a  3      OPC=leal_r32_m16    
  movl %ecx, %ecx                            #  6     0xd5d8d  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx                   #  7     0xd5d8f  4      OPC=movl_r32_m32    
  leal (%rdx,%rcx,4), %edx                   #  8     0xd5d93  3      OPC=leal_r32_m16    
  movl %eax, %eax                            #  9     0xd5d96  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                   #  10    0xd5d98  4      OPC=movl_m32_r32    
  popq %r11                                  #  11    0xd5d9c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                             #  12    0xd5d9e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                    #  13    0xd5da0  7      OPC=andl_r32_imm32  
  nop                                        #  14    0xd5da7  1      OPC=nop             
  nop                                        #  15    0xd5da8  1      OPC=nop             
  nop                                        #  16    0xd5da9  1      OPC=nop             
  nop                                        #  17    0xd5daa  1      OPC=nop             
  addq %r15, %r11                            #  18    0xd5dab  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  19    0xd5dae  3      OPC=jmpq_r64        
  nop                                        #  20    0xd5db1  1      OPC=nop             
  nop                                        #  21    0xd5db2  1      OPC=nop             
  nop                                        #  22    0xd5db3  1      OPC=nop             
  nop                                        #  23    0xd5db4  1      OPC=nop             
  nop                                        #  24    0xd5db5  1      OPC=nop             
  nop                                        #  25    0xd5db6  1      OPC=nop             
  nop                                        #  26    0xd5db7  1      OPC=nop             
  nop                                        #  27    0xd5db8  1      OPC=nop             
  nop                                        #  28    0xd5db9  1      OPC=nop             
  nop                                        #  29    0xd5dba  1      OPC=nop             
  nop                                        #  30    0xd5dbb  1      OPC=nop             
  nop                                        #  31    0xd5dbc  1      OPC=nop             
  nop                                        #  32    0xd5dbd  1      OPC=nop             
  nop                                        #  33    0xd5dbe  1      OPC=nop             
  nop                                        #  34    0xd5dbf  1      OPC=nop             
  nop                                        #  35    0xd5dc0  1      OPC=nop             
  nop                                        #  36    0xd5dc1  1      OPC=nop             
  nop                                        #  37    0xd5dc2  1      OPC=nop             
  nop                                        #  38    0xd5dc3  1      OPC=nop             
  nop                                        #  39    0xd5dc4  1      OPC=nop             
  nop                                        #  40    0xd5dc5  1      OPC=nop             
  nop                                        #  41    0xd5dc6  1      OPC=nop             
                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv

