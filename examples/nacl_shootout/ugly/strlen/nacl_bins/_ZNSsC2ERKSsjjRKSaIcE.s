  .text
  .globl _ZNSsC2ERKSsjjRKSaIcE
  .type _ZNSsC2ERKSsjjRKSaIcE, @function

#! file-offset 0xed3a0
#! rip-offset  0xad3a0
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC2ERKSsjjRKSaIcE:                                                   #        0xad3a0  0      OPC=0     
  pushq %rbx                                                              #  1     0xad3a0  1      OPC=1861  
  movl %esi, %esi                                                         #  2     0xad3a1  2      OPC=1157  
  movl %edi, %ebx                                                         #  3     0xad3a3  2      OPC=1157  
  movl %r8d, %r8d                                                         #  4     0xad3a5  3      OPC=1157  
  subl $0x10, %esp                                                        #  5     0xad3a8  3      OPC=2384  
  addq %r15, %rsp                                                         #  6     0xad3ab  3      OPC=72    
  movl %esi, %esi                                                         #  7     0xad3ae  2      OPC=1157  
  movl (%r15,%rsi,1), %edi                                                #  8     0xad3b0  4      OPC=1156  
  leal -0xc(%rdi), %eax                                                   #  9     0xad3b4  3      OPC=1066  
  movl %eax, %eax                                                         #  10    0xad3b7  2      OPC=1157  
  movl (%r15,%rax,1), %esi                                                #  11    0xad3b9  4      OPC=1156  
  cmpl %esi, %edx                                                         #  12    0xad3bd  2      OPC=472   
  nop                                                                     #  13    0xad3bf  1      OPC=1343  
  ja .L_ad400                                                             #  14    0xad3c0  6      OPC=863   
  nop                                                                     #  15    0xad3c6  1      OPC=1343  
  nop                                                                     #  16    0xad3c7  1      OPC=1343  
  subl %edx, %esi                                                         #  17    0xad3c8  2      OPC=2386  
  movb $0x0, (%rsp)                                                       #  18    0xad3ca  4      OPC=1140  
  cmpl %ecx, %esi                                                         #  19    0xad3ce  2      OPC=472   
  cmoval %ecx, %esi                                                       #  20    0xad3d0  3      OPC=272   
  addl %edx, %esi                                                         #  21    0xad3d3  2      OPC=67    
  addl %edi, %esi                                                         #  22    0xad3d5  2      OPC=67    
  leal (%rdx,%rdi,1), %edi                                                #  23    0xad3d7  3      OPC=1066  
  movl %r8d, %edx                                                         #  24    0xad3da  3      OPC=1157  
  nop                                                                     #  25    0xad3dd  1      OPC=1343  
  nop                                                                     #  26    0xad3de  1      OPC=1343  
  nop                                                                     #  27    0xad3df  1      OPC=1343  
  nop                                                                     #  28    0xad3e0  1      OPC=1343  
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  29    0xad3e1  5      OPC=260   
  movl %ebx, %ebx                                                         #  30    0xad3e6  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  31    0xad3e8  4      OPC=1136  
  addl $0x10, %esp                                                        #  32    0xad3ec  3      OPC=65    
  addq %r15, %rsp                                                         #  33    0xad3ef  3      OPC=72    
  popq %rbx                                                               #  34    0xad3f2  1      OPC=1694  
  popq %r11                                                               #  35    0xad3f3  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  36    0xad3f5  7      OPC=131   
  nop                                                                     #  37    0xad3fc  1      OPC=1343  
  nop                                                                     #  38    0xad3fd  1      OPC=1343  
  nop                                                                     #  39    0xad3fe  1      OPC=1343  
  nop                                                                     #  40    0xad3ff  1      OPC=1343  
  addq %r15, %r11                                                         #  41    0xad400  3      OPC=72    
  jmpq %r11                                                               #  42    0xad403  3      OPC=928   
  nop                                                                     #  43    0xad406  1      OPC=1343  
  nop                                                                     #  44    0xad407  1      OPC=1343  
  nop                                                                     #  45    0xad408  1      OPC=1343  
  nop                                                                     #  46    0xad409  1      OPC=1343  
  nop                                                                     #  47    0xad40a  1      OPC=1343  
  nop                                                                     #  48    0xad40b  1      OPC=1343  
  nop                                                                     #  49    0xad40c  1      OPC=1343  
.L_ad400:                                                                 #        0xad40d  0      OPC=0     
  movl $0x1003bafb, %edi                                                  #  50    0xad40d  5      OPC=1154  
  nop                                                                     #  51    0xad412  1      OPC=1343  
  nop                                                                     #  52    0xad413  1      OPC=1343  
  nop                                                                     #  53    0xad414  1      OPC=1343  
  nop                                                                     #  54    0xad415  1      OPC=1343  
  nop                                                                     #  55    0xad416  1      OPC=1343  
  nop                                                                     #  56    0xad417  1      OPC=1343  
  nop                                                                     #  57    0xad418  1      OPC=1343  
  nop                                                                     #  58    0xad419  1      OPC=1343  
  nop                                                                     #  59    0xad41a  1      OPC=1343  
  nop                                                                     #  60    0xad41b  1      OPC=1343  
  nop                                                                     #  61    0xad41c  1      OPC=1343  
  nop                                                                     #  62    0xad41d  1      OPC=1343  
  nop                                                                     #  63    0xad41e  1      OPC=1343  
  nop                                                                     #  64    0xad41f  1      OPC=1343  
  nop                                                                     #  65    0xad420  1      OPC=1343  
  nop                                                                     #  66    0xad421  1      OPC=1343  
  nop                                                                     #  67    0xad422  1      OPC=1343  
  nop                                                                     #  68    0xad423  1      OPC=1343  
  nop                                                                     #  69    0xad424  1      OPC=1343  
  nop                                                                     #  70    0xad425  1      OPC=1343  
  nop                                                                     #  71    0xad426  1      OPC=1343  
  nop                                                                     #  72    0xad427  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                                    #  73    0xad428  5      OPC=260   
                                                                                                             
.size _ZNSsC2ERKSsjjRKSaIcE, .-_ZNSsC2ERKSsjjRKSaIcE

