  .text
  .globl fde_mixed_encoding_compare
  .type fde_mixed_encoding_compare, @function

#! file-offset 0x5eda0
#! rip-offset  0x5eda0
#! capacity    288 bytes

# Text                                 #  Line  RIP      Bytes  
.fde_mixed_encoding_compare:           #        0x5eda0  0      
  movq %r14, -0x8(%rsp)                #  1     0x5eda0  5      
  movl %esi, %r14d                     #  2     0x5eda5  3      
  movq %rbx, -0x20(%rsp)               #  3     0x5eda8  5      
  movq %r12, -0x18(%rsp)               #  4     0x5edad  5      
  movq %r13, -0x10(%rsp)               #  5     0x5edb2  5      
  subl $0x38, %esp                     #  6     0x5edb7  3      
  addq %r15, %rsp                      #  7     0x5edba  3      
  movl %edi, %r13d                     #  8     0x5edbd  3      
  movl %r14d, %edi                     #  9     0x5edc0  3      
  movl %r14d, %r14d                    #  10    0x5edc3  3      
  subl 0x4(%r15,%r14,1), %edi          #  11    0x5edc6  5      
  movl %edx, %ebx                      #  12    0x5edcb  2      
  addl $0x4, %edi                      #  13    0x5edcd  3      
  nop                                  #  14    0x5edd0  1      
  callq .get_cie_encoding              #  15    0x5edd1  5      
  movzbl %al, %r12d                    #  16    0x5edd6  4      
  movl %r13d, %esi                     #  17    0x5edda  3      
  movl %r12d, %edi                     #  18    0x5eddd  3      
  xchgw %ax, %ax                       #  19    0x5ede0  3      
  nop                                  #  20    0x5ede3  1      
  callq .base_from_object              #  21    0x5ede4  5      
  leal 0xc(%rsp), %ecx                 #  22    0x5ede9  4      
  leal 0x8(%r14), %edx                 #  23    0x5eded  4      
  movl %eax, %esi                      #  24    0x5edf1  2      
  movl %r12d, %edi                     #  25    0x5edf3  3      
  nop                                  #  26    0x5edf6  1      
  callq .read_encoded_value_with_base  #  27    0x5edf7  5      
  movl %ebx, %edi                      #  28    0x5edfc  2      
  movl %ebx, %ebx                      #  29    0x5edfe  2      
  subl 0x4(%r15,%rbx,1), %edi          #  30    0x5ee00  5      
  addl $0x4, %edi                      #  31    0x5ee05  3      
  nop                                  #  32    0x5ee08  1      
  callq .get_cie_encoding              #  33    0x5ee09  5      
  movzbl %al, %r12d                    #  34    0x5ee0e  4      
  movl %r13d, %esi                     #  35    0x5ee12  3      
  movl %r12d, %edi                     #  36    0x5ee15  3      
  xchgw %ax, %ax                       #  37    0x5ee18  3      
  nop                                  #  38    0x5ee1b  1      
  callq .base_from_object              #  39    0x5ee1c  5      
  leal 0x8(%rsp), %ecx                 #  40    0x5ee21  4      
  leal 0x8(%rbx), %edx                 #  41    0x5ee25  3      
  movl %r12d, %edi                     #  42    0x5ee28  3      
  movl %eax, %esi                      #  43    0x5ee2b  2      
  nop                                  #  44    0x5ee2d  1      
  callq .read_encoded_value_with_base  #  45    0x5ee2e  5      
  movl 0x8(%rsp), %edx                 #  46    0x5ee33  4      
  cmpl %edx, 0xc(%rsp)                 #  47    0x5ee37  4      
  movl $0x1, %eax                      #  48    0x5ee3b  5      
  movq 0x18(%rsp), %rbx                #  49    0x5ee40  5      
  movq 0x20(%rsp), %r12                #  50    0x5ee45  5      
  movq 0x28(%rsp), %r13                #  51    0x5ee4a  5      
  nop                                  #  52    0x5ee4f  1      
  movq 0x30(%rsp), %r14                #  53    0x5ee50  5      
  sbbl %ecx, %ecx                      #  54    0x5ee55  2      
  cmpl %edx, 0xc(%rsp)                 #  55    0x5ee57  4      
  cmovbel %ecx, %eax                   #  56    0x5ee5b  3      
  addl $0x38, %esp                     #  57    0x5ee5e  3      
  addq %r15, %rsp                      #  58    0x5ee61  3      
  popq %r11                            #  59    0x5ee64  3      
  andl $0xffffffe0, %r11d              #  60    0x5ee67  7      
  addq %r15, %r11                      #  61    0x5ee6e  3      
  jmpq %r11                            #  62    0x5ee71  3      
                                                                
.size fde_mixed_encoding_compare, .-fde_mixed_encoding_compare

