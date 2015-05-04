  .text
  .globl fputc
  .type fputc, @function

#! file-offset 0x68760
#! rip-offset  0x68760
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
.fputc:                                  #        0x68760  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x68760  5      
  movq %r12, -0x10(%rsp)                 #  2     0x68765  5      
  movl %esi, %ebx                        #  3     0x6876a  2      
  movq %r13, -0x8(%rsp)                  #  4     0x6876c  5      
  subl $0x28, %esp                       #  5     0x68771  3      
  addq %r15, %rsp                        #  6     0x68774  3      
  movl %edi, %r12d                       #  7     0x68777  3      
  nop                                    #  8     0x6877a  1      
  callq .__nacl_read_tp                  #  9     0x6877b  5      
  leaq -0x480(%rax), %rax                #  10    0x68780  7      
  movl %eax, %eax                        #  11    0x68787  2      
  movl (%r15,%rax,1), %r13d              #  12    0x68789  4      
  testq %r13, %r13                       #  13    0x6878d  3      
  je .L_687c0                            #  14    0x68790  6      
  movl %r13d, %r13d                      #  15    0x68796  3      
  movl 0x38(%r15,%r13,1), %eax           #  16    0x68799  5      
  testl %eax, %eax                       #  17    0x6879e  2      
  nop                                    #  18    0x687a0  1      
  je .L_688c0                            #  19    0x687a1  6      
  nop                                    #  20    0x687a7  1      
  nop                                    #  21    0x687a8  1      
.L_687c0:                                #        0x687a9  0      
  movl %ebx, %ebx                        #  22    0x687a9  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  23    0x687ab  6      
  je .L_68880                            #  24    0x687b1  6      
  nop                                    #  25    0x687b7  1      
  nop                                    #  26    0x687b8  1      
.L_687e0:                                #        0x687b9  0      
  movl %ebx, %edx                        #  27    0x687b9  2      
  movl %r12d, %esi                       #  28    0x687bb  3      
  movl %r13d, %edi                       #  29    0x687be  3      
  nop                                    #  30    0x687c1  1      
  nop                                    #  31    0x687c2  1      
  callq ._putc_r                         #  32    0x687c3  5      
  movl %ebx, %ebx                        #  33    0x687c8  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  34    0x687ca  6      
  jne .L_68840                           #  35    0x687d0  6      
  leal 0x5c(%rbx), %edi                  #  36    0x687d6  3      
  movl %eax, 0x8(%rsp)                   #  37    0x687d9  4      
  nop                                    #  38    0x687dd  1      
  callq .__local_lock_release_recursive  #  39    0x687de  5      
  movl 0x8(%rsp), %eax                   #  40    0x687e3  4      
  nop                                    #  41    0x687e7  1      
  nop                                    #  42    0x687e8  1      
.L_68840:                                #        0x687e9  0      
  movq 0x10(%rsp), %rbx                  #  43    0x687e9  5      
  movq 0x18(%rsp), %r12                  #  44    0x687ee  5      
  movq 0x20(%rsp), %r13                  #  45    0x687f3  5      
  addl $0x28, %esp                       #  46    0x687f8  3      
  addq %r15, %rsp                        #  47    0x687fb  3      
  popq %r11                              #  48    0x687fe  3      
  nop                                    #  49    0x68801  1      
  andl $0xffffffe0, %r11d                #  50    0x68802  7      
  addq %r15, %r11                        #  51    0x68809  3      
  jmpq %r11                              #  52    0x6880c  3      
  nop                                    #  53    0x6880f  1      
  nop                                    #  54    0x68810  1      
.L_68880:                                #        0x68811  0      
  leal 0x5c(%rbx), %edi                  #  55    0x68811  3      
  nop                                    #  56    0x68814  1      
  nop                                    #  57    0x68815  1      
  callq .__local_lock_acquire_recursive  #  58    0x68816  5      
  jmpq .L_687e0                          #  59    0x6881b  5      
  nop                                    #  60    0x68820  1      
  nop                                    #  61    0x68821  1      
.L_688c0:                                #        0x68822  0      
  movl %r13d, %edi                       #  62    0x68822  3      
  nop                                    #  63    0x68825  1      
  nop                                    #  64    0x68826  1      
  callq .__sinit                         #  65    0x68827  5      
  jmpq .L_687c0                          #  66    0x6882c  5      
  nop                                    #  67    0x68831  1      
  nop                                    #  68    0x68832  1      
                                                                  
.size fputc, .-fputc

