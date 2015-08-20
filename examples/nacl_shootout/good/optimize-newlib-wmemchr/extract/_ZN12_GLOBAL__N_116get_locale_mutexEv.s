  .text
  .globl _ZN12_GLOBAL__N_116get_locale_mutexEv
  .type _ZN12_GLOBAL__N_116get_locale_mutexEv, @function

#! file-offset 0x9fc60
#! rip-offset  0x5fc60
#! capacity    160 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZN12_GLOBAL__N_116get_locale_mutexEv:  #        0x5fc60  0      OPC=<label>         
  subl $0x8, %esp                        #  1     0x5fc60  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  2     0x5fc63  3      OPC=addq_r64_r64    
  cmpb $0x0, 0x1001385b(%rip)            #  3     0x5fc66  7      OPC=cmpb_m8_imm8    
  je .L_5fca0                            #  4     0x5fc6d  2      OPC=je_label        
  xchgw %ax, %ax                         #  5     0x5fc6f  2      OPC=xchgw_ax_r16    
  nop                                    #  6     0x5fc71  1      OPC=nop             
  nop                                    #  7     0x5fc72  1      OPC=nop             
  nop                                    #  8     0x5fc73  1      OPC=nop             
  nop                                    #  9     0x5fc74  1      OPC=nop             
  nop                                    #  10    0x5fc75  1      OPC=nop             
  nop                                    #  11    0x5fc76  1      OPC=nop             
  nop                                    #  12    0x5fc77  1      OPC=nop             
  nop                                    #  13    0x5fc78  1      OPC=nop             
  nop                                    #  14    0x5fc79  1      OPC=nop             
  nop                                    #  15    0x5fc7a  1      OPC=nop             
  nop                                    #  16    0x5fc7b  1      OPC=nop             
  nop                                    #  17    0x5fc7c  1      OPC=nop             
  nop                                    #  18    0x5fc7d  1      OPC=nop             
  nop                                    #  19    0x5fc7e  1      OPC=nop             
  nop                                    #  20    0x5fc7f  1      OPC=nop             
.L_5fc80:                                #        0x5fc80  0      OPC=<label>         
  addl $0x8, %esp                        #  21    0x5fc80  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  22    0x5fc83  3      OPC=addq_r64_r64    
  movl $0x100734d0, %eax                 #  23    0x5fc86  5      OPC=movl_r32_imm32  
  popq %r11                              #  24    0x5fc8b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  25    0x5fc8d  7      OPC=andl_r32_imm32  
  nop                                    #  26    0x5fc94  1      OPC=nop             
  nop                                    #  27    0x5fc95  1      OPC=nop             
  nop                                    #  28    0x5fc96  1      OPC=nop             
  nop                                    #  29    0x5fc97  1      OPC=nop             
  addq %r15, %r11                        #  30    0x5fc98  3      OPC=addq_r64_r64    
  jmpq %r11                              #  31    0x5fc9b  3      OPC=jmpq_r64        
  nop                                    #  32    0x5fc9e  1      OPC=nop             
  nop                                    #  33    0x5fc9f  1      OPC=nop             
  nop                                    #  34    0x5fca0  1      OPC=nop             
  nop                                    #  35    0x5fca1  1      OPC=nop             
  nop                                    #  36    0x5fca2  1      OPC=nop             
  nop                                    #  37    0x5fca3  1      OPC=nop             
  nop                                    #  38    0x5fca4  1      OPC=nop             
  nop                                    #  39    0x5fca5  1      OPC=nop             
  nop                                    #  40    0x5fca6  1      OPC=nop             
