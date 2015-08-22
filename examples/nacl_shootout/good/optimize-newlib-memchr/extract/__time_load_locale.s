  .text
  .globl __time_load_locale
  .type __time_load_locale, @function

#! file-offset 0x1750c0
#! rip-offset  0x1350c0
#! capacity    96 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__time_load_locale:          #        0x1350c0  0      OPC=<label>         
  subl $0x18, %esp            #  1     0x1350c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  2     0x1350c3  3      OPC=addq_r64_r64    
  movl 0xff44094(%rip), %edx  #  3     0x1350c6  6      OPC=movl_r32_m32    
  movl %edi, %edi             #  4     0x1350cc  2      OPC=movl_r32_r32    
  movl $0x3f, %r9d            #  5     0x1350ce  6      OPC=movl_r32_imm32  
  movl $0x3f, %r8d            #  6     0x1350d4  6      OPC=movl_r32_imm32  
  movl $0x1003cfa8, %ecx      #  7     0x1350da  5      OPC=movl_r32_imm32  
  nop                         #  8     0x1350df  1      OPC=nop             
  movl $0x1007915c, %esi      #  9     0x1350e0  5      OPC=movl_r32_imm32  
  movl $0x10079060, (%rsp)    #  10    0x1350e5  7      OPC=movl_m32_imm32  
  nop                         #  11    0x1350ec  1      OPC=nop             
  nop                         #  12    0x1350ed  1      OPC=nop             
  nop                         #  13    0x1350ee  1      OPC=nop             
  nop                         #  14    0x1350ef  1      OPC=nop             
  nop                         #  15    0x1350f0  1      OPC=nop             
  nop                         #  16    0x1350f1  1      OPC=nop             
  nop                         #  17    0x1350f2  1      OPC=nop             
  nop                         #  18    0x1350f3  1      OPC=nop             
  nop                         #  19    0x1350f4  1      OPC=nop             
  nop                         #  20    0x1350f5  1      OPC=nop             
  nop                         #  21    0x1350f6  1      OPC=nop             
  nop                         #  22    0x1350f7  1      OPC=nop             
  nop                         #  23    0x1350f8  1      OPC=nop             
  nop                         #  24    0x1350f9  1      OPC=nop             
  nop                         #  25    0x1350fa  1      OPC=nop             
  callq .__part_load_locale   #  26    0x1350fb  5      OPC=callq_label     
  addl $0x18, %esp            #  27    0x135100  3      OPC=addl_r32_imm8   
  addq %r15, %rsp             #  28    0x135103  3      OPC=addq_r64_r64    
  popq %r11                   #  29    0x135106  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  30    0x135108  7      OPC=andl_r32_imm32  
  nop                         #  31    0x13510f  1      OPC=nop             
  nop                         #  32    0x135110  1      OPC=nop             
  nop                         #  33    0x135111  1      OPC=nop             
  nop                         #  34    0x135112  1      OPC=nop             
  addq %r15, %r11             #  35    0x135113  3      OPC=addq_r64_r64    
  jmpq %r11                   #  36    0x135116  3      OPC=jmpq_r64        
  nop                         #  37    0x135119  1      OPC=nop             
  nop                         #  38    0x13511a  1      OPC=nop             
  nop                         #  39    0x13511b  1      OPC=nop             
  nop                         #  40    0x13511c  1      OPC=nop             
  nop                         #  41    0x13511d  1      OPC=nop             
  nop                         #  42    0x13511e  1      OPC=nop             
  nop                         #  43    0x13511f  1      OPC=nop             
  nop                         #  44    0x135120  1      OPC=nop             
  nop                         #  45    0x135121  1      OPC=nop             
  nop                         #  46    0x135122  1      OPC=nop             
  nop                         #  47    0x135123  1      OPC=nop             
  nop                         #  48    0x135124  1      OPC=nop             
  nop                         #  49    0x135125  1      OPC=nop             
  nop                         #  50    0x135126  1      OPC=nop             
                                                                            
.size __time_load_locale, .-__time_load_locale

