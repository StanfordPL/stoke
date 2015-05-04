  .text
  .globl _fputc_r
  .type _fputc_r, @function

#! file-offset 0x68900
#! rip-offset  0x68900
#! capacity    352 bytes

# Text                                   #  Line  RIP      Bytes  
._fputc_r:                               #        0x68900  0      
  pushq %r12                             #  1     0x68900  3      
  movl %edi, %r12d                       #  2     0x68903  3      
  pushq %rbx                             #  3     0x68906  2      
  movl %edx, %ebx                        #  4     0x68908  2      
  subl $0x18, %esp                       #  5     0x6890a  3      
  addq %r15, %rsp                        #  6     0x6890d  3      
  testq %r12, %r12                       #  7     0x68910  3      
  je .L_68940                            #  8     0x68913  6      
  movl %r12d, %r12d                      #  9     0x68919  3      
  movl 0x38(%r15,%r12,1), %edx           #  10    0x6891c  5      
  testl %edx, %edx                       #  11    0x68921  2      
  nop                                    #  12    0x68923  1      
  je .L_68a20                            #  13    0x68924  6      
  nop                                    #  14    0x6892a  1      
  nop                                    #  15    0x6892b  1      
.L_68940:                                #        0x6892c  0      
  movl %ebx, %ebx                        #  16    0x6892c  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  17    0x6892e  6      
  je .L_689e0                            #  18    0x68934  6      
  nop                                    #  19    0x6893a  1      
  nop                                    #  20    0x6893b  1      
.L_68960:                                #        0x6893c  0      
  movl %ebx, %edx                        #  21    0x6893c  2      
  movl %r12d, %edi                       #  22    0x6893e  3      
  nop                                    #  23    0x68941  1      
  nop                                    #  24    0x68942  1      
  callq ._putc_r                         #  25    0x68943  5      
  movl %ebx, %ebx                        #  26    0x68948  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  27    0x6894a  6      
  jne .L_689c0                           #  28    0x68950  6      
  leal 0x5c(%rbx), %edi                  #  29    0x68956  3      
  movl %eax, 0x8(%rsp)                   #  30    0x68959  4      
  nop                                    #  31    0x6895d  1      
  callq .__local_lock_release_recursive  #  32    0x6895e  5      
  movl 0x8(%rsp), %eax                   #  33    0x68963  4      
  nop                                    #  34    0x68967  1      
  nop                                    #  35    0x68968  1      
.L_689c0:                                #        0x68969  0      
  addl $0x18, %esp                       #  36    0x68969  3      
  addq %r15, %rsp                        #  37    0x6896c  3      
  popq %rbx                              #  38    0x6896f  2      
  popq %r12                              #  39    0x68971  3      
  popq %r11                              #  40    0x68974  3      
  andl $0xffffffe0, %r11d                #  41    0x68977  7      
  addq %r15, %r11                        #  42    0x6897e  3      
  jmpq %r11                              #  43    0x68981  3      
  nop                                    #  44    0x68984  1      
.L_689e0:                                #        0x68985  0      
  leal 0x5c(%rbx), %edi                  #  45    0x68985  3      
  movl %esi, 0x8(%rsp)                   #  46    0x68988  4      
  nop                                    #  47    0x6898c  1      
  nop                                    #  48    0x6898d  1      
  callq .__local_lock_acquire_recursive  #  49    0x6898e  5      
  movl 0x8(%rsp), %esi                   #  50    0x68993  4      
  jmpq .L_68960                          #  51    0x68997  5      
  nop                                    #  52    0x6899c  1      
  nop                                    #  53    0x6899d  1      
.L_68a20:                                #        0x6899e  0      
  movl %r12d, %edi                       #  54    0x6899e  3      
  movl %esi, 0x8(%rsp)                   #  55    0x689a1  4      
  nop                                    #  56    0x689a5  1      
  nop                                    #  57    0x689a6  1      
  callq .__sinit                         #  58    0x689a7  5      
  movl 0x8(%rsp), %esi                   #  59    0x689ac  4      
  jmpq .L_68940                          #  60    0x689b0  5      
  nop                                    #  61    0x689b5  1      
  nop                                    #  62    0x689b6  1      
  nop                                    #  63    0x689b7  1      
  nop                                    #  64    0x689b8  1      
  nop                                    #  65    0x689b9  1      
  nop                                    #  66    0x689ba  1      
  nop                                    #  67    0x689bb  1      
  nop                                    #  68    0x689bc  1      
  nop                                    #  69    0x689bd  1      
  nop                                    #  70    0x689be  1      
  nop                                    #  71    0x689bf  1      
  nop                                    #  72    0x689c0  1      
  nop                                    #  73    0x689c1  1      
  nop                                    #  74    0x689c2  1      
  nop                                    #  75    0x689c3  1      
  nop                                    #  76    0x689c4  1      
  nop                                    #  77    0x689c5  1      
  nop                                    #  78    0x689c6  1      
  nop                                    #  79    0x689c7  1      
  nop                                    #  80    0x689c8  1      
  nop                                    #  81    0x689c9  1      
  nop                                    #  82    0x689ca  1      
  nop                                    #  83    0x689cb  1      
                                                                  
.size _fputc_r, .-_fputc_r

