  .text
  .globl fatal_error
  .type fatal_error, @function

#! file-offset 0x6cd80
#! rip-offset  0x2cd80
#! capacity    96 bytes

# Text              #  Line  RIP      Bytes  Opcode              
.fatal_error:       #        0x2cd80  0      OPC=<label>         
  pushq %rbx        #  1     0x2cd80  1      OPC=pushq_r64_1     
  movl %edi, %ebx   #  2     0x2cd81  2      OPC=movl_r32_r32    
  movl %ebx, %edi   #  3     0x2cd83  2      OPC=movl_r32_r32    
  nop               #  4     0x2cd85  1      OPC=nop             
  nop               #  5     0x2cd86  1      OPC=nop             
  nop               #  6     0x2cd87  1      OPC=nop             
  nop               #  7     0x2cd88  1      OPC=nop             
  nop               #  8     0x2cd89  1      OPC=nop             
  nop               #  9     0x2cd8a  1      OPC=nop             
  nop               #  10    0x2cd8b  1      OPC=nop             
  nop               #  11    0x2cd8c  1      OPC=nop             
  nop               #  12    0x2cd8d  1      OPC=nop             
  nop               #  13    0x2cd8e  1      OPC=nop             
  nop               #  14    0x2cd8f  1      OPC=nop             
  nop               #  15    0x2cd90  1      OPC=nop             
  nop               #  16    0x2cd91  1      OPC=nop             
  nop               #  17    0x2cd92  1      OPC=nop             
  nop               #  18    0x2cd93  1      OPC=nop             
  nop               #  19    0x2cd94  1      OPC=nop             
  nop               #  20    0x2cd95  1      OPC=nop             
  nop               #  21    0x2cd96  1      OPC=nop             
  nop               #  22    0x2cd97  1      OPC=nop             
  nop               #  23    0x2cd98  1      OPC=nop             
  nop               #  24    0x2cd99  1      OPC=nop             
  nop               #  25    0x2cd9a  1      OPC=nop             
  callq .strlen     #  26    0x2cd9b  5      OPC=callq_label     
  movl $0x2, %edi   #  27    0x2cda0  5      OPC=movl_r32_imm32  
  movl %eax, %edx   #  28    0x2cda5  2      OPC=movl_r32_r32    
  movl %ebx, %esi   #  29    0x2cda7  2      OPC=movl_r32_r32    
  nop               #  30    0x2cda9  1      OPC=nop             
  nop               #  31    0x2cdaa  1      OPC=nop             
  nop               #  32    0x2cdab  1      OPC=nop             
  nop               #  33    0x2cdac  1      OPC=nop             
  nop               #  34    0x2cdad  1      OPC=nop             
  nop               #  35    0x2cdae  1      OPC=nop             
  nop               #  36    0x2cdaf  1      OPC=nop             
  nop               #  37    0x2cdb0  1      OPC=nop             
  nop               #  38    0x2cdb1  1      OPC=nop             
  nop               #  39    0x2cdb2  1      OPC=nop             
  nop               #  40    0x2cdb3  1      OPC=nop             
  nop               #  41    0x2cdb4  1      OPC=nop             
  nop               #  42    0x2cdb5  1      OPC=nop             
  nop               #  43    0x2cdb6  1      OPC=nop             
  nop               #  44    0x2cdb7  1      OPC=nop             
  nop               #  45    0x2cdb8  1      OPC=nop             
  nop               #  46    0x2cdb9  1      OPC=nop             
  nop               #  47    0x2cdba  1      OPC=nop             
  callq .write      #  48    0x2cdbb  5      OPC=callq_label     
  movl $0x7f, %edi  #  49    0x2cdc0  5      OPC=movl_r32_imm32  
  nop               #  50    0x2cdc5  1      OPC=nop             
  nop               #  51    0x2cdc6  1      OPC=nop             
  nop               #  52    0x2cdc7  1      OPC=nop             
  nop               #  53    0x2cdc8  1      OPC=nop             
  nop               #  54    0x2cdc9  1      OPC=nop             
  nop               #  55    0x2cdca  1      OPC=nop             
  nop               #  56    0x2cdcb  1      OPC=nop             
  nop               #  57    0x2cdcc  1      OPC=nop             
  nop               #  58    0x2cdcd  1      OPC=nop             
  nop               #  59    0x2cdce  1      OPC=nop             
  nop               #  60    0x2cdcf  1      OPC=nop             
  nop               #  61    0x2cdd0  1      OPC=nop             
  nop               #  62    0x2cdd1  1      OPC=nop             
  nop               #  63    0x2cdd2  1      OPC=nop             
  nop               #  64    0x2cdd3  1      OPC=nop             
  nop               #  65    0x2cdd4  1      OPC=nop             
  nop               #  66    0x2cdd5  1      OPC=nop             
  nop               #  67    0x2cdd6  1      OPC=nop             
  nop               #  68    0x2cdd7  1      OPC=nop             
  nop               #  69    0x2cdd8  1      OPC=nop             
  nop               #  70    0x2cdd9  1      OPC=nop             
  nop               #  71    0x2cdda  1      OPC=nop             
  callq ._exit      #  72    0x2cddb  5      OPC=callq_label     
                                                                 
.size fatal_error, .-fatal_error

