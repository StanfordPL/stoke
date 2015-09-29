  .text
  .globl __libc_fini_array
  .type __libc_fini_array, @function

#! file-offset 0x15b4a0
#! rip-offset  0x11b4a0
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode              
.__libc_fini_array:                #        0x11b4a0  0      OPC=<label>         
  pushq %r12                       #  1     0x11b4a0  2      OPC=pushq_r64_1     
  pushq %rbx                       #  2     0x11b4a2  1      OPC=pushq_r64_1     
  movl $0x10070498, %ebx           #  3     0x11b4a3  5      OPC=movl_r32_imm32  
  subl $0x10070498, %ebx           #  4     0x11b4a8  6      OPC=subl_r32_imm32  
  sarl $0x2, %ebx                  #  5     0x11b4ae  3      OPC=sarl_r32_imm8   
  subl $0x8, %esp                  #  6     0x11b4b1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  7     0x11b4b4  3      OPC=addq_r64_r64    
  testl %ebx, %ebx                 #  8     0x11b4b7  2      OPC=testl_r32_r32   
  je .L_11b520                     #  9     0x11b4b9  2      OPC=je_label        
  nop                              #  10    0x11b4bb  1      OPC=nop             
  nop                              #  11    0x11b4bc  1      OPC=nop             
  nop                              #  12    0x11b4bd  1      OPC=nop             
  nop                              #  13    0x11b4be  1      OPC=nop             
  nop                              #  14    0x11b4bf  1      OPC=nop             
  leal 0x10070494(,%rbx,4), %r12d  #  15    0x11b4c0  8      OPC=leal_r32_m16    
  nop                              #  16    0x11b4c8  1      OPC=nop             
  nop                              #  17    0x11b4c9  1      OPC=nop             
  nop                              #  18    0x11b4ca  1      OPC=nop             
  nop                              #  19    0x11b4cb  1      OPC=nop             
  nop                              #  20    0x11b4cc  1      OPC=nop             
  nop                              #  21    0x11b4cd  1      OPC=nop             
  nop                              #  22    0x11b4ce  1      OPC=nop             
  nop                              #  23    0x11b4cf  1      OPC=nop             
  nop                              #  24    0x11b4d0  1      OPC=nop             
  nop                              #  25    0x11b4d1  1      OPC=nop             
  nop                              #  26    0x11b4d2  1      OPC=nop             
  nop                              #  27    0x11b4d3  1      OPC=nop             
  nop                              #  28    0x11b4d4  1      OPC=nop             
  nop                              #  29    0x11b4d5  1      OPC=nop             
  nop                              #  30    0x11b4d6  1      OPC=nop             
  nop                              #  31    0x11b4d7  1      OPC=nop             
  nop                              #  32    0x11b4d8  1      OPC=nop             
  nop                              #  33    0x11b4d9  1      OPC=nop             
  nop                              #  34    0x11b4da  1      OPC=nop             
  nop                              #  35    0x11b4db  1      OPC=nop             
  nop                              #  36    0x11b4dc  1      OPC=nop             
  nop                              #  37    0x11b4dd  1      OPC=nop             
  nop                              #  38    0x11b4de  1      OPC=nop             
  nop                              #  39    0x11b4df  1      OPC=nop             
