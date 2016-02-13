  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x180ee0
#! rip-offset  0x140ee0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscpy:                    #        0x140ee0  0      OPC=<label>         
  orl %esi, %esi            #  1     0x140ee0  2      OPC=orl_r32_r32_1   
  movl (%r15,%rsi,1), %ecx  #  2     0x140ee2  4      OPC=movl_r32_m32    
  nop                       #  3     0x140ee6  1      OPC=nop             
  movl %edi, %eax           #  4     0x140ee7  2      OPC=movl_r32_r32    
  nop                       #  5     0x140ee9  1      OPC=nop             
  nop                       #  6     0x140eea  1      OPC=nop             
  nop                       #  7     0x140eeb  1      OPC=nop             
  nop                       #  8     0x140eec  1      OPC=nop             
  movq %rax, %rdx           #  9     0x140eed  3      OPC=movq_r64_r64_1  
  nop                       #  10    0x140ef0  1      OPC=nop             
  nop                       #  11    0x140ef1  1      OPC=nop             
  nop                       #  12    0x140ef2  1      OPC=nop             
  nop                       #  13    0x140ef3  1      OPC=nop             
  nop                       #  14    0x140ef4  1      OPC=nop             
  testl %ecx, %ecx          #  15    0x140ef5  2      OPC=testl_r32_r32   
  nop                       #  16    0x140ef7  1      OPC=nop             
  nop                       #  17    0x140ef8  1      OPC=nop             
  nop                       #  18    0x140ef9  1      OPC=nop             
  nop                       #  19    0x140efa  1      OPC=nop             
  nop                       #  20    0x140efb  1      OPC=nop             
  nop                       #  21    0x140efc  1      OPC=nop             
  nop                       #  22    0x140efd  1      OPC=nop             
  je .L_140f20              #  23    0x140efe  2      OPC=je_label        
.L_140f00:                  #        0x140f00  0      OPC=<label>         
  orl %edx, %edx            #  24    0x140f00  2      OPC=orl_r32_r32_1   
  movq %rcx, (%r15,%rdx,1)  #  25    0x140f02  4      OPC=movq_m64_r64    
  addl $0x4, %esi           #  26    0x140f06  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx  #  27    0x140f09  4      OPC=movl_r32_m32    
  addl $0x4, %edx           #  28    0x140f0d  3      OPC=addl_r32_imm8   
  testl %ecx, %ecx          #  29    0x140f10  2      OPC=testl_r32_r32   
  jne .L_140f00             #  30    0x140f12  2      OPC=jne_label       
  nop                       #  31    0x140f14  1      OPC=nop             
  nop                       #  32    0x140f15  1      OPC=nop             
  nop                       #  33    0x140f16  1      OPC=nop             
  nop                       #  34    0x140f17  1      OPC=nop             
  nop                       #  35    0x140f18  1      OPC=nop             
  nop                       #  36    0x140f19  1      OPC=nop             
  nop                       #  37    0x140f1a  1      OPC=nop             
  nop                       #  38    0x140f1b  1      OPC=nop             
  nop                       #  39    0x140f1c  1      OPC=nop             
  nop                       #  40    0x140f1d  1      OPC=nop             
  nop                       #  41    0x140f1e  1      OPC=nop             
  nop                       #  42    0x140f1f  1      OPC=nop             
.L_140f20:                  #        0x140f20  0      OPC=<label>         
  nop                       #  43    0x140f20  1      OPC=nop             
  nop                       #  44    0x140f21  1      OPC=nop             
  nop                       #  45    0x140f22  1      OPC=nop             
  nop                       #  46    0x140f23  1      OPC=nop             
  nop                       #  47    0x140f24  1      OPC=nop             
  nop                       #  48    0x140f25  1      OPC=nop             
  subl %ecx, %edx           #  49    0x140f26  2      OPC=subl_r32_r32    
  movl $0x0, (%r15,%rdx,1)  #  50    0x140f28  8      OPC=movl_m32_imm32  
  popq %r11                 #  51    0x140f30  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  52    0x140f32  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  53    0x140f36  3      OPC=addq_r64_r64    
  jmpq %r11                 #  54    0x140f39  3      OPC=jmpq_r64        
                                                                          
.size wcscpy, .-wcscpy
