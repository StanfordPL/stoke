  .text
  .globl fde_mixed_encoding_compare
  .type fde_mixed_encoding_compare, @function

#! file-offset 0x5ee20
#! rip-offset  0x5ee20
#! capacity    288 bytes

# Text                                 #  Line  RIP      Bytes  
.fde_mixed_encoding_compare:           #        0x5ee20  0      
  movq %r14, -0x8(%rsp)                #  1     0x5ee20  5      
  movl %esi, %r14d                     #  2     0x5ee25  3      
  movq %rbx, -0x20(%rsp)               #  3     0x5ee28  5      
  movq %r12, -0x18(%rsp)               #  4     0x5ee2d  5      
  movq %r13, -0x10(%rsp)               #  5     0x5ee32  5      
  subl $0x38, %esp                     #  6     0x5ee37  3      
  addq %r15, %rsp                      #  7     0x5ee3a  3      
  movl %edi, %r13d                     #  8     0x5ee3d  3      
  movl %r14d, %edi                     #  9     0x5ee40  3      
  movl %r14d, %r14d                    #  10    0x5ee43  3      
  subl 0x4(%r15,%r14,1), %edi          #  11    0x5ee46  5      
  movl %edx, %ebx                      #  12    0x5ee4b  2      
  addl $0x4, %edi                      #  13    0x5ee4d  3      
  nop                                  #  14    0x5ee50  1      
  callq .get_cie_encoding              #  15    0x5ee51  5      
  movzbl %al, %r12d                    #  16    0x5ee56  4      
  movl %r13d, %esi                     #  17    0x5ee5a  3      
  movl %r12d, %edi                     #  18    0x5ee5d  3      
  xchgw %ax, %ax                       #  19    0x5ee60  3      
  nop                                  #  20    0x5ee63  1      
  callq .base_from_object              #  21    0x5ee64  5      
  leal 0xc(%rsp), %ecx                 #  22    0x5ee69  4      
  leal 0x8(%r14), %edx                 #  23    0x5ee6d  4      
  movl %eax, %esi                      #  24    0x5ee71  2      
  movl %r12d, %edi                     #  25    0x5ee73  3      
  nop                                  #  26    0x5ee76  1      
  callq .read_encoded_value_with_base  #  27    0x5ee77  5      
  movl %ebx, %edi                      #  28    0x5ee7c  2      
  movl %ebx, %ebx                      #  29    0x5ee7e  2      
  subl 0x4(%r15,%rbx,1), %edi          #  30    0x5ee80  5      
  addl $0x4, %edi                      #  31    0x5ee85  3      
  nop                                  #  32    0x5ee88  1      
  callq .get_cie_encoding              #  33    0x5ee89  5      
  movzbl %al, %r12d                    #  34    0x5ee8e  4      
  movl %r13d, %esi                     #  35    0x5ee92  3      
  movl %r12d, %edi                     #  36    0x5ee95  3      
  xchgw %ax, %ax                       #  37    0x5ee98  3      
  nop                                  #  38    0x5ee9b  1      
  callq .base_from_object              #  39    0x5ee9c  5      
  leal 0x8(%rsp), %ecx                 #  40    0x5eea1  4      
  leal 0x8(%rbx), %edx                 #  41    0x5eea5  3      
  movl %r12d, %edi                     #  42    0x5eea8  3      
  movl %eax, %esi                      #  43    0x5eeab  2      
  nop                                  #  44    0x5eead  1      
  callq .read_encoded_value_with_base  #  45    0x5eeae  5      
  movl 0x8(%rsp), %edx                 #  46    0x5eeb3  4      
  cmpl %edx, 0xc(%rsp)                 #  47    0x5eeb7  4      
  movl $0x1, %eax                      #  48    0x5eebb  5      
  movq 0x18(%rsp), %rbx                #  49    0x5eec0  5      
  movq 0x20(%rsp), %r12                #  50    0x5eec5  5      
  movq 0x28(%rsp), %r13                #  51    0x5eeca  5      
  nop                                  #  52    0x5eecf  1      
  movq 0x30(%rsp), %r14                #  53    0x5eed0  5      
  sbbl %ecx, %ecx                      #  54    0x5eed5  2      
  cmpl %edx, 0xc(%rsp)                 #  55    0x5eed7  4      
  cmovbel %ecx, %eax                   #  56    0x5eedb  3      
  addl $0x38, %esp                     #  57    0x5eede  3      
  addq %r15, %rsp                      #  58    0x5eee1  3      
  popq %r11                            #  59    0x5eee4  3      
  andl $0xffffffe0, %r11d              #  60    0x5eee7  7      
  addq %r15, %r11                      #  61    0x5eeee  3      
  jmpq %r11                            #  62    0x5eef1  3      
                                                                
.size fde_mixed_encoding_compare, .-fde_mixed_encoding_compare

