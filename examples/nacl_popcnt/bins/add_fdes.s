  .text
  .globl add_fdes
  .type add_fdes, @function

#! file-offset 0x5ea60
#! rip-offset  0x5ea60
#! capacity    608 bytes

# Text                                 #  Line  RIP      Bytes  
.add_fdes:                             #        0x5ea60  0      
  pushq %r14                           #  1     0x5ea60  3      
  movl %esi, %esi                      #  2     0x5ea63  2      
  pushq %r13                           #  3     0x5ea65  3      
  movl %edi, %r13d                     #  4     0x5ea68  3      
  pushq %r12                           #  5     0x5ea6b  3      
  pushq %rbx                           #  6     0x5ea6e  2      
  movl %edx, %ebx                      #  7     0x5ea70  2      
  subl $0x38, %esp                     #  8     0x5ea72  3      
  addq %r15, %rsp                      #  9     0x5ea75  3      
  movl %r13d, %r13d                    #  10    0x5ea78  3      
  movzwl 0x10(%r15,%r13,1), %r12d      #  11    0x5ea7b  6      
  nop                                  #  12    0x5ea81  1      
  movq %rsi, 0x10(%rsp)                #  13    0x5ea82  5      
  movl %r13d, %esi                     #  14    0x5ea87  3      
  shrw $0x3, %r12w                     #  15    0x5ea8a  5      
  movzbl %r12b, %r12d                  #  16    0x5ea8f  4      
  movl %r12d, %edi                     #  17    0x5ea93  3      
  nop                                  #  18    0x5ea96  1      
  callq .base_from_object              #  19    0x5ea97  5      
  movl %ebx, %ebx                      #  20    0x5ea9c  2      
  movl (%r15,%rbx,1), %r10d            #  21    0x5ea9e  4      
  movl %eax, %r8d                      #  22    0x5eaa2  3      
  testl %r10d, %r10d                   #  23    0x5eaa5  3      
  je .L_5eca0                          #  24    0x5eaa8  6      
  leal 0x2c(%rsp), %eax                #  25    0x5eaae  4      
  xorl %r14d, %r14d                    #  26    0x5eab2  3      
  movq %rax, 0x18(%rsp)                #  27    0x5eab5  5      
  xchgw %ax, %ax                       #  28    0x5eaba  3      
  jmpq .L_5eb60                        #  29    0x5eabd  5      
  nop                                  #  30    0x5eac2  1      
  nop                                  #  31    0x5eac3  1      
.L_5eae0:                              #        0x5eac4  0      
  movl %ebx, %ebx                      #  32    0x5eac4  2      
  movl 0x8(%r15,%rbx,1), %r9d          #  33    0x5eac6  5      
  testl %r9d, %r9d                     #  34    0x5eacb  3      
  je .L_5eb40                          #  35    0x5eace  6      
  nop                                  #  36    0x5ead4  1      
  nop                                  #  37    0x5ead5  1      
.L_5eb00:                              #        0x5ead6  0      
  movq 0x10(%rsp), %rdx                #  38    0x5ead6  5      
  movl %edx, %edx                      #  39    0x5eadb  2      
  movl (%r15,%rdx,1), %eax             #  40    0x5eadd  4      
  testq %rax, %rax                     #  41    0x5eae1  3      
  je .L_5eb40                          #  42    0x5eae4  6      
  movl %eax, %eax                      #  43    0x5eaea  2      
  movl 0x4(%r15,%rax,1), %edx          #  44    0x5eaec  5      
  leal (,%rdx,4), %ecx                 #  45    0x5eaf1  7      
  xchgw %ax, %ax                       #  46    0x5eaf8  3      
  addl $0x1, %edx                      #  47    0x5eafb  3      
  movl %eax, %eax                      #  48    0x5eafe  2      
  movl %edx, 0x4(%r15,%rax,1)          #  49    0x5eb00  5      
  movslq %ecx, %rcx                    #  50    0x5eb05  3      
  leaq (%rax,%rcx,1), %rcx             #  51    0x5eb08  4      
  movl %ecx, %ecx                      #  52    0x5eb0c  2      
  movl %ebx, 0x8(%r15,%rcx,1)          #  53    0x5eb0e  5      
  nop                                  #  54    0x5eb13  1      
.L_5eb40:                              #        0x5eb14  0      
  movl %ebx, %ebx                      #  55    0x5eb14  2      
  movl (%r15,%rbx,1), %eax             #  56    0x5eb16  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  57    0x5eb1a  4      
  movl %ebx, %ebx                      #  58    0x5eb1e  2      
  movl (%r15,%rbx,1), %edi             #  59    0x5eb20  4      
  testl %edi, %edi                     #  60    0x5eb24  2      
  je .L_5eca0                          #  61    0x5eb26  6      
  nop                                  #  62    0x5eb2c  1      
