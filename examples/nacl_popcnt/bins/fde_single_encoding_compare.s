  .text
  .globl fde_single_encoding_compare
  .type fde_single_encoding_compare, @function

#! file-offset 0x5eca0
#! rip-offset  0x5eca0
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  
.fde_single_encoding_compare:          #        0x5eca0  0      
  movq %rbx, -0x20(%rsp)               #  1     0x5eca0  5      
  movl %edi, %ebx                      #  2     0x5eca5  2      
  movq %r12, -0x18(%rsp)               #  3     0x5eca7  5      
  movq %r13, -0x10(%rsp)               #  4     0x5ecac  5      
  movq %r14, -0x8(%rsp)                #  5     0x5ecb1  5      
  subl $0x38, %esp                     #  6     0x5ecb6  3      
  addq %r15, %rsp                      #  7     0x5ecb9  3      
  nop                                  #  8     0x5ecbc  1      
  movl %ebx, %ebx                      #  9     0x5ecbd  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  10    0x5ecbf  6      
  movl %esi, %r14d                     #  11    0x5ecc5  3      
  movl %ebx, %esi                      #  12    0x5ecc8  2      
  movl %edx, %r13d                     #  13    0x5ecca  3      
  shrw $0x3, %di                       #  14    0x5eccd  4      
  movzbl %dil, %edi                    #  15    0x5ecd1  4      
  nop                                  #  16    0x5ecd5  1      
  callq .base_from_object              #  17    0x5ecd6  5      
  movl %ebx, %ebx                      #  18    0x5ecdb  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  19    0x5ecdd  6      
  leal 0xc(%rsp), %ecx                 #  20    0x5ece3  4      
  leal 0x8(%r14), %edx                 #  21    0x5ece7  4      
  movl %eax, %esi                      #  22    0x5eceb  2      
  movl %eax, %r12d                     #  23    0x5eced  3      
  shrw $0x3, %di                       #  24    0x5ecf0  4      
  movzbl %dil, %edi                    #  25    0x5ecf4  4      
  nop                                  #  26    0x5ecf8  1      
  nop                                  #  27    0x5ecf9  1      
  nop                                  #  28    0x5ecfa  1      
  callq .read_encoded_value_with_base  #  29    0x5ecfb  5      
  movl %ebx, %ebx                      #  30    0x5ed00  2      
  movzwl 0x10(%r15,%rbx,1), %edi       #  31    0x5ed02  6      
  leal 0x8(%rsp), %ecx                 #  32    0x5ed08  4      
  leal 0x8(%r13), %edx                 #  33    0x5ed0c  4      
  movl %r12d, %esi                     #  34    0x5ed10  3      
  shrw $0x3, %di                       #  35    0x5ed13  4      
  movzbl %dil, %edi                    #  36    0x5ed17  4      
  callq .read_encoded_value_with_base  #  37    0x5ed1b  5      
  movl 0x8(%rsp), %edx                 #  38    0x5ed20  4      
  cmpl %edx, 0xc(%rsp)                 #  39    0x5ed24  4      
  movl $0x1, %eax                      #  40    0x5ed28  5      
  movq 0x18(%rsp), %rbx                #  41    0x5ed2d  5      
  movq 0x20(%rsp), %r12                #  42    0x5ed32  5      
  movq 0x28(%rsp), %r13                #  43    0x5ed37  5      
  nop                                  #  44    0x5ed3c  1      
  movq 0x30(%rsp), %r14                #  45    0x5ed3d  5      
  sbbl %ecx, %ecx                      #  46    0x5ed42  2      
  cmpl %edx, 0xc(%rsp)                 #  47    0x5ed44  4      
  cmovbel %ecx, %eax                   #  48    0x5ed48  3      
  addl $0x38, %esp                     #  49    0x5ed4b  3      
  addq %r15, %rsp                      #  50    0x5ed4e  3      
  popq %r11                            #  51    0x5ed51  3      
  andl $0xffffffe0, %r11d              #  52    0x5ed54  7      
  addq %r15, %r11                      #  53    0x5ed5b  3      
  jmpq %r11                            #  54    0x5ed5e  3      
                                                                
.size fde_single_encoding_compare, .-fde_single_encoding_compare

