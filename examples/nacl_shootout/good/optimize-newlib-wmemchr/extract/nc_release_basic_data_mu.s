  .text
  .globl nc_release_basic_data_mu
  .type nc_release_basic_data_mu, @function

#! file-offset 0x6e700
#! rip-offset  0x2e700
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode            
.nc_release_basic_data_mu:     #        0x2e700  0      OPC=<label>       
  pushq %rbx                   #  1     0x2e700  1      OPC=pushq_r64_1   
  movl %edi, %ebx              #  2     0x2e701  2      OPC=movl_r32_r32  
  leal 0x8(%rbx), %edi         #  3     0x2e703  3      OPC=leal_r32_m16  
  nop                          #  4     0x2e706  1      OPC=nop           
  nop                          #  5     0x2e707  1      OPC=nop           
  nop                          #  6     0x2e708  1      OPC=nop           
  nop                          #  7     0x2e709  1      OPC=nop           
  nop                          #  8     0x2e70a  1      OPC=nop           
  nop                          #  9     0x2e70b  1      OPC=nop           
  nop                          #  10    0x2e70c  1      OPC=nop           
  nop                          #  11    0x2e70d  1      OPC=nop           
  nop                          #  12    0x2e70e  1      OPC=nop           
  nop                          #  13    0x2e70f  1      OPC=nop           
  nop                          #  14    0x2e710  1      OPC=nop           
  nop                          #  15    0x2e711  1      OPC=nop           
  nop                          #  16    0x2e712  1      OPC=nop           
  nop                          #  17    0x2e713  1      OPC=nop           
  nop                          #  18    0x2e714  1      OPC=nop           
  nop                          #  19    0x2e715  1      OPC=nop           
  nop                          #  20    0x2e716  1      OPC=nop           
  nop                          #  21    0x2e717  1      OPC=nop           
  nop                          #  22    0x2e718  1      OPC=nop           
  nop                          #  23    0x2e719  1      OPC=nop           
  nop                          #  24    0x2e71a  1      OPC=nop           
  callq .pthread_cond_destroy  #  25    0x2e71b  5      OPC=callq_label   
  movl %ebx, %edi              #  26    0x2e720  2      OPC=movl_r32_r32  
  popq %rbx                    #  27    0x2e722  1      OPC=popq_r64_1    
  jmpq .free                   #  28    0x2e723  5      OPC=jmpq_label_1  
  nop                          #  29    0x2e728  1      OPC=nop           
  nop                          #  30    0x2e729  1      OPC=nop           
  nop                          #  31    0x2e72a  1      OPC=nop           
  nop                          #  32    0x2e72b  1      OPC=nop           
  nop                          #  33    0x2e72c  1      OPC=nop           
  nop                          #  34    0x2e72d  1      OPC=nop           
  nop                          #  35    0x2e72e  1      OPC=nop           
  nop                          #  36    0x2e72f  1      OPC=nop           
  nop                          #  37    0x2e730  1      OPC=nop           
  nop                          #  38    0x2e731  1      OPC=nop           
  nop                          #  39    0x2e732  1      OPC=nop           
  nop                          #  40    0x2e733  1      OPC=nop           
  nop                          #  41    0x2e734  1      OPC=nop           
  nop                          #  42    0x2e735  1      OPC=nop           
  nop                          #  43    0x2e736  1      OPC=nop           
  nop                          #  44    0x2e737  1      OPC=nop           
  nop                          #  45    0x2e738  1      OPC=nop           
  nop                          #  46    0x2e739  1      OPC=nop           
  nop                          #  47    0x2e73a  1      OPC=nop           
  nop                          #  48    0x2e73b  1      OPC=nop           
  nop                          #  49    0x2e73c  1      OPC=nop           
  nop                          #  50    0x2e73d  1      OPC=nop           
  nop                          #  51    0x2e73e  1      OPC=nop           
  nop                          #  52    0x2e73f  1      OPC=nop           
                                                                          
.size nc_release_basic_data_mu, .-nc_release_basic_data_mu

