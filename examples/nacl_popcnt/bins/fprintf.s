  .text
  .globl fprintf
  .type fprintf, @function

#! file-offset 0x68580
#! rip-offset  0x68580
#! capacity    288 bytes

# Text                              #  Line  RIP      Bytes  
.fprintf:                           #        0x68580  0      
  movq %rbx, -0x18(%rsp)            #  1     0x68580  5      
  movq %r12, -0x10(%rsp)            #  2     0x68585  5      
  movl %edi, %ebx                   #  3     0x6858a  2      
  movq %r13, -0x8(%rsp)             #  4     0x6858c  5      
  subl $0xd8, %esp                  #  5     0x68591  3      
  addq %r15, %rsp                   #  6     0x68594  3      
  movl %esi, %r12d                  #  7     0x68597  3      
  nop                               #  8     0x6859a  1      
  leal 0xbf(%rsp), %eax             #  9     0x6859b  7      
  movq %rdx, 0x20(%rsp)             #  10    0x685a2  5      
  movq %rcx, 0x28(%rsp)             #  11    0x685a7  5      
  movq %r8, 0x30(%rsp)              #  12    0x685ac  5      
  movq %r9, 0x38(%rsp)              #  13    0x685b1  5      
  nop                               #  14    0x685b6  1      
  movl %eax, %eax                   #  15    0x685b7  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  16    0x685b9  6      
  movl %eax, %eax                   #  17    0x685bf  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  18    0x685c1  6      
  movl %eax, %eax                   #  19    0x685c7  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  20    0x685c9  6      
  movl %eax, %eax                   #  21    0x685cf  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  22    0x685d1  6      
  movl %eax, %eax                   #  23    0x685d7  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  24    0x685d9  6      
  movl %eax, %eax                   #  25    0x685df  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  26    0x685e1  6      
  movl %eax, %eax                   #  27    0x685e7  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  28    0x685e9  6      
  movl %eax, %eax                   #  29    0x685ef  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  30    0x685f1  6      
  leal 0xe0(%rsp), %eax             #  31    0x685f7  7      
  movl $0x10, (%rsp)                #  32    0x685fe  7      
  movl $0x30, 0x4(%rsp)             #  33    0x68605  8      
  movl %eax, 0x8(%rsp)              #  34    0x6860d  4      
  leal 0x10(%rsp), %eax             #  35    0x68611  4      
  xchgw %ax, %ax                    #  36    0x68615  3      
  movl %eax, 0xc(%rsp)              #  37    0x68618  4      
  nop                               #  38    0x6861c  1      
  nop                               #  39    0x6861d  1      
  callq .__nacl_read_tp             #  40    0x6861e  5      
  leaq -0x480(%rax), %rax           #  41    0x68623  7      
  movl %esp, %ecx                   #  42    0x6862a  2      
  movl %r12d, %edx                  #  43    0x6862c  3      
  movl %ebx, %esi                   #  44    0x6862f  2      
  movl %eax, %eax                   #  45    0x68631  2      
  movl (%r15,%rax,1), %edi          #  46    0x68633  4      
  nop                               #  47    0x68637  1      
  callq ._vfprintf_r                #  48    0x68638  5      
  movq 0xc0(%rsp), %rbx             #  49    0x6863d  8      
  movq 0xc8(%rsp), %r12             #  50    0x68645  8      
  movq 0xd0(%rsp), %r13             #  51    0x6864d  8      
  nop                               #  52    0x68655  1      
  addl $0xd8, %esp                  #  53    0x68656  3      
  addq %r15, %rsp                   #  54    0x68659  3      
  popq %r11                         #  55    0x6865c  3      
  andl $0xffffffe0, %r11d           #  56    0x6865f  7      
  addq %r15, %r11                   #  57    0x68666  3      
  jmpq %r11                         #  58    0x68669  3      
  nop                               #  59    0x6866c  1      
                                                             
.size fprintf, .-fprintf

