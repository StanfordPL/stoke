  .text
  .globl _ZNSt9basic_iosIwSt11char_traitsIwEEC1Ev
  .type _ZNSt9basic_iosIwSt11char_traitsIwEEC1Ev, @function

#! file-offset 0xa4fc0
#! rip-offset  0x64fc0
#! capacity    160 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIwSt11char_traitsIwEEC1Ev:  #        0x64fc0  0      OPC=<label>         
  pushq %rbx                                #  1     0x64fc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  2     0x64fc1  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  3     0x64fc3  2      OPC=movl_r32_r32    
  nop                                       #  4     0x64fc5  1      OPC=nop             
  nop                                       #  5     0x64fc6  1      OPC=nop             
  nop                                       #  6     0x64fc7  1      OPC=nop             
  nop                                       #  7     0x64fc8  1      OPC=nop             
  nop                                       #  8     0x64fc9  1      OPC=nop             
  nop                                       #  9     0x64fca  1      OPC=nop             
  nop                                       #  10    0x64fcb  1      OPC=nop             
  nop                                       #  11    0x64fcc  1      OPC=nop             
  nop                                       #  12    0x64fcd  1      OPC=nop             
  nop                                       #  13    0x64fce  1      OPC=nop             
  nop                                       #  14    0x64fcf  1      OPC=nop             
  nop                                       #  15    0x64fd0  1      OPC=nop             
  nop                                       #  16    0x64fd1  1      OPC=nop             
  nop                                       #  17    0x64fd2  1      OPC=nop             
  nop                                       #  18    0x64fd3  1      OPC=nop             
  nop                                       #  19    0x64fd4  1      OPC=nop             
  nop                                       #  20    0x64fd5  1      OPC=nop             
  nop                                       #  21    0x64fd6  1      OPC=nop             
  nop                                       #  22    0x64fd7  1      OPC=nop             
  nop                                       #  23    0x64fd8  1      OPC=nop             
  nop                                       #  24    0x64fd9  1      OPC=nop             
  nop                                       #  25    0x64fda  1      OPC=nop             
  callq ._ZNSt8ios_baseC2Ev                 #  26    0x64fdb  5      OPC=callq_label     
  movl %ebx, %ebx                           #  27    0x64fe0  2      OPC=movl_r32_r32    
  movl $0x1003a748, (%r15,%rbx,1)           #  28    0x64fe2  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                           #  29    0x64fea  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)              #  30    0x64fec  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                           #  31    0x64ff5  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)              #  32    0x64ff7  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                           #  33    0x65000  2      OPC=movl_r32_r32    
  movb $0x0, 0x78(%r15,%rbx,1)              #  34    0x65002  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                           #  35    0x65008  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)              #  36    0x6500a  9      OPC=movl_m32_imm32  
  nop                                       #  37    0x65013  1      OPC=nop             
  nop                                       #  38    0x65014  1      OPC=nop             
  nop                                       #  39    0x65015  1      OPC=nop             
  nop                                       #  40    0x65016  1      OPC=nop             
  nop                                       #  41    0x65017  1      OPC=nop             
  nop                                       #  42    0x65018  1      OPC=nop             
  nop                                       #  43    0x65019  1      OPC=nop             
  nop                                       #  44    0x6501a  1      OPC=nop             
  nop                                       #  45    0x6501b  1      OPC=nop             
  nop                                       #  46    0x6501c  1      OPC=nop             
  nop                                       #  47    0x6501d  1      OPC=nop             
  nop                                       #  48    0x6501e  1      OPC=nop             
  nop                                       #  49    0x6501f  1      OPC=nop             
  movl %ebx, %ebx                           #  50    0x65020  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)              #  51    0x65022  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                           #  52    0x6502e  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)              #  53    0x65030  12     OPC=movl_m32_imm32  
  nop                                       #  54    0x6503c  1      OPC=nop             
  nop                                       #  55    0x6503d  1      OPC=nop             
  nop                                       #  56    0x6503e  1      OPC=nop             
  nop                                       #  57    0x6503f  1      OPC=nop             
  movl %ebx, %ebx                           #  58    0x65040  2      OPC=movl_r32_r32    
  movl $0x0, 0x88(%r15,%rbx,1)              #  59    0x65042  12     OPC=movl_m32_imm32  
  popq %rbx                                 #  60    0x6504e  1      OPC=popq_r64_1      
  popq %r11                                 #  61    0x6504f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  62    0x65051  7      OPC=andl_r32_imm32  
  nop                                       #  63    0x65058  1      OPC=nop             
  nop                                       #  64    0x65059  1      OPC=nop             
  nop                                       #  65    0x6505a  1      OPC=nop             
  nop                                       #  66    0x6505b  1      OPC=nop             
  addq %r15, %r11                           #  67    0x6505c  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  68    0x6505f  3      OPC=jmpq_r64        
  nop                                       #  69    0x65062  1      OPC=nop             
  nop                                       #  70    0x65063  1      OPC=nop             
  nop                                       #  71    0x65064  1      OPC=nop             
  nop                                       #  72    0x65065  1      OPC=nop             
  nop                                       #  73    0x65066  1      OPC=nop             
                                                                                         
.size _ZNSt9basic_iosIwSt11char_traitsIwEEC1Ev, .-_ZNSt9basic_iosIwSt11char_traitsIwEEC1Ev

