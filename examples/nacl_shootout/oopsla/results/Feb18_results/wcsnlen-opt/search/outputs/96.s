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
  movl %edi, %edi           #  3     0x142d02  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %ecx  #  4     0x142d04  4      OPC=movl_r32_m32   
  nop                       #  5     0x142d08  1      OPC=nop            
  nop                       #  6     0x142d09  1      OPC=nop            
  nop                       #  7     0x142d0a  1      OPC=nop            
  testl %ecx, %ecx          #  8     0x142d0b  2      OPC=testl_r32_r32  
  je .L_142d80              #  9     0x142d0d  2      OPC=je_label       
  testl %esi, %esi          #  10    0x142d0f  2      OPC=testl_r32_r32  
  je .L_142d80              #  11    0x142d11  2      OPC=je_label       
  subl $0x1, %esi           #  12    0x142d13  3      OPC=subl_r32_imm8  
  nop                       #  13    0x142d16  1      OPC=nop            
  movq %rdi, %rax           #  14    0x142d17  3      OPC=movq_r64_r64   
  nop                       #  15    0x142d1a  1      OPC=nop            
  nop                       #  16    0x142d1b  1      OPC=nop            
  jmpq .L_142d40            #  17    0x142d1c  2      OPC=jmpq_label     
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
  nop                       #  28    0x142d28  1      OPC=nop            
.L_142d20:                  #        0x142d29  0      OPC=<label>        
  testl %esi, %esi          #  29    0x142d29  2      OPC=testl_r32_r32  
  je .L_142d60              #  30    0x142d2b  2      OPC=je_label       
  subl $0x1, %esi           #  31    0x142d2d  3      OPC=subl_r32_imm8  
  nop                       #  32    0x142d30  1      OPC=nop            
  nop                       #  33    0x142d31  1      OPC=nop            
  nop                       #  34    0x142d32  1      OPC=nop            
  nop                       #  35    0x142d33  1      OPC=nop            
  nop                       #  36    0x142d34  1      OPC=nop            
  nop                       #  37    0x142d35  1      OPC=nop            
  nop                       #  38    0x142d36  1      OPC=nop            
.L_142d40:                  #        0x142d37  0      OPC=<label>        
  nop                       #  39    0x142d37  1      OPC=nop            
  nop                       #  40    0x142d38  1      OPC=nop            
  addl $0x4, %eax           #  41    0x142d39  3      OPC=addl_r32_imm8  
  movl (%r15,%rax,1), %edx  #  42    0x142d3c  4      OPC=movl_r32_m32   
  testl %edx, %edx          #  43    0x142d40  2      OPC=testl_r32_r32  
  jne .L_142d20             #  44    0x142d42  2      OPC=jne_label      
  nop                       #  45    0x142d44  1      OPC=nop            
  nop                       #  46    0x142d45  1      OPC=nop            
  nop                       #  47    0x142d46  1      OPC=nop            
  nop                       #  48    0x142d47  1      OPC=nop            
  nop                       #  49    0x142d48  1      OPC=nop            
  nop                       #  50    0x142d49  1      OPC=nop            
  nop                       #  51    0x142d4a  1      OPC=nop            
  nop                       #  52    0x142d4b  1      OPC=nop            
  nop                       #  53    0x142d4c  1      OPC=nop            
  nopl %eax                 #  54    0x142d4d  3      OPC=nopl_r32       
  nop                       #  55    0x142d50  1      OPC=nop            
  nop                       #  56    0x142d51  1      OPC=nop            
  nop                       #  57    0x142d52  1      OPC=nop            
  nop                       #  58    0x142d53  1      OPC=nop            
  nop                       #  59    0x142d54  1      OPC=nop            
  nop                       #  60    0x142d55  1      OPC=nop            
  nop                       #  61    0x142d56  1      OPC=nop            
  nop                       #  62    0x142d57  1      OPC=nop            
  nop                       #  63    0x142d58  1      OPC=nop            
  nop                       #  64    0x142d59  1      OPC=nop            
  nop                       #  65    0x142d5a  1      OPC=nop            
  nop                       #  66    0x142d5b  1      OPC=nop            
  nop                       #  67    0x142d5c  1      OPC=nop            
  nop                       #  68    0x142d5d  1      OPC=nop            
.L_142d60:                  #        0x142d5e  0      OPC=<label>        
  nop                       #  69    0x142d5e  1      OPC=nop            
  nop                       #  70    0x142d5f  1      OPC=nop            
  nop                       #  71    0x142d60  1      OPC=nop            
  nop                       #  72    0x142d61  1      OPC=nop            
  subl %edi, %eax           #  73    0x142d62  2      OPC=subl_r32_r32   
  sarl $0x2, %eax           #  74    0x142d64  3      OPC=sarl_r32_imm8  
  retq                      #  75    0x142d67  1      OPC=retq           
  nop                       #  76    0x142d68  1      OPC=nop            
  nop                       #  77    0x142d69  1      OPC=nop            
  nop                       #  78    0x142d6a  1      OPC=nop            
  nop                       #  79    0x142d6b  1      OPC=nop            
  nop                       #  80    0x142d6c  1      OPC=nop            
  nop                       #  81    0x142d6d  1      OPC=nop            
  nop                       #  82    0x142d6e  1      OPC=nop            
  nop                       #  83    0x142d6f  1      OPC=nop            
  nop                       #  84    0x142d70  1      OPC=nop            
  nop                       #  85    0x142d71  1      OPC=nop            
  nop                       #  86    0x142d72  1      OPC=nop            
  nop                       #  87    0x142d73  1      OPC=nop            
  nop                       #  88    0x142d74  1      OPC=nop            
  nop                       #  89    0x142d75  1      OPC=nop            
  nop                       #  90    0x142d76  1      OPC=nop            
  nop                       #  91    0x142d77  1      OPC=nop            
.L_142d80:                  #        0x142d78  0      OPC=<label>        
  nop                       #  92    0x142d78  1      OPC=nop            
  xorl %eax, %eax           #  93    0x142d79  2      OPC=xorl_r32_r32   
  retq                      #  94    0x142d7b  1      OPC=retq           
                                                                         
.size wcsnlen, .-wcsnlen
