  .text
  .globl _ZNSs15_M_replace_safeEjjPKcj
  .type _ZNSs15_M_replace_safeEjjPKcj, @function

#! file-offset 0x48220
#! rip-offset  0x48220
#! capacity    256 bytes

# Text                           #  Line  RIP      Bytes  
._ZNSs15_M_replace_safeEjjPKcj:  #        0x48220  0      
  movq %rbx, -0x20(%rsp)         #  1     0x48220  5      
  movl %edi, %ebx                #  2     0x48225  2      
  movq %r12, -0x18(%rsp)         #  3     0x48227  5      
  movq %r13, -0x10(%rsp)         #  4     0x4822c  5      
  movq %r14, -0x8(%rsp)          #  5     0x48231  5      
  movl %r8d, %r13d               #  6     0x48236  3      
  subl $0x28, %esp               #  7     0x48239  3      
  addq %r15, %rsp                #  8     0x4823c  3      
  nop                            #  9     0x4823f  1      
  movl %ecx, %r14d               #  10    0x48240  3      
  movl %ebx, %edi                #  11    0x48243  2      
  movl %r8d, %ecx                #  12    0x48245  3      
  movl %esi, %r12d               #  13    0x48248  3      
  nop                            #  14    0x4824b  1      
  nop                            #  15    0x4824c  1      
  callq ._ZNSs9_M_mutateEjjj     #  16    0x4824d  5      
  testl %r13d, %r13d             #  17    0x48252  3      
  jne .L_482c0                   #  18    0x48255  6      
  nop                            #  19    0x4825b  1      
  nop                            #  20    0x4825c  1      
.L_48280:                        #        0x4825d  0      
  movl %ebx, %eax                #  21    0x4825d  2      
  movq 0x10(%rsp), %r12          #  22    0x4825f  5      
  movq 0x8(%rsp), %rbx           #  23    0x48264  5      
  movq 0x18(%rsp), %r13          #  24    0x48269  5      
  movq 0x20(%rsp), %r14          #  25    0x4826e  5      
  addl $0x28, %esp               #  26    0x48273  3      
  addq %r15, %rsp                #  27    0x48276  3      
  popq %r11                      #  28    0x48279  3      
  xchgw %ax, %ax                 #  29    0x4827c  3      
  andl $0xffffffe0, %r11d        #  30    0x4827f  7      
  addq %r15, %r11                #  31    0x48286  3      
  jmpq %r11                      #  32    0x48289  3      
  nop                            #  33    0x4828c  1      
  nop                            #  34    0x4828d  1      
.L_482c0:                        #        0x4828e  0      
  movl %ebx, %ebx                #  35    0x4828e  2      
  movl (%r15,%rbx,1), %edi       #  36    0x48290  4      
  addl %r12d, %edi               #  37    0x48294  3      
  cmpl $0x1, %r13d               #  38    0x48297  4      
  je .L_48300                    #  39    0x4829b  6      
  movl %r13d, %edx               #  40    0x482a1  3      
  movl %r14d, %esi               #  41    0x482a4  3      
  nop                            #  42    0x482a7  1      
  callq .memcpy                  #  43    0x482a8  5      
  jmpq .L_48280                  #  44    0x482ad  5      
  nop                            #  45    0x482b2  1      
  nop                            #  46    0x482b3  1      
.L_48300:                        #        0x482b4  0      
  movl %r14d, %r14d              #  47    0x482b4  3      
  movzbl (%r15,%r14,1), %eax     #  48    0x482b7  5      
  movl %edi, %edi                #  49    0x482bc  2      
  movb %al, (%r15,%rdi,1)        #  50    0x482be  4      
  jmpq .L_48280                  #  51    0x482c2  5      
  nop                            #  52    0x482c7  1      
  nop                            #  53    0x482c8  1      
  nop                            #  54    0x482c9  1      
  nop                            #  55    0x482ca  1      
  nop                            #  56    0x482cb  1      
  nop                            #  57    0x482cc  1      
  nop                            #  58    0x482cd  1      
  nop                            #  59    0x482ce  1      
  nop                            #  60    0x482cf  1      
  nop                            #  61    0x482d0  1      
  nop                            #  62    0x482d1  1      
  nop                            #  63    0x482d2  1      
  nop                            #  64    0x482d3  1      
                                                          
.size _ZNSs15_M_replace_safeEjjPKcj, .-_ZNSs15_M_replace_safeEjjPKcj

