  .text
  .globl _ZSt20__throw_system_errori
  .type _ZSt20__throw_system_errori, @function

#! file-offset 0x4cea0
#! rip-offset  0x4cea0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_system_errori:            #        0x4cea0  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x4cea0  5      
  movq %r12, -0x10(%rsp)                 #  2     0x4cea5  5      
  movq %r13, -0x8(%rsp)                  #  3     0x4ceaa  5      
  subl $0x28, %esp                       #  4     0x4ceaf  3      
  addq %r15, %rsp                        #  5     0x4ceb2  3      
  movl %edi, %r13d                       #  6     0x4ceb5  3      
  nop                                    #  7     0x4ceb8  1      
  callq ._ZSt16generic_categoryv         #  8     0x4ceb9  5      
  movl $0x10, %edi                       #  9     0x4cebe  5      
  movl %eax, %ebx                        #  10    0x4cec3  2      
  movl %r13d, %r13d                      #  11    0x4cec5  3      
  xchgw %ax, %ax                         #  12    0x4cec8  3      
  nop                                    #  13    0x4cecb  1      
  callq .__cxa_allocate_exception        #  14    0x4cecc  5      
  leal 0xf(%rsp), %edx                   #  15    0x4ced1  4      
  shlq $0x20, %rbx                       #  16    0x4ced5  4      
  movl $0x1002149c, %esi                 #  17    0x4ced9  5      
  movl %esp, %edi                        #  18    0x4cede  2      
  orq %r13, %rbx                         #  19    0x4cee0  3      
  movl %eax, %r12d                       #  20    0x4cee3  3      
  movl %esp, %r13d                       #  21    0x4cee6  3      
  nop                                    #  22    0x4cee9  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  23    0x4ceea  5      
  movl %esp, %esi                        #  24    0x4ceef  2      
  movl %r12d, %edi                       #  25    0x4cef1  3      
  nop                                    #  26    0x4cef4  1      
  nop                                    #  27    0x4cef5  1      
  callq ._ZNSt13runtime_errorC2ERKSs     #  28    0x4cef6  5      
  movl (%rsp), %edi                      #  29    0x4cefb  3      
  subl $0xc, %edi                        #  30    0x4cefe  3      
  cmpl $0x10031da0, %edi                 #  31    0x4cf01  6      
  jne .L_4cf80                           #  32    0x4cf07  6      
  nop                                    #  33    0x4cf0d  1      
  nop                                    #  34    0x4cf0e  1      
.L_4cf40:                                #        0x4cf0f  0      
  movl %r12d, %r12d                      #  35    0x4cf0f  3      
  movl $0x10021258, (%r15,%r12,1)        #  36    0x4cf12  8      
  movl %r12d, %r12d                      #  37    0x4cf1a  3      
  movq %rbx, 0x8(%r15,%r12,1)            #  38    0x4cf1d  5      
  movl $0x4f260, %edx                    #  39    0x4cf22  5      
  movl $0x10021284, %esi                 #  40    0x4cf27  5      
  movl %r12d, %edi                       #  41    0x4cf2c  3      
  nop                                    #  42    0x4cf2f  1      
  nop                                    #  43    0x4cf30  1      
  callq .__cxa_throw                     #  44    0x4cf31  5      
.L_4cf80:                                #        0x4cf36  0      
  movl %edi, %edi                        #  45    0x4cf36  2      
  movl 0x8(%r15,%rdi,1), %eax            #  46    0x4cf38  5      
  leal -0x1(%rax), %edx                  #  47    0x4cf3d  3      
  testl %eax, %eax                       #  48    0x4cf40  2      
  movl %edi, %edi                        #  49    0x4cf42  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  50    0x4cf44  5      
  jg .L_4cf40                            #  51    0x4cf49  6      
  leal 0xe(%rsp), %esi                   #  52    0x4cf4f  4      
  xchgw %ax, %ax                         #  53    0x4cf53  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  54    0x4cf56  5      
  jmpq .L_4cf40                          #  55    0x4cf5b  5      
  nop                                    #  56    0x4cf60  1      
  nop                                    #  57    0x4cf61  1      
  movl %r13d, %edi                       #  58    0x4cf62  3      
  movl %eax, %ebx                        #  59    0x4cf65  2      
  nop                                    #  60    0x4cf67  1      
  nop                                    #  61    0x4cf68  1      
  callq ._ZNSsD1Ev                       #  62    0x4cf69  5      
.L_4cfe0:                                #        0x4cf6e  0      
  movl %r12d, %edi                       #  63    0x4cf6e  3      
  nop                                    #  64    0x4cf71  1      
  nop                                    #  65    0x4cf72  1      
  callq .__cxa_free_exception            #  66    0x4cf73  5      
  movl %ebx, %edi                        #  67    0x4cf78  2      
  nop                                    #  68    0x4cf7a  1      
  nop                                    #  69    0x4cf7b  1      
  callq ._Unwind_Resume                  #  70    0x4cf7c  5      
  movl %eax, %ebx                        #  71    0x4cf81  2      
  jmpq .L_4cfe0                          #  72    0x4cf83  5      
  nop                                    #  73    0x4cf88  1      
  nop                                    #  74    0x4cf89  1      
  nop                                    #  75    0x4cf8a  1      
  nop                                    #  76    0x4cf8b  1      
  nop                                    #  77    0x4cf8c  1      
  nop                                    #  78    0x4cf8d  1      
  nop                                    #  79    0x4cf8e  1      
  nop                                    #  80    0x4cf8f  1      
  nop                                    #  81    0x4cf90  1      
  nop                                    #  82    0x4cf91  1      
  nop                                    #  83    0x4cf92  1      
  nop                                    #  84    0x4cf93  1      
  nop                                    #  85    0x4cf94  1      
  nop                                    #  86    0x4cf95  1      
  nop                                    #  87    0x4cf96  1      
  nop                                    #  88    0x4cf97  1      
  nop                                    #  89    0x4cf98  1      
  nop                                    #  90    0x4cf99  1      
  nop                                    #  91    0x4cf9a  1      
  nop                                    #  92    0x4cf9b  1      
  nop                                    #  93    0x4cf9c  1      
  nop                                    #  94    0x4cf9d  1      
  nop                                    #  95    0x4cf9e  1      
  nop                                    #  96    0x4cf9f  1      
  nop                                    #  97    0x4cfa0  1      
  nop                                    #  98    0x4cfa1  1      
  nop                                    #  99    0x4cfa2  1      
  nop                                    #  100   0x4cfa3  1      
                                                                  
.size _ZSt20__throw_system_errori, .-_ZSt20__throw_system_errori

