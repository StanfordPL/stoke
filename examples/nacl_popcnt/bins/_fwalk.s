  .text
  .globl _fwalk
  .type _fwalk, @function

#! file-offset 0x7b7a0
#! rip-offset  0x7b7a0
#! capacity    640 bytes

# Text                            #  Line  RIP      Bytes  
._fwalk:                          #        0x7b7a0  0      
  pushq %r14                      #  1     0x7b7a0  3      
  movl %edi, %r14d                #  2     0x7b7a3  3      
  movl %esi, %esi                 #  3     0x7b7a6  2      
  pushq %r13                      #  4     0x7b7a8  3      
  pushq %r12                      #  5     0x7b7ab  3      
  pushq %rbx                      #  6     0x7b7ae  2      
  subl $0x18, %esp                #  7     0x7b7b0  3      
  addq %r15, %rsp                 #  8     0x7b7b3  3      
  testq %r14, %r14                #  9     0x7b7b6  3      
  movq %rsi, 0x8(%rsp)            #  10    0x7b7b9  5      
  je .L_7b9e0                     #  11    0x7b7be  6      
  movl %r14d, %r14d               #  12    0x7b7c4  3      
  movl 0x38(%r15,%r14,1), %ebx    #  13    0x7b7c7  5      
  testl %ebx, %ebx                #  14    0x7b7cc  2      
  je .L_7b940                     #  15    0x7b7ce  6      
  nop                             #  16    0x7b7d4  1      
  callq .__sfp_lock_acquire       #  17    0x7b7d5  5      
  movl %r14d, %r14d               #  18    0x7b7da  3      
  movl 0x38(%r15,%r14,1), %ecx    #  19    0x7b7dd  5      
  testl %ecx, %ecx                #  20    0x7b7e2  2      
  je .L_7b9a0                     #  21    0x7b7e4  6      
  nop                             #  22    0x7b7ea  1      
  nop                             #  23    0x7b7eb  1      
.L_7b800:                         #        0x7b7ec  0      
  addl $0x2e0, %r14d              #  24    0x7b7ec  7      
  xorl %r13d, %r13d               #  25    0x7b7f3  3      
  testq %r14, %r14                #  26    0x7b7f6  3      
  je .L_7b900                     #  27    0x7b7f9  6      
  nop                             #  28    0x7b7ff  1      
.L_7b820:                         #        0x7b800  0      
  movl %r14d, %r14d               #  29    0x7b800  3      
  movl 0x4(%r15,%r14,1), %r12d    #  30    0x7b803  5      
  movl %r14d, %r14d               #  31    0x7b808  3      
  movl 0x8(%r15,%r14,1), %ebx     #  32    0x7b80b  5      
  subl $0x1, %r12d                #  33    0x7b810  4      
  jns .L_7b860                    #  34    0x7b814  6      
  jmpq .L_7b8e0                   #  35    0x7b81a  5      
  nop                             #  36    0x7b81f  1      
.L_7b840:                         #        0x7b820  0      
  subl $0xffffff80, %ebx          #  37    0x7b820  6      
  nop                             #  38    0x7b826  1      
  nop                             #  39    0x7b827  1      
.L_7b860:                         #        0x7b828  0      
  movl %ebx, %ebx                 #  40    0x7b828  2      
  cmpw $0x1, 0xc(%r15,%rbx,1)     #  41    0x7b82a  7      
  jbe .L_7b8c0                    #  42    0x7b831  6      
  movl %ebx, %ebx                 #  43    0x7b837  2      
  cmpw $0xffff, 0xe(%r15,%rbx,1)  #  44    0x7b839  8      
  je .L_7b8c0                     #  45    0x7b841  6      
  movl %ebx, %edi                 #  46    0x7b847  2      
  movq 0x8(%rsp), %rdx            #  47    0x7b849  5      
  nop                             #  48    0x7b84e  1      
  nop                             #  49    0x7b84f  1      
  nop                             #  50    0x7b850  1      
  andl $0xffffffe0, %edx          #  51    0x7b851  6      
  addq %r15, %rdx                 #  52    0x7b857  3      
  callq %rdx                      #  53    0x7b85a  2      
  orl %eax, %r13d                 #  54    0x7b85c  3      
  nop                             #  55    0x7b85f  1      
  nop                             #  56    0x7b860  1      
.L_7b8c0:                         #        0x7b861  0      
  subl $0x1, %r12d                #  57    0x7b861  4      
  jns .L_7b840                    #  58    0x7b865  6      
  nop                             #  59    0x7b86b  1      
  nop                             #  60    0x7b86c  1      
