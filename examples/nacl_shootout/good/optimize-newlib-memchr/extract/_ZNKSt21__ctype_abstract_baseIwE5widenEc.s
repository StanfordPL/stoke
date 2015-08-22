  .text
  .globl _ZNKSt21__ctype_abstract_baseIwE5widenEc
  .type _ZNKSt21__ctype_abstract_baseIwE5widenEc, @function

#! file-offset 0xf2ca0
#! rip-offset  0xb2ca0
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt21__ctype_abstract_baseIwE5widenEc:  #        0xb2ca0  0      OPC=<label>         
  movl %edi, %edi                           #  1     0xb2ca0  2      OPC=movl_r32_r32    
  movsbl %sil, %esi                         #  2     0xb2ca2  4      OPC=movsbl_r32_r8   
  movl %edi, %edi                           #  3     0xb2ca6  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  4     0xb2ca8  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  5     0xb2cac  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax              #  6     0xb2cae  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  7     0xb2cb3  6      OPC=andl_r32_imm32  
  nop                                       #  8     0xb2cb9  1      OPC=nop             
  nop                                       #  9     0xb2cba  1      OPC=nop             
  nop                                       #  10    0xb2cbb  1      OPC=nop             
  addq %r15, %rax                           #  11    0xb2cbc  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  12    0xb2cbf  2      OPC=jmpq_r64        
  nop                                       #  13    0xb2cc1  1      OPC=nop             
  nop                                       #  14    0xb2cc2  1      OPC=nop             
  nop                                       #  15    0xb2cc3  1      OPC=nop             
  nop                                       #  16    0xb2cc4  1      OPC=nop             
  nop                                       #  17    0xb2cc5  1      OPC=nop             
                                                                                         
.size _ZNKSt21__ctype_abstract_baseIwE5widenEc, .-_ZNKSt21__ctype_abstract_baseIwE5widenEc

