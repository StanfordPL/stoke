  .text
  .globl _fwalk
  .type _fwalk, @function

#! file-offset 0x7b780
#! rip-offset  0x7b780
#! capacity    640 bytes

# Text                            #  Line  RIP      Bytes  
._fwalk:                          #        0x7b780  0      
  pushq %r14                      #  1     0x7b780  3      
  movl %edi, %r14d                #  2     0x7b783  3      
  movl %esi, %esi                 #  3     0x7b786  2      
  pushq %r13                      #  4     0x7b788  3      
  pushq %r12                      #  5     0x7b78b  3      
  pushq %rbx                      #  6     0x7b78e  2      
  subl $0x18, %esp                #  7     0x7b790  3      
  addq %r15, %rsp                 #  8     0x7b793  3      
  testq %r14, %r14                #  9     0x7b796  3      
  movq %rsi, 0x8(%rsp)            #  10    0x7b799  5      
  je .L_7b9c0                     #  11    0x7b79e  6      
  movl %r14d, %r14d               #  12    0x7b7a4  3      
  movl 0x38(%r15,%r14,1), %ebx    #  13    0x7b7a7  5      
  testl %ebx, %ebx                #  14    0x7b7ac  2      
  je .L_7b920                     #  15    0x7b7ae  6      
  nop                             #  16    0x7b7b4  1      
  callq .__sfp_lock_acquire       #  17    0x7b7b5  5      
  movl %r14d, %r14d               #  18    0x7b7ba  3      
  movl 0x38(%r15,%r14,1), %ecx    #  19    0x7b7bd  5      
  testl %ecx, %ecx                #  20    0x7b7c2  2      
  je .L_7b980                     #  21    0x7b7c4  6      
  nop                             #  22    0x7b7ca  1      
  nop                             #  23    0x7b7cb  1      
.L_7b7e0:                         #        0x7b7cc  0      
  addl $0x2e0, %r14d              #  24    0x7b7cc  7      
  xorl %r13d, %r13d               #  25    0x7b7d3  3      
  testq %r14, %r14                #  26    0x7b7d6  3      
  je .L_7b8e0                     #  27    0x7b7d9  6      
  nop                             #  28    0x7b7df  1      
.L_7b800:                         #        0x7b7e0  0      
  movl %r14d, %r14d               #  29    0x7b7e0  3      
  movl 0x4(%r15,%r14,1), %r12d    #  30    0x7b7e3  5      
  movl %r14d, %r14d               #  31    0x7b7e8  3      
  movl 0x8(%r15,%r14,1), %ebx     #  32    0x7b7eb  5      
  subl $0x1, %r12d                #  33    0x7b7f0  4      
  jns .L_7b840                    #  34    0x7b7f4  6      
  jmpq .L_7b8c0                   #  35    0x7b7fa  5      
  nop                             #  36    0x7b7ff  1      
.L_7b820:                         #        0x7b800  0      
  subl $0xffffff80, %ebx          #  37    0x7b800  6      
  nop                             #  38    0x7b806  1      
  nop                             #  39    0x7b807  1      
.L_7b840:                         #        0x7b808  0      
  movl %ebx, %ebx                 #  40    0x7b808  2      
  cmpw $0x1, 0xc(%r15,%rbx,1)     #  41    0x7b80a  7      
  jbe .L_7b8a0                    #  42    0x7b811  6      
  movl %ebx, %ebx                 #  43    0x7b817  2      
  cmpw $0xffff, 0xe(%r15,%rbx,1)  #  44    0x7b819  8      
  je .L_7b8a0                     #  45    0x7b821  6      
  movl %ebx, %edi                 #  46    0x7b827  2      
  movq 0x8(%rsp), %rdx            #  47    0x7b829  5      
  nop                             #  48    0x7b82e  1      
  nop                             #  49    0x7b82f  1      
  nop                             #  50    0x7b830  1      
  andl $0xffffffe0, %edx          #  51    0x7b831  6      
  addq %r15, %rdx                 #  52    0x7b837  3      
  callq %rdx                      #  53    0x7b83a  2      
  orl %eax, %r13d                 #  54    0x7b83c  3      
  nop                             #  55    0x7b83f  1      
  nop                             #  56    0x7b840  1      
.L_7b8a0:                         #        0x7b841  0      
  subl $0x1, %r12d                #  57    0x7b841  4      
  jns .L_7b820                    #  58    0x7b845  6      
  nop                             #  59    0x7b84b  1      
  nop                             #  60    0x7b84c  1      
