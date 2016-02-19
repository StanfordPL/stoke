  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  nop                       #  1     0x142d00  1      OPC=nop             
  movl %edi, %edi           #  2     0x142d01  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx  #  3     0x142d03  4      OPC=movl_r32_m32    
  nop                       #  4     0x142d07  1      OPC=nop             
  testl %ecx, %ecx          #  5     0x142d08  2      OPC=testl_r32_r32   
  je .L_142d80              #  6     0x142d0a  2      OPC=je_label        
  nop                       #  7     0x142d0c  1      OPC=nop             
  nop                       #  8     0x142d0d  1      OPC=nop             
  testl %esi, %esi          #  9     0x142d0e  2      OPC=testl_r32_r32   
  nop                       #  10    0x142d10  1      OPC=nop             
  nop                       #  11    0x142d11  1      OPC=nop             
  nop                       #  12    0x142d12  1      OPC=nop             
  nopl %eax                 #  13    0x142d13  3      OPC=nopl_r32        
  nopl %eax                 #  14    0x142d16  3      OPC=nopl_r32        
  nop                       #  15    0x142d19  1      OPC=nop             
  je .L_142d80              #  16    0x142d1a  2      OPC=je_label        
  movl %esi, %esi           #  17    0x142d1c  2      OPC=movl_r32_r32_1  
  nop                       #  18    0x142d1e  1      OPC=nop             
  nop                       #  19    0x142d1f  1      OPC=nop             
  subl $0x1, %esi           #  20    0x142d20  3      OPC=subl_r32_imm8   
  nopl %eax                 #  21    0x142d23  3      OPC=nopl_r32        
  nopl %eax                 #  22    0x142d26  3      OPC=nopl_r32        
  nopl %eax                 #  23    0x142d29  3      OPC=nopl_r32        
  nop                       #  24    0x142d2c  1      OPC=nop             
  nop                       #  25    0x142d2d  1      OPC=nop             
  movq %rdi, %rax           #  26    0x142d2e  3      OPC=movq_r64_r64    
  jmpq .L_142d40            #  27    0x142d31  2      OPC=jmpq_label      
  nop                       #  28    0x142d33  1      OPC=nop             
  nop                       #  29    0x142d34  1      OPC=nop             
  nopl %eax                 #  30    0x142d35  3      OPC=nopl_r32        
  nop                       #  31    0x142d38  1      OPC=nop             
  nop                       #  32    0x142d39  1      OPC=nop             
.L_142d20:                  #        0x142d3a  0      OPC=<label>         
  testl %esi, %esi          #  33    0x142d3a  2      OPC=testl_r32_r32   
  je .L_142d60              #  34    0x142d3c  2      OPC=je_label        
  nop                       #  35    0x142d3e  1      OPC=nop             
  nop                       #  36    0x142d3f  1      OPC=nop             
  nop                       #  37    0x142d40  1      OPC=nop             
  subl $0x1, %esi           #  38    0x142d41  3      OPC=subl_r32_imm8   
  nop                       #  39    0x142d44  1      OPC=nop             
.L_142d40:                  #        0x142d45  0      OPC=<label>         
  addl $0x4, %eax           #  40    0x142d45  3      OPC=addl_r32_imm8   
  movl %eax, %eax           #  41    0x142d48  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx  #  42    0x142d4a  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  43    0x142d4e  2      OPC=testl_r32_r32   
  jne .L_142d20             #  44    0x142d50  2      OPC=jne_label       
  nop                       #  45    0x142d52  1      OPC=nop             
  nop                       #  46    0x142d53  1      OPC=nop             
  nop                       #  47    0x142d54  1      OPC=nop             
.L_142d60:                  #        0x142d55  0      OPC=<label>         
  nop                       #  48    0x142d55  1      OPC=nop             
  nop                       #  49    0x142d56  1      OPC=nop             
  nop                       #  50    0x142d57  1      OPC=nop             
  nop                       #  51    0x142d58  1      OPC=nop             
  nop                       #  52    0x142d59  1      OPC=nop             
  nopl %eax                 #  53    0x142d5a  3      OPC=nopl_r32        
  subl %edi, %eax           #  54    0x142d5d  2      OPC=subl_r32_r32    
  nop                       #  55    0x142d5f  1      OPC=nop             
  nop                       #  56    0x142d60  1      OPC=nop             
  nop                       #  57    0x142d61  1      OPC=nop             
  nop                       #  58    0x142d62  1      OPC=nop             
  nop                       #  59    0x142d63  1      OPC=nop             
  sarl $0x2, %eax           #  60    0x142d64  3      OPC=sarl_r32_imm8   
  retq                      #  61    0x142d67  1      OPC=retq            
  nop                       #  62    0x142d68  1      OPC=nop             
  nop                       #  63    0x142d69  1      OPC=nop             
  nop                       #  64    0x142d6a  1      OPC=nop             
.L_142d80:                  #        0x142d6b  0      OPC=<label>         
  nop                       #  65    0x142d6b  1      OPC=nop             
  nop                       #  66    0x142d6c  1      OPC=nop             
  nopl %eax                 #  67    0x142d6d  3      OPC=nopl_r32        
  nopl %eax                 #  68    0x142d70  3      OPC=nopl_r32        
  xorl %eax, %eax           #  69    0x142d73  2      OPC=xorl_r32_r32    
  retq                      #  70    0x142d75  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
