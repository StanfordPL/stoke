  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  movq %rdi, %rax                #  1     0x1267e0  3      OPC=movq_r64_r64    
  movq %rsi, %rdx                #  2     0x1267e3  3      OPC=movq_r64_r64    
  nop                            #  3     0x1267e6  1      OPC=nop             
  nop                            #  4     0x1267e7  1      OPC=nop             
  nop                            #  5     0x1267e8  1      OPC=nop             
  nop                            #  6     0x1267e9  1      OPC=nop             
  nop                            #  7     0x1267ea  1      OPC=nop             
  nop                            #  8     0x1267eb  1      OPC=nop             
  nop                            #  9     0x1267ec  1      OPC=nop             
  nop                            #  10    0x1267ed  1      OPC=nop             
  nop                            #  11    0x1267ee  1      OPC=nop             
  nop                            #  12    0x1267ef  1      OPC=nop             
  nop                            #  13    0x1267f0  1      OPC=nop             
  nop                            #  14    0x1267f1  1      OPC=nop             
  movq %rax, %rcx                #  15    0x1267f2  3      OPC=movq_r64_r64    
  subq %rcx, %rsi                #  16    0x1267f5  3      OPC=subq_r64_r64    
  jne .L_126860                  #  17    0x1267f8  6      OPC=jne_label_1     
  nop                            #  18    0x1267fe  1      OPC=nop             
  nop                            #  19    0x1267ff  1      OPC=nop             
  nop                            #  20    0x126800  1      OPC=nop             
  subb %dh, %cl                  #  21    0x126801  2      OPC=subb_r8_rh      
  nop                            #  22    0x126803  1      OPC=nop             
  nop                            #  23    0x126804  1      OPC=nop             
  nop                            #  24    0x126805  1      OPC=nop             
  nop                            #  25    0x126806  1      OPC=nop             
  nop                            #  26    0x126807  1      OPC=nop             
  nop                            #  27    0x126808  1      OPC=nop             
  nop                            #  28    0x126809  1      OPC=nop             
  nop                            #  29    0x12680a  1      OPC=nop             
  nop                            #  30    0x12680b  1      OPC=nop             
  nop                            #  31    0x12680c  1      OPC=nop             
  nop                            #  32    0x12680d  1      OPC=nop             
  nop                            #  33    0x12680e  1      OPC=nop             
  nop                            #  34    0x12680f  1      OPC=nop             
  nop                            #  35    0x126810  1      OPC=nop             
  jne .L_126860                  #  36    0x126811  6      OPC=jne_label_1     
  nop                            #  37    0x126817  1      OPC=nop             
  nop                            #  38    0x126818  1      OPC=nop             
  shrl $0x1, %edx                #  39    0x126819  3      OPC=shrl_r32_imm8   
  nop                            #  40    0x12681c  1      OPC=nop             
  nop                            #  41    0x12681d  1      OPC=nop             
  nop                            #  42    0x12681e  1      OPC=nop             
  nop                            #  43    0x12681f  1      OPC=nop             
.L_126820:                       #        0x126820  0      OPC=<label>         
  nop                            #  44    0x126820  1      OPC=nop             
  nop                            #  45    0x126821  1      OPC=nop             
  nop                            #  46    0x126822  1      OPC=nop             
  nop                            #  47    0x126823  1      OPC=nop             
  nop                            #  48    0x126824  1      OPC=nop             
  nop                            #  49    0x126825  1      OPC=nop             
  nop                            #  50    0x126826  1      OPC=nop             
  nop                            #  51    0x126827  1      OPC=nop             
  nop                            #  52    0x126828  1      OPC=nop             
  nop                            #  53    0x126829  1      OPC=nop             
  nop                            #  54    0x12682a  1      OPC=nop             
  nop                            #  55    0x12682b  1      OPC=nop             
  nop                            #  56    0x12682c  1      OPC=nop             
  nop                            #  57    0x12682d  1      OPC=nop             
  nop                            #  58    0x12682e  1      OPC=nop             
  nop                            #  59    0x12682f  1      OPC=nop             
  nop                            #  60    0x126830  1      OPC=nop             
  nop                            #  61    0x126831  1      OPC=nop             
  nop                            #  62    0x126832  1      OPC=nop             
  nop                            #  63    0x126833  1      OPC=nop             
  nop                            #  64    0x126834  1      OPC=nop             
  nop                            #  65    0x126835  1      OPC=nop             
  nop                            #  66    0x126836  1      OPC=nop             
  nop                            #  67    0x126837  1      OPC=nop             
  nop                            #  68    0x126838  1      OPC=nop             
  nop                            #  69    0x126839  1      OPC=nop             
  nop                            #  70    0x12683a  1      OPC=nop             
  nop                            #  71    0x12683b  1      OPC=nop             
  nop                            #  72    0x12683c  1      OPC=nop             
  nop                            #  73    0x12683d  1      OPC=nop             
  nop                            #  74    0x12683e  1      OPC=nop             
  nop                            #  75    0x12683f  1      OPC=nop             
  nop                            #  76    0x126840  1      OPC=nop             
  addb %dh, %dl                  #  77    0x126841  2      OPC=addb_r8_rh_1    
  nop                            #  78    0x126843  1      OPC=nop             
  nop                            #  79    0x126844  1      OPC=nop             
  nop                            #  80    0x126845  1      OPC=nop             
  nop                            #  81    0x126846  1      OPC=nop             
  nop                            #  82    0x126847  1      OPC=nop             
  nop                            #  83    0x126848  1      OPC=nop             
  nop                            #  84    0x126849  1      OPC=nop             
  nop                            #  85    0x12684a  1      OPC=nop             
  nop                            #  86    0x12684b  1      OPC=nop             
  je .L_126820                   #  87    0x12684c  6      OPC=je_label_1      
  nop                            #  88    0x126852  1      OPC=nop             
  negb %dl                       #  89    0x126853  2      OPC=negb_r8         
  subb %dh, %ch                  #  90    0x126855  2      OPC=subb_rh_rh      
  nop                            #  91    0x126857  1      OPC=nop             
  orb %al, %cl                   #  92    0x126858  2      OPC=orb_r8_r8_1     
  addb %ch, %dh                  #  93    0x12685a  2      OPC=addb_rh_rh      
  nop                            #  94    0x12685c  1      OPC=nop             
  shlb $0xf9, %ah                #  95    0x12685d  3      OPC=shlb_rh_imm8    
.L_126860:                       #        0x126860  0      OPC=<label>         
  incl %edx                      #  96    0x126860  2      OPC=incl_r32        
  movsbw -0x1(%r15,%rdx,1), %si  #  97    0x126862  7      OPC=movsbw_r16_m8   
  addl $0x1, %ecx                #  98    0x126869  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)   #  99    0x12686f  5      OPC=movb_m8_r8      
  xorb %spl, %sil                #  100   0x126874  3      OPC=xorb_r8_r8      
  jne .L_126860                  #  101   0x126877  6      OPC=jne_label_1     
  nopl %eax                      #  102   0x12687d  3      OPC=nopl_r32        
  retq

.size strcpy, -.strcpy

