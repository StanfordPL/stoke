  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj, @function

#! file-offset 0x117640
#! rip-offset  0xd7640
#! capacity    160 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj:                                                       #        0xd7640  0      OPC=0     
  pushq %rbx                                                                                      #  1     0xd7640  1      OPC=1861  
  movl %esi, %esi                                                                                 #  2     0xd7641  2      OPC=1157  
  movl %edi, %ebx                                                                                 #  3     0xd7643  2      OPC=1157  
  subl $0x20, %esp                                                                                #  4     0xd7645  3      OPC=2384  
  addq %r15, %rsp                                                                                 #  5     0xd7648  3      OPC=72    
  movl %esi, %esi                                                                                 #  6     0xd764b  2      OPC=1157  
  movl (%r15,%rsi,1), %edi                                                                        #  7     0xd764d  4      OPC=1156  
  leal -0xc(%rdi), %eax                                                                           #  8     0xd7651  3      OPC=1066  
  movl %eax, %eax                                                                                 #  9     0xd7654  2      OPC=1157  
  movl (%r15,%rax,1), %esi                                                                        #  10    0xd7656  4      OPC=1156  
  cmpl %esi, %edx                                                                                 #  11    0xd765a  2      OPC=472   
  nop                                                                                             #  12    0xd765c  1      OPC=1343  
  nop                                                                                             #  13    0xd765d  1      OPC=1343  
  nop                                                                                             #  14    0xd765e  1      OPC=1343  
  nop                                                                                             #  15    0xd765f  1      OPC=1343  
  ja .L_d76a0                                                                                     #  16    0xd7660  6      OPC=863   
  nop                                                                                             #  17    0xd7666  1      OPC=1343  
  nop                                                                                             #  18    0xd7667  1      OPC=1343  
  subl %edx, %esi                                                                                 #  19    0xd7668  2      OPC=2386  
  leal 0x1f(%rsp), %eax                                                                           #  20    0xd766a  4      OPC=1066  
  movb $0x0, (%rsp)                                                                               #  21    0xd766e  4      OPC=1140  
  cmpl %ecx, %esi                                                                                 #  22    0xd7672  2      OPC=472   
  cmoval %ecx, %esi                                                                               #  23    0xd7674  3      OPC=272   
  addl %edx, %esi                                                                                 #  24    0xd7677  2      OPC=67    
  leal (%rdi,%rsi,4), %esi                                                                        #  25    0xd7679  3      OPC=1066  
  leal (%rdi,%rdx,4), %edi                                                                        #  26    0xd767c  3      OPC=1066  
  movl %eax, %edx                                                                                 #  27    0xd767f  2      OPC=1157  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  28    0xd7681  5      OPC=260   
  movl %ebx, %ebx                                                                                 #  29    0xd7686  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                                        #  30    0xd7688  4      OPC=1136  
  addl $0x20, %esp                                                                                #  31    0xd768c  3      OPC=65    
  addq %r15, %rsp                                                                                 #  32    0xd768f  3      OPC=72    
  popq %rbx                                                                                       #  33    0xd7692  1      OPC=1694  
  popq %r11                                                                                       #  34    0xd7693  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                                         #  35    0xd7695  7      OPC=131   
  nop                                                                                             #  36    0xd769c  1      OPC=1343  
  nop                                                                                             #  37    0xd769d  1      OPC=1343  
  nop                                                                                             #  38    0xd769e  1      OPC=1343  
  nop                                                                                             #  39    0xd769f  1      OPC=1343  
  addq %r15, %r11                                                                                 #  40    0xd76a0  3      OPC=72    
  jmpq %r11                                                                                       #  41    0xd76a3  3      OPC=928   
  nop                                                                                             #  42    0xd76a6  1      OPC=1343  
  nop                                                                                             #  43    0xd76a7  1      OPC=1343  
  nop                                                                                             #  44    0xd76a8  1      OPC=1343  
  nop                                                                                             #  45    0xd76a9  1      OPC=1343  
  nop                                                                                             #  46    0xd76aa  1      OPC=1343  
  nop                                                                                             #  47    0xd76ab  1      OPC=1343  
  nop                                                                                             #  48    0xd76ac  1      OPC=1343  
