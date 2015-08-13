  .text
  .globl _ZNKSt8numpunctIcE16do_decimal_pointEv
  .type _ZNKSt8numpunctIcE16do_decimal_pointEv, @function

#! file-offset 0xb7660
#! rip-offset  0x77660
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE16do_decimal_pointEv:  #        0x77660  0      OPC=<label>         
  movl %edi, %edi                         #  1     0x77660  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  2     0x77662  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax             #  3     0x77664  5      OPC=movl_r32_m32    
  popq %r11                               #  4     0x77669  2      OPC=popq_r64_1      
  movl %eax, %eax                         #  5     0x7766b  2      OPC=movl_r32_r32    
  movzbl 0x24(%r15,%rax,1), %eax          #  6     0x7766d  6      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                 #  7     0x77673  7      OPC=andl_r32_imm32  
  nop                                     #  8     0x7767a  1      OPC=nop             
  nop                                     #  9     0x7767b  1      OPC=nop             
  nop                                     #  10    0x7767c  1      OPC=nop             
  nop                                     #  11    0x7767d  1      OPC=nop             
  addq %r15, %r11                         #  12    0x7767e  3      OPC=addq_r64_r64    
  jmpq %r11                               #  13    0x77681  3      OPC=jmpq_r64        
  nop                                     #  14    0x77684  1      OPC=nop             
  nop                                     #  15    0x77685  1      OPC=nop             
  nop                                     #  16    0x77686  1      OPC=nop             
                                                                                       
.size _ZNKSt8numpunctIcE16do_decimal_pointEv, .-_ZNKSt8numpunctIcE16do_decimal_pointEv

