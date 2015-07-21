  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_, @function

#! file-offset 0x1165c0
#! rip-offset  0xd65c0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_:  #        0xd65c0  0      OPC=0     
  pushq %r12                                        #  1     0xd65c0  2      OPC=1861  
  movl %edi, %edi                                   #  2     0xd65c2  2      OPC=1157  
  movl %ecx, %ecx                                   #  3     0xd65c4  2      OPC=1157  
  pushq %rbx                                        #  4     0xd65c6  1      OPC=1861  
  subl $0x8, %esp                                   #  5     0xd65c7  3      OPC=2384  
  addq %r15, %rsp                                   #  6     0xd65ca  3      OPC=72    
  movl %edi, %edi                                   #  7     0xd65cd  2      OPC=1157  
  movl (%r15,%rdi,1), %edi                          #  8     0xd65cf  4      OPC=1156  
  leal -0xc(%rdi), %eax                             #  9     0xd65d3  3      OPC=1066  
  movl %eax, %eax                                   #  10    0xd65d6  2      OPC=1157  
  movl (%r15,%rax,1), %r12d                         #  11    0xd65d8  4      OPC=1156  
  cmpl %r12d, %esi                                  #  12    0xd65dc  3      OPC=472   
  nop                                               #  13    0xd65df  1      OPC=1343  
  ja .L_d6640                                       #  14    0xd65e0  6      OPC=863   
  nop                                               #  15    0xd65e6  1      OPC=1343  
  nop                                               #  16    0xd65e7  1      OPC=1343  
  movl %ecx, %ecx                                   #  17    0xd65e8  2      OPC=1157  
  movl (%r15,%rcx,1), %eax                          #  18    0xd65ea  4      OPC=1156  
  subl %esi, %r12d                                  #  19    0xd65ee  3      OPC=2386  
  leal (%rdi,%rsi,4), %edi                          #  20    0xd65f1  3      OPC=1066  
  cmpl %r12d, %edx                                  #  21    0xd65f4  3      OPC=472   
  cmovbel %edx, %r12d                               #  22    0xd65f7  4      OPC=290   
  leal -0xc(%rax), %edx                             #  23    0xd65fb  3      OPC=1066  
  movl %eax, %esi                                   #  24    0xd65fe  2      OPC=1157  
  movl %edx, %edx                                   #  25    0xd6600  2      OPC=1157  
  movl (%r15,%rdx,1), %ebx                          #  26    0xd6602  4      OPC=1156  
  cmpl %ebx, %r12d                                  #  27    0xd6606  3      OPC=472   
  movl %ebx, %edx                                   #  28    0xd6609  2      OPC=1157  
  cmovbel %r12d, %edx                               #  29    0xd660b  4      OPC=290   
  subl %ebx, %r12d                                  #  30    0xd660f  3      OPC=2386  
  nop                                               #  31    0xd6612  1      OPC=1343  
  nop                                               #  32    0xd6613  1      OPC=1343  
  nop                                               #  33    0xd6614  1      OPC=1343  
  nop                                               #  34    0xd6615  1      OPC=1343  
  nop                                               #  35    0xd6616  1      OPC=1343  
  nop                                               #  36    0xd6617  1      OPC=1343  
  nop                                               #  37    0xd6618  1      OPC=1343  
  nop                                               #  38    0xd6619  1      OPC=1343  
  nop                                               #  39    0xd661a  1      OPC=1343  
  nop                                               #  40    0xd661b  1      OPC=1343  
  nop                                               #  41    0xd661c  1      OPC=1343  
  nop                                               #  42    0xd661d  1      OPC=1343  
  nop                                               #  43    0xd661e  1      OPC=1343  
  nop                                               #  44    0xd661f  1      OPC=1343  
  nop                                               #  45    0xd6620  1      OPC=1343  
  callq .wmemcmp                                    #  46    0xd6621  5      OPC=260   
  testl %eax, %eax                                  #  47    0xd6626  2      OPC=2436  
  cmovel %r12d, %eax                                #  48    0xd6628  4      OPC=302   
  addl $0x8, %esp                                   #  49    0xd662c  3      OPC=65    
  addq %r15, %rsp                                   #  50    0xd662f  3      OPC=72    
  popq %rbx                                         #  51    0xd6632  1      OPC=1694  
  popq %r12                                         #  52    0xd6633  2      OPC=1694  
  popq %r11                                         #  53    0xd6635  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  54    0xd6637  7      OPC=131   
  nop                                               #  55    0xd663e  1      OPC=1343  
  nop                                               #  56    0xd663f  1      OPC=1343  
  nop                                               #  57    0xd6640  1      OPC=1343  
  nop                                               #  58    0xd6641  1      OPC=1343  
  addq %r15, %r11                                   #  59    0xd6642  3      OPC=72    
  jmpq %r11                                         #  60    0xd6645  3      OPC=928   
  nop                                               #  61    0xd6648  1      OPC=1343  
  nop                                               #  62    0xd6649  1      OPC=1343  
  nop                                               #  63    0xd664a  1      OPC=1343  
  nop                                               #  64    0xd664b  1      OPC=1343  
  nop                                               #  65    0xd664c  1      OPC=1343  
.L_d6640:                                           #        0xd664d  0      OPC=0     
  movl $0x1003babd, %edi                            #  66    0xd664d  5      OPC=1154  
  nop                                               #  67    0xd6652  1      OPC=1343  
  nop                                               #  68    0xd6653  1      OPC=1343  
  nop                                               #  69    0xd6654  1      OPC=1343  
  nop                                               #  70    0xd6655  1      OPC=1343  
  nop                                               #  71    0xd6656  1      OPC=1343  
  nop                                               #  72    0xd6657  1      OPC=1343  
  nop                                               #  73    0xd6658  1      OPC=1343  
  nop                                               #  74    0xd6659  1      OPC=1343  
  nop                                               #  75    0xd665a  1      OPC=1343  
  nop                                               #  76    0xd665b  1      OPC=1343  
  nop                                               #  77    0xd665c  1      OPC=1343  
  nop                                               #  78    0xd665d  1      OPC=1343  
  nop                                               #  79    0xd665e  1      OPC=1343  
  nop                                               #  80    0xd665f  1      OPC=1343  
  nop                                               #  81    0xd6660  1      OPC=1343  
  nop                                               #  82    0xd6661  1      OPC=1343  
  nop                                               #  83    0xd6662  1      OPC=1343  
  nop                                               #  84    0xd6663  1      OPC=1343  
  nop                                               #  85    0xd6664  1      OPC=1343  
  nop                                               #  86    0xd6665  1      OPC=1343  
  nop                                               #  87    0xd6666  1      OPC=1343  
  nop                                               #  88    0xd6667  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc              #  89    0xd6668  5      OPC=260   
                                                                                       
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_

