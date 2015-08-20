  .text
  .globl iswpunct
  .type iswpunct, @function

#! file-offset 0x15fc60
#! rip-offset  0x11fc60
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswpunct:                 #        0x11fc60  0      OPC=<label>         
  pushq %rbx               #  1     0x11fc60  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11fc61  2      OPC=movl_r32_r32    
  nop                      #  3     0x11fc63  1      OPC=nop             
  nop                      #  4     0x11fc64  1      OPC=nop             
  nop                      #  5     0x11fc65  1      OPC=nop             
  nop                      #  6     0x11fc66  1      OPC=nop             
  nop                      #  7     0x11fc67  1      OPC=nop             
  nop                      #  8     0x11fc68  1      OPC=nop             
  nop                      #  9     0x11fc69  1      OPC=nop             
  nop                      #  10    0x11fc6a  1      OPC=nop             
  nop                      #  11    0x11fc6b  1      OPC=nop             
  nop                      #  12    0x11fc6c  1      OPC=nop             
  nop                      #  13    0x11fc6d  1      OPC=nop             
  nop                      #  14    0x11fc6e  1      OPC=nop             
  nop                      #  15    0x11fc6f  1      OPC=nop             
  nop                      #  16    0x11fc70  1      OPC=nop             
  nop                      #  17    0x11fc71  1      OPC=nop             
  nop                      #  18    0x11fc72  1      OPC=nop             
  nop                      #  19    0x11fc73  1      OPC=nop             
  nop                      #  20    0x11fc74  1      OPC=nop             
  nop                      #  21    0x11fc75  1      OPC=nop             
  nop                      #  22    0x11fc76  1      OPC=nop             
  nop                      #  23    0x11fc77  1      OPC=nop             
  nop                      #  24    0x11fc78  1      OPC=nop             
  nop                      #  25    0x11fc79  1      OPC=nop             
  nop                      #  26    0x11fc7a  1      OPC=nop             
  callq .iswalnum          #  27    0x11fc7b  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x11fc80  2      OPC=movl_r32_r32    
  xorl %eax, %eax          #  29    0x11fc82  2      OPC=xorl_r32_r32    
  testl %edx, %edx         #  30    0x11fc84  2      OPC=testl_r32_r32   
  je .L_11fca0             #  31    0x11fc86  2      OPC=je_label        
  popq %rbx                #  32    0x11fc88  1      OPC=popq_r64_1      
  popq %r11                #  33    0x11fc89  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  34    0x11fc8b  7      OPC=andl_r32_imm32  
  nop                      #  35    0x11fc92  1      OPC=nop             
  nop                      #  36    0x11fc93  1      OPC=nop             
  nop                      #  37    0x11fc94  1      OPC=nop             
  nop                      #  38    0x11fc95  1      OPC=nop             
  addq %r15, %r11          #  39    0x11fc96  3      OPC=addq_r64_r64    
  jmpq %r11                #  40    0x11fc99  3      OPC=jmpq_r64        
  nop                      #  41    0x11fc9c  1      OPC=nop             
  nop                      #  42    0x11fc9d  1      OPC=nop             
  nop                      #  43    0x11fc9e  1      OPC=nop             
  nop                      #  44    0x11fc9f  1      OPC=nop             
  nop                      #  45    0x11fca0  1      OPC=nop             
  nop                      #  46    0x11fca1  1      OPC=nop             
  nop                      #  47    0x11fca2  1      OPC=nop             
  nop                      #  48    0x11fca3  1      OPC=nop             
  nop                      #  49    0x11fca4  1      OPC=nop             
  nop                      #  50    0x11fca5  1      OPC=nop             
  nop                      #  51    0x11fca6  1      OPC=nop             
.L_11fca0:                 #        0x11fca7  0      OPC=<label>         
  movl %ebx, %edi          #  52    0x11fca7  2      OPC=movl_r32_r32    
  nop                      #  53    0x11fca9  1      OPC=nop             
  nop                      #  54    0x11fcaa  1      OPC=nop             
  nop                      #  55    0x11fcab  1      OPC=nop             
  nop                      #  56    0x11fcac  1      OPC=nop             
  nop                      #  57    0x11fcad  1      OPC=nop             
  nop                      #  58    0x11fcae  1      OPC=nop             
  nop                      #  59    0x11fcaf  1      OPC=nop             
  nop                      #  60    0x11fcb0  1      OPC=nop             
  nop                      #  61    0x11fcb1  1      OPC=nop             
  nop                      #  62    0x11fcb2  1      OPC=nop             
  nop                      #  63    0x11fcb3  1      OPC=nop             
  nop                      #  64    0x11fcb4  1      OPC=nop             
  nop                      #  65    0x11fcb5  1      OPC=nop             
  nop                      #  66    0x11fcb6  1      OPC=nop             
  nop                      #  67    0x11fcb7  1      OPC=nop             
  nop                      #  68    0x11fcb8  1      OPC=nop             
  nop                      #  69    0x11fcb9  1      OPC=nop             
  nop                      #  70    0x11fcba  1      OPC=nop             
  nop                      #  71    0x11fcbb  1      OPC=nop             
  nop                      #  72    0x11fcbc  1      OPC=nop             
  nop                      #  73    0x11fcbd  1      OPC=nop             
  nop                      #  74    0x11fcbe  1      OPC=nop             
  nop                      #  75    0x11fcbf  1      OPC=nop             
  nop                      #  76    0x11fcc0  1      OPC=nop             
  nop                      #  77    0x11fcc1  1      OPC=nop             
  callq .iswgraph          #  78    0x11fcc2  5      OPC=callq_label     
  popq %rbx                #  79    0x11fcc7  1      OPC=popq_r64_1      
  popq %r11                #  80    0x11fcc8  2      OPC=popq_r64_1      
  testl %eax, %eax         #  81    0x11fcca  2      OPC=testl_r32_r32   
  setne %al                #  82    0x11fccc  3      OPC=setne_r8        
  movzbl %al, %eax         #  83    0x11fccf  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x11fcd2  7      OPC=andl_r32_imm32  
  nop                      #  85    0x11fcd9  1      OPC=nop             
  nop                      #  86    0x11fcda  1      OPC=nop             
  nop                      #  87    0x11fcdb  1      OPC=nop             
  nop                      #  88    0x11fcdc  1      OPC=nop             
  addq %r15, %r11          #  89    0x11fcdd  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x11fce0  3      OPC=jmpq_r64        
  nop                      #  91    0x11fce3  1      OPC=nop             
  nop                      #  92    0x11fce4  1      OPC=nop             
  nop                      #  93    0x11fce5  1      OPC=nop             
  nop                      #  94    0x11fce6  1      OPC=nop             
  nop                      #  95    0x11fce7  1      OPC=nop             
  nop                      #  96    0x11fce8  1      OPC=nop             
  nop                      #  97    0x11fce9  1      OPC=nop             
  nop                      #  98    0x11fcea  1      OPC=nop             
  nop                      #  99    0x11fceb  1      OPC=nop             
  nop                      #  100   0x11fcec  1      OPC=nop             
  nop                      #  101   0x11fced  1      OPC=nop             
                                                                         
.size iswpunct, .-iswpunct

