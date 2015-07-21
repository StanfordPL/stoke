  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj, @function

#! file-offset 0x116500
#! rip-offset  0xd6500
#! capacity    192 bytes

# Text                                                #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj:  #        0xd6500  0      OPC=0     
  pushq %r12                                          #  1     0xd6500  2      OPC=1861  
  movl %edi, %edi                                     #  2     0xd6502  2      OPC=1157  
  movl %ecx, %ecx                                     #  3     0xd6504  2      OPC=1157  
  pushq %rbx                                          #  4     0xd6506  1      OPC=1861  
  subl $0x8, %esp                                     #  5     0xd6507  3      OPC=2384  
  addq %r15, %rsp                                     #  6     0xd650a  3      OPC=72    
  movl %edi, %edi                                     #  7     0xd650d  2      OPC=1157  
  movl (%r15,%rdi,1), %edi                            #  8     0xd650f  4      OPC=1156  
  leal -0xc(%rdi), %eax                               #  9     0xd6513  3      OPC=1066  
  movl %eax, %eax                                     #  10    0xd6516  2      OPC=1157  
  movl (%r15,%rax,1), %r12d                           #  11    0xd6518  4      OPC=1156  
  cmpl %r12d, %esi                                    #  12    0xd651c  3      OPC=472   
  nop                                                 #  13    0xd651f  1      OPC=1343  
  ja .L_d65a0                                         #  14    0xd6520  6      OPC=863   
  nop                                                 #  15    0xd6526  1      OPC=1343  
  nop                                                 #  16    0xd6527  1      OPC=1343  
  movl %ecx, %ecx                                     #  17    0xd6528  2      OPC=1157  
  movl (%r15,%rcx,1), %eax                            #  18    0xd652a  4      OPC=1156  
  leal -0xc(%rax), %ecx                               #  19    0xd652e  3      OPC=1066  
  movl %ecx, %ecx                                     #  20    0xd6531  2      OPC=1157  
  movl (%r15,%rcx,1), %ebx                            #  21    0xd6533  4      OPC=1156  
  cmpl %ebx, %r8d                                     #  22    0xd6537  3      OPC=472   
  ja .L_d65a0                                         #  23    0xd653a  6      OPC=863   
  nop                                                 #  24    0xd6540  1      OPC=1343  
  nop                                                 #  25    0xd6541  1      OPC=1343  
  subl %esi, %r12d                                    #  26    0xd6542  3      OPC=2386  
  leal (%rdi,%rsi,4), %edi                            #  27    0xd6545  3      OPC=1066  
  cmpl %r12d, %edx                                    #  28    0xd6548  3      OPC=472   
  nop                                                 #  29    0xd654b  1      OPC=1343  
  cmovbel %edx, %r12d                                 #  30    0xd654c  4      OPC=290   
  subl %r8d, %ebx                                     #  31    0xd6550  3      OPC=2386  
  leal (%rax,%r8,4), %r8d                             #  32    0xd6553  4      OPC=1066  
  cmpl %ebx, %r9d                                     #  33    0xd6557  3      OPC=472   
  movl %r12d, %edx                                    #  34    0xd655a  3      OPC=1157  
  cmovbel %r9d, %ebx                                  #  35    0xd655d  4      OPC=290   
  movl %r8d, %esi                                     #  36    0xd6561  3      OPC=1157  
  cmpl %r12d, %ebx                                    #  37    0xd6564  3      OPC=472   
  cmovbel %ebx, %edx                                  #  38    0xd6567  3      OPC=290   
  xchgw %ax, %ax                                      #  39    0xd656a  2      OPC=3700  
  subl %ebx, %r12d                                    #  40    0xd656c  3      OPC=2386  
  nop                                                 #  41    0xd656f  1      OPC=1343  
  nop                                                 #  42    0xd6570  1      OPC=1343  
  nop                                                 #  43    0xd6571  1      OPC=1343  
  nop                                                 #  44    0xd6572  1      OPC=1343  
  nop                                                 #  45    0xd6573  1      OPC=1343  
  nop                                                 #  46    0xd6574  1      OPC=1343  
  nop                                                 #  47    0xd6575  1      OPC=1343  
  nop                                                 #  48    0xd6576  1      OPC=1343  
  nop                                                 #  49    0xd6577  1      OPC=1343  
  nop                                                 #  50    0xd6578  1      OPC=1343  
  nop                                                 #  51    0xd6579  1      OPC=1343  
  nop                                                 #  52    0xd657a  1      OPC=1343  
  nop                                                 #  53    0xd657b  1      OPC=1343  
  nop                                                 #  54    0xd657c  1      OPC=1343  
  nop                                                 #  55    0xd657d  1      OPC=1343  
  nop                                                 #  56    0xd657e  1      OPC=1343  
  nop                                                 #  57    0xd657f  1      OPC=1343  
  nop                                                 #  58    0xd6580  1      OPC=1343  
  nop                                                 #  59    0xd6581  1      OPC=1343  
  nop                                                 #  60    0xd6582  1      OPC=1343  
  nop                                                 #  61    0xd6583  1      OPC=1343  
  nop                                                 #  62    0xd6584  1      OPC=1343  
  nop                                                 #  63    0xd6585  1      OPC=1343  
  nop                                                 #  64    0xd6586  1      OPC=1343  
  callq .wmemcmp                                      #  65    0xd6587  5      OPC=260   
  testl %eax, %eax                                    #  66    0xd658c  2      OPC=2436  
  cmovel %r12d, %eax                                  #  67    0xd658e  4      OPC=302   
  addl $0x8, %esp                                     #  68    0xd6592  3      OPC=65    
  addq %r15, %rsp                                     #  69    0xd6595  3      OPC=72    
  popq %rbx                                           #  70    0xd6598  1      OPC=1694  
  popq %r12                                           #  71    0xd6599  2      OPC=1694  
  popq %r11                                           #  72    0xd659b  2      OPC=1694  
  andl $0xffffffe0, %r11d                             #  73    0xd659d  7      OPC=131   
  nop                                                 #  74    0xd65a4  1      OPC=1343  
  nop                                                 #  75    0xd65a5  1      OPC=1343  
  nop                                                 #  76    0xd65a6  1      OPC=1343  
  nop                                                 #  77    0xd65a7  1      OPC=1343  
  addq %r15, %r11                                     #  78    0xd65a8  3      OPC=72    
  jmpq %r11                                           #  79    0xd65ab  3      OPC=928   
  nop                                                 #  80    0xd65ae  1      OPC=1343  
  nop                                                 #  81    0xd65af  1      OPC=1343  
  nop                                                 #  82    0xd65b0  1      OPC=1343  
  nop                                                 #  83    0xd65b1  1      OPC=1343  
  nop                                                 #  84    0xd65b2  1      OPC=1343  
