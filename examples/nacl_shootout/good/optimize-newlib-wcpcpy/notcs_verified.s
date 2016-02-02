  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wcpcpy:                        #        0x140ac0  0      OPC=<label>         
  nop                           #  1     0x140ac0  1      OPC=nop             
  nop                           #  2     0x140ac1  1      OPC=nop             
  nop                           #  3     0x140ac2  1      OPC=nop             
  nop                           #  4     0x140ac3  1      OPC=nop             
  nop                           #  5     0x140ac4  1      OPC=nop             
  nop                           #  6     0x140ac5  1      OPC=nop             
  nop                           #  7     0x140ac6  1      OPC=nop             
  nop                           #  8     0x140ac7  1      OPC=nop             
  nop                           #  9     0x140ac8  1      OPC=nop             
  nop                           #  10    0x140ac9  1      OPC=nop             
  nop                           #  11    0x140aca  1      OPC=nop             
  nop                           #  12    0x140acb  1      OPC=nop             
  nop                           #  13    0x140acc  1      OPC=nop             
  movl %edi, %edi               #  14    0x140acd  2      OPC=movl_r32_r32_1  
  nop                           #  15    0x140acf  1      OPC=nop             
  nop                           #  16    0x140ad0  1      OPC=nop             
  nop                           #  17    0x140ad1  1      OPC=nop             
  nop                           #  18    0x140ad2  1      OPC=nop             
  nop                           #  19    0x140ad3  1      OPC=nop             
  nop                           #  20    0x140ad4  1      OPC=nop             
  nop                           #  21    0x140ad5  1      OPC=nop             
  nop                           #  22    0x140ad6  1      OPC=nop             
  nop                           #  23    0x140ad7  1      OPC=nop             
  nop                           #  24    0x140ad8  1      OPC=nop             
  nop                           #  25    0x140ad9  1      OPC=nop             
  nop                           #  26    0x140ada  1      OPC=nop             
  nop                           #  27    0x140adb  1      OPC=nop             
  nop                           #  28    0x140adc  1      OPC=nop             
  nop                           #  29    0x140add  1      OPC=nop             
  nop                           #  30    0x140ade  1      OPC=nop             
  nop                           #  31    0x140adf  1      OPC=nop             
.L_140ae0:                      #        0x140ae0  0      OPC=<label>         
  nop                           #  32    0x140ae0  1      OPC=nop             
  nop                           #  33    0x140ae1  1      OPC=nop             
  nop                           #  34    0x140ae2  1      OPC=nop             
  nop                           #  35    0x140ae3  1      OPC=nop             
  nop                           #  36    0x140ae4  1      OPC=nop             
  nop                           #  37    0x140ae5  1      OPC=nop             
  nop                           #  38    0x140ae6  1      OPC=nop             
  addl $0x4, %esi               #  39    0x140ae7  3      OPC=addl_r32_imm8   
  movl -0x4(%r15,%rsi,1), %edx  #  40    0x140aea  5      OPC=movl_r32_m32    
  movq %rdi, %rax               #  41    0x140aef  3      OPC=movq_r64_r64    
  nop                           #  42    0x140af2  1      OPC=nop             
  nop                           #  43    0x140af3  1      OPC=nop             
  nop                           #  44    0x140af4  1      OPC=nop             
  nop                           #  45    0x140af5  1      OPC=nop             
  nop                           #  46    0x140af6  1      OPC=nop             
  addl $0x4, %edi               #  47    0x140af7  3      OPC=addl_r32_imm8   
  movl %edx, -0x4(%r15,%rdi,1)  #  48    0x140afa  5      OPC=movl_m32_r32    
  nop                           #  49    0x140aff  1      OPC=nop             
  nop                           #  50    0x140b00  1      OPC=nop             
  nop                           #  51    0x140b01  1      OPC=nop             
  nop                           #  52    0x140b02  1      OPC=nop             
  nop                           #  53    0x140b03  1      OPC=nop             
  nop                           #  54    0x140b04  1      OPC=nop             
  nop                           #  55    0x140b05  1      OPC=nop             
  nop                           #  56    0x140b06  1      OPC=nop             
  nop                           #  57    0x140b07  1      OPC=nop             
  nop                           #  58    0x140b08  1      OPC=nop             
  nop                           #  59    0x140b09  1      OPC=nop             
  nop                           #  60    0x140b0a  1      OPC=nop             
  nop                           #  61    0x140b0b  1      OPC=nop             
  nop                           #  62    0x140b0c  1      OPC=nop             
  nop                           #  63    0x140b0d  1      OPC=nop             
  testl %edx, %edx              #  64    0x140b0e  2      OPC=testl_r32_r32   
  jne .L_140ae0                 #  65    0x140b10  2      OPC=jne_label       
  nop                           #  66    0x140b12  1      OPC=nop             
  popq %r11                     #  67    0x140b13  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  68    0x140b15  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  69    0x140b19  3      OPC=addq_r64_r64    
  jmpq %r11                     #  70    0x140b1c  3      OPC=jmpq_r64        
                                                                              
.size wcpcpy, .-wcpcpy
