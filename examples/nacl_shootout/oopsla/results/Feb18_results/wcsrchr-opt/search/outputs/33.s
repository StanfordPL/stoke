  .text
  .globl wcsrchr
  .type wcsrchr, @function

#! file-offset 0x1838c0
#! rip-offset  0x1438c0
#! capacity    256 bytes

# Text                      #  Line  RIP       Bytes  Opcode                
.wcsrchr:                   #        0x1438c0  0      OPC=<label>           
  nop                       #  1     0x1438c0  1      OPC=nop               
  orl %edi, %edi            #  2     0x1438c1  2      OPC=orl_r32_r32       
  movl (%r15,%rdi,1), %ecx  #  3     0x1438c3  4      OPC=movl_r32_m32      
  nop                       #  4     0x1438c7  1      OPC=nop               
  nopl %eax                 #  5     0x1438c8  3      OPC=nopl_r32          
  nop                       #  6     0x1438cb  1      OPC=nop               
  nop                       #  7     0x1438cc  1      OPC=nop               
  nopl %eax                 #  8     0x1438cd  3      OPC=nopl_r32          
  nop                       #  9     0x1438d0  1      OPC=nop               
  nop                       #  10    0x1438d1  1      OPC=nop               
  nop                       #  11    0x1438d2  1      OPC=nop               
  nopl %eax                 #  12    0x1438d3  3      OPC=nopl_r32          
  nop                       #  13    0x1438d6  1      OPC=nop               
  nop                       #  14    0x1438d7  1      OPC=nop               
  nop                       #  15    0x1438d8  1      OPC=nop               
  nop                       #  16    0x1438d9  1      OPC=nop               
  nop                       #  17    0x1438da  1      OPC=nop               
  nop                       #  18    0x1438db  1      OPC=nop               
  nop                       #  19    0x1438dc  1      OPC=nop               
  nop                       #  20    0x1438dd  1      OPC=nop               
  nop                       #  21    0x1438de  1      OPC=nop               
  nop                       #  22    0x1438df  1      OPC=nop               
  nop                       #  23    0x1438e0  1      OPC=nop               
  movl %edi, %eax           #  24    0x1438e1  2      OPC=movl_r32_r32      
  nop                       #  25    0x1438e3  1      OPC=nop               
  testl %ecx, %ecx          #  26    0x1438e4  2      OPC=testl_r32_r32     
  je .L_143900              #  27    0x1438e6  2      OPC=je_label          
.L_1438e0:                  #        0x1438e8  0      OPC=<label>           
  addl $0x4, %eax           #  28    0x1438e8  3      OPC=addl_r32_imm8     
  movl (%r15,%rax,1), %edx  #  29    0x1438eb  4      OPC=movl_r32_m32      
  testl %edx, %edx          #  30    0x1438ef  2      OPC=testl_r32_r32     
  jne .L_1438e0             #  31    0x1438f1  2      OPC=jne_label         
  cmpl %eax, %edi           #  32    0x1438f3  2      OPC=cmpl_r32_r32      
  nop                       #  33    0x1438f5  1      OPC=nop               
  nop                       #  34    0x1438f6  1      OPC=nop               
  nop                       #  35    0x1438f7  1      OPC=nop               
  nop                       #  36    0x1438f8  1      OPC=nop               
  nop                       #  37    0x1438f9  1      OPC=nop               
  nop                       #  38    0x1438fa  1      OPC=nop               
  nop                       #  39    0x1438fb  1      OPC=nop               
  nop                       #  40    0x1438fc  1      OPC=nop               
  nop                       #  41    0x1438fd  1      OPC=nop               
  nop                       #  42    0x1438fe  1      OPC=nop               
  nop                       #  43    0x1438ff  1      OPC=nop               
  nop                       #  44    0x143900  1      OPC=nop               
  nop                       #  45    0x143901  1      OPC=nop               
  ja .L_143960              #  46    0x143902  2      OPC=ja_label          
  nop                       #  47    0x143904  1      OPC=nop               
  nop                       #  48    0x143905  1      OPC=nop               
  nop                       #  49    0x143906  1      OPC=nop               
  nop                       #  50    0x143907  1      OPC=nop               
  nop                       #  51    0x143908  1      OPC=nop               
.L_143900:                  #        0x143909  0      OPC=<label>           
  nop                       #  52    0x143909  1      OPC=nop               
.L_143920:                  #        0x14390a  0      OPC=<label>           
  andl %eax, %eax           #  53    0x14390a  2      OPC=andl_r32_r32_1    
  cmpl %esi, (%r15,%rax,1)  #  54    0x14390c  4      OPC=cmpl_m32_r32      
  je .L_143980              #  55    0x143910  2      OPC=je_label          
  nop                       #  56    0x143912  1      OPC=nop               
  nop                       #  57    0x143913  1      OPC=nop               
  subl $0x4, %eax           #  58    0x143914  3      OPC=subl_r32_imm8     
  nop                       #  59    0x143917  1      OPC=nop               
  cmpl %eax, %edi           #  60    0x143918  2      OPC=cmpl_r32_r32      
  jbe .L_143920             #  61    0x14391a  2      OPC=jbe_label         
  nop                       #  62    0x14391c  1      OPC=nop               
  nop                       #  63    0x14391d  1      OPC=nop               
  nop                       #  64    0x14391e  1      OPC=nop               
  nop                       #  65    0x14391f  1      OPC=nop               
  nopl %eax                 #  66    0x143920  3      OPC=nopl_r32          
  nop                       #  67    0x143923  1      OPC=nop               
.L_143960:                  #        0x143924  0      OPC=<label>           
  nopl %eax                 #  68    0x143924  3      OPC=nopl_r32          
  nop                       #  69    0x143927  1      OPC=nop               
  nop                       #  70    0x143928  1      OPC=nop               
  movl $0x0, %eax           #  71    0x143929  6      OPC=movl_r32_imm32_1  
  nop                       #  72    0x14392f  1      OPC=nop               
  nop                       #  73    0x143930  1      OPC=nop               
.L_143980:                  #        0x143931  0      OPC=<label>           
  nop                       #  74    0x143931  1      OPC=nop               
  nop                       #  75    0x143932  1      OPC=nop               
  nop                       #  76    0x143933  1      OPC=nop               
  retq                      #  77    0x143934  1      OPC=retq              
                                                                            
.size wcsrchr, .-wcsrchr
