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
  andl %esi, %esi           #  7     0x140ee6  2      OPC=andl_r32_r32_1  
  movl (%r15,%rsi,1), %ecx  #  8     0x140ee8  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  9     0x140eec  2      OPC=testl_r32_r32   
  movl %edi, %eax           #  10    0x140eee  2      OPC=movl_r32_r32    
  movq %rax, %rdx           #  11    0x140ef0  3      OPC=movq_r64_r64_1  
  nop                       #  12    0x140ef3  1      OPC=nop             
  nop                       #  13    0x140ef4  1      OPC=nop             
  nop                       #  14    0x140ef5  1      OPC=nop             
  nop                       #  15    0x140ef6  1      OPC=nop             
  nop                       #  16    0x140ef7  1      OPC=nop             
  nop                       #  17    0x140ef8  1      OPC=nop             
  nop                       #  18    0x140ef9  1      OPC=nop             
  nop                       #  19    0x140efa  1      OPC=nop             
  nop                       #  20    0x140efb  1      OPC=nop             
  nop                       #  21    0x140efc  1      OPC=nop             
  nop                       #  22    0x140efd  1      OPC=nop             
  je .L_140f20              #  23    0x140efe  2      OPC=je_label        
.L_140f00:                  #        0x140f00  0      OPC=<label>         
  orl %edx, %edx            #  24    0x140f00  2      OPC=orl_r32_r32     
  movl %ecx, (%r15,%rdx,1)  #  25    0x140f02  4      OPC=movl_m32_r32    
  addl $0x4, %edx           #  26    0x140f06  3      OPC=addl_r32_imm8   
  nop                       #  27    0x140f09  1      OPC=nop             
  nop                       #  28    0x140f0a  1      OPC=nop             
  nop                       #  29    0x140f0b  1      OPC=nop             
  nop                       #  30    0x140f0c  1      OPC=nop             
  nop                       #  31    0x140f0d  1      OPC=nop             
  nop                       #  32    0x140f0e  1      OPC=nop             
  nop                       #  33    0x140f0f  1      OPC=nop             
  nop                       #  34    0x140f10  1      OPC=nop             
  nop                       #  35    0x140f11  1      OPC=nop             
  nop                       #  36    0x140f12  1      OPC=nop             
  nop                       #  37    0x140f13  1      OPC=nop             
  nop                       #  38    0x140f14  1      OPC=nop             
  nop                       #  39    0x140f15  1      OPC=nop             
  nop                       #  40    0x140f16  1      OPC=nop             
  addl $0x4, %esi           #  41    0x140f17  3      OPC=addl_r32_imm8   
  andl (%r15,%rsi,1), %ecx  #  42    0x140f1a  4      OPC=andl_r32_m32    
  jne .L_140f00             #  43    0x140f1e  2      OPC=jne_label       
.L_140f20:                  #        0x140f20  0      OPC=<label>         
  nop                       #  44    0x140f20  1      OPC=nop             
  nop                       #  45    0x140f21  1      OPC=nop             
  nop                       #  46    0x140f22  1      OPC=nop             
  nop                       #  47    0x140f23  1      OPC=nop             
  nop                       #  48    0x140f24  1      OPC=nop             
  nop                       #  49    0x140f25  1      OPC=nop             
  nop                       #  50    0x140f26  1      OPC=nop             
  nop                       #  51    0x140f27  1      OPC=nop             
  nop                       #  52    0x140f28  1      OPC=nop             
  nop                       #  53    0x140f29  1      OPC=nop             
  addl %ecx, %edx           #  54    0x140f2a  2      OPC=addl_r32_r32_1  
  movl $0x0, (%r15,%rdx,1)  #  55    0x140f2c  8      OPC=movl_m32_imm32  
  popq %r11                 #  56    0x140f34  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  57    0x140f36  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  58    0x140f3a  3      OPC=addq_r64_r64    
  jmpq %r11                 #  59    0x140f3d  3      OPC=jmpq_r64        
                                                                          
.size wcscpy, .-wcscpy
