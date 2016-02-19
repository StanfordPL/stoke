  .text
  .globl wcsrchr
  .type wcsrchr, @function

#! file-offset 0x1838c0
#! rip-offset  0x1438c0
#! capacity    256 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsrchr:                   #        0x1438c0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x1438c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx  #  2     0x1438c2  4      OPC=movl_r32_m32    
  nop                       #  3     0x1438c6  1      OPC=nop             
  testl %ecx, %ecx          #  4     0x1438c7  2      OPC=testl_r32_r32   
  je .L_143900              #  5     0x1438c9  2      OPC=je_label        
.L_1438e0:                  #        0x1438cb  0      OPC=<label>         
  addl $0x4, %eax           #  6     0x1438cb  5      OPC=addl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  7     0x1438d0  4      OPC=movl_r32_m32    
  sarq $0x1, %rdx           #  8     0x1438d4  3      OPC=sarq_r64_one    
  jne .L_1438e0             #  9     0x1438d7  2      OPC=jne_label       
  nop                       #  10    0x1438d9  1      OPC=nop             
  nop                       #  11    0x1438da  1      OPC=nop             
  nop                       #  12    0x1438db  1      OPC=nop             
  cmpl %eax, %edi           #  13    0x1438dc  2      OPC=cmpl_r32_r32    
  ja .L_143960              #  14    0x1438de  2      OPC=ja_label        
.L_143900:                  #        0x1438e0  0      OPC=<label>         
.L_143920:                  #        0x1438e0  0      OPC=<label>         
  addl $0x0, %eax           #  15    0x1438e0  3      OPC=addl_r32_imm8   
  cmpl %esi, (%r15,%rax,1)  #  16    0x1438e3  4      OPC=cmpl_m32_r32    
  je .L_143980              #  17    0x1438e7  2      OPC=je_label        
  subl $0x4, %eax           #  18    0x1438e9  3      OPC=subl_r32_imm8   
  cmpl %eax, %edi           #  19    0x1438ec  2      OPC=cmpl_r32_r32    
  jbe .L_143920             #  20    0x1438ee  2      OPC=jbe_label       
  nopl %eax                 #  21    0x1438f0  3      OPC=nopl_r32        
  nop                       #  22    0x1438f3  1      OPC=nop             
  nop                       #  23    0x1438f4  1      OPC=nop             
  nop                       #  24    0x1438f5  1      OPC=nop             
  nop                       #  25    0x1438f6  1      OPC=nop             
  nop                       #  26    0x1438f7  1      OPC=nop             
  nop                       #  27    0x1438f8  1      OPC=nop             
  nop                       #  28    0x1438f9  1      OPC=nop             
.L_143960:                  #        0x1438fa  0      OPC=<label>         
  nop                       #  29    0x1438fa  1      OPC=nop             
  nop                       #  30    0x1438fb  1      OPC=nop             
  nop                       #  31    0x1438fc  1      OPC=nop             
  nop                       #  32    0x1438fd  1      OPC=nop             
  nop                       #  33    0x1438fe  1      OPC=nop             
  nop                       #  34    0x1438ff  1      OPC=nop             
  sarq $0xff, %rax          #  35    0x143900  4      OPC=sarq_r64_imm8   
  nop                       #  36    0x143904  1      OPC=nop             
  nop                       #  37    0x143905  1      OPC=nop             
.L_143980:                  #        0x143906  0      OPC=<label>         
  retq                      #  38    0x143906  1      OPC=retq            
                                                                          
.size wcsrchr, .-wcsrchr
