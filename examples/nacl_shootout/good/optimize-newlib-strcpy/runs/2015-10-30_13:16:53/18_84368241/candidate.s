  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %esi, %edx                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  movl %edi, %ecx                 #  2     0x1267e2  2      OPC=movl_r32_r32    
  nop                             #  3     0x1267e4  1      OPC=nop             
  movl %ecx, %eax                 #  4     0x1267e5  2      OPC=movl_r32_r32_1  
  movsbl %cl, %edi                #  5     0x1267e7  3      OPC=movsbl_r32_r8   
  andw $0x4, %di                  #  6     0x1267ea  4      OPC=andw_r16_imm8   
  nop                             #  7     0x1267ee  1      OPC=nop             
  jne .L_126860                   #  8     0x1267ef  6      OPC=jne_label_1     
  subl %ebp, %esi                 #  9     0x1267f5  2      OPC=subl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  10    0x1267f7  4      OPC=movl_r32_m32    
  nop                             #  11    0x1267fb  1      OPC=nop             
  nop                             #  12    0x1267fc  1      OPC=nop             
  nop                             #  13    0x1267fd  1      OPC=nop             
  nop                             #  14    0x1267fe  1      OPC=nop             
  nop                             #  15    0x1267ff  1      OPC=nop             
  nop                             #  16    0x126800  1      OPC=nop             
  nop                             #  17    0x126801  1      OPC=nop             
  andl $0xfffffff0, %edi          #  18    0x126802  6      OPC=andl_r32_imm32  
  jne .L_126860                   #  19    0x126808  6      OPC=jne_label_1     
  nop                             #  20    0x12680e  1      OPC=nop             
  subq $0xfe, %rsi                #  21    0x12680f  4      OPC=subq_r64_imm8   
  nop                             #  22    0x126813  1      OPC=nop             
  nop                             #  23    0x126814  1      OPC=nop             
  nop                             #  24    0x126815  1      OPC=nop             
  nop                             #  25    0x126816  1      OPC=nop             
  nop                             #  26    0x126817  1      OPC=nop             
  nop                             #  27    0x126818  1      OPC=nop             
  nop                             #  28    0x126819  1      OPC=nop             
  nop                             #  29    0x12681a  1      OPC=nop             
  nop                             #  30    0x12681b  1      OPC=nop             
  nop                             #  31    0x12681c  1      OPC=nop             
  nop                             #  32    0x12681d  1      OPC=nop             
  nop                             #  33    0x12681e  1      OPC=nop             
  nop                             #  34    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  35    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  36    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  37    0x126828  6      OPC=addl_r32_imm32  
  movl (%r15,%rdx,1), %r8d        #  38    0x12682e  4      OPC=movl_r32_m32    
  movq %r8, %r9                   #  39    0x126832  3      OPC=movq_r64_r64_1  
  leaw -0x1010101(%r8), %si       #  40    0x126835  8      OPC=leaw_r16_m16    
  notl %r9d                       #  41    0x12683d  3      OPC=notl_r32        
  andq $0x80808080, %rsi          #  42    0x126840  7      OPC=andq_r64_imm32  
  andw %si, %r9w                  #  43    0x126847  4      OPC=andw_r16_r16_1  
  je .L_126820                    #  44    0x12684b  6      OPC=je_label_1      
  nop                             #  45    0x126851  1      OPC=nop             
  nop                             #  46    0x126852  1      OPC=nop             
  nop                             #  47    0x126853  1      OPC=nop             
  nop                             #  48    0x126854  1      OPC=nop             
  nop                             #  49    0x126855  1      OPC=nop             
  nop                             #  50    0x126856  1      OPC=nop             
  nop                             #  51    0x126857  1      OPC=nop             
  nop                             #  52    0x126858  1      OPC=nop             
  nop                             #  53    0x126859  1      OPC=nop             
  nop                             #  54    0x12685a  1      OPC=nop             
  nop                             #  55    0x12685b  1      OPC=nop             
  nop                             #  56    0x12685c  1      OPC=nop             
  nop                             #  57    0x12685d  1      OPC=nop             
  nop                             #  58    0x12685e  1      OPC=nop             
  nop                             #  59    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  60    0x126860  6      OPC=addl_r32_imm32  
  movsbq -0x1(%r15,%rdx,1), %rsi  #  61    0x126866  6      OPC=movsbq_r64_m8   
  addl %esp, %ecx                 #  62    0x12686c  2      OPC=addl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)        #  63    0x12686e  4      OPC=movb_m8_r8      
  incl %ecx                       #  64    0x126872  2      OPC=incl_r32        
  sarl $0x1, %esi                 #  65    0x126874  2      OPC=sarl_r32_one    
  jne .L_126860                   #  66    0x126876  6      OPC=jne_label_1     
  nop                             #  67    0x12687c  1      OPC=nop             
  nop                             #  68    0x12687d  1      OPC=nop             
  nop                             #  69    0x12687e  1      OPC=nop             
  nop                             #  70    0x12687f  1      OPC=nop             
  nop                             #  71    0x126880  1      OPC=nop             
  nop                             #  72    0x126881  1      OPC=nop             
  nop                             #  73    0x126882  1      OPC=nop             
  nop                             #  74    0x126883  1      OPC=nop             
  nop                             #  75    0x126884  1      OPC=nop             
  nop                             #  76    0x126885  1      OPC=nop             
  nop                             #  77    0x126886  1      OPC=nop             
  nop                             #  78    0x126887  1      OPC=nop             
  nop                             #  79    0x126888  1      OPC=nop             
  nop                             #  80    0x126889  1      OPC=nop             
  nop                             #  81    0x12688a  1      OPC=nop             
  nop                             #  82    0x12688b  1      OPC=nop             
  nop                             #  83    0x12688c  1      OPC=nop             
  nop                             #  84    0x12688d  1      OPC=nop             
  nop                             #  85    0x12688e  1      OPC=nop             
  nop                             #  86    0x12688f  1      OPC=nop             
  nop                             #  87    0x126890  1      OPC=nop             
  nop                             #  88    0x126891  1      OPC=nop             
  nop                             #  89    0x126892  1      OPC=nop             
  nop                             #  90    0x126893  1      OPC=nop             
  retq

.size strcpy, -.strcpy

