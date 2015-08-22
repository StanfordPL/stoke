  .text
  .globl nc_release_basic_data_mu
  .type nc_release_basic_data_mu, @function

#! file-offset 0x6ee20
#! rip-offset  0x2ee20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode            
.nc_release_basic_data_mu:     #        0x2ee20  0      OPC=<label>       
  pushq %rbx                   #  1     0x2ee20  1      OPC=pushq_r64_1   
  movl %edi, %ebx              #  2     0x2ee21  2      OPC=movl_r32_r32  
  leal 0x8(%rbx), %edi         #  3     0x2ee23  3      OPC=leal_r32_m16  
  nop                          #  4     0x2ee26  1      OPC=nop           
  nop                          #  5     0x2ee27  1      OPC=nop           
  nop                          #  6     0x2ee28  1      OPC=nop           
  nop                          #  7     0x2ee29  1      OPC=nop           
  nop                          #  8     0x2ee2a  1      OPC=nop           
  nop                          #  9     0x2ee2b  1      OPC=nop           
  nop                          #  10    0x2ee2c  1      OPC=nop           
  nop                          #  11    0x2ee2d  1      OPC=nop           
  nop                          #  12    0x2ee2e  1      OPC=nop           
  nop                          #  13    0x2ee2f  1      OPC=nop           
  nop                          #  14    0x2ee30  1      OPC=nop           
  nop                          #  15    0x2ee31  1      OPC=nop           
  nop                          #  16    0x2ee32  1      OPC=nop           
  nop                          #  17    0x2ee33  1      OPC=nop           
  nop                          #  18    0x2ee34  1      OPC=nop           
  nop                          #  19    0x2ee35  1      OPC=nop           
  nop                          #  20    0x2ee36  1      OPC=nop           
  nop                          #  21    0x2ee37  1      OPC=nop           
  nop                          #  22    0x2ee38  1      OPC=nop           
  nop                          #  23    0x2ee39  1      OPC=nop           
  nop                          #  24    0x2ee3a  1      OPC=nop           
  callq .pthread_cond_destroy  #  25    0x2ee3b  5      OPC=callq_label   
  movl %ebx, %edi              #  26    0x2ee40  2      OPC=movl_r32_r32  
  popq %rbx                    #  27    0x2ee42  1      OPC=popq_r64_1    
  jmpq .free                   #  28    0x2ee43  5      OPC=jmpq_label_1  
  nop                          #  29    0x2ee48  1      OPC=nop           
  nop                          #  30    0x2ee49  1      OPC=nop           
  nop                          #  31    0x2ee4a  1      OPC=nop           
  nop                          #  32    0x2ee4b  1      OPC=nop           
  nop                          #  33    0x2ee4c  1      OPC=nop           
  nop                          #  34    0x2ee4d  1      OPC=nop           
  nop                          #  35    0x2ee4e  1      OPC=nop           
  nop                          #  36    0x2ee4f  1      OPC=nop           
  nop                          #  37    0x2ee50  1      OPC=nop           
  nop                          #  38    0x2ee51  1      OPC=nop           
  nop                          #  39    0x2ee52  1      OPC=nop           
  nop                          #  40    0x2ee53  1      OPC=nop           
  nop                          #  41    0x2ee54  1      OPC=nop           
  nop                          #  42    0x2ee55  1      OPC=nop           
  nop                          #  43    0x2ee56  1      OPC=nop           
  nop                          #  44    0x2ee57  1      OPC=nop           
  nop                          #  45    0x2ee58  1      OPC=nop           
  nop                          #  46    0x2ee59  1      OPC=nop           
  nop                          #  47    0x2ee5a  1      OPC=nop           
  nop                          #  48    0x2ee5b  1      OPC=nop           
  nop                          #  49    0x2ee5c  1      OPC=nop           
  nop                          #  50    0x2ee5d  1      OPC=nop           
  nop                          #  51    0x2ee5e  1      OPC=nop           
  nop                          #  52    0x2ee5f  1      OPC=nop           
                                                                          
.size nc_release_basic_data_mu, .-nc_release_basic_data_mu

