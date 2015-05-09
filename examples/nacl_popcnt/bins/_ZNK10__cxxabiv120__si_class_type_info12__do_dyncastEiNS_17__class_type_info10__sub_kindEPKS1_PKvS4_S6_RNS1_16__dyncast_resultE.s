  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE
  .type _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE, @function

#! file-offset 0x4b820
#! rip-offset  0x4b820
#! capacity    288 bytes

# Text                                                                                                                             #  Line  RIP      Bytes  
._ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE:  #        0x4b820  0      
  movl %edi, %edi                                                                                                                  #  1     0x4b820  2      
  movl %ecx, %ecx                                                                                                                  #  2     0x4b822  2      
  movl %r8d, %r8d                                                                                                                  #  3     0x4b824  3      
  movl %edi, %edi                                                                                                                  #  4     0x4b827  2      
  movl 0x4(%r15,%rdi,1), %r11d                                                                                                     #  5     0x4b829  5      
  movl %r9d, %r9d                                                                                                                  #  6     0x4b82e  3      
  movl 0x8(%rsp), %eax                                                                                                             #  7     0x4b831  4      
  movl %ecx, %ecx                                                                                                                  #  8     0x4b835  2      
  cmpl %r11d, 0x4(%r15,%rcx,1)                                                                                                     #  9     0x4b837  5      
  nop                                                                                                                              #  10    0x4b83c  1      
  movl 0x10(%rsp), %r10d                                                                                                           #  11    0x4b83d  5      
  je .L_4b8a0                                                                                                                      #  12    0x4b842  6      
  cmpl %eax, %r8d                                                                                                                  #  13    0x4b848  3      
  je .L_4b900                                                                                                                      #  14    0x4b84b  6      
  nop                                                                                                                              #  15    0x4b851  1      
  nop                                                                                                                              #  16    0x4b852  1      
.L_4b860:                                                                                                                          #        0x4b853  0      
  movl %edi, %edi                                                                                                                  #  17    0x4b853  2      
  movl 0x8(%r15,%rdi,1), %edi                                                                                                      #  18    0x4b855  5      
  movl %edi, %edi                                                                                                                  #  19    0x4b85a  2      
  movl (%r15,%rdi,1), %r11d                                                                                                        #  20    0x4b85c  4      
  movl %r10d, 0x10(%rsp)                                                                                                           #  21    0x4b860  5      
  movl %eax, 0x8(%rsp)                                                                                                             #  22    0x4b865  4      
  movl %r11d, %r11d                                                                                                                #  23    0x4b869  3      
  movl 0x1c(%r15,%r11,1), %eax                                                                                                     #  24    0x4b86c  5      
  xchgw %ax, %ax                                                                                                                   #  25    0x4b871  3      
  andl $0xffffffe0, %eax                                                                                                           #  26    0x4b874  5      
  addq %r15, %rax                                                                                                                  #  27    0x4b879  3      
  jmpq %rax                                                                                                                        #  28    0x4b87c  2      
  nop                                                                                                                              #  29    0x4b87e  1      
  nop                                                                                                                              #  30    0x4b87f  1      
.L_4b8a0:                                                                                                                          #        0x4b880  0      
  testl %esi, %esi                                                                                                                 #  31    0x4b880  2      
  movl %r10d, %r10d                                                                                                                #  32    0x4b882  3      
  movl %r8d, (%r15,%r10,1)                                                                                                         #  33    0x4b885  4      
  movl %r10d, %r10d                                                                                                                #  34    0x4b889  3      
  movl %edx, 0x4(%r15,%r10,1)                                                                                                      #  35    0x4b88c  5      
  js .L_4b920                                                                                                                      #  36    0x4b891  6      
  addl %r8d, %esi                                                                                                                  #  37    0x4b897  3      
  cmpl %eax, %esi                                                                                                                  #  38    0x4b89a  2      
  sete %al                                                                                                                         #  39    0x4b89c  3      
  movzbl %al, %eax                                                                                                                 #  40    0x4b89f  3      
  xchgw %ax, %ax                                                                                                                   #  41    0x4b8a2  3      
  leal 0x1(%rax,%rax,4), %eax                                                                                                      #  42    0x4b8a5  4      
  movl %r10d, %r10d                                                                                                                #  43    0x4b8a9  3      
  movl %eax, 0xc(%r15,%r10,1)                                                                                                      #  44    0x4b8ac  5      
  nop                                                                                                                              #  45    0x4b8b1  1      
  nop                                                                                                                              #  46    0x4b8b2  1      
.L_4b8e0:                                                                                                                          #        0x4b8b3  0      
  popq %r11                                                                                                                        #  47    0x4b8b3  3      
  xorl %eax, %eax                                                                                                                  #  48    0x4b8b6  2      
  andl $0xffffffe0, %r11d                                                                                                          #  49    0x4b8b8  7      
  addq %r15, %r11                                                                                                                  #  50    0x4b8bf  3      
  jmpq %r11                                                                                                                        #  51    0x4b8c2  3      
  nop                                                                                                                              #  52    0x4b8c5  1      
  nop                                                                                                                              #  53    0x4b8c6  1      
.L_4b900:                                                                                                                          #        0x4b8c7  0      
  movl %r9d, %r9d                                                                                                                  #  54    0x4b8c7  3      
  cmpl %r11d, 0x4(%r15,%r9,1)                                                                                                      #  55    0x4b8ca  5      
  jne .L_4b860                                                                                                                     #  56    0x4b8cf  6      
  movl %r10d, %r10d                                                                                                                #  57    0x4b8d5  3      
  movl %edx, 0x8(%r15,%r10,1)                                                                                                      #  58    0x4b8d8  5      
  jmpq .L_4b8e0                                                                                                                    #  59    0x4b8dd  5      
  nop                                                                                                                              #  60    0x4b8e2  1      
.L_4b920:                                                                                                                          #        0x4b8e3  0      
  cmpl $0xfffffffe, %esi                                                                                                           #  61    0x4b8e3  6      
  jne .L_4b8e0                                                                                                                     #  62    0x4b8e9  6      
  movl %r10d, %r10d                                                                                                                #  63    0x4b8ef  3      
  movl $0x1, 0xc(%r15,%r10,1)                                                                                                      #  64    0x4b8f2  9      
  jmpq .L_4b8e0                                                                                                                    #  65    0x4b8fb  5      
  nop                                                                                                                              #  66    0x4b900  1      
  nop                                                                                                                              #  67    0x4b901  1      
  nop                                                                                                                              #  68    0x4b902  1      
  nop                                                                                                                              #  69    0x4b903  1      
  nop                                                                                                                              #  70    0x4b904  1      
  nop                                                                                                                              #  71    0x4b905  1      
  nop                                                                                                                              #  72    0x4b906  1      
  nop                                                                                                                              #  73    0x4b907  1      
  nop                                                                                                                              #  74    0x4b908  1      
  nop                                                                                                                              #  75    0x4b909  1      
  nop                                                                                                                              #  76    0x4b90a  1      
  nop                                                                                                                              #  77    0x4b90b  1      
  nop                                                                                                                              #  78    0x4b90c  1      
                                                                                                                                                            
.size _ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE, .-_ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE

