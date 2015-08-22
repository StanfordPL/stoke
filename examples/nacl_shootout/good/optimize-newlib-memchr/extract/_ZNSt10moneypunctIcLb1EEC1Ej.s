  .text
  .globl _ZNSt10moneypunctIcLb1EEC1Ej
  .type _ZNSt10moneypunctIcLb1EEC1Ej, @function

#! file-offset 0xbf080
#! rip-offset  0x7f080
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC1Ej:                                     #        0x7f080  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7f080  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7f081  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7f083  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7f085  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7f087  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7f08a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7f08d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7f08f  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  9     0x7f091  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7f099  3      OPC=setne_r8        
  nop                                                              #  11    0x7f09c  1      OPC=nop             
  nop                                                              #  12    0x7f09d  1      OPC=nop             
  nop                                                              #  13    0x7f09e  1      OPC=nop             
  nop                                                              #  14    0x7f09f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7f0a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7f0a2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7f0ab  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7f0ad  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7f0af  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7f0b4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7f0b6  1      OPC=nop             
  nop                                                              #  22    0x7f0b7  1      OPC=nop             
  nop                                                              #  23    0x7f0b8  1      OPC=nop             
  nop                                                              #  24    0x7f0b9  1      OPC=nop             
  nop                                                              #  25    0x7f0ba  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7f0bb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7f0c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7f0c3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7f0c6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7f0c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7f0c9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7f0d0  1      OPC=nop             
  nop                                                              #  33    0x7f0d1  1      OPC=nop             
  nop                                                              #  34    0x7f0d2  1      OPC=nop             
  nop                                                              #  35    0x7f0d3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7f0d4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7f0d7  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7f0da  1      OPC=nop             
  nop                                                              #  39    0x7f0db  1      OPC=nop             
  nop                                                              #  40    0x7f0dc  1      OPC=nop             
  nop                                                              #  41    0x7f0dd  1      OPC=nop             
  nop                                                              #  42    0x7f0de  1      OPC=nop             
  nop                                                              #  43    0x7f0df  1      OPC=nop             
  nop                                                              #  44    0x7f0e0  1      OPC=nop             
  nop                                                              #  45    0x7f0e1  1      OPC=nop             
  nop                                                              #  46    0x7f0e2  1      OPC=nop             
  nop                                                              #  47    0x7f0e3  1      OPC=nop             
  nop                                                              #  48    0x7f0e4  1      OPC=nop             
  nop                                                              #  49    0x7f0e5  1      OPC=nop             
  nop                                                              #  50    0x7f0e6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7f0e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7f0e9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7f0ed  1      OPC=nop             
  nop                                                              #  54    0x7f0ee  1      OPC=nop             
  nop                                                              #  55    0x7f0ef  1      OPC=nop             
  nop                                                              #  56    0x7f0f0  1      OPC=nop             
  nop                                                              #  57    0x7f0f1  1      OPC=nop             
  nop                                                              #  58    0x7f0f2  1      OPC=nop             
  nop                                                              #  59    0x7f0f3  1      OPC=nop             
  nop                                                              #  60    0x7f0f4  1      OPC=nop             
  nop                                                              #  61    0x7f0f5  1      OPC=nop             
  nop                                                              #  62    0x7f0f6  1      OPC=nop             
  nop                                                              #  63    0x7f0f7  1      OPC=nop             
  nop                                                              #  64    0x7f0f8  1      OPC=nop             
  nop                                                              #  65    0x7f0f9  1      OPC=nop             
  nop                                                              #  66    0x7f0fa  1      OPC=nop             
  nop                                                              #  67    0x7f0fb  1      OPC=nop             
  nop                                                              #  68    0x7f0fc  1      OPC=nop             
  nop                                                              #  69    0x7f0fd  1      OPC=nop             
  nop                                                              #  70    0x7f0fe  1      OPC=nop             
  nop                                                              #  71    0x7f0ff  1      OPC=nop             
  nop                                                              #  72    0x7f100  1      OPC=nop             
  nop                                                              #  73    0x7f101  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7f102  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7f107  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7f10b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7f10d  1      OPC=nop             
  nop                                                              #  78    0x7f10e  1      OPC=nop             
  nop                                                              #  79    0x7f10f  1      OPC=nop             
  nop                                                              #  80    0x7f110  1      OPC=nop             
  nop                                                              #  81    0x7f111  1      OPC=nop             
  nop                                                              #  82    0x7f112  1      OPC=nop             
  nop                                                              #  83    0x7f113  1      OPC=nop             
  nop                                                              #  84    0x7f114  1      OPC=nop             
  nop                                                              #  85    0x7f115  1      OPC=nop             
  nop                                                              #  86    0x7f116  1      OPC=nop             
  nop                                                              #  87    0x7f117  1      OPC=nop             
  nop                                                              #  88    0x7f118  1      OPC=nop             
  nop                                                              #  89    0x7f119  1      OPC=nop             
  nop                                                              #  90    0x7f11a  1      OPC=nop             
  nop                                                              #  91    0x7f11b  1      OPC=nop             
  nop                                                              #  92    0x7f11c  1      OPC=nop             
  nop                                                              #  93    0x7f11d  1      OPC=nop             
  nop                                                              #  94    0x7f11e  1      OPC=nop             
  nop                                                              #  95    0x7f11f  1      OPC=nop             
  nop                                                              #  96    0x7f120  1      OPC=nop             
  nop                                                              #  97    0x7f121  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7f122  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC1Ej, .-_ZNSt10moneypunctIcLb1EEC1Ej

