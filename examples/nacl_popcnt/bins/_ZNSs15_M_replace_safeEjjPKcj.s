  .text
  .globl _ZNSs15_M_replace_safeEjjPKcj
  .type _ZNSs15_M_replace_safeEjjPKcj, @function

#! file-offset 0x48180
#! rip-offset  0x48180
#! capacity    256 bytes

# Text                           #  Line  RIP      Bytes  
._ZNSs15_M_replace_safeEjjPKcj:  #        0x48180  0      
  movq %rbx, -0x20(%rsp)         #  1     0x48180  5      
  movl %edi, %ebx                #  2     0x48185  2      
  movq %r12, -0x18(%rsp)         #  3     0x48187  5      
  movq %r13, -0x10(%rsp)         #  4     0x4818c  5      
  movq %r14, -0x8(%rsp)          #  5     0x48191  5      
  movl %r8d, %r13d               #  6     0x48196  3      
  subl $0x28, %esp               #  7     0x48199  3      
  addq %r15, %rsp                #  8     0x4819c  3      
  nop                            #  9     0x4819f  1      
  movl %ecx, %r14d               #  10    0x481a0  3      
  movl %ebx, %edi                #  11    0x481a3  2      
  movl %r8d, %ecx                #  12    0x481a5  3      
  movl %esi, %r12d               #  13    0x481a8  3      
  nop                            #  14    0x481ab  1      
  nop                            #  15    0x481ac  1      
  callq ._ZNSs9_M_mutateEjjj     #  16    0x481ad  5      
  testl %r13d, %r13d             #  17    0x481b2  3      
  jne .L_48220                   #  18    0x481b5  6      
  nop                            #  19    0x481bb  1      
  nop                            #  20    0x481bc  1      
.L_481e0:                        #        0x481bd  0      
  movl %ebx, %eax                #  21    0x481bd  2      
  movq 0x10(%rsp), %r12          #  22    0x481bf  5      
  movq 0x8(%rsp), %rbx           #  23    0x481c4  5      
  movq 0x18(%rsp), %r13          #  24    0x481c9  5      
  movq 0x20(%rsp), %r14          #  25    0x481ce  5      
  addl $0x28, %esp               #  26    0x481d3  3      
  addq %r15, %rsp                #  27    0x481d6  3      
  popq %r11                      #  28    0x481d9  3      
  xchgw %ax, %ax                 #  29    0x481dc  3      
  andl $0xffffffe0, %r11d        #  30    0x481df  7      
  addq %r15, %r11                #  31    0x481e6  3      
  jmpq %r11                      #  32    0x481e9  3      
  nop                            #  33    0x481ec  1      
  nop                            #  34    0x481ed  1      
.L_48220:                        #        0x481ee  0      
  movl %ebx, %ebx                #  35    0x481ee  2      
  movl (%r15,%rbx,1), %edi       #  36    0x481f0  4      
  addl %r12d, %edi               #  37    0x481f4  3      
  cmpl $0x1, %r13d               #  38    0x481f7  4      
  je .L_48260                    #  39    0x481fb  6      
  movl %r13d, %edx               #  40    0x48201  3      
  movl %r14d, %esi               #  41    0x48204  3      
  nop                            #  42    0x48207  1      
  callq .memcpy                  #  43    0x48208  5      
  jmpq .L_481e0                  #  44    0x4820d  5      
  nop                            #  45    0x48212  1      
  nop                            #  46    0x48213  1      
.L_48260:                        #        0x48214  0      
  movl %r14d, %r14d              #  47    0x48214  3      
  movzbl (%r15,%r14,1), %eax     #  48    0x48217  5      
  movl %edi, %edi                #  49    0x4821c  2      
  movb %al, (%r15,%rdi,1)        #  50    0x4821e  4      
  jmpq .L_481e0                  #  51    0x48222  5      
  nop                            #  52    0x48227  1      
  nop                            #  53    0x48228  1      
  nop                            #  54    0x48229  1      
  nop                            #  55    0x4822a  1      
  nop                            #  56    0x4822b  1      
  nop                            #  57    0x4822c  1      
  nop                            #  58    0x4822d  1      
  nop                            #  59    0x4822e  1      
  nop                            #  60    0x4822f  1      
  nop                            #  61    0x48230  1      
  nop                            #  62    0x48231  1      
  nop                            #  63    0x48232  1      
  nop                            #  64    0x48233  1      
                                                          
.size _ZNSs15_M_replace_safeEjjPKcj, .-_ZNSs15_M_replace_safeEjjPKcj

