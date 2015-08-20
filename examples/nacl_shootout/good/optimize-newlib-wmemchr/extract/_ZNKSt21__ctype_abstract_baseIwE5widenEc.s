  .text
  .globl _ZNKSt21__ctype_abstract_baseIwE5widenEc
  .type _ZNKSt21__ctype_abstract_baseIwE5widenEc, @function

#! file-offset 0xf2580
#! rip-offset  0xb2580
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt21__ctype_abstract_baseIwE5widenEc:  #        0xb2580  0      OPC=<label>         
  movl %edi, %edi                           #  1     0xb2580  2      OPC=movl_r32_r32    
  movsbl %sil, %esi                         #  2     0xb2582  4      OPC=movsbl_r32_r8   
  movl %edi, %edi                           #  3     0xb2586  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  4     0xb2588  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  5     0xb258c  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax              #  6     0xb258e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  7     0xb2593  6      OPC=andl_r32_imm32  
  nop                                       #  8     0xb2599  1      OPC=nop             
  nop                                       #  9     0xb259a  1      OPC=nop             
  nop                                       #  10    0xb259b  1      OPC=nop             
  addq %r15, %rax                           #  11    0xb259c  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  12    0xb259f  2      OPC=jmpq_r64        
  nop                                       #  13    0xb25a1  1      OPC=nop             
  nop                                       #  14    0xb25a2  1      OPC=nop             
  nop                                       #  15    0xb25a3  1      OPC=nop             
  nop                                       #  16    0xb25a4  1      OPC=nop             
  nop                                       #  17    0xb25a5  1      OPC=nop             
                                                                                         
.size _ZNKSt21__ctype_abstract_baseIwE5widenEc, .-_ZNKSt21__ctype_abstract_baseIwE5widenEc

