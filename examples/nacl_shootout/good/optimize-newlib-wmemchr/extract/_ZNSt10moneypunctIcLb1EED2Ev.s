  .text
  .globl _ZNSt10moneypunctIcLb1EED2Ev
  .type _ZNSt10moneypunctIcLb1EED2Ev, @function

#! file-offset 0x11b9a0
#! rip-offset  0xdb9a0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EED2Ev:     #        0xdb9a0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb9a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb9a1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb9a3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb9a6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb9a9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb9ab  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb9b0  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)  #  8     0xdb9b2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb9ba  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb9bd  1      OPC=nop             
  nop                              #  11    0xdb9be  1      OPC=nop             
  nop                              #  12    0xdb9bf  1      OPC=nop             
  je .L_db9e0                      #  13    0xdb9c0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb9c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb9c4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb9c8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb9ca  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb9cf  1      OPC=nop             
  nop                              #  19    0xdb9d0  1      OPC=nop             
  nop                              #  20    0xdb9d1  1      OPC=nop             
  nop                              #  21    0xdb9d2  1      OPC=nop             
  nop                              #  22    0xdb9d3  1      OPC=nop             
  nop                              #  23    0xdb9d4  1      OPC=nop             
  nop                              #  24    0xdb9d5  1      OPC=nop             
  nop                              #  25    0xdb9d6  1      OPC=nop             
  nop                              #  26    0xdb9d7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb9d8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb9de  1      OPC=nop             
  nop                              #  29    0xdb9df  1      OPC=nop             
  nop                              #  30    0xdb9e0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb9e1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb9e4  2      OPC=callq_r64       
.L_db9e0:                          #        0xdb9e6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb9e6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb9e8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb9eb  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb9ee  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb9ef  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb9f4  1      OPC=nop             
  nop                              #  39    0xdb9f5  1      OPC=nop             
  nop                              #  40    0xdb9f6  1      OPC=nop             
  nop                              #  41    0xdb9f7  1      OPC=nop             
  nop                              #  42    0xdb9f8  1      OPC=nop             
  nop                              #  43    0xdb9f9  1      OPC=nop             
  nop                              #  44    0xdb9fa  1      OPC=nop             
  nop                              #  45    0xdb9fb  1      OPC=nop             
  nop                              #  46    0xdb9fc  1      OPC=nop             
  nop                              #  47    0xdb9fd  1      OPC=nop             
  nop                              #  48    0xdb9fe  1      OPC=nop             
  nop                              #  49    0xdb9ff  1      OPC=nop             
  nop                              #  50    0xdba00  1      OPC=nop             
  nop                              #  51    0xdba01  1      OPC=nop             
  nop                              #  52    0xdba02  1      OPC=nop             
  nop                              #  53    0xdba03  1      OPC=nop             
  nop                              #  54    0xdba04  1      OPC=nop             
  nop                              #  55    0xdba05  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdba06  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdba08  4      OPC=movl_m32_r32    
  nop                              #  58    0xdba0c  1      OPC=nop             
  nop                              #  59    0xdba0d  1      OPC=nop             
  nop                              #  60    0xdba0e  1      OPC=nop             
  nop                              #  61    0xdba0f  1      OPC=nop             
  nop                              #  62    0xdba10  1      OPC=nop             
  nop                              #  63    0xdba11  1      OPC=nop             
  nop                              #  64    0xdba12  1      OPC=nop             
  nop                              #  65    0xdba13  1      OPC=nop             
  nop                              #  66    0xdba14  1      OPC=nop             
  nop                              #  67    0xdba15  1      OPC=nop             
  nop                              #  68    0xdba16  1      OPC=nop             
  nop                              #  69    0xdba17  1      OPC=nop             
  nop                              #  70    0xdba18  1      OPC=nop             
  nop                              #  71    0xdba19  1      OPC=nop             
  nop                              #  72    0xdba1a  1      OPC=nop             
  nop                              #  73    0xdba1b  1      OPC=nop             
  nop                              #  74    0xdba1c  1      OPC=nop             
  nop                              #  75    0xdba1d  1      OPC=nop             
  nop                              #  76    0xdba1e  1      OPC=nop             
  nop                              #  77    0xdba1f  1      OPC=nop             
  nop                              #  78    0xdba20  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdba21  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdba26  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdba2a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdba2c  1      OPC=nop             
  nop                              #  83    0xdba2d  1      OPC=nop             
  nop                              #  84    0xdba2e  1      OPC=nop             
  nop                              #  85    0xdba2f  1      OPC=nop             
  nop                              #  86    0xdba30  1      OPC=nop             
  nop                              #  87    0xdba31  1      OPC=nop             
  nop                              #  88    0xdba32  1      OPC=nop             
  nop                              #  89    0xdba33  1      OPC=nop             
  nop                              #  90    0xdba34  1      OPC=nop             
  nop                              #  91    0xdba35  1      OPC=nop             
  nop                              #  92    0xdba36  1      OPC=nop             
  nop                              #  93    0xdba37  1      OPC=nop             
  nop                              #  94    0xdba38  1      OPC=nop             
  nop                              #  95    0xdba39  1      OPC=nop             
  nop                              #  96    0xdba3a  1      OPC=nop             
  nop                              #  97    0xdba3b  1      OPC=nop             
  nop                              #  98    0xdba3c  1      OPC=nop             
  nop                              #  99    0xdba3d  1      OPC=nop             
  nop                              #  100   0xdba3e  1      OPC=nop             
  nop                              #  101   0xdba3f  1      OPC=nop             
  nop                              #  102   0xdba40  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdba41  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIcLb1EED2Ev, .-_ZNSt10moneypunctIcLb1EED2Ev

