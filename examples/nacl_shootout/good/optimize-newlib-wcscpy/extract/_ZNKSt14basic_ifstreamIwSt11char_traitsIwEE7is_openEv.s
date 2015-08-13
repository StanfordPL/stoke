  .text
  .globl _ZNKSt14basic_ifstreamIwSt11char_traitsIwEE7is_openEv
  .type _ZNKSt14basic_ifstreamIwSt11char_traitsIwEE7is_openEv, @function

#! file-offset 0x12cdc0
#! rip-offset  0xecdc0
#! capacity    128 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt14basic_ifstreamIwSt11char_traitsIwEE7is_openEv:  #        0xecdc0  0      OPC=<label>         
  subl $0x8, %esp                                        #  1     0xecdc0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                        #  2     0xecdc3  3      OPC=addq_r64_r64    
  addl $0x3c, %edi                                       #  3     0xecdc6  3      OPC=addl_r32_imm8   
  nop                                                    #  4     0xecdc9  1      OPC=nop             
  nop                                                    #  5     0xecdca  1      OPC=nop             
  nop                                                    #  6     0xecdcb  1      OPC=nop             
  nop                                                    #  7     0xecdcc  1      OPC=nop             
  nop                                                    #  8     0xecdcd  1      OPC=nop             
  nop                                                    #  9     0xecdce  1      OPC=nop             
  nop                                                    #  10    0xecdcf  1      OPC=nop             
  nop                                                    #  11    0xecdd0  1      OPC=nop             
  nop                                                    #  12    0xecdd1  1      OPC=nop             
  nop                                                    #  13    0xecdd2  1      OPC=nop             
  nop                                                    #  14    0xecdd3  1      OPC=nop             
  nop                                                    #  15    0xecdd4  1      OPC=nop             
  nop                                                    #  16    0xecdd5  1      OPC=nop             
  nop                                                    #  17    0xecdd6  1      OPC=nop             
  nop                                                    #  18    0xecdd7  1      OPC=nop             
  nop                                                    #  19    0xecdd8  1      OPC=nop             
  nop                                                    #  20    0xecdd9  1      OPC=nop             
  nop                                                    #  21    0xecdda  1      OPC=nop             
  callq ._ZNKSt12__basic_fileIcE7is_openEv               #  22    0xecddb  5      OPC=callq_label     
  addl $0x8, %esp                                        #  23    0xecde0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                        #  24    0xecde3  3      OPC=addq_r64_r64    
  popq %r11                                              #  25    0xecde6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                #  26    0xecde8  7      OPC=andl_r32_imm32  
  nop                                                    #  27    0xecdef  1      OPC=nop             
  nop                                                    #  28    0xecdf0  1      OPC=nop             
  nop                                                    #  29    0xecdf1  1      OPC=nop             
  nop                                                    #  30    0xecdf2  1      OPC=nop             
  addq %r15, %r11                                        #  31    0xecdf3  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  32    0xecdf6  3      OPC=jmpq_r64        
  nop                                                    #  33    0xecdf9  1      OPC=nop             
  nop                                                    #  34    0xecdfa  1      OPC=nop             
  nop                                                    #  35    0xecdfb  1      OPC=nop             
  nop                                                    #  36    0xecdfc  1      OPC=nop             
  nop                                                    #  37    0xecdfd  1      OPC=nop             
  nop                                                    #  38    0xecdfe  1      OPC=nop             
  nop                                                    #  39    0xecdff  1      OPC=nop             
  nop                                                    #  40    0xece00  1      OPC=nop             
  nop                                                    #  41    0xece01  1      OPC=nop             
  nop                                                    #  42    0xece02  1      OPC=nop             
  nop                                                    #  43    0xece03  1      OPC=nop             
  nop                                                    #  44    0xece04  1      OPC=nop             
  nop                                                    #  45    0xece05  1      OPC=nop             
  nop                                                    #  46    0xece06  1      OPC=nop             
  cmpq $0xff, %rdx                                       #  47    0xece07  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                        #  48    0xece0b  2      OPC=movl_r32_r32    
  je .L_ece20                                            #  49    0xece0d  2      OPC=je_label        
  nop                                                    #  50    0xece0f  1      OPC=nop             
  nop                                                    #  51    0xece10  1      OPC=nop             
  nop                                                    #  52    0xece11  1      OPC=nop             
  nop                                                    #  53    0xece12  1      OPC=nop             
  nop                                                    #  54    0xece13  1      OPC=nop             
  nop                                                    #  55    0xece14  1      OPC=nop             
  nop                                                    #  56    0xece15  1      OPC=nop             
  nop                                                    #  57    0xece16  1      OPC=nop             
  nop                                                    #  58    0xece17  1      OPC=nop             
  nop                                                    #  59    0xece18  1      OPC=nop             
  nop                                                    #  60    0xece19  1      OPC=nop             
  nop                                                    #  61    0xece1a  1      OPC=nop             
  nop                                                    #  62    0xece1b  1      OPC=nop             
  nop                                                    #  63    0xece1c  1      OPC=nop             
  nop                                                    #  64    0xece1d  1      OPC=nop             
  nop                                                    #  65    0xece1e  1      OPC=nop             
  nop                                                    #  66    0xece1f  1      OPC=nop             
  nop                                                    #  67    0xece20  1      OPC=nop             
  nop                                                    #  68    0xece21  1      OPC=nop             
  callq ._Unwind_Resume                                  #  69    0xece22  5      OPC=callq_label     
.L_ece20:                                                #        0xece27  0      OPC=<label>         
  nop                                                    #  70    0xece27  1      OPC=nop             
  nop                                                    #  71    0xece28  1      OPC=nop             
  nop                                                    #  72    0xece29  1      OPC=nop             
  nop                                                    #  73    0xece2a  1      OPC=nop             
  nop                                                    #  74    0xece2b  1      OPC=nop             
  nop                                                    #  75    0xece2c  1      OPC=nop             
  nop                                                    #  76    0xece2d  1      OPC=nop             
  nop                                                    #  77    0xece2e  1      OPC=nop             
  nop                                                    #  78    0xece2f  1      OPC=nop             
  nop                                                    #  79    0xece30  1      OPC=nop             
  nop                                                    #  80    0xece31  1      OPC=nop             
  nop                                                    #  81    0xece32  1      OPC=nop             
  nop                                                    #  82    0xece33  1      OPC=nop             
  nop                                                    #  83    0xece34  1      OPC=nop             
  nop                                                    #  84    0xece35  1      OPC=nop             
  nop                                                    #  85    0xece36  1      OPC=nop             
  nop                                                    #  86    0xece37  1      OPC=nop             
  nop                                                    #  87    0xece38  1      OPC=nop             
  nop                                                    #  88    0xece39  1      OPC=nop             
  nop                                                    #  89    0xece3a  1      OPC=nop             
  nop                                                    #  90    0xece3b  1      OPC=nop             
  nop                                                    #  91    0xece3c  1      OPC=nop             
  nop                                                    #  92    0xece3d  1      OPC=nop             
  nop                                                    #  93    0xece3e  1      OPC=nop             
  nop                                                    #  94    0xece3f  1      OPC=nop             
  nop                                                    #  95    0xece40  1      OPC=nop             
  nop                                                    #  96    0xece41  1      OPC=nop             
  callq .__cxa_call_unexpected                           #  97    0xece42  5      OPC=callq_label     
                                                                                                      
.size _ZNKSt14basic_ifstreamIwSt11char_traitsIwEE7is_openEv, .-_ZNKSt14basic_ifstreamIwSt11char_traitsIwEE7is_openEv

