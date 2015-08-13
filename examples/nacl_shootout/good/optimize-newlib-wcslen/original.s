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
  nop                       #  10    0x142cb3  1      OPC=nop             
  nop                       #  11    0x142cb4  1      OPC=nop             
  nop                       #  12    0x142cb5  1      OPC=nop             
  nop                       #  13    0x142cb6  1      OPC=nop             
  nop                       #  14    0x142cb7  1      OPC=nop             
  nop                       #  15    0x142cb8  1      OPC=nop             
  nop                       #  16    0x142cb9  1      OPC=nop             
  nop                       #  17    0x142cba  1      OPC=nop             
  nop                       #  18    0x142cbb  1      OPC=nop             
  nop                       #  19    0x142cbc  1      OPC=nop             
  nop                       #  20    0x142cbd  1      OPC=nop             
  nop                       #  21    0x142cbe  1      OPC=nop             
  nop                       #  22    0x142cbf  1      OPC=nop             
.L_142cc0:                  #        0x142cc0  0      OPC=<label>         
  addl $0x4, %edx           #  23    0x142cc0  3      OPC=addl_r32_imm8   
  movl %edx, %edx           #  24    0x142cc3  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax  #  25    0x142cc5  4      OPC=movl_r32_m32    
  testl %eax, %eax          #  26    0x142cc9  2      OPC=testl_r32_r32   
  jne .L_142cc0             #  27    0x142ccb  2      OPC=jne_label       
  movl %edx, %eax           #  28    0x142ccd  2      OPC=movl_r32_r32    
  subl %edi, %eax           #  29    0x142ccf  2      OPC=subl_r32_r32    
  sarl $0x2, %eax           #  30    0x142cd1  3      OPC=sarl_r32_imm8   
  nop                       #  31    0x142cd4  1      OPC=nop             
  nop                       #  32    0x142cd5  1      OPC=nop             
  nop                       #  33    0x142cd6  1      OPC=nop             
  nop                       #  34    0x142cd7  1      OPC=nop             
  nop                       #  35    0x142cd8  1      OPC=nop             
  nop                       #  36    0x142cd9  1      OPC=nop             
  nop                       #  37    0x142cda  1      OPC=nop             
  nop                       #  38    0x142cdb  1      OPC=nop             
  nop                       #  39    0x142cdc  1      OPC=nop             
  nop                       #  40    0x142cdd  1      OPC=nop             
  nop                       #  41    0x142cde  1      OPC=nop             
  nop                       #  42    0x142cdf  1      OPC=nop             
.L_142ce0:                  #        0x142ce0  0      OPC=<label>         
  popq %r11                 #  43    0x142ce0  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  44    0x142ce2  7      OPC=andl_r32_imm8  
  addq %r15, %r11           #  49    0x142ced  3      OPC=addq_r64_r64    
  jmpq %r11                 #  50    0x142cf0  3      OPC=jmpq_r64        
  nop                       #  51    0x142cf3  1      OPC=nop             
  nop                       #  52    0x142cf4  1      OPC=nop             
  nop                       #  53    0x142cf5  1      OPC=nop             
  nop                       #  54    0x142cf6  1      OPC=nop             
  nop                       #  55    0x142cf7  1      OPC=nop             
  nop                       #  56    0x142cf8  1      OPC=nop             
  nop                       #  57    0x142cf9  1      OPC=nop             
  nop                       #  58    0x142cfa  1      OPC=nop             
  nop                       #  59    0x142cfb  1      OPC=nop             
  nop                       #  60    0x142cfc  1      OPC=nop             
  nop                       #  61    0x142cfd  1      OPC=nop             
  nop                       #  62    0x142cfe  1      OPC=nop             
  nop                       #  63    0x142cff  1      OPC=nop             
  nop                       #  64    0x142d00  1      OPC=nop             
  nop                       #  65    0x142d01  1      OPC=nop             
  nop                       #  66    0x142d02  1      OPC=nop             
  nop                       #  67    0x142d03  1      OPC=nop             
  nop                       #  68    0x142d04  1      OPC=nop             
  nop                       #  69    0x142d05  1      OPC=nop             
  nop                       #  70    0x142d06  1      OPC=nop             
                                                                          
.size wcslen, .-wcslen

