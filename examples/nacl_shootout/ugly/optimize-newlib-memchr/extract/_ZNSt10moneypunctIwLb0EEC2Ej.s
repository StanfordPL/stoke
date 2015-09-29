  .text
  .globl _ZNSt10moneypunctIwLb0EEC2Ej
  .type _ZNSt10moneypunctIwLb0EEC2Ej, @function

#! file-offset 0xf8080
#! rip-offset  0xb8080
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC2Ej:                                     #        0xb8080  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb8080  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb8081  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb8083  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb8085  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb8087  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb808a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb808d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb808f  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  9     0xb8091  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb8099  3      OPC=setne_r8        
  nop                                                              #  11    0xb809c  1      OPC=nop             
  nop                                                              #  12    0xb809d  1      OPC=nop             
  nop                                                              #  13    0xb809e  1      OPC=nop             
  nop                                                              #  14    0xb809f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb80a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb80a2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb80ab  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb80ad  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb80af  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb80b4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb80b6  1      OPC=nop             
  nop                                                              #  22    0xb80b7  1      OPC=nop             
  nop                                                              #  23    0xb80b8  1      OPC=nop             
  nop                                                              #  24    0xb80b9  1      OPC=nop             
  nop                                                              #  25    0xb80ba  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb80bb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb80c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb80c3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb80c6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb80c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb80c9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb80d0  1      OPC=nop             
  nop                                                              #  33    0xb80d1  1      OPC=nop             
  nop                                                              #  34    0xb80d2  1      OPC=nop             
  nop                                                              #  35    0xb80d3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb80d4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb80d7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb80da  1      OPC=nop             
  nop                                                              #  39    0xb80db  1      OPC=nop             
  nop                                                              #  40    0xb80dc  1      OPC=nop             
  nop                                                              #  41    0xb80dd  1      OPC=nop             
  nop                                                              #  42    0xb80de  1      OPC=nop             
  nop                                                              #  43    0xb80df  1      OPC=nop             
  nop                                                              #  44    0xb80e0  1      OPC=nop             
  nop                                                              #  45    0xb80e1  1      OPC=nop             
  nop                                                              #  46    0xb80e2  1      OPC=nop             
  nop                                                              #  47    0xb80e3  1      OPC=nop             
  nop                                                              #  48    0xb80e4  1      OPC=nop             
  nop                                                              #  49    0xb80e5  1      OPC=nop             
  nop                                                              #  50    0xb80e6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb80e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb80e9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb80ed  1      OPC=nop             
  nop                                                              #  54    0xb80ee  1      OPC=nop             
  nop                                                              #  55    0xb80ef  1      OPC=nop             
  nop                                                              #  56    0xb80f0  1      OPC=nop             
  nop                                                              #  57    0xb80f1  1      OPC=nop             
  nop                                                              #  58    0xb80f2  1      OPC=nop             
  nop                                                              #  59    0xb80f3  1      OPC=nop             
  nop                                                              #  60    0xb80f4  1      OPC=nop             
  nop                                                              #  61    0xb80f5  1      OPC=nop             
  nop                                                              #  62    0xb80f6  1      OPC=nop             
  nop                                                              #  63    0xb80f7  1      OPC=nop             
  nop                                                              #  64    0xb80f8  1      OPC=nop             
  nop                                                              #  65    0xb80f9  1      OPC=nop             
  nop                                                              #  66    0xb80fa  1      OPC=nop             
  nop                                                              #  67    0xb80fb  1      OPC=nop             
  nop                                                              #  68    0xb80fc  1      OPC=nop             
  nop                                                              #  69    0xb80fd  1      OPC=nop             
  nop                                                              #  70    0xb80fe  1      OPC=nop             
  nop                                                              #  71    0xb80ff  1      OPC=nop             
  nop                                                              #  72    0xb8100  1      OPC=nop             
  nop                                                              #  73    0xb8101  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb8102  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb8107  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb810b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb810d  1      OPC=nop             
  nop                                                              #  78    0xb810e  1      OPC=nop             
  nop                                                              #  79    0xb810f  1      OPC=nop             
  nop                                                              #  80    0xb8110  1      OPC=nop             
  nop                                                              #  81    0xb8111  1      OPC=nop             
  nop                                                              #  82    0xb8112  1      OPC=nop             
  nop                                                              #  83    0xb8113  1      OPC=nop             
  nop                                                              #  84    0xb8114  1      OPC=nop             
  nop                                                              #  85    0xb8115  1      OPC=nop             
  nop                                                              #  86    0xb8116  1      OPC=nop             
  nop                                                              #  87    0xb8117  1      OPC=nop             
  nop                                                              #  88    0xb8118  1      OPC=nop             
  nop                                                              #  89    0xb8119  1      OPC=nop             
  nop                                                              #  90    0xb811a  1      OPC=nop             
  nop                                                              #  91    0xb811b  1      OPC=nop             
  nop                                                              #  92    0xb811c  1      OPC=nop             
  nop                                                              #  93    0xb811d  1      OPC=nop             
  nop                                                              #  94    0xb811e  1      OPC=nop             
  nop                                                              #  95    0xb811f  1      OPC=nop             
  nop                                                              #  96    0xb8120  1      OPC=nop             
  nop                                                              #  97    0xb8121  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb8122  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC2Ej, .-_ZNSt10moneypunctIwLb0EEC2Ej

