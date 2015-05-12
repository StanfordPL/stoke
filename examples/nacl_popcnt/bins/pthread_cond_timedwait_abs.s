  .text
  .globl pthread_cond_timedwait_abs
  .type pthread_cond_timedwait_abs, @function

#! file-offset 0x41c60
#! rip-offset  0x41c60
#! capacity    256 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_cond_timedwait_abs:   #        0x41c60  0      
  movq %rbx, -0x20(%rsp)       #  1     0x41c60  5      
  movl %esi, %ebx              #  2     0x41c65  2      
  movq %r12, -0x18(%rsp)       #  3     0x41c67  5      
  movq %r14, -0x8(%rsp)        #  4     0x41c6c  5      
  movq %r13, -0x10(%rsp)       #  5     0x41c71  5      
  movl %edi, %r12d             #  6     0x41c76  3      
  subl $0x28, %esp             #  7     0x41c79  3      
  addq %r15, %rsp              #  8     0x41c7c  3      
  nop                          #  9     0x41c7f  1      
  movl %ebx, %edi              #  10    0x41c80  2      
  movl %edx, %r14d             #  11    0x41c82  3      
  movl %r12d, %r12d            #  12    0x41c85  3      
  movl (%r15,%r12,1), %r13d    #  13    0x41c88  4      
  nop                          #  14    0x41c8c  1      
  callq .pthread_mutex_unlock  #  15    0x41c8d  5      
  testl %eax, %eax             #  16    0x41c92  2      
  je .L_41d00                  #  17    0x41c94  6      
  nop                          #  18    0x41c9a  1      
  nop                          #  19    0x41c9b  1      
.L_41cc0:                      #        0x41c9c  0      
  movq 0x8(%rsp), %rbx         #  20    0x41c9c  5      
  movq 0x10(%rsp), %r12        #  21    0x41ca1  5      
  movq 0x18(%rsp), %r13        #  22    0x41ca6  5      
  movq 0x20(%rsp), %r14        #  23    0x41cab  5      
  addl $0x28, %esp             #  24    0x41cb0  3      
  addq %r15, %rsp              #  25    0x41cb3  3      
  popq %r11                    #  26    0x41cb6  3      
  nop                          #  27    0x41cb9  1      
  andl $0xffffffe0, %r11d      #  28    0x41cba  7      
  addq %r15, %r11              #  29    0x41cc1  3      
  jmpq %r11                    #  30    0x41cc4  3      
  nop                          #  31    0x41cc7  1      
  nop                          #  32    0x41cc8  1      
.L_41d00:                      #        0x41cc9  0      
  movl 0xfff510d(%rip), %eax   #  33    0x41cc9  6      
  movl %r12d, %edi             #  34    0x41ccf  3      
  movl %r14d, %edx             #  35    0x41cd2  3      
  movl %r13d, %esi             #  36    0x41cd5  3      
  nop                          #  37    0x41cd8  1      
  andl $0xffffffe0, %eax       #  38    0x41cd9  5      
  addq %r15, %rax              #  39    0x41cde  3      
  callq %rax                   #  40    0x41ce1  2      
  movl %ebx, %edi              #  41    0x41ce3  2      
  movl %eax, %r12d             #  42    0x41ce5  3      
  nop                          #  43    0x41ce8  1      
  nop                          #  44    0x41ce9  1      
  callq .pthread_mutex_lock    #  45    0x41cea  5      
  testl %eax, %eax             #  46    0x41cef  2      
  jne .L_41cc0                 #  47    0x41cf1  6      
  cmpl $0x6e, %r12d            #  48    0x41cf7  4      
  movl $0x6e, %edx             #  49    0x41cfb  5      
  cmovel %edx, %eax            #  50    0x41d00  3      
  jmpq .L_41cc0                #  51    0x41d03  5      
  nop                          #  52    0x41d08  1      
                                                        
.size pthread_cond_timedwait_abs, .-pthread_cond_timedwait_abs

