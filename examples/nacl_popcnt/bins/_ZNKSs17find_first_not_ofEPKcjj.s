  .text
  .globl _ZNKSs17find_first_not_ofEPKcjj
  .type _ZNKSs17find_first_not_ofEPKcjj, @function

#! file-offset 0x450e0
#! rip-offset  0x450e0
#! capacity    224 bytes

# Text                             #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofEPKcjj:  #        0x450e0  0      
  pushq %r14                       #  1     0x450e0  3      
  movl %edi, %edi                  #  2     0x450e3  2      
  movl %esi, %r14d                 #  3     0x450e5  3      
  pushq %r13                       #  4     0x450e8  3      
  pushq %r12                       #  5     0x450eb  3      
  pushq %rbx                       #  6     0x450ee  2      
  movl %edx, %ebx                  #  7     0x450f0  2      
  subl $0x18, %esp                 #  8     0x450f2  3      
  addq %r15, %rsp                  #  9     0x450f5  3      
  movl %edi, %edi                  #  10    0x450f8  2      
  movl (%r15,%rdi,1), %r12d        #  11    0x450fa  4      
  movl %ecx, 0xc(%rsp)             #  12    0x450fe  4      
  xchgw %ax, %ax                   #  13    0x45102  3      
  leal -0xc(%r12), %eax            #  14    0x45105  5      
  movl %eax, %eax                  #  15    0x4510a  2      
  movl (%r15,%rax,1), %r13d        #  16    0x4510c  4      
  cmpl %r13d, %edx                 #  17    0x45110  3      
  jae .L_451a0                     #  18    0x45113  6      
  leal (%rbx,%r12,1), %r12d        #  19    0x45119  4      
  jmpq .L_45140                    #  20    0x4511d  5      
  nop                              #  21    0x45122  1      
.L_45120:                          #        0x45123  0      
  addl $0x1, %ebx                  #  22    0x45123  3      
  addl $0x1, %r12d                 #  23    0x45126  4      
  cmpl %r13d, %ebx                 #  24    0x4512a  3      
  jae .L_451a0                     #  25    0x4512d  6      
  nop                              #  26    0x45133  1      
  nop                              #  27    0x45134  1      
.L_45140:                          #        0x45135  0      
  movl %r12d, %eax                 #  28    0x45135  3      
  movl 0xc(%rsp), %edx             #  29    0x45138  4      
  movl %r14d, %edi                 #  30    0x4513c  3      
  movl %eax, %eax                  #  31    0x4513f  2      
  movsbl (%r15,%rax,1), %esi       #  32    0x45141  5      
  nop                              #  33    0x45146  1      
  callq .memchr                    #  34    0x45147  5      
  testl %eax, %eax                 #  35    0x4514c  2      
  jne .L_45120                     #  36    0x4514e  6      
  nop                              #  37    0x45154  1      
  nop                              #  38    0x45155  1      
.L_45180:                          #        0x45156  0      
  addl $0x18, %esp                 #  39    0x45156  3      
  addq %r15, %rsp                  #  40    0x45159  3      
  movl %ebx, %eax                  #  41    0x4515c  2      
  popq %rbx                        #  42    0x4515e  2      
  popq %r12                        #  43    0x45160  3      
  popq %r13                        #  44    0x45163  3      
  popq %r14                        #  45    0x45166  3      
  popq %r11                        #  46    0x45169  3      
  andl $0xffffffe0, %r11d          #  47    0x4516c  7      
  addq %r15, %r11                  #  48    0x45173  3      
  jmpq %r11                        #  49    0x45176  3      
  nop                              #  50    0x45179  1      
.L_451a0:                          #        0x4517a  0      
  movl $0xffffffff, %ebx           #  51    0x4517a  5      
  jmpq .L_45180                    #  52    0x4517f  5      
  nop                              #  53    0x45184  1      
  nop                              #  54    0x45185  1      
  nop                              #  55    0x45186  1      
  nop                              #  56    0x45187  1      
  nop                              #  57    0x45188  1      
  nop                              #  58    0x45189  1      
  nop                              #  59    0x4518a  1      
  nop                              #  60    0x4518b  1      
  nop                              #  61    0x4518c  1      
  nop                              #  62    0x4518d  1      
  nop                              #  63    0x4518e  1      
  nop                              #  64    0x4518f  1      
  nop                              #  65    0x45190  1      
  nop                              #  66    0x45191  1      
  nop                              #  67    0x45192  1      
  nop                              #  68    0x45193  1      
  nop                              #  69    0x45194  1      
  nop                              #  70    0x45195  1      
  nop                              #  71    0x45196  1      
  nop                              #  72    0x45197  1      
  nop                              #  73    0x45198  1      
  nop                              #  74    0x45199  1      
  nop                              #  75    0x4519a  1      
  nop                              #  76    0x4519b  1      
  nop                              #  77    0x4519c  1      
                                                            
.size _ZNKSs17find_first_not_ofEPKcjj, .-_ZNKSs17find_first_not_ofEPKcjj

