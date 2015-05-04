  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE
  .type _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE, @function

#! file-offset 0x4b8c0
#! rip-offset  0x4b8c0
#! capacity    288 bytes

# Text                                                                                                                             #  Line  RIP      Bytes  
._ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE:  #        0x4b8c0  0      
  movl %edi, %edi                                                                                                                  #  1     0x4b8c0  2      
  movl %ecx, %ecx                                                                                                                  #  2     0x4b8c2  2      
  movl %r8d, %r8d                                                                                                                  #  3     0x4b8c4  3      
  movl %edi, %edi                                                                                                                  #  4     0x4b8c7  2      
  movl 0x4(%r15,%rdi,1), %r11d                                                                                                     #  5     0x4b8c9  5      
  movl %r9d, %r9d                                                                                                                  #  6     0x4b8ce  3      
  movl 0x8(%rsp), %eax                                                                                                             #  7     0x4b8d1  4      
  movl %ecx, %ecx                                                                                                                  #  8     0x4b8d5  2      
  cmpl %r11d, 0x4(%r15,%rcx,1)                                                                                                     #  9     0x4b8d7  5      
  nop                                                                                                                              #  10    0x4b8dc  1      
  movl 0x10(%rsp), %r10d                                                                                                           #  11    0x4b8dd  5      
  je .L_4b940                                                                                                                      #  12    0x4b8e2  6      
  cmpl %eax, %r8d                                                                                                                  #  13    0x4b8e8  3      
  je .L_4b9a0                                                                                                                      #  14    0x4b8eb  6      
  nop                                                                                                                              #  15    0x4b8f1  1      
  nop                                                                                                                              #  16    0x4b8f2  1      
.L_4b900:                                                                                                                          #        0x4b8f3  0      
  movl %edi, %edi                                                                                                                  #  17    0x4b8f3  2      
  movl 0x8(%r15,%rdi,1), %edi                                                                                                      #  18    0x4b8f5  5      
  movl %edi, %edi                                                                                                                  #  19    0x4b8fa  2      
  movl (%r15,%rdi,1), %r11d                                                                                                        #  20    0x4b8fc  4      
  movl %r10d, 0x10(%rsp)                                                                                                           #  21    0x4b900  5      
  movl %eax, 0x8(%rsp)                                                                                                             #  22    0x4b905  4      
  movl %r11d, %r11d                                                                                                                #  23    0x4b909  3      
  movl 0x1c(%r15,%r11,1), %eax                                                                                                     #  24    0x4b90c  5      
  xchgw %ax, %ax                                                                                                                   #  25    0x4b911  3      
  andl $0xffffffe0, %eax                                                                                                           #  26    0x4b914  5      
  addq %r15, %rax                                                                                                                  #  27    0x4b919  3      
  jmpq %rax                                                                                                                        #  28    0x4b91c  2      
  nop                                                                                                                              #  29    0x4b91e  1      
  nop                                                                                                                              #  30    0x4b91f  1      
.L_4b940:                                                                                                                          #        0x4b920  0      
  testl %esi, %esi                                                                                                                 #  31    0x4b920  2      
  movl %r10d, %r10d                                                                                                                #  32    0x4b922  3      
  movl %r8d, (%r15,%r10,1)                                                                                                         #  33    0x4b925  4      
  movl %r10d, %r10d                                                                                                                #  34    0x4b929  3      
  movl %edx, 0x4(%r15,%r10,1)                                                                                                      #  35    0x4b92c  5      
  js .L_4b9c0                                                                                                                      #  36    0x4b931  6      
  addl %r8d, %esi                                                                                                                  #  37    0x4b937  3      
  cmpl %eax, %esi                                                                                                                  #  38    0x4b93a  2      
  sete %al                                                                                                                         #  39    0x4b93c  3      
  movzbl %al, %eax                                                                                                                 #  40    0x4b93f  3      
  xchgw %ax, %ax                                                                                                                   #  41    0x4b942  3      
  leal 0x1(%rax,%rax,4), %eax                                                                                                      #  42    0x4b945  4      
  movl %r10d, %r10d                                                                                                                #  43    0x4b949  3      
  movl %eax, 0xc(%r15,%r10,1)                                                                                                      #  44    0x4b94c  5      
  nop                                                                                                                              #  45    0x4b951  1      
  nop                                                                                                                              #  46    0x4b952  1      
.L_4b980:                                                                                                                          #        0x4b953  0      
  popq %r11                                                                                                                        #  47    0x4b953  3      
  xorl %eax, %eax                                                                                                                  #  48    0x4b956  2      
  andl $0xffffffe0, %r11d                                                                                                          #  49    0x4b958  7      
  addq %r15, %r11                                                                                                                  #  50    0x4b95f  3      
  jmpq %r11                                                                                                                        #  51    0x4b962  3      
  nop                                                                                                                              #  52    0x4b965  1      
  nop                                                                                                                              #  53    0x4b966  1      
.L_4b9a0:                                                                                                                          #        0x4b967  0      
  movl %r9d, %r9d                                                                                                                  #  54    0x4b967  3      
  cmpl %r11d, 0x4(%r15,%r9,1)                                                                                                      #  55    0x4b96a  5      
  jne .L_4b900                                                                                                                     #  56    0x4b96f  6      
  movl %r10d, %r10d                                                                                                                #  57    0x4b975  3      
  movl %edx, 0x8(%r15,%r10,1)                                                                                                      #  58    0x4b978  5      
  jmpq .L_4b980                                                                                                                    #  59    0x4b97d  5      
  nop                                                                                                                              #  60    0x4b982  1      
.L_4b9c0:                                                                                                                          #        0x4b983  0      
  cmpl $0xfffffffe, %esi                                                                                                           #  61    0x4b983  6      
  jne .L_4b980                                                                                                                     #  62    0x4b989  6      
  movl %r10d, %r10d                                                                                                                #  63    0x4b98f  3      
  movl $0x1, 0xc(%r15,%r10,1)                                                                                                      #  64    0x4b992  9      
  jmpq .L_4b980                                                                                                                    #  65    0x4b99b  5      
  nop                                                                                                                              #  66    0x4b9a0  1      
  nop                                                                                                                              #  67    0x4b9a1  1      
  nop                                                                                                                              #  68    0x4b9a2  1      
  nop                                                                                                                              #  69    0x4b9a3  1      
  nop                                                                                                                              #  70    0x4b9a4  1      
  nop                                                                                                                              #  71    0x4b9a5  1      
  nop                                                                                                                              #  72    0x4b9a6  1      
  nop                                                                                                                              #  73    0x4b9a7  1      
  nop                                                                                                                              #  74    0x4b9a8  1      
  nop                                                                                                                              #  75    0x4b9a9  1      
  nop                                                                                                                              #  76    0x4b9aa  1      
  nop                                                                                                                              #  77    0x4b9ab  1      
  nop                                                                                                                              #  78    0x4b9ac  1      
                                                                                                                                                            
.size _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE, .-_ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE

