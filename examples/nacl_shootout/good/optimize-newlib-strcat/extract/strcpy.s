  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x166460
#! rip-offset  0x126460
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x126460  0      OPC=<label>         
  movl %esi, %esi             #  1     0x126460  2      OPC=movl_r32_r32    
  movl %edi, %eax             #  2     0x126462  2      OPC=movl_r32_r32    
  movl %esi, %edi             #  3     0x126464  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  4     0x126466  3      OPC=movq_r64_r64    
  movq %rax, %rcx             #  5     0x126469  3      OPC=movq_r64_r64    
  orl %eax, %edi              #  6     0x12646c  2      OPC=orl_r32_r32     
  andl $0x3, %edi             #  7     0x12646e  3      OPC=andl_r32_imm8   
  jne .L_1264e0               #  8     0x126471  2      OPC=jne_label       
  movl %esi, %esi             #  9     0x126473  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  10    0x126475  4      OPC=movl_r32_m32    
  movl %r8d, %esi             #  11    0x126479  3      OPC=movl_r32_r32    
  nop                         #  12    0x12647c  1      OPC=nop             
  nop                         #  13    0x12647d  1      OPC=nop             
  nop                         #  14    0x12647e  1      OPC=nop             
  nop                         #  15    0x12647f  1      OPC=nop             
  leal -0x1010101(%r8), %edi  #  16    0x126480  7      OPC=leal_r32_m16    
  notl %esi                   #  17    0x126487  2      OPC=notl_r32        
  andl %edi, %esi             #  18    0x126489  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  19    0x12648b  6      OPC=andl_r32_imm32  
  jne .L_1264e0               #  20    0x126491  2      OPC=jne_label       
  nop                         #  21    0x126493  1      OPC=nop             
  nop                         #  22    0x126494  1      OPC=nop             
  nop                         #  23    0x126495  1      OPC=nop             
  nop                         #  24    0x126496  1      OPC=nop             
  nop                         #  25    0x126497  1      OPC=nop             
  nop                         #  26    0x126498  1      OPC=nop             
  nop                         #  27    0x126499  1      OPC=nop             
  nop                         #  28    0x12649a  1      OPC=nop             
  nop                         #  29    0x12649b  1      OPC=nop             
  nop                         #  30    0x12649c  1      OPC=nop             
  nop                         #  31    0x12649d  1      OPC=nop             
  nop                         #  32    0x12649e  1      OPC=nop             
  nop                         #  33    0x12649f  1      OPC=nop             
.L_1264a0:                    #        0x1264a0  0      OPC=<label>         
  addl $0x4, %edx             #  34    0x1264a0  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  35    0x1264a3  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  36    0x1264a5  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  37    0x1264a9  3      OPC=addl_r32_imm8   
  movl %edx, %edx             #  38    0x1264ac  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  39    0x1264ae  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  40    0x1264b2  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  41    0x1264b5  7      OPC=leal_r32_m16    
  notl %r9d                   #  42    0x1264bc  3      OPC=notl_r32        
  nop                         #  43    0x1264bf  1      OPC=nop             
  andl %esi, %r9d             #  44    0x1264c0  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  45    0x1264c3  7      OPC=andl_r32_imm32  
  je .L_1264a0                #  46    0x1264ca  2      OPC=je_label        
  nop                         #  47    0x1264cc  1      OPC=nop             
  nop                         #  48    0x1264cd  1      OPC=nop             
  nop                         #  49    0x1264ce  1      OPC=nop             
  nop                         #  50    0x1264cf  1      OPC=nop             
  nop                         #  51    0x1264d0  1      OPC=nop             
  nop                         #  52    0x1264d1  1      OPC=nop             
  nop                         #  53    0x1264d2  1      OPC=nop             
  nop                         #  54    0x1264d3  1      OPC=nop             
  nop                         #  55    0x1264d4  1      OPC=nop             
  nop                         #  56    0x1264d5  1      OPC=nop             
  nop                         #  57    0x1264d6  1      OPC=nop             
  nop                         #  58    0x1264d7  1      OPC=nop             
  nop                         #  59    0x1264d8  1      OPC=nop             
  nop                         #  60    0x1264d9  1      OPC=nop             
  nop                         #  61    0x1264da  1      OPC=nop             
  nop                         #  62    0x1264db  1      OPC=nop             
  nop                         #  63    0x1264dc  1      OPC=nop             
  nop                         #  64    0x1264dd  1      OPC=nop             
  nop                         #  65    0x1264de  1      OPC=nop             
  nop                         #  66    0x1264df  1      OPC=nop             
.L_1264e0:                    #        0x1264e0  0      OPC=<label>         
  movl %edx, %edx             #  67    0x1264e0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  68    0x1264e2  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  69    0x1264e7  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  70    0x1264ea  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  71    0x1264ec  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  72    0x1264f0  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  73    0x1264f3  3      OPC=testb_r8_r8     
  jne .L_1264e0               #  74    0x1264f6  2      OPC=jne_label       
  popq %r11                   #  75    0x1264f8  2      OPC=popq_r64_1      
  nop                         #  76    0x1264fa  1      OPC=nop             
  nop                         #  77    0x1264fb  1      OPC=nop             
  nop                         #  78    0x1264fc  1      OPC=nop             
  nop                         #  79    0x1264fd  1      OPC=nop             
  nop                         #  80    0x1264fe  1      OPC=nop             
  nop                         #  81    0x1264ff  1      OPC=nop             
  andl $0xffffffe0, %r11d     #  82    0x126500  7      OPC=andl_r32_imm32  
  nop                         #  83    0x126507  1      OPC=nop             
  nop                         #  84    0x126508  1      OPC=nop             
  nop                         #  85    0x126509  1      OPC=nop             
  nop                         #  86    0x12650a  1      OPC=nop             
  addq %r15, %r11             #  87    0x12650b  3      OPC=addq_r64_r64    
  jmpq %r11                   #  88    0x12650e  3      OPC=jmpq_r64        
  nop                         #  89    0x126511  1      OPC=nop             
  nop                         #  90    0x126512  1      OPC=nop             
  nop                         #  91    0x126513  1      OPC=nop             
  nop                         #  92    0x126514  1      OPC=nop             
  nop                         #  93    0x126515  1      OPC=nop             
  nop                         #  94    0x126516  1      OPC=nop             
  nop                         #  95    0x126517  1      OPC=nop             
  nop                         #  96    0x126518  1      OPC=nop             
  nop                         #  97    0x126519  1      OPC=nop             
  nop                         #  98    0x12651a  1      OPC=nop             
  nop                         #  99    0x12651b  1      OPC=nop             
  nop                         #  100   0x12651c  1      OPC=nop             
  nop                         #  101   0x12651d  1      OPC=nop             
  nop                         #  102   0x12651e  1      OPC=nop             
  nop                         #  103   0x12651f  1      OPC=nop             
  nop                         #  104   0x126520  1      OPC=nop             
  nop                         #  105   0x126521  1      OPC=nop             
  nop                         #  106   0x126522  1      OPC=nop             
  nop                         #  107   0x126523  1      OPC=nop             
  nop                         #  108   0x126524  1      OPC=nop             
  nop                         #  109   0x126525  1      OPC=nop             
  nop                         #  110   0x126526  1      OPC=nop             
                                                                            
.size strcpy, .-strcpy

