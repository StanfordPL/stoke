  .text
  .globl __i2b
  .type __i2b, @function

#! file-offset 0x18bee0
#! rip-offset  0x14bee0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__i2b:                         #        0x14bee0  0      OPC=<label>         
  pushq %rbx                    #  1     0x14bee0  1      OPC=pushq_r64_1     
  movl %edi, %edi               #  2     0x14bee1  2      OPC=movl_r32_r32    
  movl %esi, %ebx               #  3     0x14bee3  2      OPC=movl_r32_r32    
  movl $0x1, %esi               #  4     0x14bee5  5      OPC=movl_r32_imm32  
  xchgw %ax, %ax                #  5     0x14beea  2      OPC=xchgw_ax_r16    
  nop                           #  6     0x14beec  1      OPC=nop             
  nop                           #  7     0x14beed  1      OPC=nop             
  nop                           #  8     0x14beee  1      OPC=nop             
  nop                           #  9     0x14beef  1      OPC=nop             
  nop                           #  10    0x14bef0  1      OPC=nop             
  nop                           #  11    0x14bef1  1      OPC=nop             
  nop                           #  12    0x14bef2  1      OPC=nop             
  nop                           #  13    0x14bef3  1      OPC=nop             
  nop                           #  14    0x14bef4  1      OPC=nop             
  nop                           #  15    0x14bef5  1      OPC=nop             
  nop                           #  16    0x14bef6  1      OPC=nop             
  nop                           #  17    0x14bef7  1      OPC=nop             
  nop                           #  18    0x14bef8  1      OPC=nop             
  nop                           #  19    0x14bef9  1      OPC=nop             
  nop                           #  20    0x14befa  1      OPC=nop             
  callq ._Balloc                #  21    0x14befb  5      OPC=callq_label     
  movl %eax, %eax               #  22    0x14bf00  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  23    0x14bf02  2      OPC=movl_r32_r32    
  movl %ebx, 0x14(%r15,%rax,1)  #  24    0x14bf04  5      OPC=movl_m32_r32    
  movl %eax, %eax               #  25    0x14bf09  2      OPC=movl_r32_r32    
  movl $0x1, 0x10(%r15,%rax,1)  #  26    0x14bf0b  9      OPC=movl_m32_imm32  
  popq %rbx                     #  27    0x14bf14  1      OPC=popq_r64_1      
  popq %r11                     #  28    0x14bf15  2      OPC=popq_r64_1      
  nop                           #  29    0x14bf17  1      OPC=nop             
  nop                           #  30    0x14bf18  1      OPC=nop             
  nop                           #  31    0x14bf19  1      OPC=nop             
  nop                           #  32    0x14bf1a  1      OPC=nop             
  nop                           #  33    0x14bf1b  1      OPC=nop             
  nop                           #  34    0x14bf1c  1      OPC=nop             
  nop                           #  35    0x14bf1d  1      OPC=nop             
  nop                           #  36    0x14bf1e  1      OPC=nop             
  nop                           #  37    0x14bf1f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  38    0x14bf20  7      OPC=andl_r32_imm32  
  nop                           #  39    0x14bf27  1      OPC=nop             
  nop                           #  40    0x14bf28  1      OPC=nop             
  nop                           #  41    0x14bf29  1      OPC=nop             
  nop                           #  42    0x14bf2a  1      OPC=nop             
  addq %r15, %r11               #  43    0x14bf2b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  44    0x14bf2e  3      OPC=jmpq_r64        
  nop                           #  45    0x14bf31  1      OPC=nop             
  nop                           #  46    0x14bf32  1      OPC=nop             
  nop                           #  47    0x14bf33  1      OPC=nop             
  nop                           #  48    0x14bf34  1      OPC=nop             
  nop                           #  49    0x14bf35  1      OPC=nop             
  nop                           #  50    0x14bf36  1      OPC=nop             
  nop                           #  51    0x14bf37  1      OPC=nop             
  nop                           #  52    0x14bf38  1      OPC=nop             
  nop                           #  53    0x14bf39  1      OPC=nop             
  nop                           #  54    0x14bf3a  1      OPC=nop             
  nop                           #  55    0x14bf3b  1      OPC=nop             
  nop                           #  56    0x14bf3c  1      OPC=nop             
  nop                           #  57    0x14bf3d  1      OPC=nop             
  nop                           #  58    0x14bf3e  1      OPC=nop             
  nop                           #  59    0x14bf3f  1      OPC=nop             
  nop                           #  60    0x14bf40  1      OPC=nop             
  nop                           #  61    0x14bf41  1      OPC=nop             
  nop                           #  62    0x14bf42  1      OPC=nop             
  nop                           #  63    0x14bf43  1      OPC=nop             
  nop                           #  64    0x14bf44  1      OPC=nop             
  nop                           #  65    0x14bf45  1      OPC=nop             
  nop                           #  66    0x14bf46  1      OPC=nop             
                                                                              
.size __i2b, .-__i2b

