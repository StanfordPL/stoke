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
  movl %edi, %eax           #  4     0x142d03  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %ecx  #  5     0x142d05  4      OPC=movl_r32_m32    
  nop                       #  6     0x142d09  1      OPC=nop             
  nop                       #  7     0x142d0a  1      OPC=nop             
  nop                       #  8     0x142d0b  1      OPC=nop             
  nop                       #  9     0x142d0c  1      OPC=nop             
  nop                       #  10    0x142d0d  1      OPC=nop             
  nop                       #  11    0x142d0e  1      OPC=nop             
  testl %ecx, %ecx          #  12    0x142d0f  2      OPC=testl_r32_r32   
  je .L_142d80              #  13    0x142d11  2      OPC=je_label        
  testl %esi, %esi          #  14    0x142d13  2      OPC=testl_r32_r32   
  nop                       #  15    0x142d15  1      OPC=nop             
  je .L_142d80              #  16    0x142d16  2      OPC=je_label        
  nop                       #  17    0x142d18  1      OPC=nop             
  nop                       #  18    0x142d19  1      OPC=nop             
  nop                       #  19    0x142d1a  1      OPC=nop             
  nop                       #  20    0x142d1b  1      OPC=nop             
  nop                       #  21    0x142d1c  1      OPC=nop             
  nop                       #  22    0x142d1d  1      OPC=nop             
  nop                       #  23    0x142d1e  1      OPC=nop             
  nop                       #  24    0x142d1f  1      OPC=nop             
  nop                       #  25    0x142d20  1      OPC=nop             
  nop                       #  26    0x142d21  1      OPC=nop             
  nop                       #  27    0x142d22  1      OPC=nop             
  nop                       #  28    0x142d23  1      OPC=nop             
  nop                       #  29    0x142d24  1      OPC=nop             
  nop                       #  30    0x142d25  1      OPC=nop             
  subl $0x1, %esi           #  31    0x142d26  3      OPC=subl_r32_imm8   
  jmpq .L_142d40            #  32    0x142d29  2      OPC=jmpq_label      
.L_142d20:                  #        0x142d2b  0      OPC=<label>         
  testl %esi, %esi          #  33    0x142d2b  2      OPC=testl_r32_r32   
  je .L_142d60              #  34    0x142d2d  2      OPC=je_label        
  subl $0x1, %esi           #  35    0x142d2f  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d32  0      OPC=<label>         
  addl $0x4, %eax           #  36    0x142d32  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  37    0x142d35  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  38    0x142d39  2      OPC=testl_r32_r32   
  nop                       #  39    0x142d3b  1      OPC=nop             
  nop                       #  40    0x142d3c  1      OPC=nop             
  nop                       #  41    0x142d3d  1      OPC=nop             
  nop                       #  42    0x142d3e  1      OPC=nop             
  nop                       #  43    0x142d3f  1      OPC=nop             
  jne .L_142d20             #  44    0x142d40  2      OPC=jne_label       
  nop                       #  45    0x142d42  1      OPC=nop             
  nop                       #  46    0x142d43  1      OPC=nop             
  nop                       #  47    0x142d44  1      OPC=nop             
  nop                       #  48    0x142d45  1      OPC=nop             
  nop                       #  49    0x142d46  1      OPC=nop             
  nop                       #  50    0x142d47  1      OPC=nop             
  nop                       #  51    0x142d48  1      OPC=nop             
  nop                       #  52    0x142d49  1      OPC=nop             
  nop                       #  53    0x142d4a  1      OPC=nop             
  nop                       #  54    0x142d4b  1      OPC=nop             
  nop                       #  55    0x142d4c  1      OPC=nop             
  nop                       #  56    0x142d4d  1      OPC=nop             
  nop                       #  57    0x142d4e  1      OPC=nop             
  nop                       #  58    0x142d4f  1      OPC=nop             
  nop                       #  59    0x142d50  1      OPC=nop             
  nop                       #  60    0x142d51  1      OPC=nop             
  nop                       #  61    0x142d52  1      OPC=nop             
  nop                       #  62    0x142d53  1      OPC=nop             
  nop                       #  63    0x142d54  1      OPC=nop             
  nop                       #  64    0x142d55  1      OPC=nop             
  nop                       #  65    0x142d56  1      OPC=nop             
  nop                       #  66    0x142d57  1      OPC=nop             
  nop                       #  67    0x142d58  1      OPC=nop             
.L_142d60:                  #        0x142d59  0      OPC=<label>         
  subl %edi, %eax           #  68    0x142d59  2      OPC=subl_r32_r32    
  shrl $0x2, %eax           #  69    0x142d5b  3      OPC=shrl_r32_imm8   
  nop                       #  70    0x142d5e  1      OPC=nop             
  nop                       #  71    0x142d5f  1      OPC=nop             
  retq                      #  72    0x142d60  1      OPC=retq            
.L_142d80:                  #        0x142d61  0      OPC=<label>         
  nop                       #  73    0x142d61  1      OPC=nop             
  nop                       #  74    0x142d62  1      OPC=nop             
  nop                       #  75    0x142d63  1      OPC=nop             
  nop                       #  76    0x142d64  1      OPC=nop             
  nop                       #  77    0x142d65  1      OPC=nop             
  nop                       #  78    0x142d66  1      OPC=nop             
  nop                       #  79    0x142d67  1      OPC=nop             
  nop                       #  80    0x142d68  1      OPC=nop             
  nop                       #  81    0x142d69  1      OPC=nop             
  nop                       #  82    0x142d6a  1      OPC=nop             
  nop                       #  83    0x142d6b  1      OPC=nop             
  nop                       #  84    0x142d6c  1      OPC=nop             
  nop                       #  85    0x142d6d  1      OPC=nop             
  nop                       #  86    0x142d6e  1      OPC=nop             
  subq %rax, %rax           #  87    0x142d6f  3      OPC=subq_r64_r64    
  nop                       #  88    0x142d72  1      OPC=nop             
  nop                       #  89    0x142d73  1      OPC=nop             
  nop                       #  90    0x142d74  1      OPC=nop             
  nop                       #  91    0x142d75  1      OPC=nop             
  nopl %eax                 #  92    0x142d76  3      OPC=nopl_r32        
  nop                       #  93    0x142d79  1      OPC=nop             
  nop                       #  94    0x142d7a  1      OPC=nop             
  nop                       #  95    0x142d7b  1      OPC=nop             
  retq                      #  96    0x142d7c  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
