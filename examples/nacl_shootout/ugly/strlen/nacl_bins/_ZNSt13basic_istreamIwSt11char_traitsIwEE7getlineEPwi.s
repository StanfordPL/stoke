  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi, @function

#! file-offset 0xac260
#! rip-offset  0x6c260
#! capacity    192 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi:         #        0x6c260  0      OPC=0     
  movq %rbx, -0x18(%rsp)                                        #  1     0x6c260  5      OPC=1138  
  movl %edi, %ebx                                               #  2     0x6c265  2      OPC=1157  
  movq %r12, -0x10(%rsp)                                        #  3     0x6c267  5      OPC=1138  
  movq %r13, -0x8(%rsp)                                         #  4     0x6c26c  5      OPC=1138  
  subl $0x18, %esp                                              #  5     0x6c271  3      OPC=2384  
  addq %r15, %rsp                                               #  6     0x6c274  3      OPC=72    
  movl %ebx, %ebx                                               #  7     0x6c277  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                      #  8     0x6c279  4      OPC=1156  
  movl %edx, %r13d                                              #  9     0x6c27d  3      OPC=1157  
  movl %esi, %r12d                                              #  10    0x6c280  3      OPC=1157  
  subl $0xc, %eax                                               #  11    0x6c283  3      OPC=2384  
  movl %eax, %eax                                               #  12    0x6c286  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                      #  13    0x6c288  4      OPC=1156  
  addl %ebx, %eax                                               #  14    0x6c28c  2      OPC=67    
  movl %eax, %eax                                               #  15    0x6c28e  2      OPC=1157  
  movl 0x80(%r15,%rax,1), %edi                                  #  16    0x6c290  8      OPC=1156  
  testq %rdi, %rdi                                              #  17    0x6c298  3      OPC=2438  
  nop                                                           #  18    0x6c29b  1      OPC=1343  
  nop                                                           #  19    0x6c29c  1      OPC=1343  
  nop                                                           #  20    0x6c29d  1      OPC=1343  
  nop                                                           #  21    0x6c29e  1      OPC=1343  
  nop                                                           #  22    0x6c29f  1      OPC=1343  
  je .L_6c300                                                   #  23    0x6c2a0  6      OPC=893   
  nop                                                           #  24    0x6c2a6  1      OPC=1343  
  nop                                                           #  25    0x6c2a7  1      OPC=1343  
  movl %edi, %edi                                               #  26    0x6c2a8  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                      #  27    0x6c2aa  4      OPC=1156  
  movl $0xa, %esi                                               #  28    0x6c2ae  5      OPC=1154  
  movl %eax, %eax                                               #  29    0x6c2b3  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax                                  #  30    0x6c2b5  5      OPC=1156  
  nop                                                           #  31    0x6c2ba  1      OPC=1343  
  nop                                                           #  32    0x6c2bb  1      OPC=1343  
  nop                                                           #  33    0x6c2bc  1      OPC=1343  
  nop                                                           #  34    0x6c2bd  1      OPC=1343  
  andl $0xffffffe0, %eax                                        #  35    0x6c2be  6      OPC=131   
  nop                                                           #  36    0x6c2c4  1      OPC=1343  
  nop                                                           #  37    0x6c2c5  1      OPC=1343  
  nop                                                           #  38    0x6c2c6  1      OPC=1343  
  addq %r15, %rax                                               #  39    0x6c2c7  3      OPC=72    
  callq %rax                                                    #  40    0x6c2ca  2      OPC=258   
  movl %r13d, %edx                                              #  41    0x6c2cc  3      OPC=1157  
  movl %r12d, %esi                                              #  42    0x6c2cf  3      OPC=1157  
  movl %ebx, %edi                                               #  43    0x6c2d2  2      OPC=1157  
  movq 0x8(%rsp), %r12                                          #  44    0x6c2d4  5      OPC=1161  
  movq (%rsp), %rbx                                             #  45    0x6c2d9  4      OPC=1161  
  movl %eax, %ecx                                               #  46    0x6c2dd  2      OPC=1157  
  movq 0x10(%rsp), %r13                                         #  47    0x6c2df  5      OPC=1161  
  addl $0x18, %esp                                              #  48    0x6c2e4  3      OPC=65    
  addq %r15, %rsp                                               #  49    0x6c2e7  3      OPC=72    
  xchgw %ax, %ax                                                #  50    0x6c2ea  2      OPC=3700  
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwiw  #  51    0x6c2ec  5      OPC=930   
  nop                                                           #  52    0x6c2f1  1      OPC=1343  
  nop                                                           #  53    0x6c2f2  1      OPC=1343  
  nop                                                           #  54    0x6c2f3  1      OPC=1343  
  nop                                                           #  55    0x6c2f4  1      OPC=1343  
  nop                                                           #  56    0x6c2f5  1      OPC=1343  
  nop                                                           #  57    0x6c2f6  1      OPC=1343  
  nop                                                           #  58    0x6c2f7  1      OPC=1343  
  nop                                                           #  59    0x6c2f8  1      OPC=1343  
  nop                                                           #  60    0x6c2f9  1      OPC=1343  
  nop                                                           #  61    0x6c2fa  1      OPC=1343  
  nop                                                           #  62    0x6c2fb  1      OPC=1343  
  nop                                                           #  63    0x6c2fc  1      OPC=1343  
  nop                                                           #  64    0x6c2fd  1      OPC=1343  
  nop                                                           #  65    0x6c2fe  1      OPC=1343  
  nop                                                           #  66    0x6c2ff  1      OPC=1343  
  nop                                                           #  67    0x6c300  1      OPC=1343  
  nop                                                           #  68    0x6c301  1      OPC=1343  
  nop                                                           #  69    0x6c302  1      OPC=1343  
  nop                                                           #  70    0x6c303  1      OPC=1343  
  nop                                                           #  71    0x6c304  1      OPC=1343  
  nop                                                           #  72    0x6c305  1      OPC=1343  
  nop                                                           #  73    0x6c306  1      OPC=1343  
  nop                                                           #  74    0x6c307  1      OPC=1343  
  nop                                                           #  75    0x6c308  1      OPC=1343  
  nop                                                           #  76    0x6c309  1      OPC=1343  
  nop                                                           #  77    0x6c30a  1      OPC=1343  
  nop                                                           #  78    0x6c30b  1      OPC=1343  
