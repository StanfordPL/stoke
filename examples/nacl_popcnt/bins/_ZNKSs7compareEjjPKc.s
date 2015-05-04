  .text
  .globl _ZNKSs7compareEjjPKc
  .type _ZNKSs7compareEjjPKc, @function

#! file-offset 0x45bc0
#! rip-offset  0x45bc0
#! capacity    256 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjPKc:                  #        0x45bc0  0      
  movl %edi, %edi                       #  1     0x45bc0  2      
  movq %rbx, -0x20(%rsp)                #  2     0x45bc2  5      
  movq %r13, -0x10(%rsp)                #  3     0x45bc7  5      
  movq %r12, -0x18(%rsp)                #  4     0x45bcc  5      
  movq %r14, -0x8(%rsp)                 #  5     0x45bd1  5      
  subl $0x28, %esp                      #  6     0x45bd6  3      
  addq %r15, %rsp                       #  7     0x45bd9  3      
  nop                                   #  8     0x45bdc  1      
  movl %edi, %edi                       #  9     0x45bdd  2      
  movl (%r15,%rdi,1), %r14d             #  10    0x45bdf  4      
  movl %esi, %ebx                       #  11    0x45be3  2      
  movl %ecx, %r13d                      #  12    0x45be5  3      
  leal -0xc(%r14), %eax                 #  13    0x45be8  4      
  movl %eax, %eax                       #  14    0x45bec  2      
  movl (%r15,%rax,1), %r12d             #  15    0x45bee  4      
  cmpl %r12d, %esi                      #  16    0x45bf2  3      
  ja .L_45ca0                           #  17    0x45bf5  6      
  xchgw %ax, %ax                        #  18    0x45bfb  3      
  subl %esi, %r12d                      #  19    0x45bfe  3      
  movl %r13d, %edi                      #  20    0x45c01  3      
  cmpl %r12d, %edx                      #  21    0x45c04  3      
  cmovbel %edx, %r12d                   #  22    0x45c07  4      
  nop                                   #  23    0x45c0b  1      
  callq .strlen                         #  24    0x45c0c  5      
  movl %r12d, %ecx                      #  25    0x45c11  3      
  cmpl %r12d, %eax                      #  26    0x45c14  3      
  leal (%rbx,%r14,1), %esi              #  27    0x45c17  4      
  cmovbel %eax, %ecx                    #  28    0x45c1b  3      
  movq %r13, %rdi                       #  29    0x45c1e  3      
  movq 0x8(%rsp), %rbx                  #  30    0x45c21  5      
  movl %ecx, %ecx                       #  31    0x45c26  2      
  movq 0x18(%rsp), %r13                 #  32    0x45c28  5      
  nop                                   #  33    0x45c2d  1      
  movq 0x20(%rsp), %r14                 #  34    0x45c2e  5      
  cmpq %rcx, %rcx                       #  35    0x45c33  3      
  movl %esi, %esi                       #  36    0x45c36  2      
  leaq (%r15,%rsi,1), %rsi              #  37    0x45c38  4      
  movl %edi, %edi                       #  38    0x45c3c  2      
  leaq (%r15,%rdi,1), %rdi              #  39    0x45c3e  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  40    0x45c42  3      
  movl %esi, %esi                       #  41    0x45c45  2      
  movl %edi, %edi                       #  42    0x45c47  2      
  seta %dl                              #  43    0x45c49  3      
  setb %cl                              #  44    0x45c4c  3      
  subl %eax, %r12d                      #  45    0x45c4f  3      
  subb %cl, %dl                         #  46    0x45c52  2      
  movsbl %dl, %edx                      #  47    0x45c54  3      
  testl %edx, %edx                      #  48    0x45c57  2      
  cmovel %r12d, %edx                    #  49    0x45c59  4      
  movq 0x10(%rsp), %r12                 #  50    0x45c5d  5      
  addl $0x28, %esp                      #  51    0x45c62  3      
  addq %r15, %rsp                       #  52    0x45c65  3      
  popq %r11                             #  53    0x45c68  3      
  movl %edx, %eax                       #  54    0x45c6b  2      
  nop                                   #  55    0x45c6d  1      
  andl $0xffffffe0, %r11d               #  56    0x45c6e  7      
  addq %r15, %r11                       #  57    0x45c75  3      
  jmpq %r11                             #  58    0x45c78  3      
  nop                                   #  59    0x45c7b  1      
  nop                                   #  60    0x45c7c  1      
.L_45ca0:                               #        0x45c7d  0      
  movl $0x100209b4, %edi                #  61    0x45c7d  5      
  nop                                   #  62    0x45c82  1      
  nop                                   #  63    0x45c83  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  64    0x45c84  5      
                                                                 
.size _ZNKSs7compareEjjPKc, .-_ZNKSs7compareEjjPKc

