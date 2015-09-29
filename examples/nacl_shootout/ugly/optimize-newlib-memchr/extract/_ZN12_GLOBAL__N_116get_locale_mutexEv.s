  .text
  .globl _ZN12_GLOBAL__N_116get_locale_mutexEv
  .type _ZN12_GLOBAL__N_116get_locale_mutexEv, @function

#! file-offset 0xa0380
#! rip-offset  0x60380
#! capacity    160 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZN12_GLOBAL__N_116get_locale_mutexEv:  #        0x60380  0      OPC=<label>         
  subl $0x8, %esp                        #  1     0x60380  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  2     0x60383  3      OPC=addq_r64_r64    
  cmpb $0x0, 0x1001313b(%rip)            #  3     0x60386  7      OPC=cmpb_m8_imm8    
  je .L_603c0                            #  4     0x6038d  2      OPC=je_label        
  xchgw %ax, %ax                         #  5     0x6038f  2      OPC=xchgw_ax_r16    
  nop                                    #  6     0x60391  1      OPC=nop             
  nop                                    #  7     0x60392  1      OPC=nop             
  nop                                    #  8     0x60393  1      OPC=nop             
  nop                                    #  9     0x60394  1      OPC=nop             
  nop                                    #  10    0x60395  1      OPC=nop             
  nop                                    #  11    0x60396  1      OPC=nop             
  nop                                    #  12    0x60397  1      OPC=nop             
  nop                                    #  13    0x60398  1      OPC=nop             
  nop                                    #  14    0x60399  1      OPC=nop             
  nop                                    #  15    0x6039a  1      OPC=nop             
  nop                                    #  16    0x6039b  1      OPC=nop             
  nop                                    #  17    0x6039c  1      OPC=nop             
  nop                                    #  18    0x6039d  1      OPC=nop             
  nop                                    #  19    0x6039e  1      OPC=nop             
  nop                                    #  20    0x6039f  1      OPC=nop             
.L_603a0:                                #        0x603a0  0      OPC=<label>         
  addl $0x8, %esp                        #  21    0x603a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  22    0x603a3  3      OPC=addq_r64_r64    
  movl $0x100734d0, %eax                 #  23    0x603a6  5      OPC=movl_r32_imm32  
  popq %r11                              #  24    0x603ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  25    0x603ad  7      OPC=andl_r32_imm32  
  nop                                    #  26    0x603b4  1      OPC=nop             
  nop                                    #  27    0x603b5  1      OPC=nop             
  nop                                    #  28    0x603b6  1      OPC=nop             
  nop                                    #  29    0x603b7  1      OPC=nop             
  addq %r15, %r11                        #  30    0x603b8  3      OPC=addq_r64_r64    
  jmpq %r11                              #  31    0x603bb  3      OPC=jmpq_r64        
  nop                                    #  32    0x603be  1      OPC=nop             
  nop                                    #  33    0x603bf  1      OPC=nop             
  nop                                    #  34    0x603c0  1      OPC=nop             
  nop                                    #  35    0x603c1  1      OPC=nop             
  nop                                    #  36    0x603c2  1      OPC=nop             
  nop                                    #  37    0x603c3  1      OPC=nop             
  nop                                    #  38    0x603c4  1      OPC=nop             
  nop                                    #  39    0x603c5  1      OPC=nop             
  nop                                    #  40    0x603c6  1      OPC=nop             
