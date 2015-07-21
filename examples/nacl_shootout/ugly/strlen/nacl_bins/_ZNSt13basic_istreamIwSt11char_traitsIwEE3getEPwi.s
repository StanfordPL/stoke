  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi, @function

#! file-offset 0xadac0
#! rip-offset  0x6dac0
#! capacity    192 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi:         #        0x6dac0  0      OPC=0     
  movq %rbx, -0x18(%rsp)                                    #  1     0x6dac0  5      OPC=1138  
  movl %edi, %ebx                                           #  2     0x6dac5  2      OPC=1157  
  movq %r12, -0x10(%rsp)                                    #  3     0x6dac7  5      OPC=1138  
  movq %r13, -0x8(%rsp)                                     #  4     0x6dacc  5      OPC=1138  
  subl $0x18, %esp                                          #  5     0x6dad1  3      OPC=2384  
  addq %r15, %rsp                                           #  6     0x6dad4  3      OPC=72    
  movl %ebx, %ebx                                           #  7     0x6dad7  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                  #  8     0x6dad9  4      OPC=1156  
  movl %edx, %r13d                                          #  9     0x6dadd  3      OPC=1157  
  movl %esi, %r12d                                          #  10    0x6dae0  3      OPC=1157  
  subl $0xc, %eax                                           #  11    0x6dae3  3      OPC=2384  
  movl %eax, %eax                                           #  12    0x6dae6  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                  #  13    0x6dae8  4      OPC=1156  
  addl %ebx, %eax                                           #  14    0x6daec  2      OPC=67    
  movl %eax, %eax                                           #  15    0x6daee  2      OPC=1157  
  movl 0x80(%r15,%rax,1), %edi                              #  16    0x6daf0  8      OPC=1156  
  testq %rdi, %rdi                                          #  17    0x6daf8  3      OPC=2438  
  nop                                                       #  18    0x6dafb  1      OPC=1343  
  nop                                                       #  19    0x6dafc  1      OPC=1343  
  nop                                                       #  20    0x6dafd  1      OPC=1343  
  nop                                                       #  21    0x6dafe  1      OPC=1343  
  nop                                                       #  22    0x6daff  1      OPC=1343  
  je .L_6db60                                               #  23    0x6db00  6      OPC=893   
  nop                                                       #  24    0x6db06  1      OPC=1343  
  nop                                                       #  25    0x6db07  1      OPC=1343  
  movl %edi, %edi                                           #  26    0x6db08  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                  #  27    0x6db0a  4      OPC=1156  
  movl $0xa, %esi                                           #  28    0x6db0e  5      OPC=1154  
  movl %eax, %eax                                           #  29    0x6db13  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax                              #  30    0x6db15  5      OPC=1156  
  nop                                                       #  31    0x6db1a  1      OPC=1343  
  nop                                                       #  32    0x6db1b  1      OPC=1343  
  nop                                                       #  33    0x6db1c  1      OPC=1343  
  nop                                                       #  34    0x6db1d  1      OPC=1343  
  andl $0xffffffe0, %eax                                    #  35    0x6db1e  6      OPC=131   
  nop                                                       #  36    0x6db24  1      OPC=1343  
  nop                                                       #  37    0x6db25  1      OPC=1343  
  nop                                                       #  38    0x6db26  1      OPC=1343  
  addq %r15, %rax                                           #  39    0x6db27  3      OPC=72    
  callq %rax                                                #  40    0x6db2a  2      OPC=258   
  movl %r13d, %edx                                          #  41    0x6db2c  3      OPC=1157  
  movl %r12d, %esi                                          #  42    0x6db2f  3      OPC=1157  
  movl %ebx, %edi                                           #  43    0x6db32  2      OPC=1157  
  movq 0x8(%rsp), %r12                                      #  44    0x6db34  5      OPC=1161  
  movq (%rsp), %rbx                                         #  45    0x6db39  4      OPC=1161  
  movl %eax, %ecx                                           #  46    0x6db3d  2      OPC=1157  
  movq 0x10(%rsp), %r13                                     #  47    0x6db3f  5      OPC=1161  
  addl $0x18, %esp                                          #  48    0x6db44  3      OPC=65    
  addq %r15, %rsp                                           #  49    0x6db47  3      OPC=72    
  xchgw %ax, %ax                                            #  50    0x6db4a  2      OPC=3700  
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwiw  #  51    0x6db4c  5      OPC=930   
  nop                                                       #  52    0x6db51  1      OPC=1343  
  nop                                                       #  53    0x6db52  1      OPC=1343  
  nop                                                       #  54    0x6db53  1      OPC=1343  
  nop                                                       #  55    0x6db54  1      OPC=1343  
  nop                                                       #  56    0x6db55  1      OPC=1343  
  nop                                                       #  57    0x6db56  1      OPC=1343  
  nop                                                       #  58    0x6db57  1      OPC=1343  
  nop                                                       #  59    0x6db58  1      OPC=1343  
  nop                                                       #  60    0x6db59  1      OPC=1343  
  nop                                                       #  61    0x6db5a  1      OPC=1343  
  nop                                                       #  62    0x6db5b  1      OPC=1343  
  nop                                                       #  63    0x6db5c  1      OPC=1343  
  nop                                                       #  64    0x6db5d  1      OPC=1343  
  nop                                                       #  65    0x6db5e  1      OPC=1343  
  nop                                                       #  66    0x6db5f  1      OPC=1343  
  nop                                                       #  67    0x6db60  1      OPC=1343  
  nop                                                       #  68    0x6db61  1      OPC=1343  
  nop                                                       #  69    0x6db62  1      OPC=1343  
  nop                                                       #  70    0x6db63  1      OPC=1343  
  nop                                                       #  71    0x6db64  1      OPC=1343  
  nop                                                       #  72    0x6db65  1      OPC=1343  
  nop                                                       #  73    0x6db66  1      OPC=1343  
  nop                                                       #  74    0x6db67  1      OPC=1343  
  nop                                                       #  75    0x6db68  1      OPC=1343  
  nop                                                       #  76    0x6db69  1      OPC=1343  
  nop                                                       #  77    0x6db6a  1      OPC=1343  
  nop                                                       #  78    0x6db6b  1      OPC=1343  
