  .text
  .globl wcscat
  .type wcscat, @function

#! file-offset 0x181040
#! rip-offset  0x141040
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscat:                    #        0x141040  0      OPC=<label>         
  nop                       #  1     0x141040  1      OPC=nop             
  nop                       #  2     0x141041  1      OPC=nop             
  nop                       #  3     0x141042  1      OPC=nop             
  nop                       #  4     0x141043  1      OPC=nop             
  nop                       #  5     0x141044  1      OPC=nop             
  nop                       #  6     0x141045  1      OPC=nop             
  nop                       #  7     0x141046  1      OPC=nop             
  nop                       #  8     0x141047  1      OPC=nop             
  movq %rdi, %rcx           #  9     0x141048  3      OPC=movq_r64_r64_1  
  nop                       #  10    0x14104b  1      OPC=nop             
  nop                       #  11    0x14104c  1      OPC=nop             
  nop                       #  12    0x14104d  1      OPC=nop             
  nop                       #  13    0x14104e  1      OPC=nop             
  nop                       #  14    0x14104f  1      OPC=nop             
  nop                       #  15    0x141050  1      OPC=nop             
  nop                       #  16    0x141051  1      OPC=nop             
  nop                       #  17    0x141052  1      OPC=nop             
  nop                       #  18    0x141053  1      OPC=nop             
  movl %edi, %eax           #  19    0x141054  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  20    0x141056  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi  #  21    0x141058  4      OPC=movl_r32_m32    
  testl %edi, %edi          #  22    0x14105c  2      OPC=testl_r32_r32   
  je .L_1410c0              #  23    0x14105e  2      OPC=je_label        
.L_141060:                  #        0x141060  0      OPC=<label>         
  addl $0x4, %ecx           #  24    0x141060  6      OPC=addl_r32_imm32  
  movq (%r15,%rcx,1), %rdx  #  25    0x141066  4      OPC=movq_r64_m64    
  testl %edx, %edx          #  26    0x14106a  2      OPC=testl_r32_r32   
  jne .L_141060             #  27    0x14106c  2      OPC=jne_label       
  nop                       #  28    0x14106e  1      OPC=nop             
  nop                       #  29    0x14106f  1      OPC=nop             
  nop                       #  30    0x141070  1      OPC=nop             
  nop                       #  31    0x141071  1      OPC=nop             
  nop                       #  32    0x141072  1      OPC=nop             
  nop                       #  33    0x141073  1      OPC=nop             
  xorq %rcx, %rdx           #  34    0x141074  3      OPC=xorq_r64_r64    
  nop                       #  35    0x141077  1      OPC=nop             
  movl %esi, %esi           #  36    0x141078  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %rcx  #  37    0x14107a  4      OPC=movq_r64_m64    
  je .L_1410c0              #  38    0x14107e  2      OPC=je_label        
.L_141080:                  #        0x141080  0      OPC=<label>         
  orl %edx, %edx            #  39    0x141080  2      OPC=orl_r32_r32_1   
  movq %rcx, (%r15,%rdx,1)  #  40    0x141082  4      OPC=movq_m64_r64    
  nop                       #  41    0x141086  1      OPC=nop             
  nop                       #  42    0x141087  1      OPC=nop             
  nop                       #  43    0x141088  1      OPC=nop             
  nop                       #  44    0x141089  1      OPC=nop             
  nop                       #  45    0x14108a  1      OPC=nop             
  nop                       #  46    0x14108b  1      OPC=nop             
  nop                       #  47    0x14108c  1      OPC=nop             
  nop                       #  48    0x14108d  1      OPC=nop             
  nop                       #  49    0x14108e  1      OPC=nop             
  nop                       #  50    0x14108f  1      OPC=nop             
  nop                       #  51    0x141090  1      OPC=nop             
  nop                       #  52    0x141091  1      OPC=nop             
  nop                       #  53    0x141092  1      OPC=nop             
  nop                       #  54    0x141093  1      OPC=nop             
  addl $0x4, %edx           #  55    0x141094  3      OPC=addl_r32_imm8   
  nop                       #  56    0x141097  1      OPC=nop             
  nop                       #  57    0x141098  1      OPC=nop             
  nop                       #  58    0x141099  1      OPC=nop             
  nop                       #  59    0x14109a  1      OPC=nop             
  nop                       #  60    0x14109b  1      OPC=nop             
  nop                       #  61    0x14109c  1      OPC=nop             
  nop                       #  62    0x14109d  1      OPC=nop             
  nop                       #  63    0x14109e  1      OPC=nop             
  nop                       #  64    0x14109f  1      OPC=nop             
  nop                       #  65    0x1410a0  1      OPC=nop             
  nop                       #  66    0x1410a1  1      OPC=nop             
  nop                       #  67    0x1410a2  1      OPC=nop             
  nop                       #  68    0x1410a3  1      OPC=nop             
  nop                       #  69    0x1410a4  1      OPC=nop             
  nop                       #  70    0x1410a5  1      OPC=nop             
.wcscat:                    #        0x1410a6  0      OPC=<label>         
  addl $0x4, %esi           #  71    0x1410a6  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx  #  72    0x1410a9  4      OPC=movl_r32_m32    
  testl %edi, %ecx          #  73    0x1410ad  2      OPC=testl_r32_r32   
  jne .L_141080             #  74    0x1410af  2      OPC=jne_label       
  nop                       #  75    0x1410b1  1      OPC=nop             
  nop                       #  76    0x1410b2  1      OPC=nop             
  nop                       #  77    0x1410b3  1      OPC=nop             
  nop                       #  78    0x1410b4  1      OPC=nop             
  nop                       #  79    0x1410b5  1      OPC=nop             
  nop                       #  80    0x1410b6  1      OPC=nop             
  nop                       #  81    0x1410b7  1      OPC=nop             
  nop                       #  82    0x1410b8  1      OPC=nop             
  nop                       #  83    0x1410b9  1      OPC=nop             
  nop                       #  84    0x1410ba  1      OPC=nop             
  nop                       #  85    0x1410bb  1      OPC=nop             
  nop                       #  86    0x1410bc  1      OPC=nop             
  nop                       #  87    0x1410bd  1      OPC=nop             
  nop                       #  88    0x1410be  1      OPC=nop             
  nop                       #  89    0x1410bf  1      OPC=nop             
.L_1410c0:                  #        0x1410c0  0      OPC=<label>         
  popq %r11                 #  90    0x1410c0  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  91    0x1410c2  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  92    0x1410c6  3      OPC=addq_r64_r64    
  jmpq %r11                 #  93    0x1410c9  3      OPC=jmpq_r64        
                                                                          
.size wcscat, .-wcscat
