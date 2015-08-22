  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv, @function

#! file-offset 0x115dc0
#! rip-offset  0xd5dc0
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE4rendEv:  #        0xd5dc0  0      OPC=<label>         
  movl %esi, %esi                          #  1     0xd5dc0  2      OPC=movl_r32_r32    
  movl %edi, %eax                          #  2     0xd5dc2  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  3     0xd5dc4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                 #  4     0xd5dc6  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  5     0xd5dca  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                 #  6     0xd5dcc  4      OPC=movl_m32_r32    
  popq %r11                                #  7     0xd5dd0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  8     0xd5dd2  7      OPC=andl_r32_imm32  
  nop                                      #  9     0xd5dd9  1      OPC=nop             
  nop                                      #  10    0xd5dda  1      OPC=nop             
  nop                                      #  11    0xd5ddb  1      OPC=nop             
  nop                                      #  12    0xd5ddc  1      OPC=nop             
  addq %r15, %r11                          #  13    0xd5ddd  3      OPC=addq_r64_r64    
  jmpq %r11                                #  14    0xd5de0  3      OPC=jmpq_r64        
  nop                                      #  15    0xd5de3  1      OPC=nop             
  nop                                      #  16    0xd5de4  1      OPC=nop             
  nop                                      #  17    0xd5de5  1      OPC=nop             
  nop                                      #  18    0xd5de6  1      OPC=nop             
                                                                                        
.size _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE4rendEv