.L_603c0:                                #        0x603c7  0      OPC=<label>         
  movl $0x100734c8, %edi                 #  41    0x603c7  5      OPC=movl_r32_imm32  
  nop                                    #  42    0x603cc  1      OPC=nop             
  nop                                    #  43    0x603cd  1      OPC=nop             
  nop                                    #  44    0x603ce  1      OPC=nop             
  nop                                    #  45    0x603cf  1      OPC=nop             
  nop                                    #  46    0x603d0  1      OPC=nop             
  nop                                    #  47    0x603d1  1      OPC=nop             
  nop                                    #  48    0x603d2  1      OPC=nop             
  nop                                    #  49    0x603d3  1      OPC=nop             
  nop                                    #  50    0x603d4  1      OPC=nop             
  nop                                    #  51    0x603d5  1      OPC=nop             
  nop                                    #  52    0x603d6  1      OPC=nop             
  nop                                    #  53    0x603d7  1      OPC=nop             
  nop                                    #  54    0x603d8  1      OPC=nop             
  nop                                    #  55    0x603d9  1      OPC=nop             
  nop                                    #  56    0x603da  1      OPC=nop             
  nop                                    #  57    0x603db  1      OPC=nop             
  nop                                    #  58    0x603dc  1      OPC=nop             
  nop                                    #  59    0x603dd  1      OPC=nop             
  nop                                    #  60    0x603de  1      OPC=nop             
  nop                                    #  61    0x603df  1      OPC=nop             
  nop                                    #  62    0x603e0  1      OPC=nop             
  nop                                    #  63    0x603e1  1      OPC=nop             
  callq .__cxa_guard_acquire             #  64    0x603e2  5      OPC=callq_label     
  testl %eax, %eax                       #  65    0x603e7  2      OPC=testl_r32_r32   
  je .L_603a0                            #  66    0x603e9  2      OPC=je_label        
  movl $0x100734c8, %edi                 #  67    0x603eb  5      OPC=movl_r32_imm32  
  nop                                    #  68    0x603f0  1      OPC=nop             
  nop                                    #  69    0x603f1  1      OPC=nop             
  nop                                    #  70    0x603f2  1      OPC=nop             
  nop                                    #  71    0x603f3  1      OPC=nop             
  nop                                    #  72    0x603f4  1      OPC=nop             
  nop                                    #  73    0x603f5  1      OPC=nop             
  nop                                    #  74    0x603f6  1      OPC=nop             
  nop                                    #  75    0x603f7  1      OPC=nop             
  nop                                    #  76    0x603f8  1      OPC=nop             
  nop                                    #  77    0x603f9  1      OPC=nop             
  nop                                    #  78    0x603fa  1      OPC=nop             
  nop                                    #  79    0x603fb  1      OPC=nop             
  nop                                    #  80    0x603fc  1      OPC=nop             
  nop                                    #  81    0x603fd  1      OPC=nop             
  nop                                    #  82    0x603fe  1      OPC=nop             
  nop                                    #  83    0x603ff  1      OPC=nop             
  nop                                    #  84    0x60400  1      OPC=nop             
  nop                                    #  85    0x60401  1      OPC=nop             
  callq .__cxa_guard_release             #  86    0x60402  5      OPC=callq_label     
  addl $0x8, %esp                        #  87    0x60407  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  88    0x6040a  3      OPC=addq_r64_r64    
  movl $0x100734d0, %eax                 #  89    0x6040d  5      OPC=movl_r32_imm32  
  popq %r11                              #  90    0x60412  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  91    0x60414  7      OPC=andl_r32_imm32  
  nop                                    #  92    0x6041b  1      OPC=nop             
  nop                                    #  93    0x6041c  1      OPC=nop             
  nop                                    #  94    0x6041d  1      OPC=nop             
  nop                                    #  95    0x6041e  1      OPC=nop             
  addq %r15, %r11                        #  96    0x6041f  3      OPC=addq_r64_r64    
  jmpq %r11                              #  97    0x60422  3      OPC=jmpq_r64        
  nop                                    #  98    0x60425  1      OPC=nop             
  nop                                    #  99    0x60426  1      OPC=nop             
  nop                                    #  100   0x60427  1      OPC=nop             
  nop                                    #  101   0x60428  1      OPC=nop             
  nop                                    #  102   0x60429  1      OPC=nop             
  nop                                    #  103   0x6042a  1      OPC=nop             
  nop                                    #  104   0x6042b  1      OPC=nop             
  nop                                    #  105   0x6042c  1      OPC=nop             
  nop                                    #  106   0x6042d  1      OPC=nop             
                                                                                      
.size _ZN12_GLOBAL__N_116get_locale_mutexEv, .-_ZN12_GLOBAL__N_116get_locale_mutexEv

