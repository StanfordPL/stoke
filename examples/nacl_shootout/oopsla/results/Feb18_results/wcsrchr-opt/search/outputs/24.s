  .text
  .globl wcsrchr
  .type wcsrchr, @function

#! file-offset 0x1838c0
#! rip-offset  0x1438c0
#! capacity    256 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsrchr:                   #        0x1438c0  0      OPC=<label>         
  nop                       #  1     0x1438c0  1      OPC=nop             
  nop                       #  2     0x1438c1  1      OPC=nop             
  nop                       #  3     0x1438c2  1      OPC=nop             
  movl %edi, %edi           #  4     0x1438c3  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  5     0x1438c5  4      OPC=movl_r32_m32    
  orl %ecx, %ecx            #  6     0x1438c9  2      OPC=orl_r32_r32_1   
  nop                       #  7     0x1438cb  1      OPC=nop             
  nop                       #  8     0x1438cc  1      OPC=nop             
  movq %rdi, %rax           #  9     0x1438cd  3      OPC=movq_r64_r64    
  je .L_143900              #  10    0x1438d0  2      OPC=je_label        
.L_1438e0:                  #        0x1438d2  0      OPC=<label>         
  addl $0x4, %eax           #  11    0x1438d2  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  12    0x1438d5  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  13    0x1438d9  2      OPC=testl_r32_r32   
  jne .L_1438e0             #  14    0x1438db  2      OPC=jne_label       
  cmpl %eax, %edi           #  15    0x1438dd  2      OPC=cmpl_r32_r32    
  nop                       #  16    0x1438df  1      OPC=nop             
  ja .L_143960              #  17    0x1438e0  2      OPC=ja_label        
.L_143900:                  #        0x1438e2  0      OPC=<label>         
  nop                       #  18    0x1438e2  1      OPC=nop             
  testl %ecx, %esi          #  19    0x1438e3  2      OPC=testl_r32_r32   
  nop                       #  20    0x1438e5  1      OPC=nop             
  nop                       #  21    0x1438e6  1      OPC=nop             
  jne .L_143940             #  22    0x1438e7  2      OPC=jne_label       
  orw %si, %di              #  23    0x1438e9  3      OPC=orw_r16_r16_1   
  nop                       #  24    0x1438ec  1      OPC=nop             
.L_143920:                  #        0x1438ed  0      OPC=<label>         
  andl %eax, %eax           #  25    0x1438ed  2      OPC=andl_r32_r32_1  
  cmpl %esi, (%r15,%rax,1)  #  26    0x1438ef  4      OPC=cmpl_m32_r32    
  je .L_143980              #  27    0x1438f3  2      OPC=je_label        
.L_143940:                  #        0x1438f5  0      OPC=<label>         
  subl $0x4, %eax           #  28    0x1438f5  3      OPC=subl_r32_imm8   
  cmpl %eax, %edi           #  29    0x1438f8  2      OPC=cmpl_r32_r32    
  jbe .L_143920             #  30    0x1438fa  2      OPC=jbe_label       
  nop                       #  31    0x1438fc  1      OPC=nop             
  nop                       #  32    0x1438fd  1      OPC=nop             
  nop                       #  33    0x1438fe  1      OPC=nop             
  nop                       #  34    0x1438ff  1      OPC=nop             
  nop                       #  35    0x143900  1      OPC=nop             
  nop                       #  36    0x143901  1      OPC=nop             
  nop                       #  37    0x143902  1      OPC=nop             
.L_143960:                  #        0x143903  0      OPC=<label>         
  nop                       #  38    0x143903  1      OPC=nop             
  nop                       #  39    0x143904  1      OPC=nop             
  nop                       #  40    0x143905  1      OPC=nop             
  nop                       #  41    0x143906  1      OPC=nop             
  nop                       #  42    0x143907  1      OPC=nop             
  nop                       #  43    0x143908  1      OPC=nop             
  nop                       #  44    0x143909  1      OPC=nop             
  nop                       #  45    0x14390a  1      OPC=nop             
  nop                       #  46    0x14390b  1      OPC=nop             
  nop                       #  47    0x14390c  1      OPC=nop             
  nop                       #  48    0x14390d  1      OPC=nop             
  subl %eax, %eax           #  49    0x14390e  2      OPC=subl_r32_r32_1  
  nop                       #  50    0x143910  1      OPC=nop             
  nop                       #  51    0x143911  1      OPC=nop             
.L_143980:                  #        0x143912  0      OPC=<label>         
  nop                       #  52    0x143912  1      OPC=nop             
  nop                       #  53    0x143913  1      OPC=nop             
.L_1439a0:                  #        0x143914  0      OPC=<label>         
  retq                      #  54    0x143914  1      OPC=retq            
                                                                          
.size wcsrchr, .-wcsrchr
