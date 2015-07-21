  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj, @function

#! file-offset 0x117540
#! rip-offset  0xd7540
#! capacity    160 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj:                                                       #        0xd7540  0      OPC=0     
  pushq %rbx                                                                                      #  1     0xd7540  1      OPC=1861  
  movl %esi, %esi                                                                                 #  2     0xd7541  2      OPC=1157  
  movl %edi, %ebx                                                                                 #  3     0xd7543  2      OPC=1157  
  subl $0x20, %esp                                                                                #  4     0xd7545  3      OPC=2384  
  addq %r15, %rsp                                                                                 #  5     0xd7548  3      OPC=72    
  movl %esi, %esi                                                                                 #  6     0xd754b  2      OPC=1157  
  movl (%r15,%rsi,1), %edi                                                                        #  7     0xd754d  4      OPC=1156  
  leal -0xc(%rdi), %eax                                                                           #  8     0xd7551  3      OPC=1066  
  movl %eax, %eax                                                                                 #  9     0xd7554  2      OPC=1157  
  movl (%r15,%rax,1), %esi                                                                        #  10    0xd7556  4      OPC=1156  
  cmpl %esi, %edx                                                                                 #  11    0xd755a  2      OPC=472   
  nop                                                                                             #  12    0xd755c  1      OPC=1343  
  nop                                                                                             #  13    0xd755d  1      OPC=1343  
  nop                                                                                             #  14    0xd755e  1      OPC=1343  
  nop                                                                                             #  15    0xd755f  1      OPC=1343  
  ja .L_d75a0                                                                                     #  16    0xd7560  6      OPC=863   
  nop                                                                                             #  17    0xd7566  1      OPC=1343  
  nop                                                                                             #  18    0xd7567  1      OPC=1343  
  subl %edx, %esi                                                                                 #  19    0xd7568  2      OPC=2386  
  leal 0x1f(%rsp), %eax                                                                           #  20    0xd756a  4      OPC=1066  
  movb $0x0, (%rsp)                                                                               #  21    0xd756e  4      OPC=1140  
  cmpl %ecx, %esi                                                                                 #  22    0xd7572  2      OPC=472   
  cmoval %ecx, %esi                                                                               #  23    0xd7574  3      OPC=272   
  addl %edx, %esi                                                                                 #  24    0xd7577  2      OPC=67    
  leal (%rdi,%rsi,4), %esi                                                                        #  25    0xd7579  3      OPC=1066  
  leal (%rdi,%rdx,4), %edi                                                                        #  26    0xd757c  3      OPC=1066  
  movl %eax, %edx                                                                                 #  27    0xd757f  2      OPC=1157  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  28    0xd7581  5      OPC=260   
  movl %ebx, %ebx                                                                                 #  29    0xd7586  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                                        #  30    0xd7588  4      OPC=1136  
  addl $0x20, %esp                                                                                #  31    0xd758c  3      OPC=65    
  addq %r15, %rsp                                                                                 #  32    0xd758f  3      OPC=72    
  popq %rbx                                                                                       #  33    0xd7592  1      OPC=1694  
  popq %r11                                                                                       #  34    0xd7593  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                                         #  35    0xd7595  7      OPC=131   
  nop                                                                                             #  36    0xd759c  1      OPC=1343  
  nop                                                                                             #  37    0xd759d  1      OPC=1343  
  nop                                                                                             #  38    0xd759e  1      OPC=1343  
  nop                                                                                             #  39    0xd759f  1      OPC=1343  
  addq %r15, %r11                                                                                 #  40    0xd75a0  3      OPC=72    
  jmpq %r11                                                                                       #  41    0xd75a3  3      OPC=928   
  nop                                                                                             #  42    0xd75a6  1      OPC=1343  
  nop                                                                                             #  43    0xd75a7  1      OPC=1343  
  nop                                                                                             #  44    0xd75a8  1      OPC=1343  
  nop                                                                                             #  45    0xd75a9  1      OPC=1343  
  nop                                                                                             #  46    0xd75aa  1      OPC=1343  
  nop                                                                                             #  47    0xd75ab  1      OPC=1343  
  nop                                                                                             #  48    0xd75ac  1      OPC=1343  
