  .text
  .globl _ZNSt7collateIwEC1EPij
  .type _ZNSt7collateIwEC1EPij, @function

#! file-offset 0xf4880
#! rip-offset  0xb4880
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt7collateIwEC1EPij:                            #        0xb4880  0      OPC=0     
  pushq %rbx                                        #  1     0xb4880  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0xb4881  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0xb4883  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0xb4885  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0xb4888  3      OPC=72    
  testl %edx, %edx                                  #  6     0xb488b  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0xb488d  2      OPC=1157  
  movl $0x1003c2c8, (%r15,%rbx,1)                   #  8     0xb488f  8      OPC=1135  
  setne %al                                         #  9     0xb4897  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0xb489a  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0xb489e  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0xb48a0  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0xb48a4  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xb48a6  5      OPC=1136  
  nop                                               #  15    0xb48ab  1      OPC=1343  
  nop                                               #  16    0xb48ac  1      OPC=1343  
  nop                                               #  17    0xb48ad  1      OPC=1343  
  nop                                               #  18    0xb48ae  1      OPC=1343  
  nop                                               #  19    0xb48af  1      OPC=1343  
  nop                                               #  20    0xb48b0  1      OPC=1343  
  nop                                               #  21    0xb48b1  1      OPC=1343  
  nop                                               #  22    0xb48b2  1      OPC=1343  
  nop                                               #  23    0xb48b3  1      OPC=1343  
  nop                                               #  24    0xb48b4  1      OPC=1343  
  nop                                               #  25    0xb48b5  1      OPC=1343  
  nop                                               #  26    0xb48b6  1      OPC=1343  
  nop                                               #  27    0xb48b7  1      OPC=1343  
  nop                                               #  28    0xb48b8  1      OPC=1343  
  nop                                               #  29    0xb48b9  1      OPC=1343  
  nop                                               #  30    0xb48ba  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xb48bb  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0xb48c0  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xb48c2  5      OPC=1136  
  addl $0x10, %esp                                  #  34    0xb48c7  3      OPC=65    
  addq %r15, %rsp                                   #  35    0xb48ca  3      OPC=72    
  popq %rbx                                         #  36    0xb48cd  1      OPC=1694  
  popq %r11                                         #  37    0xb48ce  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  38    0xb48d0  7      OPC=131   
  nop                                               #  39    0xb48d7  1      OPC=1343  
  nop                                               #  40    0xb48d8  1      OPC=1343  
  nop                                               #  41    0xb48d9  1      OPC=1343  
  nop                                               #  42    0xb48da  1      OPC=1343  
  addq %r15, %r11                                   #  43    0xb48db  3      OPC=72    
  jmpq %r11                                         #  44    0xb48de  3      OPC=928   
  nop                                               #  45    0xb48e1  1      OPC=1343  
  nop                                               #  46    0xb48e2  1      OPC=1343  
  nop                                               #  47    0xb48e3  1      OPC=1343  
  nop                                               #  48    0xb48e4  1      OPC=1343  
  nop                                               #  49    0xb48e5  1      OPC=1343  
  nop                                               #  50    0xb48e6  1      OPC=1343  
  movl %ebx, %edi                                   #  51    0xb48e7  2      OPC=1157  
  movl %eax, (%rsp)                                 #  52    0xb48e9  3      OPC=1136  
  nop                                               #  53    0xb48ec  1      OPC=1343  
  nop                                               #  54    0xb48ed  1      OPC=1343  
  nop                                               #  55    0xb48ee  1      OPC=1343  
  nop                                               #  56    0xb48ef  1      OPC=1343  
  nop                                               #  57    0xb48f0  1      OPC=1343  
  nop                                               #  58    0xb48f1  1      OPC=1343  
  nop                                               #  59    0xb48f2  1      OPC=1343  
  nop                                               #  60    0xb48f3  1      OPC=1343  
  nop                                               #  61    0xb48f4  1      OPC=1343  
  nop                                               #  62    0xb48f5  1      OPC=1343  
  nop                                               #  63    0xb48f6  1      OPC=1343  
  nop                                               #  64    0xb48f7  1      OPC=1343  
  nop                                               #  65    0xb48f8  1      OPC=1343  
  nop                                               #  66    0xb48f9  1      OPC=1343  
  nop                                               #  67    0xb48fa  1      OPC=1343  
  nop                                               #  68    0xb48fb  1      OPC=1343  
  nop                                               #  69    0xb48fc  1      OPC=1343  
  nop                                               #  70    0xb48fd  1      OPC=1343  
  nop                                               #  71    0xb48fe  1      OPC=1343  
  nop                                               #  72    0xb48ff  1      OPC=1343  
  nop                                               #  73    0xb4900  1      OPC=1343  
  nop                                               #  74    0xb4901  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  75    0xb4902  5      OPC=260   
  movl (%rsp), %eax                                 #  76    0xb4907  3      OPC=1156  
  movl %eax, %edi                                   #  77    0xb490a  2      OPC=1157  
  nop                                               #  78    0xb490c  1      OPC=1343  
  nop                                               #  79    0xb490d  1      OPC=1343  
  nop                                               #  80    0xb490e  1      OPC=1343  
  nop                                               #  81    0xb490f  1      OPC=1343  
  nop                                               #  82    0xb4910  1      OPC=1343  
  nop                                               #  83    0xb4911  1      OPC=1343  
  nop                                               #  84    0xb4912  1      OPC=1343  
  nop                                               #  85    0xb4913  1      OPC=1343  
  nop                                               #  86    0xb4914  1      OPC=1343  
  nop                                               #  87    0xb4915  1      OPC=1343  
  nop                                               #  88    0xb4916  1      OPC=1343  
  nop                                               #  89    0xb4917  1      OPC=1343  
  nop                                               #  90    0xb4918  1      OPC=1343  
  nop                                               #  91    0xb4919  1      OPC=1343  
  nop                                               #  92    0xb491a  1      OPC=1343  
  nop                                               #  93    0xb491b  1      OPC=1343  
  nop                                               #  94    0xb491c  1      OPC=1343  
  nop                                               #  95    0xb491d  1      OPC=1343  
  nop                                               #  96    0xb491e  1      OPC=1343  
  nop                                               #  97    0xb491f  1      OPC=1343  
  nop                                               #  98    0xb4920  1      OPC=1343  
  nop                                               #  99    0xb4921  1      OPC=1343  
  callq ._Unwind_Resume                             #  100   0xb4922  5      OPC=260   
                                                                                       
.size _ZNSt7collateIwEC1EPij, .-_ZNSt7collateIwEC1EPij

