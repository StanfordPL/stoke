  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv, @function

#! file-offset 0x1156a0
#! rip-offset  0xd56a0
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE4rendEv:  #        0xd56a0  0      OPC=<label>         
  movl %esi, %esi                          #  1     0xd56a0  2      OPC=movl_r32_r32    
  movl %edi, %eax                          #  2     0xd56a2  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  3     0xd56a4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                 #  4     0xd56a6  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  5     0xd56aa  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                 #  6     0xd56ac  4      OPC=movl_m32_r32    
  popq %r11                                #  7     0xd56b0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  8     0xd56b2  7      OPC=andl_r32_imm32  
  nop                                      #  9     0xd56b9  1      OPC=nop             
  nop                                      #  10    0xd56ba  1      OPC=nop             
  nop                                      #  11    0xd56bb  1      OPC=nop             
  nop                                      #  12    0xd56bc  1      OPC=nop             
  addq %r15, %r11                          #  13    0xd56bd  3      OPC=addq_r64_r64    
  jmpq %r11                                #  14    0xd56c0  3      OPC=jmpq_r64        
  nop                                      #  15    0xd56c3  1      OPC=nop             
  nop                                      #  16    0xd56c4  1      OPC=nop             
  nop                                      #  17    0xd56c5  1      OPC=nop             
  nop                                      #  18    0xd56c6  1      OPC=nop             
                                                                                        
.size _ZNKSbIwSt11char_traitsIwESaIwEE4rendEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE4rendEv

