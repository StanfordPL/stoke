  .text
  .globl _ZSt20__throw_domain_errorPKc
  .type _ZSt20__throw_domain_errorPKc, @function

#! file-offset 0x4dd40
#! rip-offset  0x4dd40
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_domain_errorPKc:          #        0x4dd40  0      
  pushq %r12                             #  1     0x4dd40  3      
  movl %edi, %esi                        #  2     0x4dd43  2      
  pushq %rbx                             #  3     0x4dd45  2      
  subl $0x28, %esp                       #  4     0x4dd47  3      
  addq %r15, %rsp                        #  5     0x4dd4a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4dd4d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4dd51  4      
  movl %ebx, %edi                        #  8     0x4dd55  2      
  nop                                    #  9     0x4dd57  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4dd58  5      
  movl $0x8, %edi                        #  11    0x4dd5d  5      
  nop                                    #  12    0x4dd62  1      
  nop                                    #  13    0x4dd63  1      
  callq .__cxa_allocate_exception        #  14    0x4dd64  5      
  movl %eax, %r12d                       #  15    0x4dd69  3      
  movl %ebx, %esi                        #  16    0x4dd6c  2      
  movl %r12d, %edi                       #  17    0x4dd6e  3      
  nop                                    #  18    0x4dd71  1      
  nop                                    #  19    0x4dd72  1      
  callq ._ZNSt12domain_errorC1ERKSs      #  20    0x4dd73  5      
  movl 0x10(%rsp), %edi                  #  21    0x4dd78  4      
  subl $0xc, %edi                        #  22    0x4dd7c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4dd7f  6      
  jne .L_4dde0                           #  24    0x4dd85  6      
  xchgw %ax, %ax                         #  25    0x4dd8b  3      
  nop                                    #  26    0x4dd8e  1      
.L_4ddc0:                                #        0x4dd8f  0      
  movl $0x4cee0, %edx                    #  27    0x4dd8f  5      
  movl $0x100210f4, %esi                 #  28    0x4dd94  5      
  movl %r12d, %edi                       #  29    0x4dd99  3      
  nop                                    #  30    0x4dd9c  1      
  callq .__cxa_throw                     #  31    0x4dd9d  5      
.L_4dde0:                                #        0x4dda2  0      
  movl %edi, %edi                        #  32    0x4dda2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4dda4  5      
  leal -0x1(%rax), %edx                  #  34    0x4dda9  3      
  testl %eax, %eax                       #  35    0x4ddac  2      
  movl %edi, %edi                        #  36    0x4ddae  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4ddb0  5      
  jg .L_4ddc0                            #  38    0x4ddb5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4ddbb  4      
  xchgw %ax, %ax                         #  40    0x4ddbf  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4ddc2  5      
  jmpq .L_4ddc0                          #  42    0x4ddc7  5      
  nop                                    #  43    0x4ddcc  1      
  nop                                    #  44    0x4ddcd  1      
  movl %r12d, %edi                       #  45    0x4ddce  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4ddd1  4      
  nop                                    #  47    0x4ddd5  1      
  nop                                    #  48    0x4ddd6  1      
  callq .__cxa_free_exception            #  49    0x4ddd7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4dddc  4      
  movl %ebx, %edi                        #  51    0x4dde0  2      
  movl %eax, %r12d                       #  52    0x4dde2  3      
  nop                                    #  53    0x4dde5  1      
  nop                                    #  54    0x4dde6  1      
  callq ._ZNSsD1Ev                       #  55    0x4dde7  5      
  movl %r12d, %eax                       #  56    0x4ddec  3      
  nop                                    #  57    0x4ddef  1      
  nop                                    #  58    0x4ddf0  1      
.L_4de80:                                #        0x4ddf1  0      
  movl %eax, %edi                        #  59    0x4ddf1  2      
  nop                                    #  60    0x4ddf3  1      
  nop                                    #  61    0x4ddf4  1      
  callq ._Unwind_Resume                  #  62    0x4ddf5  5      
  jmpq .L_4de80                          #  63    0x4ddfa  5      
  nop                                    #  64    0x4ddff  1      
  nop                                    #  65    0x4de00  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4de01  4      
  jne .L_4de80                           #  67    0x4de05  6      
  nop                                    #  68    0x4de0b  1      
  nop                                    #  69    0x4de0c  1      
  callq ._ZSt9terminatev                 #  70    0x4de0d  5      
                                                                  
.size _ZSt20__throw_domain_errorPKc, .-_ZSt20__throw_domain_errorPKc

