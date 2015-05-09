  .text
  .globl nc_release_basic_data_mu
  .type nc_release_basic_data_mu, @function

#! file-offset 0x40900
#! rip-offset  0x40900
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.nc_release_basic_data_mu:     #        0x40900  0      
  pushq %rbx                   #  1     0x40900  2      
  movl %edi, %ebx              #  2     0x40902  2      
  leal 0x8(%rbx), %edi         #  3     0x40904  3      
  nop                          #  4     0x40907  1      
  nop                          #  5     0x40908  1      
  callq .pthread_cond_destroy  #  6     0x40909  5      
  movl %ebx, %edi              #  7     0x4090e  2      
  popq %rbx                    #  8     0x40910  2      
  jmpq .free                   #  9     0x40912  5      
  nop                          #  10    0x40917  1      
  nop                          #  11    0x40918  1      
                                                        
.size nc_release_basic_data_mu, .-nc_release_basic_data_mu

