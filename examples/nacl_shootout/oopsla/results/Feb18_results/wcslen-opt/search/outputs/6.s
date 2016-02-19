  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcslen:                    #        0x142ca0  0      OPC=<label>        
  xorl %eax, %eax           #  1     0x142ca0  2      OPC=xorl_r32_r32   
  movq %rdi, %rdx           #  2     0x142ca2  3      OPC=movq_r64_r64   
  orl %eax, %edi            #  3     0x142ca5  2      OPC=orl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  4     0x142ca7  4      OPC=movl_r32_m32   
  testl %ecx, %ecx          #  5     0x142cab  2      OPC=testl_r32_r32  
  je .L_142ce0              #  6     0x142cad  2      OPC=je_label       
  nop                       #  7     0x142caf  1      OPC=nop            
.L_142cc0:                  #        0x142cb0  0      OPC=<label>        
  addl $0x4, %edx           #  8     0x142cb0  3      OPC=addl_r32_imm8  
  movl (%r15,%rdx,1), %eax  #  9     0x142cb3  4      OPC=movl_r32_m32   
  testl %eax, %eax          #  10    0x142cb7  2      OPC=testl_r32_r32  
  jne .L_142cc0             #  11    0x142cb9  2      OPC=jne_label      
  nop                       #  12    0x142cbb  1      OPC=nop            
  nop                       #  13    0x142cbc  1      OPC=nop            
  nop                       #  14    0x142cbd  1      OPC=nop            
  movl %edx, %eax           #  15    0x142cbe  2      OPC=movl_r32_r32   
  nop                       #  16    0x142cc0  1      OPC=nop            
  nop                       #  17    0x142cc1  1      OPC=nop            
  nop                       #  18    0x142cc2  1      OPC=nop            
  nop                       #  19    0x142cc3  1      OPC=nop            
  nop                       #  20    0x142cc4  1      OPC=nop            
  nop                       #  21    0x142cc5  1      OPC=nop            
  nop                       #  22    0x142cc6  1      OPC=nop            
  subl %edi, %eax           #  23    0x142cc7  2      OPC=subl_r32_r32   
  sarl $0x2, %eax           #  24    0x142cc9  3      OPC=sarl_r32_imm8  
  nop                       #  25    0x142ccc  1      OPC=nop            
  nop                       #  26    0x142ccd  1      OPC=nop            
  nop                       #  27    0x142cce  1      OPC=nop            
.L_142ce0:                  #        0x142ccf  0      OPC=<label>        
  retq                      #  28    0x142ccf  1      OPC=retq           
                                                                         
.size wcslen, .-wcslen
