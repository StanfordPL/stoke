  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcslen:                    #        0x142ca0  0      OPC=<label>        
  nop                       #  1     0x142ca0  1      OPC=nop            
  xorl %eax, %eax           #  2     0x142ca1  2      OPC=xorl_r32_r32   
  movl %edi, %edi           #  3     0x142ca3  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %ecx  #  4     0x142ca5  4      OPC=movl_r32_m32   
  nop                       #  5     0x142ca9  1      OPC=nop            
  testl %ecx, %ecx          #  6     0x142caa  2      OPC=testl_r32_r32  
  nop                       #  7     0x142cac  1      OPC=nop            
  nop                       #  8     0x142cad  1      OPC=nop            
  movq %rdi, %rdx           #  9     0x142cae  3      OPC=movq_r64_r64   
  je .L_142ce0              #  10    0x142cb1  2      OPC=je_label       
  nop                       #  11    0x142cb3  1      OPC=nop            
  nop                       #  12    0x142cb4  1      OPC=nop            
  nop                       #  13    0x142cb5  1      OPC=nop            
  nop                       #  14    0x142cb6  1      OPC=nop            
  nop                       #  15    0x142cb7  1      OPC=nop            
  nop                       #  16    0x142cb8  1      OPC=nop            
  nop                       #  17    0x142cb9  1      OPC=nop            
  nop                       #  18    0x142cba  1      OPC=nop            
  movl %edi, %r13d          #  19    0x142cbb  3      OPC=movl_r32_r32   
  nop                       #  20    0x142cbe  1      OPC=nop            
  nop                       #  21    0x142cbf  1      OPC=nop            
.L_142cc0:                  #        0x142cc0  0      OPC=<label>        
  addl $0x4, %edx           #  22    0x142cc0  3      OPC=addl_r32_imm8  
  movl (%r15,%rdx,1), %eax  #  23    0x142cc3  4      OPC=movl_r32_m32   
  testl %eax, %eax          #  24    0x142cc7  2      OPC=testl_r32_r32  
  jne .L_142cc0             #  25    0x142cc9  2      OPC=jne_label      
  movl %edx, %eax           #  26    0x142ccb  2      OPC=movl_r32_r32   
  nop                       #  27    0x142ccd  1      OPC=nop            
  nop                       #  28    0x142cce  1      OPC=nop            
  nop                       #  29    0x142ccf  1      OPC=nop            
  nop                       #  30    0x142cd0  1      OPC=nop            
  nop                       #  31    0x142cd1  1      OPC=nop            
  nop                       #  32    0x142cd2  1      OPC=nop            
  nop                       #  33    0x142cd3  1      OPC=nop            
  subl %r13d, %eax          #  34    0x142cd4  3      OPC=subl_r32_r32   
  sarl $0x2, %eax           #  35    0x142cd7  3      OPC=sarl_r32_imm8  
  nop                       #  36    0x142cda  1      OPC=nop            
  nop                       #  37    0x142cdb  1      OPC=nop            
  nop                       #  38    0x142cdc  1      OPC=nop            
  nop                       #  39    0x142cdd  1      OPC=nop            
  nop                       #  40    0x142cde  1      OPC=nop            
  nop                       #  41    0x142cdf  1      OPC=nop            
.L_142ce0:                  #        0x142ce0  0      OPC=<label>        
  popq %r11                 #  42    0x142ce0  2      OPC=popq_r64_1     
  andl $0xe0, %r11d         #  43    0x142ce2  4      OPC=andl_r32_imm8  
  addq %r15, %r11           #  44    0x142ce6  3      OPC=addq_r64_r64   
  jmpq %r11                 #  45    0x142ce9  3      OPC=jmpq_r64       
                                                                         
.size wcslen, .-wcslen
