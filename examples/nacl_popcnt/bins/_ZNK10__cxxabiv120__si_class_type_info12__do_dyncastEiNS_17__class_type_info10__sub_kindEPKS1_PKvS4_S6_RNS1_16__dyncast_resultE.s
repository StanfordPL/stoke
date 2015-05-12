  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE
  .type _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE, @function

#! file-offset 0x4b840
#! rip-offset  0x4b840
#! capacity    288 bytes

# Text                                                                                                                             #  Line  RIP      Bytes  
._ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE:  #        0x4b840  0      
  movl %edi, %edi                                                                                                                  #  1     0x4b840  2      
  movl %ecx, %ecx                                                                                                                  #  2     0x4b842  2      
  movl %r8d, %r8d                                                                                                                  #  3     0x4b844  3      
  movl %edi, %edi                                                                                                                  #  4     0x4b847  2      
  movl 0x4(%r15,%rdi,1), %r11d                                                                                                     #  5     0x4b849  5      
  movl %r9d, %r9d                                                                                                                  #  6     0x4b84e  3      
  movl 0x8(%rsp), %eax                                                                                                             #  7     0x4b851  4      
  movl %ecx, %ecx                                                                                                                  #  8     0x4b855  2      
  cmpl %r11d, 0x4(%r15,%rcx,1)                                                                                                     #  9     0x4b857  5      
  nop                                                                                                                              #  10    0x4b85c  1      
  movl 0x10(%rsp), %r10d                                                                                                           #  11    0x4b85d  5      
  je .L_4b8c0                                                                                                                      #  12    0x4b862  6      
  cmpl %eax, %r8d                                                                                                                  #  13    0x4b868  3      
  je .L_4b920                                                                                                                      #  14    0x4b86b  6      
  nop                                                                                                                              #  15    0x4b871  1      
  nop                                                                                                                              #  16    0x4b872  1      
.L_4b880:                                                                                                                          #        0x4b873  0      
  movl %edi, %edi                                                                                                                  #  17    0x4b873  2      
  movl 0x8(%r15,%rdi,1), %edi                                                                                                      #  18    0x4b875  5      
  movl %edi, %edi                                                                                                                  #  19    0x4b87a  2      
  movl (%r15,%rdi,1), %r11d                                                                                                        #  20    0x4b87c  4      
  movl %r10d, 0x10(%rsp)                                                                                                           #  21    0x4b880  5      
  movl %eax, 0x8(%rsp)                                                                                                             #  22    0x4b885  4      
  movl %r11d, %r11d                                                                                                                #  23    0x4b889  3      
  movl 0x1c(%r15,%r11,1), %eax                                                                                                     #  24    0x4b88c  5      
  xchgw %ax, %ax                                                                                                                   #  25    0x4b891  3      
  andl $0xffffffe0, %eax                                                                                                           #  26    0x4b894  5      
  addq %r15, %rax                                                                                                                  #  27    0x4b899  3      
  jmpq %rax                                                                                                                        #  28    0x4b89c  2      
  nop                                                                                                                              #  29    0x4b89e  1      
  nop                                                                                                                              #  30    0x4b89f  1      
.L_4b8c0:                                                                                                                          #        0x4b8a0  0      
  testl %esi, %esi                                                                                                                 #  31    0x4b8a0  2      
  movl %r10d, %r10d                                                                                                                #  32    0x4b8a2  3      
  movl %r8d, (%r15,%r10,1)                                                                                                         #  33    0x4b8a5  4      
  movl %r10d, %r10d                                                                                                                #  34    0x4b8a9  3      
  movl %edx, 0x4(%r15,%r10,1)                                                                                                      #  35    0x4b8ac  5      
  js .L_4b940                                                                                                                      #  36    0x4b8b1  6      
  addl %r8d, %esi                                                                                                                  #  37    0x4b8b7  3      
  cmpl %eax, %esi                                                                                                                  #  38    0x4b8ba  2      
  sete %al                                                                                                                         #  39    0x4b8bc  3      
  movzbl %al, %eax                                                                                                                 #  40    0x4b8bf  3      
  xchgw %ax, %ax                                                                                                                   #  41    0x4b8c2  3      
  leal 0x1(%rax,%rax,4), %eax                                                                                                      #  42    0x4b8c5  4      
  movl %r10d, %r10d                                                                                                                #  43    0x4b8c9  3      
  movl %eax, 0xc(%r15,%r10,1)                                                                                                      #  44    0x4b8cc  5      
  nop                                                                                                                              #  45    0x4b8d1  1      
  nop                                                                                                                              #  46    0x4b8d2  1      
.L_4b900:                                                                                                                          #        0x4b8d3  0      
  popq %r11                                                                                                                        #  47    0x4b8d3  3      
  xorl %eax, %eax                                                                                                                  #  48    0x4b8d6  2      
  andl $0xffffffe0, %r11d                                                                                                          #  49    0x4b8d8  7      
  addq %r15, %r11                                                                                                                  #  50    0x4b8df  3      
  jmpq %r11                                                                                                                        #  51    0x4b8e2  3      
  nop                                                                                                                              #  52    0x4b8e5  1      
  nop                                                                                                                              #  53    0x4b8e6  1      
.L_4b920:                                                                                                                          #        0x4b8e7  0      
  movl %r9d, %r9d                                                                                                                  #  54    0x4b8e7  3      
  cmpl %r11d, 0x4(%r15,%r9,1)                                                                                                      #  55    0x4b8ea  5      
  jne .L_4b880                                                                                                                     #  56    0x4b8ef  6      
  movl %r10d, %r10d                                                                                                                #  57    0x4b8f5  3      
  movl %edx, 0x8(%r15,%r10,1)                                                                                                      #  58    0x4b8f8  5      
  jmpq .L_4b900                                                                                                                    #  59    0x4b8fd  5      
  nop                                                                                                                              #  60    0x4b902  1      
.L_4b940:                                                                                                                          #        0x4b903  0      
  cmpl $0xfffffffe, %esi                                                                                                           #  61    0x4b903  6      
  jne .L_4b900                                                                                                                     #  62    0x4b909  6      
  movl %r10d, %r10d                                                                                                                #  63    0x4b90f  3      
  movl $0x1, 0xc(%r15,%r10,1)                                                                                                      #  64    0x4b912  9      
  jmpq .L_4b900                                                                                                                    #  65    0x4b91b  5      
  nop                                                                                                                              #  66    0x4b920  1      
  nop                                                                                                                              #  67    0x4b921  1      
  nop                                                                                                                              #  68    0x4b922  1      
  nop                                                                                                                              #  69    0x4b923  1      
  nop                                                                                                                              #  70    0x4b924  1      
  nop                                                                                                                              #  71    0x4b925  1      
  nop                                                                                                                              #  72    0x4b926  1      
  nop                                                                                                                              #  73    0x4b927  1      
  nop                                                                                                                              #  74    0x4b928  1      
  nop                                                                                                                              #  75    0x4b929  1      
  nop                                                                                                                              #  76    0x4b92a  1      
  nop                                                                                                                              #  77    0x4b92b  1      
  nop                                                                                                                              #  78    0x4b92c  1      
                                                                                                                                                            
.size _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE, .-_ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE

