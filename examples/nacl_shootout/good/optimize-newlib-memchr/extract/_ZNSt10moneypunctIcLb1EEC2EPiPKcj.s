  .text
  .globl _ZNSt10moneypunctIcLb1EEC2EPiPKcj
  .type _ZNSt10moneypunctIcLb1EEC2EPiPKcj, @function

#! file-offset 0xbeea0
#! rip-offset  0x7eea0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC2EPiPKcj:                                #        0x7eea0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7eea0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7eea1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7eea3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7eea5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7eea7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7eea9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7eeab  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7eeae  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7eeb1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7eeb3  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  11    0x7eeb5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7eebd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7eec0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7eec2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7eecb  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7eecd  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7eed2  1      OPC=nop             
  nop                                                              #  18    0x7eed3  1      OPC=nop             
  nop                                                              #  19    0x7eed4  1      OPC=nop             
  nop                                                              #  20    0x7eed5  1      OPC=nop             
  nop                                                              #  21    0x7eed6  1      OPC=nop             
  nop                                                              #  22    0x7eed7  1      OPC=nop             
  nop                                                              #  23    0x7eed8  1      OPC=nop             
  nop                                                              #  24    0x7eed9  1      OPC=nop             
  nop                                                              #  25    0x7eeda  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7eedb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7eee0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7eee3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7eee6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7eee7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7eee9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7eef0  1      OPC=nop             
  nop                                                              #  33    0x7eef1  1      OPC=nop             
  nop                                                              #  34    0x7eef2  1      OPC=nop             
  nop                                                              #  35    0x7eef3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7eef4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7eef7  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7eefa  1      OPC=nop             
  nop                                                              #  39    0x7eefb  1      OPC=nop             
  nop                                                              #  40    0x7eefc  1      OPC=nop             
  nop                                                              #  41    0x7eefd  1      OPC=nop             
  nop                                                              #  42    0x7eefe  1      OPC=nop             
  nop                                                              #  43    0x7eeff  1      OPC=nop             
  nop                                                              #  44    0x7ef00  1      OPC=nop             
  nop                                                              #  45    0x7ef01  1      OPC=nop             
  nop                                                              #  46    0x7ef02  1      OPC=nop             
  nop                                                              #  47    0x7ef03  1      OPC=nop             
  nop                                                              #  48    0x7ef04  1      OPC=nop             
  nop                                                              #  49    0x7ef05  1      OPC=nop             
  nop                                                              #  50    0x7ef06  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7ef07  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7ef09  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7ef0d  1      OPC=nop             
  nop                                                              #  54    0x7ef0e  1      OPC=nop             
  nop                                                              #  55    0x7ef0f  1      OPC=nop             
  nop                                                              #  56    0x7ef10  1      OPC=nop             
  nop                                                              #  57    0x7ef11  1      OPC=nop             
  nop                                                              #  58    0x7ef12  1      OPC=nop             
  nop                                                              #  59    0x7ef13  1      OPC=nop             
  nop                                                              #  60    0x7ef14  1      OPC=nop             
  nop                                                              #  61    0x7ef15  1      OPC=nop             
  nop                                                              #  62    0x7ef16  1      OPC=nop             
  nop                                                              #  63    0x7ef17  1      OPC=nop             
  nop                                                              #  64    0x7ef18  1      OPC=nop             
  nop                                                              #  65    0x7ef19  1      OPC=nop             
  nop                                                              #  66    0x7ef1a  1      OPC=nop             
  nop                                                              #  67    0x7ef1b  1      OPC=nop             
  nop                                                              #  68    0x7ef1c  1      OPC=nop             
  nop                                                              #  69    0x7ef1d  1      OPC=nop             
  nop                                                              #  70    0x7ef1e  1      OPC=nop             
  nop                                                              #  71    0x7ef1f  1      OPC=nop             
  nop                                                              #  72    0x7ef20  1      OPC=nop             
  nop                                                              #  73    0x7ef21  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7ef22  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7ef27  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7ef2b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7ef2d  1      OPC=nop             
  nop                                                              #  78    0x7ef2e  1      OPC=nop             
  nop                                                              #  79    0x7ef2f  1      OPC=nop             
  nop                                                              #  80    0x7ef30  1      OPC=nop             
  nop                                                              #  81    0x7ef31  1      OPC=nop             
  nop                                                              #  82    0x7ef32  1      OPC=nop             
  nop                                                              #  83    0x7ef33  1      OPC=nop             
  nop                                                              #  84    0x7ef34  1      OPC=nop             
  nop                                                              #  85    0x7ef35  1      OPC=nop             
  nop                                                              #  86    0x7ef36  1      OPC=nop             
  nop                                                              #  87    0x7ef37  1      OPC=nop             
  nop                                                              #  88    0x7ef38  1      OPC=nop             
  nop                                                              #  89    0x7ef39  1      OPC=nop             
  nop                                                              #  90    0x7ef3a  1      OPC=nop             
  nop                                                              #  91    0x7ef3b  1      OPC=nop             
  nop                                                              #  92    0x7ef3c  1      OPC=nop             
  nop                                                              #  93    0x7ef3d  1      OPC=nop             
  nop                                                              #  94    0x7ef3e  1      OPC=nop             
  nop                                                              #  95    0x7ef3f  1      OPC=nop             
  nop                                                              #  96    0x7ef40  1      OPC=nop             
  nop                                                              #  97    0x7ef41  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7ef42  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC2EPiPKcj, .-_ZNSt10moneypunctIcLb1EEC2EPiPKcj

