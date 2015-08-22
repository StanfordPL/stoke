  .text
  .globl __libnacl_irt_dev_filename_init
  .type __libnacl_irt_dev_filename_init, @function

#! file-offset 0x198f60
#! rip-offset  0x158f60
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_dev_filename_init:  #        0x158f60  0      OPC=<label>         
  subl $0x8, %esp                  #  1     0x158f60  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  2     0x158f63  3      OPC=addq_r64_r64    
  movl $0x40, %edx                 #  3     0x158f66  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  4     0x158f6b  5      OPC=movl_r32_imm32  
  movl $0x1004b5d6, %edi           #  5     0x158f70  5      OPC=movl_r32_imm32  
  nop                              #  6     0x158f75  1      OPC=nop             
  nop                              #  7     0x158f76  1      OPC=nop             
  nop                              #  8     0x158f77  1      OPC=nop             
  nop                              #  9     0x158f78  1      OPC=nop             
  nop                              #  10    0x158f79  1      OPC=nop             
  nop                              #  11    0x158f7a  1      OPC=nop             
  callq .__libnacl_irt_query       #  12    0x158f7b  5      OPC=callq_label     
  testl %eax, %eax                 #  13    0x158f80  2      OPC=testl_r32_r32   
  je .L_158fc0                     #  14    0x158f82  2      OPC=je_label        
  nop                              #  15    0x158f84  1      OPC=nop             
  nop                              #  16    0x158f85  1      OPC=nop             
  nop                              #  17    0x158f86  1      OPC=nop             
  nop                              #  18    0x158f87  1      OPC=nop             
  nop                              #  19    0x158f88  1      OPC=nop             
  nop                              #  20    0x158f89  1      OPC=nop             
  nop                              #  21    0x158f8a  1      OPC=nop             
  nop                              #  22    0x158f8b  1      OPC=nop             
  nop                              #  23    0x158f8c  1      OPC=nop             
  nop                              #  24    0x158f8d  1      OPC=nop             
  nop                              #  25    0x158f8e  1      OPC=nop             
  nop                              #  26    0x158f8f  1      OPC=nop             
  nop                              #  27    0x158f90  1      OPC=nop             
  nop                              #  28    0x158f91  1      OPC=nop             
  nop                              #  29    0x158f92  1      OPC=nop             
  nop                              #  30    0x158f93  1      OPC=nop             
  nop                              #  31    0x158f94  1      OPC=nop             
  nop                              #  32    0x158f95  1      OPC=nop             
  nop                              #  33    0x158f96  1      OPC=nop             
  nop                              #  34    0x158f97  1      OPC=nop             
  nop                              #  35    0x158f98  1      OPC=nop             
  nop                              #  36    0x158f99  1      OPC=nop             
  nop                              #  37    0x158f9a  1      OPC=nop             
  nop                              #  38    0x158f9b  1      OPC=nop             
  nop                              #  39    0x158f9c  1      OPC=nop             
  nop                              #  40    0x158f9d  1      OPC=nop             
  nop                              #  41    0x158f9e  1      OPC=nop             
  nop                              #  42    0x158f9f  1      OPC=nop             
.L_158fa0:                         #        0x158fa0  0      OPC=<label>         
  addl $0x8, %esp                  #  43    0x158fa0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  44    0x158fa3  3      OPC=addq_r64_r64    
  popq %r11                        #  45    0x158fa6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  46    0x158fa8  7      OPC=andl_r32_imm32  
  nop                              #  47    0x158faf  1      OPC=nop             
  nop                              #  48    0x158fb0  1      OPC=nop             
  nop                              #  49    0x158fb1  1      OPC=nop             
  nop                              #  50    0x158fb2  1      OPC=nop             
  addq %r15, %r11                  #  51    0x158fb3  3      OPC=addq_r64_r64    
  jmpq %r11                        #  52    0x158fb6  3      OPC=jmpq_r64        
  nop                              #  53    0x158fb9  1      OPC=nop             
  nop                              #  54    0x158fba  1      OPC=nop             
  nop                              #  55    0x158fbb  1      OPC=nop             
  nop                              #  56    0x158fbc  1      OPC=nop             
  nop                              #  57    0x158fbd  1      OPC=nop             
  nop                              #  58    0x158fbe  1      OPC=nop             
  nop                              #  59    0x158fbf  1      OPC=nop             
  nop                              #  60    0x158fc0  1      OPC=nop             
  nop                              #  61    0x158fc1  1      OPC=nop             
  nop                              #  62    0x158fc2  1      OPC=nop             
  nop                              #  63    0x158fc3  1      OPC=nop             
  nop                              #  64    0x158fc4  1      OPC=nop             
  nop                              #  65    0x158fc5  1      OPC=nop             
  nop                              #  66    0x158fc6  1      OPC=nop             
.L_158fc0:                         #        0x158fc7  0      OPC=<label>         
  movl $0x1c, %edx                 #  67    0x158fc7  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  68    0x158fcc  5      OPC=movl_r32_imm32  
  movl $0x1004b5f0, %edi           #  69    0x158fd1  5      OPC=movl_r32_imm32  
  nop                              #  70    0x158fd6  1      OPC=nop             
  nop                              #  71    0x158fd7  1      OPC=nop             
  nop                              #  72    0x158fd8  1      OPC=nop             
  nop                              #  73    0x158fd9  1      OPC=nop             
  nop                              #  74    0x158fda  1      OPC=nop             
  nop                              #  75    0x158fdb  1      OPC=nop             
  nop                              #  76    0x158fdc  1      OPC=nop             
  nop                              #  77    0x158fdd  1      OPC=nop             
  nop                              #  78    0x158fde  1      OPC=nop             
  nop                              #  79    0x158fdf  1      OPC=nop             
  nop                              #  80    0x158fe0  1      OPC=nop             
  nop                              #  81    0x158fe1  1      OPC=nop             
  callq .__libnacl_irt_query       #  82    0x158fe2  5      OPC=callq_label     
  testl %eax, %eax                 #  83    0x158fe7  2      OPC=testl_r32_r32   
  jne .L_158fa0                    #  84    0x158fe9  2      OPC=jne_label       
  movl $0x8, %edx                  #  85    0x158feb  5      OPC=movl_r32_imm32  
  movl $0x10079280, %esi           #  86    0x158ff0  5      OPC=movl_r32_imm32  
  movl $0x1004b60a, %edi           #  87    0x158ff5  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                  #  88    0x158ffa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  89    0x158ffd  3      OPC=addq_r64_r64    
  jmpq .__libnacl_irt_query        #  90    0x159000  5      OPC=jmpq_label_1    
  nop                              #  91    0x159005  1      OPC=nop             
  nop                              #  92    0x159006  1      OPC=nop             
                                                                                 
.size __libnacl_irt_dev_filename_init, .-__libnacl_irt_dev_filename_init

