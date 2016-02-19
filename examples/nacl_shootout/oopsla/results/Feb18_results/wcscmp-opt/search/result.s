  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscmp:                    #        0x1410e0  0      OPC=<label>         
  nop                       #  1     0x1410e0  1      OPC=nop             
  nop                       #  2     0x1410e1  1      OPC=nop             
  nop                       #  3     0x1410e2  1      OPC=nop             
  nop                       #  4     0x1410e3  1      OPC=nop             
  nop                       #  5     0x1410e4  1      OPC=nop             
  jmpq .L_141120            #  6     0x1410e5  2      OPC=jmpq_label      
  nop                       #  7     0x1410e7  1      OPC=nop             
  nop                       #  8     0x1410e8  1      OPC=nop             
.L_141100:                  #        0x1410e9  0      OPC=<label>         
  addq $0x4, %rsi           #  9     0x1410e9  4      OPC=addq_r64_imm8   
  addq $0x4, %rdi           #  10    0x1410ed  7      OPC=addq_r64_imm32  
.L_141120:                  #        0x1410f4  0      OPC=<label>         
  movl %esi, %esi           #  11    0x1410f4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  12    0x1410f6  4      OPC=movl_r32_m32    
  orl %edi, %edi            #  13    0x1410fa  2      OPC=orl_r32_r32     
  movl (%r15,%rdi,1), %eax  #  14    0x1410fc  4      OPC=movl_r32_m32    
  cmpl %edx, %eax           #  15    0x141100  2      OPC=cmpl_r32_r32    
  jne .L_141160             #  16    0x141102  2      OPC=jne_label       
  andw %dx, %dx             #  17    0x141104  3      OPC=andw_r16_r16_1  
  jne .L_141100             #  18    0x141107  2      OPC=jne_label       
.L_141160:                  #        0x141109  0      OPC=<label>         
  nop                       #  19    0x141109  1      OPC=nop             
  nop                       #  20    0x14110a  1      OPC=nop             
  nop                       #  21    0x14110b  1      OPC=nop             
  nop                       #  22    0x14110c  1      OPC=nop             
  subl %edx, %eax           #  23    0x14110d  2      OPC=subl_r32_r32_1  
  retq                      #  24    0x14110f  1      OPC=retq            
                                                                          
.size wcscmp, .-wcscmp
