  .text
  .globl _ZN12_GLOBAL__N_116get_locale_mutexEv
  .type _ZN12_GLOBAL__N_116get_locale_mutexEv, @function

#! file-offset 0x9f960
#! rip-offset  0x5f960
#! capacity    160 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZN12_GLOBAL__N_116get_locale_mutexEv:  #        0x5f960  0      OPC=<label>         
  subl $0x8, %esp                        #  1     0x5f960  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  2     0x5f963  3      OPC=addq_r64_r64    
  cmpb $0x0, 0x10013b5b(%rip)            #  3     0x5f966  7      OPC=cmpb_m8_imm8    
  je .L_5f9a0                            #  4     0x5f96d  2      OPC=je_label        
  xchgw %ax, %ax                         #  5     0x5f96f  2      OPC=xchgw_ax_r16    
  nop                                    #  6     0x5f971  1      OPC=nop             
  nop                                    #  7     0x5f972  1      OPC=nop             
  nop                                    #  8     0x5f973  1      OPC=nop             
  nop                                    #  9     0x5f974  1      OPC=nop             
  nop                                    #  10    0x5f975  1      OPC=nop             
  nop                                    #  11    0x5f976  1      OPC=nop             
  nop                                    #  12    0x5f977  1      OPC=nop             
  nop                                    #  13    0x5f978  1      OPC=nop             
  nop                                    #  14    0x5f979  1      OPC=nop             
  nop                                    #  15    0x5f97a  1      OPC=nop             
  nop                                    #  16    0x5f97b  1      OPC=nop             
  nop                                    #  17    0x5f97c  1      OPC=nop             
  nop                                    #  18    0x5f97d  1      OPC=nop             
  nop                                    #  19    0x5f97e  1      OPC=nop             
  nop                                    #  20    0x5f97f  1      OPC=nop             
.L_5f980:                                #        0x5f980  0      OPC=<label>         
  addl $0x8, %esp                        #  21    0x5f980  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  22    0x5f983  3      OPC=addq_r64_r64    
  movl $0x100734d0, %eax                 #  23    0x5f986  5      OPC=movl_r32_imm32  
  popq %r11                              #  24    0x5f98b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  25    0x5f98d  7      OPC=andl_r32_imm32  
  nop                                    #  26    0x5f994  1      OPC=nop             
  nop                                    #  27    0x5f995  1      OPC=nop             
  nop                                    #  28    0x5f996  1      OPC=nop             
  nop                                    #  29    0x5f997  1      OPC=nop             
  addq %r15, %r11                        #  30    0x5f998  3      OPC=addq_r64_r64    
  jmpq %r11                              #  31    0x5f99b  3      OPC=jmpq_r64        
  nop                                    #  32    0x5f99e  1      OPC=nop             
  nop                                    #  33    0x5f99f  1      OPC=nop             
  nop                                    #  34    0x5f9a0  1      OPC=nop             
  nop                                    #  35    0x5f9a1  1      OPC=nop             
  nop                                    #  36    0x5f9a2  1      OPC=nop             
  nop                                    #  37    0x5f9a3  1      OPC=nop             
  nop                                    #  38    0x5f9a4  1      OPC=nop             
  nop                                    #  39    0x5f9a5  1      OPC=nop             
  nop                                    #  40    0x5f9a6  1      OPC=nop             
