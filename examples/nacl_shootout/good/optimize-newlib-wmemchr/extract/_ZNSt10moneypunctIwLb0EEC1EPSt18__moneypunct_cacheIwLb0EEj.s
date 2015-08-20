  .text
  .globl _ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj
  .type _ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj, @function

#! file-offset 0xf7780
#! rip-offset  0xb7780
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj:       #        0xb7780  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7780  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7781  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7783  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7785  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7787  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb778a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0xb778d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb778f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0xb7791  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0xb7796  3      OPC=setne_r8        
  nop                                                              #  11    0xb7799  1      OPC=nop             
  nop                                                              #  12    0xb779a  1      OPC=nop             
  nop                                                              #  13    0xb779b  1      OPC=nop             
  nop                                                              #  14    0xb779c  1      OPC=nop             
  nop                                                              #  15    0xb779d  1      OPC=nop             
  nop                                                              #  16    0xb779e  1      OPC=nop             
  nop                                                              #  17    0xb779f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0xb77a0  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  19    0xb77a2  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0xb77aa  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0xb77ac  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0xb77ae  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0xb77b3  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0xb77b5  1      OPC=nop             
  nop                                                              #  25    0xb77b6  1      OPC=nop             
  nop                                                              #  26    0xb77b7  1      OPC=nop             
  nop                                                              #  27    0xb77b8  1      OPC=nop             
  nop                                                              #  28    0xb77b9  1      OPC=nop             
  nop                                                              #  29    0xb77ba  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  30    0xb77bb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0xb77c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0xb77c3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0xb77c6  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0xb77c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0xb77c9  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0xb77d0  1      OPC=nop             
  nop                                                              #  37    0xb77d1  1      OPC=nop             
  nop                                                              #  38    0xb77d2  1      OPC=nop             
  nop                                                              #  39    0xb77d3  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0xb77d4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0xb77d7  3      OPC=jmpq_r64        
  nop                                                              #  42    0xb77da  1      OPC=nop             
  nop                                                              #  43    0xb77db  1      OPC=nop             
  nop                                                              #  44    0xb77dc  1      OPC=nop             
  nop                                                              #  45    0xb77dd  1      OPC=nop             
  nop                                                              #  46    0xb77de  1      OPC=nop             
  nop                                                              #  47    0xb77df  1      OPC=nop             
  nop                                                              #  48    0xb77e0  1      OPC=nop             
  nop                                                              #  49    0xb77e1  1      OPC=nop             
  nop                                                              #  50    0xb77e2  1      OPC=nop             
  nop                                                              #  51    0xb77e3  1      OPC=nop             
  nop                                                              #  52    0xb77e4  1      OPC=nop             
  nop                                                              #  53    0xb77e5  1      OPC=nop             
  nop                                                              #  54    0xb77e6  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0xb77e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0xb77e9  4      OPC=movl_m32_r32    
  nop                                                              #  57    0xb77ed  1      OPC=nop             
  nop                                                              #  58    0xb77ee  1      OPC=nop             
  nop                                                              #  59    0xb77ef  1      OPC=nop             
  nop                                                              #  60    0xb77f0  1      OPC=nop             
  nop                                                              #  61    0xb77f1  1      OPC=nop             
  nop                                                              #  62    0xb77f2  1      OPC=nop             
  nop                                                              #  63    0xb77f3  1      OPC=nop             
  nop                                                              #  64    0xb77f4  1      OPC=nop             
  nop                                                              #  65    0xb77f5  1      OPC=nop             
  nop                                                              #  66    0xb77f6  1      OPC=nop             
  nop                                                              #  67    0xb77f7  1      OPC=nop             
  nop                                                              #  68    0xb77f8  1      OPC=nop             
  nop                                                              #  69    0xb77f9  1      OPC=nop             
  nop                                                              #  70    0xb77fa  1      OPC=nop             
  nop                                                              #  71    0xb77fb  1      OPC=nop             
  nop                                                              #  72    0xb77fc  1      OPC=nop             
  nop                                                              #  73    0xb77fd  1      OPC=nop             
  nop                                                              #  74    0xb77fe  1      OPC=nop             
  nop                                                              #  75    0xb77ff  1      OPC=nop             
  nop                                                              #  76    0xb7800  1      OPC=nop             
  nop                                                              #  77    0xb7801  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0xb7802  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0xb7807  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0xb780b  2      OPC=movl_r32_r32    
  nop                                                              #  81    0xb780d  1      OPC=nop             
  nop                                                              #  82    0xb780e  1      OPC=nop             
  nop                                                              #  83    0xb780f  1      OPC=nop             
  nop                                                              #  84    0xb7810  1      OPC=nop             
  nop                                                              #  85    0xb7811  1      OPC=nop             
  nop                                                              #  86    0xb7812  1      OPC=nop             
  nop                                                              #  87    0xb7813  1      OPC=nop             
  nop                                                              #  88    0xb7814  1      OPC=nop             
  nop                                                              #  89    0xb7815  1      OPC=nop             
  nop                                                              #  90    0xb7816  1      OPC=nop             
  nop                                                              #  91    0xb7817  1      OPC=nop             
  nop                                                              #  92    0xb7818  1      OPC=nop             
  nop                                                              #  93    0xb7819  1      OPC=nop             
  nop                                                              #  94    0xb781a  1      OPC=nop             
  nop                                                              #  95    0xb781b  1      OPC=nop             
  nop                                                              #  96    0xb781c  1      OPC=nop             
  nop                                                              #  97    0xb781d  1      OPC=nop             
  nop                                                              #  98    0xb781e  1      OPC=nop             
  nop                                                              #  99    0xb781f  1      OPC=nop             
  nop                                                              #  100   0xb7820  1      OPC=nop             
  nop                                                              #  101   0xb7821  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0xb7822  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj, .-_ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj

