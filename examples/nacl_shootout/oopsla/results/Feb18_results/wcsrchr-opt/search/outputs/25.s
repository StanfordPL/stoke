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
  nop                       #  5     0x1438c4  1      OPC=nop             
  nop                       #  6     0x1438c5  1      OPC=nop             
  nop                       #  7     0x1438c6  1      OPC=nop             
  nop                       #  8     0x1438c7  1      OPC=nop             
  nop                       #  9     0x1438c8  1      OPC=nop             
  nop                       #  10    0x1438c9  1      OPC=nop             
  nop                       #  11    0x1438ca  1      OPC=nop             
  nop                       #  12    0x1438cb  1      OPC=nop             
  nop                       #  13    0x1438cc  1      OPC=nop             
  nop                       #  14    0x1438cd  1      OPC=nop             
  movl %edi, %eax           #  15    0x1438ce  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %ecx  #  16    0x1438d0  4      OPC=movl_r32_m32    
  nop                       #  17    0x1438d4  1      OPC=nop             
  nop                       #  18    0x1438d5  1      OPC=nop             
  nop                       #  19    0x1438d6  1      OPC=nop             
  nop                       #  20    0x1438d7  1      OPC=nop             
  orl %ecx, %ecx            #  21    0x1438d8  2      OPC=orl_r32_r32_1   
  nop                       #  22    0x1438da  1      OPC=nop             
  nop                       #  23    0x1438db  1      OPC=nop             
  nop                       #  24    0x1438dc  1      OPC=nop             
  nop                       #  25    0x1438dd  1      OPC=nop             
  je .L_143900              #  26    0x1438de  2      OPC=je_label        
.L_1438e0:                  #        0x1438e0  0      OPC=<label>         
  addl $0x4, %eax           #  27    0x1438e0  5      OPC=addl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  28    0x1438e5  4      OPC=movl_r32_m32    
  sarw $0x2, %dx            #  29    0x1438e9  4      OPC=sarw_r16_imm8   
  jne .L_1438e0             #  30    0x1438ed  2      OPC=jne_label       
  nop                       #  31    0x1438ef  1      OPC=nop             
  nop                       #  32    0x1438f0  1      OPC=nop             
  nop                       #  33    0x1438f1  1      OPC=nop             
  nop                       #  34    0x1438f2  1      OPC=nop             
  nop                       #  35    0x1438f3  1      OPC=nop             
  cmpl %eax, %edi           #  36    0x1438f4  2      OPC=cmpl_r32_r32    
  nop                       #  37    0x1438f6  1      OPC=nop             
  nop                       #  38    0x1438f7  1      OPC=nop             
  nop                       #  39    0x1438f8  1      OPC=nop             
  ja .L_143960              #  40    0x1438f9  2      OPC=ja_label        
  nop                       #  41    0x1438fb  1      OPC=nop             
  nop                       #  42    0x1438fc  1      OPC=nop             
  andb $0xff, %al           #  43    0x1438fd  2      OPC=andb_al_imm8    
  nop                       #  44    0x1438ff  1      OPC=nop             
  nop                       #  45    0x143900  1      OPC=nop             
.L_143900:                  #        0x143901  0      OPC=<label>         
  nop                       #  46    0x143901  1      OPC=nop             
  nop                       #  47    0x143902  1      OPC=nop             
  nop                       #  48    0x143903  1      OPC=nop             
  nop                       #  49    0x143904  1      OPC=nop             
  nop                       #  50    0x143905  1      OPC=nop             
  nop                       #  51    0x143906  1      OPC=nop             
  nop                       #  52    0x143907  1      OPC=nop             
  nop                       #  53    0x143908  1      OPC=nop             
  nop                       #  54    0x143909  1      OPC=nop             
  nop                       #  55    0x14390a  1      OPC=nop             
.L_143920:                  #        0x14390b  0      OPC=<label>         
  movl %eax, %eax           #  56    0x14390b  2      OPC=movl_r32_r32_1  
  cmpl %esi, (%r15,%rax,1)  #  57    0x14390d  4      OPC=cmpl_m32_r32    
  je .L_143980              #  58    0x143911  2      OPC=je_label        
  subq $0x4, %rax           #  59    0x143913  6      OPC=subq_rax_imm32  
  cmpl %eax, %edi           #  60    0x143919  2      OPC=cmpl_r32_r32    
  jbe .L_143920             #  61    0x14391b  2      OPC=jbe_label       
  nop                       #  62    0x14391d  1      OPC=nop             
  nop                       #  63    0x14391e  1      OPC=nop             
  nop                       #  64    0x14391f  1      OPC=nop             
  nop                       #  65    0x143920  1      OPC=nop             
  nop                       #  66    0x143921  1      OPC=nop             
  nop                       #  67    0x143922  1      OPC=nop             
  nop                       #  68    0x143923  1      OPC=nop             
  nop                       #  69    0x143924  1      OPC=nop             
.L_143960:                  #        0x143925  0      OPC=<label>         
  nopl %eax                 #  70    0x143925  3      OPC=nopl_r32        
  nop                       #  71    0x143928  1      OPC=nop             
  nop                       #  72    0x143929  1      OPC=nop             
  xorq %rax, %rax           #  73    0x14392a  3      OPC=xorq_r64_r64_1  
  nopl %eax                 #  74    0x14392d  3      OPC=nopl_r32        
  nop                       #  75    0x143930  1      OPC=nop             
.L_143980:                  #        0x143931  0      OPC=<label>         
  retq                      #  76    0x143931  1      OPC=retq            
                                                                          
.size wcsrchr, .-wcsrchr
