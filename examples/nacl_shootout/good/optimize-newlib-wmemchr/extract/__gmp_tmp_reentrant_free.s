  .text
  .globl __gmp_tmp_reentrant_free
  .type __gmp_tmp_reentrant_free, @function

#! file-offset 0x78000
#! rip-offset  0x38000
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmp_tmp_reentrant_free:     #        0x38000  0      OPC=<label>         
  movl %edi, %edi              #  1     0x38000  2      OPC=movl_r32_r32    
  pushq %rbx                   #  2     0x38002  1      OPC=pushq_r64_1     
  testq %rdi, %rdi             #  3     0x38003  3      OPC=testq_r64_r64   
  je .L_38060                  #  4     0x38006  2      OPC=je_label        
  nop                          #  5     0x38008  1      OPC=nop             
  nop                          #  6     0x38009  1      OPC=nop             
  nop                          #  7     0x3800a  1      OPC=nop             
  nop                          #  8     0x3800b  1      OPC=nop             
  nop                          #  9     0x3800c  1      OPC=nop             
  nop                          #  10    0x3800d  1      OPC=nop             
  nop                          #  11    0x3800e  1      OPC=nop             
  nop                          #  12    0x3800f  1      OPC=nop             
  nop                          #  13    0x38010  1      OPC=nop             
  nop                          #  14    0x38011  1      OPC=nop             
  nop                          #  15    0x38012  1      OPC=nop             
  nop                          #  16    0x38013  1      OPC=nop             
  nop                          #  17    0x38014  1      OPC=nop             
  nop                          #  18    0x38015  1      OPC=nop             
  nop                          #  19    0x38016  1      OPC=nop             
  nop                          #  20    0x38017  1      OPC=nop             
  nop                          #  21    0x38018  1      OPC=nop             
  nop                          #  22    0x38019  1      OPC=nop             
  nop                          #  23    0x3801a  1      OPC=nop             
  nop                          #  24    0x3801b  1      OPC=nop             
  nop                          #  25    0x3801c  1      OPC=nop             
  nop                          #  26    0x3801d  1      OPC=nop             
  nop                          #  27    0x3801e  1      OPC=nop             
  nop                          #  28    0x3801f  1      OPC=nop             
.L_38020:                      #        0x38020  0      OPC=<label>         
  movl %edi, %edi              #  29    0x38020  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ebx     #  30    0x38022  4      OPC=movl_r32_m32    
  movl 0x10038828(%rip), %eax  #  31    0x38026  6      OPC=movl_r32_m32    
  movl %edi, %edi              #  32    0x3802c  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %esi  #  33    0x3802e  5      OPC=movl_r32_m32    
  nop                          #  34    0x38033  1      OPC=nop             
  nop                          #  35    0x38034  1      OPC=nop             
  nop                          #  36    0x38035  1      OPC=nop             
  nop                          #  37    0x38036  1      OPC=nop             
  nop                          #  38    0x38037  1      OPC=nop             
  andl $0xffffffe0, %eax       #  39    0x38038  6      OPC=andl_r32_imm32  
  nop                          #  40    0x3803e  1      OPC=nop             
  nop                          #  41    0x3803f  1      OPC=nop             
  nop                          #  42    0x38040  1      OPC=nop             
  addq %r15, %rax              #  43    0x38041  3      OPC=addq_r64_r64    
  callq %rax                   #  44    0x38044  2      OPC=callq_r64       
  testq %rbx, %rbx             #  45    0x38046  3      OPC=testq_r64_r64   
  movq %rbx, %rdi              #  46    0x38049  3      OPC=movq_r64_r64    
  jne .L_38020                 #  47    0x3804c  2      OPC=jne_label       
  nop                          #  48    0x3804e  1      OPC=nop             
  nop                          #  49    0x3804f  1      OPC=nop             
  nop                          #  50    0x38050  1      OPC=nop             
  nop                          #  51    0x38051  1      OPC=nop             
  nop                          #  52    0x38052  1      OPC=nop             
  nop                          #  53    0x38053  1      OPC=nop             
  nop                          #  54    0x38054  1      OPC=nop             
  nop                          #  55    0x38055  1      OPC=nop             
  nop                          #  56    0x38056  1      OPC=nop             
  nop                          #  57    0x38057  1      OPC=nop             
  nop                          #  58    0x38058  1      OPC=nop             
  nop                          #  59    0x38059  1      OPC=nop             
  nop                          #  60    0x3805a  1      OPC=nop             
  nop                          #  61    0x3805b  1      OPC=nop             
  nop                          #  62    0x3805c  1      OPC=nop             
  nop                          #  63    0x3805d  1      OPC=nop             
  nop                          #  64    0x3805e  1      OPC=nop             
  nop                          #  65    0x3805f  1      OPC=nop             
  nop                          #  66    0x38060  1      OPC=nop             
  nop                          #  67    0x38061  1      OPC=nop             
  nop                          #  68    0x38062  1      OPC=nop             
  nop                          #  69    0x38063  1      OPC=nop             
  nop                          #  70    0x38064  1      OPC=nop             
  nop                          #  71    0x38065  1      OPC=nop             
.L_38060:                      #        0x38066  0      OPC=<label>         
  popq %rbx                    #  72    0x38066  1      OPC=popq_r64_1      
  popq %r11                    #  73    0x38067  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  74    0x38069  7      OPC=andl_r32_imm32  
  nop                          #  75    0x38070  1      OPC=nop             
  nop                          #  76    0x38071  1      OPC=nop             
  nop                          #  77    0x38072  1      OPC=nop             
  nop                          #  78    0x38073  1      OPC=nop             
  addq %r15, %r11              #  79    0x38074  3      OPC=addq_r64_r64    
  jmpq %r11                    #  80    0x38077  3      OPC=jmpq_r64        
  nop                          #  81    0x3807a  1      OPC=nop             
  nop                          #  82    0x3807b  1      OPC=nop             
  nop                          #  83    0x3807c  1      OPC=nop             
  nop                          #  84    0x3807d  1      OPC=nop             
  nop                          #  85    0x3807e  1      OPC=nop             
  nop                          #  86    0x3807f  1      OPC=nop             
  nop                          #  87    0x38080  1      OPC=nop             
  nop                          #  88    0x38081  1      OPC=nop             
  nop                          #  89    0x38082  1      OPC=nop             
  nop                          #  90    0x38083  1      OPC=nop             
  nop                          #  91    0x38084  1      OPC=nop             
  nop                          #  92    0x38085  1      OPC=nop             
  nop                          #  93    0x38086  1      OPC=nop             
  nop                          #  94    0x38087  1      OPC=nop             
  nop                          #  95    0x38088  1      OPC=nop             
  nop                          #  96    0x38089  1      OPC=nop             
  nop                          #  97    0x3808a  1      OPC=nop             
  nop                          #  98    0x3808b  1      OPC=nop             
  nop                          #  99    0x3808c  1      OPC=nop             
                                                                            
.size __gmp_tmp_reentrant_free, .-__gmp_tmp_reentrant_free