.L_6db60:                                                   #        0x6db6c  0      OPC=0     
  nop                                                       #  79    0x6db6c  1      OPC=1343  
  nop                                                       #  80    0x6db6d  1      OPC=1343  
  nop                                                       #  81    0x6db6e  1      OPC=1343  
  nop                                                       #  82    0x6db6f  1      OPC=1343  
  nop                                                       #  83    0x6db70  1      OPC=1343  
  nop                                                       #  84    0x6db71  1      OPC=1343  
  nop                                                       #  85    0x6db72  1      OPC=1343  
  nop                                                       #  86    0x6db73  1      OPC=1343  
  nop                                                       #  87    0x6db74  1      OPC=1343  
  nop                                                       #  88    0x6db75  1      OPC=1343  
  nop                                                       #  89    0x6db76  1      OPC=1343  
  nop                                                       #  90    0x6db77  1      OPC=1343  
  nop                                                       #  91    0x6db78  1      OPC=1343  
  nop                                                       #  92    0x6db79  1      OPC=1343  
  nop                                                       #  93    0x6db7a  1      OPC=1343  
  nop                                                       #  94    0x6db7b  1      OPC=1343  
  nop                                                       #  95    0x6db7c  1      OPC=1343  
  nop                                                       #  96    0x6db7d  1      OPC=1343  
  nop                                                       #  97    0x6db7e  1      OPC=1343  
  nop                                                       #  98    0x6db7f  1      OPC=1343  
  nop                                                       #  99    0x6db80  1      OPC=1343  
  nop                                                       #  100   0x6db81  1      OPC=1343  
  nop                                                       #  101   0x6db82  1      OPC=1343  
  nop                                                       #  102   0x6db83  1      OPC=1343  
  nop                                                       #  103   0x6db84  1      OPC=1343  
  nop                                                       #  104   0x6db85  1      OPC=1343  
  nop                                                       #  105   0x6db86  1      OPC=1343  
  callq ._ZSt16__throw_bad_castv                            #  106   0x6db87  5      OPC=260   
                                                                                               
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE3getEPwi

