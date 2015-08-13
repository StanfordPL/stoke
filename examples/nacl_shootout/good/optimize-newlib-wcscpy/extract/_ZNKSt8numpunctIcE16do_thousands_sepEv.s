  .text
  .globl _ZNKSt8numpunctIcE16do_thousands_sepEv
  .type _ZNKSt8numpunctIcE16do_thousands_sepEv, @function

#! file-offset 0xb7680
#! rip-offset  0x77680
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE16do_thousands_sepEv:  #        0x77680  0      OPC=<label>         
  movl %edi, %edi                         #  1     0x77680  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  2     0x77682  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax             #  3     0x77684  5      OPC=movl_r32_m32    
  popq %r11                               #  4     0x77689  2      OPC=popq_r64_1      
  movl %eax, %eax                         #  5     0x7768b  2      OPC=movl_r32_r32    
  movzbl 0x25(%r15,%rax,1), %eax          #  6     0x7768d  6      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                 #  7     0x77693  7      OPC=andl_r32_imm32  
  nop                                     #  8     0x7769a  1      OPC=nop             
  nop                                     #  9     0x7769b  1      OPC=nop             
  nop                                     #  10    0x7769c  1      OPC=nop             
  nop                                     #  11    0x7769d  1      OPC=nop             
  addq %r15, %r11                         #  12    0x7769e  3      OPC=addq_r64_r64    
  jmpq %r11                               #  13    0x776a1  3      OPC=jmpq_r64        
  nop                                     #  14    0x776a4  1      OPC=nop             
  nop                                     #  15    0x776a5  1      OPC=nop             
  nop                                     #  16    0x776a6  1      OPC=nop             
                                                                                       
.size _ZNKSt8numpunctIcE16do_thousands_sepEv, .-_ZNKSt8numpunctIcE16do_thousands_sepEv

