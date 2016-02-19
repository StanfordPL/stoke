  .text
  .globl wcsrchr
  .type wcsrchr, @function

#! file-offset 0x1838c0
#! rip-offset  0x1438c0
#! capacity    256 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsrchr:                   #        0x1438c0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x1438c0  2      OPC=movl_r32_r32    
  orl %edi, %edi            #  2     0x1438c2  2      OPC=orl_r32_r32     
  movl (%r15,%rdi,1), %ecx  #  3     0x1438c4  4      OPC=movl_r32_m32    
  nop                       #  4     0x1438c8  1      OPC=nop             
  nop                       #  5     0x1438c9  1      OPC=nop             
  nop                       #  6     0x1438ca  1      OPC=nop             
  nop                       #  7     0x1438cb  1      OPC=nop             
  nop                       #  8     0x1438cc  1      OPC=nop             
  nop                       #  9     0x1438cd  1      OPC=nop             
  testl %ecx, %ecx          #  10    0x1438ce  2      OPC=testl_r32_r32   
  nop                       #  11    0x1438d0  1      OPC=nop             
  nop                       #  12    0x1438d1  1      OPC=nop             
  nop                       #  13    0x1438d2  1      OPC=nop             
  je .L_143900              #  14    0x1438d3  2      OPC=je_label        
  nop                       #  15    0x1438d5  1      OPC=nop             
  nop                       #  16    0x1438d6  1      OPC=nop             
.L_1438e0:                  #        0x1438d7  0      OPC=<label>         
  nop                       #  17    0x1438d7  1      OPC=nop             
  nop                       #  18    0x1438d8  1      OPC=nop             
  addl $0x4, %eax           #  19    0x1438d9  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  20    0x1438dc  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  21    0x1438e0  2      OPC=testl_r32_r32   
  jne .L_1438e0             #  22    0x1438e2  2      OPC=jne_label       
  nop                       #  23    0x1438e4  1      OPC=nop             
  nop                       #  24    0x1438e5  1      OPC=nop             
  cmpl %eax, %edi           #  25    0x1438e6  2      OPC=cmpl_r32_r32    
  ja .L_143960              #  26    0x1438e8  2      OPC=ja_label        
  nop                       #  27    0x1438ea  1      OPC=nop             
  nop                       #  28    0x1438eb  1      OPC=nop             
  nop                       #  29    0x1438ec  1      OPC=nop             
  nopl %eax                 #  30    0x1438ed  3      OPC=nopl_r32        
  nop                       #  31    0x1438f0  1      OPC=nop             
  nop                       #  32    0x1438f1  1      OPC=nop             
  nop                       #  33    0x1438f2  1      OPC=nop             
  nop                       #  34    0x1438f3  1      OPC=nop             
  nop                       #  35    0x1438f4  1      OPC=nop             
  nop                       #  36    0x1438f5  1      OPC=nop             
  nop                       #  37    0x1438f6  1      OPC=nop             
.L_143900:                  #        0x1438f7  0      OPC=<label>         
  nop                       #  38    0x1438f7  1      OPC=nop             
  nop                       #  39    0x1438f8  1      OPC=nop             
  nop                       #  40    0x1438f9  1      OPC=nop             
  nop                       #  41    0x1438fa  1      OPC=nop             
  nop                       #  42    0x1438fb  1      OPC=nop             
  nop                       #  43    0x1438fc  1      OPC=nop             
  nop                       #  44    0x1438fd  1      OPC=nop             
  nop                       #  45    0x1438fe  1      OPC=nop             
  nop                       #  46    0x1438ff  1      OPC=nop             
  nop                       #  47    0x143900  1      OPC=nop             
  nop                       #  48    0x143901  1      OPC=nop             
.L_143920:                  #        0x143902  0      OPC=<label>         
  andl %eax, %eax           #  49    0x143902  2      OPC=andl_r32_r32_1  
  cmpl %esi, (%r15,%rax,1)  #  50    0x143904  4      OPC=cmpl_m32_r32    
  je .L_143980              #  51    0x143908  2      OPC=je_label        
.L_143940:                  #        0x14390a  0      OPC=<label>         
  subl $0x4, %eax           #  52    0x14390a  3      OPC=subl_r32_imm8   
  nop                       #  53    0x14390d  1      OPC=nop             
  nop                       #  54    0x14390e  1      OPC=nop             
  cmpl %eax, %edi           #  55    0x14390f  2      OPC=cmpl_r32_r32    
  jbe .L_143920             #  56    0x143911  2      OPC=jbe_label       
  nop                       #  57    0x143913  1      OPC=nop             
  nop                       #  58    0x143914  1      OPC=nop             
  nop                       #  59    0x143915  1      OPC=nop             
  nop                       #  60    0x143916  1      OPC=nop             
  nop                       #  61    0x143917  1      OPC=nop             
  nop                       #  62    0x143918  1      OPC=nop             
  orq $0x3, %rax            #  63    0x143919  6      OPC=orq_rax_imm32   
  nop                       #  64    0x14391f  1      OPC=nop             
  shlb $0x40, %ah           #  65    0x143920  3      OPC=shlb_rh_imm8    
  nop                       #  66    0x143923  1      OPC=nop             
  nop                       #  67    0x143924  1      OPC=nop             
.L_143960:                  #        0x143925  0      OPC=<label>         
  nop                       #  68    0x143925  1      OPC=nop             
  nop                       #  69    0x143926  1      OPC=nop             
  nop                       #  70    0x143927  1      OPC=nop             
  nop                       #  71    0x143928  1      OPC=nop             
  nop                       #  72    0x143929  1      OPC=nop             
  nop                       #  73    0x14392a  1      OPC=nop             
  nop                       #  74    0x14392b  1      OPC=nop             
  nop                       #  75    0x14392c  1      OPC=nop             
  nop                       #  76    0x14392d  1      OPC=nop             
  nop                       #  77    0x14392e  1      OPC=nop             
  nop                       #  78    0x14392f  1      OPC=nop             
  nop                       #  79    0x143930  1      OPC=nop             
  nop                       #  80    0x143931  1      OPC=nop             
  nop                       #  81    0x143932  1      OPC=nop             
  nopl %eax                 #  82    0x143933  3      OPC=nopl_r32        
  nop                       #  83    0x143936  1      OPC=nop             
  nop                       #  84    0x143937  1      OPC=nop             
  andl $0x0, %eax           #  85    0x143938  6      OPC=andl_r32_imm32  
  nop                       #  86    0x14393e  1      OPC=nop             
  nop                       #  87    0x14393f  1      OPC=nop             
  nop                       #  88    0x143940  1      OPC=nop             
  nop                       #  89    0x143941  1      OPC=nop             
  nop                       #  90    0x143942  1      OPC=nop             
  nop                       #  91    0x143943  1      OPC=nop             
.L_143980:                  #        0x143944  0      OPC=<label>         
  nopl %eax                 #  92    0x143944  3      OPC=nopl_r32        
  retq                      #  93    0x143947  1      OPC=retq            
                                                                          
.size wcsrchr, .-wcsrchr
