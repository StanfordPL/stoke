  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x166ba0
#! rip-offset  0x126ba0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x126ba0  0      OPC=<label>         
  movl %esi, %esi             #  1     0x126ba0  2      OPC=movl_r32_r32    
  movl %edi, %eax             #  2     0x126ba2  2      OPC=movl_r32_r32    
  movl %esi, %edi             #  3     0x126ba4  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  4     0x126ba6  3      OPC=movq_r64_r64    
  movq %rax, %rcx             #  5     0x126ba9  3      OPC=movq_r64_r64    
  orl %eax, %edi              #  6     0x126bac  2      OPC=orl_r32_r32     
  andl $0x3, %edi             #  7     0x126bae  3      OPC=andl_r32_imm8   
  jne .L_126c20               #  8     0x126bb1  2      OPC=jne_label       
  movl %esi, %esi             #  9     0x126bb3  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  10    0x126bb5  4      OPC=movl_r32_m32    
  movl %r8d, %esi             #  11    0x126bb9  3      OPC=movl_r32_r32    
  nop                         #  12    0x126bbc  1      OPC=nop             
  nop                         #  13    0x126bbd  1      OPC=nop             
  nop                         #  14    0x126bbe  1      OPC=nop             
  nop                         #  15    0x126bbf  1      OPC=nop             
  leal -0x1010101(%r8), %edi  #  16    0x126bc0  7      OPC=leal_r32_m16    
  notl %esi                   #  17    0x126bc7  2      OPC=notl_r32        
  andl %edi, %esi             #  18    0x126bc9  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  19    0x126bcb  6      OPC=andl_r32_imm32  
  jne .L_126c20               #  20    0x126bd1  2      OPC=jne_label       
  nop                         #  21    0x126bd3  1      OPC=nop             
  nop                         #  22    0x126bd4  1      OPC=nop             
  nop                         #  23    0x126bd5  1      OPC=nop             
  nop                         #  24    0x126bd6  1      OPC=nop             
  nop                         #  25    0x126bd7  1      OPC=nop             
  nop                         #  26    0x126bd8  1      OPC=nop             
  nop                         #  27    0x126bd9  1      OPC=nop             
  nop                         #  28    0x126bda  1      OPC=nop             
  nop                         #  29    0x126bdb  1      OPC=nop             
  nop                         #  30    0x126bdc  1      OPC=nop             
  nop                         #  31    0x126bdd  1      OPC=nop             
  nop                         #  32    0x126bde  1      OPC=nop             
  nop                         #  33    0x126bdf  1      OPC=nop             
.L_126be0:                    #        0x126be0  0      OPC=<label>         
  addl $0x4, %edx             #  34    0x126be0  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  35    0x126be3  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  36    0x126be5  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  37    0x126be9  3      OPC=addl_r32_imm8   
  movl %edx, %edx             #  38    0x126bec  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  39    0x126bee  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  40    0x126bf2  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  41    0x126bf5  7      OPC=leal_r32_m16    
  notl %r9d                   #  42    0x126bfc  3      OPC=notl_r32        
  nop                         #  43    0x126bff  1      OPC=nop             
  andl %esi, %r9d             #  44    0x126c00  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  45    0x126c03  7      OPC=andl_r32_imm32  
  je .L_126be0                #  46    0x126c0a  2      OPC=je_label        
  nop                         #  47    0x126c0c  1      OPC=nop             
  nop                         #  48    0x126c0d  1      OPC=nop             
  nop                         #  49    0x126c0e  1      OPC=nop             
  nop                         #  50    0x126c0f  1      OPC=nop             
  nop                         #  51    0x126c10  1      OPC=nop             
  nop                         #  52    0x126c11  1      OPC=nop             
  nop                         #  53    0x126c12  1      OPC=nop             
  nop                         #  54    0x126c13  1      OPC=nop             
  nop                         #  55    0x126c14  1      OPC=nop             
  nop                         #  56    0x126c15  1      OPC=nop             
  nop                         #  57    0x126c16  1      OPC=nop             
  nop                         #  58    0x126c17  1      OPC=nop             
  nop                         #  59    0x126c18  1      OPC=nop             
  nop                         #  60    0x126c19  1      OPC=nop             
  nop                         #  61    0x126c1a  1      OPC=nop             
  nop                         #  62    0x126c1b  1      OPC=nop             
  nop                         #  63    0x126c1c  1      OPC=nop             
  nop                         #  64    0x126c1d  1      OPC=nop             
  nop                         #  65    0x126c1e  1      OPC=nop             
  nop                         #  66    0x126c1f  1      OPC=nop             
.L_126c20:                    #        0x126c20  0      OPC=<label>         
  movl %edx, %edx             #  67    0x126c20  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  68    0x126c22  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  69    0x126c27  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  70    0x126c2a  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  71    0x126c2c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  72    0x126c30  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  73    0x126c33  3      OPC=testb_r8_r8     
  jne .L_126c20               #  74    0x126c36  2      OPC=jne_label       
  popq %r11                   #  75    0x126c38  2      OPC=popq_r64_1      
  nop                         #  76    0x126c3a  1      OPC=nop             
  nop                         #  77    0x126c3b  1      OPC=nop             
  nop                         #  78    0x126c3c  1      OPC=nop             
  nop                         #  79    0x126c3d  1      OPC=nop             
  nop                         #  80    0x126c3e  1      OPC=nop             
  nop                         #  81    0x126c3f  1      OPC=nop             
  andl $0xffffffe0, %r11d     #  82    0x126c40  7      OPC=andl_r32_imm32  
  nop                         #  83    0x126c47  1      OPC=nop             
  nop                         #  84    0x126c48  1      OPC=nop             
  nop                         #  85    0x126c49  1      OPC=nop             
  nop                         #  86    0x126c4a  1      OPC=nop             
  addq %r15, %r11             #  87    0x126c4b  3      OPC=addq_r64_r64    
  jmpq %r11                   #  88    0x126c4e  3      OPC=jmpq_r64        
  nop                         #  89    0x126c51  1      OPC=nop             
  nop                         #  90    0x126c52  1      OPC=nop             
  nop                         #  91    0x126c53  1      OPC=nop             
  nop                         #  92    0x126c54  1      OPC=nop             
  nop                         #  93    0x126c55  1      OPC=nop             
  nop                         #  94    0x126c56  1      OPC=nop             
  nop                         #  95    0x126c57  1      OPC=nop             
  nop                         #  96    0x126c58  1      OPC=nop             
  nop                         #  97    0x126c59  1      OPC=nop             
  nop                         #  98    0x126c5a  1      OPC=nop             
  nop                         #  99    0x126c5b  1      OPC=nop             
  nop                         #  100   0x126c5c  1      OPC=nop             
  nop                         #  101   0x126c5d  1      OPC=nop             
  nop                         #  102   0x126c5e  1      OPC=nop             
  nop                         #  103   0x126c5f  1      OPC=nop             
  nop                         #  104   0x126c60  1      OPC=nop             
  nop                         #  105   0x126c61  1      OPC=nop             
  nop                         #  106   0x126c62  1      OPC=nop             
  nop                         #  107   0x126c63  1      OPC=nop             
  nop                         #  108   0x126c64  1      OPC=nop             
  nop                         #  109   0x126c65  1      OPC=nop             
  nop                         #  110   0x126c66  1      OPC=nop             
                                                                            
.size strcpy, .-strcpy

