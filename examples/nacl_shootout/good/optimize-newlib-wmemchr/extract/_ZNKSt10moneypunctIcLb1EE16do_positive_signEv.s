  .text
  .globl _ZNKSt10moneypunctIcLb1EE16do_positive_signEv
  .type _ZNKSt10moneypunctIcLb1EE16do_positive_signEv, @function

#! file-offset 0xbe2e0
#! rip-offset  0x7e2e0
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE16do_positive_signEv:  #        0x7e2e0  0      OPC=<label>         
  pushq %rbx                                     #  1     0x7e2e0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                #  2     0x7e2e1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                #  3     0x7e2e3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                #  4     0x7e2e5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                               #  5     0x7e2e7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  6     0x7e2ea  3      OPC=addq_r64_r64    
  movl %esi, %esi                                #  7     0x7e2ed  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                    #  8     0x7e2ef  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                           #  9     0x7e2f4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                #  10    0x7e2f8  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi                   #  11    0x7e2fa  5      OPC=movl_r32_m32    
  nop                                            #  12    0x7e2ff  1      OPC=nop             
  nop                                            #  13    0x7e300  1      OPC=nop             
  nop                                            #  14    0x7e301  1      OPC=nop             
  nop                                            #  15    0x7e302  1      OPC=nop             
  nop                                            #  16    0x7e303  1      OPC=nop             
  nop                                            #  17    0x7e304  1      OPC=nop             
  nop                                            #  18    0x7e305  1      OPC=nop             
  nop                                            #  19    0x7e306  1      OPC=nop             
  nop                                            #  20    0x7e307  1      OPC=nop             
  nop                                            #  21    0x7e308  1      OPC=nop             
  nop                                            #  22    0x7e309  1      OPC=nop             
  nop                                            #  23    0x7e30a  1      OPC=nop             
  nop                                            #  24    0x7e30b  1      OPC=nop             
  nop                                            #  25    0x7e30c  1      OPC=nop             
  nop                                            #  26    0x7e30d  1      OPC=nop             
  nop                                            #  27    0x7e30e  1      OPC=nop             
  nop                                            #  28    0x7e30f  1      OPC=nop             
  nop                                            #  29    0x7e310  1      OPC=nop             
  nop                                            #  30    0x7e311  1      OPC=nop             
  nop                                            #  31    0x7e312  1      OPC=nop             
  nop                                            #  32    0x7e313  1      OPC=nop             
  nop                                            #  33    0x7e314  1      OPC=nop             
  nop                                            #  34    0x7e315  1      OPC=nop             
  nop                                            #  35    0x7e316  1      OPC=nop             
  nop                                            #  36    0x7e317  1      OPC=nop             
  nop                                            #  37    0x7e318  1      OPC=nop             
  nop                                            #  38    0x7e319  1      OPC=nop             
  nop                                            #  39    0x7e31a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                      #  40    0x7e31b  5      OPC=callq_label     
  movl %ebx, %eax                                #  41    0x7e320  2      OPC=movl_r32_r32    
  addl $0x10, %esp                               #  42    0x7e322  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  43    0x7e325  3      OPC=addq_r64_r64    
  popq %rbx                                      #  44    0x7e328  1      OPC=popq_r64_1      
  popq %r11                                      #  45    0x7e329  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  46    0x7e32b  7      OPC=andl_r32_imm32  
  nop                                            #  47    0x7e332  1      OPC=nop             
  nop                                            #  48    0x7e333  1      OPC=nop             
  nop                                            #  49    0x7e334  1      OPC=nop             
  nop                                            #  50    0x7e335  1      OPC=nop             
  addq %r15, %r11                                #  51    0x7e336  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  52    0x7e339  3      OPC=jmpq_r64        
  nop                                            #  53    0x7e33c  1      OPC=nop             
  nop                                            #  54    0x7e33d  1      OPC=nop             
  nop                                            #  55    0x7e33e  1      OPC=nop             
  nop                                            #  56    0x7e33f  1      OPC=nop             
  nop                                            #  57    0x7e340  1      OPC=nop             
  nop                                            #  58    0x7e341  1      OPC=nop             
  nop                                            #  59    0x7e342  1      OPC=nop             
  nop                                            #  60    0x7e343  1      OPC=nop             
  nop                                            #  61    0x7e344  1      OPC=nop             
  nop                                            #  62    0x7e345  1      OPC=nop             
  nop                                            #  63    0x7e346  1      OPC=nop             
  movl %eax, %edi                                #  64    0x7e347  2      OPC=movl_r32_r32    
  nop                                            #  65    0x7e349  1      OPC=nop             
  nop                                            #  66    0x7e34a  1      OPC=nop             
  nop                                            #  67    0x7e34b  1      OPC=nop             
  nop                                            #  68    0x7e34c  1      OPC=nop             
  nop                                            #  69    0x7e34d  1      OPC=nop             
  nop                                            #  70    0x7e34e  1      OPC=nop             
  nop                                            #  71    0x7e34f  1      OPC=nop             
  nop                                            #  72    0x7e350  1      OPC=nop             
  nop                                            #  73    0x7e351  1      OPC=nop             
  nop                                            #  74    0x7e352  1      OPC=nop             
  nop                                            #  75    0x7e353  1      OPC=nop             
  nop                                            #  76    0x7e354  1      OPC=nop             
  nop                                            #  77    0x7e355  1      OPC=nop             
  nop                                            #  78    0x7e356  1      OPC=nop             
  nop                                            #  79    0x7e357  1      OPC=nop             
  nop                                            #  80    0x7e358  1      OPC=nop             
  nop                                            #  81    0x7e359  1      OPC=nop             
  nop                                            #  82    0x7e35a  1      OPC=nop             
  nop                                            #  83    0x7e35b  1      OPC=nop             
  nop                                            #  84    0x7e35c  1      OPC=nop             
  nop                                            #  85    0x7e35d  1      OPC=nop             
  nop                                            #  86    0x7e35e  1      OPC=nop             
  nop                                            #  87    0x7e35f  1      OPC=nop             
  nop                                            #  88    0x7e360  1      OPC=nop             
  nop                                            #  89    0x7e361  1      OPC=nop             
  callq ._Unwind_Resume                          #  90    0x7e362  5      OPC=callq_label     
                                                                                              
.size _ZNKSt10moneypunctIcLb1EE16do_positive_signEv, .-_ZNKSt10moneypunctIcLb1EE16do_positive_signEv

