  .text
  .globl fputc
  .type fputc, @function

#! file-offset 0x686e0
#! rip-offset  0x686e0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
.fputc:                                  #        0x686e0  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x686e0  5      
  movq %r12, -0x10(%rsp)                 #  2     0x686e5  5      
  movl %esi, %ebx                        #  3     0x686ea  2      
  movq %r13, -0x8(%rsp)                  #  4     0x686ec  5      
  subl $0x28, %esp                       #  5     0x686f1  3      
  addq %r15, %rsp                        #  6     0x686f4  3      
  movl %edi, %r12d                       #  7     0x686f7  3      
  nop                                    #  8     0x686fa  1      
  callq .__nacl_read_tp                  #  9     0x686fb  5      
  leaq -0x480(%rax), %rax                #  10    0x68700  7      
  movl %eax, %eax                        #  11    0x68707  2      
  movl (%r15,%rax,1), %r13d              #  12    0x68709  4      
  testq %r13, %r13                       #  13    0x6870d  3      
  je .L_68740                            #  14    0x68710  6      
  movl %r13d, %r13d                      #  15    0x68716  3      
  movl 0x38(%r15,%r13,1), %eax           #  16    0x68719  5      
  testl %eax, %eax                       #  17    0x6871e  2      
  nop                                    #  18    0x68720  1      
  je .L_68840                            #  19    0x68721  6      
  nop                                    #  20    0x68727  1      
  nop                                    #  21    0x68728  1      
.L_68740:                                #        0x68729  0      
  movl %ebx, %ebx                        #  22    0x68729  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  23    0x6872b  6      
  je .L_68800                            #  24    0x68731  6      
  nop                                    #  25    0x68737  1      
  nop                                    #  26    0x68738  1      
.L_68760:                                #        0x68739  0      
  movl %ebx, %edx                        #  27    0x68739  2      
  movl %r12d, %esi                       #  28    0x6873b  3      
  movl %r13d, %edi                       #  29    0x6873e  3      
  nop                                    #  30    0x68741  1      
  nop                                    #  31    0x68742  1      
  callq ._putc_r                         #  32    0x68743  5      
  movl %ebx, %ebx                        #  33    0x68748  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  34    0x6874a  6      
  jne .L_687c0                           #  35    0x68750  6      
  leal 0x5c(%rbx), %edi                  #  36    0x68756  3      
  movl %eax, 0x8(%rsp)                   #  37    0x68759  4      
  nop                                    #  38    0x6875d  1      
  callq .__local_lock_release_recursive  #  39    0x6875e  5      
  movl 0x8(%rsp), %eax                   #  40    0x68763  4      
  nop                                    #  41    0x68767  1      
  nop                                    #  42    0x68768  1      
.L_687c0:                                #        0x68769  0      
  movq 0x10(%rsp), %rbx                  #  43    0x68769  5      
  movq 0x18(%rsp), %r12                  #  44    0x6876e  5      
  movq 0x20(%rsp), %r13                  #  45    0x68773  5      
  addl $0x28, %esp                       #  46    0x68778  3      
  addq %r15, %rsp                        #  47    0x6877b  3      
  popq %r11                              #  48    0x6877e  3      
  nop                                    #  49    0x68781  1      
  andl $0xffffffe0, %r11d                #  50    0x68782  7      
  addq %r15, %r11                        #  51    0x68789  3      
  jmpq %r11                              #  52    0x6878c  3      
  nop                                    #  53    0x6878f  1      
  nop                                    #  54    0x68790  1      
.L_68800:                                #        0x68791  0      
  leal 0x5c(%rbx), %edi                  #  55    0x68791  3      
  nop                                    #  56    0x68794  1      
  nop                                    #  57    0x68795  1      
  callq .__local_lock_acquire_recursive  #  58    0x68796  5      
  jmpq .L_68760                          #  59    0x6879b  5      
  nop                                    #  60    0x687a0  1      
  nop                                    #  61    0x687a1  1      
.L_68840:                                #        0x687a2  0      
  movl %r13d, %edi                       #  62    0x687a2  3      
  nop                                    #  63    0x687a5  1      
  nop                                    #  64    0x687a6  1      
  callq .__sinit                         #  65    0x687a7  5      
  jmpq .L_68740                          #  66    0x687ac  5      
  nop                                    #  67    0x687b1  1      
  nop                                    #  68    0x687b2  1      
                                                                  
.size fputc, .-fputc

