  .text
  .globl _ZNSt11logic_errorC1ERKSs
  .type _ZNSt11logic_errorC1ERKSs, @function

#! file-offset 0x129ba0
#! rip-offset  0xe9ba0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt11logic_errorC1ERKSs:        #        0xe9ba0  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9ba0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9ba1  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9ba3  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9ba5  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9ba8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe9bab  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe9bae  2      OPC=movl_r32_r32    
  movl $0x1003db28, (%r15,%rbx,1)  #  8     0xe9bb0  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9bb8  1      OPC=nop             
  nop                              #  10    0xe9bb9  1      OPC=nop             
  nop                              #  11    0xe9bba  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe9bbb  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe9bc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe9bc3  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe9bc6  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe9bc7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe9bc9  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe9bd0  1      OPC=nop             
  nop                              #  19    0xe9bd1  1      OPC=nop             
  nop                              #  20    0xe9bd2  1      OPC=nop             
  nop                              #  21    0xe9bd3  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe9bd4  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe9bd7  3      OPC=jmpq_r64        
  nop                              #  24    0xe9bda  1      OPC=nop             
  nop                              #  25    0xe9bdb  1      OPC=nop             
  nop                              #  26    0xe9bdc  1      OPC=nop             
  nop                              #  27    0xe9bdd  1      OPC=nop             
  nop                              #  28    0xe9bde  1      OPC=nop             
  nop                              #  29    0xe9bdf  1      OPC=nop             
  nop                              #  30    0xe9be0  1      OPC=nop             
  nop                              #  31    0xe9be1  1      OPC=nop             
  nop                              #  32    0xe9be2  1      OPC=nop             
  nop                              #  33    0xe9be3  1      OPC=nop             
  nop                              #  34    0xe9be4  1      OPC=nop             
  nop                              #  35    0xe9be5  1      OPC=nop             
  nop                              #  36    0xe9be6  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe9be7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe9be9  4      OPC=movl_m32_r32    
  nop                              #  39    0xe9bed  1      OPC=nop             
  nop                              #  40    0xe9bee  1      OPC=nop             
  nop                              #  41    0xe9bef  1      OPC=nop             
  nop                              #  42    0xe9bf0  1      OPC=nop             
  nop                              #  43    0xe9bf1  1      OPC=nop             
  nop                              #  44    0xe9bf2  1      OPC=nop             
  nop                              #  45    0xe9bf3  1      OPC=nop             
  nop                              #  46    0xe9bf4  1      OPC=nop             
  nop                              #  47    0xe9bf5  1      OPC=nop             
  nop                              #  48    0xe9bf6  1      OPC=nop             
  nop                              #  49    0xe9bf7  1      OPC=nop             
  nop                              #  50    0xe9bf8  1      OPC=nop             
  nop                              #  51    0xe9bf9  1      OPC=nop             
  nop                              #  52    0xe9bfa  1      OPC=nop             
  nop                              #  53    0xe9bfb  1      OPC=nop             
  nop                              #  54    0xe9bfc  1      OPC=nop             
  nop                              #  55    0xe9bfd  1      OPC=nop             
  nop                              #  56    0xe9bfe  1      OPC=nop             
  nop                              #  57    0xe9bff  1      OPC=nop             
  nop                              #  58    0xe9c00  1      OPC=nop             
  nop                              #  59    0xe9c01  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe9c02  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe9c07  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe9c0b  2      OPC=movl_r32_r32    
  nop                              #  63    0xe9c0d  1      OPC=nop             
  nop                              #  64    0xe9c0e  1      OPC=nop             
  nop                              #  65    0xe9c0f  1      OPC=nop             
  nop                              #  66    0xe9c10  1      OPC=nop             
  nop                              #  67    0xe9c11  1      OPC=nop             
  nop                              #  68    0xe9c12  1      OPC=nop             
  nop                              #  69    0xe9c13  1      OPC=nop             
  nop                              #  70    0xe9c14  1      OPC=nop             
  nop                              #  71    0xe9c15  1      OPC=nop             
  nop                              #  72    0xe9c16  1      OPC=nop             
  nop                              #  73    0xe9c17  1      OPC=nop             
  nop                              #  74    0xe9c18  1      OPC=nop             
  nop                              #  75    0xe9c19  1      OPC=nop             
  nop                              #  76    0xe9c1a  1      OPC=nop             
  nop                              #  77    0xe9c1b  1      OPC=nop             
  nop                              #  78    0xe9c1c  1      OPC=nop             
  nop                              #  79    0xe9c1d  1      OPC=nop             
  nop                              #  80    0xe9c1e  1      OPC=nop             
  nop                              #  81    0xe9c1f  1      OPC=nop             
  nop                              #  82    0xe9c20  1      OPC=nop             
  nop                              #  83    0xe9c21  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9c22  5      OPC=callq_label     
                                                                                
.size _ZNSt11logic_errorC1ERKSs, .-_ZNSt11logic_errorC1ERKSs

