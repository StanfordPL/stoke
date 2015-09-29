  .text
  .globl _ZNSt8numpunctIwED1Ev
  .type _ZNSt8numpunctIwED1Ev, @function

#! file-offset 0x11ce60
#! rip-offset  0xdce60
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwED1Ev:            #        0xdce60  0      OPC=<label>         
  pushq %rbx                       #  1     0xdce60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdce61  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdce63  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdce66  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdce69  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdce6b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdce70  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)  #  8     0xdce72  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdce7a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdce7d  1      OPC=nop             
  nop                              #  11    0xdce7e  1      OPC=nop             
  nop                              #  12    0xdce7f  1      OPC=nop             
  je .L_dcea0                      #  13    0xdce80  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdce82  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdce84  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdce88  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdce8a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdce8f  1      OPC=nop             
  nop                              #  19    0xdce90  1      OPC=nop             
  nop                              #  20    0xdce91  1      OPC=nop             
  nop                              #  21    0xdce92  1      OPC=nop             
  nop                              #  22    0xdce93  1      OPC=nop             
  nop                              #  23    0xdce94  1      OPC=nop             
  nop                              #  24    0xdce95  1      OPC=nop             
  nop                              #  25    0xdce96  1      OPC=nop             
  nop                              #  26    0xdce97  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdce98  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdce9e  1      OPC=nop             
  nop                              #  29    0xdce9f  1      OPC=nop             
  nop                              #  30    0xdcea0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdcea1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdcea4  2      OPC=callq_r64       
.L_dcea0:                          #        0xdcea6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdcea6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdcea8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdceab  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdceae  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdceaf  5      OPC=jmpq_label_1    
  nop                              #  38    0xdceb4  1      OPC=nop             
  nop                              #  39    0xdceb5  1      OPC=nop             
  nop                              #  40    0xdceb6  1      OPC=nop             
  nop                              #  41    0xdceb7  1      OPC=nop             
  nop                              #  42    0xdceb8  1      OPC=nop             
  nop                              #  43    0xdceb9  1      OPC=nop             
  nop                              #  44    0xdceba  1      OPC=nop             
  nop                              #  45    0xdcebb  1      OPC=nop             
  nop                              #  46    0xdcebc  1      OPC=nop             
  nop                              #  47    0xdcebd  1      OPC=nop             
  nop                              #  48    0xdcebe  1      OPC=nop             
  nop                              #  49    0xdcebf  1      OPC=nop             
  nop                              #  50    0xdcec0  1      OPC=nop             
  nop                              #  51    0xdcec1  1      OPC=nop             
  nop                              #  52    0xdcec2  1      OPC=nop             
  nop                              #  53    0xdcec3  1      OPC=nop             
  nop                              #  54    0xdcec4  1      OPC=nop             
  nop                              #  55    0xdcec5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdcec6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdcec8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdcecc  1      OPC=nop             
  nop                              #  59    0xdcecd  1      OPC=nop             
  nop                              #  60    0xdcece  1      OPC=nop             
  nop                              #  61    0xdcecf  1      OPC=nop             
  nop                              #  62    0xdced0  1      OPC=nop             
  nop                              #  63    0xdced1  1      OPC=nop             
  nop                              #  64    0xdced2  1      OPC=nop             
  nop                              #  65    0xdced3  1      OPC=nop             
  nop                              #  66    0xdced4  1      OPC=nop             
  nop                              #  67    0xdced5  1      OPC=nop             
  nop                              #  68    0xdced6  1      OPC=nop             
  nop                              #  69    0xdced7  1      OPC=nop             
  nop                              #  70    0xdced8  1      OPC=nop             
  nop                              #  71    0xdced9  1      OPC=nop             
  nop                              #  72    0xdceda  1      OPC=nop             
  nop                              #  73    0xdcedb  1      OPC=nop             
  nop                              #  74    0xdcedc  1      OPC=nop             
  nop                              #  75    0xdcedd  1      OPC=nop             
  nop                              #  76    0xdcede  1      OPC=nop             
  nop                              #  77    0xdcedf  1      OPC=nop             
  nop                              #  78    0xdcee0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdcee1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdcee6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdceea  2      OPC=movl_r32_r32    
  nop                              #  82    0xdceec  1      OPC=nop             
  nop                              #  83    0xdceed  1      OPC=nop             
  nop                              #  84    0xdceee  1      OPC=nop             
  nop                              #  85    0xdceef  1      OPC=nop             
  nop                              #  86    0xdcef0  1      OPC=nop             
  nop                              #  87    0xdcef1  1      OPC=nop             
  nop                              #  88    0xdcef2  1      OPC=nop             
  nop                              #  89    0xdcef3  1      OPC=nop             
  nop                              #  90    0xdcef4  1      OPC=nop             
  nop                              #  91    0xdcef5  1      OPC=nop             
  nop                              #  92    0xdcef6  1      OPC=nop             
  nop                              #  93    0xdcef7  1      OPC=nop             
  nop                              #  94    0xdcef8  1      OPC=nop             
  nop                              #  95    0xdcef9  1      OPC=nop             
  nop                              #  96    0xdcefa  1      OPC=nop             
  nop                              #  97    0xdcefb  1      OPC=nop             
  nop                              #  98    0xdcefc  1      OPC=nop             
  nop                              #  99    0xdcefd  1      OPC=nop             
  nop                              #  100   0xdcefe  1      OPC=nop             
  nop                              #  101   0xdceff  1      OPC=nop             
  nop                              #  102   0xdcf00  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdcf01  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIwED1Ev, .-_ZNSt8numpunctIwED1Ev

