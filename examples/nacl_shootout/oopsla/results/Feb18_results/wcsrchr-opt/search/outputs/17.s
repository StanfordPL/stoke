  .text
  .globl wcsrchr
  .type wcsrchr, @function

#! file-offset 0x1838c0
#! rip-offset  0x1438c0
#! capacity    256 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsrchr:                   #        0x1438c0  0      OPC=<label>         
  movq %rdi, %rax           #  1     0x1438c0  3      OPC=movq_r64_r64    
  nop                       #  2     0x1438c3  1      OPC=nop             
  orl %edi, %edi            #  3     0x1438c4  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdi,1), %ecx  #  4     0x1438c6  4      OPC=movl_r32_m32    
  nop                       #  5     0x1438ca  1      OPC=nop             
  nop                       #  6     0x1438cb  1      OPC=nop             
  nop                       #  7     0x1438cc  1      OPC=nop             
  nop                       #  8     0x1438cd  1      OPC=nop             
  nop                       #  9     0x1438ce  1      OPC=nop             
  nop                       #  10    0x1438cf  1      OPC=nop             
  nop                       #  11    0x1438d0  1      OPC=nop             
  nop                       #  12    0x1438d1  1      OPC=nop             
  testl %ecx, %ecx          #  13    0x1438d2  2      OPC=testl_r32_r32   
  je .L_143900              #  14    0x1438d4  2      OPC=je_label        
.L_1438e0:                  #        0x1438d6  0      OPC=<label>         
  addl $0x4, %eax           #  15    0x1438d6  6      OPC=addl_r32_imm32  
  movl (%r15,%rax,1), %edx  #  16    0x1438dc  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  17    0x1438e0  2      OPC=testl_r32_r32   
  jne .L_1438e0             #  18    0x1438e2  2      OPC=jne_label       
.L_143900:                  #        0x1438e4  0      OPC=<label>         
  nop                       #  19    0x1438e4  1      OPC=nop             
  nop                       #  20    0x1438e5  1      OPC=nop             
  orb $0x7, %ch             #  21    0x1438e6  3      OPC=orb_rh_imm8     
  jne .L_143940             #  22    0x1438e9  2      OPC=jne_label       
  nop                       #  23    0x1438eb  1      OPC=nop             
  nop                       #  24    0x1438ec  1      OPC=nop             
  nop                       #  25    0x1438ed  1      OPC=nop             
  nop                       #  26    0x1438ee  1      OPC=nop             
  nop                       #  27    0x1438ef  1      OPC=nop             
  nop                       #  28    0x1438f0  1      OPC=nop             
  nop                       #  29    0x1438f1  1      OPC=nop             
  nop                       #  30    0x1438f2  1      OPC=nop             
  nop                       #  31    0x1438f3  1      OPC=nop             
  nop                       #  32    0x1438f4  1      OPC=nop             
.L_143920:                  #        0x1438f5  0      OPC=<label>         
  orl %eax, %eax            #  33    0x1438f5  2      OPC=orl_r32_r32_1   
  cmpl %esi, (%r15,%rax,1)  #  34    0x1438f7  4      OPC=cmpl_m32_r32    
  je .L_143980              #  35    0x1438fb  2      OPC=je_label        
  subl $0x4, %eax           #  36    0x1438fd  3      OPC=subl_r32_imm8   
.L_143940:                  #        0x143900  0      OPC=<label>         
  cmpl %eax, %edi           #  37    0x143900  2      OPC=cmpl_r32_r32    
  jbe .L_143920             #  38    0x143902  2      OPC=jbe_label       
  andq $0x0, %rax           #  39    0x143904  6      OPC=andq_rax_imm32  
.L_143980:                  #        0x14390a  0      OPC=<label>         
  nop                       #  40    0x14390a  1      OPC=nop             
  nop                       #  41    0x14390b  1      OPC=nop             
  nop                       #  42    0x14390c  1      OPC=nop             
  nop                       #  43    0x14390d  1      OPC=nop             
  nop                       #  44    0x14390e  1      OPC=nop             
  nop                       #  45    0x14390f  1      OPC=nop             
  retq                      #  46    0x143910  1      OPC=retq            
                                                                          
.size wcsrchr, .-wcsrchr
