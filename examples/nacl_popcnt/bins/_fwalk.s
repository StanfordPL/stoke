  .text
  .globl _fwalk
  .type _fwalk, @function

#! file-offset 0x7b820
#! rip-offset  0x7b820
#! capacity    640 bytes

# Text                            #  Line  RIP      Bytes  
._fwalk:                          #        0x7b820  0      
  pushq %r14                      #  1     0x7b820  3      
  movl %edi, %r14d                #  2     0x7b823  3      
  movl %esi, %esi                 #  3     0x7b826  2      
  pushq %r13                      #  4     0x7b828  3      
  pushq %r12                      #  5     0x7b82b  3      
  pushq %rbx                      #  6     0x7b82e  2      
  subl $0x18, %esp                #  7     0x7b830  3      
  addq %r15, %rsp                 #  8     0x7b833  3      
  testq %r14, %r14                #  9     0x7b836  3      
  movq %rsi, 0x8(%rsp)            #  10    0x7b839  5      
  je .L_7ba60                     #  11    0x7b83e  6      
  movl %r14d, %r14d               #  12    0x7b844  3      
  movl 0x38(%r15,%r14,1), %ebx    #  13    0x7b847  5      
  testl %ebx, %ebx                #  14    0x7b84c  2      
  je .L_7b9c0                     #  15    0x7b84e  6      
  nop                             #  16    0x7b854  1      
  callq .__sfp_lock_acquire       #  17    0x7b855  5      
  movl %r14d, %r14d               #  18    0x7b85a  3      
  movl 0x38(%r15,%r14,1), %ecx    #  19    0x7b85d  5      
  testl %ecx, %ecx                #  20    0x7b862  2      
  je .L_7ba20                     #  21    0x7b864  6      
  nop                             #  22    0x7b86a  1      
  nop                             #  23    0x7b86b  1      
.L_7b880:                         #        0x7b86c  0      
  addl $0x2e0, %r14d              #  24    0x7b86c  7      
  xorl %r13d, %r13d               #  25    0x7b873  3      
  testq %r14, %r14                #  26    0x7b876  3      
  je .L_7b980                     #  27    0x7b879  6      
  nop                             #  28    0x7b87f  1      
.L_7b8a0:                         #        0x7b880  0      
  movl %r14d, %r14d               #  29    0x7b880  3      
  movl 0x4(%r15,%r14,1), %r12d    #  30    0x7b883  5      
  movl %r14d, %r14d               #  31    0x7b888  3      
  movl 0x8(%r15,%r14,1), %ebx     #  32    0x7b88b  5      
  subl $0x1, %r12d                #  33    0x7b890  4      
  jns .L_7b8e0                    #  34    0x7b894  6      
  jmpq .L_7b960                   #  35    0x7b89a  5      
  nop                             #  36    0x7b89f  1      
.L_7b8c0:                         #        0x7b8a0  0      
  subl $0xffffff80, %ebx          #  37    0x7b8a0  6      
  nop                             #  38    0x7b8a6  1      
  nop                             #  39    0x7b8a7  1      
.L_7b8e0:                         #        0x7b8a8  0      
  movl %ebx, %ebx                 #  40    0x7b8a8  2      
  cmpw $0x1, 0xc(%r15,%rbx,1)     #  41    0x7b8aa  7      
  jbe .L_7b940                    #  42    0x7b8b1  6      
  movl %ebx, %ebx                 #  43    0x7b8b7  2      
  cmpw $0xffff, 0xe(%r15,%rbx,1)  #  44    0x7b8b9  8      
  je .L_7b940                     #  45    0x7b8c1  6      
  movl %ebx, %edi                 #  46    0x7b8c7  2      
  movq 0x8(%rsp), %rdx            #  47    0x7b8c9  5      
  nop                             #  48    0x7b8ce  1      
  nop                             #  49    0x7b8cf  1      
  nop                             #  50    0x7b8d0  1      
  andl $0xffffffe0, %edx          #  51    0x7b8d1  6      
  addq %r15, %rdx                 #  52    0x7b8d7  3      
  callq %rdx                      #  53    0x7b8da  2      
  orl %eax, %r13d                 #  54    0x7b8dc  3      
  nop                             #  55    0x7b8df  1      
  nop                             #  56    0x7b8e0  1      
