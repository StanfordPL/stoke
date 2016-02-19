  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcslen:                    #        0x142ca0  0      OPC=<label>        
  xorl %eax, %eax           #  1     0x142ca0  2      OPC=xorl_r32_r32   
  nop                       #  2     0x142ca2  1      OPC=nop            
  nop                       #  3     0x142ca3  1      OPC=nop            
  movq %rdi, %rdx           #  4     0x142ca4  3      OPC=movq_r64_r64   
  orl %edi, %edi            #  5     0x142ca7  2      OPC=orl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  6     0x142ca9  4      OPC=movl_r32_m32   
  nop                       #  7     0x142cad  1      OPC=nop            
  nop                       #  8     0x142cae  1      OPC=nop            
  nop                       #  9     0x142caf  1      OPC=nop            
  testl %ecx, %ecx          #  10    0x142cb0  2      OPC=testl_r32_r32  
  je .L_142ce0              #  11    0x142cb2  2      OPC=je_label       
  nopl %eax                 #  12    0x142cb4  3      OPC=nopl_r32       
  nop                       #  13    0x142cb7  1      OPC=nop            
  nop                       #  14    0x142cb8  1      OPC=nop            
.L_142cc0:                  #        0x142cb9  0      OPC=<label>        
  addl $0x4, %edx           #  15    0x142cb9  3      OPC=addl_r32_imm8  
  movl (%r15,%rdx,1), %eax  #  16    0x142cbc  4      OPC=movl_r32_m32   
  testl %eax, %eax          #  17    0x142cc0  2      OPC=testl_r32_r32  
  jne .L_142cc0             #  18    0x142cc2  2      OPC=jne_label      
  nop                       #  19    0x142cc4  1      OPC=nop            
  nop                       #  20    0x142cc5  1      OPC=nop            
  movl %edx, %eax           #  21    0x142cc6  2      OPC=movl_r32_r32   
  subl %edi, %eax           #  22    0x142cc8  2      OPC=subl_r32_r32   
  nop                       #  23    0x142cca  1      OPC=nop            
  sarl $0x2, %eax           #  24    0x142ccb  3      OPC=sarl_r32_imm8  
  nop                       #  25    0x142cce  1      OPC=nop            
.L_142ce0:                  #        0x142ccf  0      OPC=<label>        
  retq                      #  26    0x142ccf  1      OPC=retq           
                                                                         
.size wcslen, .-wcslen
