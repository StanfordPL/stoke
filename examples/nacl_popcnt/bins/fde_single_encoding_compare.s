  .text
  .globl fde_single_encoding_compare
  .type fde_single_encoding_compare, @function

#! file-offset 0x5ed40
#! rip-offset  0x5ed40
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  
.fde_single_encoding_compare:          #        0x5ed40  0      
  movq %rbx, -0x20(%rsp)               #  1     0x5ed40  5      
  movl %edi, %ebx                      #  2     0x5ed45  2      
  movq %r12, -0x18(%rsp)               #  3     0x5ed47  5      
  movq %r13, -0x10(%rsp)               #  4     0x5ed4c  5      
  movq %r14, -0x8(%rsp)                #  5     0x5ed51  5      
  subl $0x38, %esp                     #  6     0x5ed56  3      
  addq %r15, %rsp                      #  7     0x5ed59  3      
  nop                                  #  8     0x5ed5c  1      
  movl %ebx, %ebx                      #  9     0x5ed5d  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  10    0x5ed5f  6      
  movl %esi, %r14d                     #  11    0x5ed65  3      
  movl %ebx, %esi                      #  12    0x5ed68  2      
  movl %edx, %r13d                     #  13    0x5ed6a  3      
  shrw $0x3, %di                       #  14    0x5ed6d  4      
  movzbl %dil, %edi                    #  15    0x5ed71  4      
  nop                                  #  16    0x5ed75  1      
  callq .base_from_object              #  17    0x5ed76  5      
  movl %ebx, %ebx                      #  18    0x5ed7b  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  19    0x5ed7d  6      
  leal 0xc(%rsp), %ecx                 #  20    0x5ed83  4      
  leal 0x8(%r14), %edx                 #  21    0x5ed87  4      
  movl %eax, %esi                      #  22    0x5ed8b  2      
  movl %eax, %r12d                     #  23    0x5ed8d  3      
  shrw $0x3, %di                       #  24    0x5ed90  4      
  movzbl %dil, %edi                    #  25    0x5ed94  4      
  nop                                  #  26    0x5ed98  1      
  nop                                  #  27    0x5ed99  1      
  nop                                  #  28    0x5ed9a  1      
  callq .read_encoded_value_with_base  #  29    0x5ed9b  5      
  movl %ebx, %ebx                      #  30    0x5eda0  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  31    0x5eda2  6      
  leal 0x8(%rsp), %ecx                 #  32    0x5eda8  4      
  leal 0x8(%r13), %edx                 #  33    0x5edac  4      
  movl %r12d, %esi                     #  34    0x5edb0  3      
  shrw $0x3, %di                       #  35    0x5edb3  4      
  movzbl %dil, %edi                    #  36    0x5edb7  4      
  callq .read_encoded_value_with_base  #  37    0x5edbb  5      
  movl 0x8(%rsp), %edx                 #  38    0x5edc0  4      
  cmpl %edx, 0xc(%rsp)                 #  39    0x5edc4  4      
  movl $0x1, %eax                      #  40    0x5edc8  5      
  movq 0x18(%rsp), %rbx                #  41    0x5edcd  5      
  movq 0x20(%rsp), %r12                #  42    0x5edd2  5      
  movq 0x28(%rsp), %r13                #  43    0x5edd7  5      
  nop                                  #  44    0x5eddc  1      
  movq 0x30(%rsp), %r14                #  45    0x5eddd  5      
  sbbl %ecx, %ecx                      #  46    0x5ede2  2      
  cmpl %edx, 0xc(%rsp)                 #  47    0x5ede4  4      
  cmovbel %ecx, %eax                   #  48    0x5ede8  3      
  addl $0x38, %esp                     #  49    0x5edeb  3      
  addq %r15, %rsp                      #  50    0x5edee  3      
  popq %r11                            #  51    0x5edf1  3      
  andl $0xffffffe0, %r11d              #  52    0x5edf4  7      
  addq %r15, %r11                      #  53    0x5edfb  3      
  jmpq %r11                            #  54    0x5edfe  3      
                                                                
.size fde_single_encoding_compare, .-fde_single_encoding_compare

