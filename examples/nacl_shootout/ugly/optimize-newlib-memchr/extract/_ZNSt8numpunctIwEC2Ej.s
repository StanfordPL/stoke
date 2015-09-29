  .text
  .globl _ZNSt8numpunctIwEC2Ej
  .type _ZNSt8numpunctIwEC2Ej, @function

#! file-offset 0xf7280
#! rip-offset  0xb7280
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2Ej:                                #        0xb7280  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb7280  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb7281  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb7283  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb7285  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb7287  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb728a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0xb728d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb728f  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  9     0xb7291  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0xb7299  3      OPC=setne_r8        
  nop                                                  #  11    0xb729c  1      OPC=nop             
  nop                                                  #  12    0xb729d  1      OPC=nop             
  nop                                                  #  13    0xb729e  1      OPC=nop             
  nop                                                  #  14    0xb729f  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0xb72a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0xb72a2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0xb72ab  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0xb72ad  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0xb72af  5      OPC=movl_m32_r32    
  nop                                                  #  20    0xb72b4  1      OPC=nop             
  nop                                                  #  21    0xb72b5  1      OPC=nop             
  nop                                                  #  22    0xb72b6  1      OPC=nop             
  nop                                                  #  23    0xb72b7  1      OPC=nop             
  nop                                                  #  24    0xb72b8  1      OPC=nop             
  nop                                                  #  25    0xb72b9  1      OPC=nop             
  nop                                                  #  26    0xb72ba  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  27    0xb72bb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0xb72c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0xb72c3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0xb72c6  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0xb72c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0xb72c9  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0xb72d0  1      OPC=nop             
  nop                                                  #  34    0xb72d1  1      OPC=nop             
  nop                                                  #  35    0xb72d2  1      OPC=nop             
  nop                                                  #  36    0xb72d3  1      OPC=nop             
  addq %r15, %r11                                      #  37    0xb72d4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0xb72d7  3      OPC=jmpq_r64        
  nop                                                  #  39    0xb72da  1      OPC=nop             
  nop                                                  #  40    0xb72db  1      OPC=nop             
  nop                                                  #  41    0xb72dc  1      OPC=nop             
  nop                                                  #  42    0xb72dd  1      OPC=nop             
  nop                                                  #  43    0xb72de  1      OPC=nop             
  nop                                                  #  44    0xb72df  1      OPC=nop             
  nop                                                  #  45    0xb72e0  1      OPC=nop             
  nop                                                  #  46    0xb72e1  1      OPC=nop             
  nop                                                  #  47    0xb72e2  1      OPC=nop             
  nop                                                  #  48    0xb72e3  1      OPC=nop             
  nop                                                  #  49    0xb72e4  1      OPC=nop             
  nop                                                  #  50    0xb72e5  1      OPC=nop             
  nop                                                  #  51    0xb72e6  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0xb72e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0xb72e9  4      OPC=movl_m32_r32    
  nop                                                  #  54    0xb72ed  1      OPC=nop             
  nop                                                  #  55    0xb72ee  1      OPC=nop             
  nop                                                  #  56    0xb72ef  1      OPC=nop             
  nop                                                  #  57    0xb72f0  1      OPC=nop             
  nop                                                  #  58    0xb72f1  1      OPC=nop             
  nop                                                  #  59    0xb72f2  1      OPC=nop             
  nop                                                  #  60    0xb72f3  1      OPC=nop             
  nop                                                  #  61    0xb72f4  1      OPC=nop             
  nop                                                  #  62    0xb72f5  1      OPC=nop             
  nop                                                  #  63    0xb72f6  1      OPC=nop             
  nop                                                  #  64    0xb72f7  1      OPC=nop             
  nop                                                  #  65    0xb72f8  1      OPC=nop             
  nop                                                  #  66    0xb72f9  1      OPC=nop             
  nop                                                  #  67    0xb72fa  1      OPC=nop             
  nop                                                  #  68    0xb72fb  1      OPC=nop             
  nop                                                  #  69    0xb72fc  1      OPC=nop             
  nop                                                  #  70    0xb72fd  1      OPC=nop             
  nop                                                  #  71    0xb72fe  1      OPC=nop             
  nop                                                  #  72    0xb72ff  1      OPC=nop             
  nop                                                  #  73    0xb7300  1      OPC=nop             
  nop                                                  #  74    0xb7301  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0xb7302  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0xb7307  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0xb730b  2      OPC=movl_r32_r32    
  nop                                                  #  78    0xb730d  1      OPC=nop             
  nop                                                  #  79    0xb730e  1      OPC=nop             
  nop                                                  #  80    0xb730f  1      OPC=nop             
  nop                                                  #  81    0xb7310  1      OPC=nop             
  nop                                                  #  82    0xb7311  1      OPC=nop             
  nop                                                  #  83    0xb7312  1      OPC=nop             
  nop                                                  #  84    0xb7313  1      OPC=nop             
  nop                                                  #  85    0xb7314  1      OPC=nop             
  nop                                                  #  86    0xb7315  1      OPC=nop             
  nop                                                  #  87    0xb7316  1      OPC=nop             
  nop                                                  #  88    0xb7317  1      OPC=nop             
  nop                                                  #  89    0xb7318  1      OPC=nop             
  nop                                                  #  90    0xb7319  1      OPC=nop             
  nop                                                  #  91    0xb731a  1      OPC=nop             
  nop                                                  #  92    0xb731b  1      OPC=nop             
  nop                                                  #  93    0xb731c  1      OPC=nop             
  nop                                                  #  94    0xb731d  1      OPC=nop             
  nop                                                  #  95    0xb731e  1      OPC=nop             
  nop                                                  #  96    0xb731f  1      OPC=nop             
  nop                                                  #  97    0xb7320  1      OPC=nop             
  nop                                                  #  98    0xb7321  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0xb7322  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2Ej, .-_ZNSt8numpunctIwEC2Ej

