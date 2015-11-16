  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcslen:                    #        0x142ca0  0      OPC=<label>        
  nop                       #  1     0x142ca0  1      OPC=nop            
  movq %rdi, %rdx           #  2     0x142ca1  3      OPC=movq_r64_r64   
  andl %edi, %edi           #  3     0x142ca4  2      OPC=andl_r32_r32   
  movl (%r15,%rdi,1), %ecx  #  4     0x142ca6  4      OPC=movl_r32_m32   
  xorl %eax, %eax           #  5     0x142caa  2      OPC=xorl_r32_r32   
  testl %ecx, %ecx          #  6     0x142cac  2      OPC=testl_r32_r32  
  je .L_142ce0              #  7     0x142cae  2      OPC=je_label       
  nop                       #  8     0x142cb0  1      OPC=nop            
  nop                       #  9     0x142cb1  1      OPC=nop            
  nop                       #  10    0x142cb2  1      OPC=nop            
  nop                       #  11    0x142cb3  1      OPC=nop            
  nop                       #  12    0x142cb4  1      OPC=nop            
  nop                       #  13    0x142cb5  1      OPC=nop            
  nop                       #  14    0x142cb6  1      OPC=nop            
  nop                       #  15    0x142cb7  1      OPC=nop            
  nop                       #  16    0x142cb8  1      OPC=nop            
  nop                       #  17    0x142cb9  1      OPC=nop            
  nop                       #  18    0x142cba  1      OPC=nop            
  nop                       #  19    0x142cbb  1      OPC=nop            
  nop                       #  20    0x142cbc  1      OPC=nop            
  nop                       #  21    0x142cbd  1      OPC=nop            
  nop                       #  22    0x142cbe  1      OPC=nop            
  nop                       #  23    0x142cbf  1      OPC=nop            
.L_142cc0:                  #        0x142cc0  0      OPC=<label>        
  addl $0x4, %edx           #  24    0x142cc0  3      OPC=addl_r32_imm8  
  movl (%r15,%rdx,1), %eax  #  25    0x142cc3  4      OPC=movl_r32_m32   
  testl %eax, %eax          #  26    0x142cc7  2      OPC=testl_r32_r32  
  jne .L_142cc0             #  27    0x142cc9  2      OPC=jne_label      
  addl %edx, %eax           #  28    0x142ccb  2      OPC=addl_r32_r32   
  subl %edi, %eax           #  29    0x142ccd  2      OPC=subl_r32_r32   
  sarl $0x2, %eax           #  30    0x142ccf  3      OPC=sarl_r32_imm8  
  nop                       #  31    0x142cd2  1      OPC=nop            
  nop                       #  32    0x142cd3  1      OPC=nop            
  nop                       #  33    0x142cd4  1      OPC=nop            
  nop                       #  34    0x142cd5  1      OPC=nop            
  nop                       #  35    0x142cd6  1      OPC=nop            
  nop                       #  36    0x142cd7  1      OPC=nop            
  nop                       #  37    0x142cd8  1      OPC=nop            
  nop                       #  38    0x142cd9  1      OPC=nop            
  nopl %eax                 #  39    0x142cda  3      OPC=nopl_r32       
  nop                       #  40    0x142cdd  1      OPC=nop            
  nop                       #  41    0x142cde  1      OPC=nop            
  nop                       #  42    0x142cdf  1      OPC=nop            
.L_142ce0:                  #        0x142ce0  0      OPC=<label>        
  nop                       #  43    0x142ce0  1      OPC=nop            
  popq %r11                 #  44    0x142ce1  2      OPC=popq_r64_1     
  andl $0xe0, %r11d         #  45    0x142ce3  4      OPC=andl_r32_imm8  
  addq %r15, %r11           #  46    0x142ce7  3      OPC=addq_r64_r64   
  jmpq %r11                 #  47    0x142cea  3      OPC=jmpq_r64       
                                                                         
.size wcslen, .-wcslen
