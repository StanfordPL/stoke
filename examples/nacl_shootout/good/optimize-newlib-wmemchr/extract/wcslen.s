  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x183180
#! rip-offset  0x143180
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcslen:                    #        0x143180  0      OPC=<label>         
  movl %edi, %edi           #  1     0x143180  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  2     0x143182  2      OPC=xorl_r32_r32    
  movl %edi, %edi           #  3     0x143184  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx  #  4     0x143186  4      OPC=movl_r32_m32    
  movq %rdi, %rdx           #  5     0x14318a  3      OPC=movq_r64_r64    
  testl %ecx, %ecx          #  6     0x14318d  2      OPC=testl_r32_r32   
  je .L_1431c0              #  7     0x14318f  2      OPC=je_label        
  nop                       #  8     0x143191  1      OPC=nop             
  nop                       #  9     0x143192  1      OPC=nop             
  nop                       #  10    0x143193  1      OPC=nop             
  nop                       #  11    0x143194  1      OPC=nop             
  nop                       #  12    0x143195  1      OPC=nop             
  nop                       #  13    0x143196  1      OPC=nop             
  nop                       #  14    0x143197  1      OPC=nop             
  nop                       #  15    0x143198  1      OPC=nop             
  nop                       #  16    0x143199  1      OPC=nop             
  nop                       #  17    0x14319a  1      OPC=nop             
  nop                       #  18    0x14319b  1      OPC=nop             
  nop                       #  19    0x14319c  1      OPC=nop             
  nop                       #  20    0x14319d  1      OPC=nop             
  nop                       #  21    0x14319e  1      OPC=nop             
  nop                       #  22    0x14319f  1      OPC=nop             
.L_1431a0:                  #        0x1431a0  0      OPC=<label>         
  addl $0x4, %edx           #  23    0x1431a0  3      OPC=addl_r32_imm8   
  movl %edx, %edx           #  24    0x1431a3  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax  #  25    0x1431a5  4      OPC=movl_r32_m32    
  testl %eax, %eax          #  26    0x1431a9  2      OPC=testl_r32_r32   
  jne .L_1431a0             #  27    0x1431ab  2      OPC=jne_label       
  movl %edx, %eax           #  28    0x1431ad  2      OPC=movl_r32_r32    
  subl %edi, %eax           #  29    0x1431af  2      OPC=subl_r32_r32    
  sarl $0x2, %eax           #  30    0x1431b1  3      OPC=sarl_r32_imm8   
  nop                       #  31    0x1431b4  1      OPC=nop             
  nop                       #  32    0x1431b5  1      OPC=nop             
  nop                       #  33    0x1431b6  1      OPC=nop             
  nop                       #  34    0x1431b7  1      OPC=nop             
  nop                       #  35    0x1431b8  1      OPC=nop             
  nop                       #  36    0x1431b9  1      OPC=nop             
  nop                       #  37    0x1431ba  1      OPC=nop             
  nop                       #  38    0x1431bb  1      OPC=nop             
  nop                       #  39    0x1431bc  1      OPC=nop             
  nop                       #  40    0x1431bd  1      OPC=nop             
  nop                       #  41    0x1431be  1      OPC=nop             
  nop                       #  42    0x1431bf  1      OPC=nop             
.L_1431c0:                  #        0x1431c0  0      OPC=<label>         
  popq %r11                 #  43    0x1431c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  44    0x1431c2  7      OPC=andl_r32_imm32  
  nop                       #  45    0x1431c9  1      OPC=nop             
  nop                       #  46    0x1431ca  1      OPC=nop             
  nop                       #  47    0x1431cb  1      OPC=nop             
  nop                       #  48    0x1431cc  1      OPC=nop             
  addq %r15, %r11           #  49    0x1431cd  3      OPC=addq_r64_r64    
  jmpq %r11                 #  50    0x1431d0  3      OPC=jmpq_r64        
  nop                       #  51    0x1431d3  1      OPC=nop             
  nop                       #  52    0x1431d4  1      OPC=nop             
  nop                       #  53    0x1431d5  1      OPC=nop             
  nop                       #  54    0x1431d6  1      OPC=nop             
  nop                       #  55    0x1431d7  1      OPC=nop             
  nop                       #  56    0x1431d8  1      OPC=nop             
  nop                       #  57    0x1431d9  1      OPC=nop             
  nop                       #  58    0x1431da  1      OPC=nop             
  nop                       #  59    0x1431db  1      OPC=nop             
  nop                       #  60    0x1431dc  1      OPC=nop             
  nop                       #  61    0x1431dd  1      OPC=nop             
  nop                       #  62    0x1431de  1      OPC=nop             
  nop                       #  63    0x1431df  1      OPC=nop             
  nop                       #  64    0x1431e0  1      OPC=nop             
  nop                       #  65    0x1431e1  1      OPC=nop             
  nop                       #  66    0x1431e2  1      OPC=nop             
  nop                       #  67    0x1431e3  1      OPC=nop             
  nop                       #  68    0x1431e4  1      OPC=nop             
  nop                       #  69    0x1431e5  1      OPC=nop             
  nop                       #  70    0x1431e6  1      OPC=nop             
                                                                          
.size wcslen, .-wcslen

