  .text
  .globl __pthread_initialize_minimal
  .type __pthread_initialize_minimal, @function

#! file-offset 0x67800
#! rip-offset  0x67800
#! capacity    256 bytes

# Text                                 #  Line  RIP      Bytes  
.__pthread_initialize_minimal:         #        0x67800  0      
  pushq %rbx                           #  1     0x67800  2      
  movl %edi, %ebx                      #  2     0x67802  2      
  nop                                  #  3     0x67804  1      
  nop                                  #  4     0x67805  1      
  callq .__nacl_tls_combined_size      #  5     0x67806  5      
  movl $0x63840, %edx                  #  6     0x6780b  5      
  testl %edx, %edx                     #  7     0x67810  2      
  je .L_678c0                          #  8     0x67812  6      
  movl %eax, %edi                      #  9     0x67818  2      
  nop                                  #  10    0x6781a  1      
  callq .malloc                        #  11    0x6781b  5      
  movl %eax, %edi                      #  12    0x67820  2      
  nop                                  #  13    0x67822  1      
  nop                                  #  14    0x67823  1      
.L_67860:                              #        0x67824  0      
  movl %ebx, %esi                      #  15    0x67824  2      
  nop                                  #  16    0x67826  1      
  nop                                  #  17    0x67827  1      
  callq .__nacl_tls_initialize_memory  #  18    0x67828  5      
  movl %eax, %edi                      #  19    0x6782d  2      
  nop                                  #  20    0x6782f  1      
  nop                                  #  21    0x67830  1      
  callq .nacl_tls_init                 #  22    0x67831  5      
  popq %rbx                            #  23    0x67836  2      
  jmpq .__newlib_thread_init           #  24    0x67838  5      
  nop                                  #  25    0x6783d  1      
  nop                                  #  26    0x6783e  1      
.L_678c0:                              #        0x6783f  0      
  movl $0x63840, %edi                  #  27    0x6783f  5      
  xorl %r9d, %r9d                      #  28    0x67844  3      
  orl $0xffffffff, %r8d                #  29    0x67847  7      
  movl $0x22, %ecx                     #  30    0x6784e  5      
  movl $0x3, %edx                      #  31    0x67853  5      
  movl %eax, %esi                      #  32    0x67858  2      
  nop                                  #  33    0x6785a  1      
  callq .mmap                          #  34    0x6785b  5      
  movl %eax, %edi                      #  35    0x67860  2      
  jmpq .L_67860                        #  36    0x67862  5      
  nop                                  #  37    0x67867  1      
  nop                                  #  38    0x67868  1      
  nop                                  #  39    0x67869  1      
  nop                                  #  40    0x6786a  1      
  nop                                  #  41    0x6786b  1      
  nop                                  #  42    0x6786c  1      
  nop                                  #  43    0x6786d  1      
  nop                                  #  44    0x6786e  1      
  nop                                  #  45    0x6786f  1      
  nop                                  #  46    0x67870  1      
  nop                                  #  47    0x67871  1      
  nop                                  #  48    0x67872  1      
  nop                                  #  49    0x67873  1      
  nop                                  #  50    0x67874  1      
  nop                                  #  51    0x67875  1      
  nop                                  #  52    0x67876  1      
  nop                                  #  53    0x67877  1      
  nop                                  #  54    0x67878  1      
  nop                                  #  55    0x67879  1      
  nop                                  #  56    0x6787a  1      
  nop                                  #  57    0x6787b  1      
  nop                                  #  58    0x6787c  1      
  nop                                  #  59    0x6787d  1      
  nop                                  #  60    0x6787e  1      
  nop                                  #  61    0x6787f  1      
                                                                
.size __pthread_initialize_minimal, .-__pthread_initialize_minimal

