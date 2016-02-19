  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    37 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wcslen:                    #        0     0      OPC=<label>         
  leal (%rdi), %ecx         #  1     0     2      OPC=leal_r32_m32    
  movl (%r15,%rcx,1), %ecx  #  2     0x2   4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  3     0x6   2      OPC=testl_r32_r32   
  movq %rdi, %rax           #  4     0x8   3      OPC=movq_r64_r64_1  
  je .L_22                  #  5     0xb   2      OPC=je_label        
.L_10:                      #        0xd   0      OPC=<label>         
  addl $0x4, %eax           #  6     0xd   3      OPC=addl_r32_imm8   
  leal (%rax), %edx         #  7     0x10  2      OPC=leal_r32_m32    
  movl (%r15,%rdx,1), %edx  #  8     0x12  4      OPC=movl_r32_m32    
  testl %edx, %edi          #  9     0x16  2      OPC=testl_r32_r32   
  jne .L_10                 #  10    0x18  2      OPC=jne_label       
  subl %edi, %eax           #  11    0x1a  2      OPC=subl_r32_r32_1  
  nop                       #  12    0x1c  1      OPC=nop             
  nop                       #  13    0x1d  1      OPC=nop             
  nop                       #  14    0x1e  1      OPC=nop             
  nop                       #  15    0x1f  1      OPC=nop             
  sarw $0x2, %ax            #  16    0x20  4      OPC=sarw_r16_imm8   
  retq                      #  17    0x24  1      OPC=retq            
.L_22:                      #        0x25  0      OPC=<label>         
  nop                       #  18    0x25  1      OPC=nop             
  xorl %eax, %eax           #  19    0x26  2      OPC=xorl_r32_r32_1  
  nop                       #  20    0x28  1      OPC=nop             
  retq                      #  21    0x29  1      OPC=retq            
                                                                      
.size wcslen, .-wcslen
