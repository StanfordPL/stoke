  .text
  .globl nc_release_basic_data_mu
  .type nc_release_basic_data_mu, @function

#! file-offset 0x409a0
#! rip-offset  0x409a0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.nc_release_basic_data_mu:     #        0x409a0  0      
  pushq %rbx                   #  1     0x409a0  2      
  movl %edi, %ebx              #  2     0x409a2  2      
  leal 0x8(%rbx), %edi         #  3     0x409a4  3      
  nop                          #  4     0x409a7  1      
  nop                          #  5     0x409a8  1      
  callq .pthread_cond_destroy  #  6     0x409a9  5      
  movl %ebx, %edi              #  7     0x409ae  2      
  popq %rbx                    #  8     0x409b0  2      
  jmpq .free                   #  9     0x409b2  5      
  nop                          #  10    0x409b7  1      
  nop                          #  11    0x409b8  1      
                                                        
.size nc_release_basic_data_mu, .-nc_release_basic_data_mu