.L_11b4e0:                         #        0x11b4e0  0      OPC=<label>         
  movl %r12d, %eax                 #  40    0x11b4e0  3      OPC=movl_r32_r32    
  subl $0x1, %ebx                  #  41    0x11b4e3  3      OPC=subl_r32_imm8   
  subl $0x4, %r12d                 #  42    0x11b4e6  4      OPC=subl_r32_imm8   
  movl %eax, %eax                  #  43    0x11b4ea  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax         #  44    0x11b4ec  4      OPC=movl_r32_m32    
  nop                              #  45    0x11b4f0  1      OPC=nop             
  nop                              #  46    0x11b4f1  1      OPC=nop             
  nop                              #  47    0x11b4f2  1      OPC=nop             
  nop                              #  48    0x11b4f3  1      OPC=nop             
  nop                              #  49    0x11b4f4  1      OPC=nop             
  nop                              #  50    0x11b4f5  1      OPC=nop             
  nop                              #  51    0x11b4f6  1      OPC=nop             
  nop                              #  52    0x11b4f7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  53    0x11b4f8  6      OPC=andl_r32_imm32  
  nop                              #  54    0x11b4fe  1      OPC=nop             
  nop                              #  55    0x11b4ff  1      OPC=nop             
  nop                              #  56    0x11b500  1      OPC=nop             
  addq %r15, %rax                  #  57    0x11b501  3      OPC=addq_r64_r64    
  callq %rax                       #  58    0x11b504  2      OPC=callq_r64       
  testl %ebx, %ebx                 #  59    0x11b506  2      OPC=testl_r32_r32   
  jne .L_11b4e0                    #  60    0x11b508  2      OPC=jne_label       
  nop                              #  61    0x11b50a  1      OPC=nop             
  nop                              #  62    0x11b50b  1      OPC=nop             
  nop                              #  63    0x11b50c  1      OPC=nop             
  nop                              #  64    0x11b50d  1      OPC=nop             
  nop                              #  65    0x11b50e  1      OPC=nop             
  nop                              #  66    0x11b50f  1      OPC=nop             
  nop                              #  67    0x11b510  1      OPC=nop             
  nop                              #  68    0x11b511  1      OPC=nop             
  nop                              #  69    0x11b512  1      OPC=nop             
  nop                              #  70    0x11b513  1      OPC=nop             
  nop                              #  71    0x11b514  1      OPC=nop             
  nop                              #  72    0x11b515  1      OPC=nop             
  nop                              #  73    0x11b516  1      OPC=nop             
  nop                              #  74    0x11b517  1      OPC=nop             
  nop                              #  75    0x11b518  1      OPC=nop             
  nop                              #  76    0x11b519  1      OPC=nop             
  nop                              #  77    0x11b51a  1      OPC=nop             
  nop                              #  78    0x11b51b  1      OPC=nop             
  nop                              #  79    0x11b51c  1      OPC=nop             
  nop                              #  80    0x11b51d  1      OPC=nop             
  nop                              #  81    0x11b51e  1      OPC=nop             
  nop                              #  82    0x11b51f  1      OPC=nop             
  nop                              #  83    0x11b520  1      OPC=nop             
  nop                              #  84    0x11b521  1      OPC=nop             
  nop                              #  85    0x11b522  1      OPC=nop             
  nop                              #  86    0x11b523  1      OPC=nop             
  nop                              #  87    0x11b524  1      OPC=nop             
  nop                              #  88    0x11b525  1      OPC=nop             
.L_11b520:                         #        0x11b526  0      OPC=<label>         
  addl $0x8, %esp                  #  89    0x11b526  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  90    0x11b529  3      OPC=addq_r64_r64    
  popq %rbx                        #  91    0x11b52c  1      OPC=popq_r64_1      
  popq %r12                        #  92    0x11b52d  2      OPC=popq_r64_1      
  jmpq ._fini                      #  93    0x11b52f  5      OPC=jmpq_label_1    
  nop                              #  94    0x11b534  1      OPC=nop             
  nop                              #  95    0x11b535  1      OPC=nop             
  nop                              #  96    0x11b536  1      OPC=nop             
  nop                              #  97    0x11b537  1      OPC=nop             
  nop                              #  98    0x11b538  1      OPC=nop             
  nop                              #  99    0x11b539  1      OPC=nop             
  nop                              #  100   0x11b53a  1      OPC=nop             
  nop                              #  101   0x11b53b  1      OPC=nop             
  nop                              #  102   0x11b53c  1      OPC=nop             
  nop                              #  103   0x11b53d  1      OPC=nop             
  nop                              #  104   0x11b53e  1      OPC=nop             
  nop                              #  105   0x11b53f  1      OPC=nop             
  nop                              #  106   0x11b540  1      OPC=nop             
  nop                              #  107   0x11b541  1      OPC=nop             
  nop                              #  108   0x11b542  1      OPC=nop             
  nop                              #  109   0x11b543  1      OPC=nop             
  nop                              #  110   0x11b544  1      OPC=nop             
  nop                              #  111   0x11b545  1      OPC=nop             
                                                                                 
.size __libc_fini_array, .-__libc_fini_array

