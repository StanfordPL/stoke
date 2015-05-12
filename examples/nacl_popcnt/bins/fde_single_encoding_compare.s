  .text
  .globl fde_single_encoding_compare
  .type fde_single_encoding_compare, @function

#! file-offset 0x5ecc0
#! rip-offset  0x5ecc0
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  
.fde_single_encoding_compare:          #        0x5ecc0  0      
  movq %rbx, -0x20(%rsp)               #  1     0x5ecc0  5      
  movl %edi, %ebx                      #  2     0x5ecc5  2      
  movq %r12, -0x18(%rsp)               #  3     0x5ecc7  5      
  movq %r13, -0x10(%rsp)               #  4     0x5eccc  5      
  movq %r14, -0x8(%rsp)                #  5     0x5ecd1  5      
  subl $0x38, %esp                     #  6     0x5ecd6  3      
  addq %r15, %rsp                      #  7     0x5ecd9  3      
  nop                                  #  8     0x5ecdc  1      
  movl %ebx, %ebx                      #  9     0x5ecdd  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  10    0x5ecdf  6      
  movl %esi, %r14d                     #  11    0x5ece5  3      
  movl %ebx, %esi                      #  12    0x5ece8  2      
  movl %edx, %r13d                     #  13    0x5ecea  3      
  shrw $0x3, %di                       #  14    0x5eced  4      
  movzbl %dil, %edi                    #  15    0x5ecf1  4      
  nop                                  #  16    0x5ecf5  1      
  callq .base_from_object              #  17    0x5ecf6  5      
  movl %ebx, %ebx                      #  18    0x5ecfb  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  19    0x5ecfd  6      
  leal 0xc(%rsp), %ecx                 #  20    0x5ed03  4      
  leal 0x8(%r14), %edx                 #  21    0x5ed07  4      
  movl %eax, %esi                      #  22    0x5ed0b  2      
  movl %eax, %r12d                     #  23    0x5ed0d  3      
  shrw $0x3, %di                       #  24    0x5ed10  4      
  movzbl %dil, %edi                    #  25    0x5ed14  4      
  nop                                  #  26    0x5ed18  1      
  nop                                  #  27    0x5ed19  1      
  nop                                  #  28    0x5ed1a  1      
  callq .read_encoded_value_with_base  #  29    0x5ed1b  5      
  movl %ebx, %ebx                      #  30    0x5ed20  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  31    0x5ed22  6      
  leal 0x8(%rsp), %ecx                 #  32    0x5ed28  4      
  leal 0x8(%r13), %edx                 #  33    0x5ed2c  4      
  movl %r12d, %esi                     #  34    0x5ed30  3      
  shrw $0x3, %di                       #  35    0x5ed33  4      
  movzbl %dil, %edi                    #  36    0x5ed37  4      
  callq .read_encoded_value_with_base  #  37    0x5ed3b  5      
  movl 0x8(%rsp), %edx                 #  38    0x5ed40  4      
  cmpl %edx, 0xc(%rsp)                 #  39    0x5ed44  4      
  movl $0x1, %eax                      #  40    0x5ed48  5      
  movq 0x18(%rsp), %rbx                #  41    0x5ed4d  5      
  movq 0x20(%rsp), %r12                #  42    0x5ed52  5      
  movq 0x28(%rsp), %r13                #  43    0x5ed57  5      
  nop                                  #  44    0x5ed5c  1      
  movq 0x30(%rsp), %r14                #  45    0x5ed5d  5      
  sbbl %ecx, %ecx                      #  46    0x5ed62  2      
  cmpl %edx, 0xc(%rsp)                 #  47    0x5ed64  4      
  cmovbel %ecx, %eax                   #  48    0x5ed68  3      
  addl $0x38, %esp                     #  49    0x5ed6b  3      
  addq %r15, %rsp                      #  50    0x5ed6e  3      
  popq %r11                            #  51    0x5ed71  3      
  andl $0xffffffe0, %r11d              #  52    0x5ed74  7      
  addq %r15, %r11                      #  53    0x5ed7b  3      
  jmpq %r11                            #  54    0x5ed7e  3      
                                                                
.size fde_single_encoding_compare, .-fde_single_encoding_compare

