  .text
  .globl _ZNSt8numpunctIcEC1Ej
  .type _ZNSt8numpunctIcEC1Ej, @function

#! file-offset 0xbdfa0
#! rip-offset  0x7dfa0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC1Ej:                                #        0x7dfa0  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7dfa0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7dfa1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7dfa3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7dfa5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7dfa7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7dfaa  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0x7dfad  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7dfaf  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  9     0x7dfb1  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0x7dfb9  3      OPC=setne_r8        
  nop                                                  #  11    0x7dfbc  1      OPC=nop             
  nop                                                  #  12    0x7dfbd  1      OPC=nop             
  nop                                                  #  13    0x7dfbe  1      OPC=nop             
  nop                                                  #  14    0x7dfbf  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0x7dfc0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0x7dfc2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0x7dfcb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0x7dfcd  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0x7dfcf  5      OPC=movl_m32_r32    
  nop                                                  #  20    0x7dfd4  1      OPC=nop             
  nop                                                  #  21    0x7dfd5  1      OPC=nop             
  nop                                                  #  22    0x7dfd6  1      OPC=nop             
  nop                                                  #  23    0x7dfd7  1      OPC=nop             
  nop                                                  #  24    0x7dfd8  1      OPC=nop             
  nop                                                  #  25    0x7dfd9  1      OPC=nop             
  nop                                                  #  26    0x7dfda  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  27    0x7dfdb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0x7dfe0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0x7dfe3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0x7dfe6  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0x7dfe7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0x7dfe9  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0x7dff0  1      OPC=nop             
  nop                                                  #  34    0x7dff1  1      OPC=nop             
  nop                                                  #  35    0x7dff2  1      OPC=nop             
  nop                                                  #  36    0x7dff3  1      OPC=nop             
  addq %r15, %r11                                      #  37    0x7dff4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0x7dff7  3      OPC=jmpq_r64        
  nop                                                  #  39    0x7dffa  1      OPC=nop             
  nop                                                  #  40    0x7dffb  1      OPC=nop             
  nop                                                  #  41    0x7dffc  1      OPC=nop             
  nop                                                  #  42    0x7dffd  1      OPC=nop             
  nop                                                  #  43    0x7dffe  1      OPC=nop             
  nop                                                  #  44    0x7dfff  1      OPC=nop             
  nop                                                  #  45    0x7e000  1      OPC=nop             
  nop                                                  #  46    0x7e001  1      OPC=nop             
  nop                                                  #  47    0x7e002  1      OPC=nop             
  nop                                                  #  48    0x7e003  1      OPC=nop             
  nop                                                  #  49    0x7e004  1      OPC=nop             
  nop                                                  #  50    0x7e005  1      OPC=nop             
  nop                                                  #  51    0x7e006  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0x7e007  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0x7e009  4      OPC=movl_m32_r32    
  nop                                                  #  54    0x7e00d  1      OPC=nop             
  nop                                                  #  55    0x7e00e  1      OPC=nop             
  nop                                                  #  56    0x7e00f  1      OPC=nop             
  nop                                                  #  57    0x7e010  1      OPC=nop             
  nop                                                  #  58    0x7e011  1      OPC=nop             
  nop                                                  #  59    0x7e012  1      OPC=nop             
  nop                                                  #  60    0x7e013  1      OPC=nop             
  nop                                                  #  61    0x7e014  1      OPC=nop             
  nop                                                  #  62    0x7e015  1      OPC=nop             
  nop                                                  #  63    0x7e016  1      OPC=nop             
  nop                                                  #  64    0x7e017  1      OPC=nop             
  nop                                                  #  65    0x7e018  1      OPC=nop             
  nop                                                  #  66    0x7e019  1      OPC=nop             
  nop                                                  #  67    0x7e01a  1      OPC=nop             
  nop                                                  #  68    0x7e01b  1      OPC=nop             
  nop                                                  #  69    0x7e01c  1      OPC=nop             
  nop                                                  #  70    0x7e01d  1      OPC=nop             
  nop                                                  #  71    0x7e01e  1      OPC=nop             
  nop                                                  #  72    0x7e01f  1      OPC=nop             
  nop                                                  #  73    0x7e020  1      OPC=nop             
  nop                                                  #  74    0x7e021  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0x7e022  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0x7e027  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0x7e02b  2      OPC=movl_r32_r32    
  nop                                                  #  78    0x7e02d  1      OPC=nop             
  nop                                                  #  79    0x7e02e  1      OPC=nop             
  nop                                                  #  80    0x7e02f  1      OPC=nop             
  nop                                                  #  81    0x7e030  1      OPC=nop             
  nop                                                  #  82    0x7e031  1      OPC=nop             
  nop                                                  #  83    0x7e032  1      OPC=nop             
  nop                                                  #  84    0x7e033  1      OPC=nop             
  nop                                                  #  85    0x7e034  1      OPC=nop             
  nop                                                  #  86    0x7e035  1      OPC=nop             
  nop                                                  #  87    0x7e036  1      OPC=nop             
  nop                                                  #  88    0x7e037  1      OPC=nop             
  nop                                                  #  89    0x7e038  1      OPC=nop             
  nop                                                  #  90    0x7e039  1      OPC=nop             
  nop                                                  #  91    0x7e03a  1      OPC=nop             
  nop                                                  #  92    0x7e03b  1      OPC=nop             
  nop                                                  #  93    0x7e03c  1      OPC=nop             
  nop                                                  #  94    0x7e03d  1      OPC=nop             
  nop                                                  #  95    0x7e03e  1      OPC=nop             
  nop                                                  #  96    0x7e03f  1      OPC=nop             
  nop                                                  #  97    0x7e040  1      OPC=nop             
  nop                                                  #  98    0x7e041  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0x7e042  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC1Ej, .-_ZNSt8numpunctIcEC1Ej

