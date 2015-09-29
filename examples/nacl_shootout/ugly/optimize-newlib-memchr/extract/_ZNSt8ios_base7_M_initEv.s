  .text
  .globl _ZNSt8ios_base7_M_initEv
  .type _ZNSt8ios_base7_M_initEv, @function

#! file-offset 0x1294a0
#! rip-offset  0xe94a0
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base7_M_initEv:        #        0xe94a0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)          #  1     0xe94a0  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)           #  2     0xe94a5  5      OPC=movq_m64_r64    
  subl $0x28, %esp                #  3     0xe94aa  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                 #  4     0xe94ad  3      OPC=addq_r64_r64    
  movl %edi, %r12d                #  5     0xe94b0  3      OPC=movl_r32_r32    
  movl %esp, %edi                 #  6     0xe94b3  2      OPC=movl_r32_r32    
  nop                             #  7     0xe94b5  1      OPC=nop             
  nop                             #  8     0xe94b6  1      OPC=nop             
  nop                             #  9     0xe94b7  1      OPC=nop             
  nop                             #  10    0xe94b8  1      OPC=nop             
  nop                             #  11    0xe94b9  1      OPC=nop             
  nop                             #  12    0xe94ba  1      OPC=nop             
  nop                             #  13    0xe94bb  1      OPC=nop             
  nop                             #  14    0xe94bc  1      OPC=nop             
  nop                             #  15    0xe94bd  1      OPC=nop             
  nop                             #  16    0xe94be  1      OPC=nop             
  nop                             #  17    0xe94bf  1      OPC=nop             
  movl %r12d, %r12d               #  18    0xe94c0  3      OPC=movl_r32_r32    
  movl $0x6, 0x4(%r15,%r12,1)     #  19    0xe94c3  9      OPC=movl_m32_imm32  
  movl %r12d, %r12d               #  20    0xe94cc  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r12,1)     #  21    0xe94cf  9      OPC=movl_m32_imm32  
  nop                             #  22    0xe94d8  1      OPC=nop             
  nop                             #  23    0xe94d9  1      OPC=nop             
  nop                             #  24    0xe94da  1      OPC=nop             
  nop                             #  25    0xe94db  1      OPC=nop             
  nop                             #  26    0xe94dc  1      OPC=nop             
  nop                             #  27    0xe94dd  1      OPC=nop             
  nop                             #  28    0xe94de  1      OPC=nop             
  nop                             #  29    0xe94df  1      OPC=nop             
  movl %r12d, %r12d               #  30    0xe94e0  3      OPC=movl_r32_r32    
  movl $0x1002, 0xc(%r15,%r12,1)  #  31    0xe94e3  9      OPC=movl_m32_imm32  
  nop                             #  32    0xe94ec  1      OPC=nop             
  nop                             #  33    0xe94ed  1      OPC=nop             
  nop                             #  34    0xe94ee  1      OPC=nop             
  nop                             #  35    0xe94ef  1      OPC=nop             
  nop                             #  36    0xe94f0  1      OPC=nop             
  nop                             #  37    0xe94f1  1      OPC=nop             
  nop                             #  38    0xe94f2  1      OPC=nop             
  nop                             #  39    0xe94f3  1      OPC=nop             
  nop                             #  40    0xe94f4  1      OPC=nop             
  nop                             #  41    0xe94f5  1      OPC=nop             
  nop                             #  42    0xe94f6  1      OPC=nop             
  nop                             #  43    0xe94f7  1      OPC=nop             
  nop                             #  44    0xe94f8  1      OPC=nop             
  nop                             #  45    0xe94f9  1      OPC=nop             
  nop                             #  46    0xe94fa  1      OPC=nop             
  callq ._ZNSt6localeC1Ev         #  47    0xe94fb  5      OPC=callq_label     
  leal 0x6c(%r12), %edi           #  48    0xe9500  5      OPC=leal_r32_m16    
  movl %esp, %esi                 #  49    0xe9505  2      OPC=movl_r32_r32    
  nop                             #  50    0xe9507  1      OPC=nop             
  nop                             #  51    0xe9508  1      OPC=nop             
  nop                             #  52    0xe9509  1      OPC=nop             
  nop                             #  53    0xe950a  1      OPC=nop             
  nop                             #  54    0xe950b  1      OPC=nop             
  nop                             #  55    0xe950c  1      OPC=nop             
  nop                             #  56    0xe950d  1      OPC=nop             
  nop                             #  57    0xe950e  1      OPC=nop             
  nop                             #  58    0xe950f  1      OPC=nop             
  nop                             #  59    0xe9510  1      OPC=nop             
  nop                             #  60    0xe9511  1      OPC=nop             
  nop                             #  61    0xe9512  1      OPC=nop             
  nop                             #  62    0xe9513  1      OPC=nop             
  nop                             #  63    0xe9514  1      OPC=nop             
  nop                             #  64    0xe9515  1      OPC=nop             
  nop                             #  65    0xe9516  1      OPC=nop             
  nop                             #  66    0xe9517  1      OPC=nop             
  nop                             #  67    0xe9518  1      OPC=nop             
  nop                             #  68    0xe9519  1      OPC=nop             
  nop                             #  69    0xe951a  1      OPC=nop             
  callq ._ZNSt6localeaSERKS_      #  70    0xe951b  5      OPC=callq_label     
  movl %esp, %edi                 #  71    0xe9520  2      OPC=movl_r32_r32    
  nop                             #  72    0xe9522  1      OPC=nop             
  nop                             #  73    0xe9523  1      OPC=nop             
  nop                             #  74    0xe9524  1      OPC=nop             
  nop                             #  75    0xe9525  1      OPC=nop             
  nop                             #  76    0xe9526  1      OPC=nop             
  nop                             #  77    0xe9527  1      OPC=nop             
  nop                             #  78    0xe9528  1      OPC=nop             
  nop                             #  79    0xe9529  1      OPC=nop             
  nop                             #  80    0xe952a  1      OPC=nop             
  nop                             #  81    0xe952b  1      OPC=nop             
  nop                             #  82    0xe952c  1      OPC=nop             
  nop                             #  83    0xe952d  1      OPC=nop             
  nop                             #  84    0xe952e  1      OPC=nop             
  nop                             #  85    0xe952f  1      OPC=nop             
  nop                             #  86    0xe9530  1      OPC=nop             
  nop                             #  87    0xe9531  1      OPC=nop             
  nop                             #  88    0xe9532  1      OPC=nop             
  nop                             #  89    0xe9533  1      OPC=nop             
  nop                             #  90    0xe9534  1      OPC=nop             
  nop                             #  91    0xe9535  1      OPC=nop             
  nop                             #  92    0xe9536  1      OPC=nop             
  nop                             #  93    0xe9537  1      OPC=nop             
  nop                             #  94    0xe9538  1      OPC=nop             
  nop                             #  95    0xe9539  1      OPC=nop             
  nop                             #  96    0xe953a  1      OPC=nop             
  callq ._ZNSt6localeD1Ev         #  97    0xe953b  5      OPC=callq_label     
  movq 0x18(%rsp), %rbx           #  98    0xe9540  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12           #  99    0xe9545  5      OPC=movq_r64_m64    
  addl $0x28, %esp                #  100   0xe954a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  101   0xe954d  3      OPC=addq_r64_r64    
  popq %r11                       #  102   0xe9550  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  103   0xe9552  7      OPC=andl_r32_imm32  
  nop                             #  104   0xe9559  1      OPC=nop             
  nop                             #  105   0xe955a  1      OPC=nop             
  nop                             #  106   0xe955b  1      OPC=nop             
  nop                             #  107   0xe955c  1      OPC=nop             
  addq %r15, %r11                 #  108   0xe955d  3      OPC=addq_r64_r64    
  jmpq %r11                       #  109   0xe9560  3      OPC=jmpq_r64        
  nop                             #  110   0xe9563  1      OPC=nop             
  nop                             #  111   0xe9564  1      OPC=nop             
  nop                             #  112   0xe9565  1      OPC=nop             
  nop                             #  113   0xe9566  1      OPC=nop             
                                                                               
.size _ZNSt8ios_base7_M_initEv, .-_ZNSt8ios_base7_M_initEv

