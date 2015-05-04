  .text
  .globl pthread_cleanup_pop
  .type pthread_cleanup_pop, @function

#! file-offset 0x402c0
#! rip-offset  0x402c0
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.pthread_cleanup_pop:           #        0x402c0  0      
  movq %rbx, -0x10(%rsp)        #  1     0x402c0  5      
  movq %r12, -0x8(%rsp)         #  2     0x402c5  5      
  subl $0x18, %esp              #  3     0x402ca  3      
  addq %r15, %rsp               #  4     0x402cd  3      
  movl %edi, %r12d              #  5     0x402d0  3      
  nop                           #  6     0x402d3  1      
  callq .__nacl_read_tp         #  7     0x402d4  5      
  movl %eax, %eax               #  8     0x402d9  2      
  movl -0x8(%r15,%rax,1), %ebx  #  9     0x402db  5      
  testq %rbx, %rbx              #  10    0x402e0  3      
  je .L_40380                   #  11    0x402e3  6      
  nop                           #  12    0x402e9  1      
  callq .__nacl_read_tp         #  13    0x402ea  5      
  movl %ebx, %ebx               #  14    0x402ef  2      
  movl (%r15,%rbx,1), %edx      #  15    0x402f1  4      
  testl %r12d, %r12d            #  16    0x402f5  3      
  movl %eax, %eax               #  17    0x402f8  2      
  movl %edx, -0x8(%r15,%rax,1)  #  18    0x402fa  5      
  jne .L_40340                  #  19    0x402ff  6      
  nop                           #  20    0x40305  1      
.L_40320:                       #        0x40306  0      
  movl %ebx, %edi               #  21    0x40306  2      
  movq 0x10(%rsp), %r12         #  22    0x40308  5      
  movq 0x8(%rsp), %rbx          #  23    0x4030d  5      
  addl $0x18, %esp              #  24    0x40312  3      
  addq %r15, %rsp               #  25    0x40315  3      
  jmpq .free                    #  26    0x40318  5      
  nop                           #  27    0x4031d  1      
.L_40340:                       #        0x4031e  0      
  movl %ebx, %ebx               #  28    0x4031e  2      
  movl 0x4(%r15,%rbx,1), %eax   #  29    0x40320  5      
  movl %ebx, %ebx               #  30    0x40325  2      
  movl 0x8(%r15,%rbx,1), %edi   #  31    0x40327  5      
  nop                           #  32    0x4032c  1      
  andl $0xffffffe0, %eax        #  33    0x4032d  5      
  addq %r15, %rax               #  34    0x40332  3      
  callq %rax                    #  35    0x40335  2      
  jmpq .L_40320                 #  36    0x40337  5      
  nop                           #  37    0x4033c  1      
  nop                           #  38    0x4033d  1      
.L_40380:                       #        0x4033e  0      
  movq 0x8(%rsp), %rbx          #  39    0x4033e  5      
  movq 0x10(%rsp), %r12         #  40    0x40343  5      
  addl $0x18, %esp              #  41    0x40348  3      
  addq %r15, %rsp               #  42    0x4034b  3      
  popq %r11                     #  43    0x4034e  3      
  andl $0xffffffe0, %r11d       #  44    0x40351  7      
  addq %r15, %r11               #  45    0x40358  3      
  jmpq %r11                     #  46    0x4035b  3      
  nop                           #  47    0x4035e  1      
                                                         
.size pthread_cleanup_pop, .-pthread_cleanup_pop

