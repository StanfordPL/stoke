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
  movq %rsi, %rdx             #  4     0x1267e4  3      OPC=movq_r64_r64    
  nop                         #  5     0x1267e7  1      OPC=nop             
  nop                         #  6     0x1267e8  1      OPC=nop             
  addl %esi, %edi             #  7     0x1267e9  2      OPC=addl_r32_r32_1  
  movq %rax, %rcx             #  8     0x1267eb  3      OPC=movq_r64_r64    
  orl %esi, %edi              #  9     0x1267ee  2      OPC=orl_r32_r32     
  andl $0x3, %edi             #  10    0x1267f0  3      OPC=andl_r32_imm8   
  jne .L_126860               #  11    0x1267f3  6      OPC=jne_label_1     
  movl %esi, %esi             #  12    0x1267f9  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d    #  13    0x1267fb  4      OPC=movl_r32_m32    
  nop                         #  14    0x1267ff  1      OPC=nop             
  nop                         #  15    0x126800  1      OPC=nop             
  nop                         #  16    0x126801  1      OPC=nop             
  leal -0x1010101(%r8), %edi  #  17    0x126802  7      OPC=leal_r32_m64    
  movl %r8d, %esi             #  18    0x126809  3      OPC=movl_r32_r32    
  nop                         #  19    0x12680c  1      OPC=nop             
  notl %esi                   #  20    0x12680d  2      OPC=notl_r32        
  andl %edi, %esi             #  21    0x12680f  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  22    0x126811  6      OPC=andl_r32_imm32  
  nop                         #  23    0x126817  1      OPC=nop             
  jne .L_126860               #  24    0x126818  6      OPC=jne_label_1     
  nop                         #  25    0x12681e  1      OPC=nop             
  nop                         #  26    0x12681f  1      OPC=nop             
  nop                         #  27    0x126820  1      OPC=nop             
  nop                         #  28    0x126821  1      OPC=nop             
  nop                         #  29    0x126822  1      OPC=nop             
.L_126820:                    #        0x126823  0      OPC=<label>         
  movl %ecx, %ecx             #  30    0x126823  2      OPC=movl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)    #  31    0x126825  4      OPC=movl_m32_r32    
  addl $0x4, %edx             #  32    0x126829  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  33    0x12682c  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi  #  34    0x126830  7      OPC=leal_r32_m32    
  movq %r8, %r9               #  35    0x126837  3      OPC=movq_r64_r64    
  addl $0x4, %ecx             #  36    0x12683a  3      OPC=addl_r32_imm8   
  nop                         #  37    0x12683d  1      OPC=nop             
  nop                         #  38    0x12683e  1      OPC=nop             
  nop                         #  39    0x12683f  1      OPC=nop             
  nop                         #  40    0x126840  1      OPC=nop             
  nop                         #  41    0x126841  1      OPC=nop             
  notl %r9d                   #  42    0x126842  3      OPC=notl_r32        
  andl $0x80808080, %r9d      #  43    0x126845  7      OPC=andl_r32_imm32  
  andl %esi, %r9d             #  44    0x12684c  3      OPC=andl_r32_r32    
  je .L_126820                #  45    0x12684f  6      OPC=je_label_1      
  nop                         #  46    0x126855  1      OPC=nop             
  nop                         #  47    0x126856  1      OPC=nop             
  nop                         #  48    0x126857  1      OPC=nop             
  nop                         #  49    0x126858  1      OPC=nop             
  nop                         #  50    0x126859  1      OPC=nop             
  nop                         #  51    0x12685a  1      OPC=nop             
  nop                         #  52    0x12685b  1      OPC=nop             
  nop                         #  53    0x12685c  1      OPC=nop             
  nop                         #  54    0x12685d  1      OPC=nop             
  nop                         #  55    0x12685e  1      OPC=nop             
  nop                         #  56    0x12685f  1      OPC=nop             
  nop                         #  57    0x126860  1      OPC=nop             
  nop                         #  58    0x126861  1      OPC=nop             
  nop                         #  59    0x126862  1      OPC=nop             
  nop                         #  60    0x126863  1      OPC=nop             
.L_126860:                    #        0x126864  0      OPC=<label>         
  movl %edx, %edx             #  61    0x126864  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  62    0x126866  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  63    0x12686b  3      OPC=addl_r32_imm8   
  orl %ecx, %ecx              #  64    0x12686e  2      OPC=orl_r32_r32_1   
  movb %sil, (%r15,%rcx,1)    #  65    0x126870  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  66    0x126874  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  67    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860               #  68    0x12687a  6      OPC=jne_label_1     
  nop                         #  69    0x126880  1      OPC=nop             
  nop                         #  70    0x126881  1      OPC=nop             
  retq                        #  71    0x126882  1      OPC=retq            
                                                                            
.size strcpy, .-strcpy
