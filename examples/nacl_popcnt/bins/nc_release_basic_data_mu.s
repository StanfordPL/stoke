  .text
  .globl nc_release_basic_data_mu
  .type nc_release_basic_data_mu, @function

#! file-offset 0x40920
#! rip-offset  0x40920
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.nc_release_basic_data_mu:     #        0x40920  0      
  pushq %rbx                   #  1     0x40920  2      
  movl %edi, %ebx              #  2     0x40922  2      
  leal 0x8(%rbx), %edi         #  3     0x40924  3      
  nop                          #  4     0x40927  1      
  nop                          #  5     0x40928  1      
  callq .pthread_cond_destroy  #  6     0x40929  5      
  movl %ebx, %edi              #  7     0x4092e  2      
  popq %rbx                    #  8     0x40930  2      
  jmpq .free                   #  9     0x40932  5      
  nop                          #  10    0x40937  1      
  nop                          #  11    0x40938  1      
                                                        
.size nc_release_basic_data_mu, .-nc_release_basic_data_mu

