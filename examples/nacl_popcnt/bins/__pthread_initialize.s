  .text
  .globl __pthread_initialize
  .type __pthread_initialize, @function

#! file-offset 0x41ba0
#! rip-offset  0x41ba0
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  
.__pthread_initialize:                 #        0x41ba0  0      
  pushq %rbx                           #  1     0x41ba0  2      
  movl $0x3c, %edi                     #  2     0x41ba2  5      
  nop                                  #  3     0x41ba7  1      
  nop                                  #  4     0x41ba8  1      
  callq .__pthread_initialize_minimal  #  5     0x41ba9  5      
  nop                                  #  6     0x41bae  1      
  nop                                  #  7     0x41baf  1      
  callq .__nacl_read_tp                #  8     0x41bb0  5      
  movl %eax, %edi                      #  9     0x41bb5  2      
  leal 0x28(%rdi), %ebx                #  10    0x41bb7  3      
  movl %ebx, %esi                      #  11    0x41bba  2      
  nop                                  #  12    0x41bbc  1      
  nop                                  #  13    0x41bbd  1      
  callq .nc_tdb_init                   #  14    0x41bbe  5      
  movl %ebx, 0xfff51f3(%rip)           #  15    0x41bc3  6      
  popq %rbx                            #  16    0x41bc9  2      
  jmpq .__nc_initialize_globals        #  17    0x41bcb  5      
  nop                                  #  18    0x41bd0  1      
  nop                                  #  19    0x41bd1  1      
  nop                                  #  20    0x41bd2  1      
  nop                                  #  21    0x41bd3  1      
  nop                                  #  22    0x41bd4  1      
  nop                                  #  23    0x41bd5  1      
  nop                                  #  24    0x41bd6  1      
  nop                                  #  25    0x41bd7  1      
  nop                                  #  26    0x41bd8  1      
  nop                                  #  27    0x41bd9  1      
  nop                                  #  28    0x41bda  1      
  nop                                  #  29    0x41bdb  1      
  nop                                  #  30    0x41bdc  1      
  nop                                  #  31    0x41bdd  1      
  nop                                  #  32    0x41bde  1      
  nop                                  #  33    0x41bdf  1      
  nop                                  #  34    0x41be0  1      
  nop                                  #  35    0x41be1  1      
  nop                                  #  36    0x41be2  1      
  nop                                  #  37    0x41be3  1      
                                                                
.size __pthread_initialize, .-__pthread_initialize

