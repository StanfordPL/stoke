  .text
  .globl _ZNSt10moneypunctIwLb0EED2Ev
  .type _ZNSt10moneypunctIwLb0EED2Ev, @function

#! file-offset 0x11bd00
#! rip-offset  0xdbd00
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EED2Ev:     #        0xdbd00  0      OPC=<label>         
  pushq %rbx                       #  1     0xdbd00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdbd01  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdbd03  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdbd06  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdbd09  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdbd0b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdbd10  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)  #  8     0xdbd12  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdbd1a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdbd1d  1      OPC=nop             
  nop                              #  11    0xdbd1e  1      OPC=nop             
  nop                              #  12    0xdbd1f  1      OPC=nop             
  je .L_dbd40                      #  13    0xdbd20  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdbd22  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdbd24  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdbd28  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdbd2a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdbd2f  1      OPC=nop             
  nop                              #  19    0xdbd30  1      OPC=nop             
  nop                              #  20    0xdbd31  1      OPC=nop             
  nop                              #  21    0xdbd32  1      OPC=nop             
  nop                              #  22    0xdbd33  1      OPC=nop             
  nop                              #  23    0xdbd34  1      OPC=nop             
  nop                              #  24    0xdbd35  1      OPC=nop             
  nop                              #  25    0xdbd36  1      OPC=nop             
  nop                              #  26    0xdbd37  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdbd38  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdbd3e  1      OPC=nop             
  nop                              #  29    0xdbd3f  1      OPC=nop             
  nop                              #  30    0xdbd40  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdbd41  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdbd44  2      OPC=callq_r64       
.L_dbd40:                          #        0xdbd46  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdbd46  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdbd48  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdbd4b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdbd4e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdbd4f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdbd54  1      OPC=nop             
  nop                              #  39    0xdbd55  1      OPC=nop             
  nop                              #  40    0xdbd56  1      OPC=nop             
  nop                              #  41    0xdbd57  1      OPC=nop             
  nop                              #  42    0xdbd58  1      OPC=nop             
  nop                              #  43    0xdbd59  1      OPC=nop             
  nop                              #  44    0xdbd5a  1      OPC=nop             
  nop                              #  45    0xdbd5b  1      OPC=nop             
  nop                              #  46    0xdbd5c  1      OPC=nop             
  nop                              #  47    0xdbd5d  1      OPC=nop             
  nop                              #  48    0xdbd5e  1      OPC=nop             
  nop                              #  49    0xdbd5f  1      OPC=nop             
  nop                              #  50    0xdbd60  1      OPC=nop             
  nop                              #  51    0xdbd61  1      OPC=nop             
  nop                              #  52    0xdbd62  1      OPC=nop             
  nop                              #  53    0xdbd63  1      OPC=nop             
  nop                              #  54    0xdbd64  1      OPC=nop             
  nop                              #  55    0xdbd65  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdbd66  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdbd68  4      OPC=movl_m32_r32    
  nop                              #  58    0xdbd6c  1      OPC=nop             
  nop                              #  59    0xdbd6d  1      OPC=nop             
  nop                              #  60    0xdbd6e  1      OPC=nop             
  nop                              #  61    0xdbd6f  1      OPC=nop             
  nop                              #  62    0xdbd70  1      OPC=nop             
  nop                              #  63    0xdbd71  1      OPC=nop             
  nop                              #  64    0xdbd72  1      OPC=nop             
  nop                              #  65    0xdbd73  1      OPC=nop             
  nop                              #  66    0xdbd74  1      OPC=nop             
  nop                              #  67    0xdbd75  1      OPC=nop             
  nop                              #  68    0xdbd76  1      OPC=nop             
  nop                              #  69    0xdbd77  1      OPC=nop             
  nop                              #  70    0xdbd78  1      OPC=nop             
  nop                              #  71    0xdbd79  1      OPC=nop             
  nop                              #  72    0xdbd7a  1      OPC=nop             
  nop                              #  73    0xdbd7b  1      OPC=nop             
  nop                              #  74    0xdbd7c  1      OPC=nop             
  nop                              #  75    0xdbd7d  1      OPC=nop             
  nop                              #  76    0xdbd7e  1      OPC=nop             
  nop                              #  77    0xdbd7f  1      OPC=nop             
  nop                              #  78    0xdbd80  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdbd81  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdbd86  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdbd8a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdbd8c  1      OPC=nop             
  nop                              #  83    0xdbd8d  1      OPC=nop             
  nop                              #  84    0xdbd8e  1      OPC=nop             
  nop                              #  85    0xdbd8f  1      OPC=nop             
  nop                              #  86    0xdbd90  1      OPC=nop             
  nop                              #  87    0xdbd91  1      OPC=nop             
  nop                              #  88    0xdbd92  1      OPC=nop             
  nop                              #  89    0xdbd93  1      OPC=nop             
  nop                              #  90    0xdbd94  1      OPC=nop             
  nop                              #  91    0xdbd95  1      OPC=nop             
  nop                              #  92    0xdbd96  1      OPC=nop             
  nop                              #  93    0xdbd97  1      OPC=nop             
  nop                              #  94    0xdbd98  1      OPC=nop             
  nop                              #  95    0xdbd99  1      OPC=nop             
  nop                              #  96    0xdbd9a  1      OPC=nop             
  nop                              #  97    0xdbd9b  1      OPC=nop             
  nop                              #  98    0xdbd9c  1      OPC=nop             
  nop                              #  99    0xdbd9d  1      OPC=nop             
  nop                              #  100   0xdbd9e  1      OPC=nop             
  nop                              #  101   0xdbd9f  1      OPC=nop             
  nop                              #  102   0xdbda0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdbda1  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb0EED2Ev, .-_ZNSt10moneypunctIwLb0EED2Ev

