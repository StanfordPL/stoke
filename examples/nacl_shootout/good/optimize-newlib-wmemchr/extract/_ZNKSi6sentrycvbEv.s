  .text
  .globl _ZNKSi6sentrycvbEv
  .type _ZNKSi6sentrycvbEv, @function

#! file-offset 0xa7180
#! rip-offset  0x67180
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNKSi6sentrycvbEv:          #        0x67180  0      OPC=<label>         
  popq %r11                   #  1     0x67180  2      OPC=popq_r64_1      
  movl %edi, %edi             #  2     0x67182  2      OPC=movl_r32_r32    
  movl %edi, %edi             #  3     0x67184  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %eax  #  4     0x67186  5      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d     #  5     0x6718b  7      OPC=andl_r32_imm32  
  nop                         #  6     0x67192  1      OPC=nop             
  nop                         #  7     0x67193  1      OPC=nop             
  nop                         #  8     0x67194  1      OPC=nop             
  nop                         #  9     0x67195  1      OPC=nop             
  addq %r15, %r11             #  10    0x67196  3      OPC=addq_r64_r64    
  jmpq %r11                   #  11    0x67199  3      OPC=jmpq_r64        
  nop                         #  12    0x6719c  1      OPC=nop             
  nop                         #  13    0x6719d  1      OPC=nop             
  nop                         #  14    0x6719e  1      OPC=nop             
  nop                         #  15    0x6719f  1      OPC=nop             
  nop                         #  16    0x671a0  1      OPC=nop             
  nop                         #  17    0x671a1  1      OPC=nop             
  nop                         #  18    0x671a2  1      OPC=nop             
  nop                         #  19    0x671a3  1      OPC=nop             
  nop                         #  20    0x671a4  1      OPC=nop             
  nop                         #  21    0x671a5  1      OPC=nop             
  nop                         #  22    0x671a6  1      OPC=nop             
                                                                           
.size _ZNKSi6sentrycvbEv, .-_ZNKSi6sentrycvbEv

