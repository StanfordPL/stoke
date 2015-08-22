  .text
  .globl _ZNKSs6substrEjj
  .type _ZNKSs6substrEjj, @function

#! file-offset 0xee420
#! rip-offset  0xae420
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs6substrEjj:                      #        0xae420  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xae420  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0xae422  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0xae423  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0xae425  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0xae427  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xae42b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xae42e  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %edx              #  8     0xae430  4      OPC=cmpl_r32_m32    
  ja .L_ae460                           #  9     0xae434  2      OPC=ja_label        
  movl %ebx, %edi                       #  10    0xae436  2      OPC=movl_r32_r32    
  nop                                   #  11    0xae438  1      OPC=nop             
  nop                                   #  12    0xae439  1      OPC=nop             
  nop                                   #  13    0xae43a  1      OPC=nop             
  callq ._ZNSsC1ERKSsjj                 #  14    0xae43b  5      OPC=callq_label     
  movl %ebx, %eax                       #  15    0xae440  2      OPC=movl_r32_r32    
  popq %rbx                             #  16    0xae442  1      OPC=popq_r64_1      
  popq %r11                             #  17    0xae443  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  18    0xae445  7      OPC=andl_r32_imm32  
  nop                                   #  19    0xae44c  1      OPC=nop             
  nop                                   #  20    0xae44d  1      OPC=nop             
  nop                                   #  21    0xae44e  1      OPC=nop             
  nop                                   #  22    0xae44f  1      OPC=nop             
  addq %r15, %r11                       #  23    0xae450  3      OPC=addq_r64_r64    
  jmpq %r11                             #  24    0xae453  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  25    0xae456  2      OPC=xchgw_ax_r16    
  nop                                   #  26    0xae458  1      OPC=nop             
  nop                                   #  27    0xae459  1      OPC=nop             
  nop                                   #  28    0xae45a  1      OPC=nop             
  nop                                   #  29    0xae45b  1      OPC=nop             
  nop                                   #  30    0xae45c  1      OPC=nop             
  nop                                   #  31    0xae45d  1      OPC=nop             
  nop                                   #  32    0xae45e  1      OPC=nop             
  nop                                   #  33    0xae45f  1      OPC=nop             
  nop                                   #  34    0xae460  1      OPC=nop             
  nop                                   #  35    0xae461  1      OPC=nop             
  nop                                   #  36    0xae462  1      OPC=nop             
  nop                                   #  37    0xae463  1      OPC=nop             
  nop                                   #  38    0xae464  1      OPC=nop             
  nop                                   #  39    0xae465  1      OPC=nop             
  nop                                   #  40    0xae466  1      OPC=nop             
.L_ae460:                               #        0xae467  0      OPC=<label>         
  movl $0x1003bb16, %edi                #  41    0xae467  5      OPC=movl_r32_imm32  
  nop                                   #  42    0xae46c  1      OPC=nop             
  nop                                   #  43    0xae46d  1      OPC=nop             
  nop                                   #  44    0xae46e  1      OPC=nop             
  nop                                   #  45    0xae46f  1      OPC=nop             
  nop                                   #  46    0xae470  1      OPC=nop             
  nop                                   #  47    0xae471  1      OPC=nop             
  nop                                   #  48    0xae472  1      OPC=nop             
  nop                                   #  49    0xae473  1      OPC=nop             
  nop                                   #  50    0xae474  1      OPC=nop             
  nop                                   #  51    0xae475  1      OPC=nop             
  nop                                   #  52    0xae476  1      OPC=nop             
  nop                                   #  53    0xae477  1      OPC=nop             
  nop                                   #  54    0xae478  1      OPC=nop             
  nop                                   #  55    0xae479  1      OPC=nop             
  nop                                   #  56    0xae47a  1      OPC=nop             
  nop                                   #  57    0xae47b  1      OPC=nop             
  nop                                   #  58    0xae47c  1      OPC=nop             
  nop                                   #  59    0xae47d  1      OPC=nop             
  nop                                   #  60    0xae47e  1      OPC=nop             
  nop                                   #  61    0xae47f  1      OPC=nop             
  nop                                   #  62    0xae480  1      OPC=nop             
  nop                                   #  63    0xae481  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  64    0xae482  5      OPC=callq_label     
                                                                                     
.size _ZNKSs6substrEjj, .-_ZNKSs6substrEjj

