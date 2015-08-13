  .text
  .globl _ZNSt8numpunctIwEC1EPij
  .type _ZNSt8numpunctIwEC1EPij, @function

#! file-offset 0xf6540
#! rip-offset  0xb6540
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1EPij:                              #        0xb6540  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6540  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6541  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6543  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0xb6545  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0xb6547  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0xb6549  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0xb654c  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0xb654f  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0xb6551  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  10    0xb6553  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0xb655b  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0xb655e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0xb6560  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0xb6562  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0xb656b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0xb656d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0xb6572  1      OPC=nop             
  nop                                                  #  18    0xb6573  1      OPC=nop             
  nop                                                  #  19    0xb6574  1      OPC=nop             
  nop                                                  #  20    0xb6575  1      OPC=nop             
  nop                                                  #  21    0xb6576  1      OPC=nop             
  nop                                                  #  22    0xb6577  1      OPC=nop             
  nop                                                  #  23    0xb6578  1      OPC=nop             
  nop                                                  #  24    0xb6579  1      OPC=nop             
  nop                                                  #  25    0xb657a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  26    0xb657b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0xb6580  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0xb6583  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0xb6586  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0xb6587  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0xb6589  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0xb6590  1      OPC=nop             
  nop                                                  #  33    0xb6591  1      OPC=nop             
  nop                                                  #  34    0xb6592  1      OPC=nop             
  nop                                                  #  35    0xb6593  1      OPC=nop             
  addq %r15, %r11                                      #  36    0xb6594  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0xb6597  3      OPC=jmpq_r64        
  nop                                                  #  38    0xb659a  1      OPC=nop             
  nop                                                  #  39    0xb659b  1      OPC=nop             
  nop                                                  #  40    0xb659c  1      OPC=nop             
  nop                                                  #  41    0xb659d  1      OPC=nop             
  nop                                                  #  42    0xb659e  1      OPC=nop             
  nop                                                  #  43    0xb659f  1      OPC=nop             
  nop                                                  #  44    0xb65a0  1      OPC=nop             
  nop                                                  #  45    0xb65a1  1      OPC=nop             
  nop                                                  #  46    0xb65a2  1      OPC=nop             
  nop                                                  #  47    0xb65a3  1      OPC=nop             
  nop                                                  #  48    0xb65a4  1      OPC=nop             
  nop                                                  #  49    0xb65a5  1      OPC=nop             
  nop                                                  #  50    0xb65a6  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0xb65a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0xb65a9  4      OPC=movl_m32_r32    
  nop                                                  #  53    0xb65ad  1      OPC=nop             
  nop                                                  #  54    0xb65ae  1      OPC=nop             
  nop                                                  #  55    0xb65af  1      OPC=nop             
  nop                                                  #  56    0xb65b0  1      OPC=nop             
  nop                                                  #  57    0xb65b1  1      OPC=nop             
  nop                                                  #  58    0xb65b2  1      OPC=nop             
  nop                                                  #  59    0xb65b3  1      OPC=nop             
  nop                                                  #  60    0xb65b4  1      OPC=nop             
  nop                                                  #  61    0xb65b5  1      OPC=nop             
  nop                                                  #  62    0xb65b6  1      OPC=nop             
  nop                                                  #  63    0xb65b7  1      OPC=nop             
  nop                                                  #  64    0xb65b8  1      OPC=nop             
  nop                                                  #  65    0xb65b9  1      OPC=nop             
  nop                                                  #  66    0xb65ba  1      OPC=nop             
  nop                                                  #  67    0xb65bb  1      OPC=nop             
  nop                                                  #  68    0xb65bc  1      OPC=nop             
  nop                                                  #  69    0xb65bd  1      OPC=nop             
  nop                                                  #  70    0xb65be  1      OPC=nop             
  nop                                                  #  71    0xb65bf  1      OPC=nop             
  nop                                                  #  72    0xb65c0  1      OPC=nop             
  nop                                                  #  73    0xb65c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0xb65c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0xb65c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0xb65cb  2      OPC=movl_r32_r32    
  nop                                                  #  77    0xb65cd  1      OPC=nop             
  nop                                                  #  78    0xb65ce  1      OPC=nop             
  nop                                                  #  79    0xb65cf  1      OPC=nop             
  nop                                                  #  80    0xb65d0  1      OPC=nop             
  nop                                                  #  81    0xb65d1  1      OPC=nop             
  nop                                                  #  82    0xb65d2  1      OPC=nop             
  nop                                                  #  83    0xb65d3  1      OPC=nop             
  nop                                                  #  84    0xb65d4  1      OPC=nop             
  nop                                                  #  85    0xb65d5  1      OPC=nop             
  nop                                                  #  86    0xb65d6  1      OPC=nop             
  nop                                                  #  87    0xb65d7  1      OPC=nop             
  nop                                                  #  88    0xb65d8  1      OPC=nop             
  nop                                                  #  89    0xb65d9  1      OPC=nop             
  nop                                                  #  90    0xb65da  1      OPC=nop             
  nop                                                  #  91    0xb65db  1      OPC=nop             
  nop                                                  #  92    0xb65dc  1      OPC=nop             
  nop                                                  #  93    0xb65dd  1      OPC=nop             
  nop                                                  #  94    0xb65de  1      OPC=nop             
  nop                                                  #  95    0xb65df  1      OPC=nop             
  nop                                                  #  96    0xb65e0  1      OPC=nop             
  nop                                                  #  97    0xb65e1  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0xb65e2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1EPij, .-_ZNSt8numpunctIwEC1EPij

