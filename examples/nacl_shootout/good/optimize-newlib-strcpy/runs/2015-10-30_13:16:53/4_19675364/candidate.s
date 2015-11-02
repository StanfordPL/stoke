  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax                 #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  nop                             #  2     0x1267e2  1      OPC=nop             
  nop                             #  3     0x1267e3  1      OPC=nop             
  nop                             #  4     0x1267e4  1      OPC=nop             
  nop                             #  5     0x1267e5  1      OPC=nop             
  nop                             #  6     0x1267e6  1      OPC=nop             
  nop                             #  7     0x1267e7  1      OPC=nop             
  testb %r15b, %dil               #  8     0x1267e8  3      OPC=testb_r8_r8     
  movl %edi, %ecx                 #  9     0x1267eb  2      OPC=movl_r32_r32_1  
  movq %rsi, %rdx                 #  10    0x1267ed  3      OPC=movq_r64_r64_1  
  jne .L_126860                   #  11    0x1267f0  6      OPC=jne_label_1     
  nop                             #  12    0x1267f6  1      OPC=nop             
  nop                             #  13    0x1267f7  1      OPC=nop             
  nop                             #  14    0x1267f8  1      OPC=nop             
  nop                             #  15    0x1267f9  1      OPC=nop             
  nop                             #  16    0x1267fa  1      OPC=nop             
  nop                             #  17    0x1267fb  1      OPC=nop             
  nop                             #  18    0x1267fc  1      OPC=nop             
  nop                             #  19    0x1267fd  1      OPC=nop             
  nop                             #  20    0x1267fe  1      OPC=nop             
  nop                             #  21    0x1267ff  1      OPC=nop             
  nop                             #  22    0x126800  1      OPC=nop             
  nop                             #  23    0x126801  1      OPC=nop             
  nop                             #  24    0x126802  1      OPC=nop             
  nop                             #  25    0x126803  1      OPC=nop             
  nop                             #  26    0x126804  1      OPC=nop             
  nop                             #  27    0x126805  1      OPC=nop             
  nop                             #  28    0x126806  1      OPC=nop             
  nop                             #  29    0x126807  1      OPC=nop             
  nop                             #  30    0x126808  1      OPC=nop             
  nop                             #  31    0x126809  1      OPC=nop             
  movl %edx, %esi                 #  32    0x12680a  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d        #  33    0x12680c  4      OPC=movl_r32_m32    
  nop                             #  34    0x126810  1      OPC=nop             
  nop                             #  35    0x126811  1      OPC=nop             
  nop                             #  36    0x126812  1      OPC=nop             
  nop                             #  37    0x126813  1      OPC=nop             
  nop                             #  38    0x126814  1      OPC=nop             
  nop                             #  39    0x126815  1      OPC=nop             
  nop                             #  40    0x126816  1      OPC=nop             
  nop                             #  41    0x126817  1      OPC=nop             
  nop                             #  42    0x126818  1      OPC=nop             
  nop                             #  43    0x126819  1      OPC=nop             
  jne .L_126860                   #  44    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  45    0x126820  6      OPC=addl_r32_imm32  
  movl %r8d, -0x4(%r15,%rcx,1)    #  46    0x126826  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  47    0x12682b  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8         #  48    0x12682e  4      OPC=movq_r64_m64    
  leal -0x1010101(%r8), %esi      #  49    0x126832  7      OPC=leal_r32_m32    
  andq $0x80808080, %rsi          #  50    0x126839  7      OPC=andq_r64_imm32  
  movq %r8, %r9                   #  51    0x126840  3      OPC=movq_r64_r64_1  
  notq %r9                        #  52    0x126843  3      OPC=notq_r64        
  andl %esi, %r9d                 #  53    0x126846  3      OPC=andl_r32_r32_1  
  je .L_126820                    #  54    0x126849  6      OPC=je_label_1      
  nop                             #  55    0x12684f  1      OPC=nop             
  nop                             #  56    0x126850  1      OPC=nop             
  nop                             #  57    0x126851  1      OPC=nop             
  nop                             #  58    0x126852  1      OPC=nop             
  nop                             #  59    0x126853  1      OPC=nop             
  nop                             #  60    0x126854  1      OPC=nop             
  nop                             #  61    0x126855  1      OPC=nop             
  nop                             #  62    0x126856  1      OPC=nop             
  nop                             #  63    0x126857  1      OPC=nop             
  nop                             #  64    0x126858  1      OPC=nop             
  nop                             #  65    0x126859  1      OPC=nop             
  nop                             #  66    0x12685a  1      OPC=nop             
  nop                             #  67    0x12685b  1      OPC=nop             
  nop                             #  68    0x12685c  1      OPC=nop             
  nop                             #  69    0x12685d  1      OPC=nop             
  nop                             #  70    0x12685e  1      OPC=nop             
  nop                             #  71    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  nop                             #  72    0x126860  1      OPC=nop             
  nop                             #  73    0x126861  1      OPC=nop             
  nop                             #  74    0x126862  1      OPC=nop             
  nop                             #  75    0x126863  1      OPC=nop             
  nop                             #  76    0x126864  1      OPC=nop             
  nop                             #  77    0x126865  1      OPC=nop             
  nop                             #  78    0x126866  1      OPC=nop             
  nop                             #  79    0x126867  1      OPC=nop             
  nop                             #  80    0x126868  1      OPC=nop             
  nop                             #  81    0x126869  1      OPC=nop             
  nop                             #  82    0x12686a  1      OPC=nop             
  nop                             #  83    0x12686b  1      OPC=nop             
  subl $0xff, %edx                #  84    0x12686c  3      OPC=subl_r32_imm8   
  movsbl -0x1(%r15,%rdx,1), %esi  #  85    0x12686f  6      OPC=movsbl_r32_m8   
  nop                             #  86    0x126875  1      OPC=nop             
  nop                             #  87    0x126876  1      OPC=nop             
  nop                             #  88    0x126877  1      OPC=nop             
  addl $0x1, %ecx                 #  89    0x126878  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  90    0x12687b  5      OPC=movb_m8_r8      
  subw %sp, %si                   #  91    0x126880  3      OPC=subw_r16_r16    
  jne .L_126860                   #  92    0x126883  6      OPC=jne_label_1     
  retq

.size strcpy, -.strcpy

