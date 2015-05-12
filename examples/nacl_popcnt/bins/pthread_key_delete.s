  .text
  .globl pthread_key_delete
  .type pthread_key_delete, @function

#! file-offset 0x40480
#! rip-offset  0x40480
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
.pthread_key_delete:                  #        0x40480  0      
  cmpl $0x1ff, %edi                   #  1     0x40480  6      
  ja .L_404c0                         #  2     0x40486  6      
  shll $0x3, %edi                     #  3     0x4048c  3      
  movslq %edi, %rcx                   #  4     0x4048f  3      
  leaq 0x10030da4(%rcx), %rax         #  5     0x40492  7      
  movl %eax, %eax                     #  6     0x40499  2      
  movl (%r15,%rax,1), %edx            #  7     0x4049b  4      
  testb $0x1, %dl                     #  8     0x4049f  3      
  xchgw %ax, %ax                      #  9     0x404a2  3      
  jne .L_404e0                        #  10    0x404a5  6      
  nop                                 #  11    0x404ab  1      
  nop                                 #  12    0x404ac  1      
.L_404c0:                             #        0x404ad  0      
  movl $0x16, %eax                    #  13    0x404ad  5      
  popq %r11                           #  14    0x404b2  3      
  andl $0xffffffe0, %r11d             #  15    0x404b5  7      
  addq %r15, %r11                     #  16    0x404bc  3      
  jmpq %r11                           #  17    0x404bf  3      
  nop                                 #  18    0x404c2  1      
.L_404e0:                             #        0x404c3  0      
  leal 0x1(%rdx), %esi                #  19    0x404c3  3      
  addl $0x10030da4, %edi              #  20    0x404c6  6      
  movl %edx, %eax                     #  21    0x404cc  2      
  movl %edi, %edi                     #  22    0x404ce  2      
  lock                                #  23    0x404d0  1      
  cmpxchgl %esi, (%r15,%rdi,1)        #  24    0x404d1  5      
  cmpl %edx, %eax                     #  25    0x404d6  2      
  jne .L_404c0                        #  26    0x404d8  6      
  nop                                 #  27    0x404de  1      
  movl %ecx, %ecx                     #  28    0x404df  2      
  movl $0x0, 0x10030da0(%r15,%rcx,1)  #  29    0x404e1  12     
  xorl %eax, %eax                     #  30    0x404ed  2      
  popq %r11                           #  31    0x404ef  3      
  andl $0xffffffe0, %r11d             #  32    0x404f2  7      
  addq %r15, %r11                     #  33    0x404f9  3      
  jmpq %r11                           #  34    0x404fc  3      
  nop                                 #  35    0x404ff  1      
                                                               
.size pthread_key_delete, .-pthread_key_delete

