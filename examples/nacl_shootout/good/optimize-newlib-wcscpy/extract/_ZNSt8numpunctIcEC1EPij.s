  .text
  .globl _ZNSt8numpunctIcEC1EPij
  .type _ZNSt8numpunctIcEC1EPij, @function

#! file-offset 0xbda20
#! rip-offset  0x7da20
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC1EPij:                              #        0x7da20  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7da20  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7da21  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7da23  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0x7da25  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0x7da27  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0x7da29  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0x7da2c  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0x7da2f  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0x7da31  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  10    0x7da33  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0x7da3b  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0x7da3e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0x7da40  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0x7da42  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0x7da4b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0x7da4d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0x7da52  1      OPC=nop             
  nop                                                  #  18    0x7da53  1      OPC=nop             
  nop                                                  #  19    0x7da54  1      OPC=nop             
  nop                                                  #  20    0x7da55  1      OPC=nop             
  nop                                                  #  21    0x7da56  1      OPC=nop             
  nop                                                  #  22    0x7da57  1      OPC=nop             
  nop                                                  #  23    0x7da58  1      OPC=nop             
  nop                                                  #  24    0x7da59  1      OPC=nop             
  nop                                                  #  25    0x7da5a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  26    0x7da5b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0x7da60  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0x7da63  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0x7da66  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0x7da67  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0x7da69  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0x7da70  1      OPC=nop             
  nop                                                  #  33    0x7da71  1      OPC=nop             
  nop                                                  #  34    0x7da72  1      OPC=nop             
  nop                                                  #  35    0x7da73  1      OPC=nop             
  addq %r15, %r11                                      #  36    0x7da74  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0x7da77  3      OPC=jmpq_r64        
  nop                                                  #  38    0x7da7a  1      OPC=nop             
  nop                                                  #  39    0x7da7b  1      OPC=nop             
  nop                                                  #  40    0x7da7c  1      OPC=nop             
  nop                                                  #  41    0x7da7d  1      OPC=nop             
  nop                                                  #  42    0x7da7e  1      OPC=nop             
  nop                                                  #  43    0x7da7f  1      OPC=nop             
  nop                                                  #  44    0x7da80  1      OPC=nop             
  nop                                                  #  45    0x7da81  1      OPC=nop             
  nop                                                  #  46    0x7da82  1      OPC=nop             
  nop                                                  #  47    0x7da83  1      OPC=nop             
  nop                                                  #  48    0x7da84  1      OPC=nop             
  nop                                                  #  49    0x7da85  1      OPC=nop             
  nop                                                  #  50    0x7da86  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0x7da87  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0x7da89  4      OPC=movl_m32_r32    
  nop                                                  #  53    0x7da8d  1      OPC=nop             
  nop                                                  #  54    0x7da8e  1      OPC=nop             
  nop                                                  #  55    0x7da8f  1      OPC=nop             
  nop                                                  #  56    0x7da90  1      OPC=nop             
  nop                                                  #  57    0x7da91  1      OPC=nop             
  nop                                                  #  58    0x7da92  1      OPC=nop             
  nop                                                  #  59    0x7da93  1      OPC=nop             
  nop                                                  #  60    0x7da94  1      OPC=nop             
  nop                                                  #  61    0x7da95  1      OPC=nop             
  nop                                                  #  62    0x7da96  1      OPC=nop             
  nop                                                  #  63    0x7da97  1      OPC=nop             
  nop                                                  #  64    0x7da98  1      OPC=nop             
  nop                                                  #  65    0x7da99  1      OPC=nop             
  nop                                                  #  66    0x7da9a  1      OPC=nop             
  nop                                                  #  67    0x7da9b  1      OPC=nop             
  nop                                                  #  68    0x7da9c  1      OPC=nop             
  nop                                                  #  69    0x7da9d  1      OPC=nop             
  nop                                                  #  70    0x7da9e  1      OPC=nop             
  nop                                                  #  71    0x7da9f  1      OPC=nop             
  nop                                                  #  72    0x7daa0  1      OPC=nop             
  nop                                                  #  73    0x7daa1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0x7daa2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0x7daa7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0x7daab  2      OPC=movl_r32_r32    
  nop                                                  #  77    0x7daad  1      OPC=nop             
  nop                                                  #  78    0x7daae  1      OPC=nop             
  nop                                                  #  79    0x7daaf  1      OPC=nop             
  nop                                                  #  80    0x7dab0  1      OPC=nop             
  nop                                                  #  81    0x7dab1  1      OPC=nop             
  nop                                                  #  82    0x7dab2  1      OPC=nop             
  nop                                                  #  83    0x7dab3  1      OPC=nop             
  nop                                                  #  84    0x7dab4  1      OPC=nop             
  nop                                                  #  85    0x7dab5  1      OPC=nop             
  nop                                                  #  86    0x7dab6  1      OPC=nop             
  nop                                                  #  87    0x7dab7  1      OPC=nop             
  nop                                                  #  88    0x7dab8  1      OPC=nop             
  nop                                                  #  89    0x7dab9  1      OPC=nop             
  nop                                                  #  90    0x7daba  1      OPC=nop             
  nop                                                  #  91    0x7dabb  1      OPC=nop             
  nop                                                  #  92    0x7dabc  1      OPC=nop             
  nop                                                  #  93    0x7dabd  1      OPC=nop             
  nop                                                  #  94    0x7dabe  1      OPC=nop             
  nop                                                  #  95    0x7dabf  1      OPC=nop             
  nop                                                  #  96    0x7dac0  1      OPC=nop             
  nop                                                  #  97    0x7dac1  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0x7dac2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC1EPij, .-_ZNSt8numpunctIcEC1EPij

