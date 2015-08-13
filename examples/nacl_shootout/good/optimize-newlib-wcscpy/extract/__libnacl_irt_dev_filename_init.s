  .text
  .globl __libnacl_irt_dev_filename_init
  .type __libnacl_irt_dev_filename_init, @function

#! file-offset 0x198540
#! rip-offset  0x158540
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_dev_filename_init:  #        0x158540  0      OPC=<label>         
  subl $0x8, %esp                  #  1     0x158540  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  2     0x158543  3      OPC=addq_r64_r64    
  movl $0x40, %edx                 #  3     0x158546  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  4     0x15854b  5      OPC=movl_r32_imm32  
  movl $0x1004b5d6, %edi           #  5     0x158550  5      OPC=movl_r32_imm32  
  nop                              #  6     0x158555  1      OPC=nop             
  nop                              #  7     0x158556  1      OPC=nop             
  nop                              #  8     0x158557  1      OPC=nop             
  nop                              #  9     0x158558  1      OPC=nop             
  nop                              #  10    0x158559  1      OPC=nop             
  nop                              #  11    0x15855a  1      OPC=nop             
  callq .__libnacl_irt_query       #  12    0x15855b  5      OPC=callq_label     
  testl %eax, %eax                 #  13    0x158560  2      OPC=testl_r32_r32   
  je .L_1585a0                     #  14    0x158562  2      OPC=je_label        
  nop                              #  15    0x158564  1      OPC=nop             
  nop                              #  16    0x158565  1      OPC=nop             
  nop                              #  17    0x158566  1      OPC=nop             
  nop                              #  18    0x158567  1      OPC=nop             
  nop                              #  19    0x158568  1      OPC=nop             
  nop                              #  20    0x158569  1      OPC=nop             
  nop                              #  21    0x15856a  1      OPC=nop             
  nop                              #  22    0x15856b  1      OPC=nop             
  nop                              #  23    0x15856c  1      OPC=nop             
  nop                              #  24    0x15856d  1      OPC=nop             
  nop                              #  25    0x15856e  1      OPC=nop             
  nop                              #  26    0x15856f  1      OPC=nop             
  nop                              #  27    0x158570  1      OPC=nop             
  nop                              #  28    0x158571  1      OPC=nop             
  nop                              #  29    0x158572  1      OPC=nop             
  nop                              #  30    0x158573  1      OPC=nop             
  nop                              #  31    0x158574  1      OPC=nop             
  nop                              #  32    0x158575  1      OPC=nop             
  nop                              #  33    0x158576  1      OPC=nop             
  nop                              #  34    0x158577  1      OPC=nop             
  nop                              #  35    0x158578  1      OPC=nop             
  nop                              #  36    0x158579  1      OPC=nop             
  nop                              #  37    0x15857a  1      OPC=nop             
  nop                              #  38    0x15857b  1      OPC=nop             
  nop                              #  39    0x15857c  1      OPC=nop             
  nop                              #  40    0x15857d  1      OPC=nop             
  nop                              #  41    0x15857e  1      OPC=nop             
  nop                              #  42    0x15857f  1      OPC=nop             
.L_158580:                         #        0x158580  0      OPC=<label>         
  addl $0x8, %esp                  #  43    0x158580  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  44    0x158583  3      OPC=addq_r64_r64    
  popq %r11                        #  45    0x158586  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  46    0x158588  7      OPC=andl_r32_imm32  
  nop                              #  47    0x15858f  1      OPC=nop             
  nop                              #  48    0x158590  1      OPC=nop             
  nop                              #  49    0x158591  1      OPC=nop             
  nop                              #  50    0x158592  1      OPC=nop             
  addq %r15, %r11                  #  51    0x158593  3      OPC=addq_r64_r64    
  jmpq %r11                        #  52    0x158596  3      OPC=jmpq_r64        
  nop                              #  53    0x158599  1      OPC=nop             
  nop                              #  54    0x15859a  1      OPC=nop             
  nop                              #  55    0x15859b  1      OPC=nop             
  nop                              #  56    0x15859c  1      OPC=nop             
  nop                              #  57    0x15859d  1      OPC=nop             
  nop                              #  58    0x15859e  1      OPC=nop             
  nop                              #  59    0x15859f  1      OPC=nop             
  nop                              #  60    0x1585a0  1      OPC=nop             
  nop                              #  61    0x1585a1  1      OPC=nop             
  nop                              #  62    0x1585a2  1      OPC=nop             
  nop                              #  63    0x1585a3  1      OPC=nop             
  nop                              #  64    0x1585a4  1      OPC=nop             
  nop                              #  65    0x1585a5  1      OPC=nop             
  nop                              #  66    0x1585a6  1      OPC=nop             
.L_1585a0:                         #        0x1585a7  0      OPC=<label>         
  movl $0x1c, %edx                 #  67    0x1585a7  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  68    0x1585ac  5      OPC=movl_r32_imm32  
  movl $0x1004b5f0, %edi           #  69    0x1585b1  5      OPC=movl_r32_imm32  
  nop                              #  70    0x1585b6  1      OPC=nop             
  nop                              #  71    0x1585b7  1      OPC=nop             
  nop                              #  72    0x1585b8  1      OPC=nop             
  nop                              #  73    0x1585b9  1      OPC=nop             
  nop                              #  74    0x1585ba  1      OPC=nop             
  nop                              #  75    0x1585bb  1      OPC=nop             
  nop                              #  76    0x1585bc  1      OPC=nop             
  nop                              #  77    0x1585bd  1      OPC=nop             
  nop                              #  78    0x1585be  1      OPC=nop             
  nop                              #  79    0x1585bf  1      OPC=nop             
  nop                              #  80    0x1585c0  1      OPC=nop             
  nop                              #  81    0x1585c1  1      OPC=nop             
  callq .__libnacl_irt_query       #  82    0x1585c2  5      OPC=callq_label     
  testl %eax, %eax                 #  83    0x1585c7  2      OPC=testl_r32_r32   
  jne .L_158580                    #  84    0x1585c9  2      OPC=jne_label       
  movl $0x8, %edx                  #  85    0x1585cb  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  86    0x1585d0  5      OPC=movl_r32_imm32  
  movl $0x1004b60a, %edi           #  87    0x1585d5  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                  #  88    0x1585da  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  89    0x1585dd  3      OPC=addq_r64_r64    
  jmpq .__libnacl_irt_query        #  90    0x1585e0  5      OPC=jmpq_label_1    
  nop                              #  91    0x1585e5  1      OPC=nop             
  nop                              #  92    0x1585e6  1      OPC=nop             
                                                                                 
.size __libnacl_irt_dev_filename_init, .-__libnacl_irt_dev_filename_init

