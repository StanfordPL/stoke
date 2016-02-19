  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcsnlen:                   #        0x142d00  0      OPC=<label>        
  movl %edi, %edi           #  1     0x142d00  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %ecx  #  2     0x142d02  4      OPC=movl_r32_m32   
  nop                       #  3     0x142d06  1      OPC=nop            
  testl %ecx, %ecx          #  4     0x142d07  2      OPC=testl_r32_r32  
  movq %rdi, %rax           #  5     0x142d09  3      OPC=movq_r64_r64   
  nop                       #  6     0x142d0c  1      OPC=nop            
  nop                       #  7     0x142d0d  1      OPC=nop            
  je .L_142d80              #  8     0x142d0e  2      OPC=je_label       
  testl %esi, %esi          #  9     0x142d10  2      OPC=testl_r32_r32  
  nop                       #  10    0x142d12  1      OPC=nop            
  nop                       #  11    0x142d13  1      OPC=nop            
  je .L_142d80              #  12    0x142d14  2      OPC=je_label       
  subl $0x1, %esi           #  13    0x142d16  3      OPC=subl_r32_imm8  
  nop                       #  14    0x142d19  1      OPC=nop            
  nop                       #  15    0x142d1a  1      OPC=nop            
  jmpq .L_142d40            #  16    0x142d1b  2      OPC=jmpq_label     
  nop                       #  17    0x142d1d  1      OPC=nop            
  nop                       #  18    0x142d1e  1      OPC=nop            
  nop                       #  19    0x142d1f  1      OPC=nop            
  nop                       #  20    0x142d20  1      OPC=nop            
  nop                       #  21    0x142d21  1      OPC=nop            
  nop                       #  22    0x142d22  1      OPC=nop            
  nop                       #  23    0x142d23  1      OPC=nop            
  nop                       #  24    0x142d24  1      OPC=nop            
  nop                       #  25    0x142d25  1      OPC=nop            
  nop                       #  26    0x142d26  1      OPC=nop            
  nop                       #  27    0x142d27  1      OPC=nop            
.L_142d20:                  #        0x142d28  0      OPC=<label>        
  testl %esi, %esi          #  28    0x142d28  2      OPC=testl_r32_r32  
  je .L_142d60              #  29    0x142d2a  2      OPC=je_label       
  nop                       #  30    0x142d2c  1      OPC=nop            
  nop                       #  31    0x142d2d  1      OPC=nop            
  nop                       #  32    0x142d2e  1      OPC=nop            
  nop                       #  33    0x142d2f  1      OPC=nop            
  nop                       #  34    0x142d30  1      OPC=nop            
  subl $0x1, %esi           #  35    0x142d31  3      OPC=subl_r32_imm8  
.L_142d40:                  #        0x142d34  0      OPC=<label>        
  addl $0x4, %eax           #  36    0x142d34  3      OPC=addl_r32_imm8  
  movl (%r15,%rax,1), %edx  #  37    0x142d37  4      OPC=movl_r32_m32   
  testl %edx, %edx          #  38    0x142d3b  2      OPC=testl_r32_r32  
  jne .L_142d20             #  39    0x142d3d  2      OPC=jne_label      
  nop                       #  40    0x142d3f  1      OPC=nop            
  nopl %eax                 #  41    0x142d40  3      OPC=nopl_r32       
  nop                       #  42    0x142d43  1      OPC=nop            
  nop                       #  43    0x142d44  1      OPC=nop            
.L_142d60:                  #        0x142d45  0      OPC=<label>        
  nop                       #  44    0x142d45  1      OPC=nop            
  nop                       #  45    0x142d46  1      OPC=nop            
  nop                       #  46    0x142d47  1      OPC=nop            
  nop                       #  47    0x142d48  1      OPC=nop            
  subl %edi, %eax           #  48    0x142d49  2      OPC=subl_r32_r32   
  sarl $0x2, %eax           #  49    0x142d4b  3      OPC=sarl_r32_imm8  
  nop                       #  50    0x142d4e  1      OPC=nop            
  nop                       #  51    0x142d4f  1      OPC=nop            
  nop                       #  52    0x142d50  1      OPC=nop            
  nop                       #  53    0x142d51  1      OPC=nop            
  nop                       #  54    0x142d52  1      OPC=nop            
  retq                      #  55    0x142d53  1      OPC=retq           
  nop                       #  56    0x142d54  1      OPC=nop            
  nopl %eax                 #  57    0x142d55  3      OPC=nopl_r32       
  nop                       #  58    0x142d58  1      OPC=nop            
  nop                       #  59    0x142d59  1      OPC=nop            
.L_142d80:                  #        0x142d5a  0      OPC=<label>        
  nopl %eax                 #  60    0x142d5a  3      OPC=nopl_r32       
  nop                       #  61    0x142d5d  1      OPC=nop            
  xorl %eax, %eax           #  62    0x142d5e  2      OPC=xorl_r32_r32   
  retq                      #  63    0x142d60  1      OPC=retq           
                                                                         
.size wcsnlen, .-wcsnlen
