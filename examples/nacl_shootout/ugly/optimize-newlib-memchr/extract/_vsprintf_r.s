  .text
  .globl _vsprintf_r
  .type _vsprintf_r, @function

#! file-offset 0x181240
#! rip-offset  0x141240
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._vsprintf_r:                   #        0x141240  0      OPC=<label>         
  subl $0x88, %esp              #  1     0x141240  6      OPC=subl_r32_imm32  
  addq %r15, %rsp               #  2     0x141246  3      OPC=addq_r64_r64    
  movl %esi, %esi               #  3     0x141249  2      OPC=movl_r32_r32    
  movl %edx, %edx               #  4     0x14124b  2      OPC=movl_r32_r32    
  movl %esi, (%rsp)             #  5     0x14124d  3      OPC=movl_m32_r32    
  movl %esi, 0x10(%rsp)         #  6     0x141250  4      OPC=movl_m32_r32    
  movl %edi, %edi               #  7     0x141254  2      OPC=movl_r32_r32    
  movl %esp, %esi               #  8     0x141256  2      OPC=movl_r32_r32    
  movl %ecx, %ecx               #  9     0x141258  2      OPC=movl_r32_r32    
  nop                           #  10    0x14125a  1      OPC=nop             
  nop                           #  11    0x14125b  1      OPC=nop             
  nop                           #  12    0x14125c  1      OPC=nop             
  nop                           #  13    0x14125d  1      OPC=nop             
  nop                           #  14    0x14125e  1      OPC=nop             
  nop                           #  15    0x14125f  1      OPC=nop             
  movw $0x208, 0xc(%rsp)        #  16    0x141260  7      OPC=movw_m16_imm16  
  movl $0x7fffffff, 0x8(%rsp)   #  17    0x141267  8      OPC=movl_m32_imm32  
  movl $0x7fffffff, 0x14(%rsp)  #  18    0x14126f  8      OPC=movl_m32_imm32  
  movw $0xffff, 0xe(%rsp)       #  19    0x141277  7      OPC=movw_m16_imm16  
  xchgw %ax, %ax                #  20    0x14127e  2      OPC=xchgw_ax_r16    
  nop                           #  21    0x141280  1      OPC=nop             
  nop                           #  22    0x141281  1      OPC=nop             
  nop                           #  23    0x141282  1      OPC=nop             
  nop                           #  24    0x141283  1      OPC=nop             
  nop                           #  25    0x141284  1      OPC=nop             
  nop                           #  26    0x141285  1      OPC=nop             
  nop                           #  27    0x141286  1      OPC=nop             
  nop                           #  28    0x141287  1      OPC=nop             
  nop                           #  29    0x141288  1      OPC=nop             
  nop                           #  30    0x141289  1      OPC=nop             
  nop                           #  31    0x14128a  1      OPC=nop             
  nop                           #  32    0x14128b  1      OPC=nop             
  nop                           #  33    0x14128c  1      OPC=nop             
  nop                           #  34    0x14128d  1      OPC=nop             
  nop                           #  35    0x14128e  1      OPC=nop             
  nop                           #  36    0x14128f  1      OPC=nop             
  nop                           #  37    0x141290  1      OPC=nop             
  nop                           #  38    0x141291  1      OPC=nop             
  nop                           #  39    0x141292  1      OPC=nop             
  nop                           #  40    0x141293  1      OPC=nop             
  nop                           #  41    0x141294  1      OPC=nop             
  nop                           #  42    0x141295  1      OPC=nop             
  nop                           #  43    0x141296  1      OPC=nop             
  nop                           #  44    0x141297  1      OPC=nop             
  nop                           #  45    0x141298  1      OPC=nop             
  nop                           #  46    0x141299  1      OPC=nop             
  nop                           #  47    0x14129a  1      OPC=nop             
  callq ._svfprintf_r           #  48    0x14129b  5      OPC=callq_label     
  movl (%rsp), %edx             #  49    0x1412a0  3      OPC=movl_r32_m32    
  movl %edx, %edx               #  50    0x1412a3  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rdx,1)      #  51    0x1412a5  5      OPC=movb_m8_imm8    
  addl $0x88, %esp              #  52    0x1412aa  6      OPC=addl_r32_imm32  
  addq %r15, %rsp               #  53    0x1412b0  3      OPC=addq_r64_r64    
  popq %r11                     #  54    0x1412b3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  55    0x1412b5  7      OPC=andl_r32_imm32  
  nop                           #  56    0x1412bc  1      OPC=nop             
  nop                           #  57    0x1412bd  1      OPC=nop             
  nop                           #  58    0x1412be  1      OPC=nop             
  nop                           #  59    0x1412bf  1      OPC=nop             
  addq %r15, %r11               #  60    0x1412c0  3      OPC=addq_r64_r64    
  jmpq %r11                     #  61    0x1412c3  3      OPC=jmpq_r64        
  nop                           #  62    0x1412c6  1      OPC=nop             
                                                                              
.size _vsprintf_r, .-_vsprintf_r

