  .text
  .globl _ZNKSs5c_strEv
  .type _ZNKSs5c_strEv, @function

#! file-offset 0xeb000
#! rip-offset  0xab000
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs5c_strEv:            #        0xab000  0      OPC=<label>         
  popq %r11                 #  1     0xab000  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xab002  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xab004  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xab006  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xab00a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xab011  1      OPC=nop             
  nop                       #  7     0xab012  1      OPC=nop             
  nop                       #  8     0xab013  1      OPC=nop             
  nop                       #  9     0xab014  1      OPC=nop             
  addq %r15, %r11           #  10    0xab015  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xab018  3      OPC=jmpq_r64        
  nop                       #  12    0xab01b  1      OPC=nop             
  nop                       #  13    0xab01c  1      OPC=nop             
  nop                       #  14    0xab01d  1      OPC=nop             
  nop                       #  15    0xab01e  1      OPC=nop             
  nop                       #  16    0xab01f  1      OPC=nop             
  nop                       #  17    0xab020  1      OPC=nop             
  nop                       #  18    0xab021  1      OPC=nop             
  nop                       #  19    0xab022  1      OPC=nop             
  nop                       #  20    0xab023  1      OPC=nop             
  nop                       #  21    0xab024  1      OPC=nop             
  nop                       #  22    0xab025  1      OPC=nop             
  nop                       #  23    0xab026  1      OPC=nop             
                                                                         
.size _ZNKSs5c_strEv, .-_ZNKSs5c_strEv

