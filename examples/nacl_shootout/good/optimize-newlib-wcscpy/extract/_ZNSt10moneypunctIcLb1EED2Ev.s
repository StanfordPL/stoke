  .text
  .globl _ZNSt10moneypunctIcLb1EED2Ev
  .type _ZNSt10moneypunctIcLb1EED2Ev, @function

#! file-offset 0x11b6a0
#! rip-offset  0xdb6a0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EED2Ev:     #        0xdb6a0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb6a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb6a1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb6a3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb6a6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb6a9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb6ab  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb6b0  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)  #  8     0xdb6b2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb6ba  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb6bd  1      OPC=nop             
  nop                              #  11    0xdb6be  1      OPC=nop             
  nop                              #  12    0xdb6bf  1      OPC=nop             
  je .L_db6e0                      #  13    0xdb6c0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb6c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb6c4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb6c8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb6ca  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb6cf  1      OPC=nop             
  nop                              #  19    0xdb6d0  1      OPC=nop             
  nop                              #  20    0xdb6d1  1      OPC=nop             
  nop                              #  21    0xdb6d2  1      OPC=nop             
  nop                              #  22    0xdb6d3  1      OPC=nop             
  nop                              #  23    0xdb6d4  1      OPC=nop             
  nop                              #  24    0xdb6d5  1      OPC=nop             
  nop                              #  25    0xdb6d6  1      OPC=nop             
  nop                              #  26    0xdb6d7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb6d8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb6de  1      OPC=nop             
  nop                              #  29    0xdb6df  1      OPC=nop             
  nop                              #  30    0xdb6e0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb6e1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb6e4  2      OPC=callq_r64       
.L_db6e0:                          #        0xdb6e6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb6e6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb6e8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb6eb  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb6ee  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb6ef  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb6f4  1      OPC=nop             
  nop                              #  39    0xdb6f5  1      OPC=nop             
  nop                              #  40    0xdb6f6  1      OPC=nop             
  nop                              #  41    0xdb6f7  1      OPC=nop             
  nop                              #  42    0xdb6f8  1      OPC=nop             
  nop                              #  43    0xdb6f9  1      OPC=nop             
  nop                              #  44    0xdb6fa  1      OPC=nop             
  nop                              #  45    0xdb6fb  1      OPC=nop             
  nop                              #  46    0xdb6fc  1      OPC=nop             
  nop                              #  47    0xdb6fd  1      OPC=nop             
  nop                              #  48    0xdb6fe  1      OPC=nop             
  nop                              #  49    0xdb6ff  1      OPC=nop             
  nop                              #  50    0xdb700  1      OPC=nop             
  nop                              #  51    0xdb701  1      OPC=nop             
  nop                              #  52    0xdb702  1      OPC=nop             
  nop                              #  53    0xdb703  1      OPC=nop             
  nop                              #  54    0xdb704  1      OPC=nop             
  nop                              #  55    0xdb705  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb706  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb708  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb70c  1      OPC=nop             
  nop                              #  59    0xdb70d  1      OPC=nop             
  nop                              #  60    0xdb70e  1      OPC=nop             
  nop                              #  61    0xdb70f  1      OPC=nop             
  nop                              #  62    0xdb710  1      OPC=nop             
  nop                              #  63    0xdb711  1      OPC=nop             
  nop                              #  64    0xdb712  1      OPC=nop             
  nop                              #  65    0xdb713  1      OPC=nop             
  nop                              #  66    0xdb714  1      OPC=nop             
  nop                              #  67    0xdb715  1      OPC=nop             
  nop                              #  68    0xdb716  1      OPC=nop             
  nop                              #  69    0xdb717  1      OPC=nop             
  nop                              #  70    0xdb718  1      OPC=nop             
  nop                              #  71    0xdb719  1      OPC=nop             
  nop                              #  72    0xdb71a  1      OPC=nop             
  nop                              #  73    0xdb71b  1      OPC=nop             
  nop                              #  74    0xdb71c  1      OPC=nop             
  nop                              #  75    0xdb71d  1      OPC=nop             
  nop                              #  76    0xdb71e  1      OPC=nop             
  nop                              #  77    0xdb71f  1      OPC=nop             
  nop                              #  78    0xdb720  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb721  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb726  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb72a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb72c  1      OPC=nop             
  nop                              #  83    0xdb72d  1      OPC=nop             
  nop                              #  84    0xdb72e  1      OPC=nop             
  nop                              #  85    0xdb72f  1      OPC=nop             
  nop                              #  86    0xdb730  1      OPC=nop             
  nop                              #  87    0xdb731  1      OPC=nop             
  nop                              #  88    0xdb732  1      OPC=nop             
  nop                              #  89    0xdb733  1      OPC=nop             
  nop                              #  90    0xdb734  1      OPC=nop             
  nop                              #  91    0xdb735  1      OPC=nop             
  nop                              #  92    0xdb736  1      OPC=nop             
  nop                              #  93    0xdb737  1      OPC=nop             
  nop                              #  94    0xdb738  1      OPC=nop             
  nop                              #  95    0xdb739  1      OPC=nop             
  nop                              #  96    0xdb73a  1      OPC=nop             
  nop                              #  97    0xdb73b  1      OPC=nop             
  nop                              #  98    0xdb73c  1      OPC=nop             
  nop                              #  99    0xdb73d  1      OPC=nop             
  nop                              #  100   0xdb73e  1      OPC=nop             
  nop                              #  101   0xdb73f  1      OPC=nop             
  nop                              #  102   0xdb740  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb741  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIcLb1EED2Ev, .-_ZNSt10moneypunctIcLb1EED2Ev

