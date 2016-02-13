  .text
  .globl wcscat
  .type wcscat, @function

#! file-offset 0x181040
#! rip-offset  0x141040
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscat:                    #        0x141040  0      OPC=<label>         
  movl %edi, %eax           #  1     0x141040  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %edi  #  2     0x141042  4      OPC=movl_r32_m32    
  movq %rax, %rcx           #  3     0x141046  3      OPC=movq_r64_r64_1  
  testl %edi, %edi          #  4     0x141049  2      OPC=testl_r32_r32   
  nop                       #  5     0x14104b  1      OPC=nop             
  nop                       #  6     0x14104c  1      OPC=nop             
  nop                       #  7     0x14104d  1      OPC=nop             
  nop                       #  8     0x14104e  1      OPC=nop             
  nop                       #  9     0x14104f  1      OPC=nop             
  nop                       #  10    0x141050  1      OPC=nop             
  nop                       #  11    0x141051  1      OPC=nop             
  nop                       #  12    0x141052  1      OPC=nop             
  nop                       #  13    0x141053  1      OPC=nop             
  nop                       #  14    0x141054  1      OPC=nop             
  nop                       #  15    0x141055  1      OPC=nop             
  nop                       #  16    0x141056  1      OPC=nop             
  nop                       #  17    0x141057  1      OPC=nop             
  nop                       #  18    0x141058  1      OPC=nop             
  nop                       #  19    0x141059  1      OPC=nop             
  movq %rcx, %rdx           #  20    0x14105a  3      OPC=movq_r64_r64    
  je .L_1410a0              #  21    0x14105d  2      OPC=je_label        
  nop                       #  22    0x14105f  1      OPC=nop             
.L_141060:                  #        0x141060  0      OPC=<label>         
  nop                       #  23    0x141060  1      OPC=nop             
  addl $0x4, %ecx           #  24    0x141061  3      OPC=addl_r32_imm8   
  andl (%r15,%rcx,1), %edx  #  25    0x141064  4      OPC=andl_r32_m32    
  nop                       #  26    0x141068  1      OPC=nop             
  nop                       #  27    0x141069  1      OPC=nop             
  jne .L_141060             #  28    0x14106a  2      OPC=jne_label       
  xorq %rcx, %rdx           #  29    0x14106c  3      OPC=xorq_r64_r64    
  orl %esi, %esi            #  30    0x14106f  2      OPC=orl_r32_r32     
  movl (%r15,%rsi,1), %ecx  #  31    0x141071  4      OPC=movl_r32_m32    
  nop                       #  32    0x141075  1      OPC=nop             
  nop                       #  33    0x141076  1      OPC=nop             
  nop                       #  34    0x141077  1      OPC=nop             
  nop                       #  35    0x141078  1      OPC=nop             
  nop                       #  36    0x141079  1      OPC=nop             
  nop                       #  37    0x14107a  1      OPC=nop             
  nop                       #  38    0x14107b  1      OPC=nop             
  testl %ecx, %ecx          #  39    0x14107c  2      OPC=testl_r32_r32   
  je .L_1410c0              #  40    0x14107e  2      OPC=je_label        
.L_141080:                  #        0x141080  0      OPC=<label>         
  movl %edx, %edx           #  41    0x141080  2      OPC=movl_r32_r32_1  
  movq %rcx, (%r15,%rdx,1)  #  42    0x141082  4      OPC=movq_m64_r64    
  nop                       #  43    0x141086  1      OPC=nop             
  nop                       #  44    0x141087  1      OPC=nop             
  nop                       #  45    0x141088  1      OPC=nop             
  nop                       #  46    0x141089  1      OPC=nop             
  nop                       #  47    0x14108a  1      OPC=nop             
  nop                       #  48    0x14108b  1      OPC=nop             
  nop                       #  49    0x14108c  1      OPC=nop             
  nop                       #  50    0x14108d  1      OPC=nop             
  nop                       #  51    0x14108e  1      OPC=nop             
  nop                       #  52    0x14108f  1      OPC=nop             
  nop                       #  53    0x141090  1      OPC=nop             
  nop                       #  54    0x141091  1      OPC=nop             
  addl $0x4, %esi           #  55    0x141092  3      OPC=addl_r32_imm8   
  nop                       #  56    0x141095  1      OPC=nop             
  nop                       #  57    0x141096  1      OPC=nop             
  nop                       #  58    0x141097  1      OPC=nop             
  addl $0x4, %edx           #  59    0x141098  3      OPC=addl_r32_imm8   
  nop                       #  60    0x14109b  1      OPC=nop             
  nop                       #  61    0x14109c  1      OPC=nop             
  nop                       #  62    0x14109d  1      OPC=nop             
  nop                       #  63    0x14109e  1      OPC=nop             
  nop                       #  64    0x14109f  1      OPC=nop             
.L_1410a0:                  #        0x1410a0  0      OPC=<label>         
  movl %esi, %esi           #  65    0x1410a0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  66    0x1410a2  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  67    0x1410a6  2      OPC=testl_r32_r32   
  jne .L_141080             #  68    0x1410a8  2      OPC=jne_label       
  nop                       #  69    0x1410aa  1      OPC=nop             
  nop                       #  70    0x1410ab  1      OPC=nop             
  nop                       #  71    0x1410ac  1      OPC=nop             
  nop                       #  72    0x1410ad  1      OPC=nop             
  nop                       #  73    0x1410ae  1      OPC=nop             
  nop                       #  74    0x1410af  1      OPC=nop             
  nop                       #  75    0x1410b0  1      OPC=nop             
  nop                       #  76    0x1410b1  1      OPC=nop             
  nop                       #  77    0x1410b2  1      OPC=nop             
  nop                       #  78    0x1410b3  1      OPC=nop             
  nop                       #  79    0x1410b4  1      OPC=nop             
  nop                       #  80    0x1410b5  1      OPC=nop             
  nop                       #  81    0x1410b6  1      OPC=nop             
  nop                       #  82    0x1410b7  1      OPC=nop             
  nop                       #  83    0x1410b8  1      OPC=nop             
  nop                       #  84    0x1410b9  1      OPC=nop             
  nop                       #  85    0x1410ba  1      OPC=nop             
  nop                       #  86    0x1410bb  1      OPC=nop             
  nop                       #  87    0x1410bc  1      OPC=nop             
  nop                       #  88    0x1410bd  1      OPC=nop             
  nop                       #  89    0x1410be  1      OPC=nop             
  nop                       #  90    0x1410bf  1      OPC=nop             
.L_1410c0:                  #        0x1410c0  0      OPC=<label>         
  nop                       #  91    0x1410c0  1      OPC=nop             
  nop                       #  92    0x1410c1  1      OPC=nop             
  nop                       #  93    0x1410c2  1      OPC=nop             
  retq
                                                                          
.size wcscat, .-wcscat
