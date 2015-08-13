  .text
  .globl _ZNKSt10moneypunctIcLb1EE16do_negative_signEv
  .type _ZNKSt10moneypunctIcLb1EE16do_negative_signEv, @function

#! file-offset 0xbdf60
#! rip-offset  0x7df60
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE16do_negative_signEv:  #        0x7df60  0      OPC=<label>         
  pushq %rbx                                     #  1     0x7df60  1      OPC=pushq_r64_1     
  movl %esi, %esi                                #  2     0x7df61  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                #  3     0x7df63  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                #  4     0x7df65  2      OPC=movl_r32_r32    
  subl $0x10, %esp                               #  5     0x7df67  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  6     0x7df6a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                #  7     0x7df6d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                    #  8     0x7df6f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                           #  9     0x7df74  4      OPC=leal_r32_m16    
  movl %eax, %eax                                #  10    0x7df78  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %esi                   #  11    0x7df7a  5      OPC=movl_r32_m32    
  nop                                            #  12    0x7df7f  1      OPC=nop             
  nop                                            #  13    0x7df80  1      OPC=nop             
  nop                                            #  14    0x7df81  1      OPC=nop             
  nop                                            #  15    0x7df82  1      OPC=nop             
  nop                                            #  16    0x7df83  1      OPC=nop             
  nop                                            #  17    0x7df84  1      OPC=nop             
  nop                                            #  18    0x7df85  1      OPC=nop             
  nop                                            #  19    0x7df86  1      OPC=nop             
  nop                                            #  20    0x7df87  1      OPC=nop             
  nop                                            #  21    0x7df88  1      OPC=nop             
  nop                                            #  22    0x7df89  1      OPC=nop             
  nop                                            #  23    0x7df8a  1      OPC=nop             
  nop                                            #  24    0x7df8b  1      OPC=nop             
  nop                                            #  25    0x7df8c  1      OPC=nop             
  nop                                            #  26    0x7df8d  1      OPC=nop             
  nop                                            #  27    0x7df8e  1      OPC=nop             
  nop                                            #  28    0x7df8f  1      OPC=nop             
  nop                                            #  29    0x7df90  1      OPC=nop             
  nop                                            #  30    0x7df91  1      OPC=nop             
  nop                                            #  31    0x7df92  1      OPC=nop             
  nop                                            #  32    0x7df93  1      OPC=nop             
  nop                                            #  33    0x7df94  1      OPC=nop             
  nop                                            #  34    0x7df95  1      OPC=nop             
  nop                                            #  35    0x7df96  1      OPC=nop             
  nop                                            #  36    0x7df97  1      OPC=nop             
  nop                                            #  37    0x7df98  1      OPC=nop             
  nop                                            #  38    0x7df99  1      OPC=nop             
  nop                                            #  39    0x7df9a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                      #  40    0x7df9b  5      OPC=callq_label     
  movl %ebx, %eax                                #  41    0x7dfa0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                               #  42    0x7dfa2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  43    0x7dfa5  3      OPC=addq_r64_r64    
  popq %rbx                                      #  44    0x7dfa8  1      OPC=popq_r64_1      
  popq %r11                                      #  45    0x7dfa9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  46    0x7dfab  7      OPC=andl_r32_imm32  
  nop                                            #  47    0x7dfb2  1      OPC=nop             
  nop                                            #  48    0x7dfb3  1      OPC=nop             
  nop                                            #  49    0x7dfb4  1      OPC=nop             
  nop                                            #  50    0x7dfb5  1      OPC=nop             
  addq %r15, %r11                                #  51    0x7dfb6  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  52    0x7dfb9  3      OPC=jmpq_r64        
  nop                                            #  53    0x7dfbc  1      OPC=nop             
  nop                                            #  54    0x7dfbd  1      OPC=nop             
  nop                                            #  55    0x7dfbe  1      OPC=nop             
  nop                                            #  56    0x7dfbf  1      OPC=nop             
  nop                                            #  57    0x7dfc0  1      OPC=nop             
  nop                                            #  58    0x7dfc1  1      OPC=nop             
  nop                                            #  59    0x7dfc2  1      OPC=nop             
  nop                                            #  60    0x7dfc3  1      OPC=nop             
  nop                                            #  61    0x7dfc4  1      OPC=nop             
  nop                                            #  62    0x7dfc5  1      OPC=nop             
  nop                                            #  63    0x7dfc6  1      OPC=nop             
  movl %eax, %edi                                #  64    0x7dfc7  2      OPC=movl_r32_r32    
  nop                                            #  65    0x7dfc9  1      OPC=nop             
  nop                                            #  66    0x7dfca  1      OPC=nop             
  nop                                            #  67    0x7dfcb  1      OPC=nop             
  nop                                            #  68    0x7dfcc  1      OPC=nop             
  nop                                            #  69    0x7dfcd  1      OPC=nop             
  nop                                            #  70    0x7dfce  1      OPC=nop             
  nop                                            #  71    0x7dfcf  1      OPC=nop             
  nop                                            #  72    0x7dfd0  1      OPC=nop             
  nop                                            #  73    0x7dfd1  1      OPC=nop             
  nop                                            #  74    0x7dfd2  1      OPC=nop             
  nop                                            #  75    0x7dfd3  1      OPC=nop             
  nop                                            #  76    0x7dfd4  1      OPC=nop             
  nop                                            #  77    0x7dfd5  1      OPC=nop             
  nop                                            #  78    0x7dfd6  1      OPC=nop             
  nop                                            #  79    0x7dfd7  1      OPC=nop             
  nop                                            #  80    0x7dfd8  1      OPC=nop             
  nop                                            #  81    0x7dfd9  1      OPC=nop             
  nop                                            #  82    0x7dfda  1      OPC=nop             
  nop                                            #  83    0x7dfdb  1      OPC=nop             
  nop                                            #  84    0x7dfdc  1      OPC=nop             
  nop                                            #  85    0x7dfdd  1      OPC=nop             
  nop                                            #  86    0x7dfde  1      OPC=nop             
  nop                                            #  87    0x7dfdf  1      OPC=nop             
  nop                                            #  88    0x7dfe0  1      OPC=nop             
  nop                                            #  89    0x7dfe1  1      OPC=nop             
  callq ._Unwind_Resume                          #  90    0x7dfe2  5      OPC=callq_label     
                                                                                              
.size _ZNKSt10moneypunctIcLb1EE16do_negative_signEv, .-_ZNKSt10moneypunctIcLb1EE16do_negative_signEv