.L_d76a0:                                                                                         #        0xd76ad  0      OPC=0     
  movl $0x1003bafb, %edi                                                                          #  49    0xd76ad  5      OPC=1154  
  nop                                                                                             #  50    0xd76b2  1      OPC=1343  
  nop                                                                                             #  51    0xd76b3  1      OPC=1343  
  nop                                                                                             #  52    0xd76b4  1      OPC=1343  
  nop                                                                                             #  53    0xd76b5  1      OPC=1343  
  nop                                                                                             #  54    0xd76b6  1      OPC=1343  
  nop                                                                                             #  55    0xd76b7  1      OPC=1343  
  nop                                                                                             #  56    0xd76b8  1      OPC=1343  
  nop                                                                                             #  57    0xd76b9  1      OPC=1343  
  nop                                                                                             #  58    0xd76ba  1      OPC=1343  
  nop                                                                                             #  59    0xd76bb  1      OPC=1343  
  nop                                                                                             #  60    0xd76bc  1      OPC=1343  
  nop                                                                                             #  61    0xd76bd  1      OPC=1343  
  nop                                                                                             #  62    0xd76be  1      OPC=1343  
  nop                                                                                             #  63    0xd76bf  1      OPC=1343  
  nop                                                                                             #  64    0xd76c0  1      OPC=1343  
  nop                                                                                             #  65    0xd76c1  1      OPC=1343  
  nop                                                                                             #  66    0xd76c2  1      OPC=1343  
  nop                                                                                             #  67    0xd76c3  1      OPC=1343  
  nop                                                                                             #  68    0xd76c4  1      OPC=1343  
  nop                                                                                             #  69    0xd76c5  1      OPC=1343  
  nop                                                                                             #  70    0xd76c6  1      OPC=1343  
  nop                                                                                             #  71    0xd76c7  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  72    0xd76c8  5      OPC=260   
  movl %eax, %edi                                                                                 #  73    0xd76cd  2      OPC=1157  
  nop                                                                                             #  74    0xd76cf  1      OPC=1343  
  nop                                                                                             #  75    0xd76d0  1      OPC=1343  
  nop                                                                                             #  76    0xd76d1  1      OPC=1343  
  nop                                                                                             #  77    0xd76d2  1      OPC=1343  
  nop                                                                                             #  78    0xd76d3  1      OPC=1343  
  nop                                                                                             #  79    0xd76d4  1      OPC=1343  
  nop                                                                                             #  80    0xd76d5  1      OPC=1343  
  nop                                                                                             #  81    0xd76d6  1      OPC=1343  
  nop                                                                                             #  82    0xd76d7  1      OPC=1343  
  nop                                                                                             #  83    0xd76d8  1      OPC=1343  
  nop                                                                                             #  84    0xd76d9  1      OPC=1343  
  nop                                                                                             #  85    0xd76da  1      OPC=1343  
  nop                                                                                             #  86    0xd76db  1      OPC=1343  
  nop                                                                                             #  87    0xd76dc  1      OPC=1343  
  nop                                                                                             #  88    0xd76dd  1      OPC=1343  
  nop                                                                                             #  89    0xd76de  1      OPC=1343  
  nop                                                                                             #  90    0xd76df  1      OPC=1343  
  nop                                                                                             #  91    0xd76e0  1      OPC=1343  
  nop                                                                                             #  92    0xd76e1  1      OPC=1343  
  nop                                                                                             #  93    0xd76e2  1      OPC=1343  
  nop                                                                                             #  94    0xd76e3  1      OPC=1343  
  nop                                                                                             #  95    0xd76e4  1      OPC=1343  
  nop                                                                                             #  96    0xd76e5  1      OPC=1343  
  nop                                                                                             #  97    0xd76e6  1      OPC=1343  
  nop                                                                                             #  98    0xd76e7  1      OPC=1343  
  callq ._Unwind_Resume                                                                           #  99    0xd76e8  5      OPC=260   
                                                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj

