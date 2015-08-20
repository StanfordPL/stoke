  .text
  .globl EqualsC_Execute
  .type EqualsC_Execute, @function

#! file-offset 0x66760
#! rip-offset  0x26760
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.EqualsC_Execute:                #        0x26760  0      OPC=<label>         
  movl %edi, %edi                #  1     0x26760  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0x26762  2      OPC=movl_r32_r32    
  movzbl 0xc(%r15,%rdi,1), %eax  #  3     0x26764  6      OPC=movzbl_r32_m8   
  testb %al, %al                 #  4     0x2676a  2      OPC=testb_r8_r8     
  jne .L_267a0                   #  5     0x2676c  2      OPC=jne_label       
  movl %edi, %edi                #  6     0x2676e  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rdi,1), %eax   #  7     0x26770  5      OPC=movl_r32_m32    
  movl %edi, %edi                #  8     0x26775  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rdi,1), %edx   #  9     0x26777  5      OPC=movl_r32_m32    
  nop                            #  10    0x2677c  1      OPC=nop             
  nop                            #  11    0x2677d  1      OPC=nop             
  nop                            #  12    0x2677e  1      OPC=nop             
  nop                            #  13    0x2677f  1      OPC=nop             
  movl %edx, %edx                #  14    0x26780  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx       #  15    0x26782  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  16    0x26786  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)       #  17    0x26788  4      OPC=movl_m32_r32    
  popq %r11                      #  18    0x2678c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  19    0x2678e  7      OPC=andl_r32_imm32  
  nop                            #  20    0x26795  1      OPC=nop             
  nop                            #  21    0x26796  1      OPC=nop             
  nop                            #  22    0x26797  1      OPC=nop             
  nop                            #  23    0x26798  1      OPC=nop             
  addq %r15, %r11                #  24    0x26799  3      OPC=addq_r64_r64    
  jmpq %r11                      #  25    0x2679c  3      OPC=jmpq_r64        
  nop                            #  26    0x2679f  1      OPC=nop             
  nop                            #  27    0x267a0  1      OPC=nop             
  nop                            #  28    0x267a1  1      OPC=nop             
  nop                            #  29    0x267a2  1      OPC=nop             
  nop                            #  30    0x267a3  1      OPC=nop             
  nop                            #  31    0x267a4  1      OPC=nop             
  nop                            #  32    0x267a5  1      OPC=nop             
  nop                            #  33    0x267a6  1      OPC=nop             
.L_267a0:                        #        0x267a7  0      OPC=<label>         
  cmpb $0x1, %al                 #  34    0x267a7  2      OPC=cmpb_al_imm8    
  je .L_267c0                    #  35    0x267a9  2      OPC=je_label        
  popq %r11                      #  36    0x267ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  37    0x267ad  7      OPC=andl_r32_imm32  
  nop                            #  38    0x267b4  1      OPC=nop             
  nop                            #  39    0x267b5  1      OPC=nop             
  nop                            #  40    0x267b6  1      OPC=nop             
  nop                            #  41    0x267b7  1      OPC=nop             
  addq %r15, %r11                #  42    0x267b8  3      OPC=addq_r64_r64    
  jmpq %r11                      #  43    0x267bb  3      OPC=jmpq_r64        
  nop                            #  44    0x267be  1      OPC=nop             
  nop                            #  45    0x267bf  1      OPC=nop             
  nop                            #  46    0x267c0  1      OPC=nop             
  nop                            #  47    0x267c1  1      OPC=nop             
  nop                            #  48    0x267c2  1      OPC=nop             
  nop                            #  49    0x267c3  1      OPC=nop             
  nop                            #  50    0x267c4  1      OPC=nop             
  nop                            #  51    0x267c5  1      OPC=nop             
  nop                            #  52    0x267c6  1      OPC=nop             
  nop                            #  53    0x267c7  1      OPC=nop             
  nop                            #  54    0x267c8  1      OPC=nop             
  nop                            #  55    0x267c9  1      OPC=nop             
  nop                            #  56    0x267ca  1      OPC=nop             
  nop                            #  57    0x267cb  1      OPC=nop             
  nop                            #  58    0x267cc  1      OPC=nop             
  nop                            #  59    0x267cd  1      OPC=nop             
.L_267c0:                        #        0x267ce  0      OPC=<label>         
  movl %edi, %edi                #  60    0x267ce  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rdi,1), %eax   #  61    0x267d0  5      OPC=movl_r32_m32    
  movl %edi, %edi                #  62    0x267d5  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rdi,1), %edx   #  63    0x267d7  5      OPC=movl_r32_m32    
  movl %edx, %edx                #  64    0x267dc  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx       #  65    0x267de  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  66    0x267e2  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)       #  67    0x267e4  4      OPC=movl_m32_r32    
  popq %r11                      #  68    0x267e8  2      OPC=popq_r64_1      
  nop                            #  69    0x267ea  1      OPC=nop             
  nop                            #  70    0x267eb  1      OPC=nop             
  nop                            #  71    0x267ec  1      OPC=nop             
  nop                            #  72    0x267ed  1      OPC=nop             
  andl $0xffffffe0, %r11d        #  73    0x267ee  7      OPC=andl_r32_imm32  
  nop                            #  74    0x267f5  1      OPC=nop             
  nop                            #  75    0x267f6  1      OPC=nop             
  nop                            #  76    0x267f7  1      OPC=nop             
  nop                            #  77    0x267f8  1      OPC=nop             
  addq %r15, %r11                #  78    0x267f9  3      OPC=addq_r64_r64    
  jmpq %r11                      #  79    0x267fc  3      OPC=jmpq_r64        
  nop                            #  80    0x267ff  1      OPC=nop             
  nop                            #  81    0x26800  1      OPC=nop             
  nop                            #  82    0x26801  1      OPC=nop             
  nop                            #  83    0x26802  1      OPC=nop             
  nop                            #  84    0x26803  1      OPC=nop             
  nop                            #  85    0x26804  1      OPC=nop             
  nop                            #  86    0x26805  1      OPC=nop             
  nop                            #  87    0x26806  1      OPC=nop             
  nop                            #  88    0x26807  1      OPC=nop             
  nop                            #  89    0x26808  1      OPC=nop             
  nop                            #  90    0x26809  1      OPC=nop             
  nop                            #  91    0x2680a  1      OPC=nop             
  nop                            #  92    0x2680b  1      OPC=nop             
  nop                            #  93    0x2680c  1      OPC=nop             
  nop                            #  94    0x2680d  1      OPC=nop             
  nop                            #  95    0x2680e  1      OPC=nop             
  nop                            #  96    0x2680f  1      OPC=nop             
  nop                            #  97    0x26810  1      OPC=nop             
  nop                            #  98    0x26811  1      OPC=nop             
  nop                            #  99    0x26812  1      OPC=nop             
  nop                            #  100   0x26813  1      OPC=nop             
  nop                            #  101   0x26814  1      OPC=nop             
                                                                              
.size EqualsC_Execute, .-EqualsC_Execute

