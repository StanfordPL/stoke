  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x181280
#! rip-offset  0x141280
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcschr:                    #        0x141280  0      OPC=<label>         
  nop                       #  1     0x141280  1      OPC=nop             
  nop                       #  2     0x141281  1      OPC=nop             
  nop                       #  3     0x141282  1      OPC=nop             
  nop                       #  4     0x141283  1      OPC=nop             
  nop                       #  5     0x141284  1      OPC=nop             
  nop                       #  6     0x141285  1      OPC=nop             
  nop                       #  7     0x141286  1      OPC=nop             
  nop                       #  8     0x141287  1      OPC=nop             
  nop                       #  9     0x141288  1      OPC=nop             
  nop                       #  10    0x141289  1      OPC=nop             
  nop                       #  11    0x14128a  1      OPC=nop             
  nop                       #  12    0x14128b  1      OPC=nop             
  nop                       #  13    0x14128c  1      OPC=nop             
  nop                       #  14    0x14128d  1      OPC=nop             
  nop                       #  15    0x14128e  1      OPC=nop             
  movl %edi, %eax           #  16    0x14128f  2      OPC=movl_r32_r32    
  nop                       #  17    0x141291  1      OPC=nop             
  nop                       #  18    0x141292  1      OPC=nop             
  nop                       #  19    0x141293  1      OPC=nop             
  nop                       #  20    0x141294  1      OPC=nop             
  nop                       #  21    0x141295  1      OPC=nop             
  nop                       #  22    0x141296  1      OPC=nop             
  nop                       #  23    0x141297  1      OPC=nop             
  nop                       #  24    0x141298  1      OPC=nop             
  nop                       #  25    0x141299  1      OPC=nop             
  nop                       #  26    0x14129a  1      OPC=nop             
  nop                       #  27    0x14129b  1      OPC=nop             
  nop                       #  28    0x14129c  1      OPC=nop             
  jmpq .L_1412c0            #  29    0x14129d  2      OPC=jmpq_label      
  nop                       #  30    0x14129f  1      OPC=nop             
.L_1412a0:                  #        0x1412a0  0      OPC=<label>         
  nop                       #  31    0x1412a0  1      OPC=nop             
  nop                       #  32    0x1412a1  1      OPC=nop             
  nop                       #  33    0x1412a2  1      OPC=nop             
  nop                       #  34    0x1412a3  1      OPC=nop             
  nop                       #  35    0x1412a4  1      OPC=nop             
  nop                       #  36    0x1412a5  1      OPC=nop             
  nop                       #  37    0x1412a6  1      OPC=nop             
  nop                       #  38    0x1412a7  1      OPC=nop             
  nop                       #  39    0x1412a8  1      OPC=nop             
  nop                       #  40    0x1412a9  1      OPC=nop             
  nop                       #  41    0x1412aa  1      OPC=nop             
  addq $0x4, %rax           #  42    0x1412ab  7      OPC=addq_r64_imm32  
  nop                       #  43    0x1412b2  1      OPC=nop             
  nop                       #  44    0x1412b3  1      OPC=nop             
  nop                       #  45    0x1412b4  1      OPC=nop             
  nop                       #  46    0x1412b5  1      OPC=nop             
  nop                       #  47    0x1412b6  1      OPC=nop             
  nop                       #  48    0x1412b7  1      OPC=nop             
  nop                       #  49    0x1412b8  1      OPC=nop             
  nop                       #  50    0x1412b9  1      OPC=nop             
  nop                       #  51    0x1412ba  1      OPC=nop             
  nop                       #  52    0x1412bb  1      OPC=nop             
  nop                       #  53    0x1412bc  1      OPC=nop             
  nop                       #  54    0x1412bd  1      OPC=nop             
  nop                       #  55    0x1412be  1      OPC=nop             
  nop                       #  56    0x1412bf  1      OPC=nop             
.L_1412c0:                  #        0x1412c0  0      OPC=<label>         
  xorl $0x0, %eax           #  57    0x1412c0  5      OPC=xorl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  58    0x1412c5  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  59    0x1412c9  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  60    0x1412cb  2      OPC=je_label        
  shlw $0x4, %dx            #  61    0x1412cd  4      OPC=shlw_r16_imm8   
  jne .L_1412a0             #  62    0x1412d1  2      OPC=jne_label       
  nop                       #  63    0x1412d3  1      OPC=nop             
  subl %eax, %eax           #  64    0x1412d4  2      OPC=subl_r32_r32    
  nop                       #  65    0x1412d6  1      OPC=nop             
  nop                       #  66    0x1412d7  1      OPC=nop             
  nop                       #  67    0x1412d8  1      OPC=nop             
  nop                       #  68    0x1412d9  1      OPC=nop             
  nop                       #  69    0x1412da  1      OPC=nop             
  nop                       #  70    0x1412db  1      OPC=nop             
  nop                       #  71    0x1412dc  1      OPC=nop             
  nop                       #  72    0x1412dd  1      OPC=nop             
  nop                       #  73    0x1412de  1      OPC=nop             
  nop                       #  74    0x1412df  1      OPC=nop             
.L_1412e0:                  #        0x1412e0  0      OPC=<label>         
  retq
                                                                          
.size wcschr, .-wcschr
