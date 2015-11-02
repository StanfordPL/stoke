  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strcpy:                        #        0x1267e0  0      OPC=<label>         
  nop                           #  1     0x1267e0  1      OPC=nop             
  nop                           #  2     0x1267e1  1      OPC=nop             
  nop                           #  3     0x1267e2  1      OPC=nop             
  nop                           #  4     0x1267e3  1      OPC=nop             
  nop                           #  5     0x1267e4  1      OPC=nop             
  nop                           #  6     0x1267e5  1      OPC=nop             
  nop                           #  7     0x1267e6  1      OPC=nop             
  nop                           #  8     0x1267e7  1      OPC=nop             
  nop                           #  9     0x1267e8  1      OPC=nop             
  movl %edi, %ecx               #  10    0x1267e9  2      OPC=movl_r32_r32_1  
  movl %esi, %edx               #  11    0x1267eb  2      OPC=movl_r32_r32    
  nop                           #  12    0x1267ed  1      OPC=nop             
  nop                           #  13    0x1267ee  1      OPC=nop             
  nop                           #  14    0x1267ef  1      OPC=nop             
  nop                           #  15    0x1267f0  1      OPC=nop             
  nop                           #  16    0x1267f1  1      OPC=nop             
  nop                           #  17    0x1267f2  1      OPC=nop             
  movq %rdi, %rax               #  18    0x1267f3  3      OPC=movq_r64_r64    
  andl $0x3, %edi               #  19    0x1267f6  3      OPC=andl_r32_imm8   
  jne .L_126860                 #  20    0x1267f9  6      OPC=jne_label_1     
  nop                           #  21    0x1267ff  1      OPC=nop             
  nop                           #  22    0x126800  1      OPC=nop             
  nop                           #  23    0x126801  1      OPC=nop             
  nop                           #  24    0x126802  1      OPC=nop             
  nop                           #  25    0x126803  1      OPC=nop             
  nop                           #  26    0x126804  1      OPC=nop             
  nop                           #  27    0x126805  1      OPC=nop             
  movl %esi, %esi               #  28    0x126806  2      OPC=movl_r32_r32    
  movq (%r15,%rsi,1), %r8       #  29    0x126808  4      OPC=movq_r64_m64    
  nop                           #  30    0x12680c  1      OPC=nop             
  nop                           #  31    0x12680d  1      OPC=nop             
  nop                           #  32    0x12680e  1      OPC=nop             
  nop                           #  33    0x12680f  1      OPC=nop             
  nop                           #  34    0x126810  1      OPC=nop             
  nop                           #  35    0x126811  1      OPC=nop             
  nop                           #  36    0x126812  1      OPC=nop             
  nop                           #  37    0x126813  1      OPC=nop             
  nop                           #  38    0x126814  1      OPC=nop             
  nop                           #  39    0x126815  1      OPC=nop             
  nop                           #  40    0x126816  1      OPC=nop             
  nop                           #  41    0x126817  1      OPC=nop             
  nop                           #  42    0x126818  1      OPC=nop             
  nop                           #  43    0x126819  1      OPC=nop             
  jne .L_126860                 #  44    0x12681a  6      OPC=jne_label_1     
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl %ebp, %ecx               #  45    0x126820  2      OPC=addl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)      #  46    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx               #  47    0x126826  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d      #  48    0x126829  4      OPC=movl_r32_m32    
  movl %r8d, %r9d               #  49    0x12682d  3      OPC=movl_r32_r32_1  
  leal -0x1010101(%r8), %esi    #  50    0x126830  7      OPC=leal_r32_m16    
  notq %r9                      #  51    0x126837  3      OPC=notq_r64        
  addl $0x4, %ecx               #  52    0x12683a  6      OPC=addl_r32_imm32  
  andl $0x80808080, %esi        #  53    0x126840  6      OPC=andl_r32_imm32  
  andw %si, %r9w                #  54    0x126846  4      OPC=andw_r16_r16_1  
  je .L_126820                  #  55    0x12684a  6      OPC=je_label_1      
  nop                           #  56    0x126850  1      OPC=nop             
  nop                           #  57    0x126851  1      OPC=nop             
  nop                           #  58    0x126852  1      OPC=nop             
  nop                           #  59    0x126853  1      OPC=nop             
  nop                           #  60    0x126854  1      OPC=nop             
  nop                           #  61    0x126855  1      OPC=nop             
  nop                           #  62    0x126856  1      OPC=nop             
  nop                           #  63    0x126857  1      OPC=nop             
  nop                           #  64    0x126858  1      OPC=nop             
  nop                           #  65    0x126859  1      OPC=nop             
  nop                           #  66    0x12685a  1      OPC=nop             
  nop                           #  67    0x12685b  1      OPC=nop             
  nop                           #  68    0x12685c  1      OPC=nop             
  nop                           #  69    0x12685d  1      OPC=nop             
  nop                           #  70    0x12685e  1      OPC=nop             
  nop                           #  71    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  xorl %esp, %edx               #  72    0x126860  2      OPC=xorl_r32_r32_1  
  movzbl (%r15,%rdx,1), %esi    #  73    0x126862  5      OPC=movzbl_r32_m8   
  addl $0x1, %ecx               #  74    0x126867  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)  #  75    0x12686a  5      OPC=movb_m8_r8      
  nop                           #  76    0x12686f  1      OPC=nop             
  nop                           #  77    0x126870  1      OPC=nop             
  nop                           #  78    0x126871  1      OPC=nop             
  xorl $0x1, %edx               #  79    0x126872  6      OPC=xorl_r32_imm32  
  testb %dl, %dil               #  80    0x126878  3      OPC=testb_r8_r8     
  nop                           #  81    0x12687b  1      OPC=nop             
  nop                           #  82    0x12687c  1      OPC=nop             
  nop                           #  83    0x12687d  1      OPC=nop             
  nop                           #  84    0x12687e  1      OPC=nop             
  nop                           #  85    0x12687f  1      OPC=nop             
  nop                           #  86    0x126880  1      OPC=nop             
  nop                           #  87    0x126881  1      OPC=nop             
  nop                           #  88    0x126882  1      OPC=nop             
  jne .L_126860                 #  89    0x126883  6      OPC=jne_label_1     
  retq

.size strcpy, -.strcpy

