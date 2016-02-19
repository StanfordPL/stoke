  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    43 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wcsnlen:                   #        0     0      OPC=<label>         
  movl %edi, %eax           #  1     0     2      OPC=movl_r32_r32    
  testl %esi, %esi          #  2     0x2   2      OPC=testl_r32_r32   
  je .L_28                  #  3     0x4   2      OPC=je_label        
  jmpq .L_16                #  4     0x6   2      OPC=jmpq_label      
  nop                       #  5     0x8   1      OPC=nop             
  nop                       #  6     0x9   1      OPC=nop             
  nop                       #  7     0xa   1      OPC=nop             
  nop                       #  8     0xb   1      OPC=nop             
  nop                       #  9     0xc   1      OPC=nop             
  nop                       #  10    0xd   1      OPC=nop             
.L_10:                      #        0xe   0      OPC=<label>         
  addq $0x4, %rax           #  11    0xe   4      OPC=addq_r64_imm8   
  subl $0x1, %esi           #  12    0x12  3      OPC=subl_r32_imm8   
  je .L_20                  #  13    0x15  2      OPC=je_label        
.L_16:                      #        0x17  0      OPC=<label>         
  subl $0x0, %eax           #  14    0x17  5      OPC=subl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  15    0x1c  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  16    0x20  2      OPC=testl_r32_r32   
  jne .L_10                 #  17    0x22  2      OPC=jne_label       
  nop                       #  18    0x24  1      OPC=nop             
  nop                       #  19    0x25  1      OPC=nop             
  nop                       #  20    0x26  1      OPC=nop             
  nop                       #  21    0x27  1      OPC=nop             
.L_20:                      #        0x28  0      OPC=<label>         
  subl %edi, %eax           #  22    0x28  2      OPC=subl_r32_r32_1  
  sarq $0x2, %rax           #  23    0x2a  4      OPC=sarq_r64_imm8   
  retq                      #  24    0x2e  1      OPC=retq            
  nop                       #  25    0x2f  1      OPC=nop             
  nop                       #  26    0x30  1      OPC=nop             
  nop                       #  27    0x31  1      OPC=nop             
  nop                       #  28    0x32  1      OPC=nop             
  nop                       #  29    0x33  1      OPC=nop             
  nop                       #  30    0x34  1      OPC=nop             
.L_28:                      #        0x35  0      OPC=<label>         
  subl %eax, %eax           #  31    0x35  2      OPC=subl_r32_r32    
  nop                       #  32    0x37  1      OPC=nop             
  nop                       #  33    0x38  1      OPC=nop             
  nop                       #  34    0x39  1      OPC=nop             
  nop                       #  35    0x3a  1      OPC=nop             
  nop                       #  36    0x3b  1      OPC=nop             
  nop                       #  37    0x3c  1      OPC=nop             
  nopl %eax                 #  38    0x3d  3      OPC=nopl_r32        
  nopl %eax                 #  39    0x40  3      OPC=nopl_r32        
  nop                       #  40    0x43  1      OPC=nop             
  nop                       #  41    0x44  1      OPC=nop             
  nop                       #  42    0x45  1      OPC=nop             
  nop                       #  43    0x46  1      OPC=nop             
  nop                       #  44    0x47  1      OPC=nop             
  retq                      #  45    0x48  1      OPC=retq            
                                                                      
.size wcsnlen, .-wcsnlen
