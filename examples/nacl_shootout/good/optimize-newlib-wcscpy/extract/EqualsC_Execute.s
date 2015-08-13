  .text
  .globl EqualsC_Execute
  .type EqualsC_Execute, @function

#! file-offset 0x66740
#! rip-offset  0x26740
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.EqualsC_Execute:                #        0x26740  0      OPC=<label>         
  movl %edi, %edi                #  1     0x26740  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0x26742  2      OPC=movl_r32_r32    
  movzbl 0xc(%r15,%rdi,1), %eax  #  3     0x26744  6      OPC=movzbl_r32_m8   
  testb %al, %al                 #  4     0x2674a  2      OPC=testb_r8_r8     
  jne .L_26780                   #  5     0x2674c  2      OPC=jne_label       
  movl %edi, %edi                #  6     0x2674e  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rdi,1), %eax   #  7     0x26750  5      OPC=movl_r32_m32    
  movl %edi, %edi                #  8     0x26755  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rdi,1), %edx   #  9     0x26757  5      OPC=movl_r32_m32    
  nop                            #  10    0x2675c  1      OPC=nop             
  nop                            #  11    0x2675d  1      OPC=nop             
  nop                            #  12    0x2675e  1      OPC=nop             
  nop                            #  13    0x2675f  1      OPC=nop             
  movl %edx, %edx                #  14    0x26760  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx       #  15    0x26762  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  16    0x26766  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)       #  17    0x26768  4      OPC=movl_m32_r32    
  popq %r11                      #  18    0x2676c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  19    0x2676e  7      OPC=andl_r32_imm32  
  nop                            #  20    0x26775  1      OPC=nop             
  nop                            #  21    0x26776  1      OPC=nop             
  nop                            #  22    0x26777  1      OPC=nop             
  nop                            #  23    0x26778  1      OPC=nop             
  addq %r15, %r11                #  24    0x26779  3      OPC=addq_r64_r64    
  jmpq %r11                      #  25    0x2677c  3      OPC=jmpq_r64        
  nop                            #  26    0x2677f  1      OPC=nop             
  nop                            #  27    0x26780  1      OPC=nop             
  nop                            #  28    0x26781  1      OPC=nop             
  nop                            #  29    0x26782  1      OPC=nop             
  nop                            #  30    0x26783  1      OPC=nop             
  nop                            #  31    0x26784  1      OPC=nop             
  nop                            #  32    0x26785  1      OPC=nop             
  nop                            #  33    0x26786  1      OPC=nop             
.L_26780:                        #        0x26787  0      OPC=<label>         
  cmpb $0x1, %al                 #  34    0x26787  2      OPC=cmpb_al_imm8    
  je .L_267a0                    #  35    0x26789  2      OPC=je_label        
  popq %r11                      #  36    0x2678b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  37    0x2678d  7      OPC=andl_r32_imm32  
  nop                            #  38    0x26794  1      OPC=nop             
  nop                            #  39    0x26795  1      OPC=nop             
  nop                            #  40    0x26796  1      OPC=nop             
  nop                            #  41    0x26797  1      OPC=nop             
  addq %r15, %r11                #  42    0x26798  3      OPC=addq_r64_r64    
  jmpq %r11                      #  43    0x2679b  3      OPC=jmpq_r64        
  nop                            #  44    0x2679e  1      OPC=nop             
  nop                            #  45    0x2679f  1      OPC=nop             
  nop                            #  46    0x267a0  1      OPC=nop             
  nop                            #  47    0x267a1  1      OPC=nop             
  nop                            #  48    0x267a2  1      OPC=nop             
  nop                            #  49    0x267a3  1      OPC=nop             
  nop                            #  50    0x267a4  1      OPC=nop             
  nop                            #  51    0x267a5  1      OPC=nop             
  nop                            #  52    0x267a6  1      OPC=nop             
  nop                            #  53    0x267a7  1      OPC=nop             
  nop                            #  54    0x267a8  1      OPC=nop             
  nop                            #  55    0x267a9  1      OPC=nop             
  nop                            #  56    0x267aa  1      OPC=nop             
  nop                            #  57    0x267ab  1      OPC=nop             
  nop                            #  58    0x267ac  1      OPC=nop             
  nop                            #  59    0x267ad  1      OPC=nop             
.L_267a0:                        #        0x267ae  0      OPC=<label>         
  movl %edi, %edi                #  60    0x267ae  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rdi,1), %eax   #  61    0x267b0  5      OPC=movl_r32_m32    
  movl %edi, %edi                #  62    0x267b5  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rdi,1), %edx   #  63    0x267b7  5      OPC=movl_r32_m32    
  movl %edx, %edx                #  64    0x267bc  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx       #  65    0x267be  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  66    0x267c2  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)       #  67    0x267c4  4      OPC=movl_m32_r32    
  popq %r11                      #  68    0x267c8  2      OPC=popq_r64_1      
  nop                            #  69    0x267ca  1      OPC=nop             
  nop                            #  70    0x267cb  1      OPC=nop             
  nop                            #  71    0x267cc  1      OPC=nop             
  nop                            #  72    0x267cd  1      OPC=nop             
  andl $0xffffffe0, %r11d        #  73    0x267ce  7      OPC=andl_r32_imm32  
  nop                            #  74    0x267d5  1      OPC=nop             
  nop                            #  75    0x267d6  1      OPC=nop             
  nop                            #  76    0x267d7  1      OPC=nop             
  nop                            #  77    0x267d8  1      OPC=nop             
  addq %r15, %r11                #  78    0x267d9  3      OPC=addq_r64_r64    
  jmpq %r11                      #  79    0x267dc  3      OPC=jmpq_r64        
  nop                            #  80    0x267df  1      OPC=nop             
  nop                            #  81    0x267e0  1      OPC=nop             
  nop                            #  82    0x267e1  1      OPC=nop             
  nop                            #  83    0x267e2  1      OPC=nop             
  nop                            #  84    0x267e3  1      OPC=nop             
  nop                            #  85    0x267e4  1      OPC=nop             
  nop                            #  86    0x267e5  1      OPC=nop             
  nop                            #  87    0x267e6  1      OPC=nop             
  nop                            #  88    0x267e7  1      OPC=nop             
  nop                            #  89    0x267e8  1      OPC=nop             
  nop                            #  90    0x267e9  1      OPC=nop             
  nop                            #  91    0x267ea  1      OPC=nop             
  nop                            #  92    0x267eb  1      OPC=nop             
  nop                            #  93    0x267ec  1      OPC=nop             
  nop                            #  94    0x267ed  1      OPC=nop             
  nop                            #  95    0x267ee  1      OPC=nop             
  nop                            #  96    0x267ef  1      OPC=nop             
  nop                            #  97    0x267f0  1      OPC=nop             
  nop                            #  98    0x267f1  1      OPC=nop             
  nop                            #  99    0x267f2  1      OPC=nop             
  nop                            #  100   0x267f3  1      OPC=nop             
  nop                            #  101   0x267f4  1      OPC=nop             
                                                                              
.size EqualsC_Execute, .-EqualsC_Execute

