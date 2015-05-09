  .text
  .globl _ZNKSs7compareEjjPKc
  .type _ZNKSs7compareEjjPKc, @function

#! file-offset 0x45b20
#! rip-offset  0x45b20
#! capacity    256 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjPKc:                  #        0x45b20  0      
  movl %edi, %edi                       #  1     0x45b20  2      
  movq %rbx, -0x20(%rsp)                #  2     0x45b22  5      
  movq %r13, -0x10(%rsp)                #  3     0x45b27  5      
  movq %r12, -0x18(%rsp)                #  4     0x45b2c  5      
  movq %r14, -0x8(%rsp)                 #  5     0x45b31  5      
  subl $0x28, %esp                      #  6     0x45b36  3      
  addq %r15, %rsp                       #  7     0x45b39  3      
  nop                                   #  8     0x45b3c  1      
  movl %edi, %edi                       #  9     0x45b3d  2      
  movl (%r15,%rdi,1), %r14d             #  10    0x45b3f  4      
  movl %esi, %ebx                       #  11    0x45b43  2      
  movl %ecx, %r13d                      #  12    0x45b45  3      
  leal -0xc(%r14), %eax                 #  13    0x45b48  4      
  movl %eax, %eax                       #  14    0x45b4c  2      
  movl (%r15,%rax,1), %r12d             #  15    0x45b4e  4      
  cmpl %r12d, %esi                      #  16    0x45b52  3      
  ja .L_45c00                           #  17    0x45b55  6      
  xchgw %ax, %ax                        #  18    0x45b5b  3      
  subl %esi, %r12d                      #  19    0x45b5e  3      
  movl %r13d, %edi                      #  20    0x45b61  3      
  cmpl %r12d, %edx                      #  21    0x45b64  3      
  cmovbel %edx, %r12d                   #  22    0x45b67  4      
  nop                                   #  23    0x45b6b  1      
  callq .strlen                         #  24    0x45b6c  5      
  movl %r12d, %ecx                      #  25    0x45b71  3      
  cmpl %r12d, %eax                      #  26    0x45b74  3      
  leal (%rbx,%r14,1), %esi              #  27    0x45b77  4      
  cmovbel %eax, %ecx                    #  28    0x45b7b  3      
  movq %r13, %rdi                       #  29    0x45b7e  3      
  movq 0x8(%rsp), %rbx                  #  30    0x45b81  5      
  movl %ecx, %ecx                       #  31    0x45b86  2      
  movq 0x18(%rsp), %r13                 #  32    0x45b88  5      
  nop                                   #  33    0x45b8d  1      
  movq 0x20(%rsp), %r14                 #  34    0x45b8e  5      
  cmpq %rcx, %rcx                       #  35    0x45b93  3      
  movl %esi, %esi                       #  36    0x45b96  2      
  leaq (%r15,%rsi,1), %rsi              #  37    0x45b98  4      
  movl %edi, %edi                       #  38    0x45b9c  2      
  leaq (%r15,%rdi,1), %rdi              #  39    0x45b9e  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  40    0x45ba2  3      
  movl %esi, %esi                       #  41    0x45ba5  2      
  movl %edi, %edi                       #  42    0x45ba7  2      
  seta %dl                              #  43    0x45ba9  3      
  setb %cl                              #  44    0x45bac  3      
  subl %eax, %r12d                      #  45    0x45baf  3      
  subb %cl, %dl                         #  46    0x45bb2  2      
  movsbl %dl, %edx                      #  47    0x45bb4  3      
  testl %edx, %edx                      #  48    0x45bb7  2      
  cmovel %r12d, %edx                    #  49    0x45bb9  4      
  movq 0x10(%rsp), %r12                 #  50    0x45bbd  5      
  addl $0x28, %esp                      #  51    0x45bc2  3      
  addq %r15, %rsp                       #  52    0x45bc5  3      
  popq %r11                             #  53    0x45bc8  3      
  movl %edx, %eax                       #  54    0x45bcb  2      
  nop                                   #  55    0x45bcd  1      
  andl $0xffffffe0, %r11d               #  56    0x45bce  7      
  addq %r15, %r11                       #  57    0x45bd5  3      
  jmpq %r11                             #  58    0x45bd8  3      
  nop                                   #  59    0x45bdb  1      
  nop                                   #  60    0x45bdc  1      
.L_45c00:                               #        0x45bdd  0      
  movl $0x100209b4, %edi                #  61    0x45bdd  5      
  nop                                   #  62    0x45be2  1      
  nop                                   #  63    0x45be3  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  64    0x45be4  5      
                                                                 
.size _ZNKSs7compareEjjPKc, .-_ZNKSs7compareEjjPKc

