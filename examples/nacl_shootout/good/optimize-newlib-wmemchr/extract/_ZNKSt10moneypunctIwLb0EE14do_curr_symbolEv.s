  .text
  .globl _ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv
  .type _ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv, @function

#! file-offset 0xf6f80
#! rip-offset  0xb6f80
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv:        #        0xb6f80  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb6f80  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb6f81  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb6f83  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb6f85  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb6f87  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb6f8a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb6f8d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb6f8f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb6f94  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb6f98  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi                       #  11    0xb6f9a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb6f9f  1      OPC=nop             
  nop                                                #  13    0xb6fa0  1      OPC=nop             
  nop                                                #  14    0xb6fa1  1      OPC=nop             
  nop                                                #  15    0xb6fa2  1      OPC=nop             
  nop                                                #  16    0xb6fa3  1      OPC=nop             
  nop                                                #  17    0xb6fa4  1      OPC=nop             
  nop                                                #  18    0xb6fa5  1      OPC=nop             
  nop                                                #  19    0xb6fa6  1      OPC=nop             
  nop                                                #  20    0xb6fa7  1      OPC=nop             
  nop                                                #  21    0xb6fa8  1      OPC=nop             
  nop                                                #  22    0xb6fa9  1      OPC=nop             
  nop                                                #  23    0xb6faa  1      OPC=nop             
  nop                                                #  24    0xb6fab  1      OPC=nop             
  nop                                                #  25    0xb6fac  1      OPC=nop             
  nop                                                #  26    0xb6fad  1      OPC=nop             
  nop                                                #  27    0xb6fae  1      OPC=nop             
  nop                                                #  28    0xb6faf  1      OPC=nop             
  nop                                                #  29    0xb6fb0  1      OPC=nop             
  nop                                                #  30    0xb6fb1  1      OPC=nop             
  nop                                                #  31    0xb6fb2  1      OPC=nop             
  nop                                                #  32    0xb6fb3  1      OPC=nop             
  nop                                                #  33    0xb6fb4  1      OPC=nop             
  nop                                                #  34    0xb6fb5  1      OPC=nop             
  nop                                                #  35    0xb6fb6  1      OPC=nop             
  nop                                                #  36    0xb6fb7  1      OPC=nop             
  nop                                                #  37    0xb6fb8  1      OPC=nop             
  nop                                                #  38    0xb6fb9  1      OPC=nop             
  nop                                                #  39    0xb6fba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb6fbb  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb6fc0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb6fc2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb6fc5  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb6fc8  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb6fc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb6fcb  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb6fd2  1      OPC=nop             
  nop                                                #  48    0xb6fd3  1      OPC=nop             
  nop                                                #  49    0xb6fd4  1      OPC=nop             
  nop                                                #  50    0xb6fd5  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb6fd6  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb6fd9  3      OPC=jmpq_r64        
  nop                                                #  53    0xb6fdc  1      OPC=nop             
  nop                                                #  54    0xb6fdd  1      OPC=nop             
  nop                                                #  55    0xb6fde  1      OPC=nop             
  nop                                                #  56    0xb6fdf  1      OPC=nop             
  nop                                                #  57    0xb6fe0  1      OPC=nop             
  nop                                                #  58    0xb6fe1  1      OPC=nop             
  nop                                                #  59    0xb6fe2  1      OPC=nop             
  nop                                                #  60    0xb6fe3  1      OPC=nop             
  nop                                                #  61    0xb6fe4  1      OPC=nop             
  nop                                                #  62    0xb6fe5  1      OPC=nop             
  nop                                                #  63    0xb6fe6  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb6fe7  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb6fe9  1      OPC=nop             
  nop                                                #  66    0xb6fea  1      OPC=nop             
  nop                                                #  67    0xb6feb  1      OPC=nop             
  nop                                                #  68    0xb6fec  1      OPC=nop             
  nop                                                #  69    0xb6fed  1      OPC=nop             
  nop                                                #  70    0xb6fee  1      OPC=nop             
  nop                                                #  71    0xb6fef  1      OPC=nop             
  nop                                                #  72    0xb6ff0  1      OPC=nop             
  nop                                                #  73    0xb6ff1  1      OPC=nop             
  nop                                                #  74    0xb6ff2  1      OPC=nop             
  nop                                                #  75    0xb6ff3  1      OPC=nop             
  nop                                                #  76    0xb6ff4  1      OPC=nop             
  nop                                                #  77    0xb6ff5  1      OPC=nop             
  nop                                                #  78    0xb6ff6  1      OPC=nop             
  nop                                                #  79    0xb6ff7  1      OPC=nop             
  nop                                                #  80    0xb6ff8  1      OPC=nop             
  nop                                                #  81    0xb6ff9  1      OPC=nop             
  nop                                                #  82    0xb6ffa  1      OPC=nop             
  nop                                                #  83    0xb6ffb  1      OPC=nop             
  nop                                                #  84    0xb6ffc  1      OPC=nop             
  nop                                                #  85    0xb6ffd  1      OPC=nop             
  nop                                                #  86    0xb6ffe  1      OPC=nop             
  nop                                                #  87    0xb6fff  1      OPC=nop             
  nop                                                #  88    0xb7000  1      OPC=nop             
  nop                                                #  89    0xb7001  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb7002  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv, .-_ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv

