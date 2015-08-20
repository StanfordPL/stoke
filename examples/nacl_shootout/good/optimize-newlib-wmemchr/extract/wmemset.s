  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x184340
#! rip-offset  0x144340
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.wmemset:                  #        0x144340  0      OPC=<label>         
  testl %edx, %edx         #  1     0x144340  2      OPC=testl_r32_r32   
  movl %edi, %eax          #  2     0x144342  2      OPC=movl_r32_r32    
  je .L_144380             #  3     0x144344  2      OPC=je_label        
  movq %rax, %r8           #  4     0x144346  3      OPC=movq_r64_r64    
  xorl %ecx, %ecx          #  5     0x144349  2      OPC=xorl_r32_r32    
  nop                      #  6     0x14434b  1      OPC=nop             
  nop                      #  7     0x14434c  1      OPC=nop             
  nop                      #  8     0x14434d  1      OPC=nop             
  nop                      #  9     0x14434e  1      OPC=nop             
  nop                      #  10    0x14434f  1      OPC=nop             
  nop                      #  11    0x144350  1      OPC=nop             
  nop                      #  12    0x144351  1      OPC=nop             
  nop                      #  13    0x144352  1      OPC=nop             
  nop                      #  14    0x144353  1      OPC=nop             
  nop                      #  15    0x144354  1      OPC=nop             
  nop                      #  16    0x144355  1      OPC=nop             
  nop                      #  17    0x144356  1      OPC=nop             
  nop                      #  18    0x144357  1      OPC=nop             
  nop                      #  19    0x144358  1      OPC=nop             
  nop                      #  20    0x144359  1      OPC=nop             
  nop                      #  21    0x14435a  1      OPC=nop             
  nop                      #  22    0x14435b  1      OPC=nop             
  nop                      #  23    0x14435c  1      OPC=nop             
  nop                      #  24    0x14435d  1      OPC=nop             
  nop                      #  25    0x14435e  1      OPC=nop             
  nop                      #  26    0x14435f  1      OPC=nop             
.L_144360:                 #        0x144360  0      OPC=<label>         
  addl $0x1, %ecx          #  27    0x144360  3      OPC=addl_r32_imm8   
  movl %r8d, %r8d          #  28    0x144363  3      OPC=movl_r32_r32    
  movl %esi, (%r15,%r8,1)  #  29    0x144366  4      OPC=movl_m32_r32    
  addl $0x4, %r8d          #  30    0x14436a  4      OPC=addl_r32_imm8   
  cmpl %ecx, %edx          #  31    0x14436e  2      OPC=cmpl_r32_r32    
  ja .L_144360             #  32    0x144370  2      OPC=ja_label        
  nop                      #  33    0x144372  1      OPC=nop             
  nop                      #  34    0x144373  1      OPC=nop             
  nop                      #  35    0x144374  1      OPC=nop             
  nop                      #  36    0x144375  1      OPC=nop             
  nop                      #  37    0x144376  1      OPC=nop             
  nop                      #  38    0x144377  1      OPC=nop             
  nop                      #  39    0x144378  1      OPC=nop             
  nop                      #  40    0x144379  1      OPC=nop             
  nop                      #  41    0x14437a  1      OPC=nop             
  nop                      #  42    0x14437b  1      OPC=nop             
  nop                      #  43    0x14437c  1      OPC=nop             
  nop                      #  44    0x14437d  1      OPC=nop             
  nop                      #  45    0x14437e  1      OPC=nop             
  nop                      #  46    0x14437f  1      OPC=nop             
.L_144380:                 #        0x144380  0      OPC=<label>         
  popq %r11                #  47    0x144380  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  48    0x144382  7      OPC=andl_r32_imm32  
  nop                      #  49    0x144389  1      OPC=nop             
  nop                      #  50    0x14438a  1      OPC=nop             
  nop                      #  51    0x14438b  1      OPC=nop             
  nop                      #  52    0x14438c  1      OPC=nop             
  addq %r15, %r11          #  53    0x14438d  3      OPC=addq_r64_r64    
  jmpq %r11                #  54    0x144390  3      OPC=jmpq_r64        
  nop                      #  55    0x144393  1      OPC=nop             
  nop                      #  56    0x144394  1      OPC=nop             
  nop                      #  57    0x144395  1      OPC=nop             
  nop                      #  58    0x144396  1      OPC=nop             
  nop                      #  59    0x144397  1      OPC=nop             
  nop                      #  60    0x144398  1      OPC=nop             
  nop                      #  61    0x144399  1      OPC=nop             
  nop                      #  62    0x14439a  1      OPC=nop             
  nop                      #  63    0x14439b  1      OPC=nop             
  nop                      #  64    0x14439c  1      OPC=nop             
  nop                      #  65    0x14439d  1      OPC=nop             
  nop                      #  66    0x14439e  1      OPC=nop             
  nop                      #  67    0x14439f  1      OPC=nop             
  nop                      #  68    0x1443a0  1      OPC=nop             
  nop                      #  69    0x1443a1  1      OPC=nop             
  nop                      #  70    0x1443a2  1      OPC=nop             
  nop                      #  71    0x1443a3  1      OPC=nop             
  nop                      #  72    0x1443a4  1      OPC=nop             
  nop                      #  73    0x1443a5  1      OPC=nop             
  nop                      #  74    0x1443a6  1      OPC=nop             
                                                                         
.size wmemset, .-wmemset

