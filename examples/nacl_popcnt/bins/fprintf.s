  .text
  .globl fprintf
  .type fprintf, @function

#! file-offset 0x684e0
#! rip-offset  0x684e0
#! capacity    288 bytes

# Text                              #  Line  RIP      Bytes  
.fprintf:                           #        0x684e0  0      
  movq %rbx, -0x18(%rsp)            #  1     0x684e0  5      
  movq %r12, -0x10(%rsp)            #  2     0x684e5  5      
  movl %edi, %ebx                   #  3     0x684ea  2      
  movq %r13, -0x8(%rsp)             #  4     0x684ec  5      
  subl $0xd8, %esp                  #  5     0x684f1  3      
  addq %r15, %rsp                   #  6     0x684f4  3      
  movl %esi, %r12d                  #  7     0x684f7  3      
  nop                               #  8     0x684fa  1      
  leal 0xbf(%rsp), %eax             #  9     0x684fb  7      
  movq %rdx, 0x20(%rsp)             #  10    0x68502  5      
  movq %rcx, 0x28(%rsp)             #  11    0x68507  5      
  movq %r8, 0x30(%rsp)              #  12    0x6850c  5      
  movq %r9, 0x38(%rsp)              #  13    0x68511  5      
  nop                               #  14    0x68516  1      
  movl %eax, %eax                   #  15    0x68517  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  16    0x68519  6      
  movl %eax, %eax                   #  17    0x6851f  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  18    0x68521  6      
  movl %eax, %eax                   #  19    0x68527  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  20    0x68529  6      
  movl %eax, %eax                   #  21    0x6852f  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  22    0x68531  6      
  movl %eax, %eax                   #  23    0x68537  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  24    0x68539  6      
  movl %eax, %eax                   #  25    0x6853f  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  26    0x68541  6      
  movl %eax, %eax                   #  27    0x68547  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  28    0x68549  6      
  movl %eax, %eax                   #  29    0x6854f  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  30    0x68551  6      
  leal 0xe0(%rsp), %eax             #  31    0x68557  7      
  movl $0x10, (%rsp)                #  32    0x6855e  7      
  movl $0x30, 0x4(%rsp)             #  33    0x68565  8      
  movl %eax, 0x8(%rsp)              #  34    0x6856d  4      
  leal 0x10(%rsp), %eax             #  35    0x68571  4      
  xchgw %ax, %ax                    #  36    0x68575  3      
  movl %eax, 0xc(%rsp)              #  37    0x68578  4      
  nop                               #  38    0x6857c  1      
  nop                               #  39    0x6857d  1      
  callq .__nacl_read_tp             #  40    0x6857e  5      
  leaq -0x480(%rax), %rax           #  41    0x68583  7      
  movl %esp, %ecx                   #  42    0x6858a  2      
  movl %r12d, %edx                  #  43    0x6858c  3      
  movl %ebx, %esi                   #  44    0x6858f  2      
  movl %eax, %eax                   #  45    0x68591  2      
  movl (%r15,%rax,1), %edi          #  46    0x68593  4      
  nop                               #  47    0x68597  1      
  callq ._vfprintf_r                #  48    0x68598  5      
  movq 0xc0(%rsp), %rbx             #  49    0x6859d  8      
  movq 0xc8(%rsp), %r12             #  50    0x685a5  8      
  movq 0xd0(%rsp), %r13             #  51    0x685ad  8      
  nop                               #  52    0x685b5  1      
  addl $0xd8, %esp                  #  53    0x685b6  3      
  addq %r15, %rsp                   #  54    0x685b9  3      
  popq %r11                         #  55    0x685bc  3      
  andl $0xffffffe0, %r11d           #  56    0x685bf  7      
  addq %r15, %r11                   #  57    0x685c6  3      
  jmpq %r11                         #  58    0x685c9  3      
  nop                               #  59    0x685cc  1      
                                                             
.size fprintf, .-fprintf

