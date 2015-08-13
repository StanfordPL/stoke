  .text
  .globl iswgraph
  .type iswgraph, @function

#! file-offset 0x15e7e0
#! rip-offset  0x11e7e0
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswgraph:                 #        0x11e7e0  0      OPC=<label>         
  pushq %rbx               #  1     0x11e7e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11e7e1  2      OPC=movl_r32_r32    
  nop                      #  3     0x11e7e3  1      OPC=nop             
  nop                      #  4     0x11e7e4  1      OPC=nop             
  nop                      #  5     0x11e7e5  1      OPC=nop             
  nop                      #  6     0x11e7e6  1      OPC=nop             
  nop                      #  7     0x11e7e7  1      OPC=nop             
  nop                      #  8     0x11e7e8  1      OPC=nop             
  nop                      #  9     0x11e7e9  1      OPC=nop             
  nop                      #  10    0x11e7ea  1      OPC=nop             
  nop                      #  11    0x11e7eb  1      OPC=nop             
  nop                      #  12    0x11e7ec  1      OPC=nop             
  nop                      #  13    0x11e7ed  1      OPC=nop             
  nop                      #  14    0x11e7ee  1      OPC=nop             
  nop                      #  15    0x11e7ef  1      OPC=nop             
  nop                      #  16    0x11e7f0  1      OPC=nop             
  nop                      #  17    0x11e7f1  1      OPC=nop             
  nop                      #  18    0x11e7f2  1      OPC=nop             
  nop                      #  19    0x11e7f3  1      OPC=nop             
  nop                      #  20    0x11e7f4  1      OPC=nop             
  nop                      #  21    0x11e7f5  1      OPC=nop             
  nop                      #  22    0x11e7f6  1      OPC=nop             
  nop                      #  23    0x11e7f7  1      OPC=nop             
  nop                      #  24    0x11e7f8  1      OPC=nop             
  nop                      #  25    0x11e7f9  1      OPC=nop             
  nop                      #  26    0x11e7fa  1      OPC=nop             
  callq .iswprint          #  27    0x11e7fb  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x11e800  2      OPC=movl_r32_r32    
  xorl %eax, %eax          #  29    0x11e802  2      OPC=xorl_r32_r32    
  testl %edx, %edx         #  30    0x11e804  2      OPC=testl_r32_r32   
  jne .L_11e820            #  31    0x11e806  2      OPC=jne_label       
  popq %rbx                #  32    0x11e808  1      OPC=popq_r64_1      
  popq %r11                #  33    0x11e809  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  34    0x11e80b  7      OPC=andl_r32_imm32  
  nop                      #  35    0x11e812  1      OPC=nop             
  nop                      #  36    0x11e813  1      OPC=nop             
  nop                      #  37    0x11e814  1      OPC=nop             
  nop                      #  38    0x11e815  1      OPC=nop             
  addq %r15, %r11          #  39    0x11e816  3      OPC=addq_r64_r64    
  jmpq %r11                #  40    0x11e819  3      OPC=jmpq_r64        
  nop                      #  41    0x11e81c  1      OPC=nop             
  nop                      #  42    0x11e81d  1      OPC=nop             
  nop                      #  43    0x11e81e  1      OPC=nop             
  nop                      #  44    0x11e81f  1      OPC=nop             
  nop                      #  45    0x11e820  1      OPC=nop             
  nop                      #  46    0x11e821  1      OPC=nop             
  nop                      #  47    0x11e822  1      OPC=nop             
  nop                      #  48    0x11e823  1      OPC=nop             
  nop                      #  49    0x11e824  1      OPC=nop             
  nop                      #  50    0x11e825  1      OPC=nop             
  nop                      #  51    0x11e826  1      OPC=nop             
.L_11e820:                 #        0x11e827  0      OPC=<label>         
  movl %ebx, %edi          #  52    0x11e827  2      OPC=movl_r32_r32    
  nop                      #  53    0x11e829  1      OPC=nop             
  nop                      #  54    0x11e82a  1      OPC=nop             
  nop                      #  55    0x11e82b  1      OPC=nop             
  nop                      #  56    0x11e82c  1      OPC=nop             
  nop                      #  57    0x11e82d  1      OPC=nop             
  nop                      #  58    0x11e82e  1      OPC=nop             
  nop                      #  59    0x11e82f  1      OPC=nop             
  nop                      #  60    0x11e830  1      OPC=nop             
  nop                      #  61    0x11e831  1      OPC=nop             
  nop                      #  62    0x11e832  1      OPC=nop             
  nop                      #  63    0x11e833  1      OPC=nop             
  nop                      #  64    0x11e834  1      OPC=nop             
  nop                      #  65    0x11e835  1      OPC=nop             
  nop                      #  66    0x11e836  1      OPC=nop             
  nop                      #  67    0x11e837  1      OPC=nop             
  nop                      #  68    0x11e838  1      OPC=nop             
  nop                      #  69    0x11e839  1      OPC=nop             
  nop                      #  70    0x11e83a  1      OPC=nop             
  nop                      #  71    0x11e83b  1      OPC=nop             
  nop                      #  72    0x11e83c  1      OPC=nop             
  nop                      #  73    0x11e83d  1      OPC=nop             
  nop                      #  74    0x11e83e  1      OPC=nop             
  nop                      #  75    0x11e83f  1      OPC=nop             
  nop                      #  76    0x11e840  1      OPC=nop             
  nop                      #  77    0x11e841  1      OPC=nop             
  callq .iswspace          #  78    0x11e842  5      OPC=callq_label     
  popq %rbx                #  79    0x11e847  1      OPC=popq_r64_1      
  popq %r11                #  80    0x11e848  2      OPC=popq_r64_1      
  testl %eax, %eax         #  81    0x11e84a  2      OPC=testl_r32_r32   
  sete %al                 #  82    0x11e84c  3      OPC=sete_r8         
  movzbl %al, %eax         #  83    0x11e84f  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x11e852  7      OPC=andl_r32_imm32  
  nop                      #  85    0x11e859  1      OPC=nop             
  nop                      #  86    0x11e85a  1      OPC=nop             
  nop                      #  87    0x11e85b  1      OPC=nop             
  nop                      #  88    0x11e85c  1      OPC=nop             
  addq %r15, %r11          #  89    0x11e85d  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x11e860  3      OPC=jmpq_r64        
  nop                      #  91    0x11e863  1      OPC=nop             
  nop                      #  92    0x11e864  1      OPC=nop             
  nop                      #  93    0x11e865  1      OPC=nop             
  nop                      #  94    0x11e866  1      OPC=nop             
  nop                      #  95    0x11e867  1      OPC=nop             
  nop                      #  96    0x11e868  1      OPC=nop             
  nop                      #  97    0x11e869  1      OPC=nop             
  nop                      #  98    0x11e86a  1      OPC=nop             
  nop                      #  99    0x11e86b  1      OPC=nop             
  nop                      #  100   0x11e86c  1      OPC=nop             
  nop                      #  101   0x11e86d  1      OPC=nop             
                                                                         
.size iswgraph, .-iswgraph

