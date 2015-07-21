  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_, @function

#! file-offset 0x115700
#! rip-offset  0xd5700
#! capacity    96 bytes

# Text                                            #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_:  #        0xd5700  0      OPC=0     
  pushq %r12                                      #  1     0xd5700  2      OPC=1861  
  movl %edi, %edi                                 #  2     0xd5702  2      OPC=1157  
  movl %esi, %esi                                 #  3     0xd5704  2      OPC=1157  
  pushq %rbx                                      #  4     0xd5706  1      OPC=1861  
  subl $0x8, %esp                                 #  5     0xd5707  3      OPC=2384  
  addq %r15, %rsp                                 #  6     0xd570a  3      OPC=72    
  movl %edi, %edi                                 #  7     0xd570d  2      OPC=1157  
  movl (%r15,%rdi,1), %edi                        #  8     0xd570f  4      OPC=1156  
  movl %esi, %esi                                 #  9     0xd5713  2      OPC=1157  
  movl (%r15,%rsi,1), %esi                        #  10    0xd5715  4      OPC=1156  
  leal -0xc(%rdi), %eax                           #  11    0xd5719  3      OPC=1066  
  nop                                             #  12    0xd571c  1      OPC=1343  
  nop                                             #  13    0xd571d  1      OPC=1343  
  nop                                             #  14    0xd571e  1      OPC=1343  
  nop                                             #  15    0xd571f  1      OPC=1343  
  movl %eax, %eax                                 #  16    0xd5720  2      OPC=1157  
  movl (%r15,%rax,1), %r12d                       #  17    0xd5722  4      OPC=1156  
  leal -0xc(%rsi), %eax                           #  18    0xd5726  3      OPC=1066  
  movl %eax, %eax                                 #  19    0xd5729  2      OPC=1157  
  movl (%r15,%rax,1), %ebx                        #  20    0xd572b  4      OPC=1156  
  movl %r12d, %edx                                #  21    0xd572f  3      OPC=1157  
  cmpl %r12d, %ebx                                #  22    0xd5732  3      OPC=472   
  cmovbel %ebx, %edx                              #  23    0xd5735  3      OPC=290   
  subl %ebx, %r12d                                #  24    0xd5738  3      OPC=2386  
  callq .wmemcmp                                  #  25    0xd573b  5      OPC=260   
  testl %eax, %eax                                #  26    0xd5740  2      OPC=2436  
  cmovel %r12d, %eax                              #  27    0xd5742  4      OPC=302   
  addl $0x8, %esp                                 #  28    0xd5746  3      OPC=65    
  addq %r15, %rsp                                 #  29    0xd5749  3      OPC=72    
  popq %rbx                                       #  30    0xd574c  1      OPC=1694  
  popq %r12                                       #  31    0xd574d  2      OPC=1694  
  popq %r11                                       #  32    0xd574f  2      OPC=1694  
  andl $0xffffffe0, %r11d                         #  33    0xd5751  7      OPC=131   
  nop                                             #  34    0xd5758  1      OPC=1343  
  nop                                             #  35    0xd5759  1      OPC=1343  
  nop                                             #  36    0xd575a  1      OPC=1343  
  nop                                             #  37    0xd575b  1      OPC=1343  
  addq %r15, %r11                                 #  38    0xd575c  3      OPC=72    
  jmpq %r11                                       #  39    0xd575f  3      OPC=928   
  nop                                             #  40    0xd5762  1      OPC=1343  
  nop                                             #  41    0xd5763  1      OPC=1343  
  nop                                             #  42    0xd5764  1      OPC=1343  
  nop                                             #  43    0xd5765  1      OPC=1343  
  nop                                             #  44    0xd5766  1      OPC=1343  
                                                                                     
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareERKS2_

