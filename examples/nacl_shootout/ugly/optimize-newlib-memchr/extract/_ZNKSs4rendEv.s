  .text
  .globl _ZNKSs4rendEv
  .type _ZNKSs4rendEv, @function

#! file-offset 0xeae80
#! rip-offset  0xaae80
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs4rendEv:             #        0xaae80  0      OPC=<label>         
  movl %esi, %esi           #  1     0xaae80  2      OPC=movl_r32_r32    
  movl %edi, %eax           #  2     0xaae82  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0xaae84  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  4     0xaae86  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0xaae8a  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)  #  6     0xaae8c  4      OPC=movl_m32_r32    
  popq %r11                 #  7     0xaae90  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  8     0xaae92  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaae99  1      OPC=nop             
  nop                       #  10    0xaae9a  1      OPC=nop             
  nop                       #  11    0xaae9b  1      OPC=nop             
  nop                       #  12    0xaae9c  1      OPC=nop             
  addq %r15, %r11           #  13    0xaae9d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaaea0  3      OPC=jmpq_r64        
  nop                       #  15    0xaaea3  1      OPC=nop             
  nop                       #  16    0xaaea4  1      OPC=nop             
  nop                       #  17    0xaaea5  1      OPC=nop             
  nop                       #  18    0xaaea6  1      OPC=nop             
                                                                         
.size _ZNKSs4rendEv, .-_ZNKSs4rendEv

