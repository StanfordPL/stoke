  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    27 bytes

# Text                  #  Line  RIP   Bytes  Opcode             
.strcpy:                #        0     0      OPC=<label>        
  movl %esi, %esi
  movzbl (%r15,%rsi), %eax   #  1     0     3      OPC=movzbl_r32_m8  
  testb %al, %al        #  2     0x3   2      OPC=testb_r8_r8    
  je .L_19              #  3     0x5   2      OPC=je_label       
.L_7:                   #        0x7   0      OPC=<label>        
  addl $0x1, %edi       #  4
  addl $0x1, %esi       #  5
  movb %al, -0x1(%r15,%rdi)  #  6     0xf   3      OPC=movb_m8_r8     
  movzbl (%r15,%rsi), %eax   #  7     0x12  3      OPC=movzbl_r32_m8  
  testb %al, %al        #  8     0x15  2      OPC=testb_r8_r8    
  jne .L_7              #  9     0x17  2      OPC=jne_label      
.L_19:                  #        0x19  0      OPC=<label>        
  retq                  #  10    0x19  1      OPC=retq           
  nop                   #  11    0x1a  1      OPC=nop            
                                                                 
.size strcpy, .-strcpy

