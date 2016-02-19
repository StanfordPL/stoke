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
  nopl %eax                 #  3     0x140ac2  3      OPC=nopl_r32       
  nop                       #  4     0x140ac5  1      OPC=nop            
  nop                       #  5     0x140ac6  1      OPC=nop            
  nop                       #  6     0x140ac7  1      OPC=nop            
  nop                       #  7     0x140ac8  1      OPC=nop            
  nop                       #  8     0x140ac9  1      OPC=nop            
  nop                       #  9     0x140aca  1      OPC=nop            
  nop                       #  10    0x140acb  1      OPC=nop            
  nop                       #  11    0x140acc  1      OPC=nop            
  nop                       #  12    0x140acd  1      OPC=nop            
  nop                       #  13    0x140ace  1      OPC=nop            
  movl %edi, %edi           #  14    0x140acf  2      OPC=movl_r32_r32   
  nop                       #  15    0x140ad1  1      OPC=nop            
  nop                       #  16    0x140ad2  1      OPC=nop            
  nop                       #  17    0x140ad3  1      OPC=nop            
  nop                       #  18    0x140ad4  1      OPC=nop            
  nop                       #  19    0x140ad5  1      OPC=nop            
  nop                       #  20    0x140ad6  1      OPC=nop            
  nop                       #  21    0x140ad7  1      OPC=nop            
  nop                       #  22    0x140ad8  1      OPC=nop            
  nop                       #  23    0x140ad9  1      OPC=nop            
  nop                       #  24    0x140ada  1      OPC=nop            
  nop                       #  25    0x140adb  1      OPC=nop            
  nop                       #  26    0x140adc  1      OPC=nop            
  nop                       #  27    0x140add  1      OPC=nop            
  nop                       #  28    0x140ade  1      OPC=nop            
  nop                       #  29    0x140adf  1      OPC=nop            
  nop                       #  30    0x140ae0  1      OPC=nop            
  nop                       #  31    0x140ae1  1      OPC=nop            
  nop                       #  32    0x140ae2  1      OPC=nop            
  nop                       #  33    0x140ae3  1      OPC=nop            
  nop                       #  34    0x140ae4  1      OPC=nop            
  nop                       #  35    0x140ae5  1      OPC=nop            
  nop                       #  36    0x140ae6  1      OPC=nop            
.L_140ae0:                  #        0x140ae7  0      OPC=<label>        
  movl %esi, %esi           #  37    0x140ae7  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %edx  #  38    0x140ae9  4      OPC=movl_r32_m32   
  movq %rdi, %rax           #  39    0x140aed  3      OPC=movq_r64_r64   
  addl $0x4, %esi           #  40    0x140af0  3      OPC=addl_r32_imm8  
  movl %edi, %edi           #  41    0x140af3  2      OPC=movl_r32_r32   
  movl %edx, (%r15,%rdi,1)  #  42    0x140af5  4      OPC=movl_m32_r32   
  addl $0x4, %edi           #  43    0x140af9  3      OPC=addl_r32_imm8  
  testl %edx, %edx          #  44    0x140afc  2      OPC=testl_r32_r32  
  jne .L_140ae0             #  45    0x140afe  2      OPC=jne_label      
  retq                      #  46    0x140b00  1      OPC=retq           
                                                                         
.size wcpcpy, .-wcpcpy
