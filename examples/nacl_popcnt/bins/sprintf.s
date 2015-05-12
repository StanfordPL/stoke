  .text
  .globl sprintf
  .type sprintf, @function

#! file-offset 0x6abc0
#! rip-offset  0x6abc0
#! capacity    352 bytes

# Text                              #  Line  RIP      Bytes  
.sprintf:                           #        0x6abc0  0      
  movq %rbx, -0x18(%rsp)            #  1     0x6abc0  5      
  movq %r12, -0x10(%rsp)            #  2     0x6abc5  5      
  movl %edi, %edi                   #  3     0x6abca  2      
  movq %r13, -0x8(%rsp)             #  4     0x6abcc  5      
  subl $0x158, %esp                 #  5     0x6abd1  6      
  addq %r15, %rsp                   #  6     0x6abd7  3      
  movl %esi, %r12d                  #  7     0x6abda  3      
  nop                               #  8     0x6abdd  1      
  leal 0x13f(%rsp), %eax            #  9     0x6abde  7      
  movq %rdx, 0xa0(%rsp)             #  10    0x6abe5  8      
  movq %rcx, 0xa8(%rsp)             #  11    0x6abed  8      
  movq %r8, 0xb0(%rsp)              #  12    0x6abf5  8      
  nop                               #  13    0x6abfd  1      
  movq %r9, 0xb8(%rsp)              #  14    0x6abfe  8      
  leal 0x80(%rsp), %r13d            #  15    0x6ac06  8      
  movl %eax, %eax                   #  16    0x6ac0e  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  17    0x6ac10  6      
  movl %eax, %eax                   #  18    0x6ac16  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  19    0x6ac18  6      
  movl %eax, %eax                   #  20    0x6ac1e  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  21    0x6ac20  6      
  movl %eax, %eax                   #  22    0x6ac26  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  23    0x6ac28  6      
  movl %eax, %eax                   #  24    0x6ac2e  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  25    0x6ac30  6      
  movl %eax, %eax                   #  26    0x6ac36  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  27    0x6ac38  6      
  movl %eax, %eax                   #  28    0x6ac3e  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  29    0x6ac40  6      
  movl %eax, %eax                   #  30    0x6ac46  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  31    0x6ac48  6      
  leal 0x160(%rsp), %eax            #  32    0x6ac4e  7      
  movl %edi, (%rsp)                 #  33    0x6ac55  3      
  movl %edi, 0x10(%rsp)             #  34    0x6ac58  4      
  xchgw %ax, %ax                    #  35    0x6ac5c  3      
  movw $0x208, 0xc(%rsp)            #  36    0x6ac5f  7      
  movl %eax, 0x88(%rsp)             #  37    0x6ac66  7      
  leal 0x90(%rsp), %eax             #  38    0x6ac6d  7      
  movl $0x7fffffff, 0x8(%rsp)       #  39    0x6ac74  8      
  nop                               #  40    0x6ac7c  1      
  movl $0x7fffffff, 0x14(%rsp)      #  41    0x6ac7d  8      
  movw $0xffff, 0xe(%rsp)           #  42    0x6ac85  7      
  movl $0x10, 0x80(%rsp)            #  43    0x6ac8c  11     
  nop                               #  44    0x6ac97  1      
  movl $0x30, 0x84(%rsp)            #  45    0x6ac98  11     
  movl %eax, 0x8c(%rsp)             #  46    0x6aca3  7      
  nop                               #  47    0x6acaa  1      
  callq .__nacl_read_tp             #  48    0x6acab  5      
  leaq -0x480(%rax), %rax           #  49    0x6acb0  7      
  movl %r12d, %edx                  #  50    0x6acb7  3      
  movl %r13d, %ecx                  #  51    0x6acba  3      
  movl %esp, %esi                   #  52    0x6acbd  2      
  movl %eax, %eax                   #  53    0x6acbf  2      
  movl (%r15,%rax,1), %edi          #  54    0x6acc1  4      
  nop                               #  55    0x6acc5  1      
  callq ._svfprintf_r               #  56    0x6acc6  5      
  movl (%rsp), %edx                 #  57    0x6accb  3      
  movl %edx, %edx                   #  58    0x6acce  2      
  movb $0x0, (%r15,%rdx,1)          #  59    0x6acd0  5      
  movq 0x140(%rsp), %rbx            #  60    0x6acd5  8      
  movq 0x148(%rsp), %r12            #  61    0x6acdd  8      
  nop                               #  62    0x6ace5  1      
  movq 0x150(%rsp), %r13            #  63    0x6ace6  8      
  addl $0x158, %esp                 #  64    0x6acee  6      
  addq %r15, %rsp                   #  65    0x6acf4  3      
  popq %r11                         #  66    0x6acf7  3      
  andl $0xffffffe0, %r11d           #  67    0x6acfa  7      
  addq %r15, %r11                   #  68    0x6ad01  3      
  jmpq %r11                         #  69    0x6ad04  3      
  nop                               #  70    0x6ad07  1      
                                                             
.size sprintf, .-sprintf

