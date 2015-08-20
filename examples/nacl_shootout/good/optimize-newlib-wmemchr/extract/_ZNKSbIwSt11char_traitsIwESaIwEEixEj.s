  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEEixEj
  .type _ZNKSbIwSt11char_traitsIwESaIwEEixEj, @function

#! file-offset 0x115780
#! rip-offset  0xd5780
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEEixEj:  #        0xd5780  0      OPC=<label>         
  popq %r11                             #  1     0xd5780  2      OPC=popq_r64_1      
  movl %edi, %edi                       #  2     0xd5782  2      OPC=movl_r32_r32    
  leal (,%rsi,4), %eax                  #  3     0xd5784  7      OPC=leal_r32_m16    
  movl %edi, %edi                       #  4     0xd578b  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %eax              #  5     0xd578d  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d               #  6     0xd5791  7      OPC=andl_r32_imm32  
  nop                                   #  7     0xd5798  1      OPC=nop             
  nop                                   #  8     0xd5799  1      OPC=nop             
  nop                                   #  9     0xd579a  1      OPC=nop             
  nop                                   #  10    0xd579b  1      OPC=nop             
  addq %r15, %r11                       #  11    0xd579c  3      OPC=addq_r64_r64    
  jmpq %r11                             #  12    0xd579f  3      OPC=jmpq_r64        
  nop                                   #  13    0xd57a2  1      OPC=nop             
  nop                                   #  14    0xd57a3  1      OPC=nop             
  nop                                   #  15    0xd57a4  1      OPC=nop             
  nop                                   #  16    0xd57a5  1      OPC=nop             
  nop                                   #  17    0xd57a6  1      OPC=nop             
                                                                                     
.size _ZNKSbIwSt11char_traitsIwESaIwEEixEj, .-_ZNKSbIwSt11char_traitsIwESaIwEEixEj

