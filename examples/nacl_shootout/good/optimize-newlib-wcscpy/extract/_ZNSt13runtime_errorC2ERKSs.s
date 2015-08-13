  .text
  .globl _ZNSt13runtime_errorC2ERKSs
  .type _ZNSt13runtime_errorC2ERKSs, @function

#! file-offset 0x128f80
#! rip-offset  0xe8f80
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13runtime_errorC2ERKSs:      #        0xe8f80  0      OPC=<label>         
  pushq %rbx                       #  1     0xe8f80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe8f81  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe8f83  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe8f85  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe8f88  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe8f8b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe8f8e  2      OPC=movl_r32_r32    
  movl $0x1003db08, (%r15,%rbx,1)  #  8     0xe8f90  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe8f98  1      OPC=nop             
  nop                              #  10    0xe8f99  1      OPC=nop             
  nop                              #  11    0xe8f9a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe8f9b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe8fa0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe8fa3  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe8fa6  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe8fa7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe8fa9  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe8fb0  1      OPC=nop             
  nop                              #  19    0xe8fb1  1      OPC=nop             
  nop                              #  20    0xe8fb2  1      OPC=nop             
  nop                              #  21    0xe8fb3  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe8fb4  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe8fb7  3      OPC=jmpq_r64        
  nop                              #  24    0xe8fba  1      OPC=nop             
  nop                              #  25    0xe8fbb  1      OPC=nop             
  nop                              #  26    0xe8fbc  1      OPC=nop             
  nop                              #  27    0xe8fbd  1      OPC=nop             
  nop                              #  28    0xe8fbe  1      OPC=nop             
  nop                              #  29    0xe8fbf  1      OPC=nop             
  nop                              #  30    0xe8fc0  1      OPC=nop             
  nop                              #  31    0xe8fc1  1      OPC=nop             
  nop                              #  32    0xe8fc2  1      OPC=nop             
  nop                              #  33    0xe8fc3  1      OPC=nop             
  nop                              #  34    0xe8fc4  1      OPC=nop             
  nop                              #  35    0xe8fc5  1      OPC=nop             
  nop                              #  36    0xe8fc6  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe8fc7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe8fc9  4      OPC=movl_m32_r32    
  nop                              #  39    0xe8fcd  1      OPC=nop             
  nop                              #  40    0xe8fce  1      OPC=nop             
  nop                              #  41    0xe8fcf  1      OPC=nop             
  nop                              #  42    0xe8fd0  1      OPC=nop             
  nop                              #  43    0xe8fd1  1      OPC=nop             
  nop                              #  44    0xe8fd2  1      OPC=nop             
  nop                              #  45    0xe8fd3  1      OPC=nop             
  nop                              #  46    0xe8fd4  1      OPC=nop             
  nop                              #  47    0xe8fd5  1      OPC=nop             
  nop                              #  48    0xe8fd6  1      OPC=nop             
  nop                              #  49    0xe8fd7  1      OPC=nop             
  nop                              #  50    0xe8fd8  1      OPC=nop             
  nop                              #  51    0xe8fd9  1      OPC=nop             
  nop                              #  52    0xe8fda  1      OPC=nop             
  nop                              #  53    0xe8fdb  1      OPC=nop             
  nop                              #  54    0xe8fdc  1      OPC=nop             
  nop                              #  55    0xe8fdd  1      OPC=nop             
  nop                              #  56    0xe8fde  1      OPC=nop             
  nop                              #  57    0xe8fdf  1      OPC=nop             
  nop                              #  58    0xe8fe0  1      OPC=nop             
  nop                              #  59    0xe8fe1  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe8fe2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe8fe7  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe8feb  2      OPC=movl_r32_r32    
  nop                              #  63    0xe8fed  1      OPC=nop             
  nop                              #  64    0xe8fee  1      OPC=nop             
  nop                              #  65    0xe8fef  1      OPC=nop             
  nop                              #  66    0xe8ff0  1      OPC=nop             
  nop                              #  67    0xe8ff1  1      OPC=nop             
  nop                              #  68    0xe8ff2  1      OPC=nop             
  nop                              #  69    0xe8ff3  1      OPC=nop             
  nop                              #  70    0xe8ff4  1      OPC=nop             
  nop                              #  71    0xe8ff5  1      OPC=nop             
  nop                              #  72    0xe8ff6  1      OPC=nop             
  nop                              #  73    0xe8ff7  1      OPC=nop             
  nop                              #  74    0xe8ff8  1      OPC=nop             
  nop                              #  75    0xe8ff9  1      OPC=nop             
  nop                              #  76    0xe8ffa  1      OPC=nop             
  nop                              #  77    0xe8ffb  1      OPC=nop             
  nop                              #  78    0xe8ffc  1      OPC=nop             
  nop                              #  79    0xe8ffd  1      OPC=nop             
  nop                              #  80    0xe8ffe  1      OPC=nop             
  nop                              #  81    0xe8fff  1      OPC=nop             
  nop                              #  82    0xe9000  1      OPC=nop             
  nop                              #  83    0xe9001  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9002  5      OPC=callq_label     
                                                                                
.size _ZNSt13runtime_errorC2ERKSs, .-_ZNSt13runtime_errorC2ERKSs

