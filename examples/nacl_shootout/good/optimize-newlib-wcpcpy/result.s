  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcpcpy:                    #        0x140ac0  0      OPC=<label>         
  movl %edi, %edi           #  1     0x140ac0  2      OPC=movl_r32_r32    
.L_140ae0:                  #        0x140ac2  0      OPC=<label>         
  movl %esi, %esi           #  2     0x140ac2  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  3     0x140ac4  4      OPC=movl_r32_m32    
  movq %rdi, %rax           #  4     0x140ac8  3      OPC=movq_r64_r64_1  
  addw $0x4, %si            #  5     0x140acb  4      OPC=addw_r16_imm8   
  movl %edi, %edi           #  6     0x140acf  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)  #  7     0x140ad1  4      OPC=movl_m32_r32    
  addq $0x4, %rdi           #  8     0x140ad5  4      OPC=addq_r64_imm8   
  orl %edx, %edx            #  9     0x140ad9  2      OPC=orl_r32_r32     
  jne .L_140ae0             #  10    0x140adb  2      OPC=jne_label       
  retq                      #  11    0x140add  1      OPC=retq            
                                                                          
.size wcpcpy, .-wcpcpy
