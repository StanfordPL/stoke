  .text
  .globl _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv
  .type _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv, @function

#! file-offset 0x49940
#! rip-offset  0x49940
#! capacity    288 bytes

# Text                                       #  Line  RIP      Bytes  
._ZL16get_adjusted_ptrPKSt9type_infoS1_PPv:  #        0x49940  0      
  movq %r12, -0x10(%rsp)                     #  1     0x49940  5      
  movl %edx, %r12d                           #  2     0x49945  3      
  movq %rbx, -0x18(%rsp)                     #  3     0x49948  5      
  movq %r13, -0x8(%rsp)                      #  4     0x4994d  5      
  subl $0x28, %esp                           #  5     0x49952  3      
  addq %r15, %rsp                            #  6     0x49955  3      
  movl %r12d, %r12d                          #  7     0x49958  3      
  movl (%r15,%r12,1), %eax                   #  8     0x4995b  4      
  nop                                        #  9     0x4995f  1      
  movl %esi, %r13d                           #  10    0x49960  3      
  movl %edi, %ebx                            #  11    0x49963  2      
  movl %r13d, %edi                           #  12    0x49965  3      
  movl %eax, 0xc(%rsp)                       #  13    0x49968  4      
  movl %r13d, %r13d                          #  14    0x4996c  3      
  movl (%r15,%r13,1), %eax                   #  15    0x4996f  4      
  movl %eax, %eax                            #  16    0x49973  2      
  movl 0x8(%r15,%rax,1), %eax                #  17    0x49975  5      
  nop                                        #  18    0x4997a  1      
  nop                                        #  19    0x4997b  1      
  nop                                        #  20    0x4997c  1      
  andl $0xffffffe0, %eax                     #  21    0x4997d  5      
  addq %r15, %rax                            #  22    0x49982  3      
  callq %rax                                 #  23    0x49985  2      
  testb %al, %al                             #  24    0x49987  2      
  je .L_499c0                                #  25    0x49989  6      
  movl 0xc(%rsp), %eax                       #  26    0x4998f  4      
  movl %eax, %eax                            #  27    0x49993  2      
  movl (%r15,%rax,1), %eax                   #  28    0x49995  4      
  movl %eax, 0xc(%rsp)                       #  29    0x49999  4      
  nop                                        #  30    0x4999d  1      
.L_499c0:                                    #        0x4999e  0      
  movl %ebx, %ebx                            #  31    0x4999e  2      
  movl (%r15,%rbx,1), %eax                   #  32    0x499a0  4      
  leal 0xc(%rsp), %edx                       #  33    0x499a4  4      
  movl $0x1, %ecx                            #  34    0x499a8  5      
  movl %r13d, %esi                           #  35    0x499ad  3      
  movl %ebx, %edi                            #  36    0x499b0  2      
  movl %eax, %eax                            #  37    0x499b2  2      
  movl 0x10(%r15,%rax,1), %eax               #  38    0x499b4  5      
  nop                                        #  39    0x499b9  1      
  nop                                        #  40    0x499ba  1      
  nop                                        #  41    0x499bb  1      
  andl $0xffffffe0, %eax                     #  42    0x499bc  5      
  addq %r15, %rax                            #  43    0x499c1  3      
  callq %rax                                 #  44    0x499c4  2      
  movl %eax, %edx                            #  45    0x499c6  2      
  xorl %eax, %eax                            #  46    0x499c8  2      
  testb %dl, %dl                             #  47    0x499ca  2      
  je .L_49a20                                #  48    0x499cc  6      
  movl 0xc(%rsp), %eax                       #  49    0x499d2  4      
  movl %r12d, %r12d                          #  50    0x499d6  3      
  movl %eax, (%r15,%r12,1)                   #  51    0x499d9  4      
  movl $0x1, %eax                            #  52    0x499dd  5      
  nop                                        #  53    0x499e2  1      
.L_49a20:                                    #        0x499e3  0      
  movq 0x10(%rsp), %rbx                      #  54    0x499e3  5      
  movq 0x18(%rsp), %r12                      #  55    0x499e8  5      
  movq 0x20(%rsp), %r13                      #  56    0x499ed  5      
  addl $0x28, %esp                           #  57    0x499f2  3      
  addq %r15, %rsp                            #  58    0x499f5  3      
  popq %r11                                  #  59    0x499f8  3      
  nop                                        #  60    0x499fb  1      
  andl $0xffffffe0, %r11d                    #  61    0x499fc  7      
  addq %r15, %r11                            #  62    0x49a03  3      
  jmpq %r11                                  #  63    0x49a06  3      
  nop                                        #  64    0x49a09  1      
  nop                                        #  65    0x49a0a  1      
  nop                                        #  66    0x49a0b  1      
  nop                                        #  67    0x49a0c  1      
  nop                                        #  68    0x49a0d  1      
  nop                                        #  69    0x49a0e  1      
  nop                                        #  70    0x49a0f  1      
  nop                                        #  71    0x49a10  1      
  nop                                        #  72    0x49a11  1      
  nop                                        #  73    0x49a12  1      
  nop                                        #  74    0x49a13  1      
  nop                                        #  75    0x49a14  1      
  nop                                        #  76    0x49a15  1      
  nop                                        #  77    0x49a16  1      
  nop                                        #  78    0x49a17  1      
  nop                                        #  79    0x49a18  1      
  nop                                        #  80    0x49a19  1      
  nop                                        #  81    0x49a1a  1      
  nop                                        #  82    0x49a1b  1      
  nop                                        #  83    0x49a1c  1      
  nop                                        #  84    0x49a1d  1      
  nop                                        #  85    0x49a1e  1      
                                                                      
.size _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv, .-_ZL16get_adjusted_ptrPKSt9type_infoS1_PPv

