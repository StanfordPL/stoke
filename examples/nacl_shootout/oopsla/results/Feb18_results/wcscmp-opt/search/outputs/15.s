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
  nop                       #  3     0x1410e3  1      OPC=nop            
  nop                       #  4     0x1410e4  1      OPC=nop            
  nop                       #  5     0x1410e5  1      OPC=nop            
.L_141100:                  #        0x1410e6  0      OPC=<label>        
  addl $0x4, %edi           #  6     0x1410e6  3      OPC=addl_r32_imm8  
.L_141120:                  #        0x1410e9  0      OPC=<label>        
  movl %esi, %esi           #  7     0x1410e9  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %edx  #  8     0x1410eb  4      OPC=movl_r32_m32   
  movl %edi, %edi           #  9     0x1410ef  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax  #  10    0x1410f1  4      OPC=movl_r32_m32   
  addl $0x4, %esi           #  11    0x1410f5  3      OPC=addl_r32_imm8  
  cmpl %edx, %eax           #  12    0x1410f8  2      OPC=cmpl_r32_r32   
  jne .L_141160             #  13    0x1410fa  2      OPC=jne_label      
  testl %eax, %eax          #  14    0x1410fc  2      OPC=testl_r32_r32  
  jne .L_141100             #  15    0x1410fe  2      OPC=jne_label      
  nop                       #  16    0x141100  1      OPC=nop            
  nop                       #  17    0x141101  1      OPC=nop            
  nopl %eax                 #  18    0x141102  3      OPC=nopl_r32       
  nop                       #  19    0x141105  1      OPC=nop            
  nop                       #  20    0x141106  1      OPC=nop            
  nop                       #  21    0x141107  1      OPC=nop            
.L_141160:                  #        0x141108  0      OPC=<label>        
  subl %edx, %eax           #  22    0x141108  2      OPC=subl_r32_r32   
  nop                       #  23    0x14110a  1      OPC=nop            
  nop                       #  24    0x14110b  1      OPC=nop            
  retq                      #  25    0x14110c  1      OPC=retq           
                                                                         
.size wcscmp, .-wcscmp
