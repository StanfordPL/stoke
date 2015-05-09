  .text
  .globl __pthread_initialize
  .type __pthread_initialize, @function

#! file-offset 0x41b80
#! rip-offset  0x41b80
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  
.__pthread_initialize:                 #        0x41b80  0      
  pushq %rbx                           #  1     0x41b80  2      
  movl $0x3c, %edi                     #  2     0x41b82  5      
  nop                                  #  3     0x41b87  1      
  nop                                  #  4     0x41b88  1      
  callq .__pthread_initialize_minimal  #  5     0x41b89  5      
  nop                                  #  6     0x41b8e  1      
  nop                                  #  7     0x41b8f  1      
  callq .__nacl_read_tp                #  8     0x41b90  5      
  movl %eax, %edi                      #  9     0x41b95  2      
  leal 0x28(%rdi), %ebx                #  10    0x41b97  3      
  movl %ebx, %esi                      #  11    0x41b9a  2      
  nop                                  #  12    0x41b9c  1      
  nop                                  #  13    0x41b9d  1      
  callq .nc_tdb_init                   #  14    0x41b9e  5      
  movl %ebx, 0xfff5213(%rip)           #  15    0x41ba3  6      
  popq %rbx                            #  16    0x41ba9  2      
  jmpq .__nc_initialize_globals        #  17    0x41bab  5      
  nop                                  #  18    0x41bb0  1      
  nop                                  #  19    0x41bb1  1      
  nop                                  #  20    0x41bb2  1      
  nop                                  #  21    0x41bb3  1      
  nop                                  #  22    0x41bb4  1      
  nop                                  #  23    0x41bb5  1      
  nop                                  #  24    0x41bb6  1      
  nop                                  #  25    0x41bb7  1      
  nop                                  #  26    0x41bb8  1      
  nop                                  #  27    0x41bb9  1      
  nop                                  #  28    0x41bba  1      
  nop                                  #  29    0x41bbb  1      
  nop                                  #  30    0x41bbc  1      
  nop                                  #  31    0x41bbd  1      
  nop                                  #  32    0x41bbe  1      
  nop                                  #  33    0x41bbf  1      
  nop                                  #  34    0x41bc0  1      
  nop                                  #  35    0x41bc1  1      
  nop                                  #  36    0x41bc2  1      
  nop                                  #  37    0x41bc3  1      
                                                                
.size __pthread_initialize, .-__pthread_initialize

