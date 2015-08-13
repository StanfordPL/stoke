  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEEixEj
  .type _ZNKSbIwSt11char_traitsIwESaIwEEixEj, @function

#! file-offset 0x115480
#! rip-offset  0xd5480
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEEixEj:  #        0xd5480  0      OPC=<label>         
  popq %r11                             #  1     0xd5480  2      OPC=popq_r64_1      
  movl %edi, %edi                       #  2     0xd5482  2      OPC=movl_r32_r32    
  leal (,%rsi,4), %eax                  #  3     0xd5484  7      OPC=leal_r32_m16    
  movl %edi, %edi                       #  4     0xd548b  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %eax              #  5     0xd548d  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d               #  6     0xd5491  7      OPC=andl_r32_imm32  
  nop                                   #  7     0xd5498  1      OPC=nop             
  nop                                   #  8     0xd5499  1      OPC=nop             
  nop                                   #  9     0xd549a  1      OPC=nop             
  nop                                   #  10    0xd549b  1      OPC=nop             
  addq %r15, %r11                       #  11    0xd549c  3      OPC=addq_r64_r64    
  jmpq %r11                             #  12    0xd549f  3      OPC=jmpq_r64        
  nop                                   #  13    0xd54a2  1      OPC=nop             
  nop                                   #  14    0xd54a3  1      OPC=nop             
  nop                                   #  15    0xd54a4  1      OPC=nop             
  nop                                   #  16    0xd54a5  1      OPC=nop             
  nop                                   #  17    0xd54a6  1      OPC=nop             
                                                                                     
.size _ZNKSbIwSt11char_traitsIwESaIwEEixEj, .-_ZNKSbIwSt11char_traitsIwESaIwEEixEj

