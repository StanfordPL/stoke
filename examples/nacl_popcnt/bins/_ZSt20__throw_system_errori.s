  .text
  .globl _ZSt20__throw_system_errori
  .type _ZSt20__throw_system_errori, @function

#! file-offset 0x4cf40
#! rip-offset  0x4cf40
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_system_errori:            #        0x4cf40  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x4cf40  5      
  movq %r12, -0x10(%rsp)                 #  2     0x4cf45  5      
  movq %r13, -0x8(%rsp)                  #  3     0x4cf4a  5      
  subl $0x28, %esp                       #  4     0x4cf4f  3      
  addq %r15, %rsp                        #  5     0x4cf52  3      
  movl %edi, %r13d                       #  6     0x4cf55  3      
  nop                                    #  7     0x4cf58  1      
  callq ._ZSt16generic_categoryv         #  8     0x4cf59  5      
  movl $0x10, %edi                       #  9     0x4cf5e  5      
  movl %eax, %ebx                        #  10    0x4cf63  2      
  movl %r13d, %r13d                      #  11    0x4cf65  3      
  xchgw %ax, %ax                         #  12    0x4cf68  3      
  nop                                    #  13    0x4cf6b  1      
  callq .__cxa_allocate_exception        #  14    0x4cf6c  5      
  leal 0xf(%rsp), %edx                   #  15    0x4cf71  4      
  shlq $0x20, %rbx                       #  16    0x4cf75  4      
  movl $0x1002149c, %esi                 #  17    0x4cf79  5      
  movl %esp, %edi                        #  18    0x4cf7e  2      
  orq %r13, %rbx                         #  19    0x4cf80  3      
  movl %eax, %r12d                       #  20    0x4cf83  3      
  movl %esp, %r13d                       #  21    0x4cf86  3      
  nop                                    #  22    0x4cf89  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  23    0x4cf8a  5      
  movl %esp, %esi                        #  24    0x4cf8f  2      
  movl %r12d, %edi                       #  25    0x4cf91  3      
  nop                                    #  26    0x4cf94  1      
  nop                                    #  27    0x4cf95  1      
  callq ._ZNSt13runtime_errorC2ERKSs     #  28    0x4cf96  5      
  movl (%rsp), %edi                      #  29    0x4cf9b  3      
  subl $0xc, %edi                        #  30    0x4cf9e  3      
  cmpl $0x10031da0, %edi                 #  31    0x4cfa1  6      
  jne .L_4d020                           #  32    0x4cfa7  6      
  nop                                    #  33    0x4cfad  1      
  nop                                    #  34    0x4cfae  1      
.L_4cfe0:                                #        0x4cfaf  0      
  movl %r12d, %r12d                      #  35    0x4cfaf  3      
  movl $0x10021258, (%r15,%r12,1)        #  36    0x4cfb2  8      
  movl %r12d, %r12d                      #  37    0x4cfba  3      
  movq %rbx, 0x8(%r15,%r12,1)            #  38    0x4cfbd  5      
  movl $0x4f300, %edx                    #  39    0x4cfc2  5      
  movl $0x10021284, %esi                 #  40    0x4cfc7  5      
  movl %r12d, %edi                       #  41    0x4cfcc  3      
  nop                                    #  42    0x4cfcf  1      
  nop                                    #  43    0x4cfd0  1      
  callq .__cxa_throw                     #  44    0x4cfd1  5      
.L_4d020:                                #        0x4cfd6  0      
  movl %edi, %edi                        #  45    0x4cfd6  2      
  movl 0x8(%r15,%rdi,1), %eax            #  46    0x4cfd8  5      
  leal -0x1(%rax), %edx                  #  47    0x4cfdd  3      
  testl %eax, %eax                       #  48    0x4cfe0  2      
  movl %edi, %edi                        #  49    0x4cfe2  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  50    0x4cfe4  5      
  jg .L_4cfe0                            #  51    0x4cfe9  6      
  leal 0xe(%rsp), %esi                   #  52    0x4cfef  4      
  xchgw %ax, %ax                         #  53    0x4cff3  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  54    0x4cff6  5      
  jmpq .L_4cfe0                          #  55    0x4cffb  5      
  nop                                    #  56    0x4d000  1      
  nop                                    #  57    0x4d001  1      
  movl %r13d, %edi                       #  58    0x4d002  3      
  movl %eax, %ebx                        #  59    0x4d005  2      
  nop                                    #  60    0x4d007  1      
  nop                                    #  61    0x4d008  1      
  callq ._ZNSsD1Ev                       #  62    0x4d009  5      
.L_4d080:                                #        0x4d00e  0      
  movl %r12d, %edi                       #  63    0x4d00e  3      
  nop                                    #  64    0x4d011  1      
  nop                                    #  65    0x4d012  1      
  callq .__cxa_free_exception            #  66    0x4d013  5      
  movl %ebx, %edi                        #  67    0x4d018  2      
  nop                                    #  68    0x4d01a  1      
  nop                                    #  69    0x4d01b  1      
  callq ._Unwind_Resume                  #  70    0x4d01c  5      
  movl %eax, %ebx                        #  71    0x4d021  2      
  jmpq .L_4d080                          #  72    0x4d023  5      
  nop                                    #  73    0x4d028  1      
  nop                                    #  74    0x4d029  1      
  nop                                    #  75    0x4d02a  1      
  nop                                    #  76    0x4d02b  1      
  nop                                    #  77    0x4d02c  1      
  nop                                    #  78    0x4d02d  1      
  nop                                    #  79    0x4d02e  1      
  nop                                    #  80    0x4d02f  1      
  nop                                    #  81    0x4d030  1      
  nop                                    #  82    0x4d031  1      
  nop                                    #  83    0x4d032  1      
  nop                                    #  84    0x4d033  1      
  nop                                    #  85    0x4d034  1      
  nop                                    #  86    0x4d035  1      
  nop                                    #  87    0x4d036  1      
  nop                                    #  88    0x4d037  1      
  nop                                    #  89    0x4d038  1      
  nop                                    #  90    0x4d039  1      
  nop                                    #  91    0x4d03a  1      
  nop                                    #  92    0x4d03b  1      
  nop                                    #  93    0x4d03c  1      
  nop                                    #  94    0x4d03d  1      
  nop                                    #  95    0x4d03e  1      
  nop                                    #  96    0x4d03f  1      
  nop                                    #  97    0x4d040  1      
  nop                                    #  98    0x4d041  1      
  nop                                    #  99    0x4d042  1      
  nop                                    #  100   0x4d043  1      
                                                                  
.size _ZSt20__throw_system_errori, .-_ZSt20__throw_system_errori

