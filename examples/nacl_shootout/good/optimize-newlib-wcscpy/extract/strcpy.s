  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1668a0
#! rip-offset  0x1268a0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1268a0  0      OPC=<label>         
  movl %esi, %esi             #  1     0x1268a0  2      OPC=movl_r32_r32    
  movl %edi, %eax             #  2     0x1268a2  2      OPC=movl_r32_r32    
  movl %esi, %edi             #  3     0x1268a4  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  4     0x1268a6  3      OPC=movq_r64_r64    
  movq %rax, %rcx             #  5     0x1268a9  3      OPC=movq_r64_r64    
  orl %eax, %edi              #  6     0x1268ac  2      OPC=orl_r32_r32     
  andl $0x3, %edi             #  7     0x1268ae  3      OPC=andl_r32_imm8   
  jne .L_126920               #  8     0x1268b1  2      OPC=jne_label       
  movl %esi, %esi             #  9     0x1268b3  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  10    0x1268b5  4      OPC=movl_r32_m32    
  movl %r8d, %esi             #  11    0x1268b9  3      OPC=movl_r32_r32    
  nop                         #  12    0x1268bc  1      OPC=nop             
  nop                         #  13    0x1268bd  1      OPC=nop             
  nop                         #  14    0x1268be  1      OPC=nop             
  nop                         #  15    0x1268bf  1      OPC=nop             
  leal -0x1010101(%r8), %edi  #  16    0x1268c0  7      OPC=leal_r32_m16    
  notl %esi                   #  17    0x1268c7  2      OPC=notl_r32        
  andl %edi, %esi             #  18    0x1268c9  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  19    0x1268cb  6      OPC=andl_r32_imm32  
  jne .L_126920               #  20    0x1268d1  2      OPC=jne_label       
  nop                         #  21    0x1268d3  1      OPC=nop             
  nop                         #  22    0x1268d4  1      OPC=nop             
  nop                         #  23    0x1268d5  1      OPC=nop             
  nop                         #  24    0x1268d6  1      OPC=nop             
  nop                         #  25    0x1268d7  1      OPC=nop             
  nop                         #  26    0x1268d8  1      OPC=nop             
  nop                         #  27    0x1268d9  1      OPC=nop             
  nop                         #  28    0x1268da  1      OPC=nop             
  nop                         #  29    0x1268db  1      OPC=nop             
  nop                         #  30    0x1268dc  1      OPC=nop             
  nop                         #  31    0x1268dd  1      OPC=nop             
  nop                         #  32    0x1268de  1      OPC=nop             
  nop                         #  33    0x1268df  1      OPC=nop             
.L_1268e0:                    #        0x1268e0  0      OPC=<label>         
  addl $0x4, %edx             #  34    0x1268e0  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  35    0x1268e3  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  36    0x1268e5  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  37    0x1268e9  3      OPC=addl_r32_imm8   
  movl %edx, %edx             #  38    0x1268ec  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  39    0x1268ee  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  40    0x1268f2  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  41    0x1268f5  7      OPC=leal_r32_m16    
  notl %r9d                   #  42    0x1268fc  3      OPC=notl_r32        
  nop                         #  43    0x1268ff  1      OPC=nop             
  andl %esi, %r9d             #  44    0x126900  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  45    0x126903  7      OPC=andl_r32_imm32  
  je .L_1268e0                #  46    0x12690a  2      OPC=je_label        
  nop                         #  47    0x12690c  1      OPC=nop             
  nop                         #  48    0x12690d  1      OPC=nop             
  nop                         #  49    0x12690e  1      OPC=nop             
  nop                         #  50    0x12690f  1      OPC=nop             
  nop                         #  51    0x126910  1      OPC=nop             
  nop                         #  52    0x126911  1      OPC=nop             
  nop                         #  53    0x126912  1      OPC=nop             
  nop                         #  54    0x126913  1      OPC=nop             
  nop                         #  55    0x126914  1      OPC=nop             
  nop                         #  56    0x126915  1      OPC=nop             
  nop                         #  57    0x126916  1      OPC=nop             
  nop                         #  58    0x126917  1      OPC=nop             
  nop                         #  59    0x126918  1      OPC=nop             
  nop                         #  60    0x126919  1      OPC=nop             
  nop                         #  61    0x12691a  1      OPC=nop             
  nop                         #  62    0x12691b  1      OPC=nop             
  nop                         #  63    0x12691c  1      OPC=nop             
  nop                         #  64    0x12691d  1      OPC=nop             
  nop                         #  65    0x12691e  1      OPC=nop             
  nop                         #  66    0x12691f  1      OPC=nop             
.L_126920:                    #        0x126920  0      OPC=<label>         
  movl %edx, %edx             #  67    0x126920  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  68    0x126922  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  69    0x126927  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  70    0x12692a  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  71    0x12692c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  72    0x126930  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  73    0x126933  3      OPC=testb_r8_r8     
  jne .L_126920               #  74    0x126936  2      OPC=jne_label       
  popq %r11                   #  75    0x126938  2      OPC=popq_r64_1      
  nop                         #  76    0x12693a  1      OPC=nop             
  nop                         #  77    0x12693b  1      OPC=nop             
  nop                         #  78    0x12693c  1      OPC=nop             
  nop                         #  79    0x12693d  1      OPC=nop             
  nop                         #  80    0x12693e  1      OPC=nop             
  nop                         #  81    0x12693f  1      OPC=nop             
  andl $0xffffffe0, %r11d     #  82    0x126940  7      OPC=andl_r32_imm32  
  nop                         #  83    0x126947  1      OPC=nop             
  nop                         #  84    0x126948  1      OPC=nop             
  nop                         #  85    0x126949  1      OPC=nop             
  nop                         #  86    0x12694a  1      OPC=nop             
  addq %r15, %r11             #  87    0x12694b  3      OPC=addq_r64_r64    
  jmpq %r11                   #  88    0x12694e  3      OPC=jmpq_r64        
  nop                         #  89    0x126951  1      OPC=nop             
  nop                         #  90    0x126952  1      OPC=nop             
  nop                         #  91    0x126953  1      OPC=nop             
  nop                         #  92    0x126954  1      OPC=nop             
  nop                         #  93    0x126955  1      OPC=nop             
  nop                         #  94    0x126956  1      OPC=nop             
  nop                         #  95    0x126957  1      OPC=nop             
  nop                         #  96    0x126958  1      OPC=nop             
  nop                         #  97    0x126959  1      OPC=nop             
  nop                         #  98    0x12695a  1      OPC=nop             
  nop                         #  99    0x12695b  1      OPC=nop             
  nop                         #  100   0x12695c  1      OPC=nop             
  nop                         #  101   0x12695d  1      OPC=nop             
  nop                         #  102   0x12695e  1      OPC=nop             
  nop                         #  103   0x12695f  1      OPC=nop             
  nop                         #  104   0x126960  1      OPC=nop             
  nop                         #  105   0x126961  1      OPC=nop             
  nop                         #  106   0x126962  1      OPC=nop             
  nop                         #  107   0x126963  1      OPC=nop             
  nop                         #  108   0x126964  1      OPC=nop             
  nop                         #  109   0x126965  1      OPC=nop             
  nop                         #  110   0x126966  1      OPC=nop             
                                                                            
.size strcpy, .-strcpy

