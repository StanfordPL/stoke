  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movl %esi, %esi             #  1     0x1267e0  2      OPC=movl_r32_r32    
  movl %edi, %eax             #  2     0x1267e2  2      OPC=movl_r32_r32    
  subl %esi, %edi             #  3     0x1267e4  2      OPC=subl_r32_r32_1  
  nop                         #  4     0x1267e6  1      OPC=nop             
  nop                         #  5     0x1267e7  1      OPC=nop             
  movq %rsi, %rdx             #  6     0x1267e8  3      OPC=movq_r64_r64    
  movq %rax, %rcx             #  7     0x1267eb  3      OPC=movq_r64_r64    
  orl %eax, %edi              #  8     0x1267ee  2      OPC=orl_r32_r32     
  andl $0x3, %edi             #  9     0x1267f0  3      OPC=andl_r32_imm8   
  nop                         #  10    0x1267f3  1      OPC=nop             
  jne .L_126860               #  11    0x1267f4  6      OPC=jne_label_1     
  movl %esi, %esi             #  12    0x1267fa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  13    0x1267fc  4      OPC=movl_r32_m32    
  movl %r8d, %esi             #  14    0x126800  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %edi  #  15    0x126803  7      OPC=leal_r32_m16    
  notl %esi                   #  16    0x12680a  2      OPC=notl_r32        
  andl $0x80808080, %esi      #  17    0x12680c  6      OPC=andl_r32_imm32  
  andl %edi, %esi             #  18    0x126812  2      OPC=andl_r32_r32    
  jne .L_126860               #  19    0x126814  6      OPC=jne_label_1     
  nop                         #  20    0x12681a  1      OPC=nop             
  nop                         #  21    0x12681b  1      OPC=nop             
  nop                         #  22    0x12681c  1      OPC=nop             
  nop                         #  23    0x12681d  1      OPC=nop             
  nop                         #  24    0x12681e  1      OPC=nop             
  nop                         #  25    0x12681f  1      OPC=nop             
  nop                         #  26    0x126820  1      OPC=nop             
.L_126820:                    #        0x126821  0      OPC=<label>         
  addl $0x4, %edx             #  27    0x126821  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  28    0x126824  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  29    0x126826  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  30    0x12682a  3      OPC=addl_r32_imm8   
  movl %edx, %edx             #  31    0x12682d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  32    0x12682f  4      OPC=movl_r32_m32    
  movq %r8, %r9               #  33    0x126833  3      OPC=movq_r64_r64_1  
  leal -0x1010101(%r8), %esi  #  34    0x126836  7      OPC=leal_r32_m32    
  notl %r9d                   #  35    0x12683d  3      OPC=notl_r32        
  andl %esi, %r9d             #  36    0x126840  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  37    0x126843  7      OPC=andl_r32_imm32  
  je .L_126820                #  38    0x12684a  6      OPC=je_label_1      
  nop                         #  39    0x126850  1      OPC=nop             
  nop                         #  40    0x126851  1      OPC=nop             
  nop                         #  41    0x126852  1      OPC=nop             
  nop                         #  42    0x126853  1      OPC=nop             
  nop                         #  43    0x126854  1      OPC=nop             
  nop                         #  44    0x126855  1      OPC=nop             
  nop                         #  45    0x126856  1      OPC=nop             
  nop                         #  46    0x126857  1      OPC=nop             
  nop                         #  47    0x126858  1      OPC=nop             
  nop                         #  48    0x126859  1      OPC=nop             
  nop                         #  49    0x12685a  1      OPC=nop             
  nop                         #  50    0x12685b  1      OPC=nop             
  nop                         #  51    0x12685c  1      OPC=nop             
  nop                         #  52    0x12685d  1      OPC=nop             
  nop                         #  53    0x12685e  1      OPC=nop             
  nop                         #  54    0x12685f  1      OPC=nop             
  nop                         #  55    0x126860  1      OPC=nop             
.L_126860:                    #        0x126861  0      OPC=<label>         
  andl %edx, %edx             #  56    0x126861  2      OPC=andl_r32_r32_1  
  movzbl (%r15,%rdx,1), %esi  #  57    0x126863  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  58    0x126868  3      OPC=addl_r32_imm8   
  andl %ecx, %ecx             #  59    0x12686b  2      OPC=andl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  60    0x12686d  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  61    0x126871  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  62    0x126874  3      OPC=testb_r8_r8     
  jne .L_126860               #  63    0x126877  6      OPC=jne_label_1     
  nop                         #  64    0x12687d  1      OPC=nop             
  nop                         #  65    0x12687e  1      OPC=nop             
  nop                         #  66    0x12687f  1      OPC=nop             
  nop                         #  67    0x126880  1      OPC=nop             
  nop                         #  68    0x126881  1      OPC=nop             
  nop                         #  69    0x126882  1      OPC=nop             
  nop                         #  70    0x126883  1      OPC=nop             
  nop                         #  71    0x126884  1      OPC=nop             
  retq                        #  72    0x126885  1      OPC=retq            
                                                                            
.size strcpy, .-strcpy
