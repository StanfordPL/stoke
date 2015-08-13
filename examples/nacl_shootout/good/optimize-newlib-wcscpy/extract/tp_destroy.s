  .text
  .globl tp_destroy
  .type tp_destroy, @function

#! file-offset 0x63e80
#! rip-offset  0x23e80
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode            
.tp_destroy:                    #        0x23e80  0      OPC=<label>       
  pushq %rbx                    #  1     0x23e80  1      OPC=pushq_r64_1   
  movl %edi, %ebx               #  2     0x23e81  2      OPC=movl_r32_r32  
  movl %ebx, %ebx               #  3     0x23e83  2      OPC=movl_r32_r32  
  movl (%r15,%rbx,1), %edi      #  4     0x23e85  4      OPC=movl_r32_m32  
  nop                           #  5     0x23e89  1      OPC=nop           
  nop                           #  6     0x23e8a  1      OPC=nop           
  nop                           #  7     0x23e8b  1      OPC=nop           
  nop                           #  8     0x23e8c  1      OPC=nop           
  nop                           #  9     0x23e8d  1      OPC=nop           
  nop                           #  10    0x23e8e  1      OPC=nop           
  nop                           #  11    0x23e8f  1      OPC=nop           
  nop                           #  12    0x23e90  1      OPC=nop           
  nop                           #  13    0x23e91  1      OPC=nop           
  nop                           #  14    0x23e92  1      OPC=nop           
  nop                           #  15    0x23e93  1      OPC=nop           
  nop                           #  16    0x23e94  1      OPC=nop           
  nop                           #  17    0x23e95  1      OPC=nop           
  nop                           #  18    0x23e96  1      OPC=nop           
  nop                           #  19    0x23e97  1      OPC=nop           
  nop                           #  20    0x23e98  1      OPC=nop           
  nop                           #  21    0x23e99  1      OPC=nop           
  nop                           #  22    0x23e9a  1      OPC=nop           
  callq .free                   #  23    0x23e9b  5      OPC=callq_label   
  leal 0xc(%rbx), %edi          #  24    0x23ea0  3      OPC=leal_r32_m16  
  nop                           #  25    0x23ea3  1      OPC=nop           
  nop                           #  26    0x23ea4  1      OPC=nop           
  nop                           #  27    0x23ea5  1      OPC=nop           
  nop                           #  28    0x23ea6  1      OPC=nop           
  nop                           #  29    0x23ea7  1      OPC=nop           
  nop                           #  30    0x23ea8  1      OPC=nop           
  nop                           #  31    0x23ea9  1      OPC=nop           
  nop                           #  32    0x23eaa  1      OPC=nop           
  nop                           #  33    0x23eab  1      OPC=nop           
  nop                           #  34    0x23eac  1      OPC=nop           
  nop                           #  35    0x23ead  1      OPC=nop           
  nop                           #  36    0x23eae  1      OPC=nop           
  nop                           #  37    0x23eaf  1      OPC=nop           
  nop                           #  38    0x23eb0  1      OPC=nop           
  nop                           #  39    0x23eb1  1      OPC=nop           
  nop                           #  40    0x23eb2  1      OPC=nop           
  nop                           #  41    0x23eb3  1      OPC=nop           
  nop                           #  42    0x23eb4  1      OPC=nop           
  nop                           #  43    0x23eb5  1      OPC=nop           
  nop                           #  44    0x23eb6  1      OPC=nop           
  nop                           #  45    0x23eb7  1      OPC=nop           
  nop                           #  46    0x23eb8  1      OPC=nop           
  nop                           #  47    0x23eb9  1      OPC=nop           
  nop                           #  48    0x23eba  1      OPC=nop           
  callq .pthread_mutex_destroy  #  49    0x23ebb  5      OPC=callq_label   
  movl %ebx, %edi               #  50    0x23ec0  2      OPC=movl_r32_r32  
  popq %rbx                     #  51    0x23ec2  1      OPC=popq_r64_1    
  jmpq .free                    #  52    0x23ec3  5      OPC=jmpq_label_1  
  nop                           #  53    0x23ec8  1      OPC=nop           
  nop                           #  54    0x23ec9  1      OPC=nop           
  nop                           #  55    0x23eca  1      OPC=nop           
  nop                           #  56    0x23ecb  1      OPC=nop           
  nop                           #  57    0x23ecc  1      OPC=nop           
  nop                           #  58    0x23ecd  1      OPC=nop           
  nop                           #  59    0x23ece  1      OPC=nop           
  nop                           #  60    0x23ecf  1      OPC=nop           
  nop                           #  61    0x23ed0  1      OPC=nop           
  nop                           #  62    0x23ed1  1      OPC=nop           
  nop                           #  63    0x23ed2  1      OPC=nop           
  nop                           #  64    0x23ed3  1      OPC=nop           
  nop                           #  65    0x23ed4  1      OPC=nop           
  nop                           #  66    0x23ed5  1      OPC=nop           
  nop                           #  67    0x23ed6  1      OPC=nop           
  nop                           #  68    0x23ed7  1      OPC=nop           
  nop                           #  69    0x23ed8  1      OPC=nop           
  nop                           #  70    0x23ed9  1      OPC=nop           
  nop                           #  71    0x23eda  1      OPC=nop           
  nop                           #  72    0x23edb  1      OPC=nop           
  nop                           #  73    0x23edc  1      OPC=nop           
  nop                           #  74    0x23edd  1      OPC=nop           
  nop                           #  75    0x23ede  1      OPC=nop           
  nop                           #  76    0x23edf  1      OPC=nop           
                                                                           
.size tp_destroy, .-tp_destroy

