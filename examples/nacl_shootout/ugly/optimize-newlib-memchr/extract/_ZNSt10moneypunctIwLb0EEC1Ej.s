  .text
  .globl _ZNSt10moneypunctIwLb0EEC1Ej
  .type _ZNSt10moneypunctIwLb0EEC1Ej, @function

#! file-offset 0xf7fe0
#! rip-offset  0xb7fe0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC1Ej:                                     #        0xb7fe0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7fe0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7fe1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7fe3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7fe5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7fe7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb7fea  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb7fed  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb7fef  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  9     0xb7ff1  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb7ff9  3      OPC=setne_r8        
  nop                                                              #  11    0xb7ffc  1      OPC=nop             
  nop                                                              #  12    0xb7ffd  1      OPC=nop             
  nop                                                              #  13    0xb7ffe  1      OPC=nop             
  nop                                                              #  14    0xb7fff  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb8000  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb8002  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb800b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb800d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb800f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb8014  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb8016  1      OPC=nop             
  nop                                                              #  22    0xb8017  1      OPC=nop             
  nop                                                              #  23    0xb8018  1      OPC=nop             
  nop                                                              #  24    0xb8019  1      OPC=nop             
  nop                                                              #  25    0xb801a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb801b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb8020  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb8023  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb8026  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb8027  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb8029  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb8030  1      OPC=nop             
  nop                                                              #  33    0xb8031  1      OPC=nop             
  nop                                                              #  34    0xb8032  1      OPC=nop             
  nop                                                              #  35    0xb8033  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb8034  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb8037  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb803a  1      OPC=nop             
  nop                                                              #  39    0xb803b  1      OPC=nop             
  nop                                                              #  40    0xb803c  1      OPC=nop             
  nop                                                              #  41    0xb803d  1      OPC=nop             
  nop                                                              #  42    0xb803e  1      OPC=nop             
  nop                                                              #  43    0xb803f  1      OPC=nop             
  nop                                                              #  44    0xb8040  1      OPC=nop             
  nop                                                              #  45    0xb8041  1      OPC=nop             
  nop                                                              #  46    0xb8042  1      OPC=nop             
  nop                                                              #  47    0xb8043  1      OPC=nop             
  nop                                                              #  48    0xb8044  1      OPC=nop             
  nop                                                              #  49    0xb8045  1      OPC=nop             
  nop                                                              #  50    0xb8046  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb8047  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb8049  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb804d  1      OPC=nop             
  nop                                                              #  54    0xb804e  1      OPC=nop             
  nop                                                              #  55    0xb804f  1      OPC=nop             
  nop                                                              #  56    0xb8050  1      OPC=nop             
  nop                                                              #  57    0xb8051  1      OPC=nop             
  nop                                                              #  58    0xb8052  1      OPC=nop             
  nop                                                              #  59    0xb8053  1      OPC=nop             
  nop                                                              #  60    0xb8054  1      OPC=nop             
  nop                                                              #  61    0xb8055  1      OPC=nop             
  nop                                                              #  62    0xb8056  1      OPC=nop             
  nop                                                              #  63    0xb8057  1      OPC=nop             
  nop                                                              #  64    0xb8058  1      OPC=nop             
  nop                                                              #  65    0xb8059  1      OPC=nop             
  nop                                                              #  66    0xb805a  1      OPC=nop             
  nop                                                              #  67    0xb805b  1      OPC=nop             
  nop                                                              #  68    0xb805c  1      OPC=nop             
  nop                                                              #  69    0xb805d  1      OPC=nop             
  nop                                                              #  70    0xb805e  1      OPC=nop             
  nop                                                              #  71    0xb805f  1      OPC=nop             
  nop                                                              #  72    0xb8060  1      OPC=nop             
  nop                                                              #  73    0xb8061  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb8062  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb8067  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb806b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb806d  1      OPC=nop             
  nop                                                              #  78    0xb806e  1      OPC=nop             
  nop                                                              #  79    0xb806f  1      OPC=nop             
  nop                                                              #  80    0xb8070  1      OPC=nop             
  nop                                                              #  81    0xb8071  1      OPC=nop             
  nop                                                              #  82    0xb8072  1      OPC=nop             
  nop                                                              #  83    0xb8073  1      OPC=nop             
  nop                                                              #  84    0xb8074  1      OPC=nop             
  nop                                                              #  85    0xb8075  1      OPC=nop             
  nop                                                              #  86    0xb8076  1      OPC=nop             
  nop                                                              #  87    0xb8077  1      OPC=nop             
  nop                                                              #  88    0xb8078  1      OPC=nop             
  nop                                                              #  89    0xb8079  1      OPC=nop             
  nop                                                              #  90    0xb807a  1      OPC=nop             
  nop                                                              #  91    0xb807b  1      OPC=nop             
  nop                                                              #  92    0xb807c  1      OPC=nop             
  nop                                                              #  93    0xb807d  1      OPC=nop             
  nop                                                              #  94    0xb807e  1      OPC=nop             
  nop                                                              #  95    0xb807f  1      OPC=nop             
  nop                                                              #  96    0xb8080  1      OPC=nop             
  nop                                                              #  97    0xb8081  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb8082  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC1Ej, .-_ZNSt10moneypunctIwLb0EEC1Ej

