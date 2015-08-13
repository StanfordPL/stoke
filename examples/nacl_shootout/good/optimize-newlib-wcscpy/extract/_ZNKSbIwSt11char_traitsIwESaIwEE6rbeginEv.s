  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv, @function

#! file-offset 0x115360
#! rip-offset  0xd5360
#! capacity    64 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv:  #        0xd5360  0      OPC=<label>         
  movl %esi, %esi                            #  1     0xd5360  2      OPC=movl_r32_r32    
  movl %edi, %eax                            #  2     0xd5362  2      OPC=movl_r32_r32    
  movl %esi, %esi                            #  3     0xd5364  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                   #  4     0xd5366  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx                      #  5     0xd536a  3      OPC=leal_r32_m16    
  movl %ecx, %ecx                            #  6     0xd536d  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx                   #  7     0xd536f  4      OPC=movl_r32_m32    
  leal (%rdx,%rcx,4), %edx                   #  8     0xd5373  3      OPC=leal_r32_m16    
  movl %eax, %eax                            #  9     0xd5376  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                   #  10    0xd5378  4      OPC=movl_m32_r32    
  popq %r11                                  #  11    0xd537c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                             #  12    0xd537e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                    #  13    0xd5380  7      OPC=andl_r32_imm32  
  nop                                        #  14    0xd5387  1      OPC=nop             
  nop                                        #  15    0xd5388  1      OPC=nop             
  nop                                        #  16    0xd5389  1      OPC=nop             
  nop                                        #  17    0xd538a  1      OPC=nop             
  addq %r15, %r11                            #  18    0xd538b  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  19    0xd538e  3      OPC=jmpq_r64        
  nop                                        #  20    0xd5391  1      OPC=nop             
  nop                                        #  21    0xd5392  1      OPC=nop             
  nop                                        #  22    0xd5393  1      OPC=nop             
  nop                                        #  23    0xd5394  1      OPC=nop             
  nop                                        #  24    0xd5395  1      OPC=nop             
  nop                                        #  25    0xd5396  1      OPC=nop             
  nop                                        #  26    0xd5397  1      OPC=nop             
  nop                                        #  27    0xd5398  1      OPC=nop             
  nop                                        #  28    0xd5399  1      OPC=nop             
  nop                                        #  29    0xd539a  1      OPC=nop             
  nop                                        #  30    0xd539b  1      OPC=nop             
  nop                                        #  31    0xd539c  1      OPC=nop             
  nop                                        #  32    0xd539d  1      OPC=nop             
  nop                                        #  33    0xd539e  1      OPC=nop             
  nop                                        #  34    0xd539f  1      OPC=nop             
  nop                                        #  35    0xd53a0  1      OPC=nop             
  nop                                        #  36    0xd53a1  1      OPC=nop             
  nop                                        #  37    0xd53a2  1      OPC=nop             
  nop                                        #  38    0xd53a3  1      OPC=nop             
  nop                                        #  39    0xd53a4  1      OPC=nop             
  nop                                        #  40    0xd53a5  1      OPC=nop             
  nop                                        #  41    0xd53a6  1      OPC=nop             
                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE6rbeginEv

