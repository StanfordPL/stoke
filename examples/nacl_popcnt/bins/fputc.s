  .text
  .globl fputc
  .type fputc, @function

#! file-offset 0x686c0
#! rip-offset  0x686c0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
.fputc:                                  #        0x686c0  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x686c0  5      
  movq %r12, -0x10(%rsp)                 #  2     0x686c5  5      
  movl %esi, %ebx                        #  3     0x686ca  2      
  movq %r13, -0x8(%rsp)                  #  4     0x686cc  5      
  subl $0x28, %esp                       #  5     0x686d1  3      
  addq %r15, %rsp                        #  6     0x686d4  3      
  movl %edi, %r12d                       #  7     0x686d7  3      
  nop                                    #  8     0x686da  1      
  callq .__nacl_read_tp                  #  9     0x686db  5      
  leaq -0x480(%rax), %rax                #  10    0x686e0  7      
  movl %eax, %eax                        #  11    0x686e7  2      
  movl (%r15,%rax,1), %r13d              #  12    0x686e9  4      
  testq %r13, %r13                       #  13    0x686ed  3      
  je .L_68720                            #  14    0x686f0  6      
  movl %r13d, %r13d                      #  15    0x686f6  3      
  movl 0x38(%r15,%r13,1), %eax           #  16    0x686f9  5      
  testl %eax, %eax                       #  17    0x686fe  2      
  nop                                    #  18    0x68700  1      
  je .L_68820                            #  19    0x68701  6      
  nop                                    #  20    0x68707  1      
  nop                                    #  21    0x68708  1      
.L_68720:                                #        0x68709  0      
  movl %ebx, %ebx                        #  22    0x68709  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  23    0x6870b  6      
  je .L_687e0                            #  24    0x68711  6      
  nop                                    #  25    0x68717  1      
  nop                                    #  26    0x68718  1      
.L_68740:                                #        0x68719  0      
  movl %ebx, %edx                        #  27    0x68719  2      
  movl %r12d, %esi                       #  28    0x6871b  3      
  movl %r13d, %edi                       #  29    0x6871e  3      
  nop                                    #  30    0x68721  1      
  nop                                    #  31    0x68722  1      
  callq ._putc_r                         #  32    0x68723  5      
  movl %ebx, %ebx                        #  33    0x68728  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  34    0x6872a  6      
  jne .L_687a0                           #  35    0x68730  6      
  leal 0x5c(%rbx), %edi                  #  36    0x68736  3      
  movl %eax, 0x8(%rsp)                   #  37    0x68739  4      
  nop                                    #  38    0x6873d  1      
  callq .__local_lock_release_recursive  #  39    0x6873e  5      
  movl 0x8(%rsp), %eax                   #  40    0x68743  4      
  nop                                    #  41    0x68747  1      
  nop                                    #  42    0x68748  1      
.L_687a0:                                #        0x68749  0      
  movq 0x10(%rsp), %rbx                  #  43    0x68749  5      
  movq 0x18(%rsp), %r12                  #  44    0x6874e  5      
  movq 0x20(%rsp), %r13                  #  45    0x68753  5      
  addl $0x28, %esp                       #  46    0x68758  3      
  addq %r15, %rsp                        #  47    0x6875b  3      
  popq %r11                              #  48    0x6875e  3      
  nop                                    #  49    0x68761  1      
  andl $0xffffffe0, %r11d                #  50    0x68762  7      
  addq %r15, %r11                        #  51    0x68769  3      
  jmpq %r11                              #  52    0x6876c  3      
  nop                                    #  53    0x6876f  1      
  nop                                    #  54    0x68770  1      
.L_687e0:                                #        0x68771  0      
  leal 0x5c(%rbx), %edi                  #  55    0x68771  3      
  nop                                    #  56    0x68774  1      
  nop                                    #  57    0x68775  1      
  callq .__local_lock_acquire_recursive  #  58    0x68776  5      
  jmpq .L_68740                          #  59    0x6877b  5      
  nop                                    #  60    0x68780  1      
  nop                                    #  61    0x68781  1      
.L_68820:                                #        0x68782  0      
  movl %r13d, %edi                       #  62    0x68782  3      
  nop                                    #  63    0x68785  1      
  nop                                    #  64    0x68786  1      
  callq .__sinit                         #  65    0x68787  5      
  jmpq .L_68720                          #  66    0x6878c  5      
  nop                                    #  67    0x68791  1      
  nop                                    #  68    0x68792  1      
                                                                  
.size fputc, .-fputc

