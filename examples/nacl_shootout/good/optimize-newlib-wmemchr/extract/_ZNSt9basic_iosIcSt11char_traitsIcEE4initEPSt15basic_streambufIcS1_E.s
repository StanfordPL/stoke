  .text
  .globl _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
  .type _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E, @function

#! file-offset 0xa5da0
#! rip-offset  0x65da0
#! capacity    160 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E:      #        0x65da0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                    #  1     0x65da0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                           #  2     0x65da5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                     #  3     0x65da7  5      OPC=movq_m64_r64    
  movl %ebx, %edi                                                           #  4     0x65dac  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                          #  5     0x65dae  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                           #  6     0x65db1  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                                          #  7     0x65db4  3      OPC=movl_r32_r32    
  nop                                                                       #  8     0x65db7  1      OPC=nop             
  nop                                                                       #  9     0x65db8  1      OPC=nop             
  nop                                                                       #  10    0x65db9  1      OPC=nop             
  nop                                                                       #  11    0x65dba  1      OPC=nop             
  callq ._ZNSt8ios_base7_M_initEv                                           #  12    0x65dbb  5      OPC=callq_label     
  leal 0x6c(%rbx), %esi                                                     #  13    0x65dc0  3      OPC=leal_r32_m16    
  movl %ebx, %edi                                                           #  14    0x65dc3  2      OPC=movl_r32_r32    
  nop                                                                       #  15    0x65dc5  1      OPC=nop             
  nop                                                                       #  16    0x65dc6  1      OPC=nop             
  nop                                                                       #  17    0x65dc7  1      OPC=nop             
  nop                                                                       #  18    0x65dc8  1      OPC=nop             
  nop                                                                       #  19    0x65dc9  1      OPC=nop             
  nop                                                                       #  20    0x65dca  1      OPC=nop             
  nop                                                                       #  21    0x65dcb  1      OPC=nop             
  nop                                                                       #  22    0x65dcc  1      OPC=nop             
  nop                                                                       #  23    0x65dcd  1      OPC=nop             
  nop                                                                       #  24    0x65dce  1      OPC=nop             
  nop                                                                       #  25    0x65dcf  1      OPC=nop             
  nop                                                                       #  26    0x65dd0  1      OPC=nop             
  nop                                                                       #  27    0x65dd1  1      OPC=nop             
  nop                                                                       #  28    0x65dd2  1      OPC=nop             
  nop                                                                       #  29    0x65dd3  1      OPC=nop             
  nop                                                                       #  30    0x65dd4  1      OPC=nop             
  nop                                                                       #  31    0x65dd5  1      OPC=nop             
  nop                                                                       #  32    0x65dd6  1      OPC=nop             
  nop                                                                       #  33    0x65dd7  1      OPC=nop             
  nop                                                                       #  34    0x65dd8  1      OPC=nop             
  nop                                                                       #  35    0x65dd9  1      OPC=nop             
  nop                                                                       #  36    0x65dda  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE15_M_cache_localeERKSt6locale  #  37    0x65ddb  5      OPC=callq_label     
  xorl %eax, %eax                                                           #  38    0x65de0  2      OPC=xorl_r32_r32    
  testl %r12d, %r12d                                                        #  39    0x65de2  3      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                           #  40    0x65de5  2      OPC=movl_r32_r32    
  movl %r12d, 0x78(%r15,%rbx,1)                                             #  41    0x65de7  5      OPC=movl_m32_r32    
  sete %al                                                                  #  42    0x65dec  3      OPC=sete_r8         
  movl %ebx, %ebx                                                           #  43    0x65def  2      OPC=movl_r32_r32    
  movb $0x0, 0x74(%r15,%rbx,1)                                              #  44    0x65df1  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  45    0x65df7  2      OPC=movl_r32_r32    
  movb $0x0, 0x75(%r15,%rbx,1)                                              #  46    0x65df9  6      OPC=movb_m8_imm8    
  nop                                                                       #  47    0x65dff  1      OPC=nop             
  movl %ebx, %ebx                                                           #  48    0x65e00  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                              #  49    0x65e02  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                           #  50    0x65e0b  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rbx,1)                                              #  51    0x65e0d  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                           #  52    0x65e16  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rbx,1)                                              #  53    0x65e18  5      OPC=movl_m32_r32    
  nop                                                                       #  54    0x65e1d  1      OPC=nop             
  nop                                                                       #  55    0x65e1e  1      OPC=nop             
  nop                                                                       #  56    0x65e1f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                     #  57    0x65e20  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                      #  58    0x65e25  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                          #  59    0x65e2a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                           #  60    0x65e2d  3      OPC=addq_r64_r64    
  popq %r11                                                                 #  61    0x65e30  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                   #  62    0x65e32  7      OPC=andl_r32_imm32  
  nop                                                                       #  63    0x65e39  1      OPC=nop             
  nop                                                                       #  64    0x65e3a  1      OPC=nop             
  nop                                                                       #  65    0x65e3b  1      OPC=nop             
  nop                                                                       #  66    0x65e3c  1      OPC=nop             
  addq %r15, %r11                                                           #  67    0x65e3d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  68    0x65e40  3      OPC=jmpq_r64        
  nop                                                                       #  69    0x65e43  1      OPC=nop             
  nop                                                                       #  70    0x65e44  1      OPC=nop             
  nop                                                                       #  71    0x65e45  1      OPC=nop             
  nop                                                                       #  72    0x65e46  1      OPC=nop             
                                                                                                                         
.size _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E, .-_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E

