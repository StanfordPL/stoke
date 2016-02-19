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
  movq %rdi, %rax           #  3     0x142d02  3      OPC=movq_r64_r64    
  nop                       #  4     0x142d05  1      OPC=nop             
  nop                       #  5     0x142d06  1      OPC=nop             
  nop                       #  6     0x142d07  1      OPC=nop             
  andl %eax, %edi           #  7     0x142d08  2      OPC=andl_r32_r32    
  movl (%r15,%rdi,1), %ecx  #  8     0x142d0a  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  9     0x142d0e  2      OPC=testl_r32_r32   
  nop                       #  10    0x142d10  1      OPC=nop             
  nop                       #  11    0x142d11  1      OPC=nop             
  je .L_142d80              #  12    0x142d12  2      OPC=je_label        
  nop                       #  13    0x142d14  1      OPC=nop             
  nop                       #  14    0x142d15  1      OPC=nop             
  nop                       #  15    0x142d16  1      OPC=nop             
  nop                       #  16    0x142d17  1      OPC=nop             
  nop                       #  17    0x142d18  1      OPC=nop             
  nop                       #  18    0x142d19  1      OPC=nop             
  nop                       #  19    0x142d1a  1      OPC=nop             
  nop                       #  20    0x142d1b  1      OPC=nop             
.L_142d20:                  #        0x142d1c  0      OPC=<label>         
  testl %esi, %esi          #  21    0x142d1c  2      OPC=testl_r32_r32   
  je .L_142d60              #  22    0x142d1e  2      OPC=je_label        
  subl $0x1, %esi           #  23    0x142d20  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d23  0      OPC=<label>         
  addl $0x4, %eax           #  24    0x142d23  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  25    0x142d26  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  26    0x142d2a  2      OPC=testl_r32_r32   
  jne .L_142d20             #  27    0x142d2c  2      OPC=jne_label       
  nop                       #  28    0x142d2e  1      OPC=nop             
  nop                       #  29    0x142d2f  1      OPC=nop             
  nop                       #  30    0x142d30  1      OPC=nop             
  nopl %eax                 #  31    0x142d31  3      OPC=nopl_r32        
  nop                       #  32    0x142d34  1      OPC=nop             
  nop                       #  33    0x142d35  1      OPC=nop             
  nop                       #  34    0x142d36  1      OPC=nop             
  nop                       #  35    0x142d37  1      OPC=nop             
  nopl %eax                 #  36    0x142d38  3      OPC=nopl_r32        
.L_142d60:                  #        0x142d3b  0      OPC=<label>         
  subl %edi, %eax           #  37    0x142d3b  2      OPC=subl_r32_r32_1  
  shrl $0x2, %eax           #  38    0x142d3d  3      OPC=shrl_r32_imm8   
  nop                       #  39    0x142d40  1      OPC=nop             
  nop                       #  40    0x142d41  1      OPC=nop             
  nop                       #  41    0x142d42  1      OPC=nop             
  nop                       #  42    0x142d43  1      OPC=nop             
  nop                       #  43    0x142d44  1      OPC=nop             
  retq                      #  44    0x142d45  1      OPC=retq            
  nop                       #  45    0x142d46  1      OPC=nop             
  nop                       #  46    0x142d47  1      OPC=nop             
  nop                       #  47    0x142d48  1      OPC=nop             
  nop                       #  48    0x142d49  1      OPC=nop             
  nop                       #  49    0x142d4a  1      OPC=nop             
.L_142d80:                  #        0x142d4b  0      OPC=<label>         
  nop                       #  50    0x142d4b  1      OPC=nop             
  xorl %eax, %eax           #  51    0x142d4c  2      OPC=xorl_r32_r32    
  nop                       #  52    0x142d4e  1      OPC=nop             
  nopl %eax                 #  53    0x142d4f  3      OPC=nopl_r32        
  nop                       #  54    0x142d52  1      OPC=nop             
  nop                       #  55    0x142d53  1      OPC=nop             
  nop                       #  56    0x142d54  1      OPC=nop             
  nop                       #  57    0x142d55  1      OPC=nop             
  nop                       #  58    0x142d56  1      OPC=nop             
  andb %ch, %ah             #  59    0x142d57  2      OPC=andb_rh_rh      
  nopl %eax                 #  60    0x142d59  3      OPC=nopl_r32        
  nop                       #  61    0x142d5c  1      OPC=nop             
  nop                       #  62    0x142d5d  1      OPC=nop             
  nop                       #  63    0x142d5e  1      OPC=nop             
  retq                      #  64    0x142d5f  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
