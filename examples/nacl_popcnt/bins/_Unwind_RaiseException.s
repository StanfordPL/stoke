  .text
  .globl _Unwind_RaiseException
  .type _Unwind_RaiseException, @function

#! file-offset 0x5da40
#! rip-offset  0x5da40
#! capacity    640 bytes

# Text                                  #  Line  RIP      Bytes  
._Unwind_RaiseException:                #        0x5da40  0      
  pushq %rbp                            #  1     0x5da40  2      
  movq %rsp, %rbp                       #  2     0x5da42  3      
  pushq %r14                            #  3     0x5da45  3      
  leal -0xc0(%rbp), %r14d               #  4     0x5da48  7      
  pushq %r13                            #  5     0x5da4f  3      
  movl %edi, %r13d                      #  6     0x5da52  3      
  movl %r14d, %edi                      #  7     0x5da55  3      
  pushq %r12                            #  8     0x5da58  3      
  leal -0x2c0(%rbp), %r12d              #  9     0x5da5b  7      
  pushq %rbx                            #  10    0x5da62  2      
  nop                                   #  11    0x5da64  1      
  leal -0x150(%rbp), %ebx               #  12    0x5da65  6      
  pushq %rdx                            #  13    0x5da6b  2      
  pushq %rax                            #  14    0x5da6d  2      
  leal 0x10(%rbp), %eax                 #  15    0x5da6f  3      
  subl $0x290, %esp                     #  16    0x5da72  6      
  addq %r15, %rsp                       #  17    0x5da78  3      
  movl 0x8(%rbp), %edx                  #  18    0x5da7b  3      
  movl %eax, %esi                       #  19    0x5da7e  2      
  xchgw %ax, %ax                        #  20    0x5da80  3      
  callq .uw_init_context_1              #  21    0x5da83  5      
  movl $0x12, %ecx                      #  22    0x5da88  5      
  movq %rbx, %rdi                       #  23    0x5da8d  3      
  movq %r14, %rsi                       #  24    0x5da90  3      
  movl %esi, %esi                       #  25    0x5da93  2      
  leaq (%r15,%rsi,1), %rsi              #  26    0x5da95  4      
  movl %edi, %edi                       #  27    0x5da99  2      
  leaq (%r15,%rdi,1), %rdi              #  28    0x5da9b  4      
  rep movsq %ds:(%rsi), %es:(%rdi)      #  29    0x5da9f  4      
  movl %esi, %esi                       #  30    0x5daa3  2      
  movl %edi, %edi                       #  31    0x5daa5  2      
  xchgw %ax, %ax                        #  32    0x5daa7  3      
  jmpq .L_5db40                         #  33    0x5daaa  5      
  nop                                   #  34    0x5daaf  1      
  nop                                   #  35    0x5dab0  1      
.L_5dac0:                               #        0x5dab1  0      
  testl %eax, %eax                      #  36    0x5dab1  2      
  jne .L_5dbc0                          #  37    0x5dab3  6      
  movl -0x17c(%rbp), %eax               #  38    0x5dab9  6      
  testq %rax, %rax                      #  39    0x5dabf  3      
  je .L_5db20                           #  40    0x5dac2  6      
  movl %ebx, %r8d                       #  41    0x5dac8  3      
  movl %r13d, %ecx                      #  42    0x5dacb  3      
  movl %r13d, %r13d                     #  43    0x5dace  3      
  movq (%r15,%r13,1), %rdx              #  44    0x5dad1  4      
  movl $0x1, %esi                       #  45    0x5dad5  5      
  movl $0x1, %edi                       #  46    0x5dada  5      
  nop                                   #  47    0x5dadf  1      
  andl $0xffffffe0, %eax                #  48    0x5dae0  5      
  addq %r15, %rax                       #  49    0x5dae5  3      
  callq %rax                            #  50    0x5dae8  2      
  cmpl $0x6, %eax                       #  51    0x5daea  3      
  je .L_5dbe0                           #  52    0x5daed  6      
  cmpl $0x8, %eax                       #  53    0x5daf3  3      
  jne .L_5dbc0                          #  54    0x5daf6  6      
  nop                                   #  55    0x5dafc  1      
.L_5db20:                               #        0x5dafd  0      
  movl %r12d, %esi                      #  56    0x5dafd  3      
  movl %ebx, %edi                       #  57    0x5db00  2      
  nop                                   #  58    0x5db02  1      
  nop                                   #  59    0x5db03  1      
  callq .uw_update_context              #  60    0x5db04  5      
.L_5db40:                               #        0x5db09  0      
  movl %r12d, %esi                      #  61    0x5db09  3      
  movl %ebx, %edi                       #  62    0x5db0c  2      
  nop                                   #  63    0x5db0e  1      
  nop                                   #  64    0x5db0f  1      
  callq .uw_frame_state_for             #  65    0x5db10  5      
  cmpl $0x5, %eax                       #  66    0x5db15  3      
  jne .L_5dac0                          #  67    0x5db18  6      
  nop                                   #  68    0x5db1e  1      
  nop                                   #  69    0x5db1f  1      
