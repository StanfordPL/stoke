  .text
  .globl __swrite
  .type __swrite, @function

#! file-offset 0x800c0
#! rip-offset  0x800c0
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  
.__swrite:                       #        0x800c0  0      
  movq %rbx, -0x18(%rsp)         #  1     0x800c0  5      
  movl %esi, %ebx                #  2     0x800c5  2      
  movq %r12, -0x10(%rsp)         #  3     0x800c7  5      
  movq %r13, -0x8(%rsp)          #  4     0x800cc  5      
  subl $0x18, %esp               #  5     0x800d1  3      
  addq %r15, %rsp                #  6     0x800d4  3      
  movl %ebx, %ebx                #  7     0x800d7  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  8     0x800d9  6      
  nop                            #  9     0x800df  1      
  movl %ecx, %r13d               #  10    0x800e0  3      
  movl %edx, %r12d               #  11    0x800e3  3      
  testb $0x1, %ah                #  12    0x800e6  3      
  je .L_80120                    #  13    0x800e9  6      
  movl %ebx, %ebx                #  14    0x800ef  2      
  movswl 0xe(%r15,%rbx,1), %edi  #  15    0x800f1  6      
  movl $0x2, %edx                #  16    0x800f7  5      
  xorl %esi, %esi                #  17    0x800fc  2      
  nop                            #  18    0x800fe  1      
  callq .lseek                   #  19    0x800ff  5      
  movl %ebx, %ebx                #  20    0x80104  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  21    0x80106  6      
  nop                            #  22    0x8010c  1      
  nop                            #  23    0x8010d  1      
.L_80120:                        #        0x8010e  0      
  movl %ebx, %ebx                #  24    0x8010e  2      
  movswl 0xe(%r15,%rbx,1), %edi  #  25    0x80110  6      
  andb $0xef, %ah                #  26    0x80116  3      
  movl %r13d, %edx               #  27    0x80119  3      
  movl %ebx, %ebx                #  28    0x8011c  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  29    0x8011e  6      
  movl %r12d, %esi               #  30    0x80124  3      
  movq (%rsp), %rbx              #  31    0x80127  4      
  nop                            #  32    0x8012b  1      
  movq 0x8(%rsp), %r12           #  33    0x8012c  5      
  movq 0x10(%rsp), %r13          #  34    0x80131  5      
  addl $0x18, %esp               #  35    0x80136  3      
  addq %r15, %rsp                #  36    0x80139  3      
  jmpq .write                    #  37    0x8013c  5      
  nop                            #  38    0x80141  1      
                                                          
.size __swrite, .-__swrite

