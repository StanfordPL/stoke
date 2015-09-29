  .text
  .globl _ZNSt13runtime_errorC2ERKSs
  .type _ZNSt13runtime_errorC2ERKSs, @function

#! file-offset 0x1299a0
#! rip-offset  0xe99a0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13runtime_errorC2ERKSs:      #        0xe99a0  0      OPC=<label>         
  pushq %rbx                       #  1     0xe99a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe99a1  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe99a3  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe99a5  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe99a8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe99ab  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe99ae  2      OPC=movl_r32_r32    
  movl $0x1003db08, (%r15,%rbx,1)  #  8     0xe99b0  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe99b8  1      OPC=nop             
  nop                              #  10    0xe99b9  1      OPC=nop             
  nop                              #  11    0xe99ba  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe99bb  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe99c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe99c3  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe99c6  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe99c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe99c9  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe99d0  1      OPC=nop             
  nop                              #  19    0xe99d1  1      OPC=nop             
  nop                              #  20    0xe99d2  1      OPC=nop             
  nop                              #  21    0xe99d3  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe99d4  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe99d7  3      OPC=jmpq_r64        
  nop                              #  24    0xe99da  1      OPC=nop             
  nop                              #  25    0xe99db  1      OPC=nop             
  nop                              #  26    0xe99dc  1      OPC=nop             
  nop                              #  27    0xe99dd  1      OPC=nop             
  nop                              #  28    0xe99de  1      OPC=nop             
  nop                              #  29    0xe99df  1      OPC=nop             
  nop                              #  30    0xe99e0  1      OPC=nop             
  nop                              #  31    0xe99e1  1      OPC=nop             
  nop                              #  32    0xe99e2  1      OPC=nop             
  nop                              #  33    0xe99e3  1      OPC=nop             
  nop                              #  34    0xe99e4  1      OPC=nop             
  nop                              #  35    0xe99e5  1      OPC=nop             
  nop                              #  36    0xe99e6  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe99e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe99e9  4      OPC=movl_m32_r32    
  nop                              #  39    0xe99ed  1      OPC=nop             
  nop                              #  40    0xe99ee  1      OPC=nop             
  nop                              #  41    0xe99ef  1      OPC=nop             
  nop                              #  42    0xe99f0  1      OPC=nop             
  nop                              #  43    0xe99f1  1      OPC=nop             
  nop                              #  44    0xe99f2  1      OPC=nop             
  nop                              #  45    0xe99f3  1      OPC=nop             
  nop                              #  46    0xe99f4  1      OPC=nop             
  nop                              #  47    0xe99f5  1      OPC=nop             
  nop                              #  48    0xe99f6  1      OPC=nop             
  nop                              #  49    0xe99f7  1      OPC=nop             
  nop                              #  50    0xe99f8  1      OPC=nop             
  nop                              #  51    0xe99f9  1      OPC=nop             
  nop                              #  52    0xe99fa  1      OPC=nop             
  nop                              #  53    0xe99fb  1      OPC=nop             
  nop                              #  54    0xe99fc  1      OPC=nop             
  nop                              #  55    0xe99fd  1      OPC=nop             
  nop                              #  56    0xe99fe  1      OPC=nop             
  nop                              #  57    0xe99ff  1      OPC=nop             
  nop                              #  58    0xe9a00  1      OPC=nop             
  nop                              #  59    0xe9a01  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe9a02  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe9a07  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe9a0b  2      OPC=movl_r32_r32    
  nop                              #  63    0xe9a0d  1      OPC=nop             
  nop                              #  64    0xe9a0e  1      OPC=nop             
  nop                              #  65    0xe9a0f  1      OPC=nop             
  nop                              #  66    0xe9a10  1      OPC=nop             
  nop                              #  67    0xe9a11  1      OPC=nop             
  nop                              #  68    0xe9a12  1      OPC=nop             
  nop                              #  69    0xe9a13  1      OPC=nop             
  nop                              #  70    0xe9a14  1      OPC=nop             
  nop                              #  71    0xe9a15  1      OPC=nop             
  nop                              #  72    0xe9a16  1      OPC=nop             
  nop                              #  73    0xe9a17  1      OPC=nop             
  nop                              #  74    0xe9a18  1      OPC=nop             
  nop                              #  75    0xe9a19  1      OPC=nop             
  nop                              #  76    0xe9a1a  1      OPC=nop             
  nop                              #  77    0xe9a1b  1      OPC=nop             
  nop                              #  78    0xe9a1c  1      OPC=nop             
  nop                              #  79    0xe9a1d  1      OPC=nop             
  nop                              #  80    0xe9a1e  1      OPC=nop             
  nop                              #  81    0xe9a1f  1      OPC=nop             
  nop                              #  82    0xe9a20  1      OPC=nop             
  nop                              #  83    0xe9a21  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9a22  5      OPC=callq_label     
                                                                                
.size _ZNSt13runtime_errorC2ERKSs, .-_ZNSt13runtime_errorC2ERKSs

