  .text
  .globl _start
  .type _start, @function

#! file-offset 0x60580
#! rip-offset  0x60580
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
._start:                        #        0x60580  0      
  movl %edi, %eax               #  1     0x60580  2      
  movq %r12, -0x18(%rsp)        #  2     0x60582  5      
  movq %r13, -0x10(%rsp)        #  3     0x60587  5      
  movq %rbx, -0x20(%rsp)        #  4     0x6058c  5      
  movq %r14, -0x8(%rsp)         #  5     0x60591  5      
  subl $0x38, %esp              #  6     0x60596  3      
  addq %r15, %rsp               #  7     0x60599  3      
  nop                           #  8     0x6059c  1      
  movl %eax, %eax               #  9     0x6059d  2      
  movl 0x8(%r15,%rax,1), %ebx   #  10    0x6059f  5      
  leal 0xc(%rax), %r12d         #  11    0x605a4  4      
  movl %edi, 0xc(%rsp)          #  12    0x605a8  4      
  movl %eax, %eax               #  13    0x605ac  2      
  movl 0x4(%r15,%rax,1), %edi   #  14    0x605ae  5      
  movl %eax, %eax               #  15    0x605b3  2      
  movl (%r15,%rax,1), %r14d     #  16    0x605b5  4      
  leal 0xc(%rsp), %eax          #  17    0x605b9  4      
  leal 0x4(%r12,%rbx,4), %r13d  #  18    0x605bd  5      
  movl %eax, 0xffd681c(%rip)    #  19    0x605c2  6      
  leal 0x4(%r13,%rdi,4), %edi   #  20    0x605c8  5      
  movl %r13d, 0xffcff24(%rip)   #  21    0x605cd  7      
  nop                           #  22    0x605d4  1      
  callq .__libnacl_irt_init     #  23    0x605d5  5      
  testq %r14, %r14              #  24    0x605da  3      
  je .L_60600                   #  25    0x605dd  6      
  movl %r14d, %edi              #  26    0x605e3  3      
  nop                           #  27    0x605e6  1      
  nop                           #  28    0x605e7  1      
  callq .atexit                 #  29    0x605e8  5      
.L_60600:                       #        0x605ed  0      
  movl $0x684e0, %edi           #  30    0x605ed  5      
  nop                           #  31    0x605f2  1      
  nop                           #  32    0x605f3  1      
  callq .atexit                 #  33    0x605f4  5      
  nop                           #  34    0x605f9  1      
  nop                           #  35    0x605fa  1      
  callq .__pthread_initialize   #  36    0x605fb  5      
  nop                           #  37    0x60600  1      
  nop                           #  38    0x60601  1      
  callq .__libc_init_array      #  39    0x60602  5      
  movl $0x0, %edx               #  40    0x60607  5      
  movl $0x3fa60, %eax           #  41    0x6060c  5      
  movl %ebx, %edi               #  42    0x60611  2      
  testl %edx, %edx              #  43    0x60613  2      
  movl $0x0, %edx               #  44    0x60615  5      
  movl %r12d, %esi              #  45    0x6061a  3      
  cmovneq %rdx, %rax            #  46    0x6061d  4      
  movl %r13d, %edx              #  47    0x60621  3      
  nop                           #  48    0x60624  1      
  nop                           #  49    0x60625  1      
  nop                           #  50    0x60626  1      
  andl $0xffffffe0, %eax        #  51    0x60627  5      
  addq %r15, %rax               #  52    0x6062c  3      
  callq %rax                    #  53    0x6062f  2      
  movl %eax, %edi               #  54    0x60631  2      
  nop                           #  55    0x60633  1      
  nop                           #  56    0x60634  1      
  callq .exit                   #  57    0x60635  5      
                                                         
.size _start, .-_start

