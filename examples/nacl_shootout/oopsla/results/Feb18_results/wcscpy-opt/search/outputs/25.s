  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x180ee0
#! rip-offset  0x140ee0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscpy:                    #        0x140ee0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x140ee0  2      OPC=movl_r32_r32    
  nop                       #  2     0x140ee2  1      OPC=nop             
  nop                       #  3     0x140ee3  1      OPC=nop             
  nop                       #  4     0x140ee4  1      OPC=nop             
  nop                       #  5     0x140ee5  1      OPC=nop             
  nop                       #  6     0x140ee6  1      OPC=nop             
  nop                       #  7     0x140ee7  1      OPC=nop             
  movq %rax, %rdx           #  8     0x140ee8  3      OPC=movq_r64_r64    
  nop                       #  9     0x140eeb  1      OPC=nop             
  nop                       #  10    0x140eec  1      OPC=nop             
  nop                       #  11    0x140eed  1      OPC=nop             
  nop                       #  12    0x140eee  1      OPC=nop             
  movl %esi, %esi           #  13    0x140eef  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  14    0x140ef1  4      OPC=movl_r32_m32    
  nop                       #  15    0x140ef5  1      OPC=nop             
  testl %ecx, %ecx          #  16    0x140ef6  2      OPC=testl_r32_r32   
  nop                       #  17    0x140ef8  1      OPC=nop             
  nop                       #  18    0x140ef9  1      OPC=nop             
  je .L_140f20              #  19    0x140efa  2      OPC=je_label        
  nop                       #  20    0x140efc  1      OPC=nop             
  nop                       #  21    0x140efd  1      OPC=nop             
  nop                       #  22    0x140efe  1      OPC=nop             
  nop                       #  23    0x140eff  1      OPC=nop             
  nop                       #  24    0x140f00  1      OPC=nop             
  nop                       #  25    0x140f01  1      OPC=nop             
.L_140f00:                  #        0x140f02  0      OPC=<label>         
  movl %edx, %edx           #  26    0x140f02  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)  #  27    0x140f04  4      OPC=movl_m32_r32    
  addl $0x4, %edx           #  28    0x140f08  3      OPC=addl_r32_imm8   
  addl $0x4, %esi           #  29    0x140f0b  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx  #  30    0x140f0e  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  31    0x140f12  2      OPC=testl_r32_r32   
  jne .L_140f00             #  32    0x140f14  2      OPC=jne_label       
  nop                       #  33    0x140f16  1      OPC=nop             
  nop                       #  34    0x140f17  1      OPC=nop             
  nop                       #  35    0x140f18  1      OPC=nop             
  nop                       #  36    0x140f19  1      OPC=nop             
  nop                       #  37    0x140f1a  1      OPC=nop             
  xorb %ch, %ah             #  38    0x140f1b  2      OPC=xorb_rh_rh      
  nop                       #  39    0x140f1d  1      OPC=nop             
  nop                       #  40    0x140f1e  1      OPC=nop             
  nop                       #  41    0x140f1f  1      OPC=nop             
  nop                       #  42    0x140f20  1      OPC=nop             
  nop                       #  43    0x140f21  1      OPC=nop             
  nop                       #  44    0x140f22  1      OPC=nop             
  nop                       #  45    0x140f23  1      OPC=nop             
  nop                       #  46    0x140f24  1      OPC=nop             
  nop                       #  47    0x140f25  1      OPC=nop             
.L_140f20:                  #        0x140f26  0      OPC=<label>         
  movl %edx, %edx           #  48    0x140f26  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdx,1)  #  49    0x140f28  8      OPC=movl_m32_imm32  
  retq                      #  50    0x140f30  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
