  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv, @function

#! file-offset 0x12a960
#! rip-offset  0xea960
#! capacity    128 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv:  #        0xea960  0      OPC=<label>         
  pushq %rbx                                                                #  1     0xea960  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                           #  2     0xea961  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                           #  3     0xea963  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                              #  4     0xea965  6      OPC=cmpb_m8_imm8    
  jne .L_ea980                                                              #  5     0xea96b  2      OPC=jne_label       
  movl %ebx, %ebx                                                           #  6     0xea96d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %eax                                              #  7     0xea96f  5      OPC=movl_r32_m32    
  testl %eax, %eax                                                          #  8     0xea974  2      OPC=testl_r32_r32   
  je .L_ea9a0                                                               #  9     0xea976  2      OPC=je_label        
  nop                                                                       #  10    0xea978  1      OPC=nop             
  nop                                                                       #  11    0xea979  1      OPC=nop             
  nop                                                                       #  12    0xea97a  1      OPC=nop             
  nop                                                                       #  13    0xea97b  1      OPC=nop             
  nop                                                                       #  14    0xea97c  1      OPC=nop             
  nop                                                                       #  15    0xea97d  1      OPC=nop             
  nop                                                                       #  16    0xea97e  1      OPC=nop             
  nop                                                                       #  17    0xea97f  1      OPC=nop             
.L_ea980:                                                                   #        0xea980  0      OPC=<label>         
  popq %rbx                                                                 #  18    0xea980  1      OPC=popq_r64_1      
  popq %r11                                                                 #  19    0xea981  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                   #  20    0xea983  7      OPC=andl_r32_imm32  
  nop                                                                       #  21    0xea98a  1      OPC=nop             
  nop                                                                       #  22    0xea98b  1      OPC=nop             
  nop                                                                       #  23    0xea98c  1      OPC=nop             
  nop                                                                       #  24    0xea98d  1      OPC=nop             
  addq %r15, %r11                                                           #  25    0xea98e  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  26    0xea991  3      OPC=jmpq_r64        
  nop                                                                       #  27    0xea994  1      OPC=nop             
  nop                                                                       #  28    0xea995  1      OPC=nop             
  nop                                                                       #  29    0xea996  1      OPC=nop             
  nop                                                                       #  30    0xea997  1      OPC=nop             
  nop                                                                       #  31    0xea998  1      OPC=nop             
  nop                                                                       #  32    0xea999  1      OPC=nop             
  nop                                                                       #  33    0xea99a  1      OPC=nop             
  nop                                                                       #  34    0xea99b  1      OPC=nop             
  nop                                                                       #  35    0xea99c  1      OPC=nop             
  nop                                                                       #  36    0xea99d  1      OPC=nop             
  nop                                                                       #  37    0xea99e  1      OPC=nop             
  nop                                                                       #  38    0xea99f  1      OPC=nop             
  nop                                                                       #  39    0xea9a0  1      OPC=nop             
  nop                                                                       #  40    0xea9a1  1      OPC=nop             
  nop                                                                       #  41    0xea9a2  1      OPC=nop             
  nop                                                                       #  42    0xea9a3  1      OPC=nop             
  nop                                                                       #  43    0xea9a4  1      OPC=nop             
  nop                                                                       #  44    0xea9a5  1      OPC=nop             
  nop                                                                       #  45    0xea9a6  1      OPC=nop             
.L_ea9a0:                                                                   #        0xea9a7  0      OPC=<label>         
  movl %ebx, %ebx                                                           #  46    0xea9a7  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rbx,1), %edi                                              #  47    0xea9a9  5      OPC=movl_r32_m32    
  shll $0x2, %edi                                                           #  48    0xea9ae  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                            #  49    0xea9b1  2      OPC=xchgw_ax_r16    
  nop                                                                       #  50    0xea9b3  1      OPC=nop             
  nop                                                                       #  51    0xea9b4  1      OPC=nop             
  nop                                                                       #  52    0xea9b5  1      OPC=nop             
  nop                                                                       #  53    0xea9b6  1      OPC=nop             
  nop                                                                       #  54    0xea9b7  1      OPC=nop             
  nop                                                                       #  55    0xea9b8  1      OPC=nop             
  nop                                                                       #  56    0xea9b9  1      OPC=nop             
  nop                                                                       #  57    0xea9ba  1      OPC=nop             
  nop                                                                       #  58    0xea9bb  1      OPC=nop             
  nop                                                                       #  59    0xea9bc  1      OPC=nop             
  nop                                                                       #  60    0xea9bd  1      OPC=nop             
  nop                                                                       #  61    0xea9be  1      OPC=nop             
  nop                                                                       #  62    0xea9bf  1      OPC=nop             
  nop                                                                       #  63    0xea9c0  1      OPC=nop             
  nop                                                                       #  64    0xea9c1  1      OPC=nop             
  callq ._Znaj                                                              #  65    0xea9c2  5      OPC=callq_label     
  movl %ebx, %ebx                                                           #  66    0xea9c7  2      OPC=movl_r32_r32    
  movb $0x1, 0x60(%r15,%rbx,1)                                              #  67    0xea9c9  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  68    0xea9cf  2      OPC=movl_r32_r32    
  movl %eax, 0x58(%r15,%rbx,1)                                              #  69    0xea9d1  5      OPC=movl_m32_r32    
  jmpq .L_ea980                                                             #  70    0xea9d6  2      OPC=jmpq_label      
  nop                                                                       #  71    0xea9d8  1      OPC=nop             
  nop                                                                       #  72    0xea9d9  1      OPC=nop             
  nop                                                                       #  73    0xea9da  1      OPC=nop             
  nop                                                                       #  74    0xea9db  1      OPC=nop             
  nop                                                                       #  75    0xea9dc  1      OPC=nop             
  nop                                                                       #  76    0xea9dd  1      OPC=nop             
  nop                                                                       #  77    0xea9de  1      OPC=nop             
  nop                                                                       #  78    0xea9df  1      OPC=nop             
  nop                                                                       #  79    0xea9e0  1      OPC=nop             
  nop                                                                       #  80    0xea9e1  1      OPC=nop             
  nop                                                                       #  81    0xea9e2  1      OPC=nop             
  nop                                                                       #  82    0xea9e3  1      OPC=nop             
  nop                                                                       #  83    0xea9e4  1      OPC=nop             
  nop                                                                       #  84    0xea9e5  1      OPC=nop             
  nop                                                                       #  85    0xea9e6  1      OPC=nop             
                                                                                                                         
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv

