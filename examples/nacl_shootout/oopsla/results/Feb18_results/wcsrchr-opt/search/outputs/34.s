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
  orl %edi, %edi            #  4     0x1438c3  2      OPC=orl_r32_r32       
  movl (%r15,%rdi,1), %ecx  #  5     0x1438c5  4      OPC=movl_r32_m32      
  nop                       #  6     0x1438c9  1      OPC=nop               
  nop                       #  7     0x1438ca  1      OPC=nop               
  nop                       #  8     0x1438cb  1      OPC=nop               
  nopl %eax                 #  9     0x1438cc  3      OPC=nopl_r32          
  nop                       #  10    0x1438cf  1      OPC=nop               
  nop                       #  11    0x1438d0  1      OPC=nop               
  nop                       #  12    0x1438d1  1      OPC=nop               
  nop                       #  13    0x1438d2  1      OPC=nop               
  nop                       #  14    0x1438d3  1      OPC=nop               
  nop                       #  15    0x1438d4  1      OPC=nop               
  nop                       #  16    0x1438d5  1      OPC=nop               
  nop                       #  17    0x1438d6  1      OPC=nop               
  nop                       #  18    0x1438d7  1      OPC=nop               
  nop                       #  19    0x1438d8  1      OPC=nop               
  nop                       #  20    0x1438d9  1      OPC=nop               
  nop                       #  21    0x1438da  1      OPC=nop               
  movl %edi, %eax           #  22    0x1438db  2      OPC=movl_r32_r32      
  nopl %eax                 #  23    0x1438dd  3      OPC=nopl_r32          
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
  nop                       #  38    0x1438f8  1      OPC=nop               
  nop                       #  39    0x1438f9  1      OPC=nop               
  ja .L_143960              #  40    0x1438fa  2      OPC=ja_label          
  nop                       #  41    0x1438fc  1      OPC=nop               
  nop                       #  42    0x1438fd  1      OPC=nop               
  nop                       #  43    0x1438fe  1      OPC=nop               
  nop                       #  44    0x1438ff  1      OPC=nop               
  nop                       #  45    0x143900  1      OPC=nop               
  nop                       #  46    0x143901  1      OPC=nop               
.L_143900:                  #        0x143902  0      OPC=<label>           
.L_143920:                  #        0x143902  0      OPC=<label>           
  andl %eax, %eax           #  47    0x143902  2      OPC=andl_r32_r32_1    
  cmpl %esi, (%r15,%rax,1)  #  48    0x143904  4      OPC=cmpl_m32_r32      
  je .L_143980              #  49    0x143908  2      OPC=je_label          
  nop                       #  50    0x14390a  1      OPC=nop               
  nop                       #  51    0x14390b  1      OPC=nop               
  nop                       #  52    0x14390c  1      OPC=nop               
  subl $0x4, %eax           #  53    0x14390d  5      OPC=subl_eax_imm32    
  nop                       #  54    0x143912  1      OPC=nop               
  nop                       #  55    0x143913  1      OPC=nop               
  cmpl %eax, %edi           #  56    0x143914  2      OPC=cmpl_r32_r32      
  jbe .L_143920             #  57    0x143916  2      OPC=jbe_label         
  nop                       #  58    0x143918  1      OPC=nop               
  nop                       #  59    0x143919  1      OPC=nop               
  nop                       #  60    0x14391a  1      OPC=nop               
  nop                       #  61    0x14391b  1      OPC=nop               
  nop                       #  62    0x14391c  1      OPC=nop               
  nopl %eax                 #  63    0x14391d  3      OPC=nopl_r32          
  nop                       #  64    0x143920  1      OPC=nop               
.L_143960:                  #        0x143921  0      OPC=<label>           
  movl $0x0, %eax           #  65    0x143921  6      OPC=movl_r32_imm32_1  
  nop                       #  66    0x143927  1      OPC=nop               
  nop                       #  67    0x143928  1      OPC=nop               
.L_143980:                  #        0x143929  0      OPC=<label>           
  retq                      #  68    0x143929  1      OPC=retq              
                                                                            
.size wcsrchr, .-wcsrchr
