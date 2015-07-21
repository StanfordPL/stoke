  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj, @function

#! file-offset 0x11a1e0
#! rip-offset  0xda1e0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj:     #        0xda1e0  0      OPC=0     
  movl %ecx, %ecx                                       #  1     0xda1e0  2      OPC=1157  
  subl $0x8, %esp                                       #  2     0xda1e2  3      OPC=2384  
  addq %r15, %rsp                                       #  3     0xda1e5  3      OPC=72    
  movl %r8d, %eax                                       #  4     0xda1e8  3      OPC=1157  
  movl %ecx, %ecx                                       #  5     0xda1eb  2      OPC=1157  
  movl (%r15,%rcx,1), %ecx                              #  6     0xda1ed  4      OPC=1156  
  movl %edi, %edi                                       #  7     0xda1f1  2      OPC=1157  
  leal -0xc(%rcx), %r8d                                 #  8     0xda1f3  4      OPC=1066  
  movl %r8d, %r8d                                       #  9     0xda1f7  3      OPC=1157  
  movl (%r15,%r8,1), %r8d                               #  10    0xda1fa  4      OPC=1156  
  xchgw %ax, %ax                                        #  11    0xda1fe  2      OPC=3700  
  cmpl %r8d, %eax                                       #  12    0xda200  3      OPC=472   
  ja .L_da220                                           #  13    0xda203  6      OPC=863   
  nop                                                   #  14    0xda209  1      OPC=1343  
  nop                                                   #  15    0xda20a  1      OPC=1343  
  subl %eax, %r8d                                       #  16    0xda20b  3      OPC=2386  
  leal (%rcx,%rax,4), %ecx                              #  17    0xda20e  3      OPC=1066  
  cmpl %r9d, %r8d                                       #  18    0xda211  3      OPC=472   
  cmoval %r9d, %r8d                                     #  19    0xda214  4      OPC=272   
  addl $0x8, %esp                                       #  20    0xda218  3      OPC=65    
  addq %r15, %rsp                                       #  21    0xda21b  3      OPC=72    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj  #  22    0xda21e  5      OPC=930   
  nop                                                   #  23    0xda223  1      OPC=1343  
  nop                                                   #  24    0xda224  1      OPC=1343  
  nop                                                   #  25    0xda225  1      OPC=1343  
.L_da220:                                               #        0xda226  0      OPC=0     
  movl $0x1003bb5d, %edi                                #  26    0xda226  5      OPC=1154  
  nop                                                   #  27    0xda22b  1      OPC=1343  
  nop                                                   #  28    0xda22c  1      OPC=1343  
  nop                                                   #  29    0xda22d  1      OPC=1343  
  nop                                                   #  30    0xda22e  1      OPC=1343  
  nop                                                   #  31    0xda22f  1      OPC=1343  
  nop                                                   #  32    0xda230  1      OPC=1343  
  nop                                                   #  33    0xda231  1      OPC=1343  
  nop                                                   #  34    0xda232  1      OPC=1343  
  nop                                                   #  35    0xda233  1      OPC=1343  
  nop                                                   #  36    0xda234  1      OPC=1343  
  nop                                                   #  37    0xda235  1      OPC=1343  
  nop                                                   #  38    0xda236  1      OPC=1343  
  nop                                                   #  39    0xda237  1      OPC=1343  
  nop                                                   #  40    0xda238  1      OPC=1343  
  nop                                                   #  41    0xda239  1      OPC=1343  
  nop                                                   #  42    0xda23a  1      OPC=1343  
  nop                                                   #  43    0xda23b  1      OPC=1343  
  nop                                                   #  44    0xda23c  1      OPC=1343  
  nop                                                   #  45    0xda23d  1      OPC=1343  
  nop                                                   #  46    0xda23e  1      OPC=1343  
  nop                                                   #  47    0xda23f  1      OPC=1343  
  nop                                                   #  48    0xda240  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                  #  49    0xda241  5      OPC=260   
                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj

