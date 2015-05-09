  .text
  .globl _start
  .type _start, @function

#! file-offset 0x604e0
#! rip-offset  0x604e0
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
._start:                        #        0x604e0  0      
  movl %edi, %eax               #  1     0x604e0  2      
  movq %r12, -0x18(%rsp)        #  2     0x604e2  5      
  movq %r13, -0x10(%rsp)        #  3     0x604e7  5      
  movq %rbx, -0x20(%rsp)        #  4     0x604ec  5      
  movq %r14, -0x8(%rsp)         #  5     0x604f1  5      
  subl $0x38, %esp              #  6     0x604f6  3      
  addq %r15, %rsp               #  7     0x604f9  3      
  nop                           #  8     0x604fc  1      
  movl %eax, %eax               #  9     0x604fd  2      
  movl 0x8(%r15,%rax,1), %ebx   #  10    0x604ff  5      
  leal 0xc(%rax), %r12d         #  11    0x60504  4      
  movl %edi, 0xc(%rsp)          #  12    0x60508  4      
  movl %eax, %eax               #  13    0x6050c  2      
  movl 0x4(%r15,%rax,1), %edi   #  14    0x6050e  5      
  movl %eax, %eax               #  15    0x60513  2      
  movl (%r15,%rax,1), %r14d     #  16    0x60515  4      
  leal 0xc(%rsp), %eax          #  17    0x60519  4      
  leal 0x4(%r12,%rbx,4), %r13d  #  18    0x6051d  5      
  movl %eax, 0xffd68bc(%rip)    #  19    0x60522  6      
  leal 0x4(%r13,%rdi,4), %edi   #  20    0x60528  5      
  movl %r13d, 0xffcffc4(%rip)   #  21    0x6052d  7      
  nop                           #  22    0x60534  1      
  callq .__libnacl_irt_init     #  23    0x60535  5      
  testq %r14, %r14              #  24    0x6053a  3      
  je .L_60560                   #  25    0x6053d  6      
  movl %r14d, %edi              #  26    0x60543  3      
  nop                           #  27    0x60546  1      
  nop                           #  28    0x60547  1      
  callq .atexit                 #  29    0x60548  5      
.L_60560:                       #        0x6054d  0      
  movl $0x68440, %edi           #  30    0x6054d  5      
  nop                           #  31    0x60552  1      
  nop                           #  32    0x60553  1      
  callq .atexit                 #  33    0x60554  5      
  nop                           #  34    0x60559  1      
  nop                           #  35    0x6055a  1      
  callq .__pthread_initialize   #  36    0x6055b  5      
  nop                           #  37    0x60560  1      
  nop                           #  38    0x60561  1      
  callq .__libc_init_array      #  39    0x60562  5      
  movl $0x0, %edx               #  40    0x60567  5      
  movl $0x3f9c0, %eax           #  41    0x6056c  5      
  movl %ebx, %edi               #  42    0x60571  2      
  testl %edx, %edx              #  43    0x60573  2      
  movl $0x0, %edx               #  44    0x60575  5      
  movl %r12d, %esi              #  45    0x6057a  3      
  cmovneq %rdx, %rax            #  46    0x6057d  4      
  movl %r13d, %edx              #  47    0x60581  3      
  nop                           #  48    0x60584  1      
  nop                           #  49    0x60585  1      
  nop                           #  50    0x60586  1      
  andl $0xffffffe0, %eax        #  51    0x60587  5      
  addq %r15, %rax               #  52    0x6058c  3      
  callq %rax                    #  53    0x6058f  2      
  movl %eax, %edi               #  54    0x60591  2      
  nop                           #  55    0x60593  1      
  nop                           #  56    0x60594  1      
  callq .exit                   #  57    0x60595  5      
                                                         
.size _start, .-_start

