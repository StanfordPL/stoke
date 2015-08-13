  .text
  .globl iswpunct
  .type iswpunct, @function

#! file-offset 0x15f960
#! rip-offset  0x11f960
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswpunct:                 #        0x11f960  0      OPC=<label>         
  pushq %rbx               #  1     0x11f960  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11f961  2      OPC=movl_r32_r32    
  nop                      #  3     0x11f963  1      OPC=nop             
  nop                      #  4     0x11f964  1      OPC=nop             
  nop                      #  5     0x11f965  1      OPC=nop             
  nop                      #  6     0x11f966  1      OPC=nop             
  nop                      #  7     0x11f967  1      OPC=nop             
  nop                      #  8     0x11f968  1      OPC=nop             
  nop                      #  9     0x11f969  1      OPC=nop             
  nop                      #  10    0x11f96a  1      OPC=nop             
  nop                      #  11    0x11f96b  1      OPC=nop             
  nop                      #  12    0x11f96c  1      OPC=nop             
  nop                      #  13    0x11f96d  1      OPC=nop             
  nop                      #  14    0x11f96e  1      OPC=nop             
  nop                      #  15    0x11f96f  1      OPC=nop             
  nop                      #  16    0x11f970  1      OPC=nop             
  nop                      #  17    0x11f971  1      OPC=nop             
  nop                      #  18    0x11f972  1      OPC=nop             
  nop                      #  19    0x11f973  1      OPC=nop             
  nop                      #  20    0x11f974  1      OPC=nop             
  nop                      #  21    0x11f975  1      OPC=nop             
  nop                      #  22    0x11f976  1      OPC=nop             
  nop                      #  23    0x11f977  1      OPC=nop             
  nop                      #  24    0x11f978  1      OPC=nop             
  nop                      #  25    0x11f979  1      OPC=nop             
  nop                      #  26    0x11f97a  1      OPC=nop             
  callq .iswalnum          #  27    0x11f97b  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x11f980  2      OPC=movl_r32_r32    
  xorl %eax, %eax          #  29    0x11f982  2      OPC=xorl_r32_r32    
  testl %edx, %edx         #  30    0x11f984  2      OPC=testl_r32_r32   
  je .L_11f9a0             #  31    0x11f986  2      OPC=je_label        
  popq %rbx                #  32    0x11f988  1      OPC=popq_r64_1      
  popq %r11                #  33    0x11f989  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  34    0x11f98b  7      OPC=andl_r32_imm32  
  nop                      #  35    0x11f992  1      OPC=nop             
  nop                      #  36    0x11f993  1      OPC=nop             
  nop                      #  37    0x11f994  1      OPC=nop             
  nop                      #  38    0x11f995  1      OPC=nop             
  addq %r15, %r11          #  39    0x11f996  3      OPC=addq_r64_r64    
  jmpq %r11                #  40    0x11f999  3      OPC=jmpq_r64        
  nop                      #  41    0x11f99c  1      OPC=nop             
  nop                      #  42    0x11f99d  1      OPC=nop             
  nop                      #  43    0x11f99e  1      OPC=nop             
  nop                      #  44    0x11f99f  1      OPC=nop             
  nop                      #  45    0x11f9a0  1      OPC=nop             
  nop                      #  46    0x11f9a1  1      OPC=nop             
  nop                      #  47    0x11f9a2  1      OPC=nop             
  nop                      #  48    0x11f9a3  1      OPC=nop             
  nop                      #  49    0x11f9a4  1      OPC=nop             
  nop                      #  50    0x11f9a5  1      OPC=nop             
  nop                      #  51    0x11f9a6  1      OPC=nop             
.L_11f9a0:                 #        0x11f9a7  0      OPC=<label>         
  movl %ebx, %edi          #  52    0x11f9a7  2      OPC=movl_r32_r32    
  nop                      #  53    0x11f9a9  1      OPC=nop             
  nop                      #  54    0x11f9aa  1      OPC=nop             
  nop                      #  55    0x11f9ab  1      OPC=nop             
  nop                      #  56    0x11f9ac  1      OPC=nop             
  nop                      #  57    0x11f9ad  1      OPC=nop             
  nop                      #  58    0x11f9ae  1      OPC=nop             
  nop                      #  59    0x11f9af  1      OPC=nop             
  nop                      #  60    0x11f9b0  1      OPC=nop             
  nop                      #  61    0x11f9b1  1      OPC=nop             
  nop                      #  62    0x11f9b2  1      OPC=nop             
  nop                      #  63    0x11f9b3  1      OPC=nop             
  nop                      #  64    0x11f9b4  1      OPC=nop             
  nop                      #  65    0x11f9b5  1      OPC=nop             
  nop                      #  66    0x11f9b6  1      OPC=nop             
  nop                      #  67    0x11f9b7  1      OPC=nop             
  nop                      #  68    0x11f9b8  1      OPC=nop             
  nop                      #  69    0x11f9b9  1      OPC=nop             
  nop                      #  70    0x11f9ba  1      OPC=nop             
  nop                      #  71    0x11f9bb  1      OPC=nop             
  nop                      #  72    0x11f9bc  1      OPC=nop             
  nop                      #  73    0x11f9bd  1      OPC=nop             
  nop                      #  74    0x11f9be  1      OPC=nop             
  nop                      #  75    0x11f9bf  1      OPC=nop             
  nop                      #  76    0x11f9c0  1      OPC=nop             
  nop                      #  77    0x11f9c1  1      OPC=nop             
  callq .iswgraph          #  78    0x11f9c2  5      OPC=callq_label     
  popq %rbx                #  79    0x11f9c7  1      OPC=popq_r64_1      
  popq %r11                #  80    0x11f9c8  2      OPC=popq_r64_1      
  testl %eax, %eax         #  81    0x11f9ca  2      OPC=testl_r32_r32   
  setne %al                #  82    0x11f9cc  3      OPC=setne_r8        
  movzbl %al, %eax         #  83    0x11f9cf  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x11f9d2  7      OPC=andl_r32_imm32  
  nop                      #  85    0x11f9d9  1      OPC=nop             
  nop                      #  86    0x11f9da  1      OPC=nop             
  nop                      #  87    0x11f9db  1      OPC=nop             
  nop                      #  88    0x11f9dc  1      OPC=nop             
  addq %r15, %r11          #  89    0x11f9dd  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x11f9e0  3      OPC=jmpq_r64        
  nop                      #  91    0x11f9e3  1      OPC=nop             
  nop                      #  92    0x11f9e4  1      OPC=nop             
  nop                      #  93    0x11f9e5  1      OPC=nop             
  nop                      #  94    0x11f9e6  1      OPC=nop             
  nop                      #  95    0x11f9e7  1      OPC=nop             
  nop                      #  96    0x11f9e8  1      OPC=nop             
  nop                      #  97    0x11f9e9  1      OPC=nop             
  nop                      #  98    0x11f9ea  1      OPC=nop             
  nop                      #  99    0x11f9eb  1      OPC=nop             
  nop                      #  100   0x11f9ec  1      OPC=nop             
  nop                      #  101   0x11f9ed  1      OPC=nop             
                                                                         
.size iswpunct, .-iswpunct

