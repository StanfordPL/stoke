  .text
  .globl fatal_error
  .type fatal_error, @function

#! file-offset 0x6d7a0
#! rip-offset  0x2d7a0
#! capacity    96 bytes

# Text              #  Line  RIP      Bytes  Opcode              
.fatal_error:       #        0x2d7a0  0      OPC=<label>         
  pushq %rbx        #  1     0x2d7a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx   #  2     0x2d7a1  2      OPC=movl_r32_r32    
  movl %ebx, %edi   #  3     0x2d7a3  2      OPC=movl_r32_r32    
  nop               #  4     0x2d7a5  1      OPC=nop             
  nop               #  5     0x2d7a6  1      OPC=nop             
  nop               #  6     0x2d7a7  1      OPC=nop             
  nop               #  7     0x2d7a8  1      OPC=nop             
  nop               #  8     0x2d7a9  1      OPC=nop             
  nop               #  9     0x2d7aa  1      OPC=nop             
  nop               #  10    0x2d7ab  1      OPC=nop             
  nop               #  11    0x2d7ac  1      OPC=nop             
  nop               #  12    0x2d7ad  1      OPC=nop             
  nop               #  13    0x2d7ae  1      OPC=nop             
  nop               #  14    0x2d7af  1      OPC=nop             
  nop               #  15    0x2d7b0  1      OPC=nop             
  nop               #  16    0x2d7b1  1      OPC=nop             
  nop               #  17    0x2d7b2  1      OPC=nop             
  nop               #  18    0x2d7b3  1      OPC=nop             
  nop               #  19    0x2d7b4  1      OPC=nop             
  nop               #  20    0x2d7b5  1      OPC=nop             
  nop               #  21    0x2d7b6  1      OPC=nop             
  nop               #  22    0x2d7b7  1      OPC=nop             
  nop               #  23    0x2d7b8  1      OPC=nop             
  nop               #  24    0x2d7b9  1      OPC=nop             
  nop               #  25    0x2d7ba  1      OPC=nop             
  callq .strlen     #  26    0x2d7bb  5      OPC=callq_label     
  movl $0x2, %edi   #  27    0x2d7c0  5      OPC=movl_r32_imm32  
  movl %eax, %edx   #  28    0x2d7c5  2      OPC=movl_r32_r32    
  movl %ebx, %esi   #  29    0x2d7c7  2      OPC=movl_r32_r32    
  nop               #  30    0x2d7c9  1      OPC=nop             
  nop               #  31    0x2d7ca  1      OPC=nop             
  nop               #  32    0x2d7cb  1      OPC=nop             
  nop               #  33    0x2d7cc  1      OPC=nop             
  nop               #  34    0x2d7cd  1      OPC=nop             
  nop               #  35    0x2d7ce  1      OPC=nop             
  nop               #  36    0x2d7cf  1      OPC=nop             
  nop               #  37    0x2d7d0  1      OPC=nop             
  nop               #  38    0x2d7d1  1      OPC=nop             
  nop               #  39    0x2d7d2  1      OPC=nop             
  nop               #  40    0x2d7d3  1      OPC=nop             
  nop               #  41    0x2d7d4  1      OPC=nop             
  nop               #  42    0x2d7d5  1      OPC=nop             
  nop               #  43    0x2d7d6  1      OPC=nop             
  nop               #  44    0x2d7d7  1      OPC=nop             
  nop               #  45    0x2d7d8  1      OPC=nop             
  nop               #  46    0x2d7d9  1      OPC=nop             
  nop               #  47    0x2d7da  1      OPC=nop             
  callq .write      #  48    0x2d7db  5      OPC=callq_label     
  movl $0x7f, %edi  #  49    0x2d7e0  5      OPC=movl_r32_imm32  
  nop               #  50    0x2d7e5  1      OPC=nop             
  nop               #  51    0x2d7e6  1      OPC=nop             
  nop               #  52    0x2d7e7  1      OPC=nop             
  nop               #  53    0x2d7e8  1      OPC=nop             
  nop               #  54    0x2d7e9  1      OPC=nop             
  nop               #  55    0x2d7ea  1      OPC=nop             
  nop               #  56    0x2d7eb  1      OPC=nop             
  nop               #  57    0x2d7ec  1      OPC=nop             
  nop               #  58    0x2d7ed  1      OPC=nop             
  nop               #  59    0x2d7ee  1      OPC=nop             
  nop               #  60    0x2d7ef  1      OPC=nop             
  nop               #  61    0x2d7f0  1      OPC=nop             
  nop               #  62    0x2d7f1  1      OPC=nop             
  nop               #  63    0x2d7f2  1      OPC=nop             
  nop               #  64    0x2d7f3  1      OPC=nop             
  nop               #  65    0x2d7f4  1      OPC=nop             
  nop               #  66    0x2d7f5  1      OPC=nop             
  nop               #  67    0x2d7f6  1      OPC=nop             
  nop               #  68    0x2d7f7  1      OPC=nop             
  nop               #  69    0x2d7f8  1      OPC=nop             
  nop               #  70    0x2d7f9  1      OPC=nop             
  nop               #  71    0x2d7fa  1      OPC=nop             
  callq ._exit      #  72    0x2d7fb  5      OPC=callq_label     
                                                                 
.size fatal_error, .-fatal_error

