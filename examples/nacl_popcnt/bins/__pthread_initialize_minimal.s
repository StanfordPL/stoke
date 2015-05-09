  .text
  .globl __pthread_initialize_minimal
  .type __pthread_initialize_minimal, @function

#! file-offset 0x677e0
#! rip-offset  0x677e0
#! capacity    256 bytes

# Text                                 #  Line  RIP      Bytes  
.__pthread_initialize_minimal:         #        0x677e0  0      
  pushq %rbx                           #  1     0x677e0  2      
  movl %edi, %ebx                      #  2     0x677e2  2      
  nop                                  #  3     0x677e4  1      
  nop                                  #  4     0x677e5  1      
  callq .__nacl_tls_combined_size      #  5     0x677e6  5      
  movl $0x63820, %edx                  #  6     0x677eb  5      
  testl %edx, %edx                     #  7     0x677f0  2      
  je .L_678a0                          #  8     0x677f2  6      
  movl %eax, %edi                      #  9     0x677f8  2      
  nop                                  #  10    0x677fa  1      
  callq .malloc                        #  11    0x677fb  5      
  movl %eax, %edi                      #  12    0x67800  2      
  nop                                  #  13    0x67802  1      
  nop                                  #  14    0x67803  1      
.L_67840:                              #        0x67804  0      
  movl %ebx, %esi                      #  15    0x67804  2      
  nop                                  #  16    0x67806  1      
  nop                                  #  17    0x67807  1      
  callq .__nacl_tls_initialize_memory  #  18    0x67808  5      
  movl %eax, %edi                      #  19    0x6780d  2      
  nop                                  #  20    0x6780f  1      
  nop                                  #  21    0x67810  1      
  callq .nacl_tls_init                 #  22    0x67811  5      
  popq %rbx                            #  23    0x67816  2      
  jmpq .__newlib_thread_init           #  24    0x67818  5      
  nop                                  #  25    0x6781d  1      
  nop                                  #  26    0x6781e  1      
.L_678a0:                              #        0x6781f  0      
  movl $0x63820, %edi                  #  27    0x6781f  5      
  xorl %r9d, %r9d                      #  28    0x67824  3      
  orl $0xffffffff, %r8d                #  29    0x67827  7      
  movl $0x22, %ecx                     #  30    0x6782e  5      
  movl $0x3, %edx                      #  31    0x67833  5      
  movl %eax, %esi                      #  32    0x67838  2      
  nop                                  #  33    0x6783a  1      
  callq .mmap                          #  34    0x6783b  5      
  movl %eax, %edi                      #  35    0x67840  2      
  jmpq .L_67840                        #  36    0x67842  5      
  nop                                  #  37    0x67847  1      
  nop                                  #  38    0x67848  1      
  nop                                  #  39    0x67849  1      
  nop                                  #  40    0x6784a  1      
  nop                                  #  41    0x6784b  1      
  nop                                  #  42    0x6784c  1      
  nop                                  #  43    0x6784d  1      
  nop                                  #  44    0x6784e  1      
  nop                                  #  45    0x6784f  1      
  nop                                  #  46    0x67850  1      
  nop                                  #  47    0x67851  1      
  nop                                  #  48    0x67852  1      
  nop                                  #  49    0x67853  1      
  nop                                  #  50    0x67854  1      
  nop                                  #  51    0x67855  1      
  nop                                  #  52    0x67856  1      
  nop                                  #  53    0x67857  1      
  nop                                  #  54    0x67858  1      
  nop                                  #  55    0x67859  1      
  nop                                  #  56    0x6785a  1      
  nop                                  #  57    0x6785b  1      
  nop                                  #  58    0x6785c  1      
  nop                                  #  59    0x6785d  1      
  nop                                  #  60    0x6785e  1      
  nop                                  #  61    0x6785f  1      
                                                                
.size __pthread_initialize_minimal, .-__pthread_initialize_minimal

