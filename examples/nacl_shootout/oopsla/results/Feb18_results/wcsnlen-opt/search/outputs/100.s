  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  nop                       #  1     0x142d00  1      OPC=nop             
  nop                       #  2     0x142d01  1      OPC=nop             
  nop                       #  3     0x142d02  1      OPC=nop             
  nop                       #  4     0x142d03  1      OPC=nop             
  nop                       #  5     0x142d04  1      OPC=nop             
  nop                       #  6     0x142d05  1      OPC=nop             
  nop                       #  7     0x142d06  1      OPC=nop             
  nop                       #  8     0x142d07  1      OPC=nop             
  nop                       #  9     0x142d08  1      OPC=nop             
  nop                       #  10    0x142d09  1      OPC=nop             
  nop                       #  11    0x142d0a  1      OPC=nop             
  nop                       #  12    0x142d0b  1      OPC=nop             
  nop                       #  13    0x142d0c  1      OPC=nop             
  nop                       #  14    0x142d0d  1      OPC=nop             
  nop                       #  15    0x142d0e  1      OPC=nop             
  movl %edi, %eax           #  16    0x142d0f  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %ecx  #  17    0x142d11  4      OPC=movl_r32_m32    
  nop                       #  18    0x142d15  1      OPC=nop             
  nop                       #  19    0x142d16  1      OPC=nop             
  testl %ecx, %ecx          #  20    0x142d17  2      OPC=testl_r32_r32   
  nop                       #  21    0x142d19  1      OPC=nop             
  nop                       #  22    0x142d1a  1      OPC=nop             
  nop                       #  23    0x142d1b  1      OPC=nop             
  je .L_142d80              #  24    0x142d1c  2      OPC=je_label        
  nop                       #  25    0x142d1e  1      OPC=nop             
  nop                       #  26    0x142d1f  1      OPC=nop             
  nop                       #  27    0x142d20  1      OPC=nop             
  nop                       #  28    0x142d21  1      OPC=nop             
  nop                       #  29    0x142d22  1      OPC=nop             
  nop                       #  30    0x142d23  1      OPC=nop             
  nop                       #  31    0x142d24  1      OPC=nop             
  testl %esi, %esi          #  32    0x142d25  2      OPC=testl_r32_r32   
  je .L_142d80              #  33    0x142d27  2      OPC=je_label        
  nop                       #  34    0x142d29  1      OPC=nop             
  subl $0x1, %esi           #  35    0x142d2a  3      OPC=subl_r32_imm8   
  jmpq .L_142d40            #  36    0x142d2d  2      OPC=jmpq_label      
  nop                       #  37    0x142d2f  1      OPC=nop             
.L_142d20:                  #        0x142d30  0      OPC=<label>         
  testl %esi, %esi          #  38    0x142d30  2      OPC=testl_r32_r32   
  je .L_142d60              #  39    0x142d32  2      OPC=je_label        
  subl $0x1, %esi           #  40    0x142d34  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d37  0      OPC=<label>         
  addl $0x4, %eax           #  41    0x142d37  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  42    0x142d3a  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  43    0x142d3e  2      OPC=testl_r32_r32   
  jne .L_142d20             #  44    0x142d40  2      OPC=jne_label       
.L_142d60:                  #        0x142d42  0      OPC=<label>         
  subl %edi, %eax           #  45    0x142d42  2      OPC=subl_r32_r32    
  nop                       #  46    0x142d44  1      OPC=nop             
  nop                       #  47    0x142d45  1      OPC=nop             
  shrl $0x2, %eax           #  48    0x142d46  3      OPC=shrl_r32_imm8   
  nop                       #  49    0x142d49  1      OPC=nop             
  nop                       #  50    0x142d4a  1      OPC=nop             
  nop                       #  51    0x142d4b  1      OPC=nop             
  retq                      #  52    0x142d4c  1      OPC=retq            
.L_142d80:                  #        0x142d4d  0      OPC=<label>         
  nop                       #  53    0x142d4d  1      OPC=nop             
  nop                       #  54    0x142d4e  1      OPC=nop             
  subq %rax, %rax           #  55    0x142d4f  3      OPC=subq_r64_r64    
  nop                       #  56    0x142d52  1      OPC=nop             
  nop                       #  57    0x142d53  1      OPC=nop             
  nop                       #  58    0x142d54  1      OPC=nop             
  nopl %eax                 #  59    0x142d55  3      OPC=nopl_r32        
  nop                       #  60    0x142d58  1      OPC=nop             
  nop                       #  61    0x142d59  1      OPC=nop             
  nop                       #  62    0x142d5a  1      OPC=nop             
  nop                       #  63    0x142d5b  1      OPC=nop             
  nop                       #  64    0x142d5c  1      OPC=nop             
  retq                      #  65    0x142d5d  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
