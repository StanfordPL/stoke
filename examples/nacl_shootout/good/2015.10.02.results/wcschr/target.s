  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x181280
#! rip-offset  0x141280
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcschr:                    #        0x141280  0      OPC=<label>         
  movl %edi, %eax           #  1     0x141280  2      OPC=movl_r32_r32    
  jmpq .L_1412c0            #  2     0x141282  2      OPC=jmpq_label      
  nop                       #  3     0x141284  1      OPC=nop             
  nop                       #  4     0x141285  1      OPC=nop             
  nop                       #  5     0x141286  1      OPC=nop             
  nop                       #  6     0x141287  1      OPC=nop             
  nop                       #  7     0x141288  1      OPC=nop             
  nop                       #  8     0x141289  1      OPC=nop             
  nop                       #  9     0x14128a  1      OPC=nop             
  nop                       #  10    0x14128b  1      OPC=nop             
  nop                       #  11    0x14128c  1      OPC=nop             
  nop                       #  12    0x14128d  1      OPC=nop             
  nop                       #  13    0x14128e  1      OPC=nop             
  nop                       #  14    0x14128f  1      OPC=nop             
  nop                       #  15    0x141290  1      OPC=nop             
  nop                       #  16    0x141291  1      OPC=nop             
  nop                       #  17    0x141292  1      OPC=nop             
  nop                       #  18    0x141293  1      OPC=nop             
  nop                       #  19    0x141294  1      OPC=nop             
  nop                       #  20    0x141295  1      OPC=nop             
  nop                       #  21    0x141296  1      OPC=nop             
  nop                       #  22    0x141297  1      OPC=nop             
  nop                       #  23    0x141298  1      OPC=nop             
  nop                       #  24    0x141299  1      OPC=nop             
  nop                       #  25    0x14129a  1      OPC=nop             
  nop                       #  26    0x14129b  1      OPC=nop             
  nop                       #  27    0x14129c  1      OPC=nop             
  nop                       #  28    0x14129d  1      OPC=nop             
  nop                       #  29    0x14129e  1      OPC=nop             
  nop                       #  30    0x14129f  1      OPC=nop             
.L_1412a0:                  #        0x1412a0  0      OPC=<label>         
  addl $0x4, %eax           #  31    0x1412a0  3      OPC=addl_r32_imm8   
  nop                       #  32    0x1412a3  1      OPC=nop             
  nop                       #  33    0x1412a4  1      OPC=nop             
  nop                       #  34    0x1412a5  1      OPC=nop             
  nop                       #  35    0x1412a6  1      OPC=nop             
  nop                       #  36    0x1412a7  1      OPC=nop             
  nop                       #  37    0x1412a8  1      OPC=nop             
  nop                       #  38    0x1412a9  1      OPC=nop             
  nop                       #  39    0x1412aa  1      OPC=nop             
  nop                       #  40    0x1412ab  1      OPC=nop             
  nop                       #  41    0x1412ac  1      OPC=nop             
  nop                       #  42    0x1412ad  1      OPC=nop             
  nop                       #  43    0x1412ae  1      OPC=nop             
  nop                       #  44    0x1412af  1      OPC=nop             
  nop                       #  45    0x1412b0  1      OPC=nop             
  nop                       #  46    0x1412b1  1      OPC=nop             
  nop                       #  47    0x1412b2  1      OPC=nop             
  nop                       #  48    0x1412b3  1      OPC=nop             
  nop                       #  49    0x1412b4  1      OPC=nop             
  nop                       #  50    0x1412b5  1      OPC=nop             
  nop                       #  51    0x1412b6  1      OPC=nop             
  nop                       #  52    0x1412b7  1      OPC=nop             
  nop                       #  53    0x1412b8  1      OPC=nop             
  nop                       #  54    0x1412b9  1      OPC=nop             
  nop                       #  55    0x1412ba  1      OPC=nop             
  nop                       #  56    0x1412bb  1      OPC=nop             
  nop                       #  57    0x1412bc  1      OPC=nop             
  nop                       #  58    0x1412bd  1      OPC=nop             
  nop                       #  59    0x1412be  1      OPC=nop             
  nop                       #  60    0x1412bf  1      OPC=nop             
.L_1412c0:                  #        0x1412c0  0      OPC=<label>         
  movl %eax, %eax           #  61    0x1412c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx  #  62    0x1412c2  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  63    0x1412c6  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  64    0x1412c8  2      OPC=je_label        
  testl %edx, %edx          #  65    0x1412ca  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  66    0x1412cc  2      OPC=jne_label       
  xorl %eax, %eax           #  67    0x1412ce  2      OPC=xorl_r32_r32    
  nop                       #  68    0x1412d0  1      OPC=nop             
  nop                       #  69    0x1412d1  1      OPC=nop             
  nop                       #  70    0x1412d2  1      OPC=nop             
  nop                       #  71    0x1412d3  1      OPC=nop             
  nop                       #  72    0x1412d4  1      OPC=nop             
  nop                       #  73    0x1412d5  1      OPC=nop             
  nop                       #  74    0x1412d6  1      OPC=nop             
  nop                       #  75    0x1412d7  1      OPC=nop             
  nop                       #  76    0x1412d8  1      OPC=nop             
  nop                       #  77    0x1412d9  1      OPC=nop             
  nop                       #  78    0x1412da  1      OPC=nop             
  nop                       #  79    0x1412db  1      OPC=nop             
  nop                       #  80    0x1412dc  1      OPC=nop             
  nop                       #  81    0x1412dd  1      OPC=nop             
  nop                       #  82    0x1412de  1      OPC=nop             
  nop                       #  83    0x1412df  1      OPC=nop             
.L_1412e0:                  #        0x1412e0  0      OPC=<label>         
  retq
  nop                       #  92    0x1412f3  1      OPC=nop             
  nop                       #  93    0x1412f4  1      OPC=nop             
  nop                       #  94    0x1412f5  1      OPC=nop             
  nop                       #  95    0x1412f6  1      OPC=nop             
  nop                       #  96    0x1412f7  1      OPC=nop             
  nop                       #  97    0x1412f8  1      OPC=nop             
  nop                       #  98    0x1412f9  1      OPC=nop             
  nop                       #  99    0x1412fa  1      OPC=nop             
  nop                       #  100   0x1412fb  1      OPC=nop             
  nop                       #  101   0x1412fc  1      OPC=nop             
  nop                       #  102   0x1412fd  1      OPC=nop             
  nop                       #  103   0x1412fe  1      OPC=nop             
  nop                       #  104   0x1412ff  1      OPC=nop             
  nop                       #  105   0x141300  1      OPC=nop             
  nop                       #  106   0x141301  1      OPC=nop             
  nop                       #  107   0x141302  1      OPC=nop             
  nop                       #  108   0x141303  1      OPC=nop             
  nop                       #  109   0x141304  1      OPC=nop             
  nop                       #  110   0x141305  1      OPC=nop             
  nop                       #  111   0x141306  1      OPC=nop             
                                                                          
.size wcschr, .-wcschr

