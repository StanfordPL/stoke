  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  movl %esi, %edx                #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  movq %rdi, %rax                #  2     0x1267e2  3      OPC=movq_r64_r64    
  movq %rdi, %rcx                #  3     0x1267e5  3      OPC=movq_r64_r64_1  
  andq $0x2, %rdi                #  4     0x1267e8  4      OPC=andq_r64_imm8   
  jne .L_126860                  #  5     0x1267ec  6      OPC=jne_label_1     
  addl %ebp, %esi                #  6     0x1267f2  2      OPC=addl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d       #  7     0x1267f4  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rdi     #  8     0x1267f8  7      OPC=leaq_r64_m64    
  nop                            #  9     0x1267ff  1      OPC=nop             
  nop                            #  10    0x126800  1      OPC=nop             
  nop                            #  11    0x126801  1      OPC=nop             
  nop                            #  12    0x126802  1      OPC=nop             
  nop                            #  13    0x126803  1      OPC=nop             
  nop                            #  14    0x126804  1      OPC=nop             
  nop                            #  15    0x126805  1      OPC=nop             
  andl $0x80808080, %edi         #  16    0x126806  6      OPC=andl_r32_imm32  
  movl %r8d, %esi                #  17    0x12680c  3      OPC=movl_r32_r32_1  
  nop                            #  18    0x12680f  1      OPC=nop             
  notl %esi                      #  19    0x126810  2      OPC=notl_r32        
  nop                            #  20    0x126812  1      OPC=nop             
  nop                            #  21    0x126813  1      OPC=nop             
  nop                            #  22    0x126814  1      OPC=nop             
  nop                            #  23    0x126815  1      OPC=nop             
  andl %edi, %esi                #  24    0x126816  2      OPC=andl_r32_r32_1  
  jne .L_126860                  #  25    0x126818  6      OPC=jne_label_1     
  nop                            #  26    0x12681e  1      OPC=nop             
  nop                            #  27    0x12681f  1      OPC=nop             
.L_126820:                       #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                #  28    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)   #  29    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                #  30    0x126828  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d       #  31    0x12682b  4      OPC=movl_r32_m32    
  leaw -0x1010101(%r8), %si      #  32    0x12682f  8      OPC=leaw_r16_m16    
  andl $0x80808080, %esi         #  33    0x126837  6      OPC=andl_r32_imm32  
  movl %r8d, %r9d                #  34    0x12683d  3      OPC=movl_r32_r32    
  notl %r9d                      #  35    0x126840  3      OPC=notl_r32        
  andl %esi, %r9d                #  36    0x126843  3      OPC=andl_r32_r32    
  je .L_126820                   #  37    0x126846  6      OPC=je_label_1      
  nop                            #  38    0x12684c  1      OPC=nop             
  nop                            #  39    0x12684d  1      OPC=nop             
  nop                            #  40    0x12684e  1      OPC=nop             
  nopl %eax                      #  41    0x12684f  3      OPC=nopl_r32        
  nop                            #  42    0x126852  1      OPC=nop             
  nop                            #  43    0x126853  1      OPC=nop             
  nop                            #  44    0x126854  1      OPC=nop             
  nop                            #  45    0x126855  1      OPC=nop             
  nop                            #  46    0x126856  1      OPC=nop             
  nop                            #  47    0x126857  1      OPC=nop             
  nop                            #  48    0x126858  1      OPC=nop             
  nop                            #  49    0x126859  1      OPC=nop             
  nop                            #  50    0x12685a  1      OPC=nop             
  nop                            #  51    0x12685b  1      OPC=nop             
  nop                            #  52    0x12685c  1      OPC=nop             
  nop                            #  53    0x12685d  1      OPC=nop             
  nop                            #  54    0x12685e  1      OPC=nop             
  nop                            #  55    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  56    0x126860  3      OPC=addl_r32_imm8   
  movsbw -0x1(%r15,%rdx,1), %si  #  57    0x126863  7      OPC=movsbw_r16_m8   
  addl $0x1, %ecx                #  58    0x12686a  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)   #  59    0x12686d  5      OPC=movb_m8_r8      
  nop                            #  60    0x126872  1      OPC=nop             
  nop                            #  61    0x126873  1      OPC=nop             
  nop                            #  62    0x126874  1      OPC=nop             
  nop                            #  63    0x126875  1      OPC=nop             
  nop                            #  64    0x126876  1      OPC=nop             
  nop                            #  65    0x126877  1      OPC=nop             
  testb %al, %sil                #  66    0x126878  3      OPC=testb_r8_r8     
  nop                            #  67    0x12687b  1      OPC=nop             
  nop                            #  68    0x12687c  1      OPC=nop             
  nop                            #  69    0x12687d  1      OPC=nop             
  nop                            #  70    0x12687e  1      OPC=nop             
  nop                            #  71    0x12687f  1      OPC=nop             
  nop                            #  72    0x126880  1      OPC=nop             
  nop                            #  73    0x126881  1      OPC=nop             
  nop                            #  74    0x126882  1      OPC=nop             
  jne .L_126860                  #  75    0x126883  6      OPC=jne_label_1     
  nop                            #  76    0x126889  1      OPC=nop             
  nop                            #  77    0x12688a  1      OPC=nop             
  nop                            #  78    0x12688b  1      OPC=nop             
  nop                            #  79    0x12688c  1      OPC=nop             
  nop                            #  80    0x12688d  1      OPC=nop             
  retq

.size strcpy, -.strcpy

