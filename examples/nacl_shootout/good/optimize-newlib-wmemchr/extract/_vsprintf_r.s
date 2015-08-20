  .text
  .globl _vsprintf_r
  .type _vsprintf_r, @function

#! file-offset 0x180b20
#! rip-offset  0x140b20
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._vsprintf_r:                   #        0x140b20  0      OPC=<label>         
  subl $0x88, %esp              #  1     0x140b20  6      OPC=subl_r32_imm32  
  addq %r15, %rsp               #  2     0x140b26  3      OPC=addq_r64_r64    
  movl %esi, %esi               #  3     0x140b29  2      OPC=movl_r32_r32    
  movl %edx, %edx               #  4     0x140b2b  2      OPC=movl_r32_r32    
  movl %esi, (%rsp)             #  5     0x140b2d  3      OPC=movl_m32_r32    
  movl %esi, 0x10(%rsp)         #  6     0x140b30  4      OPC=movl_m32_r32    
  movl %edi, %edi               #  7     0x140b34  2      OPC=movl_r32_r32    
  movl %esp, %esi               #  8     0x140b36  2      OPC=movl_r32_r32    
  movl %ecx, %ecx               #  9     0x140b38  2      OPC=movl_r32_r32    
  nop                           #  10    0x140b3a  1      OPC=nop             
  nop                           #  11    0x140b3b  1      OPC=nop             
  nop                           #  12    0x140b3c  1      OPC=nop             
  nop                           #  13    0x140b3d  1      OPC=nop             
  nop                           #  14    0x140b3e  1      OPC=nop             
  nop                           #  15    0x140b3f  1      OPC=nop             
  movw $0x208, 0xc(%rsp)        #  16    0x140b40  7      OPC=movw_m16_imm16  
  movl $0x7fffffff, 0x8(%rsp)   #  17    0x140b47  8      OPC=movl_m32_imm32  
  movl $0x7fffffff, 0x14(%rsp)  #  18    0x140b4f  8      OPC=movl_m32_imm32  
  movw $0xffff, 0xe(%rsp)       #  19    0x140b57  7      OPC=movw_m16_imm16  
  xchgw %ax, %ax                #  20    0x140b5e  2      OPC=xchgw_ax_r16    
  nop                           #  21    0x140b60  1      OPC=nop             
  nop                           #  22    0x140b61  1      OPC=nop             
  nop                           #  23    0x140b62  1      OPC=nop             
  nop                           #  24    0x140b63  1      OPC=nop             
  nop                           #  25    0x140b64  1      OPC=nop             
  nop                           #  26    0x140b65  1      OPC=nop             
  nop                           #  27    0x140b66  1      OPC=nop             
  nop                           #  28    0x140b67  1      OPC=nop             
  nop                           #  29    0x140b68  1      OPC=nop             
  nop                           #  30    0x140b69  1      OPC=nop             
  nop                           #  31    0x140b6a  1      OPC=nop             
  nop                           #  32    0x140b6b  1      OPC=nop             
  nop                           #  33    0x140b6c  1      OPC=nop             
  nop                           #  34    0x140b6d  1      OPC=nop             
  nop                           #  35    0x140b6e  1      OPC=nop             
  nop                           #  36    0x140b6f  1      OPC=nop             
  nop                           #  37    0x140b70  1      OPC=nop             
  nop                           #  38    0x140b71  1      OPC=nop             
  nop                           #  39    0x140b72  1      OPC=nop             
  nop                           #  40    0x140b73  1      OPC=nop             
  nop                           #  41    0x140b74  1      OPC=nop             
  nop                           #  42    0x140b75  1      OPC=nop             
  nop                           #  43    0x140b76  1      OPC=nop             
  nop                           #  44    0x140b77  1      OPC=nop             
  nop                           #  45    0x140b78  1      OPC=nop             
  nop                           #  46    0x140b79  1      OPC=nop             
  nop                           #  47    0x140b7a  1      OPC=nop             
  callq ._svfprintf_r           #  48    0x140b7b  5      OPC=callq_label     
  movl (%rsp), %edx             #  49    0x140b80  3      OPC=movl_r32_m32    
  movl %edx, %edx               #  50    0x140b83  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rdx,1)      #  51    0x140b85  5      OPC=movb_m8_imm8    
  addl $0x88, %esp              #  52    0x140b8a  6      OPC=addl_r32_imm32  
  addq %r15, %rsp               #  53    0x140b90  3      OPC=addq_r64_r64    
  popq %r11                     #  54    0x140b93  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  55    0x140b95  7      OPC=andl_r32_imm32  
  nop                           #  56    0x140b9c  1      OPC=nop             
  nop                           #  57    0x140b9d  1      OPC=nop             
  nop                           #  58    0x140b9e  1      OPC=nop             
  nop                           #  59    0x140b9f  1      OPC=nop             
  addq %r15, %r11               #  60    0x140ba0  3      OPC=addq_r64_r64    
  jmpq %r11                     #  61    0x140ba3  3      OPC=jmpq_r64        
  nop                           #  62    0x140ba6  1      OPC=nop             
                                                                              
.size _vsprintf_r, .-_vsprintf_r

