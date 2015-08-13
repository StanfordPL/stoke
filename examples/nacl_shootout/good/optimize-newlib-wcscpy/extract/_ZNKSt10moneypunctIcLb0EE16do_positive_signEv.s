  .text
  .globl _ZNKSt10moneypunctIcLb0EE16do_positive_signEv
  .type _ZNKSt10moneypunctIcLb0EE16do_positive_signEv, @function

#! file-offset 0xbe1e0
#! rip-offset  0x7e1e0
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE16do_positive_signEv:  #        0x7e1e0  0      OPC=<label>         
  pushq %rbx                                     #  1     0x7e1e0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                #  2     0x7e1e1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                #  3     0x7e1e3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                #  4     0x7e1e5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                               #  5     0x7e1e7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  6     0x7e1ea  3      OPC=addq_r64_r64    
  movl %esi, %esi                                #  7     0x7e1ed  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                    #  8     0x7e1ef  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                           #  9     0x7e1f4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                #  10    0x7e1f8  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi                   #  11    0x7e1fa  5      OPC=movl_r32_m32    
  nop                                            #  12    0x7e1ff  1      OPC=nop             
  nop                                            #  13    0x7e200  1      OPC=nop             
  nop                                            #  14    0x7e201  1      OPC=nop             
  nop                                            #  15    0x7e202  1      OPC=nop             
  nop                                            #  16    0x7e203  1      OPC=nop             
  nop                                            #  17    0x7e204  1      OPC=nop             
  nop                                            #  18    0x7e205  1      OPC=nop             
  nop                                            #  19    0x7e206  1      OPC=nop             
  nop                                            #  20    0x7e207  1      OPC=nop             
  nop                                            #  21    0x7e208  1      OPC=nop             
  nop                                            #  22    0x7e209  1      OPC=nop             
  nop                                            #  23    0x7e20a  1      OPC=nop             
  nop                                            #  24    0x7e20b  1      OPC=nop             
  nop                                            #  25    0x7e20c  1      OPC=nop             
  nop                                            #  26    0x7e20d  1      OPC=nop             
  nop                                            #  27    0x7e20e  1      OPC=nop             
  nop                                            #  28    0x7e20f  1      OPC=nop             
  nop                                            #  29    0x7e210  1      OPC=nop             
  nop                                            #  30    0x7e211  1      OPC=nop             
  nop                                            #  31    0x7e212  1      OPC=nop             
  nop                                            #  32    0x7e213  1      OPC=nop             
  nop                                            #  33    0x7e214  1      OPC=nop             
  nop                                            #  34    0x7e215  1      OPC=nop             
  nop                                            #  35    0x7e216  1      OPC=nop             
  nop                                            #  36    0x7e217  1      OPC=nop             
  nop                                            #  37    0x7e218  1      OPC=nop             
  nop                                            #  38    0x7e219  1      OPC=nop             
  nop                                            #  39    0x7e21a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                      #  40    0x7e21b  5      OPC=callq_label     
  movl %ebx, %eax                                #  41    0x7e220  2      OPC=movl_r32_r32    
  addl $0x10, %esp                               #  42    0x7e222  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  43    0x7e225  3      OPC=addq_r64_r64    
  popq %rbx                                      #  44    0x7e228  1      OPC=popq_r64_1      
  popq %r11                                      #  45    0x7e229  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  46    0x7e22b  7      OPC=andl_r32_imm32  
  nop                                            #  47    0x7e232  1      OPC=nop             
  nop                                            #  48    0x7e233  1      OPC=nop             
  nop                                            #  49    0x7e234  1      OPC=nop             
  nop                                            #  50    0x7e235  1      OPC=nop             
  addq %r15, %r11                                #  51    0x7e236  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  52    0x7e239  3      OPC=jmpq_r64        
  nop                                            #  53    0x7e23c  1      OPC=nop             
  nop                                            #  54    0x7e23d  1      OPC=nop             
  nop                                            #  55    0x7e23e  1      OPC=nop             
  nop                                            #  56    0x7e23f  1      OPC=nop             
  nop                                            #  57    0x7e240  1      OPC=nop             
  nop                                            #  58    0x7e241  1      OPC=nop             
  nop                                            #  59    0x7e242  1      OPC=nop             
  nop                                            #  60    0x7e243  1      OPC=nop             
  nop                                            #  61    0x7e244  1      OPC=nop             
  nop                                            #  62    0x7e245  1      OPC=nop             
  nop                                            #  63    0x7e246  1      OPC=nop             
  movl %eax, %edi                                #  64    0x7e247  2      OPC=movl_r32_r32    
  nop                                            #  65    0x7e249  1      OPC=nop             
  nop                                            #  66    0x7e24a  1      OPC=nop             
  nop                                            #  67    0x7e24b  1      OPC=nop             
  nop                                            #  68    0x7e24c  1      OPC=nop             
  nop                                            #  69    0x7e24d  1      OPC=nop             
  nop                                            #  70    0x7e24e  1      OPC=nop             
  nop                                            #  71    0x7e24f  1      OPC=nop             
  nop                                            #  72    0x7e250  1      OPC=nop             
  nop                                            #  73    0x7e251  1      OPC=nop             
  nop                                            #  74    0x7e252  1      OPC=nop             
  nop                                            #  75    0x7e253  1      OPC=nop             
  nop                                            #  76    0x7e254  1      OPC=nop             
  nop                                            #  77    0x7e255  1      OPC=nop             
  nop                                            #  78    0x7e256  1      OPC=nop             
  nop                                            #  79    0x7e257  1      OPC=nop             
  nop                                            #  80    0x7e258  1      OPC=nop             
  nop                                            #  81    0x7e259  1      OPC=nop             
  nop                                            #  82    0x7e25a  1      OPC=nop             
  nop                                            #  83    0x7e25b  1      OPC=nop             
  nop                                            #  84    0x7e25c  1      OPC=nop             
  nop                                            #  85    0x7e25d  1      OPC=nop             
  nop                                            #  86    0x7e25e  1      OPC=nop             
  nop                                            #  87    0x7e25f  1      OPC=nop             
  nop                                            #  88    0x7e260  1      OPC=nop             
  nop                                            #  89    0x7e261  1      OPC=nop             
  callq ._Unwind_Resume                          #  90    0x7e262  5      OPC=callq_label     
                                                                                              
.size _ZNKSt10moneypunctIcLb0EE16do_positive_signEv, .-_ZNKSt10moneypunctIcLb0EE16do_positive_signEv

