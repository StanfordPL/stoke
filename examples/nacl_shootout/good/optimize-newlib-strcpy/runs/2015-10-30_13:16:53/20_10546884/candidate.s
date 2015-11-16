  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %esi, %edx                 #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  movl %edi, %eax                 #  2     0x1267e2  2      OPC=movl_r32_r32_1  
  nop                             #  3     0x1267e4  1      OPC=nop             
  nop                             #  4     0x1267e5  1      OPC=nop             
  nop                             #  5     0x1267e6  1      OPC=nop             
  nop                             #  6     0x1267e7  1      OPC=nop             
  addq %rsi, %rdi                 #  7     0x1267e8  3      OPC=addq_r64_r64    
  nop                             #  8     0x1267eb  1      OPC=nop             
  nop                             #  9     0x1267ec  1      OPC=nop             
  nop                             #  10    0x1267ed  1      OPC=nop             
  movq %rax, %rcx                 #  11    0x1267ee  3      OPC=movq_r64_r64_1  
  andb %cl, %dil                  #  12    0x1267f1  3      OPC=andb_r8_r8      
  movl %ebp, %ebx                 #  13    0x1267f4  2      OPC=movl_r32_r32_1  
  jne .L_126860                   #  14    0x1267f6  6      OPC=jne_label_1     
  nopl %eax                       #  15    0x1267fc  3      OPC=nopl_r32        
  nop                             #  16    0x1267ff  1      OPC=nop             
  nop                             #  17    0x126800  1      OPC=nop             
  nopl %eax                       #  18    0x126801  3      OPC=nopl_r32        
  xorl %ebp, %esi                 #  19    0x126804  2      OPC=xorl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d        #  20    0x126806  4      OPC=movl_r32_m32    
  nop                             #  21    0x12680a  1      OPC=nop             
  negb %bl                        #  22    0x12680b  2      OPC=negb_r8         
  nop                             #  23    0x12680d  1      OPC=nop             
  movswl %dx, %r9d                #  24    0x12680e  4      OPC=movswl_r32_r16  
  jne .L_126860                   #  25    0x126812  6      OPC=jne_label_1     
  shrl $0xfc, %r9d                #  26    0x126818  4      OPC=shrl_r32_imm8   
  nop                             #  27    0x12681c  1      OPC=nop             
  nop                             #  28    0x12681d  1      OPC=nop             
  nop                             #  29    0x12681e  1      OPC=nop             
  nop                             #  30    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  31    0x126820  6      OPC=addl_r32_imm32  
  movl %r8d, -0x4(%r15,%rcx,1)    #  32    0x126826  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  33    0x12682b  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8         #  34    0x12682e  4      OPC=movq_r64_m64    
  subl %r8d, %r9d                 #  35    0x126832  3      OPC=subl_r32_r32    
  andl $0x80808080, %r9d          #  36    0x126835  7      OPC=andl_r32_imm32  
  nop                             #  37    0x12683c  1      OPC=nop             
  nop                             #  38    0x12683d  1      OPC=nop             
  nop                             #  39    0x12683e  1      OPC=nop             
  nop                             #  40    0x12683f  1      OPC=nop             
  leaq -0x1010101(%r8), %rsi      #  41    0x126840  7      OPC=leaq_r64_m16    
  andq %rsi, %r9                  #  42    0x126847  3      OPC=andq_r64_r64_1  
  je .L_126820                    #  43    0x12684a  6      OPC=je_label_1      
  nop                             #  44    0x126850  1      OPC=nop             
  nopl %eax                       #  45    0x126851  3      OPC=nopl_r32        
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
  incl %edx                       #  58    0x126860  2      OPC=incl_r32        
  movzbl -0x1(%r15,%rdx,1), %esi  #  59    0x126862  6      OPC=movzbl_r32_m8   
  incl %ecx                       #  60    0x126868  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  61    0x12686a  5      OPC=movb_m8_r8      
  shlq $0x2, %rsi                 #  62    0x12686f  4      OPC=shlq_r64_imm8   
  jne .L_126860                   #  63    0x126873  6      OPC=jne_label_1     
  nop                             #  64    0x126879  1      OPC=nop             
  nop                             #  65    0x12687a  1      OPC=nop             
  nop                             #  66    0x12687b  1      OPC=nop             
  nopl %eax                       #  67    0x12687c  3      OPC=nopl_r32        
  nop                             #  68    0x12687f  1      OPC=nop             
  nop                             #  69    0x126880  1      OPC=nop             
  nop                             #  70    0x126881  1      OPC=nop             
  nop                             #  71    0x126882  1      OPC=nop             
  nop                             #  72    0x126883  1      OPC=nop             
  nop                             #  73    0x126884  1      OPC=nop             
  nop                             #  74    0x126885  1      OPC=nop             
  nop                             #  75    0x126886  1      OPC=nop             
  nop                             #  76    0x126887  1      OPC=nop             
  nop                             #  77    0x126888  1      OPC=nop             
  nop                             #  78    0x126889  1      OPC=nop             
  nop                             #  79    0x12688a  1      OPC=nop             
  nop                             #  80    0x12688b  1      OPC=nop             
  nop                             #  81    0x12688c  1      OPC=nop             
  retq

.size strcpy, -.strcpy

