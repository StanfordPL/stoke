  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcslen:                    #        0x142ca0  0      OPC=<label>        
  nop                       #  1     0x142ca0  1      OPC=nop            
  nop                       #  2     0x142ca1  1      OPC=nop            
  nop                       #  3     0x142ca2  1      OPC=nop            
  nop                       #  4     0x142ca3  1      OPC=nop            
  nop                       #  5     0x142ca4  1      OPC=nop            
  xorl %eax, %eax           #  6     0x142ca5  2      OPC=xorl_r32_r32   
  orl %edi, %edi            #  7     0x142ca7  2      OPC=orl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  8     0x142ca9  4      OPC=movl_r32_m32   
  nop                       #  9     0x142cad  1      OPC=nop            
  nop                       #  10    0x142cae  1      OPC=nop            
  negl %ecx                 #  11    0x142caf  2      OPC=negl_r32       
  je .L_142ce0              #  12    0x142cb1  2      OPC=je_label       
  nop                       #  13    0x142cb3  1      OPC=nop            
  nop                       #  14    0x142cb4  1      OPC=nop            
  nop                       #  15    0x142cb5  1      OPC=nop            
  nop                       #  16    0x142cb6  1      OPC=nop            
  nop                       #  17    0x142cb7  1      OPC=nop            
  nop                       #  18    0x142cb8  1      OPC=nop            
  nop                       #  19    0x142cb9  1      OPC=nop            
  nop                       #  20    0x142cba  1      OPC=nop            
  nop                       #  21    0x142cbb  1      OPC=nop            
  nop                       #  22    0x142cbc  1      OPC=nop            
  nop                       #  23    0x142cbd  1      OPC=nop            
  nop                       #  24    0x142cbe  1      OPC=nop            
  nop                       #  25    0x142cbf  1      OPC=nop            
  movl %edi, %edx           #  26    0x142cc0  2      OPC=movl_r32_r32   
  nop                       #  27    0x142cc2  1      OPC=nop            
  nop                       #  28    0x142cc3  1      OPC=nop            
  nop                       #  29    0x142cc4  1      OPC=nop            
  nop                       #  30    0x142cc5  1      OPC=nop            
  nop                       #  31    0x142cc6  1      OPC=nop            
.L_142cc0:                  #        0x142cc7  0      OPC=<label>        
  subl $0xfc, %edx          #  32    0x142cc7  3      OPC=subl_r32_imm8  
  movl (%r15,%rdx,1), %eax  #  33    0x142cca  4      OPC=movl_r32_m32   
  andl %edi, %eax           #  34    0x142cce  2      OPC=andl_r32_r32   
  jne .L_142cc0             #  35    0x142cd0  2      OPC=jne_label      
  nopl %eax                 #  36    0x142cd2  3      OPC=nopl_r32       
  movq %rdx, %rax           #  37    0x142cd5  3      OPC=movq_r64_r64   
  nop                       #  38    0x142cd8  1      OPC=nop            
  subl %edi, %eax           #  39    0x142cd9  2      OPC=subl_r32_r32   
.L_142ce0:                  #        0x142cdb  0      OPC=<label>        
  nop                       #  40    0x142cdb  1      OPC=nop            
  nop                       #  41    0x142cdc  1      OPC=nop            
  nop                       #  42    0x142cdd  1      OPC=nop            
  nop                       #  43    0x142cde  1      OPC=nop            
  nop                       #  44    0x142cdf  1      OPC=nop            
  sarl $0x2, %eax           #  45    0x142ce0  3      OPC=sarl_r32_imm8  
  retq                      #  46    0x142ce3  1      OPC=retq           
                                                                         
.size wcslen, .-wcslen
