  .text
  .globl linear_search_fdes
  .type linear_search_fdes, @function

#! file-offset 0x5eea0
#! rip-offset  0x5eea0
#! capacity    640 bytes

# Text                                 #  Line  RIP      Bytes  
.linear_search_fdes:                   #        0x5eea0  0      
  pushq %r14                           #  1     0x5eea0  3      
  movl %edx, %edx                      #  2     0x5eea3  2      
  pushq %r13                           #  3     0x5eea5  3      
  movl %edi, %r13d                     #  4     0x5eea8  3      
  pushq %r12                           #  5     0x5eeab  3      
  pushq %rbx                           #  6     0x5eeae  2      
  movl %esi, %ebx                      #  7     0x5eeb0  2      
  movl %r13d, %esi                     #  8     0x5eeb2  3      
  subl $0x48, %esp                     #  9     0x5eeb5  3      
  addq %r15, %rsp                      #  10    0x5eeb8  3      
  movl %r13d, %r13d                    #  11    0x5eebb  3      
  movzwl 0x10(%r15,%r13,1), %r12d      #  12    0x5eebe  6      
  movq %rdx, 0x18(%rsp)                #  13    0x5eec4  5      
  shrw $0x3, %r12w                     #  14    0x5eec9  5      
  movzbl %r12b, %r12d                  #  15    0x5eece  4      
  movl %r12d, %edi                     #  16    0x5eed2  3      
  nop                                  #  17    0x5eed5  1      
  callq .base_from_object              #  18    0x5eed6  5      
  movl %ebx, %ebx                      #  19    0x5eedb  2      
  movl (%r15,%rbx,1), %r14d            #  20    0x5eedd  4      
  movl %eax, %r9d                      #  21    0x5eee1  3      
  testl %r14d, %r14d                   #  22    0x5eee4  3      
  je .L_5f100                          #  23    0x5eee7  6      
  leal 0x3c(%rsp), %eax                #  24    0x5eeed  4      
  leal 0x38(%rsp), %ecx                #  25    0x5eef1  4      
  xorl %r8d, %r8d                      #  26    0x5eef5  3      
  nop                                  #  27    0x5eef8  1      
  movq %rax, 0x20(%rsp)                #  28    0x5eef9  5      
  movq %rcx, 0x28(%rsp)                #  29    0x5eefe  5      
  jmpq .L_5ef80                        #  30    0x5ef03  5      
  nop                                  #  31    0x5ef08  1      
  nop                                  #  32    0x5ef09  1      
.L_5ef20:                              #        0x5ef0a  0      
  leal 0x8(%rbx), %edx                 #  33    0x5ef0a  3      
  movl %edx, %edx                      #  34    0x5ef0d  2      
  movl (%r15,%rdx,1), %eax             #  35    0x5ef0f  4      
  movl %eax, 0x3c(%rsp)                #  36    0x5ef13  4      
  movl %edx, %edx                      #  37    0x5ef17  2      
  movl 0x4(%r15,%rdx,1), %edx          #  38    0x5ef19  5      
  testl %eax, %eax                     #  39    0x5ef1e  2      
  movl %edx, 0x38(%rsp)                #  40    0x5ef20  4      
  je .L_5ef60                          #  41    0x5ef24  6      
  movl 0x18(%rsp), %ecx                #  42    0x5ef2a  4      
  subl %eax, %ecx                      #  43    0x5ef2e  2      
  cmpl %edx, %ecx                      #  44    0x5ef30  2      
  jb .L_5f0e0                          #  45    0x5ef32  6      
  nop                                  #  46    0x5ef38  1      
  nop                                  #  47    0x5ef39  1      
.L_5ef60:                              #        0x5ef3a  0      
  movl %ebx, %ebx                      #  48    0x5ef3a  2      
  movl (%r15,%rbx,1), %eax             #  49    0x5ef3c  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  50    0x5ef40  4      
  movl %ebx, %ebx                      #  51    0x5ef44  2      
  movl (%r15,%rbx,1), %r11d            #  52    0x5ef46  4      
  testl %r11d, %r11d                   #  53    0x5ef4a  3      
  je .L_5f100                          #  54    0x5ef4d  6      
  nop                                  #  55    0x5ef53  1      
