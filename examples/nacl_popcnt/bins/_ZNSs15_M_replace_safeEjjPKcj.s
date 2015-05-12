  .text
  .globl _ZNSs15_M_replace_safeEjjPKcj
  .type _ZNSs15_M_replace_safeEjjPKcj, @function

#! file-offset 0x481a0
#! rip-offset  0x481a0
#! capacity    256 bytes

# Text                           #  Line  RIP      Bytes  
._ZNSs15_M_replace_safeEjjPKcj:  #        0x481a0  0      
  movq %rbx, -0x20(%rsp)         #  1     0x481a0  5      
  movl %edi, %ebx                #  2     0x481a5  2      
  movq %r12, -0x18(%rsp)         #  3     0x481a7  5      
  movq %r13, -0x10(%rsp)         #  4     0x481ac  5      
  movq %r14, -0x8(%rsp)          #  5     0x481b1  5      
  movl %r8d, %r13d               #  6     0x481b6  3      
  subl $0x28, %esp               #  7     0x481b9  3      
  addq %r15, %rsp                #  8     0x481bc  3      
  nop                            #  9     0x481bf  1      
  movl %ecx, %r14d               #  10    0x481c0  3      
  movl %ebx, %edi                #  11    0x481c3  2      
  movl %r8d, %ecx                #  12    0x481c5  3      
  movl %esi, %r12d               #  13    0x481c8  3      
  nop                            #  14    0x481cb  1      
  nop                            #  15    0x481cc  1      
  callq ._ZNSs9_M_mutateEjjj     #  16    0x481cd  5      
  testl %r13d, %r13d             #  17    0x481d2  3      
  jne .L_48240                   #  18    0x481d5  6      
  nop                            #  19    0x481db  1      
  nop                            #  20    0x481dc  1      
.L_48200:                        #        0x481dd  0      
  movl %ebx, %eax                #  21    0x481dd  2      
  movq 0x10(%rsp), %r12          #  22    0x481df  5      
  movq 0x8(%rsp), %rbx           #  23    0x481e4  5      
  movq 0x18(%rsp), %r13          #  24    0x481e9  5      
  movq 0x20(%rsp), %r14          #  25    0x481ee  5      
  addl $0x28, %esp               #  26    0x481f3  3      
  addq %r15, %rsp                #  27    0x481f6  3      
  popq %r11                      #  28    0x481f9  3      
  xchgw %ax, %ax                 #  29    0x481fc  3      
  andl $0xffffffe0, %r11d        #  30    0x481ff  7      
  addq %r15, %r11                #  31    0x48206  3      
  jmpq %r11                      #  32    0x48209  3      
  nop                            #  33    0x4820c  1      
  nop                            #  34    0x4820d  1      
.L_48240:                        #        0x4820e  0      
  movl %ebx, %ebx                #  35    0x4820e  2      
  movl (%r15,%rbx,1), %edi       #  36    0x48210  4      
  addl %r12d, %edi               #  37    0x48214  3      
  cmpl $0x1, %r13d               #  38    0x48217  4      
  je .L_48280                    #  39    0x4821b  6      
  movl %r13d, %edx               #  40    0x48221  3      
  movl %r14d, %esi               #  41    0x48224  3      
  nop                            #  42    0x48227  1      
  callq .memcpy                  #  43    0x48228  5      
  jmpq .L_48200                  #  44    0x4822d  5      
  nop                            #  45    0x48232  1      
  nop                            #  46    0x48233  1      
.L_48280:                        #        0x48234  0      
  movl %r14d, %r14d              #  47    0x48234  3      
  movzbl (%r15,%r14,1), %eax     #  48    0x48237  5      
  movl %edi, %edi                #  49    0x4823c  2      
  movb %al, (%r15,%rdi,1)        #  50    0x4823e  4      
  jmpq .L_48200                  #  51    0x48242  5      
  nop                            #  52    0x48247  1      
  nop                            #  53    0x48248  1      
  nop                            #  54    0x48249  1      
  nop                            #  55    0x4824a  1      
  nop                            #  56    0x4824b  1      
  nop                            #  57    0x4824c  1      
  nop                            #  58    0x4824d  1      
  nop                            #  59    0x4824e  1      
  nop                            #  60    0x4824f  1      
  nop                            #  61    0x48250  1      
  nop                            #  62    0x48251  1      
  nop                            #  63    0x48252  1      
  nop                            #  64    0x48253  1      
                                                          
.size _ZNSs15_M_replace_safeEjjPKcj, .-_ZNSs15_M_replace_safeEjjPKcj

