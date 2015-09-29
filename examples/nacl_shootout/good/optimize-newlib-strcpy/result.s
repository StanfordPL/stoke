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
  orb %dl, %dil                   #  3     0x1267e4  3      OPC=orb_r8_r8       
  movl %ecx, %eax                 #  4     0x1267e7  2      OPC=movl_r32_r32    
  andl $0x3, %edi                 #  5     0x1267e9  3      OPC=andl_r32_imm8   
  jne .L_126860                   #  6     0x1267ec  6      OPC=jne_label_1     
  movl %esi, %esi                 #  7     0x1267f2  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  8     0x1267f4  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rdi      #  9     0x1267f8  7      OPC=leaq_r64_m32    
  nop                             #  10    0x1267ff  1      OPC=nop             
  nop                             #  11    0x126800  1      OPC=nop             
  nop                             #  12    0x126801  1      OPC=nop             
  movl %r8d, %esi                 #  13    0x126802  3      OPC=movl_r32_r32    
  nop                             #  14    0x126805  1      OPC=nop             
  andl $0x80808080, %edi          #  15    0x126806  6      OPC=andl_r32_imm32  
  nop                             #  16    0x12680c  1      OPC=nop             
  nop                             #  17    0x12680d  1      OPC=nop             
  notl %esi                       #  18    0x12680e  2      OPC=notl_r32        
  nop                             #  19    0x126810  1      OPC=nop             
  nop                             #  20    0x126811  1      OPC=nop             
  nop                             #  21    0x126812  1      OPC=nop             
  nop                             #  22    0x126813  1      OPC=nop             
  nop                             #  23    0x126814  1      OPC=nop             
  nop                             #  24    0x126815  1      OPC=nop             
  andl %edi, %esi                 #  25    0x126816  2      OPC=andl_r32_r32    
  nop                             #  26    0x126818  1      OPC=nop             
  nop                             #  27    0x126819  1      OPC=nop             
  jne .L_126860                   #  28    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  movl %ecx, %ecx                 #  29    0x126820  2      OPC=movl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)        #  30    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  31    0x126826  6      OPC=addl_r32_imm32  
  movq (%r15,%rdx,1), %r8         #  32    0x12682c  4      OPC=movq_r64_m64    
  movl %r8d, %r9d                 #  33    0x126830  3      OPC=movl_r32_r32    
  leaq -0x1010101(%r8), %rsi      #  34    0x126833  7      OPC=leaq_r64_m16    
  addl $0x4, %ecx                 #  35    0x12683a  6      OPC=addl_r32_imm32  
  andq $0x80808080, %rsi          #  36    0x126840  7      OPC=andq_r64_imm32  
  notl %r9d                       #  37    0x126847  3      OPC=notl_r32        
  andq %rsi, %r9                  #  38    0x12684a  3      OPC=andq_r64_r64_1  
  je .L_126820                    #  39    0x12684d  6      OPC=je_label_1      
  nop                             #  40    0x126853  1      OPC=nop             
  nop                             #  41    0x126854  1      OPC=nop             
  nop                             #  42    0x126855  1      OPC=nop             
  nop                             #  43    0x126856  1      OPC=nop             
  nop                             #  44    0x126857  1      OPC=nop             
  nop                             #  45    0x126858  1      OPC=nop             
  nop                             #  46    0x126859  1      OPC=nop             
  nop                             #  47    0x12685a  1      OPC=nop             
  nop                             #  48    0x12685b  1      OPC=nop             
  nop                             #  49    0x12685c  1      OPC=nop             
  nop                             #  50    0x12685d  1      OPC=nop             
  nop                             #  51    0x12685e  1      OPC=nop             
  nop                             #  52    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  incl %edx                       #  53    0x126860  2      OPC=incl_r32        
  movsbq -0x1(%r15,%rdx,1), %rsi  #  54    0x126862  6      OPC=movsbq_r64_m8   
  incl %ecx                       #  55    0x126868  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  56    0x12686a  5      OPC=movb_m8_r8      
  addq $0x0, %rsi                 #  57    0x12686f  4      OPC=addq_r64_imm8   
  jne .L_126860                   #  58    0x126873  6      OPC=jne_label_1     
  nop                             #  59    0x126879  1      OPC=nop             
  nop                             #  60    0x12687a  1      OPC=nop             
  nop                             #  61    0x12687b  1      OPC=nop             
  nop                             #  62    0x12687c  1      OPC=nop             
  nop                             #  63    0x12687d  1      OPC=nop             
  nop                             #  64    0x12687e  1      OPC=nop             
  nop                             #  65    0x12687f  1      OPC=nop             
  nop                             #  66    0x126880  1      OPC=nop             
  nop                             #  67    0x126881  1      OPC=nop             
  nop                             #  68    0x126882  1      OPC=nop             
  nop                             #  69    0x126883  1      OPC=nop             
  nop                             #  70    0x126884  1      OPC=nop             
  nop                             #  71    0x126885  1      OPC=nop             
  retq
                                                                                
.size strcpy, .-strcpy
