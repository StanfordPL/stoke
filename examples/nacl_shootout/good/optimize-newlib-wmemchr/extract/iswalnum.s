  .text
  .globl iswalnum
  .type iswalnum, @function

#! file-offset 0x188e60
#! rip-offset  0x148e60
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswalnum:                 #        0x148e60  0      OPC=<label>         
  pushq %rbx               #  1     0x148e60  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x148e61  2      OPC=movl_r32_r32    
  nop                      #  3     0x148e63  1      OPC=nop             
  nop                      #  4     0x148e64  1      OPC=nop             
  nop                      #  5     0x148e65  1      OPC=nop             
  nop                      #  6     0x148e66  1      OPC=nop             
  nop                      #  7     0x148e67  1      OPC=nop             
  nop                      #  8     0x148e68  1      OPC=nop             
  nop                      #  9     0x148e69  1      OPC=nop             
  nop                      #  10    0x148e6a  1      OPC=nop             
  nop                      #  11    0x148e6b  1      OPC=nop             
  nop                      #  12    0x148e6c  1      OPC=nop             
  nop                      #  13    0x148e6d  1      OPC=nop             
  nop                      #  14    0x148e6e  1      OPC=nop             
  nop                      #  15    0x148e6f  1      OPC=nop             
  nop                      #  16    0x148e70  1      OPC=nop             
  nop                      #  17    0x148e71  1      OPC=nop             
  nop                      #  18    0x148e72  1      OPC=nop             
  nop                      #  19    0x148e73  1      OPC=nop             
  nop                      #  20    0x148e74  1      OPC=nop             
  nop                      #  21    0x148e75  1      OPC=nop             
  nop                      #  22    0x148e76  1      OPC=nop             
  nop                      #  23    0x148e77  1      OPC=nop             
  nop                      #  24    0x148e78  1      OPC=nop             
  nop                      #  25    0x148e79  1      OPC=nop             
  nop                      #  26    0x148e7a  1      OPC=nop             
  callq .iswalpha          #  27    0x148e7b  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x148e80  2      OPC=movl_r32_r32    
  movl $0x1, %eax          #  29    0x148e82  5      OPC=movl_r32_imm32  
  testl %edx, %edx         #  30    0x148e87  2      OPC=testl_r32_r32   
  jne .L_148ec0            #  31    0x148e89  2      OPC=jne_label       
  movl %ebx, %edi          #  32    0x148e8b  2      OPC=movl_r32_r32    
  nop                      #  33    0x148e8d  1      OPC=nop             
  nop                      #  34    0x148e8e  1      OPC=nop             
  nop                      #  35    0x148e8f  1      OPC=nop             
  nop                      #  36    0x148e90  1      OPC=nop             
  nop                      #  37    0x148e91  1      OPC=nop             
  nop                      #  38    0x148e92  1      OPC=nop             
  nop                      #  39    0x148e93  1      OPC=nop             
  nop                      #  40    0x148e94  1      OPC=nop             
  nop                      #  41    0x148e95  1      OPC=nop             
  nop                      #  42    0x148e96  1      OPC=nop             
  nop                      #  43    0x148e97  1      OPC=nop             
  nop                      #  44    0x148e98  1      OPC=nop             
  nop                      #  45    0x148e99  1      OPC=nop             
  nop                      #  46    0x148e9a  1      OPC=nop             
  callq .iswdigit          #  47    0x148e9b  5      OPC=callq_label     
  testl %eax, %eax         #  48    0x148ea0  2      OPC=testl_r32_r32   
  setne %al                #  49    0x148ea2  3      OPC=setne_r8        
  movzbl %al, %eax         #  50    0x148ea5  3      OPC=movzbl_r32_r8   
  nop                      #  51    0x148ea8  1      OPC=nop             
  nop                      #  52    0x148ea9  1      OPC=nop             
  nop                      #  53    0x148eaa  1      OPC=nop             
  nop                      #  54    0x148eab  1      OPC=nop             
  nop                      #  55    0x148eac  1      OPC=nop             
  nop                      #  56    0x148ead  1      OPC=nop             
  nop                      #  57    0x148eae  1      OPC=nop             
  nop                      #  58    0x148eaf  1      OPC=nop             
  nop                      #  59    0x148eb0  1      OPC=nop             
  nop                      #  60    0x148eb1  1      OPC=nop             
  nop                      #  61    0x148eb2  1      OPC=nop             
  nop                      #  62    0x148eb3  1      OPC=nop             
  nop                      #  63    0x148eb4  1      OPC=nop             
  nop                      #  64    0x148eb5  1      OPC=nop             
  nop                      #  65    0x148eb6  1      OPC=nop             
  nop                      #  66    0x148eb7  1      OPC=nop             
  nop                      #  67    0x148eb8  1      OPC=nop             
  nop                      #  68    0x148eb9  1      OPC=nop             
  nop                      #  69    0x148eba  1      OPC=nop             
  nop                      #  70    0x148ebb  1      OPC=nop             
  nop                      #  71    0x148ebc  1      OPC=nop             
  nop                      #  72    0x148ebd  1      OPC=nop             
  nop                      #  73    0x148ebe  1      OPC=nop             
  nop                      #  74    0x148ebf  1      OPC=nop             
.L_148ec0:                 #        0x148ec0  0      OPC=<label>         
  popq %rbx                #  75    0x148ec0  1      OPC=popq_r64_1      
  popq %r11                #  76    0x148ec1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  77    0x148ec3  7      OPC=andl_r32_imm32  
  nop                      #  78    0x148eca  1      OPC=nop             
  nop                      #  79    0x148ecb  1      OPC=nop             
  nop                      #  80    0x148ecc  1      OPC=nop             
  nop                      #  81    0x148ecd  1      OPC=nop             
  addq %r15, %r11          #  82    0x148ece  3      OPC=addq_r64_r64    
  jmpq %r11                #  83    0x148ed1  3      OPC=jmpq_r64        
  nop                      #  84    0x148ed4  1      OPC=nop             
  nop                      #  85    0x148ed5  1      OPC=nop             
  nop                      #  86    0x148ed6  1      OPC=nop             
  nop                      #  87    0x148ed7  1      OPC=nop             
  nop                      #  88    0x148ed8  1      OPC=nop             
  nop                      #  89    0x148ed9  1      OPC=nop             
  nop                      #  90    0x148eda  1      OPC=nop             
  nop                      #  91    0x148edb  1      OPC=nop             
  nop                      #  92    0x148edc  1      OPC=nop             
  nop                      #  93    0x148edd  1      OPC=nop             
  nop                      #  94    0x148ede  1      OPC=nop             
  nop                      #  95    0x148edf  1      OPC=nop             
  nop                      #  96    0x148ee0  1      OPC=nop             
  nop                      #  97    0x148ee1  1      OPC=nop             
  nop                      #  98    0x148ee2  1      OPC=nop             
  nop                      #  99    0x148ee3  1      OPC=nop             
  nop                      #  100   0x148ee4  1      OPC=nop             
  nop                      #  101   0x148ee5  1      OPC=nop             
  nop                      #  102   0x148ee6  1      OPC=nop             
                                                                         
.size iswalnum, .-iswalnum

