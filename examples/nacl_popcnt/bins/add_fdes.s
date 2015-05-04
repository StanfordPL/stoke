  .text
  .globl add_fdes
  .type add_fdes, @function

#! file-offset 0x5eae0
#! rip-offset  0x5eae0
#! capacity    608 bytes

# Text                                 #  Line  RIP      Bytes  
.add_fdes:                             #        0x5eae0  0      
  pushq %r14                           #  1     0x5eae0  3      
  movl %esi, %esi                      #  2     0x5eae3  2      
  pushq %r13                           #  3     0x5eae5  3      
  movl %edi, %r13d                     #  4     0x5eae8  3      
  pushq %r12                           #  5     0x5eaeb  3      
  pushq %rbx                           #  6     0x5eaee  2      
  movl %edx, %ebx                      #  7     0x5eaf0  2      
  subl $0x38, %esp                     #  8     0x5eaf2  3      
  addq %r15, %rsp                      #  9     0x5eaf5  3      
  movl %r13d, %r13d                    #  10    0x5eaf8  3      
  movzwl 0x10(%r15,%r13,1), %r12d      #  11    0x5eafb  6      
  nop                                  #  12    0x5eb01  1      
  movq %rsi, 0x10(%rsp)                #  13    0x5eb02  5      
  movl %r13d, %esi                     #  14    0x5eb07  3      
  shrw $0x3, %r12w                     #  15    0x5eb0a  5      
  movzbl %r12b, %r12d                  #  16    0x5eb0f  4      
  movl %r12d, %edi                     #  17    0x5eb13  3      
  nop                                  #  18    0x5eb16  1      
  callq .base_from_object              #  19    0x5eb17  5      
  movl %ebx, %ebx                      #  20    0x5eb1c  2      
  movl (%r15,%rbx,1), %r10d            #  21    0x5eb1e  4      
  movl %eax, %r8d                      #  22    0x5eb22  3      
  testl %r10d, %r10d                   #  23    0x5eb25  3      
  je .L_5ed20                          #  24    0x5eb28  6      
  leal 0x2c(%rsp), %eax                #  25    0x5eb2e  4      
  xorl %r14d, %r14d                    #  26    0x5eb32  3      
  movq %rax, 0x18(%rsp)                #  27    0x5eb35  5      
  xchgw %ax, %ax                       #  28    0x5eb3a  3      
  jmpq .L_5ebe0                        #  29    0x5eb3d  5      
  nop                                  #  30    0x5eb42  1      
  nop                                  #  31    0x5eb43  1      
.L_5eb60:                              #        0x5eb44  0      
  movl %ebx, %ebx                      #  32    0x5eb44  2      
  movl 0x8(%r15,%rbx,1), %r9d          #  33    0x5eb46  5      
  testl %r9d, %r9d                     #  34    0x5eb4b  3      
  je .L_5ebc0                          #  35    0x5eb4e  6      
  nop                                  #  36    0x5eb54  1      
  nop                                  #  37    0x5eb55  1      
.L_5eb80:                              #        0x5eb56  0      
  movq 0x10(%rsp), %rdx                #  38    0x5eb56  5      
  movl %edx, %edx                      #  39    0x5eb5b  2      
  movl (%r15,%rdx,1), %eax             #  40    0x5eb5d  4      
  testq %rax, %rax                     #  41    0x5eb61  3      
  je .L_5ebc0                          #  42    0x5eb64  6      
  movl %eax, %eax                      #  43    0x5eb6a  2      
  movl 0x4(%r15,%rax,1), %edx          #  44    0x5eb6c  5      
  leal (,%rdx,4), %ecx                 #  45    0x5eb71  7      
  xchgw %ax, %ax                       #  46    0x5eb78  3      
  addl $0x1, %edx                      #  47    0x5eb7b  3      
  movl %eax, %eax                      #  48    0x5eb7e  2      
  movl %edx, 0x4(%r15,%rax,1)          #  49    0x5eb80  5      
  movslq %ecx, %rcx                    #  50    0x5eb85  3      
  leaq (%rax,%rcx,1), %rcx             #  51    0x5eb88  4      
  movl %ecx, %ecx                      #  52    0x5eb8c  2      
  movl %ebx, 0x8(%r15,%rcx,1)          #  53    0x5eb8e  5      
  nop                                  #  54    0x5eb93  1      
.L_5ebc0:                              #        0x5eb94  0      
  movl %ebx, %ebx                      #  55    0x5eb94  2      
  movl (%r15,%rbx,1), %eax             #  56    0x5eb96  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  57    0x5eb9a  4      
  movl %ebx, %ebx                      #  58    0x5eb9e  2      
  movl (%r15,%rbx,1), %edi             #  59    0x5eba0  4      
  testl %edi, %edi                     #  60    0x5eba4  2      
  je .L_5ed20                          #  61    0x5eba6  6      
  nop                                  #  62    0x5ebac  1      
