  .text
  .globl _ZNKSs5beginEv
  .type _ZNKSs5beginEv, @function

#! file-offset 0xeae00
#! rip-offset  0xaae00
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs5beginEv:            #        0xaae00  0      OPC=<label>         
  popq %r11                 #  1     0xaae00  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaae02  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaae04  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaae06  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaae0a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaae11  1      OPC=nop             
  nop                       #  7     0xaae12  1      OPC=nop             
  nop                       #  8     0xaae13  1      OPC=nop             
  nop                       #  9     0xaae14  1      OPC=nop             
  addq %r15, %r11           #  10    0xaae15  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaae18  3      OPC=jmpq_r64        
  nop                       #  12    0xaae1b  1      OPC=nop             
  nop                       #  13    0xaae1c  1      OPC=nop             
  nop                       #  14    0xaae1d  1      OPC=nop             
  nop                       #  15    0xaae1e  1      OPC=nop             
  nop                       #  16    0xaae1f  1      OPC=nop             
  nop                       #  17    0xaae20  1      OPC=nop             
  nop                       #  18    0xaae21  1      OPC=nop             
  nop                       #  19    0xaae22  1      OPC=nop             
  nop                       #  20    0xaae23  1      OPC=nop             
  nop                       #  21    0xaae24  1      OPC=nop             
  nop                       #  22    0xaae25  1      OPC=nop             
  nop                       #  23    0xaae26  1      OPC=nop             
                                                                         
.size _ZNKSs5beginEv, .-_ZNKSs5beginEv

