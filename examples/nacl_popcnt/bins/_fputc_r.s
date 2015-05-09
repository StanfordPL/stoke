  .text
  .globl _fputc_r
  .type _fputc_r, @function

#! file-offset 0x68860
#! rip-offset  0x68860
#! capacity    352 bytes

# Text                                   #  Line  RIP      Bytes  
._fputc_r:                               #        0x68860  0      
  pushq %r12                             #  1     0x68860  3      
  movl %edi, %r12d                       #  2     0x68863  3      
  pushq %rbx                             #  3     0x68866  2      
  movl %edx, %ebx                        #  4     0x68868  2      
  subl $0x18, %esp                       #  5     0x6886a  3      
  addq %r15, %rsp                        #  6     0x6886d  3      
  testq %r12, %r12                       #  7     0x68870  3      
  je .L_688a0                            #  8     0x68873  6      
  movl %r12d, %r12d                      #  9     0x68879  3      
  movl 0x38(%r15,%r12,1), %edx           #  10    0x6887c  5      
  testl %edx, %edx                       #  11    0x68881  2      
  nop                                    #  12    0x68883  1      
  je .L_68980                            #  13    0x68884  6      
  nop                                    #  14    0x6888a  1      
  nop                                    #  15    0x6888b  1      
.L_688a0:                                #        0x6888c  0      
  movl %ebx, %ebx                        #  16    0x6888c  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  17    0x6888e  6      
  je .L_68940                            #  18    0x68894  6      
  nop                                    #  19    0x6889a  1      
  nop                                    #  20    0x6889b  1      
.L_688c0:                                #        0x6889c  0      
  movl %ebx, %edx                        #  21    0x6889c  2      
  movl %r12d, %edi                       #  22    0x6889e  3      
  nop                                    #  23    0x688a1  1      
  nop                                    #  24    0x688a2  1      
  callq ._putc_r                         #  25    0x688a3  5      
  movl %ebx, %ebx                        #  26    0x688a8  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  27    0x688aa  6      
  jne .L_68920                           #  28    0x688b0  6      
  leal 0x5c(%rbx), %edi                  #  29    0x688b6  3      
  movl %eax, 0x8(%rsp)                   #  30    0x688b9  4      
  nop                                    #  31    0x688bd  1      
  callq .__local_lock_release_recursive  #  32    0x688be  5      
  movl 0x8(%rsp), %eax                   #  33    0x688c3  4      
  nop                                    #  34    0x688c7  1      
  nop                                    #  35    0x688c8  1      
.L_68920:                                #        0x688c9  0      
  addl $0x18, %esp                       #  36    0x688c9  3      
  addq %r15, %rsp                        #  37    0x688cc  3      
  popq %rbx                              #  38    0x688cf  2      
  popq %r12                              #  39    0x688d1  3      
  popq %r11                              #  40    0x688d4  3      
  andl $0xffffffe0, %r11d                #  41    0x688d7  7      
  addq %r15, %r11                        #  42    0x688de  3      
  jmpq %r11                              #  43    0x688e1  3      
  nop                                    #  44    0x688e4  1      
.L_68940:                                #        0x688e5  0      
  leal 0x5c(%rbx), %edi                  #  45    0x688e5  3      
  movl %esi, 0x8(%rsp)                   #  46    0x688e8  4      
  nop                                    #  47    0x688ec  1      
  nop                                    #  48    0x688ed  1      
  callq .__local_lock_acquire_recursive  #  49    0x688ee  5      
  movl 0x8(%rsp), %esi                   #  50    0x688f3  4      
  jmpq .L_688c0                          #  51    0x688f7  5      
  nop                                    #  52    0x688fc  1      
  nop                                    #  53    0x688fd  1      
.L_68980:                                #        0x688fe  0      
  movl %r12d, %edi                       #  54    0x688fe  3      
  movl %esi, 0x8(%rsp)                   #  55    0x68901  4      
  nop                                    #  56    0x68905  1      
  nop                                    #  57    0x68906  1      
  callq .__sinit                         #  58    0x68907  5      
  movl 0x8(%rsp), %esi                   #  59    0x6890c  4      
  jmpq .L_688a0                          #  60    0x68910  5      
  nop                                    #  61    0x68915  1      
  nop                                    #  62    0x68916  1      
  nop                                    #  63    0x68917  1      
  nop                                    #  64    0x68918  1      
  nop                                    #  65    0x68919  1      
  nop                                    #  66    0x6891a  1      
  nop                                    #  67    0x6891b  1      
  nop                                    #  68    0x6891c  1      
  nop                                    #  69    0x6891d  1      
  nop                                    #  70    0x6891e  1      
  nop                                    #  71    0x6891f  1      
  nop                                    #  72    0x68920  1      
  nop                                    #  73    0x68921  1      
  nop                                    #  74    0x68922  1      
  nop                                    #  75    0x68923  1      
  nop                                    #  76    0x68924  1      
  nop                                    #  77    0x68925  1      
  nop                                    #  78    0x68926  1      
  nop                                    #  79    0x68927  1      
  nop                                    #  80    0x68928  1      
  nop                                    #  81    0x68929  1      
  nop                                    #  82    0x6892a  1      
  nop                                    #  83    0x6892b  1      
                                                                  
.size _fputc_r, .-_fputc_r

