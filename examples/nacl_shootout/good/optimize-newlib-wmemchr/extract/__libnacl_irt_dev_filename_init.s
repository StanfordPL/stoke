  .text
  .globl __libnacl_irt_dev_filename_init
  .type __libnacl_irt_dev_filename_init, @function

#! file-offset 0x198840
#! rip-offset  0x158840
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_dev_filename_init:  #        0x158840  0      OPC=<label>         
  subl $0x8, %esp                  #  1     0x158840  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  2     0x158843  3      OPC=addq_r64_r64    
  movl $0x40, %edx                 #  3     0x158846  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  4     0x15884b  5      OPC=movl_r32_imm32  
  movl $0x1004b5d6, %edi           #  5     0x158850  5      OPC=movl_r32_imm32  
  nop                              #  6     0x158855  1      OPC=nop             
  nop                              #  7     0x158856  1      OPC=nop             
  nop                              #  8     0x158857  1      OPC=nop             
  nop                              #  9     0x158858  1      OPC=nop             
  nop                              #  10    0x158859  1      OPC=nop             
  nop                              #  11    0x15885a  1      OPC=nop             
  callq .__libnacl_irt_query       #  12    0x15885b  5      OPC=callq_label     
  testl %eax, %eax                 #  13    0x158860  2      OPC=testl_r32_r32   
  je .L_1588a0                     #  14    0x158862  2      OPC=je_label        
  nop                              #  15    0x158864  1      OPC=nop             
  nop                              #  16    0x158865  1      OPC=nop             
  nop                              #  17    0x158866  1      OPC=nop             
  nop                              #  18    0x158867  1      OPC=nop             
  nop                              #  19    0x158868  1      OPC=nop             
  nop                              #  20    0x158869  1      OPC=nop             
  nop                              #  21    0x15886a  1      OPC=nop             
  nop                              #  22    0x15886b  1      OPC=nop             
  nop                              #  23    0x15886c  1      OPC=nop             
  nop                              #  24    0x15886d  1      OPC=nop             
  nop                              #  25    0x15886e  1      OPC=nop             
  nop                              #  26    0x15886f  1      OPC=nop             
  nop                              #  27    0x158870  1      OPC=nop             
  nop                              #  28    0x158871  1      OPC=nop             
  nop                              #  29    0x158872  1      OPC=nop             
  nop                              #  30    0x158873  1      OPC=nop             
  nop                              #  31    0x158874  1      OPC=nop             
  nop                              #  32    0x158875  1      OPC=nop             
  nop                              #  33    0x158876  1      OPC=nop             
  nop                              #  34    0x158877  1      OPC=nop             
  nop                              #  35    0x158878  1      OPC=nop             
  nop                              #  36    0x158879  1      OPC=nop             
  nop                              #  37    0x15887a  1      OPC=nop             
  nop                              #  38    0x15887b  1      OPC=nop             
  nop                              #  39    0x15887c  1      OPC=nop             
  nop                              #  40    0x15887d  1      OPC=nop             
  nop                              #  41    0x15887e  1      OPC=nop             
  nop                              #  42    0x15887f  1      OPC=nop             
.L_158880:                         #        0x158880  0      OPC=<label>         
  addl $0x8, %esp                  #  43    0x158880  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  44    0x158883  3      OPC=addq_r64_r64    
  popq %r11                        #  45    0x158886  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  46    0x158888  7      OPC=andl_r32_imm32  
  nop                              #  47    0x15888f  1      OPC=nop             
  nop                              #  48    0x158890  1      OPC=nop             
  nop                              #  49    0x158891  1      OPC=nop             
  nop                              #  50    0x158892  1      OPC=nop             
  addq %r15, %r11                  #  51    0x158893  3      OPC=addq_r64_r64    
  jmpq %r11                        #  52    0x158896  3      OPC=jmpq_r64        
  nop                              #  53    0x158899  1      OPC=nop             
  nop                              #  54    0x15889a  1      OPC=nop             
  nop                              #  55    0x15889b  1      OPC=nop             
  nop                              #  56    0x15889c  1      OPC=nop             
  nop                              #  57    0x15889d  1      OPC=nop             
  nop                              #  58    0x15889e  1      OPC=nop             
  nop                              #  59    0x15889f  1      OPC=nop             
  nop                              #  60    0x1588a0  1      OPC=nop             
  nop                              #  61    0x1588a1  1      OPC=nop             
  nop                              #  62    0x1588a2  1      OPC=nop             
  nop                              #  63    0x1588a3  1      OPC=nop             
  nop                              #  64    0x1588a4  1      OPC=nop             
  nop                              #  65    0x1588a5  1      OPC=nop             
  nop                              #  66    0x1588a6  1      OPC=nop             
.L_1588a0:                         #        0x1588a7  0      OPC=<label>         
  movl $0x1c, %edx                 #  67    0x1588a7  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  68    0x1588ac  5      OPC=movl_r32_imm32  
  movl $0x1004b5f0, %edi           #  69    0x1588b1  5      OPC=movl_r32_imm32  
  nop                              #  70    0x1588b6  1      OPC=nop             
  nop                              #  71    0x1588b7  1      OPC=nop             
  nop                              #  72    0x1588b8  1      OPC=nop             
  nop                              #  73    0x1588b9  1      OPC=nop             
  nop                              #  74    0x1588ba  1      OPC=nop             
  nop                              #  75    0x1588bb  1      OPC=nop             
  nop                              #  76    0x1588bc  1      OPC=nop             
  nop                              #  77    0x1588bd  1      OPC=nop             
  nop                              #  78    0x1588be  1      OPC=nop             
  nop                              #  79    0x1588bf  1      OPC=nop             
  nop                              #  80    0x1588c0  1      OPC=nop             
  nop                              #  81    0x1588c1  1      OPC=nop             
  callq .__libnacl_irt_query       #  82    0x1588c2  5      OPC=callq_label     
  testl %eax, %eax                 #  83    0x1588c7  2      OPC=testl_r32_r32   
  jne .L_158880                    #  84    0x1588c9  2      OPC=jne_label       
  movl $0x8, %edx                  #  85    0x1588cb  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  86    0x1588d0  5      OPC=movl_r32_imm32  
  movl $0x1004b60a, %edi           #  87    0x1588d5  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                  #  88    0x1588da  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  89    0x1588dd  3      OPC=addq_r64_r64    
  jmpq .__libnacl_irt_query        #  90    0x1588e0  5      OPC=jmpq_label_1    
  nop                              #  91    0x1588e5  1      OPC=nop             
  nop                              #  92    0x1588e6  1      OPC=nop             
                                                                                 
.size __libnacl_irt_dev_filename_init, .-__libnacl_irt_dev_filename_init

