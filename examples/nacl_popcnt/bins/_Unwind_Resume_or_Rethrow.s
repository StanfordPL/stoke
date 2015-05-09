  .text
  .globl _Unwind_Resume_or_Rethrow
  .type _Unwind_Resume_or_Rethrow, @function

#! file-offset 0x5dc20
#! rip-offset  0x5dc20
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
._Unwind_Resume_or_Rethrow:           #        0x5dc20  0      
  pushq %rbp                          #  1     0x5dc20  2      
  movq %rsp, %rbp                     #  2     0x5dc22  3      
  movq %r12, -0x18(%rbp)              #  3     0x5dc25  4      
  movl %edi, %r12d                    #  4     0x5dc29  3      
  movq %rax, -0x30(%rbp)              #  5     0x5dc2c  4      
  movq %rdx, -0x28(%rbp)              #  6     0x5dc30  4      
  movq %rbx, -0x20(%rbp)              #  7     0x5dc34  4      
  movq %r13, -0x10(%rbp)              #  8     0x5dc38  4      
  movq %r14, -0x8(%rbp)               #  9     0x5dc3c  4      
  nop                                 #  10    0x5dc40  1      
  subl $0x150, %esp                   #  11    0x5dc41  6      
  addq %r15, %rsp                     #  12    0x5dc47  3      
  movl %r12d, %r12d                   #  13    0x5dc4a  3      
  cmpq $0x0, 0x10(%r15,%r12,1)        #  14    0x5dc4d  6      
  jne .L_5dca0                        #  15    0x5dc53  6      
  movl %r12d, %edi                    #  16    0x5dc59  3      
  nop                                 #  17    0x5dc5c  1      
  callq ._Unwind_RaiseException       #  18    0x5dc5d  5      
  movq -0x20(%rbp), %rbx              #  19    0x5dc62  4      
  movq -0x18(%rbp), %r12              #  20    0x5dc66  4      
  movq -0x10(%rbp), %r13              #  21    0x5dc6a  4      
  movq -0x8(%rbp), %r14               #  22    0x5dc6e  4      
  movq %rbp, %rsp                     #  23    0x5dc72  3      
  popq %r11                           #  24    0x5dc75  3      
  movl %r11d, %ebp                    #  25    0x5dc78  3      
  addq %r15, %rbp                     #  26    0x5dc7b  3      
  popq %r11                           #  27    0x5dc7e  3      
  nop                                 #  28    0x5dc81  1      
  andl $0xffffffe0, %r11d             #  29    0x5dc82  7      
  addq %r15, %r11                     #  30    0x5dc89  3      
  jmpq %r11                           #  31    0x5dc8c  3      
  nop                                 #  32    0x5dc8f  1      
  nop                                 #  33    0x5dc90  1      
.L_5dca0:                             #        0x5dc91  0      
  leal 0x10(%rbp), %eax               #  34    0x5dc91  3      
  leal -0xc0(%rbp), %ebx              #  35    0x5dc94  6      
  movl 0x8(%rbp), %edx                #  36    0x5dc9a  3      
  leal -0x150(%rbp), %r13d            #  37    0x5dc9d  7      
  movl %eax, %esi                     #  38    0x5dca4  2      
  movl %ebx, %edi                     #  39    0x5dca6  2      
  nop                                 #  40    0x5dca8  1      
  callq .uw_init_context_1            #  41    0x5dca9  5      
  leal -0x150(%rbp), %edi             #  42    0x5dcae  6      
  movl $0x12, %ecx                    #  43    0x5dcb4  5      
  movq %rbx, %rsi                     #  44    0x5dcb9  3      
  movl %esi, %esi                     #  45    0x5dcbc  2      
  leaq (%r15,%rsi,1), %rsi            #  46    0x5dcbe  4      
  movl %edi, %edi                     #  47    0x5dcc2  2      
  leaq (%r15,%rdi,1), %rdi            #  48    0x5dcc4  4      
  rep movsq %ds:(%rsi), %es:(%rdi)    #  49    0x5dcc8  4      
  movl %esi, %esi                     #  50    0x5dccc  2      
  nop                                 #  51    0x5dcce  1      
  movl %edi, %edi                     #  52    0x5dccf  2      
  movl %r13d, %esi                    #  53    0x5dcd1  3      
  movl %r12d, %edi                    #  54    0x5dcd4  3      
  nop                                 #  55    0x5dcd7  1      
  nop                                 #  56    0x5dcd8  1      
  callq ._Unwind_ForcedUnwind_Phase2  #  57    0x5dcd9  5      
  cmpl $0x7, %eax                     #  58    0x5dcde  3      
  je .L_5dd20                         #  59    0x5dce1  6      
  nop                                 #  60    0x5dce7  1      
  nop                                 #  61    0x5dce8  1      
  callq .abort                        #  62    0x5dce9  5      
