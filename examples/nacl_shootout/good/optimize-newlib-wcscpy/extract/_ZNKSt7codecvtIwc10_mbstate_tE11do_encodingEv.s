  .text
  .globl _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv
  .type _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv, @function

#! file-offset 0x11ade0
#! rip-offset  0xdade0
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv:  #        0xdade0  0      OPC=<label>         
  subl $0x8, %esp                                #  1     0xdade0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  2     0xdade3  3      OPC=addq_r64_r64    
  nop                                            #  3     0xdade6  1      OPC=nop             
  nop                                            #  4     0xdade7  1      OPC=nop             
  nop                                            #  5     0xdade8  1      OPC=nop             
  nop                                            #  6     0xdade9  1      OPC=nop             
  nop                                            #  7     0xdadea  1      OPC=nop             
  nop                                            #  8     0xdadeb  1      OPC=nop             
  nop                                            #  9     0xdadec  1      OPC=nop             
  nop                                            #  10    0xdaded  1      OPC=nop             
  nop                                            #  11    0xdadee  1      OPC=nop             
  nop                                            #  12    0xdadef  1      OPC=nop             
  nop                                            #  13    0xdadf0  1      OPC=nop             
  nop                                            #  14    0xdadf1  1      OPC=nop             
  nop                                            #  15    0xdadf2  1      OPC=nop             
  nop                                            #  16    0xdadf3  1      OPC=nop             
  nop                                            #  17    0xdadf4  1      OPC=nop             
  nop                                            #  18    0xdadf5  1      OPC=nop             
  nop                                            #  19    0xdadf6  1      OPC=nop             
  nop                                            #  20    0xdadf7  1      OPC=nop             
  nop                                            #  21    0xdadf8  1      OPC=nop             
  nop                                            #  22    0xdadf9  1      OPC=nop             
  nop                                            #  23    0xdadfa  1      OPC=nop             
  callq .__locale_mb_cur_max                     #  24    0xdadfb  5      OPC=callq_label     
  cmpl $0x1, %eax                                #  25    0xdae00  3      OPC=cmpl_r32_imm8   
  sete %al                                       #  26    0xdae03  3      OPC=sete_r8         
  addl $0x8, %esp                                #  27    0xdae06  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  28    0xdae09  3      OPC=addq_r64_r64    
  popq %r11                                      #  29    0xdae0c  2      OPC=popq_r64_1      
  movzbl %al, %eax                               #  30    0xdae0e  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d                        #  31    0xdae11  7      OPC=andl_r32_imm32  
  nop                                            #  32    0xdae18  1      OPC=nop             
  nop                                            #  33    0xdae19  1      OPC=nop             
  nop                                            #  34    0xdae1a  1      OPC=nop             
  nop                                            #  35    0xdae1b  1      OPC=nop             
  addq %r15, %r11                                #  36    0xdae1c  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  37    0xdae1f  3      OPC=jmpq_r64        
  nop                                            #  38    0xdae22  1      OPC=nop             
  nop                                            #  39    0xdae23  1      OPC=nop             
  nop                                            #  40    0xdae24  1      OPC=nop             
  nop                                            #  41    0xdae25  1      OPC=nop             
  nop                                            #  42    0xdae26  1      OPC=nop             
  cmpq $0xff, %rdx                               #  43    0xdae27  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                #  44    0xdae2b  2      OPC=movl_r32_r32    
  je .L_dae40                                    #  45    0xdae2d  2      OPC=je_label        
  nop                                            #  46    0xdae2f  1      OPC=nop             
  nop                                            #  47    0xdae30  1      OPC=nop             
  nop                                            #  48    0xdae31  1      OPC=nop             
  nop                                            #  49    0xdae32  1      OPC=nop             
  nop                                            #  50    0xdae33  1      OPC=nop             
  nop                                            #  51    0xdae34  1      OPC=nop             
  nop                                            #  52    0xdae35  1      OPC=nop             
  nop                                            #  53    0xdae36  1      OPC=nop             
  nop                                            #  54    0xdae37  1      OPC=nop             
  nop                                            #  55    0xdae38  1      OPC=nop             
  nop                                            #  56    0xdae39  1      OPC=nop             
  nop                                            #  57    0xdae3a  1      OPC=nop             
  nop                                            #  58    0xdae3b  1      OPC=nop             
  nop                                            #  59    0xdae3c  1      OPC=nop             
  nop                                            #  60    0xdae3d  1      OPC=nop             
  nop                                            #  61    0xdae3e  1      OPC=nop             
  nop                                            #  62    0xdae3f  1      OPC=nop             
  nop                                            #  63    0xdae40  1      OPC=nop             
  nop                                            #  64    0xdae41  1      OPC=nop             
  callq ._Unwind_Resume                          #  65    0xdae42  5      OPC=callq_label     
.L_dae40:                                        #        0xdae47  0      OPC=<label>         
  nop                                            #  66    0xdae47  1      OPC=nop             
  nop                                            #  67    0xdae48  1      OPC=nop             
  nop                                            #  68    0xdae49  1      OPC=nop             
  nop                                            #  69    0xdae4a  1      OPC=nop             
  nop                                            #  70    0xdae4b  1      OPC=nop             
  nop                                            #  71    0xdae4c  1      OPC=nop             
  nop                                            #  72    0xdae4d  1      OPC=nop             
  nop                                            #  73    0xdae4e  1      OPC=nop             
  nop                                            #  74    0xdae4f  1      OPC=nop             
  nop                                            #  75    0xdae50  1      OPC=nop             
  nop                                            #  76    0xdae51  1      OPC=nop             
  nop                                            #  77    0xdae52  1      OPC=nop             
  nop                                            #  78    0xdae53  1      OPC=nop             
  nop                                            #  79    0xdae54  1      OPC=nop             
  nop                                            #  80    0xdae55  1      OPC=nop             
  nop                                            #  81    0xdae56  1      OPC=nop             
  nop                                            #  82    0xdae57  1      OPC=nop             
  nop                                            #  83    0xdae58  1      OPC=nop             
  nop                                            #  84    0xdae59  1      OPC=nop             
  nop                                            #  85    0xdae5a  1      OPC=nop             
  nop                                            #  86    0xdae5b  1      OPC=nop             
  nop                                            #  87    0xdae5c  1      OPC=nop             
  nop                                            #  88    0xdae5d  1      OPC=nop             
  nop                                            #  89    0xdae5e  1      OPC=nop             
  nop                                            #  90    0xdae5f  1      OPC=nop             
  nop                                            #  91    0xdae60  1      OPC=nop             
  nop                                            #  92    0xdae61  1      OPC=nop             
  callq .__cxa_call_unexpected                   #  93    0xdae62  5      OPC=callq_label     
                                                                                              
.size _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv, .-_ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv

