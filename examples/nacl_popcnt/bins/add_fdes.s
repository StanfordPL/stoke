  .text
  .globl add_fdes
  .type add_fdes, @function

#! file-offset 0x5ea40
#! rip-offset  0x5ea40
#! capacity    608 bytes

# Text                                 #  Line  RIP      Bytes  
.add_fdes:                             #        0x5ea40  0      
  pushq %r14                           #  1     0x5ea40  3      
  movl %esi, %esi                      #  2     0x5ea43  2      
  pushq %r13                           #  3     0x5ea45  3      
  movl %edi, %r13d                     #  4     0x5ea48  3      
  pushq %r12                           #  5     0x5ea4b  3      
  pushq %rbx                           #  6     0x5ea4e  2      
  movl %edx, %ebx                      #  7     0x5ea50  2      
  subl $0x38, %esp                     #  8     0x5ea52  3      
  addq %r15, %rsp                      #  9     0x5ea55  3      
  movl %r13d, %r13d                    #  10    0x5ea58  3      
  movzwl 0x10(%r15,%r13,1), %r12d      #  11    0x5ea5b  6      
  nop                                  #  12    0x5ea61  1      
  movq %rsi, 0x10(%rsp)                #  13    0x5ea62  5      
  movl %r13d, %esi                     #  14    0x5ea67  3      
  shrw $0x3, %r12w                     #  15    0x5ea6a  5      
  movzbl %r12b, %r12d                  #  16    0x5ea6f  4      
  movl %r12d, %edi                     #  17    0x5ea73  3      
  nop                                  #  18    0x5ea76  1      
  callq .base_from_object              #  19    0x5ea77  5      
  movl %ebx, %ebx                      #  20    0x5ea7c  2      
  movl (%r15,%rbx,1), %r10d            #  21    0x5ea7e  4      
  movl %eax, %r8d                      #  22    0x5ea82  3      
  testl %r10d, %r10d                   #  23    0x5ea85  3      
  je .L_5ec80                          #  24    0x5ea88  6      
  leal 0x2c(%rsp), %eax                #  25    0x5ea8e  4      
  xorl %r14d, %r14d                    #  26    0x5ea92  3      
  movq %rax, 0x18(%rsp)                #  27    0x5ea95  5      
  xchgw %ax, %ax                       #  28    0x5ea9a  3      
  jmpq .L_5eb40                        #  29    0x5ea9d  5      
  nop                                  #  30    0x5eaa2  1      
  nop                                  #  31    0x5eaa3  1      
.L_5eac0:                              #        0x5eaa4  0      
  movl %ebx, %ebx                      #  32    0x5eaa4  2      
  movl 0x8(%r15,%rbx,1), %r9d          #  33    0x5eaa6  5      
  testl %r9d, %r9d                     #  34    0x5eaab  3      
  je .L_5eb20                          #  35    0x5eaae  6      
  nop                                  #  36    0x5eab4  1      
  nop                                  #  37    0x5eab5  1      
.L_5eae0:                              #        0x5eab6  0      
  movq 0x10(%rsp), %rdx                #  38    0x5eab6  5      
  movl %edx, %edx                      #  39    0x5eabb  2      
  movl (%r15,%rdx,1), %eax             #  40    0x5eabd  4      
  testq %rax, %rax                     #  41    0x5eac1  3      
  je .L_5eb20                          #  42    0x5eac4  6      
  movl %eax, %eax                      #  43    0x5eaca  2      
  movl 0x4(%r15,%rax,1), %edx          #  44    0x5eacc  5      
  leal (,%rdx,4), %ecx                 #  45    0x5ead1  7      
  xchgw %ax, %ax                       #  46    0x5ead8  3      
  addl $0x1, %edx                      #  47    0x5eadb  3      
  movl %eax, %eax                      #  48    0x5eade  2      
  movl %edx, 0x4(%r15,%rax,1)          #  49    0x5eae0  5      
  movslq %ecx, %rcx                    #  50    0x5eae5  3      
  leaq (%rax,%rcx,1), %rcx             #  51    0x5eae8  4      
  movl %ecx, %ecx                      #  52    0x5eaec  2      
  movl %ebx, 0x8(%r15,%rcx,1)          #  53    0x5eaee  5      
  nop                                  #  54    0x5eaf3  1      
.L_5eb20:                              #        0x5eaf4  0      
  movl %ebx, %ebx                      #  55    0x5eaf4  2      
  movl (%r15,%rbx,1), %eax             #  56    0x5eaf6  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  57    0x5eafa  4      
  movl %ebx, %ebx                      #  58    0x5eafe  2      
  movl (%r15,%rbx,1), %edi             #  59    0x5eb00  4      
  testl %edi, %edi                     #  60    0x5eb04  2      
  je .L_5ec80                          #  61    0x5eb06  6      
  nop                                  #  62    0x5eb0c  1      
