  .text
  .globl nc_release_basic_data_mu
  .type nc_release_basic_data_mu, @function

#! file-offset 0x6dec0
#! rip-offset  0x2dec0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.nc_release_basic_data_mu:     #        0x2dec0  0      OPC=0     
  pushq %rbx                   #  1     0x2dec0  1      OPC=1861  
  movl %edi, %ebx              #  2     0x2dec1  2      OPC=1157  
  leal 0x8(%rbx), %edi         #  3     0x2dec3  3      OPC=1066  
  nop                          #  4     0x2dec6  1      OPC=1343  
  nop                          #  5     0x2dec7  1      OPC=1343  
  nop                          #  6     0x2dec8  1      OPC=1343  
  nop                          #  7     0x2dec9  1      OPC=1343  
  nop                          #  8     0x2deca  1      OPC=1343  
  nop                          #  9     0x2decb  1      OPC=1343  
  nop                          #  10    0x2decc  1      OPC=1343  
  nop                          #  11    0x2decd  1      OPC=1343  
  nop                          #  12    0x2dece  1      OPC=1343  
  nop                          #  13    0x2decf  1      OPC=1343  
  nop                          #  14    0x2ded0  1      OPC=1343  
  nop                          #  15    0x2ded1  1      OPC=1343  
  nop                          #  16    0x2ded2  1      OPC=1343  
  nop                          #  17    0x2ded3  1      OPC=1343  
  nop                          #  18    0x2ded4  1      OPC=1343  
  nop                          #  19    0x2ded5  1      OPC=1343  
  nop                          #  20    0x2ded6  1      OPC=1343  
  nop                          #  21    0x2ded7  1      OPC=1343  
  nop                          #  22    0x2ded8  1      OPC=1343  
  nop                          #  23    0x2ded9  1      OPC=1343  
  nop                          #  24    0x2deda  1      OPC=1343  
  callq .pthread_cond_destroy  #  25    0x2dedb  5      OPC=260   
  movl %ebx, %edi              #  26    0x2dee0  2      OPC=1157  
  popq %rbx                    #  27    0x2dee2  1      OPC=1694  
  jmpq .free                   #  28    0x2dee3  5      OPC=930   
  nop                          #  29    0x2dee8  1      OPC=1343  
  nop                          #  30    0x2dee9  1      OPC=1343  
  nop                          #  31    0x2deea  1      OPC=1343  
  nop                          #  32    0x2deeb  1      OPC=1343  
  nop                          #  33    0x2deec  1      OPC=1343  
  nop                          #  34    0x2deed  1      OPC=1343  
  nop                          #  35    0x2deee  1      OPC=1343  
  nop                          #  36    0x2deef  1      OPC=1343  
  nop                          #  37    0x2def0  1      OPC=1343  
  nop                          #  38    0x2def1  1      OPC=1343  
  nop                          #  39    0x2def2  1      OPC=1343  
  nop                          #  40    0x2def3  1      OPC=1343  
  nop                          #  41    0x2def4  1      OPC=1343  
  nop                          #  42    0x2def5  1      OPC=1343  
  nop                          #  43    0x2def6  1      OPC=1343  
  nop                          #  44    0x2def7  1      OPC=1343  
  nop                          #  45    0x2def8  1      OPC=1343  
  nop                          #  46    0x2def9  1      OPC=1343  
  nop                          #  47    0x2defa  1      OPC=1343  
  nop                          #  48    0x2defb  1      OPC=1343  
  nop                          #  49    0x2defc  1      OPC=1343  
  nop                          #  50    0x2defd  1      OPC=1343  
  nop                          #  51    0x2defe  1      OPC=1343  
  nop                          #  52    0x2deff  1      OPC=1343  
                                                                  
.size nc_release_basic_data_mu, .-nc_release_basic_data_mu

