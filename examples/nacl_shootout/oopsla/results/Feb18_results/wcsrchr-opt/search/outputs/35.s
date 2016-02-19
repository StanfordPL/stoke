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
  orl %edi, %edi            #  6     0x1438c5  2      OPC=orl_r32_r32       
  movl (%r15,%rdi,1), %ecx  #  7     0x1438c7  4      OPC=movl_r32_m32      
  nop                       #  8     0x1438cb  1      OPC=nop               
  nop                       #  9     0x1438cc  1      OPC=nop               
  nop                       #  10    0x1438cd  1      OPC=nop               
  nop                       #  11    0x1438ce  1      OPC=nop               
  nop                       #  12    0x1438cf  1      OPC=nop               
  nop                       #  13    0x1438d0  1      OPC=nop               
  nop                       #  14    0x1438d1  1      OPC=nop               
  nopl %eax                 #  15    0x1438d2  3      OPC=nopl_r32          
  nop                       #  16    0x1438d5  1      OPC=nop               
  nop                       #  17    0x1438d6  1      OPC=nop               
  nop                       #  18    0x1438d7  1      OPC=nop               
  nop                       #  19    0x1438d8  1      OPC=nop               
  movl %edi, %eax           #  20    0x1438d9  2      OPC=movl_r32_r32      
  nop                       #  21    0x1438db  1      OPC=nop               
  nopl %eax                 #  22    0x1438dc  3      OPC=nopl_r32          
  nop                       #  23    0x1438df  1      OPC=nop               
  nop                       #  24    0x1438e0  1      OPC=nop               
  testl %ecx, %ecx          #  25    0x1438e1  2      OPC=testl_r32_r32     
  je .L_143900              #  26    0x1438e3  2      OPC=je_label          
.L_1438e0:                  #        0x1438e5  0      OPC=<label>           
  addl $0x4, %eax           #  27    0x1438e5  3      OPC=addl_r32_imm8     
  movl (%r15,%rax,1), %edx  #  28    0x1438e8  4      OPC=movl_r32_m32      
  testl %edx, %edx          #  29    0x1438ec  2      OPC=testl_r32_r32     
  jne .L_1438e0             #  30    0x1438ee  2      OPC=jne_label         
  cmpl %eax, %edi           #  31    0x1438f0  2      OPC=cmpl_r32_r32      
  nop                       #  32    0x1438f2  1      OPC=nop               
  nop                       #  33    0x1438f3  1      OPC=nop               
  nop                       #  34    0x1438f4  1      OPC=nop               
  nop                       #  35    0x1438f5  1      OPC=nop               
  nop                       #  36    0x1438f6  1      OPC=nop               
  nop                       #  37    0x1438f7  1      OPC=nop               
  ja .L_143960              #  38    0x1438f8  2      OPC=ja_label          
  nop                       #  39    0x1438fa  1      OPC=nop               
  nop                       #  40    0x1438fb  1      OPC=nop               
  nop                       #  41    0x1438fc  1      OPC=nop               
  nopl %eax                 #  42    0x1438fd  3      OPC=nopl_r32          
.L_143900:                  #        0x143900  0      OPC=<label>           
.L_143920:                  #        0x143900  0      OPC=<label>           
  andl %eax, %eax           #  43    0x143900  2      OPC=andl_r32_r32_1    
  cmpl %esi, (%r15,%rax,1)  #  44    0x143902  4      OPC=cmpl_m32_r32      
  je .L_143980              #  45    0x143906  2      OPC=je_label          
  nop                       #  46    0x143908  1      OPC=nop               
  nop                       #  47    0x143909  1      OPC=nop               
  nop                       #  48    0x14390a  1      OPC=nop               
  nop                       #  49    0x14390b  1      OPC=nop               
  subl $0x4, %eax           #  50    0x14390c  5      OPC=subl_eax_imm32    
  cmpl %eax, %edi           #  51    0x143911  2      OPC=cmpl_r32_r32      
  jbe .L_143920             #  52    0x143913  2      OPC=jbe_label         
  nop                       #  53    0x143915  1      OPC=nop               
  nop                       #  54    0x143916  1      OPC=nop               
  nop                       #  55    0x143917  1      OPC=nop               
.L_143960:                  #        0x143918  0      OPC=<label>           
  nop                       #  56    0x143918  1      OPC=nop               
  nop                       #  57    0x143919  1      OPC=nop               
  movl $0x0, %eax           #  58    0x14391a  6      OPC=movl_r32_imm32_1  
  sarl %cl, %eax            #  59    0x143920  2      OPC=sarl_r32_cl       
.L_143980:                  #        0x143922  0      OPC=<label>           
  retq                      #  60    0x143922  1      OPC=retq              
                                                                            
.size wcsrchr, .-wcsrchr
