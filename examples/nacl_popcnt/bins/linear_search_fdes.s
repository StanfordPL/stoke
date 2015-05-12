  .text
  .globl linear_search_fdes
  .type linear_search_fdes, @function

#! file-offset 0x5eec0
#! rip-offset  0x5eec0
#! capacity    640 bytes

# Text                                 #  Line  RIP      Bytes  
.linear_search_fdes:                   #        0x5eec0  0      
  pushq %r14                           #  1     0x5eec0  3      
  movl %edx, %edx                      #  2     0x5eec3  2      
  pushq %r13                           #  3     0x5eec5  3      
  movl %edi, %r13d                     #  4     0x5eec8  3      
  pushq %r12                           #  5     0x5eecb  3      
  pushq %rbx                           #  6     0x5eece  2      
  movl %esi, %ebx                      #  7     0x5eed0  2      
  movl %r13d, %esi                     #  8     0x5eed2  3      
  subl $0x48, %esp                     #  9     0x5eed5  3      
  addq %r15, %rsp                      #  10    0x5eed8  3      
  movl %r13d, %r13d                    #  11    0x5eedb  3      
  movzwl 0x10(%r15,%r13,1), %r12d      #  12    0x5eede  6      
  movq %rdx, 0x18(%rsp)                #  13    0x5eee4  5      
  shrw $0x3, %r12w                     #  14    0x5eee9  5      
  movzbl %r12b, %r12d                  #  15    0x5eeee  4      
  movl %r12d, %edi                     #  16    0x5eef2  3      
  nop                                  #  17    0x5eef5  1      
  callq .base_from_object              #  18    0x5eef6  5      
  movl %ebx, %ebx                      #  19    0x5eefb  2      
  movl (%r15,%rbx,1), %r14d            #  20    0x5eefd  4      
  movl %eax, %r9d                      #  21    0x5ef01  3      
  testl %r14d, %r14d                   #  22    0x5ef04  3      
  je .L_5f120                          #  23    0x5ef07  6      
  leal 0x3c(%rsp), %eax                #  24    0x5ef0d  4      
  leal 0x38(%rsp), %ecx                #  25    0x5ef11  4      
  xorl %r8d, %r8d                      #  26    0x5ef15  3      
  nop                                  #  27    0x5ef18  1      
  movq %rax, 0x20(%rsp)                #  28    0x5ef19  5      
  movq %rcx, 0x28(%rsp)                #  29    0x5ef1e  5      
  jmpq .L_5efa0                        #  30    0x5ef23  5      
  nop                                  #  31    0x5ef28  1      
  nop                                  #  32    0x5ef29  1      
.L_5ef40:                              #        0x5ef2a  0      
  leal 0x8(%rbx), %edx                 #  33    0x5ef2a  3      
  movl %edx, %edx                      #  34    0x5ef2d  2      
  movl (%r15,%rdx,1), %eax             #  35    0x5ef2f  4      
  movl %eax, 0x3c(%rsp)                #  36    0x5ef33  4      
  movl %edx, %edx                      #  37    0x5ef37  2      
  movl 0x4(%r15,%rdx,1), %edx          #  38    0x5ef39  5      
  testl %eax, %eax                     #  39    0x5ef3e  2      
  movl %edx, 0x38(%rsp)                #  40    0x5ef40  4      
  je .L_5ef80                          #  41    0x5ef44  6      
  movl 0x18(%rsp), %ecx                #  42    0x5ef4a  4      
  subl %eax, %ecx                      #  43    0x5ef4e  2      
  cmpl %edx, %ecx                      #  44    0x5ef50  2      
  jb .L_5f100                          #  45    0x5ef52  6      
  nop                                  #  46    0x5ef58  1      
  nop                                  #  47    0x5ef59  1      
.L_5ef80:                              #        0x5ef5a  0      
  movl %ebx, %ebx                      #  48    0x5ef5a  2      
  movl (%r15,%rbx,1), %eax             #  49    0x5ef5c  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  50    0x5ef60  4      
  movl %ebx, %ebx                      #  51    0x5ef64  2      
  movl (%r15,%rbx,1), %r11d            #  52    0x5ef66  4      
  testl %r11d, %r11d                   #  53    0x5ef6a  3      
  je .L_5f120                          #  54    0x5ef6d  6      
  nop                                  #  55    0x5ef73  1      
