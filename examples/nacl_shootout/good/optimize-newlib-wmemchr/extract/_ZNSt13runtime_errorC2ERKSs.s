  .text
  .globl _ZNSt13runtime_errorC2ERKSs
  .type _ZNSt13runtime_errorC2ERKSs, @function

#! file-offset 0x129280
#! rip-offset  0xe9280
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13runtime_errorC2ERKSs:      #        0xe9280  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9280  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9281  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9283  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9285  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9288  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe928b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe928e  2      OPC=movl_r32_r32    
  movl $0x1003db08, (%r15,%rbx,1)  #  8     0xe9290  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9298  1      OPC=nop             
  nop                              #  10    0xe9299  1      OPC=nop             
  nop                              #  11    0xe929a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe929b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe92a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe92a3  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe92a6  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe92a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe92a9  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe92b0  1      OPC=nop             
  nop                              #  19    0xe92b1  1      OPC=nop             
  nop                              #  20    0xe92b2  1      OPC=nop             
  nop                              #  21    0xe92b3  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe92b4  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe92b7  3      OPC=jmpq_r64        
  nop                              #  24    0xe92ba  1      OPC=nop             
  nop                              #  25    0xe92bb  1      OPC=nop             
  nop                              #  26    0xe92bc  1      OPC=nop             
  nop                              #  27    0xe92bd  1      OPC=nop             
  nop                              #  28    0xe92be  1      OPC=nop             
  nop                              #  29    0xe92bf  1      OPC=nop             
  nop                              #  30    0xe92c0  1      OPC=nop             
  nop                              #  31    0xe92c1  1      OPC=nop             
  nop                              #  32    0xe92c2  1      OPC=nop             
  nop                              #  33    0xe92c3  1      OPC=nop             
  nop                              #  34    0xe92c4  1      OPC=nop             
  nop                              #  35    0xe92c5  1      OPC=nop             
  nop                              #  36    0xe92c6  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe92c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe92c9  4      OPC=movl_m32_r32    
  nop                              #  39    0xe92cd  1      OPC=nop             
  nop                              #  40    0xe92ce  1      OPC=nop             
  nop                              #  41    0xe92cf  1      OPC=nop             
  nop                              #  42    0xe92d0  1      OPC=nop             
  nop                              #  43    0xe92d1  1      OPC=nop             
  nop                              #  44    0xe92d2  1      OPC=nop             
  nop                              #  45    0xe92d3  1      OPC=nop             
  nop                              #  46    0xe92d4  1      OPC=nop             
  nop                              #  47    0xe92d5  1      OPC=nop             
  nop                              #  48    0xe92d6  1      OPC=nop             
  nop                              #  49    0xe92d7  1      OPC=nop             
  nop                              #  50    0xe92d8  1      OPC=nop             
  nop                              #  51    0xe92d9  1      OPC=nop             
  nop                              #  52    0xe92da  1      OPC=nop             
  nop                              #  53    0xe92db  1      OPC=nop             
  nop                              #  54    0xe92dc  1      OPC=nop             
  nop                              #  55    0xe92dd  1      OPC=nop             
  nop                              #  56    0xe92de  1      OPC=nop             
  nop                              #  57    0xe92df  1      OPC=nop             
  nop                              #  58    0xe92e0  1      OPC=nop             
  nop                              #  59    0xe92e1  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe92e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe92e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe92eb  2      OPC=movl_r32_r32    
  nop                              #  63    0xe92ed  1      OPC=nop             
  nop                              #  64    0xe92ee  1      OPC=nop             
  nop                              #  65    0xe92ef  1      OPC=nop             
  nop                              #  66    0xe92f0  1      OPC=nop             
  nop                              #  67    0xe92f1  1      OPC=nop             
  nop                              #  68    0xe92f2  1      OPC=nop             
  nop                              #  69    0xe92f3  1      OPC=nop             
  nop                              #  70    0xe92f4  1      OPC=nop             
  nop                              #  71    0xe92f5  1      OPC=nop             
  nop                              #  72    0xe92f6  1      OPC=nop             
  nop                              #  73    0xe92f7  1      OPC=nop             
  nop                              #  74    0xe92f8  1      OPC=nop             
  nop                              #  75    0xe92f9  1      OPC=nop             
  nop                              #  76    0xe92fa  1      OPC=nop             
  nop                              #  77    0xe92fb  1      OPC=nop             
  nop                              #  78    0xe92fc  1      OPC=nop             
  nop                              #  79    0xe92fd  1      OPC=nop             
  nop                              #  80    0xe92fe  1      OPC=nop             
  nop                              #  81    0xe92ff  1      OPC=nop             
  nop                              #  82    0xe9300  1      OPC=nop             
  nop                              #  83    0xe9301  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9302  5      OPC=callq_label     
                                                                                
.size _ZNSt13runtime_errorC2ERKSs, .-_ZNSt13runtime_errorC2ERKSs

