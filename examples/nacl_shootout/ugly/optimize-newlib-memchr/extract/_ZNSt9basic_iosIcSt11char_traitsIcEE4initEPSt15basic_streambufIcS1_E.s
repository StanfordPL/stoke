  .text
  .globl _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
  .type _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E, @function

#! file-offset 0xa64c0
#! rip-offset  0x664c0
#! capacity    160 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E:      #        0x664c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                    #  1     0x664c0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                           #  2     0x664c5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                     #  3     0x664c7  5      OPC=movq_m64_r64    
  movl %ebx, %edi                                                           #  4     0x664cc  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                          #  5     0x664ce  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                           #  6     0x664d1  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                                          #  7     0x664d4  3      OPC=movl_r32_r32    
  nop                                                                       #  8     0x664d7  1      OPC=nop             
  nop                                                                       #  9     0x664d8  1      OPC=nop             
  nop                                                                       #  10    0x664d9  1      OPC=nop             
  nop                                                                       #  11    0x664da  1      OPC=nop             
  callq ._ZNSt8ios_base7_M_initEv                                           #  12    0x664db  5      OPC=callq_label     
  leal 0x6c(%rbx), %esi                                                     #  13    0x664e0  3      OPC=leal_r32_m16    
  movl %ebx, %edi                                                           #  14    0x664e3  2      OPC=movl_r32_r32    
  nop                                                                       #  15    0x664e5  1      OPC=nop             
  nop                                                                       #  16    0x664e6  1      OPC=nop             
  nop                                                                       #  17    0x664e7  1      OPC=nop             
  nop                                                                       #  18    0x664e8  1      OPC=nop             
  nop                                                                       #  19    0x664e9  1      OPC=nop             
  nop                                                                       #  20    0x664ea  1      OPC=nop             
  nop                                                                       #  21    0x664eb  1      OPC=nop             
  nop                                                                       #  22    0x664ec  1      OPC=nop             
  nop                                                                       #  23    0x664ed  1      OPC=nop             
  nop                                                                       #  24    0x664ee  1      OPC=nop             
  nop                                                                       #  25    0x664ef  1      OPC=nop             
  nop                                                                       #  26    0x664f0  1      OPC=nop             
  nop                                                                       #  27    0x664f1  1      OPC=nop             
  nop                                                                       #  28    0x664f2  1      OPC=nop             
  nop                                                                       #  29    0x664f3  1      OPC=nop             
  nop                                                                       #  30    0x664f4  1      OPC=nop             
  nop                                                                       #  31    0x664f5  1      OPC=nop             
  nop                                                                       #  32    0x664f6  1      OPC=nop             
  nop                                                                       #  33    0x664f7  1      OPC=nop             
  nop                                                                       #  34    0x664f8  1      OPC=nop             
  nop                                                                       #  35    0x664f9  1      OPC=nop             
  nop                                                                       #  36    0x664fa  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE15_M_cache_localeERKSt6locale  #  37    0x664fb  5      OPC=callq_label     
  xorl %eax, %eax                                                           #  38    0x66500  2      OPC=xorl_r32_r32    
  testl %r12d, %r12d                                                        #  39    0x66502  3      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                           #  40    0x66505  2      OPC=movl_r32_r32    
  movl %r12d, 0x78(%r15,%rbx,1)                                             #  41    0x66507  5      OPC=movl_m32_r32    
  sete %al                                                                  #  42    0x6650c  3      OPC=sete_r8         
  movl %ebx, %ebx                                                           #  43    0x6650f  2      OPC=movl_r32_r32    
  movb $0x0, 0x74(%r15,%rbx,1)                                              #  44    0x66511  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  45    0x66517  2      OPC=movl_r32_r32    
  movb $0x0, 0x75(%r15,%rbx,1)                                              #  46    0x66519  6      OPC=movb_m8_imm8    
  nop                                                                       #  47    0x6651f  1      OPC=nop             
  movl %ebx, %ebx                                                           #  48    0x66520  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                              #  49    0x66522  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                           #  50    0x6652b  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rbx,1)                                              #  51    0x6652d  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                           #  52    0x66536  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rbx,1)                                              #  53    0x66538  5      OPC=movl_m32_r32    
  nop                                                                       #  54    0x6653d  1      OPC=nop             
  nop                                                                       #  55    0x6653e  1      OPC=nop             
  nop                                                                       #  56    0x6653f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                     #  57    0x66540  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                      #  58    0x66545  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                          #  59    0x6654a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                           #  60    0x6654d  3      OPC=addq_r64_r64    
  popq %r11                                                                 #  61    0x66550  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                   #  62    0x66552  7      OPC=andl_r32_imm32  
  nop                                                                       #  63    0x66559  1      OPC=nop             
  nop                                                                       #  64    0x6655a  1      OPC=nop             
  nop                                                                       #  65    0x6655b  1      OPC=nop             
  nop                                                                       #  66    0x6655c  1      OPC=nop             
  addq %r15, %r11                                                           #  67    0x6655d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  68    0x66560  3      OPC=jmpq_r64        
  nop                                                                       #  69    0x66563  1      OPC=nop             
  nop                                                                       #  70    0x66564  1      OPC=nop             
  nop                                                                       #  71    0x66565  1      OPC=nop             
  nop                                                                       #  72    0x66566  1      OPC=nop             
                                                                                                                         
.size _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E, .-_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E