.L_5fca0:                                #        0x5fca7  0      OPC=<label>         
  movl $0x100734c8, %edi                 #  41    0x5fca7  5      OPC=movl_r32_imm32  
  nop                                    #  42    0x5fcac  1      OPC=nop             
  nop                                    #  43    0x5fcad  1      OPC=nop             
  nop                                    #  44    0x5fcae  1      OPC=nop             
  nop                                    #  45    0x5fcaf  1      OPC=nop             
  nop                                    #  46    0x5fcb0  1      OPC=nop             
  nop                                    #  47    0x5fcb1  1      OPC=nop             
  nop                                    #  48    0x5fcb2  1      OPC=nop             
  nop                                    #  49    0x5fcb3  1      OPC=nop             
  nop                                    #  50    0x5fcb4  1      OPC=nop             
  nop                                    #  51    0x5fcb5  1      OPC=nop             
  nop                                    #  52    0x5fcb6  1      OPC=nop             
  nop                                    #  53    0x5fcb7  1      OPC=nop             
  nop                                    #  54    0x5fcb8  1      OPC=nop             
  nop                                    #  55    0x5fcb9  1      OPC=nop             
  nop                                    #  56    0x5fcba  1      OPC=nop             
  nop                                    #  57    0x5fcbb  1      OPC=nop             
  nop                                    #  58    0x5fcbc  1      OPC=nop             
  nop                                    #  59    0x5fcbd  1      OPC=nop             
  nop                                    #  60    0x5fcbe  1      OPC=nop             
  nop                                    #  61    0x5fcbf  1      OPC=nop             
  nop                                    #  62    0x5fcc0  1      OPC=nop             
  nop                                    #  63    0x5fcc1  1      OPC=nop             
  callq .__cxa_guard_acquire             #  64    0x5fcc2  5      OPC=callq_label     
  testl %eax, %eax                       #  65    0x5fcc7  2      OPC=testl_r32_r32   
  je .L_5fc80                            #  66    0x5fcc9  2      OPC=je_label        
  movl $0x100734c8, %edi                 #  67    0x5fccb  5      OPC=movl_r32_imm32  
  nop                                    #  68    0x5fcd0  1      OPC=nop             
  nop                                    #  69    0x5fcd1  1      OPC=nop             
  nop                                    #  70    0x5fcd2  1      OPC=nop             
  nop                                    #  71    0x5fcd3  1      OPC=nop             
  nop                                    #  72    0x5fcd4  1      OPC=nop             
  nop                                    #  73    0x5fcd5  1      OPC=nop             
  nop                                    #  74    0x5fcd6  1      OPC=nop             
  nop                                    #  75    0x5fcd7  1      OPC=nop             
  nop                                    #  76    0x5fcd8  1      OPC=nop             
  nop                                    #  77    0x5fcd9  1      OPC=nop             
  nop                                    #  78    0x5fcda  1      OPC=nop             
  nop                                    #  79    0x5fcdb  1      OPC=nop             
  nop                                    #  80    0x5fcdc  1      OPC=nop             
  nop                                    #  81    0x5fcdd  1      OPC=nop             
  nop                                    #  82    0x5fcde  1      OPC=nop             
  nop                                    #  83    0x5fcdf  1      OPC=nop             
  nop                                    #  84    0x5fce0  1      OPC=nop             
  nop                                    #  85    0x5fce1  1      OPC=nop             
  callq .__cxa_guard_release             #  86    0x5fce2  5      OPC=callq_label     
  addl $0x8, %esp                        #  87    0x5fce7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  88    0x5fcea  3      OPC=addq_r64_r64    
  movl $0x100734d0, %eax                 #  89    0x5fced  5      OPC=movl_r32_imm32  
  popq %r11                              #  90    0x5fcf2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  91    0x5fcf4  7      OPC=andl_r32_imm32  
  nop                                    #  92    0x5fcfb  1      OPC=nop             
  nop                                    #  93    0x5fcfc  1      OPC=nop             
  nop                                    #  94    0x5fcfd  1      OPC=nop             
  nop                                    #  95    0x5fcfe  1      OPC=nop             
  addq %r15, %r11                        #  96    0x5fcff  3      OPC=addq_r64_r64    
  jmpq %r11                              #  97    0x5fd02  3      OPC=jmpq_r64        
  nop                                    #  98    0x5fd05  1      OPC=nop             
  nop                                    #  99    0x5fd06  1      OPC=nop             
  nop                                    #  100   0x5fd07  1      OPC=nop             
  nop                                    #  101   0x5fd08  1      OPC=nop             
  nop                                    #  102   0x5fd09  1      OPC=nop             
  nop                                    #  103   0x5fd0a  1      OPC=nop             
  nop                                    #  104   0x5fd0b  1      OPC=nop             
  nop                                    #  105   0x5fd0c  1      OPC=nop             
  nop                                    #  106   0x5fd0d  1      OPC=nop             
                                                                                      
.size _ZN12_GLOBAL__N_116get_locale_mutexEv, .-_ZN12_GLOBAL__N_116get_locale_mutexEv

