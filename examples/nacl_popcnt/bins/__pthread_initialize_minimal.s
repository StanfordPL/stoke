  .text
  .globl __pthread_initialize_minimal
  .type __pthread_initialize_minimal, @function

#! file-offset 0x67880
#! rip-offset  0x67880
#! capacity    256 bytes

# Text                                 #  Line  RIP      Bytes  
.__pthread_initialize_minimal:         #        0x67880  0      
  pushq %rbx                           #  1     0x67880  2      
  movl %edi, %ebx                      #  2     0x67882  2      
  nop                                  #  3     0x67884  1      
  nop                                  #  4     0x67885  1      
  callq .__nacl_tls_combined_size      #  5     0x67886  5      
  movl $0x638c0, %edx                  #  6     0x6788b  5      
  testl %edx, %edx                     #  7     0x67890  2      
  je .L_67940                          #  8     0x67892  6      
  movl %eax, %edi                      #  9     0x67898  2      
  nop                                  #  10    0x6789a  1      
  callq .malloc                        #  11    0x6789b  5      
  movl %eax, %edi                      #  12    0x678a0  2      
  nop                                  #  13    0x678a2  1      
  nop                                  #  14    0x678a3  1      
.L_678e0:                              #        0x678a4  0      
  movl %ebx, %esi                      #  15    0x678a4  2      
  nop                                  #  16    0x678a6  1      
  nop                                  #  17    0x678a7  1      
  callq .__nacl_tls_initialize_memory  #  18    0x678a8  5      
  movl %eax, %edi                      #  19    0x678ad  2      
  nop                                  #  20    0x678af  1      
  nop                                  #  21    0x678b0  1      
  callq .nacl_tls_init                 #  22    0x678b1  5      
  popq %rbx                            #  23    0x678b6  2      
  jmpq .__newlib_thread_init           #  24    0x678b8  5      
  nop                                  #  25    0x678bd  1      
  nop                                  #  26    0x678be  1      
.L_67940:                              #        0x678bf  0      
  movl $0x638c0, %edi                  #  27    0x678bf  5      
  xorl %r9d, %r9d                      #  28    0x678c4  3      
  orl $0xffffffff, %r8d                #  29    0x678c7  7      
  movl $0x22, %ecx                     #  30    0x678ce  5      
  movl $0x3, %edx                      #  31    0x678d3  5      
  movl %eax, %esi                      #  32    0x678d8  2      
  nop                                  #  33    0x678da  1      
  callq .mmap                          #  34    0x678db  5      
  movl %eax, %edi                      #  35    0x678e0  2      
  jmpq .L_678e0                        #  36    0x678e2  5      
  nop                                  #  37    0x678e7  1      
  nop                                  #  38    0x678e8  1      
  nop                                  #  39    0x678e9  1      
  nop                                  #  40    0x678ea  1      
  nop                                  #  41    0x678eb  1      
  nop                                  #  42    0x678ec  1      
  nop                                  #  43    0x678ed  1      
  nop                                  #  44    0x678ee  1      
  nop                                  #  45    0x678ef  1      
  nop                                  #  46    0x678f0  1      
  nop                                  #  47    0x678f1  1      
  nop                                  #  48    0x678f2  1      
  nop                                  #  49    0x678f3  1      
  nop                                  #  50    0x678f4  1      
  nop                                  #  51    0x678f5  1      
  nop                                  #  52    0x678f6  1      
  nop                                  #  53    0x678f7  1      
  nop                                  #  54    0x678f8  1      
  nop                                  #  55    0x678f9  1      
  nop                                  #  56    0x678fa  1      
  nop                                  #  57    0x678fb  1      
  nop                                  #  58    0x678fc  1      
  nop                                  #  59    0x678fd  1      
  nop                                  #  60    0x678fe  1      
  nop                                  #  61    0x678ff  1      
                                                                
.size __pthread_initialize_minimal, .-__pthread_initialize_minimal

