  .text
  .globl __i2b
  .type __i2b, @function

#! file-offset 0x18b420
#! rip-offset  0x14b420
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__i2b:                         #        0x14b420  0      OPC=<label>         
  pushq %rbx                    #  1     0x14b420  1      OPC=pushq_r64_1     
  movl %edi, %edi               #  2     0x14b421  2      OPC=movl_r32_r32    
  movl %esi, %ebx               #  3     0x14b423  2      OPC=movl_r32_r32    
  movl $0x1, %esi               #  4     0x14b425  5      OPC=movl_r32_imm32  
  xchgw %ax, %ax                #  5     0x14b42a  2      OPC=xchgw_ax_r16    
  nop                           #  6     0x14b42c  1      OPC=nop             
  nop                           #  7     0x14b42d  1      OPC=nop             
  nop                           #  8     0x14b42e  1      OPC=nop             
  nop                           #  9     0x14b42f  1      OPC=nop             
  nop                           #  10    0x14b430  1      OPC=nop             
  nop                           #  11    0x14b431  1      OPC=nop             
  nop                           #  12    0x14b432  1      OPC=nop             
  nop                           #  13    0x14b433  1      OPC=nop             
  nop                           #  14    0x14b434  1      OPC=nop             
  nop                           #  15    0x14b435  1      OPC=nop             
  nop                           #  16    0x14b436  1      OPC=nop             
  nop                           #  17    0x14b437  1      OPC=nop             
  nop                           #  18    0x14b438  1      OPC=nop             
  nop                           #  19    0x14b439  1      OPC=nop             
  nop                           #  20    0x14b43a  1      OPC=nop             
  callq ._Balloc                #  21    0x14b43b  5      OPC=callq_label     
  movl %eax, %eax               #  22    0x14b440  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  23    0x14b442  2      OPC=movl_r32_r32    
  movl %ebx, 0x14(%r15,%rax,1)  #  24    0x14b444  5      OPC=movl_m32_r32    
  movl %eax, %eax               #  25    0x14b449  2      OPC=movl_r32_r32    
  movl $0x1, 0x10(%r15,%rax,1)  #  26    0x14b44b  9      OPC=movl_m32_imm32  
  popq %rbx                     #  27    0x14b454  1      OPC=popq_r64_1      
  popq %r11                     #  28    0x14b455  2      OPC=popq_r64_1      
  nop                           #  29    0x14b457  1      OPC=nop             
  nop                           #  30    0x14b458  1      OPC=nop             
  nop                           #  31    0x14b459  1      OPC=nop             
  nop                           #  32    0x14b45a  1      OPC=nop             
  nop                           #  33    0x14b45b  1      OPC=nop             
  nop                           #  34    0x14b45c  1      OPC=nop             
  nop                           #  35    0x14b45d  1      OPC=nop             
  nop                           #  36    0x14b45e  1      OPC=nop             
  nop                           #  37    0x14b45f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  38    0x14b460  7      OPC=andl_r32_imm32  
  nop                           #  39    0x14b467  1      OPC=nop             
  nop                           #  40    0x14b468  1      OPC=nop             
  nop                           #  41    0x14b469  1      OPC=nop             
  nop                           #  42    0x14b46a  1      OPC=nop             
  addq %r15, %r11               #  43    0x14b46b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  44    0x14b46e  3      OPC=jmpq_r64        
  nop                           #  45    0x14b471  1      OPC=nop             
  nop                           #  46    0x14b472  1      OPC=nop             
  nop                           #  47    0x14b473  1      OPC=nop             
  nop                           #  48    0x14b474  1      OPC=nop             
  nop                           #  49    0x14b475  1      OPC=nop             
  nop                           #  50    0x14b476  1      OPC=nop             
  nop                           #  51    0x14b477  1      OPC=nop             
  nop                           #  52    0x14b478  1      OPC=nop             
  nop                           #  53    0x14b479  1      OPC=nop             
  nop                           #  54    0x14b47a  1      OPC=nop             
  nop                           #  55    0x14b47b  1      OPC=nop             
  nop                           #  56    0x14b47c  1      OPC=nop             
  nop                           #  57    0x14b47d  1      OPC=nop             
  nop                           #  58    0x14b47e  1      OPC=nop             
  nop                           #  59    0x14b47f  1      OPC=nop             
  nop                           #  60    0x14b480  1      OPC=nop             
  nop                           #  61    0x14b481  1      OPC=nop             
  nop                           #  62    0x14b482  1      OPC=nop             
  nop                           #  63    0x14b483  1      OPC=nop             
  nop                           #  64    0x14b484  1      OPC=nop             
  nop                           #  65    0x14b485  1      OPC=nop             
  nop                           #  66    0x14b486  1      OPC=nop             
                                                                              
.size __i2b, .-__i2b

