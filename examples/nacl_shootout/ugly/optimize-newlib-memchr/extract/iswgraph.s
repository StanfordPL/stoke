  .text
  .globl iswgraph
  .type iswgraph, @function

#! file-offset 0x15f200
#! rip-offset  0x11f200
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswgraph:                 #        0x11f200  0      OPC=<label>         
  pushq %rbx               #  1     0x11f200  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11f201  2      OPC=movl_r32_r32    
  nop                      #  3     0x11f203  1      OPC=nop             
  nop                      #  4     0x11f204  1      OPC=nop             
  nop                      #  5     0x11f205  1      OPC=nop             
  nop                      #  6     0x11f206  1      OPC=nop             
  nop                      #  7     0x11f207  1      OPC=nop             
  nop                      #  8     0x11f208  1      OPC=nop             
  nop                      #  9     0x11f209  1      OPC=nop             
  nop                      #  10    0x11f20a  1      OPC=nop             
  nop                      #  11    0x11f20b  1      OPC=nop             
  nop                      #  12    0x11f20c  1      OPC=nop             
  nop                      #  13    0x11f20d  1      OPC=nop             
  nop                      #  14    0x11f20e  1      OPC=nop             
  nop                      #  15    0x11f20f  1      OPC=nop             
  nop                      #  16    0x11f210  1      OPC=nop             
  nop                      #  17    0x11f211  1      OPC=nop             
  nop                      #  18    0x11f212  1      OPC=nop             
  nop                      #  19    0x11f213  1      OPC=nop             
  nop                      #  20    0x11f214  1      OPC=nop             
  nop                      #  21    0x11f215  1      OPC=nop             
  nop                      #  22    0x11f216  1      OPC=nop             
  nop                      #  23    0x11f217  1      OPC=nop             
  nop                      #  24    0x11f218  1      OPC=nop             
  nop                      #  25    0x11f219  1      OPC=nop             
  nop                      #  26    0x11f21a  1      OPC=nop             
  callq .iswprint          #  27    0x11f21b  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x11f220  2      OPC=movl_r32_r32    
  xorl %eax, %eax          #  29    0x11f222  2      OPC=xorl_r32_r32    
  testl %edx, %edx         #  30    0x11f224  2      OPC=testl_r32_r32   
  jne .L_11f240            #  31    0x11f226  2      OPC=jne_label       
  popq %rbx                #  32    0x11f228  1      OPC=popq_r64_1      
  popq %r11                #  33    0x11f229  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  34    0x11f22b  7      OPC=andl_r32_imm32  
  nop                      #  35    0x11f232  1      OPC=nop             
  nop                      #  36    0x11f233  1      OPC=nop             
  nop                      #  37    0x11f234  1      OPC=nop             
  nop                      #  38    0x11f235  1      OPC=nop             
  addq %r15, %r11          #  39    0x11f236  3      OPC=addq_r64_r64    
  jmpq %r11                #  40    0x11f239  3      OPC=jmpq_r64        
  nop                      #  41    0x11f23c  1      OPC=nop             
  nop                      #  42    0x11f23d  1      OPC=nop             
  nop                      #  43    0x11f23e  1      OPC=nop             
  nop                      #  44    0x11f23f  1      OPC=nop             
  nop                      #  45    0x11f240  1      OPC=nop             
  nop                      #  46    0x11f241  1      OPC=nop             
  nop                      #  47    0x11f242  1      OPC=nop             
  nop                      #  48    0x11f243  1      OPC=nop             
  nop                      #  49    0x11f244  1      OPC=nop             
  nop                      #  50    0x11f245  1      OPC=nop             
  nop                      #  51    0x11f246  1      OPC=nop             
.L_11f240:                 #        0x11f247  0      OPC=<label>         
  movl %ebx, %edi          #  52    0x11f247  2      OPC=movl_r32_r32    
  nop                      #  53    0x11f249  1      OPC=nop             
  nop                      #  54    0x11f24a  1      OPC=nop             
  nop                      #  55    0x11f24b  1      OPC=nop             
  nop                      #  56    0x11f24c  1      OPC=nop             
  nop                      #  57    0x11f24d  1      OPC=nop             
  nop                      #  58    0x11f24e  1      OPC=nop             
  nop                      #  59    0x11f24f  1      OPC=nop             
  nop                      #  60    0x11f250  1      OPC=nop             
  nop                      #  61    0x11f251  1      OPC=nop             
  nop                      #  62    0x11f252  1      OPC=nop             
  nop                      #  63    0x11f253  1      OPC=nop             
  nop                      #  64    0x11f254  1      OPC=nop             
  nop                      #  65    0x11f255  1      OPC=nop             
  nop                      #  66    0x11f256  1      OPC=nop             
  nop                      #  67    0x11f257  1      OPC=nop             
  nop                      #  68    0x11f258  1      OPC=nop             
  nop                      #  69    0x11f259  1      OPC=nop             
  nop                      #  70    0x11f25a  1      OPC=nop             
  nop                      #  71    0x11f25b  1      OPC=nop             
  nop                      #  72    0x11f25c  1      OPC=nop             
  nop                      #  73    0x11f25d  1      OPC=nop             
  nop                      #  74    0x11f25e  1      OPC=nop             
  nop                      #  75    0x11f25f  1      OPC=nop             
  nop                      #  76    0x11f260  1      OPC=nop             
  nop                      #  77    0x11f261  1      OPC=nop             
  callq .iswspace          #  78    0x11f262  5      OPC=callq_label     
  popq %rbx                #  79    0x11f267  1      OPC=popq_r64_1      
  popq %r11                #  80    0x11f268  2      OPC=popq_r64_1      
  testl %eax, %eax         #  81    0x11f26a  2      OPC=testl_r32_r32   
  sete %al                 #  82    0x11f26c  3      OPC=sete_r8         
  movzbl %al, %eax         #  83    0x11f26f  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x11f272  7      OPC=andl_r32_imm32  
  nop                      #  85    0x11f279  1      OPC=nop             
  nop                      #  86    0x11f27a  1      OPC=nop             
  nop                      #  87    0x11f27b  1      OPC=nop             
  nop                      #  88    0x11f27c  1      OPC=nop             
  addq %r15, %r11          #  89    0x11f27d  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x11f280  3      OPC=jmpq_r64        
  nop                      #  91    0x11f283  1      OPC=nop             
  nop                      #  92    0x11f284  1      OPC=nop             
  nop                      #  93    0x11f285  1      OPC=nop             
  nop                      #  94    0x11f286  1      OPC=nop             
  nop                      #  95    0x11f287  1      OPC=nop             
  nop                      #  96    0x11f288  1      OPC=nop             
  nop                      #  97    0x11f289  1      OPC=nop             
  nop                      #  98    0x11f28a  1      OPC=nop             
  nop                      #  99    0x11f28b  1      OPC=nop             
  nop                      #  100   0x11f28c  1      OPC=nop             
  nop                      #  101   0x11f28d  1      OPC=nop             
                                                                         
.size iswgraph, .-iswgraph

