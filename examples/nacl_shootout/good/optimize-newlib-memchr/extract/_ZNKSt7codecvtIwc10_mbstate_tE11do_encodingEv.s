  .text
  .globl _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv
  .type _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv, @function

#! file-offset 0x11b800
#! rip-offset  0xdb800
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv:  #        0xdb800  0      OPC=<label>         
  subl $0x8, %esp                                #  1     0xdb800  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  2     0xdb803  3      OPC=addq_r64_r64    
  nop                                            #  3     0xdb806  1      OPC=nop             
  nop                                            #  4     0xdb807  1      OPC=nop             
  nop                                            #  5     0xdb808  1      OPC=nop             
  nop                                            #  6     0xdb809  1      OPC=nop             
  nop                                            #  7     0xdb80a  1      OPC=nop             
  nop                                            #  8     0xdb80b  1      OPC=nop             
  nop                                            #  9     0xdb80c  1      OPC=nop             
  nop                                            #  10    0xdb80d  1      OPC=nop             
  nop                                            #  11    0xdb80e  1      OPC=nop             
  nop                                            #  12    0xdb80f  1      OPC=nop             
  nop                                            #  13    0xdb810  1      OPC=nop             
  nop                                            #  14    0xdb811  1      OPC=nop             
  nop                                            #  15    0xdb812  1      OPC=nop             
  nop                                            #  16    0xdb813  1      OPC=nop             
  nop                                            #  17    0xdb814  1      OPC=nop             
  nop                                            #  18    0xdb815  1      OPC=nop             
  nop                                            #  19    0xdb816  1      OPC=nop             
  nop                                            #  20    0xdb817  1      OPC=nop             
  nop                                            #  21    0xdb818  1      OPC=nop             
  nop                                            #  22    0xdb819  1      OPC=nop             
  nop                                            #  23    0xdb81a  1      OPC=nop             
  callq .__locale_mb_cur_max                     #  24    0xdb81b  5      OPC=callq_label     
  cmpl $0x1, %eax                                #  25    0xdb820  3      OPC=cmpl_r32_imm8   
  sete %al                                       #  26    0xdb823  3      OPC=sete_r8         
  addl $0x8, %esp                                #  27    0xdb826  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  28    0xdb829  3      OPC=addq_r64_r64    
  popq %r11                                      #  29    0xdb82c  2      OPC=popq_r64_1      
  movzbl %al, %eax                               #  30    0xdb82e  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d                        #  31    0xdb831  7      OPC=andl_r32_imm32  
  nop                                            #  32    0xdb838  1      OPC=nop             
  nop                                            #  33    0xdb839  1      OPC=nop             
  nop                                            #  34    0xdb83a  1      OPC=nop             
  nop                                            #  35    0xdb83b  1      OPC=nop             
  addq %r15, %r11                                #  36    0xdb83c  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  37    0xdb83f  3      OPC=jmpq_r64        
  nop                                            #  38    0xdb842  1      OPC=nop             
  nop                                            #  39    0xdb843  1      OPC=nop             
  nop                                            #  40    0xdb844  1      OPC=nop             
  nop                                            #  41    0xdb845  1      OPC=nop             
  nop                                            #  42    0xdb846  1      OPC=nop             
  cmpq $0xff, %rdx                               #  43    0xdb847  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                #  44    0xdb84b  2      OPC=movl_r32_r32    
  je .L_db860                                    #  45    0xdb84d  2      OPC=je_label        
  nop                                            #  46    0xdb84f  1      OPC=nop             
  nop                                            #  47    0xdb850  1      OPC=nop             
  nop                                            #  48    0xdb851  1      OPC=nop             
  nop                                            #  49    0xdb852  1      OPC=nop             
  nop                                            #  50    0xdb853  1      OPC=nop             
  nop                                            #  51    0xdb854  1      OPC=nop             
  nop                                            #  52    0xdb855  1      OPC=nop             
  nop                                            #  53    0xdb856  1      OPC=nop             
  nop                                            #  54    0xdb857  1      OPC=nop             
  nop                                            #  55    0xdb858  1      OPC=nop             
  nop                                            #  56    0xdb859  1      OPC=nop             
  nop                                            #  57    0xdb85a  1      OPC=nop             
  nop                                            #  58    0xdb85b  1      OPC=nop             
  nop                                            #  59    0xdb85c  1      OPC=nop             
  nop                                            #  60    0xdb85d  1      OPC=nop             
  nop                                            #  61    0xdb85e  1      OPC=nop             
  nop                                            #  62    0xdb85f  1      OPC=nop             
  nop                                            #  63    0xdb860  1      OPC=nop             
  nop                                            #  64    0xdb861  1      OPC=nop             
  callq ._Unwind_Resume                          #  65    0xdb862  5      OPC=callq_label     
.L_db860:                                        #        0xdb867  0      OPC=<label>         
  nop                                            #  66    0xdb867  1      OPC=nop             
  nop                                            #  67    0xdb868  1      OPC=nop             
  nop                                            #  68    0xdb869  1      OPC=nop             
  nop                                            #  69    0xdb86a  1      OPC=nop             
  nop                                            #  70    0xdb86b  1      OPC=nop             
  nop                                            #  71    0xdb86c  1      OPC=nop             
  nop                                            #  72    0xdb86d  1      OPC=nop             
  nop                                            #  73    0xdb86e  1      OPC=nop             
  nop                                            #  74    0xdb86f  1      OPC=nop             
  nop                                            #  75    0xdb870  1      OPC=nop             
  nop                                            #  76    0xdb871  1      OPC=nop             
  nop                                            #  77    0xdb872  1      OPC=nop             
  nop                                            #  78    0xdb873  1      OPC=nop             
  nop                                            #  79    0xdb874  1      OPC=nop             
  nop                                            #  80    0xdb875  1      OPC=nop             
  nop                                            #  81    0xdb876  1      OPC=nop             
  nop                                            #  82    0xdb877  1      OPC=nop             
  nop                                            #  83    0xdb878  1      OPC=nop             
  nop                                            #  84    0xdb879  1      OPC=nop             
  nop                                            #  85    0xdb87a  1      OPC=nop             
  nop                                            #  86    0xdb87b  1      OPC=nop             
  nop                                            #  87    0xdb87c  1      OPC=nop             
  nop                                            #  88    0xdb87d  1      OPC=nop             
  nop                                            #  89    0xdb87e  1      OPC=nop             
  nop                                            #  90    0xdb87f  1      OPC=nop             
  nop                                            #  91    0xdb880  1      OPC=nop             
  nop                                            #  92    0xdb881  1      OPC=nop             
  callq .__cxa_call_unexpected                   #  93    0xdb882  5      OPC=callq_label     
                                                                                              
.size _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv, .-_ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv

