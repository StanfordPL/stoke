  .text
  .globl tp_destroy
  .type tp_destroy, @function

#! file-offset 0x64400
#! rip-offset  0x24400
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode            
.tp_destroy:                    #        0x24400  0      OPC=<label>       
  pushq %rbx                    #  1     0x24400  1      OPC=pushq_r64_1   
  movl %edi, %ebx               #  2     0x24401  2      OPC=movl_r32_r32  
  movl %ebx, %ebx               #  3     0x24403  2      OPC=movl_r32_r32  
  movl (%r15,%rbx,1), %edi      #  4     0x24405  4      OPC=movl_r32_m32  
  nop                           #  5     0x24409  1      OPC=nop           
  nop                           #  6     0x2440a  1      OPC=nop           
  nop                           #  7     0x2440b  1      OPC=nop           
  nop                           #  8     0x2440c  1      OPC=nop           
  nop                           #  9     0x2440d  1      OPC=nop           
  nop                           #  10    0x2440e  1      OPC=nop           
  nop                           #  11    0x2440f  1      OPC=nop           
  nop                           #  12    0x24410  1      OPC=nop           
  nop                           #  13    0x24411  1      OPC=nop           
  nop                           #  14    0x24412  1      OPC=nop           
  nop                           #  15    0x24413  1      OPC=nop           
  nop                           #  16    0x24414  1      OPC=nop           
  nop                           #  17    0x24415  1      OPC=nop           
  nop                           #  18    0x24416  1      OPC=nop           
  nop                           #  19    0x24417  1      OPC=nop           
  nop                           #  20    0x24418  1      OPC=nop           
  nop                           #  21    0x24419  1      OPC=nop           
  nop                           #  22    0x2441a  1      OPC=nop           
  callq .free                   #  23    0x2441b  5      OPC=callq_label   
  leal 0xc(%rbx), %edi          #  24    0x24420  3      OPC=leal_r32_m16  
  nop                           #  25    0x24423  1      OPC=nop           
  nop                           #  26    0x24424  1      OPC=nop           
  nop                           #  27    0x24425  1      OPC=nop           
  nop                           #  28    0x24426  1      OPC=nop           
  nop                           #  29    0x24427  1      OPC=nop           
  nop                           #  30    0x24428  1      OPC=nop           
  nop                           #  31    0x24429  1      OPC=nop           
  nop                           #  32    0x2442a  1      OPC=nop           
  nop                           #  33    0x2442b  1      OPC=nop           
  nop                           #  34    0x2442c  1      OPC=nop           
  nop                           #  35    0x2442d  1      OPC=nop           
  nop                           #  36    0x2442e  1      OPC=nop           
  nop                           #  37    0x2442f  1      OPC=nop           
  nop                           #  38    0x24430  1      OPC=nop           
  nop                           #  39    0x24431  1      OPC=nop           
  nop                           #  40    0x24432  1      OPC=nop           
  nop                           #  41    0x24433  1      OPC=nop           
  nop                           #  42    0x24434  1      OPC=nop           
  nop                           #  43    0x24435  1      OPC=nop           
  nop                           #  44    0x24436  1      OPC=nop           
  nop                           #  45    0x24437  1      OPC=nop           
  nop                           #  46    0x24438  1      OPC=nop           
  nop                           #  47    0x24439  1      OPC=nop           
  nop                           #  48    0x2443a  1      OPC=nop           
  callq .pthread_mutex_destroy  #  49    0x2443b  5      OPC=callq_label   
  movl %ebx, %edi               #  50    0x24440  2      OPC=movl_r32_r32  
  popq %rbx                     #  51    0x24442  1      OPC=popq_r64_1    
  jmpq .free                    #  52    0x24443  5      OPC=jmpq_label_1  
  nop                           #  53    0x24448  1      OPC=nop           
  nop                           #  54    0x24449  1      OPC=nop           
  nop                           #  55    0x2444a  1      OPC=nop           
  nop                           #  56    0x2444b  1      OPC=nop           
  nop                           #  57    0x2444c  1      OPC=nop           
  nop                           #  58    0x2444d  1      OPC=nop           
  nop                           #  59    0x2444e  1      OPC=nop           
  nop                           #  60    0x2444f  1      OPC=nop           
  nop                           #  61    0x24450  1      OPC=nop           
  nop                           #  62    0x24451  1      OPC=nop           
  nop                           #  63    0x24452  1      OPC=nop           
  nop                           #  64    0x24453  1      OPC=nop           
  nop                           #  65    0x24454  1      OPC=nop           
  nop                           #  66    0x24455  1      OPC=nop           
  nop                           #  67    0x24456  1      OPC=nop           
  nop                           #  68    0x24457  1      OPC=nop           
  nop                           #  69    0x24458  1      OPC=nop           
  nop                           #  70    0x24459  1      OPC=nop           
  nop                           #  71    0x2445a  1      OPC=nop           
  nop                           #  72    0x2445b  1      OPC=nop           
  nop                           #  73    0x2445c  1      OPC=nop           
  nop                           #  74    0x2445d  1      OPC=nop           
  nop                           #  75    0x2445e  1      OPC=nop           
  nop                           #  76    0x2445f  1      OPC=nop           
                                                                           
.size tp_destroy, .-tp_destroy

