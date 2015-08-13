  .text
  .globl _ZNSt8ios_base7_M_initEv
  .type _ZNSt8ios_base7_M_initEv, @function

#! file-offset 0x128a80
#! rip-offset  0xe8a80
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base7_M_initEv:        #        0xe8a80  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)          #  1     0xe8a80  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)           #  2     0xe8a85  5      OPC=movq_m64_r64    
  subl $0x28, %esp                #  3     0xe8a8a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                 #  4     0xe8a8d  3      OPC=addq_r64_r64    
  movl %edi, %r12d                #  5     0xe8a90  3      OPC=movl_r32_r32    
  movl %esp, %edi                 #  6     0xe8a93  2      OPC=movl_r32_r32    
  nop                             #  7     0xe8a95  1      OPC=nop             
  nop                             #  8     0xe8a96  1      OPC=nop             
  nop                             #  9     0xe8a97  1      OPC=nop             
  nop                             #  10    0xe8a98  1      OPC=nop             
  nop                             #  11    0xe8a99  1      OPC=nop             
  nop                             #  12    0xe8a9a  1      OPC=nop             
  nop                             #  13    0xe8a9b  1      OPC=nop             
  nop                             #  14    0xe8a9c  1      OPC=nop             
  nop                             #  15    0xe8a9d  1      OPC=nop             
  nop                             #  16    0xe8a9e  1      OPC=nop             
  nop                             #  17    0xe8a9f  1      OPC=nop             
  movl %r12d, %r12d               #  18    0xe8aa0  3      OPC=movl_r32_r32    
  movl $0x6, 0x4(%r15,%r12,1)     #  19    0xe8aa3  9      OPC=movl_m32_imm32  
  movl %r12d, %r12d               #  20    0xe8aac  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r12,1)     #  21    0xe8aaf  9      OPC=movl_m32_imm32  
  nop                             #  22    0xe8ab8  1      OPC=nop             
  nop                             #  23    0xe8ab9  1      OPC=nop             
  nop                             #  24    0xe8aba  1      OPC=nop             
  nop                             #  25    0xe8abb  1      OPC=nop             
  nop                             #  26    0xe8abc  1      OPC=nop             
  nop                             #  27    0xe8abd  1      OPC=nop             
  nop                             #  28    0xe8abe  1      OPC=nop             
  nop                             #  29    0xe8abf  1      OPC=nop             
  movl %r12d, %r12d               #  30    0xe8ac0  3      OPC=movl_r32_r32    
  movl $0x1002, 0xc(%r15,%r12,1)  #  31    0xe8ac3  9      OPC=movl_m32_imm32  
  nop                             #  32    0xe8acc  1      OPC=nop             
  nop                             #  33    0xe8acd  1      OPC=nop             
  nop                             #  34    0xe8ace  1      OPC=nop             
  nop                             #  35    0xe8acf  1      OPC=nop             
  nop                             #  36    0xe8ad0  1      OPC=nop             
  nop                             #  37    0xe8ad1  1      OPC=nop             
  nop                             #  38    0xe8ad2  1      OPC=nop             
  nop                             #  39    0xe8ad3  1      OPC=nop             
  nop                             #  40    0xe8ad4  1      OPC=nop             
  nop                             #  41    0xe8ad5  1      OPC=nop             
  nop                             #  42    0xe8ad6  1      OPC=nop             
  nop                             #  43    0xe8ad7  1      OPC=nop             
  nop                             #  44    0xe8ad8  1      OPC=nop             
  nop                             #  45    0xe8ad9  1      OPC=nop             
  nop                             #  46    0xe8ada  1      OPC=nop             
  callq ._ZNSt6localeC1Ev         #  47    0xe8adb  5      OPC=callq_label     
  leal 0x6c(%r12), %edi           #  48    0xe8ae0  5      OPC=leal_r32_m16    
  movl %esp, %esi                 #  49    0xe8ae5  2      OPC=movl_r32_r32    
  nop                             #  50    0xe8ae7  1      OPC=nop             
  nop                             #  51    0xe8ae8  1      OPC=nop             
  nop                             #  52    0xe8ae9  1      OPC=nop             
  nop                             #  53    0xe8aea  1      OPC=nop             
  nop                             #  54    0xe8aeb  1      OPC=nop             
  nop                             #  55    0xe8aec  1      OPC=nop             
  nop                             #  56    0xe8aed  1      OPC=nop             
  nop                             #  57    0xe8aee  1      OPC=nop             
  nop                             #  58    0xe8aef  1      OPC=nop             
  nop                             #  59    0xe8af0  1      OPC=nop             
  nop                             #  60    0xe8af1  1      OPC=nop             
  nop                             #  61    0xe8af2  1      OPC=nop             
  nop                             #  62    0xe8af3  1      OPC=nop             
  nop                             #  63    0xe8af4  1      OPC=nop             
  nop                             #  64    0xe8af5  1      OPC=nop             
  nop                             #  65    0xe8af6  1      OPC=nop             
  nop                             #  66    0xe8af7  1      OPC=nop             
  nop                             #  67    0xe8af8  1      OPC=nop             
  nop                             #  68    0xe8af9  1      OPC=nop             
  nop                             #  69    0xe8afa  1      OPC=nop             
  callq ._ZNSt6localeaSERKS_      #  70    0xe8afb  5      OPC=callq_label     
  movl %esp, %edi                 #  71    0xe8b00  2      OPC=movl_r32_r32    
  nop                             #  72    0xe8b02  1      OPC=nop             
  nop                             #  73    0xe8b03  1      OPC=nop             
  nop                             #  74    0xe8b04  1      OPC=nop             
  nop                             #  75    0xe8b05  1      OPC=nop             
  nop                             #  76    0xe8b06  1      OPC=nop             
  nop                             #  77    0xe8b07  1      OPC=nop             
  nop                             #  78    0xe8b08  1      OPC=nop             
  nop                             #  79    0xe8b09  1      OPC=nop             
  nop                             #  80    0xe8b0a  1      OPC=nop             
  nop                             #  81    0xe8b0b  1      OPC=nop             
  nop                             #  82    0xe8b0c  1      OPC=nop             
  nop                             #  83    0xe8b0d  1      OPC=nop             
  nop                             #  84    0xe8b0e  1      OPC=nop             
  nop                             #  85    0xe8b0f  1      OPC=nop             
  nop                             #  86    0xe8b10  1      OPC=nop             
  nop                             #  87    0xe8b11  1      OPC=nop             
  nop                             #  88    0xe8b12  1      OPC=nop             
  nop                             #  89    0xe8b13  1      OPC=nop             
  nop                             #  90    0xe8b14  1      OPC=nop             
  nop                             #  91    0xe8b15  1      OPC=nop             
  nop                             #  92    0xe8b16  1      OPC=nop             
  nop                             #  93    0xe8b17  1      OPC=nop             
  nop                             #  94    0xe8b18  1      OPC=nop             
  nop                             #  95    0xe8b19  1      OPC=nop             
  nop                             #  96    0xe8b1a  1      OPC=nop             
  callq ._ZNSt6localeD1Ev         #  97    0xe8b1b  5      OPC=callq_label     
  movq 0x18(%rsp), %rbx           #  98    0xe8b20  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12           #  99    0xe8b25  5      OPC=movq_r64_m64    
  addl $0x28, %esp                #  100   0xe8b2a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  101   0xe8b2d  3      OPC=addq_r64_r64    
  popq %r11                       #  102   0xe8b30  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  103   0xe8b32  7      OPC=andl_r32_imm32  
  nop                             #  104   0xe8b39  1      OPC=nop             
  nop                             #  105   0xe8b3a  1      OPC=nop             
  nop                             #  106   0xe8b3b  1      OPC=nop             
  nop                             #  107   0xe8b3c  1      OPC=nop             
  addq %r15, %r11                 #  108   0xe8b3d  3      OPC=addq_r64_r64    
  jmpq %r11                       #  109   0xe8b40  3      OPC=jmpq_r64        
  nop                             #  110   0xe8b43  1      OPC=nop             
  nop                             #  111   0xe8b44  1      OPC=nop             
  nop                             #  112   0xe8b45  1      OPC=nop             
  nop                             #  113   0xe8b46  1      OPC=nop             
                                                                               
.size _ZNSt8ios_base7_M_initEv, .-_ZNSt8ios_base7_M_initEv

