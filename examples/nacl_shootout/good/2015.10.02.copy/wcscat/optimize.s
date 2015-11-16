  .text
  .globl wcscat
  .type wcscat, @function

#! file-offset 0x181040
#! rip-offset  0x141040
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscat:                    #        0x141040  0      OPC=<label>         
  movl %edi, %eax           #  1     0x141040  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi  #  2     0x141042  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  3     0x141046  2      OPC=movl_r32_r32    
  movq %rax, %rdx           #  4     0x141048  3      OPC=movq_r64_r64    
  testl %edi, %edi          #  5     0x14104b  2      OPC=testl_r32_r32   
  movq %rax, %rcx           #  6     0x14104d  3      OPC=movq_r64_r64    
  je .L_1410a0              #  7     0x141050  2      OPC=je_label        
  nop                       #  8     0x141052  1      OPC=nop             
  nop                       #  9     0x141053  1      OPC=nop             
  nop                       #  10    0x141054  1      OPC=nop             
  nop                       #  11    0x141055  1      OPC=nop             
  nop                       #  12    0x141056  1      OPC=nop             
  nop                       #  13    0x141057  1      OPC=nop             
  nop                       #  14    0x141058  1      OPC=nop             
  nop                       #  15    0x141059  1      OPC=nop             
  nop                       #  16    0x14105a  1      OPC=nop             
  nop                       #  17    0x14105b  1      OPC=nop             
  nop                       #  18    0x14105c  1      OPC=nop             
  nop                       #  19    0x14105d  1      OPC=nop             
  nop                       #  20    0x14105e  1      OPC=nop             
  nop                       #  21    0x14105f  1      OPC=nop             
.L_141060:                  #        0x141060  0      OPC=<label>         
  addl $0x4, %ecx           #  22    0x141060  3      OPC=addl_r32_imm8   
  movl (%r15,%rcx,1), %edx  #  23    0x141063  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  24    0x141067  2      OPC=testl_r32_r32   
  jne .L_141060             #  25    0x141069  2      OPC=jne_label       
  orq %rcx, %rdx            #  26    0x14106b  3      OPC=orq_r64_r64     
  movl %esi, %esi           #  27    0x14106e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  28    0x141070  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  29    0x141074  2      OPC=testl_r32_r32   
  je .L_1410a0              #  30    0x141076  2      OPC=je_label        
  nopl %eax                 #  31    0x141078  3      OPC=nopl_r32        
  nop                       #  32    0x14107b  1      OPC=nop             
  nop                       #  33    0x14107c  1      OPC=nop             
  nop                       #  34    0x14107d  1      OPC=nop             
  nop                       #  35    0x14107e  1      OPC=nop             
  nop                       #  36    0x14107f  1      OPC=nop             
.L_141080:                  #        0x141080  0      OPC=<label>         
  movl %edx, %edx           #  37    0x141080  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)  #  38    0x141082  4      OPC=movl_m32_r32    
  addl $0x4, %esi           #  39    0x141086  3      OPC=addl_r32_imm8   
  addl $0x4, %edx           #  40    0x141089  3      OPC=addl_r32_imm8   
  nop                       #  41    0x14108c  1      OPC=nop             
  nop                       #  42    0x14108d  1      OPC=nop             
  nop                       #  43    0x14108e  1      OPC=nop             
  nop                       #  44    0x14108f  1      OPC=nop             
  nop                       #  45    0x141090  1      OPC=nop             
  nop                       #  46    0x141091  1      OPC=nop             
  nop                       #  47    0x141092  1      OPC=nop             
  nop                       #  48    0x141093  1      OPC=nop             
  nop                       #  49    0x141094  1      OPC=nop             
  nop                       #  50    0x141095  1      OPC=nop             
  nop                       #  51    0x141096  1      OPC=nop             
  nop                       #  52    0x141097  1      OPC=nop             
  nop                       #  53    0x141098  1      OPC=nop             
  nop                       #  54    0x141099  1      OPC=nop             
  nop                       #  55    0x14109a  1      OPC=nop             
  nop                       #  56    0x14109b  1      OPC=nop             
  nop                       #  57    0x14109c  1      OPC=nop             
  nop                       #  58    0x14109d  1      OPC=nop             
  nop                       #  59    0x14109e  1      OPC=nop             
  nop                       #  60    0x14109f  1      OPC=nop             
.L_1410a0:                  #        0x1410a0  0      OPC=<label>         
  movl %esi, %esi           #  61    0x1410a0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx  #  62    0x1410a2  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  63    0x1410a6  2      OPC=testl_r32_r32   
  jne .L_141080             #  64    0x1410a8  2      OPC=jne_label       
  nop                       #  65    0x1410aa  1      OPC=nop             
  nop                       #  66    0x1410ab  1      OPC=nop             
  nop                       #  67    0x1410ac  1      OPC=nop             
  nop                       #  68    0x1410ad  1      OPC=nop             
  nop                       #  69    0x1410ae  1      OPC=nop             
  nop                       #  70    0x1410af  1      OPC=nop             
  nop                       #  71    0x1410b0  1      OPC=nop             
  nop                       #  72    0x1410b1  1      OPC=nop             
  nop                       #  73    0x1410b2  1      OPC=nop             
  nop                       #  74    0x1410b3  1      OPC=nop             
  nop                       #  75    0x1410b4  1      OPC=nop             
  nop                       #  76    0x1410b5  1      OPC=nop             
  nop                       #  77    0x1410b6  1      OPC=nop             
  nop                       #  78    0x1410b7  1      OPC=nop             
  nop                       #  79    0x1410b8  1      OPC=nop             
  nop                       #  80    0x1410b9  1      OPC=nop             
  nop                       #  81    0x1410ba  1      OPC=nop             
  nop                       #  82    0x1410bb  1      OPC=nop             
  nop                       #  83    0x1410bc  1      OPC=nop             
  nop                       #  84    0x1410bd  1      OPC=nop             
  nop                       #  85    0x1410be  1      OPC=nop             
  nop                       #  86    0x1410bf  1      OPC=nop             
  nop                       #  87    0x1410c0  1      OPC=nop             
  nop                       #  88    0x1410c1  1      OPC=nop             
.L_1410c0:                  #        0x1410c2  0      OPC=<label>         
  movl %edx, %edx           #  89    0x1410c2  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdx,1)  #  90    0x1410c4  8      OPC=movl_m32_imm32  
  popq %r11                 #  91    0x1410cc  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  92    0x1410ce  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  93    0x1410d2  3      OPC=addq_r64_r64    
  jmpq %r11                 #  94    0x1410d5  3      OPC=jmpq_r64        
                                                                          
.size wcscat, .-wcscat
