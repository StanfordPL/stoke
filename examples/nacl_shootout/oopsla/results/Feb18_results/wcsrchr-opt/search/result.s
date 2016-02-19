  .text
  .globl wcsrchr
  .type wcsrchr, @function

#! file-offset 0x1838c0
#! rip-offset  0x1438c0
#! capacity    256 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsrchr:                   #        0x1438c0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x1438c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx  #  2     0x1438c2  4      OPC=movl_r32_m32    
  nop                       #  3     0x1438c6  1      OPC=nop             
  nop                       #  4     0x1438c7  1      OPC=nop             
  nop                       #  5     0x1438c8  1      OPC=nop             
  nop                       #  6     0x1438c9  1      OPC=nop             
  nop                       #  7     0x1438ca  1      OPC=nop             
  nop                       #  8     0x1438cb  1      OPC=nop             
  testl %ecx, %ecx          #  9     0x1438cc  2      OPC=testl_r32_r32   
  nop                       #  10    0x1438ce  1      OPC=nop             
  nop                       #  11    0x1438cf  1      OPC=nop             
  nop                       #  12    0x1438d0  1      OPC=nop             
  je .L_143900              #  13    0x1438d1  2      OPC=je_label        
.L_1438e0:                  #        0x1438d3  0      OPC=<label>         
  addl $0x4, %eax           #  14    0x1438d3  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  15    0x1438d6  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  16    0x1438da  2      OPC=testl_r32_r32   
  jne .L_1438e0             #  17    0x1438dc  2      OPC=jne_label       
  cmpl %eax, %edi           #  18    0x1438de  2      OPC=cmpl_r32_r32    
  ja .L_143960              #  19    0x1438e0  2      OPC=ja_label        
  nop                       #  20    0x1438e2  1      OPC=nop             
.L_143900:                  #        0x1438e3  0      OPC=<label>         
.L_143920:                  #        0x1438e3  0      OPC=<label>         
  andl %eax, %eax           #  21    0x1438e3  2      OPC=andl_r32_r32_1  
  cmpl %esi, (%r15,%rax,1)  #  22    0x1438e5  4      OPC=cmpl_m32_r32    
  je .L_143980              #  23    0x1438e9  2      OPC=je_label        
  subq $0x4, %rax           #  24    0x1438eb  4      OPC=subq_r64_imm8   
  cmpl %eax, %edi           #  25    0x1438ef  2      OPC=cmpl_r32_r32    
  jbe .L_143920             #  26    0x1438f1  2      OPC=jbe_label       
  nopl %eax                 #  27    0x1438f3  3      OPC=nopl_r32        
  nopl %eax                 #  28    0x1438f6  3      OPC=nopl_r32        
  nop                       #  29    0x1438f9  1      OPC=nop             
  nop                       #  30    0x1438fa  1      OPC=nop             
  nop                       #  31    0x1438fb  1      OPC=nop             
  nop                       #  32    0x1438fc  1      OPC=nop             
  nop                       #  33    0x1438fd  1      OPC=nop             
  nop                       #  34    0x1438fe  1      OPC=nop             
  nop                       #  35    0x1438ff  1      OPC=nop             
.L_143960:                  #        0x143900  0      OPC=<label>         
  nop                       #  36    0x143900  1      OPC=nop             
  nop                       #  37    0x143901  1      OPC=nop             
  xorl %eax, %eax           #  38    0x143902  2      OPC=xorl_r32_r32    
.L_143980:                  #        0x143904  0      OPC=<label>         
  nop                       #  39    0x143904  1      OPC=nop             
  nop                       #  40    0x143905  1      OPC=nop             
  nop                       #  41    0x143906  1      OPC=nop             
  nop                       #  42    0x143907  1      OPC=nop             
  retq                      #  43    0x143908  1      OPC=retq            
                                                                          
.size wcsrchr, .-wcsrchr
