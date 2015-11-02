  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  movl %edi, %ecx                #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                            #  2     0x1267e2  1      OPC=nop             
  nop                            #  3     0x1267e3  1      OPC=nop             
  nop                            #  4     0x1267e4  1      OPC=nop             
  nop                            #  5     0x1267e5  1      OPC=nop             
  nop                            #  6     0x1267e6  1      OPC=nop             
  nop                            #  7     0x1267e7  1      OPC=nop             
  nop                            #  8     0x1267e8  1      OPC=nop             
  nop                            #  9     0x1267e9  1      OPC=nop             
  nop                            #  10    0x1267ea  1      OPC=nop             
  nop                            #  11    0x1267eb  1      OPC=nop             
  nop                            #  12    0x1267ec  1      OPC=nop             
  nop                            #  13    0x1267ed  1      OPC=nop             
  nop                            #  14    0x1267ee  1      OPC=nop             
  movl %esi, %edx                #  15    0x1267ef  2      OPC=movl_r32_r32    
  orw %dx, %di                   #  16    0x1267f1  3      OPC=orw_r16_r16_1   
  movq %rcx, %rax                #  17    0x1267f4  3      OPC=movq_r64_r64    
  andb $0x3, %dil                #  18    0x1267f7  4      OPC=andb_r8_imm8    
  nop                            #  19    0x1267fb  1      OPC=nop             
  nop                            #  20    0x1267fc  1      OPC=nop             
  nop                            #  21    0x1267fd  1      OPC=nop             
  nop                            #  22    0x1267fe  1      OPC=nop             
  nop                            #  23    0x1267ff  1      OPC=nop             
  jne .L_126860                  #  24    0x126800  6      OPC=jne_label_1     
  nop                            #  25    0x126806  1      OPC=nop             
  salw %cl, %dx                  #  26    0x126807  3      OPC=salw_r16_cl     
  movl %esi, %esi                #  27    0x12680a  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d       #  28    0x12680c  4      OPC=movl_r32_m32    
  nop                            #  29    0x126810  1      OPC=nop             
  nop                            #  30    0x126811  1      OPC=nop             
  nop                            #  31    0x126812  1      OPC=nop             
  nop                            #  32    0x126813  1      OPC=nop             
  nop                            #  33    0x126814  1      OPC=nop             
  nop                            #  34    0x126815  1      OPC=nop             
  nop                            #  35    0x126816  1      OPC=nop             
  nop                            #  36    0x126817  1      OPC=nop             
  nop                            #  37    0x126818  1      OPC=nop             
  nop                            #  38    0x126819  1      OPC=nop             
  jne .L_126860                  #  39    0x12681a  6      OPC=jne_label_1     
.L_126820:                       #        0x126820  0      OPC=<label>         
  xorl %esp, %ecx                #  40    0x126820  2      OPC=xorl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)       #  41    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                #  42    0x126826  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8        #  43    0x126829  4      OPC=movq_r64_m64    
  addl $0x4, %ecx                #  44    0x12682d  3      OPC=addl_r32_imm8   
  leaq -0x1010101(%r8), %rsi     #  45    0x126830  7      OPC=leaq_r64_m16    
  movl %r8d, %r9d                #  46    0x126837  3      OPC=movl_r32_r32    
  notl %r9d                      #  47    0x12683a  3      OPC=notl_r32        
  andl %esi, %r9d                #  48    0x12683d  3      OPC=andl_r32_r32_1  
  andl $0x80808080, %r9d         #  49    0x126840  7      OPC=andl_r32_imm32  
  je .L_126820                   #  50    0x126847  6      OPC=je_label_1      
  nop                            #  51    0x12684d  1      OPC=nop             
  nop                            #  52    0x12684e  1      OPC=nop             
  nop                            #  53    0x12684f  1      OPC=nop             
  nop                            #  54    0x126850  1      OPC=nop             
  nop                            #  55    0x126851  1      OPC=nop             
  nop                            #  56    0x126852  1      OPC=nop             
  nop                            #  57    0x126853  1      OPC=nop             
  nop                            #  58    0x126854  1      OPC=nop             
  nop                            #  59    0x126855  1      OPC=nop             
  nop                            #  60    0x126856  1      OPC=nop             
  nop                            #  61    0x126857  1      OPC=nop             
  nop                            #  62    0x126858  1      OPC=nop             
  nop                            #  63    0x126859  1      OPC=nop             
  nop                            #  64    0x12685a  1      OPC=nop             
  nop                            #  65    0x12685b  1      OPC=nop             
  nop                            #  66    0x12685c  1      OPC=nop             
  nop                            #  67    0x12685d  1      OPC=nop             
  nop                            #  68    0x12685e  1      OPC=nop             
  nop                            #  69    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  70    0x126860  6      OPC=addl_r32_imm32  
  movsbw -0x1(%r15,%rdx,1), %si  #  71    0x126866  7      OPC=movsbw_r16_m8   
  addl $0x1, %ecx                #  72    0x12686d  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)   #  73    0x126870  5      OPC=movb_m8_r8      
  testb %sil, %sil               #  74    0x126875  3      OPC=testb_r8_r8     
  jne .L_126860                  #  75    0x126878  6      OPC=jne_label_1     
  nop                            #  76    0x12687e  1      OPC=nop             
  nop                            #  77    0x12687f  1      OPC=nop             
  nop                            #  78    0x126880  1      OPC=nop             
  nop                            #  79    0x126881  1      OPC=nop             
  nop                            #  80    0x126882  1      OPC=nop             
  nop                            #  81    0x126883  1      OPC=nop             
  nop                            #  82    0x126884  1      OPC=nop             
  nop                            #  83    0x126885  1      OPC=nop             
  nop                            #  84    0x126886  1      OPC=nop             
  nop                            #  85    0x126887  1      OPC=nop             
  nop                            #  86    0x126888  1      OPC=nop             
  nop                            #  87    0x126889  1      OPC=nop             
  retq

.size strcpy, -.strcpy