.L_d65a0:                                             #        0xd65b3  0      OPC=0     
  movl $0x1003babd, %edi                              #  85    0xd65b3  5      OPC=1154  
  nop                                                 #  86    0xd65b8  1      OPC=1343  
  nop                                                 #  87    0xd65b9  1      OPC=1343  
  nop                                                 #  88    0xd65ba  1      OPC=1343  
  nop                                                 #  89    0xd65bb  1      OPC=1343  
  nop                                                 #  90    0xd65bc  1      OPC=1343  
  nop                                                 #  91    0xd65bd  1      OPC=1343  
  nop                                                 #  92    0xd65be  1      OPC=1343  
  nop                                                 #  93    0xd65bf  1      OPC=1343  
  nop                                                 #  94    0xd65c0  1      OPC=1343  
  nop                                                 #  95    0xd65c1  1      OPC=1343  
  nop                                                 #  96    0xd65c2  1      OPC=1343  
  nop                                                 #  97    0xd65c3  1      OPC=1343  
  nop                                                 #  98    0xd65c4  1      OPC=1343  
  nop                                                 #  99    0xd65c5  1      OPC=1343  
  nop                                                 #  100   0xd65c6  1      OPC=1343  
  nop                                                 #  101   0xd65c7  1      OPC=1343  
  nop                                                 #  102   0xd65c8  1      OPC=1343  
  nop                                                 #  103   0xd65c9  1      OPC=1343  
  nop                                                 #  104   0xd65ca  1      OPC=1343  
  nop                                                 #  105   0xd65cb  1      OPC=1343  
  nop                                                 #  106   0xd65cc  1      OPC=1343  
  nop                                                 #  107   0xd65cd  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                #  108   0xd65ce  5      OPC=260   
                                                                                         
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj

