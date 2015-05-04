  .text
  .globl _Unwind_Resume_or_Rethrow
  .type _Unwind_Resume_or_Rethrow, @function

#! file-offset 0x5dcc0
#! rip-offset  0x5dcc0
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
._Unwind_Resume_or_Rethrow:           #        0x5dcc0  0      
  pushq %rbp                          #  1     0x5dcc0  2      
  movq %rsp, %rbp                     #  2     0x5dcc2  3      
  movq %r12, -0x18(%rbp)              #  3     0x5dcc5  4      
  movl %edi, %r12d                    #  4     0x5dcc9  3      
  movq %rax, -0x30(%rbp)              #  5     0x5dccc  4      
  movq %rdx, -0x28(%rbp)              #  6     0x5dcd0  4      
  movq %rbx, -0x20(%rbp)              #  7     0x5dcd4  4      
  movq %r13, -0x10(%rbp)              #  8     0x5dcd8  4      
  movq %r14, -0x8(%rbp)               #  9     0x5dcdc  4      
  nop                                 #  10    0x5dce0  1      
  subl $0x150, %esp                   #  11    0x5dce1  6      
  addq %r15, %rsp                     #  12    0x5dce7  3      
  movl %r12d, %r12d                   #  13    0x5dcea  3      
  cmpq $0x0, 0x10(%r15,%r12,1)        #  14    0x5dced  6      
  jne .L_5dd40                        #  15    0x5dcf3  6      
  movl %r12d, %edi                    #  16    0x5dcf9  3      
  nop                                 #  17    0x5dcfc  1      
  callq ._Unwind_RaiseException       #  18    0x5dcfd  5      
  movq -0x20(%rbp), %rbx              #  19    0x5dd02  4      
  movq -0x18(%rbp), %r12              #  20    0x5dd06  4      
  movq -0x10(%rbp), %r13              #  21    0x5dd0a  4      
  movq -0x8(%rbp), %r14               #  22    0x5dd0e  4      
  movq %rbp, %rsp                     #  23    0x5dd12  3      
  popq %r11                           #  24    0x5dd15  3      
  movl %r11d, %ebp                    #  25    0x5dd18  3      
  addq %r15, %rbp                     #  26    0x5dd1b  3      
  popq %r11                           #  27    0x5dd1e  3      
  nop                                 #  28    0x5dd21  1      
  andl $0xffffffe0, %r11d             #  29    0x5dd22  7      
  addq %r15, %r11                     #  30    0x5dd29  3      
  jmpq %r11                           #  31    0x5dd2c  3      
  nop                                 #  32    0x5dd2f  1      
  nop                                 #  33    0x5dd30  1      
.L_5dd40:                             #        0x5dd31  0      
  leal 0x10(%rbp), %eax               #  34    0x5dd31  3      
  leal -0xc0(%rbp), %ebx              #  35    0x5dd34  6      
  movl 0x8(%rbp), %edx                #  36    0x5dd3a  3      
  leal -0x150(%rbp), %r13d            #  37    0x5dd3d  7      
  movl %eax, %esi                     #  38    0x5dd44  2      
  movl %ebx, %edi                     #  39    0x5dd46  2      
  nop                                 #  40    0x5dd48  1      
  callq .uw_init_context_1            #  41    0x5dd49  5      
  leal -0x150(%rbp), %edi             #  42    0x5dd4e  6      
  movl $0x12, %ecx                    #  43    0x5dd54  5      
  movq %rbx, %rsi                     #  44    0x5dd59  3      
  movl %esi, %esi                     #  45    0x5dd5c  2      
  leaq (%r15,%rsi,1), %rsi            #  46    0x5dd5e  4      
  movl %edi, %edi                     #  47    0x5dd62  2      
  leaq (%r15,%rdi,1), %rdi            #  48    0x5dd64  4      
  rep movsq %ds:(%rsi), %es:(%rdi)    #  49    0x5dd68  4      
  movl %esi, %esi                     #  50    0x5dd6c  2      
  nop                                 #  51    0x5dd6e  1      
  movl %edi, %edi                     #  52    0x5dd6f  2      
  movl %r13d, %esi                    #  53    0x5dd71  3      
  movl %r12d, %edi                    #  54    0x5dd74  3      
  nop                                 #  55    0x5dd77  1      
  nop                                 #  56    0x5dd78  1      
  callq ._Unwind_ForcedUnwind_Phase2  #  57    0x5dd79  5      
  cmpl $0x7, %eax                     #  58    0x5dd7e  3      
  je .L_5ddc0                         #  59    0x5dd81  6      
  nop                                 #  60    0x5dd87  1      
  nop                                 #  61    0x5dd88  1      
  callq .abort                        #  62    0x5dd89  5      
