  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj, @function

#! file-offset 0x116140
#! rip-offset  0xd6140
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE4findEwj:  #        0xd6140  0      OPC=0     
  movl %edi, %edi                           #  1     0xd6140  2      OPC=1157  
  pushq %rbx                                #  2     0xd6142  1      OPC=1861  
  movl %edi, %edi                           #  3     0xd6143  2      OPC=1157  
  movl (%r15,%rdi,1), %ebx                  #  4     0xd6145  4      OPC=1156  
  leal -0xc(%rbx), %eax                     #  5     0xd6149  3      OPC=1066  
  movl %eax, %eax                           #  6     0xd614c  2      OPC=1157  
  movl (%r15,%rax,1), %eax                  #  7     0xd614e  4      OPC=1156  
  cmpl %eax, %edx                           #  8     0xd6152  2      OPC=472   
  jb .L_d6180                               #  9     0xd6154  6      OPC=875   
  nop                                       #  10    0xd615a  1      OPC=1343  
  nop                                       #  11    0xd615b  1      OPC=1343  
  nop                                       #  12    0xd615c  1      OPC=1343  
  nop                                       #  13    0xd615d  1      OPC=1343  
  nop                                       #  14    0xd615e  1      OPC=1343  
  nop                                       #  15    0xd615f  1      OPC=1343  
  nop                                       #  16    0xd6160  1      OPC=1343  
  nop                                       #  17    0xd6161  1      OPC=1343  
  nop                                       #  18    0xd6162  1      OPC=1343  
  nop                                       #  19    0xd6163  1      OPC=1343  
  nop                                       #  20    0xd6164  1      OPC=1343  
  nop                                       #  21    0xd6165  1      OPC=1343  
.L_d6160:                                   #        0xd6166  0      OPC=0     
  popq %rbx                                 #  22    0xd6166  1      OPC=1694  
  popq %r11                                 #  23    0xd6167  2      OPC=1694  
  movl $0xffffffff, %eax                    #  24    0xd6169  6      OPC=1155  
  andl $0xffffffe0, %r11d                   #  25    0xd616f  7      OPC=131   
  nop                                       #  26    0xd6176  1      OPC=1343  
  nop                                       #  27    0xd6177  1      OPC=1343  
  nop                                       #  28    0xd6178  1      OPC=1343  
  nop                                       #  29    0xd6179  1      OPC=1343  
  addq %r15, %r11                           #  30    0xd617a  3      OPC=72    
  jmpq %r11                                 #  31    0xd617d  3      OPC=928   
  nop                                       #  32    0xd6180  1      OPC=1343  
  nop                                       #  33    0xd6181  1      OPC=1343  
  nop                                       #  34    0xd6182  1      OPC=1343  
  nop                                       #  35    0xd6183  1      OPC=1343  
  nop                                       #  36    0xd6184  1      OPC=1343  
  nop                                       #  37    0xd6185  1      OPC=1343  
  nop                                       #  38    0xd6186  1      OPC=1343  
  nop                                       #  39    0xd6187  1      OPC=1343  
  nop                                       #  40    0xd6188  1      OPC=1343  
  nop                                       #  41    0xd6189  1      OPC=1343  
  nop                                       #  42    0xd618a  1      OPC=1343  
  nop                                       #  43    0xd618b  1      OPC=1343  
  nop                                       #  44    0xd618c  1      OPC=1343  
  nop                                       #  45    0xd618d  1      OPC=1343  
.L_d6180:                                   #        0xd618e  0      OPC=0     
  subl %edx, %eax                           #  46    0xd618e  2      OPC=2386  
  leal (%rbx,%rdx,4), %edi                  #  47    0xd6190  3      OPC=1066  
  movl %eax, %edx                           #  48    0xd6193  2      OPC=1157  
  nop                                       #  49    0xd6195  1      OPC=1343  
  nop                                       #  50    0xd6196  1      OPC=1343  
  nop                                       #  51    0xd6197  1      OPC=1343  
  nop                                       #  52    0xd6198  1      OPC=1343  
  nop                                       #  53    0xd6199  1      OPC=1343  
  nop                                       #  54    0xd619a  1      OPC=1343  
  nop                                       #  55    0xd619b  1      OPC=1343  
  nop                                       #  56    0xd619c  1      OPC=1343  
  nop                                       #  57    0xd619d  1      OPC=1343  
  nop                                       #  58    0xd619e  1      OPC=1343  
  nop                                       #  59    0xd619f  1      OPC=1343  
  nop                                       #  60    0xd61a0  1      OPC=1343  
  nop                                       #  61    0xd61a1  1      OPC=1343  
  nop                                       #  62    0xd61a2  1      OPC=1343  
  nop                                       #  63    0xd61a3  1      OPC=1343  
  nop                                       #  64    0xd61a4  1      OPC=1343  
  nop                                       #  65    0xd61a5  1      OPC=1343  
  nop                                       #  66    0xd61a6  1      OPC=1343  
  nop                                       #  67    0xd61a7  1      OPC=1343  
  nop                                       #  68    0xd61a8  1      OPC=1343  
  callq .wmemchr                            #  69    0xd61a9  5      OPC=260   
  movl %eax, %eax                           #  70    0xd61ae  2      OPC=1157  
  testq %rax, %rax                          #  71    0xd61b0  3      OPC=2438  
  je .L_d6160                               #  72    0xd61b3  6      OPC=893   
  nop                                       #  73    0xd61b9  1      OPC=1343  
  nop                                       #  74    0xd61ba  1      OPC=1343  
  subl %ebx, %eax                           #  75    0xd61bb  2      OPC=2386  
  popq %rbx                                 #  76    0xd61bd  1      OPC=1694  
  popq %r11                                 #  77    0xd61be  2      OPC=1694  
  sarl $0x2, %eax                           #  78    0xd61c0  3      OPC=2096  
  andl $0xffffffe0, %r11d                   #  79    0xd61c3  7      OPC=131   
  nop                                       #  80    0xd61ca  1      OPC=1343  
  nop                                       #  81    0xd61cb  1      OPC=1343  
  nop                                       #  82    0xd61cc  1      OPC=1343  
  nop                                       #  83    0xd61cd  1      OPC=1343  
  addq %r15, %r11                           #  84    0xd61ce  3      OPC=72    
  jmpq %r11                                 #  85    0xd61d1  3      OPC=928   
  nop                                       #  86    0xd61d4  1      OPC=1343  
  nop                                       #  87    0xd61d5  1      OPC=1343  
  nop                                       #  88    0xd61d6  1      OPC=1343  
  nop                                       #  89    0xd61d7  1      OPC=1343  
  nop                                       #  90    0xd61d8  1      OPC=1343  
  nop                                       #  91    0xd61d9  1      OPC=1343  
  nop                                       #  92    0xd61da  1      OPC=1343  
                                                                               
.size _ZNKSbIwSt11char_traitsIwESaIwEE4findEwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE4findEwj

