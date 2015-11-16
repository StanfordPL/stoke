  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %esi, %edx                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                             #  2     0x1267e2  1      OPC=nop             
  nop                             #  3     0x1267e3  1      OPC=nop             
  nop                             #  4     0x1267e4  1      OPC=nop             
  nop                             #  5     0x1267e5  1      OPC=nop             
  nop                             #  6     0x1267e6  1      OPC=nop             
  nop                             #  7     0x1267e7  1      OPC=nop             
  movq %rdi, %rcx                 #  8     0x1267e8  3      OPC=movq_r64_r64    
  andl $0x20, %edi                #  9     0x1267eb  6      OPC=andl_r32_imm32  
  nop                             #  10    0x1267f1  1      OPC=nop             
  movl %ecx, %eax                 #  11    0x1267f2  2      OPC=movl_r32_r32_1  
  jne .L_126860                   #  12    0x1267f4  6      OPC=jne_label_1     
  subl %esp, %esi                 #  13    0x1267fa  2      OPC=subl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  14    0x1267fc  4      OPC=movl_r32_m32    
  nop                             #  15    0x126800  1      OPC=nop             
  nop                             #  16    0x126801  1      OPC=nop             
  nop                             #  17    0x126802  1      OPC=nop             
  nop                             #  18    0x126803  1      OPC=nop             
  movq %r8, %rsi                  #  19    0x126804  3      OPC=movq_r64_r64    
  leal -0x1010101(%r8), %edi      #  20    0x126807  7      OPC=leal_r32_m32    
  nop                             #  21    0x12680e  1      OPC=nop             
  xorq %rdi, %rsi                 #  22    0x12680f  3      OPC=xorq_r64_r64    
  nop                             #  23    0x126812  1      OPC=nop             
  nop                             #  24    0x126813  1      OPC=nop             
  andl $0x80808080, %esi          #  25    0x126814  6      OPC=andl_r32_imm32  
  jne .L_126860                   #  26    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  xorl %ebp, %ecx                 #  27    0x126820  2      OPC=xorl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)        #  28    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  29    0x126826  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  30    0x126829  4      OPC=movl_r32_m32    
  addl $0x4, %ecx                 #  31    0x12682d  3      OPC=addl_r32_imm8   
  leaq -0x1010101(%r8), %rsi      #  32    0x126830  7      OPC=leaq_r64_m64    
  movl %r8d, %r9d                 #  33    0x126837  3      OPC=movl_r32_r32_1  
  andl $0x80808080, %esi          #  34    0x12683a  6      OPC=andl_r32_imm32  
  notl %r9d                       #  35    0x126840  3      OPC=notl_r32        
  andq %rsi, %r9                  #  36    0x126843  3      OPC=andq_r64_r64    
  je .L_126820                    #  37    0x126846  6      OPC=je_label_1      
  nop                             #  38    0x12684c  1      OPC=nop             
  nop                             #  39    0x12684d  1      OPC=nop             
  nop                             #  40    0x12684e  1      OPC=nop             
  nop                             #  41    0x12684f  1      OPC=nop             
  nop                             #  42    0x126850  1      OPC=nop             
  nop                             #  43    0x126851  1      OPC=nop             
  nop                             #  44    0x126852  1      OPC=nop             
  nop                             #  45    0x126853  1      OPC=nop             
  nop                             #  46    0x126854  1      OPC=nop             
  nop                             #  47    0x126855  1      OPC=nop             
  nop                             #  48    0x126856  1      OPC=nop             
  nop                             #  49    0x126857  1      OPC=nop             
  nop                             #  50    0x126858  1      OPC=nop             
  nop                             #  51    0x126859  1      OPC=nop             
  nop                             #  52    0x12685a  1      OPC=nop             
  nop                             #  53    0x12685b  1      OPC=nop             
  nop                             #  54    0x12685c  1      OPC=nop             
  nop                             #  55    0x12685d  1      OPC=nop             
  nop                             #  56    0x12685e  1      OPC=nop             
  nop                             #  57    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  58    0x126860  3      OPC=addl_r32_imm8   
  movsbl -0x1(%r15,%rdx,1), %esi  #  59    0x126863  6      OPC=movsbl_r32_m8   
  addl $0x1, %ecx                 #  60    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  61    0x12686c  5      OPC=movb_m8_r8      
  subb %spl, %sil                 #  62    0x126871  3      OPC=subb_r8_r8_1    
  jne .L_126860                   #  63    0x126874  6      OPC=jne_label_1     
  nop                             #  64    0x12687a  1      OPC=nop             
  nop                             #  65    0x12687b  1      OPC=nop             
  nop                             #  66    0x12687c  1      OPC=nop             
  nop                             #  67    0x12687d  1      OPC=nop             
  nop                             #  68    0x12687e  1      OPC=nop             
  nop                             #  69    0x12687f  1      OPC=nop             
  nop                             #  70    0x126880  1      OPC=nop             
  nop                             #  71    0x126881  1      OPC=nop             
  retq

.size strcpy, -.strcpy

