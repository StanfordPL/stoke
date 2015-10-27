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
  nop                       #  6     0x142ca5  1      OPC=nop             
  nop                       #  7     0x142ca6  1      OPC=nop             
  nop                       #  8     0x142ca7  1      OPC=nop             
  nop                       #  9     0x142ca8  1      OPC=nop             
  nop                       #  10    0x142ca9  1      OPC=nop             
  nop                       #  11    0x142caa  1      OPC=nop             
  nop                       #  12    0x142cab  1      OPC=nop             
  nop                       #  13    0x142cac  1      OPC=nop             
  nop                       #  14    0x142cad  1      OPC=nop             
  xorl %eax, %eax           #  15    0x142cae  2      OPC=xorl_r32_r32    
  nop                       #  16    0x142cb0  1      OPC=nop             
  nop                       #  17    0x142cb1  1      OPC=nop             
  nop                       #  18    0x142cb2  1      OPC=nop             
  nop                       #  19    0x142cb3  1      OPC=nop             
  nop                       #  20    0x142cb4  1      OPC=nop             
  movl %edi, %edx           #  21    0x142cb5  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdx,1), %ecx  #  22    0x142cb7  4      OPC=movl_r32_m32    
  shlq $0x1, %rcx           #  23    0x142cbb  3      OPC=shlq_r64_one    
  je .L_142ce0              #  24    0x142cbe  2      OPC=je_label        
.L_142cc0:                  #        0x142cc0  0      OPC=<label>         
  salq $0xe0, %rax          #  25    0x142cc0  4      OPC=salq_r64_imm8   
  addl $0x4, %edx           #  26    0x142cc4  3      OPC=addl_r32_imm8   
  subl (%r15,%rdx,1), %eax  #  27    0x142cc7  4      OPC=subl_r32_m32    
  jne .L_142cc0             #  28    0x142ccb  2      OPC=jne_label       
  nop                       #  29    0x142ccd  1      OPC=nop             
  nop                       #  30    0x142cce  1      OPC=nop             
  nop                       #  31    0x142ccf  1      OPC=nop             
  nop                       #  32    0x142cd0  1      OPC=nop             
  nop                       #  33    0x142cd1  1      OPC=nop             
  nop                       #  34    0x142cd2  1      OPC=nop             
  nop                       #  35    0x142cd3  1      OPC=nop             
  nop                       #  36    0x142cd4  1      OPC=nop             
  nop                       #  37    0x142cd5  1      OPC=nop             
  nop                       #  38    0x142cd6  1      OPC=nop             
  nop                       #  39    0x142cd7  1      OPC=nop             
  nop                       #  40    0x142cd8  1      OPC=nop             
  nop                       #  41    0x142cd9  1      OPC=nop             
  nop                       #  42    0x142cda  1      OPC=nop             
  nop                       #  43    0x142cdb  1      OPC=nop             
  movl %edx, %eax           #  44    0x142cdc  2      OPC=movl_r32_r32_1  
  subl %edi, %eax           #  45    0x142cde  2      OPC=subl_r32_r32    
.L_142ce0:                  #        0x142ce0  0      OPC=<label>         
  nop                       #  46    0x142ce0  1      OPC=nop             
  nop                       #  47    0x142ce1  1      OPC=nop             
  nop                       #  48    0x142ce2  1      OPC=nop             
  nop                       #  49    0x142ce3  1      OPC=nop             
  nop                       #  50    0x142ce4  1      OPC=nop             
  nop                       #  51    0x142ce5  1      OPC=nop             
  nop                       #  52    0x142ce6  1      OPC=nop             
  nop                       #  53    0x142ce7  1      OPC=nop             
  nop                       #  54    0x142ce8  1      OPC=nop             
  nop                       #  55    0x142ce9  1      OPC=nop             
  nop                       #  56    0x142cea  1      OPC=nop             
  nop                       #  57    0x142ceb  1      OPC=nop             
  nop                       #  58    0x142cec  1      OPC=nop             
  nop                       #  59    0x142ced  1      OPC=nop             
  shrw $0x2, %ax            #  60    0x142cee  4      OPC=shrw_r16_imm8   
  popq %r11                 #  61    0x142cf2  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  62    0x142cf4  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  63    0x142cf8  3      OPC=addq_r64_r64    
  jmpq %r11                 #  64    0x142cfb  3      OPC=jmpq_r64        
                                                                          
.size wcslen, .-wcslen
