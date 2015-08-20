  .text
  .globl __libnacl_irt_dev_fdio_init
  .type __libnacl_irt_dev_fdio_init, @function

#! file-offset 0x198660
#! rip-offset  0x158660
#! capacity    160 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_dev_fdio_init:  #        0x158660  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x158660  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x158663  3      OPC=addq_r64_r64    
  movl $0x38, %edx             #  3     0x158666  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  4     0x15866b  5      OPC=movl_r32_imm32  
  movl $0x1004b5c0, %edi       #  5     0x158670  5      OPC=movl_r32_imm32  
  nop                          #  6     0x158675  1      OPC=nop             
  nop                          #  7     0x158676  1      OPC=nop             
  nop                          #  8     0x158677  1      OPC=nop             
  nop                          #  9     0x158678  1      OPC=nop             
  nop                          #  10    0x158679  1      OPC=nop             
  nop                          #  11    0x15867a  1      OPC=nop             
  callq .__libnacl_irt_query   #  12    0x15867b  5      OPC=callq_label     
  testl %eax, %eax             #  13    0x158680  2      OPC=testl_r32_r32   
  je .L_1586c0                 #  14    0x158682  2      OPC=je_label        
  nop                          #  15    0x158684  1      OPC=nop             
  nop                          #  16    0x158685  1      OPC=nop             
  nop                          #  17    0x158686  1      OPC=nop             
  nop                          #  18    0x158687  1      OPC=nop             
  nop                          #  19    0x158688  1      OPC=nop             
  nop                          #  20    0x158689  1      OPC=nop             
  nop                          #  21    0x15868a  1      OPC=nop             
  nop                          #  22    0x15868b  1      OPC=nop             
  nop                          #  23    0x15868c  1      OPC=nop             
  nop                          #  24    0x15868d  1      OPC=nop             
  nop                          #  25    0x15868e  1      OPC=nop             
  nop                          #  26    0x15868f  1      OPC=nop             
  nop                          #  27    0x158690  1      OPC=nop             
  nop                          #  28    0x158691  1      OPC=nop             
  nop                          #  29    0x158692  1      OPC=nop             
  nop                          #  30    0x158693  1      OPC=nop             
  nop                          #  31    0x158694  1      OPC=nop             
  nop                          #  32    0x158695  1      OPC=nop             
  nop                          #  33    0x158696  1      OPC=nop             
  nop                          #  34    0x158697  1      OPC=nop             
  nop                          #  35    0x158698  1      OPC=nop             
  nop                          #  36    0x158699  1      OPC=nop             
  nop                          #  37    0x15869a  1      OPC=nop             
  nop                          #  38    0x15869b  1      OPC=nop             
  nop                          #  39    0x15869c  1      OPC=nop             
  nop                          #  40    0x15869d  1      OPC=nop             
  nop                          #  41    0x15869e  1      OPC=nop             
  nop                          #  42    0x15869f  1      OPC=nop             
.L_1586a0:                     #        0x1586a0  0      OPC=<label>         
  addl $0x8, %esp              #  43    0x1586a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  44    0x1586a3  3      OPC=addq_r64_r64    
  popq %r11                    #  45    0x1586a6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  46    0x1586a8  7      OPC=andl_r32_imm32  
  nop                          #  47    0x1586af  1      OPC=nop             
  nop                          #  48    0x1586b0  1      OPC=nop             
  nop                          #  49    0x1586b1  1      OPC=nop             
  nop                          #  50    0x1586b2  1      OPC=nop             
  addq %r15, %r11              #  51    0x1586b3  3      OPC=addq_r64_r64    
  jmpq %r11                    #  52    0x1586b6  3      OPC=jmpq_r64        
  nop                          #  53    0x1586b9  1      OPC=nop             
  nop                          #  54    0x1586ba  1      OPC=nop             
  nop                          #  55    0x1586bb  1      OPC=nop             
  nop                          #  56    0x1586bc  1      OPC=nop             
  nop                          #  57    0x1586bd  1      OPC=nop             
  nop                          #  58    0x1586be  1      OPC=nop             
  nop                          #  59    0x1586bf  1      OPC=nop             
  nop                          #  60    0x1586c0  1      OPC=nop             
  nop                          #  61    0x1586c1  1      OPC=nop             
  nop                          #  62    0x1586c2  1      OPC=nop             
  nop                          #  63    0x1586c3  1      OPC=nop             
  nop                          #  64    0x1586c4  1      OPC=nop             
  nop                          #  65    0x1586c5  1      OPC=nop             
  nop                          #  66    0x1586c6  1      OPC=nop             
.L_1586c0:                     #        0x1586c7  0      OPC=<label>         
  movl $0x20, %edx             #  67    0x1586c7  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  68    0x1586cc  5      OPC=movl_r32_imm32  
  movl $0x10040a74, %edi       #  69    0x1586d1  5      OPC=movl_r32_imm32  
  nop                          #  70    0x1586d6  1      OPC=nop             
  nop                          #  71    0x1586d7  1      OPC=nop             
  nop                          #  72    0x1586d8  1      OPC=nop             
  nop                          #  73    0x1586d9  1      OPC=nop             
  nop                          #  74    0x1586da  1      OPC=nop             
  nop                          #  75    0x1586db  1      OPC=nop             
  nop                          #  76    0x1586dc  1      OPC=nop             
  nop                          #  77    0x1586dd  1      OPC=nop             
  nop                          #  78    0x1586de  1      OPC=nop             
  nop                          #  79    0x1586df  1      OPC=nop             
  nop                          #  80    0x1586e0  1      OPC=nop             
  nop                          #  81    0x1586e1  1      OPC=nop             
  callq .__libnacl_irt_query   #  82    0x1586e2  5      OPC=callq_label     
  testl %eax, %eax             #  83    0x1586e7  2      OPC=testl_r32_r32   
  jne .L_1586a0                #  84    0x1586e9  2      OPC=jne_label       
  movl $0x20, %edx             #  85    0x1586eb  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  86    0x1586f0  5      OPC=movl_r32_imm32  
  movl $0x10040a86, %edi       #  87    0x1586f5  5      OPC=movl_r32_imm32  
  addl $0x8, %esp              #  88    0x1586fa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  89    0x1586fd  3      OPC=addq_r64_r64    
  jmpq .__libnacl_irt_query    #  90    0x158700  5      OPC=jmpq_label_1    
  nop                          #  91    0x158705  1      OPC=nop             
  nop                          #  92    0x158706  1      OPC=nop             
                                                                             
.size __libnacl_irt_dev_fdio_init, .-__libnacl_irt_dev_fdio_init

