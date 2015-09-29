  .text
  .globl _ZNKSt8numpunctIwE16do_thousands_sepEv
  .type _ZNKSt8numpunctIwE16do_thousands_sepEv, @function

#! file-offset 0xf10e0
#! rip-offset  0xb10e0
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE16do_thousands_sepEv:  #        0xb10e0  0      OPC=<label>         
  movl %edi, %edi                         #  1     0xb10e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  2     0xb10e2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax             #  3     0xb10e4  5      OPC=movl_r32_m32    
  popq %r11                               #  4     0xb10e9  2      OPC=popq_r64_1      
  movl %eax, %eax                         #  5     0xb10eb  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax            #  6     0xb10ed  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                 #  7     0xb10f2  7      OPC=andl_r32_imm32  
  nop                                     #  8     0xb10f9  1      OPC=nop             
  nop                                     #  9     0xb10fa  1      OPC=nop             
  nop                                     #  10    0xb10fb  1      OPC=nop             
  nop                                     #  11    0xb10fc  1      OPC=nop             
  addq %r15, %r11                         #  12    0xb10fd  3      OPC=addq_r64_r64    
  jmpq %r11                               #  13    0xb1100  3      OPC=jmpq_r64        
  nop                                     #  14    0xb1103  1      OPC=nop             
  nop                                     #  15    0xb1104  1      OPC=nop             
  nop                                     #  16    0xb1105  1      OPC=nop             
  nop                                     #  17    0xb1106  1      OPC=nop             
                                                                                       
.size _ZNKSt8numpunctIwE16do_thousands_sepEv, .-_ZNKSt8numpunctIwE16do_thousands_sepEv

