  .text
  .globl _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E
  .type _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa4c00
#! rip-offset  0x64c00
#! capacity    192 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E:      #        0x64c00  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                    #  1     0x64c00  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                           #  2     0x64c05  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                     #  3     0x64c07  5      OPC=movq_m64_r64    
  movl %ebx, %edi                                                           #  4     0x64c0c  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                          #  5     0x64c0e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                           #  6     0x64c11  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                                          #  7     0x64c14  3      OPC=movl_r32_r32    
  nop                                                                       #  8     0x64c17  1      OPC=nop             
  nop                                                                       #  9     0x64c18  1      OPC=nop             
  nop                                                                       #  10    0x64c19  1      OPC=nop             
  nop                                                                       #  11    0x64c1a  1      OPC=nop             
  callq ._ZNSt8ios_base7_M_initEv                                           #  12    0x64c1b  5      OPC=callq_label     
  leal 0x6c(%rbx), %esi                                                     #  13    0x64c20  3      OPC=leal_r32_m16    
  movl %ebx, %edi                                                           #  14    0x64c23  2      OPC=movl_r32_r32    
  nop                                                                       #  15    0x64c25  1      OPC=nop             
  nop                                                                       #  16    0x64c26  1      OPC=nop             
  nop                                                                       #  17    0x64c27  1      OPC=nop             
  nop                                                                       #  18    0x64c28  1      OPC=nop             
  nop                                                                       #  19    0x64c29  1      OPC=nop             
  nop                                                                       #  20    0x64c2a  1      OPC=nop             
  nop                                                                       #  21    0x64c2b  1      OPC=nop             
  nop                                                                       #  22    0x64c2c  1      OPC=nop             
  nop                                                                       #  23    0x64c2d  1      OPC=nop             
  nop                                                                       #  24    0x64c2e  1      OPC=nop             
  nop                                                                       #  25    0x64c2f  1      OPC=nop             
  nop                                                                       #  26    0x64c30  1      OPC=nop             
  nop                                                                       #  27    0x64c31  1      OPC=nop             
  nop                                                                       #  28    0x64c32  1      OPC=nop             
  nop                                                                       #  29    0x64c33  1      OPC=nop             
  nop                                                                       #  30    0x64c34  1      OPC=nop             
  nop                                                                       #  31    0x64c35  1      OPC=nop             
  nop                                                                       #  32    0x64c36  1      OPC=nop             
  nop                                                                       #  33    0x64c37  1      OPC=nop             
  nop                                                                       #  34    0x64c38  1      OPC=nop             
  nop                                                                       #  35    0x64c39  1      OPC=nop             
  nop                                                                       #  36    0x64c3a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE15_M_cache_localeERKSt6locale  #  37    0x64c3b  5      OPC=callq_label     
  xorl %eax, %eax                                                           #  38    0x64c40  2      OPC=xorl_r32_r32    
  testl %r12d, %r12d                                                        #  39    0x64c42  3      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                           #  40    0x64c45  2      OPC=movl_r32_r32    
  movl %r12d, 0x7c(%r15,%rbx,1)                                             #  41    0x64c47  5      OPC=movl_m32_r32    
  sete %al                                                                  #  42    0x64c4c  3      OPC=sete_r8         
  movl %ebx, %ebx                                                           #  43    0x64c4f  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)                                              #  44    0x64c51  9      OPC=movl_m32_imm32  
  nop                                                                       #  45    0x64c5a  1      OPC=nop             
  nop                                                                       #  46    0x64c5b  1      OPC=nop             
  nop                                                                       #  47    0x64c5c  1      OPC=nop             
  nop                                                                       #  48    0x64c5d  1      OPC=nop             
  nop                                                                       #  49    0x64c5e  1      OPC=nop             
  nop                                                                       #  50    0x64c5f  1      OPC=nop             
  movl %ebx, %ebx                                                           #  51    0x64c60  2      OPC=movl_r32_r32    
  movb $0x0, 0x78(%r15,%rbx,1)                                              #  52    0x64c62  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  53    0x64c68  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                              #  54    0x64c6a  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                           #  55    0x64c73  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rbx,1)                                              #  56    0x64c75  9      OPC=movl_m32_imm32  
  xchgw %ax, %ax                                                            #  57    0x64c7e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                                           #  58    0x64c80  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rbx,1)                                              #  59    0x64c82  5      OPC=movl_m32_r32    
  movq 0x10(%rsp), %r12                                                     #  60    0x64c87  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                      #  61    0x64c8c  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                          #  62    0x64c91  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                           #  63    0x64c94  3      OPC=addq_r64_r64    
  popq %r11                                                                 #  64    0x64c97  2      OPC=popq_r64_1      
  nop                                                                       #  65    0x64c99  1      OPC=nop             
  nop                                                                       #  66    0x64c9a  1      OPC=nop             
  nop                                                                       #  67    0x64c9b  1      OPC=nop             
  nop                                                                       #  68    0x64c9c  1      OPC=nop             
  nop                                                                       #  69    0x64c9d  1      OPC=nop             
  nop                                                                       #  70    0x64c9e  1      OPC=nop             
  nop                                                                       #  71    0x64c9f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                   #  72    0x64ca0  7      OPC=andl_r32_imm32  
  nop                                                                       #  73    0x64ca7  1      OPC=nop             
  nop                                                                       #  74    0x64ca8  1      OPC=nop             
  nop                                                                       #  75    0x64ca9  1      OPC=nop             
  nop                                                                       #  76    0x64caa  1      OPC=nop             
  addq %r15, %r11                                                           #  77    0x64cab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  78    0x64cae  3      OPC=jmpq_r64        
  nop                                                                       #  79    0x64cb1  1      OPC=nop             
  nop                                                                       #  80    0x64cb2  1      OPC=nop             
  nop                                                                       #  81    0x64cb3  1      OPC=nop             
  nop                                                                       #  82    0x64cb4  1      OPC=nop             
  nop                                                                       #  83    0x64cb5  1      OPC=nop             
  nop                                                                       #  84    0x64cb6  1      OPC=nop             
  nop                                                                       #  85    0x64cb7  1      OPC=nop             
  nop                                                                       #  86    0x64cb8  1      OPC=nop             
  nop                                                                       #  87    0x64cb9  1      OPC=nop             
  nop                                                                       #  88    0x64cba  1      OPC=nop             
  nop                                                                       #  89    0x64cbb  1      OPC=nop             
  nop                                                                       #  90    0x64cbc  1      OPC=nop             
  nop                                                                       #  91    0x64cbd  1      OPC=nop             
  nop                                                                       #  92    0x64cbe  1      OPC=nop             
  nop                                                                       #  93    0x64cbf  1      OPC=nop             
  nop                                                                       #  94    0x64cc0  1      OPC=nop             
  nop                                                                       #  95    0x64cc1  1      OPC=nop             
  nop                                                                       #  96    0x64cc2  1      OPC=nop             
  nop                                                                       #  97    0x64cc3  1      OPC=nop             
  nop                                                                       #  98    0x64cc4  1      OPC=nop             
  nop                                                                       #  99    0x64cc5  1      OPC=nop             
  nop                                                                       #  100   0x64cc6  1      OPC=nop             
                                                                                                                         
.size _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E, .-_ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E

