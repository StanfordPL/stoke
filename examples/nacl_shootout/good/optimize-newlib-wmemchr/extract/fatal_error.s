  .text
  .globl fatal_error
  .type fatal_error, @function

#! file-offset 0x6d080
#! rip-offset  0x2d080
#! capacity    96 bytes

# Text              #  Line  RIP      Bytes  Opcode              
.fatal_error:       #        0x2d080  0      OPC=<label>         
  pushq %rbx        #  1     0x2d080  1      OPC=pushq_r64_1     
  movl %edi, %ebx   #  2     0x2d081  2      OPC=movl_r32_r32    
  movl %ebx, %edi   #  3     0x2d083  2      OPC=movl_r32_r32    
  nop               #  4     0x2d085  1      OPC=nop             
  nop               #  5     0x2d086  1      OPC=nop             
  nop               #  6     0x2d087  1      OPC=nop             
  nop               #  7     0x2d088  1      OPC=nop             
  nop               #  8     0x2d089  1      OPC=nop             
  nop               #  9     0x2d08a  1      OPC=nop             
  nop               #  10    0x2d08b  1      OPC=nop             
  nop               #  11    0x2d08c  1      OPC=nop             
  nop               #  12    0x2d08d  1      OPC=nop             
  nop               #  13    0x2d08e  1      OPC=nop             
  nop               #  14    0x2d08f  1      OPC=nop             
  nop               #  15    0x2d090  1      OPC=nop             
  nop               #  16    0x2d091  1      OPC=nop             
  nop               #  17    0x2d092  1      OPC=nop             
  nop               #  18    0x2d093  1      OPC=nop             
  nop               #  19    0x2d094  1      OPC=nop             
  nop               #  20    0x2d095  1      OPC=nop             
  nop               #  21    0x2d096  1      OPC=nop             
  nop               #  22    0x2d097  1      OPC=nop             
  nop               #  23    0x2d098  1      OPC=nop             
  nop               #  24    0x2d099  1      OPC=nop             
  nop               #  25    0x2d09a  1      OPC=nop             
  callq .strlen     #  26    0x2d09b  5      OPC=callq_label     
  movl $0x2, %edi   #  27    0x2d0a0  5      OPC=movl_r32_imm32  
  movl %eax, %edx   #  28    0x2d0a5  2      OPC=movl_r32_r32    
  movl %ebx, %esi   #  29    0x2d0a7  2      OPC=movl_r32_r32    
  nop               #  30    0x2d0a9  1      OPC=nop             
  nop               #  31    0x2d0aa  1      OPC=nop             
  nop               #  32    0x2d0ab  1      OPC=nop             
  nop               #  33    0x2d0ac  1      OPC=nop             
  nop               #  34    0x2d0ad  1      OPC=nop             
  nop               #  35    0x2d0ae  1      OPC=nop             
  nop               #  36    0x2d0af  1      OPC=nop             
  nop               #  37    0x2d0b0  1      OPC=nop             
  nop               #  38    0x2d0b1  1      OPC=nop             
  nop               #  39    0x2d0b2  1      OPC=nop             
  nop               #  40    0x2d0b3  1      OPC=nop             
  nop               #  41    0x2d0b4  1      OPC=nop             
  nop               #  42    0x2d0b5  1      OPC=nop             
  nop               #  43    0x2d0b6  1      OPC=nop             
  nop               #  44    0x2d0b7  1      OPC=nop             
  nop               #  45    0x2d0b8  1      OPC=nop             
  nop               #  46    0x2d0b9  1      OPC=nop             
  nop               #  47    0x2d0ba  1      OPC=nop             
  callq .write      #  48    0x2d0bb  5      OPC=callq_label     
  movl $0x7f, %edi  #  49    0x2d0c0  5      OPC=movl_r32_imm32  
  nop               #  50    0x2d0c5  1      OPC=nop             
  nop               #  51    0x2d0c6  1      OPC=nop             
  nop               #  52    0x2d0c7  1      OPC=nop             
  nop               #  53    0x2d0c8  1      OPC=nop             
  nop               #  54    0x2d0c9  1      OPC=nop             
  nop               #  55    0x2d0ca  1      OPC=nop             
  nop               #  56    0x2d0cb  1      OPC=nop             
  nop               #  57    0x2d0cc  1      OPC=nop             
  nop               #  58    0x2d0cd  1      OPC=nop             
  nop               #  59    0x2d0ce  1      OPC=nop             
  nop               #  60    0x2d0cf  1      OPC=nop             
  nop               #  61    0x2d0d0  1      OPC=nop             
  nop               #  62    0x2d0d1  1      OPC=nop             
  nop               #  63    0x2d0d2  1      OPC=nop             
  nop               #  64    0x2d0d3  1      OPC=nop             
  nop               #  65    0x2d0d4  1      OPC=nop             
  nop               #  66    0x2d0d5  1      OPC=nop             
  nop               #  67    0x2d0d6  1      OPC=nop             
  nop               #  68    0x2d0d7  1      OPC=nop             
  nop               #  69    0x2d0d8  1      OPC=nop             
  nop               #  70    0x2d0d9  1      OPC=nop             
  nop               #  71    0x2d0da  1      OPC=nop             
  callq ._exit      #  72    0x2d0db  5      OPC=callq_label     
                                                                 
.size fatal_error, .-fatal_error

