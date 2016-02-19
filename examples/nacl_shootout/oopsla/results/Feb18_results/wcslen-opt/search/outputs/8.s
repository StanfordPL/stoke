  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182ca0
#! rip-offset  0x142ca0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcslen:                    #        0x142ca0  0      OPC=<label>         
  movl %edi, %edx           #  1     0x142ca0  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdx,1), %ecx  #  2     0x142ca2  4      OPC=movl_r32_m32    
  xorq %rax, %rax           #  3     0x142ca6  3      OPC=xorq_r64_r64    
  orl %ecx, %eax            #  4     0x142ca9  2      OPC=orl_r32_r32_1   
  je .L_142ce0              #  5     0x142cab  2      OPC=je_label        
.L_142cc0:                  #        0x142cad  0      OPC=<label>         
  addl $0x4, %edx           #  6     0x142cad  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %eax  #  7     0x142cb0  4      OPC=movl_r32_m32    
  shrl $0x1, %eax           #  8     0x142cb4  3      OPC=shrl_r32_imm8   
  jne .L_142cc0             #  9     0x142cb7  2      OPC=jne_label       
  subl %edi, %edx           #  10    0x142cb9  2      OPC=subl_r32_r32_1  
  orl %edx, %eax            #  11    0x142cbb  2      OPC=orl_r32_r32_1   
.L_142ce0:                  #        0x142cbd  0      OPC=<label>         
  shrl $0x2, %eax           #  12    0x142cbd  3      OPC=shrl_r32_imm8   
  retq                      #  13    0x142cc0  1      OPC=retq            
                                                                          
.size wcslen, .-wcslen
