  .text
  .globl _ZNSt10moneypunctIwLb1EEC1Ej
  .type _ZNSt10moneypunctIwLb1EEC1Ej, @function

#! file-offset 0xf7480
#! rip-offset  0xb7480
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC1Ej:                                     #        0xb7480  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7480  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7481  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7483  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7485  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7487  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb748a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb748d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb748f  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  9     0xb7491  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb7499  3      OPC=setne_r8        
  nop                                                              #  11    0xb749c  1      OPC=nop             
  nop                                                              #  12    0xb749d  1      OPC=nop             
  nop                                                              #  13    0xb749e  1      OPC=nop             
  nop                                                              #  14    0xb749f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb74a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb74a2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb74ab  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb74ad  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb74af  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb74b4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb74b6  1      OPC=nop             
  nop                                                              #  22    0xb74b7  1      OPC=nop             
  nop                                                              #  23    0xb74b8  1      OPC=nop             
  nop                                                              #  24    0xb74b9  1      OPC=nop             
  nop                                                              #  25    0xb74ba  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb74bb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb74c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb74c3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb74c6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb74c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb74c9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb74d0  1      OPC=nop             
  nop                                                              #  33    0xb74d1  1      OPC=nop             
  nop                                                              #  34    0xb74d2  1      OPC=nop             
  nop                                                              #  35    0xb74d3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb74d4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb74d7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb74da  1      OPC=nop             
  nop                                                              #  39    0xb74db  1      OPC=nop             
  nop                                                              #  40    0xb74dc  1      OPC=nop             
  nop                                                              #  41    0xb74dd  1      OPC=nop             
  nop                                                              #  42    0xb74de  1      OPC=nop             
  nop                                                              #  43    0xb74df  1      OPC=nop             
  nop                                                              #  44    0xb74e0  1      OPC=nop             
  nop                                                              #  45    0xb74e1  1      OPC=nop             
  nop                                                              #  46    0xb74e2  1      OPC=nop             
  nop                                                              #  47    0xb74e3  1      OPC=nop             
  nop                                                              #  48    0xb74e4  1      OPC=nop             
  nop                                                              #  49    0xb74e5  1      OPC=nop             
  nop                                                              #  50    0xb74e6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb74e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb74e9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb74ed  1      OPC=nop             
  nop                                                              #  54    0xb74ee  1      OPC=nop             
  nop                                                              #  55    0xb74ef  1      OPC=nop             
  nop                                                              #  56    0xb74f0  1      OPC=nop             
  nop                                                              #  57    0xb74f1  1      OPC=nop             
  nop                                                              #  58    0xb74f2  1      OPC=nop             
  nop                                                              #  59    0xb74f3  1      OPC=nop             
  nop                                                              #  60    0xb74f4  1      OPC=nop             
  nop                                                              #  61    0xb74f5  1      OPC=nop             
  nop                                                              #  62    0xb74f6  1      OPC=nop             
  nop                                                              #  63    0xb74f7  1      OPC=nop             
  nop                                                              #  64    0xb74f8  1      OPC=nop             
  nop                                                              #  65    0xb74f9  1      OPC=nop             
  nop                                                              #  66    0xb74fa  1      OPC=nop             
  nop                                                              #  67    0xb74fb  1      OPC=nop             
  nop                                                              #  68    0xb74fc  1      OPC=nop             
  nop                                                              #  69    0xb74fd  1      OPC=nop             
  nop                                                              #  70    0xb74fe  1      OPC=nop             
  nop                                                              #  71    0xb74ff  1      OPC=nop             
  nop                                                              #  72    0xb7500  1      OPC=nop             
  nop                                                              #  73    0xb7501  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7502  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7507  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb750b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb750d  1      OPC=nop             
  nop                                                              #  78    0xb750e  1      OPC=nop             
  nop                                                              #  79    0xb750f  1      OPC=nop             
  nop                                                              #  80    0xb7510  1      OPC=nop             
  nop                                                              #  81    0xb7511  1      OPC=nop             
  nop                                                              #  82    0xb7512  1      OPC=nop             
  nop                                                              #  83    0xb7513  1      OPC=nop             
  nop                                                              #  84    0xb7514  1      OPC=nop             
  nop                                                              #  85    0xb7515  1      OPC=nop             
  nop                                                              #  86    0xb7516  1      OPC=nop             
  nop                                                              #  87    0xb7517  1      OPC=nop             
  nop                                                              #  88    0xb7518  1      OPC=nop             
  nop                                                              #  89    0xb7519  1      OPC=nop             
  nop                                                              #  90    0xb751a  1      OPC=nop             
  nop                                                              #  91    0xb751b  1      OPC=nop             
  nop                                                              #  92    0xb751c  1      OPC=nop             
  nop                                                              #  93    0xb751d  1      OPC=nop             
  nop                                                              #  94    0xb751e  1      OPC=nop             
  nop                                                              #  95    0xb751f  1      OPC=nop             
  nop                                                              #  96    0xb7520  1      OPC=nop             
  nop                                                              #  97    0xb7521  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7522  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC1Ej, .-_ZNSt10moneypunctIwLb1EEC1Ej

