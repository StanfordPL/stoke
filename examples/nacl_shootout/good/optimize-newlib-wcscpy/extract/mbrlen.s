  .text
  .globl mbrlen
  .type mbrlen, @function

#! file-offset 0x197ec0
#! rip-offset  0x157ec0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.mbrlen:                    #        0x157ec0  0      OPC=<label>         
  pushq %rbx                #  1     0x157ec0  1      OPC=pushq_r64_1     
  movl %edx, %ecx           #  2     0x157ec1  2      OPC=movl_r32_r32    
  movl %edi, %ebx           #  3     0x157ec3  2      OPC=movl_r32_r32    
  subl $0x10, %esp          #  4     0x157ec5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  5     0x157ec8  3      OPC=addq_r64_r64    
  testq %rcx, %rcx          #  6     0x157ecb  3      OPC=testq_r64_r64   
  je .L_157f00              #  7     0x157ece  2      OPC=je_label        
  movl %esi, %edx           #  8     0x157ed0  2      OPC=movl_r32_r32    
  addl $0x10, %esp          #  9     0x157ed2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  10    0x157ed5  3      OPC=addq_r64_r64    
  movl %ebx, %esi           #  11    0x157ed8  2      OPC=movl_r32_r32    
  popq %rbx                 #  12    0x157eda  1      OPC=popq_r64_1      
  xorl %edi, %edi           #  13    0x157edb  2      OPC=xorl_r32_r32    
  nop                       #  14    0x157edd  1      OPC=nop             
  nop                       #  15    0x157ede  1      OPC=nop             
  nop                       #  16    0x157edf  1      OPC=nop             
  jmpq .mbrtowc             #  17    0x157ee0  5      OPC=jmpq_label_1    
  nop                       #  18    0x157ee5  1      OPC=nop             
  nop                       #  19    0x157ee6  1      OPC=nop             
  nop                       #  20    0x157ee7  1      OPC=nop             
  nop                       #  21    0x157ee8  1      OPC=nop             
  nop                       #  22    0x157ee9  1      OPC=nop             
  nop                       #  23    0x157eea  1      OPC=nop             
  nop                       #  24    0x157eeb  1      OPC=nop             
  nop                       #  25    0x157eec  1      OPC=nop             
  nop                       #  26    0x157eed  1      OPC=nop             
  nop                       #  27    0x157eee  1      OPC=nop             
  nop                       #  28    0x157eef  1      OPC=nop             
  nop                       #  29    0x157ef0  1      OPC=nop             
  nop                       #  30    0x157ef1  1      OPC=nop             
  nop                       #  31    0x157ef2  1      OPC=nop             
  nop                       #  32    0x157ef3  1      OPC=nop             
  nop                       #  33    0x157ef4  1      OPC=nop             
  nop                       #  34    0x157ef5  1      OPC=nop             
  nop                       #  35    0x157ef6  1      OPC=nop             
  nop                       #  36    0x157ef7  1      OPC=nop             
  nop                       #  37    0x157ef8  1      OPC=nop             
  nop                       #  38    0x157ef9  1      OPC=nop             
  nop                       #  39    0x157efa  1      OPC=nop             
  nop                       #  40    0x157efb  1      OPC=nop             
  nop                       #  41    0x157efc  1      OPC=nop             
  nop                       #  42    0x157efd  1      OPC=nop             
  nop                       #  43    0x157efe  1      OPC=nop             
  nop                       #  44    0x157eff  1      OPC=nop             
.L_157f00:                  #        0x157f00  0      OPC=<label>         
  movl %esi, 0x8(%rsp)      #  45    0x157f00  4      OPC=movl_m32_r32    
  nop                       #  46    0x157f04  1      OPC=nop             
  nop                       #  47    0x157f05  1      OPC=nop             
  nop                       #  48    0x157f06  1      OPC=nop             
  nop                       #  49    0x157f07  1      OPC=nop             
  nop                       #  50    0x157f08  1      OPC=nop             
  nop                       #  51    0x157f09  1      OPC=nop             
  nop                       #  52    0x157f0a  1      OPC=nop             
  nop                       #  53    0x157f0b  1      OPC=nop             
  nop                       #  54    0x157f0c  1      OPC=nop             
  nop                       #  55    0x157f0d  1      OPC=nop             
  nop                       #  56    0x157f0e  1      OPC=nop             
  nop                       #  57    0x157f0f  1      OPC=nop             
  nop                       #  58    0x157f10  1      OPC=nop             
  nop                       #  59    0x157f11  1      OPC=nop             
  nop                       #  60    0x157f12  1      OPC=nop             
  nop                       #  61    0x157f13  1      OPC=nop             
  nop                       #  62    0x157f14  1      OPC=nop             
  nop                       #  63    0x157f15  1      OPC=nop             
  nop                       #  64    0x157f16  1      OPC=nop             
  nop                       #  65    0x157f17  1      OPC=nop             
  nop                       #  66    0x157f18  1      OPC=nop             
  nop                       #  67    0x157f19  1      OPC=nop             
  nop                       #  68    0x157f1a  1      OPC=nop             
  callq .__nacl_read_tp     #  69    0x157f1b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  70    0x157f20  7      OPC=leaq_r64_m16    
  movl 0x8(%rsp), %esi      #  71    0x157f27  4      OPC=movl_r32_m32    
  xorl %edi, %edi           #  72    0x157f2b  2      OPC=xorl_r32_r32    
  movl %esi, %edx           #  73    0x157f2d  2      OPC=movl_r32_r32    
  movl %ebx, %esi           #  74    0x157f2f  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  75    0x157f31  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx  #  76    0x157f33  4      OPC=movl_r32_m32    
  addl $0x10, %esp          #  77    0x157f37  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  78    0x157f3a  3      OPC=addq_r64_r64    
  popq %rbx                 #  79    0x157f3d  1      OPC=popq_r64_1      
  xchgw %ax, %ax            #  80    0x157f3e  2      OPC=xchgw_ax_r16    
  addl $0xfc, %ecx          #  81    0x157f40  6      OPC=addl_r32_imm32  
  jmpq .mbrtowc             #  82    0x157f46  5      OPC=jmpq_label_1    
  nop                       #  83    0x157f4b  1      OPC=nop             
  nop                       #  84    0x157f4c  1      OPC=nop             
  nop                       #  85    0x157f4d  1      OPC=nop             
  nop                       #  86    0x157f4e  1      OPC=nop             
  nop                       #  87    0x157f4f  1      OPC=nop             
  nop                       #  88    0x157f50  1      OPC=nop             
  nop                       #  89    0x157f51  1      OPC=nop             
  nop                       #  90    0x157f52  1      OPC=nop             
  nop                       #  91    0x157f53  1      OPC=nop             
  nop                       #  92    0x157f54  1      OPC=nop             
  nop                       #  93    0x157f55  1      OPC=nop             
  nop                       #  94    0x157f56  1      OPC=nop             
  nop                       #  95    0x157f57  1      OPC=nop             
  nop                       #  96    0x157f58  1      OPC=nop             
  nop                       #  97    0x157f59  1      OPC=nop             
  nop                       #  98    0x157f5a  1      OPC=nop             
  nop                       #  99    0x157f5b  1      OPC=nop             
  nop                       #  100   0x157f5c  1      OPC=nop             
  nop                       #  101   0x157f5d  1      OPC=nop             
  nop                       #  102   0x157f5e  1      OPC=nop             
  nop                       #  103   0x157f5f  1      OPC=nop             
                                                                          
.size mbrlen, .-mbrlen

