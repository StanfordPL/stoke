  .text
  .globl _ZNKSsixEj
  .type _ZNKSsixEj, @function

#! file-offset 0xeaf60
#! rip-offset  0xaaf60
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSsixEj:                #        0xaaf60  0      OPC=<label>         
  popq %r11                 #  1     0xaaf60  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaaf62  2      OPC=movl_r32_r32    
  movl %esi, %eax           #  3     0xaaf64  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  4     0xaaf66  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %eax  #  5     0xaaf68  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d   #  6     0xaaf6c  7      OPC=andl_r32_imm32  
  nop                       #  7     0xaaf73  1      OPC=nop             
  nop                       #  8     0xaaf74  1      OPC=nop             
  nop                       #  9     0xaaf75  1      OPC=nop             
  nop                       #  10    0xaaf76  1      OPC=nop             
  addq %r15, %r11           #  11    0xaaf77  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0xaaf7a  3      OPC=jmpq_r64        
  nop                       #  13    0xaaf7d  1      OPC=nop             
  nop                       #  14    0xaaf7e  1      OPC=nop             
  nop                       #  15    0xaaf7f  1      OPC=nop             
  nop                       #  16    0xaaf80  1      OPC=nop             
  nop                       #  17    0xaaf81  1      OPC=nop             
  nop                       #  18    0xaaf82  1      OPC=nop             
  nop                       #  19    0xaaf83  1      OPC=nop             
  nop                       #  20    0xaaf84  1      OPC=nop             
  nop                       #  21    0xaaf85  1      OPC=nop             
  nop                       #  22    0xaaf86  1      OPC=nop             
                                                                         
.size _ZNKSsixEj, .-_ZNKSsixEj

