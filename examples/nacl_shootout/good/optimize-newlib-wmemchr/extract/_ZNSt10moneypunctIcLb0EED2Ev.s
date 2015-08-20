  .text
  .globl _ZNSt10moneypunctIcLb0EED2Ev
  .type _ZNSt10moneypunctIcLb0EED2Ev, @function

#! file-offset 0x11b860
#! rip-offset  0xdb860
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EED2Ev:     #        0xdb860  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb860  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb861  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb863  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb866  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb869  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb86b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb870  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)  #  8     0xdb872  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb87a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb87d  1      OPC=nop             
  nop                              #  11    0xdb87e  1      OPC=nop             
  nop                              #  12    0xdb87f  1      OPC=nop             
  je .L_db8a0                      #  13    0xdb880  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb882  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb884  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb888  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb88a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb88f  1      OPC=nop             
  nop                              #  19    0xdb890  1      OPC=nop             
  nop                              #  20    0xdb891  1      OPC=nop             
  nop                              #  21    0xdb892  1      OPC=nop             
  nop                              #  22    0xdb893  1      OPC=nop             
  nop                              #  23    0xdb894  1      OPC=nop             
  nop                              #  24    0xdb895  1      OPC=nop             
  nop                              #  25    0xdb896  1      OPC=nop             
  nop                              #  26    0xdb897  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb898  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb89e  1      OPC=nop             
  nop                              #  29    0xdb89f  1      OPC=nop             
  nop                              #  30    0xdb8a0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb8a1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb8a4  2      OPC=callq_r64       
.L_db8a0:                          #        0xdb8a6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb8a6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb8a8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb8ab  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb8ae  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb8af  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb8b4  1      OPC=nop             
  nop                              #  39    0xdb8b5  1      OPC=nop             
  nop                              #  40    0xdb8b6  1      OPC=nop             
  nop                              #  41    0xdb8b7  1      OPC=nop             
  nop                              #  42    0xdb8b8  1      OPC=nop             
  nop                              #  43    0xdb8b9  1      OPC=nop             
  nop                              #  44    0xdb8ba  1      OPC=nop             
  nop                              #  45    0xdb8bb  1      OPC=nop             
  nop                              #  46    0xdb8bc  1      OPC=nop             
  nop                              #  47    0xdb8bd  1      OPC=nop             
  nop                              #  48    0xdb8be  1      OPC=nop             
  nop                              #  49    0xdb8bf  1      OPC=nop             
  nop                              #  50    0xdb8c0  1      OPC=nop             
  nop                              #  51    0xdb8c1  1      OPC=nop             
  nop                              #  52    0xdb8c2  1      OPC=nop             
  nop                              #  53    0xdb8c3  1      OPC=nop             
  nop                              #  54    0xdb8c4  1      OPC=nop             
  nop                              #  55    0xdb8c5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb8c6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb8c8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb8cc  1      OPC=nop             
  nop                              #  59    0xdb8cd  1      OPC=nop             
  nop                              #  60    0xdb8ce  1      OPC=nop             
  nop                              #  61    0xdb8cf  1      OPC=nop             
  nop                              #  62    0xdb8d0  1      OPC=nop             
  nop                              #  63    0xdb8d1  1      OPC=nop             
  nop                              #  64    0xdb8d2  1      OPC=nop             
  nop                              #  65    0xdb8d3  1      OPC=nop             
  nop                              #  66    0xdb8d4  1      OPC=nop             
  nop                              #  67    0xdb8d5  1      OPC=nop             
  nop                              #  68    0xdb8d6  1      OPC=nop             
  nop                              #  69    0xdb8d7  1      OPC=nop             
  nop                              #  70    0xdb8d8  1      OPC=nop             
  nop                              #  71    0xdb8d9  1      OPC=nop             
  nop                              #  72    0xdb8da  1      OPC=nop             
  nop                              #  73    0xdb8db  1      OPC=nop             
  nop                              #  74    0xdb8dc  1      OPC=nop             
  nop                              #  75    0xdb8dd  1      OPC=nop             
  nop                              #  76    0xdb8de  1      OPC=nop             
  nop                              #  77    0xdb8df  1      OPC=nop             
  nop                              #  78    0xdb8e0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb8e1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb8e6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb8ea  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb8ec  1      OPC=nop             
  nop                              #  83    0xdb8ed  1      OPC=nop             
  nop                              #  84    0xdb8ee  1      OPC=nop             
  nop                              #  85    0xdb8ef  1      OPC=nop             
  nop                              #  86    0xdb8f0  1      OPC=nop             
  nop                              #  87    0xdb8f1  1      OPC=nop             
  nop                              #  88    0xdb8f2  1      OPC=nop             
  nop                              #  89    0xdb8f3  1      OPC=nop             
  nop                              #  90    0xdb8f4  1      OPC=nop             
  nop                              #  91    0xdb8f5  1      OPC=nop             
  nop                              #  92    0xdb8f6  1      OPC=nop             
  nop                              #  93    0xdb8f7  1      OPC=nop             
  nop                              #  94    0xdb8f8  1      OPC=nop             
  nop                              #  95    0xdb8f9  1      OPC=nop             
  nop                              #  96    0xdb8fa  1      OPC=nop             
  nop                              #  97    0xdb8fb  1      OPC=nop             
  nop                              #  98    0xdb8fc  1      OPC=nop             
  nop                              #  99    0xdb8fd  1      OPC=nop             
  nop                              #  100   0xdb8fe  1      OPC=nop             
  nop                              #  101   0xdb8ff  1      OPC=nop             
  nop                              #  102   0xdb900  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb901  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIcLb0EED2Ev, .-_ZNSt10moneypunctIcLb0EED2Ev

