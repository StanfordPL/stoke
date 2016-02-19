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
  movl %edi, %edi           #  3     0x142ca3  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %ecx  #  4     0x142ca5  4      OPC=movl_r32_m32   
  movq %rdi, %rdx           #  5     0x142ca9  3      OPC=movq_r64_r64   
  nop                       #  6     0x142cac  1      OPC=nop            
  testl %ecx, %ecx          #  7     0x142cad  2      OPC=testl_r32_r32  
  je .L_142ce0              #  8     0x142caf  2      OPC=je_label       
  nop                       #  9     0x142cb1  1      OPC=nop            
  nop                       #  10    0x142cb2  1      OPC=nop            
  nop                       #  11    0x142cb3  1      OPC=nop            
  nopl %eax                 #  12    0x142cb4  3      OPC=nopl_r32       
  nop                       #  13    0x142cb7  1      OPC=nop            
  nopl %eax                 #  14    0x142cb8  3      OPC=nopl_r32       
  nop                       #  15    0x142cbb  1      OPC=nop            
  nopl %eax                 #  16    0x142cbc  3      OPC=nopl_r32       
  nop                       #  17    0x142cbf  1      OPC=nop            
.L_142cc0:                  #        0x142cc0  0      OPC=<label>        
  addl $0x4, %edx           #  18    0x142cc0  3      OPC=addl_r32_imm8  
  movl (%r15,%rdx,1), %eax  #  19    0x142cc3  4      OPC=movl_r32_m32   
  testl %edi, %eax          #  20    0x142cc7  2      OPC=testl_r32_r32  
  jne .L_142cc0             #  21    0x142cc9  2      OPC=jne_label      
  nop                       #  22    0x142ccb  1      OPC=nop            
  nop                       #  23    0x142ccc  1      OPC=nop            
  orl %edx, %eax            #  24    0x142ccd  2      OPC=orl_r32_r32_1  
  nop                       #  25    0x142ccf  1      OPC=nop            
  subl %edi, %eax           #  26    0x142cd0  2      OPC=subl_r32_r32   
  nop                       #  27    0x142cd2  1      OPC=nop            
  nop                       #  28    0x142cd3  1      OPC=nop            
  nop                       #  29    0x142cd4  1      OPC=nop            
  nop                       #  30    0x142cd5  1      OPC=nop            
  nop                       #  31    0x142cd6  1      OPC=nop            
  nop                       #  32    0x142cd7  1      OPC=nop            
  nop                       #  33    0x142cd8  1      OPC=nop            
  nop                       #  34    0x142cd9  1      OPC=nop            
  nop                       #  35    0x142cda  1      OPC=nop            
  nop                       #  36    0x142cdb  1      OPC=nop            
  nop                       #  37    0x142cdc  1      OPC=nop            
  nop                       #  38    0x142cdd  1      OPC=nop            
.L_142ce0:                  #        0x142cde  0      OPC=<label>        
  nop                       #  39    0x142cde  1      OPC=nop            
  nop                       #  40    0x142cdf  1      OPC=nop            
  nopl %eax                 #  41    0x142ce0  3      OPC=nopl_r32       
  nopl %eax                 #  42    0x142ce3  3      OPC=nopl_r32       
  nop                       #  43    0x142ce6  1      OPC=nop            
  nop                       #  44    0x142ce7  1      OPC=nop            
  sarl $0x2, %eax           #  45    0x142ce8  3      OPC=sarl_r32_imm8  
  nop                       #  46    0x142ceb  1      OPC=nop            
  retq                      #  47    0x142cec  1      OPC=retq           
                                                                         
.size wcslen, .-wcslen
