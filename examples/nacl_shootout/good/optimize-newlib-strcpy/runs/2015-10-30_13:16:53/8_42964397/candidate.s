  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  xorw %bp, %di                   #  1     0x1267e0  3      OPC=xorw_r16_r16_1  
  nop                             #  2     0x1267e3  1      OPC=nop             
  movq %rsi, %rdx                 #  3     0x1267e4  3      OPC=movq_r64_r64    
  nop                             #  4     0x1267e7  1      OPC=nop             
  movq %rdi, %rcx                 #  5     0x1267e8  3      OPC=movq_r64_r64_1  
  nop                             #  6     0x1267eb  1      OPC=nop             
  nop                             #  7     0x1267ec  1      OPC=nop             
  movl %ecx, %eax                 #  8     0x1267ed  2      OPC=movl_r32_r32    
  nop                             #  9     0x1267ef  1      OPC=nop             
  nop                             #  10    0x1267f0  1      OPC=nop             
  negw %di                        #  11    0x1267f1  3      OPC=negw_r16        
  nopl %eax                       #  12    0x1267f4  3      OPC=nopl_r32        
  nop                             #  13    0x1267f7  1      OPC=nop             
  jne .L_126860                   #  14    0x1267f8  6      OPC=jne_label_1     
  movb $0x20, %ah                 #  15    0x1267fe  2      OPC=movb_rh_imm8    
  nop                             #  16    0x126800  1      OPC=nop             
  xorb %ch, %dl                   #  17    0x126801  2      OPC=xorb_r8_rh_1    
  nop                             #  18    0x126803  1      OPC=nop             
  nop                             #  19    0x126804  1      OPC=nop             
  nop                             #  20    0x126805  1      OPC=nop             
  nop                             #  21    0x126806  1      OPC=nop             
  nop                             #  22    0x126807  1      OPC=nop             
  jne .L_126860                   #  23    0x126808  6      OPC=jne_label_1     
  nop                             #  24    0x12680e  1      OPC=nop             
  nop                             #  25    0x12680f  1      OPC=nop             
  nop                             #  26    0x126810  1      OPC=nop             
  nop                             #  27    0x126811  1      OPC=nop             
  nop                             #  28    0x126812  1      OPC=nop             
  nop                             #  29    0x126813  1      OPC=nop             
  nop                             #  30    0x126814  1      OPC=nop             
  nop                             #  31    0x126815  1      OPC=nop             
  nop                             #  32    0x126816  1      OPC=nop             
  nop                             #  33    0x126817  1      OPC=nop             
  nop                             #  34    0x126818  1      OPC=nop             
  nop                             #  35    0x126819  1      OPC=nop             
  nop                             #  36    0x12681a  1      OPC=nop             
  nopl %eax                       #  37    0x12681b  3      OPC=nopl_r32        
  orb $0xf9, %al                  #  38    0x12681e  2      OPC=orb_al_imm8     
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  39    0x126820  1      OPC=nop             
  nop                             #  40    0x126821  1      OPC=nop             
  nop                             #  41    0x126822  1      OPC=nop             
  nop                             #  42    0x126823  1      OPC=nop             
  nop                             #  43    0x126824  1      OPC=nop             
  nop                             #  44    0x126825  1      OPC=nop             
  nop                             #  45    0x126826  1      OPC=nop             
  nop                             #  46    0x126827  1      OPC=nop             
  nop                             #  47    0x126828  1      OPC=nop             
  nop                             #  48    0x126829  1      OPC=nop             
  nop                             #  49    0x12682a  1      OPC=nop             
  nop                             #  50    0x12682b  1      OPC=nop             
  nop                             #  51    0x12682c  1      OPC=nop             
  nopl %eax                       #  52    0x12682d  3      OPC=nopl_r32        
  movq %rsi, %rcx                 #  53    0x126830  3      OPC=movq_r64_r64    
  subq $0xfffffffa, %rax          #  54    0x126833  6      OPC=subq_rax_imm32  
  nop                             #  55    0x126839  1      OPC=nop             
  je .L_126820                    #  56    0x12683a  6      OPC=je_label_1      
  nop                             #  57    0x126840  1      OPC=nop             
  orw $0xf0, %cx                  #  58    0x126841  4      OPC=orw_r16_imm8    
  nop                             #  59    0x126845  1      OPC=nop             
  nop                             #  60    0x126846  1      OPC=nop             
  nop                             #  61    0x126847  1      OPC=nop             
  nop                             #  62    0x126848  1      OPC=nop             
  nop                             #  63    0x126849  1      OPC=nop             
  nop                             #  64    0x12684a  1      OPC=nop             
  nopl %eax                       #  65    0x12684b  3      OPC=nopl_r32        
  nop                             #  66    0x12684e  1      OPC=nop             
  movzwl %r15w, %eax              #  67    0x12684f  4      OPC=movzwl_r32_r16  
  nop                             #  68    0x126853  1      OPC=nop             
  nop                             #  69    0x126854  1      OPC=nop             
  nop                             #  70    0x126855  1      OPC=nop             
  nop                             #  71    0x126856  1      OPC=nop             
  nop                             #  72    0x126857  1      OPC=nop             
  nop                             #  73    0x126858  1      OPC=nop             
  nop                             #  74    0x126859  1      OPC=nop             
  nopl %eax                       #  75    0x12685a  3      OPC=nopl_r32        
  nop                             #  76    0x12685d  1      OPC=nop             
  nop                             #  77    0x12685e  1      OPC=nop             
  nop                             #  78    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  79    0x126860  3      OPC=addl_r32_imm8   
  movsbq -0x1(%r15,%rdx,1), %rsi  #  80    0x126863  6      OPC=movsbq_r64_m8   
  addl $0x1, %ecx                 #  81    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  82    0x12686c  5      OPC=movb_m8_r8      
  sall $0xf8, %esi                #  83    0x126871  3      OPC=sall_r32_imm8   
  jne .L_126860                   #  84    0x126874  6      OPC=jne_label_1     
  xorl %esi, %eax                 #  85    0x12687a  2      OPC=xorl_r32_r32    
  nop                             #  86    0x12687c  1      OPC=nop             
  nop                             #  87    0x12687d  1      OPC=nop             
  nop                             #  88    0x12687e  1      OPC=nop             
  nop                             #  89    0x12687f  1      OPC=nop             
  nop                             #  90    0x126880  1      OPC=nop             
  nop                             #  91    0x126881  1      OPC=nop             
  nop                             #  92    0x126882  1      OPC=nop             
  nop                             #  93    0x126883  1      OPC=nop             
  nop                             #  94    0x126884  1      OPC=nop             
  nop                             #  95    0x126885  1      OPC=nop             
  nop                             #  96    0x126886  1      OPC=nop             
  nop                             #  97    0x126887  1      OPC=nop             
  nop                             #  98    0x126888  1      OPC=nop             
  nop                             #  99    0x126889  1      OPC=nop             
  nop                             #  100   0x12688a  1      OPC=nop             
  nop                             #  101   0x12688b  1      OPC=nop             
  retq

.size strcpy, -.strcpy