.L_7b8c0:                         #        0x7b84d  0      
  movl %r14d, %r14d               #  61    0x7b84d  3      
  movl (%r15,%r14,1), %r14d       #  62    0x7b850  4      
  testq %r14, %r14                #  63    0x7b854  3      
  jne .L_7b800                    #  64    0x7b857  6      
  nop                             #  65    0x7b85d  1      
  nop                             #  66    0x7b85e  1      
.L_7b8e0:                         #        0x7b85f  0      
  nop                             #  67    0x7b85f  1      
  nop                             #  68    0x7b860  1      
  callq .__sfp_lock_release       #  69    0x7b861  5      
  addl $0x18, %esp                #  70    0x7b866  3      
  addq %r15, %rsp                 #  71    0x7b869  3      
  movl %r13d, %eax                #  72    0x7b86c  3      
  popq %rbx                       #  73    0x7b86f  2      
  popq %r12                       #  74    0x7b871  3      
  popq %r13                       #  75    0x7b874  3      
  popq %r14                       #  76    0x7b877  3      
  popq %r11                       #  77    0x7b87a  3      
  andl $0xffffffe0, %r11d         #  78    0x7b87d  7      
  addq %r15, %r11                 #  79    0x7b884  3      
  jmpq %r11                       #  80    0x7b887  3      
  nop                             #  81    0x7b88a  1      
.L_7b920:                         #        0x7b88b  0      
  movl %r14d, %edi                #  82    0x7b88b  3      
  nop                             #  83    0x7b88e  1      
  nop                             #  84    0x7b88f  1      
  callq .__sinit                  #  85    0x7b890  5      
  nop                             #  86    0x7b895  1      
  nop                             #  87    0x7b896  1      
  callq .__sfp_lock_acquire       #  88    0x7b897  5      
  movl %r14d, %r14d               #  89    0x7b89c  3      
  movl 0x38(%r15,%r14,1), %ecx    #  90    0x7b89f  5      
  testl %ecx, %ecx                #  91    0x7b8a4  2      
  jne .L_7b7e0                    #  92    0x7b8a6  6      
  nop                             #  93    0x7b8ac  1      
  nop                             #  94    0x7b8ad  1      
.L_7b980:                         #        0x7b8ae  0      
  movl %r14d, %edi                #  95    0x7b8ae  3      
  nop                             #  96    0x7b8b1  1      
  nop                             #  97    0x7b8b2  1      
  callq .__sinit                  #  98    0x7b8b3  5      
  jmpq .L_7b7e0                   #  99    0x7b8b8  5      
  nop                             #  100   0x7b8bd  1      
  nop                             #  101   0x7b8be  1      
.L_7b9c0:                         #        0x7b8bf  0      
  nop                             #  102   0x7b8bf  1      
  nop                             #  103   0x7b8c0  1      
  callq .__sfp_lock_acquire       #  104   0x7b8c1  5      
  jmpq .L_7b7e0                   #  105   0x7b8c6  5      
  nop                             #  106   0x7b8cb  1      
  nop                             #  107   0x7b8cc  1      
  nop                             #  108   0x7b8cd  1      
  nop                             #  109   0x7b8ce  1      
  nop                             #  110   0x7b8cf  1      
  nop                             #  111   0x7b8d0  1      
  nop                             #  112   0x7b8d1  1      
  nop                             #  113   0x7b8d2  1      
  nop                             #  114   0x7b8d3  1      
  nop                             #  115   0x7b8d4  1      
  nop                             #  116   0x7b8d5  1      
  nop                             #  117   0x7b8d6  1      
  nop                             #  118   0x7b8d7  1      
  nop                             #  119   0x7b8d8  1      
  nop                             #  120   0x7b8d9  1      
  nop                             #  121   0x7b8da  1      
  nop                             #  122   0x7b8db  1      
  nop                             #  123   0x7b8dc  1      
  nop                             #  124   0x7b8dd  1      
  nop                             #  125   0x7b8de  1      
  nop                             #  126   0x7b8df  1      
  nop                             #  127   0x7b8e0  1      
  nop                             #  128   0x7b8e1  1      
  nop                             #  129   0x7b8e2  1      
  nop                             #  130   0x7b8e3  1      
  nop                             #  131   0x7b8e4  1      
  nop                             #  132   0x7b8e5  1      
                                                           
.size _fwalk, .-_fwalk

