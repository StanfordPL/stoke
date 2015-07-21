  .text
  .globl _ZNKSt21__ctype_abstract_baseIwE5widenEc
  .type _ZNKSt21__ctype_abstract_baseIwE5widenEc, @function

#! file-offset 0xf1d40
#! rip-offset  0xb1d40
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode    
._ZNKSt21__ctype_abstract_baseIwE5widenEc:  #        0xb1d40  0      OPC=0     
  movl %edi, %edi                           #  1     0xb1d40  2      OPC=1157  
  movsbl %sil, %esi                         #  2     0xb1d42  4      OPC=1282  
  movl %edi, %edi                           #  3     0xb1d46  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                  #  4     0xb1d48  4      OPC=1156  
  movl %eax, %eax                           #  5     0xb1d4c  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax              #  6     0xb1d4e  5      OPC=1156  
  andl $0xffffffe0, %eax                    #  7     0xb1d53  6      OPC=131   
  nop                                       #  8     0xb1d59  1      OPC=1343  
  nop                                       #  9     0xb1d5a  1      OPC=1343  
  nop                                       #  10    0xb1d5b  1      OPC=1343  
  addq %r15, %rax                           #  11    0xb1d5c  3      OPC=72    
  jmpq %rax                                 #  12    0xb1d5f  2      OPC=928   
  nop                                       #  13    0xb1d61  1      OPC=1343  
  nop                                       #  14    0xb1d62  1      OPC=1343  
  nop                                       #  15    0xb1d63  1      OPC=1343  
  nop                                       #  16    0xb1d64  1      OPC=1343  
  nop                                       #  17    0xb1d65  1      OPC=1343  
                                                                               
.size _ZNKSt21__ctype_abstract_baseIwE5widenEc, .-_ZNKSt21__ctype_abstract_baseIwE5widenEc

