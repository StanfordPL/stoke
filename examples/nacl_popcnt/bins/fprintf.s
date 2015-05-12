  .text
  .globl fprintf
  .type fprintf, @function

#! file-offset 0x68500
#! rip-offset  0x68500
#! capacity    288 bytes

# Text                              #  Line  RIP      Bytes  
.fprintf:                           #        0x68500  0      
  movq %rbx, -0x18(%rsp)            #  1     0x68500  5      
  movq %r12, -0x10(%rsp)            #  2     0x68505  5      
  movl %edi, %ebx                   #  3     0x6850a  2      
  movq %r13, -0x8(%rsp)             #  4     0x6850c  5      
  subl $0xd8, %esp                  #  5     0x68511  3      
  addq %r15, %rsp                   #  6     0x68514  3      
  movl %esi, %r12d                  #  7     0x68517  3      
  nop                               #  8     0x6851a  1      
  leal 0xbf(%rsp), %eax             #  9     0x6851b  7      
  movq %rdx, 0x20(%rsp)             #  10    0x68522  5      
  movq %rcx, 0x28(%rsp)             #  11    0x68527  5      
  movq %r8, 0x30(%rsp)              #  12    0x6852c  5      
  movq %r9, 0x38(%rsp)              #  13    0x68531  5      
  nop                               #  14    0x68536  1      
  movl %eax, %eax                   #  15    0x68537  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  16    0x68539  6      
  movl %eax, %eax                   #  17    0x6853f  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  18    0x68541  6      
  movl %eax, %eax                   #  19    0x68547  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  20    0x68549  6      
  movl %eax, %eax                   #  21    0x6854f  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  22    0x68551  6      
  movl %eax, %eax                   #  23    0x68557  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  24    0x68559  6      
  movl %eax, %eax                   #  25    0x6855f  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  26    0x68561  6      
  movl %eax, %eax                   #  27    0x68567  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  28    0x68569  6      
  movl %eax, %eax                   #  29    0x6856f  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  30    0x68571  6      
  leal 0xe0(%rsp), %eax             #  31    0x68577  7      
  movl $0x10, (%rsp)                #  32    0x6857e  7      
  movl $0x30, 0x4(%rsp)             #  33    0x68585  8      
  movl %eax, 0x8(%rsp)              #  34    0x6858d  4      
  leal 0x10(%rsp), %eax             #  35    0x68591  4      
  xchgw %ax, %ax                    #  36    0x68595  3      
  movl %eax, 0xc(%rsp)              #  37    0x68598  4      
  nop                               #  38    0x6859c  1      
  nop                               #  39    0x6859d  1      
  callq .__nacl_read_tp             #  40    0x6859e  5      
  leaq -0x480(%rax), %rax           #  41    0x685a3  7      
  movl %esp, %ecx                   #  42    0x685aa  2      
  movl %r12d, %edx                  #  43    0x685ac  3      
  movl %ebx, %esi                   #  44    0x685af  2      
  movl %eax, %eax                   #  45    0x685b1  2      
  movl (%r15,%rax,1), %edi          #  46    0x685b3  4      
  nop                               #  47    0x685b7  1      
  callq ._vfprintf_r                #  48    0x685b8  5      
  movq 0xc0(%rsp), %rbx             #  49    0x685bd  8      
  movq 0xc8(%rsp), %r12             #  50    0x685c5  8      
  movq 0xd0(%rsp), %r13             #  51    0x685cd  8      
  nop                               #  52    0x685d5  1      
  addl $0xd8, %esp                  #  53    0x685d6  3      
  addq %r15, %rsp                   #  54    0x685d9  3      
  popq %r11                         #  55    0x685dc  3      
  andl $0xffffffe0, %r11d           #  56    0x685df  7      
  addq %r15, %r11                   #  57    0x685e6  3      
  jmpq %r11                         #  58    0x685e9  3      
  nop                               #  59    0x685ec  1      
                                                             
.size fprintf, .-fprintf

