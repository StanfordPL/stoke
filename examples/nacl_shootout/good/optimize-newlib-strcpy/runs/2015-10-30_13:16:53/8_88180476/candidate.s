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
  movl %esi, %edx               #  5     0x1267e4  2      OPC=movl_r32_r32    
  nop                           #  6     0x1267e6  1      OPC=nop             
  movl %edi, %eax               #  7     0x1267e7  2      OPC=movl_r32_r32    
  movq %rax, %rcx               #  8     0x1267e9  3      OPC=movq_r64_r64    
  nop                           #  9     0x1267ec  1      OPC=nop             
  andl $0x5, %edi               #  10    0x1267ed  3      OPC=andl_r32_imm8   
  nop                           #  11    0x1267f0  1      OPC=nop             
  nop                           #  12    0x1267f1  1      OPC=nop             
  jne .L_126860                 #  13    0x1267f2  6      OPC=jne_label_1     
  nop                           #  14    0x1267f8  1      OPC=nop             
  nop                           #  15    0x1267f9  1      OPC=nop             
  xorl %edi, %esi               #  16    0x1267fa  2      OPC=xorl_r32_r32    
  movq (%r15,%rsi,1), %r8       #  17    0x1267fc  4      OPC=movq_r64_m64    
  andl %ebp, %edi               #  18    0x126800  2      OPC=andl_r32_r32_1  
  nop                           #  19    0x126802  1      OPC=nop             
  nop                           #  20    0x126803  1      OPC=nop             
  nop                           #  21    0x126804  1      OPC=nop             
  nop                           #  22    0x126805  1      OPC=nop             
  nop                           #  23    0x126806  1      OPC=nop             
  nop                           #  24    0x126807  1      OPC=nop             
  nop                           #  25    0x126808  1      OPC=nop             
  nop                           #  26    0x126809  1      OPC=nop             
  nop                           #  27    0x12680a  1      OPC=nop             
  nop                           #  28    0x12680b  1      OPC=nop             
  nop                           #  29    0x12680c  1      OPC=nop             
  nop                           #  30    0x12680d  1      OPC=nop             
  nop                           #  31    0x12680e  1      OPC=nop             
  nop                           #  32    0x12680f  1      OPC=nop             
  nop                           #  33    0x126810  1      OPC=nop             
  nop                           #  34    0x126811  1      OPC=nop             
  nop                           #  35    0x126812  1      OPC=nop             
  nop                           #  36    0x126813  1      OPC=nop             
  nop                           #  37    0x126814  1      OPC=nop             
  nop                           #  38    0x126815  1      OPC=nop             
  nop                           #  39    0x126816  1      OPC=nop             
  jne .L_126860                 #  40    0x126817  6      OPC=jne_label_1     
  nop                           #  41    0x12681d  1      OPC=nop             
  nop                           #  42    0x12681e  1      OPC=nop             
  nop                           #  43    0x12681f  1      OPC=nop             
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx               #  44    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)  #  45    0x126823  5      OPC=movl_m32_r32    
  nop                           #  46    0x126828  1      OPC=nop             
  addl $0x4, %edx               #  47    0x126829  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d      #  48    0x12682c  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi    #  49    0x126830  7      OPC=leal_r32_m16    
  movl %r8d, %r9d               #  50    0x126837  3      OPC=movl_r32_r32    
  negq %r9                      #  51    0x12683a  3      OPC=negq_r64        
  andl %esi, %r9d               #  52    0x12683d  3      OPC=andl_r32_r32_1  
  andl $0x80808080, %r9d        #  53    0x126840  7      OPC=andl_r32_imm32  
  je .L_126820                  #  54    0x126847  6      OPC=je_label_1      
  nop                           #  55    0x12684d  1      OPC=nop             
  nop                           #  56    0x12684e  1      OPC=nop             
  nop                           #  57    0x12684f  1      OPC=nop             
  nop                           #  58    0x126850  1      OPC=nop             
  nop                           #  59    0x126851  1      OPC=nop             
  nop                           #  60    0x126852  1      OPC=nop             
  nop                           #  61    0x126853  1      OPC=nop             
  nop                           #  62    0x126854  1      OPC=nop             
  nop                           #  63    0x126855  1      OPC=nop             
  nop                           #  64    0x126856  1      OPC=nop             
  nop                           #  65    0x126857  1      OPC=nop             
  nop                           #  66    0x126858  1      OPC=nop             
  nop                           #  67    0x126859  1      OPC=nop             
  nop                           #  68    0x12685a  1      OPC=nop             
  nop                           #  69    0x12685b  1      OPC=nop             
  nop                           #  70    0x12685c  1      OPC=nop             
  nop                           #  71    0x12685d  1      OPC=nop             
  nop                           #  72    0x12685e  1      OPC=nop             
  nop                           #  73    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  nop                           #  74    0x126860  1      OPC=nop             
  nop                           #  75    0x126861  1      OPC=nop             
  nop                           #  76    0x126862  1      OPC=nop             
  orl %ebp, %edx                #  77    0x126863  2      OPC=orl_r32_r32     
  movzbq (%r15,%rdx,1), %rsi    #  78    0x126865  5      OPC=movzbq_r64_m8   
  orl %ecx, %ecx                #  79    0x12686a  2      OPC=orl_r32_r32_1   
  movb %sil, (%r15,%rcx,1)      #  80    0x12686c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx               #  81    0x126870  3      OPC=addl_r32_imm8   
  addl $0x1, %edx               #  82    0x126873  3      OPC=addl_r32_imm8   
  nop                           #  83    0x126876  1      OPC=nop             
  shlb $0x1, %sil               #  84    0x126877  3      OPC=shlb_r8_one     
  jne .L_126860                 #  85    0x12687a  6      OPC=jne_label_1     
  nop                           #  86    0x126880  1      OPC=nop             
  nop                           #  87    0x126881  1      OPC=nop             
  nop                           #  88    0x126882  1      OPC=nop             
  nop                           #  89    0x126883  1      OPC=nop             
  nop                           #  90    0x126884  1      OPC=nop             
  nop                           #  91    0x126885  1      OPC=nop             
  nop                           #  92    0x126886  1      OPC=nop             
  retq

.size strcpy, -.strcpy