.L_5ebe0:                              #        0x5ebad  0      
  movl %ebx, %ebx                      #  63    0x5ebad  2      
  movl 0x4(%r15,%rbx,1), %edx          #  64    0x5ebaf  5      
  testl %edx, %edx                     #  65    0x5ebb4  2      
  je .L_5ebc0                          #  66    0x5ebb6  6      
  movl %r13d, %r13d                    #  67    0x5ebbc  3      
  testb $0x4, 0x10(%r15,%r13,1)        #  68    0x5ebbf  6      
  je .L_5ec60                          #  69    0x5ebc5  6      
  negl %edx                            #  70    0x5ebcb  2      
  leal 0x4(%rdx,%rbx,1), %edx          #  71    0x5ebcd  4      
  cmpl %edx, %r14d                     #  72    0x5ebd1  3      
  nop                                  #  73    0x5ebd4  1      
  je .L_5ec60                          #  74    0x5ebd5  6      
  movl %edx, %edi                      #  75    0x5ebdb  2      
  movq %rdx, 0x8(%rsp)                 #  76    0x5ebdd  5      
  nop                                  #  77    0x5ebe2  1      
  nop                                  #  78    0x5ebe3  1      
  callq .get_cie_encoding              #  79    0x5ebe4  5      
  movl %r13d, %esi                     #  80    0x5ebe9  3      
  movzbl %al, %edi                     #  81    0x5ebec  3      
  movl %eax, %r12d                     #  82    0x5ebef  3      
  nop                                  #  83    0x5ebf2  1      
  nop                                  #  84    0x5ebf3  1      
  callq .base_from_object              #  85    0x5ebf4  5      
  movq 0x8(%rsp), %rdx                 #  86    0x5ebf9  5      
  movl %eax, %r8d                      #  87    0x5ebfe  3      
  movq %rdx, %r14                      #  88    0x5ec01  3      
  nop                                  #  89    0x5ec04  1      
  nop                                  #  90    0x5ec05  1      
.L_5ec60:                              #        0x5ec06  0      
  testl %r12d, %r12d                   #  91    0x5ec06  3      
  je .L_5eb60                          #  92    0x5ec09  6      
  movl 0x18(%rsp), %ecx                #  93    0x5ec0f  4      
  movzbl %r12b, %r9d                   #  94    0x5ec13  4      
  leal 0x8(%rbx), %edx                 #  95    0x5ec17  3      
  movl %r8d, %esi                      #  96    0x5ec1a  3      
  movl %r9d, %edi                      #  97    0x5ec1d  3      
  movl %r8d, (%rsp)                    #  98    0x5ec20  4      
  xchgw %ax, %ax                       #  99    0x5ec24  3      
  movl %r9d, 0x8(%rsp)                 #  100   0x5ec27  5      
  nop                                  #  101   0x5ec2c  1      
  nop                                  #  102   0x5ec2d  1      
  callq .read_encoded_value_with_base  #  103   0x5ec2e  5      
  movl 0x8(%rsp), %r9d                 #  104   0x5ec33  5      
  movl %r9d, %edi                      #  105   0x5ec38  3      
  nop                                  #  106   0x5ec3b  1      
  nop                                  #  107   0x5ec3c  1      
  callq .size_of_encoded_value         #  108   0x5ec3d  5      
  cmpl $0x3, %eax                      #  109   0x5ec42  3      
  movl $0xffffffff, %edx               #  110   0x5ec45  5      
  movl (%rsp), %r8d                    #  111   0x5ec4a  4      
  ja .L_5ece0                          #  112   0x5ec4e  6      
  leal (,%rax,8), %ecx                 #  113   0x5ec54  7      
  movl $0x1, %edx                      #  114   0x5ec5b  5      
  shll %cl, %edx                       #  115   0x5ec60  2      
  subl $0x1, %edx                      #  116   0x5ec62  3      
  nop                                  #  117   0x5ec65  1      
.L_5ece0:                              #        0x5ec66  0      
  testl %edx, 0x2c(%rsp)               #  118   0x5ec66  4      
  jne .L_5eb80                         #  119   0x5ec6a  6      
  movl %ebx, %ebx                      #  120   0x5ec70  2      
  movl (%r15,%rbx,1), %eax             #  121   0x5ec72  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  122   0x5ec76  4      
  movl %ebx, %ebx                      #  123   0x5ec7a  2      
  movl (%r15,%rbx,1), %edi             #  124   0x5ec7c  4      
  testl %edi, %edi                     #  125   0x5ec80  2      
  nop                                  #  126   0x5ec82  1      
  jne .L_5ebe0                         #  127   0x5ec83  6      
  nop                                  #  128   0x5ec89  1      
  nop                                  #  129   0x5ec8a  1      
.L_5ed20:                              #        0x5ec8b  0      
  addl $0x38, %esp                     #  130   0x5ec8b  3      
  addq %r15, %rsp                      #  131   0x5ec8e  3      
  popq %rbx                            #  132   0x5ec91  2      
  popq %r12                            #  133   0x5ec93  3      
  popq %r13                            #  134   0x5ec96  3      
  popq %r14                            #  135   0x5ec99  3      
  popq %r11                            #  136   0x5ec9c  3      
  andl $0xffffffe0, %r11d              #  137   0x5ec9f  7      
  addq %r15, %r11                      #  138   0x5eca6  3      
  jmpq %r11                            #  139   0x5eca9  3      
  nop                                  #  140   0x5ecac  1      
                                                                
.size add_fdes, .-add_fdes

