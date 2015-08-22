  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1672c0
#! rip-offset  0x1272c0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1272c0  0      OPC=<label>         
  movl %esi, %esi             #  1     0x1272c0  2      OPC=movl_r32_r32    
  movl %edi, %eax             #  2     0x1272c2  2      OPC=movl_r32_r32    
  movl %esi, %edi             #  3     0x1272c4  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  4     0x1272c6  3      OPC=movq_r64_r64    
  movq %rax, %rcx             #  5     0x1272c9  3      OPC=movq_r64_r64    
  orl %eax, %edi              #  6     0x1272cc  2      OPC=orl_r32_r32     
  andl $0x3, %edi             #  7     0x1272ce  3      OPC=andl_r32_imm8   
  jne .L_127340               #  8     0x1272d1  2      OPC=jne_label       
  movl %esi, %esi             #  9     0x1272d3  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  10    0x1272d5  4      OPC=movl_r32_m32    
  movl %r8d, %esi             #  11    0x1272d9  3      OPC=movl_r32_r32    
  nop                         #  12    0x1272dc  1      OPC=nop             
  nop                         #  13    0x1272dd  1      OPC=nop             
  nop                         #  14    0x1272de  1      OPC=nop             
  nop                         #  15    0x1272df  1      OPC=nop             
  leal -0x1010101(%r8), %edi  #  16    0x1272e0  7      OPC=leal_r32_m16    
  notl %esi                   #  17    0x1272e7  2      OPC=notl_r32        
  andl %edi, %esi             #  18    0x1272e9  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  19    0x1272eb  6      OPC=andl_r32_imm32  
  jne .L_127340               #  20    0x1272f1  2      OPC=jne_label       
  nop                         #  21    0x1272f3  1      OPC=nop             
  nop                         #  22    0x1272f4  1      OPC=nop             
  nop                         #  23    0x1272f5  1      OPC=nop             
  nop                         #  24    0x1272f6  1      OPC=nop             
  nop                         #  25    0x1272f7  1      OPC=nop             
  nop                         #  26    0x1272f8  1      OPC=nop             
  nop                         #  27    0x1272f9  1      OPC=nop             
  nop                         #  28    0x1272fa  1      OPC=nop             
  nop                         #  29    0x1272fb  1      OPC=nop             
  nop                         #  30    0x1272fc  1      OPC=nop             
  nop                         #  31    0x1272fd  1      OPC=nop             
  nop                         #  32    0x1272fe  1      OPC=nop             
  nop                         #  33    0x1272ff  1      OPC=nop             
.L_127300:                    #        0x127300  0      OPC=<label>         
  addl $0x4, %edx             #  34    0x127300  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  35    0x127303  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  36    0x127305  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  37    0x127309  3      OPC=addl_r32_imm8   
  movl %edx, %edx             #  38    0x12730c  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  39    0x12730e  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  40    0x127312  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  41    0x127315  7      OPC=leal_r32_m16    
  notl %r9d                   #  42    0x12731c  3      OPC=notl_r32        
  nop                         #  43    0x12731f  1      OPC=nop             
  andl %esi, %r9d             #  44    0x127320  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  45    0x127323  7      OPC=andl_r32_imm32  
  je .L_127300                #  46    0x12732a  2      OPC=je_label        
  nop                         #  47    0x12732c  1      OPC=nop             
  nop                         #  48    0x12732d  1      OPC=nop             
  nop                         #  49    0x12732e  1      OPC=nop             
  nop                         #  50    0x12732f  1      OPC=nop             
  nop                         #  51    0x127330  1      OPC=nop             
  nop                         #  52    0x127331  1      OPC=nop             
  nop                         #  53    0x127332  1      OPC=nop             
  nop                         #  54    0x127333  1      OPC=nop             
  nop                         #  55    0x127334  1      OPC=nop             
  nop                         #  56    0x127335  1      OPC=nop             
  nop                         #  57    0x127336  1      OPC=nop             
  nop                         #  58    0x127337  1      OPC=nop             
  nop                         #  59    0x127338  1      OPC=nop             
  nop                         #  60    0x127339  1      OPC=nop             
  nop                         #  61    0x12733a  1      OPC=nop             
  nop                         #  62    0x12733b  1      OPC=nop             
  nop                         #  63    0x12733c  1      OPC=nop             
  nop                         #  64    0x12733d  1      OPC=nop             
  nop                         #  65    0x12733e  1      OPC=nop             
  nop                         #  66    0x12733f  1      OPC=nop             
.L_127340:                    #        0x127340  0      OPC=<label>         
  movl %edx, %edx             #  67    0x127340  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  68    0x127342  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  69    0x127347  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  70    0x12734a  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  71    0x12734c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  72    0x127350  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  73    0x127353  3      OPC=testb_r8_r8     
  jne .L_127340               #  74    0x127356  2      OPC=jne_label       
  popq %r11                   #  75    0x127358  2      OPC=popq_r64_1      
  nop                         #  76    0x12735a  1      OPC=nop             
  nop                         #  77    0x12735b  1      OPC=nop             
  nop                         #  78    0x12735c  1      OPC=nop             
  nop                         #  79    0x12735d  1      OPC=nop             
  nop                         #  80    0x12735e  1      OPC=nop             
  nop                         #  81    0x12735f  1      OPC=nop             
  andl $0xffffffe0, %r11d     #  82    0x127360  7      OPC=andl_r32_imm32  
  nop                         #  83    0x127367  1      OPC=nop             
  nop                         #  84    0x127368  1      OPC=nop             
  nop                         #  85    0x127369  1      OPC=nop             
  nop                         #  86    0x12736a  1      OPC=nop             
  addq %r15, %r11             #  87    0x12736b  3      OPC=addq_r64_r64    
  jmpq %r11                   #  88    0x12736e  3      OPC=jmpq_r64        
  nop                         #  89    0x127371  1      OPC=nop             
  nop                         #  90    0x127372  1      OPC=nop             
  nop                         #  91    0x127373  1      OPC=nop             
  nop                         #  92    0x127374  1      OPC=nop             
  nop                         #  93    0x127375  1      OPC=nop             
  nop                         #  94    0x127376  1      OPC=nop             
  nop                         #  95    0x127377  1      OPC=nop             
  nop                         #  96    0x127378  1      OPC=nop             
  nop                         #  97    0x127379  1      OPC=nop             
  nop                         #  98    0x12737a  1      OPC=nop             
  nop                         #  99    0x12737b  1      OPC=nop             
  nop                         #  100   0x12737c  1      OPC=nop             
  nop                         #  101   0x12737d  1      OPC=nop             
  nop                         #  102   0x12737e  1      OPC=nop             
  nop                         #  103   0x12737f  1      OPC=nop             
  nop                         #  104   0x127380  1      OPC=nop             
  nop                         #  105   0x127381  1      OPC=nop             
  nop                         #  106   0x127382  1      OPC=nop             
  nop                         #  107   0x127383  1      OPC=nop             
  nop                         #  108   0x127384  1      OPC=nop             
  nop                         #  109   0x127385  1      OPC=nop             
  nop                         #  110   0x127386  1      OPC=nop             
                                                                            
.size strcpy, .-strcpy

