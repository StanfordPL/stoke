  .text
  .globl __pthread_initialize
  .type __pthread_initialize, @function

#! file-offset 0x41c20
#! rip-offset  0x41c20
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  
.__pthread_initialize:                 #        0x41c20  0      
  pushq %rbx                           #  1     0x41c20  2      
  movl $0x3c, %edi                     #  2     0x41c22  5      
  nop                                  #  3     0x41c27  1      
  nop                                  #  4     0x41c28  1      
  callq .__pthread_initialize_minimal  #  5     0x41c29  5      
  nop                                  #  6     0x41c2e  1      
  nop                                  #  7     0x41c2f  1      
  callq .__nacl_read_tp                #  8     0x41c30  5      
  movl %eax, %edi                      #  9     0x41c35  2      
  leal 0x28(%rdi), %ebx                #  10    0x41c37  3      
  movl %ebx, %esi                      #  11    0x41c3a  2      
  nop                                  #  12    0x41c3c  1      
  nop                                  #  13    0x41c3d  1      
  callq .nc_tdb_init                   #  14    0x41c3e  5      
  movl %ebx, 0xfff5173(%rip)           #  15    0x41c43  6      
  popq %rbx                            #  16    0x41c49  2      
  jmpq .__nc_initialize_globals        #  17    0x41c4b  5      
  nop                                  #  18    0x41c50  1      
  nop                                  #  19    0x41c51  1      
  nop                                  #  20    0x41c52  1      
  nop                                  #  21    0x41c53  1      
  nop                                  #  22    0x41c54  1      
  nop                                  #  23    0x41c55  1      
  nop                                  #  24    0x41c56  1      
  nop                                  #  25    0x41c57  1      
  nop                                  #  26    0x41c58  1      
  nop                                  #  27    0x41c59  1      
  nop                                  #  28    0x41c5a  1      
  nop                                  #  29    0x41c5b  1      
  nop                                  #  30    0x41c5c  1      
  nop                                  #  31    0x41c5d  1      
  nop                                  #  32    0x41c5e  1      
  nop                                  #  33    0x41c5f  1      
  nop                                  #  34    0x41c60  1      
  nop                                  #  35    0x41c61  1      
  nop                                  #  36    0x41c62  1      
  nop                                  #  37    0x41c63  1      
                                                                
.size __pthread_initialize, .-__pthread_initialize