.L_5dd20:                             #        0x5dcee  0      
  movl %r13d, %esi                    #  63    0x5dcee  3      
  movl %ebx, %edi                     #  64    0x5dcf1  2      
  nop                                 #  65    0x5dcf3  1      
  nop                                 #  66    0x5dcf4  1      
  callq .uw_install_context_1         #  67    0x5dcf5  5      
  movl -0x104(%rbp), %edx             #  68    0x5dcfa  6      
  movl %eax, %ecx                     #  69    0x5dd00  2      
  leal 0x10(%rbp), %eax               #  70    0x5dd02  3      
  addq %rcx, %rax                     #  71    0x5dd05  3      
  leal 0x8(%rbp,%rcx,1), %ecx         #  72    0x5dd08  4      
  movl %eax, %eax                     #  73    0x5dd0c  2      
  movq %rdx, -0x8(%r15,%rax,1)        #  74    0x5dd0e  5      
  movq -0x30(%rbp), %rax              #  75    0x5dd13  4      
  nop                                 #  76    0x5dd17  1      
  movq -0x28(%rbp), %rdx              #  77    0x5dd18  4      
  movq -0x20(%rbp), %rbx              #  78    0x5dd1c  4      
  movq -0x18(%rbp), %r12              #  79    0x5dd20  4      
  movq -0x10(%rbp), %r13              #  80    0x5dd24  4      
  movq -0x8(%rbp), %r14               #  81    0x5dd28  4      
  movl (%rbp), %ebp                   #  82    0x5dd2c  3      
  addq %r15, %rbp                     #  83    0x5dd2f  3      
  movl %ecx, %esp                     #  84    0x5dd32  2      
  addq %r15, %rsp                     #  85    0x5dd34  3      
  nop                                 #  86    0x5dd37  1      
  popq %r11                           #  87    0x5dd38  3      
  andl $0xffffffe0, %r11d             #  88    0x5dd3b  7      
  addq %r15, %r11                     #  89    0x5dd42  3      
  jmpq %r11                           #  90    0x5dd45  3      
  nop                                 #  91    0x5dd48  1      
  nop                                 #  92    0x5dd49  1      
  nop                                 #  93    0x5dd4a  1      
  nop                                 #  94    0x5dd4b  1      
  nop                                 #  95    0x5dd4c  1      
  nop                                 #  96    0x5dd4d  1      
  nop                                 #  97    0x5dd4e  1      
  nop                                 #  98    0x5dd4f  1      
  nop                                 #  99    0x5dd50  1      
  nop                                 #  100   0x5dd51  1      
  nop                                 #  101   0x5dd52  1      
  nop                                 #  102   0x5dd53  1      
  nop                                 #  103   0x5dd54  1      
  nop                                 #  104   0x5dd55  1      
  nop                                 #  105   0x5dd56  1      
  nop                                 #  106   0x5dd57  1      
  nop                                 #  107   0x5dd58  1      
  nop                                 #  108   0x5dd59  1      
  nop                                 #  109   0x5dd5a  1      
  nop                                 #  110   0x5dd5b  1      
                                                               
.size _Unwind_Resume_or_Rethrow, .-_Unwind_Resume_or_Rethrow

