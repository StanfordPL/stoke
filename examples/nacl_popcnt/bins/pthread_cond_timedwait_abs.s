  .text
  .globl pthread_cond_timedwait_abs
  .type pthread_cond_timedwait_abs, @function

#! file-offset 0x41ce0
#! rip-offset  0x41ce0
#! capacity    256 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_cond_timedwait_abs:   #        0x41ce0  0      
  movq %rbx, -0x20(%rsp)       #  1     0x41ce0  5      
  movl %esi, %ebx              #  2     0x41ce5  2      
  movq %r12, -0x18(%rsp)       #  3     0x41ce7  5      
  movq %r14, -0x8(%rsp)        #  4     0x41cec  5      
  movq %r13, -0x10(%rsp)       #  5     0x41cf1  5      
  movl %edi, %r12d             #  6     0x41cf6  3      
  subl $0x28, %esp             #  7     0x41cf9  3      
  addq %r15, %rsp              #  8     0x41cfc  3      
  nop                          #  9     0x41cff  1      
  movl %ebx, %edi              #  10    0x41d00  2      
  movl %edx, %r14d             #  11    0x41d02  3      
  movl %r12d, %r12d            #  12    0x41d05  3      
  movl (%r15,%r12,1), %r13d    #  13    0x41d08  4      
  nop                          #  14    0x41d0c  1      
  callq .pthread_mutex_unlock  #  15    0x41d0d  5      
  testl %eax, %eax             #  16    0x41d12  2      
  je .L_41d80                  #  17    0x41d14  6      
  nop                          #  18    0x41d1a  1      
  nop                          #  19    0x41d1b  1      
.L_41d40:                      #        0x41d1c  0      
  movq 0x8(%rsp), %rbx         #  20    0x41d1c  5      
  movq 0x10(%rsp), %r12        #  21    0x41d21  5      
  movq 0x18(%rsp), %r13        #  22    0x41d26  5      
  movq 0x20(%rsp), %r14        #  23    0x41d2b  5      
  addl $0x28, %esp             #  24    0x41d30  3      
  addq %r15, %rsp              #  25    0x41d33  3      
  popq %r11                    #  26    0x41d36  3      
  nop                          #  27    0x41d39  1      
  andl $0xffffffe0, %r11d      #  28    0x41d3a  7      
  addq %r15, %r11              #  29    0x41d41  3      
  jmpq %r11                    #  30    0x41d44  3      
  nop                          #  31    0x41d47  1      
  nop                          #  32    0x41d48  1      
.L_41d80:                      #        0x41d49  0      
  movl 0xfff508d(%rip), %eax   #  33    0x41d49  6      
  movl %r12d, %edi             #  34    0x41d4f  3      
  movl %r14d, %edx             #  35    0x41d52  3      
  movl %r13d, %esi             #  36    0x41d55  3      
  nop                          #  37    0x41d58  1      
  andl $0xffffffe0, %eax       #  38    0x41d59  5      
  addq %r15, %rax              #  39    0x41d5e  3      
  callq %rax                   #  40    0x41d61  2      
  movl %ebx, %edi              #  41    0x41d63  2      
  movl %eax, %r12d             #  42    0x41d65  3      
  nop                          #  43    0x41d68  1      
  nop                          #  44    0x41d69  1      
  callq .pthread_mutex_lock    #  45    0x41d6a  5      
  testl %eax, %eax             #  46    0x41d6f  2      
  jne .L_41d40                 #  47    0x41d71  6      
  cmpl $0x6e, %r12d            #  48    0x41d77  4      
  movl $0x6e, %edx             #  49    0x41d7b  5      
  cmovel %edx, %eax            #  50    0x41d80  3      
  jmpq .L_41d40                #  51    0x41d83  5      
  nop                          #  52    0x41d88  1      
                                                        
.size pthread_cond_timedwait_abs, .-pthread_cond_timedwait_abs

