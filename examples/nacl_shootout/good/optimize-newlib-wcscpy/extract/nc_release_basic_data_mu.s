  .text
  .globl nc_release_basic_data_mu
  .type nc_release_basic_data_mu, @function

#! file-offset 0x6e400
#! rip-offset  0x2e400
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode            
.nc_release_basic_data_mu:     #        0x2e400  0      OPC=<label>       
  pushq %rbx                   #  1     0x2e400  1      OPC=pushq_r64_1   
  movl %edi, %ebx              #  2     0x2e401  2      OPC=movl_r32_r32  
  leal 0x8(%rbx), %edi         #  3     0x2e403  3      OPC=leal_r32_m16  
  nop                          #  4     0x2e406  1      OPC=nop           
  nop                          #  5     0x2e407  1      OPC=nop           
  nop                          #  6     0x2e408  1      OPC=nop           
  nop                          #  7     0x2e409  1      OPC=nop           
  nop                          #  8     0x2e40a  1      OPC=nop           
  nop                          #  9     0x2e40b  1      OPC=nop           
  nop                          #  10    0x2e40c  1      OPC=nop           
  nop                          #  11    0x2e40d  1      OPC=nop           
  nop                          #  12    0x2e40e  1      OPC=nop           
  nop                          #  13    0x2e40f  1      OPC=nop           
  nop                          #  14    0x2e410  1      OPC=nop           
  nop                          #  15    0x2e411  1      OPC=nop           
  nop                          #  16    0x2e412  1      OPC=nop           
  nop                          #  17    0x2e413  1      OPC=nop           
  nop                          #  18    0x2e414  1      OPC=nop           
  nop                          #  19    0x2e415  1      OPC=nop           
  nop                          #  20    0x2e416  1      OPC=nop           
  nop                          #  21    0x2e417  1      OPC=nop           
  nop                          #  22    0x2e418  1      OPC=nop           
  nop                          #  23    0x2e419  1      OPC=nop           
  nop                          #  24    0x2e41a  1      OPC=nop           
  callq .pthread_cond_destroy  #  25    0x2e41b  5      OPC=callq_label   
  movl %ebx, %edi              #  26    0x2e420  2      OPC=movl_r32_r32  
  popq %rbx                    #  27    0x2e422  1      OPC=popq_r64_1    
  jmpq .free                   #  28    0x2e423  5      OPC=jmpq_label_1  
  nop                          #  29    0x2e428  1      OPC=nop           
  nop                          #  30    0x2e429  1      OPC=nop           
  nop                          #  31    0x2e42a  1      OPC=nop           
  nop                          #  32    0x2e42b  1      OPC=nop           
  nop                          #  33    0x2e42c  1      OPC=nop           
  nop                          #  34    0x2e42d  1      OPC=nop           
  nop                          #  35    0x2e42e  1      OPC=nop           
  nop                          #  36    0x2e42f  1      OPC=nop           
  nop                          #  37    0x2e430  1      OPC=nop           
  nop                          #  38    0x2e431  1      OPC=nop           
  nop                          #  39    0x2e432  1      OPC=nop           
  nop                          #  40    0x2e433  1      OPC=nop           
  nop                          #  41    0x2e434  1      OPC=nop           
  nop                          #  42    0x2e435  1      OPC=nop           
  nop                          #  43    0x2e436  1      OPC=nop           
  nop                          #  44    0x2e437  1      OPC=nop           
  nop                          #  45    0x2e438  1      OPC=nop           
  nop                          #  46    0x2e439  1      OPC=nop           
  nop                          #  47    0x2e43a  1      OPC=nop           
  nop                          #  48    0x2e43b  1      OPC=nop           
  nop                          #  49    0x2e43c  1      OPC=nop           
  nop                          #  50    0x2e43d  1      OPC=nop           
  nop                          #  51    0x2e43e  1      OPC=nop           
  nop                          #  52    0x2e43f  1      OPC=nop           
                                                                          
.size nc_release_basic_data_mu, .-nc_release_basic_data_mu

