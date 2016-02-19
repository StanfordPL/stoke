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
  nop                       #  6     0x1410e5  1      OPC=nop             
  nop                       #  7     0x1410e6  1      OPC=nop             
  nop                       #  8     0x1410e7  1      OPC=nop             
  jmpq .L_141120            #  9     0x1410e8  2      OPC=jmpq_label      
.L_141100:                  #        0x1410ea  0      OPC=<label>         
  addl $0x4, %esi           #  10    0x1410ea  3      OPC=addl_r32_imm8   
  addl $0x4, %edi           #  11    0x1410ed  3      OPC=addl_r32_imm8   
.L_141120:                  #        0x1410f0  0      OPC=<label>         
  andl %esi, %esi           #  12    0x1410f0  2      OPC=andl_r32_r32_1  
  movl (%r15,%rsi,1), %edx  #  13    0x1410f2  4      OPC=movl_r32_m32    
  orl %edi, %edi            #  14    0x1410f6  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdi,1), %eax  #  15    0x1410f8  4      OPC=movl_r32_m32    
  cmpl %edx, %eax           #  16    0x1410fc  2      OPC=cmpl_r32_r32    
  jne .L_141160             #  17    0x1410fe  2      OPC=jne_label       
  orb %ah, %dl              #  18    0x141100  2      OPC=orb_r8_rh_1     
  jne .L_141100             #  19    0x141102  2      OPC=jne_label       
.L_141160:                  #        0x141104  0      OPC=<label>         
  subl %edx, %eax           #  20    0x141104  2      OPC=subl_r32_r32_1  
  nop                       #  21    0x141106  1      OPC=nop             
  nop                       #  22    0x141107  1      OPC=nop             
  nop                       #  23    0x141108  1      OPC=nop             
  nop                       #  24    0x141109  1      OPC=nop             
  nop                       #  25    0x14110a  1      OPC=nop             
  nop                       #  26    0x14110b  1      OPC=nop             
  retq                      #  27    0x14110c  1      OPC=retq            
                                                                          
.size wcscmp, .-wcscmp
