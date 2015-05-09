  .text
  .globl pthread_cond_timedwait_abs
  .type pthread_cond_timedwait_abs, @function

#! file-offset 0x41c40
#! rip-offset  0x41c40
#! capacity    256 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_cond_timedwait_abs:   #        0x41c40  0      
  movq %rbx, -0x20(%rsp)       #  1     0x41c40  5      
  movl %esi, %ebx              #  2     0x41c45  2      
  movq %r12, -0x18(%rsp)       #  3     0x41c47  5      
  movq %r14, -0x8(%rsp)        #  4     0x41c4c  5      
  movq %r13, -0x10(%rsp)       #  5     0x41c51  5      
  movl %edi, %r12d             #  6     0x41c56  3      
  subl $0x28, %esp             #  7     0x41c59  3      
  addq %r15, %rsp              #  8     0x41c5c  3      
  nop                          #  9     0x41c5f  1      
  movl %ebx, %edi              #  10    0x41c60  2      
  movl %edx, %r14d             #  11    0x41c62  3      
  movl %r12d, %r12d            #  12    0x41c65  3      
  movl (%r15,%r12,1), %r13d    #  13    0x41c68  4      
  nop                          #  14    0x41c6c  1      
  callq .pthread_mutex_unlock  #  15    0x41c6d  5      
  testl %eax, %eax             #  16    0x41c72  2      
  je .L_41ce0                  #  17    0x41c74  6      
  nop                          #  18    0x41c7a  1      
  nop                          #  19    0x41c7b  1      
.L_41ca0:                      #        0x41c7c  0      
  movq 0x8(%rsp), %rbx         #  20    0x41c7c  5      
  movq 0x10(%rsp), %r12        #  21    0x41c81  5      
  movq 0x18(%rsp), %r13        #  22    0x41c86  5      
  movq 0x20(%rsp), %r14        #  23    0x41c8b  5      
  addl $0x28, %esp             #  24    0x41c90  3      
  addq %r15, %rsp              #  25    0x41c93  3      
  popq %r11                    #  26    0x41c96  3      
  nop                          #  27    0x41c99  1      
  andl $0xffffffe0, %r11d      #  28    0x41c9a  7      
  addq %r15, %r11              #  29    0x41ca1  3      
  jmpq %r11                    #  30    0x41ca4  3      
  nop                          #  31    0x41ca7  1      
  nop                          #  32    0x41ca8  1      
.L_41ce0:                      #        0x41ca9  0      
  movl 0xfff512d(%rip), %eax   #  33    0x41ca9  6      
  movl %r12d, %edi             #  34    0x41caf  3      
  movl %r14d, %edx             #  35    0x41cb2  3      
  movl %r13d, %esi             #  36    0x41cb5  3      
  nop                          #  37    0x41cb8  1      
  andl $0xffffffe0, %eax       #  38    0x41cb9  5      
  addq %r15, %rax              #  39    0x41cbe  3      
  callq %rax                   #  40    0x41cc1  2      
  movl %ebx, %edi              #  41    0x41cc3  2      
  movl %eax, %r12d             #  42    0x41cc5  3      
  nop                          #  43    0x41cc8  1      
  nop                          #  44    0x41cc9  1      
  callq .pthread_mutex_lock    #  45    0x41cca  5      
  testl %eax, %eax             #  46    0x41ccf  2      
  jne .L_41ca0                 #  47    0x41cd1  6      
  cmpl $0x6e, %r12d            #  48    0x41cd7  4      
  movl $0x6e, %edx             #  49    0x41cdb  5      
  cmovel %edx, %eax            #  50    0x41ce0  3      
  jmpq .L_41ca0                #  51    0x41ce3  5      
  nop                          #  52    0x41ce8  1      
                                                        
.size pthread_cond_timedwait_abs, .-pthread_cond_timedwait_abs

