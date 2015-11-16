  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  nop                            #  1     0x1267e0  1      OPC=nop             
  nop                            #  2     0x1267e1  1      OPC=nop             
  nop                            #  3     0x1267e2  1      OPC=nop             
  nop                            #  4     0x1267e3  1      OPC=nop             
  nop                            #  5     0x1267e4  1      OPC=nop             
  nop                            #  6     0x1267e5  1      OPC=nop             
  nop                            #  7     0x1267e6  1      OPC=nop             
  nop                            #  8     0x1267e7  1      OPC=nop             
  nop                            #  9     0x1267e8  1      OPC=nop             
  movq %rdi, %rcx                #  10    0x1267e9  3      OPC=movq_r64_r64_1  
  movq %rsi, %rdx                #  11    0x1267ec  3      OPC=movq_r64_r64_1  
  movl %edi, %eax                #  12    0x1267ef  2      OPC=movl_r32_r32_1  
  movl %edx, %edi                #  13    0x1267f1  2      OPC=movl_r32_r32_1  
  andq $0x3, %rdi                #  14    0x1267f3  7      OPC=andq_r64_imm32  
  jne .L_126860                  #  15    0x1267fa  6      OPC=jne_label_1     
  movl %esi, %esi                #  16    0x126800  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d       #  17    0x126802  4      OPC=movl_r32_m32    
  leaw -0x1010101(%r8), %di      #  18    0x126806  8      OPC=leaw_r16_m32    
  xorb %r8b, %dil                #  19    0x12680e  3      OPC=xorb_r8_r8      
  nop                            #  20    0x126811  1      OPC=nop             
  andb %dil, %sil                #  21    0x126812  3      OPC=andb_r8_r8      
  nop                            #  22    0x126815  1      OPC=nop             
  nop                            #  23    0x126816  1      OPC=nop             
  nop                            #  24    0x126817  1      OPC=nop             
  jne .L_126860                  #  25    0x126818  6      OPC=jne_label_1     
  nop                            #  26    0x12681e  1      OPC=nop             
  nop                            #  27    0x12681f  1      OPC=nop             
.L_126820:                       #        0x126820  0      OPC=<label>         
  orl %esp, %ecx                 #  28    0x126820  2      OPC=orl_r32_r32     
  movl %r8d, (%r15,%rcx,1)       #  29    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                #  30    0x126826  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d       #  31    0x126829  4      OPC=movl_r32_m32    
  movq %r8, %r9                  #  32    0x12682d  3      OPC=movq_r64_r64    
  addl $0x4, %ecx                #  33    0x126830  3      OPC=addl_r32_imm8   
  notq %r9                       #  34    0x126833  3      OPC=notq_r64        
  leaq -0x1010101(%r8), %rsi     #  35    0x126836  7      OPC=leaq_r64_m32    
  andl %esi, %r9d                #  36    0x12683d  3      OPC=andl_r32_r32    
  andq $0x80808080, %r9          #  37    0x126840  7      OPC=andq_r64_imm32  
  je .L_126820                   #  38    0x126847  6      OPC=je_label_1      
  nop                            #  39    0x12684d  1      OPC=nop             
  nop                            #  40    0x12684e  1      OPC=nop             
  nop                            #  41    0x12684f  1      OPC=nop             
  nop                            #  42    0x126850  1      OPC=nop             
  nop                            #  43    0x126851  1      OPC=nop             
  nop                            #  44    0x126852  1      OPC=nop             
  nop                            #  45    0x126853  1      OPC=nop             
  nop                            #  46    0x126854  1      OPC=nop             
  nop                            #  47    0x126855  1      OPC=nop             
  nop                            #  48    0x126856  1      OPC=nop             
  nop                            #  49    0x126857  1      OPC=nop             
  nop                            #  50    0x126858  1      OPC=nop             
  nop                            #  51    0x126859  1      OPC=nop             
  nop                            #  52    0x12685a  1      OPC=nop             
  nop                            #  53    0x12685b  1      OPC=nop             
  nop                            #  54    0x12685c  1      OPC=nop             
  nop                            #  55    0x12685d  1      OPC=nop             
  nop                            #  56    0x12685e  1      OPC=nop             
  nop                            #  57    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  58    0x126860  6      OPC=addl_r32_imm32  
  movsbw -0x1(%r15,%rdx,1), %si  #  59    0x126866  7      OPC=movsbw_r16_m8   
  incl %ecx                      #  60    0x12686d  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)   #  61    0x12686f  5      OPC=movb_m8_r8      
  testb %sil, %sil               #  62    0x126874  3      OPC=testb_r8_r8     
  jne .L_126860                  #  63    0x126877  6      OPC=jne_label_1     
  nop                            #  64    0x12687d  1      OPC=nop             
  nop                            #  65    0x12687e  1      OPC=nop             
  nop                            #  66    0x12687f  1      OPC=nop             
  nop                            #  67    0x126880  1      OPC=nop             
  retq

.size strcpy, -.strcpy

