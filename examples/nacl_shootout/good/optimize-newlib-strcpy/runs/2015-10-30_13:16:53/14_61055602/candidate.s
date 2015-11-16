  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  nop                             #  1     0x1267e0  1      OPC=nop             
  movq %rdi, %rax                 #  2     0x1267e1  3      OPC=movq_r64_r64    
  movq %rax, %rcx                 #  3     0x1267e4  3      OPC=movq_r64_r64_1  
  nopl %eax                       #  4     0x1267e7  3      OPC=nopl_r32        
  movl %esi, %edx                 #  5     0x1267ea  2      OPC=movl_r32_r32_1  
  nop                             #  6     0x1267ec  1      OPC=nop             
  nop                             #  7     0x1267ed  1      OPC=nop             
  andw $0x5, %di                  #  8     0x1267ee  4      OPC=andw_r16_imm8   
  jne .L_126860                   #  9     0x1267f2  6      OPC=jne_label_1     
  nop                             #  10    0x1267f8  1      OPC=nop             
  nop                             #  11    0x1267f9  1      OPC=nop             
  orl %esi, %edx                  #  12    0x1267fa  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdx,1), %r8d        #  13    0x1267fc  4      OPC=movl_r32_m32    
  nop                             #  14    0x126800  1      OPC=nop             
  nop                             #  15    0x126801  1      OPC=nop             
  andq $0x80808080, %rdi          #  16    0x126802  7      OPC=andq_r64_imm32  
  nop                             #  17    0x126809  1      OPC=nop             
  nop                             #  18    0x12680a  1      OPC=nop             
  nop                             #  19    0x12680b  1      OPC=nop             
  nop                             #  20    0x12680c  1      OPC=nop             
  nop                             #  21    0x12680d  1      OPC=nop             
  nop                             #  22    0x12680e  1      OPC=nop             
  nop                             #  23    0x12680f  1      OPC=nop             
  nop                             #  24    0x126810  1      OPC=nop             
  nop                             #  25    0x126811  1      OPC=nop             
  nop                             #  26    0x126812  1      OPC=nop             
  nop                             #  27    0x126813  1      OPC=nop             
  nop                             #  28    0x126814  1      OPC=nop             
  nop                             #  29    0x126815  1      OPC=nop             
  nop                             #  30    0x126816  1      OPC=nop             
  nop                             #  31    0x126817  1      OPC=nop             
  nop                             #  32    0x126818  1      OPC=nop             
  jne .L_126860                   #  33    0x126819  6      OPC=jne_label_1     
  nop                             #  34    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  35    0x126820  6      OPC=addl_r32_imm32  
  movl %r8d, -0x4(%r15,%rcx,1)    #  36    0x126826  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  37    0x12682b  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  38    0x12682e  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi      #  39    0x126832  7      OPC=leal_r32_m64    
  andq $0x80808080, %rsi          #  40    0x126839  7      OPC=andq_r64_imm32  
  movl %r8d, %r9d                 #  41    0x126840  3      OPC=movl_r32_r32    
  notl %r9d                       #  42    0x126843  3      OPC=notl_r32        
  andq %rsi, %r9                  #  43    0x126846  3      OPC=andq_r64_r64    
  je .L_126820                    #  44    0x126849  6      OPC=je_label_1      
  nop                             #  45    0x12684f  1      OPC=nop             
  nop                             #  46    0x126850  1      OPC=nop             
  nop                             #  47    0x126851  1      OPC=nop             
  nop                             #  48    0x126852  1      OPC=nop             
  nop                             #  49    0x126853  1      OPC=nop             
  nop                             #  50    0x126854  1      OPC=nop             
  nop                             #  51    0x126855  1      OPC=nop             
  nop                             #  52    0x126856  1      OPC=nop             
  nop                             #  53    0x126857  1      OPC=nop             
  nop                             #  54    0x126858  1      OPC=nop             
  nop                             #  55    0x126859  1      OPC=nop             
  nop                             #  56    0x12685a  1      OPC=nop             
  nop                             #  57    0x12685b  1      OPC=nop             
  nop                             #  58    0x12685c  1      OPC=nop             
  nop                             #  59    0x12685d  1      OPC=nop             
  nop                             #  60    0x12685e  1      OPC=nop             
  nop                             #  61    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  62    0x126860  6      OPC=addl_r32_imm32  
  movsbq -0x1(%r15,%rdx,1), %rsi  #  63    0x126866  6      OPC=movsbq_r64_m8   
  addl $0x1, %ecx                 #  64    0x12686c  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  65    0x12686f  5      OPC=movb_m8_r8      
  salq $0x2, %rsi                 #  66    0x126874  4      OPC=salq_r64_imm8   
  jne .L_126860                   #  67    0x126878  6      OPC=jne_label_1     
  nop                             #  68    0x12687e  1      OPC=nop             
  nop                             #  69    0x12687f  1      OPC=nop             
  retq

.size strcpy, -.strcpy

