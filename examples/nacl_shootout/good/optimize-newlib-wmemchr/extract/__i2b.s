  .text
  .globl __i2b
  .type __i2b, @function

#! file-offset 0x18b7c0
#! rip-offset  0x14b7c0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__i2b:                         #        0x14b7c0  0      OPC=<label>         
  pushq %rbx                    #  1     0x14b7c0  1      OPC=pushq_r64_1     
  movl %edi, %edi               #  2     0x14b7c1  2      OPC=movl_r32_r32    
  movl %esi, %ebx               #  3     0x14b7c3  2      OPC=movl_r32_r32    
  movl $0x1, %esi               #  4     0x14b7c5  5      OPC=movl_r32_imm32  
  xchgw %ax, %ax                #  5     0x14b7ca  2      OPC=xchgw_ax_r16    
  nop                           #  6     0x14b7cc  1      OPC=nop             
  nop                           #  7     0x14b7cd  1      OPC=nop             
  nop                           #  8     0x14b7ce  1      OPC=nop             
  nop                           #  9     0x14b7cf  1      OPC=nop             
  nop                           #  10    0x14b7d0  1      OPC=nop             
  nop                           #  11    0x14b7d1  1      OPC=nop             
  nop                           #  12    0x14b7d2  1      OPC=nop             
  nop                           #  13    0x14b7d3  1      OPC=nop             
  nop                           #  14    0x14b7d4  1      OPC=nop             
  nop                           #  15    0x14b7d5  1      OPC=nop             
  nop                           #  16    0x14b7d6  1      OPC=nop             
  nop                           #  17    0x14b7d7  1      OPC=nop             
  nop                           #  18    0x14b7d8  1      OPC=nop             
  nop                           #  19    0x14b7d9  1      OPC=nop             
  nop                           #  20    0x14b7da  1      OPC=nop             
  callq ._Balloc                #  21    0x14b7db  5      OPC=callq_label     
  movl %eax, %eax               #  22    0x14b7e0  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  23    0x14b7e2  2      OPC=movl_r32_r32    
  movl %ebx, 0x14(%r15,%rax,1)  #  24    0x14b7e4  5      OPC=movl_m32_r32    
  movl %eax, %eax               #  25    0x14b7e9  2      OPC=movl_r32_r32    
  movl $0x1, 0x10(%r15,%rax,1)  #  26    0x14b7eb  9      OPC=movl_m32_imm32  
  popq %rbx                     #  27    0x14b7f4  1      OPC=popq_r64_1      
  popq %r11                     #  28    0x14b7f5  2      OPC=popq_r64_1      
  nop                           #  29    0x14b7f7  1      OPC=nop             
  nop                           #  30    0x14b7f8  1      OPC=nop             
  nop                           #  31    0x14b7f9  1      OPC=nop             
  nop                           #  32    0x14b7fa  1      OPC=nop             
  nop                           #  33    0x14b7fb  1      OPC=nop             
  nop                           #  34    0x14b7fc  1      OPC=nop             
  nop                           #  35    0x14b7fd  1      OPC=nop             
  nop                           #  36    0x14b7fe  1      OPC=nop             
  nop                           #  37    0x14b7ff  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  38    0x14b800  7      OPC=andl_r32_imm32  
  nop                           #  39    0x14b807  1      OPC=nop             
  nop                           #  40    0x14b808  1      OPC=nop             
  nop                           #  41    0x14b809  1      OPC=nop             
  nop                           #  42    0x14b80a  1      OPC=nop             
  addq %r15, %r11               #  43    0x14b80b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  44    0x14b80e  3      OPC=jmpq_r64        
  nop                           #  45    0x14b811  1      OPC=nop             
  nop                           #  46    0x14b812  1      OPC=nop             
  nop                           #  47    0x14b813  1      OPC=nop             
  nop                           #  48    0x14b814  1      OPC=nop             
  nop                           #  49    0x14b815  1      OPC=nop             
  nop                           #  50    0x14b816  1      OPC=nop             
  nop                           #  51    0x14b817  1      OPC=nop             
  nop                           #  52    0x14b818  1      OPC=nop             
  nop                           #  53    0x14b819  1      OPC=nop             
  nop                           #  54    0x14b81a  1      OPC=nop             
  nop                           #  55    0x14b81b  1      OPC=nop             
  nop                           #  56    0x14b81c  1      OPC=nop             
  nop                           #  57    0x14b81d  1      OPC=nop             
  nop                           #  58    0x14b81e  1      OPC=nop             
  nop                           #  59    0x14b81f  1      OPC=nop             
  nop                           #  60    0x14b820  1      OPC=nop             
  nop                           #  61    0x14b821  1      OPC=nop             
  nop                           #  62    0x14b822  1      OPC=nop             
  nop                           #  63    0x14b823  1      OPC=nop             
  nop                           #  64    0x14b824  1      OPC=nop             
  nop                           #  65    0x14b825  1      OPC=nop             
  nop                           #  66    0x14b826  1      OPC=nop             
                                                                              
.size __i2b, .-__i2b

