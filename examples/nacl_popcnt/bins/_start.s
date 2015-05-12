  .text
  .globl _start
  .type _start, @function

#! file-offset 0x60500
#! rip-offset  0x60500
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
._start:                        #        0x60500  0      
  movl %edi, %eax               #  1     0x60500  2      
  movq %r12, -0x18(%rsp)        #  2     0x60502  5      
  movq %r13, -0x10(%rsp)        #  3     0x60507  5      
  movq %rbx, -0x20(%rsp)        #  4     0x6050c  5      
  movq %r14, -0x8(%rsp)         #  5     0x60511  5      
  subl $0x38, %esp              #  6     0x60516  3      
  addq %r15, %rsp               #  7     0x60519  3      
  nop                           #  8     0x6051c  1      
  movl %eax, %eax               #  9     0x6051d  2      
  movl 0x8(%r15,%rax,1), %ebx   #  10    0x6051f  5      
  leal 0xc(%rax), %r12d         #  11    0x60524  4      
  movl %edi, 0xc(%rsp)          #  12    0x60528  4      
  movl %eax, %eax               #  13    0x6052c  2      
  movl 0x4(%r15,%rax,1), %edi   #  14    0x6052e  5      
  movl %eax, %eax               #  15    0x60533  2      
  movl (%r15,%rax,1), %r14d     #  16    0x60535  4      
  leal 0xc(%rsp), %eax          #  17    0x60539  4      
  leal 0x4(%r12,%rbx,4), %r13d  #  18    0x6053d  5      
  movl %eax, 0xffd689c(%rip)    #  19    0x60542  6      
  leal 0x4(%r13,%rdi,4), %edi   #  20    0x60548  5      
  movl %r13d, 0xffcffa4(%rip)   #  21    0x6054d  7      
  nop                           #  22    0x60554  1      
  callq .__libnacl_irt_init     #  23    0x60555  5      
  testq %r14, %r14              #  24    0x6055a  3      
  je .L_60580                   #  25    0x6055d  6      
  movl %r14d, %edi              #  26    0x60563  3      
  nop                           #  27    0x60566  1      
  nop                           #  28    0x60567  1      
  callq .atexit                 #  29    0x60568  5      
.L_60580:                       #        0x6056d  0      
  movl $0x68460, %edi           #  30    0x6056d  5      
  nop                           #  31    0x60572  1      
  nop                           #  32    0x60573  1      
  callq .atexit                 #  33    0x60574  5      
  nop                           #  34    0x60579  1      
  nop                           #  35    0x6057a  1      
  callq .__pthread_initialize   #  36    0x6057b  5      
  nop                           #  37    0x60580  1      
  nop                           #  38    0x60581  1      
  callq .__libc_init_array      #  39    0x60582  5      
  movl $0x0, %edx               #  40    0x60587  5      
  movl $0x3f9e0, %eax           #  41    0x6058c  5      
  movl %ebx, %edi               #  42    0x60591  2      
  testl %edx, %edx              #  43    0x60593  2      
  movl $0x0, %edx               #  44    0x60595  5      
  movl %r12d, %esi              #  45    0x6059a  3      
  cmovneq %rdx, %rax            #  46    0x6059d  4      
  movl %r13d, %edx              #  47    0x605a1  3      
  nop                           #  48    0x605a4  1      
  nop                           #  49    0x605a5  1      
  nop                           #  50    0x605a6  1      
  andl $0xffffffe0, %eax        #  51    0x605a7  5      
  addq %r15, %rax               #  52    0x605ac  3      
  callq %rax                    #  53    0x605af  2      
  movl %eax, %edi               #  54    0x605b1  2      
  nop                           #  55    0x605b3  1      
  nop                           #  56    0x605b4  1      
  callq .exit                   #  57    0x605b5  5      
                                                         
.size _start, .-_start

