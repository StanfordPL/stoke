  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %ecx                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  movq %rsi, %rdx                 #  2     0x1267e2  3      OPC=movq_r64_r64    
  movq %rdi, %rax                 #  3     0x1267e5  3      OPC=movq_r64_r64    
  movw %dx, %di                   #  4     0x1267e8  3      OPC=movw_r16_r16_1  
  nop                             #  5     0x1267eb  1      OPC=nop             
  nop                             #  6     0x1267ec  1      OPC=nop             
  nop                             #  7     0x1267ed  1      OPC=nop             
  nop                             #  8     0x1267ee  1      OPC=nop             
  nop                             #  9     0x1267ef  1      OPC=nop             
  nop                             #  10    0x1267f0  1      OPC=nop             
  nop                             #  11    0x1267f1  1      OPC=nop             
  nop                             #  12    0x1267f2  1      OPC=nop             
  nop                             #  13    0x1267f3  1      OPC=nop             
  nop                             #  14    0x1267f4  1      OPC=nop             
  andw $0x2, %di                  #  15    0x1267f5  4      OPC=andw_r16_imm8   
  jne .L_126860                   #  16    0x1267f9  6      OPC=jne_label_1     
  nop                             #  17    0x1267ff  1      OPC=nop             
  movl %edx, %esi                 #  18    0x126800  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d        #  19    0x126802  4      OPC=movl_r32_m32    
  andq %r8, %rsi                  #  20    0x126806  3      OPC=andq_r64_r64    
  nop                             #  21    0x126809  1      OPC=nop             
  nop                             #  22    0x12680a  1      OPC=nop             
  nop                             #  23    0x12680b  1      OPC=nop             
  nop                             #  24    0x12680c  1      OPC=nop             
  nop                             #  25    0x12680d  1      OPC=nop             
  negq %rsi                       #  26    0x12680e  3      OPC=negq_r64        
  nop                             #  27    0x126811  1      OPC=nop             
  andl %edi, %esi                 #  28    0x126812  2      OPC=andl_r32_r32_1  
  andl $0x80808080, %esi          #  29    0x126814  6      OPC=andl_r32_imm32  
  jne .L_126860                   #  30    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  31    0x126820  6      OPC=addl_r32_imm32  
  movl %r8d, -0x4(%r15,%rcx,1)    #  32    0x126826  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  33    0x12682b  6      OPC=addl_r32_imm32  
  movq (%r15,%rdx,1), %r8         #  34    0x126831  4      OPC=movq_r64_m64    
  leaq -0x1010101(%r8), %rsi      #  35    0x126835  7      OPC=leaq_r64_m16    
  movl %r8d, %r9d                 #  36    0x12683c  3      OPC=movl_r32_r32_1  
  nop                             #  37    0x12683f  1      OPC=nop             
  nop                             #  38    0x126840  1      OPC=nop             
  nop                             #  39    0x126841  1      OPC=nop             
  nop                             #  40    0x126842  1      OPC=nop             
  nop                             #  41    0x126843  1      OPC=nop             
  nop                             #  42    0x126844  1      OPC=nop             
  nop                             #  43    0x126845  1      OPC=nop             
  nop                             #  44    0x126846  1      OPC=nop             
  nop                             #  45    0x126847  1      OPC=nop             
  nop                             #  46    0x126848  1      OPC=nop             
  nop                             #  47    0x126849  1      OPC=nop             
  nop                             #  48    0x12684a  1      OPC=nop             
  nop                             #  49    0x12684b  1      OPC=nop             
  nop                             #  50    0x12684c  1      OPC=nop             
  notl %r9d                       #  51    0x12684d  3      OPC=notl_r32        
  andl $0x80808080, %r9d          #  52    0x126850  7      OPC=andl_r32_imm32  
  andl %esi, %r9d                 #  53    0x126857  3      OPC=andl_r32_r32_1  
  je .L_126820                    #  54    0x12685a  6      OPC=je_label_1      
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  55    0x126860  3      OPC=addl_r32_imm8   
  movzbq -0x1(%r15,%rdx,1), %rsi  #  56    0x126863  6      OPC=movzbq_r64_m8   
  addl $0x1, %ecx                 #  57    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  58    0x12686c  5      OPC=movb_m8_r8      
  testb %sil, %sil                #  59    0x126871  3      OPC=testb_r8_r8     
  jne .L_126860                   #  60    0x126874  6      OPC=jne_label_1     
  nop                             #  61    0x12687a  1      OPC=nop             
  nop                             #  62    0x12687b  1      OPC=nop             
  nop                             #  63    0x12687c  1      OPC=nop             
  nop                             #  64    0x12687d  1      OPC=nop             
  nop                             #  65    0x12687e  1      OPC=nop             
  nop                             #  66    0x12687f  1      OPC=nop             
  nop                             #  67    0x126880  1      OPC=nop             
  nop                             #  68    0x126881  1      OPC=nop             
  nop                             #  69    0x126882  1      OPC=nop             
  nop                             #  70    0x126883  1      OPC=nop             
  nop                             #  71    0x126884  1      OPC=nop             
  nop                             #  72    0x126885  1      OPC=nop             
  nop                             #  73    0x126886  1      OPC=nop             
  nop                             #  74    0x126887  1      OPC=nop             
  retq

.size strcpy, -.strcpy

