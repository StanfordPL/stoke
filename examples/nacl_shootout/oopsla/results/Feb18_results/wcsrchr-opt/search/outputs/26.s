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
  nop                       #  4     0x1438c3  1      OPC=nop             
  movl %edi, %eax           #  5     0x1438c4  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %ecx  #  6     0x1438c6  4      OPC=movl_r32_m32    
  nop                       #  7     0x1438ca  1      OPC=nop             
  nop                       #  8     0x1438cb  1      OPC=nop             
  orl %ecx, %ecx            #  9     0x1438cc  2      OPC=orl_r32_r32_1   
  je .L_143900              #  10    0x1438ce  2      OPC=je_label        
  nop                       #  11    0x1438d0  1      OPC=nop             
.L_1438e0:                  #        0x1438d1  0      OPC=<label>         
  addl $0x4, %eax           #  12    0x1438d1  5      OPC=addl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  13    0x1438d6  4      OPC=movl_r32_m32    
  sarw $0x2, %dx            #  14    0x1438da  4      OPC=sarw_r16_imm8   
  jne .L_1438e0             #  15    0x1438de  2      OPC=jne_label       
  nop                       #  16    0x1438e0  1      OPC=nop             
  nop                       #  17    0x1438e1  1      OPC=nop             
  nop                       #  18    0x1438e2  1      OPC=nop             
  nop                       #  19    0x1438e3  1      OPC=nop             
  nop                       #  20    0x1438e4  1      OPC=nop             
  cmpl %eax, %edi           #  21    0x1438e5  2      OPC=cmpl_r32_r32    
  nop                       #  22    0x1438e7  1      OPC=nop             
  nop                       #  23    0x1438e8  1      OPC=nop             
  nop                       #  24    0x1438e9  1      OPC=nop             
  nop                       #  25    0x1438ea  1      OPC=nop             
  decl %edi                 #  26    0x1438eb  2      OPC=decl_r32        
  ja .L_143960              #  27    0x1438ed  2      OPC=ja_label        
  nop                       #  28    0x1438ef  1      OPC=nop             
  nop                       #  29    0x1438f0  1      OPC=nop             
  nop                       #  30    0x1438f1  1      OPC=nop             
  nop                       #  31    0x1438f2  1      OPC=nop             
  nop                       #  32    0x1438f3  1      OPC=nop             
  nop                       #  33    0x1438f4  1      OPC=nop             
.L_143900:                  #        0x1438f5  0      OPC=<label>         
  nop                       #  34    0x1438f5  1      OPC=nop             
  nop                       #  35    0x1438f6  1      OPC=nop             
  nop                       #  36    0x1438f7  1      OPC=nop             
  nop                       #  37    0x1438f8  1      OPC=nop             
  nop                       #  38    0x1438f9  1      OPC=nop             
.L_143920:                  #        0x1438fa  0      OPC=<label>         
  movl %eax, %eax           #  39    0x1438fa  2      OPC=movl_r32_r32    
  cmpl %esi, (%r15,%rax,1)  #  40    0x1438fc  4      OPC=cmpl_m32_r32    
  je .L_143980              #  41    0x143900  2      OPC=je_label        
  subq $0x4, %rax           #  42    0x143902  6      OPC=subq_rax_imm32  
  cmpl %eax, %edi           #  43    0x143908  2      OPC=cmpl_r32_r32    
  jbe .L_143920             #  44    0x14390a  2      OPC=jbe_label       
  nop                       #  45    0x14390c  1      OPC=nop             
  nop                       #  46    0x14390d  1      OPC=nop             
  nop                       #  47    0x14390e  1      OPC=nop             
  nop                       #  48    0x14390f  1      OPC=nop             
  nop                       #  49    0x143910  1      OPC=nop             
  nopl %eax                 #  50    0x143911  3      OPC=nopl_r32        
  nop                       #  51    0x143914  1      OPC=nop             
  nop                       #  52    0x143915  1      OPC=nop             
.L_143960:                  #        0x143916  0      OPC=<label>         
  nop                       #  53    0x143916  1      OPC=nop             
  nop                       #  54    0x143917  1      OPC=nop             
  sarb $0x1, %al            #  55    0x143918  2      OPC=sarb_r8_one     
  nop                       #  56    0x14391a  1      OPC=nop             
  nop                       #  57    0x14391b  1      OPC=nop             
  nop                       #  58    0x14391c  1      OPC=nop             
  xorq %rax, %rax           #  59    0x14391d  3      OPC=xorq_r64_r64_1  
.L_143980:                  #        0x143920  0      OPC=<label>         
  retq                      #  60    0x143920  1      OPC=retq            
                                                                          
.size wcsrchr, .-wcsrchr
