  .text
  .globl _ZNSt10moneypunctIcLb0EEC1Ej
  .type _ZNSt10moneypunctIcLb0EEC1Ej, @function

#! file-offset 0xbeaa0
#! rip-offset  0x7eaa0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC1Ej:                                     #        0x7eaa0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7eaa0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7eaa1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7eaa3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7eaa5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7eaa7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7eaaa  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7eaad  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7eaaf  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  9     0x7eab1  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7eab9  3      OPC=setne_r8        
  nop                                                              #  11    0x7eabc  1      OPC=nop             
  nop                                                              #  12    0x7eabd  1      OPC=nop             
  nop                                                              #  13    0x7eabe  1      OPC=nop             
  nop                                                              #  14    0x7eabf  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7eac0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7eac2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7eacb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7eacd  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7eacf  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7ead4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7ead6  1      OPC=nop             
  nop                                                              #  22    0x7ead7  1      OPC=nop             
  nop                                                              #  23    0x7ead8  1      OPC=nop             
  nop                                                              #  24    0x7ead9  1      OPC=nop             
  nop                                                              #  25    0x7eada  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7eadb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7eae0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7eae3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7eae6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7eae7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7eae9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7eaf0  1      OPC=nop             
  nop                                                              #  33    0x7eaf1  1      OPC=nop             
  nop                                                              #  34    0x7eaf2  1      OPC=nop             
  nop                                                              #  35    0x7eaf3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7eaf4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7eaf7  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7eafa  1      OPC=nop             
  nop                                                              #  39    0x7eafb  1      OPC=nop             
  nop                                                              #  40    0x7eafc  1      OPC=nop             
  nop                                                              #  41    0x7eafd  1      OPC=nop             
  nop                                                              #  42    0x7eafe  1      OPC=nop             
  nop                                                              #  43    0x7eaff  1      OPC=nop             
  nop                                                              #  44    0x7eb00  1      OPC=nop             
  nop                                                              #  45    0x7eb01  1      OPC=nop             
  nop                                                              #  46    0x7eb02  1      OPC=nop             
  nop                                                              #  47    0x7eb03  1      OPC=nop             
  nop                                                              #  48    0x7eb04  1      OPC=nop             
  nop                                                              #  49    0x7eb05  1      OPC=nop             
  nop                                                              #  50    0x7eb06  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7eb07  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7eb09  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7eb0d  1      OPC=nop             
  nop                                                              #  54    0x7eb0e  1      OPC=nop             
  nop                                                              #  55    0x7eb0f  1      OPC=nop             
  nop                                                              #  56    0x7eb10  1      OPC=nop             
  nop                                                              #  57    0x7eb11  1      OPC=nop             
  nop                                                              #  58    0x7eb12  1      OPC=nop             
  nop                                                              #  59    0x7eb13  1      OPC=nop             
  nop                                                              #  60    0x7eb14  1      OPC=nop             
  nop                                                              #  61    0x7eb15  1      OPC=nop             
  nop                                                              #  62    0x7eb16  1      OPC=nop             
  nop                                                              #  63    0x7eb17  1      OPC=nop             
  nop                                                              #  64    0x7eb18  1      OPC=nop             
  nop                                                              #  65    0x7eb19  1      OPC=nop             
  nop                                                              #  66    0x7eb1a  1      OPC=nop             
  nop                                                              #  67    0x7eb1b  1      OPC=nop             
  nop                                                              #  68    0x7eb1c  1      OPC=nop             
  nop                                                              #  69    0x7eb1d  1      OPC=nop             
  nop                                                              #  70    0x7eb1e  1      OPC=nop             
  nop                                                              #  71    0x7eb1f  1      OPC=nop             
  nop                                                              #  72    0x7eb20  1      OPC=nop             
  nop                                                              #  73    0x7eb21  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7eb22  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7eb27  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7eb2b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7eb2d  1      OPC=nop             
  nop                                                              #  78    0x7eb2e  1      OPC=nop             
  nop                                                              #  79    0x7eb2f  1      OPC=nop             
  nop                                                              #  80    0x7eb30  1      OPC=nop             
  nop                                                              #  81    0x7eb31  1      OPC=nop             
  nop                                                              #  82    0x7eb32  1      OPC=nop             
  nop                                                              #  83    0x7eb33  1      OPC=nop             
  nop                                                              #  84    0x7eb34  1      OPC=nop             
  nop                                                              #  85    0x7eb35  1      OPC=nop             
  nop                                                              #  86    0x7eb36  1      OPC=nop             
  nop                                                              #  87    0x7eb37  1      OPC=nop             
  nop                                                              #  88    0x7eb38  1      OPC=nop             
  nop                                                              #  89    0x7eb39  1      OPC=nop             
  nop                                                              #  90    0x7eb3a  1      OPC=nop             
  nop                                                              #  91    0x7eb3b  1      OPC=nop             
  nop                                                              #  92    0x7eb3c  1      OPC=nop             
  nop                                                              #  93    0x7eb3d  1      OPC=nop             
  nop                                                              #  94    0x7eb3e  1      OPC=nop             
  nop                                                              #  95    0x7eb3f  1      OPC=nop             
  nop                                                              #  96    0x7eb40  1      OPC=nop             
  nop                                                              #  97    0x7eb41  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7eb42  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC1Ej, .-_ZNSt10moneypunctIcLb0EEC1Ej

