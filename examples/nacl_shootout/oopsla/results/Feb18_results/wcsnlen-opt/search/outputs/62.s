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
  testl %ecx, %ecx          #  4     0x142d07  2      OPC=testl_r32_r32   
  je .L_142d80              #  5     0x142d09  2      OPC=je_label        
  nop                       #  6     0x142d0b  1      OPC=nop             
  testl %esi, %esi          #  7     0x142d0c  2      OPC=testl_r32_r32   
  nop                       #  8     0x142d0e  1      OPC=nop             
  nop                       #  9     0x142d0f  1      OPC=nop             
  nop                       #  10    0x142d10  1      OPC=nop             
  nop                       #  11    0x142d11  1      OPC=nop             
  nop                       #  12    0x142d12  1      OPC=nop             
  nopl %eax                 #  13    0x142d13  3      OPC=nopl_r32        
  nopl %eax                 #  14    0x142d16  3      OPC=nopl_r32        
  nop                       #  15    0x142d19  1      OPC=nop             
  nop                       #  16    0x142d1a  1      OPC=nop             
  nop                       #  17    0x142d1b  1      OPC=nop             
  nop                       #  18    0x142d1c  1      OPC=nop             
  nop                       #  19    0x142d1d  1      OPC=nop             
  je .L_142d80              #  20    0x142d1e  2      OPC=je_label        
  nop                       #  21    0x142d20  1      OPC=nop             
  nop                       #  22    0x142d21  1      OPC=nop             
  nop                       #  23    0x142d22  1      OPC=nop             
  nop                       #  24    0x142d23  1      OPC=nop             
  subl $0x1, %esi           #  25    0x142d24  3      OPC=subl_r32_imm8   
  nop                       #  26    0x142d27  1      OPC=nop             
  nop                       #  27    0x142d28  1      OPC=nop             
  movq %rdi, %rax           #  28    0x142d29  3      OPC=movq_r64_r64    
  jmpq .L_142d40            #  29    0x142d2c  2      OPC=jmpq_label      
  nop                       #  30    0x142d2e  1      OPC=nop             
  nop                       #  31    0x142d2f  1      OPC=nop             
  nop                       #  32    0x142d30  1      OPC=nop             
  nop                       #  33    0x142d31  1      OPC=nop             
  nop                       #  34    0x142d32  1      OPC=nop             
  nop                       #  35    0x142d33  1      OPC=nop             
  nop                       #  36    0x142d34  1      OPC=nop             
  nop                       #  37    0x142d35  1      OPC=nop             
.L_142d20:                  #        0x142d36  0      OPC=<label>         
  testl %esi, %esi          #  38    0x142d36  2      OPC=testl_r32_r32   
  je .L_142d60              #  39    0x142d38  2      OPC=je_label        
  subl $0x1, %esi           #  40    0x142d3a  3      OPC=subl_r32_imm8   
  nop                       #  41    0x142d3d  1      OPC=nop             
  nop                       #  42    0x142d3e  1      OPC=nop             
  nop                       #  43    0x142d3f  1      OPC=nop             
  nop                       #  44    0x142d40  1      OPC=nop             
  nop                       #  45    0x142d41  1      OPC=nop             
.L_142d40:                  #        0x142d42  0      OPC=<label>         
  addl $0x4, %eax           #  46    0x142d42  3      OPC=addl_r32_imm8   
  movl %eax, %eax           #  47    0x142d45  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %edx  #  48    0x142d47  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  49    0x142d4b  2      OPC=testl_r32_r32   
  jne .L_142d20             #  50    0x142d4d  2      OPC=jne_label       
  nop                       #  51    0x142d4f  1      OPC=nop             
  nop                       #  52    0x142d50  1      OPC=nop             
  nop                       #  53    0x142d51  1      OPC=nop             
  nop                       #  54    0x142d52  1      OPC=nop             
  nop                       #  55    0x142d53  1      OPC=nop             
  nop                       #  56    0x142d54  1      OPC=nop             
  nop                       #  57    0x142d55  1      OPC=nop             
  nop                       #  58    0x142d56  1      OPC=nop             
.L_142d60:                  #        0x142d57  0      OPC=<label>         
  nop                       #  59    0x142d57  1      OPC=nop             
  nop                       #  60    0x142d58  1      OPC=nop             
  nopl %eax                 #  61    0x142d59  3      OPC=nopl_r32        
  subl %edi, %eax           #  62    0x142d5c  2      OPC=subl_r32_r32    
  nop                       #  63    0x142d5e  1      OPC=nop             
  nop                       #  64    0x142d5f  1      OPC=nop             
  nop                       #  65    0x142d60  1      OPC=nop             
  nop                       #  66    0x142d61  1      OPC=nop             
  nop                       #  67    0x142d62  1      OPC=nop             
  sarl $0x2, %eax           #  68    0x142d63  3      OPC=sarl_r32_imm8   
  retq                      #  69    0x142d66  1      OPC=retq            
  nop                       #  70    0x142d67  1      OPC=nop             
  nop                       #  71    0x142d68  1      OPC=nop             
  nop                       #  72    0x142d69  1      OPC=nop             
.L_142d80:                  #        0x142d6a  0      OPC=<label>         
  xorl %eax, %eax           #  73    0x142d6a  2      OPC=xorl_r32_r32    
  nop                       #  74    0x142d6c  1      OPC=nop             
  nop                       #  75    0x142d6d  1      OPC=nop             
  xorb %ah, %al             #  76    0x142d6e  2      OPC=xorb_r8_rh      
  nopl %eax                 #  77    0x142d70  3      OPC=nopl_r32        
  nop                       #  78    0x142d73  1      OPC=nop             
  nop                       #  79    0x142d74  1      OPC=nop             
  nop                       #  80    0x142d75  1      OPC=nop             
  nop                       #  81    0x142d76  1      OPC=nop             
  nop                       #  82    0x142d77  1      OPC=nop             
  retq                      #  83    0x142d78  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