.L_5f9a0:                                #        0x5f9a7  0      OPC=<label>         
  movl $0x100734c8, %edi                 #  41    0x5f9a7  5      OPC=movl_r32_imm32  
  nop                                    #  42    0x5f9ac  1      OPC=nop             
  nop                                    #  43    0x5f9ad  1      OPC=nop             
  nop                                    #  44    0x5f9ae  1      OPC=nop             
  nop                                    #  45    0x5f9af  1      OPC=nop             
  nop                                    #  46    0x5f9b0  1      OPC=nop             
  nop                                    #  47    0x5f9b1  1      OPC=nop             
  nop                                    #  48    0x5f9b2  1      OPC=nop             
  nop                                    #  49    0x5f9b3  1      OPC=nop             
  nop                                    #  50    0x5f9b4  1      OPC=nop             
  nop                                    #  51    0x5f9b5  1      OPC=nop             
  nop                                    #  52    0x5f9b6  1      OPC=nop             
  nop                                    #  53    0x5f9b7  1      OPC=nop             
  nop                                    #  54    0x5f9b8  1      OPC=nop             
  nop                                    #  55    0x5f9b9  1      OPC=nop             
  nop                                    #  56    0x5f9ba  1      OPC=nop             
  nop                                    #  57    0x5f9bb  1      OPC=nop             
  nop                                    #  58    0x5f9bc  1      OPC=nop             
  nop                                    #  59    0x5f9bd  1      OPC=nop             
  nop                                    #  60    0x5f9be  1      OPC=nop             
  nop                                    #  61    0x5f9bf  1      OPC=nop             
  nop                                    #  62    0x5f9c0  1      OPC=nop             
  nop                                    #  63    0x5f9c1  1      OPC=nop             
  callq .__cxa_guard_acquire             #  64    0x5f9c2  5      OPC=callq_label     
  testl %eax, %eax                       #  65    0x5f9c7  2      OPC=testl_r32_r32   
  je .L_5f980                            #  66    0x5f9c9  2      OPC=je_label        
  movl $0x100734c8, %edi                 #  67    0x5f9cb  5      OPC=movl_r32_imm32  
  nop                                    #  68    0x5f9d0  1      OPC=nop             
  nop                                    #  69    0x5f9d1  1      OPC=nop             
  nop                                    #  70    0x5f9d2  1      OPC=nop             
  nop                                    #  71    0x5f9d3  1      OPC=nop             
  nop                                    #  72    0x5f9d4  1      OPC=nop             
  nop                                    #  73    0x5f9d5  1      OPC=nop             
  nop                                    #  74    0x5f9d6  1      OPC=nop             
  nop                                    #  75    0x5f9d7  1      OPC=nop             
  nop                                    #  76    0x5f9d8  1      OPC=nop             
  nop                                    #  77    0x5f9d9  1      OPC=nop             
  nop                                    #  78    0x5f9da  1      OPC=nop             
  nop                                    #  79    0x5f9db  1      OPC=nop             
  nop                                    #  80    0x5f9dc  1      OPC=nop             
  nop                                    #  81    0x5f9dd  1      OPC=nop             
  nop                                    #  82    0x5f9de  1      OPC=nop             
  nop                                    #  83    0x5f9df  1      OPC=nop             
  nop                                    #  84    0x5f9e0  1      OPC=nop             
  nop                                    #  85    0x5f9e1  1      OPC=nop             
  callq .__cxa_guard_release             #  86    0x5f9e2  5      OPC=callq_label     
  addl $0x8, %esp                        #  87    0x5f9e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  88    0x5f9ea  3      OPC=addq_r64_r64    
  movl $0x100734d0, %eax                 #  89    0x5f9ed  5      OPC=movl_r32_imm32  
  popq %r11                              #  90    0x5f9f2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  91    0x5f9f4  7      OPC=andl_r32_imm32  
  nop                                    #  92    0x5f9fb  1      OPC=nop             
  nop                                    #  93    0x5f9fc  1      OPC=nop             
  nop                                    #  94    0x5f9fd  1      OPC=nop             
  nop                                    #  95    0x5f9fe  1      OPC=nop             
  addq %r15, %r11                        #  96    0x5f9ff  3      OPC=addq_r64_r64    
  jmpq %r11                              #  97    0x5fa02  3      OPC=jmpq_r64        
  nop                                    #  98    0x5fa05  1      OPC=nop             
  nop                                    #  99    0x5fa06  1      OPC=nop             
  nop                                    #  100   0x5fa07  1      OPC=nop             
  nop                                    #  101   0x5fa08  1      OPC=nop             
  nop                                    #  102   0x5fa09  1      OPC=nop             
  nop                                    #  103   0x5fa0a  1      OPC=nop             
  nop                                    #  104   0x5fa0b  1      OPC=nop             
  nop                                    #  105   0x5fa0c  1      OPC=nop             
  nop                                    #  106   0x5fa0d  1      OPC=nop             
                                                                                      
.size _ZN12_GLOBAL__N_116get_locale_mutexEv, .-_ZN12_GLOBAL__N_116get_locale_mutexEv

