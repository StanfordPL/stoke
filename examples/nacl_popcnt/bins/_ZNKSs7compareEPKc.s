  .text
  .globl _ZNKSs7compareEPKc
  .type _ZNKSs7compareEPKc, @function

#! file-offset 0x45820
#! rip-offset  0x45820
#! capacity    160 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs7compareEPKc:                 #        0x45820  0      
  movl %edi, %edi                    #  1     0x45820  2      
  movq %r12, -0x10(%rsp)             #  2     0x45822  5      
  movq %rbx, -0x18(%rsp)             #  3     0x45827  5      
  movq %r13, -0x8(%rsp)              #  4     0x4582c  5      
  subl $0x18, %esp                   #  5     0x45831  3      
  addq %r15, %rsp                    #  6     0x45834  3      
  movl %edi, %edi                    #  7     0x45837  2      
  movl (%r15,%rdi,1), %r13d          #  8     0x45839  4      
  movl %esi, %r12d                   #  9     0x4583d  3      
  movl %r12d, %edi                   #  10    0x45840  3      
  leal -0xc(%r13), %eax              #  11    0x45843  4      
  movl %eax, %eax                    #  12    0x45847  2      
  movl (%r15,%rax,1), %ebx           #  13    0x45849  4      
  nop                                #  14    0x4584d  1      
  callq .strlen                      #  15    0x4584e  5      
  movq %r13, %rsi                    #  16    0x45853  3      
  movq %r12, %rdi                    #  17    0x45856  3      
  movq 0x10(%rsp), %r13              #  18    0x45859  5      
  cmpl %ebx, %eax                    #  19    0x4585e  2      
  movl %ebx, %ecx                    #  20    0x45860  2      
  movq 0x8(%rsp), %r12               #  21    0x45862  5      
  cmovbel %eax, %ecx                 #  22    0x45867  3      
  movl %ecx, %ecx                    #  23    0x4586a  2      
  cmpq %rcx, %rcx                    #  24    0x4586c  3      
  nop                                #  25    0x4586f  1      
  movl %esi, %esi                    #  26    0x45870  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x45872  4      
  movl %edi, %edi                    #  28    0x45876  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x45878  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x4587c  3      
  movl %esi, %esi                    #  31    0x4587f  2      
  movl %edi, %edi                    #  32    0x45881  2      
  seta %dl                           #  33    0x45883  3      
  setb %cl                           #  34    0x45886  3      
  subl %eax, %ebx                    #  35    0x45889  2      
  subb %cl, %dl                      #  36    0x4588b  2      
  movsbl %dl, %edx                   #  37    0x4588d  3      
  nop                                #  38    0x45890  1      
  testl %edx, %edx                   #  39    0x45891  2      
  cmovel %ebx, %edx                  #  40    0x45893  3      
  movq (%rsp), %rbx                  #  41    0x45896  4      
  addl $0x18, %esp                   #  42    0x4589a  3      
  addq %r15, %rsp                    #  43    0x4589d  3      
  popq %r11                          #  44    0x458a0  3      
  movl %edx, %eax                    #  45    0x458a3  2      
  andl $0xffffffe0, %r11d            #  46    0x458a5  7      
  addq %r15, %r11                    #  47    0x458ac  3      
  jmpq %r11                          #  48    0x458af  3      
  nop                                #  49    0x458b2  1      
  nop                                #  50    0x458b3  1      
  nop                                #  51    0x458b4  1      
                                                              
.size _ZNKSs7compareEPKc, .-_ZNKSs7compareEPKc

