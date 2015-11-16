  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rdi, %rcx                 #  1     0x1267e0  3      OPC=movq_r64_r64_1  
  andb $0x3, %dil                 #  2     0x1267e3  4      OPC=andb_r8_imm8    
  nop                             #  3     0x1267e7  1      OPC=nop             
  nop                             #  4     0x1267e8  1      OPC=nop             
  nop                             #  5     0x1267e9  1      OPC=nop             
  nop                             #  6     0x1267ea  1      OPC=nop             
  nop                             #  7     0x1267eb  1      OPC=nop             
  nop                             #  8     0x1267ec  1      OPC=nop             
  nop                             #  9     0x1267ed  1      OPC=nop             
  nop                             #  10    0x1267ee  1      OPC=nop             
  nop                             #  11    0x1267ef  1      OPC=nop             
  movq %rcx, %rax                 #  12    0x1267f0  3      OPC=movq_r64_r64    
  nop                             #  13    0x1267f3  1      OPC=nop             
  nop                             #  14    0x1267f4  1      OPC=nop             
  nop                             #  15    0x1267f5  1      OPC=nop             
  nop                             #  16    0x1267f6  1      OPC=nop             
  movl %esi, %edx                 #  17    0x1267f7  2      OPC=movl_r32_r32_1  
  nop                             #  18    0x1267f9  1      OPC=nop             
  jne .L_126860                   #  19    0x1267fa  6      OPC=jne_label_1     
  nop                             #  20    0x126800  1      OPC=nop             
  nop                             #  21    0x126801  1      OPC=nop             
  nop                             #  22    0x126802  1      OPC=nop             
  nop                             #  23    0x126803  1      OPC=nop             
  xorl %ebp, %edx                 #  24    0x126804  2      OPC=xorl_r32_r32_1  
  movl (%r15,%rdx,1), %r8d        #  25    0x126806  4      OPC=movl_r32_m32    
  nop                             #  26    0x12680a  1      OPC=nop             
  nop                             #  27    0x12680b  1      OPC=nop             
  nop                             #  28    0x12680c  1      OPC=nop             
  nop                             #  29    0x12680d  1      OPC=nop             
  subb %r8b, %sil                 #  30    0x12680e  3      OPC=subb_r8_r8      
  notw %si                        #  31    0x126811  3      OPC=notw_r16        
  andw $0x8, %si                  #  32    0x126814  4      OPC=andw_r16_imm8   
  jne .L_126860                   #  33    0x126818  6      OPC=jne_label_1     
  nop                             #  34    0x12681e  1      OPC=nop             
  nop                             #  35    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  36    0x126820  6      OPC=addl_r32_imm32  
  movl %r8d, -0x4(%r15,%rcx,1)    #  37    0x126826  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  38    0x12682b  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  39    0x12682e  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi      #  40    0x126832  7      OPC=leal_r32_m64    
  andq $0x80808080, %rsi          #  41    0x126839  7      OPC=andq_r64_imm32  
  movl %r8d, %r9d                 #  42    0x126840  3      OPC=movl_r32_r32_1  
  notw %r9w                       #  43    0x126843  4      OPC=notw_r16        
  andw %si, %r9w                  #  44    0x126847  4      OPC=andw_r16_r16    
  je .L_126820                    #  45    0x12684b  6      OPC=je_label_1      
  nop                             #  46    0x126851  1      OPC=nop             
  nop                             #  47    0x126852  1      OPC=nop             
  nop                             #  48    0x126853  1      OPC=nop             
  nop                             #  49    0x126854  1      OPC=nop             
  nop                             #  50    0x126855  1      OPC=nop             
  nop                             #  51    0x126856  1      OPC=nop             
  nop                             #  52    0x126857  1      OPC=nop             
  nop                             #  53    0x126858  1      OPC=nop             
  nop                             #  54    0x126859  1      OPC=nop             
  nop                             #  55    0x12685a  1      OPC=nop             
  nop                             #  56    0x12685b  1      OPC=nop             
  nop                             #  57    0x12685c  1      OPC=nop             
  nop                             #  58    0x12685d  1      OPC=nop             
  nop                             #  59    0x12685e  1      OPC=nop             
  nop                             #  60    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  61    0x126860  3      OPC=addl_r32_imm8   
  movsbl -0x1(%r15,%rdx,1), %esi  #  62    0x126863  6      OPC=movsbl_r32_m8   
  addl $0x1, %ecx                 #  63    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  64    0x12686c  5      OPC=movb_m8_r8      
  shrq $0x1, %rsi                 #  65    0x126871  3      OPC=shrq_r64_one    
  jne .L_126860                   #  66    0x126874  6      OPC=jne_label_1     
  nop                             #  67    0x12687a  1      OPC=nop             
  nop                             #  68    0x12687b  1      OPC=nop             
  nop                             #  69    0x12687c  1      OPC=nop             
  nop                             #  70    0x12687d  1      OPC=nop             
  nop                             #  71    0x12687e  1      OPC=nop             
  nop                             #  72    0x12687f  1      OPC=nop             
  nop                             #  73    0x126880  1      OPC=nop             
  nop                             #  74    0x126881  1      OPC=nop             
  nop                             #  75    0x126882  1      OPC=nop             
  nop                             #  76    0x126883  1      OPC=nop             
  nop                             #  77    0x126884  1      OPC=nop             
  nop                             #  78    0x126885  1      OPC=nop             
  nop                             #  79    0x126886  1      OPC=nop             
  nop                             #  80    0x126887  1      OPC=nop             
  nop                             #  81    0x126888  1      OPC=nop             
  nop                             #  82    0x126889  1      OPC=nop             
  nop                             #  83    0x12688a  1      OPC=nop             
  nop                             #  84    0x12688b  1      OPC=nop             
  nop                             #  85    0x12688c  1      OPC=nop             
  nop                             #  86    0x12688d  1      OPC=nop             
  nop                             #  87    0x12688e  1      OPC=nop             
  retq

.size strcpy, -.strcpy

