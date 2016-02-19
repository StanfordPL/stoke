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
  xorq %rax, %rax           #  8     0x142ca7  3      OPC=xorq_r64_r64    
  nop                       #  9     0x142caa  1      OPC=nop             
  movl %edi, %edx           #  10    0x142cab  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdx,1), %ecx  #  11    0x142cad  4      OPC=movl_r32_m32    
  nop                       #  12    0x142cb1  1      OPC=nop             
  nop                       #  13    0x142cb2  1      OPC=nop             
  negq %rcx                 #  14    0x142cb3  3      OPC=negq_r64        
  je .L_142ce0              #  15    0x142cb6  2      OPC=je_label        
  nop                       #  16    0x142cb8  1      OPC=nop             
.L_142cc0:                  #        0x142cb9  0      OPC=<label>         
  subl $0xfc, %edx          #  17    0x142cb9  3      OPC=subl_r32_imm8   
  movl (%r15,%rdx,1), %eax  #  18    0x142cbc  4      OPC=movl_r32_m32    
  andl %edi, %eax           #  19    0x142cc0  2      OPC=andl_r32_r32    
  jne .L_142cc0             #  20    0x142cc2  2      OPC=jne_label       
  addq %rdx, %rax           #  21    0x142cc4  3      OPC=addq_r64_r64    
  subl %edi, %eax           #  22    0x142cc7  2      OPC=subl_r32_r32    
.L_142ce0:                  #        0x142cc9  0      OPC=<label>         
  nop                       #  23    0x142cc9  1      OPC=nop             
  sarl $0x2, %eax           #  24    0x142cca  3      OPC=sarl_r32_imm8   
  retq                      #  25    0x142ccd  1      OPC=retq            
                                                                          
.size wcslen, .-wcslen
