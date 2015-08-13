  .text
  .globl __cxa_call_terminate
  .type __cxa_call_terminate, @function

#! file-offset 0x120ca0
#! rip-offset  0xe0ca0
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
.__cxa_call_terminate:                       #        0xe0ca0  0      OPC=<label>         
  pushq %rbx                                 #  1     0xe0ca0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                            #  2     0xe0ca1  2      OPC=movl_r32_r32    
  testq %rbx, %rbx                           #  3     0xe0ca3  3      OPC=testq_r64_r64   
  je .L_e0ce0                                #  4     0xe0ca6  2      OPC=je_label        
  movl %ebx, %edi                            #  5     0xe0ca8  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                             #  6     0xe0caa  2      OPC=xchgw_ax_r16    
  nop                                        #  7     0xe0cac  1      OPC=nop             
  nop                                        #  8     0xe0cad  1      OPC=nop             
  nop                                        #  9     0xe0cae  1      OPC=nop             
  nop                                        #  10    0xe0caf  1      OPC=nop             
  nop                                        #  11    0xe0cb0  1      OPC=nop             
  nop                                        #  12    0xe0cb1  1      OPC=nop             
  nop                                        #  13    0xe0cb2  1      OPC=nop             
  nop                                        #  14    0xe0cb3  1      OPC=nop             
  nop                                        #  15    0xe0cb4  1      OPC=nop             
  nop                                        #  16    0xe0cb5  1      OPC=nop             
  nop                                        #  17    0xe0cb6  1      OPC=nop             
  nop                                        #  18    0xe0cb7  1      OPC=nop             
  nop                                        #  19    0xe0cb8  1      OPC=nop             
  nop                                        #  20    0xe0cb9  1      OPC=nop             
  nop                                        #  21    0xe0cba  1      OPC=nop             
  callq .__cxa_begin_catch                   #  22    0xe0cbb  5      OPC=callq_label     
  movq $0xb8b1aabcbcd4d500, %rax             #  23    0xe0cc0  10     OPC=movq_r64_imm64  
  movl %ebx, %ebx                            #  24    0xe0cca  2      OPC=movl_r32_r32    
  addq (%r15,%rbx,1), %rax                   #  25    0xe0ccc  4      OPC=addq_r64_m64    
  cmpq $0x1, %rax                            #  26    0xe0cd0  4      OPC=cmpq_r64_imm8   
  jbe .L_e0d00                               #  27    0xe0cd4  2      OPC=jbe_label       
  nop                                        #  28    0xe0cd6  1      OPC=nop             
  nop                                        #  29    0xe0cd7  1      OPC=nop             
  nop                                        #  30    0xe0cd8  1      OPC=nop             
  nop                                        #  31    0xe0cd9  1      OPC=nop             
  nop                                        #  32    0xe0cda  1      OPC=nop             
  nop                                        #  33    0xe0cdb  1      OPC=nop             
  nop                                        #  34    0xe0cdc  1      OPC=nop             
  nop                                        #  35    0xe0cdd  1      OPC=nop             
  nop                                        #  36    0xe0cde  1      OPC=nop             
  nop                                        #  37    0xe0cdf  1      OPC=nop             
.L_e0ce0:                                    #        0xe0ce0  0      OPC=<label>         
  nop                                        #  38    0xe0ce0  1      OPC=nop             
  nop                                        #  39    0xe0ce1  1      OPC=nop             
  nop                                        #  40    0xe0ce2  1      OPC=nop             
  nop                                        #  41    0xe0ce3  1      OPC=nop             
  nop                                        #  42    0xe0ce4  1      OPC=nop             
  nop                                        #  43    0xe0ce5  1      OPC=nop             
  nop                                        #  44    0xe0ce6  1      OPC=nop             
  nop                                        #  45    0xe0ce7  1      OPC=nop             
  nop                                        #  46    0xe0ce8  1      OPC=nop             
  nop                                        #  47    0xe0ce9  1      OPC=nop             
  nop                                        #  48    0xe0cea  1      OPC=nop             
  nop                                        #  49    0xe0ceb  1      OPC=nop             
  nop                                        #  50    0xe0cec  1      OPC=nop             
  nop                                        #  51    0xe0ced  1      OPC=nop             
  nop                                        #  52    0xe0cee  1      OPC=nop             
  nop                                        #  53    0xe0cef  1      OPC=nop             
  nop                                        #  54    0xe0cf0  1      OPC=nop             
  nop                                        #  55    0xe0cf1  1      OPC=nop             
  nop                                        #  56    0xe0cf2  1      OPC=nop             
  nop                                        #  57    0xe0cf3  1      OPC=nop             
  nop                                        #  58    0xe0cf4  1      OPC=nop             
  nop                                        #  59    0xe0cf5  1      OPC=nop             
  nop                                        #  60    0xe0cf6  1      OPC=nop             
  nop                                        #  61    0xe0cf7  1      OPC=nop             
  nop                                        #  62    0xe0cf8  1      OPC=nop             
  nop                                        #  63    0xe0cf9  1      OPC=nop             
  nop                                        #  64    0xe0cfa  1      OPC=nop             
  callq ._ZSt9terminatev                     #  65    0xe0cfb  5      OPC=callq_label     
.L_e0d00:                                    #        0xe0d00  0      OPC=<label>         
  subl $0x30, %ebx                           #  66    0xe0d00  3      OPC=subl_r32_imm8   
  movl %ebx, %ebx                            #  67    0xe0d03  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %edi                #  68    0xe0d05  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                             #  69    0xe0d0a  2      OPC=xchgw_ax_r16    
  nop                                        #  70    0xe0d0c  1      OPC=nop             
  nop                                        #  71    0xe0d0d  1      OPC=nop             
  nop                                        #  72    0xe0d0e  1      OPC=nop             
  nop                                        #  73    0xe0d0f  1      OPC=nop             
  nop                                        #  74    0xe0d10  1      OPC=nop             
  nop                                        #  75    0xe0d11  1      OPC=nop             
  nop                                        #  76    0xe0d12  1      OPC=nop             
  nop                                        #  77    0xe0d13  1      OPC=nop             
  nop                                        #  78    0xe0d14  1      OPC=nop             
  nop                                        #  79    0xe0d15  1      OPC=nop             
  nop                                        #  80    0xe0d16  1      OPC=nop             
  nop                                        #  81    0xe0d17  1      OPC=nop             
  nop                                        #  82    0xe0d18  1      OPC=nop             
  nop                                        #  83    0xe0d19  1      OPC=nop             
  nop                                        #  84    0xe0d1a  1      OPC=nop             
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  85    0xe0d1b  5      OPC=callq_label     
                                                                                          
.size __cxa_call_terminate, .-__cxa_call_terminate

