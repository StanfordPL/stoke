  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv, @function

#! file-offset 0x1153a0
#! rip-offset  0xd53a0
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE4rendEv:  #        0xd53a0  0      OPC=<label>         
  movl %esi, %esi                          #  1     0xd53a0  2      OPC=movl_r32_r32    
  movl %edi, %eax                          #  2     0xd53a2  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  3     0xd53a4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                 #  4     0xd53a6  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  5     0xd53aa  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                 #  6     0xd53ac  4      OPC=movl_m32_r32    
  popq %r11                                #  7     0xd53b0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  8     0xd53b2  7      OPC=andl_r32_imm32  
  nop                                      #  9     0xd53b9  1      OPC=nop             
  nop                                      #  10    0xd53ba  1      OPC=nop             
  nop                                      #  11    0xd53bb  1      OPC=nop             
  nop                                      #  12    0xd53bc  1      OPC=nop             
  addq %r15, %r11                          #  13    0xd53bd  3      OPC=addq_r64_r64    
  jmpq %r11                                #  14    0xd53c0  3      OPC=jmpq_r64        
  nop                                      #  15    0xd53c3  1      OPC=nop             
  nop                                      #  16    0xd53c4  1      OPC=nop             
  nop                                      #  17    0xd53c5  1      OPC=nop             
  nop                                      #  18    0xd53c6  1      OPC=nop             
                                                                                        
.size _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE4rendEv

