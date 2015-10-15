  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x180ee0
#! rip-offset  0x140ee0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscpy:                    #        0x140ee0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x140ee0  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0x140ee2  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  3     0x140ee4  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rax,1)  #  4     0x140ee6  8      OPC=movl_m32_imm32  
  movl %esi, %esi           #  5     0x140eee  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  6     0x140ef0  4      OPC=movl_r32_m32    
  movq %rax, %rdx           #  7     0x140ef4  3      OPC=movq_r64_r64    
  testl %ecx, %ecx          #  8     0x140ef7  2      OPC=testl_r32_r32   
  je .L_140f20              #  9     0x140ef9  2      OPC=je_label        
  nop                       #  10    0x140efb  1      OPC=nop             
  nop                       #  11    0x140efc  1      OPC=nop             
  nop                       #  12    0x140efd  1      OPC=nop             
  nop                       #  13    0x140efe  1      OPC=nop             
  nop                       #  14    0x140eff  1      OPC=nop             
.L_140f00:                  #        0x140f00  0      OPC=<label>         
  addl $0x4, %esi           #  15    0x140f00  3      OPC=addl_r32_imm8   
  movl %edx, %edx           #  16    0x140f03  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)  #  17    0x140f05  4      OPC=movl_m32_r32    
  addl $0x4, %edx           #  18    0x140f09  3      OPC=addl_r32_imm8   
  movl %esi, %esi           #  19    0x140f0c  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  20    0x140f0e  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  21    0x140f12  2      OPC=testl_r32_r32   
  jne .L_140f00             #  22    0x140f14  2      OPC=jne_label       
  nop                       #  23    0x140f16  1      OPC=nop             
  nop                       #  24    0x140f17  1      OPC=nop             
  nop                       #  25    0x140f18  1      OPC=nop             
  nop                       #  26    0x140f19  1      OPC=nop             
  nop                       #  27    0x140f1a  1      OPC=nop             
  nop                       #  28    0x140f1b  1      OPC=nop             
  nop                       #  29    0x140f1c  1      OPC=nop             
  nop                       #  30    0x140f1d  1      OPC=nop             
  nop                       #  31    0x140f1e  1      OPC=nop             
  nop                       #  32    0x140f1f  1      OPC=nop             
.L_140f20:                  #        0x140f20  0      OPC=<label>         
  movl %edx, %edx           #  33    0x140f20  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdx,1)  #  34    0x140f22  8      OPC=movl_m32_imm32  
  retq
  nop                       #  43    0x140f3d  1      OPC=nop             
  nop                       #  44    0x140f3e  1      OPC=nop             
  nop                       #  45    0x140f3f  1      OPC=nop             
  nop                       #  46    0x140f40  1      OPC=nop             
  nop                       #  47    0x140f41  1      OPC=nop             
  nop                       #  48    0x140f42  1      OPC=nop             
  nop                       #  49    0x140f43  1      OPC=nop             
  nop                       #  50    0x140f44  1      OPC=nop             
  nop                       #  51    0x140f45  1      OPC=nop             
  nop                       #  52    0x140f46  1      OPC=nop             
                                                                          
.size wcscpy, .-wcscpy

