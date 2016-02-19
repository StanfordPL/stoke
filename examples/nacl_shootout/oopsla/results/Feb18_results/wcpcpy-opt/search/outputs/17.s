  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcpcpy:                    #        0x140ac0  0      OPC=<label>         
  nop                       #  1     0x140ac0  1      OPC=nop             
  nop                       #  2     0x140ac1  1      OPC=nop             
  nop                       #  3     0x140ac2  1      OPC=nop             
  nop                       #  4     0x140ac3  1      OPC=nop             
  nop                       #  5     0x140ac4  1      OPC=nop             
  nop                       #  6     0x140ac5  1      OPC=nop             
  andq %rdi, %rdi           #  7     0x140ac6  3      OPC=andq_r64_r64_1  
.L_140ae0:                  #        0x140ac9  0      OPC=<label>         
  orl %esi, %esi            #  8     0x140ac9  2      OPC=orl_r32_r32_1   
  movl (%r15,%rsi,1), %edx  #  9     0x140acb  4      OPC=movl_r32_m32    
  addl $0x4, %esi           #  10    0x140acf  3      OPC=addl_r32_imm8   
  movl %edi, %edi           #  11    0x140ad2  2      OPC=movl_r32_r32_1  
  movl %edx, (%r15,%rdi,1)  #  12    0x140ad4  4      OPC=movl_m32_r32    
  movq %rdi, %rax           #  13    0x140ad8  3      OPC=movq_r64_r64    
  addl $0x4, %edi           #  14    0x140adb  3      OPC=addl_r32_imm8   
  testl %edx, %edx          #  15    0x140ade  2      OPC=testl_r32_r32   
  jne .L_140ae0             #  16    0x140ae0  2      OPC=jne_label       
  retq                      #  17    0x140ae2  1      OPC=retq            
                                                                          
.size wcpcpy, .-wcpcpy
