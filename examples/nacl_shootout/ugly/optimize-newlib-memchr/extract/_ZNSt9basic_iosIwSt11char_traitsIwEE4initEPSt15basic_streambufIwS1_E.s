  .text
  .globl _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E
  .type _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa5620
#! rip-offset  0x65620
#! capacity    192 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E:      #        0x65620  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                    #  1     0x65620  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                           #  2     0x65625  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                     #  3     0x65627  5      OPC=movq_m64_r64    
  movl %ebx, %edi                                                           #  4     0x6562c  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                          #  5     0x6562e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                           #  6     0x65631  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                                          #  7     0x65634  3      OPC=movl_r32_r32    
  nop                                                                       #  8     0x65637  1      OPC=nop             
  nop                                                                       #  9     0x65638  1      OPC=nop             
  nop                                                                       #  10    0x65639  1      OPC=nop             
  nop                                                                       #  11    0x6563a  1      OPC=nop             
  callq ._ZNSt8ios_base7_M_initEv                                           #  12    0x6563b  5      OPC=callq_label     
  leal 0x6c(%rbx), %esi                                                     #  13    0x65640  3      OPC=leal_r32_m16    
  movl %ebx, %edi                                                           #  14    0x65643  2      OPC=movl_r32_r32    
  nop                                                                       #  15    0x65645  1      OPC=nop             
  nop                                                                       #  16    0x65646  1      OPC=nop             
  nop                                                                       #  17    0x65647  1      OPC=nop             
  nop                                                                       #  18    0x65648  1      OPC=nop             
  nop                                                                       #  19    0x65649  1      OPC=nop             
  nop                                                                       #  20    0x6564a  1      OPC=nop             
  nop                                                                       #  21    0x6564b  1      OPC=nop             
  nop                                                                       #  22    0x6564c  1      OPC=nop             
  nop                                                                       #  23    0x6564d  1      OPC=nop             
  nop                                                                       #  24    0x6564e  1      OPC=nop             
  nop                                                                       #  25    0x6564f  1      OPC=nop             
  nop                                                                       #  26    0x65650  1      OPC=nop             
  nop                                                                       #  27    0x65651  1      OPC=nop             
  nop                                                                       #  28    0x65652  1      OPC=nop             
  nop                                                                       #  29    0x65653  1      OPC=nop             
  nop                                                                       #  30    0x65654  1      OPC=nop             
  nop                                                                       #  31    0x65655  1      OPC=nop             
  nop                                                                       #  32    0x65656  1      OPC=nop             
  nop                                                                       #  33    0x65657  1      OPC=nop             
  nop                                                                       #  34    0x65658  1      OPC=nop             
  nop                                                                       #  35    0x65659  1      OPC=nop             
  nop                                                                       #  36    0x6565a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE15_M_cache_localeERKSt6locale  #  37    0x6565b  5      OPC=callq_label     
  xorl %eax, %eax                                                           #  38    0x65660  2      OPC=xorl_r32_r32    
  testl %r12d, %r12d                                                        #  39    0x65662  3      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                           #  40    0x65665  2      OPC=movl_r32_r32    
  movl %r12d, 0x7c(%r15,%rbx,1)                                             #  41    0x65667  5      OPC=movl_m32_r32    
  sete %al                                                                  #  42    0x6566c  3      OPC=sete_r8         
  movl %ebx, %ebx                                                           #  43    0x6566f  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)                                              #  44    0x65671  9      OPC=movl_m32_imm32  
  nop                                                                       #  45    0x6567a  1      OPC=nop             
  nop                                                                       #  46    0x6567b  1      OPC=nop             
  nop                                                                       #  47    0x6567c  1      OPC=nop             
  nop                                                                       #  48    0x6567d  1      OPC=nop             
  nop                                                                       #  49    0x6567e  1      OPC=nop             
  nop                                                                       #  50    0x6567f  1      OPC=nop             
  movl %ebx, %ebx                                                           #  51    0x65680  2      OPC=movl_r32_r32    
  movb $0x0, 0x78(%r15,%rbx,1)                                              #  52    0x65682  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  53    0x65688  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                              #  54    0x6568a  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                           #  55    0x65693  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rbx,1)                                              #  56    0x65695  9      OPC=movl_m32_imm32  
  xchgw %ax, %ax                                                            #  57    0x6569e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                                           #  58    0x656a0  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rbx,1)                                              #  59    0x656a2  5      OPC=movl_m32_r32    
  movq 0x10(%rsp), %r12                                                     #  60    0x656a7  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                      #  61    0x656ac  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                          #  62    0x656b1  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                           #  63    0x656b4  3      OPC=addq_r64_r64    
  popq %r11                                                                 #  64    0x656b7  2      OPC=popq_r64_1      
  nop                                                                       #  65    0x656b9  1      OPC=nop             
  nop                                                                       #  66    0x656ba  1      OPC=nop             
  nop                                                                       #  67    0x656bb  1      OPC=nop             
  nop                                                                       #  68    0x656bc  1      OPC=nop             
  nop                                                                       #  69    0x656bd  1      OPC=nop             
  nop                                                                       #  70    0x656be  1      OPC=nop             
  nop                                                                       #  71    0x656bf  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                   #  72    0x656c0  7      OPC=andl_r32_imm32  
  nop                                                                       #  73    0x656c7  1      OPC=nop             
  nop                                                                       #  74    0x656c8  1      OPC=nop             
  nop                                                                       #  75    0x656c9  1      OPC=nop             
  nop                                                                       #  76    0x656ca  1      OPC=nop             
  addq %r15, %r11                                                           #  77    0x656cb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  78    0x656ce  3      OPC=jmpq_r64        
  nop                                                                       #  79    0x656d1  1      OPC=nop             
  nop                                                                       #  80    0x656d2  1      OPC=nop             
  nop                                                                       #  81    0x656d3  1      OPC=nop             
  nop                                                                       #  82    0x656d4  1      OPC=nop             
  nop                                                                       #  83    0x656d5  1      OPC=nop             
  nop                                                                       #  84    0x656d6  1      OPC=nop             
  nop                                                                       #  85    0x656d7  1      OPC=nop             
  nop                                                                       #  86    0x656d8  1      OPC=nop             
  nop                                                                       #  87    0x656d9  1      OPC=nop             
  nop                                                                       #  88    0x656da  1      OPC=nop             
  nop                                                                       #  89    0x656db  1      OPC=nop             
  nop                                                                       #  90    0x656dc  1      OPC=nop             
  nop                                                                       #  91    0x656dd  1      OPC=nop             
  nop                                                                       #  92    0x656de  1      OPC=nop             
  nop                                                                       #  93    0x656df  1      OPC=nop             
  nop                                                                       #  94    0x656e0  1      OPC=nop             
  nop                                                                       #  95    0x656e1  1      OPC=nop             
  nop                                                                       #  96    0x656e2  1      OPC=nop             
  nop                                                                       #  97    0x656e3  1      OPC=nop             
  nop                                                                       #  98    0x656e4  1      OPC=nop             
  nop                                                                       #  99    0x656e5  1      OPC=nop             
  nop                                                                       #  100   0x656e6  1      OPC=nop             
                                                                                                                         
.size _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E, .-_ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E

