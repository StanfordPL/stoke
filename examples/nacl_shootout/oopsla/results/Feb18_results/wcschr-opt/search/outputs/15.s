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
  movl %edi, %eax           #  3     0x141282  2      OPC=movl_r32_r32    
  jmpq .L_1412c0            #  4     0x141284  2      OPC=jmpq_label      
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
.L_1412a0:                  #        0x141299  0      OPC=<label>         
  addl $0x4, %eax           #  24    0x141299  3      OPC=addl_r32_imm8   
  nop                       #  25    0x14129c  1      OPC=nop             
  nop                       #  26    0x14129d  1      OPC=nop             
  nop                       #  27    0x14129e  1      OPC=nop             
  nop                       #  28    0x14129f  1      OPC=nop             
  nop                       #  29    0x1412a0  1      OPC=nop             
  nop                       #  30    0x1412a1  1      OPC=nop             
  nop                       #  31    0x1412a2  1      OPC=nop             
  nop                       #  32    0x1412a3  1      OPC=nop             
.L_1412c0:                  #        0x1412a4  0      OPC=<label>         
  andl %eax, %eax           #  33    0x1412a4  2      OPC=andl_r32_r32_1  
  movl (%r15,%rax,1), %edx  #  34    0x1412a6  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  35    0x1412aa  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  36    0x1412ac  2      OPC=je_label        
  testl %edx, %edx          #  37    0x1412ae  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  38    0x1412b0  2      OPC=jne_label       
  xorl %eax, %eax           #  39    0x1412b2  2      OPC=xorl_r32_r32    
  nop                       #  40    0x1412b4  1      OPC=nop             
  nop                       #  41    0x1412b5  1      OPC=nop             
  nop                       #  42    0x1412b6  1      OPC=nop             
  nop                       #  43    0x1412b7  1      OPC=nop             
  nop                       #  44    0x1412b8  1      OPC=nop             
  nop                       #  45    0x1412b9  1      OPC=nop             
  nop                       #  46    0x1412ba  1      OPC=nop             
  nop                       #  47    0x1412bb  1      OPC=nop             
  nopl %eax                 #  48    0x1412bc  3      OPC=nopl_r32        
  nop                       #  49    0x1412bf  1      OPC=nop             
.L_1412e0:                  #        0x1412c0  0      OPC=<label>         
  retq                      #  50    0x1412c0  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
