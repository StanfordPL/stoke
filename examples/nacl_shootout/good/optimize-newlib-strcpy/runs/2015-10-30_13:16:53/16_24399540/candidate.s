  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rsi, %rdx                 #  1     0x1267e0  3      OPC=movq_r64_r64_1  
  movl %edi, %eax                 #  2     0x1267e3  2      OPC=movl_r32_r32_1  
  movq %rax, %rcx                 #  3     0x1267e5  3      OPC=movq_r64_r64    
  movw %dx, %di                   #  4     0x1267e8  3      OPC=movw_r16_r16_1  
  subl %ecx, %edi                 #  5     0x1267eb  2      OPC=subl_r32_r32_1  
  andl $0x3, %edi                 #  6     0x1267ed  6      OPC=andl_r32_imm32  
  jne .L_126860                   #  7     0x1267f3  6      OPC=jne_label_1     
  addl %ebp, %esi                 #  8     0x1267f9  2      OPC=addl_r32_r32    
  movq (%r15,%rsi,1), %r8         #  9     0x1267fb  4      OPC=movq_r64_m64    
  nop                             #  10    0x1267ff  1      OPC=nop             
  nop                             #  11    0x126800  1      OPC=nop             
  negl %esi                       #  12    0x126801  2      OPC=negl_r32        
  nop                             #  13    0x126803  1      OPC=nop             
  nop                             #  14    0x126804  1      OPC=nop             
  nop                             #  15    0x126805  1      OPC=nop             
  nop                             #  16    0x126806  1      OPC=nop             
  nop                             #  17    0x126807  1      OPC=nop             
  nop                             #  18    0x126808  1      OPC=nop             
  nop                             #  19    0x126809  1      OPC=nop             
  nop                             #  20    0x12680a  1      OPC=nop             
  nop                             #  21    0x12680b  1      OPC=nop             
  nop                             #  22    0x12680c  1      OPC=nop             
  nop                             #  23    0x12680d  1      OPC=nop             
  nop                             #  24    0x12680e  1      OPC=nop             
  nop                             #  25    0x12680f  1      OPC=nop             
  nop                             #  26    0x126810  1      OPC=nop             
  andl $0x40, %esi                #  27    0x126811  6      OPC=andl_r32_imm32  
  nop                             #  28    0x126817  1      OPC=nop             
  nop                             #  29    0x126818  1      OPC=nop             
  jne .L_126860                   #  30    0x126819  6      OPC=jne_label_1     
  nop                             #  31    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  andl %ecx, %ecx                 #  32    0x126820  2      OPC=andl_r32_r32    
  movl %r8d, (%r15,%rcx,1)        #  33    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %ecx                 #  34    0x126826  6      OPC=addl_r32_imm32  
  addl $0x4, %edx                 #  35    0x12682c  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  36    0x12682f  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rsi      #  37    0x126833  7      OPC=leaq_r64_m16    
  movq %r8, %r9                   #  38    0x12683a  3      OPC=movq_r64_r64_1  
  notl %r9d                       #  39    0x12683d  3      OPC=notl_r32        
  andl $0x80808080, %r9d          #  40    0x126840  7      OPC=andl_r32_imm32  
  andq %rsi, %r9                  #  41    0x126847  3      OPC=andq_r64_r64    
  je .L_126820                    #  42    0x12684a  6      OPC=je_label_1      
  nop                             #  43    0x126850  1      OPC=nop             
  nop                             #  44    0x126851  1      OPC=nop             
  nop                             #  45    0x126852  1      OPC=nop             
  nop                             #  46    0x126853  1      OPC=nop             
  nop                             #  47    0x126854  1      OPC=nop             
  nopl %eax                       #  48    0x126855  3      OPC=nopl_r32        
  nop                             #  49    0x126858  1      OPC=nop             
  nop                             #  50    0x126859  1      OPC=nop             
  nop                             #  51    0x12685a  1      OPC=nop             
  nop                             #  52    0x12685b  1      OPC=nop             
  nop                             #  53    0x12685c  1      OPC=nop             
  nop                             #  54    0x12685d  1      OPC=nop             
  nop                             #  55    0x12685e  1      OPC=nop             
  nop                             #  56    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  57    0x126860  3      OPC=addl_r32_imm8   
  movzbq -0x1(%r15,%rdx,1), %rsi  #  58    0x126863  6      OPC=movzbq_r64_m8   
  addl $0x1, %ecx                 #  59    0x126869  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)    #  60    0x12686f  5      OPC=movb_m8_r8      
  testb %sil, %sil                #  61    0x126874  3      OPC=testb_r8_r8     
  jne .L_126860                   #  62    0x126877  6      OPC=jne_label_1     
  nop                             #  63    0x12687d  1      OPC=nop             
  nop                             #  64    0x12687e  1      OPC=nop             
  nop                             #  65    0x12687f  1      OPC=nop             
  nop                             #  66    0x126880  1      OPC=nop             
  nop                             #  67    0x126881  1      OPC=nop             
  nop                             #  68    0x126882  1      OPC=nop             
  nop                             #  69    0x126883  1      OPC=nop             
  nop                             #  70    0x126884  1      OPC=nop             
  nop                             #  71    0x126885  1      OPC=nop             
  nop                             #  72    0x126886  1      OPC=nop             
  nop                             #  73    0x126887  1      OPC=nop             
  nop                             #  74    0x126888  1      OPC=nop             
  retq

.size strcpy, -.strcpy

