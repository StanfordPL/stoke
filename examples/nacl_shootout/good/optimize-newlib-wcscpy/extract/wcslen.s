  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182de0
#! rip-offset  0x142de0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcslen:                    #        0x142de0  0      OPC=<label>         
  movl %edi, %edi           #  1     0x142de0  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  2     0x142de2  2      OPC=xorl_r32_r32    
  movl %edi, %edi           #  3     0x142de4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx  #  4     0x142de6  4      OPC=movl_r32_m32    
  movq %rdi, %rdx           #  5     0x142dea  3      OPC=movq_r64_r64    
  testl %ecx, %ecx          #  6     0x142ded  2      OPC=testl_r32_r32   
  je .L_142e20              #  7     0x142def  2      OPC=je_label        
  nop                       #  8     0x142df1  1      OPC=nop             
  nop                       #  9     0x142df2  1      OPC=nop             
  nop                       #  10    0x142df3  1      OPC=nop             
  nop                       #  11    0x142df4  1      OPC=nop             
  nop                       #  12    0x142df5  1      OPC=nop             
  nop                       #  13    0x142df6  1      OPC=nop             
  nop                       #  14    0x142df7  1      OPC=nop             
  nop                       #  15    0x142df8  1      OPC=nop             
  nop                       #  16    0x142df9  1      OPC=nop             
  nop                       #  17    0x142dfa  1      OPC=nop             
  nop                       #  18    0x142dfb  1      OPC=nop             
  nop                       #  19    0x142dfc  1      OPC=nop             
  nop                       #  20    0x142dfd  1      OPC=nop             
  nop                       #  21    0x142dfe  1      OPC=nop             
  nop                       #  22    0x142dff  1      OPC=nop             
.L_142e00:                  #        0x142e00  0      OPC=<label>         
  addl $0x4, %edx           #  23    0x142e00  3      OPC=addl_r32_imm8   
  movl %edx, %edx           #  24    0x142e03  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax  #  25    0x142e05  4      OPC=movl_r32_m32    
  testl %eax, %eax          #  26    0x142e09  2      OPC=testl_r32_r32   
  jne .L_142e00             #  27    0x142e0b  2      OPC=jne_label       
  movl %edx, %eax           #  28    0x142e0d  2      OPC=movl_r32_r32    
  subl %edi, %eax           #  29    0x142e0f  2      OPC=subl_r32_r32    
  sarl $0x2, %eax           #  30    0x142e11  3      OPC=sarl_r32_imm8   
  nop                       #  31    0x142e14  1      OPC=nop             
  nop                       #  32    0x142e15  1      OPC=nop             
  nop                       #  33    0x142e16  1      OPC=nop             
  nop                       #  34    0x142e17  1      OPC=nop             
  nop                       #  35    0x142e18  1      OPC=nop             
  nop                       #  36    0x142e19  1      OPC=nop             
  nop                       #  37    0x142e1a  1      OPC=nop             
  nop                       #  38    0x142e1b  1      OPC=nop             
  nop                       #  39    0x142e1c  1      OPC=nop             
  nop                       #  40    0x142e1d  1      OPC=nop             
  nop                       #  41    0x142e1e  1      OPC=nop             
  nop                       #  42    0x142e1f  1      OPC=nop             
.L_142e20:                  #        0x142e20  0      OPC=<label>         
  popq %r11                 #  43    0x142e20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  44    0x142e22  7      OPC=andl_r32_imm32  
  nop                       #  45    0x142e29  1      OPC=nop             
  nop                       #  46    0x142e2a  1      OPC=nop             
  nop                       #  47    0x142e2b  1      OPC=nop             
  nop                       #  48    0x142e2c  1      OPC=nop             
  addq %r15, %r11           #  49    0x142e2d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  50    0x142e30  3      OPC=jmpq_r64        
  nop                       #  51    0x142e33  1      OPC=nop             
  nop                       #  52    0x142e34  1      OPC=nop             
  nop                       #  53    0x142e35  1      OPC=nop             
  nop                       #  54    0x142e36  1      OPC=nop             
  nop                       #  55    0x142e37  1      OPC=nop             
  nop                       #  56    0x142e38  1      OPC=nop             
  nop                       #  57    0x142e39  1      OPC=nop             
  nop                       #  58    0x142e3a  1      OPC=nop             
  nop                       #  59    0x142e3b  1      OPC=nop             
  nop                       #  60    0x142e3c  1      OPC=nop             
  nop                       #  61    0x142e3d  1      OPC=nop             
  nop                       #  62    0x142e3e  1      OPC=nop             
  nop                       #  63    0x142e3f  1      OPC=nop             
  nop                       #  64    0x142e40  1      OPC=nop             
  nop                       #  65    0x142e41  1      OPC=nop             
  nop                       #  66    0x142e42  1      OPC=nop             
  nop                       #  67    0x142e43  1      OPC=nop             
  nop                       #  68    0x142e44  1      OPC=nop             
  nop                       #  69    0x142e45  1      OPC=nop             
  nop                       #  70    0x142e46  1      OPC=nop             
                                                                          
.size wcslen, .-wcslen

