  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv, @function

#! file-offset 0xfb760
#! rip-offset  0xbb760
#! capacity    128 bytes

# Text                                                                                                          #  Line  RIP      Bytes  Opcode    
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv:                      #        0xbb760  0      OPC=0     
  pushq %r12                                                                                                    #  1     0xbb760  2      OPC=1861  
  movl %edi, %edi                                                                                               #  2     0xbb762  2      OPC=1157  
  pushq %rbx                                                                                                    #  3     0xbb764  1      OPC=1861  
  movl %edx, %ebx                                                                                               #  4     0xbb765  2      OPC=1157  
  subl $0x28, %esp                                                                                              #  5     0xbb767  3      OPC=2384  
  addq %r15, %rsp                                                                                               #  6     0xbb76a  3      OPC=72    
  movl %ebx, %ebx                                                                                               #  7     0xbb76d  2      OPC=1157  
  movl 0xc(%r15,%rbx,1), %r12d                                                                                  #  8     0xbb76f  5      OPC=1156  
  movq %rsi, (%rsp)                                                                                             #  9     0xbb774  4      OPC=1138  
  movl %r12d, %edx                                                                                              #  10    0xbb778  3      OPC=1157  
  nop                                                                                                           #  11    0xbb77b  1      OPC=1343  
  nop                                                                                                           #  12    0xbb77c  1      OPC=1343  
  nop                                                                                                           #  13    0xbb77d  1      OPC=1343  
  nop                                                                                                           #  14    0xbb77e  1      OPC=1343  
  nop                                                                                                           #  15    0xbb77f  1      OPC=1343  
  andl $0xffffbfb5, %edx                                                                                        #  16    0xbb780  6      OPC=131   
  orl $0x208, %edx                                                                                              #  17    0xbb786  6      OPC=1377  
  movl %ebx, %ebx                                                                                               #  18    0xbb78c  2      OPC=1157  
  movl %edx, 0xc(%r15,%rbx,1)                                                                                   #  19    0xbb78e  5      OPC=1136  
  movl %ebx, %edx                                                                                               #  20    0xbb793  2      OPC=1157  
  nop                                                                                                           #  21    0xbb795  1      OPC=1343  
  nop                                                                                                           #  22    0xbb796  1      OPC=1343  
  nop                                                                                                           #  23    0xbb797  1      OPC=1343  
  nop                                                                                                           #  24    0xbb798  1      OPC=1343  
  nop                                                                                                           #  25    0xbb799  1      OPC=1343  
  nop                                                                                                           #  26    0xbb79a  1      OPC=1343  
  callq ._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE13_M_insert_intImEES3_S3_RSt8ios_basewT_  #  27    0xbb79b  5      OPC=260   
  movl %eax, (%rsp)                                                                                             #  28    0xbb7a0  3      OPC=1136  
  shrq $0x20, %rax                                                                                              #  29    0xbb7a3  4      OPC=2315  
  movl %ebx, %ebx                                                                                               #  30    0xbb7a7  2      OPC=1157  
  movl %r12d, 0xc(%r15,%rbx,1)                                                                                  #  31    0xbb7a9  5      OPC=1136  
  movb %al, 0x4(%rsp)                                                                                           #  32    0xbb7ae  4      OPC=1141  
  movq (%rsp), %rax                                                                                             #  33    0xbb7b2  4      OPC=1161  
  addl $0x28, %esp                                                                                              #  34    0xbb7b6  3      OPC=65    
  addq %r15, %rsp                                                                                               #  35    0xbb7b9  3      OPC=72    
  popq %rbx                                                                                                     #  36    0xbb7bc  1      OPC=1694  
  popq %r12                                                                                                     #  37    0xbb7bd  2      OPC=1694  
  nop                                                                                                           #  38    0xbb7bf  1      OPC=1343  
  popq %r11                                                                                                     #  39    0xbb7c0  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                                                       #  40    0xbb7c2  7      OPC=131   
  nop                                                                                                           #  41    0xbb7c9  1      OPC=1343  
  nop                                                                                                           #  42    0xbb7ca  1      OPC=1343  
  nop                                                                                                           #  43    0xbb7cb  1      OPC=1343  
  nop                                                                                                           #  44    0xbb7cc  1      OPC=1343  
  addq %r15, %r11                                                                                               #  45    0xbb7cd  3      OPC=72    
  jmpq %r11                                                                                                     #  46    0xbb7d0  3      OPC=928   
  nop                                                                                                           #  47    0xbb7d3  1      OPC=1343  
  nop                                                                                                           #  48    0xbb7d4  1      OPC=1343  
  nop                                                                                                           #  49    0xbb7d5  1      OPC=1343  
  nop                                                                                                           #  50    0xbb7d6  1      OPC=1343  
  nop                                                                                                           #  51    0xbb7d7  1      OPC=1343  
  nop                                                                                                           #  52    0xbb7d8  1      OPC=1343  
  nop                                                                                                           #  53    0xbb7d9  1      OPC=1343  
  nop                                                                                                           #  54    0xbb7da  1      OPC=1343  
  nop                                                                                                           #  55    0xbb7db  1      OPC=1343  
  nop                                                                                                           #  56    0xbb7dc  1      OPC=1343  
  nop                                                                                                           #  57    0xbb7dd  1      OPC=1343  
  nop                                                                                                           #  58    0xbb7de  1      OPC=1343  
  nop                                                                                                           #  59    0xbb7df  1      OPC=1343  
  nop                                                                                                           #  60    0xbb7e0  1      OPC=1343  
  nop                                                                                                           #  61    0xbb7e1  1      OPC=1343  
  nop                                                                                                           #  62    0xbb7e2  1      OPC=1343  
  nop                                                                                                           #  63    0xbb7e3  1      OPC=1343  
  nop                                                                                                           #  64    0xbb7e4  1      OPC=1343  
  nop                                                                                                           #  65    0xbb7e5  1      OPC=1343  
  nop                                                                                                           #  66    0xbb7e6  1      OPC=1343  
                                                                                                                                                   
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv

