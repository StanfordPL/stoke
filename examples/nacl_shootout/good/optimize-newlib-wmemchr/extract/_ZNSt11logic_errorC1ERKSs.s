  .text
  .globl _ZNSt11logic_errorC1ERKSs
  .type _ZNSt11logic_errorC1ERKSs, @function

#! file-offset 0x129480
#! rip-offset  0xe9480
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt11logic_errorC1ERKSs:        #        0xe9480  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9480  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9481  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9483  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9485  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9488  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe948b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe948e  2      OPC=movl_r32_r32    
  movl $0x1003db28, (%r15,%rbx,1)  #  8     0xe9490  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9498  1      OPC=nop             
  nop                              #  10    0xe9499  1      OPC=nop             
  nop                              #  11    0xe949a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe949b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe94a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe94a3  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe94a6  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe94a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe94a9  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe94b0  1      OPC=nop             
  nop                              #  19    0xe94b1  1      OPC=nop             
  nop                              #  20    0xe94b2  1      OPC=nop             
  nop                              #  21    0xe94b3  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe94b4  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe94b7  3      OPC=jmpq_r64        
  nop                              #  24    0xe94ba  1      OPC=nop             
  nop                              #  25    0xe94bb  1      OPC=nop             
  nop                              #  26    0xe94bc  1      OPC=nop             
  nop                              #  27    0xe94bd  1      OPC=nop             
  nop                              #  28    0xe94be  1      OPC=nop             
  nop                              #  29    0xe94bf  1      OPC=nop             
  nop                              #  30    0xe94c0  1      OPC=nop             
  nop                              #  31    0xe94c1  1      OPC=nop             
  nop                              #  32    0xe94c2  1      OPC=nop             
  nop                              #  33    0xe94c3  1      OPC=nop             
  nop                              #  34    0xe94c4  1      OPC=nop             
  nop                              #  35    0xe94c5  1      OPC=nop             
  nop                              #  36    0xe94c6  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe94c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe94c9  4      OPC=movl_m32_r32    
  nop                              #  39    0xe94cd  1      OPC=nop             
  nop                              #  40    0xe94ce  1      OPC=nop             
  nop                              #  41    0xe94cf  1      OPC=nop             
  nop                              #  42    0xe94d0  1      OPC=nop             
  nop                              #  43    0xe94d1  1      OPC=nop             
  nop                              #  44    0xe94d2  1      OPC=nop             
  nop                              #  45    0xe94d3  1      OPC=nop             
  nop                              #  46    0xe94d4  1      OPC=nop             
  nop                              #  47    0xe94d5  1      OPC=nop             
  nop                              #  48    0xe94d6  1      OPC=nop             
  nop                              #  49    0xe94d7  1      OPC=nop             
  nop                              #  50    0xe94d8  1      OPC=nop             
  nop                              #  51    0xe94d9  1      OPC=nop             
  nop                              #  52    0xe94da  1      OPC=nop             
  nop                              #  53    0xe94db  1      OPC=nop             
  nop                              #  54    0xe94dc  1      OPC=nop             
  nop                              #  55    0xe94dd  1      OPC=nop             
  nop                              #  56    0xe94de  1      OPC=nop             
  nop                              #  57    0xe94df  1      OPC=nop             
  nop                              #  58    0xe94e0  1      OPC=nop             
  nop                              #  59    0xe94e1  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe94e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe94e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe94eb  2      OPC=movl_r32_r32    
  nop                              #  63    0xe94ed  1      OPC=nop             
  nop                              #  64    0xe94ee  1      OPC=nop             
  nop                              #  65    0xe94ef  1      OPC=nop             
  nop                              #  66    0xe94f0  1      OPC=nop             
  nop                              #  67    0xe94f1  1      OPC=nop             
  nop                              #  68    0xe94f2  1      OPC=nop             
  nop                              #  69    0xe94f3  1      OPC=nop             
  nop                              #  70    0xe94f4  1      OPC=nop             
  nop                              #  71    0xe94f5  1      OPC=nop             
  nop                              #  72    0xe94f6  1      OPC=nop             
  nop                              #  73    0xe94f7  1      OPC=nop             
  nop                              #  74    0xe94f8  1      OPC=nop             
  nop                              #  75    0xe94f9  1      OPC=nop             
  nop                              #  76    0xe94fa  1      OPC=nop             
  nop                              #  77    0xe94fb  1      OPC=nop             
  nop                              #  78    0xe94fc  1      OPC=nop             
  nop                              #  79    0xe94fd  1      OPC=nop             
  nop                              #  80    0xe94fe  1      OPC=nop             
  nop                              #  81    0xe94ff  1      OPC=nop             
  nop                              #  82    0xe9500  1      OPC=nop             
  nop                              #  83    0xe9501  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9502  5      OPC=callq_label     
                                                                                
.size _ZNSt11logic_errorC1ERKSs, .-_ZNSt11logic_errorC1ERKSs

