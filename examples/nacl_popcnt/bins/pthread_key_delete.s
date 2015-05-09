  .text
  .globl pthread_key_delete
  .type pthread_key_delete, @function

#! file-offset 0x40460
#! rip-offset  0x40460
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
.pthread_key_delete:                  #        0x40460  0      
  cmpl $0x1ff, %edi                   #  1     0x40460  6      
  ja .L_404a0                         #  2     0x40466  6      
  shll $0x3, %edi                     #  3     0x4046c  3      
  movslq %edi, %rcx                   #  4     0x4046f  3      
  leaq 0x10030da4(%rcx), %rax         #  5     0x40472  7      
  movl %eax, %eax                     #  6     0x40479  2      
  movl (%r15,%rax,1), %edx            #  7     0x4047b  4      
  testb $0x1, %dl                     #  8     0x4047f  3      
  xchgw %ax, %ax                      #  9     0x40482  3      
  jne .L_404c0                        #  10    0x40485  6      
  nop                                 #  11    0x4048b  1      
  nop                                 #  12    0x4048c  1      
.L_404a0:                             #        0x4048d  0      
  movl $0x16, %eax                    #  13    0x4048d  5      
  popq %r11                           #  14    0x40492  3      
  andl $0xffffffe0, %r11d             #  15    0x40495  7      
  addq %r15, %r11                     #  16    0x4049c  3      
  jmpq %r11                           #  17    0x4049f  3      
  nop                                 #  18    0x404a2  1      
.L_404c0:                             #        0x404a3  0      
  leal 0x1(%rdx), %esi                #  19    0x404a3  3      
  addl $0x10030da4, %edi              #  20    0x404a6  6      
  movl %edx, %eax                     #  21    0x404ac  2      
  movl %edi, %edi                     #  22    0x404ae  2      
  lock                                #  23    0x404b0  1      
  cmpxchgl %esi, (%r15,%rdi,1)        #  24    0x404b1  5      
  cmpl %edx, %eax                     #  25    0x404b6  2      
  jne .L_404a0                        #  26    0x404b8  6      
  nop                                 #  27    0x404be  1      
  movl %ecx, %ecx                     #  28    0x404bf  2      
  movl $0x0, 0x10030da0(%r15,%rcx,1)  #  29    0x404c1  12     
  xorl %eax, %eax                     #  30    0x404cd  2      
  popq %r11                           #  31    0x404cf  3      
  andl $0xffffffe0, %r11d             #  32    0x404d2  7      
  addq %r15, %r11                     #  33    0x404d9  3      
  jmpq %r11                           #  34    0x404dc  3      
  nop                                 #  35    0x404df  1      
                                                               
.size pthread_key_delete, .-pthread_key_delete

