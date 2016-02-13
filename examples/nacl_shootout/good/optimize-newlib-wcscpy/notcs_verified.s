  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x180ee0
#! rip-offset  0x140ee0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscpy:                    #        0x140ee0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x140ee0  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rax,1)  #  2     0x140ee2  8      OPC=movl_m32_imm32  
  movl %esi, %esi           #  3     0x140eea  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %ecx  #  4     0x140eec  4      OPC=movl_r32_m32    
  movq %rax, %rdx           #  5     0x140ef0  3      OPC=movq_r64_r64    
  testl %ecx, %ecx          #  6     0x140ef3  2      OPC=testl_r32_r32   
  je .L_140f20              #  7     0x140ef5  2      OPC=je_label        
  nop                       #  8     0x140ef7  1      OPC=nop             
  nop                       #  9     0x140ef8  1      OPC=nop             
  nop                       #  10    0x140ef9  1      OPC=nop             
  nop                       #  11    0x140efa  1      OPC=nop             
  nop                       #  12    0x140efb  1      OPC=nop             
  nop                       #  13    0x140efc  1      OPC=nop             
  nop                       #  14    0x140efd  1      OPC=nop             
  nop                       #  15    0x140efe  1      OPC=nop             
  nop                       #  16    0x140eff  1      OPC=nop             
.L_140f00:                  #        0x140f00  0      OPC=<label>         
  nop                       #  17    0x140f00  1      OPC=nop             
  nop                       #  18    0x140f01  1      OPC=nop             
  nop                       #  19    0x140f02  1      OPC=nop             
  nop                       #  20    0x140f03  1      OPC=nop             
  nop                       #  21    0x140f04  1      OPC=nop             
  nop                       #  22    0x140f05  1      OPC=nop             
  nop                       #  23    0x140f06  1      OPC=nop             
  nop                       #  24    0x140f07  1      OPC=nop             
  nop                       #  25    0x140f08  1      OPC=nop             
  nop                       #  26    0x140f09  1      OPC=nop             
  movl %edx, %edx           #  27    0x140f0a  2      OPC=movl_r32_r32_1  
  movl %ecx, (%r15,%rdx,1)  #  28    0x140f0c  4      OPC=movl_m32_r32    
  addl $0x4, %edx           #  29    0x140f10  3      OPC=addl_r32_imm8   
  addl $0x4, %esi           #  30    0x140f13  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx  #  31    0x140f16  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  32    0x140f1a  2      OPC=testl_r32_r32   
  jne .L_140f00             #  33    0x140f1c  2      OPC=jne_label       
  nop                       #  34    0x140f1e  1      OPC=nop             
  nop                       #  35    0x140f1f  1      OPC=nop             
.L_140f20:                  #        0x140f20  0      OPC=<label>         
  orl %ecx, %edx            #  36    0x140f20  2      OPC=orl_r32_r32_1   
  movl $0x0, (%r15,%rdx,1)  #  37    0x140f22  8      OPC=movl_m32_imm32  
  popq %r11                 #  38    0x140f2a  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  39    0x140f2c  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  40    0x140f30  3      OPC=addq_r64_r64    
  jmpq %r11                 #  41    0x140f33  3      OPC=jmpq_r64        
                                                                          
.size wcscpy, .-wcscpy