.L_d75a0:                                                                                         #        0xd75ad  0      OPC=0     
  movl $0x1003bafb, %edi                                                                          #  49    0xd75ad  5      OPC=1154  
  nop                                                                                             #  50    0xd75b2  1      OPC=1343  
  nop                                                                                             #  51    0xd75b3  1      OPC=1343  
  nop                                                                                             #  52    0xd75b4  1      OPC=1343  
  nop                                                                                             #  53    0xd75b5  1      OPC=1343  
  nop                                                                                             #  54    0xd75b6  1      OPC=1343  
  nop                                                                                             #  55    0xd75b7  1      OPC=1343  
  nop                                                                                             #  56    0xd75b8  1      OPC=1343  
  nop                                                                                             #  57    0xd75b9  1      OPC=1343  
  nop                                                                                             #  58    0xd75ba  1      OPC=1343  
  nop                                                                                             #  59    0xd75bb  1      OPC=1343  
  nop                                                                                             #  60    0xd75bc  1      OPC=1343  
  nop                                                                                             #  61    0xd75bd  1      OPC=1343  
  nop                                                                                             #  62    0xd75be  1      OPC=1343  
  nop                                                                                             #  63    0xd75bf  1      OPC=1343  
  nop                                                                                             #  64    0xd75c0  1      OPC=1343  
  nop                                                                                             #  65    0xd75c1  1      OPC=1343  
  nop                                                                                             #  66    0xd75c2  1      OPC=1343  
  nop                                                                                             #  67    0xd75c3  1      OPC=1343  
  nop                                                                                             #  68    0xd75c4  1      OPC=1343  
  nop                                                                                             #  69    0xd75c5  1      OPC=1343  
  nop                                                                                             #  70    0xd75c6  1      OPC=1343  
  nop                                                                                             #  71    0xd75c7  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  72    0xd75c8  5      OPC=260   
  movl %eax, %edi                                                                                 #  73    0xd75cd  2      OPC=1157  
  nop                                                                                             #  74    0xd75cf  1      OPC=1343  
  nop                                                                                             #  75    0xd75d0  1      OPC=1343  
  nop                                                                                             #  76    0xd75d1  1      OPC=1343  
  nop                                                                                             #  77    0xd75d2  1      OPC=1343  
  nop                                                                                             #  78    0xd75d3  1      OPC=1343  
  nop                                                                                             #  79    0xd75d4  1      OPC=1343  
  nop                                                                                             #  80    0xd75d5  1      OPC=1343  
  nop                                                                                             #  81    0xd75d6  1      OPC=1343  
  nop                                                                                             #  82    0xd75d7  1      OPC=1343  
  nop                                                                                             #  83    0xd75d8  1      OPC=1343  
  nop                                                                                             #  84    0xd75d9  1      OPC=1343  
  nop                                                                                             #  85    0xd75da  1      OPC=1343  
  nop                                                                                             #  86    0xd75db  1      OPC=1343  
  nop                                                                                             #  87    0xd75dc  1      OPC=1343  
  nop                                                                                             #  88    0xd75dd  1      OPC=1343  
  nop                                                                                             #  89    0xd75de  1      OPC=1343  
  nop                                                                                             #  90    0xd75df  1      OPC=1343  
  nop                                                                                             #  91    0xd75e0  1      OPC=1343  
  nop                                                                                             #  92    0xd75e1  1      OPC=1343  
  nop                                                                                             #  93    0xd75e2  1      OPC=1343  
  nop                                                                                             #  94    0xd75e3  1      OPC=1343  
  nop                                                                                             #  95    0xd75e4  1      OPC=1343  
  nop                                                                                             #  96    0xd75e5  1      OPC=1343  
  nop                                                                                             #  97    0xd75e6  1      OPC=1343  
  nop                                                                                             #  98    0xd75e7  1      OPC=1343  
  callq ._Unwind_Resume                                                                           #  99    0xd75e8  5      OPC=260   
                                                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj

