  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x184a60
#! rip-offset  0x144a60
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.wmemset:                  #        0x144a60  0      OPC=<label>         
  testl %edx, %edx         #  1     0x144a60  2      OPC=testl_r32_r32   
  movl %edi, %eax          #  2     0x144a62  2      OPC=movl_r32_r32    
  je .L_144aa0             #  3     0x144a64  2      OPC=je_label        
  movq %rax, %r8           #  4     0x144a66  3      OPC=movq_r64_r64    
  xorl %ecx, %ecx          #  5     0x144a69  2      OPC=xorl_r32_r32    
  nop                      #  6     0x144a6b  1      OPC=nop             
  nop                      #  7     0x144a6c  1      OPC=nop             
  nop                      #  8     0x144a6d  1      OPC=nop             
  nop                      #  9     0x144a6e  1      OPC=nop             
  nop                      #  10    0x144a6f  1      OPC=nop             
  nop                      #  11    0x144a70  1      OPC=nop             
  nop                      #  12    0x144a71  1      OPC=nop             
  nop                      #  13    0x144a72  1      OPC=nop             
  nop                      #  14    0x144a73  1      OPC=nop             
  nop                      #  15    0x144a74  1      OPC=nop             
  nop                      #  16    0x144a75  1      OPC=nop             
  nop                      #  17    0x144a76  1      OPC=nop             
  nop                      #  18    0x144a77  1      OPC=nop             
  nop                      #  19    0x144a78  1      OPC=nop             
  nop                      #  20    0x144a79  1      OPC=nop             
  nop                      #  21    0x144a7a  1      OPC=nop             
  nop                      #  22    0x144a7b  1      OPC=nop             
  nop                      #  23    0x144a7c  1      OPC=nop             
  nop                      #  24    0x144a7d  1      OPC=nop             
  nop                      #  25    0x144a7e  1      OPC=nop             
  nop                      #  26    0x144a7f  1      OPC=nop             
.L_144a80:                 #        0x144a80  0      OPC=<label>         
  addl $0x1, %ecx          #  27    0x144a80  3      OPC=addl_r32_imm8   
  movl %r8d, %r8d          #  28    0x144a83  3      OPC=movl_r32_r32    
  movl %esi, (%r15,%r8,1)  #  29    0x144a86  4      OPC=movl_m32_r32    
  addl $0x4, %r8d          #  30    0x144a8a  4      OPC=addl_r32_imm8   
  cmpl %ecx, %edx          #  31    0x144a8e  2      OPC=cmpl_r32_r32    
  ja .L_144a80             #  32    0x144a90  2      OPC=ja_label        
  nop                      #  33    0x144a92  1      OPC=nop             
  nop                      #  34    0x144a93  1      OPC=nop             
  nop                      #  35    0x144a94  1      OPC=nop             
  nop                      #  36    0x144a95  1      OPC=nop             
  nop                      #  37    0x144a96  1      OPC=nop             
  nop                      #  38    0x144a97  1      OPC=nop             
  nop                      #  39    0x144a98  1      OPC=nop             
  nop                      #  40    0x144a99  1      OPC=nop             
  nop                      #  41    0x144a9a  1      OPC=nop             
  nop                      #  42    0x144a9b  1      OPC=nop             
  nop                      #  43    0x144a9c  1      OPC=nop             
  nop                      #  44    0x144a9d  1      OPC=nop             
  nop                      #  45    0x144a9e  1      OPC=nop             
  nop                      #  46    0x144a9f  1      OPC=nop             
.L_144aa0:                 #        0x144aa0  0      OPC=<label>         
  popq %r11                #  47    0x144aa0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  48    0x144aa2  7      OPC=andl_r32_imm32  
  nop                      #  49    0x144aa9  1      OPC=nop             
  nop                      #  50    0x144aaa  1      OPC=nop             
  nop                      #  51    0x144aab  1      OPC=nop             
  nop                      #  52    0x144aac  1      OPC=nop             
  addq %r15, %r11          #  53    0x144aad  3      OPC=addq_r64_r64    
  jmpq %r11                #  54    0x144ab0  3      OPC=jmpq_r64        
  nop                      #  55    0x144ab3  1      OPC=nop             
  nop                      #  56    0x144ab4  1      OPC=nop             
  nop                      #  57    0x144ab5  1      OPC=nop             
  nop                      #  58    0x144ab6  1      OPC=nop             
  nop                      #  59    0x144ab7  1      OPC=nop             
  nop                      #  60    0x144ab8  1      OPC=nop             
  nop                      #  61    0x144ab9  1      OPC=nop             
  nop                      #  62    0x144aba  1      OPC=nop             
  nop                      #  63    0x144abb  1      OPC=nop             
  nop                      #  64    0x144abc  1      OPC=nop             
  nop                      #  65    0x144abd  1      OPC=nop             
  nop                      #  66    0x144abe  1      OPC=nop             
  nop                      #  67    0x144abf  1      OPC=nop             
  nop                      #  68    0x144ac0  1      OPC=nop             
  nop                      #  69    0x144ac1  1      OPC=nop             
  nop                      #  70    0x144ac2  1      OPC=nop             
  nop                      #  71    0x144ac3  1      OPC=nop             
  nop                      #  72    0x144ac4  1      OPC=nop             
  nop                      #  73    0x144ac5  1      OPC=nop             
  nop                      #  74    0x144ac6  1      OPC=nop             
                                                                         
.size wmemset, .-wmemset

