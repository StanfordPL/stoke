  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcslen:                    #        0x142ca0  0      OPC=<label>        
  movq %rdi, %rdx           #  1     0x142ca0  3      OPC=movq_r64_r64   
  nop                       #  2     0x142ca3  1      OPC=nop            
  nop                       #  3     0x142ca4  1      OPC=nop            
  nop                       #  4     0x142ca5  1      OPC=nop            
  nop                       #  5     0x142ca6  1      OPC=nop            
  orl %edx, %edi            #  6     0x142ca7  2      OPC=orl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  7     0x142ca9  4      OPC=movl_r32_m32   
  xorl %eax, %eax           #  8     0x142cad  2      OPC=xorl_r32_r32   
  testl %ecx, %ecx          #  9     0x142caf  2      OPC=testl_r32_r32  
  je .L_142ce0              #  10    0x142cb1  2      OPC=je_label       
.L_142cc0:                  #        0x142cb3  0      OPC=<label>        
  addl $0x4, %edx           #  11    0x142cb3  3      OPC=addl_r32_imm8  
  movl (%r15,%rdx,1), %eax  #  12    0x142cb6  4      OPC=movl_r32_m32   
  testl %eax, %edi          #  13    0x142cba  2      OPC=testl_r32_r32  
  jne .L_142cc0             #  14    0x142cbc  2      OPC=jne_label      
  nop                       #  15    0x142cbe  1      OPC=nop            
  nop                       #  16    0x142cbf  1      OPC=nop            
  movl %edx, %eax           #  17    0x142cc0  2      OPC=movl_r32_r32   
  subl %edi, %eax           #  18    0x142cc2  2      OPC=subl_r32_r32   
  sarl $0x2, %eax           #  19    0x142cc4  3      OPC=sarl_r32_imm8  
  nopl %eax                 #  20    0x142cc7  3      OPC=nopl_r32       
  nop                       #  21    0x142cca  1      OPC=nop            
  nop                       #  22    0x142ccb  1      OPC=nop            
  nop                       #  23    0x142ccc  1      OPC=nop            
  nop                       #  24    0x142ccd  1      OPC=nop            
  nop                       #  25    0x142cce  1      OPC=nop            
.L_142ce0:                  #        0x142ccf  0      OPC=<label>        
  retq                      #  26    0x142ccf  1      OPC=retq           
                                                                         
.size wcslen, .-wcslen