.L_5eb60:                              #        0x5eb2d  0      
  movl %ebx, %ebx                      #  63    0x5eb2d  2      
  movl 0x4(%r15,%rbx,1), %edx          #  64    0x5eb2f  5      
  testl %edx, %edx                     #  65    0x5eb34  2      
  je .L_5eb40                          #  66    0x5eb36  6      
  movl %r13d, %r13d                    #  67    0x5eb3c  3      
  testb $0x4, 0x10(%r15,%r13,1)        #  68    0x5eb3f  6      
  je .L_5ebe0                          #  69    0x5eb45  6      
  negl %edx                            #  70    0x5eb4b  2      
  leal 0x4(%rdx,%rbx,1), %edx          #  71    0x5eb4d  4      
  cmpl %edx, %r14d                     #  72    0x5eb51  3      
  nop                                  #  73    0x5eb54  1      
  je .L_5ebe0                          #  74    0x5eb55  6      
  movl %edx, %edi                      #  75    0x5eb5b  2      
  movq %rdx, 0x8(%rsp)                 #  76    0x5eb5d  5      
  nop                                  #  77    0x5eb62  1      
  nop                                  #  78    0x5eb63  1      
  callq .get_cie_encoding              #  79    0x5eb64  5      
  movl %r13d, %esi                     #  80    0x5eb69  3      
  movzbl %al, %edi                     #  81    0x5eb6c  3      
  movl %eax, %r12d                     #  82    0x5eb6f  3      
  nop                                  #  83    0x5eb72  1      
  nop                                  #  84    0x5eb73  1      
  callq .base_from_object              #  85    0x5eb74  5      
  movq 0x8(%rsp), %rdx                 #  86    0x5eb79  5      
  movl %eax, %r8d                      #  87    0x5eb7e  3      
  movq %rdx, %r14                      #  88    0x5eb81  3      
  nop                                  #  89    0x5eb84  1      
  nop                                  #  90    0x5eb85  1      
.L_5ebe0:                              #        0x5eb86  0      
  testl %r12d, %r12d                   #  91    0x5eb86  3      
  je .L_5eae0                          #  92    0x5eb89  6      
  movl 0x18(%rsp), %ecx                #  93    0x5eb8f  4      
  movzbl %r12b, %r9d                   #  94    0x5eb93  4      
  leal 0x8(%rbx), %edx                 #  95    0x5eb97  3      
  movl %r8d, %esi                      #  96    0x5eb9a  3      
  movl %r9d, %edi                      #  97    0x5eb9d  3      
  movl %r8d, (%rsp)                    #  98    0x5eba0  4      
  xchgw %ax, %ax                       #  99    0x5eba4  3      
  movl %r9d, 0x8(%rsp)                 #  100   0x5eba7  5      
  nop                                  #  101   0x5ebac  1      
  nop                                  #  102   0x5ebad  1      
  callq .read_encoded_value_with_base  #  103   0x5ebae  5      
  movl 0x8(%rsp), %r9d                 #  104   0x5ebb3  5      
  movl %r9d, %edi                      #  105   0x5ebb8  3      
  nop                                  #  106   0x5ebbb  1      
  nop                                  #  107   0x5ebbc  1      
  callq .size_of_encoded_value         #  108   0x5ebbd  5      
  cmpl $0x3, %eax                      #  109   0x5ebc2  3      
  movl $0xffffffff, %edx               #  110   0x5ebc5  5      
  movl (%rsp), %r8d                    #  111   0x5ebca  4      
  ja .L_5ec60                          #  112   0x5ebce  6      
  leal (,%rax,8), %ecx                 #  113   0x5ebd4  7      
  movl $0x1, %edx                      #  114   0x5ebdb  5      
  shll %cl, %edx                       #  115   0x5ebe0  2      
  subl $0x1, %edx                      #  116   0x5ebe2  3      
  nop                                  #  117   0x5ebe5  1      
.L_5ec60:                              #        0x5ebe6  0      
  testl %edx, 0x2c(%rsp)               #  118   0x5ebe6  4      
  jne .L_5eb00                         #  119   0x5ebea  6      
  movl %ebx, %ebx                      #  120   0x5ebf0  2      
  movl (%r15,%rbx,1), %eax             #  121   0x5ebf2  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  122   0x5ebf6  4      
  movl %ebx, %ebx                      #  123   0x5ebfa  2      
  movl (%r15,%rbx,1), %edi             #  124   0x5ebfc  4      
  testl %edi, %edi                     #  125   0x5ec00  2      
  nop                                  #  126   0x5ec02  1      
  jne .L_5eb60                         #  127   0x5ec03  6      
  nop                                  #  128   0x5ec09  1      
  nop                                  #  129   0x5ec0a  1      
.L_5eca0:                              #        0x5ec0b  0      
  addl $0x38, %esp                     #  130   0x5ec0b  3      
  addq %r15, %rsp                      #  131   0x5ec0e  3      
  popq %rbx                            #  132   0x5ec11  2      
  popq %r12                            #  133   0x5ec13  3      
  popq %r13                            #  134   0x5ec16  3      
  popq %r14                            #  135   0x5ec19  3      
  popq %r11                            #  136   0x5ec1c  3      
  andl $0xffffffe0, %r11d              #  137   0x5ec1f  7      
  addq %r15, %r11                      #  138   0x5ec26  3      
  jmpq %r11                            #  139   0x5ec29  3      
  nop                                  #  140   0x5ec2c  1      
                                                                
.size add_fdes, .-add_fdes