.L_7b8e0:                         #        0x7b86d  0      
  movl %r14d, %r14d               #  61    0x7b86d  3      
  movl (%r15,%r14,1), %r14d       #  62    0x7b870  4      
  testq %r14, %r14                #  63    0x7b874  3      
  jne .L_7b820                    #  64    0x7b877  6      
  nop                             #  65    0x7b87d  1      
  nop                             #  66    0x7b87e  1      
.L_7b900:                         #        0x7b87f  0      
  nop                             #  67    0x7b87f  1      
  nop                             #  68    0x7b880  1      
  callq .__sfp_lock_release       #  69    0x7b881  5      
  addl $0x18, %esp                #  70    0x7b886  3      
  addq %r15, %rsp                 #  71    0x7b889  3      
  movl %r13d, %eax                #  72    0x7b88c  3      
  popq %rbx                       #  73    0x7b88f  2      
  popq %r12                       #  74    0x7b891  3      
  popq %r13                       #  75    0x7b894  3      
  popq %r14                       #  76    0x7b897  3      
  popq %r11                       #  77    0x7b89a  3      
  andl $0xffffffe0, %r11d         #  78    0x7b89d  7      
  addq %r15, %r11                 #  79    0x7b8a4  3      
  jmpq %r11                       #  80    0x7b8a7  3      
  nop                             #  81    0x7b8aa  1      
.L_7b940:                         #        0x7b8ab  0      
  movl %r14d, %edi                #  82    0x7b8ab  3      
  nop                             #  83    0x7b8ae  1      
  nop                             #  84    0x7b8af  1      
  callq .__sinit                  #  85    0x7b8b0  5      
  nop                             #  86    0x7b8b5  1      
  nop                             #  87    0x7b8b6  1      
  callq .__sfp_lock_acquire       #  88    0x7b8b7  5      
  movl %r14d, %r14d               #  89    0x7b8bc  3      
  movl 0x38(%r15,%r14,1), %ecx    #  90    0x7b8bf  5      
  testl %ecx, %ecx                #  91    0x7b8c4  2      
  jne .L_7b800                    #  92    0x7b8c6  6      
  nop                             #  93    0x7b8cc  1      
  nop                             #  94    0x7b8cd  1      
.L_7b9a0:                         #        0x7b8ce  0      
  movl %r14d, %edi                #  95    0x7b8ce  3      
  nop                             #  96    0x7b8d1  1      
  nop                             #  97    0x7b8d2  1      
  callq .__sinit                  #  98    0x7b8d3  5      
  jmpq .L_7b800                   #  99    0x7b8d8  5      
  nop                             #  100   0x7b8dd  1      
  nop                             #  101   0x7b8de  1      
.L_7b9e0:                         #        0x7b8df  0      
  nop                             #  102   0x7b8df  1      
  nop                             #  103   0x7b8e0  1      
  callq .__sfp_lock_acquire       #  104   0x7b8e1  5      
  jmpq .L_7b800                   #  105   0x7b8e6  5      
  nop                             #  106   0x7b8eb  1      
  nop                             #  107   0x7b8ec  1      
  nop                             #  108   0x7b8ed  1      
  nop                             #  109   0x7b8ee  1      
  nop                             #  110   0x7b8ef  1      
  nop                             #  111   0x7b8f0  1      
  nop                             #  112   0x7b8f1  1      
  nop                             #  113   0x7b8f2  1      
  nop                             #  114   0x7b8f3  1      
  nop                             #  115   0x7b8f4  1      
  nop                             #  116   0x7b8f5  1      
  nop                             #  117   0x7b8f6  1      
  nop                             #  118   0x7b8f7  1      
  nop                             #  119   0x7b8f8  1      
  nop                             #  120   0x7b8f9  1      
  nop                             #  121   0x7b8fa  1      
  nop                             #  122   0x7b8fb  1      
  nop                             #  123   0x7b8fc  1      
  nop                             #  124   0x7b8fd  1      
  nop                             #  125   0x7b8fe  1      
  nop                             #  126   0x7b8ff  1      
  nop                             #  127   0x7b900  1      
  nop                             #  128   0x7b901  1      
  nop                             #  129   0x7b902  1      
  nop                             #  130   0x7b903  1      
  nop                             #  131   0x7b904  1      
  nop                             #  132   0x7b905  1      
                                                           
.size _fwalk, .-_fwalk

