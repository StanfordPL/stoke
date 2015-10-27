  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcslen:                    #        0x142ca0  0      OPC=<label>         
  movl %edi, %edx           #  1     0x142ca0  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %ecx  #  2     0x142ca2  4      OPC=movl_r32_m32    
  nop                       #  3     0x142ca6  1      OPC=nop             
  nop                       #  4     0x142ca7  1      OPC=nop             
  nop                       #  5     0x142ca8  1      OPC=nop             
  nop                       #  6     0x142ca9  1      OPC=nop             
  nop                       #  7     0x142caa  1      OPC=nop             
  nop                       #  8     0x142cab  1      OPC=nop             
  nop                       #  9     0x142cac  1      OPC=nop             
  nop                       #  10    0x142cad  1      OPC=nop             
  xorl %eax, %eax           #  11    0x142cae  2      OPC=xorl_r32_r32    
  salq $0x1, %rcx           #  12    0x142cb0  3      OPC=salq_r64_one    
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
  je .L_142ce0              #  24    0x142cbe  2      OPC=je_label        
.L_142cc0:                  #        0x142cc0  0      OPC=<label>         
  sarq $0xe0, %rax          #  25    0x142cc0  4      OPC=sarq_r64_imm8   
  addl $0x4, %edx           #  26    0x142cc4  3      OPC=addl_r32_imm8   
  addl (%r15,%rdx,1), %eax  #  27    0x142cc7  4      OPC=addl_r32_m32    
  jne .L_142cc0             #  28    0x142ccb  2      OPC=jne_label       
  addq %rdx, %rax           #  29    0x142ccd  3      OPC=addq_r64_r64_1  
  nop                       #  30    0x142cd0  1      OPC=nop             
  nop                       #  31    0x142cd1  1      OPC=nop             
  nop                       #  32    0x142cd2  1      OPC=nop             
  nop                       #  33    0x142cd3  1      OPC=nop             
  subl %edi, %eax           #  34    0x142cd4  2      OPC=subl_r32_r32_1  
  shrl $0x2, %eax           #  35    0x142cd6  3      OPC=shrl_r32_imm8   
  nop                       #  36    0x142cd9  1      OPC=nop             
  nop                       #  37    0x142cda  1      OPC=nop             
  nop                       #  38    0x142cdb  1      OPC=nop             
  nop                       #  39    0x142cdc  1      OPC=nop             
  nop                       #  40    0x142cdd  1      OPC=nop             
  nop                       #  41    0x142cde  1      OPC=nop             
  nop                       #  42    0x142cdf  1      OPC=nop             
.L_142ce0:                  #        0x142ce0  0      OPC=<label>         
  nop                       #  43    0x142ce0  1      OPC=nop             
  nop                       #  44    0x142ce1  1      OPC=nop             
  nop                       #  45    0x142ce2  1      OPC=nop             
  popq %r11                 #  46    0x142ce3  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  47    0x142ce5  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  48    0x142ce9  3      OPC=addq_r64_r64    
  jmpq %r11                 #  49    0x142cec  3      OPC=jmpq_r64        
                                                                          
.size wcslen, .-wcslen
