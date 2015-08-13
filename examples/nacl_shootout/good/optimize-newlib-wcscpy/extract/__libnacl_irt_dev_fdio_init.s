  .text
  .globl __libnacl_irt_dev_fdio_init
  .type __libnacl_irt_dev_fdio_init, @function

#! file-offset 0x198360
#! rip-offset  0x158360
#! capacity    160 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_dev_fdio_init:  #        0x158360  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x158360  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x158363  3      OPC=addq_r64_r64    
  movl $0x38, %edx             #  3     0x158366  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  4     0x15836b  5      OPC=movl_r32_imm32  
  movl $0x1004b5c0, %edi       #  5     0x158370  5      OPC=movl_r32_imm32  
  nop                          #  6     0x158375  1      OPC=nop             
  nop                          #  7     0x158376  1      OPC=nop             
  nop                          #  8     0x158377  1      OPC=nop             
  nop                          #  9     0x158378  1      OPC=nop             
  nop                          #  10    0x158379  1      OPC=nop             
  nop                          #  11    0x15837a  1      OPC=nop             
  callq .__libnacl_irt_query   #  12    0x15837b  5      OPC=callq_label     
  testl %eax, %eax             #  13    0x158380  2      OPC=testl_r32_r32   
  je .L_1583c0                 #  14    0x158382  2      OPC=je_label        
  nop                          #  15    0x158384  1      OPC=nop             
  nop                          #  16    0x158385  1      OPC=nop             
  nop                          #  17    0x158386  1      OPC=nop             
  nop                          #  18    0x158387  1      OPC=nop             
  nop                          #  19    0x158388  1      OPC=nop             
  nop                          #  20    0x158389  1      OPC=nop             
  nop                          #  21    0x15838a  1      OPC=nop             
  nop                          #  22    0x15838b  1      OPC=nop             
  nop                          #  23    0x15838c  1      OPC=nop             
  nop                          #  24    0x15838d  1      OPC=nop             
  nop                          #  25    0x15838e  1      OPC=nop             
  nop                          #  26    0x15838f  1      OPC=nop             
  nop                          #  27    0x158390  1      OPC=nop             
  nop                          #  28    0x158391  1      OPC=nop             
  nop                          #  29    0x158392  1      OPC=nop             
  nop                          #  30    0x158393  1      OPC=nop             
  nop                          #  31    0x158394  1      OPC=nop             
  nop                          #  32    0x158395  1      OPC=nop             
  nop                          #  33    0x158396  1      OPC=nop             
  nop                          #  34    0x158397  1      OPC=nop             
  nop                          #  35    0x158398  1      OPC=nop             
  nop                          #  36    0x158399  1      OPC=nop             
  nop                          #  37    0x15839a  1      OPC=nop             
  nop                          #  38    0x15839b  1      OPC=nop             
  nop                          #  39    0x15839c  1      OPC=nop             
  nop                          #  40    0x15839d  1      OPC=nop             
  nop                          #  41    0x15839e  1      OPC=nop             
  nop                          #  42    0x15839f  1      OPC=nop             
.L_1583a0:                     #        0x1583a0  0      OPC=<label>         
  addl $0x8, %esp              #  43    0x1583a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  44    0x1583a3  3      OPC=addq_r64_r64    
  popq %r11                    #  45    0x1583a6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  46    0x1583a8  7      OPC=andl_r32_imm32  
  nop                          #  47    0x1583af  1      OPC=nop             
  nop                          #  48    0x1583b0  1      OPC=nop             
  nop                          #  49    0x1583b1  1      OPC=nop             
  nop                          #  50    0x1583b2  1      OPC=nop             
  addq %r15, %r11              #  51    0x1583b3  3      OPC=addq_r64_r64    
  jmpq %r11                    #  52    0x1583b6  3      OPC=jmpq_r64        
  nop                          #  53    0x1583b9  1      OPC=nop             
  nop                          #  54    0x1583ba  1      OPC=nop             
  nop                          #  55    0x1583bb  1      OPC=nop             
  nop                          #  56    0x1583bc  1      OPC=nop             
  nop                          #  57    0x1583bd  1      OPC=nop             
  nop                          #  58    0x1583be  1      OPC=nop             
  nop                          #  59    0x1583bf  1      OPC=nop             
  nop                          #  60    0x1583c0  1      OPC=nop             
  nop                          #  61    0x1583c1  1      OPC=nop             
  nop                          #  62    0x1583c2  1      OPC=nop             
  nop                          #  63    0x1583c3  1      OPC=nop             
  nop                          #  64    0x1583c4  1      OPC=nop             
  nop                          #  65    0x1583c5  1      OPC=nop             
  nop                          #  66    0x1583c6  1      OPC=nop             
.L_1583c0:                     #        0x1583c7  0      OPC=<label>         
  movl $0x20, %edx             #  67    0x1583c7  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  68    0x1583cc  5      OPC=movl_r32_imm32  
  movl $0x10040a74, %edi       #  69    0x1583d1  5      OPC=movl_r32_imm32  
  nop                          #  70    0x1583d6  1      OPC=nop             
  nop                          #  71    0x1583d7  1      OPC=nop             
  nop                          #  72    0x1583d8  1      OPC=nop             
  nop                          #  73    0x1583d9  1      OPC=nop             
  nop                          #  74    0x1583da  1      OPC=nop             
  nop                          #  75    0x1583db  1      OPC=nop             
  nop                          #  76    0x1583dc  1      OPC=nop             
  nop                          #  77    0x1583dd  1      OPC=nop             
  nop                          #  78    0x1583de  1      OPC=nop             
  nop                          #  79    0x1583df  1      OPC=nop             
  nop                          #  80    0x1583e0  1      OPC=nop             
  nop                          #  81    0x1583e1  1      OPC=nop             
  callq .__libnacl_irt_query   #  82    0x1583e2  5      OPC=callq_label     
  testl %eax, %eax             #  83    0x1583e7  2      OPC=testl_r32_r32   
  jne .L_1583a0                #  84    0x1583e9  2      OPC=jne_label       
  movl $0x20, %edx             #  85    0x1583eb  5      OPC=movl_r32_imm32  
  movl $0x100792e0, %esi       #  86    0x1583f0  5      OPC=movl_r32_imm32  
  movl $0x10040a86, %edi       #  87    0x1583f5  5      OPC=movl_r32_imm32  
  addl $0x8, %esp              #  88    0x1583fa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  89    0x1583fd  3      OPC=addq_r64_r64    
  jmpq .__libnacl_irt_query    #  90    0x158400  5      OPC=jmpq_label_1    
  nop                          #  91    0x158405  1      OPC=nop             
  nop                          #  92    0x158406  1      OPC=nop             
                                                                             
.size __libnacl_irt_dev_fdio_init, .-__libnacl_irt_dev_fdio_init

