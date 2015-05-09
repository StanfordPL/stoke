  .text
  .globl _ZNKSs7compareEPKc
  .type _ZNKSs7compareEPKc, @function

#! file-offset 0x45780
#! rip-offset  0x45780
#! capacity    160 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs7compareEPKc:                 #        0x45780  0      
  movl %edi, %edi                    #  1     0x45780  2      
  movq %r12, -0x10(%rsp)             #  2     0x45782  5      
  movq %rbx, -0x18(%rsp)             #  3     0x45787  5      
  movq %r13, -0x8(%rsp)              #  4     0x4578c  5      
  subl $0x18, %esp                   #  5     0x45791  3      
  addq %r15, %rsp                    #  6     0x45794  3      
  movl %edi, %edi                    #  7     0x45797  2      
  movl (%r15,%rdi,1), %r13d          #  8     0x45799  4      
  movl %esi, %r12d                   #  9     0x4579d  3      
  movl %r12d, %edi                   #  10    0x457a0  3      
  leal -0xc(%r13), %eax              #  11    0x457a3  4      
  movl %eax, %eax                    #  12    0x457a7  2      
  movl (%r15,%rax,1), %ebx           #  13    0x457a9  4      
  nop                                #  14    0x457ad  1      
  callq .strlen                      #  15    0x457ae  5      
  movq %r13, %rsi                    #  16    0x457b3  3      
  movq %r12, %rdi                    #  17    0x457b6  3      
  movq 0x10(%rsp), %r13              #  18    0x457b9  5      
  cmpl %ebx, %eax                    #  19    0x457be  2      
  movl %ebx, %ecx                    #  20    0x457c0  2      
  movq 0x8(%rsp), %r12               #  21    0x457c2  5      
  cmovbel %eax, %ecx                 #  22    0x457c7  3      
  movl %ecx, %ecx                    #  23    0x457ca  2      
  cmpq %rcx, %rcx                    #  24    0x457cc  3      
  nop                                #  25    0x457cf  1      
  movl %esi, %esi                    #  26    0x457d0  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x457d2  4      
  movl %edi, %edi                    #  28    0x457d6  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x457d8  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x457dc  3      
  movl %esi, %esi                    #  31    0x457df  2      
  movl %edi, %edi                    #  32    0x457e1  2      
  seta %dl                           #  33    0x457e3  3      
  setb %cl                           #  34    0x457e6  3      
  subl %eax, %ebx                    #  35    0x457e9  2      
  subb %cl, %dl                      #  36    0x457eb  2      
  movsbl %dl, %edx                   #  37    0x457ed  3      
  nop                                #  38    0x457f0  1      
  testl %edx, %edx                   #  39    0x457f1  2      
  cmovel %ebx, %edx                  #  40    0x457f3  3      
  movq (%rsp), %rbx                  #  41    0x457f6  4      
  addl $0x18, %esp                   #  42    0x457fa  3      
  addq %r15, %rsp                    #  43    0x457fd  3      
  popq %r11                          #  44    0x45800  3      
  movl %edx, %eax                    #  45    0x45803  2      
  andl $0xffffffe0, %r11d            #  46    0x45805  7      
  addq %r15, %r11                    #  47    0x4580c  3      
  jmpq %r11                          #  48    0x4580f  3      
  nop                                #  49    0x45812  1      
  nop                                #  50    0x45813  1      
  nop                                #  51    0x45814  1      
                                                              
.size _ZNKSs7compareEPKc, .-_ZNKSs7compareEPKc