.L_5db80:                               #        0x5db20  0      
  movq -0x20(%rbp), %rbx                #  70    0x5db20  4      
  movq -0x18(%rbp), %r12                #  71    0x5db24  4      
  movq -0x10(%rbp), %r13                #  72    0x5db28  4      
  movq -0x8(%rbp), %r14                 #  73    0x5db2c  4      
  movq %rbp, %rsp                       #  74    0x5db30  3      
  popq %r11                             #  75    0x5db33  3      
  movl %r11d, %ebp                      #  76    0x5db36  3      
  addq %r15, %rbp                       #  77    0x5db39  3      
  popq %r11                             #  78    0x5db3c  3      
  nop                                   #  79    0x5db3f  1      
  andl $0xffffffe0, %r11d               #  80    0x5db40  7      
  addq %r15, %r11                       #  81    0x5db47  3      
  jmpq %r11                             #  82    0x5db4a  3      
  nop                                   #  83    0x5db4d  1      
  nop                                   #  84    0x5db4e  1      
.L_5dbc0:                               #        0x5db4f  0      
  movl $0x3, %eax                       #  85    0x5db4f  5      
  jmpq .L_5db80                         #  86    0x5db54  5      
  nop                                   #  87    0x5db59  1      
  nop                                   #  88    0x5db5a  1      
.L_5dbe0:                               #        0x5db5b  0      
  movl %ebx, %edi                       #  89    0x5db5b  2      
  movl %r13d, %r13d                     #  90    0x5db5d  3      
  movq $0x0, 0x10(%r15,%r13,1)          #  91    0x5db60  9      
  nop                                   #  92    0x5db69  1      
  callq ._Unwind_GetCFA                 #  93    0x5db6a  5      
  movl %eax, %eax                       #  94    0x5db6f  2      
  movl $0x12, %ecx                      #  95    0x5db71  5      
  movq %rbx, %rdi                       #  96    0x5db76  3      
  movl %r13d, %r13d                     #  97    0x5db79  3      
  movq %rax, 0x18(%r15,%r13,1)          #  98    0x5db7c  5      
  movq %r14, %rsi                       #  99    0x5db81  3      
  nop                                   #  100   0x5db84  1      
  movl %esi, %esi                       #  101   0x5db85  2      
  leaq (%r15,%rsi,1), %rsi              #  102   0x5db87  4      
  movl %edi, %edi                       #  103   0x5db8b  2      
  leaq (%r15,%rdi,1), %rdi              #  104   0x5db8d  4      
  rep movsq %ds:(%rsi), %es:(%rdi)      #  105   0x5db91  4      
  movl %esi, %esi                       #  106   0x5db95  2      
  movl %edi, %edi                       #  107   0x5db97  2      
  movl %ebx, %esi                       #  108   0x5db99  2      
  movl %r13d, %edi                      #  109   0x5db9b  3      
  nop                                   #  110   0x5db9e  1      
  callq ._Unwind_RaiseException_Phase2  #  111   0x5db9f  5      
  cmpl $0x7, %eax                       #  112   0x5dba4  3      
  jne .L_5db80                          #  113   0x5dba7  6      
  movl %ebx, %esi                       #  114   0x5dbad  2      
  movl %r14d, %edi                      #  115   0x5dbaf  3      
  nop                                   #  116   0x5dbb2  1      
  callq .uw_install_context_1           #  117   0x5dbb3  5      
  movl -0x104(%rbp), %edx               #  118   0x5dbb8  6      
  movl %eax, %ecx                       #  119   0x5dbbe  2      
  leal 0x10(%rbp), %eax                 #  120   0x5dbc0  3      
  addq %rcx, %rax                       #  121   0x5dbc3  3      
  leal 0x8(%rbp,%rcx,1), %ecx           #  122   0x5dbc6  4      
  movl %eax, %eax                       #  123   0x5dbca  2      
  movq %rdx, -0x8(%r15,%rax,1)          #  124   0x5dbcc  5      
  movq -0x30(%rbp), %rax                #  125   0x5dbd1  4      
  nop                                   #  126   0x5dbd5  1      
  movq -0x28(%rbp), %rdx                #  127   0x5dbd6  4      
  movq -0x20(%rbp), %rbx                #  128   0x5dbda  4      
  movq -0x18(%rbp), %r12                #  129   0x5dbde  4      
  movq -0x10(%rbp), %r13                #  130   0x5dbe2  4      
  movq -0x8(%rbp), %r14                 #  131   0x5dbe6  4      
  movl (%rbp), %ebp                     #  132   0x5dbea  3      
  addq %r15, %rbp                       #  133   0x5dbed  3      
  movl %ecx, %esp                       #  134   0x5dbf0  2      
  addq %r15, %rsp                       #  135   0x5dbf2  3      
  nop                                   #  136   0x5dbf5  1      
  popq %r11                             #  137   0x5dbf6  3      
  andl $0xffffffe0, %r11d               #  138   0x5dbf9  7      
  addq %r15, %r11                       #  139   0x5dc00  3      
  jmpq %r11                             #  140   0x5dc03  3      
  nop                                   #  141   0x5dc06  1      
  nop                                   #  142   0x5dc07  1      
                                                                 
.size _Unwind_RaiseException, .-_Unwind_RaiseException

