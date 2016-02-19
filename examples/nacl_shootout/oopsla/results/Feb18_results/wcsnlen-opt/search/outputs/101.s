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
  movl %edi, %eax           #  12    0x142d0b  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %ecx  #  13    0x142d0d  4      OPC=movl_r32_m32    
  nop                       #  14    0x142d11  1      OPC=nop             
  nop                       #  15    0x142d12  1      OPC=nop             
  testl %ecx, %ecx          #  16    0x142d13  2      OPC=testl_r32_r32   
  nop                       #  17    0x142d15  1      OPC=nop             
  nop                       #  18    0x142d16  1      OPC=nop             
  nop                       #  19    0x142d17  1      OPC=nop             
  je .L_142d80              #  20    0x142d18  2      OPC=je_label        
  nop                       #  21    0x142d1a  1      OPC=nop             
  nop                       #  22    0x142d1b  1      OPC=nop             
  nop                       #  23    0x142d1c  1      OPC=nop             
  nop                       #  24    0x142d1d  1      OPC=nop             
  testl %esi, %esi          #  25    0x142d1e  2      OPC=testl_r32_r32   
  nop                       #  26    0x142d20  1      OPC=nop             
  je .L_142d80              #  27    0x142d21  2      OPC=je_label        
  nop                       #  28    0x142d23  1      OPC=nop             
  subl $0x1, %esi           #  29    0x142d24  3      OPC=subl_r32_imm8   
  jmpq .L_142d40            #  30    0x142d27  2      OPC=jmpq_label      
  nop                       #  31    0x142d29  1      OPC=nop             
.L_142d20:                  #        0x142d2a  0      OPC=<label>         
  testl %esi, %esi          #  32    0x142d2a  2      OPC=testl_r32_r32   
  je .L_142d60              #  33    0x142d2c  2      OPC=je_label        
  subl $0x1, %esi           #  34    0x142d2e  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d31  0      OPC=<label>         
  addl $0x4, %eax           #  35    0x142d31  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  36    0x142d34  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  37    0x142d38  2      OPC=testl_r32_r32   
  jne .L_142d20             #  38    0x142d3a  2      OPC=jne_label       
.L_142d60:                  #        0x142d3c  0      OPC=<label>         
  subl %edi, %eax           #  39    0x142d3c  2      OPC=subl_r32_r32    
  nop                       #  40    0x142d3e  1      OPC=nop             
  nop                       #  41    0x142d3f  1      OPC=nop             
  shrl $0x2, %eax           #  42    0x142d40  3      OPC=shrl_r32_imm8   
  nop                       #  43    0x142d43  1      OPC=nop             
  nop                       #  44    0x142d44  1      OPC=nop             
  nop                       #  45    0x142d45  1      OPC=nop             
  nop                       #  46    0x142d46  1      OPC=nop             
  nop                       #  47    0x142d47  1      OPC=nop             
  nop                       #  48    0x142d48  1      OPC=nop             
  retq                      #  49    0x142d49  1      OPC=retq            
.L_142d80:                  #        0x142d4a  0      OPC=<label>         
  nop                       #  50    0x142d4a  1      OPC=nop             
  nop                       #  51    0x142d4b  1      OPC=nop             
  subq %rax, %rax           #  52    0x142d4c  3      OPC=subq_r64_r64    
  nop                       #  53    0x142d4f  1      OPC=nop             
  nop                       #  54    0x142d50  1      OPC=nop             
  nop                       #  55    0x142d51  1      OPC=nop             
  nopl %eax                 #  56    0x142d52  3      OPC=nopl_r32        
  nop                       #  57    0x142d55  1      OPC=nop             
  nop                       #  58    0x142d56  1      OPC=nop             
  nop                       #  59    0x142d57  1      OPC=nop             
  nop                       #  60    0x142d58  1      OPC=nop             
  nop                       #  61    0x142d59  1      OPC=nop             
  retq                      #  62    0x142d5a  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