.L_7b940:                         #        0x7b8e1  0      
  subl $0x1, %r12d                #  57    0x7b8e1  4      
  jns .L_7b8c0                    #  58    0x7b8e5  6      
  nop                             #  59    0x7b8eb  1      
  nop                             #  60    0x7b8ec  1      
.L_7b960:                         #        0x7b8ed  0      
  movl %r14d, %r14d               #  61    0x7b8ed  3      
  movl (%r15,%r14,1), %r14d       #  62    0x7b8f0  4      
  testq %r14, %r14                #  63    0x7b8f4  3      
  jne .L_7b8a0                    #  64    0x7b8f7  6      
  nop                             #  65    0x7b8fd  1      
  nop                             #  66    0x7b8fe  1      
.L_7b980:                         #        0x7b8ff  0      
  nop                             #  67    0x7b8ff  1      
  nop                             #  68    0x7b900  1      
  callq .__sfp_lock_release       #  69    0x7b901  5      
  addl $0x18, %esp                #  70    0x7b906  3      
  addq %r15, %rsp                 #  71    0x7b909  3      
  movl %r13d, %eax                #  72    0x7b90c  3      
  popq %rbx                       #  73    0x7b90f  2      
  popq %r12                       #  74    0x7b911  3      
  popq %r13                       #  75    0x7b914  3      
  popq %r14                       #  76    0x7b917  3      
  popq %r11                       #  77    0x7b91a  3      
  andl $0xffffffe0, %r11d         #  78    0x7b91d  7      
  addq %r15, %r11                 #  79    0x7b924  3      
  jmpq %r11                       #  80    0x7b927  3      
  nop                             #  81    0x7b92a  1      
.L_7b9c0:                         #        0x7b92b  0      
  movl %r14d, %edi                #  82    0x7b92b  3      
  nop                             #  83    0x7b92e  1      
  nop                             #  84    0x7b92f  1      
  callq .__sinit                  #  85    0x7b930  5      
  nop                             #  86    0x7b935  1      
  nop                             #  87    0x7b936  1      
  callq .__sfp_lock_acquire       #  88    0x7b937  5      
  movl %r14d, %r14d               #  89    0x7b93c  3      
  movl 0x38(%r15,%r14,1), %ecx    #  90    0x7b93f  5      
  testl %ecx, %ecx                #  91    0x7b944  2      
  jne .L_7b880                    #  92    0x7b946  6      
  nop                             #  93    0x7b94c  1      
  nop                             #  94    0x7b94d  1      
.L_7ba20:                         #        0x7b94e  0      
  movl %r14d, %edi                #  95    0x7b94e  3      
  nop                             #  96    0x7b951  1      
  nop                             #  97    0x7b952  1      
  callq .__sinit                  #  98    0x7b953  5      
  jmpq .L_7b880                   #  99    0x7b958  5      
  nop                             #  100   0x7b95d  1      
  nop                             #  101   0x7b95e  1      
.L_7ba60:                         #        0x7b95f  0      
  nop                             #  102   0x7b95f  1      
  nop                             #  103   0x7b960  1      
  callq .__sfp_lock_acquire       #  104   0x7b961  5      
  jmpq .L_7b880                   #  105   0x7b966  5      
  nop                             #  106   0x7b96b  1      
  nop                             #  107   0x7b96c  1      
  nop                             #  108   0x7b96d  1      
  nop                             #  109   0x7b96e  1      
  nop                             #  110   0x7b96f  1      
  nop                             #  111   0x7b970  1      
  nop                             #  112   0x7b971  1      
  nop                             #  113   0x7b972  1      
  nop                             #  114   0x7b973  1      
  nop                             #  115   0x7b974  1      
  nop                             #  116   0x7b975  1      
  nop                             #  117   0x7b976  1      
  nop                             #  118   0x7b977  1      
  nop                             #  119   0x7b978  1      
  nop                             #  120   0x7b979  1      
  nop                             #  121   0x7b97a  1      
  nop                             #  122   0x7b97b  1      
  nop                             #  123   0x7b97c  1      
  nop                             #  124   0x7b97d  1      
  nop                             #  125   0x7b97e  1      
  nop                             #  126   0x7b97f  1      
  nop                             #  127   0x7b980  1      
  nop                             #  128   0x7b981  1      
  nop                             #  129   0x7b982  1      
  nop                             #  130   0x7b983  1      
  nop                             #  131   0x7b984  1      
  nop                             #  132   0x7b985  1      
                                                           
.size _fwalk, .-_fwalk