.L_5ef80:                              #        0x5ef54  0      
  movl %ebx, %ebx                      #  56    0x5ef54  2      
  movl 0x4(%r15,%rbx,1), %r14d         #  57    0x5ef56  5      
  testl %r14d, %r14d                   #  58    0x5ef5b  3      
  je .L_5ef60                          #  59    0x5ef5e  6      
  movl %r13d, %r13d                    #  60    0x5ef64  3      
  testb $0x4, 0x10(%r15,%r13,1)        #  61    0x5ef67  6      
  je .L_5f000                          #  62    0x5ef6d  6      
  negl %r14d                           #  63    0x5ef73  3      
  leal 0x4(%r14,%rbx,1), %r14d         #  64    0x5ef76  5      
  nop                                  #  65    0x5ef7b  1      
  cmpl %r14d, %r8d                     #  66    0x5ef7c  3      
  je .L_5f000                          #  67    0x5ef7f  6      
  movl %r14d, %edi                     #  68    0x5ef85  3      
  nop                                  #  69    0x5ef88  1      
  nop                                  #  70    0x5ef89  1      
  callq .get_cie_encoding              #  71    0x5ef8a  5      
  movl %r13d, %esi                     #  72    0x5ef8f  3      
  movzbl %al, %edi                     #  73    0x5ef92  3      
  movl %eax, %r12d                     #  74    0x5ef95  3      
  nop                                  #  75    0x5ef98  1      
  nop                                  #  76    0x5ef99  1      
  callq .base_from_object              #  77    0x5ef9a  5      
  movq %r14, %r8                       #  78    0x5ef9f  3      
  movl %eax, %r9d                      #  79    0x5efa2  3      
  nop                                  #  80    0x5efa5  1      
  nop                                  #  81    0x5efa6  1      
.L_5f000:                              #        0x5efa7  0      
  testl %r12d, %r12d                   #  82    0x5efa7  3      
  je .L_5ef20                          #  83    0x5efaa  6      
  movl 0x20(%rsp), %ecx                #  84    0x5efb0  4      
  movzbl %r12b, %r14d                  #  85    0x5efb4  4      
  leal 0x8(%rbx), %edx                 #  86    0x5efb8  3      
  movl %r9d, %esi                      #  87    0x5efbb  3      
  movl %r14d, %edi                     #  88    0x5efbe  3      
  movq %r8, 0x8(%rsp)                  #  89    0x5efc1  5      
  nop                                  #  90    0x5efc6  1      
  movl %r9d, 0x10(%rsp)                #  91    0x5efc7  5      
  nop                                  #  92    0x5efcc  1      
  nop                                  #  93    0x5efcd  1      
  callq .read_encoded_value_with_base  #  94    0x5efce  5      
  movl 0x28(%rsp), %ecx                #  95    0x5efd3  4      
  movl %r14d, %edi                     #  96    0x5efd7  3      
  movl %eax, %edx                      #  97    0x5efda  2      
  andl $0xf, %edi                      #  98    0x5efdc  3      
  xorl %esi, %esi                      #  99    0x5efdf  2      
  nop                                  #  100   0x5efe1  1      
  callq .read_encoded_value_with_base  #  101   0x5efe2  5      
  movl %r14d, %edi                     #  102   0x5efe7  3      
  nop                                  #  103   0x5efea  1      
  nop                                  #  104   0x5efeb  1      
  callq .size_of_encoded_value         #  105   0x5efec  5      
  cmpl $0x3, %eax                      #  106   0x5eff1  3      
  movl $0xffffffff, %edx               #  107   0x5eff4  5      
  movq 0x8(%rsp), %r8                  #  108   0x5eff9  5      
  movl 0x10(%rsp), %r9d                #  109   0x5effe  5      
  ja .L_5f0c0                          #  110   0x5f003  6      
  leal (,%rax,8), %ecx                 #  111   0x5f009  7      
  movl $0x1, %edx                      #  112   0x5f010  5      
  shll %cl, %edx                       #  113   0x5f015  2      
  subl $0x1, %edx                      #  114   0x5f017  3      
  nop                                  #  115   0x5f01a  1      
  nop                                  #  116   0x5f01b  1      
.L_5f0c0:                              #        0x5f01c  0      
  movl 0x3c(%rsp), %eax                #  117   0x5f01c  4      
  testl %eax, %edx                     #  118   0x5f020  2      
  je .L_5ef60                          #  119   0x5f022  6      
  movl 0x18(%rsp), %ecx                #  120   0x5f028  4      
  movl 0x38(%rsp), %edx                #  121   0x5f02c  4      
  subl %eax, %ecx                      #  122   0x5f030  2      
  cmpl %edx, %ecx                      #  123   0x5f032  2      
  jae .L_5ef60                         #  124   0x5f034  6      
  xchgw %ax, %ax                       #  125   0x5f03a  3      
.L_5f0e0:                              #        0x5f03d  0      
  addl $0x48, %esp                     #  126   0x5f03d  3      
  addq %r15, %rsp                      #  127   0x5f040  3      
  movl %ebx, %eax                      #  128   0x5f043  2      
  popq %rbx                            #  129   0x5f045  2      
  popq %r12                            #  130   0x5f047  3      
  popq %r13                            #  131   0x5f04a  3      
  popq %r14                            #  132   0x5f04d  3      
  popq %r11                            #  133   0x5f050  3      
  andl $0xffffffe0, %r11d              #  134   0x5f053  7      
  addq %r15, %r11                      #  135   0x5f05a  3      
  jmpq %r11                            #  136   0x5f05d  3      
  nop                                  #  137   0x5f060  1      
.L_5f100:                              #        0x5f061  0      
  xorl %ebx, %ebx                      #  138   0x5f061  2      
  jmpq .L_5f0e0                        #  139   0x5f063  5      
  nop                                  #  140   0x5f068  1      
  nop                                  #  141   0x5f069  1      
                                                                
.size linear_search_fdes, .-linear_search_fdes