.L_5ddc0:                             #        0x5dd8e  0      
  movl %r13d, %esi                    #  63    0x5dd8e  3      
  movl %ebx, %edi                     #  64    0x5dd91  2      
  nop                                 #  65    0x5dd93  1      
  nop                                 #  66    0x5dd94  1      
  callq .uw_install_context_1         #  67    0x5dd95  5      
  movl -0x104(%rbp), %edx             #  68    0x5dd9a  6      
  movl %eax, %ecx                     #  69    0x5dda0  2      
  leal 0x10(%rbp), %eax               #  70    0x5dda2  3      
  addq %rcx, %rax                     #  71    0x5dda5  3      
  leal 0x8(%rbp,%rcx,1), %ecx         #  72    0x5dda8  4      
  movl %eax, %eax                     #  73    0x5ddac  2      
  movq %rdx, -0x8(%r15,%rax,1)        #  74    0x5ddae  5      
  movq -0x30(%rbp), %rax              #  75    0x5ddb3  4      
  nop                                 #  76    0x5ddb7  1      
  movq -0x28(%rbp), %rdx              #  77    0x5ddb8  4      
  movq -0x20(%rbp), %rbx              #  78    0x5ddbc  4      
  movq -0x18(%rbp), %r12              #  79    0x5ddc0  4      
  movq -0x10(%rbp), %r13              #  80    0x5ddc4  4      
  movq -0x8(%rbp), %r14               #  81    0x5ddc8  4      
  movl (%rbp), %ebp                   #  82    0x5ddcc  3      
  addq %r15, %rbp                     #  83    0x5ddcf  3      
  movl %ecx, %esp                     #  84    0x5ddd2  2      
  addq %r15, %rsp                     #  85    0x5ddd4  3      
  nop                                 #  86    0x5ddd7  1      
  popq %r11                           #  87    0x5ddd8  3      
  andl $0xffffffe0, %r11d             #  88    0x5dddb  7      
  addq %r15, %r11                     #  89    0x5dde2  3      
  jmpq %r11                           #  90    0x5dde5  3      
  nop                                 #  91    0x5dde8  1      
  nop                                 #  92    0x5dde9  1      
  nop                                 #  93    0x5ddea  1      
  nop                                 #  94    0x5ddeb  1      
  nop                                 #  95    0x5ddec  1      
  nop                                 #  96    0x5dded  1      
  nop                                 #  97    0x5ddee  1      
  nop                                 #  98    0x5ddef  1      
  nop                                 #  99    0x5ddf0  1      
  nop                                 #  100   0x5ddf1  1      
  nop                                 #  101   0x5ddf2  1      
  nop                                 #  102   0x5ddf3  1      
  nop                                 #  103   0x5ddf4  1      
  nop                                 #  104   0x5ddf5  1      
  nop                                 #  105   0x5ddf6  1      
  nop                                 #  106   0x5ddf7  1      
  nop                                 #  107   0x5ddf8  1      
  nop                                 #  108   0x5ddf9  1      
  nop                                 #  109   0x5ddfa  1      
  nop                                 #  110   0x5ddfb  1      
                                                               
.size _Unwind_Resume_or_Rethrow, .-_Unwind_Resume_or_Rethrow

