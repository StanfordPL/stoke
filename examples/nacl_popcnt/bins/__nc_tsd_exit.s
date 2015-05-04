  .text
  .globl __nc_tsd_exit
  .type __nc_tsd_exit, @function

#! file-offset 0x40020
#! rip-offset  0x40020
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.__nc_tsd_exit:                       #        0x40020  0      
  pushq %r13                          #  1     0x40020  3      
  pushq %r12                          #  2     0x40023  3      
  xorl %r12d, %r12d                   #  3     0x40026  3      
  pushq %rbx                          #  4     0x40029  2      
  nop                                 #  5     0x4002b  1      
  nop                                 #  6     0x4002c  1      
  callq .__nacl_read_tp               #  7     0x4002d  5      
  movl %eax, %eax                     #  8     0x40032  2      
  movl -0x4(%r15,%rax,1), %esi        #  9     0x40034  5      
  testq %rsi, %rsi                    #  10    0x40039  3      
  je .L_402a0                         #  11    0x4003c  6      
  nop                                 #  12    0x40042  1      
.L_40060:                             #        0x40043  0      
  xorl %ebx, %ebx                     #  13    0x40043  2      
  xorl %r13d, %r13d                   #  14    0x40045  3      
  jmpq .L_40100                       #  15    0x40048  5      
  nop                                 #  16    0x4004d  1      
  nop                                 #  17    0x4004e  1      
.L_40080:                             #        0x4004f  0      
  leaq (%rsi,%rdx,1), %rdx            #  18    0x4004f  4      
  movl %edx, %edx                     #  19    0x40053  2      
  cmpl %ecx, 0x4(%r15,%rdx,1)         #  20    0x40055  5      
  je .L_401c0                         #  21    0x4005a  6      
  nop                                 #  22    0x40060  1      
.L_400a0:                             #        0x40061  0      
  addl $0x1, %ebx                     #  23    0x40061  3      
  cmpl $0x200, %ebx                   #  24    0x40064  6      
  je .L_40180                         #  25    0x4006a  6      
  xchgw %ax, %ax                      #  26    0x40070  3      
  nop                                 #  27    0x40073  1      
.L_400c0:                             #        0x40074  0      
  nop                                 #  28    0x40074  1      
  nop                                 #  29    0x40075  1      
  callq .__nacl_read_tp               #  30    0x40076  5      
  movl %eax, %eax                     #  31    0x4007b  2      
  movl -0x4(%r15,%rax,1), %esi        #  32    0x4007d  5      
  nop                                 #  33    0x40082  1      
  nop                                 #  34    0x40083  1      
.L_40100:                             #        0x40084  0      
  movl %ebx, %eax                     #  35    0x40084  2      
  leal (,%rbx,8), %edx                #  36    0x40086  7      
  movl %eax, %eax                     #  37    0x4008d  2      
  movl 0x10030da0(%r15,%rax,8), %eax  #  38    0x4008f  8      
  movslq %edx, %rdx                   #  39    0x40097  3      
  leaq 0x10030da4(%rdx), %rcx         #  40    0x4009a  7      
  testq %rax, %rax                    #  41    0x400a1  3      
  movl %ecx, %ecx                     #  42    0x400a4  2      
  movl (%r15,%rcx,1), %ecx            #  43    0x400a6  4      
  je .L_40140                         #  44    0x400aa  6      
  testb $0x1, %cl                     #  45    0x400b0  3      
  jne .L_40080                        #  46    0x400b3  6      
  nop                                 #  47    0x400b9  1      
.L_40140:                             #        0x400ba  0      
  addl $0x1, %ebx                     #  48    0x400ba  3      
  nop                                 #  49    0x400bd  1      
  nop                                 #  50    0x400be  1      
  callq .__nacl_read_tp               #  51    0x400bf  5      
  cmpl $0x200, %ebx                   #  52    0x400c4  6      
  movl %eax, %eax                     #  53    0x400ca  2      
  movl -0x4(%r15,%rax,1), %esi        #  54    0x400cc  5      
  jne .L_400c0                        #  55    0x400d1  6      
  nop                                 #  56    0x400d7  1      
.L_40180:                             #        0x400d8  0      
  testl %r13d, %r13d                  #  57    0x400d8  3      
  je .L_40240                         #  58    0x400db  6      
  addl $0x1, %r12d                    #  59    0x400e1  4      
  cmpl $0x4, %r12d                    #  60    0x400e5  4      
  je .L_40240                         #  61    0x400e9  6      
  nop                                 #  62    0x400ef  1      
  callq .__nacl_read_tp               #  63    0x400f0  5      
  movl %eax, %eax                     #  64    0x400f5  2      
  movl -0x4(%r15,%rax,1), %esi        #  65    0x400f7  5      
  jmpq .L_40060                       #  66    0x400fc  5      
  xchgw %ax, %ax                      #  67    0x40101  3      
  nop                                 #  68    0x40104  1      
.L_401c0:                             #        0x40105  0      
  movl %edx, %edx                     #  69    0x40105  2      
  movl (%r15,%rdx,1), %edi            #  70    0x40107  4      
  testq %rdi, %rdi                    #  71    0x4010b  3      
  je .L_400a0                         #  72    0x4010e  6      
  movl %edx, %edx                     #  73    0x40114  2      
  movl $0x0, (%r15,%rdx,1)            #  74    0x40116  8      
  movl $0x1, %r13d                    #  75    0x4011e  6      
  nop                                 #  76    0x40124  1      
  nop                                 #  77    0x40125  1      
  nop                                 #  78    0x40126  1      
  andl $0xffffffe0, %eax              #  79    0x40127  5      
  addq %r15, %rax                     #  80    0x4012c  3      
  callq %rax                          #  81    0x4012f  2      
  nop                                 #  82    0x40131  1      
  nop                                 #  83    0x40132  1      
  callq .__nacl_read_tp               #  84    0x40133  5      
  movl %eax, %eax                     #  85    0x40138  2      
  movl -0x4(%r15,%rax,1), %esi        #  86    0x4013a  5      
  jmpq .L_400a0                       #  87    0x4013f  5      
  xchgw %ax, %ax                      #  88    0x40144  3      
  nop                                 #  89    0x40147  1      
.L_40240:                             #        0x40148  0      
  movl %esi, %edi                     #  90    0x40148  2      
  nop                                 #  91    0x4014a  1      
  nop                                 #  92    0x4014b  1      
  callq .free                         #  93    0x4014c  5      
  nop                                 #  94    0x40151  1      
  nop                                 #  95    0x40152  1      
  callq .__nacl_read_tp               #  96    0x40153  5      
  movl %eax, %eax                     #  97    0x40158  2      
  movl $0x0, -0x4(%r15,%rax,1)        #  98    0x4015a  9      
  nop                                 #  99    0x40163  1      
  nop                                 #  100   0x40164  1      
.L_402a0:                             #        0x40165  0      
  popq %rbx                           #  101   0x40165  2      
  popq %r12                           #  102   0x40167  3      
  popq %r13                           #  103   0x4016a  3      
  popq %r11                           #  104   0x4016d  3      
  andl $0xffffffe0, %r11d             #  105   0x40170  7      
  addq %r15, %r11                     #  106   0x40177  3      
  jmpq %r11                           #  107   0x4017a  3      
  nop                                 #  108   0x4017d  1      
                                                               
.size __nc_tsd_exit, .-__nc_tsd_exit