.L_5eb40:                              #        0x5eb0d  0      
  movl %ebx, %ebx                      #  63    0x5eb0d  2      
  movl 0x4(%r15,%rbx,1), %edx          #  64    0x5eb0f  5      
  testl %edx, %edx                     #  65    0x5eb14  2      
  je .L_5eb20                          #  66    0x5eb16  6      
  movl %r13d, %r13d                    #  67    0x5eb1c  3      
  testb $0x4, 0x10(%r15,%r13,1)        #  68    0x5eb1f  6      
  je .L_5ebc0                          #  69    0x5eb25  6      
  negl %edx                            #  70    0x5eb2b  2      
  leal 0x4(%rdx,%rbx,1), %edx          #  71    0x5eb2d  4      
  cmpl %edx, %r14d                     #  72    0x5eb31  3      
  nop                                  #  73    0x5eb34  1      
  je .L_5ebc0                          #  74    0x5eb35  6      
  movl %edx, %edi                      #  75    0x5eb3b  2      
  movq %rdx, 0x8(%rsp)                 #  76    0x5eb3d  5      
  nop                                  #  77    0x5eb42  1      
  nop                                  #  78    0x5eb43  1      
  callq .get_cie_encoding              #  79    0x5eb44  5      
  movl %r13d, %esi                     #  80    0x5eb49  3      
  movzbl %al, %edi                     #  81    0x5eb4c  3      
  movl %eax, %r12d                     #  82    0x5eb4f  3      
  nop                                  #  83    0x5eb52  1      
  nop                                  #  84    0x5eb53  1      
  callq .base_from_object              #  85    0x5eb54  5      
  movq 0x8(%rsp), %rdx                 #  86    0x5eb59  5      
  movl %eax, %r8d                      #  87    0x5eb5e  3      
  movq %rdx, %r14                      #  88    0x5eb61  3      
  nop                                  #  89    0x5eb64  1      
  nop                                  #  90    0x5eb65  1      
.L_5ebc0:                              #        0x5eb66  0      
  testl %r12d, %r12d                   #  91    0x5eb66  3      
  je .L_5eac0                          #  92    0x5eb69  6      
  movl 0x18(%rsp), %ecx                #  93    0x5eb6f  4      
  movzbl %r12b, %r9d                   #  94    0x5eb73  4      
  leal 0x8(%rbx), %edx                 #  95    0x5eb77  3      
  movl %r8d, %esi                      #  96    0x5eb7a  3      
  movl %r9d, %edi                      #  97    0x5eb7d  3      
  movl %r8d, (%rsp)                    #  98    0x5eb80  4      
  xchgw %ax, %ax                       #  99    0x5eb84  3      
  movl %r9d, 0x8(%rsp)                 #  100   0x5eb87  5      
  nop                                  #  101   0x5eb8c  1      
  nop                                  #  102   0x5eb8d  1      
  callq .read_encoded_value_with_base  #  103   0x5eb8e  5      
  movl 0x8(%rsp), %r9d                 #  104   0x5eb93  5      
  movl %r9d, %edi                      #  105   0x5eb98  3      
  nop                                  #  106   0x5eb9b  1      
  nop                                  #  107   0x5eb9c  1      
  callq .size_of_encoded_value         #  108   0x5eb9d  5      
  cmpl $0x3, %eax                      #  109   0x5eba2  3      
  movl $0xffffffff, %edx               #  110   0x5eba5  5      
  movl (%rsp), %r8d                    #  111   0x5ebaa  4      
  ja .L_5ec40                          #  112   0x5ebae  6      
  leal (,%rax,8), %ecx                 #  113   0x5ebb4  7      
  movl $0x1, %edx                      #  114   0x5ebbb  5      
  shll %cl, %edx                       #  115   0x5ebc0  2      
  subl $0x1, %edx                      #  116   0x5ebc2  3      
  nop                                  #  117   0x5ebc5  1      
.L_5ec40:                              #        0x5ebc6  0      
  testl %edx, 0x2c(%rsp)               #  118   0x5ebc6  4      
  jne .L_5eae0                         #  119   0x5ebca  6      
  movl %ebx, %ebx                      #  120   0x5ebd0  2      
  movl (%r15,%rbx,1), %eax             #  121   0x5ebd2  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  122   0x5ebd6  4      
  movl %ebx, %ebx                      #  123   0x5ebda  2      
  movl (%r15,%rbx,1), %edi             #  124   0x5ebdc  4      
  testl %edi, %edi                     #  125   0x5ebe0  2      
  nop                                  #  126   0x5ebe2  1      
  jne .L_5eb40                         #  127   0x5ebe3  6      
  nop                                  #  128   0x5ebe9  1      
  nop                                  #  129   0x5ebea  1      
.L_5ec80:                              #        0x5ebeb  0      
  addl $0x38, %esp                     #  130   0x5ebeb  3      
  addq %r15, %rsp                      #  131   0x5ebee  3      
  popq %rbx                            #  132   0x5ebf1  2      
  popq %r12                            #  133   0x5ebf3  3      
  popq %r13                            #  134   0x5ebf6  3      
  popq %r14                            #  135   0x5ebf9  3      
  popq %r11                            #  136   0x5ebfc  3      
  andl $0xffffffe0, %r11d              #  137   0x5ebff  7      
  addq %r15, %r11                      #  138   0x5ec06  3      
  jmpq %r11                            #  139   0x5ec09  3      
  nop                                  #  140   0x5ec0c  1      
                                                                
.size add_fdes, .-add_fdes

