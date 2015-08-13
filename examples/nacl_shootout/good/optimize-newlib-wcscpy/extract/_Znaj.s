  .text
  .globl _Znaj
  .type _Znaj, @function

#! file-offset 0x120d20
#! rip-offset  0xe0d20
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._Znaj:                         #        0xe0d20  0      OPC=<label>         
  subl $0x8, %esp               #  1     0xe0d20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  2     0xe0d23  3      OPC=addq_r64_r64    
  nop                           #  3     0xe0d26  1      OPC=nop             
  nop                           #  4     0xe0d27  1      OPC=nop             
  nop                           #  5     0xe0d28  1      OPC=nop             
  nop                           #  6     0xe0d29  1      OPC=nop             
  nop                           #  7     0xe0d2a  1      OPC=nop             
  nop                           #  8     0xe0d2b  1      OPC=nop             
  nop                           #  9     0xe0d2c  1      OPC=nop             
  nop                           #  10    0xe0d2d  1      OPC=nop             
  nop                           #  11    0xe0d2e  1      OPC=nop             
  nop                           #  12    0xe0d2f  1      OPC=nop             
  nop                           #  13    0xe0d30  1      OPC=nop             
  nop                           #  14    0xe0d31  1      OPC=nop             
  nop                           #  15    0xe0d32  1      OPC=nop             
  nop                           #  16    0xe0d33  1      OPC=nop             
  nop                           #  17    0xe0d34  1      OPC=nop             
  nop                           #  18    0xe0d35  1      OPC=nop             
  nop                           #  19    0xe0d36  1      OPC=nop             
  nop                           #  20    0xe0d37  1      OPC=nop             
  nop                           #  21    0xe0d38  1      OPC=nop             
  nop                           #  22    0xe0d39  1      OPC=nop             
  nop                           #  23    0xe0d3a  1      OPC=nop             
  callq ._Znwj                  #  24    0xe0d3b  5      OPC=callq_label     
  addl $0x8, %esp               #  25    0xe0d40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  26    0xe0d43  3      OPC=addq_r64_r64    
  movl %eax, %eax               #  27    0xe0d46  2      OPC=movl_r32_r32    
  popq %r11                     #  28    0xe0d48  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  29    0xe0d4a  7      OPC=andl_r32_imm32  
  nop                           #  30    0xe0d51  1      OPC=nop             
  nop                           #  31    0xe0d52  1      OPC=nop             
  nop                           #  32    0xe0d53  1      OPC=nop             
  nop                           #  33    0xe0d54  1      OPC=nop             
  addq %r15, %r11               #  34    0xe0d55  3      OPC=addq_r64_r64    
  jmpq %r11                     #  35    0xe0d58  3      OPC=jmpq_r64        
  nop                           #  36    0xe0d5b  1      OPC=nop             
  nop                           #  37    0xe0d5c  1      OPC=nop             
  nop                           #  38    0xe0d5d  1      OPC=nop             
  nop                           #  39    0xe0d5e  1      OPC=nop             
  nop                           #  40    0xe0d5f  1      OPC=nop             
  nop                           #  41    0xe0d60  1      OPC=nop             
  nop                           #  42    0xe0d61  1      OPC=nop             
  nop                           #  43    0xe0d62  1      OPC=nop             
  nop                           #  44    0xe0d63  1      OPC=nop             
  nop                           #  45    0xe0d64  1      OPC=nop             
  nop                           #  46    0xe0d65  1      OPC=nop             
  nop                           #  47    0xe0d66  1      OPC=nop             
  cmpq $0xff, %rdx              #  48    0xe0d67  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi               #  49    0xe0d6b  2      OPC=movl_r32_r32    
  je .L_e0d80                   #  50    0xe0d6d  2      OPC=je_label        
  nop                           #  51    0xe0d6f  1      OPC=nop             
  nop                           #  52    0xe0d70  1      OPC=nop             
  nop                           #  53    0xe0d71  1      OPC=nop             
  nop                           #  54    0xe0d72  1      OPC=nop             
  nop                           #  55    0xe0d73  1      OPC=nop             
  nop                           #  56    0xe0d74  1      OPC=nop             
  nop                           #  57    0xe0d75  1      OPC=nop             
  nop                           #  58    0xe0d76  1      OPC=nop             
  nop                           #  59    0xe0d77  1      OPC=nop             
  nop                           #  60    0xe0d78  1      OPC=nop             
  nop                           #  61    0xe0d79  1      OPC=nop             
  nop                           #  62    0xe0d7a  1      OPC=nop             
  nop                           #  63    0xe0d7b  1      OPC=nop             
  nop                           #  64    0xe0d7c  1      OPC=nop             
  nop                           #  65    0xe0d7d  1      OPC=nop             
  nop                           #  66    0xe0d7e  1      OPC=nop             
  nop                           #  67    0xe0d7f  1      OPC=nop             
  nop                           #  68    0xe0d80  1      OPC=nop             
  nop                           #  69    0xe0d81  1      OPC=nop             
  callq ._Unwind_Resume         #  70    0xe0d82  5      OPC=callq_label     
.L_e0d80:                       #        0xe0d87  0      OPC=<label>         
  nop                           #  71    0xe0d87  1      OPC=nop             
  nop                           #  72    0xe0d88  1      OPC=nop             
  nop                           #  73    0xe0d89  1      OPC=nop             
  nop                           #  74    0xe0d8a  1      OPC=nop             
  nop                           #  75    0xe0d8b  1      OPC=nop             
  nop                           #  76    0xe0d8c  1      OPC=nop             
  nop                           #  77    0xe0d8d  1      OPC=nop             
  nop                           #  78    0xe0d8e  1      OPC=nop             
  nop                           #  79    0xe0d8f  1      OPC=nop             
  nop                           #  80    0xe0d90  1      OPC=nop             
  nop                           #  81    0xe0d91  1      OPC=nop             
  nop                           #  82    0xe0d92  1      OPC=nop             
  nop                           #  83    0xe0d93  1      OPC=nop             
  nop                           #  84    0xe0d94  1      OPC=nop             
  nop                           #  85    0xe0d95  1      OPC=nop             
  nop                           #  86    0xe0d96  1      OPC=nop             
  nop                           #  87    0xe0d97  1      OPC=nop             
  nop                           #  88    0xe0d98  1      OPC=nop             
  nop                           #  89    0xe0d99  1      OPC=nop             
  nop                           #  90    0xe0d9a  1      OPC=nop             
  nop                           #  91    0xe0d9b  1      OPC=nop             
  nop                           #  92    0xe0d9c  1      OPC=nop             
  nop                           #  93    0xe0d9d  1      OPC=nop             
  nop                           #  94    0xe0d9e  1      OPC=nop             
  nop                           #  95    0xe0d9f  1      OPC=nop             
  nop                           #  96    0xe0da0  1      OPC=nop             
  nop                           #  97    0xe0da1  1      OPC=nop             
  callq .__cxa_call_unexpected  #  98    0xe0da2  5      OPC=callq_label     
                                                                             
.size _Znaj, .-_Znaj

