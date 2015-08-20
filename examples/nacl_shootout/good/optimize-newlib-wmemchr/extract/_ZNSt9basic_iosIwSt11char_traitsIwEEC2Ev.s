  .text
  .globl _ZNSt9basic_iosIwSt11char_traitsIwEEC2Ev
  .type _ZNSt9basic_iosIwSt11char_traitsIwEEC2Ev, @function

#! file-offset 0xa5060
#! rip-offset  0x65060
#! capacity    160 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIwSt11char_traitsIwEEC2Ev:  #        0x65060  0      OPC=<label>         
  pushq %rbx                                #  1     0x65060  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  2     0x65061  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  3     0x65063  2      OPC=movl_r32_r32    
  nop                                       #  4     0x65065  1      OPC=nop             
  nop                                       #  5     0x65066  1      OPC=nop             
  nop                                       #  6     0x65067  1      OPC=nop             
  nop                                       #  7     0x65068  1      OPC=nop             
  nop                                       #  8     0x65069  1      OPC=nop             
  nop                                       #  9     0x6506a  1      OPC=nop             
  nop                                       #  10    0x6506b  1      OPC=nop             
  nop                                       #  11    0x6506c  1      OPC=nop             
  nop                                       #  12    0x6506d  1      OPC=nop             
  nop                                       #  13    0x6506e  1      OPC=nop             
  nop                                       #  14    0x6506f  1      OPC=nop             
  nop                                       #  15    0x65070  1      OPC=nop             
  nop                                       #  16    0x65071  1      OPC=nop             
  nop                                       #  17    0x65072  1      OPC=nop             
  nop                                       #  18    0x65073  1      OPC=nop             
  nop                                       #  19    0x65074  1      OPC=nop             
  nop                                       #  20    0x65075  1      OPC=nop             
  nop                                       #  21    0x65076  1      OPC=nop             
  nop                                       #  22    0x65077  1      OPC=nop             
  nop                                       #  23    0x65078  1      OPC=nop             
  nop                                       #  24    0x65079  1      OPC=nop             
  nop                                       #  25    0x6507a  1      OPC=nop             
  callq ._ZNSt8ios_baseC2Ev                 #  26    0x6507b  5      OPC=callq_label     
  movl %ebx, %ebx                           #  27    0x65080  2      OPC=movl_r32_r32    
  movl $0x1003a748, (%r15,%rbx,1)           #  28    0x65082  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                           #  29    0x6508a  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)              #  30    0x6508c  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                           #  31    0x65095  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)              #  32    0x65097  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                           #  33    0x650a0  2      OPC=movl_r32_r32    
  movb $0x0, 0x78(%r15,%rbx,1)              #  34    0x650a2  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                           #  35    0x650a8  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)              #  36    0x650aa  9      OPC=movl_m32_imm32  
  nop                                       #  37    0x650b3  1      OPC=nop             
  nop                                       #  38    0x650b4  1      OPC=nop             
  nop                                       #  39    0x650b5  1      OPC=nop             
  nop                                       #  40    0x650b6  1      OPC=nop             
  nop                                       #  41    0x650b7  1      OPC=nop             
  nop                                       #  42    0x650b8  1      OPC=nop             
  nop                                       #  43    0x650b9  1      OPC=nop             
  nop                                       #  44    0x650ba  1      OPC=nop             
  nop                                       #  45    0x650bb  1      OPC=nop             
  nop                                       #  46    0x650bc  1      OPC=nop             
  nop                                       #  47    0x650bd  1      OPC=nop             
  nop                                       #  48    0x650be  1      OPC=nop             
  nop                                       #  49    0x650bf  1      OPC=nop             
  movl %ebx, %ebx                           #  50    0x650c0  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)              #  51    0x650c2  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                           #  52    0x650ce  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)              #  53    0x650d0  12     OPC=movl_m32_imm32  
  nop                                       #  54    0x650dc  1      OPC=nop             
  nop                                       #  55    0x650dd  1      OPC=nop             
  nop                                       #  56    0x650de  1      OPC=nop             
  nop                                       #  57    0x650df  1      OPC=nop             
  movl %ebx, %ebx                           #  58    0x650e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x88(%r15,%rbx,1)              #  59    0x650e2  12     OPC=movl_m32_imm32  
  popq %rbx                                 #  60    0x650ee  1      OPC=popq_r64_1      
  popq %r11                                 #  61    0x650ef  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  62    0x650f1  7      OPC=andl_r32_imm32  
  nop                                       #  63    0x650f8  1      OPC=nop             
  nop                                       #  64    0x650f9  1      OPC=nop             
  nop                                       #  65    0x650fa  1      OPC=nop             
  nop                                       #  66    0x650fb  1      OPC=nop             
  addq %r15, %r11                           #  67    0x650fc  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  68    0x650ff  3      OPC=jmpq_r64        
  nop                                       #  69    0x65102  1      OPC=nop             
  nop                                       #  70    0x65103  1      OPC=nop             
  nop                                       #  71    0x65104  1      OPC=nop             
  nop                                       #  72    0x65105  1      OPC=nop             
  nop                                       #  73    0x65106  1      OPC=nop             
                                                                                         
.size _ZNSt9basic_iosIwSt11char_traitsIwEEC2Ev, .-_ZNSt9basic_iosIwSt11char_traitsIwEEC2Ev

