  .text
  .globl _vsprintf_r
  .type _vsprintf_r, @function

#! file-offset 0x180820
#! rip-offset  0x140820
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._vsprintf_r:                   #        0x140820  0      OPC=<label>         
  subl $0x88, %esp              #  1     0x140820  6      OPC=subl_r32_imm32  
  addq %r15, %rsp               #  2     0x140826  3      OPC=addq_r64_r64    
  movl %esi, %esi               #  3     0x140829  2      OPC=movl_r32_r32    
  movl %edx, %edx               #  4     0x14082b  2      OPC=movl_r32_r32    
  movl %esi, (%rsp)             #  5     0x14082d  3      OPC=movl_m32_r32    
  movl %esi, 0x10(%rsp)         #  6     0x140830  4      OPC=movl_m32_r32    
  movl %edi, %edi               #  7     0x140834  2      OPC=movl_r32_r32    
  movl %esp, %esi               #  8     0x140836  2      OPC=movl_r32_r32    
  movl %ecx, %ecx               #  9     0x140838  2      OPC=movl_r32_r32    
  nop                           #  10    0x14083a  1      OPC=nop             
  nop                           #  11    0x14083b  1      OPC=nop             
  nop                           #  12    0x14083c  1      OPC=nop             
  nop                           #  13    0x14083d  1      OPC=nop             
  nop                           #  14    0x14083e  1      OPC=nop             
  nop                           #  15    0x14083f  1      OPC=nop             
  movw $0x208, 0xc(%rsp)        #  16    0x140840  7      OPC=movw_m16_imm16  
  movl $0x7fffffff, 0x8(%rsp)   #  17    0x140847  8      OPC=movl_m32_imm32  
  movl $0x7fffffff, 0x14(%rsp)  #  18    0x14084f  8      OPC=movl_m32_imm32  
  movw $0xffff, 0xe(%rsp)       #  19    0x140857  7      OPC=movw_m16_imm16  
  xchgw %ax, %ax                #  20    0x14085e  2      OPC=xchgw_ax_r16    
  nop                           #  21    0x140860  1      OPC=nop             
  nop                           #  22    0x140861  1      OPC=nop             
  nop                           #  23    0x140862  1      OPC=nop             
  nop                           #  24    0x140863  1      OPC=nop             
  nop                           #  25    0x140864  1      OPC=nop             
  nop                           #  26    0x140865  1      OPC=nop             
  nop                           #  27    0x140866  1      OPC=nop             
  nop                           #  28    0x140867  1      OPC=nop             
  nop                           #  29    0x140868  1      OPC=nop             
  nop                           #  30    0x140869  1      OPC=nop             
  nop                           #  31    0x14086a  1      OPC=nop             
  nop                           #  32    0x14086b  1      OPC=nop             
  nop                           #  33    0x14086c  1      OPC=nop             
  nop                           #  34    0x14086d  1      OPC=nop             
  nop                           #  35    0x14086e  1      OPC=nop             
  nop                           #  36    0x14086f  1      OPC=nop             
  nop                           #  37    0x140870  1      OPC=nop             
  nop                           #  38    0x140871  1      OPC=nop             
  nop                           #  39    0x140872  1      OPC=nop             
  nop                           #  40    0x140873  1      OPC=nop             
  nop                           #  41    0x140874  1      OPC=nop             
  nop                           #  42    0x140875  1      OPC=nop             
  nop                           #  43    0x140876  1      OPC=nop             
  nop                           #  44    0x140877  1      OPC=nop             
  nop                           #  45    0x140878  1      OPC=nop             
  nop                           #  46    0x140879  1      OPC=nop             
  nop                           #  47    0x14087a  1      OPC=nop             
  callq ._svfprintf_r           #  48    0x14087b  5      OPC=callq_label     
  movl (%rsp), %edx             #  49    0x140880  3      OPC=movl_r32_m32    
  movl %edx, %edx               #  50    0x140883  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rdx,1)      #  51    0x140885  5      OPC=movb_m8_imm8    
  addl $0x88, %esp              #  52    0x14088a  6      OPC=addl_r32_imm32  
  addq %r15, %rsp               #  53    0x140890  3      OPC=addq_r64_r64    
  popq %r11                     #  54    0x140893  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  55    0x140895  7      OPC=andl_r32_imm32  
  nop                           #  56    0x14089c  1      OPC=nop             
  nop                           #  57    0x14089d  1      OPC=nop             
  nop                           #  58    0x14089e  1      OPC=nop             
  nop                           #  59    0x14089f  1      OPC=nop             
  addq %r15, %r11               #  60    0x1408a0  3      OPC=addq_r64_r64    
  jmpq %r11                     #  61    0x1408a3  3      OPC=jmpq_r64        
  nop                           #  62    0x1408a6  1      OPC=nop             
                                                                              
.size _vsprintf_r, .-_vsprintf_r

