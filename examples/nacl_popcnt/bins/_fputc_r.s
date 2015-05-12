  .text
  .globl _fputc_r
  .type _fputc_r, @function

#! file-offset 0x68880
#! rip-offset  0x68880
#! capacity    352 bytes

# Text                                   #  Line  RIP      Bytes  
._fputc_r:                               #        0x68880  0      
  pushq %r12                             #  1     0x68880  3      
  movl %edi, %r12d                       #  2     0x68883  3      
  pushq %rbx                             #  3     0x68886  2      
  movl %edx, %ebx                        #  4     0x68888  2      
  subl $0x18, %esp                       #  5     0x6888a  3      
  addq %r15, %rsp                        #  6     0x6888d  3      
  testq %r12, %r12                       #  7     0x68890  3      
  je .L_688c0                            #  8     0x68893  6      
  movl %r12d, %r12d                      #  9     0x68899  3      
  movl 0x38(%r15,%r12,1), %edx           #  10    0x6889c  5      
  testl %edx, %edx                       #  11    0x688a1  2      
  nop                                    #  12    0x688a3  1      
  je .L_689a0                            #  13    0x688a4  6      
  nop                                    #  14    0x688aa  1      
  nop                                    #  15    0x688ab  1      
.L_688c0:                                #        0x688ac  0      
  movl %ebx, %ebx                        #  16    0x688ac  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  17    0x688ae  6      
  je .L_68960                            #  18    0x688b4  6      
  nop                                    #  19    0x688ba  1      
  nop                                    #  20    0x688bb  1      
.L_688e0:                                #        0x688bc  0      
  movl %ebx, %edx                        #  21    0x688bc  2      
  movl %r12d, %edi                       #  22    0x688be  3      
  nop                                    #  23    0x688c1  1      
  nop                                    #  24    0x688c2  1      
  callq ._putc_r                         #  25    0x688c3  5      
  movl %ebx, %ebx                        #  26    0x688c8  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  27    0x688ca  6      
  jne .L_68940                           #  28    0x688d0  6      
  leal 0x5c(%rbx), %edi                  #  29    0x688d6  3      
  movl %eax, 0x8(%rsp)                   #  30    0x688d9  4      
  nop                                    #  31    0x688dd  1      
  callq .__local_lock_release_recursive  #  32    0x688de  5      
  movl 0x8(%rsp), %eax                   #  33    0x688e3  4      
  nop                                    #  34    0x688e7  1      
  nop                                    #  35    0x688e8  1      
.L_68940:                                #        0x688e9  0      
  addl $0x18, %esp                       #  36    0x688e9  3      
  addq %r15, %rsp                        #  37    0x688ec  3      
  popq %rbx                              #  38    0x688ef  2      
  popq %r12                              #  39    0x688f1  3      
  popq %r11                              #  40    0x688f4  3      
  andl $0xffffffe0, %r11d                #  41    0x688f7  7      
  addq %r15, %r11                        #  42    0x688fe  3      
  jmpq %r11                              #  43    0x68901  3      
  nop                                    #  44    0x68904  1      
.L_68960:                                #        0x68905  0      
  leal 0x5c(%rbx), %edi                  #  45    0x68905  3      
  movl %esi, 0x8(%rsp)                   #  46    0x68908  4      
  nop                                    #  47    0x6890c  1      
  nop                                    #  48    0x6890d  1      
  callq .__local_lock_acquire_recursive  #  49    0x6890e  5      
  movl 0x8(%rsp), %esi                   #  50    0x68913  4      
  jmpq .L_688e0                          #  51    0x68917  5      
  nop                                    #  52    0x6891c  1      
  nop                                    #  53    0x6891d  1      
.L_689a0:                                #        0x6891e  0      
  movl %r12d, %edi                       #  54    0x6891e  3      
  movl %esi, 0x8(%rsp)                   #  55    0x68921  4      
  nop                                    #  56    0x68925  1      
  nop                                    #  57    0x68926  1      
  callq .__sinit                         #  58    0x68927  5      
  movl 0x8(%rsp), %esi                   #  59    0x6892c  4      
  jmpq .L_688c0                          #  60    0x68930  5      
  nop                                    #  61    0x68935  1      
  nop                                    #  62    0x68936  1      
  nop                                    #  63    0x68937  1      
  nop                                    #  64    0x68938  1      
  nop                                    #  65    0x68939  1      
  nop                                    #  66    0x6893a  1      
  nop                                    #  67    0x6893b  1      
  nop                                    #  68    0x6893c  1      
  nop                                    #  69    0x6893d  1      
  nop                                    #  70    0x6893e  1      
  nop                                    #  71    0x6893f  1      
  nop                                    #  72    0x68940  1      
  nop                                    #  73    0x68941  1      
  nop                                    #  74    0x68942  1      
  nop                                    #  75    0x68943  1      
  nop                                    #  76    0x68944  1      
  nop                                    #  77    0x68945  1      
  nop                                    #  78    0x68946  1      
  nop                                    #  79    0x68947  1      
  nop                                    #  80    0x68948  1      
  nop                                    #  81    0x68949  1      
  nop                                    #  82    0x6894a  1      
  nop                                    #  83    0x6894b  1      
                                                                  
.size _fputc_r, .-_fputc_r

