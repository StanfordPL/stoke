  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x1819a0
#! rip-offset  0x1419a0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscpy:                    #        0x1419a0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x1419a0  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0x1419a2  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  3     0x1419a4  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rax,1)  #  4     0x1419a6  8      OPC=movl_m32_imm32  
  movl %esi, %esi           #  5     0x1419ae  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  6     0x1419b0  4      OPC=movl_r32_m32    
  movq %rax, %rdx           #  7     0x1419b4  3      OPC=movq_r64_r64    
  testl %ecx, %ecx          #  8     0x1419b7  2      OPC=testl_r32_r32   
  je .L_1419e0              #  9     0x1419b9  2      OPC=je_label        
  nop                       #  10    0x1419bb  1      OPC=nop             
  nop                       #  11    0x1419bc  1      OPC=nop             
  nop                       #  12    0x1419bd  1      OPC=nop             
  nop                       #  13    0x1419be  1      OPC=nop             
  nop                       #  14    0x1419bf  1      OPC=nop             
.L_1419c0:                  #        0x1419c0  0      OPC=<label>         
  addl $0x4, %esi           #  15    0x1419c0  3      OPC=addl_r32_imm8   
  movl %edx, %edx           #  16    0x1419c3  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)  #  17    0x1419c5  4      OPC=movl_m32_r32    
  addl $0x4, %edx           #  18    0x1419c9  3      OPC=addl_r32_imm8   
  movl %esi, %esi           #  19    0x1419cc  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  20    0x1419ce  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  21    0x1419d2  2      OPC=testl_r32_r32   
  jne .L_1419c0             #  22    0x1419d4  2      OPC=jne_label       
  nop                       #  23    0x1419d6  1      OPC=nop             
  nop                       #  24    0x1419d7  1      OPC=nop             
  nop                       #  25    0x1419d8  1      OPC=nop             
  nop                       #  26    0x1419d9  1      OPC=nop             
  nop                       #  27    0x1419da  1      OPC=nop             
  nop                       #  28    0x1419db  1      OPC=nop             
  nop                       #  29    0x1419dc  1      OPC=nop             
  nop                       #  30    0x1419dd  1      OPC=nop             
  nop                       #  31    0x1419de  1      OPC=nop             
  nop                       #  32    0x1419df  1      OPC=nop             
.L_1419e0:                  #        0x1419e0  0      OPC=<label>         
  movl %edx, %edx           #  33    0x1419e0  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdx,1)  #  34    0x1419e2  8      OPC=movl_m32_imm32  
  popq %r11                 #  35    0x1419ea  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  36    0x1419ec  7      OPC=andl_r32_imm32  
  nop                       #  37    0x1419f3  1      OPC=nop             
  nop                       #  38    0x1419f4  1      OPC=nop             
  nop                       #  39    0x1419f5  1      OPC=nop             
  nop                       #  40    0x1419f6  1      OPC=nop             
  addq %r15, %r11           #  41    0x1419f7  3      OPC=addq_r64_r64    
  jmpq %r11                 #  42    0x1419fa  3      OPC=jmpq_r64        
  nop                       #  43    0x1419fd  1      OPC=nop             
  nop                       #  44    0x1419fe  1      OPC=nop             
  nop                       #  45    0x1419ff  1      OPC=nop             
  nop                       #  46    0x141a00  1      OPC=nop             
  nop                       #  47    0x141a01  1      OPC=nop             
  nop                       #  48    0x141a02  1      OPC=nop             
  nop                       #  49    0x141a03  1      OPC=nop             
  nop                       #  50    0x141a04  1      OPC=nop             
  nop                       #  51    0x141a05  1      OPC=nop             
  nop                       #  52    0x141a06  1      OPC=nop             
                                                                          
.size wcscpy, .-wcscpy

