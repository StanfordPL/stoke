  .text
  .globl _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv
  .type _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv, @function

#! file-offset 0x11b0e0
#! rip-offset  0xdb0e0
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv:  #        0xdb0e0  0      OPC=<label>         
  subl $0x8, %esp                                #  1     0xdb0e0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  2     0xdb0e3  3      OPC=addq_r64_r64    
  nop                                            #  3     0xdb0e6  1      OPC=nop             
  nop                                            #  4     0xdb0e7  1      OPC=nop             
  nop                                            #  5     0xdb0e8  1      OPC=nop             
  nop                                            #  6     0xdb0e9  1      OPC=nop             
  nop                                            #  7     0xdb0ea  1      OPC=nop             
  nop                                            #  8     0xdb0eb  1      OPC=nop             
  nop                                            #  9     0xdb0ec  1      OPC=nop             
  nop                                            #  10    0xdb0ed  1      OPC=nop             
  nop                                            #  11    0xdb0ee  1      OPC=nop             
  nop                                            #  12    0xdb0ef  1      OPC=nop             
  nop                                            #  13    0xdb0f0  1      OPC=nop             
  nop                                            #  14    0xdb0f1  1      OPC=nop             
  nop                                            #  15    0xdb0f2  1      OPC=nop             
  nop                                            #  16    0xdb0f3  1      OPC=nop             
  nop                                            #  17    0xdb0f4  1      OPC=nop             
  nop                                            #  18    0xdb0f5  1      OPC=nop             
  nop                                            #  19    0xdb0f6  1      OPC=nop             
  nop                                            #  20    0xdb0f7  1      OPC=nop             
  nop                                            #  21    0xdb0f8  1      OPC=nop             
  nop                                            #  22    0xdb0f9  1      OPC=nop             
  nop                                            #  23    0xdb0fa  1      OPC=nop             
  callq .__locale_mb_cur_max                     #  24    0xdb0fb  5      OPC=callq_label     
  cmpl $0x1, %eax                                #  25    0xdb100  3      OPC=cmpl_r32_imm8   
  sete %al                                       #  26    0xdb103  3      OPC=sete_r8         
  addl $0x8, %esp                                #  27    0xdb106  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  28    0xdb109  3      OPC=addq_r64_r64    
  popq %r11                                      #  29    0xdb10c  2      OPC=popq_r64_1      
  movzbl %al, %eax                               #  30    0xdb10e  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d                        #  31    0xdb111  7      OPC=andl_r32_imm32  
  nop                                            #  32    0xdb118  1      OPC=nop             
  nop                                            #  33    0xdb119  1      OPC=nop             
  nop                                            #  34    0xdb11a  1      OPC=nop             
  nop                                            #  35    0xdb11b  1      OPC=nop             
  addq %r15, %r11                                #  36    0xdb11c  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  37    0xdb11f  3      OPC=jmpq_r64        
  nop                                            #  38    0xdb122  1      OPC=nop             
  nop                                            #  39    0xdb123  1      OPC=nop             
  nop                                            #  40    0xdb124  1      OPC=nop             
  nop                                            #  41    0xdb125  1      OPC=nop             
  nop                                            #  42    0xdb126  1      OPC=nop             
  cmpq $0xff, %rdx                               #  43    0xdb127  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                #  44    0xdb12b  2      OPC=movl_r32_r32    
  je .L_db140                                    #  45    0xdb12d  2      OPC=je_label        
  nop                                            #  46    0xdb12f  1      OPC=nop             
  nop                                            #  47    0xdb130  1      OPC=nop             
  nop                                            #  48    0xdb131  1      OPC=nop             
  nop                                            #  49    0xdb132  1      OPC=nop             
  nop                                            #  50    0xdb133  1      OPC=nop             
  nop                                            #  51    0xdb134  1      OPC=nop             
  nop                                            #  52    0xdb135  1      OPC=nop             
  nop                                            #  53    0xdb136  1      OPC=nop             
  nop                                            #  54    0xdb137  1      OPC=nop             
  nop                                            #  55    0xdb138  1      OPC=nop             
  nop                                            #  56    0xdb139  1      OPC=nop             
  nop                                            #  57    0xdb13a  1      OPC=nop             
  nop                                            #  58    0xdb13b  1      OPC=nop             
  nop                                            #  59    0xdb13c  1      OPC=nop             
  nop                                            #  60    0xdb13d  1      OPC=nop             
  nop                                            #  61    0xdb13e  1      OPC=nop             
  nop                                            #  62    0xdb13f  1      OPC=nop             
  nop                                            #  63    0xdb140  1      OPC=nop             
  nop                                            #  64    0xdb141  1      OPC=nop             
  callq ._Unwind_Resume                          #  65    0xdb142  5      OPC=callq_label     
.L_db140:                                        #        0xdb147  0      OPC=<label>         
  nop                                            #  66    0xdb147  1      OPC=nop             
  nop                                            #  67    0xdb148  1      OPC=nop             
  nop                                            #  68    0xdb149  1      OPC=nop             
  nop                                            #  69    0xdb14a  1      OPC=nop             
  nop                                            #  70    0xdb14b  1      OPC=nop             
  nop                                            #  71    0xdb14c  1      OPC=nop             
  nop                                            #  72    0xdb14d  1      OPC=nop             
  nop                                            #  73    0xdb14e  1      OPC=nop             
  nop                                            #  74    0xdb14f  1      OPC=nop             
  nop                                            #  75    0xdb150  1      OPC=nop             
  nop                                            #  76    0xdb151  1      OPC=nop             
  nop                                            #  77    0xdb152  1      OPC=nop             
  nop                                            #  78    0xdb153  1      OPC=nop             
  nop                                            #  79    0xdb154  1      OPC=nop             
  nop                                            #  80    0xdb155  1      OPC=nop             
  nop                                            #  81    0xdb156  1      OPC=nop             
  nop                                            #  82    0xdb157  1      OPC=nop             
  nop                                            #  83    0xdb158  1      OPC=nop             
  nop                                            #  84    0xdb159  1      OPC=nop             
  nop                                            #  85    0xdb15a  1      OPC=nop             
  nop                                            #  86    0xdb15b  1      OPC=nop             
  nop                                            #  87    0xdb15c  1      OPC=nop             
  nop                                            #  88    0xdb15d  1      OPC=nop             
  nop                                            #  89    0xdb15e  1      OPC=nop             
  nop                                            #  90    0xdb15f  1      OPC=nop             
  nop                                            #  91    0xdb160  1      OPC=nop             
  nop                                            #  92    0xdb161  1      OPC=nop             
  callq .__cxa_call_unexpected                   #  93    0xdb162  5      OPC=callq_label     
                                                                                              
.size _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv, .-_ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv

