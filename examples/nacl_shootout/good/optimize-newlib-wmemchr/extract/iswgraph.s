  .text
  .globl iswgraph
  .type iswgraph, @function

#! file-offset 0x15eae0
#! rip-offset  0x11eae0
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswgraph:                 #        0x11eae0  0      OPC=<label>         
  pushq %rbx               #  1     0x11eae0  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11eae1  2      OPC=movl_r32_r32    
  nop                      #  3     0x11eae3  1      OPC=nop             
  nop                      #  4     0x11eae4  1      OPC=nop             
  nop                      #  5     0x11eae5  1      OPC=nop             
  nop                      #  6     0x11eae6  1      OPC=nop             
  nop                      #  7     0x11eae7  1      OPC=nop             
  nop                      #  8     0x11eae8  1      OPC=nop             
  nop                      #  9     0x11eae9  1      OPC=nop             
  nop                      #  10    0x11eaea  1      OPC=nop             
  nop                      #  11    0x11eaeb  1      OPC=nop             
  nop                      #  12    0x11eaec  1      OPC=nop             
  nop                      #  13    0x11eaed  1      OPC=nop             
  nop                      #  14    0x11eaee  1      OPC=nop             
  nop                      #  15    0x11eaef  1      OPC=nop             
  nop                      #  16    0x11eaf0  1      OPC=nop             
  nop                      #  17    0x11eaf1  1      OPC=nop             
  nop                      #  18    0x11eaf2  1      OPC=nop             
  nop                      #  19    0x11eaf3  1      OPC=nop             
  nop                      #  20    0x11eaf4  1      OPC=nop             
  nop                      #  21    0x11eaf5  1      OPC=nop             
  nop                      #  22    0x11eaf6  1      OPC=nop             
  nop                      #  23    0x11eaf7  1      OPC=nop             
  nop                      #  24    0x11eaf8  1      OPC=nop             
  nop                      #  25    0x11eaf9  1      OPC=nop             
  nop                      #  26    0x11eafa  1      OPC=nop             
  callq .iswprint          #  27    0x11eafb  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x11eb00  2      OPC=movl_r32_r32    
  xorl %eax, %eax          #  29    0x11eb02  2      OPC=xorl_r32_r32    
  testl %edx, %edx         #  30    0x11eb04  2      OPC=testl_r32_r32   
  jne .L_11eb20            #  31    0x11eb06  2      OPC=jne_label       
  popq %rbx                #  32    0x11eb08  1      OPC=popq_r64_1      
  popq %r11                #  33    0x11eb09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  34    0x11eb0b  7      OPC=andl_r32_imm32  
  nop                      #  35    0x11eb12  1      OPC=nop             
  nop                      #  36    0x11eb13  1      OPC=nop             
  nop                      #  37    0x11eb14  1      OPC=nop             
  nop                      #  38    0x11eb15  1      OPC=nop             
  addq %r15, %r11          #  39    0x11eb16  3      OPC=addq_r64_r64    
  jmpq %r11                #  40    0x11eb19  3      OPC=jmpq_r64        
  nop                      #  41    0x11eb1c  1      OPC=nop             
  nop                      #  42    0x11eb1d  1      OPC=nop             
  nop                      #  43    0x11eb1e  1      OPC=nop             
  nop                      #  44    0x11eb1f  1      OPC=nop             
  nop                      #  45    0x11eb20  1      OPC=nop             
  nop                      #  46    0x11eb21  1      OPC=nop             
  nop                      #  47    0x11eb22  1      OPC=nop             
  nop                      #  48    0x11eb23  1      OPC=nop             
  nop                      #  49    0x11eb24  1      OPC=nop             
  nop                      #  50    0x11eb25  1      OPC=nop             
  nop                      #  51    0x11eb26  1      OPC=nop             
.L_11eb20:                 #        0x11eb27  0      OPC=<label>         
  movl %ebx, %edi          #  52    0x11eb27  2      OPC=movl_r32_r32    
  nop                      #  53    0x11eb29  1      OPC=nop             
  nop                      #  54    0x11eb2a  1      OPC=nop             
  nop                      #  55    0x11eb2b  1      OPC=nop             
  nop                      #  56    0x11eb2c  1      OPC=nop             
  nop                      #  57    0x11eb2d  1      OPC=nop             
  nop                      #  58    0x11eb2e  1      OPC=nop             
  nop                      #  59    0x11eb2f  1      OPC=nop             
  nop                      #  60    0x11eb30  1      OPC=nop             
  nop                      #  61    0x11eb31  1      OPC=nop             
  nop                      #  62    0x11eb32  1      OPC=nop             
  nop                      #  63    0x11eb33  1      OPC=nop             
  nop                      #  64    0x11eb34  1      OPC=nop             
  nop                      #  65    0x11eb35  1      OPC=nop             
  nop                      #  66    0x11eb36  1      OPC=nop             
  nop                      #  67    0x11eb37  1      OPC=nop             
  nop                      #  68    0x11eb38  1      OPC=nop             
  nop                      #  69    0x11eb39  1      OPC=nop             
  nop                      #  70    0x11eb3a  1      OPC=nop             
  nop                      #  71    0x11eb3b  1      OPC=nop             
  nop                      #  72    0x11eb3c  1      OPC=nop             
  nop                      #  73    0x11eb3d  1      OPC=nop             
  nop                      #  74    0x11eb3e  1      OPC=nop             
  nop                      #  75    0x11eb3f  1      OPC=nop             
  nop                      #  76    0x11eb40  1      OPC=nop             
  nop                      #  77    0x11eb41  1      OPC=nop             
  callq .iswspace          #  78    0x11eb42  5      OPC=callq_label     
  popq %rbx                #  79    0x11eb47  1      OPC=popq_r64_1      
  popq %r11                #  80    0x11eb48  2      OPC=popq_r64_1      
  testl %eax, %eax         #  81    0x11eb4a  2      OPC=testl_r32_r32   
  sete %al                 #  82    0x11eb4c  3      OPC=sete_r8         
  movzbl %al, %eax         #  83    0x11eb4f  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x11eb52  7      OPC=andl_r32_imm32  
  nop                      #  85    0x11eb59  1      OPC=nop             
  nop                      #  86    0x11eb5a  1      OPC=nop             
  nop                      #  87    0x11eb5b  1      OPC=nop             
  nop                      #  88    0x11eb5c  1      OPC=nop             
  addq %r15, %r11          #  89    0x11eb5d  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x11eb60  3      OPC=jmpq_r64        
  nop                      #  91    0x11eb63  1      OPC=nop             
  nop                      #  92    0x11eb64  1      OPC=nop             
  nop                      #  93    0x11eb65  1      OPC=nop             
  nop                      #  94    0x11eb66  1      OPC=nop             
  nop                      #  95    0x11eb67  1      OPC=nop             
  nop                      #  96    0x11eb68  1      OPC=nop             
  nop                      #  97    0x11eb69  1      OPC=nop             
  nop                      #  98    0x11eb6a  1      OPC=nop             
  nop                      #  99    0x11eb6b  1      OPC=nop             
  nop                      #  100   0x11eb6c  1      OPC=nop             
  nop                      #  101   0x11eb6d  1      OPC=nop             
                                                                         
.size iswgraph, .-iswgraph