.L_5efa0:                              #        0x5ef74  0      
  movl %ebx, %ebx                      #  56    0x5ef74  2      
  movl 0x4(%r15,%rbx,1), %r14d         #  57    0x5ef76  5      
  testl %r14d, %r14d                   #  58    0x5ef7b  3      
  je .L_5ef80                          #  59    0x5ef7e  6      
  movl %r13d, %r13d                    #  60    0x5ef84  3      
  testb $0x4, 0x10(%r15,%r13,1)        #  61    0x5ef87  6      
  je .L_5f020                          #  62    0x5ef8d  6      
  negl %r14d                           #  63    0x5ef93  3      
  leal 0x4(%r14,%rbx,1), %r14d         #  64    0x5ef96  5      
  nop                                  #  65    0x5ef9b  1      
  cmpl %r14d, %r8d                     #  66    0x5ef9c  3      
  je .L_5f020                          #  67    0x5ef9f  6      
  movl %r14d, %edi                     #  68    0x5efa5  3      
  nop                                  #  69    0x5efa8  1      
  nop                                  #  70    0x5efa9  1      
  callq .get_cie_encoding              #  71    0x5efaa  5      
  movl %r13d, %esi                     #  72    0x5efaf  3      
  movzbl %al, %edi                     #  73    0x5efb2  3      
  movl %eax, %r12d                     #  74    0x5efb5  3      
  nop                                  #  75    0x5efb8  1      
  nop                                  #  76    0x5efb9  1      
  callq .base_from_object              #  77    0x5efba  5      
  movq %r14, %r8                       #  78    0x5efbf  3      
  movl %eax, %r9d                      #  79    0x5efc2  3      
  nop                                  #  80    0x5efc5  1      
  nop                                  #  81    0x5efc6  1      
.L_5f020:                              #        0x5efc7  0      
  testl %r12d, %r12d                   #  82    0x5efc7  3      
  je .L_5ef40                          #  83    0x5efca  6      
  movl 0x20(%rsp), %ecx                #  84    0x5efd0  4      
  movzbl %r12b, %r14d                  #  85    0x5efd4  4      
  leal 0x8(%rbx), %edx                 #  86    0x5efd8  3      
  movl %r9d, %esi                      #  87    0x5efdb  3      
  movl %r14d, %edi                     #  88    0x5efde  3      
  movq %r8, 0x8(%rsp)                  #  89    0x5efe1  5      
  nop                                  #  90    0x5efe6  1      
  movl %r9d, 0x10(%rsp)                #  91    0x5efe7  5      
  nop                                  #  92    0x5efec  1      
  nop                                  #  93    0x5efed  1      
  callq .read_encoded_value_with_base  #  94    0x5efee  5      
  movl 0x28(%rsp), %ecx                #  95    0x5eff3  4      
  movl %r14d, %edi                     #  96    0x5eff7  3      
  movl %eax, %edx                      #  97    0x5effa  2      
  andl $0xf, %edi                      #  98    0x5effc  3      
  xorl %esi, %esi                      #  99    0x5efff  2      
  nop                                  #  100   0x5f001  1      
  callq .read_encoded_value_with_base  #  101   0x5f002  5      
  movl %r14d, %edi                     #  102   0x5f007  3      
  nop                                  #  103   0x5f00a  1      
  nop                                  #  104   0x5f00b  1      
  callq .size_of_encoded_value         #  105   0x5f00c  5      
  cmpl $0x3, %eax                      #  106   0x5f011  3      
  movl $0xffffffff, %edx               #  107   0x5f014  5      
  movq 0x8(%rsp), %r8                  #  108   0x5f019  5      
  movl 0x10(%rsp), %r9d                #  109   0x5f01e  5      
  ja .L_5f0e0                          #  110   0x5f023  6      
  leal (,%rax,8), %ecx                 #  111   0x5f029  7      
  movl $0x1, %edx                      #  112   0x5f030  5      
  shll %cl, %edx                       #  113   0x5f035  2      
  subl $0x1, %edx                      #  114   0x5f037  3      
  nop                                  #  115   0x5f03a  1      
  nop                                  #  116   0x5f03b  1      
.L_5f0e0:                              #        0x5f03c  0      
  movl 0x3c(%rsp), %eax                #  117   0x5f03c  4      
  testl %eax, %edx                     #  118   0x5f040  2      
  je .L_5ef80                          #  119   0x5f042  6      
  movl 0x18(%rsp), %ecx                #  120   0x5f048  4      
  movl 0x38(%rsp), %edx                #  121   0x5f04c  4      
  subl %eax, %ecx                      #  122   0x5f050  2      
  cmpl %edx, %ecx                      #  123   0x5f052  2      
  jae .L_5ef80                         #  124   0x5f054  6      
  xchgw %ax, %ax                       #  125   0x5f05a  3      
.L_5f100:                              #        0x5f05d  0      
  addl $0x48, %esp                     #  126   0x5f05d  3      
  addq %r15, %rsp                      #  127   0x5f060  3      
  movl %ebx, %eax                      #  128   0x5f063  2      
  popq %rbx                            #  129   0x5f065  2      
  popq %r12                            #  130   0x5f067  3      
  popq %r13                            #  131   0x5f06a  3      
  popq %r14                            #  132   0x5f06d  3      
  popq %r11                            #  133   0x5f070  3      
  andl $0xffffffe0, %r11d              #  134   0x5f073  7      
  addq %r15, %r11                      #  135   0x5f07a  3      
  jmpq %r11                            #  136   0x5f07d  3      
  nop                                  #  137   0x5f080  1      
.L_5f120:                              #        0x5f081  0      
  xorl %ebx, %ebx                      #  138   0x5f081  2      
  jmpq .L_5f100                        #  139   0x5f083  5      
  nop                                  #  140   0x5f088  1      
  nop                                  #  141   0x5f089  1      
                                                                
.size linear_search_fdes, .-linear_search_fdes

