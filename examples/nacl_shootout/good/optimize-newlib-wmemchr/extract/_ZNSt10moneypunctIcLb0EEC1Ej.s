  .text
  .globl _ZNSt10moneypunctIcLb0EEC1Ej
  .type _ZNSt10moneypunctIcLb0EEC1Ej, @function

#! file-offset 0xbeda0
#! rip-offset  0x7eda0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC1Ej:                                     #        0x7eda0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7eda0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7eda1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7eda3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7eda5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7eda7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7edaa  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7edad  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7edaf  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  9     0x7edb1  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7edb9  3      OPC=setne_r8        
  nop                                                              #  11    0x7edbc  1      OPC=nop             
  nop                                                              #  12    0x7edbd  1      OPC=nop             
  nop                                                              #  13    0x7edbe  1      OPC=nop             
  nop                                                              #  14    0x7edbf  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7edc0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7edc2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7edcb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7edcd  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7edcf  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7edd4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7edd6  1      OPC=nop             
  nop                                                              #  22    0x7edd7  1      OPC=nop             
  nop                                                              #  23    0x7edd8  1      OPC=nop             
  nop                                                              #  24    0x7edd9  1      OPC=nop             
  nop                                                              #  25    0x7edda  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7eddb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7ede0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7ede3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7ede6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7ede7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7ede9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7edf0  1      OPC=nop             
  nop                                                              #  33    0x7edf1  1      OPC=nop             
  nop                                                              #  34    0x7edf2  1      OPC=nop             
  nop                                                              #  35    0x7edf3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7edf4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7edf7  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7edfa  1      OPC=nop             
  nop                                                              #  39    0x7edfb  1      OPC=nop             
  nop                                                              #  40    0x7edfc  1      OPC=nop             
  nop                                                              #  41    0x7edfd  1      OPC=nop             
  nop                                                              #  42    0x7edfe  1      OPC=nop             
  nop                                                              #  43    0x7edff  1      OPC=nop             
  nop                                                              #  44    0x7ee00  1      OPC=nop             
  nop                                                              #  45    0x7ee01  1      OPC=nop             
  nop                                                              #  46    0x7ee02  1      OPC=nop             
  nop                                                              #  47    0x7ee03  1      OPC=nop             
  nop                                                              #  48    0x7ee04  1      OPC=nop             
  nop                                                              #  49    0x7ee05  1      OPC=nop             
  nop                                                              #  50    0x7ee06  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7ee07  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7ee09  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7ee0d  1      OPC=nop             
  nop                                                              #  54    0x7ee0e  1      OPC=nop             
  nop                                                              #  55    0x7ee0f  1      OPC=nop             
  nop                                                              #  56    0x7ee10  1      OPC=nop             
  nop                                                              #  57    0x7ee11  1      OPC=nop             
  nop                                                              #  58    0x7ee12  1      OPC=nop             
  nop                                                              #  59    0x7ee13  1      OPC=nop             
  nop                                                              #  60    0x7ee14  1      OPC=nop             
  nop                                                              #  61    0x7ee15  1      OPC=nop             
  nop                                                              #  62    0x7ee16  1      OPC=nop             
  nop                                                              #  63    0x7ee17  1      OPC=nop             
  nop                                                              #  64    0x7ee18  1      OPC=nop             
  nop                                                              #  65    0x7ee19  1      OPC=nop             
  nop                                                              #  66    0x7ee1a  1      OPC=nop             
  nop                                                              #  67    0x7ee1b  1      OPC=nop             
  nop                                                              #  68    0x7ee1c  1      OPC=nop             
  nop                                                              #  69    0x7ee1d  1      OPC=nop             
  nop                                                              #  70    0x7ee1e  1      OPC=nop             
  nop                                                              #  71    0x7ee1f  1      OPC=nop             
  nop                                                              #  72    0x7ee20  1      OPC=nop             
  nop                                                              #  73    0x7ee21  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7ee22  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7ee27  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7ee2b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7ee2d  1      OPC=nop             
  nop                                                              #  78    0x7ee2e  1      OPC=nop             
  nop                                                              #  79    0x7ee2f  1      OPC=nop             
  nop                                                              #  80    0x7ee30  1      OPC=nop             
  nop                                                              #  81    0x7ee31  1      OPC=nop             
  nop                                                              #  82    0x7ee32  1      OPC=nop             
  nop                                                              #  83    0x7ee33  1      OPC=nop             
  nop                                                              #  84    0x7ee34  1      OPC=nop             
  nop                                                              #  85    0x7ee35  1      OPC=nop             
  nop                                                              #  86    0x7ee36  1      OPC=nop             
  nop                                                              #  87    0x7ee37  1      OPC=nop             
  nop                                                              #  88    0x7ee38  1      OPC=nop             
  nop                                                              #  89    0x7ee39  1      OPC=nop             
  nop                                                              #  90    0x7ee3a  1      OPC=nop             
  nop                                                              #  91    0x7ee3b  1      OPC=nop             
  nop                                                              #  92    0x7ee3c  1      OPC=nop             
  nop                                                              #  93    0x7ee3d  1      OPC=nop             
  nop                                                              #  94    0x7ee3e  1      OPC=nop             
  nop                                                              #  95    0x7ee3f  1      OPC=nop             
  nop                                                              #  96    0x7ee40  1      OPC=nop             
  nop                                                              #  97    0x7ee41  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7ee42  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC1Ej, .-_ZNSt10moneypunctIcLb0EEC1Ej

