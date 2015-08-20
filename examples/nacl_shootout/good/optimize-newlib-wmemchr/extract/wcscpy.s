  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x181280
#! rip-offset  0x141280
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscpy:                    #        0x141280  0      OPC=<label>         
  movl %edi, %eax           #  1     0x141280  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0x141282  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  3     0x141284  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rax,1)  #  4     0x141286  8      OPC=movl_m32_imm32  
  movl %esi, %esi           #  5     0x14128e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  6     0x141290  4      OPC=movl_r32_m32    
  movq %rax, %rdx           #  7     0x141294  3      OPC=movq_r64_r64    
  testl %ecx, %ecx          #  8     0x141297  2      OPC=testl_r32_r32   
  je .L_1412c0              #  9     0x141299  2      OPC=je_label        
  nop                       #  10    0x14129b  1      OPC=nop             
  nop                       #  11    0x14129c  1      OPC=nop             
  nop                       #  12    0x14129d  1      OPC=nop             
  nop                       #  13    0x14129e  1      OPC=nop             
  nop                       #  14    0x14129f  1      OPC=nop             
.L_1412a0:                  #        0x1412a0  0      OPC=<label>         
  addl $0x4, %esi           #  15    0x1412a0  3      OPC=addl_r32_imm8   
  movl %edx, %edx           #  16    0x1412a3  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)  #  17    0x1412a5  4      OPC=movl_m32_r32    
  addl $0x4, %edx           #  18    0x1412a9  3      OPC=addl_r32_imm8   
  movl %esi, %esi           #  19    0x1412ac  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  20    0x1412ae  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  21    0x1412b2  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  22    0x1412b4  2      OPC=jne_label       
  nop                       #  23    0x1412b6  1      OPC=nop             
  nop                       #  24    0x1412b7  1      OPC=nop             
  nop                       #  25    0x1412b8  1      OPC=nop             
  nop                       #  26    0x1412b9  1      OPC=nop             
  nop                       #  27    0x1412ba  1      OPC=nop             
  nop                       #  28    0x1412bb  1      OPC=nop             
  nop                       #  29    0x1412bc  1      OPC=nop             
  nop                       #  30    0x1412bd  1      OPC=nop             
  nop                       #  31    0x1412be  1      OPC=nop             
  nop                       #  32    0x1412bf  1      OPC=nop             
.L_1412c0:                  #        0x1412c0  0      OPC=<label>         
  movl %edx, %edx           #  33    0x1412c0  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdx,1)  #  34    0x1412c2  8      OPC=movl_m32_imm32  
  popq %r11                 #  35    0x1412ca  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  36    0x1412cc  7      OPC=andl_r32_imm32  
  nop                       #  37    0x1412d3  1      OPC=nop             
  nop                       #  38    0x1412d4  1      OPC=nop             
  nop                       #  39    0x1412d5  1      OPC=nop             
  nop                       #  40    0x1412d6  1      OPC=nop             
  addq %r15, %r11           #  41    0x1412d7  3      OPC=addq_r64_r64    
  jmpq %r11                 #  42    0x1412da  3      OPC=jmpq_r64        
  nop                       #  43    0x1412dd  1      OPC=nop             
  nop                       #  44    0x1412de  1      OPC=nop             
  nop                       #  45    0x1412df  1      OPC=nop             
  nop                       #  46    0x1412e0  1      OPC=nop             
  nop                       #  47    0x1412e1  1      OPC=nop             
  nop                       #  48    0x1412e2  1      OPC=nop             
  nop                       #  49    0x1412e3  1      OPC=nop             
  nop                       #  50    0x1412e4  1      OPC=nop             
  nop                       #  51    0x1412e5  1      OPC=nop             
  nop                       #  52    0x1412e6  1      OPC=nop             
                                                                          
.size wcscpy, .-wcscpy

