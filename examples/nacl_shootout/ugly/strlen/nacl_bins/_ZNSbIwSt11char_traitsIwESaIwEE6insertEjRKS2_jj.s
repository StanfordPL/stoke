  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj, @function

#! file-offset 0x1198e0
#! rip-offset  0xd98e0
#! capacity    96 bytes

# Text                                                #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj:     #        0xd98e0  0      OPC=0     
  movl %edx, %edx                                     #  1     0xd98e0  2      OPC=1157  
  subl $0x8, %esp                                     #  2     0xd98e2  3      OPC=2384  
  addq %r15, %rsp                                     #  3     0xd98e5  3      OPC=72    
  movl %edi, %edi                                     #  4     0xd98e8  2      OPC=1157  
  movl %edx, %edx                                     #  5     0xd98ea  2      OPC=1157  
  movl (%r15,%rdx,1), %edx                            #  6     0xd98ec  4      OPC=1156  
  leal -0xc(%rdx), %eax                               #  7     0xd98f0  3      OPC=1066  
  movl %eax, %eax                                     #  8     0xd98f3  2      OPC=1157  
  movl (%r15,%rax,1), %eax                            #  9     0xd98f5  4      OPC=1156  
  cmpl %eax, %ecx                                     #  10    0xd98f9  2      OPC=472   
  nop                                                 #  11    0xd98fb  1      OPC=1343  
  nop                                                 #  12    0xd98fc  1      OPC=1343  
  nop                                                 #  13    0xd98fd  1      OPC=1343  
  nop                                                 #  14    0xd98fe  1      OPC=1343  
  nop                                                 #  15    0xd98ff  1      OPC=1343  
  ja .L_d9920                                         #  16    0xd9900  6      OPC=863   
  nop                                                 #  17    0xd9906  1      OPC=1343  
  nop                                                 #  18    0xd9907  1      OPC=1343  
  subl %ecx, %eax                                     #  19    0xd9908  2      OPC=2386  
  leal (%rdx,%rcx,4), %edx                            #  20    0xd990a  3      OPC=1066  
  cmpl %r8d, %eax                                     #  21    0xd990d  3      OPC=472   
  cmoval %r8d, %eax                                   #  22    0xd9910  4      OPC=272   
  addl $0x8, %esp                                     #  23    0xd9914  3      OPC=65    
  addq %r15, %rsp                                     #  24    0xd9917  3      OPC=72    
  movl %eax, %ecx                                     #  25    0xd991a  2      OPC=1157  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6insertEjPKwj  #  26    0xd991c  5      OPC=930   
  nop                                                 #  27    0xd9921  1      OPC=1343  
  nop                                                 #  28    0xd9922  1      OPC=1343  
  nop                                                 #  29    0xd9923  1      OPC=1343  
  nop                                                 #  30    0xd9924  1      OPC=1343  
  nop                                                 #  31    0xd9925  1      OPC=1343  
.L_d9920:                                             #        0xd9926  0      OPC=0     
  movl $0x1003bb73, %edi                              #  32    0xd9926  5      OPC=1154  
  nop                                                 #  33    0xd992b  1      OPC=1343  
  nop                                                 #  34    0xd992c  1      OPC=1343  
  nop                                                 #  35    0xd992d  1      OPC=1343  
  nop                                                 #  36    0xd992e  1      OPC=1343  
  nop                                                 #  37    0xd992f  1      OPC=1343  
  nop                                                 #  38    0xd9930  1      OPC=1343  
  nop                                                 #  39    0xd9931  1      OPC=1343  
  nop                                                 #  40    0xd9932  1      OPC=1343  
  nop                                                 #  41    0xd9933  1      OPC=1343  
  nop                                                 #  42    0xd9934  1      OPC=1343  
  nop                                                 #  43    0xd9935  1      OPC=1343  
  nop                                                 #  44    0xd9936  1      OPC=1343  
  nop                                                 #  45    0xd9937  1      OPC=1343  
  nop                                                 #  46    0xd9938  1      OPC=1343  
  nop                                                 #  47    0xd9939  1      OPC=1343  
  nop                                                 #  48    0xd993a  1      OPC=1343  
  nop                                                 #  49    0xd993b  1      OPC=1343  
  nop                                                 #  50    0xd993c  1      OPC=1343  
  nop                                                 #  51    0xd993d  1      OPC=1343  
  nop                                                 #  52    0xd993e  1      OPC=1343  
  nop                                                 #  53    0xd993f  1      OPC=1343  
  nop                                                 #  54    0xd9940  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                #  55    0xd9941  5      OPC=260   
                                                                                         
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj

