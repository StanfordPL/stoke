  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  nop                         #  1     0x1267e0  1      OPC=nop             
  nop                         #  2     0x1267e1  1      OPC=nop             
  movl %edi, %eax             #  3     0x1267e2  2      OPC=movl_r32_r32    
  nop                         #  4     0x1267e4  1      OPC=nop             
  movl %esi, %edi             #  5     0x1267e5  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  6     0x1267e7  3      OPC=movq_r64_r64    
  movq %rax, %rcx             #  7     0x1267ea  3      OPC=movq_r64_r64    
  nop                         #  8     0x1267ed  1      OPC=nop             
  orl %eax, %edi              #  9     0x1267ee  2      OPC=orl_r32_r32     
  andl $0x3, %edi             #  10    0x1267f0  3      OPC=andl_r32_imm8   
  jne .L_126860               #  11    0x1267f3  6      OPC=jne_label_1     
  nop                         #  12    0x1267f9  1      OPC=nop             
  movl %esi, %esi             #  13    0x1267fa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  14    0x1267fc  4      OPC=movl_r32_m32    
  movl %r8d, %esi             #  15    0x126800  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %edi  #  16    0x126803  7      OPC=leal_r32_m16    
  notl %esi                   #  17    0x12680a  2      OPC=notl_r32        
  andl %edi, %esi             #  18    0x12680c  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  19    0x12680e  6      OPC=andl_r32_imm32  
  jne .L_126860               #  20    0x126814  6      OPC=jne_label_1     
  nop                         #  21    0x12681a  1      OPC=nop             
  nop                         #  22    0x12681b  1      OPC=nop             
  nop                         #  23    0x12681c  1      OPC=nop             
  nop                         #  24    0x12681d  1      OPC=nop             
  nop                         #  25    0x12681e  1      OPC=nop             
  nop                         #  26    0x12681f  1      OPC=nop             
  nop                         #  27    0x126820  1      OPC=nop             
  nop                         #  28    0x126821  1      OPC=nop             
  nop                         #  29    0x126822  1      OPC=nop             
  nop                         #  30    0x126823  1      OPC=nop             
.L_126820:                    #        0x126824  0      OPC=<label>         
  addl $0x4, %edx             #  31    0x126824  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  32    0x126827  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  33    0x126829  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  34    0x12682d  3      OPC=addl_r32_imm8   
  movl %edx, %edx             #  35    0x126830  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  36    0x126832  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  37    0x126836  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  38    0x126839  7      OPC=leal_r32_m16    
  notl %r9d                   #  39    0x126840  3      OPC=notl_r32        
  andl %esi, %r9d             #  40    0x126843  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  41    0x126846  7      OPC=andl_r32_imm32  
  je .L_126820                #  42    0x12684d  6      OPC=je_label_1      
  nop                         #  43    0x126853  1      OPC=nop             
  nop                         #  44    0x126854  1      OPC=nop             
  nop                         #  45    0x126855  1      OPC=nop             
  nop                         #  46    0x126856  1      OPC=nop             
  nop                         #  47    0x126857  1      OPC=nop             
  nop                         #  48    0x126858  1      OPC=nop             
  nop                         #  49    0x126859  1      OPC=nop             
  nop                         #  50    0x12685a  1      OPC=nop             
  nop                         #  51    0x12685b  1      OPC=nop             
  nop                         #  52    0x12685c  1      OPC=nop             
  nop                         #  53    0x12685d  1      OPC=nop             
  nop                         #  54    0x12685e  1      OPC=nop             
  nop                         #  55    0x12685f  1      OPC=nop             
  nop                         #  56    0x126860  1      OPC=nop             
  nop                         #  57    0x126861  1      OPC=nop             
.L_126860:                    #        0x126862  0      OPC=<label>         
  movl %edx, %edx             #  58    0x126862  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  59    0x126864  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  60    0x126869  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  61    0x12686c  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  62    0x12686e  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  63    0x126872  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  64    0x126875  3      OPC=testb_r8_r8     
  jne .L_126860               #  65    0x126878  6      OPC=jne_label_1     
  nop                         #  66    0x12687e  1      OPC=nop             
  nop                         #  67    0x12687f  1      OPC=nop             
  nop                         #  68    0x126880  1      OPC=nop             
  nop                         #  69    0x126881  1      OPC=nop             
  nop                         #  70    0x126882  1      OPC=nop             
  retq                        #  71    0x126883  1      OPC=retq            
                                                                            
.size strcpy, .-strcpy
