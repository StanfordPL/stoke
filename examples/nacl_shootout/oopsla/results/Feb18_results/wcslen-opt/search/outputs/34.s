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
  movq %rdi, %rdx           #  3     0x142ca3  3      OPC=movq_r64_r64_1  
  nop                       #  4     0x142ca6  1      OPC=nop             
  nop                       #  5     0x142ca7  1      OPC=nop             
  nop                       #  6     0x142ca8  1      OPC=nop             
  andl %edx, %edi           #  7     0x142ca9  2      OPC=andl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  8     0x142cab  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  9     0x142caf  2      OPC=testl_r32_r32   
  je .L_142ce0              #  10    0x142cb1  2      OPC=je_label        
.L_142cc0:                  #        0x142cb3  0      OPC=<label>         
  addl $0x4, %edx           #  11    0x142cb3  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %eax  #  12    0x142cb6  4      OPC=movl_r32_m32    
  testl %eax, %edi          #  13    0x142cba  2      OPC=testl_r32_r32   
  jne .L_142cc0             #  14    0x142cbc  2      OPC=jne_label       
  xorl %edx, %eax           #  15    0x142cbe  2      OPC=xorl_r32_r32    
  subl %edi, %eax           #  16    0x142cc0  2      OPC=subl_r32_r32    
  sarw $0x2, %ax            #  17    0x142cc2  4      OPC=sarw_r16_imm8   
.L_142ce0:                  #        0x142cc6  0      OPC=<label>         
  nop                       #  18    0x142cc6  1      OPC=nop             
  nop                       #  19    0x142cc7  1      OPC=nop             
  retq                      #  20    0x142cc8  1      OPC=retq            
                                                                          
.size wcslen, .-wcslen
