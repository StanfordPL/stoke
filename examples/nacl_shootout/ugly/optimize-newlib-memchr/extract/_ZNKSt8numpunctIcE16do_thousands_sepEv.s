  .text
  .globl _ZNKSt8numpunctIcE16do_thousands_sepEv
  .type _ZNKSt8numpunctIcE16do_thousands_sepEv, @function

#! file-offset 0xb80a0
#! rip-offset  0x780a0
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE16do_thousands_sepEv:  #        0x780a0  0      OPC=<label>         
  movl %edi, %edi                         #  1     0x780a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  2     0x780a2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax             #  3     0x780a4  5      OPC=movl_r32_m32    
  popq %r11                               #  4     0x780a9  2      OPC=popq_r64_1      
  movl %eax, %eax                         #  5     0x780ab  2      OPC=movl_r32_r32    
  movzbl 0x25(%r15,%rax,1), %eax          #  6     0x780ad  6      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                 #  7     0x780b3  7      OPC=andl_r32_imm32  
  nop                                     #  8     0x780ba  1      OPC=nop             
  nop                                     #  9     0x780bb  1      OPC=nop             
  nop                                     #  10    0x780bc  1      OPC=nop             
  nop                                     #  11    0x780bd  1      OPC=nop             
  addq %r15, %r11                         #  12    0x780be  3      OPC=addq_r64_r64    
  jmpq %r11                               #  13    0x780c1  3      OPC=jmpq_r64        
  nop                                     #  14    0x780c4  1      OPC=nop             
  nop                                     #  15    0x780c5  1      OPC=nop             
  nop                                     #  16    0x780c6  1      OPC=nop             
                                                                                       
.size _ZNKSt8numpunctIcE16do_thousands_sepEv, .-_ZNKSt8numpunctIcE16do_thousands_sepEv

