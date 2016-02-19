  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscmp:                    #        0x1410e0  0      OPC=<label>         
  jmpq .L_141120            #  1     0x1410e0  2      OPC=jmpq_label      
  nop                       #  2     0x1410e2  1      OPC=nop             
.L_141100:                  #        0x1410e3  0      OPC=<label>         
  addw $0x4, %si            #  3     0x1410e3  4      OPC=addw_r16_imm8   
.L_141120:                  #        0x1410e7  0      OPC=<label>         
  andl %esi, %esi           #  4     0x1410e7  2      OPC=andl_r32_r32_1  
  movl (%r15,%rsi,1), %edx  #  5     0x1410e9  4      OPC=movl_r32_m32    
  movl %edi, %edi           #  6     0x1410ed  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdi,1), %eax  #  7     0x1410ef  4      OPC=movl_r32_m32    
  addl $0x4, %edi           #  8     0x1410f3  3      OPC=addl_r32_imm8   
  cmpl %edx, %eax           #  9     0x1410f6  2      OPC=cmpl_r32_r32    
  jne .L_141160             #  10    0x1410f8  2      OPC=jne_label       
  addl %eax, %edx           #  11    0x1410fa  2      OPC=addl_r32_r32    
  jne .L_141100             #  12    0x1410fc  2      OPC=jne_label       
  nop                       #  13    0x1410fe  1      OPC=nop             
  nop                       #  14    0x1410ff  1      OPC=nop             
  nop                       #  15    0x141100  1      OPC=nop             
  nop                       #  16    0x141101  1      OPC=nop             
  nop                       #  17    0x141102  1      OPC=nop             
.L_141160:                  #        0x141103  0      OPC=<label>         
  nop                       #  18    0x141103  1      OPC=nop             
  subl %edx, %eax           #  19    0x141104  2      OPC=subl_r32_r32_1  
  retq                      #  20    0x141106  1      OPC=retq            
                                                                          
.size wcscmp, .-wcscmp
