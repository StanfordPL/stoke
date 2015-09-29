  .text
  .globl _ZNKSt10moneypunctIwLb0EE11do_groupingEv
  .type _ZNKSt10moneypunctIwLb0EE11do_groupingEv, @function

#! file-offset 0xf7820
#! rip-offset  0xb7820
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE11do_groupingEv:  #        0xb7820  0      OPC=<label>         
  pushq %rbx                                #  1     0xb7820  1      OPC=pushq_r64_1     
  movl %esi, %esi                           #  2     0xb7821  2      OPC=movl_r32_r32    
  movl %edi, %ebx                           #  3     0xb7823  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  4     0xb7825  2      OPC=movl_r32_r32    
  subl $0x10, %esp                          #  5     0xb7827  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                           #  6     0xb782a  3      OPC=addq_r64_r64    
  movl %esi, %esi                           #  7     0xb782d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax               #  8     0xb782f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                      #  9     0xb7834  4      OPC=leal_r32_m16    
  movl %eax, %eax                           #  10    0xb7838  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi               #  11    0xb783a  5      OPC=movl_r32_m32    
  nop                                       #  12    0xb783f  1      OPC=nop             
  nop                                       #  13    0xb7840  1      OPC=nop             
  nop                                       #  14    0xb7841  1      OPC=nop             
  nop                                       #  15    0xb7842  1      OPC=nop             
  nop                                       #  16    0xb7843  1      OPC=nop             
  nop                                       #  17    0xb7844  1      OPC=nop             
  nop                                       #  18    0xb7845  1      OPC=nop             
  nop                                       #  19    0xb7846  1      OPC=nop             
  nop                                       #  20    0xb7847  1      OPC=nop             
  nop                                       #  21    0xb7848  1      OPC=nop             
  nop                                       #  22    0xb7849  1      OPC=nop             
  nop                                       #  23    0xb784a  1      OPC=nop             
  nop                                       #  24    0xb784b  1      OPC=nop             
  nop                                       #  25    0xb784c  1      OPC=nop             
  nop                                       #  26    0xb784d  1      OPC=nop             
  nop                                       #  27    0xb784e  1      OPC=nop             
  nop                                       #  28    0xb784f  1      OPC=nop             
  nop                                       #  29    0xb7850  1      OPC=nop             
  nop                                       #  30    0xb7851  1      OPC=nop             
  nop                                       #  31    0xb7852  1      OPC=nop             
  nop                                       #  32    0xb7853  1      OPC=nop             
  nop                                       #  33    0xb7854  1      OPC=nop             
  nop                                       #  34    0xb7855  1      OPC=nop             
  nop                                       #  35    0xb7856  1      OPC=nop             
  nop                                       #  36    0xb7857  1      OPC=nop             
  nop                                       #  37    0xb7858  1      OPC=nop             
  nop                                       #  38    0xb7859  1      OPC=nop             
  nop                                       #  39    0xb785a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                 #  40    0xb785b  5      OPC=callq_label     
  movl %ebx, %eax                           #  41    0xb7860  2      OPC=movl_r32_r32    
  addl $0x10, %esp                          #  42    0xb7862  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                           #  43    0xb7865  3      OPC=addq_r64_r64    
  popq %rbx                                 #  44    0xb7868  1      OPC=popq_r64_1      
  popq %r11                                 #  45    0xb7869  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  46    0xb786b  7      OPC=andl_r32_imm32  
  nop                                       #  47    0xb7872  1      OPC=nop             
  nop                                       #  48    0xb7873  1      OPC=nop             
  nop                                       #  49    0xb7874  1      OPC=nop             
  nop                                       #  50    0xb7875  1      OPC=nop             
  addq %r15, %r11                           #  51    0xb7876  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  52    0xb7879  3      OPC=jmpq_r64        
  nop                                       #  53    0xb787c  1      OPC=nop             
  nop                                       #  54    0xb787d  1      OPC=nop             
  nop                                       #  55    0xb787e  1      OPC=nop             
  nop                                       #  56    0xb787f  1      OPC=nop             
  nop                                       #  57    0xb7880  1      OPC=nop             
  nop                                       #  58    0xb7881  1      OPC=nop             
  nop                                       #  59    0xb7882  1      OPC=nop             
  nop                                       #  60    0xb7883  1      OPC=nop             
  nop                                       #  61    0xb7884  1      OPC=nop             
  nop                                       #  62    0xb7885  1      OPC=nop             
  nop                                       #  63    0xb7886  1      OPC=nop             
  movl %eax, %edi                           #  64    0xb7887  2      OPC=movl_r32_r32    
  nop                                       #  65    0xb7889  1      OPC=nop             
  nop                                       #  66    0xb788a  1      OPC=nop             
  nop                                       #  67    0xb788b  1      OPC=nop             
  nop                                       #  68    0xb788c  1      OPC=nop             
  nop                                       #  69    0xb788d  1      OPC=nop             
  nop                                       #  70    0xb788e  1      OPC=nop             
  nop                                       #  71    0xb788f  1      OPC=nop             
  nop                                       #  72    0xb7890  1      OPC=nop             
  nop                                       #  73    0xb7891  1      OPC=nop             
  nop                                       #  74    0xb7892  1      OPC=nop             
  nop                                       #  75    0xb7893  1      OPC=nop             
  nop                                       #  76    0xb7894  1      OPC=nop             
  nop                                       #  77    0xb7895  1      OPC=nop             
  nop                                       #  78    0xb7896  1      OPC=nop             
  nop                                       #  79    0xb7897  1      OPC=nop             
  nop                                       #  80    0xb7898  1      OPC=nop             
  nop                                       #  81    0xb7899  1      OPC=nop             
  nop                                       #  82    0xb789a  1      OPC=nop             
  nop                                       #  83    0xb789b  1      OPC=nop             
  nop                                       #  84    0xb789c  1      OPC=nop             
  nop                                       #  85    0xb789d  1      OPC=nop             
  nop                                       #  86    0xb789e  1      OPC=nop             
  nop                                       #  87    0xb789f  1      OPC=nop             
  nop                                       #  88    0xb78a0  1      OPC=nop             
  nop                                       #  89    0xb78a1  1      OPC=nop             
  callq ._Unwind_Resume                     #  90    0xb78a2  5      OPC=callq_label     
                                                                                         
.size _ZNKSt10moneypunctIwLb0EE11do_groupingEv, .-_ZNKSt10moneypunctIwLb0EE11do_groupingEv

