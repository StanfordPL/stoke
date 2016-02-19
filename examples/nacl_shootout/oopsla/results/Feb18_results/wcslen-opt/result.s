  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcslen:                    #        0x142ca0  0      OPC=<label>        
  movl %edi, %edi           #  1     0x142ca0  2      OPC=movl_r32_r32   
  xorl %eax, %eax           #  2     0x142ca2  2      OPC=xorl_r32_r32   
  movl %edi, %edi           #  3     0x142ca4  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %ecx  #  4     0x142ca6  4      OPC=movl_r32_m32   
  movq %rdi, %rdx           #  5     0x142caa  3      OPC=movq_r64_r64   
  testl %ecx, %ecx          #  6     0x142cad  2      OPC=testl_r32_r32  
  je .L_142ce0              #  7     0x142caf  2      OPC=je_label       
  nop                       #  8     0x142cb1  1      OPC=nop            
  nop                       #  9     0x142cb2  1      OPC=nop            
.L_142cc0:                  #        0x142cb3  0      OPC=<label>        
  addl $0x4, %edx           #  10    0x142cb3  3      OPC=addl_r32_imm8  
  movl (%r15,%rdx,1), %eax  #  11    0x142cb6  4      OPC=movl_r32_m32   
  testl %eax, %eax          #  12    0x142cba  2      OPC=testl_r32_r32  
  jne .L_142cc0             #  13    0x142cbc  2      OPC=jne_label      
  movl %edx, %eax           #  14    0x142cbe  2      OPC=movl_r32_r32   
  subl %edi, %eax           #  15    0x142cc0  2      OPC=subl_r32_r32   
  sarl $0x2, %eax           #  16    0x142cc2  3      OPC=sarl_r32_imm8  
  nop                       #  17    0x142cc5  1      OPC=nop            
  nop                       #  18    0x142cc6  1      OPC=nop            
  nop                       #  19    0x142cc7  1      OPC=nop            
  nop                       #  20    0x142cc8  1      OPC=nop            
  nop                       #  21    0x142cc9  1      OPC=nop            
  nop                       #  22    0x142cca  1      OPC=nop            
  nop                       #  23    0x142ccb  1      OPC=nop            
  nop                       #  24    0x142ccc  1      OPC=nop            
  nop                       #  25    0x142ccd  1      OPC=nop            
  nop                       #  26    0x142cce  1      OPC=nop            
.L_142ce0:                  #        0x142ccf  0      OPC=<label>        
  retq                      #  27    0x142ccf  1      OPC=retq           
                                                                         
.size wcslen, .-wcslen
