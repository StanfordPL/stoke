  .text
  .globl fatal_error
  .type fatal_error, @function

#! file-offset 0x6c840
#! rip-offset  0x2c840
#! capacity    96 bytes

# Text              #  Line  RIP      Bytes  Opcode    
.fatal_error:       #        0x2c840  0      OPC=0     
  pushq %rbx        #  1     0x2c840  1      OPC=1861  
  movl %edi, %ebx   #  2     0x2c841  2      OPC=1157  
  movl %ebx, %edi   #  3     0x2c843  2      OPC=1157  
  nop               #  4     0x2c845  1      OPC=1343  
  nop               #  5     0x2c846  1      OPC=1343  
  nop               #  6     0x2c847  1      OPC=1343  
  nop               #  7     0x2c848  1      OPC=1343  
  nop               #  8     0x2c849  1      OPC=1343  
  nop               #  9     0x2c84a  1      OPC=1343  
  nop               #  10    0x2c84b  1      OPC=1343  
  nop               #  11    0x2c84c  1      OPC=1343  
  nop               #  12    0x2c84d  1      OPC=1343  
  nop               #  13    0x2c84e  1      OPC=1343  
  nop               #  14    0x2c84f  1      OPC=1343  
  nop               #  15    0x2c850  1      OPC=1343  
  nop               #  16    0x2c851  1      OPC=1343  
  nop               #  17    0x2c852  1      OPC=1343  
  nop               #  18    0x2c853  1      OPC=1343  
  nop               #  19    0x2c854  1      OPC=1343  
  nop               #  20    0x2c855  1      OPC=1343  
  nop               #  21    0x2c856  1      OPC=1343  
  nop               #  22    0x2c857  1      OPC=1343  
  nop               #  23    0x2c858  1      OPC=1343  
  nop               #  24    0x2c859  1      OPC=1343  
  nop               #  25    0x2c85a  1      OPC=1343  
  callq .strlen     #  26    0x2c85b  5      OPC=260   
  movl $0x2, %edi   #  27    0x2c860  5      OPC=1154  
  movl %eax, %edx   #  28    0x2c865  2      OPC=1157  
  movl %ebx, %esi   #  29    0x2c867  2      OPC=1157  
  nop               #  30    0x2c869  1      OPC=1343  
  nop               #  31    0x2c86a  1      OPC=1343  
  nop               #  32    0x2c86b  1      OPC=1343  
  nop               #  33    0x2c86c  1      OPC=1343  
  nop               #  34    0x2c86d  1      OPC=1343  
  nop               #  35    0x2c86e  1      OPC=1343  
  nop               #  36    0x2c86f  1      OPC=1343  
  nop               #  37    0x2c870  1      OPC=1343  
  nop               #  38    0x2c871  1      OPC=1343  
  nop               #  39    0x2c872  1      OPC=1343  
  nop               #  40    0x2c873  1      OPC=1343  
  nop               #  41    0x2c874  1      OPC=1343  
  nop               #  42    0x2c875  1      OPC=1343  
  nop               #  43    0x2c876  1      OPC=1343  
  nop               #  44    0x2c877  1      OPC=1343  
  nop               #  45    0x2c878  1      OPC=1343  
  nop               #  46    0x2c879  1      OPC=1343  
  nop               #  47    0x2c87a  1      OPC=1343  
  callq .write      #  48    0x2c87b  5      OPC=260   
  movl $0x7f, %edi  #  49    0x2c880  5      OPC=1154  
  nop               #  50    0x2c885  1      OPC=1343  
  nop               #  51    0x2c886  1      OPC=1343  
  nop               #  52    0x2c887  1      OPC=1343  
  nop               #  53    0x2c888  1      OPC=1343  
  nop               #  54    0x2c889  1      OPC=1343  
  nop               #  55    0x2c88a  1      OPC=1343  
  nop               #  56    0x2c88b  1      OPC=1343  
  nop               #  57    0x2c88c  1      OPC=1343  
  nop               #  58    0x2c88d  1      OPC=1343  
  nop               #  59    0x2c88e  1      OPC=1343  
  nop               #  60    0x2c88f  1      OPC=1343  
  nop               #  61    0x2c890  1      OPC=1343  
  nop               #  62    0x2c891  1      OPC=1343  
  nop               #  63    0x2c892  1      OPC=1343  
  nop               #  64    0x2c893  1      OPC=1343  
  nop               #  65    0x2c894  1      OPC=1343  
  nop               #  66    0x2c895  1      OPC=1343  
  nop               #  67    0x2c896  1      OPC=1343  
  nop               #  68    0x2c897  1      OPC=1343  
  nop               #  69    0x2c898  1      OPC=1343  
  nop               #  70    0x2c899  1      OPC=1343  
  nop               #  71    0x2c89a  1      OPC=1343  
  callq ._exit      #  72    0x2c89b  5      OPC=260   
                                                       
.size fatal_error, .-fatal_error