.L_6c300:                                                       #        0x6c30c  0      OPC=0     
  nop                                                           #  79    0x6c30c  1      OPC=1343  
  nop                                                           #  80    0x6c30d  1      OPC=1343  
  nop                                                           #  81    0x6c30e  1      OPC=1343  
  nop                                                           #  82    0x6c30f  1      OPC=1343  
  nop                                                           #  83    0x6c310  1      OPC=1343  
  nop                                                           #  84    0x6c311  1      OPC=1343  
  nop                                                           #  85    0x6c312  1      OPC=1343  
  nop                                                           #  86    0x6c313  1      OPC=1343  
  nop                                                           #  87    0x6c314  1      OPC=1343  
  nop                                                           #  88    0x6c315  1      OPC=1343  
  nop                                                           #  89    0x6c316  1      OPC=1343  
  nop                                                           #  90    0x6c317  1      OPC=1343  
  nop                                                           #  91    0x6c318  1      OPC=1343  
  nop                                                           #  92    0x6c319  1      OPC=1343  
  nop                                                           #  93    0x6c31a  1      OPC=1343  
  nop                                                           #  94    0x6c31b  1      OPC=1343  
  nop                                                           #  95    0x6c31c  1      OPC=1343  
  nop                                                           #  96    0x6c31d  1      OPC=1343  
  nop                                                           #  97    0x6c31e  1      OPC=1343  
  nop                                                           #  98    0x6c31f  1      OPC=1343  
  nop                                                           #  99    0x6c320  1      OPC=1343  
  nop                                                           #  100   0x6c321  1      OPC=1343  
  nop                                                           #  101   0x6c322  1      OPC=1343  
  nop                                                           #  102   0x6c323  1      OPC=1343  
  nop                                                           #  103   0x6c324  1      OPC=1343  
  nop                                                           #  104   0x6c325  1      OPC=1343  
  nop                                                           #  105   0x6c326  1      OPC=1343  
  callq ._ZSt16__throw_bad_castv                                #  106   0x6c327  5      OPC=260   
                                                                                                   
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE7getlineEPwi

