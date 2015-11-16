  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rdi, %rcx                 #  1     0x1267e0  3      OPC=movq_r64_r64    
  movq %rsi, %rdx                 #  2     0x1267e3  3      OPC=movq_r64_r64_1  
  movl %ecx, %eax                 #  3     0x1267e6  2      OPC=movl_r32_r32_1  
  subq %rdx, %rdi                 #  4     0x1267e8  3      OPC=subq_r64_r64_1  
  nop                             #  5     0x1267eb  1      OPC=nop             
  nop                             #  6     0x1267ec  1      OPC=nop             
  nop                             #  7     0x1267ed  1      OPC=nop             
  nop                             #  8     0x1267ee  1      OPC=nop             
  nop                             #  9     0x1267ef  1      OPC=nop             
  nop                             #  10    0x1267f0  1      OPC=nop             
  andl $0x20, %edi                #  11    0x1267f1  6      OPC=andl_r32_imm32  
  jne .L_126860                   #  12    0x1267f7  6      OPC=jne_label_1     
  nop                             #  13    0x1267fd  1      OPC=nop             
  nop                             #  14    0x1267fe  1      OPC=nop             
  nop                             #  15    0x1267ff  1      OPC=nop             
  nop                             #  16    0x126800  1      OPC=nop             
  nop                             #  17    0x126801  1      OPC=nop             
  nop                             #  18    0x126802  1      OPC=nop             
  nop                             #  19    0x126803  1      OPC=nop             
  nop                             #  20    0x126804  1      OPC=nop             
  nop                             #  21    0x126805  1      OPC=nop             
  movl %esi, %esi                 #  22    0x126806  2      OPC=movl_r32_r32    
  movq (%r15,%rsi,1), %r8         #  23    0x126808  4      OPC=movq_r64_m64    
  nop                             #  24    0x12680c  1      OPC=nop             
  nop                             #  25    0x12680d  1      OPC=nop             
  nop                             #  26    0x12680e  1      OPC=nop             
  nop                             #  27    0x12680f  1      OPC=nop             
  nop                             #  28    0x126810  1      OPC=nop             
  nop                             #  29    0x126811  1      OPC=nop             
  nop                             #  30    0x126812  1      OPC=nop             
  nop                             #  31    0x126813  1      OPC=nop             
  nop                             #  32    0x126814  1      OPC=nop             
  nop                             #  33    0x126815  1      OPC=nop             
  nop                             #  34    0x126816  1      OPC=nop             
  nop                             #  35    0x126817  1      OPC=nop             
  nop                             #  36    0x126818  1      OPC=nop             
  nop                             #  37    0x126819  1      OPC=nop             
  jne .L_126860                   #  38    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  subl %esp, %ecx                 #  39    0x126820  2      OPC=subl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)        #  40    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  41    0x126826  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  42    0x126829  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi      #  43    0x12682d  7      OPC=leal_r32_m64    
  addl $0x4, %ecx                 #  44    0x126834  6      OPC=addl_r32_imm32  
  andl $0x80808080, %esi          #  45    0x12683a  6      OPC=andl_r32_imm32  
  movl %r8d, %r9d                 #  46    0x126840  3      OPC=movl_r32_r32_1  
  notq %r9                        #  47    0x126843  3      OPC=notq_r64        
  andq %rsi, %r9                  #  48    0x126846  3      OPC=andq_r64_r64_1  
  je .L_126820                    #  49    0x126849  6      OPC=je_label_1      
  nop                             #  50    0x12684f  1      OPC=nop             
  nop                             #  51    0x126850  1      OPC=nop             
  nop                             #  52    0x126851  1      OPC=nop             
  nop                             #  53    0x126852  1      OPC=nop             
  nop                             #  54    0x126853  1      OPC=nop             
  nop                             #  55    0x126854  1      OPC=nop             
  nop                             #  56    0x126855  1      OPC=nop             
  nop                             #  57    0x126856  1      OPC=nop             
  nop                             #  58    0x126857  1      OPC=nop             
  nop                             #  59    0x126858  1      OPC=nop             
  nop                             #  60    0x126859  1      OPC=nop             
  nop                             #  61    0x12685a  1      OPC=nop             
  nop                             #  62    0x12685b  1      OPC=nop             
  nop                             #  63    0x12685c  1      OPC=nop             
  nop                             #  64    0x12685d  1      OPC=nop             
  nop                             #  65    0x12685e  1      OPC=nop             
  nop                             #  66    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  67    0x126860  6      OPC=addl_r32_imm32  
  movzbq -0x1(%r15,%rdx,1), %rsi  #  68    0x126866  6      OPC=movzbq_r64_m8   
  addl $0x1, %ecx                 #  69    0x12686c  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  70    0x12686f  5      OPC=movb_m8_r8      
  salw $0x2, %si                  #  71    0x126874  4      OPC=salw_r16_imm8   
  jne .L_126860                   #  72    0x126878  6      OPC=jne_label_1     
  nop                             #  73    0x12687e  1      OPC=nop             
  nop                             #  74    0x12687f  1      OPC=nop             
  nop                             #  75    0x126880  1      OPC=nop             
  retq

.size strcpy, -.strcpy

