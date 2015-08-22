  .text
  .globl __libnacl_irt_dev_fdio_init
  .type __libnacl_irt_dev_fdio_init, @function

#! file-offset 0x198d80
#! rip-offset  0x158d80
#! capacity    160 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_dev_fdio_init:  #        0x158d80  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x158d80  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x158d83  3      OPC=addq_r64_r64    
  movl $0x38, %edx             #  3     0x158d86  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  4     0x158d8b  5      OPC=movl_r32_imm32  
  movl $0x1004b5c0, %edi       #  5     0x158d90  5      OPC=movl_r32_imm32  
  nop                          #  6     0x158d95  1      OPC=nop             
  nop                          #  7     0x158d96  1      OPC=nop             
  nop                          #  8     0x158d97  1      OPC=nop             
  nop                          #  9     0x158d98  1      OPC=nop             
  nop                          #  10    0x158d99  1      OPC=nop             
  nop                          #  11    0x158d9a  1      OPC=nop             
  callq .__libnacl_irt_query   #  12    0x158d9b  5      OPC=callq_label     
  testl %eax, %eax             #  13    0x158da0  2      OPC=testl_r32_r32   
  je .L_158de0                 #  14    0x158da2  2      OPC=je_label        
  nop                          #  15    0x158da4  1      OPC=nop             
  nop                          #  16    0x158da5  1      OPC=nop             
  nop                          #  17    0x158da6  1      OPC=nop             
  nop                          #  18    0x158da7  1      OPC=nop             
  nop                          #  19    0x158da8  1      OPC=nop             
  nop                          #  20    0x158da9  1      OPC=nop             
  nop                          #  21    0x158daa  1      OPC=nop             
  nop                          #  22    0x158dab  1      OPC=nop             
  nop                          #  23    0x158dac  1      OPC=nop             
  nop                          #  24    0x158dad  1      OPC=nop             
  nop                          #  25    0x158dae  1      OPC=nop             
  nop                          #  26    0x158daf  1      OPC=nop             
  nop                          #  27    0x158db0  1      OPC=nop             
  nop                          #  28    0x158db1  1      OPC=nop             
  nop                          #  29    0x158db2  1      OPC=nop             
  nop                          #  30    0x158db3  1      OPC=nop             
  nop                          #  31    0x158db4  1      OPC=nop             
  nop                          #  32    0x158db5  1      OPC=nop             
  nop                          #  33    0x158db6  1      OPC=nop             
  nop                          #  34    0x158db7  1      OPC=nop             
  nop                          #  35    0x158db8  1      OPC=nop             
  nop                          #  36    0x158db9  1      OPC=nop             
  nop                          #  37    0x158dba  1      OPC=nop             
  nop                          #  38    0x158dbb  1      OPC=nop             
  nop                          #  39    0x158dbc  1      OPC=nop             
  nop                          #  40    0x158dbd  1      OPC=nop             
  nop                          #  41    0x158dbe  1      OPC=nop             
  nop                          #  42    0x158dbf  1      OPC=nop             
.L_158dc0:                     #        0x158dc0  0      OPC=<label>         
  addl $0x8, %esp              #  43    0x158dc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  44    0x158dc3  3      OPC=addq_r64_r64    
  popq %r11                    #  45    0x158dc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  46    0x158dc8  7      OPC=andl_r32_imm32  
  nop                          #  47    0x158dcf  1      OPC=nop             
  nop                          #  48    0x158dd0  1      OPC=nop             
  nop                          #  49    0x158dd1  1      OPC=nop             
  nop                          #  50    0x158dd2  1      OPC=nop             
  addq %r15, %r11              #  51    0x158dd3  3      OPC=addq_r64_r64    
  jmpq %r11                    #  52    0x158dd6  3      OPC=jmpq_r64        
  nop                          #  53    0x158dd9  1      OPC=nop             
  nop                          #  54    0x158dda  1      OPC=nop             
  nop                          #  55    0x158ddb  1      OPC=nop             
  nop                          #  56    0x158ddc  1      OPC=nop             
  nop                          #  57    0x158ddd  1      OPC=nop             
  nop                          #  58    0x158dde  1      OPC=nop             
  nop                          #  59    0x158ddf  1      OPC=nop             
  nop                          #  60    0x158de0  1      OPC=nop             
  nop                          #  61    0x158de1  1      OPC=nop             
  nop                          #  62    0x158de2  1      OPC=nop             
  nop                          #  63    0x158de3  1      OPC=nop             
  nop                          #  64    0x158de4  1      OPC=nop             
  nop                          #  65    0x158de5  1      OPC=nop             
  nop                          #  66    0x158de6  1      OPC=nop             
.L_158de0:                     #        0x158de7  0      OPC=<label>         
  movl $0x20, %edx             #  67    0x158de7  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  68    0x158dec  5      OPC=movl_r32_imm32  
  movl $0x10040a74, %edi       #  69    0x158df1  5      OPC=movl_r32_imm32  
  nop                          #  70    0x158df6  1      OPC=nop             
  nop                          #  71    0x158df7  1      OPC=nop             
  nop                          #  72    0x158df8  1      OPC=nop             
  nop                          #  73    0x158df9  1      OPC=nop             
  nop                          #  74    0x158dfa  1      OPC=nop             
  nop                          #  75    0x158dfb  1      OPC=nop             
  nop                          #  76    0x158dfc  1      OPC=nop             
  nop                          #  77    0x158dfd  1      OPC=nop             
  nop                          #  78    0x158dfe  1      OPC=nop             
  nop                          #  79    0x158dff  1      OPC=nop             
  nop                          #  80    0x158e00  1      OPC=nop             
  nop                          #  81    0x158e01  1      OPC=nop             
  callq .__libnacl_irt_query   #  82    0x158e02  5      OPC=callq_label     
  testl %eax, %eax             #  83    0x158e07  2      OPC=testl_r32_r32   
  jne .L_158dc0                #  84    0x158e09  2      OPC=jne_label       
  movl $0x20, %edx             #  85    0x158e0b  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  86    0x158e10  5      OPC=movl_r32_imm32  
  movl $0x10040a86, %edi       #  87    0x158e15  5      OPC=movl_r32_imm32  
  addl $0x8, %esp              #  88    0x158e1a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  89    0x158e1d  3      OPC=addq_r64_r64    
  jmpq .__libnacl_irt_query    #  90    0x158e20  5      OPC=jmpq_label_1    
  nop                          #  91    0x158e25  1      OPC=nop             
  nop                          #  92    0x158e26  1      OPC=nop             
                                                                             
.size __libnacl_irt_dev_fdio_init, .-__libnacl_irt_dev_fdio_init

