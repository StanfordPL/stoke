  .text
  .globl wcsrchr
  .type wcsrchr, @function

#! file-offset 0x1838c0
#! rip-offset  0x1438c0
#! capacity    256 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsrchr:                   #        0x1438c0  0      OPC=<label>         
  nop                       #  1     0x1438c0  1      OPC=nop             
  movl %edi, %edi           #  2     0x1438c1  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx  #  3     0x1438c3  4      OPC=movl_r32_m32    
  nop                       #  4     0x1438c7  1      OPC=nop             
  testl %ecx, %ecx          #  5     0x1438c8  2      OPC=testl_r32_r32   
  nop                       #  6     0x1438ca  1      OPC=nop             
  nop                       #  7     0x1438cb  1      OPC=nop             
  nop                       #  8     0x1438cc  1      OPC=nop             
  nop                       #  9     0x1438cd  1      OPC=nop             
  nop                       #  10    0x1438ce  1      OPC=nop             
  nop                       #  11    0x1438cf  1      OPC=nop             
  movl %edi, %eax           #  12    0x1438d0  2      OPC=movl_r32_r32    
  je .L_143900              #  13    0x1438d2  2      OPC=je_label        
  nop                       #  14    0x1438d4  1      OPC=nop             
.L_1438e0:                  #        0x1438d5  0      OPC=<label>         
  addl $0x4, %eax           #  15    0x1438d5  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  16    0x1438d8  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  17    0x1438dc  2      OPC=testl_r32_r32   
  jne .L_1438e0             #  18    0x1438de  2      OPC=jne_label       
  nop                       #  19    0x1438e0  1      OPC=nop             
  nop                       #  20    0x1438e1  1      OPC=nop             
  nop                       #  21    0x1438e2  1      OPC=nop             
  nop                       #  22    0x1438e3  1      OPC=nop             
  nop                       #  23    0x1438e4  1      OPC=nop             
  nop                       #  24    0x1438e5  1      OPC=nop             
  nop                       #  25    0x1438e6  1      OPC=nop             
  cmpl %eax, %edi           #  26    0x1438e7  2      OPC=cmpl_r32_r32    
  nop                       #  27    0x1438e9  1      OPC=nop             
  ja .L_143960              #  28    0x1438ea  2      OPC=ja_label        
  nop                       #  29    0x1438ec  1      OPC=nop             
  nop                       #  30    0x1438ed  1      OPC=nop             
  nop                       #  31    0x1438ee  1      OPC=nop             
  nop                       #  32    0x1438ef  1      OPC=nop             
  nop                       #  33    0x1438f0  1      OPC=nop             
  nop                       #  34    0x1438f1  1      OPC=nop             
  nop                       #  35    0x1438f2  1      OPC=nop             
  nop                       #  36    0x1438f3  1      OPC=nop             
.L_143900:                  #        0x1438f4  0      OPC=<label>         
  nop                       #  37    0x1438f4  1      OPC=nop             
  nop                       #  38    0x1438f5  1      OPC=nop             
  nop                       #  39    0x1438f6  1      OPC=nop             
  nop                       #  40    0x1438f7  1      OPC=nop             
  nop                       #  41    0x1438f8  1      OPC=nop             
  nop                       #  42    0x1438f9  1      OPC=nop             
.L_143920:                  #        0x1438fa  0      OPC=<label>         
  andl %eax, %eax           #  43    0x1438fa  2      OPC=andl_r32_r32_1  
  cmpl %esi, (%r15,%rax,1)  #  44    0x1438fc  4      OPC=cmpl_m32_r32    
  je .L_143980              #  45    0x143900  2      OPC=je_label        
.L_143940:                  #        0x143902  0      OPC=<label>         
  subl $0x4, %eax           #  46    0x143902  3      OPC=subl_r32_imm8   
  cmpl %eax, %edi           #  47    0x143905  2      OPC=cmpl_r32_r32    
  jbe .L_143920             #  48    0x143907  2      OPC=jbe_label       
  nop                       #  49    0x143909  1      OPC=nop             
  nop                       #  50    0x14390a  1      OPC=nop             
  nop                       #  51    0x14390b  1      OPC=nop             
  nop                       #  52    0x14390c  1      OPC=nop             
  nop                       #  53    0x14390d  1      OPC=nop             
  nop                       #  54    0x14390e  1      OPC=nop             
  nop                       #  55    0x14390f  1      OPC=nop             
  nop                       #  56    0x143910  1      OPC=nop             
  nop                       #  57    0x143911  1      OPC=nop             
  nop                       #  58    0x143912  1      OPC=nop             
  nopl %eax                 #  59    0x143913  3      OPC=nopl_r32        
  nop                       #  60    0x143916  1      OPC=nop             
  nop                       #  61    0x143917  1      OPC=nop             
.L_143960:                  #        0x143918  0      OPC=<label>         
  salb $0x20, %al           #  62    0x143918  3      OPC=salb_r8_imm8    
  subl %eax, %eax           #  63    0x14391b  2      OPC=subl_r32_r32_1  
  nop                       #  64    0x14391d  1      OPC=nop             
.L_143980:                  #        0x14391e  0      OPC=<label>         
  nop                       #  65    0x14391e  1      OPC=nop             
  nop                       #  66    0x14391f  1      OPC=nop             
  nop                       #  67    0x143920  1      OPC=nop             
  nop                       #  68    0x143921  1      OPC=nop             
  retq                      #  69    0x143922  1      OPC=retq            
                                                                          
.size wcsrchr, .-wcsrchr
