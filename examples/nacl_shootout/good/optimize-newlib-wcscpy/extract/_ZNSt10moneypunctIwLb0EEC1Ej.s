  .text
  .globl _ZNSt10moneypunctIwLb0EEC1Ej
  .type _ZNSt10moneypunctIwLb0EEC1Ej, @function

#! file-offset 0xf75c0
#! rip-offset  0xb75c0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC1Ej:                                     #        0xb75c0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb75c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb75c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb75c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb75c5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb75c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb75ca  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb75cd  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb75cf  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  9     0xb75d1  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb75d9  3      OPC=setne_r8        
  nop                                                              #  11    0xb75dc  1      OPC=nop             
  nop                                                              #  12    0xb75dd  1      OPC=nop             
  nop                                                              #  13    0xb75de  1      OPC=nop             
  nop                                                              #  14    0xb75df  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb75e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb75e2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb75eb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb75ed  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb75ef  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb75f4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb75f6  1      OPC=nop             
  nop                                                              #  22    0xb75f7  1      OPC=nop             
  nop                                                              #  23    0xb75f8  1      OPC=nop             
  nop                                                              #  24    0xb75f9  1      OPC=nop             
  nop                                                              #  25    0xb75fa  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb75fb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7600  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7603  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7606  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7607  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7609  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7610  1      OPC=nop             
  nop                                                              #  33    0xb7611  1      OPC=nop             
  nop                                                              #  34    0xb7612  1      OPC=nop             
  nop                                                              #  35    0xb7613  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7614  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7617  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb761a  1      OPC=nop             
  nop                                                              #  39    0xb761b  1      OPC=nop             
  nop                                                              #  40    0xb761c  1      OPC=nop             
  nop                                                              #  41    0xb761d  1      OPC=nop             
  nop                                                              #  42    0xb761e  1      OPC=nop             
  nop                                                              #  43    0xb761f  1      OPC=nop             
  nop                                                              #  44    0xb7620  1      OPC=nop             
  nop                                                              #  45    0xb7621  1      OPC=nop             
  nop                                                              #  46    0xb7622  1      OPC=nop             
  nop                                                              #  47    0xb7623  1      OPC=nop             
  nop                                                              #  48    0xb7624  1      OPC=nop             
  nop                                                              #  49    0xb7625  1      OPC=nop             
  nop                                                              #  50    0xb7626  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7627  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7629  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb762d  1      OPC=nop             
  nop                                                              #  54    0xb762e  1      OPC=nop             
  nop                                                              #  55    0xb762f  1      OPC=nop             
  nop                                                              #  56    0xb7630  1      OPC=nop             
  nop                                                              #  57    0xb7631  1      OPC=nop             
  nop                                                              #  58    0xb7632  1      OPC=nop             
  nop                                                              #  59    0xb7633  1      OPC=nop             
  nop                                                              #  60    0xb7634  1      OPC=nop             
  nop                                                              #  61    0xb7635  1      OPC=nop             
  nop                                                              #  62    0xb7636  1      OPC=nop             
  nop                                                              #  63    0xb7637  1      OPC=nop             
  nop                                                              #  64    0xb7638  1      OPC=nop             
  nop                                                              #  65    0xb7639  1      OPC=nop             
  nop                                                              #  66    0xb763a  1      OPC=nop             
  nop                                                              #  67    0xb763b  1      OPC=nop             
  nop                                                              #  68    0xb763c  1      OPC=nop             
  nop                                                              #  69    0xb763d  1      OPC=nop             
  nop                                                              #  70    0xb763e  1      OPC=nop             
  nop                                                              #  71    0xb763f  1      OPC=nop             
  nop                                                              #  72    0xb7640  1      OPC=nop             
  nop                                                              #  73    0xb7641  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7642  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7647  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb764b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb764d  1      OPC=nop             
  nop                                                              #  78    0xb764e  1      OPC=nop             
  nop                                                              #  79    0xb764f  1      OPC=nop             
  nop                                                              #  80    0xb7650  1      OPC=nop             
  nop                                                              #  81    0xb7651  1      OPC=nop             
  nop                                                              #  82    0xb7652  1      OPC=nop             
  nop                                                              #  83    0xb7653  1      OPC=nop             
  nop                                                              #  84    0xb7654  1      OPC=nop             
  nop                                                              #  85    0xb7655  1      OPC=nop             
  nop                                                              #  86    0xb7656  1      OPC=nop             
  nop                                                              #  87    0xb7657  1      OPC=nop             
  nop                                                              #  88    0xb7658  1      OPC=nop             
  nop                                                              #  89    0xb7659  1      OPC=nop             
  nop                                                              #  90    0xb765a  1      OPC=nop             
  nop                                                              #  91    0xb765b  1      OPC=nop             
  nop                                                              #  92    0xb765c  1      OPC=nop             
  nop                                                              #  93    0xb765d  1      OPC=nop             
  nop                                                              #  94    0xb765e  1      OPC=nop             
  nop                                                              #  95    0xb765f  1      OPC=nop             
  nop                                                              #  96    0xb7660  1      OPC=nop             
  nop                                                              #  97    0xb7661  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7662  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC1Ej, .-_ZNSt10moneypunctIwLb0EEC1Ej

