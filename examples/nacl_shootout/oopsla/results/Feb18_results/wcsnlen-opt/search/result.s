  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  nop                       #  1     0x142d00  1      OPC=nop             
  nop                       #  2     0x142d01  1      OPC=nop             
  nop                       #  3     0x142d02  1      OPC=nop             
  nop                       #  4     0x142d03  1      OPC=nop             
  nop                       #  5     0x142d04  1      OPC=nop             
  nop                       #  6     0x142d05  1      OPC=nop             
  nop                       #  7     0x142d06  1      OPC=nop             
  nop                       #  8     0x142d07  1      OPC=nop             
  movl %edi, %eax           #  9     0x142d08  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx  #  10    0x142d0a  4      OPC=movl_r32_m32    
  andl %esi, %esi           #  11    0x142d0e  2      OPC=andl_r32_r32    
  je .L_142d80              #  12    0x142d10  2      OPC=je_label        
  subl $0x1, %esi           #  13    0x142d12  6      OPC=subl_r32_imm32  
  salq $0xe0, %rcx          #  14    0x142d18  4      OPC=salq_r64_imm8   
  nop                       #  15    0x142d1c  1      OPC=nop             
  nop                       #  16    0x142d1d  1      OPC=nop             
  je .L_142d80              #  17    0x142d1e  2      OPC=je_label        
  movq %rax, %rbx           #  18    0x142d20  3      OPC=movq_r64_r64    
  jmpq .L_142d40            #  19    0x142d23  2      OPC=jmpq_label      
.L_142d20:                  #        0x142d25  0      OPC=<label>         
  testl %esi, %esi          #  20    0x142d25  2      OPC=testl_r32_r32   
  je .L_142d60              #  21    0x142d27  2      OPC=je_label        
  subw $0x1, %si            #  22    0x142d29  4      OPC=subw_r16_imm8   
.L_142d40:                  #        0x142d2d  0      OPC=<label>         
  addl $0x4, %eax           #  23    0x142d2d  5      OPC=addl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  24    0x142d32  4      OPC=movl_r32_m32    
  andq $0xfa, %rdx          #  25    0x142d36  4      OPC=andq_r64_imm8   
  jne .L_142d20             #  26    0x142d3a  2      OPC=jne_label       
  nopl %eax                 #  27    0x142d3c  3      OPC=nopl_r32        
  nop                       #  28    0x142d3f  1      OPC=nop             
.L_142d60:                  #        0x142d40  0      OPC=<label>         
  subl %ebx, %eax           #  29    0x142d40  2      OPC=subl_r32_r32_1  
  nop                       #  30    0x142d42  1      OPC=nop             
  nop                       #  31    0x142d43  1      OPC=nop             
  nop                       #  32    0x142d44  1      OPC=nop             
  nop                       #  33    0x142d45  1      OPC=nop             
  nop                       #  34    0x142d46  1      OPC=nop             
  nop                       #  35    0x142d47  1      OPC=nop             
  nop                       #  36    0x142d48  1      OPC=nop             
  sarq $0x2, %rax           #  37    0x142d49  4      OPC=sarq_r64_imm8   
  retq                      #  38    0x142d4d  1      OPC=retq            
  nop                       #  39    0x142d4e  1      OPC=nop             
  nop                       #  40    0x142d4f  1      OPC=nop             
  nop                       #  41    0x142d50  1      OPC=nop             
  nop                       #  42    0x142d51  1      OPC=nop             
  nop                       #  43    0x142d52  1      OPC=nop             
  nop                       #  44    0x142d53  1      OPC=nop             
  nop                       #  45    0x142d54  1      OPC=nop             
.L_142d80:                  #        0x142d55  0      OPC=<label>         
  nop                       #  46    0x142d55  1      OPC=nop             
  subq %rax, %rax           #  47    0x142d56  3      OPC=subq_r64_r64_1  
  nopl %eax                 #  48    0x142d59  3      OPC=nopl_r32        
  nop                       #  49    0x142d5c  1      OPC=nop             
  nop                       #  50    0x142d5d  1      OPC=nop             
  nop                       #  51    0x142d5e  1      OPC=nop             
  nop                       #  52    0x142d5f  1      OPC=nop             
  retq                      #  53    0x142d60  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
