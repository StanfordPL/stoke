  .text
  .globl arrayfile_rewind
  .type arrayfile_rewind, @function

#! file-offset 0x6ada0
#! rip-offset  0x2ada0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.arrayfile_rewind:              #        0x2ada0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x2ada0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x2ada2  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)      #  3     0x2ada4  8      OPC=movl_m32_imm32  
  movl %edi, %edi               #  4     0x2adac  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rdi,1), %edx  #  5     0x2adae  5      OPC=movl_r32_m32    
  shll $0x2, %edx               #  6     0x2adb3  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  7     0x2adb6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %edi   #  8     0x2adb8  5      OPC=movl_r32_m32    
  xorl %esi, %esi               #  9     0x2adbd  2      OPC=xorl_r32_r32    
  nop                           #  10    0x2adbf  1      OPC=nop             
  jmpq .memset                  #  11    0x2adc0  5      OPC=jmpq_label_1    
  nop                           #  12    0x2adc5  1      OPC=nop             
  nop                           #  13    0x2adc6  1      OPC=nop             
  nop                           #  14    0x2adc7  1      OPC=nop             
  nop                           #  15    0x2adc8  1      OPC=nop             
  nop                           #  16    0x2adc9  1      OPC=nop             
  nop                           #  17    0x2adca  1      OPC=nop             
  nop                           #  18    0x2adcb  1      OPC=nop             
  nop                           #  19    0x2adcc  1      OPC=nop             
  nop                           #  20    0x2adcd  1      OPC=nop             
  nop                           #  21    0x2adce  1      OPC=nop             
  nop                           #  22    0x2adcf  1      OPC=nop             
  nop                           #  23    0x2add0  1      OPC=nop             
  nop                           #  24    0x2add1  1      OPC=nop             
  nop                           #  25    0x2add2  1      OPC=nop             
  nop                           #  26    0x2add3  1      OPC=nop             
  nop                           #  27    0x2add4  1      OPC=nop             
  nop                           #  28    0x2add5  1      OPC=nop             
  nop                           #  29    0x2add6  1      OPC=nop             
  nop                           #  30    0x2add7  1      OPC=nop             
  nop                           #  31    0x2add8  1      OPC=nop             
  nop                           #  32    0x2add9  1      OPC=nop             
  nop                           #  33    0x2adda  1      OPC=nop             
  nop                           #  34    0x2addb  1      OPC=nop             
  nop                           #  35    0x2addc  1      OPC=nop             
  nop                           #  36    0x2addd  1      OPC=nop             
  nop                           #  37    0x2adde  1      OPC=nop             
  nop                           #  38    0x2addf  1      OPC=nop             
                                                                             
.size arrayfile_rewind, .-arrayfile_rewind

