  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x180ee0
#! rip-offset  0x140ee0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscpy:                    #        0x140ee0  0      OPC=<label>         
  nop                       #  1     0x140ee0  1      OPC=nop             
  nop                       #  2     0x140ee1  1      OPC=nop             
  nop                       #  3     0x140ee2  1      OPC=nop             
  nop                       #  4     0x140ee3  1      OPC=nop             
  nop                       #  5     0x140ee4  1      OPC=nop             
  nop                       #  6     0x140ee5  1      OPC=nop             
  nop                       #  7     0x140ee6  1      OPC=nop             
  nop                       #  8     0x140ee7  1      OPC=nop             
  nop                       #  9     0x140ee8  1      OPC=nop             
  nop                       #  10    0x140ee9  1      OPC=nop             
  nop                       #  11    0x140eea  1      OPC=nop             
  nop                       #  12    0x140eeb  1      OPC=nop             
  nop                       #  13    0x140eec  1      OPC=nop             
  nop                       #  14    0x140eed  1      OPC=nop             
  addl $0x0, %esi           #  15    0x140eee  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx  #  16    0x140ef1  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  17    0x140ef5  2      OPC=testl_r32_r32   
  nop                       #  18    0x140ef7  1      OPC=nop             
  nop                       #  19    0x140ef8  1      OPC=nop             
  nop                       #  20    0x140ef9  1      OPC=nop             
  movl %edi, %edx           #  21    0x140efa  2      OPC=movl_r32_r32    
  nop                       #  22    0x140efc  1      OPC=nop             
  nop                       #  23    0x140efd  1      OPC=nop             
  je .L_140f20              #  24    0x140efe  2      OPC=je_label        
.L_140f00:                  #        0x140f00  0      OPC=<label>         
  orl %edx, %edx            #  25    0x140f00  2      OPC=orl_r32_r32     
  movl %ecx, (%r15,%rdx,1)  #  26    0x140f02  4      OPC=movl_m32_r32    
  addq $0x4, %rdx           #  27    0x140f06  7      OPC=addq_r64_imm32  
  addl $0x4, %esi           #  28    0x140f0d  6      OPC=addl_r32_imm32  
  movl (%r15,%rsi,1), %ecx  #  29    0x140f13  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  30    0x140f17  2      OPC=testl_r32_r32   
  jne .L_140f00             #  31    0x140f19  2      OPC=jne_label       
  nop                       #  32    0x140f1b  1      OPC=nop             
  nop                       #  33    0x140f1c  1      OPC=nop             
  nop                       #  34    0x140f1d  1      OPC=nop             
  nop                       #  35    0x140f1e  1      OPC=nop             
  nop                       #  36    0x140f1f  1      OPC=nop             
.L_140f20:                  #        0x140f20  0      OPC=<label>         
  movl %edi, %eax           #  37    0x140f20  2      OPC=movl_r32_r32_1  
  xorl %ecx, %edx           #  38    0x140f22  2      OPC=xorl_r32_r32_1  
  movl $0x0, (%r15,%rdx,1)  #  39    0x140f24  8      OPC=movl_m32_imm32  
  nop                       #  40    0x140f2c  1      OPC=nop             
  nop                       #  41    0x140f2d  1      OPC=nop             
  nop                       #  42    0x140f2e  1      OPC=nop             
  nop                       #  43    0x140f2f  1      OPC=nop             
  nop                       #  44    0x140f30  1      OPC=nop             
  popq %r11                 #  45    0x140f31  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  46    0x140f33  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  47    0x140f37  3      OPC=addq_r64_r64    
  jmpq %r11                 #  48    0x140f3a  3      OPC=jmpq_r64        
                                                                          
.size wcscpy, .-wcscpy
